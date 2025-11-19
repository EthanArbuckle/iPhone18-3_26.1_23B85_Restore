void AriSdk::ARI_CsiIceAudCallEventReq_SDK::ARI_CsiIceAudCallEventReq_SDK(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259653632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259653632, 0);
}

void AriSdk::ARI_CsiIceAudCallEventReq_SDK::ARI_CsiIceAudCallEventReq_SDK(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudCallEventReq_SDK::~ARI_CsiIceAudCallEventReq_SDK(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this)
{
  *this = &unk_2A1D25750;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_CsiIceAudCallEventReq_SDK::~ARI_CsiIceAudCallEventReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudCallEventReq_SDK::pack(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
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

void AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::ARI_CsiIceAudCallEventRespCb_SDK(AriSdk::ARI_CsiIceAudCallEventRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251265024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251265024, 0);
}

void AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::ARI_CsiIceAudCallEventRespCb_SDK(AriSdk::ARI_CsiIceAudCallEventRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::~ARI_CsiIceAudCallEventRespCb_SDK(AriSdk::ARI_CsiIceAudCallEventRespCb_SDK *this)
{
  *this = &unk_2A1D25788;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::~ARI_CsiIceAudCallEventRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::pack(AriSdk::ARI_CsiIceAudCallEventRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK::ARI_CsiIceAudDeviceInfoReq_SDK(AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259751936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259751936, 0);
}

void AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK::ARI_CsiIceAudDeviceInfoReq_SDK(AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK::~ARI_CsiIceAudDeviceInfoReq_SDK(AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDeviceInfoReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK::ARI_CsiIceAudDeviceInfoRespCb_SDK(AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251363328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251363328, 0);
}

void AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK::ARI_CsiIceAudDeviceInfoRespCb_SDK(AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK::~ARI_CsiIceAudDeviceInfoRespCb_SDK(AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK *this)
{
  *this = &unk_2A1D257F8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK::~ARI_CsiIceAudDeviceInfoRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK::pack(AriSdk::ARI_CsiIceAudDeviceInfoRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK::ARI_CsiIceAudDeviceInfoIndCb_SDK(AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -242974720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -242974720, 0);
}

void AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK::ARI_CsiIceAudDeviceInfoIndCb_SDK(AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK::~ARI_CsiIceAudDeviceInfoIndCb_SDK(AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK *this)
{
  *this = &unk_2A1D25830;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK::~ARI_CsiIceAudDeviceInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK::pack(AriSdk::ARI_CsiIceAudDeviceInfoIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDisableAudioReq_SDK::ARI_CsiIceAudDisableAudioReq_SDK(AriSdk::ARI_CsiIceAudDisableAudioReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259915776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259915776, 0);
}

void AriSdk::ARI_CsiIceAudDisableAudioReq_SDK::ARI_CsiIceAudDisableAudioReq_SDK(AriSdk::ARI_CsiIceAudDisableAudioReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDisableAudioReq_SDK::~ARI_CsiIceAudDisableAudioReq_SDK(AriSdk::ARI_CsiIceAudDisableAudioReq_SDK *this)
{
  *this = &unk_2A1D25868;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDisableAudioReq_SDK::~ARI_CsiIceAudDisableAudioReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDisableAudioReq_SDK::pack(AriSdk::ARI_CsiIceAudDisableAudioReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK::ARI_CsiIceAudDisableAudioRespCb_SDK(AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251527168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251527168, 0);
}

void AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK::ARI_CsiIceAudDisableAudioRespCb_SDK(AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK::~ARI_CsiIceAudDisableAudioRespCb_SDK(AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK *this)
{
  *this = &unk_2A1D258A0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK::~ARI_CsiIceAudDisableAudioRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK::pack(AriSdk::ARI_CsiIceAudDisableAudioRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK::ARI_CsiIceAudDisableLoopbackHWReq_SDK(AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259817472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259817472, 0);
}

void AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK::ARI_CsiIceAudDisableLoopbackHWReq_SDK(AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK::~ARI_CsiIceAudDisableLoopbackHWReq_SDK(AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDisableLoopbackHWReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK(AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251428864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251428864, 0);
}

void AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK(AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK::~ARI_CsiIceAudDisableLoopbackHWRespCb_SDK(AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK *this)
{
  *this = &unk_2A1D25910;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK::~ARI_CsiIceAudDisableLoopbackHWRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK::pack(AriSdk::ARI_CsiIceAudDisableLoopbackHWRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK::ARI_CsiIceAudDistortionInfoIndCb_SDK(AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -242745344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -242745344, 0);
}

void AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK::ARI_CsiIceAudDistortionInfoIndCb_SDK(AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK::~ARI_CsiIceAudDistortionInfoIndCb_SDK(AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK *this)
{
  *this = &unk_2A1D25948;
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
    MEMORY[0x29C257E70](v6, 0x1000C4027586B93);
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
  AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK::~ARI_CsiIceAudDistortionInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK::pack(AriSdk::ARI_CsiIceAudDistortionInfoIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x1CuLL, 0), !result))
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

void AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259555328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259555328, 0);
}

void AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK::~ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK *this)
{
  *this = &unk_2A1D25980;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK::~ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK::pack(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251166720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251166720, 0);
}

void AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK::~ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK *this)
{
  *this = &unk_2A1D259B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK::~ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK::pack(AriSdk::ARI_CsiIceAudDownlinkDtmfIndEnableRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK::ARI_CsiIceAudDtmfEventIndCb_SDK(AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -242712576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -242712576, 0);
}

void AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK::ARI_CsiIceAudDtmfEventIndCb_SDK(AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK::~ARI_CsiIceAudDtmfEventIndCb_SDK(AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK *this)
{
  *this = &unk_2A1D259F0;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK::~ARI_CsiIceAudDtmfEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK::pack(AriSdk::ARI_CsiIceAudDtmfEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAudEnableAudioReq_SDK::ARI_CsiIceAudEnableAudioReq_SDK(AriSdk::ARI_CsiIceAudEnableAudioReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259948544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259948544, 0);
}

void AriSdk::ARI_CsiIceAudEnableAudioReq_SDK::ARI_CsiIceAudEnableAudioReq_SDK(AriSdk::ARI_CsiIceAudEnableAudioReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudEnableAudioReq_SDK::~ARI_CsiIceAudEnableAudioReq_SDK(AriSdk::ARI_CsiIceAudEnableAudioReq_SDK *this)
{
  *this = &unk_2A1D25A28;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudEnableAudioReq_SDK::~ARI_CsiIceAudEnableAudioReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudEnableAudioReq_SDK::pack(AriSdk::ARI_CsiIceAudEnableAudioReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK::ARI_CsiIceAudEnableAudioRespCb_SDK(AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251559936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251559936, 0);
}

void AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK::ARI_CsiIceAudEnableAudioRespCb_SDK(AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK::~ARI_CsiIceAudEnableAudioRespCb_SDK(AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK *this)
{
  *this = &unk_2A1D25A60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK::~ARI_CsiIceAudEnableAudioRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK::pack(AriSdk::ARI_CsiIceAudEnableAudioRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK::ARI_CsiIceAudEnableLoopbackHWReq_SDK(AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259850240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259850240, 0);
}

void AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK::ARI_CsiIceAudEnableLoopbackHWReq_SDK(AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK::~ARI_CsiIceAudEnableLoopbackHWReq_SDK(AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK *this)
{
  *this = &unk_2A1D25A98;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK::~ARI_CsiIceAudEnableLoopbackHWReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK::pack(AriSdk::ARI_CsiIceAudEnableLoopbackHWReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK(AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251461632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251461632, 0);
}

void AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK(AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK::~ARI_CsiIceAudEnableLoopbackHWRespCb_SDK(AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK *this)
{
  *this = &unk_2A1D25AD0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK::~ARI_CsiIceAudEnableLoopbackHWRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK::pack(AriSdk::ARI_CsiIceAudEnableLoopbackHWRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK::ARI_CsiIceAudInterfaceInfoIndCb_SDK(AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -242810880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -242810880, 0);
}

void AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK::ARI_CsiIceAudInterfaceInfoIndCb_SDK(AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK::~ARI_CsiIceAudInterfaceInfoIndCb_SDK(AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK *this)
{
  *this = &unk_2A1D25B08;
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
  AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK::~ARI_CsiIceAudInterfaceInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK::pack(AriSdk::ARI_CsiIceAudInterfaceInfoIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudLoopbackReq_SDK::ARI_CsiIceAudLoopbackReq_SDK(AriSdk::ARI_CsiIceAudLoopbackReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259883008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259883008, 0);
}

void AriSdk::ARI_CsiIceAudLoopbackReq_SDK::ARI_CsiIceAudLoopbackReq_SDK(AriSdk::ARI_CsiIceAudLoopbackReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudLoopbackReq_SDK::~ARI_CsiIceAudLoopbackReq_SDK(AriSdk::ARI_CsiIceAudLoopbackReq_SDK *this)
{
  *this = &unk_2A1D25B40;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_CsiIceAudLoopbackReq_SDK::~ARI_CsiIceAudLoopbackReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudLoopbackReq_SDK::pack(AriSdk::ARI_CsiIceAudLoopbackReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
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

void AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK::ARI_CsiIceAudLoopbackRespCb_SDK(AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251494400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251494400, 0);
}

void AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK::ARI_CsiIceAudLoopbackRespCb_SDK(AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK::~ARI_CsiIceAudLoopbackRespCb_SDK(AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK *this)
{
  *this = &unk_2A1D25B78;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK::~ARI_CsiIceAudLoopbackRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK::pack(AriSdk::ARI_CsiIceAudLoopbackRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK::ARI_CsiIceAudSetAudioLoggingReq_SDK(AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259620864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259620864, 0);
}

void AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK::ARI_CsiIceAudSetAudioLoggingReq_SDK(AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK::~ARI_CsiIceAudSetAudioLoggingReq_SDK(AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK *this)
{
  *this = &unk_2A1D25BB0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK::~ARI_CsiIceAudSetAudioLoggingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK::pack(AriSdk::ARI_CsiIceAudSetAudioLoggingReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK::ARI_CsiIceAudSetAudioLoggingRespCb_SDK(AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251232256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251232256, 0);
}

void AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK::ARI_CsiIceAudSetAudioLoggingRespCb_SDK(AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK::~ARI_CsiIceAudSetAudioLoggingRespCb_SDK(AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK *this)
{
  *this = &unk_2A1D25BE8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK::~ARI_CsiIceAudSetAudioLoggingRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK::pack(AriSdk::ARI_CsiIceAudSetAudioLoggingRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudSetDeviceReq_SDK::ARI_CsiIceAudSetDeviceReq_SDK(AriSdk::ARI_CsiIceAudSetDeviceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -260014080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -260014080, 0);
}

void AriSdk::ARI_CsiIceAudSetDeviceReq_SDK::ARI_CsiIceAudSetDeviceReq_SDK(AriSdk::ARI_CsiIceAudSetDeviceReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetDeviceReq_SDK::~ARI_CsiIceAudSetDeviceReq_SDK(AriSdk::ARI_CsiIceAudSetDeviceReq_SDK *this)
{
  *this = &unk_2A1D25C20;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetDeviceReq_SDK::~ARI_CsiIceAudSetDeviceReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetDeviceReq_SDK::pack(AriSdk::ARI_CsiIceAudSetDeviceReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK::ARI_CsiIceAudSetDeviceRespCb_SDK(AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251625472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251625472, 0);
}

void AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK::ARI_CsiIceAudSetDeviceRespCb_SDK(AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK::~ARI_CsiIceAudSetDeviceRespCb_SDK(AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK *this)
{
  *this = &unk_2A1D25C58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK::~ARI_CsiIceAudSetDeviceRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK::pack(AriSdk::ARI_CsiIceAudSetDeviceRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudSetI2SReq_SDK::ARI_CsiIceAudSetI2SReq_SDK(AriSdk::ARI_CsiIceAudSetI2SReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259981312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259981312, 0);
}

void AriSdk::ARI_CsiIceAudSetI2SReq_SDK::ARI_CsiIceAudSetI2SReq_SDK(AriSdk::ARI_CsiIceAudSetI2SReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetI2SReq_SDK::~ARI_CsiIceAudSetI2SReq_SDK(AriSdk::ARI_CsiIceAudSetI2SReq_SDK *this)
{
  *this = &unk_2A1D25C90;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_CsiIceAudSetI2SReq_SDK::~ARI_CsiIceAudSetI2SReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetI2SReq_SDK::pack(AriSdk::ARI_CsiIceAudSetI2SReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
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

void AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK::ARI_CsiIceAudSetI2SRespCb_SDK(AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251592704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251592704, 0);
}

void AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK::ARI_CsiIceAudSetI2SRespCb_SDK(AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK::~ARI_CsiIceAudSetI2SRespCb_SDK(AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK *this)
{
  *this = &unk_2A1D25CC8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK::~ARI_CsiIceAudSetI2SRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK::pack(AriSdk::ARI_CsiIceAudSetI2SRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK::ARI_CsiIceAudSetMuteStatusReq_SDK(AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259588096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259588096, 0);
}

void AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK::ARI_CsiIceAudSetMuteStatusReq_SDK(AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK::~ARI_CsiIceAudSetMuteStatusReq_SDK(AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK *this)
{
  *this = &unk_2A1D25D00;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK::~ARI_CsiIceAudSetMuteStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK::pack(AriSdk::ARI_CsiIceAudSetMuteStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK::ARI_CsiIceAudSetMuteStatusRespCb_SDK(AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251199488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251199488, 0);
}

void AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK::ARI_CsiIceAudSetMuteStatusRespCb_SDK(AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK::~ARI_CsiIceAudSetMuteStatusRespCb_SDK(AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK *this)
{
  *this = &unk_2A1D25D38;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK::~ARI_CsiIceAudSetMuteStatusRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK::pack(AriSdk::ARI_CsiIceAudSetMuteStatusRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK::ARI_CsiIceAudStatsInfoIndCb_SDK(AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -242778112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -242778112, 0);
}

void AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK::ARI_CsiIceAudStatsInfoIndCb_SDK(AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK::~ARI_CsiIceAudStatsInfoIndCb_SDK(AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK *this)
{
  *this = &unk_2A1D25D70;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40C2DCA394);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C408AA14F5FLL);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4069DB8102);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 10);
  *(this + 10) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 8);
  *(this + 8) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK::~ARI_CsiIceAudStatsInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK::pack(AriSdk::ARI_CsiIceAudStatsInfoIndCb_SDK *this, AriMsg **a2)
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
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 0x44uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 0x24uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 0x3CuLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_CsiIceAudToneEndIndCb_SDK::ARI_CsiIceAudToneEndIndCb_SDK(AriSdk::ARI_CsiIceAudToneEndIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -242909184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -242909184, 0);
}

void AriSdk::ARI_CsiIceAudToneEndIndCb_SDK::ARI_CsiIceAudToneEndIndCb_SDK(AriSdk::ARI_CsiIceAudToneEndIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudToneEndIndCb_SDK::~ARI_CsiIceAudToneEndIndCb_SDK(AriSdk::ARI_CsiIceAudToneEndIndCb_SDK *this)
{
  *this = &unk_2A1D25DA8;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudToneEndIndCb_SDK::~ARI_CsiIceAudToneEndIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudToneEndIndCb_SDK::pack(AriSdk::ARI_CsiIceAudToneEndIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAudToneStartReq_SDK::ARI_CsiIceAudToneStartReq_SDK(AriSdk::ARI_CsiIceAudToneStartReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259719168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259719168, 0);
}

void AriSdk::ARI_CsiIceAudToneStartReq_SDK::ARI_CsiIceAudToneStartReq_SDK(AriSdk::ARI_CsiIceAudToneStartReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudToneStartReq_SDK::~ARI_CsiIceAudToneStartReq_SDK(AriSdk::ARI_CsiIceAudToneStartReq_SDK *this)
{
  *this = &unk_2A1D25DE0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40274DC3F3);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudToneStartReq_SDK::~ARI_CsiIceAudToneStartReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudToneStartReq_SDK::pack(AriSdk::ARI_CsiIceAudToneStartReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 6uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceAudToneStartRespCb_SDK::ARI_CsiIceAudToneStartRespCb_SDK(AriSdk::ARI_CsiIceAudToneStartRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251330560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251330560, 0);
}

void AriSdk::ARI_CsiIceAudToneStartRespCb_SDK::ARI_CsiIceAudToneStartRespCb_SDK(AriSdk::ARI_CsiIceAudToneStartRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudToneStartRespCb_SDK::~ARI_CsiIceAudToneStartRespCb_SDK(AriSdk::ARI_CsiIceAudToneStartRespCb_SDK *this)
{
  *this = &unk_2A1D25E18;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudToneStartRespCb_SDK::~ARI_CsiIceAudToneStartRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudToneStartRespCb_SDK::pack(AriSdk::ARI_CsiIceAudToneStartRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudToneStopReq_SDK::ARI_CsiIceAudToneStopReq_SDK(AriSdk::ARI_CsiIceAudToneStopReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259686400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259686400, 0);
}

void AriSdk::ARI_CsiIceAudToneStopReq_SDK::ARI_CsiIceAudToneStopReq_SDK(AriSdk::ARI_CsiIceAudToneStopReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudToneStopReq_SDK::~ARI_CsiIceAudToneStopReq_SDK(AriSdk::ARI_CsiIceAudToneStopReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudToneStopReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceAudToneStopRespCb_SDK::ARI_CsiIceAudToneStopRespCb_SDK(AriSdk::ARI_CsiIceAudToneStopRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251297792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251297792, 0);
}

void AriSdk::ARI_CsiIceAudToneStopRespCb_SDK::ARI_CsiIceAudToneStopRespCb_SDK(AriSdk::ARI_CsiIceAudToneStopRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudToneStopRespCb_SDK::~ARI_CsiIceAudToneStopRespCb_SDK(AriSdk::ARI_CsiIceAudToneStopRespCb_SDK *this)
{
  *this = &unk_2A1D25E88;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudToneStopRespCb_SDK::~ARI_CsiIceAudToneStopRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudToneStopRespCb_SDK::pack(AriSdk::ARI_CsiIceAudToneStopRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK::ARI_CsiIceAudVocoderInfoReq_SDK(AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -259784704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -259784704, 0);
}

void AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK::ARI_CsiIceAudVocoderInfoReq_SDK(AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK::~ARI_CsiIceAudVocoderInfoReq_SDK(AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudVocoderInfoReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK::ARI_CsiIceAudVocoderInfoRespCb_SDK(AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -251396096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -251396096, 0);
}

void AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK::ARI_CsiIceAudVocoderInfoRespCb_SDK(AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK::~ARI_CsiIceAudVocoderInfoRespCb_SDK(AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK *this)
{
  *this = &unk_2A1D25EF8;
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
  AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK::~ARI_CsiIceAudVocoderInfoRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK::pack(AriSdk::ARI_CsiIceAudVocoderInfoRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK::ARI_CsiIceAudVocoderInfoIndCb_SDK(AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -243007488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -243007488, 0);
}

void AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK::ARI_CsiIceAudVocoderInfoIndCb_SDK(AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK::~ARI_CsiIceAudVocoderInfoIndCb_SDK(AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK *this)
{
  *this = &unk_2A1D25F30;
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
  AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK::~ARI_CsiIceAudVocoderInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK::pack(AriSdk::ARI_CsiIceAudVocoderInfoIndCb_SDK *this, AriMsg **a2)
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

uint64_t ARI_CsiIceAudDisableLoopbackHWRespCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -251428864)
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

uint64_t ARI_CsiIceAudDisableLoopbackHWReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0xF0838000);
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

uint64_t ARI_CsiIceAudDisableLoopbackHWReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0xF0838000);
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

uint64_t ARI_CsiIceAudEnableLoopbackHWRespCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -251461632)
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

uint64_t ARI_CsiIceAudEnableLoopbackHWReq_ENC(__int16 a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF0830000);
  v7 = AriMsg::packParam(&v10, 1, &v15, 2uLL);
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

uint64_t ARI_CsiIceAudEnableLoopbackHWReq_BLK(__int16 a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF0830000);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 2uLL);
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

uint64_t AriSdk::MsgBase::send(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v5;
  v11[1] = v5;
  std::__function::__value_func<int ()(unsigned char *,unsigned int)>::__value_func[abi:ne200100](v11, a3);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN6AriSdk7MsgBase4sendEiRKNSt3__18functionIFiPhjEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_4;
  std::__function::__value_func<int ()(unsigned char *,unsigned int)>::__value_func[abi:ne200100](v10, v11);
  v6 = AriSdk::MsgBase::send(a1, a2, v9);
  std::__function::__value_func<int ()(unsigned char *,unsigned int)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<int ()(unsigned char *,unsigned int)>::~__value_func[abi:ne200100](v11);
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

{
  v10 = 0;
  v11 = 0;
  RawBytes = AriSdk::MsgBase::getRawBytes(a1, &v10);
  if (!RawBytes)
  {
    RawBytes = AriHost::SendInternal(**(a1 + 8), *(*(a1 + 8) + 8) - **(a1 + 8), a2, a3, *(a1 + 32), *(a1 + 28), 1);
    if (!RawBytes)
    {
      BufHeader = AriMsg::GetBufHeader(**(a1 + 8), (*(*(a1 + 8) + 8) - **(a1 + 8)));
      if (BufHeader)
      {
        v8 = *(BufHeader + 2) >> 17;
      }

      else
      {
        v8 = 0x8000;
      }

      RawBytes = 0;
      *(a1 + 24) = v8;
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return RawBytes;
}

void sub_2960BA804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<int ()(unsigned char *,unsigned int)>::~__value_func[abi:ne200100](v9 + 32);
  std::__function::__value_func<int ()(unsigned char *,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6AriSdk7MsgBase4sendEiRKNSt3__18functionIFiPhjEEE_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 56);
  v6 = a2;
  v5 = a3;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_2960BA95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriSdk::MsgBase::getRawBytes(uint64_t a1, void *a2)
{
  v7[0] = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    result = a2[1];
    *a2 = v2;
    a2[1] = v3;
    if (result)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](result);
      return 0;
    }
  }

  else
  {
    result = (**a1)(a1, v7);
    if (v7[0])
    {
      v6 = 0;
      EncodedBuf = AriMsg::getEncodedBuf(v7[0], &v6);
      if (EncodedBuf)
      {
        v7[1] = (EncodedBuf + v6);
        v7[2] = EncodedBuf;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void AriSdk::MsgBase::MsgBase(AriSdk::MsgBase *this, int a2, char a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D269D0;
  *(this + 3) = 0x4E2000008000;
  *(this + 32) = a3;
  *(this + 33) = a2 == 67600384;
  *(this + 34) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::allocate_shared[abi:ne200100]<AriMsg,std::allocator<AriMsg>,unsigned int const&,0>();
}

void sub_2960BAB50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::MsgBase::MsgBase(AriSdk::MsgBase *this, const unsigned __int8 *a2, int a3)
{
  *this = &unk_2A1D269D0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0xFFFFFFFF00008000;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = &a2[a3];
  v6 = a2;
  std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const*&,unsigned char const*,0>();
}

void sub_2960BAD34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::MsgBase::~MsgBase(AriSdk::MsgBase *this)
{
  *this = &unk_2A1D269D0;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__value_func<int ()(unsigned char *,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
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

  return a1;
}

uint64_t std::__function::__value_func<int ()(unsigned char *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__shared_ptr_emplace<AriMsg>::__shared_ptr_emplace[abi:ne200100]<unsigned int const&,std::allocator<AriMsg>,0>(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D26A08;
  AriMsg::AriMsg((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<AriMsg>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D26A08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void AriSdk::ARI_CsiIceAccessoryStateReq_SDK::ARI_CsiIceAccessoryStateReq_SDK(AriSdk::ARI_CsiIceAccessoryStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192839680, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192839680, 0);
}

void AriSdk::ARI_CsiIceAccessoryStateReq_SDK::ARI_CsiIceAccessoryStateReq_SDK(AriSdk::ARI_CsiIceAccessoryStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAccessoryStateReq_SDK::~ARI_CsiIceAccessoryStateReq_SDK(AriSdk::ARI_CsiIceAccessoryStateReq_SDK *this)
{
  *this = &unk_2A1D26A68;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAccessoryStateReq_SDK::~ARI_CsiIceAccessoryStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAccessoryStateReq_SDK::pack(AriSdk::ARI_CsiIceAccessoryStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK::ARI_CsiIceAccessoryStateRspCb_SDK(AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184451072, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184451072, 0);
}

void AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK::ARI_CsiIceAccessoryStateRspCb_SDK(AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK::~ARI_CsiIceAccessoryStateRspCb_SDK(AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK *this)
{
  *this = &unk_2A1D26AA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK::~ARI_CsiIceAccessoryStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK::pack(AriSdk::ARI_CsiIceAccessoryStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK::ARI_CsiIceAccessoryStateArtdReq_SDK(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192086016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192086016, 0);
}

void AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK::ARI_CsiIceAccessoryStateArtdReq_SDK(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK::~ARI_CsiIceAccessoryStateArtdReq_SDK(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK *this)
{
  *this = &unk_2A1D26AD8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK::~ARI_CsiIceAccessoryStateArtdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK::pack(AriSdk::ARI_CsiIceAccessoryStateArtdReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK::ARI_CsiIceAccessoryStateArtdRspCb_SDK(AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183697408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183697408, 0);
}

void AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK::ARI_CsiIceAccessoryStateArtdRspCb_SDK(AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK::~ARI_CsiIceAccessoryStateArtdRspCb_SDK(AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK *this)
{
  *this = &unk_2A1D26B10;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK::~ARI_CsiIceAccessoryStateArtdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK::pack(AriSdk::ARI_CsiIceAccessoryStateArtdRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAntennaPrefReq_SDK::ARI_CsiIceAntennaPrefReq_SDK(AriSdk::ARI_CsiIceAntennaPrefReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192872448, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192872448, 0);
}

void AriSdk::ARI_CsiIceAntennaPrefReq_SDK::ARI_CsiIceAntennaPrefReq_SDK(AriSdk::ARI_CsiIceAntennaPrefReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAntennaPrefReq_SDK::~ARI_CsiIceAntennaPrefReq_SDK(AriSdk::ARI_CsiIceAntennaPrefReq_SDK *this)
{
  *this = &unk_2A1D26B48;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAntennaPrefReq_SDK::~ARI_CsiIceAntennaPrefReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAntennaPrefReq_SDK::pack(AriSdk::ARI_CsiIceAntennaPrefReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK::ARI_CsiIceAntennaPrefRspCb_SDK(AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184483840, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184483840, 0);
}

void AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK::ARI_CsiIceAntennaPrefRspCb_SDK(AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK::~ARI_CsiIceAntennaPrefRspCb_SDK(AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK *this)
{
  *this = &unk_2A1D26B80;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK::~ARI_CsiIceAntennaPrefRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK::pack(AriSdk::ARI_CsiIceAntennaPrefRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceArfcnLockReq_SDK::ARI_CsiIceArfcnLockReq_SDK(AriSdk::ARI_CsiIceArfcnLockReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192446464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192446464, 0);
}

void AriSdk::ARI_CsiIceArfcnLockReq_SDK::ARI_CsiIceArfcnLockReq_SDK(AriSdk::ARI_CsiIceArfcnLockReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceArfcnLockReq_SDK::~ARI_CsiIceArfcnLockReq_SDK(AriSdk::ARI_CsiIceArfcnLockReq_SDK *this)
{
  *this = &unk_2A1D26BB8;
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
  AriSdk::ARI_CsiIceArfcnLockReq_SDK::~ARI_CsiIceArfcnLockReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceArfcnLockReq_SDK::pack(AriSdk::ARI_CsiIceArfcnLockReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::ARI_CsiIceArfcnLockRspCb_SDK(AriSdk::ARI_CsiIceArfcnLockRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184057856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184057856, 0);
}

void AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::ARI_CsiIceArfcnLockRspCb_SDK(AriSdk::ARI_CsiIceArfcnLockRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::~ARI_CsiIceArfcnLockRspCb_SDK(AriSdk::ARI_CsiIceArfcnLockRspCb_SDK *this)
{
  *this = &unk_2A1D26BF0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::~ARI_CsiIceArfcnLockRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceArfcnLockRspCb_SDK::pack(AriSdk::ARI_CsiIceArfcnLockRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceArtdSettingReq_SDK::ARI_CsiIceArtdSettingReq_SDK(AriSdk::ARI_CsiIceArtdSettingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192512000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192512000, 0);
}

void AriSdk::ARI_CsiIceArtdSettingReq_SDK::ARI_CsiIceArtdSettingReq_SDK(AriSdk::ARI_CsiIceArtdSettingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceArtdSettingReq_SDK::~ARI_CsiIceArtdSettingReq_SDK(AriSdk::ARI_CsiIceArtdSettingReq_SDK *this)
{
  *this = &unk_2A1D26C28;
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
  AriSdk::ARI_CsiIceArtdSettingReq_SDK::~ARI_CsiIceArtdSettingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceArtdSettingReq_SDK::pack(AriSdk::ARI_CsiIceArtdSettingReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::ARI_CsiIceArtdSettingRspCb_SDK(AriSdk::ARI_CsiIceArtdSettingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184123392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184123392, 0);
}

void AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::ARI_CsiIceArtdSettingRspCb_SDK(AriSdk::ARI_CsiIceArtdSettingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::~ARI_CsiIceArtdSettingRspCb_SDK(AriSdk::ARI_CsiIceArtdSettingRspCb_SDK *this)
{
  *this = &unk_2A1D26C60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::~ARI_CsiIceArtdSettingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceArtdSettingRspCb_SDK::pack(AriSdk::ARI_CsiIceArtdSettingRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceBBSleepEnableReq_SDK::ARI_CsiIceBBSleepEnableReq_SDK(AriSdk::ARI_CsiIceBBSleepEnableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192380928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192380928, 0);
}

void AriSdk::ARI_CsiIceBBSleepEnableReq_SDK::ARI_CsiIceBBSleepEnableReq_SDK(AriSdk::ARI_CsiIceBBSleepEnableReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBBSleepEnableReq_SDK::~ARI_CsiIceBBSleepEnableReq_SDK(AriSdk::ARI_CsiIceBBSleepEnableReq_SDK *this)
{
  *this = &unk_2A1D26C98;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBBSleepEnableReq_SDK::~ARI_CsiIceBBSleepEnableReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBBSleepEnableReq_SDK::pack(AriSdk::ARI_CsiIceBBSleepEnableReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK::ARI_CsiIceBBSleepEnableRspCb_SDK(AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183992320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183992320, 0);
}

void AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK::ARI_CsiIceBBSleepEnableRspCb_SDK(AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK::~ARI_CsiIceBBSleepEnableRspCb_SDK(AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK *this)
{
  *this = &unk_2A1D26CD0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK::~ARI_CsiIceBBSleepEnableRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK::pack(AriSdk::ARI_CsiIceBBSleepEnableRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceBBTxStateInd_SDK::ARI_CsiIceBBTxStateInd_SDK(AriSdk::ARI_CsiIceBBTxStateInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -175800320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -175800320, 0);
}

void AriSdk::ARI_CsiIceBBTxStateInd_SDK::ARI_CsiIceBBTxStateInd_SDK(AriSdk::ARI_CsiIceBBTxStateInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBBTxStateInd_SDK::~ARI_CsiIceBBTxStateInd_SDK(AriSdk::ARI_CsiIceBBTxStateInd_SDK *this)
{
  *this = &unk_2A1D26D08;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBBTxStateInd_SDK::~ARI_CsiIceBBTxStateInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBBTxStateInd_SDK::pack(AriSdk::ARI_CsiIceBBTxStateInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK::ARI_CsiIceBBTxStateIndEnableReq_SDK(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192544768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192544768, 0);
}

void AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK::ARI_CsiIceBBTxStateIndEnableReq_SDK(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK::~ARI_CsiIceBBTxStateIndEnableReq_SDK(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK *this)
{
  *this = &unk_2A1D26D40;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK::~ARI_CsiIceBBTxStateIndEnableReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK::pack(AriSdk::ARI_CsiIceBBTxStateIndEnableReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK::ARI_CsiIceBBTxStateIndEnableRspCb_SDK(AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184156160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184156160, 0);
}

void AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK::ARI_CsiIceBBTxStateIndEnableRspCb_SDK(AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK::~ARI_CsiIceBBTxStateIndEnableRspCb_SDK(AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK *this)
{
  *this = &unk_2A1D26D78;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK::~ARI_CsiIceBBTxStateIndEnableRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK::pack(AriSdk::ARI_CsiIceBBTxStateIndEnableRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceCaEnableReq_SDK::ARI_CsiIceCaEnableReq_SDK(AriSdk::ARI_CsiIceCaEnableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192315392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192315392, 0);
}

void AriSdk::ARI_CsiIceCaEnableReq_SDK::ARI_CsiIceCaEnableReq_SDK(AriSdk::ARI_CsiIceCaEnableReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceCaEnableReq_SDK::~ARI_CsiIceCaEnableReq_SDK(AriSdk::ARI_CsiIceCaEnableReq_SDK *this)
{
  *this = &unk_2A1D26DB0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceCaEnableReq_SDK::~ARI_CsiIceCaEnableReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceCaEnableReq_SDK::pack(AriSdk::ARI_CsiIceCaEnableReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceCaEnableRspCb_SDK::ARI_CsiIceCaEnableRspCb_SDK(AriSdk::ARI_CsiIceCaEnableRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183926784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183926784, 0);
}

void AriSdk::ARI_CsiIceCaEnableRspCb_SDK::ARI_CsiIceCaEnableRspCb_SDK(AriSdk::ARI_CsiIceCaEnableRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceCaEnableRspCb_SDK::~ARI_CsiIceCaEnableRspCb_SDK(AriSdk::ARI_CsiIceCaEnableRspCb_SDK *this)
{
  *this = &unk_2A1D26DE8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceCaEnableRspCb_SDK::~ARI_CsiIceCaEnableRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceCaEnableRspCb_SDK::pack(AriSdk::ARI_CsiIceCaEnableRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceCltmReq_SDK::ARI_CsiIceCltmReq_SDK(AriSdk::ARI_CsiIceCltmReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192806912, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192806912, 0);
}

void AriSdk::ARI_CsiIceCltmReq_SDK::ARI_CsiIceCltmReq_SDK(AriSdk::ARI_CsiIceCltmReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceCltmReq_SDK::~ARI_CsiIceCltmReq_SDK(AriSdk::ARI_CsiIceCltmReq_SDK *this)
{
  *this = &unk_2A1D26E20;
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
  AriSdk::ARI_CsiIceCltmReq_SDK::~ARI_CsiIceCltmReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceCltmReq_SDK::pack(AriSdk::ARI_CsiIceCltmReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void sub_2960BE74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBI_CPMS_POWER_BUDGET,5ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x29uLL)
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 5);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960BE9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiIceCltmRspCb_SDK::ARI_CsiIceCltmRspCb_SDK(AriSdk::ARI_CsiIceCltmRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184418304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184418304, 0);
}

void AriSdk::ARI_CsiIceCltmRspCb_SDK::ARI_CsiIceCltmRspCb_SDK(AriSdk::ARI_CsiIceCltmRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceCltmRspCb_SDK::~ARI_CsiIceCltmRspCb_SDK(AriSdk::ARI_CsiIceCltmRspCb_SDK *this)
{
  *this = &unk_2A1D26E58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceCltmRspCb_SDK::~ARI_CsiIceCltmRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceCltmRspCb_SDK::pack(AriSdk::ARI_CsiIceCltmRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetAntennaStateReq_SDK::ARI_CsiIceGetAntennaStateReq_SDK(AriSdk::ARI_CsiIceGetAntennaStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192479232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192479232, 0);
}

void AriSdk::ARI_CsiIceGetAntennaStateReq_SDK::ARI_CsiIceGetAntennaStateReq_SDK(AriSdk::ARI_CsiIceGetAntennaStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetAntennaStateReq_SDK::~ARI_CsiIceGetAntennaStateReq_SDK(AriSdk::ARI_CsiIceGetAntennaStateReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetAntennaStateReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK::ARI_CsiIceGetAntennaStateRspCb_SDK(AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184090624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184090624, 0);
}

void AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK::ARI_CsiIceGetAntennaStateRspCb_SDK(AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK::~ARI_CsiIceGetAntennaStateRspCb_SDK(AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK *this)
{
  *this = &unk_2A1D26EC8;
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
  AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK::~ARI_CsiIceGetAntennaStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK::pack(AriSdk::ARI_CsiIceGetAntennaStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetArfcnLockReq_SDK::ARI_CsiIceGetArfcnLockReq_SDK(AriSdk::ARI_CsiIceGetArfcnLockReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192217088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192217088, 0);
}

void AriSdk::ARI_CsiIceGetArfcnLockReq_SDK::ARI_CsiIceGetArfcnLockReq_SDK(AriSdk::ARI_CsiIceGetArfcnLockReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetArfcnLockReq_SDK::~ARI_CsiIceGetArfcnLockReq_SDK(AriSdk::ARI_CsiIceGetArfcnLockReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetArfcnLockReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::ARI_CsiIceGetArfcnLockRspCb_SDK(AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183828480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183828480, 0);
}

void AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::ARI_CsiIceGetArfcnLockRspCb_SDK(AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::~ARI_CsiIceGetArfcnLockRspCb_SDK(AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK *this)
{
  *this = &unk_2A1D26F38;
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
  AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::~ARI_CsiIceGetArfcnLockRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK::pack(AriSdk::ARI_CsiIceGetArfcnLockRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetArtdSettingReq_SDK::ARI_CsiIceGetArtdSettingReq_SDK(AriSdk::ARI_CsiIceGetArtdSettingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192118784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192118784, 0);
}

void AriSdk::ARI_CsiIceGetArtdSettingReq_SDK::ARI_CsiIceGetArtdSettingReq_SDK(AriSdk::ARI_CsiIceGetArtdSettingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetArtdSettingReq_SDK::~ARI_CsiIceGetArtdSettingReq_SDK(AriSdk::ARI_CsiIceGetArtdSettingReq_SDK *this)
{
  *this = &unk_2A1D26F70;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGetArtdSettingReq_SDK::~ARI_CsiIceGetArtdSettingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetArtdSettingReq_SDK::pack(AriSdk::ARI_CsiIceGetArtdSettingReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::ARI_CsiIceGetArtdSettingRspCb_SDK(AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183730176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183730176, 0);
}

void AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::ARI_CsiIceGetArtdSettingRspCb_SDK(AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::~ARI_CsiIceGetArtdSettingRspCb_SDK(AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK *this)
{
  *this = &unk_2A1D26FA8;
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
  AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::~ARI_CsiIceGetArtdSettingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK::pack(AriSdk::ARI_CsiIceGetArtdSettingRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetCaEnableReq_SDK::ARI_CsiIceGetCaEnableReq_SDK(AriSdk::ARI_CsiIceGetCaEnableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192282624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192282624, 0);
}

void AriSdk::ARI_CsiIceGetCaEnableReq_SDK::ARI_CsiIceGetCaEnableReq_SDK(AriSdk::ARI_CsiIceGetCaEnableReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetCaEnableReq_SDK::~ARI_CsiIceGetCaEnableReq_SDK(AriSdk::ARI_CsiIceGetCaEnableReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetCaEnableReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::ARI_CsiIceGetCaEnableRspCb_SDK(AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183894016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183894016, 0);
}

void AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::ARI_CsiIceGetCaEnableRspCb_SDK(AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::~ARI_CsiIceGetCaEnableRspCb_SDK(AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK *this)
{
  *this = &unk_2A1D27018;
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
  AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::~ARI_CsiIceGetCaEnableRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK::pack(AriSdk::ARI_CsiIceGetCaEnableRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetRxDiversityReq_SDK::ARI_CsiIceGetRxDiversityReq_SDK(AriSdk::ARI_CsiIceGetRxDiversityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192249856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192249856, 0);
}

void AriSdk::ARI_CsiIceGetRxDiversityReq_SDK::ARI_CsiIceGetRxDiversityReq_SDK(AriSdk::ARI_CsiIceGetRxDiversityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetRxDiversityReq_SDK::~ARI_CsiIceGetRxDiversityReq_SDK(AriSdk::ARI_CsiIceGetRxDiversityReq_SDK *this)
{
  *this = &unk_2A1D27050;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGetRxDiversityReq_SDK::~ARI_CsiIceGetRxDiversityReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetRxDiversityReq_SDK::pack(AriSdk::ARI_CsiIceGetRxDiversityReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::ARI_CsiIceGetRxDiversityRspCb_SDK(AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183861248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183861248, 0);
}

void AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::ARI_CsiIceGetRxDiversityRspCb_SDK(AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::~ARI_CsiIceGetRxDiversityRspCb_SDK(AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK *this)
{
  *this = &unk_2A1D27088;
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
  AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::~ARI_CsiIceGetRxDiversityRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK::pack(AriSdk::ARI_CsiIceGetRxDiversityRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::ARI_CsiIceGetTxAntennaReq_SDK(AriSdk::ARI_CsiIceGetTxAntennaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192151552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192151552, 0);
}

void AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::ARI_CsiIceGetTxAntennaReq_SDK(AriSdk::ARI_CsiIceGetTxAntennaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::~ARI_CsiIceGetTxAntennaReq_SDK(AriSdk::ARI_CsiIceGetTxAntennaReq_SDK *this)
{
  *this = &unk_2A1D270C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::~ARI_CsiIceGetTxAntennaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::pack(AriSdk::ARI_CsiIceGetTxAntennaReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::ARI_CsiIceGetTxAntennaRspCb_SDK(AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183762944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183762944, 0);
}

void AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::ARI_CsiIceGetTxAntennaRspCb_SDK(AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::~ARI_CsiIceGetTxAntennaRspCb_SDK(AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK *this)
{
  *this = &unk_2A1D270F8;
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
  AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::~ARI_CsiIceGetTxAntennaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::pack(AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGpsStateReq_SDK::ARI_CsiIceGpsStateReq_SDK(AriSdk::ARI_CsiIceGpsStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191954944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191954944, 0);
}

void AriSdk::ARI_CsiIceGpsStateReq_SDK::ARI_CsiIceGpsStateReq_SDK(AriSdk::ARI_CsiIceGpsStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGpsStateReq_SDK::~ARI_CsiIceGpsStateReq_SDK(AriSdk::ARI_CsiIceGpsStateReq_SDK *this)
{
  *this = &unk_2A1D27130;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGpsStateReq_SDK::~ARI_CsiIceGpsStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGpsStateReq_SDK::pack(AriSdk::ARI_CsiIceGpsStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGpsStateRspCb_SDK::ARI_CsiIceGpsStateRspCb_SDK(AriSdk::ARI_CsiIceGpsStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183566336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183566336, 0);
}

void AriSdk::ARI_CsiIceGpsStateRspCb_SDK::ARI_CsiIceGpsStateRspCb_SDK(AriSdk::ARI_CsiIceGpsStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGpsStateRspCb_SDK::~ARI_CsiIceGpsStateRspCb_SDK(AriSdk::ARI_CsiIceGpsStateRspCb_SDK *this)
{
  *this = &unk_2A1D27168;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGpsStateRspCb_SDK::~ARI_CsiIceGpsStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGpsStateRspCb_SDK::pack(AriSdk::ARI_CsiIceGpsStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGripStateReq_SDK::ARI_CsiIceGripStateReq_SDK(AriSdk::ARI_CsiIceGripStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191987712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191987712, 0);
}

void AriSdk::ARI_CsiIceGripStateReq_SDK::ARI_CsiIceGripStateReq_SDK(AriSdk::ARI_CsiIceGripStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGripStateReq_SDK::~ARI_CsiIceGripStateReq_SDK(AriSdk::ARI_CsiIceGripStateReq_SDK *this)
{
  *this = &unk_2A1D271A0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGripStateReq_SDK::~ARI_CsiIceGripStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGripStateReq_SDK::pack(AriSdk::ARI_CsiIceGripStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGripStateRspCb_SDK::ARI_CsiIceGripStateRspCb_SDK(AriSdk::ARI_CsiIceGripStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183599104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183599104, 0);
}

void AriSdk::ARI_CsiIceGripStateRspCb_SDK::ARI_CsiIceGripStateRspCb_SDK(AriSdk::ARI_CsiIceGripStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGripStateRspCb_SDK::~ARI_CsiIceGripStateRspCb_SDK(AriSdk::ARI_CsiIceGripStateRspCb_SDK *this)
{
  *this = &unk_2A1D271D8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGripStateRspCb_SDK::~ARI_CsiIceGripStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGripStateRspCb_SDK::pack(AriSdk::ARI_CsiIceGripStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceHearingAidReq_SDK::ARI_CsiIceHearingAidReq_SDK(AriSdk::ARI_CsiIceHearingAidReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192905216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192905216, 0);
}

void AriSdk::ARI_CsiIceHearingAidReq_SDK::ARI_CsiIceHearingAidReq_SDK(AriSdk::ARI_CsiIceHearingAidReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceHearingAidReq_SDK::~ARI_CsiIceHearingAidReq_SDK(AriSdk::ARI_CsiIceHearingAidReq_SDK *this)
{
  *this = &unk_2A1D27210;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceHearingAidReq_SDK::~ARI_CsiIceHearingAidReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceHearingAidReq_SDK::pack(AriSdk::ARI_CsiIceHearingAidReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceHearingAidRspCb_SDK::ARI_CsiIceHearingAidRspCb_SDK(AriSdk::ARI_CsiIceHearingAidRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184516608, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184516608, 0);
}

void AriSdk::ARI_CsiIceHearingAidRspCb_SDK::ARI_CsiIceHearingAidRspCb_SDK(AriSdk::ARI_CsiIceHearingAidRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceHearingAidRspCb_SDK::~ARI_CsiIceHearingAidRspCb_SDK(AriSdk::ARI_CsiIceHearingAidRspCb_SDK *this)
{
  *this = &unk_2A1D27248;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceHearingAidRspCb_SDK::~ARI_CsiIceHearingAidRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceHearingAidRspCb_SDK::pack(AriSdk::ARI_CsiIceHearingAidRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIcePowerSourceStateReq_SDK::ARI_CsiIcePowerSourceStateReq_SDK(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191922176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191922176, 0);
}

void AriSdk::ARI_CsiIcePowerSourceStateReq_SDK::ARI_CsiIcePowerSourceStateReq_SDK(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIcePowerSourceStateReq_SDK::~ARI_CsiIcePowerSourceStateReq_SDK(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK *this)
{
  *this = &unk_2A1D27280;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIcePowerSourceStateReq_SDK::~ARI_CsiIcePowerSourceStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIcePowerSourceStateReq_SDK::pack(AriSdk::ARI_CsiIcePowerSourceStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK::ARI_CsiIcePowerSourceStateRspCb_SDK(AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183533568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183533568, 0);
}

void AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK::ARI_CsiIcePowerSourceStateRspCb_SDK(AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK::~ARI_CsiIcePowerSourceStateRspCb_SDK(AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK *this)
{
  *this = &unk_2A1D272B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK::~ARI_CsiIcePowerSourceStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK::pack(AriSdk::ARI_CsiIcePowerSourceStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::ARI_CsiIceRFFilerWriteReq_SDK(AriSdk::ARI_CsiIceRFFilerWriteReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191561728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191561728, 0);
}

void AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::ARI_CsiIceRFFilerWriteReq_SDK(AriSdk::ARI_CsiIceRFFilerWriteReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::~ARI_CsiIceRFFilerWriteReq_SDK(AriSdk::ARI_CsiIceRFFilerWriteReq_SDK *this)
{
  *this = &unk_2A1D272F0;
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
  AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::~ARI_CsiIceRFFilerWriteReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::pack(AriSdk::ARI_CsiIceRFFilerWriteReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::ARI_CsiIceRFFilerWriteRspCb_SDK(AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183173120, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183173120, 0);
}

void AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::ARI_CsiIceRFFilerWriteRspCb_SDK(AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::~ARI_CsiIceRFFilerWriteRspCb_SDK(AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK *this)
{
  *this = &unk_2A1D27328;
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
  AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::~ARI_CsiIceRFFilerWriteRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::pack(AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceRxDiversityReq_SDK::ARI_CsiIceRxDiversityReq_SDK(AriSdk::ARI_CsiIceRxDiversityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192413696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192413696, 0);
}

void AriSdk::ARI_CsiIceRxDiversityReq_SDK::ARI_CsiIceRxDiversityReq_SDK(AriSdk::ARI_CsiIceRxDiversityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceRxDiversityReq_SDK::~ARI_CsiIceRxDiversityReq_SDK(AriSdk::ARI_CsiIceRxDiversityReq_SDK *this)
{
  *this = &unk_2A1D27360;
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
  AriSdk::ARI_CsiIceRxDiversityReq_SDK::~ARI_CsiIceRxDiversityReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceRxDiversityReq_SDK::pack(AriSdk::ARI_CsiIceRxDiversityReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::ARI_CsiIceRxDiversityRspCb_SDK(AriSdk::ARI_CsiIceRxDiversityRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184025088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184025088, 0);
}

void AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::ARI_CsiIceRxDiversityRspCb_SDK(AriSdk::ARI_CsiIceRxDiversityRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::~ARI_CsiIceRxDiversityRspCb_SDK(AriSdk::ARI_CsiIceRxDiversityRspCb_SDK *this)
{
  *this = &unk_2A1D27398;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::~ARI_CsiIceRxDiversityRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceRxDiversityRspCb_SDK::pack(AriSdk::ARI_CsiIceRxDiversityRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSarReq_SDK::ARI_CsiIceSarReq_SDK(AriSdk::ARI_CsiIceSarReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192774144, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192774144, 0);
}

void AriSdk::ARI_CsiIceSarReq_SDK::ARI_CsiIceSarReq_SDK(AriSdk::ARI_CsiIceSarReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSarReq_SDK::~ARI_CsiIceSarReq_SDK(AriSdk::ARI_CsiIceSarReq_SDK *this)
{
  *this = &unk_2A1D273D0;
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
  AriSdk::ARI_CsiIceSarReq_SDK::~ARI_CsiIceSarReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSarReq_SDK::pack(AriSdk::ARI_CsiIceSarReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSarRspCb_SDK::ARI_CsiIceSarRspCb_SDK(AriSdk::ARI_CsiIceSarRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184385536, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184385536, 0);
}

void AriSdk::ARI_CsiIceSarRspCb_SDK::ARI_CsiIceSarRspCb_SDK(AriSdk::ARI_CsiIceSarRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSarRspCb_SDK::~ARI_CsiIceSarRspCb_SDK(AriSdk::ARI_CsiIceSarRspCb_SDK *this)
{
  *this = &unk_2A1D27408;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSarRspCb_SDK::~ARI_CsiIceSarRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSarRspCb_SDK::pack(AriSdk::ARI_CsiIceSarRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSarEnableReq_SDK::ARI_CsiIceSarEnableReq_SDK(AriSdk::ARI_CsiIceSarEnableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192610304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192610304, 0);
}

void AriSdk::ARI_CsiIceSarEnableReq_SDK::ARI_CsiIceSarEnableReq_SDK(AriSdk::ARI_CsiIceSarEnableReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSarEnableReq_SDK::~ARI_CsiIceSarEnableReq_SDK(AriSdk::ARI_CsiIceSarEnableReq_SDK *this)
{
  *this = &unk_2A1D27440;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSarEnableReq_SDK::~ARI_CsiIceSarEnableReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSarEnableReq_SDK::pack(AriSdk::ARI_CsiIceSarEnableReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSarEnableRspCb_SDK::ARI_CsiIceSarEnableRspCb_SDK(AriSdk::ARI_CsiIceSarEnableRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184221696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184221696, 0);
}

void AriSdk::ARI_CsiIceSarEnableRspCb_SDK::ARI_CsiIceSarEnableRspCb_SDK(AriSdk::ARI_CsiIceSarEnableRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSarEnableRspCb_SDK::~ARI_CsiIceSarEnableRspCb_SDK(AriSdk::ARI_CsiIceSarEnableRspCb_SDK *this)
{
  *this = &unk_2A1D27478;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSarEnableRspCb_SDK::~ARI_CsiIceSarEnableRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSarEnableRspCb_SDK::pack(AriSdk::ARI_CsiIceSarEnableRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSarWaitTimeReq_SDK::ARI_CsiIceSarWaitTimeReq_SDK(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192741376, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192741376, 0);
}

void AriSdk::ARI_CsiIceSarWaitTimeReq_SDK::ARI_CsiIceSarWaitTimeReq_SDK(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSarWaitTimeReq_SDK::~ARI_CsiIceSarWaitTimeReq_SDK(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK *this)
{
  *this = &unk_2A1D274B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSarWaitTimeReq_SDK::~ARI_CsiIceSarWaitTimeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSarWaitTimeReq_SDK::pack(AriSdk::ARI_CsiIceSarWaitTimeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK::ARI_CsiIceSarWaitTimeRspCb_SDK(AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184352768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184352768, 0);
}

void AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK::ARI_CsiIceSarWaitTimeRspCb_SDK(AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK::~ARI_CsiIceSarWaitTimeRspCb_SDK(AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK *this)
{
  *this = &unk_2A1D274E8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK::~ARI_CsiIceSarWaitTimeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK::pack(AriSdk::ARI_CsiIceSarWaitTimeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::ARI_CsiIceSetTxAntennaReq_SDK(AriSdk::ARI_CsiIceSetTxAntennaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192184320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192184320, 0);
}

void AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::ARI_CsiIceSetTxAntennaReq_SDK(AriSdk::ARI_CsiIceSetTxAntennaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::~ARI_CsiIceSetTxAntennaReq_SDK(AriSdk::ARI_CsiIceSetTxAntennaReq_SDK *this)
{
  *this = &unk_2A1D27520;
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
  AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::~ARI_CsiIceSetTxAntennaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::pack(AriSdk::ARI_CsiIceSetTxAntennaReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::ARI_CsiIceSetTxAntennaRspCb_SDK(AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183795712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183795712, 0);
}

void AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::ARI_CsiIceSetTxAntennaRspCb_SDK(AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::~ARI_CsiIceSetTxAntennaRspCb_SDK(AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK *this)
{
  *this = &unk_2A1D27558;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::~ARI_CsiIceSetTxAntennaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::pack(AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSpeakerStateReq_SDK::ARI_CsiIceSpeakerStateReq_SDK(AriSdk::ARI_CsiIceSpeakerStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192053248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192053248, 0);
}

void AriSdk::ARI_CsiIceSpeakerStateReq_SDK::ARI_CsiIceSpeakerStateReq_SDK(AriSdk::ARI_CsiIceSpeakerStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSpeakerStateReq_SDK::~ARI_CsiIceSpeakerStateReq_SDK(AriSdk::ARI_CsiIceSpeakerStateReq_SDK *this)
{
  *this = &unk_2A1D27590;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSpeakerStateReq_SDK::~ARI_CsiIceSpeakerStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSpeakerStateReq_SDK::pack(AriSdk::ARI_CsiIceSpeakerStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK::ARI_CsiIceSpeakerStateRspCb_SDK(AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183664640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183664640, 0);
}

void AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK::ARI_CsiIceSpeakerStateRspCb_SDK(AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK::~ARI_CsiIceSpeakerStateRspCb_SDK(AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK *this)
{
  *this = &unk_2A1D275C8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK::~ARI_CsiIceSpeakerStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK::pack(AriSdk::ARI_CsiIceSpeakerStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceTemperatureReq_SDK::ARI_CsiIceTemperatureReq_SDK(AriSdk::ARI_CsiIceTemperatureReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192708608, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192708608, 0);
}

void AriSdk::ARI_CsiIceTemperatureReq_SDK::ARI_CsiIceTemperatureReq_SDK(AriSdk::ARI_CsiIceTemperatureReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceTemperatureReq_SDK::~ARI_CsiIceTemperatureReq_SDK(AriSdk::ARI_CsiIceTemperatureReq_SDK *this)
{
  *this = &unk_2A1D27600;
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
  AriSdk::ARI_CsiIceTemperatureReq_SDK::~ARI_CsiIceTemperatureReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceTemperatureReq_SDK::pack(AriSdk::ARI_CsiIceTemperatureReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceTemperatureRspCb_SDK::ARI_CsiIceTemperatureRspCb_SDK(AriSdk::ARI_CsiIceTemperatureRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184320000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184320000, 0);
}

void AriSdk::ARI_CsiIceTemperatureRspCb_SDK::ARI_CsiIceTemperatureRspCb_SDK(AriSdk::ARI_CsiIceTemperatureRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceTemperatureRspCb_SDK::~ARI_CsiIceTemperatureRspCb_SDK(AriSdk::ARI_CsiIceTemperatureRspCb_SDK *this)
{
  *this = &unk_2A1D27638;
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
  AriSdk::ARI_CsiIceTemperatureRspCb_SDK::~ARI_CsiIceTemperatureRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceTemperatureRspCb_SDK::pack(AriSdk::ARI_CsiIceTemperatureRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceTemperatureCloseReq_SDK::ARI_CsiIceTemperatureCloseReq_SDK(AriSdk::ARI_CsiIceTemperatureCloseReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192675840, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192675840, 0);
}

void AriSdk::ARI_CsiIceTemperatureCloseReq_SDK::ARI_CsiIceTemperatureCloseReq_SDK(AriSdk::ARI_CsiIceTemperatureCloseReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceTemperatureCloseReq_SDK::~ARI_CsiIceTemperatureCloseReq_SDK(AriSdk::ARI_CsiIceTemperatureCloseReq_SDK *this)
{
  *this = &unk_2A1D27670;
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
  AriSdk::ARI_CsiIceTemperatureCloseReq_SDK::~ARI_CsiIceTemperatureCloseReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceTemperatureCloseReq_SDK::pack(AriSdk::ARI_CsiIceTemperatureCloseReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK::ARI_CsiIceTemperatureCloseRspCb_SDK(AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -184287232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -184287232, 0);
}

void AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK::ARI_CsiIceTemperatureCloseRspCb_SDK(AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK::~ARI_CsiIceTemperatureCloseRspCb_SDK(AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK *this)
{
  *this = &unk_2A1D276A8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK::~ARI_CsiIceTemperatureCloseRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK::pack(AriSdk::ARI_CsiIceTemperatureCloseRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceTemperatureIndCb_SDK::ARI_CsiIceTemperatureIndCb_SDK(AriSdk::ARI_CsiIceTemperatureIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -175931392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -175931392, 0);
}

void AriSdk::ARI_CsiIceTemperatureIndCb_SDK::ARI_CsiIceTemperatureIndCb_SDK(AriSdk::ARI_CsiIceTemperatureIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceTemperatureIndCb_SDK::~ARI_CsiIceTemperatureIndCb_SDK(AriSdk::ARI_CsiIceTemperatureIndCb_SDK *this)
{
  *this = &unk_2A1D276E0;
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
  AriSdk::ARI_CsiIceTemperatureIndCb_SDK::~ARI_CsiIceTemperatureIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceTemperatureIndCb_SDK::pack(AriSdk::ARI_CsiIceTemperatureIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceWakeupReasonReq_SDK::ARI_CsiIceWakeupReasonReq_SDK(AriSdk::ARI_CsiIceWakeupReasonReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192348160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192348160, 0);
}

void AriSdk::ARI_CsiIceWakeupReasonReq_SDK::ARI_CsiIceWakeupReasonReq_SDK(AriSdk::ARI_CsiIceWakeupReasonReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceWakeupReasonReq_SDK::~ARI_CsiIceWakeupReasonReq_SDK(AriSdk::ARI_CsiIceWakeupReasonReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceWakeupReasonReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183959552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183959552, 0);
}

void AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::~ARI_CsiIceWakeupReasonRspCb_SDK(AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK *this)
{
  *this = &unk_2A1D27750;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40AB7D74EDLL);
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
  AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::~ARI_CsiIceWakeupReasonRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::pack(AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x8CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceWristStateReq_SDK::ARI_CsiIceWristStateReq_SDK(AriSdk::ARI_CsiIceWristStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191889408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191889408, 0);
}

void AriSdk::ARI_CsiIceWristStateReq_SDK::ARI_CsiIceWristStateReq_SDK(AriSdk::ARI_CsiIceWristStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceWristStateReq_SDK::~ARI_CsiIceWristStateReq_SDK(AriSdk::ARI_CsiIceWristStateReq_SDK *this)
{
  *this = &unk_2A1D27788;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceWristStateReq_SDK::~ARI_CsiIceWristStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceWristStateReq_SDK::pack(AriSdk::ARI_CsiIceWristStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceWristStateRspCb_SDK::ARI_CsiIceWristStateRspCb_SDK(AriSdk::ARI_CsiIceWristStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183500800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183500800, 0);
}

void AriSdk::ARI_CsiIceWristStateRspCb_SDK::ARI_CsiIceWristStateRspCb_SDK(AriSdk::ARI_CsiIceWristStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceWristStateRspCb_SDK::~ARI_CsiIceWristStateRspCb_SDK(AriSdk::ARI_CsiIceWristStateRspCb_SDK *this)
{
  *this = &unk_2A1D277C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceWristStateRspCb_SDK::~ARI_CsiIceWristStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceWristStateRspCb_SDK::pack(AriSdk::ARI_CsiIceWristStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK::ARI_CsiPowSleepSetSleepBlockerReq_SDK(AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -192020480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -192020480, 0);
}

void AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK::ARI_CsiPowSleepSetSleepBlockerReq_SDK(AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK::~ARI_CsiPowSleepSetSleepBlockerReq_SDK(AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK *this)
{
  *this = &unk_2A1D277F8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK::~ARI_CsiPowSleepSetSleepBlockerReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK::pack(AriSdk::ARI_CsiPowSleepSetSleepBlockerReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK(AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183631872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183631872, 0);
}

void AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK(AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK::~ARI_CsiPowSleepSetSleepBlockerRspCb_SDK(AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiPowSleepSetSleepBlockerRspCb_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_IBICPMSPowerQueryReq_SDK::ARI_IBICPMSPowerQueryReq_SDK(AriSdk::ARI_IBICPMSPowerQueryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191791104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191791104, 0);
}

void AriSdk::ARI_IBICPMSPowerQueryReq_SDK::ARI_IBICPMSPowerQueryReq_SDK(AriSdk::ARI_IBICPMSPowerQueryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICPMSPowerQueryReq_SDK::~ARI_IBICPMSPowerQueryReq_SDK(AriSdk::ARI_IBICPMSPowerQueryReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICPMSPowerQueryReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::ARI_IBICPMSPowerQueryRspCb_SDK(AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183402496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183402496, 0);
}

void AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::ARI_IBICPMSPowerQueryRspCb_SDK(AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::~ARI_IBICPMSPowerQueryRspCb_SDK(AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK *this)
{
  *this = &unk_2A1D278A0;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::~ARI_IBICPMSPowerQueryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::pack(AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK *this, AriMsg **a2)
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
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::unpack(AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

void sub_2960C7940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICpmsPowermWInd_SDK::ARI_IBICpmsPowermWInd_SDK(AriSdk::ARI_IBICpmsPowermWInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -175767552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -175767552, 0);
}

void AriSdk::ARI_IBICpmsPowermWInd_SDK::ARI_IBICpmsPowermWInd_SDK(AriSdk::ARI_IBICpmsPowermWInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpmsPowermWInd_SDK::~ARI_IBICpmsPowermWInd_SDK(AriSdk::ARI_IBICpmsPowermWInd_SDK *this)
{
  *this = &unk_2A1D278D8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICpmsPowermWInd_SDK::~ARI_IBICpmsPowermWInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpmsPowermWInd_SDK::pack(AriSdk::ARI_IBICpmsPowermWInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIGetRFFEScanDataReq_SDK::ARI_IBIGetRFFEScanDataReq_SDK(AriSdk::ARI_IBIGetRFFEScanDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191758336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191758336, 0);
}

void AriSdk::ARI_IBIGetRFFEScanDataReq_SDK::ARI_IBIGetRFFEScanDataReq_SDK(AriSdk::ARI_IBIGetRFFEScanDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIGetRFFEScanDataReq_SDK::~ARI_IBIGetRFFEScanDataReq_SDK(AriSdk::ARI_IBIGetRFFEScanDataReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIGetRFFEScanDataReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::ARI_IBIGetRFFEScanDataRspCb_SDK(AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183369728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183369728, 0);
}

void AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::ARI_IBIGetRFFEScanDataRspCb_SDK(AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::~ARI_IBIGetRFFEScanDataRspCb_SDK(AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK *this)
{
  *this = &unk_2A1D27948;
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
  AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::~ARI_IBIGetRFFEScanDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::pack(AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK *this, AriMsg **a2)
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

void sub_2960C8150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIMccSettingReq_SDK::ARI_IBIMccSettingReq_SDK(AriSdk::ARI_IBIMccSettingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -191823872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -191823872, 0);
}

void AriSdk::ARI_IBIMccSettingReq_SDK::ARI_IBIMccSettingReq_SDK(AriSdk::ARI_IBIMccSettingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMccSettingReq_SDK::~ARI_IBIMccSettingReq_SDK(AriSdk::ARI_IBIMccSettingReq_SDK *this)
{
  *this = &unk_2A1D27980;
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
  AriSdk::ARI_IBIMccSettingReq_SDK::~ARI_IBIMccSettingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMccSettingReq_SDK::pack(AriSdk::ARI_IBIMccSettingReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMccSettingRspCb_SDK::ARI_IBIMccSettingRspCb_SDK(AriSdk::ARI_IBIMccSettingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -183435264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -183435264, 0);
}

void AriSdk::ARI_IBIMccSettingRspCb_SDK::ARI_IBIMccSettingRspCb_SDK(AriSdk::ARI_IBIMccSettingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMccSettingRspCb_SDK::~ARI_IBIMccSettingRspCb_SDK(AriSdk::ARI_IBIMccSettingRspCb_SDK *this)
{
  *this = &unk_2A1D279B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMccSettingRspCb_SDK::~ARI_IBIMccSettingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMccSettingRspCb_SDK::pack(AriSdk::ARI_IBIMccSettingRspCb_SDK *this, AriMsg **a2)
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

uint64_t ARI_CsiIceGetRxDiversityRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4, char *a5)
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
    if (((DWORD1(v11) << 15) | (v11 << 26)) == -183861248)
    {
      v9 = AriMsg::unparam(&v11, 1, a3, 4uLL);
      if (!v9)
      {
        v9 = AriMsg::unparam(&v11, 2, a4, 4uLL);
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

uint64_t ARI_CsiIceGetRxDiversityReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0xF48A8000);
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

uint64_t ARI_CsiIceGetRxDiversityReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xF48A8000);
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

uint64_t ARI_CsiIceRxDiversityRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -184025088)
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

uint64_t ARI_CsiIceRxDiversityReq_ENC(int a1, int a2, uint64_t a3, void *a4, unsigned int *a5)
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
  AriMsg::AriMsg(&v11, 0xF4880000);
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

uint64_t ARI_CsiIceRxDiversityReq_BLK(int a1, int a2, int *a3, uint64_t a4)
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
  AriMsg::AriMsg(&v9, 0xF4880000);
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

void std::vector<IBI_CPMS_POWER_BUDGET>::__init_with_size[abi:ne200100]<IBI_CPMS_POWER_BUDGET*,IBI_CPMS_POWER_BUDGET*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960C8EA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const char *asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF44D8[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF44F0[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF4518[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4548[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF4568[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4598[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF45B8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF45F0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4608[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4628[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4640[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4660[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4698[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF46B0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF46F0[a1];
  }
}

{
  if (a1 > 0x2D)
  {
    return "???";
  }

  else
  {
    return off_29EDF4710[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4880[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF48A0[a1];
  }
}

{
  if (a1 > 9)
  {
    return "???";
  }

  else
  {
    return off_29EDF48D8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4928[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4940[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF4960[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF4988[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF49B0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4A18[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4A30[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4A48[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4A60[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF4A78[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4AA0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4AC0[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF4AD8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4B08[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF4B28[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4B50[a1];
  }
}

{
  if (a1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_29EDF4B70[a1];
  }
}

{
  if (a1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_29EDF4BD0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4C30[a1];
  }
}

{
  if (a1 > 0x1F)
  {
    return "???";
  }

  else
  {
    return off_29EDF4C48[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF4D48[a1];
  }
}

{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_29EDF4D90[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4DE8[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF4E08[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4E30[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF4E50[a1];
  }
}

{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_29EDF4E90[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4EE8[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF4F00[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4F48[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4F68[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4F80[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4F98[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4FB8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5020[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF5040[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5070[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5098[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF50B0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF50E0[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF50F8[a1];
  }
}

{
  if (a1 > 0xD)
  {
    return "???";
  }

  else
  {
    return off_29EDF5138[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF51A8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF51D0[a1];
  }
}

{
  if (a1 > 0x29)
  {
    return "???";
  }

  else
  {
    return off_29EDF51F0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5340[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5360[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5378[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF53B0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF53E0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5400[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5420[a1];
  }
}

{
  if (a1 > 9)
  {
    return "???";
  }

  else
  {
    return off_29EDF5440[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF5490[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF54D8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5520[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5538[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5558[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5580[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5598[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF5608[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF5648[a1];
  }
}

{
  if (a1 > 0x10)
  {
    return "???";
  }

  else
  {
    return off_29EDF56F8[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF57B0[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF57F0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5838[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF5858[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5898[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF58B0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF58F0[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF5908[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5940[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF5960[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF5990[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF59C0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF59E8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5A00[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5A18[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5A40[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5A68[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5A88[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5AA0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5AB8[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5AD0[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF5AF8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5B38[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5B58[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF5B70[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5BB8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5BD8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5BF0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5C08[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5C28[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5C40[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5C58[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5C70[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5C88[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5CA0[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF5CB8[a1];
  }
}

{
  if (a1 > 0xC)
  {
    return "???";
  }

  else
  {
    return off_29EDF5D08[a1];
  }
}

{
  if (a1 > 0x10)
  {
    return "???";
  }

  else
  {
    return off_29EDF5D70[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF5DF8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5E70[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5E88[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5EA8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5EC0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5ED8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5EF0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5F10[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5F30[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5F50[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF5F78[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5FA0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5FC0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5FD8[a1];
  }
}

{
  if (a1 > 0x2B)
  {
    return "???";
  }

  else
  {
    return off_29EDF5FF0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6150[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6168[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6188[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF61A0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF61B8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF61D8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF61F0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6208[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6220[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6238[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6250[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6268[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF6280[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF62A8[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF62C8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF62F0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6308[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6320[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6340[a1];
  }
}

{
  if (a1 > 0x17)
  {
    return "???";
  }

  else
  {
    return off_29EDF6358[a1];
  }
}

{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_29EDF6418[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6470[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6488[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF64A8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF64C0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF64D8[a1];
  }
}

{
  if (a1 > 0xD)
  {
    return "???";
  }

  else
  {
    return off_29EDF64F8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6568[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6580[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF65A0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF65B8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF65D8[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF65F0[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF6620[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF6660[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF66A0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF66B8[a1];
  }
}

{
  if (a1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_29EDF66D0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6730[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF6748[a1];
  }
}

{
  if (a1 > 0x10)
  {
    return "???";
  }

  else
  {
    return off_29EDF6778[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6800[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6818[a1];
  }
}

{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF6838[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6880[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF6898[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF68C0[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF68E0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6910[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF6928[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6958[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6970[a1];
  }
}

{
  if (a1 > 0x30)
  {
    return "???";
  }

  else
  {
    return off_29EDF6990[a1];
  }
}

{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_29EDF6B18[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF6B70[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF6BA8[a1];
  }
}

{
  if (a1 > 0x30)
  {
    return "???";
  }

  else
  {
    return off_29EDF6BE8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6D70[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6D90[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6DA8[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF6DC0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6DF0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6E10[a1];
  }
}

{
  if (a1 > 0x11)
  {
    return "???";
  }

  else
  {
    return off_29EDF6E28[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF6EB8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF6EE8[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF6F00[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF6F30[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF6F60[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6FA0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF6FC0[a1];
  }
}

{
  if (a1 > 0x25)
  {
    return "???";
  }

  else
  {
    return off_29EDF6FE0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7110[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF7128[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF7168[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7190[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF71D8[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF7218[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF7250[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7278[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7290[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF72A8[a1];
  }
}

{
  if (a1 > 0x14)
  {
    return "???";
  }

  else
  {
    return off_29EDF72C0[a1];
  }
}

{
  if (a1 > 0x1D)
  {
    return "???";
  }

  else
  {
    return off_29EDF7368[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7458[a1];
  }
}

{
  if (a1 > 0x2D)
  {
    return "???";
  }

  else
  {
    return off_29EDF7470[a1];
  }
}

{
  if (a1 > 0xE)
  {
    return "???";
  }

  else
  {
    return off_29EDF75E0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7698[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF76B8[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF76D0[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7708[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7720[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7738[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7758[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7788[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF77B8[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF77F0[a1];
  }
}

{
  if (a1 > 0x14)
  {
    return "???";
  }

  else
  {
    return off_29EDF7808[a1];
  }
}

{
  if (a1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_29EDF78B0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7910[a1];
  }
}

{
  if (a1 > 0x15)
  {
    return "???";
  }

  else
  {
    return off_29EDF7930[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7A20[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7A38[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7A58[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7A70[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7AA0[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7AC0[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF7AF0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7B28[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7B48[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7B60[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7B80[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7B98[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF7BB0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7BD8[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_29EDF7BF8[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7C30[a1];
  }
}

{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF7C60[a1];
  }
}

{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF7C88[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF7CB8[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF7CF8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7D38[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7D58[a1];
  }
}

{
  if (a1 > 0x17)
  {
    return "???";
  }

  else
  {
    return off_29EDF7D70[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7E30[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7E48[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7E68[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF7EA8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7EE8[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF7F08[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7F48[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7F68[a1];
  }
}

{
  if (a1 != 0 && a1 < 0xFFFFFF9C)
  {
    return "???";
  }

  else
  {
    return off_29EE2F2C8[a1 + 100];
  }
}

{
  if (a1 > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_29EE2F660[a1];
  }
}