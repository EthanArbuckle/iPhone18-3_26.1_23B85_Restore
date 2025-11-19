void AriSdk::ARI_FactorySetNvItemsSettingReq_SDK::~ARI_FactorySetNvItemsSettingReq_SDK(AriSdk::ARI_FactorySetNvItemsSettingReq_SDK *this)
{
  *this = &unk_2A1D3D030;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_FactorySetNvItemsSettingReq_SDK::~ARI_FactorySetNvItemsSettingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_FactorySetNvItemsSettingReq_SDK::pack(AriSdk::ARI_FactorySetNvItemsSettingReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK::ARI_FactorySetNvItemsSettingRspCb_SDK(AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116686848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116686848, 0);
}

void AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK::ARI_FactorySetNvItemsSettingRspCb_SDK(AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK::~ARI_FactorySetNvItemsSettingRspCb_SDK(AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK *this)
{
  *this = &unk_2A1D3D068;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK::~ARI_FactorySetNvItemsSettingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK::pack(AriSdk::ARI_FactorySetNvItemsSettingRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSClientReportInd_SDK::ARI_IBIFilerHSClientReportInd_SDK(AriSdk::ARI_IBIFilerHSClientReportInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -108199936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -108199936, 0);
}

void AriSdk::ARI_IBIFilerHSClientReportInd_SDK::ARI_IBIFilerHSClientReportInd_SDK(AriSdk::ARI_IBIFilerHSClientReportInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSClientReportInd_SDK::~ARI_IBIFilerHSClientReportInd_SDK(AriSdk::ARI_IBIFilerHSClientReportInd_SDK *this)
{
  *this = &unk_2A1D3D0A0;
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
  AriSdk::ARI_IBIFilerHSClientReportInd_SDK::~ARI_IBIFilerHSClientReportInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSClientReportInd_SDK::pack(AriSdk::ARI_IBIFilerHSClientReportInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK::ARI_IBIFilerHSEndBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124682240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124682240, 0);
}

void AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK::ARI_IBIFilerHSEndBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK::~ARI_IBIFilerHSEndBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK *this)
{
  *this = &unk_2A1D3D0D8;
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
    MEMORY[0x29C257E70](v3, 0x1000C40A82D5742);
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
  AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK::~ARI_IBIFilerHSEndBBSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK::pack(AriSdk::ARI_IBIFilerHSEndBBSessionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xBBAuLL, 0), !result))
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

void AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::ARI_IBIFilerHSEndBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116293632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116293632, 0);
}

void AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::ARI_IBIFilerHSEndBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::~ARI_IBIFilerHSEndBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK *this)
{
  *this = &unk_2A1D3D110;
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
  AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::~ARI_IBIFilerHSEndBBSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK::ARI_IBIFilerHSGetClientReportReq_SDK(AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124616704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124616704, 0);
}

void AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK::ARI_IBIFilerHSGetClientReportReq_SDK(AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK::~ARI_IBIFilerHSGetClientReportReq_SDK(AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK *this)
{
  *this = &unk_2A1D3D148;
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
  AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK::~ARI_IBIFilerHSGetClientReportReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK::pack(AriSdk::ARI_IBIFilerHSGetClientReportReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK::ARI_IBIFilerHSGetClientReportRspCb_SDK(AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116228096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116228096, 0);
}

void AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK::ARI_IBIFilerHSGetClientReportRspCb_SDK(AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK::~ARI_IBIFilerHSGetClientReportRspCb_SDK(AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK *this)
{
  *this = &unk_2A1D3D180;
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
  AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK::~ARI_IBIFilerHSGetClientReportRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSGetClientReportRspCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIFilerHSReadBBReq_SDK::ARI_IBIFilerHSReadBBReq_SDK(AriSdk::ARI_IBIFilerHSReadBBReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124780544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124780544, 0);
}

void AriSdk::ARI_IBIFilerHSReadBBReq_SDK::ARI_IBIFilerHSReadBBReq_SDK(AriSdk::ARI_IBIFilerHSReadBBReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSReadBBReq_SDK::~ARI_IBIFilerHSReadBBReq_SDK(AriSdk::ARI_IBIFilerHSReadBBReq_SDK *this)
{
  *this = &unk_2A1D3D1B8;
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
  AriSdk::ARI_IBIFilerHSReadBBReq_SDK::~ARI_IBIFilerHSReadBBReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSReadBBReq_SDK::pack(AriSdk::ARI_IBIFilerHSReadBBReq_SDK *this, AriMsg **a2)
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
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 8uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::ARI_IBIFilerHSReadBBRspCb_SDK(AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116391936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116391936, 0);
}

void AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::ARI_IBIFilerHSReadBBRspCb_SDK(AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::~ARI_IBIFilerHSReadBBRspCb_SDK(AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK *this)
{
  *this = &unk_2A1D3D1F0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
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
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
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
  AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::~ARI_IBIFilerHSReadBBRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 8uLL, 0), !result))
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

void AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK::ARI_IBIFilerHSReadBBGetSizeReq_SDK(AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124813312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124813312, 0);
}

void AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK::ARI_IBIFilerHSReadBBGetSizeReq_SDK(AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK::~ARI_IBIFilerHSReadBBGetSizeReq_SDK(AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK *this)
{
  *this = &unk_2A1D3D228;
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
  AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK::~ARI_IBIFilerHSReadBBGetSizeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK::pack(AriSdk::ARI_IBIFilerHSReadBBGetSizeReq_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116424704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116424704, 0);
}

void AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::~ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK *this)
{
  *this = &unk_2A1D3D260;
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
  AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::~ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK::ARI_IBIFilerHSStartReadBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124846080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124846080, 0);
}

void AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK::ARI_IBIFilerHSStartReadBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK::~ARI_IBIFilerHSStartReadBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK *this)
{
  *this = &unk_2A1D3D298;
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
    MEMORY[0x29C257E70](v4, 0x1000C40A82D5742);
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
  AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK::~ARI_IBIFilerHSStartReadBBSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK::pack(AriSdk::ARI_IBIFilerHSStartReadBBSessionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xBBAuLL, 0), !result))
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

void AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116457472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116457472, 0);
}

void AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::~ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK *this)
{
  *this = &unk_2A1D3D2D0;
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
  AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::~ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK::ARI_IBIFilerHSStartWriteBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124747776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124747776, 0);
}

void AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK::ARI_IBIFilerHSStartWriteBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK::~ARI_IBIFilerHSStartWriteBBSessionReq_SDK(AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK *this)
{
  *this = &unk_2A1D3D308;
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
    MEMORY[0x29C257E70](v4, 0x1000C40A82D5742);
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
  AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK::~ARI_IBIFilerHSStartWriteBBSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK::pack(AriSdk::ARI_IBIFilerHSStartWriteBBSessionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xBBAuLL, 0), !result))
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

void AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116359168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116359168, 0);
}

void AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::~ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK *this)
{
  *this = &unk_2A1D3D340;
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
  AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::~ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIFilerHSWriteBBReq_SDK::ARI_IBIFilerHSWriteBBReq_SDK(AriSdk::ARI_IBIFilerHSWriteBBReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124715008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124715008, 0);
}

void AriSdk::ARI_IBIFilerHSWriteBBReq_SDK::ARI_IBIFilerHSWriteBBReq_SDK(AriSdk::ARI_IBIFilerHSWriteBBReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSWriteBBReq_SDK::~ARI_IBIFilerHSWriteBBReq_SDK(AriSdk::ARI_IBIFilerHSWriteBBReq_SDK *this)
{
  *this = &unk_2A1D3D378;
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
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
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
  AriSdk::ARI_IBIFilerHSWriteBBReq_SDK::~ARI_IBIFilerHSWriteBBReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSWriteBBReq_SDK::pack(AriSdk::ARI_IBIFilerHSWriteBBReq_SDK *this, AriMsg **a2)
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
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 8uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 8uLL, 0), !result))
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

void AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::ARI_IBIFilerHSWriteBBRspCb_SDK(AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116326400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116326400, 0);
}

void AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::ARI_IBIFilerHSWriteBBRspCb_SDK(AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::~ARI_IBIFilerHSWriteBBRspCb_SDK(AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK *this)
{
  *this = &unk_2A1D3D3B0;
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
  AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::~ARI_IBIFilerHSWriteBBRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::pack(AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINvmSnapshotReq_SDK::ARI_IBINvmSnapshotReq_SDK(AriSdk::ARI_IBINvmSnapshotReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124649472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124649472, 0);
}

void AriSdk::ARI_IBINvmSnapshotReq_SDK::ARI_IBINvmSnapshotReq_SDK(AriSdk::ARI_IBINvmSnapshotReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINvmSnapshotReq_SDK::~ARI_IBINvmSnapshotReq_SDK(AriSdk::ARI_IBINvmSnapshotReq_SDK *this)
{
  *this = &unk_2A1D3D3E8;
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
  AriSdk::ARI_IBINvmSnapshotReq_SDK::~ARI_IBINvmSnapshotReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINvmSnapshotReq_SDK::pack(AriSdk::ARI_IBINvmSnapshotReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINvmSnapshotRspCb_SDK::ARI_IBINvmSnapshotRspCb_SDK(AriSdk::ARI_IBINvmSnapshotRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116260864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116260864, 0);
}

void AriSdk::ARI_IBINvmSnapshotRspCb_SDK::ARI_IBINvmSnapshotRspCb_SDK(AriSdk::ARI_IBINvmSnapshotRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINvmSnapshotRspCb_SDK::~ARI_IBINvmSnapshotRspCb_SDK(AriSdk::ARI_IBINvmSnapshotRspCb_SDK *this)
{
  *this = &unk_2A1D3D420;
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
  AriSdk::ARI_IBINvmSnapshotRspCb_SDK::~ARI_IBINvmSnapshotRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINvmSnapshotRspCb_SDK::pack(AriSdk::ARI_IBINvmSnapshotRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_OdttRunReq_SDK::ARI_OdttRunReq_SDK(AriSdk::ARI_OdttRunReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124583936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124583936, 0);
}

void AriSdk::ARI_OdttRunReq_SDK::ARI_OdttRunReq_SDK(AriSdk::ARI_OdttRunReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_OdttRunReq_SDK::~ARI_OdttRunReq_SDK(AriSdk::ARI_OdttRunReq_SDK *this)
{
  *this = &unk_2A1D3D458;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_OdttRunReq_SDK::~ARI_OdttRunReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_OdttRunReq_SDK::pack(AriSdk::ARI_OdttRunReq_SDK *this, AriMsg **a2)
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
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_OdttRunReq_SDK::unpack(AriSdk::ARI_OdttRunReq_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

void sub_2961ED8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_OdttRunRspCb_SDK::ARI_OdttRunRspCb_SDK(AriSdk::ARI_OdttRunRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116195328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116195328, 0);
}

void AriSdk::ARI_OdttRunRspCb_SDK::ARI_OdttRunRspCb_SDK(AriSdk::ARI_OdttRunRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_OdttRunRspCb_SDK::~ARI_OdttRunRspCb_SDK(AriSdk::ARI_OdttRunRspCb_SDK *this)
{
  *this = &unk_2A1D3D490;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40AEDA1DADLL);
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
  AriSdk::ARI_OdttRunRspCb_SDK::~ARI_OdttRunRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_OdttRunRspCb_SDK::pack(AriSdk::ARI_OdttRunRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0xB78uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -124518400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -124518400, 0);
}

void AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::~ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK *this)
{
  *this = &unk_2A1D3D4C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::~ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::pack(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -116129792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -116129792, 0);
}

void AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::~ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK *this)
{
  *this = &unk_2A1D3D500;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::~ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::pack(AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK *this, AriMsg **a2)
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

uint64_t ARI_CsiBspGetCalibrationStatusRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -117374976)
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

uint64_t ARI_CsiBspGetCalibrationStatusReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8810000);
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

uint64_t ARI_CsiBspGetCalibrationStatusReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8810000);
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

uint64_t ARI_CsiBspNvmGroupEnumListRespCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -116621312)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0xDB0uLL);
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

uint64_t ARI_CsiBspNvmGroupEnumListReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF88C8000);
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

uint64_t ARI_CsiBspNvmGroupEnumListReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF88C8000);
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

uint64_t ARI_CsiBspNvmReadGroupRespCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -116588544)
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

uint64_t ARI_CsiBspNvmReadGroupReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF88D0000);
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

uint64_t ARI_CsiBspNvmReadGroupReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF88D0000);
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

uint64_t ARI_CsiBspNvmReadGroupBlockRespCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -116555776)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0xDB0uLL);
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

uint64_t ARI_CsiBspNvmReadGroupBlockReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF88D8000);
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

uint64_t ARI_CsiBspNvmReadGroupBlockReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF88D8000);
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

uint64_t ARI_CsiBspSetNvItemsToStateRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -117407744)
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

uint64_t ARI_CsiBspSetNvItemsToStateReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF8808000);
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

uint64_t ARI_CsiBspSetNvItemsToStateReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF8808000);
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

uint64_t ARI_CsiBspShutdownRspCb_Extract(unsigned __int8 *a1, uint64_t a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v2;
  *v8 = v2;
  v5 = v2;
  v6 = v2;
  AriMsg::AriMsg(&v5, a1, a2);
  v3 = HIDWORD(v9);
  if (!HIDWORD(v9))
  {
    if (((DWORD1(v5) << 15) | (v5 << 26)) == -117014528)
    {
      v3 = 0;
    }

    else
    {
      v3 = 4294967223;
    }
  }

  v8[0] = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  AriMsg::FreeTlvList(v8[1]);
  return v3;
}

uint64_t ARI_CsiBspShutdownReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF8868000);
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

uint64_t ARI_CsiBspShutdownReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF8868000);
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

uint64_t ARI_CsiBspSwTrapRspCb_Extract(unsigned __int8 *a1, uint64_t a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v2;
  *v8 = v2;
  v5 = v2;
  v6 = v2;
  AriMsg::AriMsg(&v5, a1, a2);
  v3 = HIDWORD(v9);
  if (!HIDWORD(v9))
  {
    if (((DWORD1(v5) << 15) | (v5 << 26)) == -116981760)
    {
      v3 = 0;
    }

    else
    {
      v3 = 4294967223;
    }
  }

  v8[0] = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  AriMsg::FreeTlvList(v8[1]);
  return v3;
}

uint64_t ARI_CsiBspSwTrapReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF8870000);
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

uint64_t ARI_CsiBspSwTrapReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF8870000);
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

uint64_t ARI_CsiCddGetDebugLogRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -116916224)
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

uint64_t ARI_CsiCddGetDebugLogReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8880000);
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

uint64_t ARI_CsiCddGetDebugLogReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8880000);
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

uint64_t ARI_CsiCddGetParamDumpRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -116883456)
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

uint64_t ARI_CsiCddGetParamDumpReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8888000);
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

uint64_t ARI_CsiCddGetParamDumpReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8888000);
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

uint64_t ARI_CsiFpGetStatusRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -117112832)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0x48uLL);
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

uint64_t ARI_CsiFpGetStatus_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8850000);
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

uint64_t ARI_CsiFpGetStatus_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8850000);
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

uint64_t ARI_CsiFpRegisterRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -117243904)
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

uint64_t ARI_CsiFpRegister_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF8830000);
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

uint64_t ARI_CsiFpRegister_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF8830000);
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

uint64_t ARI_CsiFpSnapshotRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -117211136)
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

uint64_t ARI_CsiFpSnapshot_ENC(int a1, int a2, int a3, int a4, uint64_t a5, void *a6, unsigned int *a7)
{
  v20 = a2;
  v21 = a1;
  v18 = a4;
  v19 = a3;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v9;
  *v16 = v9;
  v13 = v9;
  v14 = v9;
  AriMsg::AriMsg(&v13, 0xF8838000);
  v10 = AriMsg::packParam(&v13, 1, &v21, 4uLL);
  if (!v10)
  {
    v10 = AriMsg::packParam(&v13, 2, &v20, 4uLL);
    if (!v10)
    {
      v10 = AriMsg::packParam(&v13, 3, &v19, 4uLL);
      if (!v10)
      {
        v10 = AriMsg::packParam(&v13, 4, &v18, 4uLL);
        if (!v10)
        {
          if (a6)
          {
            EncodedBuf = AriMsg::getEncodedBuf(&v13, a7);
            *a6 = EncodedBuf;
            if (EncodedBuf)
            {
              v10 = 0;
            }

            else
            {
              v10 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v10 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v16[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  AriMsg::FreeTlvList(v16[1]);
  return v10;
}

uint64_t ARI_CsiFpSnapshot_BLK(int a1, int a2, int a3, int a4, int *a5, uint64_t a6)
{
  v18 = a2;
  v19 = a1;
  v16 = a4;
  v17 = a3;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v8;
  *v14 = v8;
  v11 = v8;
  v12 = v8;
  AriMsg::AriMsg(&v11, 0xF8838000);
  Ctx = AriMsg::packParam(&v11, 1, &v19, 4uLL);
  if (!Ctx)
  {
    Ctx = AriMsg::packParam(&v11, 2, &v18, 4uLL);
    if (!Ctx)
    {
      Ctx = AriMsg::packParam(&v11, 3, &v17, 4uLL);
      if (!Ctx)
      {
        Ctx = AriMsg::packParam(&v11, 4, &v16, 4uLL);
        if (!Ctx)
        {
          Ctx = AriHost::Send(&v11, *a5, a6, 0, 20000);
          if (!Ctx)
          {
            Ctx = AriMsg::extractCtx(&v11, a5);
          }
        }
      }
    }
  }

  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  AriMsg::FreeTlvList(v14[1]);
  return Ctx;
}

uint64_t ARI_CsiFpUpdateAckRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -117178368)
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

uint64_t ARI_CsiFpUpdateAck_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8840000);
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

uint64_t ARI_CsiFpUpdateAck_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8840000);
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

uint64_t ARI_CsiFpUpdateHeaderData_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v8;
  *v14 = v8;
  v11 = v8;
  v12 = v8;
  AriMsg::AriMsg(&v11, a1, a2);
  v9 = HIDWORD(v15);
  if (!HIDWORD(v15))
  {
    if (((DWORD1(v11) << 15) | (v11 << 26)) == -117145600)
    {
      v9 = AriMsg::unparam(&v11, 1, a3, 4uLL);
      if (!v9)
      {
        v9 = AriMsg::unparam(&v11, 2, a4, 0x50uLL);
        if (!v9)
        {
          v9 = AriMsg::unparam(&v11, 3, a5, 4uLL);
        }
      }
    }

    else
    {
      v9 = 4294967223;
    }
  }

  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  AriMsg::FreeTlvList(v14[1]);
  return v9;
}

uint64_t ARI_CsiFpUpdateHeader_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8848000);
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

uint64_t ARI_CsiFpUpdateHeader_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8848000);
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

uint64_t ARI_CsiIceAtExtRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -116752384)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0xC0CuLL);
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

