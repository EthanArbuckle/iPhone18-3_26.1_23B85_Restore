void AriSdk::ARI_IBIStwServiceInfoIndCb_SDK::ARI_IBIStwServiceInfoIndCb_SDK(AriSdk::ARI_IBIStwServiceInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645758976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645758976, 0);
}

void AriSdk::ARI_IBIStwServiceInfoIndCb_SDK::ARI_IBIStwServiceInfoIndCb_SDK(AriSdk::ARI_IBIStwServiceInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwServiceInfoIndCb_SDK::~ARI_IBIStwServiceInfoIndCb_SDK(AriSdk::ARI_IBIStwServiceInfoIndCb_SDK *this)
{
  *this = &unk_2A1D41C18;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBIStwServiceInfoIndCb_SDK::~ARI_IBIStwServiceInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwServiceInfoIndCb_SDK::pack(AriSdk::ARI_IBIStwServiceInfoIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK::ARI_IBIStwServiceOutageInfoIndCb_SDK(AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645496832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645496832, 0);
}

void AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK::ARI_IBIStwServiceOutageInfoIndCb_SDK(AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK::~ARI_IBIStwServiceOutageInfoIndCb_SDK(AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK *this)
{
  *this = &unk_2A1D41C50;
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
  AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK::~ARI_IBIStwServiceOutageInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK::pack(AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK::unpack(AriSdk::ARI_IBIStwServiceOutageInfoIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296209ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK::ARI_IBIStwSetBroadcastInfoBlobReq_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -661618688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -661618688, 0);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK::ARI_IBIStwSetBroadcastInfoBlobReq_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK::~ARI_IBIStwSetBroadcastInfoBlobReq_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK *this)
{
  *this = &unk_2A1D41C88;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK::~ARI_IBIStwSetBroadcastInfoBlobReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK::pack(AriSdk::ARI_IBIStwSetBroadcastInfoBlobReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 2uLL, 0), !result))
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

void sub_29620A30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653230080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653230080, 0);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK::~ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK *this)
{
  *this = &unk_2A1D41CC0;
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
  AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK::~ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK::pack(AriSdk::ARI_IBIStwSetBroadcastInfoBlobRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645529600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645529600, 0);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK::~ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK(AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK *this)
{
  *this = &unk_2A1D41CF8;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK::~ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK::pack(AriSdk::ARI_IBIStwSetBroadcastInfoBlobIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
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

void sub_29620AA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK::ARI_IBIStwSetConcurrencyConfigReq_SDK(AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662372352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662372352, 0);
}

void AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK::ARI_IBIStwSetConcurrencyConfigReq_SDK(AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK::~ARI_IBIStwSetConcurrencyConfigReq_SDK(AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK *this)
{
  *this = &unk_2A1D41D30;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK::~ARI_IBIStwSetConcurrencyConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK::pack(AriSdk::ARI_IBIStwSetConcurrencyConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK::ARI_IBIStwSetConcurrencyConfigRspCb_SDK(AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653983744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653983744, 0);
}

void AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK::ARI_IBIStwSetConcurrencyConfigRspCb_SDK(AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK::~ARI_IBIStwSetConcurrencyConfigRspCb_SDK(AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK *this)
{
  *this = &unk_2A1D41D68;
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
  AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK::~ARI_IBIStwSetConcurrencyConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK::pack(AriSdk::ARI_IBIStwSetConcurrencyConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSetS4ConfigReq_SDK::ARI_IBIStwSetS4ConfigReq_SDK(AriSdk::ARI_IBIStwSetS4ConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662405120, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662405120, 0);
}

void AriSdk::ARI_IBIStwSetS4ConfigReq_SDK::ARI_IBIStwSetS4ConfigReq_SDK(AriSdk::ARI_IBIStwSetS4ConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetS4ConfigReq_SDK::~ARI_IBIStwSetS4ConfigReq_SDK(AriSdk::ARI_IBIStwSetS4ConfigReq_SDK *this)
{
  *this = &unk_2A1D41DA0;
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
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40A2380605);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSetS4ConfigReq_SDK::~ARI_IBIStwSetS4ConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetS4ConfigReq_SDK::pack(AriSdk::ARI_IBIStwSetS4ConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 0x1162uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 8uLL, 0), !result))
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

void AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK::ARI_IBIStwSetS4ConfigRspCb_SDK(AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654016512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654016512, 0);
}

void AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK::ARI_IBIStwSetS4ConfigRspCb_SDK(AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK::~ARI_IBIStwSetS4ConfigRspCb_SDK(AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK *this)
{
  *this = &unk_2A1D41DD8;
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
  AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK::~ARI_IBIStwSetS4ConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK::pack(AriSdk::ARI_IBIStwSetS4ConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSuspendReq_SDK::ARI_IBIStwSuspendReq_SDK(AriSdk::ARI_IBIStwSuspendReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662601728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662601728, 0);
}

void AriSdk::ARI_IBIStwSuspendReq_SDK::ARI_IBIStwSuspendReq_SDK(AriSdk::ARI_IBIStwSuspendReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSuspendReq_SDK::~ARI_IBIStwSuspendReq_SDK(AriSdk::ARI_IBIStwSuspendReq_SDK *this)
{
  *this = &unk_2A1D41E10;
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
  AriSdk::ARI_IBIStwSuspendReq_SDK::~ARI_IBIStwSuspendReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSuspendReq_SDK::pack(AriSdk::ARI_IBIStwSuspendReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSuspendRspCb_SDK::ARI_IBIStwSuspendRspCb_SDK(AriSdk::ARI_IBIStwSuspendRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654213120, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654213120, 0);
}

void AriSdk::ARI_IBIStwSuspendRspCb_SDK::ARI_IBIStwSuspendRspCb_SDK(AriSdk::ARI_IBIStwSuspendRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSuspendRspCb_SDK::~ARI_IBIStwSuspendRspCb_SDK(AriSdk::ARI_IBIStwSuspendRspCb_SDK *this)
{
  *this = &unk_2A1D41E48;
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
  AriSdk::ARI_IBIStwSuspendRspCb_SDK::~ARI_IBIStwSuspendRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSuspendRspCb_SDK::pack(AriSdk::ARI_IBIStwSuspendRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK::ARI_IBIStwUnableToFindServiceIndCb_SDK(AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645627904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645627904, 0);
}

void AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK::ARI_IBIStwUnableToFindServiceIndCb_SDK(AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK::~ARI_IBIStwUnableToFindServiceIndCb_SDK(AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK::pack(AriSdk::ARI_IBIStwUnableToFindServiceIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBICallCsAcceptCallReq_SDK::ARI_IBICallCsAcceptCallReq_SDK(AriSdk::ARI_IBICallCsAcceptCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142704640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142704640, 0);
}

void AriSdk::ARI_IBICallCsAcceptCallReq_SDK::ARI_IBICallCsAcceptCallReq_SDK(AriSdk::ARI_IBICallCsAcceptCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsAcceptCallReq_SDK::~ARI_IBICallCsAcceptCallReq_SDK(AriSdk::ARI_IBICallCsAcceptCallReq_SDK *this)
{
  *this = &unk_2A1D42C68;
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
  AriSdk::ARI_IBICallCsAcceptCallReq_SDK::~ARI_IBICallCsAcceptCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsAcceptCallReq_SDK::pack(AriSdk::ARI_IBICallCsAcceptCallReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK::ARI_IBICallCsAcceptCallRspCb_SDK(AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151093248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151093248, 0);
}

void AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK::ARI_IBICallCsAcceptCallRspCb_SDK(AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK::~ARI_IBICallCsAcceptCallRspCb_SDK(AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK *this)
{
  *this = &unk_2A1D42CA0;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK::~ARI_IBICallCsAcceptCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK::pack(AriSdk::ARI_IBICallCsAcceptCallRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsAutoAnswerReq_SDK::ARI_IBICallCsAutoAnswerReq_SDK(AriSdk::ARI_IBICallCsAutoAnswerReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143228928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143228928, 0);
}

void AriSdk::ARI_IBICallCsAutoAnswerReq_SDK::ARI_IBICallCsAutoAnswerReq_SDK(AriSdk::ARI_IBICallCsAutoAnswerReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsAutoAnswerReq_SDK::~ARI_IBICallCsAutoAnswerReq_SDK(AriSdk::ARI_IBICallCsAutoAnswerReq_SDK *this)
{
  *this = &unk_2A1D42CD8;
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
  AriSdk::ARI_IBICallCsAutoAnswerReq_SDK::~ARI_IBICallCsAutoAnswerReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsAutoAnswerReq_SDK::pack(AriSdk::ARI_IBICallCsAutoAnswerReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK::ARI_IBICallCsAutoAnswerRspCb_SDK(AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151617536, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151617536, 0);
}

void AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK::ARI_IBICallCsAutoAnswerRspCb_SDK(AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK::~ARI_IBICallCsAutoAnswerRspCb_SDK(AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK *this)
{
  *this = &unk_2A1D42D10;
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
  AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK::~ARI_IBICallCsAutoAnswerRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK::pack(AriSdk::ARI_IBICallCsAutoAnswerRspCb_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsBurstDtmfReq_SDK::ARI_IBICallCsBurstDtmfReq_SDK(AriSdk::ARI_IBICallCsBurstDtmfReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143327232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143327232, 0);
}

void AriSdk::ARI_IBICallCsBurstDtmfReq_SDK::ARI_IBICallCsBurstDtmfReq_SDK(AriSdk::ARI_IBICallCsBurstDtmfReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsBurstDtmfReq_SDK::~ARI_IBICallCsBurstDtmfReq_SDK(AriSdk::ARI_IBICallCsBurstDtmfReq_SDK *this)
{
  *this = &unk_2A1D42D48;
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

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsBurstDtmfReq_SDK::~ARI_IBICallCsBurstDtmfReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsBurstDtmfReq_SDK::pack(AriSdk::ARI_IBICallCsBurstDtmfReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
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

std::vector<int> *AriSdk::TlvArray<char,255ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x100)
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
      v23 = 255;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 255);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29620E350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK::ARI_IBICallCsBurstDtmfRspCb_SDK(AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151715840, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151715840, 0);
}

void AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK::ARI_IBICallCsBurstDtmfRspCb_SDK(AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK::~ARI_IBICallCsBurstDtmfRspCb_SDK(AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK *this)
{
  *this = &unk_2A1D42D80;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK::~ARI_IBICallCsBurstDtmfRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK::pack(AriSdk::ARI_IBICallCsBurstDtmfRspCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK::ARI_IBICallCsBurstDtmfIndCb_SDK(AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 160071680, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 160071680, 0);
}

void AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK::ARI_IBICallCsBurstDtmfIndCb_SDK(AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK::~ARI_IBICallCsBurstDtmfIndCb_SDK(AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK *this)
{
  *this = &unk_2A1D42DB8;
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK::~ARI_IBICallCsBurstDtmfIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK::pack(AriSdk::ARI_IBICallCsBurstDtmfIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsCallStatusIndCb_SDK::ARI_IBICallCsCallStatusIndCb_SDK(AriSdk::ARI_IBICallCsCallStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159875072, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159875072, 0);
}

void AriSdk::ARI_IBICallCsCallStatusIndCb_SDK::ARI_IBICallCsCallStatusIndCb_SDK(AriSdk::ARI_IBICallCsCallStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsCallStatusIndCb_SDK::~ARI_IBICallCsCallStatusIndCb_SDK(AriSdk::ARI_IBICallCsCallStatusIndCb_SDK *this)
{
  *this = &unk_2A1D42DF0;
  v2 = *(this + 28);
  *(this + 28) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4005A209FELL);
  }

  v5 = *(this + 25);
  *(this + 25) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 19);
  *(this + 19) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 18);
  *(this + 18) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 17);
  *(this + 17) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 16);
  *(this + 16) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 15);
  *(this + 15) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 12);
  if (v14)
  {
    *(this + 13) = v14;
    operator delete(v14);
  }

  v15 = *(this + 11);
  *(this + 11) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 10);
  *(this + 10) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 9);
  *(this + 9) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 8);
  *(this + 8) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsCallStatusIndCb_SDK::~ARI_IBICallCsCallStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsCallStatusIndCb_SDK::pack(AriSdk::ARI_IBICallCsCallStatusIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 1uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 12, v14, 1uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 14, v15, 1uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 16, v16, 4uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 17, v17, 4uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (v19 = *(this + 23), v18 == v19) || (result = AriMsg::pack(*(this + 6), 18, v18, v19 - v18, 0), !result))
                          {
                            v20 = *(this + 25);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 19, v20, 4uLL, 0), !result))
                            {
                              v21 = *(this + 26);
                              if (!v21 || (result = AriMsg::pack(*(this + 6), 20, v21, 0xCuLL, 0), !result))
                              {
                                v22 = *(this + 27);
                                if (!v22 || (result = AriMsg::pack(*(this + 6), 21, v22, 2uLL, 0), !result))
                                {
                                  v23 = *(this + 28);
                                  if (!v23 || (result = AriMsg::pack(*(this + 6), 22, v23, 4uLL, 0), !result))
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

  return result;
}

std::vector<int> *AriSdk::TlvArray<char,82ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x53)
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
      v23 = 82;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 82);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296210130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<char,160ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xA1)
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
      v23 = 160;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 160);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296210320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK::ARI_IBICallCsCallingNameInfoIndCb_SDK(AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159809536, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159809536, 0);
}

void AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK::ARI_IBICallCsCallingNameInfoIndCb_SDK(AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK::~ARI_IBICallCsCallingNameInfoIndCb_SDK(AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK *this)
{
  *this = &unk_2A1D42E28;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
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
  AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK::~ARI_IBICallCsCallingNameInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK::pack(AriSdk::ARI_IBICallCsCallingNameInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143392768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143392768, 0);
}

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK::~ARI_IBICallCsCdmaVerifySpcCodeReq_SDK(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK *this)
{
  *this = &unk_2A1D42E60;
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
  AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK::~ARI_IBICallCsCdmaVerifySpcCodeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK::pack(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK::unpack(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2962110B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151781376, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151781376, 0);
}

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK::~ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK *this)
{
  *this = &unk_2A1D42E98;
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
  AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK::~ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK::pack(AriSdk::ARI_IBICallCsCdmaVerifySpcCodeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsConnectedIndCb_SDK::ARI_IBICallCsConnectedIndCb_SDK(AriSdk::ARI_IBICallCsConnectedIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159514624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159514624, 0);
}

void AriSdk::ARI_IBICallCsConnectedIndCb_SDK::ARI_IBICallCsConnectedIndCb_SDK(AriSdk::ARI_IBICallCsConnectedIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsConnectedIndCb_SDK::~ARI_IBICallCsConnectedIndCb_SDK(AriSdk::ARI_IBICallCsConnectedIndCb_SDK *this)
{
  *this = &unk_2A1D42ED0;
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

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsConnectedIndCb_SDK::~ARI_IBICallCsConnectedIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsConnectedIndCb_SDK::pack(AriSdk::ARI_IBICallCsConnectedIndCb_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsCrssReq_SDK::ARI_IBICallCsCrssReq_SDK(AriSdk::ARI_IBICallCsCrssReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143163392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143163392, 0);
}

void AriSdk::ARI_IBICallCsCrssReq_SDK::ARI_IBICallCsCrssReq_SDK(AriSdk::ARI_IBICallCsCrssReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsCrssReq_SDK::~ARI_IBICallCsCrssReq_SDK(AriSdk::ARI_IBICallCsCrssReq_SDK *this)
{
  *this = &unk_2A1D42F08;
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
  AriSdk::ARI_IBICallCsCrssReq_SDK::~ARI_IBICallCsCrssReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsCrssReq_SDK::pack(AriSdk::ARI_IBICallCsCrssReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsCrssRspCb_SDK::ARI_IBICallCsCrssRspCb_SDK(AriSdk::ARI_IBICallCsCrssRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151552000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151552000, 0);
}

void AriSdk::ARI_IBICallCsCrssRspCb_SDK::ARI_IBICallCsCrssRspCb_SDK(AriSdk::ARI_IBICallCsCrssRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsCrssRspCb_SDK::~ARI_IBICallCsCrssRspCb_SDK(AriSdk::ARI_IBICallCsCrssRspCb_SDK *this)
{
  *this = &unk_2A1D42F40;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsCrssRspCb_SDK::~ARI_IBICallCsCrssRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsCrssRspCb_SDK::pack(AriSdk::ARI_IBICallCsCrssRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK::ARI_IBICallCsDisconnectedIndCb_SDK(AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159580160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159580160, 0);
}

void AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK::ARI_IBICallCsDisconnectedIndCb_SDK(AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK::~ARI_IBICallCsDisconnectedIndCb_SDK(AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK *this)
{
  *this = &unk_2A1D42F78;
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
  AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK::~ARI_IBICallCsDisconnectedIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK::pack(AriSdk::ARI_IBICallCsDisconnectedIndCb_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK(AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159940608, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159940608, 0);
}

void AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK(AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK::~ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK(AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK *this)
{
  *this = &unk_2A1D42FB0;
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
  AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK::~ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK::pack(AriSdk::ARI_IBICallCsEmergencyCallIntermediateStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK::ARI_IBICallCsEmergencyNumberListIndCb_SDK(AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159842304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159842304, 0);
}

void AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK::ARI_IBICallCsEmergencyNumberListIndCb_SDK(AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK::~ARI_IBICallCsEmergencyNumberListIndCb_SDK(AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK *this)
{
  *this = &unk_2A1D42FE8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
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
  AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK::~ARI_IBICallCsEmergencyNumberListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK::pack(AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 8uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (v14 = *(this + 17), v13 == v14) || (result = AriMsg::pack(*(this + 6), 7, v13, v14 - v13, 0), !result))
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

void AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK::unpack(AriSdk::ARI_IBICallCsEmergencyNumberListIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29621362C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v24, v25);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBICallCsExtEmergencyNumber,20ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 3)) < 0x15)
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
      v12 = 0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 3);
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
      v25 = 20;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 3), 20);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296213924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallCsGetEccListReq_SDK::ARI_IBICallCsGetEccListReq_SDK(AriSdk::ARI_IBICallCsGetEccListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143065088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143065088, 0);
}

void AriSdk::ARI_IBICallCsGetEccListReq_SDK::ARI_IBICallCsGetEccListReq_SDK(AriSdk::ARI_IBICallCsGetEccListReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsGetEccListReq_SDK::~ARI_IBICallCsGetEccListReq_SDK(AriSdk::ARI_IBICallCsGetEccListReq_SDK *this)
{
  *this = &unk_2A1D43020;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsGetEccListReq_SDK::~ARI_IBICallCsGetEccListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsGetEccListReq_SDK::pack(AriSdk::ARI_IBICallCsGetEccListReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsGetEccListRspCb_SDK::ARI_IBICallCsGetEccListRspCb_SDK(AriSdk::ARI_IBICallCsGetEccListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151453696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151453696, 0);
}

void AriSdk::ARI_IBICallCsGetEccListRspCb_SDK::ARI_IBICallCsGetEccListRspCb_SDK(AriSdk::ARI_IBICallCsGetEccListRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsGetEccListRspCb_SDK::~ARI_IBICallCsGetEccListRspCb_SDK(AriSdk::ARI_IBICallCsGetEccListRspCb_SDK *this)
{
  *this = &unk_2A1D43058;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40904FC776);
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
  AriSdk::ARI_IBICallCsGetEccListRspCb_SDK::~ARI_IBICallCsGetEccListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsGetEccListRspCb_SDK::pack(AriSdk::ARI_IBICallCsGetEccListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0xF1uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK(AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143261696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143261696, 0);
}

void AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK(AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK::~ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK(AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK *this)
{
  *this = &unk_2A1D43090;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK::~ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK::pack(AriSdk::ARI_IBICallCsGetTtyDeviceModeReq_V2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK(AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151650304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151650304, 0);
}

void AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK(AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK::~ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK(AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK *this)
{
  *this = &unk_2A1D430C8;
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
  AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK::~ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK::pack(AriSdk::ARI_IBICallCsGetTtyDeviceModeRspCb_V2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsHoldCallReq_SDK::ARI_IBICallCsHoldCallReq_SDK(AriSdk::ARI_IBICallCsHoldCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142770176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142770176, 0);
}

void AriSdk::ARI_IBICallCsHoldCallReq_SDK::ARI_IBICallCsHoldCallReq_SDK(AriSdk::ARI_IBICallCsHoldCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsHoldCallReq_SDK::~ARI_IBICallCsHoldCallReq_SDK(AriSdk::ARI_IBICallCsHoldCallReq_SDK *this)
{
  *this = &unk_2A1D43100;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsHoldCallReq_SDK::~ARI_IBICallCsHoldCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsHoldCallReq_SDK::pack(AriSdk::ARI_IBICallCsHoldCallReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsHoldCallRspCb_SDK::ARI_IBICallCsHoldCallRspCb_SDK(AriSdk::ARI_IBICallCsHoldCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151158784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151158784, 0);
}

void AriSdk::ARI_IBICallCsHoldCallRspCb_SDK::ARI_IBICallCsHoldCallRspCb_SDK(AriSdk::ARI_IBICallCsHoldCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsHoldCallRspCb_SDK::~ARI_IBICallCsHoldCallRspCb_SDK(AriSdk::ARI_IBICallCsHoldCallRspCb_SDK *this)
{
  *this = &unk_2A1D43138;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsHoldCallRspCb_SDK::~ARI_IBICallCsHoldCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsHoldCallRspCb_SDK::pack(AriSdk::ARI_IBICallCsHoldCallRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK::ARI_IBICallCsIncomingCallIndCb_SDK(AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159612928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159612928, 0);
}

void AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK::ARI_IBICallCsIncomingCallIndCb_SDK(AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK::~ARI_IBICallCsIncomingCallIndCb_SDK(AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK *this)
{
  *this = &unk_2A1D43170;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 15);
  *(this + 15) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
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
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK::~ARI_IBICallCsIncomingCallIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK::pack(AriSdk::ARI_IBICallCsIncomingCallIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
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
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 15, v14, 4uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 16, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 17, v16, 4uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 18, v17, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsJoinCallsReq_SDK::ARI_IBICallCsJoinCallsReq_SDK(AriSdk::ARI_IBICallCsJoinCallsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142868480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142868480, 0);
}

void AriSdk::ARI_IBICallCsJoinCallsReq_SDK::ARI_IBICallCsJoinCallsReq_SDK(AriSdk::ARI_IBICallCsJoinCallsReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsJoinCallsReq_SDK::~ARI_IBICallCsJoinCallsReq_SDK(AriSdk::ARI_IBICallCsJoinCallsReq_SDK *this)
{
  *this = &unk_2A1D431A8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsJoinCallsReq_SDK::~ARI_IBICallCsJoinCallsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsJoinCallsReq_SDK::pack(AriSdk::ARI_IBICallCsJoinCallsReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK::ARI_IBICallCsJoinCallsRspCb_SDK(AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151257088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151257088, 0);
}

void AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK::ARI_IBICallCsJoinCallsRspCb_SDK(AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK::~ARI_IBICallCsJoinCallsRspCb_SDK(AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK *this)
{
  *this = &unk_2A1D431E0;
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
  AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK::~ARI_IBICallCsJoinCallsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK::pack(AriSdk::ARI_IBICallCsJoinCallsRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK::ARI_IBICallCsOtaspStatusIndCb_SDK(AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 160137216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 160137216, 0);
}

void AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK::ARI_IBICallCsOtaspStatusIndCb_SDK(AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK::~ARI_IBICallCsOtaspStatusIndCb_SDK(AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK *this)
{
  *this = &unk_2A1D43218;
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
  AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK::~ARI_IBICallCsOtaspStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK::pack(AriSdk::ARI_IBICallCsOtaspStatusIndCb_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsReleaseCallReq_SDK::ARI_IBICallCsReleaseCallReq_SDK(AriSdk::ARI_IBICallCsReleaseCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142671872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142671872, 0);
}

void AriSdk::ARI_IBICallCsReleaseCallReq_SDK::ARI_IBICallCsReleaseCallReq_SDK(AriSdk::ARI_IBICallCsReleaseCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsReleaseCallReq_SDK::~ARI_IBICallCsReleaseCallReq_SDK(AriSdk::ARI_IBICallCsReleaseCallReq_SDK *this)
{
  *this = &unk_2A1D43250;
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
  AriSdk::ARI_IBICallCsReleaseCallReq_SDK::~ARI_IBICallCsReleaseCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsReleaseCallReq_SDK::pack(AriSdk::ARI_IBICallCsReleaseCallReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK::ARI_IBICallCsReleaseCallRspCb_SDK(AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151060480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151060480, 0);
}

void AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK::ARI_IBICallCsReleaseCallRspCb_SDK(AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK::~ARI_IBICallCsReleaseCallRspCb_SDK(AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK *this)
{
  *this = &unk_2A1D43288;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK::~ARI_IBICallCsReleaseCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK::pack(AriSdk::ARI_IBICallCsReleaseCallRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsRetrieveCallReq_SDK::ARI_IBICallCsRetrieveCallReq_SDK(AriSdk::ARI_IBICallCsRetrieveCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142802944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142802944, 0);
}

void AriSdk::ARI_IBICallCsRetrieveCallReq_SDK::ARI_IBICallCsRetrieveCallReq_SDK(AriSdk::ARI_IBICallCsRetrieveCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsRetrieveCallReq_SDK::~ARI_IBICallCsRetrieveCallReq_SDK(AriSdk::ARI_IBICallCsRetrieveCallReq_SDK *this)
{
  *this = &unk_2A1D432C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsRetrieveCallReq_SDK::~ARI_IBICallCsRetrieveCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsRetrieveCallReq_SDK::pack(AriSdk::ARI_IBICallCsRetrieveCallReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK::ARI_IBICallCsRetrieveCallRspCb_SDK(AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151191552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151191552, 0);
}

void AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK::ARI_IBICallCsRetrieveCallRspCb_SDK(AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK::~ARI_IBICallCsRetrieveCallRspCb_SDK(AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK *this)
{
  *this = &unk_2A1D432F8;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK::~ARI_IBICallCsRetrieveCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK::pack(AriSdk::ARI_IBICallCsRetrieveCallRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsSetClirModeReq_SDK::ARI_IBICallCsSetClirModeReq_SDK(AriSdk::ARI_IBICallCsSetClirModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142966784, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 142966784, 1);
}

void AriSdk::ARI_IBICallCsSetClirModeReq_SDK::ARI_IBICallCsSetClirModeReq_SDK(AriSdk::ARI_IBICallCsSetClirModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetClirModeReq_SDK::~ARI_IBICallCsSetClirModeReq_SDK(AriSdk::ARI_IBICallCsSetClirModeReq_SDK *this)
{
  *this = &unk_2A1D43330;
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
  AriSdk::ARI_IBICallCsSetClirModeReq_SDK::~ARI_IBICallCsSetClirModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetClirModeReq_SDK::pack(AriSdk::ARI_IBICallCsSetClirModeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK::ARI_IBICallCsSetPrefPrivacyReq_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143360000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143360000, 0);
}

void AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK::ARI_IBICallCsSetPrefPrivacyReq_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK::~ARI_IBICallCsSetPrefPrivacyReq_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK *this)
{
  *this = &unk_2A1D43368;
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
  AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK::~ARI_IBICallCsSetPrefPrivacyReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK::pack(AriSdk::ARI_IBICallCsSetPrefPrivacyReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK::ARI_IBICallCsSetPrefPrivacyRspCb_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151748608, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151748608, 0);
}

void AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK::ARI_IBICallCsSetPrefPrivacyRspCb_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK::~ARI_IBICallCsSetPrefPrivacyRspCb_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK *this)
{
  *this = &unk_2A1D433A0;
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
  AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK::~ARI_IBICallCsSetPrefPrivacyRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK::pack(AriSdk::ARI_IBICallCsSetPrefPrivacyRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK::ARI_IBICallCsSetPrefPrivacyIndCb_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 160104448, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 160104448, 0);
}

void AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK::ARI_IBICallCsSetPrefPrivacyIndCb_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK::~ARI_IBICallCsSetPrefPrivacyIndCb_SDK(AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK *this)
{
  *this = &unk_2A1D433D8;
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
  AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK::~ARI_IBICallCsSetPrefPrivacyIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK::pack(AriSdk::ARI_IBICallCsSetPrefPrivacyIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK::ARI_IBICallCsSetTtyDeviceModeReq_SDK(AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142999552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142999552, 0);
}

void AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK::ARI_IBICallCsSetTtyDeviceModeReq_SDK(AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK::~ARI_IBICallCsSetTtyDeviceModeReq_SDK(AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK *this)
{
  *this = &unk_2A1D43410;
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
  AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK::~ARI_IBICallCsSetTtyDeviceModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK::pack(AriSdk::ARI_IBICallCsSetTtyDeviceModeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK(AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151388160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151388160, 0);
}

void AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK(AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK::~ARI_IBICallCsSetTtyDeviceModeRspCb_SDK(AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK *this)
{
  *this = &unk_2A1D43448;
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
  AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK::~ARI_IBICallCsSetTtyDeviceModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK::pack(AriSdk::ARI_IBICallCsSetTtyDeviceModeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK::ARI_IBICallCsSetupVoiceCallReq_SDK(AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142639104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142639104, 0);
}

void AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK::ARI_IBICallCsSetupVoiceCallReq_SDK(AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK::~ARI_IBICallCsSetupVoiceCallReq_SDK(AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK *this)
{
  *this = &unk_2A1D43480;
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
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
  AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK::~ARI_IBICallCsSetupVoiceCallReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK::pack(AriSdk::ARI_IBICallCsSetupVoiceCallReq_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 13, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 14, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 16, v13, 4uLL, 0), !result))
              {
                v14 = *(this + 17);
                if (!v14 || (result = AriMsg::pack(*(this + 6), 17, v14, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsSetupCallRspCb_SDK::ARI_IBICallCsSetupCallRspCb_SDK(AriSdk::ARI_IBICallCsSetupCallRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151027712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151027712, 0);
}

void AriSdk::ARI_IBICallCsSetupCallRspCb_SDK::ARI_IBICallCsSetupCallRspCb_SDK(AriSdk::ARI_IBICallCsSetupCallRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetupCallRspCb_SDK::~ARI_IBICallCsSetupCallRspCb_SDK(AriSdk::ARI_IBICallCsSetupCallRspCb_SDK *this)
{
  *this = &unk_2A1D434B8;
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsSetupCallRspCb_SDK::~ARI_IBICallCsSetupCallRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetupCallRspCb_SDK::pack(AriSdk::ARI_IBICallCsSetupCallRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK::ARI_IBICallCsSetupVoiceCallReq_V1_SDK(AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143294464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143294464, 0);
}

void AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK::ARI_IBICallCsSetupVoiceCallReq_V1_SDK(AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK::~ARI_IBICallCsSetupVoiceCallReq_V1_SDK(AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK *this)
{
  *this = &unk_2A1D434F0;
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
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
  AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK::~ARI_IBICallCsSetupVoiceCallReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK::pack(AriSdk::ARI_IBICallCsSetupVoiceCallReq_V1_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 13, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 14, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 16, v13, 4uLL, 0), !result))
              {
                v14 = *(this + 17);
                if (!v14 || (result = AriMsg::pack(*(this + 6), 17, v14, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK::ARI_IBICallCsSetupCallRspCb_V1_SDK(AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151683072, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151683072, 0);
}

void AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK::ARI_IBICallCsSetupCallRspCb_V1_SDK(AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK::~ARI_IBICallCsSetupCallRspCb_V1_SDK(AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK *this)
{
  *this = &unk_2A1D43528;
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
  AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK::~ARI_IBICallCsSetupCallRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK::pack(AriSdk::ARI_IBICallCsSetupCallRspCb_V1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsSplitMptyReq_SDK::ARI_IBICallCsSplitMptyReq_SDK(AriSdk::ARI_IBICallCsSplitMptyReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142835712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142835712, 0);
}

void AriSdk::ARI_IBICallCsSplitMptyReq_SDK::ARI_IBICallCsSplitMptyReq_SDK(AriSdk::ARI_IBICallCsSplitMptyReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSplitMptyReq_SDK::~ARI_IBICallCsSplitMptyReq_SDK(AriSdk::ARI_IBICallCsSplitMptyReq_SDK *this)
{
  *this = &unk_2A1D43560;
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
  AriSdk::ARI_IBICallCsSplitMptyReq_SDK::~ARI_IBICallCsSplitMptyReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSplitMptyReq_SDK::pack(AriSdk::ARI_IBICallCsSplitMptyReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK::ARI_IBICallCsSplitMptyRspCb_SDK(AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151224320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151224320, 0);
}

void AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK::ARI_IBICallCsSplitMptyRspCb_SDK(AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK::~ARI_IBICallCsSplitMptyRspCb_SDK(AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK *this)
{
  *this = &unk_2A1D43598;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK::~ARI_IBICallCsSplitMptyRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK::pack(AriSdk::ARI_IBICallCsSplitMptyRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsStartDtmfReq_SDK::ARI_IBICallCsStartDtmfReq_SDK(AriSdk::ARI_IBICallCsStartDtmfReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142901248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142901248, 0);
}

void AriSdk::ARI_IBICallCsStartDtmfReq_SDK::ARI_IBICallCsStartDtmfReq_SDK(AriSdk::ARI_IBICallCsStartDtmfReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsStartDtmfReq_SDK::~ARI_IBICallCsStartDtmfReq_SDK(AriSdk::ARI_IBICallCsStartDtmfReq_SDK *this)
{
  *this = &unk_2A1D435D0;
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
  AriSdk::ARI_IBICallCsStartDtmfReq_SDK::~ARI_IBICallCsStartDtmfReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsStartDtmfReq_SDK::pack(AriSdk::ARI_IBICallCsStartDtmfReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK::ARI_IBICallCsStartDtmfRspCb_SDK(AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151289856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151289856, 0);
}

void AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK::ARI_IBICallCsStartDtmfRspCb_SDK(AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK::~ARI_IBICallCsStartDtmfRspCb_SDK(AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK *this)
{
  *this = &unk_2A1D43608;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK::~ARI_IBICallCsStartDtmfRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK::pack(AriSdk::ARI_IBICallCsStartDtmfRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK::ARI_IBICallCsStartDtmfIndCb_SDK(AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 159973376, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 159973376, 0);
}

void AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK::ARI_IBICallCsStartDtmfIndCb_SDK(AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK::~ARI_IBICallCsStartDtmfIndCb_SDK(AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK *this)
{
  *this = &unk_2A1D43640;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK::~ARI_IBICallCsStartDtmfIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK::pack(AriSdk::ARI_IBICallCsStartDtmfIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsStopDtmfReq_SDK::ARI_IBICallCsStopDtmfReq_SDK(AriSdk::ARI_IBICallCsStopDtmfReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142934016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142934016, 0);
}

void AriSdk::ARI_IBICallCsStopDtmfReq_SDK::ARI_IBICallCsStopDtmfReq_SDK(AriSdk::ARI_IBICallCsStopDtmfReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsStopDtmfReq_SDK::~ARI_IBICallCsStopDtmfReq_SDK(AriSdk::ARI_IBICallCsStopDtmfReq_SDK *this)
{
  *this = &unk_2A1D43678;
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
  AriSdk::ARI_IBICallCsStopDtmfReq_SDK::~ARI_IBICallCsStopDtmfReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsStopDtmfReq_SDK::pack(AriSdk::ARI_IBICallCsStopDtmfReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK::ARI_IBICallCsStopDtmfExtRspCb_SDK(AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151322624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151322624, 0);
}

void AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK::ARI_IBICallCsStopDtmfExtRspCb_SDK(AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK::~ARI_IBICallCsStopDtmfExtRspCb_SDK(AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK *this)
{
  *this = &unk_2A1D436B0;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK::~ARI_IBICallCsStopDtmfExtRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK::pack(AriSdk::ARI_IBICallCsStopDtmfExtRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK::ARI_IBICallCsStopDtmfIndCb_SDK(AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 160006144, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 160006144, 0);
}

void AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK::ARI_IBICallCsStopDtmfIndCb_SDK(AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK::~ARI_IBICallCsStopDtmfIndCb_SDK(AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK *this)
{
  *this = &unk_2A1D436E8;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK::~ARI_IBICallCsStopDtmfIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK::pack(AriSdk::ARI_IBICallCsStopDtmfIndCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallCsSwapCallsReq_SDK::ARI_IBICallCsSwapCallsReq_SDK(AriSdk::ARI_IBICallCsSwapCallsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 142737408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 142737408, 0);
}

void AriSdk::ARI_IBICallCsSwapCallsReq_SDK::ARI_IBICallCsSwapCallsReq_SDK(AriSdk::ARI_IBICallCsSwapCallsReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSwapCallsReq_SDK::~ARI_IBICallCsSwapCallsReq_SDK(AriSdk::ARI_IBICallCsSwapCallsReq_SDK *this)
{
  *this = &unk_2A1D43720;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsSwapCallsReq_SDK::~ARI_IBICallCsSwapCallsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSwapCallsReq_SDK::pack(AriSdk::ARI_IBICallCsSwapCallsReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK::ARI_IBICallCsSwapCallsRspCb_SDK(AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151126016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151126016, 0);
}

void AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK::ARI_IBICallCsSwapCallsRspCb_SDK(AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK::~ARI_IBICallCsSwapCallsRspCb_SDK(AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK *this)
{
  *this = &unk_2A1D43758;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK::~ARI_IBICallCsSwapCallsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK::pack(AriSdk::ARI_IBICallCsSwapCallsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsTransferCallsReq_SDK::ARI_IBICallCsTransferCallsReq_SDK(AriSdk::ARI_IBICallCsTransferCallsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 143196160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 143196160, 0);
}

void AriSdk::ARI_IBICallCsTransferCallsReq_SDK::ARI_IBICallCsTransferCallsReq_SDK(AriSdk::ARI_IBICallCsTransferCallsReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsTransferCallsReq_SDK::~ARI_IBICallCsTransferCallsReq_SDK(AriSdk::ARI_IBICallCsTransferCallsReq_SDK *this)
{
  *this = &unk_2A1D43790;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsTransferCallsReq_SDK::~ARI_IBICallCsTransferCallsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsTransferCallsReq_SDK::pack(AriSdk::ARI_IBICallCsTransferCallsReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK::ARI_IBICallCsTransferCallsRspCb_SDK(AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 151584768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 151584768, 0);
}

void AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK::ARI_IBICallCsTransferCallsRspCb_SDK(AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK::~ARI_IBICallCsTransferCallsRspCb_SDK(AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK *this)
{
  *this = &unk_2A1D437C8;
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK::~ARI_IBICallCsTransferCallsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK::pack(AriSdk::ARI_IBICallCsTransferCallsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void std::vector<IBICallCsExtEmergencyNumber>::__init_with_size[abi:ne200100]<IBICallCsExtEmergencyNumber*,IBICallCsExtEmergencyNumber*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29621E1A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK::ARI_IBICallCsVoimsANBRQReq_SDK(AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1082228736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1082228736, 0);
}

void AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK::ARI_IBICallCsVoimsANBRQReq_SDK(AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK::~ARI_IBICallCsVoimsANBRQReq_SDK(AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK *this)
{
  *this = &unk_2A1D43CF8;
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
  AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK::~ARI_IBICallCsVoimsANBRQReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK::pack(AriSdk::ARI_IBICallCsVoimsANBRQReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK::ARI_IBICallCsVoimsANBRQRspCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1090617344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1090617344, 0);
}

void AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK::ARI_IBICallCsVoimsANBRQRspCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK::~ARI_IBICallCsVoimsANBRQRspCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK *this)
{
  *this = &unk_2A1D43D30;
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
  AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK::~ARI_IBICallCsVoimsANBRQRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsANBRQRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK::ARI_IBICallCsVoimsANBRIndCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1099071488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1099071488, 0);
}

void AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK::ARI_IBICallCsVoimsANBRIndCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK::~ARI_IBICallCsVoimsANBRIndCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK *this)
{
  *this = &unk_2A1D43D68;
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
  AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK::~ARI_IBICallCsVoimsANBRIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsANBRIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1082261504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1082261504, 0);
}

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK::~ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK *this)
{
  *this = &unk_2A1D43DA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK::~ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK::pack(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1090650112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1090650112, 0);
}

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK::~ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK *this)
{
  *this = &unk_2A1D43DD8;
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
  AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK::~ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1099104256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1099104256, 0);
}

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK::~ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK *this)
{
  *this = &unk_2A1D43E10;
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
  AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK::~ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsANBRProhibitTimerIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1099038720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1099038720, 0);
}

void AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK::~ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK *this)
{
  *this = &unk_2A1D43E48;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK::~ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsCallRetryFailureIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1098973184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1098973184, 0);
}

void AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK::~ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK *this)
{
  *this = &unk_2A1D43E80;
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
  AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK::~ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsCallRetryInitiatedIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1099005952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1099005952, 0);
}

void AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK::~ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK(AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK *this)
{
  *this = &unk_2A1D43EB8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
  AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK::~ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsCallRetrySetupIndCb_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK::ARI_IBICallCsVoimsSessionTransferReq_SDK(AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1082163200, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1082163200, 0);
}

void AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK::ARI_IBICallCsVoimsSessionTransferReq_SDK(AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK::~ARI_IBICallCsVoimsSessionTransferReq_SDK(AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK *this)
{
  *this = &unk_2A1D43EF0;
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
  AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK::~ARI_IBICallCsVoimsSessionTransferReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK::pack(AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK::unpack(AriSdk::ARI_IBICallCsVoimsSessionTransferReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296220B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK::ARI_IBICallCsVoimsSessionTransferRspCb_SDK(AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1090551808, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1090551808, 0);
}

void AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK::ARI_IBICallCsVoimsSessionTransferRspCb_SDK(AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK::~ARI_IBICallCsVoimsSessionTransferRspCb_SDK(AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK *this)
{
  *this = &unk_2A1D43F28;
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
  AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK::~ARI_IBICallCsVoimsSessionTransferRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK::unpack(AriSdk::ARI_IBICallCsVoimsSessionTransferRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296221250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK(AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1098940416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1098940416, 0);
}

void AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK(AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK::~ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK(AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK *this)
{
  *this = &unk_2A1D43F60;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C405A4B087ELL);
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
  AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK::~ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK::pack(AriSdk::ARI_IBICallCsVoimsSrvccHoStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x28CuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1082195968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1082195968, 0);
}

void AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::~ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK *this)
{
  *this = &unk_2A1D43F98;
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
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::~ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK::pack(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1090584576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1090584576, 0);
}

void AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::~ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK *this)
{
  *this = &unk_2A1D43FD0;
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
  AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::~ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK::pack(AriSdk::ARI_IBIMsCallCsVoimsProvideMMTelSessionStatusRspCb_SDK *this, AriMsg **a2)
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

void IDMgr::IDMgr(IDMgr *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  v3[0] = a2;
  v3[1] = a3;
  std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(this + 8, v3);
}

void sub_296222158(_Unwind_Exception *a1)
{
  std::__tree<IDMgr::Range>::destroy(v2, *v4);
  std::__tree<IDMgr::Range>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

uint64_t IDMgr::reset(IDMgr *this)
{
  v2 = (this + 16);
  std::__tree<IDMgr::Range>::destroy(this + 8, *(this + 2));
  *(this + 1) = v2;
  *(this + 3) = 0;
  *v2 = 0;
  std::__tree<IDMgr::Range>::destroy(this + 32, *(this + 5));
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *(this + 5) = 0;
  v4 = *this;
  return std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(this + 8, &v4);
}

BOOL IDMgr::allocate(uint64_t **this, int *a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = IDMgr::_allocate(this, a2, this + 1);
  v7 = v6;
  if (!v6)
  {
    if (a3)
    {
      v8 = IDMgr::_allocate(v6, a2, this + 4);
      v7 = v8;
      if ((DefaultLogLevel & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(v8);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "allocate", __p);
          v10 = v16 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v18 = 2080;
          v19 = v10;
          v20 = 1024;
          v21 = 43;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) parkedRangeSet is used for allocation.", buf, 0x1Cu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "allocate", buf);
        if (v20 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) parkedRangeSet is used for allocation.", v11, v12, 43);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_29622238C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL IDMgr::_allocate(uint64_t a1, int *a2, uint64_t **a3)
{
  v3 = a3[2];
  if (v3)
  {
    v6 = *a3;
    v7 = *(*a3 + 7);
    v8 = *(*a3 + 8);
    std::__tree<IDMgr::Range>::__remove_node_pointer(a3, *a3);
    operator delete(v6);
    if (v7 < v8)
    {
      v10[0] = v7 + 1;
      v10[1] = v8;
      std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, v10);
    }

    if (a2)
    {
      *a2 = v7;
    }
  }

  return v3 != 0;
}

uint64_t IDMgr::allocate(IDMgr *this, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = IDMgr::_allocate(this, a2, this + 1);
  if (v4)
  {
    result = 1;
  }

  else
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(v4);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "allocate", __p);
        v7 = v12 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v14 = 2080;
        v15 = v7;
        v16 = 1024;
        v17 = 52;
        v18 = 1024;
        v19 = a2;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) parkedRangeSet is checked for allocation on %d.", buf, 0x22u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "allocate", buf);
      if (v16 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) parkedRangeSet is checked for allocation on %d.", v8, v9, 52, a2);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(*buf);
      }
    }

    result = IDMgr::_allocate(this, a2, this + 4);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962225D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IDMgr::_allocate(unsigned int *a1, uint64_t a2, uint64_t **a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*a1 > a2 || a1[1] < a2)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_allocate", __p);
        v6 = v19 >= 0 ? __p : __p[0];
        v7 = *a1;
        v8 = a1[1];
        *buf = 136316418;
        *&buf[4] = "ari";
        v21 = 2080;
        v22 = v6;
        v23 = 1024;
        v24 = 103;
        v25 = 1024;
        v26 = a2;
        v27 = 1024;
        v28 = v7;
        v29 = 1024;
        v30 = v8;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %d is out of bound for the manager [%d %d]", buf, 0x2Eu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_allocate", buf);
      if (v23 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) %d is out of bound for the manager [%d %d]", v9, v10, 103, a2, *a1, a1[1]);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_21;
  }

  *buf = a2;
  *&buf[4] = a2;
  v12 = std::__tree<IDMgr::Range>::find<IDMgr::Range>(a3, buf);
  v13 = v12;
  if (a3 + 1 == v12)
  {
LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  v15 = *(v12 + 28);
  v14 = *(v12 + 32);
  std::__tree<IDMgr::Range>::__remove_node_pointer(a3, v12);
  operator delete(v13);
  if (v15 < a2)
  {
    *buf = v15;
    *&buf[4] = a2 - 1;
    std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
  }

  if (v14 > a2)
  {
    *buf = a2 + 1;
    *&buf[4] = v14;
    std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
  }

  result = 1;
LABEL_22:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296222838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL IDMgr::isAlloc(IDMgr *this, int a2)
{
  if (*(this + 1) < a2)
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  if (*this > a2)
  {
    return 0;
  }

  v10 = a2;
  v11 = a2;
  v7 = std::__tree<IDMgr::Range>::find<IDMgr::Range>(this + 8, &v10);
  v10 = a2;
  v11 = a2;
  v8 = std::__tree<IDMgr::Range>::find<IDMgr::Range>(this + 32, &v10);
  return (this + 16) == v7 && (this + 40) == v8;
}

uint64_t IDMgr::free(IDMgr *this, uint64_t a2, int a3)
{
  v3 = 8;
  if (a3)
  {
    v3 = 32;
  }

  return IDMgr::_free(this, a2, this + v3);
}

uint64_t IDMgr::_free(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v91 = *MEMORY[0x29EDCA608];
  if (*a1 > a2 || a1[1] < a2)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
        v6 = v77 >= 0 ? __p : __p[0];
        v7 = *a1;
        v8 = a1[1];
        *buf = 136316418;
        *&buf[4] = "ari";
        v79 = 2080;
        v80 = v6;
        v81 = 1024;
        v82 = 129;
        v83 = 1024;
        v84 = a2;
        v85 = 1024;
        v86 = v7;
        v87 = 1024;
        v88 = v8;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %d is out of bound for the manager [%d %d]", buf, 0x2Eu);
        if (v77 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
      if (v81 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) %d is out of bound for the manager [%d %d]", v9, v10, 129, a2, *a1, a1[1]);
LABEL_14:
      if (SHIBYTE(v81) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  *buf = a2;
  *&buf[4] = a2;
  v14 = std::__tree<IDMgr::Range>::find<IDMgr::Range>(a3, buf);
  v15 = (a3 + 8);
  if ((a3 + 8) == v14 || *(v14 + 7) > a2 || *(v14 + 8) < a2)
  {
    if (!*(a3 + 16))
    {
      if ((DefaultLogLevel & 4) != 0)
      {
        v22 = AriOsa::GetOsLog(v14);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
          v66 = v77 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v79 = 2080;
          v80 = v66;
          v81 = 1024;
          v82 = 142;
          v83 = 1024;
          v84 = a2;
          _os_log_debug_impl(&dword_296048000, v22, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) First free after a full allocation %d", buf, 0x22u);
          if (v77 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
        if (v81 >= 0)
        {
          v24 = buf;
        }

        else
        {
          v24 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(4, "(%s:%d) First free after a full allocation %d", v23, v24, 142, a2);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(*buf);
        }
      }

      *buf = a2;
      *&buf[4] = a2;
      std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
      IDMgr::dump(a1, 0, v25);
      goto LABEL_137;
    }

    v16 = *v15;
    if (*v15)
    {
      v17 = a3 + 8;
      do
      {
        if (*(v16 + 28) > a2)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 28) <= a2));
      }

      while (v16);
      if (v17 != v15)
      {
        v19 = *(v17 + 28);
        v18 = *(v17 + 32);
        if (v17 == *a3)
        {
          if (v19 - 1 == a2)
          {
            if ((DefaultLogLevel & 4) != 0)
            {
              v44 = AriOsa::GetOsLog(v14);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
                v70 = v77 >= 0 ? __p : __p[0];
                *buf = 136315906;
                *&buf[4] = "ari";
                v79 = 2080;
                v80 = v70;
                v81 = 1024;
                v82 = 183;
                v83 = 1024;
                v84 = a2;
                _os_log_debug_impl(&dword_296048000, v44, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Lower free range merged %d", buf, 0x22u);
                if (v77 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
              if (v81 >= 0)
              {
                v46 = buf;
              }

              else
              {
                v46 = *buf;
              }

              AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Lower free range merged %d", v45, v46, 183, a2);
              if (SHIBYTE(v81) < 0)
              {
                operator delete(*buf);
              }
            }

            goto LABEL_90;
          }

          if ((DefaultLogLevel & 4) != 0)
          {
            v57 = AriOsa::GetOsLog(v14);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
              v71 = v77 >= 0 ? __p : __p[0];
              *buf = 136315906;
              *&buf[4] = "ari";
              v79 = 2080;
              v80 = v71;
              v81 = 1024;
              v82 = 190;
              v83 = 1024;
              v84 = a2;
              _os_log_debug_impl(&dword_296048000, v57, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) New lower free range %d ", buf, 0x22u);
              if (v77 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
            if (v81 >= 0)
            {
              v59 = buf;
            }

            else
            {
              v59 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) New lower free range %d ", v58, v59, 190, a2);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else
        {
          v20 = *v17;
          if (*v17)
          {
            do
            {
              v21 = v20;
              v20 = *(v20 + 8);
            }

            while (v20);
          }

          else
          {
            v47 = v17;
            do
            {
              v21 = *(v47 + 16);
              v27 = *v21 == v47;
              v47 = v21;
            }

            while (v27);
          }

          v48 = *(v21 + 32);
          v49 = v19 - 1;
          if (v48 + 1 == a2)
          {
            v50 = *(v21 + 28);
            if (v49 == a2)
            {
              if ((DefaultLogLevel & 4) != 0)
              {
                v51 = AriOsa::GetOsLog(v14);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
                  v72 = v77 >= 0 ? __p : __p[0];
                  *buf = 136316674;
                  *&buf[4] = "ari";
                  v79 = 2080;
                  v80 = v72;
                  v81 = 1024;
                  v82 = 202;
                  v83 = 1024;
                  v84 = v50;
                  v85 = 1024;
                  v86 = v48;
                  v87 = 1024;
                  v88 = v19;
                  v89 = 1024;
                  v90 = v18;
                  _os_log_debug_impl(&dword_296048000, v51, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Merg middle lower[%d %d] upper[%d %d]", buf, 0x34u);
                  if (v77 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
                if (v81 >= 0)
                {
                  v53 = buf;
                }

                else
                {
                  v53 = *buf;
                }

                AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Merg middle lower[%d %d] upper[%d %d]", v52, v53, 202, v50, v48, v19, v18);
                if (SHIBYTE(v81) < 0)
                {
                  operator delete(*buf);
                }
              }

              std::__tree<IDMgr::Range>::__remove_node_pointer(a3, v17);
              operator delete(v17);
              std::__tree<IDMgr::Range>::__remove_node_pointer(a3, v21);
              operator delete(v21);
              *buf = v50;
              *&buf[4] = v18;
              std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
            }

            else
            {
              if ((DefaultLogLevel & 4) != 0)
              {
                v60 = AriOsa::GetOsLog(v14);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
                  v74 = v77 >= 0 ? __p : __p[0];
                  *buf = 136316162;
                  *&buf[4] = "ari";
                  v79 = 2080;
                  v80 = v74;
                  v81 = 1024;
                  v82 = 213;
                  v83 = 1024;
                  v84 = v50;
                  v85 = 1024;
                  v86 = v48;
                  _os_log_debug_impl(&dword_296048000, v60, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Merge with lower[%d %d] ", buf, 0x28u);
                  if (v77 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
                if (v81 >= 0)
                {
                  v62 = buf;
                }

                else
                {
                  v62 = *buf;
                }

                AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Merge with lower[%d %d] ", v61, v62, 213, v50, v48);
                if (SHIBYTE(v81) < 0)
                {
                  operator delete(*buf);
                }
              }

              std::__tree<IDMgr::Range>::__remove_node_pointer(a3, v21);
              operator delete(v21);
              *buf = v50;
              *&buf[4] = a2;
              std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
            }

            goto LABEL_136;
          }

          if (v49 == a2)
          {
            if ((DefaultLogLevel & 4) != 0)
            {
              v54 = AriOsa::GetOsLog(v14);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
                v73 = v77 >= 0 ? __p : __p[0];
                *buf = 136316162;
                *&buf[4] = "ari";
                v79 = 2080;
                v80 = v73;
                v81 = 1024;
                v82 = 208;
                v83 = 1024;
                v84 = v19;
                v85 = 1024;
                v86 = v18;
                _os_log_debug_impl(&dword_296048000, v54, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Merge with upper[%d %d]", buf, 0x28u);
                if (v77 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
              if (v81 >= 0)
              {
                v56 = buf;
              }

              else
              {
                v56 = *buf;
              }

              AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Merge with upper[%d %d]", v55, v56, 208, v19, v18);
              if (SHIBYTE(v81) < 0)
              {
                operator delete(*buf);
              }
            }

LABEL_90:
            std::__tree<IDMgr::Range>::__remove_node_pointer(a3, v17);
            operator delete(v17);
            *buf = a2;
            *&buf[4] = v18;
            std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
LABEL_136:
            IDMgr::dump(a1, 0, v37);
LABEL_137:
            result = 1;
            goto LABEL_17;
          }

          if ((DefaultLogLevel & 4) != 0)
          {
            v63 = AriOsa::GetOsLog(v14);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
              v75 = v77 >= 0 ? __p : __p[0];
              *buf = 136315906;
              *&buf[4] = "ari";
              v79 = 2080;
              v80 = v75;
              v81 = 1024;
              v82 = 217;
              v83 = 1024;
              v84 = a2;
              _os_log_debug_impl(&dword_296048000, v63, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) New independent middle range %d", buf, 0x22u);
              if (v77 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
            if (v81 >= 0)
            {
              v65 = buf;
            }

            else
            {
              v65 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) New independent middle range %d", v64, v65, 217, a2);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*buf);
            }
          }
        }

LABEL_135:
        *buf = a2;
        *&buf[4] = a2;
        std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
        goto LABEL_136;
      }

      v32 = *v17;
      if (*v17)
      {
        do
        {
          v26 = v32;
          v32 = *(v32 + 8);
        }

        while (v32);
LABEL_56:
        if (v26 == v15)
        {
          if ((DefaultLogLevel & 8) != 0)
          {
            v38 = AriOsa::GetOsLog(v14);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
              v67 = v77 >= 0 ? __p : __p[0];
              *buf = 136315650;
              *&buf[4] = "ari";
              v79 = 2080;
              v80 = v67;
              v81 = 1024;
              v82 = 157;
              _os_log_error_impl(&dword_296048000, v38, OS_LOG_TYPE_ERROR, "%s: (%s:%d) targetSet is empty! This is likely not invoked atomically", buf, 0x1Cu);
              if (v77 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
            if (v81 >= 0)
            {
              v40 = buf;
            }

            else
            {
              v40 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) targetSet is empty! This is likely not invoked atomically", v39, v40, 157);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*buf);
            }
          }

          AriOsa::SWTrap(1, "true", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x9E);
          goto LABEL_16;
        }

        if (*(v26 + 32) + 1 == a2)
        {
          v33 = *(v26 + 28);
          if ((DefaultLogLevel & 4) != 0)
          {
            v34 = AriOsa::GetOsLog(v14);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
              v68 = v77 >= 0 ? __p : __p[0];
              *buf = 136315906;
              *&buf[4] = "ari";
              v79 = 2080;
              v80 = v68;
              v81 = 1024;
              v82 = 167;
              v83 = 1024;
              v84 = a2;
              _os_log_debug_impl(&dword_296048000, v34, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Upper free range merged %d", buf, 0x22u);
              if (v77 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
            if (v81 >= 0)
            {
              v36 = buf;
            }

            else
            {
              v36 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Upper free range merged %d", v35, v36, 167, a2);
            if (SHIBYTE(v81) < 0)
            {
              operator delete(*buf);
            }
          }

          std::__tree<IDMgr::Range>::__remove_node_pointer(a3, v26);
          operator delete(v26);
          *buf = v33;
          *&buf[4] = a2;
          std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(a3, buf);
          goto LABEL_136;
        }

        if ((DefaultLogLevel & 4) != 0)
        {
          v41 = AriOsa::GetOsLog(v14);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
            v69 = v77 >= 0 ? __p : __p[0];
            *buf = 136315906;
            *&buf[4] = "ari";
            v79 = 2080;
            v80 = v69;
            v81 = 1024;
            v82 = 171;
            v83 = 1024;
            v84 = a2;
            _os_log_debug_impl(&dword_296048000, v41, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) New upper free range %d", buf, 0x22u);
            if (v77 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
          if (v81 >= 0)
          {
            v43 = buf;
          }

          else
          {
            v43 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) New upper free range %d", v42, v43, 171, a2);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(*buf);
          }
        }

        goto LABEL_135;
      }
    }

    else
    {
      v17 = a3 + 8;
    }

    do
    {
      v26 = *(v17 + 16);
      v27 = *v26 == v17;
      v17 = v26;
    }

    while (v27);
    goto LABEL_56;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    v28 = AriOsa::GetOsLog(v14);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", __p);
      v29 = v77 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v79 = 2080;
      v80 = v29;
      v81 = 1024;
      v82 = 136;
      v83 = 1024;
      v84 = a2;
      _os_log_impl(&dword_296048000, v28, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %d is already freed", buf, 0x22u);
      if (v77 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "_free", buf);
    if (v81 >= 0)
    {
      v31 = buf;
    }

    else
    {
      v31 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) %d is already freed", v30, v31, 136, a2);
    goto LABEL_14;
  }

LABEL_16:
  result = 0;
LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296223978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IDMgr::dump(IDMgr *this, char a2, const char *a3)
{
  if ((a2 & 1) != 0 || (DefaultLogLevel & 4) != 0)
  {
    Ari::Log(0x100, "=== IDgmr(%p) ===\nFree ranges: %zu\n", a3, this, *(this + 3));
    v5 = *(this + 1);
    if (v5 != (this + 16))
    {
      do
      {
        Ari::Log(0x100, "{0x%04x, 0x%04x},\n", v4, *(v5 + 7), *(v5 + 8));
        v6 = *(v5 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v5 + 2);
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != (this + 16));
    }

    Ari::Log(0x100, "{-1, -1}\n", v4);
    Ari::Log(0x100, "Parked ranges: %zu\n", v9, *(this + 6));
    v11 = *(this + 4);
    if (v11 != (this + 40))
    {
      do
      {
        Ari::Log(0x100, "{0x%04x, 0x%04x},\n", v10, *(v11 + 7), *(v11 + 8));
        v12 = *(v11 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v11 + 2);
            v8 = *v13 == v11;
            v11 = v13;
          }

          while (!v8);
        }

        v11 = v13;
      }

      while (v13 != (this + 40));
    }

    Ari::Log(0x100, "{-1, -1}\n\n", v10);
  }
}

Ari::MsgSet *Ari::MsgSet::MsgSet(Ari::MsgSet *this, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  *(v3 + 7) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 16) = 1065353216;
  AriOsa::SWTrap(0, "id==NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", 0x78);
  *(this + 3) = dispatch_semaphore_create(1);
  return this;
}

void sub_296223BA8(_Unwind_Exception *a1)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v1 + 32);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void Ari::MsgSet::~MsgSet(Ari::MsgSet *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 32);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t Ari::MsgSet::add(dispatch_semaphore_t *this, unsigned int a2)
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = (a2 >> 26);
  v5 = (a2 >> 15) & 0x3FF;
  v6 = Ari::MsgDefById(v4, (a2 >> 15) & 0x3FF);
  if (!v6)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "add", __p);
        v20 = __p[0];
        if (v36 >= 0)
        {
          v20 = __p;
        }

        v21 = this;
        if (*(this + 23) < 0)
        {
          v21 = *this;
        }

        *buf = 136316418;
        *&buf[4] = "ari";
        v38 = 2080;
        v39 = v20;
        v40 = 1024;
        v41 = 265;
        v42 = 2080;
        v43 = v21;
        v44 = 1024;
        v45 = v4;
        v46 = 1024;
        v47 = v5;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: Can not find gmid(%d-%x) in SDK", buf, 0x32u);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "add", buf);
      if (v40 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      if (*(this + 23) < 0)
      {
        this = *this;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) %s: Can not find gmid(%d-%x) in SDK", v22, v23, 265, this, v4, v5);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(*buf);
      }
    }

    result = 4294967225;
    goto LABEL_61;
  }

  v7 = v6;
  v8 = dispatch_semaphore_wait(this[3], 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v8, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x10E);
  v9 = std::__hash_table<std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ARIMSGDEF const*>>>::find<unsigned int>(this + 4, a2);
  if (v9)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v10 = AriOsa::GetOsLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "add", __p);
        if (v36 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = *(v7 + 6);
        v14 = *v7;
        v13 = v7[1];
        v15 = this;
        if (*(this + 23) < 0)
        {
          v15 = *this;
        }

        *buf = 136316674;
        *&buf[4] = "ari";
        v38 = 2080;
        v39 = v11;
        v40 = 1024;
        v41 = 283;
        v42 = 2080;
        v43 = v12;
        v44 = 1024;
        v45 = v14;
        v46 = 1024;
        v47 = v13;
        v48 = 2080;
        v49 = v15;
        _os_log_impl(&dword_296048000, v10, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s(%d-%x) already in %s", buf, 0x3Cu);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "add", buf);
      if (v40 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      v18 = this;
      if (*(this + 23) < 0)
      {
        v18 = *this;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s(%d-%x) already in %s", v16, v17, 283, *(v7 + 6), *v7, v7[1], v18);
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  v25 = this[5];
  if (!v25)
  {
    goto LABEL_51;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = a2;
    if (v25 <= a2)
    {
      v27 = a2 % v25;
    }
  }

  else
  {
    v27 = (v25 - 1) & a2;
  }

  isa = this[4][v27].isa;
  if (!isa || (v29 = *isa) == 0)
  {
LABEL_51:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == a2)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= v25)
      {
        v30 %= v25;
      }
    }

    else
    {
      v30 &= v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_51;
    }

LABEL_50:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_51;
    }
  }

  if (*(v29 + 4) != a2)
  {
    goto LABEL_50;
  }

  AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "add", buf);
  if (v40 >= 0)
  {
    v32 = buf;
  }

  else
  {
    v32 = *buf;
  }

  v33 = this;
  if (*(this + 23) < 0)
  {
    v33 = *this;
  }

  Ari::Log(0x200, "(%s:%d) @@%s add %s", v31, v32, 279, v33, *(v7 + 6));
LABEL_58:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(*buf);
  }

LABEL_60:
  dispatch_semaphore_signal(this[3]);
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x11E);
  result = 0;
LABEL_61:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Ari::MsgSet::remove(dispatch_semaphore_t *this, unsigned int a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v4 = dispatch_semaphore_wait(this[3], 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x125);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ARIMSGDEF const*>>>::find<unsigned int>(this + 4, a2);
  if (v5)
  {
    v6 = v5;
    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "remove", __p);
    if (v36 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    v9 = this;
    if (*(this + 23) < 0)
    {
      v9 = *this;
    }

    Ari::Log(0x200, "(%s:%d) @@%s rmv %s", v7, v8, 302, v9, *(v6[3] + 48));
    if (SHIBYTE(v36) < 0)
    {
      operator delete(*__p);
    }

    v10 = this[5];
    v11 = *v6;
    v12 = v6[1];
    v13 = vcnt_s8(v10);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v10)
      {
        v12 %= *&v10;
      }
    }

    else
    {
      v12 &= *&v10 - 1;
    }

    v19 = this[4];
    isa = v19[v12].isa;
    do
    {
      v21 = isa;
      isa = *isa;
    }

    while (isa != v6);
    if (v21 == (this + 6))
    {
      goto LABEL_34;
    }

    v22 = *(v21 + 1);
    if (v13.u32[0] > 1uLL)
    {
      if (v22 >= *&v10)
      {
        v22 %= *&v10;
      }
    }

    else
    {
      v22 &= *&v10 - 1;
    }

    if (v22 != v12)
    {
LABEL_34:
      if (v11)
      {
        v23 = *(v11 + 8);
        if (v13.u32[0] > 1uLL)
        {
          v24 = *(v11 + 8);
          if (v23 >= *&v10)
          {
            v24 = v23 % *&v10;
          }
        }

        else
        {
          v24 = v23 & (*&v10 - 1);
        }

        if (v24 == v12)
        {
          goto LABEL_38;
        }
      }

      v19[v12].isa = 0;
      v11 = *v6;
    }

    if (!v11)
    {
LABEL_44:
      *v21 = v11;
      *v6 = 0;
      this[7] = (this[7] - 1);
      v25 = v6;
LABEL_45:
      operator delete(v25);
      goto LABEL_46;
    }

    v23 = *(v11 + 8);
LABEL_38:
    if (v13.u32[0] > 1uLL)
    {
      if (v23 >= *&v10)
      {
        v23 %= *&v10;
      }
    }

    else
    {
      v23 &= *&v10 - 1;
    }

    if (v23 != v12)
    {
      this[4][v23].isa = v21;
      v11 = *v6;
    }

    goto LABEL_44;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(0);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "remove", v31);
      v15 = v31[0];
      if (v32 >= 0)
      {
        v15 = v31;
      }

      v16 = a2 >> 26;
      v17 = (a2 >> 15) & 0x3FF;
      v18 = this;
      if (*(this + 23) < 0)
      {
        v18 = *this;
      }

      *__p = 136316418;
      *&__p[4] = "ari";
      v34 = 2080;
      v35 = v15;
      v36 = 1024;
      v37 = 307;
      v38 = 1024;
      v39 = v16;
      v40 = 1024;
      v41 = v17;
      v42 = 2080;
      v43 = v18;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Attempt to remove gmid(%d-%x) not in %s", __p, 0x32u);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      v16 = a2 >> 26;
      v17 = (a2 >> 15) & 0x3FF;
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "remove", __p);
    if (v36 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = *__p;
    }

    v30 = this;
    if (*(this + 23) < 0)
    {
      v30 = *this;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Attempt to remove gmid(%d-%x) not in %s", v28, v29, 307, v16, v17, v30);
    if (SHIBYTE(v36) < 0)
    {
      v25 = *__p;
      goto LABEL_45;
    }
  }

LABEL_46:
  dispatch_semaphore_signal(this[3]);
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x136);
  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2962247DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::MsgSet::operator[](uint64_t a1, unsigned int a2)
{
  v4 = dispatch_semaphore_wait(*(a1 + 24), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x13D);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ARIMSGDEF const*>>>::find<unsigned int>((a1 + 32), a2);
  if (v5)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = 0;
  }

  dispatch_semaphore_signal(*(a1 + 24));
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x147);
  return v6;
}

AriOsa *Ari::MsgSet::foreach(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_semaphore_wait(*(a1 + 24), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x14D);
  AriOsa::SWTrap((*(a2 + 24) == 0), "handler == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x14E);
  for (i = *(a1 + 48); i; i = *i)
  {
    v6 = *(a2 + 24);
    v8 = i[3];
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v8);
  }

  dispatch_semaphore_signal(*(a1 + 24));

  return AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x159);
}

std::string *Ari::ScopeTimer::ScopeTimer(std::string *this, __int128 *a2, int a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = a4;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = 0;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = (std::chrono::system_clock::now().__d_.__rep_ - AriOsa_Init_Time) / 1000;
  return this;
}

void Ari::ScopeTimer::~ScopeTimer(Ari::ScopeTimer *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v3 = ((LODWORD(v2.__d_.__rep_) - AriOsa_Init_Time) / 1000 - *(this + 8));
  if (v3 >= *(this + 6))
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(v2.__d_.__rep_);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "~ScopeTimer", __p);
        v5 = __p[0];
        if (v13 >= 0)
        {
          v5 = __p;
        }

        v6 = this;
        if (*(this + 23) < 0)
        {
          v6 = *this;
        }

        v7 = *(this + 6);
        *buf = 136316418;
        *&buf[4] = "ari";
        v15 = 2080;
        v16 = v5;
        v17 = 1024;
        v18 = 363;
        v19 = 2080;
        v20 = v6;
        v21 = 1024;
        v22 = v3;
        v23 = 1024;
        v24 = v7;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s delay(%d) exceeds warning level(%d) ", buf, 0x32u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "~ScopeTimer", buf);
      if (v17 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v10 = this;
      if (*(this + 23) < 0)
      {
        v10 = *this;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) %s delay(%d) exceeds warning level(%d) ", v8, v9, 363, v10, v3, *(this + 6));
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*buf);
      }
    }

    AriOsa::SWTrap((v3 >= *(this + 7)), "delta >= trapLimit", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x16C);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_296224C60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AriFramer_HeaderMagicScan(const unsigned __int8 *a1, unint64_t a2, int *a3, unint64_t *a4)
{
  v70 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || a4 == 0;
  v11 = AriOsa::SWTrap(v10, "(startIndex == NULL) || (buf == NULL) || (msgLen == NULL)", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", 0x184);
  *a3 = -1;
  if (!a2)
  {
    goto LABEL_98;
  }

  if (a2 < 4 || *a1 != -1417756450)
  {
    for (i = 0; ; i = v30)
    {
      if ((DefaultLogLevel & 0x10) != 0)
      {
        OsLog = AriOsa::GetOsLog(v11);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
          v21 = __p;
          if (v58 < 0)
          {
            v21 = __p[0];
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v60 = 2080;
          v61 = v21;
          v62 = 1024;
          v63 = 404;
          v64 = 1024;
          v65 = i;
          v66 = 1024;
          LODWORD(v67) = 222;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Start over @index %d to scan header magic byte0 0X%02X.", buf, 0x28u);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
        v23 = buf;
        if (v62 < 0)
        {
          v23 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Start over @index %d to scan header magic byte0 0X%02X.", v22, v23, 404, i, 222);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(*buf);
        }
      }

      *a3 = -1;
      if (a2 <= i)
      {
        goto LABEL_98;
      }

      v24 = 0;
      while (a1[i + v24] != 222)
      {
        if (a2 - i == ++v24)
        {
          goto LABEL_98;
        }
      }

      v25 = v24 + i;
      *a3 = v25;
      if ((DefaultLogLevel & 0x10) != 0)
      {
        v26 = AriOsa::GetOsLog(v11);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
          v27 = __p;
          if (v58 < 0)
          {
            v27 = __p[0];
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v60 = 2080;
          v61 = v27;
          v62 = 1024;
          v63 = 411;
          v64 = 1024;
          v65 = v24 + i;
          v66 = 1024;
          LODWORD(v67) = 222;
          _os_log_impl(&dword_296048000, v26, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Skipping additional %d bytes and found header magic byte0 0X%02X.", buf, 0x28u);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
        v29 = buf;
        if (v62 < 0)
        {
          v29 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Skipping additional %d bytes and found header magic byte0 0X%02X.", v28, v29, 411, v24 + i, 222);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(*buf);
        }

        v12 = *a3;
      }

      else
      {
        v12 = v24 + i;
      }

      if (v12 == -1)
      {
        goto LABEL_98;
      }

      v30 = v25 + 1;
      v31 = v25 + 1;
      if (v31 >= a2)
      {
        break;
      }

      if (a1[v31] == 192)
      {
        v30 = v25 + 2;
        v31 = v25 + 2;
        if (v31 >= a2)
        {
          v43 = (i + v24 + 2);
          goto LABEL_89;
        }

        if (a1[v31] == 126)
        {
          v30 = v25 + 3;
          v31 = v25 + 3;
          if (v31 >= a2 || a1[v31] == 171)
          {
            v43 = (i + v24 + 3);
            goto LABEL_89;
          }
        }
      }
    }

    v43 = (i + v24 + 1);
LABEL_89:
    if (v31 < a2)
    {
      if ((DefaultLogLevel & 0x10) != 0)
      {
        v44 = AriOsa::GetOsLog(v11);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
          if (v58 >= 0)
          {
            v45 = __p;
          }

          else
          {
            v45 = __p[0];
          }

          v46 = (v43 + 1);
          *buf = 136315906;
          *&buf[4] = "ari";
          v60 = 2080;
          v61 = v45;
          v62 = 1024;
          v63 = 433;
          v64 = 1024;
          v65 = v46;
          _os_log_impl(&dword_296048000, v44, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Scanned total %d bytes and found header magic word.", buf, 0x22u);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v46 = (v43 + 1);
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
        if (v62 >= 0)
        {
          v53 = buf;
        }

        else
        {
          v53 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Scanned total %d bytes and found header magic word.", v52, v53, 433, v46);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(*buf);
        }

        v12 = *a3;
      }

      goto LABEL_14;
    }

    if ((DefaultLogLevel & 0x10) == 0)
    {
      goto LABEL_98;
    }

    v48 = AriOsa::GetOsLog(v11);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
      v49 = v58 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v60 = 2080;
      v61 = v49;
      v62 = 1024;
      v63 = 429;
      v64 = 1024;
      v65 = v43;
      _os_log_impl(&dword_296048000, v48, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Exhausted lenth %d bytes but failed to find header magic word.", buf, 0x22u);
      if (v58 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
    if (v62 >= 0)
    {
      v51 = buf;
    }

    else
    {
      v51 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Exhausted lenth %d bytes but failed to find header magic word.", v50, v51, 429, v43);
    goto LABEL_26;
  }

  v12 = 0;
  *a3 = 0;
LABEL_14:
  v13 = a2 - v12;
  if (v13 <= 0xB)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      v14 = AriOsa::GetOsLog(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
        v15 = v58 >= 0 ? __p : __p[0];
        v16 = *a3;
        *buf = 136316162;
        *&buf[4] = "ari";
        v60 = 2080;
        v61 = v15;
        v62 = 1024;
        v63 = 440;
        v64 = 1024;
        v65 = v16;
        v66 = 2048;
        v67 = v13;
        _os_log_impl(&dword_296048000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Found magic word @index %d but usefulSz (%zu) is too small for a header.", buf, 0x2Cu);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
      if (v62 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Found magic word @index %d but usefulSz (%zu) is too small for a header.", v17, v18, 440, *a3, v13);
LABEL_26:
      if (SHIBYTE(v62) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_98;
    }

    goto LABEL_98;
  }

  v32 = *&a1[v12] >> 49;
  if (v32 == 0x7FFF)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      v33 = AriOsa::GetOsLog(v11);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
        v34 = v58 >= 0 ? __p : __p[0];
        v35 = *&a1[v12] >> 49;
        *buf = 136315906;
        *&buf[4] = "ari";
        v60 = 2080;
        v61 = v34;
        v62 = 1024;
        v63 = 448;
        v64 = 1024;
        v65 = v35;
        _os_log_impl(&dword_296048000, v33, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Data with valid magic but illegal size (%d). Ignoring...", buf, 0x22u);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
      if (v62 >= 0)
      {
        v37 = buf;
      }

      else
      {
        v37 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Data with valid magic but illegal size (%d). Ignoring...", v36, v37, 448, *&a1[v12] >> 49);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(*buf);
      }
    }

    result = 0;
    *a3 = -1;
  }

  else
  {
    v39 = v32 + 12;
    if (v13 < v39)
    {
      if ((DefaultLogLevel & 4) != 0)
      {
        v40 = AriOsa::GetOsLog(v11);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", __p);
          v54 = v58 >= 0 ? __p : __p[0];
          v55 = *a3;
          v56 = (*&a1[v12] >> 49) + 12;
          *buf = 136316418;
          *&buf[4] = "ari";
          v60 = 2080;
          v61 = v54;
          v62 = 1024;
          v63 = 455;
          v64 = 1024;
          v65 = v55;
          v66 = 2048;
          v67 = v13;
          v68 = 2048;
          v69 = v56;
          _os_log_debug_impl(&dword_296048000, v40, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Found ARI_IPC_HEADER @index %d but usefulSz (%zu) is too small for a msg->len(%zu).", buf, 0x36u);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "AriFramer_HeaderMagicScan", buf);
        if (v62 >= 0)
        {
          v42 = buf;
        }

        else
        {
          v42 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Found ARI_IPC_HEADER @index %d but usefulSz (%zu) is too small for a msg->len(%zu).", v41, v42, 455, *a3, v13, (*&a1[v12] >> 49) + 12);
        goto LABEL_26;
      }

LABEL_98:
      result = 0;
      goto LABEL_99;
    }

    *a4 = v39;
    result = 1;
  }

LABEL_99:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296225668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GetBufDigest(AriMsg *a1@<X0>, char *a2@<X2>, const unsigned __int8 *a3@<X1>, uint64_t a4@<X8>)
{
  v93 = *MEMORY[0x29EDCA608];
  memset(__str, 170, 19);
  BufHeader = AriMsg::GetBufHeader(a1, a3);
  if (BufHeader)
  {
    v9 = BufHeader;
    v10 = ((*BufHeader >> 35) & 0x3FLL);
    v11 = *(BufHeader + 2);
    v12 = AriMsg::GetBufHeader(a1, a3);
    if (v12)
    {
      v13 = (*v12 >> 41) | ((*(v12 + 2) & 7) << 8);
    }

    else
    {
      v13 = 0;
    }

    v15 = Ari::MsgDefById(v10, v11 >> 6);
    v16 = v15;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    if (v15)
    {
      v17 = *(v15 + 8);
      *(a4 + 23) = 6;
      v18 = (a4 + 6);
      if (v17 == 2 || v17 == 1)
      {
        *(a4 + 4) = 10320;
        v19 = 15933;
      }

      else
      {
        *(a4 + 4) = 10320;
        if (v17)
        {
          v19 = 15932;
        }

        else
        {
          v19 = 15676;
        }
      }

      *a4 = v19 | 0x41200000;
    }

    else
    {
      *(a4 + 23) = 3;
      *a4 = 20545;
      *(a4 + 2) = 40;
      v18 = (a4 + 3);
    }

    *v18 = 0;
    if (a2 && *a2)
    {
      v20 = std::string::basic_string[abi:ne200100]<0>(&v89, a2);
      v21 = std::string::append(v20, ")", 1uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v91 = v21->__r_.__value_.__r.__words[2];
      v90 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v23 = &v90;
      }

      else
      {
        v23 = v90;
      }

      if (v91 >= 0)
      {
        v24 = HIBYTE(v91);
      }

      else
      {
        v24 = *(&v90 + 1);
      }

      std::string::append(a4, v23, v24);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      snprintf(__str, 0x13uLL, "cln#%02d)", v11 >> 25);
      v25 = strlen(__str);
      std::string::append(a4, __str, v25);
    }

    snprintf(__str, 0x13uLL, "%03x", v11 >> 6);
    if (v16)
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, *(v16 + 48));
      v26 = std::string::insert(&v84, 0, " ", 1uLL);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v85, "(", 1uLL);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v86.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v86.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v83, v10);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v83;
      }

      else
      {
        v30 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v83.__r_.__value_.__l.__size_;
      }

      v32 = std::string::append(&v86, v30, size);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v34 = std::string::append(&v87, "-", 1uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = strlen(__str);
      v37 = std::string::append(&v88, __str, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v89, ")", 1uLL);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v91 = v39->__r_.__value_.__r.__words[2];
      v90 = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v41 = &v90;
      }

      else
      {
        v41 = v90;
      }

      if (v91 >= 0)
      {
        v42 = HIBYTE(v91);
      }

      else
      {
        v42 = *(&v90 + 1);
      }

      std::string::append(a4, v41, v42);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      v43 = v84.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::to_string(&v86, v10);
      v44 = std::string::insert(&v86, 0, " MSG(", 5uLL);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v87.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v87.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = std::string::append(&v87, "-", 1uLL);
      v47 = *&v46->__r_.__value_.__l.__data_;
      v88.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v88.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = strlen(__str);
      v49 = std::string::append(&v88, __str, v48);
      v50 = *&v49->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v89, ")", 1uLL);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v91 = v51->__r_.__value_.__r.__words[2];
      v90 = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v53 = &v90;
      }

      else
      {
        v53 = v90;
      }

      if (v91 >= 0)
      {
        v54 = HIBYTE(v91);
      }

      else
      {
        v54 = *(&v90 + 1);
      }

      std::string::append(a4, v53, v54);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      v43 = v86.__r_.__value_.__r.__words[0];
    }

    operator delete(v43);
LABEL_76:
    std::string::basic_string[abi:ne200100]<0>(&v88, " SZ(");
    std::to_string(&v87, (*v9 >> 49) + 12);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v87;
    }

    else
    {
      v55 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v87.__r_.__value_.__l.__size_;
    }

    v57 = std::string::append(&v88, v55, v56);
    v58 = *&v57->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&v89, ") ", 2uLL);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v91 = v59->__r_.__value_.__r.__words[2];
    v90 = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if (v91 >= 0)
    {
      v61 = &v90;
    }

    else
    {
      v61 = v90;
    }

    if (v91 >= 0)
    {
      v62 = HIBYTE(v91);
    }

    else
    {
      v62 = *(&v90 + 1);
    }

    std::string::append(a4, v61, v62);
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    snprintf(__str, 0x13uLL, "0x%04x", v11 >> 17);
    std::string::basic_string[abi:ne200100]<0>(&v88, "TRX(");
    v63 = strlen(__str);
    v64 = std::string::append(&v88, __str, v63);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v89, ") ", 2uLL);
    v67 = *&v66->__r_.__value_.__l.__data_;
    v91 = v66->__r_.__value_.__r.__words[2];
    v90 = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    if (v91 >= 0)
    {
      v68 = &v90;
    }

    else
    {
      v68 = v90;
    }

    if (v91 >= 0)
    {
      v69 = HIBYTE(v91);
    }

    else
    {
      v69 = *(&v90 + 1);
    }

    std::string::append(a4, v68, v69);
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    snprintf(__str, 0x13uLL, "0x%03x", v13);
    if (v16 && *(v16 + 8))
    {
      std::string::basic_string[abi:ne200100]<0>(&v88, "BB.SEQ(");
      v70 = strlen(__str);
      v71 = std::string::append(&v88, __str, v70);
      v72 = *&v71->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      v73 = std::string::append(&v89, ")", 1uLL);
      v74 = *&v73->__r_.__value_.__l.__data_;
      v91 = v73->__r_.__value_.__r.__words[2];
      v90 = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v75 = &v90;
      }

      else
      {
        v75 = v90;
      }

      if (v91 >= 0)
      {
        v76 = HIBYTE(v91);
      }

      else
      {
        v76 = *(&v90 + 1);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v88, "AP.SEQ(");
      v77 = strlen(__str);
      v78 = std::string::append(&v88, __str, v77);
      v79 = *&v78->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      v80 = std::string::append(&v89, ")", 1uLL);
      v81 = *&v80->__r_.__value_.__l.__data_;
      v91 = v80->__r_.__value_.__r.__words[2];
      v90 = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v75 = &v90;
      }

      else
      {
        v75 = v90;
      }

      if (v91 >= 0)
      {
        v76 = HIBYTE(v91);
      }

      else
      {
        v76 = *(&v90 + 1);
      }
    }

    std::string::append(a4, v75, v76);
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v82 = *MEMORY[0x29EDCA608];
    return;
  }

  v14 = *MEMORY[0x29EDCA608];

  std::string::basic_string[abi:ne200100]<0>(a4, "INVALID AriMsg buffer.");
}

void sub_296225F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v49 + 23) < 0)
  {
    operator delete(*v49);
  }

  _Unwind_Resume(exception_object);
}

void make_shared_buffer(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
}

void ari_util::hex(ari_util *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 >= 1)
  {
    v3 = this;
    v5 = (this + a2);
    do
    {
      if (*v3 >= 0xA0u)
      {
        v6 = (*v3 >> 4) + 87;
      }

      else
      {
        v6 = (*v3 >> 4) | 0x30;
      }

      std::string::push_back(a3, v6);
      v7 = *v3 & 0xF;
      if (v7 >= 0xA)
      {
        v8 = v7 + 87;
      }

      else
      {
        v8 = *v3 & 0xF | 0x30;
      }

      std::string::push_back(a3, v8);
      v3 = (v3 + 1);
    }

    while (v3 < v5);
  }
}

void sub_296226390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ari_util::to_rle@<X0>(ari_util *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  ari_util::hex(this, a2, a3);
  return ari_util::to_rle(a3);
}

void sub_2962263E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ari_util::to_rle(std::string *a1)
{
  v2 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = a1;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  v5 = 0;
  v19 = v3;
  v6 = &v3[size];
  v17 = 0;
  v18 = v6;
  v16[0] = &v17;
  v16[1] = &v19;
  v7 = v3;
  v16[2] = a1;
  v16[3] = &v18;
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v8 = a1 + v2;
  v9 = a1;
  v10 = v2;
  while (v7 != v8)
  {
    if (v6 == (v9 + v10) || *v6 == *v7)
    {
      v17 = ++v5;
    }

    else
    {
      ari_util::to_rle(std::string &)::$_0::operator()(v16);
      v17 = 1;
      v2 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      v5 = 1;
    }

    v18 = v3;
    v6 = v7++;
    ++v3;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = a1->__r_.__value_.__r.__words[0];
    v10 = a1->__r_.__value_.__l.__size_;
    v8 = (a1->__r_.__value_.__r.__words[0] + v10);
  }

  ari_util::to_rle(std::string &)::$_0::operator()(v16);
  v11 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v12 = v11;
  v13 = a1 + v11;
  if (v12 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v13 = (a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_);
    v14 = a1->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(a1, &v19[-v14], v13 - v19);
}

void ari_util::to_rle(std::string &)::$_0::operator()(uint64_t a1)
{
  v2 = **a1;
  if (v2 < 5)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 16);
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      v15 = v14->__r_.__value_.__r.__words[0];
    }

    std::string::replace(v14, **(a1 + 8) - v15, v2, v2, ***(a1 + 24));
    **(a1 + 8) += **a1;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = (*v3)++;
    *v4 = 60;
    memset(&v16, 170, sizeof(v16));
    std::to_string(&v16, **a1);
    v5 = *(a1 + 16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v7 = *(a1 + 16);
    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v5->__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    std::string::replace(v5, **(a1 + 8) - v7, size, v8, size);
    v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v16.__r_.__value_.__l.__size_;
    }

    v10 = *(a1 + 8);
    v11 = (*v10 + v9);
    *v10 = v11 + 1;
    *v11 = 62;
    LOBYTE(v11) = ***(a1 + 24);
    v12 = *(a1 + 8);
    v13 = (*v12)++;
    *v13 = v11;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29622668C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ari_util::isProcessRunning(const void **a1)
{
  v42 = *MEMORY[0x29EDCA608];
  size = 0;
  if (sysctl(ari_util::isProcessRunning(std::string const&)::kNames, 3u, 0, &size, 0, 0))
  {
    v2 = __error();
    if ((DefaultLogLevel & 8) != 0)
    {
      v3 = *v2;
      OsLog = AriOsa::GetOsLog(v2);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "isProcessRunning", v35);
        v31 = v36 >= 0 ? v35 : v35[0];
        LODWORD(__p[0]) = 136315906;
        *(__p + 4) = "ari";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = v31;
        HIWORD(__p[2]) = 1024;
        v39 = 764;
        v40 = 1024;
        v41 = v3;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) first sysctl() failed with err = %d", __p, 0x22u);
        if (v36 < 0)
        {
          operator delete(v35[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "isProcessRunning", __p);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) first sysctl() failed with err = %d", v5, v6, 764, v3);
LABEL_8:
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v7 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
  v34 = v7;
  if (v7)
  {
    if (sysctl(ari_util::isProcessRunning(std::string const&)::kNames, 3u, v7, &size, 0, 0))
    {
      v8 = __error();
      if ((DefaultLogLevel & 8) != 0)
      {
        v9 = *v8;
        v10 = AriOsa::GetOsLog(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "isProcessRunning", v35);
          v32 = v36 >= 0 ? v35 : v35[0];
          LODWORD(__p[0]) = 136315906;
          *(__p + 4) = "ari";
          WORD2(__p[1]) = 2080;
          *(&__p[1] + 6) = v32;
          HIWORD(__p[2]) = 1024;
          v39 = 785;
          v40 = 1024;
          v41 = v9;
          _os_log_error_impl(&dword_296048000, v10, OS_LOG_TYPE_ERROR, "%s: (%s:%d) second sysctl() failed with err = %d", __p, 0x22u);
          if (v36 < 0)
          {
            operator delete(v35[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "isProcessRunning", __p);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) second sysctl() failed with err = %d", v11, v12, 785, v9);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else if (size >= 0x288)
    {
      v19 = size / 0x288 - 1;
      v20 = v34 + 243;
      do
      {
        memset(__p, 170, sizeof(__p));
        std::string::basic_string[abi:ne200100]<0>(__p, v20);
        v21 = SHIBYTE(__p[2]);
        v22 = __p[0];
        if (SHIBYTE(__p[2]) >= 0)
        {
          v23 = HIBYTE(__p[2]);
        }

        else
        {
          v23 = __p[1];
        }

        v24 = *(a1 + 23);
        if ((v24 & 0x80000000) != 0)
        {
          if (v23 == -1)
          {
LABEL_75:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v26 = *a1;
          if (a1[1] >= 0x10)
          {
            v25 = 16;
          }

          else
          {
            v25 = a1[1];
          }
        }

        else
        {
          if (v23 == -1)
          {
            goto LABEL_75;
          }

          if (v24 >= 0x10)
          {
            v25 = 16;
          }

          else
          {
            v25 = v24;
          }

          v26 = a1;
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        if (v25 >= v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = v25;
        }

        v29 = memcmp(v26, v27, v28) == 0;
        v13 = v25 == v23 && v29;
        if (v21 < 0)
        {
          operator delete(v22);
        }

        if (v19)
        {
          v30 = v13;
        }

        else
        {
          v30 = 1;
        }

        --v19;
        v20 += 648;
      }

      while ((v30 & 1) == 0);
      goto LABEL_23;
    }

    v13 = 0;
LABEL_23:
    free(v34);
    goto LABEL_24;
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v16 = AriOsa::GetOsLog(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "isProcessRunning", v35);
      v33 = v36 >= 0 ? v35 : v35[0];
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "ari";
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v33;
      HIWORD(__p[2]) = 1024;
      v39 = 774;
      _os_log_error_impl(&dword_296048000, v16, OS_LOG_TYPE_ERROR, "%s: (%s:%d) malloc failed for proc list", __p, 0x1Cu);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari_utils.cpp", "isProcessRunning", __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) malloc failed for proc list", v17, v18, 774);
    goto LABEL_8;
  }

LABEL_20:
  v13 = 0;
LABEL_24:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_296226BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<IDMgr::Range>::__emplace_unique_key_args<IDMgr::Range,IDMgr::Range>(uint64_t a1, int *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *std::__tree<IDMgr::Range>::__find_equal<IDMgr::Range>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<IDMgr::Range>::__find_equal<IDMgr::Range>(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    if (*a3 <= a3[1])
    {
      v7 = a3[1];
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v9 <= v7)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_16;
        }
      }

      if (v9 >= v6 || *(v8 + 8) >= v6)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_16:
  *a2 = v8;
  return result;
}

uint64_t *std::__tree<IDMgr::Range>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__tree<IDMgr::Range>::find<IDMgr::Range>(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 28) < v5;
    v8 = *(v3 + 32) < v5;
    v9 = !v7 || !v8;
    if (v7 && v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v3;
    }

    v3 = *(v3 + v10);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v11 = *(v6 + 28);
  if (v5 < v11 && a2[1] < v11)
  {
    return v2;
  }

  return v6;
}

uint64_t **std::__tree<IDMgr::Range>::__remove_node_pointer(uint64_t **result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v30 = *v3 == v4;
      v4 = v3;
    }

    while (!v30);
  }

  if (*result == a2)
  {
    *result = v3;
  }

  v5 = result[1];
  result[2] = (result[2] - 1);
  v6 = *a2;
  v7 = a2;
  if (*a2)
  {
    v8 = a2[1];
    if (!v8)
    {
      v7 = a2;
      goto LABEL_15;
    }

    do
    {
      v7 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  v6 = v7[1];
  if (v6)
  {
LABEL_15:
    v10 = 0;
    v9 = v7[2];
    *(v6 + 16) = v9;
    goto LABEL_16;
  }

  v9 = v7[2];
  v10 = 1;
LABEL_16:
  v11 = *v9;
  if (*v9 == v7)
  {
    *v9 = v6;
    if (v7 == v5)
    {
      v11 = 0;
      v5 = v6;
    }

    else
    {
      v11 = v9[1];
    }
  }

  else
  {
    v9[1] = v6;
  }

  v12 = *(v7 + 24);
  if (v7 != a2)
  {
    v13 = a2[2];
    v7[2] = v13;
    v13[*v13 != a2] = v7;
    v15 = *a2;
    v14 = a2[1];
    *(v15 + 16) = v7;
    *v7 = v15;
    v7[1] = v14;
    if (v14)
    {
      *(v14 + 16) = v7;
    }

    *(v7 + 24) = *(a2 + 24);
    if (v5 == a2)
    {
      v5 = v7;
    }
  }

  if (!v5 || !v12)
  {
    return result;
  }

  if (!v10)
  {
    *(v6 + 24) = 1;
    return result;
  }

  while (1)
  {
    v16 = v11[2];
    v17 = *v16;
    v18 = *(v11 + 24);
    if (*v16 == v11)
    {
      break;
    }

    if ((v11[3] & 1) == 0)
    {
      *(v11 + 24) = 1;
      *(v16 + 24) = 0;
      v19 = v16[1];
      v20 = *v19;
      v16[1] = *v19;
      if (v20)
      {
        *(v20 + 16) = v16;
      }

      v21 = v16[2];
      v19[2] = v21;
      v21[*v21 != v16] = v19;
      *v19 = v16;
      v16[2] = v19;
      if (v5 == *v11)
      {
        v5 = v11;
      }

      v11 = *(*v11 + 8);
    }

    v22 = *v11;
    if (*v11 && *(v22 + 24) != 1)
    {
      v23 = v11[1];
      if (v23 && (v23[3] & 1) == 0)
      {
LABEL_66:
        v22 = v11;
      }

      else
      {
        *(v22 + 24) = 1;
        *(v11 + 24) = 0;
        v31 = v22[1];
        *v11 = v31;
        if (v31)
        {
          *(v31 + 16) = v11;
        }

        v32 = v11[2];
        v22[2] = v32;
        v32[*v32 != v11] = v22;
        v22[1] = v11;
        v11[2] = v22;
        v23 = v11;
      }

      v33 = v22[2];
      *(v22 + 24) = *(v33 + 24);
      *(v33 + 24) = 1;
      *(v23 + 24) = 1;
      v34 = *(v33 + 8);
      v35 = *v34;
      *(v33 + 8) = *v34;
      if (v35)
      {
        *(v35 + 16) = v33;
      }

      v36 = *(v33 + 16);
      v34[2] = v36;
      v36[*v36 != v33] = v34;
      *v34 = v33;
      goto LABEL_79;
    }

    v23 = v11[1];
    if (v23 && *(v23 + 24) != 1)
    {
      goto LABEL_66;
    }

    *(v11 + 24) = 0;
    v24 = v11[2];
    if (v24 == v5 || (v24[3] & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_57:
    v11 = *(v24[2] + 8 * (*v24[2] == v24));
  }

  if ((v11[3] & 1) == 0)
  {
    *(v11 + 24) = 1;
    *(v16 + 24) = 0;
    v25 = v17[1];
    *v16 = v25;
    if (v25)
    {
      *(v25 + 16) = v16;
    }

    v26 = v16[2];
    v17[2] = v26;
    v26[*v26 != v16] = v17;
    v17[1] = v16;
    v16[2] = v17;
    v27 = v11[1];
    if (v5 == v27)
    {
      v5 = v11;
    }

    v11 = *v27;
  }

  v28 = *v11;
  if (*v11 && *(v28 + 24) != 1)
  {
    goto LABEL_75;
  }

  v29 = v11[1];
  if (!v29 || *(v29 + 24) == 1)
  {
    *(v11 + 24) = 0;
    v24 = v11[2];
    v30 = *(v24 + 24) != 1 || v24 == v5;
    if (v30)
    {
LABEL_60:
      *(v24 + 24) = 1;
      return result;
    }

    goto LABEL_57;
  }

  if (v28 && (v28[3] & 1) == 0)
  {
LABEL_75:
    v29 = v11;
    goto LABEL_76;
  }

  *(v29 + 24) = 1;
  *(v11 + 24) = 0;
  v37 = *v29;
  v11[1] = *v29;
  if (v37)
  {
    *(v37 + 16) = v11;
  }

  v38 = v11[2];
  v29[2] = v38;
  v38[*v38 != v11] = v29;
  *v29 = v11;
  v11[2] = v29;
  v28 = v11;
LABEL_76:
  v33 = v29[2];
  *(v29 + 24) = *(v33 + 24);
  *(v33 + 24) = 1;
  *(v28 + 24) = 1;
  v34 = *v33;
  v39 = *(*v33 + 8);
  *v33 = v39;
  if (v39)
  {
    *(v39 + 16) = v33;
  }

  v40 = *(v33 + 16);
  v34[2] = v40;
  v40[*v40 != v33] = v34;
  v34[1] = v33;
LABEL_79:
  *(v33 + 16) = v34;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ARIMSGDEF const*>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ARIMSGDEF const*>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned char const*&,unsigned char const*,std::allocator<std::vector<unsigned char>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D44158;
  v4 = *a2;
  v5 = *a3;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a1 + 3), v4, v5, v5 - v4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D44158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2962275B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIAlignmentCheckReq_SDK::ARI_IBIAlignmentCheckReq_SDK(AriSdk::ARI_IBIAlignmentCheckReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467973632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467973632, 0);
}

void AriSdk::ARI_IBIAlignmentCheckReq_SDK::ARI_IBIAlignmentCheckReq_SDK(AriSdk::ARI_IBIAlignmentCheckReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIAlignmentCheckReq_SDK::~ARI_IBIAlignmentCheckReq_SDK(AriSdk::ARI_IBIAlignmentCheckReq_SDK *this)
{
  *this = &unk_2A1D444D8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIAlignmentCheckReq_SDK::~ARI_IBIAlignmentCheckReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIAlignmentCheckReq_SDK::pack(AriSdk::ARI_IBIAlignmentCheckReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x28uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIAlignmentCheckRspCb_SDK::ARI_IBIAlignmentCheckRspCb_SDK(AriSdk::ARI_IBIAlignmentCheckRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459585024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459585024, 0);
}

void AriSdk::ARI_IBIAlignmentCheckRspCb_SDK::ARI_IBIAlignmentCheckRspCb_SDK(AriSdk::ARI_IBIAlignmentCheckRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIAlignmentCheckRspCb_SDK::~ARI_IBIAlignmentCheckRspCb_SDK(AriSdk::ARI_IBIAlignmentCheckRspCb_SDK *this)
{
  *this = &unk_2A1D44510;
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
  AriSdk::ARI_IBIAlignmentCheckRspCb_SDK::~ARI_IBIAlignmentCheckRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIAlignmentCheckRspCb_SDK::pack(AriSdk::ARI_IBIAlignmentCheckRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK::ARI_IBIDeprecatedMsgInheritedReq1_SDK(AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467809792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467809792, 0);
}

void AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK::ARI_IBIDeprecatedMsgInheritedReq1_SDK(AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK::~ARI_IBIDeprecatedMsgInheritedReq1_SDK(AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK *this)
{
  *this = &unk_2A1D44548;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK::~ARI_IBIDeprecatedMsgInheritedReq1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK::pack(AriSdk::ARI_IBIDeprecatedMsgInheritedReq1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK::ARI_IBIDeprecatedMsgInheritedRsp1_SDK(AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459421184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459421184, 0);
}

void AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK::ARI_IBIDeprecatedMsgInheritedRsp1_SDK(AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK::~ARI_IBIDeprecatedMsgInheritedRsp1_SDK(AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK *this)
{
  *this = &unk_2A1D44580;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK::~ARI_IBIDeprecatedMsgInheritedRsp1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK::pack(AriSdk::ARI_IBIDeprecatedMsgInheritedRsp1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedMsgInd1_SDK::ARI_IBIDeprecatedMsgInd1_SDK(AriSdk::ARI_IBIDeprecatedMsgInd1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1450835968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1450835968, 0);
}

void AriSdk::ARI_IBIDeprecatedMsgInd1_SDK::ARI_IBIDeprecatedMsgInd1_SDK(AriSdk::ARI_IBIDeprecatedMsgInd1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedMsgInd1_SDK::~ARI_IBIDeprecatedMsgInd1_SDK(AriSdk::ARI_IBIDeprecatedMsgInd1_SDK *this)
{
  *this = &unk_2A1D445B8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedMsgInd1_SDK::~ARI_IBIDeprecatedMsgInd1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedMsgInd1_SDK::pack(AriSdk::ARI_IBIDeprecatedMsgInd1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK::ARI_IBIDeprecatedInheritedReq1_SDK(AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467908096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467908096, 0);
}

void AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK::ARI_IBIDeprecatedInheritedReq1_SDK(AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK::~ARI_IBIDeprecatedInheritedReq1_SDK(AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK *this)
{
  *this = &unk_2A1D445F0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK::~ARI_IBIDeprecatedInheritedReq1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK::pack(AriSdk::ARI_IBIDeprecatedInheritedReq1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK::ARI_IBIDeprecatedInheritedRsp1_SDK(AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459519488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459519488, 0);
}

void AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK::ARI_IBIDeprecatedInheritedRsp1_SDK(AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK::~ARI_IBIDeprecatedInheritedRsp1_SDK(AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK *this)
{
  *this = &unk_2A1D44628;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK::~ARI_IBIDeprecatedInheritedRsp1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK::pack(AriSdk::ARI_IBIDeprecatedInheritedRsp1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedMsgReq1_SDK::ARI_IBIDeprecatedMsgReq1_SDK(AriSdk::ARI_IBIDeprecatedMsgReq1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467777024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467777024, 0);
}

void AriSdk::ARI_IBIDeprecatedMsgReq1_SDK::ARI_IBIDeprecatedMsgReq1_SDK(AriSdk::ARI_IBIDeprecatedMsgReq1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedMsgReq1_SDK::~ARI_IBIDeprecatedMsgReq1_SDK(AriSdk::ARI_IBIDeprecatedMsgReq1_SDK *this)
{
  *this = &unk_2A1D44660;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedMsgReq1_SDK::~ARI_IBIDeprecatedMsgReq1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedMsgReq1_SDK::pack(AriSdk::ARI_IBIDeprecatedMsgReq1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK::ARI_IBIDeprecatedMsgRsp1_SDK(AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459388416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459388416, 0);
}

void AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK::ARI_IBIDeprecatedMsgRsp1_SDK(AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK::~ARI_IBIDeprecatedMsgRsp1_SDK(AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK *this)
{
  *this = &unk_2A1D44698;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK::~ARI_IBIDeprecatedMsgRsp1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK::pack(AriSdk::ARI_IBIDeprecatedMsgRsp1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK::ARI_IBINonDeprecatedMsgReq1_SDK(AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467744256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467744256, 0);
}

void AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK::ARI_IBINonDeprecatedMsgReq1_SDK(AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK::~ARI_IBINonDeprecatedMsgReq1_SDK(AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK *this)
{
  *this = &unk_2A1D446D0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK::~ARI_IBINonDeprecatedMsgReq1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK::pack(AriSdk::ARI_IBINonDeprecatedMsgReq1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK::ARI_IBINonDeprecatedMsgRsp1_SDK(AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459355648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459355648, 0);
}

void AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK::ARI_IBINonDeprecatedMsgRsp1_SDK(AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK::~ARI_IBINonDeprecatedMsgRsp1_SDK(AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK *this)
{
  *this = &unk_2A1D44708;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK::~ARI_IBINonDeprecatedMsgRsp1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK::pack(AriSdk::ARI_IBINonDeprecatedMsgRsp1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedReq1_SDK::ARI_IBIDeprecatedReq1_SDK(AriSdk::ARI_IBIDeprecatedReq1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467875328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467875328, 0);
}

void AriSdk::ARI_IBIDeprecatedReq1_SDK::ARI_IBIDeprecatedReq1_SDK(AriSdk::ARI_IBIDeprecatedReq1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedReq1_SDK::~ARI_IBIDeprecatedReq1_SDK(AriSdk::ARI_IBIDeprecatedReq1_SDK *this)
{
  *this = &unk_2A1D44740;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedReq1_SDK::~ARI_IBIDeprecatedReq1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedReq1_SDK::pack(AriSdk::ARI_IBIDeprecatedReq1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIDeprecatedRsp1_SDK::ARI_IBIDeprecatedRsp1_SDK(AriSdk::ARI_IBIDeprecatedRsp1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459486720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459486720, 0);
}

void AriSdk::ARI_IBIDeprecatedRsp1_SDK::ARI_IBIDeprecatedRsp1_SDK(AriSdk::ARI_IBIDeprecatedRsp1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIDeprecatedRsp1_SDK::~ARI_IBIDeprecatedRsp1_SDK(AriSdk::ARI_IBIDeprecatedRsp1_SDK *this)
{
  *this = &unk_2A1D44778;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBIDeprecatedRsp1_SDK::~ARI_IBIDeprecatedRsp1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIDeprecatedRsp1_SDK::pack(AriSdk::ARI_IBIDeprecatedRsp1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINonDeprecatedReq1_SDK::ARI_IBINonDeprecatedReq1_SDK(AriSdk::ARI_IBINonDeprecatedReq1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467842560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467842560, 0);
}

void AriSdk::ARI_IBINonDeprecatedReq1_SDK::ARI_IBINonDeprecatedReq1_SDK(AriSdk::ARI_IBINonDeprecatedReq1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINonDeprecatedReq1_SDK::~ARI_IBINonDeprecatedReq1_SDK(AriSdk::ARI_IBINonDeprecatedReq1_SDK *this)
{
  *this = &unk_2A1D447B0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBINonDeprecatedReq1_SDK::~ARI_IBINonDeprecatedReq1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINonDeprecatedReq1_SDK::pack(AriSdk::ARI_IBINonDeprecatedReq1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINonDeprecatedRsp1_SDK::ARI_IBINonDeprecatedRsp1_SDK(AriSdk::ARI_IBINonDeprecatedRsp1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1459453952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1459453952, 0);
}

void AriSdk::ARI_IBINonDeprecatedRsp1_SDK::ARI_IBINonDeprecatedRsp1_SDK(AriSdk::ARI_IBINonDeprecatedRsp1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINonDeprecatedRsp1_SDK::~ARI_IBINonDeprecatedRsp1_SDK(AriSdk::ARI_IBINonDeprecatedRsp1_SDK *this)
{
  *this = &unk_2A1D447E8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4045BD7913);
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
  AriSdk::ARI_IBINonDeprecatedRsp1_SDK::~ARI_IBINonDeprecatedRsp1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINonDeprecatedRsp1_SDK::pack(AriSdk::ARI_IBINonDeprecatedRsp1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1451196416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1451196416, 0);
}

void AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK::~ARI_IBIPeriodicCounterForcedWakeIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK *this)
{
  *this = &unk_2A1D44820;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK::~ARI_IBIPeriodicCounterForcedWakeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicCounterForcedWakeIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK::ARI_IBIPeriodicCounterWakeableIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1451163648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1451163648, 0);
}

void AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK::ARI_IBIPeriodicCounterWakeableIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK::~ARI_IBIPeriodicCounterWakeableIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK *this)
{
  *this = &unk_2A1D44858;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK::~ARI_IBIPeriodicCounterWakeableIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicCounterWakeableIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1451130880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1451130880, 0);
}

void AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK::~ARI_IBIPeriodicCounterNonWakeableIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK *this)
{
  *this = &unk_2A1D44890;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK::~ARI_IBIPeriodicCounterNonWakeableIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicCounterNonWakeableIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK::ARI_IBIPeriodicCounterBufferAllIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1451098112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1451098112, 0);
}

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK::ARI_IBIPeriodicCounterBufferAllIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK::~ARI_IBIPeriodicCounterBufferAllIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK *this)
{
  *this = &unk_2A1D448C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK::~ARI_IBIPeriodicCounterBufferAllIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK::ARI_IBIPeriodicCounterBufferLastIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1451065344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1451065344, 0);
}

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK::ARI_IBIPeriodicCounterBufferLastIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK::~ARI_IBIPeriodicCounterBufferLastIndCb_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK *this)
{
  *this = &unk_2A1D44900;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK::~ARI_IBIPeriodicCounterBufferLastIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1451032576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1451032576, 0);
}

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK::~ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK *this)
{
  *this = &unk_2A1D44938;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK::~ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK::pack(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1450999808, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1450999808, 0);
}

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK::~ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK *this)
{
  *this = &unk_2A1D44970;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK::~ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK::pack(AriSdk::ARI_IBIPeriodicCounterBufferAllIndCb_v3_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1450967040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1450967040, 0);
}

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK::~ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK *this)
{
  *this = &unk_2A1D449A8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK::~ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK::pack(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1450934272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1450934272, 0);
}

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK::~ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK *this)
{
  *this = &unk_2A1D449E0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK::~ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK::pack(AriSdk::ARI_IBIPeriodicCounterBufferLastIndCb_v3_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK::ARI_IBIPeriodicFloatSingleIndCb_SDK(AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1450901504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1450901504, 0);
}

void AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK::ARI_IBIPeriodicFloatSingleIndCb_SDK(AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK::~ARI_IBIPeriodicFloatSingleIndCb_SDK(AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK *this)
{
  *this = &unk_2A1D44A18;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK::~ARI_IBIPeriodicFloatSingleIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicFloatSingleIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK::ARI_IBIPeriodicFloatDoubleIndCb_SDK(AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1450868736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1450868736, 0);
}

void AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK::ARI_IBIPeriodicFloatDoubleIndCb_SDK(AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK::~ARI_IBIPeriodicFloatDoubleIndCb_SDK(AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK *this)
{
  *this = &unk_2A1D44A50;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK::~ARI_IBIPeriodicFloatDoubleIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK::pack(AriSdk::ARI_IBIPeriodicFloatDoubleIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPlaygroundInit_SDK::ARI_IBIPlaygroundInit_SDK(AriSdk::ARI_IBIPlaygroundInit_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1467940864, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, -1467940864, 1);
}

void AriSdk::ARI_IBIPlaygroundInit_SDK::ARI_IBIPlaygroundInit_SDK(AriSdk::ARI_IBIPlaygroundInit_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPlaygroundInit_SDK::~ARI_IBIPlaygroundInit_SDK(AriSdk::ARI_IBIPlaygroundInit_SDK *this)
{
  *this = &unk_2A1D44A88;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPlaygroundInit_SDK::~ARI_IBIPlaygroundInit_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPlaygroundInit_SDK::pack(AriSdk::ARI_IBIPlaygroundInit_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK::ARI_IBISimPbCacheLoadIndCb_SDK(AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 964755456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 964755456, 0);
}

void AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK::ARI_IBISimPbCacheLoadIndCb_SDK(AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK::~ARI_IBISimPbCacheLoadIndCb_SDK(AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK *this)
{
  *this = &unk_2A1D45168;
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
  AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK::~ARI_IBISimPbCacheLoadIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK::pack(AriSdk::ARI_IBISimPbCacheLoadIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK::ARI_IBISimPbGetMetaInfoReq_SDK(AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948240384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948240384, 0);
}

void AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK::ARI_IBISimPbGetMetaInfoReq_SDK(AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK::~ARI_IBISimPbGetMetaInfoReq_SDK(AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK *this)
{
  *this = &unk_2A1D451A0;
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
  AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK::~ARI_IBISimPbGetMetaInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK::pack(AriSdk::ARI_IBISimPbGetMetaInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK::ARI_IBISimPbGetMetaInfoRspCb_SDK(AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956628992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956628992, 0);
}

void AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK::ARI_IBISimPbGetMetaInfoRspCb_SDK(AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK::~ARI_IBISimPbGetMetaInfoRspCb_SDK(AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK *this)
{
  *this = &unk_2A1D451D8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK::~ARI_IBISimPbGetMetaInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK::pack(AriSdk::ARI_IBISimPbGetMetaInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK::ARI_IBISimPbGetMetaInfoIndCb_SDK(AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 964984832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 964984832, 0);
}

void AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK::ARI_IBISimPbGetMetaInfoIndCb_SDK(AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK::~ARI_IBISimPbGetMetaInfoIndCb_SDK(AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK *this)
{
  *this = &unk_2A1D45210;
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
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK::~ARI_IBISimPbGetMetaInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK::pack(AriSdk::ARI_IBISimPbGetMetaInfoIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
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

void AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 964886528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 964886528, 0);
}

void AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK::~ARI_IBISimPbGetMetaInformationIndCb_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK *this)
{
  *this = &unk_2A1D45248;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4073C3B260);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4073C3B260);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40E0CEA734);
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
  AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK::~ARI_IBISimPbGetMetaInformationIndCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK::pack(AriSdk::ARI_IBISimPbGetMetaInformationIndCb_V1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x78uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x3F0uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x3F0uLL, 0), !result))
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

void AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK::ARI_IBISimPbGetMetaInformationReq_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948142080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948142080, 0);
}

void AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK::ARI_IBISimPbGetMetaInformationReq_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK::~ARI_IBISimPbGetMetaInformationReq_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK *this)
{
  *this = &unk_2A1D45280;
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
  AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK::~ARI_IBISimPbGetMetaInformationReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK::pack(AriSdk::ARI_IBISimPbGetMetaInformationReq_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956530688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956530688, 0);
}

void AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK::~ARI_IBISimPbGetMetaInformationRspCb_V1_SDK(AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK *this)
{
  *this = &unk_2A1D452B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK::~ARI_IBISimPbGetMetaInformationRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK::pack(AriSdk::ARI_IBISimPbGetMetaInformationRspCb_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK::ARI_IBISimPbLocationIndCb_V1_SDK(AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 964919296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 964919296, 0);
}

void AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK::ARI_IBISimPbLocationIndCb_V1_SDK(AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK::~ARI_IBISimPbLocationIndCb_V1_SDK(AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK *this)
{
  *this = &unk_2A1D452F0;
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
  AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK::~ARI_IBISimPbLocationIndCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK::pack(AriSdk::ARI_IBISimPbLocationIndCb_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbLocationReq_V1_SDK::ARI_IBISimPbLocationReq_V1_SDK(AriSdk::ARI_IBISimPbLocationReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948174848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948174848, 0);
}

void AriSdk::ARI_IBISimPbLocationReq_V1_SDK::ARI_IBISimPbLocationReq_V1_SDK(AriSdk::ARI_IBISimPbLocationReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbLocationReq_V1_SDK::~ARI_IBISimPbLocationReq_V1_SDK(AriSdk::ARI_IBISimPbLocationReq_V1_SDK *this)
{
  *this = &unk_2A1D45328;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimPbLocationReq_V1_SDK::~ARI_IBISimPbLocationReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbLocationReq_V1_SDK::pack(AriSdk::ARI_IBISimPbLocationReq_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK::ARI_IBISimPbGetLocationRspCb_V1_SDK(AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956563456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956563456, 0);
}

void AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK::ARI_IBISimPbGetLocationRspCb_V1_SDK(AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK::~ARI_IBISimPbGetLocationRspCb_V1_SDK(AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK *this)
{
  *this = &unk_2A1D45360;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK::~ARI_IBISimPbGetLocationRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK::pack(AriSdk::ARI_IBISimPbGetLocationRspCb_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbReadEntryReq_SDK::ARI_IBISimPbReadEntryReq_SDK(AriSdk::ARI_IBISimPbReadEntryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 947978240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 947978240, 0);
}

void AriSdk::ARI_IBISimPbReadEntryReq_SDK::ARI_IBISimPbReadEntryReq_SDK(AriSdk::ARI_IBISimPbReadEntryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbReadEntryReq_SDK::~ARI_IBISimPbReadEntryReq_SDK(AriSdk::ARI_IBISimPbReadEntryReq_SDK *this)
{
  *this = &unk_2A1D45398;
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
  AriSdk::ARI_IBISimPbReadEntryReq_SDK::~ARI_IBISimPbReadEntryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbReadEntryReq_SDK::pack(AriSdk::ARI_IBISimPbReadEntryReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbReadEntryRspCb_SDK::ARI_IBISimPbReadEntryRspCb_SDK(AriSdk::ARI_IBISimPbReadEntryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956366848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956366848, 0);
}

void AriSdk::ARI_IBISimPbReadEntryRspCb_SDK::ARI_IBISimPbReadEntryRspCb_SDK(AriSdk::ARI_IBISimPbReadEntryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbReadEntryRspCb_SDK::~ARI_IBISimPbReadEntryRspCb_SDK(AriSdk::ARI_IBISimPbReadEntryRspCb_SDK *this)
{
  *this = &unk_2A1D453D0;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40627F77AELL);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBISimPbReadEntryRspCb_SDK::~ARI_IBISimPbReadEntryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbReadEntryRspCb_SDK::pack(AriSdk::ARI_IBISimPbReadEntryRspCb_SDK *this, AriMsg **a2)
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
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x12CuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 2uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 2uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (v14 = *(this + 17), v13 == v14) || (result = AriMsg::pack(*(this + 6), 10, v13, v14 - v13, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 2uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 1uLL, 0), !result))
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

void AriSdk::ARI_IBISimPbReadRecReq_SDK::ARI_IBISimPbReadRecReq_SDK(AriSdk::ARI_IBISimPbReadRecReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948273152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948273152, 0);
}

void AriSdk::ARI_IBISimPbReadRecReq_SDK::ARI_IBISimPbReadRecReq_SDK(AriSdk::ARI_IBISimPbReadRecReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbReadRecReq_SDK::~ARI_IBISimPbReadRecReq_SDK(AriSdk::ARI_IBISimPbReadRecReq_SDK *this)
{
  *this = &unk_2A1D45408;
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
  AriSdk::ARI_IBISimPbReadRecReq_SDK::~ARI_IBISimPbReadRecReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbReadRecReq_SDK::pack(AriSdk::ARI_IBISimPbReadRecReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbReadRecRspCb_SDK::ARI_IBISimPbReadRecRspCb_SDK(AriSdk::ARI_IBISimPbReadRecRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956661760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956661760, 0);
}

void AriSdk::ARI_IBISimPbReadRecRspCb_SDK::ARI_IBISimPbReadRecRspCb_SDK(AriSdk::ARI_IBISimPbReadRecRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbReadRecRspCb_SDK::~ARI_IBISimPbReadRecRspCb_SDK(AriSdk::ARI_IBISimPbReadRecRspCb_SDK *this)
{
  *this = &unk_2A1D45440;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4013417087);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4050308C2ALL);
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
  AriSdk::ARI_IBISimPbReadRecRspCb_SDK::~ARI_IBISimPbReadRecRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbReadRecRspCb_SDK::pack(AriSdk::ARI_IBISimPbReadRecRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x16uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF3uLL, 0), !result))
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

void AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK::ARI_IBISimPbUsimPbReadyIndCb_SDK(AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 964722688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 964722688, 0);
}

void AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK::ARI_IBISimPbUsimPbReadyIndCb_SDK(AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK::~ARI_IBISimPbUsimPbReadyIndCb_SDK(AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK *this)
{
  *this = &unk_2A1D45478;
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
  AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK::~ARI_IBISimPbUsimPbReadyIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK::pack(AriSdk::ARI_IBISimPbUsimPbReadyIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 964952064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 964952064, 0);
}

void AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK::~ARI_IBISimPbUsimPbSelectIndCb_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK *this)
{
  *this = &unk_2A1D454B0;
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
  AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK::~ARI_IBISimPbUsimPbSelectIndCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK::pack(AriSdk::ARI_IBISimPbUsimPbSelectIndCb_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK::ARI_IBISimPbUsimPbSelectReq_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948207616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948207616, 0);
}

void AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK::ARI_IBISimPbUsimPbSelectReq_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK::~ARI_IBISimPbUsimPbSelectReq_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK *this)
{
  *this = &unk_2A1D454E8;
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
  AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK::~ARI_IBISimPbUsimPbSelectReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK::pack(AriSdk::ARI_IBISimPbUsimPbSelectReq_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956596224, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956596224, 0);
}

void AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK::~ARI_IBISimPbUsimPbSelectRspCb_V1_SDK(AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK *this)
{
  *this = &unk_2A1D45520;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK::~ARI_IBISimPbUsimPbSelectRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK::pack(AriSdk::ARI_IBISimPbUsimPbSelectRspCb_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbWriteEntryReq_SDK::ARI_IBISimPbWriteEntryReq_SDK(AriSdk::ARI_IBISimPbWriteEntryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948076544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948076544, 0);
}

void AriSdk::ARI_IBISimPbWriteEntryReq_SDK::ARI_IBISimPbWriteEntryReq_SDK(AriSdk::ARI_IBISimPbWriteEntryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbWriteEntryReq_SDK::~ARI_IBISimPbWriteEntryReq_SDK(AriSdk::ARI_IBISimPbWriteEntryReq_SDK *this)
{
  *this = &unk_2A1D45558;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40345711B0);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40627F77AELL);
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
  AriSdk::ARI_IBISimPbWriteEntryReq_SDK::~ARI_IBISimPbWriteEntryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbWriteEntryReq_SDK::pack(AriSdk::ARI_IBISimPbWriteEntryReq_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x12CuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x1E6uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 2uLL, 0), !result))
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

void AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK::ARI_IBISimPbWriteEntryRspCb_SDK(AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956465152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956465152, 0);
}

void AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK::ARI_IBISimPbWriteEntryRspCb_SDK(AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK::~ARI_IBISimPbWriteEntryRspCb_SDK(AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK *this)
{
  *this = &unk_2A1D45590;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK::~ARI_IBISimPbWriteEntryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK::pack(AriSdk::ARI_IBISimPbWriteEntryRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimPbWriteRecReq_SDK::ARI_IBISimPbWriteRecReq_SDK(AriSdk::ARI_IBISimPbWriteRecReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 948305920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 948305920, 0);
}

void AriSdk::ARI_IBISimPbWriteRecReq_SDK::ARI_IBISimPbWriteRecReq_SDK(AriSdk::ARI_IBISimPbWriteRecReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbWriteRecReq_SDK::~ARI_IBISimPbWriteRecReq_SDK(AriSdk::ARI_IBISimPbWriteRecReq_SDK *this)
{
  *this = &unk_2A1D455C8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4013417087);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4050308C2ALL);
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
  AriSdk::ARI_IBISimPbWriteRecReq_SDK::~ARI_IBISimPbWriteRecReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbWriteRecReq_SDK::pack(AriSdk::ARI_IBISimPbWriteRecReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x16uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF3uLL, 0), !result))
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

void AriSdk::ARI_IBISimPbWriteRecRspCb_SDK::ARI_IBISimPbWriteRecRspCb_SDK(AriSdk::ARI_IBISimPbWriteRecRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 956694528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 956694528, 0);
}

void AriSdk::ARI_IBISimPbWriteRecRspCb_SDK::ARI_IBISimPbWriteRecRspCb_SDK(AriSdk::ARI_IBISimPbWriteRecRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimPbWriteRecRspCb_SDK::~ARI_IBISimPbWriteRecRspCb_SDK(AriSdk::ARI_IBISimPbWriteRecRspCb_SDK *this)
{
  *this = &unk_2A1D45600;
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
  AriSdk::ARI_IBISimPbWriteRecRspCb_SDK::~ARI_IBISimPbWriteRecRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimPbWriteRecRspCb_SDK::pack(AriSdk::ARI_IBISimPbWriteRecRspCb_SDK *this, AriMsg **a2)
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

void sub_2962340DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  _Unwind_Resume(a1);
}

uint64_t AriDispatch::Semaphore::Semaphore(uint64_t a1, __int128 *a2, intptr_t value)
{
  v28 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = (a1 + 16);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = dispatch_semaphore_create(value);
  *(a1 + 40) = v7;
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(v7);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_dispatch.cpp", "Semaphore", v17);
      if (v18 >= 0)
      {
        v14 = v17;
      }

      else
      {
        v14 = v17[0];
      }

      v15 = *(a1 + 40);
      v16 = v5;
      if (*(a1 + 39) < 0)
      {
        v16 = *v5;
      }

      *__p = 136316162;
      *&__p[4] = "ari";
      v20 = 2080;
      v21 = v14;
      v22 = 1024;
      v23 = 33;
      v24 = 2048;
      v25 = v15;
      v26 = 2080;
      v27 = v16;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) allocated %p for owner %s", __p, 0x30u);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_dispatch.cpp", "Semaphore", __p);
    if (v22 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = *__p;
    }

    v11 = v5;
    if (*(a1 + 39) < 0)
    {
      v11 = *v5;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) allocated %p for owner %s", v9, v10, 33, *(a1 + 40), v11);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*__p);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296234314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void AriDispatch::Semaphore::~Semaphore(AriDispatch::Semaphore *this)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_dispatch.cpp", "~Semaphore", v11);
      if (v12 >= 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = v11[0];
      }

      v9 = *(this + 5);
      v10 = (this + 16);
      if (*(this + 39) < 0)
      {
        v10 = *v10;
      }

      *__p = 136316162;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v8;
      v16 = 1024;
      v17 = 38;
      v18 = 2048;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) releasing %p for owner %s", __p, 0x30u);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_dispatch.cpp", "~Semaphore", __p);
    if (v16 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    v5 = (this + 16);
    if (*(this + 39) < 0)
    {
      v5 = *v5;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) releasing %p for owner %s", v3, v4, 38, *(this + 5), v5);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  dispatch_release(*(this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_296234534(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

AriDispatch::Timer *AriDispatch::Timer::Timer(AriDispatch::Timer *this, dispatch_queue_t queue)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = queue;
  *(this + 3) = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, queue);
  *(this + 32) = 0;
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = queue;
  *(this + 3) = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, queue);
  *(this + 32) = 0;
  return this;
}

void AriDispatch::Timer::safeReleaseTimer(AriDispatch::Timer *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    if ((*(this + 32) & 1) == 0)
    {
      dispatch_source_cancel(v2);
      dispatch_activate(*(this + 3));
      v2 = *(this + 3);
    }

    dispatch_release(v2);
    *(this + 3) = 0;
  }
}

NSObject *AriDispatch::Timer::resetTimer(AriDispatch::Timer *this)
{
  result = *(this + 3);
  if (result)
  {
    result = dispatch_source_testcancel(result);
    if (result)
    {
      AriDispatch::Timer::safeReleaseTimer(this);
      result = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(this + 2));
      *(this + 3) = result;
      *(this + 32) = 0;
    }
  }

  return result;
}

void AriDispatch::Timer::~Timer(std::__shared_weak_count **this)
{
  AriDispatch::Timer::cancel(this);
  AriDispatch::Timer::safeReleaseTimer(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AriDispatch::Timer::cancel(AriDispatch::Timer *this)
{
  v1 = *(this + 3);
  if (v1 && !dispatch_source_testcancel(*(this + 3)))
  {

    dispatch_source_cancel(v1);
  }
}

void AriDispatch::Timer::setPeriodic(uint64_t a1, dispatch_time_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 24))
  {
    AriDispatch::Timer::resetTimer(a1);
    dispatch_source_set_timer(*(a1 + 24), a2, a3, 0xBEBC200uLL);
    dispatch_source_set_event_handler(*(a1 + 24), a4);
    dispatch_activate(*(a1 + 24));
    *(a1 + 32) = 1;
  }
}

void *AriDispatch::Once::Once(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void AriDispatch::Once::~Once(AriDispatch::Once *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AriDispatch::Once::runOnce(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v2 = (a1 + 16);
  if (v3 != -1)
  {
    dispatch_once(v2, a2);
  }
}

AriDispatch::Group *AriDispatch::Group::Group(AriDispatch::Group *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = dispatch_group_create();
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = dispatch_group_create();
  return this;
}

void AriDispatch::Group::~Group(AriDispatch::Group *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

BOOL AriDispatch::Group::wait(AriDispatch::Group *this, unsigned int a2)
{
  v2 = *(this + 2);
  v3 = dispatch_time(0, 1000000 * a2);
  return dispatch_group_wait(v2, v3) == 0;
}

void AriDispatch::Group::notify(int a1, AriDispatch::Timer *this)
{
  v2 = 0xAAAAAAAAAAAAAAAALL;
  v3 = 0xAAAAAAAAAAAAAAAALL;
  AriDispatch::Timer::Create(this, this);
}

void sub_296234E38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AriDispatch::Group::notify(int a1, AriDispatch::Timer *a2, unsigned int a3)
{
  dispatch_time(0, 1000000 * a3);

  AriDispatch::Group::notify(a1, a2);
}

void ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (a1[5])
      {
        v4 = a1[7];
        v9[0] = MEMORY[0x29EDCA5F8];
        v9[1] = 0x40000000;
        v9[2] = ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_2;
        v9[3] = &unk_29EE307F8;
        v5 = a1[9];
        v9[4] = a1[4];
        v9[5] = v5;
        v7 = *(v4 + 16);
        v6 = (v4 + 16);
        if (v7 != -1)
        {
          v8 = v3;
          dispatch_once(v6, v9);
          v3 = v8;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_2(AriOsa *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_dispatch.cpp", "notify_block_invoke_2", v9);
      v7 = v10 >= 0 ? v9 : v9[0];
      *__p = 136315650;
      *&__p[4] = "ari";
      v12 = 2080;
      v13 = v7;
      v14 = 1024;
      v15 = 234;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Timeout waiting on dispatch group!", __p, 0x1Cu);
      if (v10 < 0)
      {
        operator delete(v9[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_dispatch.cpp", "notify_block_invoke", __p);
    if (v14 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Timeout waiting on dispatch group!", v3, v4, 234);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*__p);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_2_7;
  block[3] = &unk_29EE307D0;
  v5 = *(a1 + 5);
  block[4] = *(a1 + 4);
  dispatch_async(v5, block);
  v6 = *MEMORY[0x29EDCA608];
}

void sub_296235150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN11AriDispatch5GroupEEE56c46_ZTSNSt3__110shared_ptrIN11AriDispatch4OnceEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN11AriDispatch5GroupEEE56c46_ZTSNSt3__110shared_ptrIN11AriDispatch4OnceEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_12(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[5])
      {
        v5 = a1[7];
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_2_13;
        v10[3] = &unk_2A1D45878;
        v6 = a1[10];
        v10[5] = a1[9];
        v11 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = a1[4];
        v12 = a1[11];
        v10[4] = v7;
        v9 = *(v5 + 16);
        v8 = (v5 + 16);
        if (v9 != -1)
        {
          dispatch_once(v8, v10);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_2_13(uint64_t a1)
{
  AriDispatch::Timer::cancel(*(a1 + 40));
  v2 = *(a1 + 56);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN11AriDispatch5Group6notifyEP16dispatch_queue_syU13block_pointerFvbE_block_invoke_3;
  block[3] = &unk_29EE30820;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN11AriDispatch5TimerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN11AriDispatch5TimerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *__copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN11AriDispatch5GroupEEE56c46_ZTSNSt3__110shared_ptrIN11AriDispatch4OnceEEE72c47_ZTSNSt3__110shared_ptrIN11AriDispatch5TimerEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN11AriDispatch5GroupEEE56c46_ZTSNSt3__110shared_ptrIN11AriDispatch4OnceEEE72c47_ZTSNSt3__110shared_ptrIN11AriDispatch5TimerEEE(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

AriDispatch::Queue *AriDispatch::Queue::Queue(AriDispatch::Queue *this, dispatch_object_t object)
{
  *this = object;
  if (object)
  {
    dispatch_retain(object);
  }

  return this;
}

{
  *this = object;
  if (object)
  {
    dispatch_retain(object);
  }

  return this;
}

void AriDispatch::Queue::~Queue(NSObject **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_release(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__shared_ptr_emplace<AriDispatch::Semaphore::Create(std::string,long)::SemaphoreNoPrivate,std::allocator<AriDispatch::Semaphore::Create(std::string,long)::SemaphoreNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D458F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriDispatch::Timer::Create(dispatch_queue_s *)::TimerNoPrivate,std::allocator<AriDispatch::Timer::Create(dispatch_queue_s *)::TimerNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D45940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriDispatch::Once::Create(void)::OnceNoPrivate,std::allocator<AriDispatch::Once::Create(void)::OnceNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D45990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriDispatch::Once::Create(void)::OnceNoPrivate,std::allocator<AriDispatch::Once::Create(void)::OnceNoPrivate>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<AriDispatch::Group::Create(void)::GroupNoPrivate,std::allocator<AriDispatch::Group::Create(void)::GroupNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D459E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriDispatch::Queue::Create(dispatch_queue_s *)::QueueNoPrivate,std::allocator<AriDispatch::Queue::Create(dispatch_queue_s *)::QueueNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D45A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<AriDispatch::Queue::Create(dispatch_queue_s *)::QueueNoPrivate,std::allocator<AriDispatch::Queue::Create(dispatch_queue_s *)::QueueNoPrivate>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1434451968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1434451968, 0);
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK::~ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK *this)
{
  *this = &unk_2A1D45A80;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408252E8FDLL);
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
  AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK::~ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK::pack(AriSdk::ARI_IBIMsSsLcsMtlrNotificationIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x148uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1417674752, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1417674752, 0);
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK::~ARI_IBIMsSsLcsMtlrNotificationRsp_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK *this)
{
  *this = &unk_2A1D45AB8;
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
  AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK::~ARI_IBIMsSsLcsMtlrNotificationRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK::pack(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRsp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1426063360, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1426063360, 0);
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK::~ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK *this)
{
  *this = &unk_2A1D45AF0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK::~ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK::pack(AriSdk::ARI_IBIMsSsLcsMtlrNotificationRspAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1434484736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1434484736, 0);
}

void AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK::~ARI_IBIMsSsLcsMtlrRejectIndCb_SDK(AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK *this)
{
  *this = &unk_2A1D45B28;
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
  AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK::~ARI_IBIMsSsLcsMtlrRejectIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK::pack(AriSdk::ARI_IBIMsSsLcsMtlrRejectIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1417707520, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1417707520, 0);
}

void AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK::~ARI_IBIMsSsLcsPositioningCapabilityReq_SDK(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK *this)
{
  *this = &unk_2A1D45B60;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C407D226C2BLL);
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
  AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK::~ARI_IBIMsSsLcsPositioningCapabilityReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK::pack(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x10uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1426096128, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1426096128, 0);
}

void AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK::~ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK *this)
{
  *this = &unk_2A1D45B98;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B68A9B53);
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
  AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK::~ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK::pack(AriSdk::ARI_IBIMsSsLcsPositioningCapabilityRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x14uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE48]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}