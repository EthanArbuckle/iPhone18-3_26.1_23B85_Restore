void sub_2961797E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK::ARI_IBICpsConfigureCellularPowerReportReq_SDK(AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015054336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015054336, 0);
}

void AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK::ARI_IBICpsConfigureCellularPowerReportReq_SDK(AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK::~ARI_IBICpsConfigureCellularPowerReportReq_SDK(AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK *this)
{
  *this = &unk_2A1D35828;
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
  AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK::~ARI_IBICpsConfigureCellularPowerReportReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK::pack(AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK::ARI_IBICpsConfigureCellularPowerReportRsp_SDK(AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023442944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023442944, 0);
}

void AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK::ARI_IBICpsConfigureCellularPowerReportRsp_SDK(AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK::~ARI_IBICpsConfigureCellularPowerReportRsp_SDK(AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK *this)
{
  *this = &unk_2A1D35860;
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
  AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK::~ARI_IBICpsConfigureCellularPowerReportRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK::pack(AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK::ARI_IBICpsGetCellularRadioStateReq_SDK(AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015382016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015382016, 0);
}

void AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK::ARI_IBICpsGetCellularRadioStateReq_SDK(AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK::~ARI_IBICpsGetCellularRadioStateReq_SDK(AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK::pack(AriSdk::ARI_IBICpsGetCellularRadioStateReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK::ARI_IBICpsGetCellularRadioStateRspCb_SDK(AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023770624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023770624, 0);
}

void AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK::ARI_IBICpsGetCellularRadioStateRspCb_SDK(AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK::~ARI_IBICpsGetCellularRadioStateRspCb_SDK(AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK *this)
{
  *this = &unk_2A1D358D0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK::~ARI_IBICpsGetCellularRadioStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK::pack(AriSdk::ARI_IBICpsGetCellularRadioStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsHealthActivityReq_SDK::ARI_IBICpsHealthActivityReq_SDK(AriSdk::ARI_IBICpsHealthActivityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015185408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015185408, 0);
}

void AriSdk::ARI_IBICpsHealthActivityReq_SDK::ARI_IBICpsHealthActivityReq_SDK(AriSdk::ARI_IBICpsHealthActivityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsHealthActivityReq_SDK::~ARI_IBICpsHealthActivityReq_SDK(AriSdk::ARI_IBICpsHealthActivityReq_SDK *this)
{
  *this = &unk_2A1D35908;
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
  AriSdk::ARI_IBICpsHealthActivityReq_SDK::~ARI_IBICpsHealthActivityReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsHealthActivityReq_SDK::pack(AriSdk::ARI_IBICpsHealthActivityReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsHealthActivityRsp_SDK::ARI_IBICpsHealthActivityRsp_SDK(AriSdk::ARI_IBICpsHealthActivityRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023574016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023574016, 0);
}

void AriSdk::ARI_IBICpsHealthActivityRsp_SDK::ARI_IBICpsHealthActivityRsp_SDK(AriSdk::ARI_IBICpsHealthActivityRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsHealthActivityRsp_SDK::~ARI_IBICpsHealthActivityRsp_SDK(AriSdk::ARI_IBICpsHealthActivityRsp_SDK *this)
{
  *this = &unk_2A1D35940;
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
  AriSdk::ARI_IBICpsHealthActivityRsp_SDK::~ARI_IBICpsHealthActivityRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsHealthActivityRsp_SDK::pack(AriSdk::ARI_IBICpsHealthActivityRsp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::ARI_IBICpsMaxCellularPowerForRatInd_SDK(AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1031962624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1031962624, 0);
}

void AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::ARI_IBICpsMaxCellularPowerForRatInd_SDK(AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::~ARI_IBICpsMaxCellularPowerForRatInd_SDK(AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK *this)
{
  *this = &unk_2A1D35978;
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
  AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::~ARI_IBICpsMaxCellularPowerForRatInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::pack(AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCambioStateReq_SDK::ARI_IBICpsSetCambioStateReq_SDK(AriSdk::ARI_IBICpsSetCambioStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015218176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015218176, 0);
}

void AriSdk::ARI_IBICpsSetCambioStateReq_SDK::ARI_IBICpsSetCambioStateReq_SDK(AriSdk::ARI_IBICpsSetCambioStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCambioStateReq_SDK::~ARI_IBICpsSetCambioStateReq_SDK(AriSdk::ARI_IBICpsSetCambioStateReq_SDK *this)
{
  *this = &unk_2A1D359B0;
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
  AriSdk::ARI_IBICpsSetCambioStateReq_SDK::~ARI_IBICpsSetCambioStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCambioStateReq_SDK::pack(AriSdk::ARI_IBICpsSetCambioStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCambioStateRsp_SDK::ARI_IBICpsSetCambioStateRsp_SDK(AriSdk::ARI_IBICpsSetCambioStateRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023606784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023606784, 0);
}

void AriSdk::ARI_IBICpsSetCambioStateRsp_SDK::ARI_IBICpsSetCambioStateRsp_SDK(AriSdk::ARI_IBICpsSetCambioStateRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCambioStateRsp_SDK::~ARI_IBICpsSetCambioStateRsp_SDK(AriSdk::ARI_IBICpsSetCambioStateRsp_SDK *this)
{
  *this = &unk_2A1D359E8;
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
  AriSdk::ARI_IBICpsSetCambioStateRsp_SDK::~ARI_IBICpsSetCambioStateRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCambioStateRsp_SDK::pack(AriSdk::ARI_IBICpsSetCambioStateRsp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK::ARI_IBICpsSetCellularRadioStateReq_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015349248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015349248, 0);
}

void AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK::ARI_IBICpsSetCellularRadioStateReq_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK::~ARI_IBICpsSetCellularRadioStateReq_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK *this)
{
  *this = &unk_2A1D35A20;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK::~ARI_IBICpsSetCellularRadioStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK::pack(AriSdk::ARI_IBICpsSetCellularRadioStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK::ARI_IBICpsSetCellularRadioStateRspCb_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023737856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023737856, 0);
}

void AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK::ARI_IBICpsSetCellularRadioStateRspCb_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK::~ARI_IBICpsSetCellularRadioStateRspCb_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK *this)
{
  *this = &unk_2A1D35A58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK::~ARI_IBICpsSetCellularRadioStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK::pack(AriSdk::ARI_IBICpsSetCellularRadioStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK::ARI_IBICpsSetCellularRadioStateIndCb_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1031995392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1031995392, 0);
}

void AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK::ARI_IBICpsSetCellularRadioStateIndCb_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK::~ARI_IBICpsSetCellularRadioStateIndCb_SDK(AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK *this)
{
  *this = &unk_2A1D35A90;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK::~ARI_IBICpsSetCellularRadioStateIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK::pack(AriSdk::ARI_IBICpsSetCellularRadioStateIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCmasModeReq_SDK::ARI_IBICpsSetCmasModeReq_SDK(AriSdk::ARI_IBICpsSetCmasModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015316480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015316480, 0);
}

void AriSdk::ARI_IBICpsSetCmasModeReq_SDK::ARI_IBICpsSetCmasModeReq_SDK(AriSdk::ARI_IBICpsSetCmasModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCmasModeReq_SDK::~ARI_IBICpsSetCmasModeReq_SDK(AriSdk::ARI_IBICpsSetCmasModeReq_SDK *this)
{
  *this = &unk_2A1D35AC8;
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
  AriSdk::ARI_IBICpsSetCmasModeReq_SDK::~ARI_IBICpsSetCmasModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCmasModeReq_SDK::pack(AriSdk::ARI_IBICpsSetCmasModeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK::ARI_IBICpsSetCmasModeRspCb_SDK(AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023705088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023705088, 0);
}

void AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK::ARI_IBICpsSetCmasModeRspCb_SDK(AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK::~ARI_IBICpsSetCmasModeRspCb_SDK(AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK *this)
{
  *this = &unk_2A1D35B00;
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
  AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK::~ARI_IBICpsSetCmasModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK::pack(AriSdk::ARI_IBICpsSetCmasModeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimConfigReq_SDK::ARI_IBIMSimConfigReq_SDK(AriSdk::ARI_IBIMSimConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015152640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015152640, 0);
}

void AriSdk::ARI_IBIMSimConfigReq_SDK::ARI_IBIMSimConfigReq_SDK(AriSdk::ARI_IBIMSimConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimConfigReq_SDK::~ARI_IBIMSimConfigReq_SDK(AriSdk::ARI_IBIMSimConfigReq_SDK *this)
{
  *this = &unk_2A1D35B38;
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
  AriSdk::ARI_IBIMSimConfigReq_SDK::~ARI_IBIMSimConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimConfigReq_SDK::pack(AriSdk::ARI_IBIMSimConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimConfigRspCb_SDK::ARI_IBIMSimConfigRspCb_SDK(AriSdk::ARI_IBIMSimConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023541248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023541248, 0);
}

void AriSdk::ARI_IBIMSimConfigRspCb_SDK::ARI_IBIMSimConfigRspCb_SDK(AriSdk::ARI_IBIMSimConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimConfigRspCb_SDK::~ARI_IBIMSimConfigRspCb_SDK(AriSdk::ARI_IBIMSimConfigRspCb_SDK *this)
{
  *this = &unk_2A1D35B70;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMSimConfigRspCb_SDK::~ARI_IBIMSimConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimConfigRspCb_SDK::pack(AriSdk::ARI_IBIMSimConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimConfigIndCb_SDK::ARI_IBIMSimConfigIndCb_SDK(AriSdk::ARI_IBIMSimConfigIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1031929856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1031929856, 0);
}

void AriSdk::ARI_IBIMSimConfigIndCb_SDK::ARI_IBIMSimConfigIndCb_SDK(AriSdk::ARI_IBIMSimConfigIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimConfigIndCb_SDK::~ARI_IBIMSimConfigIndCb_SDK(AriSdk::ARI_IBIMSimConfigIndCb_SDK *this)
{
  *this = &unk_2A1D35BA8;
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
  AriSdk::ARI_IBIMSimConfigIndCb_SDK::~ARI_IBIMSimConfigIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimConfigIndCb_SDK::pack(AriSdk::ARI_IBIMSimConfigIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimGetConfigReq_SDK::ARI_IBIMSimGetConfigReq_SDK(AriSdk::ARI_IBIMSimGetConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015087104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015087104, 0);
}

void AriSdk::ARI_IBIMSimGetConfigReq_SDK::ARI_IBIMSimGetConfigReq_SDK(AriSdk::ARI_IBIMSimGetConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimGetConfigReq_SDK::~ARI_IBIMSimGetConfigReq_SDK(AriSdk::ARI_IBIMSimGetConfigReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimGetConfigReq_SDK::pack(AriSdk::ARI_IBIMSimGetConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIMSimGetConfigRspCb_SDK::ARI_IBIMSimGetConfigRspCb_SDK(AriSdk::ARI_IBIMSimGetConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023475712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023475712, 0);
}

void AriSdk::ARI_IBIMSimGetConfigRspCb_SDK::ARI_IBIMSimGetConfigRspCb_SDK(AriSdk::ARI_IBIMSimGetConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimGetConfigRspCb_SDK::~ARI_IBIMSimGetConfigRspCb_SDK(AriSdk::ARI_IBIMSimGetConfigRspCb_SDK *this)
{
  *this = &unk_2A1D35C18;
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
  AriSdk::ARI_IBIMSimGetConfigRspCb_SDK::~ARI_IBIMSimGetConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimGetConfigRspCb_SDK::pack(AriSdk::ARI_IBIMSimGetConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK::ARI_IBIMSimGetSimStackMappingReq_SDK(AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015119872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015119872, 0);
}

void AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK::ARI_IBIMSimGetSimStackMappingReq_SDK(AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK::~ARI_IBIMSimGetSimStackMappingReq_SDK(AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK::pack(AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::ARI_IBIMSimGetSimStackMappingRspCb_SDK(AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023508480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023508480, 0);
}

void AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::ARI_IBIMSimGetSimStackMappingRspCb_SDK(AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::~ARI_IBIMSimGetSimStackMappingRspCb_SDK(AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK *this)
{
  *this = &unk_2A1D35C88;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B4868423);
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
  AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::~ARI_IBIMSimGetSimStackMappingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::pack(AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
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

void AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK::ARI_CsiMSimGetSimStackMappingStatusReq_SDK(AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015250944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015250944, 0);
}

void AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK::ARI_CsiMSimGetSimStackMappingStatusReq_SDK(AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK::~ARI_CsiMSimGetSimStackMappingStatusReq_SDK(AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK::pack(AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK(AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023639552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023639552, 0);
}

void AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK(AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::~ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK(AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK *this)
{
  *this = &unk_2A1D35CF8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::~ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::pack(AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK::ARI_IBIMSimRemapStatusIndCb_SDK(AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1031864320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1031864320, 0);
}

void AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK::ARI_IBIMSimRemapStatusIndCb_SDK(AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK::~ARI_IBIMSimRemapStatusIndCb_SDK(AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK *this)
{
  *this = &unk_2A1D35D30;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK::~ARI_IBIMSimRemapStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK::pack(AriSdk::ARI_IBIMSimRemapStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK::ARI_IBIMSimSetCurrentDataSimReq_SDK(AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1015283712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1015283712, 0);
}

void AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK::ARI_IBIMSimSetCurrentDataSimReq_SDK(AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK::~ARI_IBIMSimSetCurrentDataSimReq_SDK(AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK *this)
{
  *this = &unk_2A1D35D68;
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
  AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK::~ARI_IBIMSimSetCurrentDataSimReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK::pack(AriSdk::ARI_IBIMSimSetCurrentDataSimReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK::ARI_IBIMSimSetCurrentDataSimRsp_SDK(AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1023672320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1023672320, 0);
}

void AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK::ARI_IBIMSimSetCurrentDataSimRsp_SDK(AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK::~ARI_IBIMSimSetCurrentDataSimRsp_SDK(AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK *this)
{
  *this = &unk_2A1D35DA0;
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
  AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK::~ARI_IBIMSimSetCurrentDataSimRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK::pack(AriSdk::ARI_IBIMSimSetCurrentDataSimRsp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK::ARI_IBIMSimSimStackMappingIndCb_SDK(AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1031897088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1031897088, 0);
}

void AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK::ARI_IBIMSimSimStackMappingIndCb_SDK(AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK::~ARI_IBIMSimSimStackMappingIndCb_SDK(AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK *this)
{
  *this = &unk_2A1D35DD8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK::~ARI_IBIMSimSimStackMappingIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK::pack(AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK::unpack(AriSdk::ARI_IBIMSimSimStackMappingIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29617F114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void AriHost::AriHost(AriHost *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 7) = 0u;
  v11 = 0;
  *(this + 8) = 0u;
  *(this + 36) = 1065353216;
  IDMgr::IDMgr((this + 152), 1, 0xFFFF);
  *(this + 26) = 0;
  *(this + 216) = 0;
  v2 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v11 != v10)
  {
    v2 = (*(*v11 + 16))();
LABEL_4:
    *(this + 31) = v2;
    goto LABEL_6;
  }

  *(this + 31) = this + 224;
  (*(*v2 + 24))(v2, this + 224);
LABEL_6:
  AriOsa::SWTrap(0, "max >= INVALID_RES_ID", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x8A);
  AriOsa::SWTrap(0, "id==NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", 0x78);
  v3 = dispatch_semaphore_create(1);
  *(this + 26) = v3;
  if (v3)
  {
    *(this + 216) = 1;
  }

  std::__function::__value_func<void ()(int,unsigned int,AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](v10);
  *(this + 64) = -1;
  std::string::basic_string[abi:ne200100]<0>(__p, "work queue");
  Ari::ClientWorkQueue::ClientWorkQueue(this + 264, __p, 1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "low-priority queue");
  Ari::ClientWorkQueue::ClientWorkQueue(this + 344, __p, 1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 1065353216;
  IDMgr::IDMgr((this + 464), 1, 126);
  *(this + 65) = 0;
  *(this + 528) = 0;
  *(this + 70) = 0;
  AriOsa::SWTrap(0, "max >= INVALID_RES_ID", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x8A);
  AriOsa::SWTrap(0, "id==NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", 0x78);
  v4 = dispatch_semaphore_create(1);
  *(this + 65) = v4;
  if (v4)
  {
    *(this + 528) = 1;
  }

  std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<AriHost::ClientData> &)>::~__value_func[abi:ne200100](v8);
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 150) = 1065353216;
  *(this + 76) = 0;
  *(this + 78) = 0;
  *(this + 77) = 0;
  *(this + 79) = 850045863;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 704) = 0;
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29617F458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  IDMgr::~IDMgr((v19 + 152));
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::~__hash_table(v22);
  std::__function::__value_func<void ()(int,unsigned int,AriHost::IndicationHandlerList &)>::~__value_func[abi:ne200100](&a19);
  std::__list_imp<unsigned int>::clear(v21);
  std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::~__hash_table(v19 + 8);
  _Unwind_Resume(a1);
}

void AriHost::~AriHost(AriHost *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_release(v2);
  }

  std::mutex::~mutex((this + 632));
  std::__forward_list_base<std::shared_ptr<Ari::Actor>>::clear(this + 78);
  v3 = *(this + 77);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 73);
  if (v4)
  {
    do
    {
      v5 = *v4;
      v6 = v4[4];
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v7 = *(this + 71);
  *(this + 71) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (*(this + 56))
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__deallocate_node(*(this + 55));
    *(this + 55) = 0;
    v8 = *(this + 54);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        *(*(this + 53) + 8 * i) = 0;
      }
    }

    *(this + 56) = 0;
  }

  v10 = *(this + 65);
  if (v10)
  {
    dispatch_release(v10);
  }

  std::__function::__value_func<void ()(int,unsigned int,std::shared_ptr<AriHost::ClientData> &)>::~__value_func[abi:ne200100](this + 536);
  std::__tree<IDMgr::Range>::destroy(this + 496, *(this + 63));
  std::__tree<IDMgr::Range>::destroy(this + 472, *(this + 60));
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::~__hash_table(this + 424);
  Ari::ClientWorkQueue::~ClientWorkQueue(this + 43);
  Ari::ClientWorkQueue::~ClientWorkQueue(this + 33);
  ResMgr<AriHost::IndicationHandlerList>::~ResMgr(this + 112);
  std::__list_imp<unsigned int>::clear(this + 11);
  std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::~__hash_table(this + 8);
}

uint64_t AriHost::GetInstance(AriHost *this)
{
  if ((atomic_load_explicit(&qword_2A18990C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18990C0))
  {
    __cxa_atexit(std::shared_ptr<AriHost>::~shared_ptr[abi:ne200100], &qword_2A18990C8, &dword_296048000);
    __cxa_guard_release(&qword_2A18990C0);
  }

  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_0);
  }

  return qword_2A18990C8;
}

uint64_t std::shared_ptr<AriHost>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void ___ZN7AriHost11GetInstanceEv_block_invoke()
{
  if (!qword_2A1899100 || *(qword_2A1899100 + 8) == -1)
  {
    operator new();
  }
}

void sub_29617F80C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t AriHost::Init(AriHost *this)
{
  if (AriHost::Init(void)::pred != -1)
  {
    dispatch_once(&AriHost::Init(void)::pred, &__block_literal_global_5);
  }

  return 0;
}

void ___ZN7AriHost4InitEv_block_invoke(AriHost *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  Instance = AriHost::GetInstance(a1);
  AriOsa_Init_Time = std::chrono::system_clock::now().__d_.__rep_;
  AriOsa::SWTrap(0, "AriOsa::Init() != ARI_RESULT_OK", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", 0x5D);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("AriHost", v2);
  *Instance = v3;
  Ari::AriClient::create(v3);
}

void sub_29617FAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::registerActors(AriHost *this, dispatch_group_s *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "registerActors", &__p);
      v3 = v7 >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v3;
      v9 = 1024;
      v10 = 127;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Registering AriHost actors", buf, 0x1Cu);
      if (v7 < 0)
      {
        operator delete(__p);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "registerActors", buf);
    if (v9 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Registering AriHost actors", v4, v5, 127);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(*buf);
    }
  }

  memset(buf, 170, 16);
  Ari::IndicationReregistrationActor::create(this);
}

void sub_29617FDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 89) < 0)
  {
    operator delete(*(v23 - 112));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost14registerActorsEP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (qword_2A1899100)
  {
    v2 = std::__shared_weak_count::lock(qword_2A1899100);
    if (v2)
    {
      v3 = v2;
      v4 = AriHost::SingletonWeakPtr;
      if (AriHost::SingletonWeakPtr)
      {
        v5 = *(a1 + 40);
        v24 = *(a1 + 32);
        v25 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = Ari::ActorList::registerActor(v4 + 624, &v24);
        v7 = v25;
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v6 && (DefaultLogLevel & 0x10) != 0)
        {
          OsLog = AriOsa::GetOsLog(v7);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "registerActors_block_invoke", __p);
            v9 = v23;
            v10 = __p[0];
            v11 = (*(**(a1 + 32) + 16))(*(a1 + 32));
            v12 = __p;
            if (v9 < 0)
            {
              v12 = v10;
            }

            v13 = *v11;
            v14 = *(v11 + 23) < 0;
            *buf = 136315906;
            if (!v14)
            {
              v13 = v11;
            }

            *&buf[4] = "ari";
            v27 = 2080;
            v28 = v12;
            v29 = 0;
            v30 = 4;
            v31 = 137;
            v32 = 2080;
            v33 = v13;
            _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to register %s", buf, 0x26u);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "registerActors_block_invoke", buf);
          v15 = v30;
          v16 = *buf;
          v17 = (*(**(a1 + 32) + 16))(*(a1 + 32));
          v19 = buf;
          if (v15 < 0)
          {
            v19 = v16;
          }

          if (*(v17 + 23) >= 0)
          {
            v20 = v17;
          }

          else
          {
            v20 = *v17;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to register %s", v18, v19, 137, v20);
          if (v30 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_296180038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrIN3Ari5ActorEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrIN3Ari5ActorEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN7AriHost14registerActorsEP16dispatch_group_s_block_invoke_17(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (qword_2A1899100)
  {
    v2 = std::__shared_weak_count::lock(qword_2A1899100);
    if (v2)
    {
      v3 = v2;
      v4 = AriHost::SingletonWeakPtr;
      if (AriHost::SingletonWeakPtr)
      {
        v5 = *(a1 + 40);
        v24 = *(a1 + 32);
        v25 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = Ari::ActorList::registerActor(v4 + 624, &v24);
        v7 = v25;
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v6 && (DefaultLogLevel & 0x10) != 0)
        {
          OsLog = AriOsa::GetOsLog(v7);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "registerActors_block_invoke", __p);
            v9 = v23;
            v10 = __p[0];
            v11 = (*(**(a1 + 32) + 16))(*(a1 + 32));
            v12 = __p;
            if (v9 < 0)
            {
              v12 = v10;
            }

            v13 = *v11;
            v14 = *(v11 + 23) < 0;
            *buf = 136315906;
            if (!v14)
            {
              v13 = v11;
            }

            *&buf[4] = "ari";
            v27 = 2080;
            v28 = v12;
            v29 = 0;
            v30 = 4;
            v31 = 149;
            v32 = 2080;
            v33 = v13;
            _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to register %s", buf, 0x26u);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "registerActors_block_invoke", buf);
          v15 = v30;
          v16 = *buf;
          v17 = (*(**(a1 + 32) + 16))(*(a1 + 32));
          v19 = buf;
          if (v15 < 0)
          {
            v19 = v16;
          }

          if (*(v17 + 23) >= 0)
          {
            v20 = v17;
          }

          else
          {
            v20 = *v17;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to register %s", v18, v19, 149, v20);
          if (v30 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_29618030C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void AriHost::HandleRTServerInitialized(AriHost *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = getprogname();
  if (strncmp(v1, "CommCenter", 0x10uLL))
  {
    v2 = getprogname();
    if (strncmp(v2, "CommCenter-asan", 0x10uLL))
    {
      v3 = getprogname();
      if (strncmp(v3, "basebandd", 0x10uLL))
      {
        v4 = qword_2A1899100;
        if (qword_2A1899100)
        {
          v4 = std::__shared_weak_count::lock(qword_2A1899100);
          v5 = v4;
          if (v4)
          {
            v6 = AriHost::SingletonWeakPtr;
            if (AriHost::SingletonWeakPtr)
            {
              if ((DefaultLogLevel & 0x20) != 0)
              {
                OsLog = AriOsa::GetOsLog(v4);
                if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
                {
                  AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "HandleRTServerInitialized", __p);
                  v8 = v22 >= 0 ? __p : __p[0];
                  *buf = 136315650;
                  *&buf[4] = "ari";
                  v24 = 2080;
                  v25 = v8;
                  v26 = 1024;
                  v27 = 1867;
                  _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Ari server initialized; reconnect...", buf, 0x1Cu);
                  if (v22 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "HandleRTServerInitialized", buf);
                if (v26 >= 0)
                {
                  v10 = buf;
                }

                else
                {
                  v10 = *buf;
                }

                AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Ari server initialized; reconnect...", v9, v10, 1867);
                if (SHIBYTE(v26) < 0)
                {
                  operator delete(*buf);
                }
              }

              Instance = AriHost::GetInstance(v4);
              v12 = *Instance;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 1174405120;
              block[2] = ___ZN7AriHost25HandleRTServerInitializedEv_block_invoke;
              block[3] = &__block_descriptor_tmp_226;
              block[4] = v6;
              v19 = v5;
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              v20 = Instance;
              dispatch_async(v12, block);
              if (v19)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              }

LABEL_35:
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
              goto LABEL_36;
            }
          }
        }

        else
        {
          v5 = 0;
        }

        if ((DefaultLogLevel & 0x10) != 0)
        {
          v13 = AriOsa::GetOsLog(v4);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "HandleRTServerInitialized", __p);
            v14 = v22 >= 0 ? __p : __p[0];
            *buf = 136315650;
            *&buf[4] = "ari";
            v24 = 2080;
            v25 = v14;
            v26 = 1024;
            v27 = 1863;
            _os_log_impl(&dword_296048000, v13, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance", buf, 0x1Cu);
            if (v22 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "HandleRTServerInitialized", buf);
          if (v26 >= 0)
          {
            v16 = buf;
          }

          else
          {
            v16 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance", v15, v16, 1863);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(*buf);
          }
        }

        if (v5)
        {
          goto LABEL_35;
        }
      }
    }
  }

LABEL_36:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t AriHost::RegisterClient(AriHost *this, char *a2, int *a3, dispatch_queue_s *a4, uint64_t a5)
{
  v6 = a4;
  v60 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v10 = a2 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || a3 == 0;
  v13 = AriOsa::SWTrap(v12, "(clientId == NULL) || (name == NULL) || (jobQueue == NULL)", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", 0xAD);
  Instance = AriHost::GetInstance(v13);
  if (AriHost::Init(void)::pred != -1)
  {
    dispatch_once(&AriHost::Init(void)::pred, &__block_literal_global_5);
  }

  v15 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v15 = std::__shared_weak_count::lock(qword_2A1899100);
    v16 = v15;
    if (v15 && AriHost::SingletonWeakPtr)
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x2000000000;
      v48 = -1431655766;
      v41 = 0;
      v42 = &v41;
      v43 = 0x2000000000;
      v44 = -1;
      v17 = *Instance;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN7AriHost14RegisterClientEPKcPiP16dispatch_queue_sjj_block_invoke;
      block[3] = &unk_29EE0FB90;
      block[6] = Instance;
      block[7] = this;
      block[4] = &v41;
      block[5] = &v45;
      block[8] = a3;
      v39 = v6;
      v40 = a5;
      dispatch_sync(v17, block);
      v19 = *(v42 + 6);
      if (v19)
      {
        if ((DefaultLogLevel & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(v18);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegisterClient", __p);
            v35 = v37 >= 0 ? __p : __p[0];
            *buf = 136315906;
            *&buf[4] = "ari";
            v50 = 2080;
            v51 = v35;
            v52 = 1024;
            v53 = 236;
            v54 = 2080;
            *v55 = this;
            _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to register client %s", buf, 0x26u);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegisterClient", buf);
          if (v52 >= 0)
          {
            v22 = buf;
          }

          else
          {
            v22 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to register client %s", v21, v22, 236, this);
          if (SHIBYTE(v52) < 0)
          {
            operator delete(*buf);
          }

          v19 = *(v42 + 6);
        }
      }

      else
      {
        *a2 = (v46[3] & 0x7F) << 8;
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v26 = AriOsa::GetOsLog(v18);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegisterClient", __p);
            v27 = v37 >= 0 ? __p : __p[0];
            v28 = *(v46 + 6);
            v29 = *a2;
            *buf = 136316674;
            *&buf[4] = "ari";
            v50 = 2080;
            v51 = v27;
            v52 = 1024;
            v53 = 244;
            v54 = 1024;
            *v55 = v28;
            *&v55[4] = 1024;
            *&v55[6] = v29;
            v56 = 2080;
            v57 = this;
            v58 = 1024;
            v59 = a5;
            _os_log_impl(&dword_296048000, v26, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Allocated cid(0x%02x) ARICtxId(0x%08x) client(%s) maxOutstandingReqs(%d)", buf, 0x38u);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegisterClient", buf);
          if (v52 >= 0)
          {
            v31 = buf;
          }

          else
          {
            v31 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Allocated cid(0x%02x) ARICtxId(0x%08x) client(%s) maxOutstandingReqs(%d)", v30, v31, 244, *(v46 + 6), *a2, this, a5);
          if (SHIBYTE(v52) < 0)
          {
            operator delete(*buf);
          }
        }

        v19 = 0;
      }

      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v45, 8);
LABEL_48:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      goto LABEL_49;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v23 = AriOsa::GetOsLog(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegisterClient", &v45);
      v34 = v47 >= 0 ? &v45 : v45;
      *buf = 136315650;
      *&buf[4] = "ari";
      v50 = 2080;
      v51 = v34;
      v52 = 1024;
      v53 = 182;
      _os_log_error_impl(&dword_296048000, v23, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to lock on AriHost instance!!", buf, 0x1Cu);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v45);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegisterClient", buf);
    if (v52 >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to lock on AriHost instance!!", v24, v25, 182);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(*buf);
    }
  }

  v19 = 0xFFFFFFFFLL;
  if (v16)
  {
    goto LABEL_48;
  }

LABEL_49:
  v32 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_296180C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 176), 8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

AriHost *___ZN7AriHost14RegisterClientEPKcPiP16dispatch_queue_sjj_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  result = (*(**(*(a1 + 48) + 608) + 24))(*(*(a1 + 48) + 608), *(a1 + 56), *(*(a1 + 40) + 8) + 24, *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    AriHost::putAsideReconnectingClientData_nl(result, *(*(*(a1 + 40) + 8) + 24));
    operator new();
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2961813B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL AriHost::putAsideReconnectingClientData_nl(AriHost *this, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  Instance = AriHost::GetInstance(this);
  result = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(Instance + 424, a2);
  if (result)
  {
    v5 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](Instance + 424, a2);
    v7 = *v5;
    v6 = v5[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(v5);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "putAsideReconnectingClientData_nl", __p);
        v9 = __p[0];
        if (v16 >= 0)
        {
          v9 = __p;
        }

        v10 = v7;
        if (*(v7 + 23) < 0)
        {
          v10 = *v7;
        }

        *buf = 136316162;
        *&buf[4] = "ari";
        v18 = 2080;
        v19 = v9;
        v20 = 1024;
        v21 = 1723;
        v22 = 2080;
        v23 = v10;
        v24 = 1024;
        v25 = a2;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Putting aside ClientData for %s cid 0x%x.", buf, 0x2Cu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "putAsideReconnectingClientData_nl", buf);
      if (v20 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }

      v13 = v7;
      if (*(v7 + 23) < 0)
      {
        v13 = *v7;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Putting aside ClientData for %s cid 0x%x.", v11, v12, 1723, v13, a2);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296181954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2961819B0()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
    JUMPOUT(0x2961819A0);
  }

  JUMPOUT(0x2961819A8);
}

AriOsa *ResMgr<std::shared_ptr<AriHost::ClientData>>::set(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = a2;
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xB4);
  v6 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v6, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xB5);
  v7 = IDMgr::allocate((a1 + 40), a2);
  ResMgr<std::shared_ptr<AriHost::ClientData>>::sw_dbug_trap(a1, v7 ^ 1, v8);
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v10 = AriOsa_Init_Time;
  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = &v16;
  v13 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, a2);
  *(v13 + 6) = (rep - v10) / 1000;
  v14 = v13[5];
  v13[4] = v12;
  v13[5] = v11;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  dispatch_semaphore_signal(*(a1 + 96));
  return AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xBA);
}

void sub_296181B0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::TransactionMgr::setMaxOutstanding(AriHost::TransactionMgr *this, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(this + 64) == a2)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setMaxOutstanding", __p);
        v4 = v18 >= 0 ? __p : __p[0];
        v5 = *(this + 36);
        v6 = *(this + 64);
        *buf = 136316162;
        *&buf[4] = "ari";
        v20 = 2080;
        v21 = v4;
        v22 = 1024;
        v23 = 2327;
        v24 = 1024;
        v25 = v5;
        v26 = 1024;
        v27 = v6;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Max outstanding for cid 0x%x already at %u", buf, 0x28u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setMaxOutstanding", buf);
      if (v22 >= 0)
      {
        v8 = buf;
      }

      else
      {
        v8 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Max outstanding for cid 0x%x already at %u", v7, v8, 2327, *(this + 36), *(this + 64));
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v10 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setMaxOutstanding", __p);
        v11 = v18 >= 0 ? __p : __p[0];
        v12 = *(this + 36);
        v13 = *(this + 64);
        *buf = 136316418;
        *&buf[4] = "ari";
        v20 = 2080;
        v21 = v11;
        v22 = 1024;
        v23 = 2331;
        v24 = 1024;
        v25 = v12;
        v26 = 1024;
        v27 = v13;
        v28 = 1024;
        v29 = a2;
        _os_log_impl(&dword_296048000, v10, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Updating max outstanding for cid 0x%x from %u to %u", buf, 0x2Eu);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "setMaxOutstanding", buf);
      if (v22 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Updating max outstanding for cid 0x%x from %u to %u", v14, v15, 2331, *(this + 36), *(this + 64), a2);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*buf);
      }
    }

    *(this + 64) = a2;
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_296181DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](uint64_t a1, int a2)
{
  v9 = a2;
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xA6);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xA7);
  v5 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2) == 0;
  ResMgr<std::shared_ptr<AriHost::ClientData>>::sw_dbug_trap(a1, v5, v6);
  v10 = &v9;
  v7 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::ClientData>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, a2);
  dispatch_semaphore_signal(*(a1 + 96));
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xAC);
  return v7 + 4;
}

uint64_t AriHost::DeregisterClient(AriHost *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v2 = std::__shared_weak_count::lock(qword_2A1899100);
    v3 = v2;
    if (v2 && AriHost::SingletonWeakPtr)
    {
      Instance = AriHost::GetInstance(v2);
      __p = 0;
      p_p = &__p;
      v30 = 0x2000000000;
      v31 = -1;
      v5 = *(AriHost::GetInstance(Instance) + 608) == 0;
      AriOsa::SWTrap(v5, "GetInstance().rtProxy == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", 0x107);
      v6 = *Instance;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN7AriHost16DeregisterClientEi_block_invoke;
      block[3] = &unk_29EE0FBB8;
      v26 = (this >> 8) & 0x7F;
      v27 = this;
      block[4] = &__p;
      block[5] = Instance;
      dispatch_sync(v6, block);
      v8 = *(p_p + 6);
      if (v8)
      {
        if ((DefaultLogLevel & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(v7);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient", v23);
            v22 = v24 >= 0 ? v23 : v23[0];
            *buf = 136315906;
            *&buf[4] = "ari";
            v33 = 2080;
            v34 = v22;
            v35 = 1024;
            v36 = 288;
            v37 = 1024;
            v38 = this;
            _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to de-register client 0x%x", buf, 0x22u);
            if (v24 < 0)
            {
              operator delete(v23[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient", buf);
          if (v35 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to de-register client 0x%x", v10, v11, 288, this);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }

          v8 = *(p_p + 6);
        }
      }

      else
      {
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v16 = AriOsa::GetOsLog(v7);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient", v23);
            v17 = v24 >= 0 ? v23 : v23[0];
            *buf = 136316162;
            *&buf[4] = "ari";
            v33 = 2080;
            v34 = v17;
            v35 = 1024;
            v36 = 292;
            v37 = 1024;
            v38 = (this >> 8) & 0x7F;
            v39 = 1024;
            v40 = this;
            _os_log_impl(&dword_296048000, v16, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Deallocated cid(0x%x) based on ARICtxId(0x%08x)", buf, 0x28u);
            if (v24 < 0)
            {
              operator delete(v23[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient", buf);
          if (v35 >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Deallocated cid(0x%x) based on ARICtxId(0x%08x)", v18, v19, 292, (this >> 8) & 0x7F, this);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }

        v8 = 0;
      }

      _Block_object_dispose(&__p, 8);
LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      goto LABEL_43;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    v12 = AriOsa::GetOsLog(v2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient", &__p);
      v13 = v30 >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "ari";
      v33 = 2080;
      v34 = v13;
      v35 = 1024;
      v36 = 255;
      _os_log_impl(&dword_296048000, v12, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient", buf);
    if (v35 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v14, v15, 255);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = 0xFFFFFFFFLL;
  if (v3)
  {
    goto LABEL_42;
  }

LABEL_43:
  v20 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2961823BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void ___ZN7AriHost16DeregisterClientEi_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 40) + 424, *(a1 + 48));
  if (isAlloc)
  {
    v3 = (*(**(*(a1 + 40) + 608) + 32))(*(*(a1 + 40) + 608), *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = v3;
    if (*(*(*(a1 + 32) + 8) + 24) && (DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v3);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient_block_invoke", v18);
        v16 = v19 >= 0 ? v18 : v18[0];
        v17 = *(a1 + 48);
        *__p = 136315906;
        *&__p[4] = "ari";
        v21 = 2080;
        v22 = v16;
        v23 = 1024;
        v24 = 277;
        v25 = 1024;
        v26 = v17;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed client deregistration with RT for cid 0x%x", __p, 0x22u);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient_block_invoke", __p);
      if (v23 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed client deregistration with RT for cid 0x%x", v5, v6, 277, *(a1 + 48));
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*__p);
      }
    }

    ResMgr<std::shared_ptr<AriHost::ClientData>>::free(*(a1 + 40) + 424, *(a1 + 48));
    v7 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((*(a1 + 40) + 8), *(a1 + 48));
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    AriHost::TransactionMgr::clear((v7 + 3));
    v9 = *(a1 + 40);
    v8 = (a1 + 40);
    Ari::ClientWorkQueue::abort((v9 + 264), v8[2]);
    Ari::ClientWorkQueue::abort((*v8 + 344), v8[2]);
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v10 = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient_block_invoke", v18);
        v14 = v19 >= 0 ? v18 : v18[0];
        v15 = *(a1 + 52);
        *__p = 136315906;
        *&__p[4] = "ari";
        v21 = 2080;
        v22 = v14;
        v23 = 1024;
        v24 = 269;
        v25 = 1024;
        v26 = v15;
        _os_log_error_impl(&dword_296048000, v10, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Attempt to de-register non-existant client ID 0x%x", __p, 0x22u);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregisterClient_block_invoke", __p);
      if (v23 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Attempt to de-register non-existant client ID 0x%x", v11, v12, 269, *(a1 + 52));
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*__p);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_2961827A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(uint64_t a1, int a2)
{
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x103);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x105);
  isAlloc = IDMgr::isAlloc((a1 + 40), a2);
  dispatch_semaphore_signal(*(a1 + 96));
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x107);
  return isAlloc;
}

AriOsa *ResMgr<std::shared_ptr<AriHost::ClientData>>::free(uint64_t a1, uint64_t a2)
{
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xEB);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xEC);
  v5 = IDMgr::_free((a1 + 40), a2, a1 + 48);
  ResMgr<std::shared_ptr<AriHost::ClientData>>::sw_dbug_trap(a1, v5 ^ 1, v6);
  v7 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  v10 = *v7;
  v11 = v7[1];
  v12 = vcnt_s8(v9);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    if (v11 >= *&v9)
    {
      v11 %= *&v9;
    }
  }

  else
  {
    v11 &= *&v9 - 1;
  }

  v13 = *(*a1 + 8 * v11);
  do
  {
    v14 = v13;
    v13 = *v13;
  }

  while (v13 != v7);
  if (v14 == (a1 + 16))
  {
    goto LABEL_18;
  }

  v15 = v14[1];
  if (v12.u32[0] > 1uLL)
  {
    if (v15 >= *&v9)
    {
      v15 %= *&v9;
    }
  }

  else
  {
    v15 &= *&v9 - 1;
  }

  if (v15 != v11)
  {
LABEL_18:
    if (v10)
    {
      v16 = *(v10 + 8);
      if (v12.u32[0] > 1uLL)
      {
        v17 = *(v10 + 8);
        if (v16 >= *&v9)
        {
          v17 = v16 % *&v9;
        }
      }

      else
      {
        v17 = v16 & (*&v9 - 1);
      }

      if (v17 == v11)
      {
        goto LABEL_22;
      }
    }

    *(*a1 + 8 * v11) = 0;
    v10 = *v7;
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  v16 = *(v10 + 8);
LABEL_22:
  if (v12.u32[0] > 1uLL)
  {
    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }
  }

  else
  {
    v16 &= *&v9 - 1;
  }

  if (v16 != v11)
  {
    *(*a1 + 8 * v16) = v14;
    v10 = *v7;
  }

LABEL_28:
  *v14 = v10;
  *v7 = 0;
  --*(a1 + 24);
  v18 = v7[5];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  operator delete(v8);
  dispatch_semaphore_signal(*(a1 + 96));

  return AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xF1);
}

void AriHost::TransactionMgr::clear(AriHost::TransactionMgr *this)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "clear", __p);
      v3 = v10 >= 0 ? __p : __p[0];
      v4 = *(this + 36);
      *buf = 136315906;
      *&buf[4] = "ari";
      v12 = 2080;
      v13 = v3;
      v14 = 1024;
      v15 = 2285;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Clearing transaction manager for cid 0x%x", buf, 0x22u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "clear", buf);
    if (v14 >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Clearing transaction manager for cid 0x%x", v5, v6, 2285, *(this + 36));
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*buf);
    }
  }

  AriOsa::SWTrap((*(this + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x9B);
  v7 = dispatch_semaphore_wait(*(this + 12), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v7, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x9C);
  IDMgr::reset((this + 40));
  std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::clear(this);
  dispatch_semaphore_signal(*(this + 12));
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0x9F);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::clear(this + 22);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::clear(this + 27);
  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(this + 19);
  *(this + 260) = 0;
  v8 = *MEMORY[0x29EDCA608];
}

void sub_296182CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::Send(AriMsg *a1, int a2, uint64_t a3, char a4, int a5)
{
  v32 = *MEMORY[0x29EDCA608];
  v24 = -1431655766;
  EncodedBuf = AriMsg::getEncodedBuf(a1, &v24);
  v11 = EncodedBuf;
  if (EncodedBuf)
  {
    v13 = AriHost::SendInternal(EncodedBuf, v24, a2, a3, a4, a5, 1);
    if (!v13)
    {
      BufHeader = AriMsg::GetBufHeader(v11, v24);
      if (BufHeader)
      {
        v15 = *(BufHeader + 2) >> 17;
      }

      else
      {
        v15 = 0x8000;
      }

      v13 = *(a1 + 17);
      if (!v13)
      {
        *(a1 + 16) = v15;
      }
    }

    AriMsg::ReleaseEncodedMessage(v11, v12);
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "Send", v22);
        v21 = v23 >= 0 ? v22 : v22[0];
        *v25 = 136315906;
        *&v25[4] = "ari";
        v26 = 2080;
        v27 = v21;
        v28 = 1024;
        v29 = 314;
        v30 = 2048;
        v31 = a1;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) CopyEncodedMessage fails on msg(%p)", v25, 0x26u);
        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "Send", v25);
      if (v28 >= 0)
      {
        v18 = v25;
      }

      else
      {
        v18 = *v25;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) CopyEncodedMessage fails on msg(%p)", v17, v18, 314, a1);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(*v25);
      }
    }

    v13 = 0xFFFFFFFFLL;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_296182EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::SendInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, int a6, char a7)
{
  v43 = *MEMORY[0x29EDCA608];
  v8 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v8 = std::__shared_weak_count::lock(qword_2A1899100);
    v15 = v8;
    if (v8 && AriHost::SingletonWeakPtr)
    {
      if (a1 && a2)
      {
        Instance = AriHost::GetInstance(v8);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v38 = 0;
        v17 = *Instance;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = ___ZN7AriHost12SendInternalEPhjiU13block_pointerFiS0_jEbjb_block_invoke;
        block[3] = &unk_29EE0FBE0;
        v30 = a3;
        v31 = a2;
        block[6] = a1;
        block[7] = Instance;
        block[4] = a4;
        block[5] = buf;
        v33 = a7;
        v34 = a5;
        v32 = a6;
        dispatch_sync(v17, block);
        v18 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        if ((DefaultLogLevel & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(v8);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SendInternal", __p);
            v28 = v36 >= 0 ? __p : __p[0];
            *buf = 136316162;
            *&buf[4] = "ari";
            *&buf[12] = 2080;
            *&buf[14] = v28;
            *&buf[22] = 1024;
            v38 = 364;
            v39 = 2048;
            v40 = a1;
            v41 = 1024;
            v42 = a2;
            _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invoked with illegal buffer(%p) or size(%u)", buf, 0x2Cu);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SendInternal", buf);
          if (buf[23] >= 0)
          {
            v25 = buf;
          }

          else
          {
            v25 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invoked with illegal buffer(%p) or size(%u)", v24, v25, 364, a1, a2);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v18 = 0xFFFFFFFFLL;
      }

LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      goto LABEL_31;
    }
  }

  else
  {
    v15 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    v19 = AriOsa::GetOsLog(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SendInternal", __p);
      v20 = v36 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v20;
      *&buf[22] = 1024;
      v38 = 358;
      _os_log_impl(&dword_296048000, v19, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SendInternal", buf);
    if (buf[23] >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v21, v22, 358);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v18 = 0xFFFFFFFFLL;
  if (v15)
  {
    goto LABEL_30;
  }

LABEL_31:
  v26 = *MEMORY[0x29EDCA608];
  return v18;
}

void ___ZN7AriHost12SendInternalEPhjiU13block_pointerFiS0_jEbjb_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 64);
  AriMsg::GetBufGmid(*(a1 + 48), *(a1 + 68));
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 56) + 424, (v2 >> 8) & 0x7F);
  if (isAlloc)
  {
    operator new();
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SendInternal_block_invoke", __p);
      v8 = v11 >= 0 ? __p : __p[0];
      v9 = *(a1 + 64);
      *buf = 136316162;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      v13 = 1024;
      v14 = 380;
      v15 = 1024;
      v16 = v9;
      v17 = 1024;
      v18 = (v2 >> 8) & 0x7F;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) clientCtxId(0x%08x) or cid(0x%08x) has not registered with AriHost", buf, 0x28u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "SendInternal_block_invoke", buf);
    if (v13 >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) clientCtxId(0x%08x) or cid(0x%08x) has not registered with AriHost", v5, v6, 380, *(a1 + 64), (v2 >> 8) & 0x7F);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = -1;
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t *ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::operator[](uint64_t a1, int a2)
{
  v9 = a2;
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xA6);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xA7);
  v5 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2) == 0;
  ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::sw_dbug_trap(a1, v5, v6);
  v10 = &v9;
  v7 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, a2);
  dispatch_semaphore_signal(*(a1 + 96));
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xAC);
  return v7 + 4;
}

void AriHost::TransactionMgr::trackSend(uint64_t a1, std::__shared_weak_count **a2)
{
  v107 = *MEMORY[0x29EDCA608];
  Instance = AriHost::GetInstance(a1);
  v5 = Instance;
  if (!*(a1 + 144))
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(Instance);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", v96);
        v79 = v97 >= 0 ? v96 : v96[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v99 = 2080;
        v100 = v79;
        v101 = 1024;
        v102 = 2115;
        v103 = 1024;
        *v104 = 0;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Fatal to send requests against transaction manager of cid 0x%x", __p, 0x22u);
        if (v97 < 0)
        {
          operator delete(v96[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", __p);
      if (v101 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Fatal to send requests against transaction manager of cid 0x%x", v7, v8, 2115, 0);
      if (SHIBYTE(v101) < 0)
      {
        operator delete(*__p);
      }
    }

    AriOsa::OsSleep(0x7D0);
    Instance = AriOsa::SWTrap(1, "1", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", 0x845);
  }

  if (*(a1 + 260) == 1)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v9 = AriOsa::GetOsLog(Instance);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", v96);
        v10 = v97;
        v11 = v96[0];
        v12 = *(a1 + 144);
        GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v94);
        v13 = v96;
        if (v10 < 0)
        {
          v13 = v11;
        }

        if (v95 >= 0)
        {
          v14 = v94;
        }

        else
        {
          v14 = v94[0];
        }

        *__p = 136316162;
        *&__p[4] = "ari";
        v99 = 2080;
        v100 = v13;
        v101 = 1024;
        v102 = 2123;
        v103 = 1024;
        *v104 = v12;
        *&v104[4] = 2080;
        *&v104[6] = v14;
        _os_log_impl(&dword_296048000, v9, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Aborting new request from cid 0x%x: %s", __p, 0x2Cu);
        if (v95 < 0)
        {
          operator delete(v94[0]);
        }

        if (v97 < 0)
        {
          operator delete(v96[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", __p);
      v15 = SHIBYTE(v101);
      v16 = *__p;
      v17 = *(a1 + 144);
      GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v96);
      v19 = __p;
      if (v15 < 0)
      {
        v19 = v16;
      }

      if (v97 >= 0)
      {
        v20 = v96;
      }

      else
      {
        v20 = v96[0];
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Aborting new request from cid 0x%x: %s", v18, v19, 2123, v17, v20);
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      if (SHIBYTE(v101) < 0)
      {
        operator delete(*__p);
      }
    }

    AriHost::CancelTrx(LODWORD((*a2)[1].__shared_owners_), HIDWORD((*a2)[1].__shared_owners_), -85);
    goto LABEL_129;
  }

  if (*(a1 + 200) >= *(a1 + 256))
  {
    *__p = HIDWORD((*a2)[1].__shared_owners_);
    v37 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(ARIHOST_GMID_DISALLOWED_DURING_STALL, __p);
    v38 = *a2;
    if (v37)
    {
      shared_owners_high = HIDWORD(v38[1].__shared_owners_);
      if (shared_owners_high >> 26 != 51)
      {
        goto LABEL_76;
      }

      v40 = (shared_owners_high >> 15) & 0x3FF;
      if (v40 == 401)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        v51 = &dword_29EE11D74;
        do
        {
          ++v41;
          v52 = *v51;
          v51 += 14;
        }

        while (v52 != v40);
      }

      if (!ARIMSGDEF_GROUP51_ice_awds[56 * v41 + 8])
      {
        if (*(v5 + 392) == 1)
        {
          if ((DefaultLogLevel & 0x10) != 0)
          {
            v65 = AriOsa::GetOsLog(v37);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", v96);
              v66 = v97;
              v67 = v96[0];
              GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v94);
              v68 = v96;
              if (v66 < 0)
              {
                v68 = v67;
              }

              v69 = v5 + 400;
              v70 = v94[0];
              if (v95 >= 0)
              {
                v70 = v94;
              }

              if (*(v5 + 423) < 0)
              {
                v69 = *(v5 + 50);
              }

              *__p = 136316162;
              *&__p[4] = "ari";
              v99 = 2080;
              v100 = v68;
              v101 = 1024;
              v102 = 2135;
              v103 = 2080;
              *v104 = v70;
              *&v104[8] = 2080;
              *&v104[10] = v69;
              _os_log_impl(&dword_296048000, v65, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) REQ(%s) not allowed during stall [%s]", __p, 0x30u);
              if (v95 < 0)
              {
                operator delete(v94[0]);
              }

              if (v97 < 0)
              {
                operator delete(v96[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", __p);
            v71 = SHIBYTE(v101);
            v72 = *__p;
            GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v96);
            v74 = __p;
            if (v71 < 0)
            {
              v74 = v72;
            }

            v75 = v5 + 400;
            v76 = v96[0];
            if (v97 >= 0)
            {
              v76 = v96;
            }

            if (*(v5 + 423) < 0)
            {
              v75 = *(v5 + 50);
            }

            AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) REQ(%s) not allowed during stall [%s]", v73, v74, 2135, v76, v75);
            if (v97 < 0)
            {
              operator delete(v96[0]);
            }

            if (SHIBYTE(v101) < 0)
            {
              operator delete(*__p);
            }

            v38 = *a2;
          }

          goto LABEL_100;
        }
      }

      else
      {
LABEL_76:
        if (*(v5 + 312) == 1)
        {
          if ((DefaultLogLevel & 0x10) != 0)
          {
            v53 = AriOsa::GetOsLog(v37);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", v96);
              v54 = v97;
              v55 = v96[0];
              GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v94);
              v56 = v96;
              if (v54 < 0)
              {
                v56 = v55;
              }

              v57 = v5 + 320;
              v58 = v94[0];
              if (v95 >= 0)
              {
                v58 = v94;
              }

              if (*(v5 + 343) < 0)
              {
                v57 = *(v5 + 40);
              }

              *__p = 136316162;
              *&__p[4] = "ari";
              v99 = 2080;
              v100 = v56;
              v101 = 1024;
              v102 = 2145;
              v103 = 2080;
              *v104 = v58;
              *&v104[8] = 2080;
              *&v104[10] = v57;
              _os_log_impl(&dword_296048000, v53, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) REQ(%s) not allowed during stall [%s]", __p, 0x30u);
              if (v95 < 0)
              {
                operator delete(v94[0]);
              }

              if (v97 < 0)
              {
                operator delete(v96[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", __p);
            v59 = SHIBYTE(v101);
            v60 = *__p;
            GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v96);
            v62 = __p;
            if (v59 < 0)
            {
              v62 = v60;
            }

            v63 = v5 + 320;
            v64 = v96[0];
            if (v97 >= 0)
            {
              v64 = v96;
            }

            if (*(v5 + 343) < 0)
            {
              v63 = *(v5 + 40);
            }

            AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) REQ(%s) not allowed during stall [%s]", v61, v62, 2145, v64, v63);
            if (v97 < 0)
            {
              operator delete(v96[0]);
            }

            if (SHIBYTE(v101) < 0)
            {
              operator delete(*__p);
            }

            v38 = *a2;
          }

LABEL_100:
          *__p = v38[1].__shared_owners_;
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>((a1 + 216), *__p);
          AriHost::CancelTrx(LODWORD((*a2)[1].__shared_owners_), HIDWORD((*a2)[1].__shared_owners_), -85);
          goto LABEL_129;
        }
      }
    }

    v77 = a2[1];
    v93[0] = *a2;
    v93[1] = v77;
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AriHost::TransactionMgr::blockMessage(a1, v93);
  }

  *__p = (*a2)[1].__shared_owners_;
  v21 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int>((a1 + 176), *__p);
  if ((v21 & 1) == 0 && (DefaultLogLevel & 4) != 0)
  {
    v22 = AriOsa::GetOsLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", v96);
      shared_owners = (*a2)[1].__shared_owners_;
      v81 = v96[0];
      if (v97 >= 0)
      {
        v81 = v96;
      }

      *__p = 136315906;
      *&__p[4] = "ari";
      v99 = 2080;
      v100 = v81;
      v101 = 1024;
      v102 = 2162;
      v103 = 1024;
      *v104 = shared_owners;
      _os_log_debug_impl(&dword_296048000, v22, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Already tracking 0x%x.  Likely due to reuse of transaction ID.", __p, 0x22u);
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", __p);
    v24 = *__p;
    if (v101 >= 0)
    {
      v24 = __p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Already tracking 0x%x.  Likely due to reuse of transaction ID.", v23, v24, 2162, LODWORD((*a2)[1].__shared_owners_));
    if (SHIBYTE(v101) < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 200) >= 2uLL && (DefaultLogLevel & 4) != 0)
  {
    v25 = AriOsa::GetOsLog(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", v96);
      v82 = v97;
      v83 = v96[0];
      v84 = *(a1 + 144);
      v85 = *(a1 + 200);
      v86 = *(a1 + 256);
      GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v94);
      v87 = v96;
      if (v82 < 0)
      {
        v87 = v83;
      }

      v88 = v94[0];
      *__p = 136316674;
      if (v95 >= 0)
      {
        v88 = v94;
      }

      *&__p[4] = "ari";
      v99 = 2080;
      v100 = v87;
      v101 = 1024;
      v102 = 2165;
      v103 = 1024;
      *v104 = v84;
      *&v104[4] = 2048;
      *&v104[6] = v85;
      *&v104[14] = 1024;
      *&v104[16] = v86;
      v105 = 2080;
      v106 = v88;
      _os_log_debug_impl(&dword_296048000, v25, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Sending for cid 0x%x (cur %zu max %u) %s", __p, 0x3Cu);
      if (v95 < 0)
      {
        operator delete(v94[0]);
      }

      if (v97 < 0)
      {
        operator delete(v96[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackSend", __p);
    v26 = SHIBYTE(v101);
    v27 = *__p;
    v28 = *(a1 + 144);
    v29 = *(a1 + 200);
    v30 = *(a1 + 256);
    GetBufDigest(*(*a2)->__shared_weak_owners_, 0, (*((*a2)->__shared_weak_owners_ + 8) - *(*a2)->__shared_weak_owners_), v96);
    v32 = __p;
    if (v26 < 0)
    {
      v32 = v27;
    }

    if (v97 >= 0)
    {
      v33 = v96;
    }

    else
    {
      v33 = v96[0];
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Sending for cid 0x%x (cur %zu max %u) %s", v31, v32, 2165, v28, v29, v30, v33);
    if (v97 < 0)
    {
      operator delete(v96[0]);
    }

    if (SHIBYTE(v101) < 0)
    {
      operator delete(*__p);
    }
  }

  v34 = HIDWORD((*a2)[1].__shared_owners_);
  if (v34 >> 26 != 51)
  {
    v42 = a2 + 1;
    goto LABEL_63;
  }

  v35 = (v34 >> 15) & 0x3FF;
  if (v35 == 401)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    v43 = &dword_29EE11D74;
    do
    {
      ++v36;
      v44 = *v43;
      v43 += 14;
    }

    while (v44 != v35);
  }

  v45 = ARIMSGDEF_GROUP51_ice_awds[56 * v36 + 8];
  v42 = a2 + 1;
  if (v45)
  {
LABEL_63:
    v46 = v5 + 264;
    v47 = *v42;
    v89 = *a2;
    v90 = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = Ari::ClientWorkQueue::add(v5 + 264, &v89);
    v49 = v90;
    if (!v90)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v46 = v5 + 344;
  v50 = *v42;
  v91 = *a2;
  v92 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = Ari::ClientWorkQueue::add(v5 + 344, &v91);
  v49 = v92;
  if (!v92)
  {
    goto LABEL_67;
  }

LABEL_66:
  std::__shared_weak_count::__release_shared[abi:ne200100](v49);
LABEL_67:
  *(v5 + 87) += v46[48] ^ 1;
  if (v48)
  {
    AriHost::CancelTrx(LODWORD((*a2)[1].__shared_owners_), HIDWORD((*a2)[1].__shared_owners_), -85);
  }

LABEL_129:
  v78 = *MEMORY[0x29EDCA608];
}

void sub_29618533C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::EndStream(AriHost *this)
{
  v1 = this;
  Instance = AriHost::GetInstance(this);
  v3 = *Instance;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN7AriHost9EndStreamEi_block_invoke;
  v4[3] = &__block_descriptor_tmp_53;
  v5 = v1;
  v4[4] = Instance;
  dispatch_async(v3, v4);
}

void ___ZN7AriHost9EndStreamEi_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = (v2 >> 8) & 0x7F;
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 32) + 424, (v2 >> 8) & 0x7F);
  if (!isAlloc)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "EndStream_block_invoke", v34);
        v24 = v35 >= 0 ? v34 : v34[0];
        v25 = *(a1 + 40);
        *__p = 136315906;
        *&__p[4] = "ari";
        v37 = 2080;
        v38 = v24;
        v39 = 1024;
        v40 = 477;
        v41 = 1024;
        LODWORD(v42) = v25;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Attempt to release transaction on STREAM for unregistered client, ctx 0x%04x", __p, 0x22u);
        if (v35 < 0)
        {
          operator delete(v34[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "EndStream_block_invoke", __p);
      if (v39 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Attempt to release transaction on STREAM for unregistered client, ctx 0x%04x", v15, v16, 477, *(a1 + 40));
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v5 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((*(a1 + 32) + 8), (v2 >> 8) & 0x7F);
  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc((v5 + 3), v2);
  if (!v6)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v17 = AriOsa::GetOsLog(v6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "EndStream_block_invoke", v34);
        v26 = v35 >= 0 ? v34 : v34[0];
        v27 = *(a1 + 40);
        *__p = 136315906;
        *&__p[4] = "ari";
        v37 = 2080;
        v38 = v26;
        v39 = 1024;
        v40 = 495;
        v41 = 1024;
        LODWORD(v42) = v27;
        _os_log_error_impl(&dword_296048000, v17, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Attempt to release non-existent STREAM transaction 0x%04x", __p, 0x22u);
        if (v35 < 0)
        {
          operator delete(v34[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "EndStream_block_invoke", __p);
      if (v39 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Attempt to release non-existent STREAM transaction 0x%04x", v18, v19, 495, *(a1 + 40));
      goto LABEL_25;
    }

LABEL_27:
    v20 = *MEMORY[0x29EDCA608];
    return;
  }

  v7 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((*(a1 + 32) + 8), (v2 >> 8) & 0x7F);
  if (!v7)
  {
LABEL_48:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::operator[]((v7 + 3), v2);
  if (*(*v8 + 16) == 1)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v9 = AriOsa::GetOsLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "EndStream_block_invoke", v34);
        v28 = v35;
        v29 = v34[0];
        v30 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 32) + 424, v3);
        if (v28 >= 0)
        {
          v31 = v34;
        }

        else
        {
          v31 = v29;
        }

        v32 = *v30;
        if (*(*v30 + 23) < 0)
        {
          v32 = *v32;
        }

        v33 = *(a1 + 40);
        *__p = 136316418;
        *&__p[4] = "ari";
        v37 = 2080;
        v38 = v31;
        v39 = 1024;
        v40 = 486;
        v41 = 2080;
        v42 = v32;
        v43 = 1024;
        v44 = v3;
        v45 = 1024;
        v46 = v33;
        _os_log_error_impl(&dword_296048000, v9, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Attempt to release a STREAM transaction associated with an automatic transaction (%s cid 0x%x ctx 0x%x)", __p, 0x32u);
        if (v35 < 0)
        {
          operator delete(v34[0]);
        }
      }

      v10 = __p;
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "EndStream_block_invoke", __p);
      if (v39 < 0)
      {
        v10 = *__p;
      }

      v11 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 32) + 424, v3);
      v13 = *v11;
      if (*(*v11 + 23) < 0)
      {
        v13 = *v13;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Attempt to release a STREAM transaction associated with an automatic transaction (%s cid 0x%x ctx 0x%x)", v12, v10, 486, v13, v3, *(a1 + 40));
LABEL_25:
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *MEMORY[0x29EDCA608];

  AriHost::releaseTrx_nl(v21, v22, 0);
}

void sub_296185950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::releaseTrx_nl(AriHost *this, uint64_t a2, int a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = a2;
  if (a2)
  {
    isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(this + 424, (a2 >> 8) & 0x7F);
    if (isAlloc)
    {
      v8 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(this + 1, (a2 >> 8) & 0x7F);
      if (!v8)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v9 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc((v8 + 3), v4);
      if (v9)
      {
        if ((DefaultLogLevel & 4) != 0)
        {
          OsLog = AriOsa::GetOsLog(v9);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", v44);
            v38 = v45;
            v39 = v44[0];
            v40 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, (a2 >> 8) & 0x7F);
            if (v38 >= 0)
            {
              v41 = v44;
            }

            else
            {
              v41 = v39;
            }

            v42 = *v40;
            if (*(*v40 + 23) < 0)
            {
              v42 = *v42;
            }

            *__p = 136316162;
            *&__p[4] = "ari";
            v47 = 2080;
            v48 = v41;
            v49 = 1024;
            v50 = 531;
            v51 = 2080;
            v52 = v42;
            v53 = 1024;
            v54 = a2;
            _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) %s free ctx 0x%04x", __p, 0x2Cu);
            if (v45 < 0)
            {
              operator delete(v44[0]);
            }
          }

          v11 = __p;
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", __p);
          if (v49 < 0)
          {
            v11 = *__p;
          }

          v12 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, (a2 >> 8) & 0x7F);
          v14 = *v12;
          if (*(*v12 + 23) < 0)
          {
            v14 = *v14;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) %s free ctx 0x%04x", v13, v11, 531, v14, a2);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(*__p);
          }
        }

        v15 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(this + 1, (a2 >> 8) & 0x7F);
        v16 = v15;
        if (a3)
        {
          if (!v15)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v17 = 253;
          v18 = 248;
          v19 = 247;
          v20 = 12;
        }

        else
        {
          if (!v15)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v17 = 241;
          v18 = 236;
          v19 = 235;
          v20 = 9;
        }

        AriOsa::SWTrap((*(v15 + 128) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", v19);
        v31 = dispatch_semaphore_wait(v16[15], 0xFFFFFFFFFFFFFFFFLL) != 0;
        AriOsa::SWTrap(v31, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", v18);
        v32 = IDMgr::_free(v16 + 16, v4, &v16[v20]);
        ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::sw_dbug_trap((v16 + 3), v32 ^ 1, v33);
        v34 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(v16 + 3, v4);
        std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>>>::erase(v16 + 3, v34);
        dispatch_semaphore_signal(v16[15]);
        AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", v17);
        v35 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(this + 1, (a2 >> 8) & 0x7F);
        if (!v35)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        AriHost::TransactionMgr::trackReceive((v35 + 3), a2);
        goto LABEL_45;
      }

      if ((DefaultLogLevel & 8) == 0)
      {
        goto LABEL_45;
      }

      v28 = AriOsa::GetOsLog(v9);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", v44);
        v43 = v45 >= 0 ? v44 : v44[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v47 = 2080;
        v48 = v43;
        v49 = 1024;
        v50 = 544;
        v51 = 1024;
        LODWORD(v52) = a2;
        _os_log_error_impl(&dword_296048000, v28, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Attempt to release non-existent transaction 0x%04x", __p, 0x22u);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", __p);
      if (v49 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Attempt to release non-existent transaction 0x%04x", v29, v30, 544, a2);
    }

    else
    {
      if ((DefaultLogLevel & 0x20) == 0)
      {
        goto LABEL_45;
      }

      v24 = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", v44);
        v25 = v45 >= 0 ? v44 : v44[0];
        *__p = 136315906;
        *&__p[4] = "ari";
        v47 = 2080;
        v48 = v25;
        v49 = 1024;
        v50 = 525;
        v51 = 1024;
        LODWORD(v52) = a2;
        _os_log_impl(&dword_296048000, v24, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Attempt to release transaction for unregistered client, ctx 0x%04x.  Ignoring...", __p, 0x22u);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", __p);
      if (v49 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Attempt to release transaction for unregistered client, ctx 0x%04x.  Ignoring...", v26, v27, 525, a2);
    }
  }

  else
  {
    if ((DefaultLogLevel & 4) == 0)
    {
      goto LABEL_45;
    }

    v21 = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", v44);
      v37 = v45 >= 0 ? v44 : v44[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v47 = 2080;
      v48 = v37;
      v49 = 1024;
      v50 = 518;
      v51 = 1024;
      LODWORD(v52) = a2;
      _os_log_debug_impl(&dword_296048000, v21, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Attempt to release ctx 0x%04x.  Ignoring...", __p, 0x22u);
      if (v45 < 0)
      {
        operator delete(v44[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "releaseTrx_nl", __p);
    if (v49 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Attempt to release ctx 0x%04x.  Ignoring...", v22, v23, 518, a2);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(*__p);
  }

LABEL_45:
  v36 = *MEMORY[0x29EDCA608];
}

void sub_29618600C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::ExitTrx(AriHost *this, const AriMsg *a2)
{
  v3 = -1431655766;
  v2 = AriMsg::extractCtx(this, &v3) != 0;
  AriOsa::SWTrap(v2, "response.extractCtx(&ctx) != ARI_RESULT_OK", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", 0x1F7);
  AriHost::ExitTrx(v3);
}

void AriHost::ExitTrx(AriHost *this)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ExitTrx", __p);
      v3 = v8 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v10 = 2080;
      v11 = v3;
      v12 = 1024;
      v13 = 510;
      v14 = 1024;
      v15 = this;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) ExitTrx() is deprecated.  Attempt to exit transaction ID 0x%04x.  Ignoring...", buf, 0x22u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ExitTrx", buf);
    if (v12 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) ExitTrx() is deprecated.  Attempt to exit transaction ID 0x%04x.  Ignoring...", v4, v5, 510, this);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*buf);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_296186218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::TransactionMgr::trackReceive(AriHost::TransactionMgr *this, uint64_t a2)
{
  v109 = *MEMORY[0x29EDCA608];
  v4 = (this + 176);
  if (std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(this + 22, a2))
  {
    goto LABEL_2;
  }

  v4 = (this + 216);
  v5 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(this + 27, a2);
  if (v5)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(v5);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __p);
        v11 = v91 >= 0 ? __p : *__p;
        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = "ari";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = v11;
        HIWORD(buf[2].__locale_) = 1024;
        LODWORD(buf[3].__locale_) = 2195;
        WORD2(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 6) = a2;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Found received trx 0x%x on cancelled list", buf, 0x22u);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*__p);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        locale = buf;
      }

      else
      {
        locale = buf[0].__locale_;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Found received trx 0x%x on cancelled list", v12, locale, 2195, a2);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }
    }

LABEL_2:
    v5 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(v4, a2);
    if (v5)
    {
      v6 = v4[1];
      v7 = *v5;
      v8 = v5[1];
      v9 = vcnt_s8(v6);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= *&v6)
        {
          v8 %= *&v6;
        }
      }

      else
      {
        v8 &= *&v6 - 1;
      }

      v14 = *(*v4 + 8 * v8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14 != v5);
      if (v15 == v4 + 2)
      {
        goto LABEL_48;
      }

      v16 = v15[1];
      if (v9.u32[0] > 1uLL)
      {
        if (v16 >= *&v6)
        {
          v16 %= *&v6;
        }
      }

      else
      {
        v16 &= *&v6 - 1;
      }

      if (v16 != v8)
      {
LABEL_48:
        if (v7)
        {
          v17 = *(v7 + 8);
          if (v9.u32[0] > 1uLL)
          {
            v18 = *(v7 + 8);
            if (v17 >= *&v6)
            {
              v18 = v17 % *&v6;
            }
          }

          else
          {
            v18 = v17 & (*&v6 - 1);
          }

          if (v18 == v8)
          {
            goto LABEL_52;
          }
        }

        *(*v4 + 8 * v8) = 0;
        v7 = *v5;
      }

      if (!v7)
      {
LABEL_58:
        *v15 = v7;
        *v5 = 0;
        --v4[3];
        operator delete(v5);
        goto LABEL_59;
      }

      v17 = *(v7 + 8);
LABEL_52:
      if (v9.u32[0] > 1uLL)
      {
        if (v17 >= *&v6)
        {
          v17 %= *&v6;
        }
      }

      else
      {
        v17 &= *&v6 - 1;
      }

      if (v17 != v8)
      {
        *(*v4 + 8 * v17) = v15;
        v7 = *v5;
      }

      goto LABEL_58;
    }

LABEL_59:
    if (*(this + 36) != ((a2 >> 8) & 0x7F))
    {
      v108 = 0xAAAAAAAAAAAAAAAALL;
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v106 = v28;
      v107 = v28;
      v104 = v28;
      v105 = v28;
      v102 = v28;
      v103 = v28;
      v100 = v28;
      v101 = v28;
      v98 = v28;
      v99 = v28;
      v96 = v28;
      v97 = v28;
      *&buf[4].__locale_ = v28;
      *&buf[6].__locale_ = v28;
      *&buf[0].__locale_ = v28;
      *&buf[2].__locale_ = v28;
      std::ostringstream::basic_ostringstream[abi:ne200100](buf);
      v29 = buf[0].__locale_;
      *(&buf[1].__locale_ + *(buf[0].__locale_ - 3)) |= 0x200u;
      *(&buf[1].__locale_ + *(v29 - 3)) = *(&buf[1].__locale_ + *(v29 - 3)) & 0xFFFFFFB5 | 8;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Received CID doesn't match expected CID. Received ", 50);
      v30 = MEMORY[0x29C257D00](buf, (a2 >> 8) & 0x7F);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " expected ", 10);
      v32 = MEMORY[0x29C257D00](v31, *(this + 36));
      if ((DefaultLogLevel & 8) != 0)
      {
        v33 = AriOsa::GetOsLog(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __dst);
          v69 = v87;
          v70 = __dst[0];
          std::stringbuf::str[abi:ne200100](&v83, &buf[1]);
          v71 = __dst;
          if (v69 < 0)
          {
            v71 = v70;
          }

          if (v85 >= 0)
          {
            v72 = &v83;
          }

          else
          {
            v72 = v83;
          }

          *__p = 136315906;
          *&__p[4] = "ari";
          v89 = 2080;
          v90 = v71;
          v91 = 1024;
          v92 = 2228;
          v93 = 2080;
          v94 = v72;
          _os_log_error_impl(&dword_296048000, v33, OS_LOG_TYPE_ERROR, "%s: (%s:%d) %s", __p, 0x26u);
          if (v85 < 0)
          {
            operator delete(v83);
          }

          if (v87 < 0)
          {
            operator delete(__dst[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __p);
        v34 = SHIBYTE(v91);
        v35 = *__p;
        std::stringbuf::str[abi:ne200100](__dst, &buf[1]);
        v37 = __p;
        if (v34 < 0)
        {
          v37 = v35;
        }

        if (v87 >= 0)
        {
          v38 = __dst;
        }

        else
        {
          v38 = __dst[0];
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) %s", v36, v37, 2228, v38);
        if (v87 < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v91) < 0)
        {
          operator delete(*__p);
        }
      }

      v39 = *(AriHost::GetInstance(v32) + 608);
      v40 = *(this + 36);
      std::stringbuf::str[abi:ne200100](v81, &buf[1]);
      (*(*v39 + 88))(v39, v40, 2, v81);
      if (v82 < 0)
      {
        operator delete(v81[0]);
      }

      buf[0] = *MEMORY[0x29EDC9538];
      *(buf + *(buf[0].__locale_ - 3)) = *(MEMORY[0x29EDC9538] + 24);
      buf[1].__locale_ = (MEMORY[0x29EDC9570] + 16);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(*(&v96 + 1));
      }

      buf[1].__locale_ = (MEMORY[0x29EDC9568] + 16);
      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      v5 = MEMORY[0x29C257E00](&v99);
    }

    if (*(this + 25) >= *(this + 64))
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v58 = AriOsa::GetOsLog(v5);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __p);
          v59 = v91 >= 0 ? __p : *__p;
          v60 = *(this + 25);
          v61 = *(this + 64);
          v62 = *(this + 36);
          LODWORD(buf[0].__locale_) = 136316674;
          *(&buf[0].__locale_ + 4) = "ari";
          WORD2(buf[1].__locale_) = 2080;
          *(&buf[1].__locale_ + 6) = v59;
          HIWORD(buf[2].__locale_) = 1024;
          LODWORD(buf[3].__locale_) = 2248;
          WORD2(buf[3].__locale_) = 1024;
          *(&buf[3].__locale_ + 6) = a2;
          WORD1(buf[4].__locale_) = 2048;
          *(&buf[4].__locale_ + 4) = v60;
          WORD2(buf[5].__locale_) = 1024;
          *(&buf[5].__locale_ + 6) = v61;
          WORD1(buf[6].__locale_) = 1024;
          HIDWORD(buf[6].__locale_) = v62;
          _os_log_impl(&dword_296048000, v58, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Found max outstanding count after releaseTrx ctx 0x%x (cur %zu max %u) for CID 0x%x", buf, 0x38u);
          if (SHIBYTE(v91) < 0)
          {
            operator delete(*__p);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", buf);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v64 = buf;
        }

        else
        {
          v64 = buf[0].__locale_;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Found max outstanding count after releaseTrx ctx 0x%x (cur %zu max %u) for CID 0x%x", v63, v64, 2248, a2, *(this + 25), *(this + 64), *(this + 36));
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }
    }

    else
    {
      v83 = 0xAAAAAAAAAAAAAAAALL;
      v84 = 0xAAAAAAAAAAAAAAAALL;
      AriHost::TransactionMgr::unblockMessage(this, &v83);
      v42 = v83;
      if (v83)
      {
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v43 = AriOsa::GetOsLog(v41);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __p);
            v44 = SHIBYTE(v91);
            v45 = *__p;
            v46 = *(this + 25);
            v47 = *(this + 64);
            GetBufDigest(*v42[2], 0, (v42[2][1] - *v42[2]), __dst);
            v48 = __p;
            if (v44 < 0)
            {
              v48 = v45;
            }

            v49 = __dst[0];
            LODWORD(buf[0].__locale_) = 136316674;
            if (v87 >= 0)
            {
              v49 = __dst;
            }

            *(&buf[0].__locale_ + 4) = "ari";
            WORD2(buf[1].__locale_) = 2080;
            *(&buf[1].__locale_ + 6) = v48;
            HIWORD(buf[2].__locale_) = 1024;
            LODWORD(buf[3].__locale_) = 2237;
            WORD2(buf[3].__locale_) = 1024;
            *(&buf[3].__locale_ + 6) = a2;
            WORD1(buf[4].__locale_) = 2048;
            *(&buf[4].__locale_ + 4) = v46;
            WORD2(buf[5].__locale_) = 1024;
            *(&buf[5].__locale_ + 6) = v47;
            WORD1(buf[6].__locale_) = 2080;
            *(&buf[6].__locale_ + 4) = v49;
            _os_log_impl(&dword_296048000, v43, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Unblocking for ctx 0x%x (cur %zu max %u) %s", buf, 0x3Cu);
            if (v87 < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(v91) < 0)
            {
              operator delete(*__p);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", buf);
          locale_high = SHIBYTE(buf[2].__locale_);
          v51 = buf[0].__locale_;
          v52 = *(this + 25);
          v53 = *(this + 64);
          GetBufDigest(*v42[2], 0, (v42[2][1] - *v42[2]), __p);
          v55 = buf;
          if (locale_high < 0)
          {
            v55 = v51;
          }

          if (v91 >= 0)
          {
            v56 = __p;
          }

          else
          {
            v56 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Unblocking for ctx 0x%x (cur %zu max %u) %s", v54, v55, 2237, a2, v52, v53, v56);
          if (SHIBYTE(v91) < 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }

        v57 = v84;
        v80[0] = v42;
        v80[1] = v84;
        if (v84)
        {
          atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AriHost::TransactionMgr::trackSend(this, v80);
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }
      }

      else if (*(this + 25) && (DefaultLogLevel & 4) != 0)
      {
        v65 = AriOsa::GetOsLog(v41);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __p);
          v73 = v91 >= 0 ? __p : *__p;
          v74 = *(this + 25);
          v75 = *(this + 64);
          LODWORD(buf[0].__locale_) = 136316418;
          *(&buf[0].__locale_ + 4) = "ari";
          WORD2(buf[1].__locale_) = 2080;
          *(&buf[1].__locale_ + 6) = v73;
          HIWORD(buf[2].__locale_) = 1024;
          LODWORD(buf[3].__locale_) = 2242;
          WORD2(buf[3].__locale_) = 1024;
          *(&buf[3].__locale_ + 6) = a2;
          WORD1(buf[4].__locale_) = 2048;
          *(&buf[4].__locale_ + 4) = v74;
          WORD2(buf[5].__locale_) = 1024;
          *(&buf[5].__locale_ + 6) = v75;
          _os_log_debug_impl(&dword_296048000, v65, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) No blocked message for ctx 0x%x (cur %zu max %u)", buf, 0x32u);
          if (SHIBYTE(v91) < 0)
          {
            operator delete(*__p);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", buf);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v67 = buf;
        }

        else
        {
          v67 = buf[0].__locale_;
        }

        AriOsa::LogToDefaultStringLogger(4, "(%s:%d) No blocked message for ctx 0x%x (cur %zu max %u)", v66, v67, 2242, a2, *(this + 25), *(this + 64));
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }
    }

    goto LABEL_123;
  }

  if (*(this + 260))
  {
    goto LABEL_59;
  }

  v108 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v106 = v19;
  v107 = v19;
  v104 = v19;
  v105 = v19;
  v102 = v19;
  v103 = v19;
  v100 = v19;
  v101 = v19;
  v98 = v19;
  v99 = v19;
  v96 = v19;
  v97 = v19;
  *&buf[4].__locale_ = v19;
  *&buf[6].__locale_ = v19;
  *&buf[0].__locale_ = v19;
  *&buf[2].__locale_ = v19;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v20 = buf[0].__locale_;
  *(&buf[1].__locale_ + *(buf[0].__locale_ - 3)) |= 0x200u;
  *(&buf[1].__locale_ + *(v20 - 3)) = *(&buf[1].__locale_ + *(v20 - 3)) & 0xFFFFFFB5 | 8;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Tracking receipt of unrecognized transaction ", 45);
  v21 = MEMORY[0x29C257D00](buf, a2);
  if ((DefaultLogLevel & 8) != 0)
  {
    v22 = AriOsa::GetOsLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __dst);
      v76 = v87;
      v77 = __dst[0];
      std::stringbuf::str[abi:ne200100](&v83, &buf[1]);
      v78 = __dst;
      if (v76 < 0)
      {
        v78 = v77;
      }

      if (v85 >= 0)
      {
        v79 = &v83;
      }

      else
      {
        v79 = v83;
      }

      *__p = 136315906;
      *&__p[4] = "ari";
      v89 = 2080;
      v90 = v78;
      v91 = 1024;
      v92 = 2202;
      v93 = 2080;
      v94 = v79;
      _os_log_error_impl(&dword_296048000, v22, OS_LOG_TYPE_ERROR, "%s: (%s:%d) %s", __p, 0x26u);
      if (v85 < 0)
      {
        operator delete(v83);
      }

      if (v87 < 0)
      {
        operator delete(__dst[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "trackReceive", __p);
    v23 = SHIBYTE(v91);
    v24 = *__p;
    std::stringbuf::str[abi:ne200100](__dst, &buf[1]);
    v26 = __p;
    if (v23 < 0)
    {
      v26 = v24;
    }

    if (v87 >= 0)
    {
      v27 = __dst;
    }

    else
    {
      v27 = __dst[0];
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) %s", v25, v26, 2202, v27);
    if (v87 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v91) < 0)
    {
      operator delete(*__p);
    }
  }

  buf[0] = *MEMORY[0x29EDC9538];
  *(buf + *(buf[0].__locale_ - 3)) = *(MEMORY[0x29EDC9538] + 24);
  buf[1].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(*(&v96 + 1));
  }

  buf[1].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  MEMORY[0x29C257E00](&v99);
LABEL_123:
  v68 = *MEMORY[0x29EDCA608];
}

void sub_2961870F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a42);
  _Unwind_Resume(a1);
}

void AriHost::safeReleaseTrx_nl(AriHost *a1, AriMsg ***a2)
{
  v73 = *MEMORY[0x29EDCA608];
  BufHeader = AriMsg::GetBufHeader(**a2, ((*a2)[1] - **a2));
  if (BufHeader)
  {
    v5 = *(BufHeader + 2) >> 17;
  }

  else
  {
    v5 = 0x8000;
  }

  v6 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1 + 1, (v5 >> 8) & 0x7F);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(*ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::operator[]((v6 + 3), v5) + 16) == 1)
  {
    BufGmid = AriMsg::GetBufGmid(**a2, ((*a2)[1] - **a2));
    v8 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1 + 6, v5);
    v63 = 0;
    IsFilerInitiator = SdkMsgIsFilerInitiator(**a2, *(*a2 + 2) - **a2, &v63);
    if (IsFilerInitiator)
    {
      if (!v8)
      {
        operator new();
      }

      if ((DefaultLogLevel & 8) != 0)
      {
        OsLog = AriOsa::GetOsLog(IsFilerInitiator);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", v61);
          v52 = v62 >= 0 ? v61 : v61[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v65 = 2080;
          v66 = v52;
          v67 = 1024;
          v68 = 589;
          v69 = 1024;
          *v70 = v5;
          _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Filer initiator response detected but filer ctx 0x%x is already in flight!", buf, 0x22u);
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", buf);
        if (v67 >= 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Filer initiator response detected but filer ctx 0x%x is already in flight!", v11, v12, 589, v5);
        if (SHIBYTE(v67) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_106;
    }

    *buf = BufGmid;
    v13 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(ARI_FILER_WRITE_TERMINATOR_RESPONSES, buf);
    if (v13)
    {
      if (v8)
      {
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v14 = AriOsa::GetOsLog(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v61;
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", v61);
            if (v62 < 0)
            {
              v15 = v61[0];
            }

            v16 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
            AriHost::FilerTransfer::getName(v16, __p);
            if (v60 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "ari";
            v65 = 2080;
            v66 = v15;
            v67 = 1024;
            v68 = 596;
            v69 = 2080;
            *v70 = v17;
            _os_log_impl(&dword_296048000, v14, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) filer transfer complete: %s", buf, 0x26u);
            if (v60 < 0)
            {
              operator delete(__p[0]);
            }

            if (v62 < 0)
            {
              operator delete(v61[0]);
            }
          }

          v18 = buf;
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", buf);
          if (v67 < 0)
          {
            v18 = *buf;
          }

          v19 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1 + 6, v5);
          if (!v19)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          AriHost::FilerTransfer::getName((v19 + 3), v61);
          if (v62 >= 0)
          {
            v21 = v61;
          }

          else
          {
            v21 = v61[0];
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) filer transfer complete: %s", v20, v18, 596, v21);
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }

          if (SHIBYTE(v67) < 0)
          {
            operator delete(*buf);
          }
        }

        std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::__erase_unique<int>(a1 + 6, v5);
      }

      else if ((DefaultLogLevel & 8) != 0)
      {
        v33 = AriOsa::GetOsLog(v13);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", v61);
          v53 = v62 >= 0 ? v61 : v61[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          v65 = 2080;
          v66 = v53;
          v67 = 1024;
          v68 = 601;
          v69 = 1024;
          *v70 = v5;
          _os_log_error_impl(&dword_296048000, v33, OS_LOG_TYPE_ERROR, "%s: (%s:%d) File write stream completed, but no active transfer found! ctx 0x%x", buf, 0x22u);
          if (v62 < 0)
          {
            operator delete(v61[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", buf);
        if (v67 >= 0)
        {
          v35 = buf;
        }

        else
        {
          v35 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) File write stream completed, but no active transfer found! ctx 0x%x", v34, v35, 601, v5);
        if (SHIBYTE(v67) < 0)
        {
          operator delete(*buf);
        }
      }

      AriHost::releaseTrx_nl(a1, v5, 0);
      goto LABEL_106;
    }

    if (!v8)
    {
      *buf = 0xAAAAAAAAAAAAAAAALL;
      v36 = BufGmid == 67600384 && !ARI_AriNACK_Extract(**a2, *(*a2 + 2) - **a2, buf) && *&buf[4] == -84;
      AriHost::releaseTrx_nl(a1, v5, v36);
      goto LABEL_106;
    }

    v58 = 0;
    IsFilerReadStream = SdkMsgIsFilerReadStream(**a2, *(*a2 + 2) - **a2, &v58);
    if (!IsFilerReadStream)
    {
      if (BufGmid == 67436544)
      {
        goto LABEL_106;
      }

      if (BufGmid == 67600384)
      {
        if ((DefaultLogLevel & 0x10) != 0)
        {
          v37 = AriOsa::GetOsLog(IsFilerReadStream);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v61;
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", v61);
            if (v62 < 0)
            {
              v38 = v61[0];
            }

            v39 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
            AriHost::FilerTransfer::getName(v39, __p);
            if (v60 >= 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "ari";
            v65 = 2080;
            v66 = v38;
            v67 = 1024;
            v68 = 629;
            v69 = 2080;
            *v70 = v40;
            _os_log_impl(&dword_296048000, v37, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) NACK received during Filer transfer %s.  Discarding transfer...", buf, 0x26u);
            if (v60 < 0)
            {
              operator delete(__p[0]);
            }

            if (v62 < 0)
            {
              operator delete(v61[0]);
            }
          }

          v41 = buf;
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", buf);
          if (v67 < 0)
          {
            v41 = *buf;
          }

          v42 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
          AriHost::FilerTransfer::getName(v42, v61);
          if (v62 >= 0)
          {
            v44 = v61;
          }

          else
          {
            v44 = v61[0];
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) NACK received during Filer transfer %s.  Discarding transfer...", v43, v41, 629, v44);
          goto LABEL_99;
        }
      }

      else if ((DefaultLogLevel & 8) != 0)
      {
        v45 = AriOsa::GetOsLog(IsFilerReadStream);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v54 = v61;
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", v61);
          if (v62 < 0)
          {
            v54 = v61[0];
          }

          v55 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
          AriHost::FilerTransfer::getName(v55, __p);
          v56 = Ari::MsgNameById(BufGmid);
          v57 = __p[0];
          if (v60 >= 0)
          {
            v57 = __p;
          }

          *buf = 136316418;
          *&buf[4] = "ari";
          v65 = 2080;
          v66 = v54;
          v67 = 1024;
          v68 = 636;
          v69 = 1024;
          *v70 = v5;
          *&v70[4] = 2080;
          *&v70[6] = v57;
          v71 = 2080;
          v72 = v56;
          _os_log_error_impl(&dword_296048000, v45, OS_LOG_TYPE_ERROR, "%s: (%s:%d) ctx 0x%x expected to be Filer transfer %s, but is a non-Filer response message [%s].  Discarding transfer...", buf, 0x36u);
          if (v60 < 0)
          {
            operator delete(__p[0]);
          }

          if (v62 < 0)
          {
            operator delete(v61[0]);
          }
        }

        v46 = buf;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", buf);
        if (v67 < 0)
        {
          v46 = *buf;
        }

        v47 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
        AriHost::FilerTransfer::getName(v47, v61);
        v48 = Ari::MsgNameById(BufGmid);
        v50 = v61[0];
        if (v62 >= 0)
        {
          v50 = v61;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) ctx 0x%x expected to be Filer transfer %s, but is a non-Filer response message [%s].  Discarding transfer...", v49, v46, 636, v5, v50, v48);
        goto LABEL_99;
      }

LABEL_103:
      std::__hash_table<std::__hash_value_type<int,AriHost::FilerTransfer>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::FilerTransfer>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::FilerTransfer>>>::__erase_unique<int>(a1 + 6, v5);
      AriHost::releaseTrx_nl(a1, v5, 0);
      goto LABEL_106;
    }

    v23 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1 + 6, v5);
    if (!v23)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    AriHost::FilerTransfer::updateBytesReceived((v23 + 3), v58);
    v24 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1 + 6, v5);
    if (!v24)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (v24[4] <= 0)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        v25 = AriOsa::GetOsLog(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v61;
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", v61);
          if (v62 < 0)
          {
            v26 = v61[0];
          }

          v27 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
          AriHost::FilerTransfer::getName(v27, __p);
          if (v60 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "ari";
          v65 = 2080;
          v66 = v26;
          v67 = 1024;
          v68 = 621;
          v69 = 2080;
          *v70 = v28;
          _os_log_impl(&dword_296048000, v25, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) filer transfer complete: %s", buf, 0x26u);
          if (v60 < 0)
          {
            operator delete(__p[0]);
          }

          if (v62 < 0)
          {
            operator delete(v61[0]);
          }
        }

        v29 = buf;
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "safeReleaseTrx_nl", buf);
        if (v67 < 0)
        {
          v29 = *buf;
        }

        v30 = std::unordered_map<int,AriHost::FilerTransfer>::at(a1 + 6, v5);
        AriHost::FilerTransfer::getName(v30, v61);
        if (v62 >= 0)
        {
          v32 = v61;
        }

        else
        {
          v32 = v61[0];
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) filer transfer complete: %s", v31, v29, 621, v32);
LABEL_99:
        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_103;
      }

      goto LABEL_103;
    }
  }

LABEL_106:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_29618825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unordered_map<int,AriHost::FilerTransfer>::at(void *a1, int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

uint64_t AriHost::FilerTransfer::getName@<X0>(AriHost::FilerTransfer *this@<X0>, _BYTE *a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v3;
  v54 = v3;
  v53 = v3;
  v52 = v3;
  v51 = v3;
  v50 = v3;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v47 = v3;
  v46 = v3;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v43 = v3;
  v41[3] = v3;
  *__p = v3;
  v41[1] = v3;
  v41[2] = v3;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v41[0] = v3;
  v49 = 0;
  v4 = MEMORY[0x29EDC9590] + 104;
  v45 = MEMORY[0x29EDC9590] + 104;
  v5 = MEMORY[0x29EDC9590] + 64;
  v40 = MEMORY[0x29EDC9590] + 64;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v38 = *(MEMORY[0x29EDC9528] + 16);
  *(&v38 + *(v38 - 24)) = v7;
  v39 = 0;
  v8 = (&v38 + *(v38 - 24));
  std::ios_base::init(v8, v41);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v6[5];
  v40 = v6[4];
  *(&v40 + *(v40 - 24)) = v10;
  v38 = v6[1];
  *(&v38 + *(v38 - 24)) = v6[6];
  v45 = v4;
  v38 = v9;
  v40 = v5;
  std::stringbuf::basic_stringbuf[abi:ne200100](v41, 24);
  memset(&v37, 170, sizeof(v37));
  v11 = std::string::basic_string[abi:ne200100]<0>(&v37, "[unregistered client]");
  v12 = (*(this + 1) >> 8) & 0x7F;
  Instance = AriHost::GetInstance(v11);
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(Instance + 424, v12);
  if (isAlloc)
  {
    v15 = AriHost::GetInstance(isAlloc);
    v16 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v15 + 424, v12);
    std::string::operator=(&v37, *v16);
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v37;
  }

  else
  {
    v17 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  if (*(this + 2))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v17, size);
    v56[0] = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v56, 1);
    v19 = Ari::MsgDefById((*this >> 26), (*this >> 15) & 0x3FF);
    v20 = "Unknown";
    if (v19 && *(v19 + 48))
    {
      v20 = *(v19 + 48);
    }

    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v20, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(ctx ", 5);
    v22 = v40;
    *(v41 + *(v40 - 24)) = *(v41 + *(v40 - 24)) & 0xFFFFFFB5 | 8;
    *(v41 + *(v22 - 24)) |= 0x200u;
    v23 = MEMORY[0x29C257D00](&v40, *(this + 1));
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ")[", 2);
    v25 = *v24;
    *(v24 + *(*v24 - 24) + 8) = *(v24 + *(*v24 - 24) + 8) & 0xFFFFFFB5 | 2;
    *(v24 + *(v25 - 24) + 8) &= ~0x200u;
    v26 = *(this + 2);
    v27 = MEMORY[0x29C257D20]();
    v28 = " bytes][READ]";
    v29 = 13;
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v17, size);
    v56[0] = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v56, 1);
    v30 = Ari::MsgDefById((*this >> 26), (*this >> 15) & 0x3FF);
    v31 = "Unknown";
    if (v30 && *(v30 + 48))
    {
      v31 = *(v30 + 48);
    }

    v32 = strlen(v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v31, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "(ctx ", 5);
    v33 = v40;
    *(v41 + *(v40 - 24)) = *(v41 + *(v40 - 24)) & 0xFFFFFFB5 | 8;
    *(v41 + *(v33 - 24)) |= 0x200u;
    v27 = MEMORY[0x29C257D00](&v40, *(this + 1));
    v28 = ")[WRITE]";
    v29 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
  std::stringbuf::str[abi:ne200100](a2, v41);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v38 = *v6;
  v34 = v6[9];
  *(&v38 + *(v38 - 24)) = v6[8];
  v40 = v34;
  *&v41[0] = MEMORY[0x29EDC9570] + 16;
  if (SBYTE7(v43) < 0)
  {
    operator delete(__p[0]);
  }

  *&v41[0] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v41 + 1);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C257E00](&v45);
}

void sub_296188A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  MEMORY[0x29C257E00](v17);
  _Unwind_Resume(a1);
}

void AriHost::FilerTransfer::updateBytesReceived(AriHost::FilerTransfer *this, unsigned int a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(this + 1) - a2;
  *(this + 1) = v2;
  if (v2 < 0 && (DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "updateBytesReceived", __p);
      v11 = v20;
      v12 = __p[0];
      AriHost::FilerTransfer::getName(this, v17);
      v13 = __p;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v18 >= 0)
      {
        v14 = v17;
      }

      else
      {
        v14 = v17[0];
      }

      v15 = *(this + 2);
      v16 = -*(this + 1);
      *buf = 136316418;
      *&buf[4] = "ari";
      v22 = 2080;
      v23 = v13;
      v24 = 1024;
      v25 = 2429;
      v26 = 2080;
      v27 = v14;
      v28 = 2048;
      v29 = v16;
      v30 = 2048;
      v31 = v15;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) %s: received %lld bytes more than expected in filer transfer (total size %lld)\n", buf, 0x3Au);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "updateBytesReceived", buf);
    v5 = SHIBYTE(v24);
    v6 = *buf;
    AriHost::FilerTransfer::getName(this, __p);
    v8 = buf;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v20 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) %s: received %lld bytes more than expected in filer transfer (total size %lld)\n", v7, v8, 2429, v9, -*(this + 1), *(this + 2));
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(*buf);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_296188C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::CancelTrx(AriHost *this, int a2, int a3)
{
  v3 = this;
  v33 = *MEMORY[0x29EDCA608];
  v4 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v4 = std::__shared_weak_count::lock(qword_2A1899100);
    v7 = v4;
    if (v4)
    {
      v8 = AriHost::SingletonWeakPtr;
      if (AriHost::SingletonWeakPtr)
      {
        Instance = AriHost::GetInstance(v4);
        v10 = *Instance;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN7AriHost9CancelTrxEiji_block_invoke;
        block[3] = &__block_descriptor_tmp_80;
        block[4] = v8;
        v19 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = v3;
        v22 = a3;
        v20 = Instance;
        v23 = a2;
        v24 = (v3 >> 8) & 0x7F;
        v25 = v3;
        dispatch_async(v10, block);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v11 = 0;
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx", __p);
      v13 = v27 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v29 = 2080;
      v30 = v13;
      v31 = 1024;
      v32 = 658;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx", buf);
    if (v31 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v14, v15, 658);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*buf);
    }
  }

  v11 = 0xFFFFFFFFLL;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_22:
  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_296188F24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost9CancelTrxEiji_block_invoke(AriOsa *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", &__p);
      v3 = asString(*(a1 + 15));
      v4 = *(a1 + 14);
      p_p = __p;
      if (v10 >= 0)
      {
        p_p = &__p;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v13 = 2080;
      v14 = p_p;
      v15 = 1024;
      *v16 = 669;
      *&v16[4] = 1024;
      *&v16[6] = v4;
      v17 = 2080;
      v18 = v3;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Cancelling transaction for context id 0x%04x for %s", buf, 0x2Cu);
      if (v10 < 0)
      {
        operator delete(__p);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", buf);
    v6 = asString(*(a1 + 15));
    v8 = *buf;
    if (v15 >= 0)
    {
      v8 = buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Cancelling transaction for context id 0x%04x for %s", v7, v8, 669, *(a1 + 14), v6);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }
  }

  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = 0xAAAAAAAAAAAAAAAALL;
  AriHost::CreateNACK(*(a1 + 14), *(a1 + 16), *(a1 + 15), v11);
}

void sub_2961896E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = *(v44 - 152);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::CreateNACK(AriHost *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = this;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[2] = v8;
  *v14 = v8;
  v13[0] = v8;
  v13[1] = v8;
  AriMsg::AriMsg(v13, 0x4078000u);
  v12[0] = a2;
  v12[1] = a3;
  AriMsg::pack(v13, 1, v12, 8uLL, 0);
  if (!HIDWORD(v15))
  {
    LODWORD(v15) = v6;
  }

  v11 = -1431655766;
  EncodedBuf = AriMsg::getEncodedBuf(v13, &v11);
  v10 = v11;
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v16 = EncodedBuf + v10;
  v17 = EncodedBuf;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
}

void sub_2961898F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  AriMsg::~AriMsg(va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE48c34_ZTSNSt3__110shared_ptrI7AriHostEE64c55_ZTSNSt3__110shared_ptrIN7AriHost17InboundMsgHandlerEEE80c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  result[8] = a2[8];
  result[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[11];
  result[10] = a2[10];
  result[11] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE48c34_ZTSNSt3__110shared_ptrI7AriHostEE64c55_ZTSNSt3__110shared_ptrIN7AriHost17InboundMsgHandlerEEE80c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[9];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[5];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void ___ZN7AriHost9CancelTrxEiji_block_invoke_68(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if ((DefaultLogLevel & 0x10) == 0)
    {
      goto LABEL_21;
    }

    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", __p);
      v3 = v16 >= 0 ? __p : __p[0];
      v4 = *(a1 + 56);
      v5 = *(a1 + 60);
      *buf = 136316162;
      *&buf[4] = "ari";
      v18 = 2080;
      v19 = v3;
      v20 = 1024;
      v21 = 692;
      v22 = 1024;
      v23 = v4;
      v24 = 1024;
      v25 = v5;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client (0x%x) cancelTrx(0x%x) done (took too long)", buf, 0x28u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", buf);
    if (v20 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Client (0x%x) cancelTrx(0x%x) done (took too long)", v6, v7, 692, *(a1 + 56), *(a1 + 60));
  }

  else
  {
    if ((DefaultLogLevel & 4) == 0)
    {
      goto LABEL_21;
    }

    v8 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", __p);
      v12 = v16 >= 0 ? __p : __p[0];
      v13 = *(a1 + 56);
      v14 = *(a1 + 60);
      *buf = 136316162;
      *&buf[4] = "ari";
      v18 = 2080;
      v19 = v12;
      v20 = 1024;
      v21 = 696;
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      _os_log_debug_impl(&dword_296048000, v8, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Client (0x%x) cancelTrx(0x%x) done", buf, 0x28u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", buf);
    if (v20 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Client (0x%x) cancelTrx(0x%x) done", v9, v10, 696, *(a1 + 56), *(a1 + 60));
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(*buf);
  }

LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_296189CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN7AriHost9CancelTrxEiji_block_invoke_72(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", __p);
        v4 = v11 >= 0 ? __p : __p[0];
        v5 = *(a1 + 56);
        v6 = *(a1 + 60);
        *buf = 136316418;
        *&buf[4] = "ari";
        v13 = 2080;
        v14 = v4;
        v15 = 1024;
        v16 = 703;
        v17 = 1024;
        v18 = v5;
        v19 = 1024;
        v20 = v6;
        v21 = 1024;
        v22 = 5000;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) client 0x%x did not cancelTrx(0x%x) in %dms.  Likely client queue is stuck or stalled!", buf, 0x2Eu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "CancelTrx_block_invoke", buf);
      if (v15 >= 0)
      {
        v8 = buf;
      }

      else
      {
        v8 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) client 0x%x did not cancelTrx(0x%x) in %dms.  Likely client queue is stuck or stalled!", v7, v8, 703, *(a1 + 56), *(a1 + 60), 5000);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*buf);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_296189EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AriHost::RegIndication(unsigned int a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v4 = std::__shared_weak_count::lock(qword_2A1899100);
    v7 = v4;
    if (v4 && AriHost::SingletonWeakPtr)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v23 = 0;
      v8 = *AriHost::GetInstance(v4);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN7AriHost13RegIndicationEjiU13block_pointerFiPhjE_block_invoke;
      block[3] = &unk_29EE0FC28;
      v17 = a2;
      v18 = a1;
      block[4] = a3;
      block[5] = buf;
      v19 = HIWORD(a1) & 0xFC00 | (a1 >> 15) & 0x3FF;
      dispatch_sync(v8, block);
      v9 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v4);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegIndication", __p);
      v11 = v21 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v11;
      *&buf[22] = 1024;
      v23 = 730;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegIndication", buf);
    if (buf[23] >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v12, v13, 730);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v9 = 0xFFFFFFFFLL;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_29618A150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost13RegIndicationEjiU13block_pointerFiPhjE_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = (*(a1 + 48) >> 8) & 0x7F;
  Instance = AriHost::GetInstance(a1);
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(Instance + 424, v2);
  if (isAlloc)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegIndication_block_invoke", &__p);
        v6 = *(a1 + 52);
        v7 = v6 >> 26;
        v8 = (v6 >> 15) & 0x3FF;
        v9 = Ari::MsgDefById((v6 >> 26), v8);
        v10 = "Unknown";
        if (v9 && *(v9 + 48))
        {
          v10 = *(v9 + 48);
        }

        p_p = __p;
        if (v25 >= 0)
        {
          p_p = &__p;
        }

        *buf = 136316674;
        *&buf[4] = "ari";
        v27 = 2080;
        v28 = p_p;
        v29 = 1024;
        v30 = 753;
        v31 = 1024;
        v32 = v2;
        v33 = 2080;
        v34 = v10;
        v35 = 1024;
        v36 = v7;
        v37 = 1024;
        LODWORD(v38) = v8;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) registering %s (%d-0x%x)", buf, 0x38u);
        if (v25 < 0)
        {
          operator delete(__p);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegIndication_block_invoke", buf);
      v12 = *(a1 + 52);
      v13 = (v12 >> 26);
      v14 = (v12 >> 15) & 0x3FF;
      v15 = Ari::MsgDefById(v13, (v12 >> 15) & 0x3FF);
      v17 = "Unknown";
      if (v15 && *(v15 + 48))
      {
        v17 = *(v15 + 48);
      }

      v18 = *buf;
      if (v29 >= 0)
      {
        v18 = buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x) registering %s (%d-0x%x)", v16, v18, 753, v2, v17, v13, v14);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }
    }

    operator new();
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v19 = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegIndication_block_invoke", &__p);
      v23 = v25 >= 0 ? &__p : __p;
      *buf = 136315906;
      *&buf[4] = "ari";
      v27 = 2080;
      v28 = v23;
      v29 = 1024;
      v30 = 748;
      v31 = 1024;
      v32 = v2;
      _os_log_error_impl(&dword_296048000, v19, OS_LOG_TYPE_ERROR, "%s: (%s:%d) RegIndication: Client(0x%04x) has not been registered", buf, 0x22u);
      if (v25 < 0)
      {
        operator delete(__p);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "RegIndication_block_invoke", buf);
    if (v29 >= 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) RegIndication: Client(0x%04x) has not been registered", v20, v21, 748, v2);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = -1;
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t *ResMgr<AriHost::IndicationHandlerList>::operator[](uint64_t a1, int a2)
{
  v9 = a2;
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xA6);
  v4 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v4, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xA7);
  v5 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(a1, a2) == 0;
  ResMgr<AriHost::IndicationHandlerList>::sw_dbug_trap(a1, v5, v6);
  v10 = &v9;
  v7 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, a2);
  dispatch_semaphore_signal(*(a1 + 96));
  AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xAC);
  return v7 + 4;
}

void *std::list<std::shared_ptr<AriHost::InboundMsgHandler>>::erase(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(__p);
  return v4;
}

uint64_t AriHost::IndicationHandlerList::IndicationHandlerList(uint64_t this, int a2)
{
  *this = this;
  *(this + 8) = this;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 28) = a2;
  return this;
}

{
  *this = this;
  *(this + 8) = this;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 28) = a2;
  return this;
}

AriOsa *ResMgr<AriHost::IndicationHandlerList>::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  AriOsa::SWTrap((*(a1 + 104) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xB4);
  v6 = dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL) != 0;
  AriOsa::SWTrap(v6, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xB5);
  v7 = IDMgr::allocate((a1 + 40), a2);
  ResMgr<AriHost::IndicationHandlerList>::sw_dbug_trap(a1, v7 ^ 1, v8);
  v24 = (std::chrono::system_clock::now().__d_.__rep_ - AriOsa_Init_Time) / 1000;
  v25 = &v25;
  v26 = &v25;
  v27 = 0;
  if (*(a3 + 8) != a3)
  {
    std::list<std::shared_ptr<AriHost::InboundMsgHandler>>::push_back();
  }

  v28 = *(a3 + 24);
  v30 = &v29;
  v9 = std::__hash_table<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, v29);
  v10 = v9;
  *(v9 + 6) = v24;
  if (v9 + 3 != &v24)
  {
    v11 = v9 + 4;
    v12 = v26;
    for (i = v9[5]; v12 != &v25 && i != v11; i = i[1])
    {
      v16 = v12[2];
      v15 = v12[3];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = i[3];
      i[2] = v16;
      i[3] = v15;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v12 = v12[1];
    }

    if (i == v11)
    {
      if (v12 != &v25)
      {
        operator new();
      }
    }

    else
    {
      v19 = *(v10[4] + 8);
      v20 = *i;
      *(v20 + 8) = v19;
      *v19 = v20;
      do
      {
        v21 = i[1];
        --v10[6];
        v22 = i[3];
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        operator delete(i);
        i = v21;
      }

      while (v21 != v11);
    }
  }

  v10[7] = v28;
  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(&v25);
  dispatch_semaphore_signal(*(a1 + 96));
  return AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xBA);
}

void AriHost::IndicationHandlerList::~IndicationHandlerList(AriHost::IndicationHandlerList *this)
{
  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(this);
}

{
  std::__list_imp<std::shared_ptr<Ari::ClientOutboundMessage>>::clear(this);
}

uint64_t AriHost::DeregIndication(AriHost *this, unsigned int a2)
{
  v2 = this;
  v23 = *MEMORY[0x29EDCA608];
  v3 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v3 = std::__shared_weak_count::lock(qword_2A1899100);
    v5 = v3;
    if (v3 && AriHost::SingletonWeakPtr)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v22 = 0;
      Instance = AriHost::GetInstance(v3);
      v7 = *Instance;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN7AriHost15DeregIndicationEji_block_invoke;
      block[3] = &unk_29EE0FC50;
      block[4] = buf;
      block[5] = Instance;
      v16 = (a2 >> 8) & 0x7F;
      v17 = HIWORD(v2) & 0xFC00 | (v2 >> 15) & 0x3FF;
      v18 = v2;
      dispatch_sync(v7, block);
      v8 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      goto LABEL_20;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v3);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication", __p);
      v10 = v20 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v10;
      *&buf[22] = 1024;
      v22 = 832;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication", buf);
    if (buf[23] >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v11, v12, 832);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v8 = 0xFFFFFFFFLL;
  if (v5)
  {
    goto LABEL_19;
  }

LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_29618B268(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN7AriHost15DeregIndicationEji_block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 40) + 424, *(a1 + 48));
  if (!isAlloc)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication_block_invoke", __p);
        v53 = v63 >= 0 ? __p : __p[0];
        v54 = *(a1 + 48);
        *buf = 136315906;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v53;
        *&buf[22] = 1024;
        v65 = 852;
        v66 = 1024;
        *v67 = v54;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) cid (0x%x) is not registered", buf, 0x22u);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication_block_invoke", buf);
      if (buf[23] >= 0)
      {
        v28 = buf;
      }

      else
      {
        v28 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) cid (0x%x) is not registered", v27, v28, 852, *(a1 + 48));
      goto LABEL_43;
    }

LABEL_45:
    result = 0xFFFFFFFFLL;
LABEL_46:
    *(*(*(a1 + 32) + 8) + 24) = result;
    goto LABEL_47;
  }

  v3 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 40) + 112, *(a1 + 52));
  if (!v3)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v29 = AriOsa::GetOsLog(v3);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication_block_invoke", __p);
        v55 = v63;
        v56 = __p[0];
        v57 = *(a1 + 56);
        v58 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 40) + 424, *(a1 + 48));
        if (v55 >= 0)
        {
          v59 = __p;
        }

        else
        {
          v59 = v56;
        }

        v60 = *v58;
        if (*(*v58 + 23) < 0)
        {
          v60 = *v60;
        }

        v61 = *(a1 + 48);
        *buf = 136316674;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v59;
        *&buf[22] = 1024;
        v65 = 859;
        v66 = 1024;
        *v67 = v57 >> 26;
        *&v67[4] = 1024;
        *&v67[6] = (v57 >> 15) & 0x3FF;
        LOWORD(v68) = 2080;
        *(&v68 + 2) = v60;
        WORD5(v68) = 1024;
        HIDWORD(v68) = v61;
        _os_log_error_impl(&dword_296048000, v29, OS_LOG_TYPE_ERROR, "%s: (%s:%d) DeregIndication: gmid (%d-0x%x) is not registered with any handler (for %s cid 0x%x)", buf, 0x38u);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v30 = buf;
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication_block_invoke", buf);
      if (buf[23] < 0)
      {
        v30 = *buf;
      }

      v31 = *(a1 + 56);
      v32 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 40) + 424, *(a1 + 48));
      v34 = *v32;
      if (*(*v32 + 23) < 0)
      {
        v34 = *v34;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) DeregIndication: gmid (%d-0x%x) is not registered with any handler (for %s cid 0x%x)", v33, v30, 859, v31 >> 26, (v31 >> 15) & 0x3FF, v34, *(a1 + 48));
LABEL_43:
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_45;
    }

    goto LABEL_45;
  }

  if ((DefaultLogLevel & 0x20) != 0)
  {
    v4 = AriOsa::GetOsLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication_block_invoke", __p);
      if (v63 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      v6 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 40) + 424, *(a1 + 48));
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = *(a1 + 56);
      v9 = v8 >> 26;
      v10 = (v8 >> 15) & 0x3FF;
      v11 = Ari::MsgDefById((v8 >> 26), v10);
      v12 = "Unknown";
      if (v11 && *(v11 + 48))
      {
        v12 = *(v11 + 48);
      }

      v13 = *(a1 + 48);
      *buf = 136316930;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v5;
      *&buf[22] = 1024;
      v65 = 864;
      v66 = 2080;
      *v67 = v7;
      *&v67[8] = 1024;
      LODWORD(v68) = v13;
      WORD2(v68) = 2080;
      *(&v68 + 6) = v12;
      HIWORD(v68) = 1024;
      v69 = v9;
      v70 = 1024;
      v71 = v10;
      _os_log_impl(&dword_296048000, v4, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client %s (0x%x) de-registering %s (%d-0x%x)", buf, 0x42u);
      if (v63 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "DeregIndication_block_invoke", buf);
    if (buf[23] >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    v15 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](*(a1 + 40) + 424, *(a1 + 48));
    v16 = *v15;
    if (*(*v15 + 23) < 0)
    {
      v16 = *v16;
    }

    v17 = *(a1 + 56);
    v18 = (v17 >> 26);
    v19 = (v17 >> 15) & 0x3FF;
    v20 = Ari::MsgDefById(v18, (v17 >> 15) & 0x3FF);
    v22 = "Unknown";
    if (v20 && *(v20 + 48))
    {
      v22 = *(v20 + 48);
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client %s (0x%x) de-registering %s (%d-0x%x)", v21, v14, 864, v16, *(a1 + 48), v22, v18, v19);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  result = ResMgr<AriHost::IndicationHandlerList>::operator[](*(a1 + 40) + 112, *(a1 + 52));
  v24 = result;
  v25 = *(result + 8);
  while (v25 != v24)
  {
    if (*(v25[2] + 8) == *(a1 + 48))
    {
      result = std::list<std::shared_ptr<AriHost::InboundMsgHandler>>::erase(v24, v25);
      v25 = result;
    }

    else
    {
      v25 = v25[1];
    }
  }

  if (!*(v24 + 16))
  {
    v36 = *(a1 + 40);
    v37 = *(a1 + 52);
    AriOsa::SWTrap((*(v36 + 216) == 0), "valid == false", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xEB);
    v38 = dispatch_semaphore_wait(*(v36 + 208), 0xFFFFFFFFFFFFFFFFLL) != 0;
    AriOsa::SWTrap(v38, "AriOsa::OsMutexTake(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xEC);
    v39 = IDMgr::_free((v36 + 152), v37, v36 + 160);
    v40 = (v36 + 112);
    ResMgr<AriHost::IndicationHandlerList>::sw_dbug_trap((v36 + 112), v39 ^ 1, v41);
    v42 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v36 + 112), v37);
    v43 = *(v36 + 120);
    v44 = v42[1];
    v45 = vcnt_s8(v43);
    v45.i16[0] = vaddlv_u8(v45);
    if (v45.u32[0] > 1uLL)
    {
      if (v44 >= *&v43)
      {
        v44 %= *&v43;
      }
    }

    else
    {
      v44 &= *&v43 - 1;
    }

    v46 = *(*v40 + 8 * v44);
    do
    {
      v47 = v46;
      v46 = *v46;
    }

    while (v46 != v42);
    if (v47 == (v36 + 128))
    {
      goto LABEL_66;
    }

    v48 = v47[1];
    if (v45.u32[0] > 1uLL)
    {
      if (v48 >= *&v43)
      {
        v48 %= *&v43;
      }
    }

    else
    {
      v48 &= *&v43 - 1;
    }

    if (v48 != v44)
    {
LABEL_66:
      if (!*v42)
      {
        goto LABEL_67;
      }

      v49 = *(*v42 + 8);
      if (v45.u32[0] > 1uLL)
      {
        if (v49 >= *&v43)
        {
          v49 %= *&v43;
        }
      }

      else
      {
        v49 &= *&v43 - 1;
      }

      if (v49 != v44)
      {
LABEL_67:
        *(*v40 + 8 * v44) = 0;
      }
    }

    v50 = *v42;
    if (*v42)
    {
      v51 = *(v50 + 8);
      if (v45.u32[0] > 1uLL)
      {
        if (v51 >= *&v43)
        {
          v51 %= *&v43;
        }
      }

      else
      {
        v51 &= *&v43 - 1;
      }

      if (v51 != v44)
      {
        *(*v40 + 8 * v51) = v47;
        v50 = *v42;
      }
    }

    *v47 = v50;
    *v42 = 0;
    --*(v36 + 136);
    *buf = v42;
    *&buf[8] = v36 + 112;
    buf[16] = 1;
    *&buf[17] = 0;
    *&buf[20] = 0;
    std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::pair<unsigned int,AriHost::IndicationHandlerList>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
    dispatch_semaphore_signal(*(v36 + 208));
    result = AriOsa::SWTrap(0, "AriOsa::OsMutexGive(mtx) == ARI_RESULT_ERR", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_utils.h", 0xF1);
    v52 = *(a1 + 40);
    if (*(v52 + 256) != -1)
    {
      result = (*(**(v52 + 608) + 56))(*(v52 + 608), *(a1 + 52));
      goto LABEL_46;
    }
  }

LABEL_47:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29618BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::AbortTransactions(AriHost *this, NSObject *a2, dispatch_group_s *a3)
{
  v4 = this;
  Instance = AriHost::GetInstance(this);
  v6 = *Instance;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZN7AriHost17AbortTransactionsEjP16dispatch_group_s_block_invoke;
  v7[3] = &__block_descriptor_tmp_95;
  v7[4] = Instance;
  v8 = v4;
  dispatch_group_async(a2, v6, v7);
}

void ___ZN7AriHost17AbortTransactionsEjP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(*(a1 + 32) + 424, *(a1 + 40));
  if (isAlloc)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", __p);
        v4 = v33 >= 0 ? __p : __p[0];
        v5 = *(a1 + 40);
        *buf = 136315906;
        *&buf[4] = "ari";
        v35 = 2080;
        v36 = v4;
        v37 = 1024;
        v38 = 902;
        v39 = 1024;
        v40 = v5;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Aborting transactions for cid 0x%x", buf, 0x22u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", buf);
      if (v37 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Aborting transactions for cid 0x%x", v6, v7, 902, *(a1 + 40));
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    v8 = AriHost::cancelBlockedRequests_nl(isAlloc, *(a1 + 40));
    if (v8 && (DefaultLogLevel & 0x10) != 0)
    {
      v9 = AriOsa::GetOsLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", __p);
        v10 = v33 >= 0 ? __p : __p[0];
        v11 = *(a1 + 40);
        *buf = 136315906;
        *&buf[4] = "ari";
        v35 = 2080;
        v36 = v10;
        v37 = 1024;
        v38 = 906;
        v39 = 1024;
        v40 = v11;
        _os_log_impl(&dword_296048000, v9, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) failed to abort blocked requests for cid 0x%x", buf, 0x22u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", buf);
      if (v37 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) failed to abort blocked requests for cid 0x%x", v12, v13, 906, *(a1 + 40));
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    v14 = Ari::ClientWorkQueue::abort((*(a1 + 32) + 264), *(a1 + 40));
    if (v14 && (DefaultLogLevel & 0x10) != 0)
    {
      v15 = AriOsa::GetOsLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", __p);
        v16 = v33 >= 0 ? __p : __p[0];
        v17 = *(a1 + 40);
        *buf = 136315906;
        *&buf[4] = "ari";
        v35 = 2080;
        v36 = v16;
        v37 = 1024;
        v38 = 911;
        v39 = 1024;
        v40 = v17;
        _os_log_impl(&dword_296048000, v15, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) failed to abort [normal] stalled requests for cid 0x%x", buf, 0x22u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", buf);
      if (v37 >= 0)
      {
        v19 = buf;
      }

      else
      {
        v19 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) failed to abort [normal] stalled requests for cid 0x%x", v18, v19, 911, *(a1 + 40));
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    v20 = Ari::ClientWorkQueue::abort((*(a1 + 32) + 344), *(a1 + 40));
    if (v20 && (DefaultLogLevel & 0x10) != 0)
    {
      v21 = AriOsa::GetOsLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", __p);
        v22 = v33 >= 0 ? __p : __p[0];
        v23 = *(a1 + 40);
        *buf = 136315906;
        *&buf[4] = "ari";
        v35 = 2080;
        v36 = v22;
        v37 = 1024;
        v38 = 916;
        v39 = 1024;
        v40 = v23;
        _os_log_impl(&dword_296048000, v21, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) failed to abort [low-prio] stalled requests for cid 0x%x", buf, 0x22u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", buf);
      if (v37 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) failed to abort [low-prio] stalled requests for cid 0x%x", v24, v25, 916, *(a1 + 40));
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }
    }

    AriHost::nackResponseHandlers_nl(*(a1 + 32), *(a1 + 40));
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v26 = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", __p);
      v30 = v33 >= 0 ? __p : __p[0];
      v31 = *(a1 + 40);
      *buf = 136315906;
      *&buf[4] = "ari";
      v35 = 2080;
      v36 = v30;
      v37 = 1024;
      v38 = 898;
      v39 = 1024;
      v40 = v31;
      _os_log_error_impl(&dword_296048000, v26, OS_LOG_TYPE_ERROR, "%s: (%s:%d) cid 0x%x not registered", buf, 0x22u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "AbortTransactions_block_invoke", buf);
    if (v37 >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) cid 0x%x not registered", v27, v28, 898, *(a1 + 40));
    if (SHIBYTE(v37) < 0)
    {
      operator delete(*buf);
    }
  }

  v29 = *MEMORY[0x29EDCA608];
}

void sub_29618C16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::cancelBlockedRequests_nl(AriHost *this, int a2)
{
  Instance = AriHost::GetInstance(this);
  v4 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((Instance + 8), a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = (v4 + 3);

  return AriHost::TransactionMgr::cancelBlockedRequests(v5);
}

void AriHost::nackResponseHandlers_nl(AriHost *this, int a2)
{
  v2[7] = *MEMORY[0x29EDCA608];
  v2[0] = v2;
  v2[1] = v2;
  v2[2] = 0;
  if (std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>(this + 1, a2))
  {
    v2[6] = 0;
    operator new();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_29618C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__list_imp<std::pair<unsigned int,std::shared_ptr<AriHost::InboundMsgHandler>>>::clear(va);
  _Unwind_Resume(a1);
}

void AriHost::ContinueTransactions(AriHost *this)
{
  v1 = this;
  Instance = AriHost::GetInstance(this);
  v3 = *Instance;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN7AriHost20ContinueTransactionsEj_block_invoke;
  v4[3] = &__block_descriptor_tmp_96;
  v4[4] = Instance;
  v5 = v1;
  dispatch_sync(v3, v4);
}

uint64_t *___ZN7AriHost20ContinueTransactionsEj_block_invoke(uint64_t a1)
{
  result = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((*(a1 + 32) + 8), *(a1 + 40));
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *(result + 284) = 0;
  return result;
}

uint64_t AriHost::ClientInboundRespCB(AriHost *this, unsigned __int8 *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v3 = std::__shared_weak_count::lock(qword_2A1899100);
    v5 = v3;
    if (v3 && AriHost::SingletonWeakPtr)
    {
      BufHeader = AriMsg::GetBufHeader(this, a2);
      if (BufHeader)
      {
        if (*(BufHeader + 2) >> 17)
        {
          if (!(a2 >> 32))
          {
            __p[0] = this;
            memset(buf, 170, 16);
            v24 = &a2[this];
            std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
          }

          if ((DefaultLogLevel & 8) == 0)
          {
            goto LABEL_34;
          }

          OsLog = AriOsa::GetOsLog(BufHeader);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB", __p);
            v21 = v23 >= 0 ? __p : __p[0];
            *buf = 136315906;
            *&buf[4] = "ari";
            *&buf[12] = 2080;
            *&buf[14] = v21;
            v26 = 1024;
            v27 = 951;
            v28 = 2048;
            v29 = a2;
            _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid response size %lu\n", buf, 0x26u);
            if (v23 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB", buf);
          if (v26 >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid response size %lu\n", v18, v19, 951, a2);
          goto LABEL_29;
        }

        v7 = 0;
      }

      else
      {
        v7 = 0x8000;
      }

      if ((DefaultLogLevel & 8) == 0)
      {
LABEL_34:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_35;
      }

      v12 = AriOsa::GetOsLog(BufHeader);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB", __p);
        v20 = v23 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v20;
        v26 = 1024;
        v27 = 945;
        v28 = 1024;
        LODWORD(v29) = v7;
        _os_log_error_impl(&dword_296048000, v12, OS_LOG_TYPE_ERROR, "%s: (%s:%d) GetBufCtx Invalid CTX(0x%08x)", buf, 0x22u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB", buf);
      if (v26 >= 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) GetBufCtx Invalid CTX(0x%08x)", v13, v14, 945, v7);
LABEL_29:
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    v8 = AriOsa::GetOsLog(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB", __p);
      v9 = v23 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v9;
      v26 = 1024;
      v27 = 937;
      _os_log_impl(&dword_296048000, v8, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB", buf);
    if (v26 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v10, v11, 937);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v5)
  {
    goto LABEL_34;
  }

LABEL_35:
  v15 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void ___ZN7AriHost19ClientInboundRespCBEPhm_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x29EDCA608];
  Instance = AriHost::GetInstance(a1);
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(Instance + 424, *(a1 + 64));
  if (isAlloc)
  {
    v4 = AriHost::GetInstance(isAlloc);
    v5 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v4 + 424, *(a1 + 64));
    v7 = *(*v5 + 24);
    v6 = *(*v5 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = AriHost::GetInstance(v5);
    v9 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v8 + 8), *(a1 + 64));
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v10 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc((v9 + 3), *(a1 + 72));
    if (v10)
    {
      v11 = AriHost::GetInstance(v10);
      v12 = std::__hash_table<std::__hash_value_type<int,AriHost::TransactionMgr>,std::__unordered_map_hasher<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,AriHost::TransactionMgr>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,AriHost::TransactionMgr>>>::find<int>((v11 + 8), *(a1 + 64));
      if (!v12)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v13 = ResMgr<std::shared_ptr<AriHost::InboundMsgHandler>>::operator[]((v12 + 3), *(a1 + 72));
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      v40[0] = *(a1 + 48);
      v40[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      AriHost::safeReleaseTrx_nl(v16, v40);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v18 = *v7;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost19ClientInboundRespCBEPhm_block_invoke_2;
      block[3] = &__block_descriptor_tmp_101;
      v19 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v35 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = v15;
      v37 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a1 + 56);
      v38 = *(a1 + 48);
      v39 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_async(v18, block);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    else if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v10);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB_block_invoke", __p);
        v31 = v42 >= 0 ? __p : __p[0];
        v33 = *(a1 + 68);
        v32 = *(a1 + 72);
        *buf = 136316162;
        *&buf[4] = "ari";
        v44 = 2080;
        v45 = v31;
        v46 = 1024;
        v47 = 973;
        v48 = 1024;
        v49 = v32;
        v50 = 1024;
        v51 = v33;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) No handling block for trx 0x%04x from ctx 0x%08x", buf, 0x28u);
        if (v42 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB_block_invoke", buf);
      if (v46 >= 0)
      {
        v26 = buf;
      }

      else
      {
        v26 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) No handling block for trx 0x%04x from ctx 0x%08x", v25, v26, 973, *(a1 + 72), *(a1 + 68));
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    v21 = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB_block_invoke", __p);
      v28 = v42 >= 0 ? __p : __p[0];
      v29 = *(a1 + 64);
      v30 = *(a1 + 68);
      *buf = 136316162;
      *&buf[4] = "ari";
      v44 = 2080;
      v45 = v28;
      v46 = 1024;
      v47 = 966;
      v48 = 1024;
      v49 = v29;
      v50 = 1024;
      v51 = v30;
      _os_log_error_impl(&dword_296048000, v21, OS_LOG_TYPE_ERROR, "%s: (%s:%d) No dispatch queue for cid 0x%04x from ctx 0x%08x", buf, 0x28u);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundRespCB_block_invoke", buf);
    if (v46 >= 0)
    {
      v23 = buf;
    }

    else
    {
      v23 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) No dispatch queue for cid 0x%04x from ctx 0x%08x", v22, v23, 966, *(a1 + 64), *(a1 + 68));
    if (SHIBYTE(v46) < 0)
    {
      operator delete(*buf);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

void sub_29618D058(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c55_ZTSNSt3__110shared_ptrIN7AriHost17InboundMsgHandlerEEE64c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  result[8] = a2[8];
  result[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c55_ZTSNSt3__110shared_ptrIN7AriHost17InboundMsgHandlerEEE64c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c34_ZTSNSt3__110shared_ptrI7AriHostEE48c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AriHost::ClientInboundIndCB(AriHost *this, unsigned __int8 *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v3 = std::__shared_weak_count::lock(qword_2A1899100);
    v5 = v3;
    if (v3 && AriHost::SingletonWeakPtr)
    {
      AriMsg::GetBufGmid(this, a2);
      BufHeader = AriMsg::GetBufHeader(this, a2);
      if (BufHeader)
      {
        if (!(a2 >> 32))
        {
          __p[0] = this;
          memset(buf, 170, 16);
          v23 = &a2[this];
          std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
        }

        if ((DefaultLogLevel & 8) == 0)
        {
          goto LABEL_36;
        }

        OsLog = AriOsa::GetOsLog(BufHeader);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB", __p);
          v20 = v22 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          *&buf[12] = 2080;
          *&buf[14] = v20;
          v25 = 1024;
          v26 = 1016;
          v27 = 2048;
          v28 = a2;
          _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid indication size %lu\n", buf, 0x26u);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB", buf);
        if (v25 >= 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid indication size %lu\n", v15, v16, 1016, a2);
      }

      else
      {
        if ((DefaultLogLevel & 8) == 0)
        {
LABEL_36:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_37;
        }

        v11 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB", __p);
          v19 = v22 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "ari";
          *&buf[12] = 2080;
          *&buf[14] = v19;
          v25 = 1024;
          v26 = 1003;
          v27 = 1024;
          LODWORD(v28) = 0x8000;
          _os_log_error_impl(&dword_296048000, v11, OS_LOG_TYPE_ERROR, "%s: (%s:%d) GetBufCtx Invalid CTX(0x%08x)", buf, 0x22u);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB", buf);
        if (v25 >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) GetBufCtx Invalid CTX(0x%08x)", v12, v13, 1003, 0x8000);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    v7 = AriOsa::GetOsLog(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB", __p);
      v8 = v22 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      v25 = 1024;
      v26 = 994;
      _os_log_impl(&dword_296048000, v7, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB", buf);
    if (v25 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v9, v10, 994);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v5)
  {
    goto LABEL_36;
  }

LABEL_37:
  v17 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void ___ZN7AriHost18ClientInboundIndCBEPhm_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x29EDCA608];
  Instance = AriHost::GetInstance(a1);
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(Instance + 112, *(a1 + 64));
  if (!isAlloc)
  {
    if ((DefaultLogLevel & 8) == 0)
    {
      goto LABEL_64;
    }

    OsLog = AriOsa::GetOsLog(isAlloc);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB_block_invoke", __p);
      v48 = *(a1 + 68);
      v49 = Ari::MsgNameById(v48);
      v50 = __p[0];
      if (v63 >= 0)
      {
        v50 = __p;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v65 = 2080;
      v66 = v50;
      v67 = 1024;
      v68 = 1028;
      v69 = 2080;
      *&v70 = v49;
      WORD4(v70) = 1024;
      *(&v70 + 10) = (v48 >> 15) & 0x3FF;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Received indication %s gmid (%u) has not registered with any handler", buf, 0x2Cu);
      if (v63 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB_block_invoke", buf);
    v38 = *(a1 + 68);
    v39 = (v38 >> 15) & 0x3FF;
    v40 = Ari::MsgDefById((v38 >> 26), (v38 >> 15) & 0x3FF);
    v42 = "Unknown";
    if (v40 && *(v40 + 48))
    {
      v42 = *(v40 + 48);
    }

    v43 = *buf;
    if (v67 >= 0)
    {
      v43 = buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Received indication %s gmid (%u) has not registered with any handler", v41, v43, 1028, v42, v39);
    goto LABEL_62;
  }

  v4 = AriHost::GetInstance(isAlloc);
  v5 = ResMgr<AriHost::IndicationHandlerList>::operator[](v4 + 112, *(a1 + 64));
  v6 = v5[2];
  v7 = AriHost::GetInstance(v5);
  v8 = ResMgr<AriHost::IndicationHandlerList>::operator[](v7 + 112, *(a1 + 64));
  v9 = v8[1];
  v10 = AriHost::GetInstance(v8);
  v11 = ResMgr<AriHost::IndicationHandlerList>::operator[](v10 + 112, *(a1 + 64));
  if (v9 != v11)
  {
    v12 = 0;
    v55 = v6;
    while (1)
    {
      v13 = *(v9[2] + 8);
      v14 = AriHost::GetInstance(v11);
      v15 = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(v14 + 424, v13);
      if (!v15)
      {
        break;
      }

      v16 = AriHost::GetInstance(v15);
      v17 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](v16 + 424, v13);
      v18 = *(*v17 + 24);
      v19 = *(*v17 + 32);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v9[2];
      v21 = v9[3];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 >= 2)
      {
        if ((DefaultLogLevel & 4) != 0)
        {
          v22 = AriOsa::GetOsLog(v17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB_block_invoke", __p);
            v33 = __p;
            if (v63 < 0)
            {
              v33 = __p[0];
            }

            v54 = v33;
            v34 = Ari::MsgDefById((*(a1 + 68) >> 26), (*(a1 + 68) >> 15) & 0x3FF);
            v35 = "Unknown";
            if (v34)
            {
              v35 = *(v34 + 48);
              if (!v35)
              {
                v35 = "Unknown";
              }
            }

            v53 = v35;
            label = dispatch_queue_get_label(*v18);
            *buf = 136316674;
            *&buf[4] = "ari";
            v65 = 2080;
            v66 = v54;
            v67 = 1024;
            v68 = 1052;
            v69 = 1024;
            LODWORD(v70) = v12;
            WORD2(v70) = 2080;
            *(&v70 + 6) = v53;
            HIWORD(v70) = 1024;
            v71 = v13;
            v72 = 2080;
            v73 = label;
            _os_log_debug_impl(&dword_296048000, v22, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Multicast[%u] indication %s to cid(%d) q(%s)", buf, 0x3Cu);
            if (v63 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB_block_invoke", buf);
          if (v67 >= 0)
          {
            v23 = buf;
          }

          else
          {
            v23 = *buf;
          }

          v24 = Ari::MsgDefById((*(a1 + 68) >> 26), (*(a1 + 68) >> 15) & 0x3FF);
          if (v24)
          {
            if (*(v24 + 48))
            {
              v25 = *(v24 + 48);
            }

            else
            {
              v25 = "Unknown";
            }
          }

          else
          {
            v25 = "Unknown";
          }

          v26 = dispatch_queue_get_label(*v18);
          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Multicast[%u] indication %s to cid(%d) q(%s)", v27, v23, 1052, v12, v25, v13, v26);
          v6 = v55;
          if (SHIBYTE(v67) < 0)
          {
            operator delete(*buf);
          }
        }

        v12 = (v12 + 1);
      }

      v28 = *v18;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost18ClientInboundIndCBEPhm_block_invoke_2;
      block[3] = &__block_descriptor_tmp_109;
      v29 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v57 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = v20;
      v59 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(a1 + 56);
      v60 = *(a1 + 48);
      v61 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_async(v28, block);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      v31 = v57;
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v9 = v9[1];
      v32 = AriHost::GetInstance(v31);
      v11 = ResMgr<AriHost::IndicationHandlerList>::operator[](v32 + 112, *(a1 + 64));
      if (v9 == v11)
      {
        goto LABEL_64;
      }
    }

    if ((DefaultLogLevel & 8) != 0)
    {
      v44 = AriOsa::GetOsLog(v15);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB_block_invoke", __p);
        v51 = v63 >= 0 ? __p : __p[0];
        v52 = *(a1 + 68);
        *buf = 136316418;
        *&buf[4] = "ari";
        v65 = 2080;
        v66 = v51;
        v67 = 1024;
        v68 = 1044;
        v69 = 1024;
        LODWORD(v70) = v52 >> 26;
        WORD2(v70) = 1024;
        *(&v70 + 6) = (v52 >> 15) & 0x3FF;
        WORD5(v70) = 1024;
        HIDWORD(v70) = v13;
        _os_log_error_impl(&dword_296048000, v44, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Dropping ind(%d-0x%x): Client(0x%04x) is no longer registered", buf, 0x2Eu);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "ClientInboundIndCB_block_invoke", buf);
      if (v67 >= 0)
      {
        v46 = buf;
      }

      else
      {
        v46 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Dropping ind(%d-0x%x): Client(0x%04x) is no longer registered", v45, v46, 1044, *(a1 + 68) >> 26, (*(a1 + 68) >> 15) & 0x3FF, v13);
LABEL_62:
      if (SHIBYTE(v67) < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_64:
  v47 = *MEMORY[0x29EDCA608];
}

void sub_29618DE18(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::stallClients_nl(AriHost *this)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stallClients_nl", __p);
      v3 = v9 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v11 = 2080;
      v12 = v3;
      v13 = 1024;
      v14 = 1068;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) stalling clients", buf, 0x1Cu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "stallClients_nl", buf);
    if (v13 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) stalling clients", v4, v5, 1068);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }

  *(this + 312) = 1;
  *(this + 392) = 1;
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29618E028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriHost::flushLowPriorityRequests(NSObject **this, NSObject *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = qword_2A1899100;
  if (qword_2A1899100)
  {
    v3 = std::__shared_weak_count::lock(qword_2A1899100);
    v5 = v3;
    if (v3 && AriHost::SingletonWeakPtr)
    {
      v6 = *this;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN7AriHost24flushLowPriorityRequestsEP16dispatch_group_s_block_invoke;
      block[3] = &__block_descriptor_tmp_115;
      block[4] = this;
      block[5] = AriHost::SingletonWeakPtr;
      v13 = v3;
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      dispatch_group_async(a2, v6, block);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

LABEL_20:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      goto LABEL_21;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((DefaultLogLevel & 0x10) != 0)
  {
    OsLog = AriOsa::GetOsLog(v3);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "flushLowPriorityRequests", __p);
      v8 = v15 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v17 = 2080;
      v18 = v8;
      v19 = 1024;
      v20 = 1079;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Failed to lock on AriHost instance. Shutting down?", buf, 0x1Cu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "flushLowPriorityRequests", buf);
    if (v19 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Failed to lock on AriHost instance. Shutting down?", v9, v10, 1079);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v5)
  {
    goto LABEL_20;
  }

LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_29618E260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN7AriHost24flushLowPriorityRequestsEP16dispatch_group_s_block_invoke(AriOsa *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 4);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "flushLowPriorityRequests_block_invoke", __p);
      v3 = v1 + 400;
      v4 = __p[0];
      if (v11 >= 0)
      {
        v4 = __p;
      }

      if (*(v1 + 423) < 0)
      {
        v3 = *(v1 + 400);
      }

      *buf = 136315906;
      *&buf[4] = "ari";
      v13 = 2080;
      v14 = v4;
      v15 = 1024;
      v16 = 1085;
      v17 = 2080;
      v18 = v3;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Flushing %s", buf, 0x26u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "flushLowPriorityRequests_block_invoke", buf);
    v6 = *buf;
    if (v15 >= 0)
    {
      v6 = buf;
    }

    if (*(v1 + 423) >= 0)
    {
      v7 = v1 + 400;
    }

    else
    {
      v7 = *(v1 + 400);
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Flushing %s", v5, v6, 1085, v7);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }
  }

  result = Ari::ClientWorkQueue::flush((v1 + 344));
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29618E434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::flushStalledRequests_nl(AriHost *this)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "flushStalledRequests_nl", v8);
      v7 = v9 >= 0 ? v8 : v8[0];
      *__p = 136315650;
      *&__p[4] = "ari";
      v11 = 2080;
      v12 = v7;
      v13 = 1024;
      v14 = 1093;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) flushing host", __p, 0x1Cu);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "flushStalledRequests_nl", __p);
    if (v13 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) flushing host", v3, v4, 1093);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*__p);
    }
  }

  result = Ari::ClientWorkQueue::flush((this + 264));
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29618E5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::TransactionMgr::cancelBlockedRequests(int8x8_t *this)
{
  v71 = *MEMORY[0x29EDCA608];
  if (this[21])
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", __p);
        v3 = v59 >= 0 ? __p : __p[0];
        v4 = this[18].i32[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v61 = 2080;
        v62 = v3;
        v63 = 1024;
        v64 = 2261;
        v65 = 1024;
        v66 = v4;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) cancelling blocked requests for cid 0x%x", buf, 0x22u);
        if (v59 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", buf);
      if (v63 >= 0)
      {
        v6 = buf;
      }

      else
      {
        v6 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) cancelling blocked requests for cid 0x%x", v5, v6, 2261, this[18].u32[0]);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(*buf);
      }
    }

    v7 = 0;
    do
    {
      v56 = 0xAAAAAAAAAAAAAAAALL;
      v57 = 0xAAAAAAAAAAAAAAAALL;
      AriHost::TransactionMgr::unblockMessage(this, &v56);
      v9 = v56;
      if (v56)
      {
        if ((DefaultLogLevel & 0x20) != 0)
        {
          v10 = AriOsa::GetOsLog(v8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", __p);
            v11 = v59;
            v12 = __p[0];
            v13 = *(v9 + 32);
            v14 = *(v9 + 36);
            GetBufDigest(**(v9 + 16), 0, (*(*(v9 + 16) + 8) - **(v9 + 16)), v54);
            v15 = __p;
            if (v11 < 0)
            {
              v15 = v12;
            }

            v16 = v54;
            if (v55 < 0)
            {
              v16 = v54[0];
            }

            *buf = 136316418;
            *&buf[4] = "ari";
            v61 = 2080;
            v62 = v15;
            v63 = 1024;
            v64 = 2264;
            v65 = 1024;
            v66 = v13;
            v67 = 1024;
            v68 = v14;
            v69 = 2080;
            v70 = v16;
            _os_log_impl(&dword_296048000, v10, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) canceling ctx 0x%x gmid 0x%x %s", buf, 0x32u);
            if (v55 < 0)
            {
              operator delete(v54[0]);
            }

            if (v59 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", buf);
          v17 = SHIBYTE(v63);
          v18 = *buf;
          v19 = *(v9 + 32);
          v20 = *(v9 + 36);
          GetBufDigest(**(v9 + 16), 0, (*(*(v9 + 16) + 8) - **(v9 + 16)), __p);
          v22 = buf;
          if (v17 < 0)
          {
            v22 = v18;
          }

          v23 = __p;
          if (v59 < 0)
          {
            v23 = __p[0];
          }

          AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) canceling ctx 0x%x gmid 0x%x %s", v21, v22, 2264, v19, v20, v23);
          if (v59 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v63) < 0)
          {
            operator delete(*buf);
          }
        }

        v24 = AriHost::CancelTrx(*(v9 + 32), *(v9 + 36), -85);
        if (v24)
        {
          if ((DefaultLogLevel & 8) != 0)
          {
            v25 = AriOsa::GetOsLog(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", __p);
              v33 = v59;
              v34 = __p[0];
              v35 = *(v9 + 32);
              v36 = *(v9 + 36);
              GetBufDigest(**(v9 + 16), 0, (*(*(v9 + 16) + 8) - **(v9 + 16)), v54);
              v37 = __p;
              if (v33 < 0)
              {
                v37 = v34;
              }

              v38 = v54;
              if (v55 < 0)
              {
                v38 = v54[0];
              }

              *buf = 136316418;
              *&buf[4] = "ari";
              v61 = 2080;
              v62 = v37;
              v63 = 1024;
              v64 = 2267;
              v65 = 1024;
              v66 = v35;
              v67 = 1024;
              v68 = v36;
              v69 = 2080;
              v70 = v38;
              _os_log_error_impl(&dword_296048000, v25, OS_LOG_TYPE_ERROR, "%s: (%s:%d) error cancelling ctx 0x%x gmid 0x%x %s", buf, 0x32u);
              if (v55 < 0)
              {
                operator delete(v54[0]);
              }

              if (v59 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", buf);
            v26 = SHIBYTE(v63);
            v27 = *buf;
            v28 = *(v9 + 32);
            v29 = *(v9 + 36);
            GetBufDigest(**(v9 + 16), 0, (*(*(v9 + 16) + 8) - **(v9 + 16)), __p);
            v31 = buf;
            if (v26 < 0)
            {
              v31 = v27;
            }

            v32 = __p;
            if (v59 < 0)
            {
              v32 = __p[0];
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) error cancelling ctx 0x%x gmid 0x%x %s", v30, v31, 2267, v28, v29, v32);
            if (v59 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v63) < 0)
            {
              operator delete(*buf);
            }
          }

          v7 = 0xFFFFFFFFLL;
        }
      }

      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }
    }

    while (v9);
    for (i = this[24]; i; i = **&i)
    {
      v40 = *(*&i + 16);
      v41 = this[28];
      if (!*&v41)
      {
        goto LABEL_76;
      }

      v42 = vcnt_s8(v41);
      v42.i16[0] = vaddlv_u8(v42);
      if (v42.u32[0] > 1uLL)
      {
        v43 = *(*&i + 16);
        if (*&v41 <= v40)
        {
          v43 = v40 % *&v41;
        }
      }

      else
      {
        v43 = (*&v41 - 1) & v40;
      }

      v44 = *(*&this[27] + 8 * v43);
      if (!v44 || (v45 = *v44) == 0)
      {
LABEL_76:
        operator new();
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 == v40)
        {
          break;
        }

        if (v42.u32[0] > 1uLL)
        {
          if (v46 >= *&v41)
          {
            v46 %= *&v41;
          }
        }

        else
        {
          v46 &= *&v41 - 1;
        }

        if (v46 != v43)
        {
          goto LABEL_76;
        }

LABEL_75:
        v45 = *v45;
        if (!v45)
        {
          goto LABEL_76;
        }
      }

      if (*(v45 + 4) != v40)
      {
        goto LABEL_75;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::clear(&this[22]);
  }

  else
  {
    if ((DefaultLogLevel & 4) != 0)
    {
      v47 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", __p);
        v52 = v59 >= 0 ? __p : __p[0];
        v53 = this[18].i32[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v61 = 2080;
        v62 = v52;
        v63 = 1024;
        v64 = 2256;
        v65 = 1024;
        v66 = v53;
        _os_log_debug_impl(&dword_296048000, v47, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) no blocked requests to cancel for cid 0x%x", buf, 0x22u);
        if (v59 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelBlockedRequests", buf);
      if (v63 >= 0)
      {
        v49 = buf;
      }

      else
      {
        v49 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) no blocked requests to cancel for cid 0x%x", v48, v49, 2256, this[18].u32[0]);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(*buf);
      }
    }

    v7 = 0;
  }

  v50 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_29618EE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::cancelStalledRequests_nl(AriHost *this)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelStalledRequests_nl", v8);
      v7 = v9 >= 0 ? v8 : v8[0];
      *__p = 136315650;
      *&__p[4] = "ari";
      v11 = 2080;
      v12 = v7;
      v13 = 1024;
      v14 = 1108;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) cancelling host stalled requests and stalling client work queue", __p, 0x1Cu);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "cancelStalledRequests_nl", __p);
    if (v13 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) cancelling host stalled requests and stalling client work queue", v3, v4, 1108);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*__p);
    }
  }

  result = Ari::ClientWorkQueue::cancel((this + 264));
  if (!result)
  {
    result = Ari::ClientWorkQueue::cancel((this + 344));
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29618F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriHost::startClient_nl(AriHost *this, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  isAlloc = ResMgr<std::shared_ptr<AriHost::ClientData>>::isAlloc(this + 424, a2);
  if (isAlloc)
  {
    v5 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, a2);
    v7 = *(*v5 + 80);
    v6 = *(*v5 + 88);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      if ((DefaultLogLevel & 0x20) != 0)
      {
        OsLog = AriOsa::GetOsLog(v5);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl", &__p);
          v9 = v22 >= 0 ? &__p : __p;
          *buf = 136315906;
          *&buf[4] = "ari";
          v26 = 2080;
          v27 = v9;
          v28 = 1024;
          v29 = 1125;
          v30 = 1024;
          v31 = a2;
          _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) start", buf, 0x22u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl", buf);
        if (v28 >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Client(0x%04x) start", v10, v11, 1125, a2);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(*buf);
        }
      }

      v12 = ResMgr<std::shared_ptr<AriHost::ClientData>>::operator[](this + 424, a2);
      v14 = *(*v12 + 24);
      v13 = *(*v12 + 32);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v23 = 0xAAAAAAAAAAAAAAAALL;
      v24 = 0xAAAAAAAAAAAAAAAALL;
      AriDispatch::Group::Create(v12);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    result = 0;
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v16 = AriOsa::GetOsLog(isAlloc);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl", &__p);
        v20 = v22 >= 0 ? &__p : __p;
        *buf = 136315906;
        *&buf[4] = "ari";
        v26 = 2080;
        v27 = v20;
        v28 = 1024;
        v29 = 1120;
        v30 = 1024;
        v31 = a2;
        _os_log_error_impl(&dword_296048000, v16, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Trying to start an unregistered client(0x%x). Ignored", buf, 0x22u);
        if (v22 < 0)
        {
          operator delete(__p);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl", buf);
      if (v28 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Trying to start an unregistered client(0x%x). Ignored", v17, v18, 1120, a2);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(*buf);
      }
    }

    result = 0xFFFFFFFFLL;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29618F5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c56_ZTSNSt3__110shared_ptrIN7AriHost18ClientEventHandlerEEE48c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c56_ZTSNSt3__110shared_ptrIN7AriHost18ClientEventHandlerEEE48c47_ZTSNSt3__110shared_ptrIN11AriDispatch5GroupEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN7AriHost14startClient_nlEi_block_invoke_121(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if ((DefaultLogLevel & 0x10) == 0)
    {
      goto LABEL_21;
    }

    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl_block_invoke", __p);
      v3 = v14 >= 0 ? __p : __p[0];
      v4 = *(a1 + 56);
      *buf = 136315906;
      *&buf[4] = "ari";
      v16 = 2080;
      v17 = v3;
      v18 = 1024;
      v19 = 1138;
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Client(0x%04x) start done (took too long)", buf, 0x22u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl_block_invoke", buf);
    if (v18 >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Client(0x%04x) start done (took too long)", v5, v6, 1138, *(a1 + 56));
  }

  else
  {
    if ((DefaultLogLevel & 4) == 0)
    {
      goto LABEL_21;
    }

    v7 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl_block_invoke", __p);
      v11 = v14 >= 0 ? __p : __p[0];
      v12 = *(a1 + 56);
      *buf = 136315906;
      *&buf[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 1142;
      v20 = 1024;
      v21 = v12;
      _os_log_debug_impl(&dword_296048000, v7, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Client(0x%04x) start done", buf, 0x22u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl_block_invoke", buf);
    if (v18 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Client(0x%04x) start done", v8, v9, 1142, *(a1 + 56));
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(*buf);
  }

LABEL_21:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_29618F9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7AriHost14startClient_nlEi_block_invoke_127(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl_block_invoke", __p);
        v4 = v10 >= 0 ? __p : __p[0];
        v5 = *(a1 + 56);
        *buf = 136316162;
        *&buf[4] = "ari";
        v12 = 2080;
        v13 = v4;
        v14 = 1024;
        v15 = 1149;
        v16 = 1024;
        v17 = v5;
        v18 = 1024;
        v19 = 5000;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) client 0x%x did not start in %dms.  Likely client queue is stuck or stalled!", buf, 0x28u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host.cpp", "startClient_nl_block_invoke", buf);
      if (v14 >= 0)
      {
        v7 = buf;
      }

      else
      {
        v7 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) client 0x%x did not start in %dms.  Likely client queue is stuck or stalled!", v6, v7, 1149, *(a1 + 56), 5000);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(*buf);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x29EDCA608];
}