uint64_t ARI_CsiIceAtExtReq_ENC(char *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v7;
  *v14 = v7;
  v11 = v7;
  v12 = v7;
  AriMsg::AriMsg(&v11, 0xF88A8000);
  v8 = AriMsg::packParam(&v11, 1, a1, 0xC0CuLL);
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

uint64_t ARI_CsiIceAtExtReq_BLK(char *a1, int *a2, uint64_t a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, 0xF88A8000);
  Ctx = AriMsg::packParam(&v9, 1, a1, 0xC0CuLL);
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

uint64_t ARI_CsiIceBspSetApWakeIntervalRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -116719616)
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

uint64_t ARI_CsiIceBspSetApWakeIntervalReq_ENC(int a1, int a2, uint64_t a3, void *a4, unsigned int *a5)
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
  AriMsg::AriMsg(&v11, 0xF88B0000);
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

uint64_t ARI_CsiIceBspSetApWakeIntervalReq_BLK(int a1, int a2, int *a3, uint64_t a4)
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
  AriMsg::AriMsg(&v9, 0xF88B0000);
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

uint64_t ARI_CsiIceFilerReadRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v8;
  *v14 = v8;
  v11 = v8;
  v12 = v8;
  AriMsg::AriMsg(&v11, a1, a2);
  v9 = HIDWORD(v15);
  if (!HIDWORD(v15))
  {
    if (((DWORD1(v11) << 15) | (v11 << 26)) == -117309440)
    {
      v9 = AriMsg::unparam(&v11, 1, a3, 4uLL);
      if (!v9)
      {
        v9 = AriMsg::unparam(&v11, 2, a4, 4uLL);
        if (!v9)
        {
          v9 = AriMsg::unparam(&v11, 3, a5, 0xC00uLL);
        }
      }
    }

    else
    {
      v9 = 4294967223;
    }
  }

  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  AriMsg::FreeTlvList(v14[1]);
  return v9;
}

uint64_t ARI_CsiIceFilerReadReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8820000);
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

uint64_t ARI_CsiIceFilerReadReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8820000);
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

uint64_t ARI_CsiIceFilerWriteRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -117276672)
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

uint64_t ARI_CsiIceFilerWriteReq_ENC(int a1, char *a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v17 = a1;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v8;
  *v15 = v8;
  v12 = v8;
  v13 = v8;
  AriMsg::AriMsg(&v12, 0xF8828000);
  v9 = AriMsg::packParam(&v12, 1, &v17, 4uLL);
  if (!v9)
  {
    v9 = AriMsg::packParam(&v12, 2, a2, 0xC00uLL);
    if (!v9)
    {
      if (a4)
      {
        EncodedBuf = AriMsg::getEncodedBuf(&v12, a5);
        *a4 = EncodedBuf;
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

  v15[0] = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  AriMsg::FreeTlvList(v15[1]);
  return v9;
}

uint64_t ARI_CsiIceFilerWriteReq_BLK(int a1, char *a2, int *a3, uint64_t a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v7;
  *v13 = v7;
  v10 = v7;
  v11 = v7;
  AriMsg::AriMsg(&v10, 0xF8828000);
  Ctx = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!Ctx)
  {
    Ctx = AriMsg::packParam(&v10, 2, a2, 0xC00uLL);
    if (!Ctx)
    {
      Ctx = AriHost::Send(&v10, *a3, a4, 0, 20000);
      if (!Ctx)
      {
        Ctx = AriMsg::extractCtx(&v10, a3);
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

uint64_t ARI_CsiMonMemoryStatusRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -117047296)
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

uint64_t ARI_CsiMonMemoryStatusReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF8860000);
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

uint64_t ARI_CsiMonMemoryStatusReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF8860000);
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

uint64_t ARI_CsiSahGetCrashReportRspCb_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -116850688)
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

uint64_t ARI_CsiSahGetCrashReportReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF8890000);
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

uint64_t ARI_CsiSahGetCrashReportReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF8890000);
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

void AriSdk::ARI_IBISsAbortReq_SDK::ARI_IBISsAbortReq_SDK(AriSdk::ARI_IBISsAbortReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 411172864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 411172864, 0);
}

void AriSdk::ARI_IBISsAbortReq_SDK::ARI_IBISsAbortReq_SDK(AriSdk::ARI_IBISsAbortReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsAbortReq_SDK::~ARI_IBISsAbortReq_SDK(AriSdk::ARI_IBISsAbortReq_SDK *this)
{
  *this = &unk_2A1D3F158;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISsAbortReq_SDK::~ARI_IBISsAbortReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsAbortReq_SDK::pack(AriSdk::ARI_IBISsAbortReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISsAbortRspCb_SDK::ARI_IBISsAbortRspCb_SDK(AriSdk::ARI_IBISsAbortRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 419561472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 419561472, 0);
}

void AriSdk::ARI_IBISsAbortRspCb_SDK::ARI_IBISsAbortRspCb_SDK(AriSdk::ARI_IBISsAbortRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsAbortRspCb_SDK::~ARI_IBISsAbortRspCb_SDK(AriSdk::ARI_IBISsAbortRspCb_SDK *this)
{
  *this = &unk_2A1D3F190;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISsAbortRspCb_SDK::~ARI_IBISsAbortRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsAbortRspCb_SDK::pack(AriSdk::ARI_IBISsAbortRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISsCallBarringReq_V1_SDK::ARI_IBISsCallBarringReq_V1_SDK(AriSdk::ARI_IBISsCallBarringReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 411336704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 411336704, 0);
}

void AriSdk::ARI_IBISsCallBarringReq_V1_SDK::ARI_IBISsCallBarringReq_V1_SDK(AriSdk::ARI_IBISsCallBarringReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsCallBarringReq_V1_SDK::~ARI_IBISsCallBarringReq_V1_SDK(AriSdk::ARI_IBISsCallBarringReq_V1_SDK *this)
{
  *this = &unk_2A1D3F1C8;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBISsCallBarringReq_V1_SDK::~ARI_IBISsCallBarringReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsCallBarringReq_V1_SDK::pack(AriSdk::ARI_IBISsCallBarringReq_V1_SDK *this, AriMsg **a2)
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
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (v12 = *(this + 16), v11 == v12) || (result = AriMsg::pack(*(this + 6), 7, v11, v12 - v11, 0), !result))
            {
              v13 = *(this + 18);
              if (!v13 || (v14 = *(this + 19), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
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

void sub_2961F390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,5ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 6)
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
      v23 = 5;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 5);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961F3B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK::ARI_IBISsCallBarringRspCb_V1_SDK(AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 419725312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 419725312, 0);
}

void AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK::ARI_IBISsCallBarringRspCb_V1_SDK(AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK::~ARI_IBISsCallBarringRspCb_V1_SDK(AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK *this)
{
  *this = &unk_2A1D3F200;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK::~ARI_IBISsCallBarringRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK::pack(AriSdk::ARI_IBISsCallBarringRspCb_V1_SDK *this, AriMsg **a2)
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
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x14uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBISsCallBarringFeatureStruct,12ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x61uLL)
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
      v25 = 12;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961F4484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISsCallForwardReq_SDK::ARI_IBISsCallForwardReq_SDK(AriSdk::ARI_IBISsCallForwardReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 411074560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 411074560, 0);
}

void AriSdk::ARI_IBISsCallForwardReq_SDK::ARI_IBISsCallForwardReq_SDK(AriSdk::ARI_IBISsCallForwardReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsCallForwardReq_SDK::~ARI_IBISsCallForwardReq_SDK(AriSdk::ARI_IBISsCallForwardReq_SDK *this)
{
  *this = &unk_2A1D3F238;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40AEA0F7BFLL);
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
  AriSdk::ARI_IBISsCallForwardReq_SDK::~ARI_IBISsCallForwardReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsCallForwardReq_SDK::pack(AriSdk::ARI_IBISsCallForwardReq_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x53uLL, 0), !result))
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

void AriSdk::ARI_IBISsCallForwardRspCb_SDK::ARI_IBISsCallForwardRspCb_SDK(AriSdk::ARI_IBISsCallForwardRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 419463168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 419463168, 0);
}

void AriSdk::ARI_IBISsCallForwardRspCb_SDK::ARI_IBISsCallForwardRspCb_SDK(AriSdk::ARI_IBISsCallForwardRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsCallForwardRspCb_SDK::~ARI_IBISsCallForwardRspCb_SDK(AriSdk::ARI_IBISsCallForwardRspCb_SDK *this)
{
  *this = &unk_2A1D3F270;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBISsCallForwardRspCb_SDK::~ARI_IBISsCallForwardRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsCallForwardRspCb_SDK::pack(AriSdk::ARI_IBISsCallForwardRspCb_SDK *this, AriMsg **a2)
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
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x14uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBISsCallForwardingFeatureExtStruct,12ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 2) < 0xD)
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
      v12 = 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 12;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 2), 12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961F55A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISsCallWaitingReq_SDK::ARI_IBISsCallWaitingReq_SDK(AriSdk::ARI_IBISsCallWaitingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 411271168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 411271168, 0);
}

void AriSdk::ARI_IBISsCallWaitingReq_SDK::ARI_IBISsCallWaitingReq_SDK(AriSdk::ARI_IBISsCallWaitingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsCallWaitingReq_SDK::~ARI_IBISsCallWaitingReq_SDK(AriSdk::ARI_IBISsCallWaitingReq_SDK *this)
{
  *this = &unk_2A1D3F2A8;
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
  AriSdk::ARI_IBISsCallWaitingReq_SDK::~ARI_IBISsCallWaitingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsCallWaitingReq_SDK::pack(AriSdk::ARI_IBISsCallWaitingReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISsCallWaitingRspCb_SDK::ARI_IBISsCallWaitingRspCb_SDK(AriSdk::ARI_IBISsCallWaitingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 419659776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 419659776, 0);
}

void AriSdk::ARI_IBISsCallWaitingRspCb_SDK::ARI_IBISsCallWaitingRspCb_SDK(AriSdk::ARI_IBISsCallWaitingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsCallWaitingRspCb_SDK::~ARI_IBISsCallWaitingRspCb_SDK(AriSdk::ARI_IBISsCallWaitingRspCb_SDK *this)
{
  *this = &unk_2A1D3F2E0;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBISsCallWaitingRspCb_SDK::~ARI_IBISsCallWaitingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsCallWaitingRspCb_SDK::pack(AriSdk::ARI_IBISsCallWaitingRspCb_SDK *this, AriMsg **a2)
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
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x14uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBISsCallWaitingFeatureStruct,12ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x61uLL)
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
      v25 = 12;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961F638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISsExtendedUssdReq_SDK::ARI_IBISsExtendedUssdReq_SDK(AriSdk::ARI_IBISsExtendedUssdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 411107328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 411107328, 0);
}

void AriSdk::ARI_IBISsExtendedUssdReq_SDK::ARI_IBISsExtendedUssdReq_SDK(AriSdk::ARI_IBISsExtendedUssdReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsExtendedUssdReq_SDK::~ARI_IBISsExtendedUssdReq_SDK(AriSdk::ARI_IBISsExtendedUssdReq_SDK *this)
{
  *this = &unk_2A1D3F318;
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
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
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
  AriSdk::ARI_IBISsExtendedUssdReq_SDK::~ARI_IBISsExtendedUssdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsExtendedUssdReq_SDK::pack(AriSdk::ARI_IBISsExtendedUssdReq_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 1uLL, 0), !result))
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

std::vector<int> *AriSdk::TlvArray<char,183ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xB8)
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
      v23 = 183;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 183);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961F6D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISsExtendedUssdRspCb_SDK::ARI_IBISsExtendedUssdRspCb_SDK(AriSdk::ARI_IBISsExtendedUssdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 419495936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 419495936, 0);
}

void AriSdk::ARI_IBISsExtendedUssdRspCb_SDK::ARI_IBISsExtendedUssdRspCb_SDK(AriSdk::ARI_IBISsExtendedUssdRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsExtendedUssdRspCb_SDK::~ARI_IBISsExtendedUssdRspCb_SDK(AriSdk::ARI_IBISsExtendedUssdRspCb_SDK *this)
{
  *this = &unk_2A1D3F350;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v8, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBISsExtendedUssdRspCb_SDK::~ARI_IBISsExtendedUssdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsExtendedUssdRspCb_SDK::pack(AriSdk::ARI_IBISsExtendedUssdRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 5, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 2uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 11, v13, 1uLL, 0), !result))
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

void AriSdk::ARI_IBISsIdentificationReq_SDK::ARI_IBISsIdentificationReq_SDK(AriSdk::ARI_IBISsIdentificationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 411238400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 411238400, 0);
}

void AriSdk::ARI_IBISsIdentificationReq_SDK::ARI_IBISsIdentificationReq_SDK(AriSdk::ARI_IBISsIdentificationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsIdentificationReq_SDK::~ARI_IBISsIdentificationReq_SDK(AriSdk::ARI_IBISsIdentificationReq_SDK *this)
{
  *this = &unk_2A1D3F388;
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
  AriSdk::ARI_IBISsIdentificationReq_SDK::~ARI_IBISsIdentificationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsIdentificationReq_SDK::pack(AriSdk::ARI_IBISsIdentificationReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISsIdentificationRspCb_SDK::ARI_IBISsIdentificationRspCb_SDK(AriSdk::ARI_IBISsIdentificationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 419627008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 419627008, 0);
}

void AriSdk::ARI_IBISsIdentificationRspCb_SDK::ARI_IBISsIdentificationRspCb_SDK(AriSdk::ARI_IBISsIdentificationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsIdentificationRspCb_SDK::~ARI_IBISsIdentificationRspCb_SDK(AriSdk::ARI_IBISsIdentificationRspCb_SDK *this)
{
  *this = &unk_2A1D3F3C0;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
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
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBISsIdentificationRspCb_SDK::~ARI_IBISsIdentificationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsIdentificationRspCb_SDK::pack(AriSdk::ARI_IBISsIdentificationRspCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x14uLL, 0), !result))
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

void AriSdk::ARI_IBISsUssdIndCb_SDK::ARI_IBISsUssdIndCb_SDK(AriSdk::ARI_IBISsUssdIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 427851776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 427851776, 0);
}

void AriSdk::ARI_IBISsUssdIndCb_SDK::ARI_IBISsUssdIndCb_SDK(AriSdk::ARI_IBISsUssdIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISsUssdIndCb_SDK::~ARI_IBISsUssdIndCb_SDK(AriSdk::ARI_IBISsUssdIndCb_SDK *this)
{
  *this = &unk_2A1D3F3F8;
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
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBISsUssdIndCb_SDK::~ARI_IBISsUssdIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISsUssdIndCb_SDK::pack(AriSdk::ARI_IBISsUssdIndCb_SDK *this, AriMsg **a2)
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
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 2uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 4uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 7, v13, 1uLL, 0), !result))
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

void std::vector<IBISsCallBarringFeatureStruct>::__init_with_size[abi:ne200100]<IBISsCallBarringFeatureStruct*,IBISsCallBarringFeatureStruct*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961F8924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBISsCallForwardingFeatureExtStruct>::__init_with_size[abi:ne200100]<IBISsCallForwardingFeatureExtStruct*,IBISsCallForwardingFeatureExtStruct*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961F89D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBISsCallWaitingFeatureStruct>::__init_with_size[abi:ne200100]<IBISsCallWaitingFeatureStruct*,IBISsCallWaitingFeatureStruct*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961F8A74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK::ARI_CsiIpcCtrlPathTestDataIndCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1367572480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1367572480, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK::ARI_CsiIpcCtrlPathTestDataIndCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK::~ARI_CsiIpcCtrlPathTestDataIndCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK *this)
{
  *this = &unk_2A1D40498;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402633B4A5);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK::~ARI_CsiIpcCtrlPathTestDataIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestDataIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xC04uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK::ARI_CsiIpcCtrlPathTestDataOpReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1350828032, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1350828032, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK::ARI_CsiIpcCtrlPathTestDataOpReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK::~ARI_CsiIpcCtrlPathTestDataOpReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK *this)
{
  *this = &unk_2A1D404D0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK::~ARI_CsiIpcCtrlPathTestDataOpReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestDataOpReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1359216640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1359216640, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK::~ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK *this)
{
  *this = &unk_2A1D40508;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK::~ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestDataOpRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK::ARI_CsiIpcCtrlPathTestInitReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1350664192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1350664192, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK::ARI_CsiIpcCtrlPathTestInitReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK::~ARI_CsiIpcCtrlPathTestInitReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestInitReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK::ARI_CsiIpcCtrlPathTestInitRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1359052800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1359052800, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK::ARI_CsiIpcCtrlPathTestInitRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK::~ARI_CsiIpcCtrlPathTestInitRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK *this)
{
  *this = &unk_2A1D40578;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK::~ARI_CsiIpcCtrlPathTestInitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestInitRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK::ARI_CsiIpcCtrlPathTestSendDataReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1350762496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1350762496, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK::ARI_CsiIpcCtrlPathTestSendDataReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK::~ARI_CsiIpcCtrlPathTestSendDataReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK *this)
{
  *this = &unk_2A1D405B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402633B4A5);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK::~ARI_CsiIpcCtrlPathTestSendDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestSendDataReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xC04uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1359151104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1359151104, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK::~ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK *this)
{
  *this = &unk_2A1D405E8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK::~ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestSendDataRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK::ARI_CsiIpcCtrlPathTestSrcReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1350860800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1350860800, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK::ARI_CsiIpcCtrlPathTestSrcReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK::~ARI_CsiIpcCtrlPathTestSrcReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK *this)
{
  *this = &unk_2A1D40620;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK::~ARI_CsiIpcCtrlPathTestSrcReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestSrcReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1359249408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1359249408, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK::~ARI_CsiIpcCtrlPathTestSrcRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK *this)
{
  *this = &unk_2A1D40658;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4027586B93);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK::~ARI_CsiIpcCtrlPathTestSrcRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestSrcRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x1CuLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1350729728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1350729728, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK::~ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK *this)
{
  *this = &unk_2A1D40690;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40451B5BE8);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK::~ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1359118336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1359118336, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK::~ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK *this)
{
  *this = &unk_2A1D406C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK::~ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestSrcCfgRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK::ARI_CsiIpcCtrlPathTestUnInitReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1350696960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1350696960, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK::ARI_CsiIpcCtrlPathTestUnInitReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK::~ARI_CsiIpcCtrlPathTestUnInitReq_SDK(AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestUnInitReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1359085568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1359085568, 0);
}

void AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK::~ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK(AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK *this)
{
  *this = &unk_2A1D40738;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK::~ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK::pack(AriSdk::ARI_CsiIpcCtrlPathTestUnInitRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwActivateReq_SDK::ARI_IBIStwActivateReq_SDK(AriSdk::ARI_IBIStwActivateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662667264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662667264, 0);
}

void AriSdk::ARI_IBIStwActivateReq_SDK::ARI_IBIStwActivateReq_SDK(AriSdk::ARI_IBIStwActivateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwActivateReq_SDK::~ARI_IBIStwActivateReq_SDK(AriSdk::ARI_IBIStwActivateReq_SDK *this)
{
  *this = &unk_2A1D410B8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4015033FCELL);
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
    MEMORY[0x29C257E70](v5, 0x1000C4042A86FECLL);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4044B5EFC8);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C400A747E1ELL);
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
  AriSdk::ARI_IBIStwActivateReq_SDK::~ARI_IBIStwActivateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwActivateReq_SDK::pack(AriSdk::ARI_IBIStwActivateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x28uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x88uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x84uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x984uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIStwActivateRspCb_SDK::ARI_IBIStwActivateRspCb_SDK(AriSdk::ARI_IBIStwActivateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654278656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654278656, 0);
}

void AriSdk::ARI_IBIStwActivateRspCb_SDK::ARI_IBIStwActivateRspCb_SDK(AriSdk::ARI_IBIStwActivateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwActivateRspCb_SDK::~ARI_IBIStwActivateRspCb_SDK(AriSdk::ARI_IBIStwActivateRspCb_SDK *this)
{
  *this = &unk_2A1D410F0;
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
  AriSdk::ARI_IBIStwActivateRspCb_SDK::~ARI_IBIStwActivateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwActivateRspCb_SDK::pack(AriSdk::ARI_IBIStwActivateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK::ARI_IBIStwDataMsgTxCancelReq_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -661585920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -661585920, 0);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK::ARI_IBIStwDataMsgTxCancelReq_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK::~ARI_IBIStwDataMsgTxCancelReq_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK *this)
{
  *this = &unk_2A1D41128;
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
  AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK::~ARI_IBIStwDataMsgTxCancelReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK::pack(AriSdk::ARI_IBIStwDataMsgTxCancelReq_SDK *this, AriMsg **a2)
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

void sub_2961FD4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK::ARI_IBIStwDataMsgTxCancelRspCb_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653197312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653197312, 0);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK::ARI_IBIStwDataMsgTxCancelRspCb_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK::~ARI_IBIStwDataMsgTxCancelRspCb_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK *this)
{
  *this = &unk_2A1D41160;
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
  AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK::~ARI_IBIStwDataMsgTxCancelRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK::pack(AriSdk::ARI_IBIStwDataMsgTxCancelRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645464064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645464064, 0);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK::~ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK(AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK::pack(AriSdk::ARI_IBIStwDataMsgTxCancelAllCompleteIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK::ARI_IBIStwDeActivateCompleteIndCb_SDK(AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645890048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645890048, 0);
}

void AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK::ARI_IBIStwDeActivateCompleteIndCb_SDK(AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK::~ARI_IBIStwDeActivateCompleteIndCb_SDK(AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK *this)
{
  *this = &unk_2A1D411D0;
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
  AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK::~ARI_IBIStwDeActivateCompleteIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK::pack(AriSdk::ARI_IBIStwDeActivateCompleteIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwDeActivateReq_SDK::ARI_IBIStwDeActivateReq_SDK(AriSdk::ARI_IBIStwDeActivateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662634496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662634496, 0);
}

void AriSdk::ARI_IBIStwDeActivateReq_SDK::ARI_IBIStwDeActivateReq_SDK(AriSdk::ARI_IBIStwDeActivateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDeActivateReq_SDK::~ARI_IBIStwDeActivateReq_SDK(AriSdk::ARI_IBIStwDeActivateReq_SDK *this)
{
  *this = &unk_2A1D41208;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwDeActivateReq_SDK::~ARI_IBIStwDeActivateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDeActivateReq_SDK::pack(AriSdk::ARI_IBIStwDeActivateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwDeActivateRspCb_SDK::ARI_IBIStwDeActivateRspCb_SDK(AriSdk::ARI_IBIStwDeActivateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654245888, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654245888, 0);
}

void AriSdk::ARI_IBIStwDeActivateRspCb_SDK::ARI_IBIStwDeActivateRspCb_SDK(AriSdk::ARI_IBIStwDeActivateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDeActivateRspCb_SDK::~ARI_IBIStwDeActivateRspCb_SDK(AriSdk::ARI_IBIStwDeActivateRspCb_SDK *this)
{
  *this = &unk_2A1D41240;
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
  AriSdk::ARI_IBIStwDeActivateRspCb_SDK::~ARI_IBIStwDeActivateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDeActivateRspCb_SDK::pack(AriSdk::ARI_IBIStwDeActivateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwDeviceOrientationReq_SDK::ARI_IBIStwDeviceOrientationReq_SDK(AriSdk::ARI_IBIStwDeviceOrientationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662274048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662274048, 0);
}

void AriSdk::ARI_IBIStwDeviceOrientationReq_SDK::ARI_IBIStwDeviceOrientationReq_SDK(AriSdk::ARI_IBIStwDeviceOrientationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDeviceOrientationReq_SDK::~ARI_IBIStwDeviceOrientationReq_SDK(AriSdk::ARI_IBIStwDeviceOrientationReq_SDK *this)
{
  *this = &unk_2A1D41278;
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
  AriSdk::ARI_IBIStwDeviceOrientationReq_SDK::~ARI_IBIStwDeviceOrientationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDeviceOrientationReq_SDK::pack(AriSdk::ARI_IBIStwDeviceOrientationReq_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK::ARI_IBIStwDeviceOrientationRspCb_SDK(AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653885440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653885440, 0);
}

void AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK::ARI_IBIStwDeviceOrientationRspCb_SDK(AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK::~ARI_IBIStwDeviceOrientationRspCb_SDK(AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK *this)
{
  *this = &unk_2A1D412B0;
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
  AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK::~ARI_IBIStwDeviceOrientationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK::pack(AriSdk::ARI_IBIStwDeviceOrientationRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwDiagCommandReq_SDK::ARI_IBIStwDiagCommandReq_SDK(AriSdk::ARI_IBIStwDiagCommandReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662241280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662241280, 0);
}

void AriSdk::ARI_IBIStwDiagCommandReq_SDK::ARI_IBIStwDiagCommandReq_SDK(AriSdk::ARI_IBIStwDiagCommandReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDiagCommandReq_SDK::~ARI_IBIStwDiagCommandReq_SDK(AriSdk::ARI_IBIStwDiagCommandReq_SDK *this)
{
  *this = &unk_2A1D412E8;
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
  AriSdk::ARI_IBIStwDiagCommandReq_SDK::~ARI_IBIStwDiagCommandReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDiagCommandReq_SDK::pack(AriSdk::ARI_IBIStwDiagCommandReq_SDK *this, AriMsg **a2)
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

void sub_2961FEF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,2048ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x801)
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
      v23 = 2048;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 2048);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961FF178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIStwDiagCommandRspCb_SDK::ARI_IBIStwDiagCommandRspCb_SDK(AriSdk::ARI_IBIStwDiagCommandRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653852672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653852672, 0);
}

void AriSdk::ARI_IBIStwDiagCommandRspCb_SDK::ARI_IBIStwDiagCommandRspCb_SDK(AriSdk::ARI_IBIStwDiagCommandRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDiagCommandRspCb_SDK::~ARI_IBIStwDiagCommandRspCb_SDK(AriSdk::ARI_IBIStwDiagCommandRspCb_SDK *this)
{
  *this = &unk_2A1D41320;
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
  AriSdk::ARI_IBIStwDiagCommandRspCb_SDK::~ARI_IBIStwDiagCommandRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDiagCommandRspCb_SDK::pack(AriSdk::ARI_IBIStwDiagCommandRspCb_SDK *this, AriMsg **a2)
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

void sub_2961FF69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwDiagCommandIndCb_SDK::ARI_IBIStwDiagCommandIndCb_SDK(AriSdk::ARI_IBIStwDiagCommandIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645595136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645595136, 0);
}

void AriSdk::ARI_IBIStwDiagCommandIndCb_SDK::ARI_IBIStwDiagCommandIndCb_SDK(AriSdk::ARI_IBIStwDiagCommandIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwDiagCommandIndCb_SDK::~ARI_IBIStwDiagCommandIndCb_SDK(AriSdk::ARI_IBIStwDiagCommandIndCb_SDK *this)
{
  *this = &unk_2A1D41358;
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
  AriSdk::ARI_IBIStwDiagCommandIndCb_SDK::~ARI_IBIStwDiagCommandIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwDiagCommandIndCb_SDK::pack(AriSdk::ARI_IBIStwDiagCommandIndCb_SDK *this, AriMsg **a2)
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

void sub_2961FFAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwGetCapabilityReq_SDK::ARI_IBIStwGetCapabilityReq_SDK(AriSdk::ARI_IBIStwGetCapabilityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662306816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662306816, 0);
}

void AriSdk::ARI_IBIStwGetCapabilityReq_SDK::ARI_IBIStwGetCapabilityReq_SDK(AriSdk::ARI_IBIStwGetCapabilityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGetCapabilityReq_SDK::~ARI_IBIStwGetCapabilityReq_SDK(AriSdk::ARI_IBIStwGetCapabilityReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGetCapabilityReq_SDK::pack(AriSdk::ARI_IBIStwGetCapabilityReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK::ARI_IBIStwGetCapabilityRspCb_SDK(AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653918208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653918208, 0);
}

void AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK::ARI_IBIStwGetCapabilityRspCb_SDK(AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK::~ARI_IBIStwGetCapabilityRspCb_SDK(AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK *this)
{
  *this = &unk_2A1D413C8;
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
  AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK::~ARI_IBIStwGetCapabilityRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK::pack(AriSdk::ARI_IBIStwGetCapabilityRspCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwGetServiceInfoReq_SDK::ARI_IBIStwGetServiceInfoReq_SDK(AriSdk::ARI_IBIStwGetServiceInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662503424, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662503424, 0);
}

void AriSdk::ARI_IBIStwGetServiceInfoReq_SDK::ARI_IBIStwGetServiceInfoReq_SDK(AriSdk::ARI_IBIStwGetServiceInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGetServiceInfoReq_SDK::~ARI_IBIStwGetServiceInfoReq_SDK(AriSdk::ARI_IBIStwGetServiceInfoReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGetServiceInfoReq_SDK::pack(AriSdk::ARI_IBIStwGetServiceInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK::ARI_IBIStwGetServiceInfoRspCb_SDK(AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654114816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654114816, 0);
}

void AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK::ARI_IBIStwGetServiceInfoRspCb_SDK(AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK::~ARI_IBIStwGetServiceInfoRspCb_SDK(AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK *this)
{
  *this = &unk_2A1D41438;
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
  AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK::~ARI_IBIStwGetServiceInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK::pack(AriSdk::ARI_IBIStwGetServiceInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK::ARI_IBIStwGpsDataUpdateReq_SDK(AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662339584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662339584, 0);
}

void AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK::ARI_IBIStwGpsDataUpdateReq_SDK(AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK::~ARI_IBIStwGpsDataUpdateReq_SDK(AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK *this)
{
  *this = &unk_2A1D41470;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4015033FCELL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4044B5EFC8);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4042A86FECLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK::~ARI_IBIStwGpsDataUpdateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK::pack(AriSdk::ARI_IBIStwGpsDataUpdateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 0x84uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x88uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x984uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK::ARI_IBIStwGpsDataUpdateRspCb_SDK(AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653950976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653950976, 0);
}

void AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK::ARI_IBIStwGpsDataUpdateRspCb_SDK(AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK::~ARI_IBIStwGpsDataUpdateRspCb_SDK(AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK *this)
{
  *this = &unk_2A1D414A8;
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
  AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK::~ARI_IBIStwGpsDataUpdateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK::pack(AriSdk::ARI_IBIStwGpsDataUpdateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK(AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645660672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645660672, 0);
}

void AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK(AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK::~ARI_IBIStwGpsDataUpdateNeededIndCb_SDK(AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK::pack(AriSdk::ARI_IBIStwGpsDataUpdateNeededIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwIQConfigReq_SDK::ARI_IBIStwIQConfigReq_SDK(AriSdk::ARI_IBIStwIQConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -657883136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -657883136, 0);
}

void AriSdk::ARI_IBIStwIQConfigReq_SDK::ARI_IBIStwIQConfigReq_SDK(AriSdk::ARI_IBIStwIQConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwIQConfigReq_SDK::~ARI_IBIStwIQConfigReq_SDK(AriSdk::ARI_IBIStwIQConfigReq_SDK *this)
{
  *this = &unk_2A1D41518;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIStwIQConfigReq_SDK::~ARI_IBIStwIQConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwIQConfigReq_SDK::pack(AriSdk::ARI_IBIStwIQConfigReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwIQConfigRspCb_SDK::ARI_IBIStwIQConfigRspCb_SDK(AriSdk::ARI_IBIStwIQConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -649494528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -649494528, 0);
}

void AriSdk::ARI_IBIStwIQConfigRspCb_SDK::ARI_IBIStwIQConfigRspCb_SDK(AriSdk::ARI_IBIStwIQConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwIQConfigRspCb_SDK::~ARI_IBIStwIQConfigRspCb_SDK(AriSdk::ARI_IBIStwIQConfigRspCb_SDK *this)
{
  *this = &unk_2A1D41550;
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
  AriSdk::ARI_IBIStwIQConfigRspCb_SDK::~ARI_IBIStwIQConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwIQConfigRspCb_SDK::pack(AriSdk::ARI_IBIStwIQConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwIncomingDataIndCb_SDK::ARI_IBIStwIncomingDataIndCb_SDK(AriSdk::ARI_IBIStwIncomingDataIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645693440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645693440, 0);
}

void AriSdk::ARI_IBIStwIncomingDataIndCb_SDK::ARI_IBIStwIncomingDataIndCb_SDK(AriSdk::ARI_IBIStwIncomingDataIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwIncomingDataIndCb_SDK::~ARI_IBIStwIncomingDataIndCb_SDK(AriSdk::ARI_IBIStwIncomingDataIndCb_SDK *this)
{
  *this = &unk_2A1D41588;
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
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwIncomingDataIndCb_SDK::~ARI_IBIStwIncomingDataIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwIncomingDataIndCb_SDK::pack(AriSdk::ARI_IBIStwIncomingDataIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
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

void sub_296201CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK::ARI_IBIStwInitiateRegistrationReq_SDK(AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662175744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662175744, 0);
}

void AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK::ARI_IBIStwInitiateRegistrationReq_SDK(AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK::~ARI_IBIStwInitiateRegistrationReq_SDK(AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK::pack(AriSdk::ARI_IBIStwInitiateRegistrationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK::ARI_IBIStwInitiateRegistrationRspCb_SDK(AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653787136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653787136, 0);
}

void AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK::ARI_IBIStwInitiateRegistrationRspCb_SDK(AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK::~ARI_IBIStwInitiateRegistrationRspCb_SDK(AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK *this)
{
  *this = &unk_2A1D415F8;
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
  AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK::~ARI_IBIStwInitiateRegistrationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK::pack(AriSdk::ARI_IBIStwInitiateRegistrationRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK::ARI_IBIStwMmcDumpConfigReq_SDK(AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -657850368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -657850368, 0);
}

void AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK::ARI_IBIStwMmcDumpConfigReq_SDK(AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK::~ARI_IBIStwMmcDumpConfigReq_SDK(AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK *this)
{
  *this = &unk_2A1D41630;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK::~ARI_IBIStwMmcDumpConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK::pack(AriSdk::ARI_IBIStwMmcDumpConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK::ARI_IBIStwMmcDumpConfigRspCb_SDK(AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -649461760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -649461760, 0);
}

void AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK::ARI_IBIStwMmcDumpConfigRspCb_SDK(AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK::~ARI_IBIStwMmcDumpConfigRspCb_SDK(AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK *this)
{
  *this = &unk_2A1D41668;
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
  AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK::~ARI_IBIStwMmcDumpConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK::pack(AriSdk::ARI_IBIStwMmcDumpConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK::ARI_IBIStwOverrideConcurTmrReq_SDK(AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -657915904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -657915904, 0);
}

void AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK::ARI_IBIStwOverrideConcurTmrReq_SDK(AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK::~ARI_IBIStwOverrideConcurTmrReq_SDK(AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK *this)
{
  *this = &unk_2A1D416A0;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40BDFB0063);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40BDFB0063);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK::~ARI_IBIStwOverrideConcurTmrReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK::pack(AriSdk::ARI_IBIStwOverrideConcurTmrReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 2uLL, 0), !result))
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 2uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 2uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 2uLL, 0), !result))
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

void AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK::ARI_IBIStwOverrideConcurTmrRspCb_SDK(AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -649527296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -649527296, 0);
}

void AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK::ARI_IBIStwOverrideConcurTmrRspCb_SDK(AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK::~ARI_IBIStwOverrideConcurTmrRspCb_SDK(AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK *this)
{
  *this = &unk_2A1D416D8;
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
  AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK::~ARI_IBIStwOverrideConcurTmrRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK::pack(AriSdk::ARI_IBIStwOverrideConcurTmrRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwOverrideConfigReq_SDK::ARI_IBIStwOverrideConfigReq_SDK(AriSdk::ARI_IBIStwOverrideConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -657981440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -657981440, 0);
}

void AriSdk::ARI_IBIStwOverrideConfigReq_SDK::ARI_IBIStwOverrideConfigReq_SDK(AriSdk::ARI_IBIStwOverrideConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwOverrideConfigReq_SDK::~ARI_IBIStwOverrideConfigReq_SDK(AriSdk::ARI_IBIStwOverrideConfigReq_SDK *this)
{
  *this = &unk_2A1D41710;
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

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4000313F17);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4000313F17);
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
  AriSdk::ARI_IBIStwOverrideConfigReq_SDK::~ARI_IBIStwOverrideConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwOverrideConfigReq_SDK::pack(AriSdk::ARI_IBIStwOverrideConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK::ARI_IBIStwOverrideConfigRspCb_SDK(AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -649592832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -649592832, 0);
}

void AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK::ARI_IBIStwOverrideConfigRspCb_SDK(AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK::~ARI_IBIStwOverrideConfigRspCb_SDK(AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK *this)
{
  *this = &unk_2A1D41748;
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
  AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK::~ARI_IBIStwOverrideConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK::pack(AriSdk::ARI_IBIStwOverrideConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwOverrideTmrReq_SDK::ARI_IBIStwOverrideTmrReq_SDK(AriSdk::ARI_IBIStwOverrideTmrReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -657948672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -657948672, 0);
}

void AriSdk::ARI_IBIStwOverrideTmrReq_SDK::ARI_IBIStwOverrideTmrReq_SDK(AriSdk::ARI_IBIStwOverrideTmrReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwOverrideTmrReq_SDK::~ARI_IBIStwOverrideTmrReq_SDK(AriSdk::ARI_IBIStwOverrideTmrReq_SDK *this)
{
  *this = &unk_2A1D41780;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwOverrideTmrReq_SDK::~ARI_IBIStwOverrideTmrReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwOverrideTmrReq_SDK::pack(AriSdk::ARI_IBIStwOverrideTmrReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 2uLL, 0), !result))
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK::ARI_IBIStwOverrideTmrRspCb_SDK(AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -649560064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -649560064, 0);
}

void AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK::ARI_IBIStwOverrideTmrRspCb_SDK(AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK::~ARI_IBIStwOverrideTmrRspCb_SDK(AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK *this)
{
  *this = &unk_2A1D417B8;
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
  AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK::~ARI_IBIStwOverrideTmrRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK::pack(AriSdk::ARI_IBIStwOverrideTmrRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwQueryReq_SDK::ARI_IBIStwQueryReq_SDK(AriSdk::ARI_IBIStwQueryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -657817600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -657817600, 0);
}

void AriSdk::ARI_IBIStwQueryReq_SDK::ARI_IBIStwQueryReq_SDK(AriSdk::ARI_IBIStwQueryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwQueryReq_SDK::~ARI_IBIStwQueryReq_SDK(AriSdk::ARI_IBIStwQueryReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwQueryReq_SDK::pack(AriSdk::ARI_IBIStwQueryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwQueryRspCb_SDK::ARI_IBIStwQueryRspCb_SDK(AriSdk::ARI_IBIStwQueryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -649428992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -649428992, 0);
}

void AriSdk::ARI_IBIStwQueryRspCb_SDK::ARI_IBIStwQueryRspCb_SDK(AriSdk::ARI_IBIStwQueryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwQueryRspCb_SDK::~ARI_IBIStwQueryRspCb_SDK(AriSdk::ARI_IBIStwQueryRspCb_SDK *this)
{
  *this = &unk_2A1D41828;
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
  AriSdk::ARI_IBIStwQueryRspCb_SDK::~ARI_IBIStwQueryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwQueryRspCb_SDK::pack(AriSdk::ARI_IBIStwQueryRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK::ARI_IBIStwRequestStateChangeIndCb_SDK(AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645857280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645857280, 0);
}

void AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK::ARI_IBIStwRequestStateChangeIndCb_SDK(AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK::~ARI_IBIStwRequestStateChangeIndCb_SDK(AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK *this)
{
  *this = &unk_2A1D41860;
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
  AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK::~ARI_IBIStwRequestStateChangeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK::pack(AriSdk::ARI_IBIStwRequestStateChangeIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwResumeReq_SDK::ARI_IBIStwResumeReq_SDK(AriSdk::ARI_IBIStwResumeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662568960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662568960, 0);
}

void AriSdk::ARI_IBIStwResumeReq_SDK::ARI_IBIStwResumeReq_SDK(AriSdk::ARI_IBIStwResumeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwResumeReq_SDK::~ARI_IBIStwResumeReq_SDK(AriSdk::ARI_IBIStwResumeReq_SDK *this)
{
  *this = &unk_2A1D41898;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4015033FCELL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4044B5EFC8);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4042A86FECLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwResumeReq_SDK::~ARI_IBIStwResumeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwResumeReq_SDK::pack(AriSdk::ARI_IBIStwResumeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 0x84uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x88uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x984uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwResumeRspCb_SDK::ARI_IBIStwResumeRspCb_SDK(AriSdk::ARI_IBIStwResumeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654180352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654180352, 0);
}

void AriSdk::ARI_IBIStwResumeRspCb_SDK::ARI_IBIStwResumeRspCb_SDK(AriSdk::ARI_IBIStwResumeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwResumeRspCb_SDK::~ARI_IBIStwResumeRspCb_SDK(AriSdk::ARI_IBIStwResumeRspCb_SDK *this)
{
  *this = &unk_2A1D418D0;
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
  AriSdk::ARI_IBIStwResumeRspCb_SDK::~ARI_IBIStwResumeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwResumeRspCb_SDK::pack(AriSdk::ARI_IBIStwResumeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK::ARI_IBIStwSarBackoffTimeReq_SDK(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -661651456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -661651456, 0);
}

void AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK::ARI_IBIStwSarBackoffTimeReq_SDK(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK::~ARI_IBIStwSarBackoffTimeReq_SDK(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK *this)
{
  *this = &unk_2A1D41908;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK::~ARI_IBIStwSarBackoffTimeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK::pack(AriSdk::ARI_IBIStwSarBackoffTimeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK::ARI_IBIStwSarBackoffTimeRspCb_SDK(AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653262848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653262848, 0);
}

void AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK::ARI_IBIStwSarBackoffTimeRspCb_SDK(AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK::~ARI_IBIStwSarBackoffTimeRspCb_SDK(AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK *this)
{
  *this = &unk_2A1D41940;
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
  AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK::~ARI_IBIStwSarBackoffTimeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK::pack(AriSdk::ARI_IBIStwSarBackoffTimeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSecConfigReq_SDK::ARI_IBIStwSecConfigReq_SDK(AriSdk::ARI_IBIStwSecConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662536192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662536192, 0);
}

void AriSdk::ARI_IBIStwSecConfigReq_SDK::ARI_IBIStwSecConfigReq_SDK(AriSdk::ARI_IBIStwSecConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSecConfigReq_SDK::~ARI_IBIStwSecConfigReq_SDK(AriSdk::ARI_IBIStwSecConfigReq_SDK *this)
{
  *this = &unk_2A1D41978;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C400A747E1ELL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSecConfigReq_SDK::~ARI_IBIStwSecConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSecConfigReq_SDK::pack(AriSdk::ARI_IBIStwSecConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 0x28uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIStwSecConfigRspCb_SDK::ARI_IBIStwSecConfigRspCb_SDK(AriSdk::ARI_IBIStwSecConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654147584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654147584, 0);
}

void AriSdk::ARI_IBIStwSecConfigRspCb_SDK::ARI_IBIStwSecConfigRspCb_SDK(AriSdk::ARI_IBIStwSecConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSecConfigRspCb_SDK::~ARI_IBIStwSecConfigRspCb_SDK(AriSdk::ARI_IBIStwSecConfigRspCb_SDK *this)
{
  *this = &unk_2A1D419B0;
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
  AriSdk::ARI_IBIStwSecConfigRspCb_SDK::~ARI_IBIStwSecConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSecConfigRspCb_SDK::pack(AriSdk::ARI_IBIStwSecConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK::ARI_IBIStwSecConfigUpdNeededIndCb_SDK(AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645824512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645824512, 0);
}

void AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK::ARI_IBIStwSecConfigUpdNeededIndCb_SDK(AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK::~ARI_IBIStwSecConfigUpdNeededIndCb_SDK(AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK::pack(AriSdk::ARI_IBIStwSecConfigUpdNeededIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK::ARI_IBIStwSecConfigUsageIndCb_SDK(AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645791744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645791744, 0);
}

void AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK::ARI_IBIStwSecConfigUsageIndCb_SDK(AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK::~ARI_IBIStwSecConfigUsageIndCb_SDK(AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK *this)
{
  *this = &unk_2A1D41A20;
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
    MEMORY[0x29C257E70](v3, 0x1000C403E1C8BA9);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK::~ARI_IBIStwSecConfigUsageIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK::pack(AriSdk::ARI_IBIStwSecConfigUsageIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xCuLL, 0), !result))
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

void sub_296206F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIStwSendAckReq_SDK::ARI_IBIStwSendAckReq_SDK(AriSdk::ARI_IBIStwSendAckReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662437888, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662437888, 0);
}

void AriSdk::ARI_IBIStwSendAckReq_SDK::ARI_IBIStwSendAckReq_SDK(AriSdk::ARI_IBIStwSendAckReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendAckReq_SDK::~ARI_IBIStwSendAckReq_SDK(AriSdk::ARI_IBIStwSendAckReq_SDK *this)
{
  *this = &unk_2A1D41A58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSendAckReq_SDK::~ARI_IBIStwSendAckReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendAckReq_SDK::pack(AriSdk::ARI_IBIStwSendAckReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 2uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIStwSendAckRspCb_SDK::ARI_IBIStwSendAckRspCb_SDK(AriSdk::ARI_IBIStwSendAckRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654049280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654049280, 0);
}

void AriSdk::ARI_IBIStwSendAckRspCb_SDK::ARI_IBIStwSendAckRspCb_SDK(AriSdk::ARI_IBIStwSendAckRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendAckRspCb_SDK::~ARI_IBIStwSendAckRspCb_SDK(AriSdk::ARI_IBIStwSendAckRspCb_SDK *this)
{
  *this = &unk_2A1D41A90;
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
  AriSdk::ARI_IBIStwSendAckRspCb_SDK::~ARI_IBIStwSendAckRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendAckRspCb_SDK::pack(AriSdk::ARI_IBIStwSendAckRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSendFileReq_SDK::ARI_IBIStwSendFileReq_SDK(AriSdk::ARI_IBIStwSendFileReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662208512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662208512, 0);
}

void AriSdk::ARI_IBIStwSendFileReq_SDK::ARI_IBIStwSendFileReq_SDK(AriSdk::ARI_IBIStwSendFileReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendFileReq_SDK::~ARI_IBIStwSendFileReq_SDK(AriSdk::ARI_IBIStwSendFileReq_SDK *this)
{
  *this = &unk_2A1D41AC8;
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
  AriSdk::ARI_IBIStwSendFileReq_SDK::~ARI_IBIStwSendFileReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendFileReq_SDK::pack(AriSdk::ARI_IBIStwSendFileReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSendFileReq_SDK::unpack(AriSdk::ARI_IBIStwSendFileReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296207B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void AriSdk::ARI_IBIStwSendFileRspCb_SDK::ARI_IBIStwSendFileRspCb_SDK(AriSdk::ARI_IBIStwSendFileRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -653819904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -653819904, 0);
}

void AriSdk::ARI_IBIStwSendFileRspCb_SDK::ARI_IBIStwSendFileRspCb_SDK(AriSdk::ARI_IBIStwSendFileRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendFileRspCb_SDK::~ARI_IBIStwSendFileRspCb_SDK(AriSdk::ARI_IBIStwSendFileRspCb_SDK *this)
{
  *this = &unk_2A1D41B00;
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
  AriSdk::ARI_IBIStwSendFileRspCb_SDK::~ARI_IBIStwSendFileRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendFileRspCb_SDK::pack(AriSdk::ARI_IBIStwSendFileRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK::ARI_IBIStwSendFileStatusIndCb_SDK(AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645562368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645562368, 0);
}

void AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK::ARI_IBIStwSendFileStatusIndCb_SDK(AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK::~ARI_IBIStwSendFileStatusIndCb_SDK(AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK *this)
{
  *this = &unk_2A1D41B38;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK::~ARI_IBIStwSendFileStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK::pack(AriSdk::ARI_IBIStwSendFileStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIStwSendMsgReq_SDK::ARI_IBIStwSendMsgReq_SDK(AriSdk::ARI_IBIStwSendMsgReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -662470656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -662470656, 0);
}

void AriSdk::ARI_IBIStwSendMsgReq_SDK::ARI_IBIStwSendMsgReq_SDK(AriSdk::ARI_IBIStwSendMsgReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendMsgReq_SDK::~ARI_IBIStwSendMsgReq_SDK(AriSdk::ARI_IBIStwSendMsgReq_SDK *this)
{
  *this = &unk_2A1D41B70;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIStwSendMsgReq_SDK::~ARI_IBIStwSendMsgReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendMsgReq_SDK::pack(AriSdk::ARI_IBIStwSendMsgReq_SDK *this, AriMsg **a2)
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
      v9 = *(this + 12);
      v10 = *(this + 13);
      v11 = !v9 || v9 == v10;
      if (v11 || (result = AriMsg::pack(*(this + 6), 4, v9, v10 - v9, 0), !result))
      {
        v12 = *(this + 15);
        if (!v12 || (result = AriMsg::pack(*(this + 6), 5, v12, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwSendMsgReq_SDK::unpack(AriSdk::ARI_IBIStwSendMsgReq_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

void AriSdk::ARI_IBIStwSendMsgRspCb_SDK::ARI_IBIStwSendMsgRspCb_SDK(AriSdk::ARI_IBIStwSendMsgRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -654082048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -654082048, 0);
}

void AriSdk::ARI_IBIStwSendMsgRspCb_SDK::ARI_IBIStwSendMsgRspCb_SDK(AriSdk::ARI_IBIStwSendMsgRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendMsgRspCb_SDK::~ARI_IBIStwSendMsgRspCb_SDK(AriSdk::ARI_IBIStwSendMsgRspCb_SDK *this)
{
  *this = &unk_2A1D41BA8;
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
  AriSdk::ARI_IBIStwSendMsgRspCb_SDK::~ARI_IBIStwSendMsgRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendMsgRspCb_SDK::pack(AriSdk::ARI_IBIStwSendMsgRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK::ARI_IBIStwSendMsgStatusIndCb_SDK(AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -645726208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -645726208, 0);
}

void AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK::ARI_IBIStwSendMsgStatusIndCb_SDK(AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK::~ARI_IBIStwSendMsgStatusIndCb_SDK(AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK *this)
{
  *this = &unk_2A1D41BE0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
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
  AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK::~ARI_IBIStwSendMsgStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK::pack(AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK *this, AriMsg **a2)
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
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK::unpack(AriSdk::ARI_IBIStwSendMsgStatusIndCb_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}