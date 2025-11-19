uint64_t AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK::pack(AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x30uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK(AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1301118976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1301118976, 0);
}

void AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK(AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK::~ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK(AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK *this)
{
  *this = &unk_2A1D29828;
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
    MEMORY[0x29C257E70](v4, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK::~ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK::pack(AriSdk::ARI_IBIMsLpPosLocationRequestStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK(AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300922368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300922368, 0);
}

void AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK(AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK::~ARI_IBIMsLpResetGnssAssistanceDataCb_SDK(AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK *this)
{
  *this = &unk_2A1D29860;
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
  AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK::~ARI_IBIMsLpResetGnssAssistanceDataCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK::pack(AriSdk::ARI_IBIMsLpResetGnssAssistanceDataCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK::ARI_IBIMsLpWlanMeasurementRsp_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283653632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283653632, 0);
}

void AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK::ARI_IBIMsLpWlanMeasurementRsp_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK::~ARI_IBIMsLpWlanMeasurementRsp_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK *this)
{
  *this = &unk_2A1D29898;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A5CF7B87);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK::~ARI_IBIMsLpWlanMeasurementRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK::pack(AriSdk::ARI_IBIMsLpWlanMeasurementRsp_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x418uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1292042240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1292042240, 0);
}

void AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK::~ARI_IBIMsLpWlanMeasurementRspAckCb_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK *this)
{
  *this = &unk_2A1D298D0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK::~ARI_IBIMsLpWlanMeasurementRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK::pack(AriSdk::ARI_IBIMsLpWlanMeasurementRspAckCb_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK::ARI_IBIMsLpWlanMeasurementReqCb_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1301217280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1301217280, 0);
}

void AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK::ARI_IBIMsLpWlanMeasurementReqCb_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK::~ARI_IBIMsLpWlanMeasurementReqCb_SDK(AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK *this)
{
  *this = &unk_2A1D29908;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK::~ARI_IBIMsLpWlanMeasurementReqCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK::pack(AriSdk::ARI_IBIMsLpWlanMeasurementReqCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void std::vector<IBILpGanssBadSatelliteInfo>::__init_with_size[abi:ne200100]<IBILpGanssBadSatelliteInfo*,IBILpGanssBadSatelliteInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F96C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpGanssTimeModelData>::__init_with_size[abi:ne200100]<IBILpGanssTimeModelData*,IBILpGanssTimeModelData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F9774(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpGlonassAlmanacElement>::__init_with_size[abi:ne200100]<IBILpGlonassAlmanacElement*,IBILpGlonassAlmanacElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F9818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpGanssNavDataGlonass>::__init_with_size[abi:ne200100]<IBILpGanssNavDataGlonass*,IBILpGanssNavDataGlonass*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F98C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpGpsAcquisitionElement>::__init_with_size[abi:ne200100]<IBILpGpsAcquisitionElement*,IBILpGpsAcquisitionElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F9970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpGpsAlmanacElement>::__init_with_size[abi:ne200100]<IBILpGpsAlmanacElement*,IBILpGpsAlmanacElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F9A1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpDgpsElement>::__init_with_size[abi:ne200100]<IBILpDgpsElement*,IBILpDgpsElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F9AC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBILpTowAssist>::__init_with_size[abi:ne200100]<IBILpTowAssist*,IBILpTowAssist*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960F9B6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIApacsDataStatusReq_SDK::ARI_IBIApacsDataStatusReq_SDK(AriSdk::ARI_IBIApacsDataStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478740480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478740480, 0);
}

void AriSdk::ARI_IBIApacsDataStatusReq_SDK::ARI_IBIApacsDataStatusReq_SDK(AriSdk::ARI_IBIApacsDataStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIApacsDataStatusReq_SDK::~ARI_IBIApacsDataStatusReq_SDK(AriSdk::ARI_IBIApacsDataStatusReq_SDK *this)
{
  *this = &unk_2A1D29DA8;
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
  AriSdk::ARI_IBIApacsDataStatusReq_SDK::~ARI_IBIApacsDataStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIApacsDataStatusReq_SDK::pack(AriSdk::ARI_IBIApacsDataStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIApacsDataStatusRspCb_SDK::ARI_IBIApacsDataStatusRspCb_SDK(AriSdk::ARI_IBIApacsDataStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487129088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487129088, 0);
}

void AriSdk::ARI_IBIApacsDataStatusRspCb_SDK::ARI_IBIApacsDataStatusRspCb_SDK(AriSdk::ARI_IBIApacsDataStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIApacsDataStatusRspCb_SDK::~ARI_IBIApacsDataStatusRspCb_SDK(AriSdk::ARI_IBIApacsDataStatusRspCb_SDK *this)
{
  *this = &unk_2A1D29DE0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIApacsDataStatusRspCb_SDK::~ARI_IBIApacsDataStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIApacsDataStatusRspCb_SDK::pack(AriSdk::ARI_IBIApacsDataStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBILapsFetchIndCb_SDK::ARI_IBILapsFetchIndCb_SDK(AriSdk::ARI_IBILapsFetchIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495091712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495091712, 0);
}

void AriSdk::ARI_IBILapsFetchIndCb_SDK::ARI_IBILapsFetchIndCb_SDK(AriSdk::ARI_IBILapsFetchIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBILapsFetchIndCb_SDK::~ARI_IBILapsFetchIndCb_SDK(AriSdk::ARI_IBILapsFetchIndCb_SDK *this)
{
  *this = &unk_2A1D29E18;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40440B6928);
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
  AriSdk::ARI_IBILapsFetchIndCb_SDK::~ARI_IBILapsFetchIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBILapsFetchIndCb_SDK::pack(AriSdk::ARI_IBILapsFetchIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x7CuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBILapsFetchIndCb_V2_SDK::ARI_IBILapsFetchIndCb_V2_SDK(AriSdk::ARI_IBILapsFetchIndCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495484928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495484928, 0);
}

void AriSdk::ARI_IBILapsFetchIndCb_V2_SDK::ARI_IBILapsFetchIndCb_V2_SDK(AriSdk::ARI_IBILapsFetchIndCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBILapsFetchIndCb_V2_SDK::~ARI_IBILapsFetchIndCb_V2_SDK(AriSdk::ARI_IBILapsFetchIndCb_V2_SDK *this)
{
  *this = &unk_2A1D29E50;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C407B2DA037);
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
  AriSdk::ARI_IBILapsFetchIndCb_V2_SDK::~ARI_IBILapsFetchIndCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBILapsFetchIndCb_V2_SDK::pack(AriSdk::ARI_IBILapsFetchIndCb_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x88uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK::ARI_IBIMsNetIceCsgAsfSearchReq_SDK(AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478674944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478674944, 0);
}

void AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK::ARI_IBIMsNetIceCsgAsfSearchReq_SDK(AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK::~ARI_IBIMsNetIceCsgAsfSearchReq_SDK(AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK *this)
{
  *this = &unk_2A1D29E88;
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
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK::~ARI_IBIMsNetIceCsgAsfSearchReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK::pack(AriSdk::ARI_IBIMsNetIceCsgAsfSearchReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK(AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487063552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487063552, 0);
}

void AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK(AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK::~ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK(AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK *this)
{
  *this = &unk_2A1D29EC0;
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
  AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK::~ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK::pack(AriSdk::ARI_IBIMsNetIceCsgAsfSearchCnfCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBINetAttachReq_V1_SDK::ARI_IBINetAttachReq_V1_SDK(AriSdk::ARI_IBINetAttachReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478937088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478937088, 0);
}

void AriSdk::ARI_IBINetAttachReq_V1_SDK::ARI_IBINetAttachReq_V1_SDK(AriSdk::ARI_IBINetAttachReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetAttachReq_V1_SDK::~ARI_IBINetAttachReq_V1_SDK(AriSdk::ARI_IBINetAttachReq_V1_SDK *this)
{
  *this = &unk_2A1D29EF8;
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
    MEMORY[0x29C257E70](v4, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBINetAttachReq_V1_SDK::~ARI_IBINetAttachReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetAttachReq_V1_SDK::pack(AriSdk::ARI_IBINetAttachReq_V1_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 7, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 8, v9, 4uLL, 0), !result))
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

void AriSdk::ARI_IBINetAttachRspCb_V1_SDK::ARI_IBINetAttachRspCb_V1_SDK(AriSdk::ARI_IBINetAttachRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487325696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487325696, 0);
}

void AriSdk::ARI_IBINetAttachRspCb_V1_SDK::ARI_IBINetAttachRspCb_V1_SDK(AriSdk::ARI_IBINetAttachRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetAttachRspCb_V1_SDK::~ARI_IBINetAttachRspCb_V1_SDK(AriSdk::ARI_IBINetAttachRspCb_V1_SDK *this)
{
  *this = &unk_2A1D29F30;
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
  AriSdk::ARI_IBINetAttachRspCb_V1_SDK::~ARI_IBINetAttachRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetAttachRspCb_V1_SDK::pack(AriSdk::ARI_IBINetAttachRspCb_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK::ARI_IBINetCellularSwitchStatusReq_SDK(AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479330304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479330304, 0);
}

void AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK::ARI_IBINetCellularSwitchStatusReq_SDK(AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK::~ARI_IBINetCellularSwitchStatusReq_SDK(AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK *this)
{
  *this = &unk_2A1D29F68;
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
    MEMORY[0x29C257E70](v4, 0x1000C403E1C8BA9);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
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
  AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK::~ARI_IBINetCellularSwitchStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK::pack(AriSdk::ARI_IBINetCellularSwitchStatusReq_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0xCuLL, 0), !result))
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

void AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK::ARI_IBINetCellularSwitchStatusRspCb_SDK(AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487718912, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487718912, 0);
}

void AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK::ARI_IBINetCellularSwitchStatusRspCb_SDK(AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK::~ARI_IBINetCellularSwitchStatusRspCb_SDK(AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK *this)
{
  *this = &unk_2A1D29FA0;
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
  AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK::~ARI_IBINetCellularSwitchStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK::pack(AriSdk::ARI_IBINetCellularSwitchStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDetachReq_SDK::ARI_IBINetDetachReq_SDK(AriSdk::ARI_IBINetDetachReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478216192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478216192, 0);
}

void AriSdk::ARI_IBINetDetachReq_SDK::ARI_IBINetDetachReq_SDK(AriSdk::ARI_IBINetDetachReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDetachReq_SDK::~ARI_IBINetDetachReq_SDK(AriSdk::ARI_IBINetDetachReq_SDK *this)
{
  *this = &unk_2A1D29FD8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetDetachReq_SDK::~ARI_IBINetDetachReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDetachReq_SDK::pack(AriSdk::ARI_IBINetDetachReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDetachRspCb_SDK::ARI_IBINetDetachRspCb_SDK(AriSdk::ARI_IBINetDetachRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 486604800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 486604800, 0);
}

void AriSdk::ARI_IBINetDetachRspCb_SDK::ARI_IBINetDetachRspCb_SDK(AriSdk::ARI_IBINetDetachRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDetachRspCb_SDK::~ARI_IBINetDetachRspCb_SDK(AriSdk::ARI_IBINetDetachRspCb_SDK *this)
{
  *this = &unk_2A1D2A010;
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
  AriSdk::ARI_IBINetDetachRspCb_SDK::~ARI_IBINetDetachRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDetachRspCb_SDK::pack(AriSdk::ARI_IBINetDetachRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGeoMCCIndCb_SDK::ARI_IBINetGeoMCCIndCb_SDK(AriSdk::ARI_IBINetGeoMCCIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495517696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495517696, 0);
}

void AriSdk::ARI_IBINetGeoMCCIndCb_SDK::ARI_IBINetGeoMCCIndCb_SDK(AriSdk::ARI_IBINetGeoMCCIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGeoMCCIndCb_SDK::~ARI_IBINetGeoMCCIndCb_SDK(AriSdk::ARI_IBINetGeoMCCIndCb_SDK *this)
{
  *this = &unk_2A1D2A048;
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
  AriSdk::ARI_IBINetGeoMCCIndCb_SDK::~ARI_IBINetGeoMCCIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGeoMCCIndCb_SDK::pack(AriSdk::ARI_IBINetGeoMCCIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGeoMCCReq_SDK::ARI_IBINetGeoMCCReq_SDK(AriSdk::ARI_IBINetGeoMCCReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479461376, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479461376, 0);
}

void AriSdk::ARI_IBINetGeoMCCReq_SDK::ARI_IBINetGeoMCCReq_SDK(AriSdk::ARI_IBINetGeoMCCReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGeoMCCReq_SDK::~ARI_IBINetGeoMCCReq_SDK(AriSdk::ARI_IBINetGeoMCCReq_SDK *this)
{
  *this = &unk_2A1D2A080;
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
  AriSdk::ARI_IBINetGeoMCCReq_SDK::~ARI_IBINetGeoMCCReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGeoMCCReq_SDK::pack(AriSdk::ARI_IBINetGeoMCCReq_SDK *this, AriMsg **a2)
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

std::vector<int> *AriSdk::TlvArray<unsigned short,10ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x15)
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
      v23 = 10;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 1, 10);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2960FDC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBINetGeoMCCRspCb_SDK::ARI_IBINetGeoMCCRspCb_SDK(AriSdk::ARI_IBINetGeoMCCRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487849984, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487849984, 0);
}

void AriSdk::ARI_IBINetGeoMCCRspCb_SDK::ARI_IBINetGeoMCCRspCb_SDK(AriSdk::ARI_IBINetGeoMCCRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGeoMCCRspCb_SDK::~ARI_IBINetGeoMCCRspCb_SDK(AriSdk::ARI_IBINetGeoMCCRspCb_SDK *this)
{
  *this = &unk_2A1D2A0B8;
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
  AriSdk::ARI_IBINetGeoMCCRspCb_SDK::~ARI_IBINetGeoMCCRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGeoMCCRspCb_SDK::pack(AriSdk::ARI_IBINetGeoMCCRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGetNitzInfoReq_SDK::ARI_IBINetGetNitzInfoReq_SDK(AriSdk::ARI_IBINetGetNitzInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479526912, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479526912, 0);
}

void AriSdk::ARI_IBINetGetNitzInfoReq_SDK::ARI_IBINetGetNitzInfoReq_SDK(AriSdk::ARI_IBINetGetNitzInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetNitzInfoReq_SDK::~ARI_IBINetGetNitzInfoReq_SDK(AriSdk::ARI_IBINetGetNitzInfoReq_SDK *this)
{
  *this = &unk_2A1D2A0F0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetNitzInfoReq_SDK::~ARI_IBINetGetNitzInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetNitzInfoReq_SDK::pack(AriSdk::ARI_IBINetGetNitzInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK::ARI_IBINetGetNitzInfoRspCb_SDK(AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487915520, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487915520, 0);
}

void AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK::ARI_IBINetGetNitzInfoRspCb_SDK(AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK::~ARI_IBINetGetNitzInfoRspCb_SDK(AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK *this)
{
  *this = &unk_2A1D2A128;
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
  AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK::~ARI_IBINetGetNitzInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK::pack(AriSdk::ARI_IBINetGetNitzInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK::ARI_IBINetGetPlmnNameInfoIndCb_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495288320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495288320, 0);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK::ARI_IBINetGetPlmnNameInfoIndCb_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK::~ARI_IBINetGetPlmnNameInfoIndCb_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK *this)
{
  *this = &unk_2A1D2A160;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40117FECB1);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK::~ARI_IBINetGetPlmnNameInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK::pack(AriSdk::ARI_IBINetGetPlmnNameInfoIndCb_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 0x64uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBINetPlmn_V1,20ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0x84BDA12F684BDA13 * ((*(a2 + 1) - *a2) >> 2) < 0x15)
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
      v12 = 0x84BDA12F684BDA13 * ((*(a2 + 1) - *a2) >> 2);
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x84BDA12F684BDA13 * ((*(a2 + 1) - *a2) >> 2), 20);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960FEE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK::ARI_IBINetGetPlmnNameInfoReq_V1_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478969856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478969856, 0);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK::ARI_IBINetGetPlmnNameInfoReq_V1_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK::~ARI_IBINetGetPlmnNameInfoReq_V1_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK *this)
{
  *this = &unk_2A1D2A198;
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
  AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK::~ARI_IBINetGetPlmnNameInfoReq_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK::pack(AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK::unpack(AriSdk::ARI_IBINetGetPlmnNameInfoReq_V1_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2960FF55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487358464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487358464, 0);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK::~ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK(AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK *this)
{
  *this = &unk_2A1D2A1D0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40117FECB1);
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
  AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK::~ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK::pack(AriSdk::ARI_IBINetGetPlmnNameInfoRspCb_V1_SDK *this, AriMsg **a2)
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
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 0x64uLL, 0), !result))
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

void AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK::ARI_IBINetGetRegistrationInfoReq_SDK(AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479035392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479035392, 0);
}

void AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK::ARI_IBINetGetRegistrationInfoReq_SDK(AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK::~ARI_IBINetGetRegistrationInfoReq_SDK(AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK *this)
{
  *this = &unk_2A1D2A208;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK::~ARI_IBINetGetRegistrationInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK::pack(AriSdk::ARI_IBINetGetRegistrationInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK::ARI_IBINetGetRegistrationInfoRspCb_SDK(AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487424000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487424000, 0);
}

void AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK::ARI_IBINetGetRegistrationInfoRspCb_SDK(AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK::~ARI_IBINetGetRegistrationInfoRspCb_SDK(AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK *this)
{
  *this = &unk_2A1D2A240;
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 22);
  *(this + 22) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 21);
  *(this + 21) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 20);
  *(this + 20) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 19);
  *(this + 19) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 18);
  *(this + 18) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 17);
  *(this + 17) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 16);
  *(this + 16) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 15);
  *(this + 15) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 14);
  *(this + 14) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C403E1C8BA9);
  }

  v13 = *(this + 13);
  *(this + 13) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 12);
  *(this + 12) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
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
  AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK::~ARI_IBINetGetRegistrationInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK::pack(AriSdk::ARI_IBINetGetRegistrationInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 8, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 9, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 11, v11, 0xCuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 13, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 21, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 26, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 32, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 33, v16, 1uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 34, v17, 1uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 35, v18, 4uLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 36, v19, 4uLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 37, v20, 4uLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 38, v21, 4uLL, 0), !result))
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

void AriSdk::ARI_IBINetIceApStatusReq_SDK::ARI_IBINetIceApStatusReq_SDK(AriSdk::ARI_IBINetIceApStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478871552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478871552, 0);
}

void AriSdk::ARI_IBINetIceApStatusReq_SDK::ARI_IBINetIceApStatusReq_SDK(AriSdk::ARI_IBINetIceApStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceApStatusReq_SDK::~ARI_IBINetIceApStatusReq_SDK(AriSdk::ARI_IBINetIceApStatusReq_SDK *this)
{
  *this = &unk_2A1D2A278;
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
  AriSdk::ARI_IBINetIceApStatusReq_SDK::~ARI_IBINetIceApStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceApStatusReq_SDK::pack(AriSdk::ARI_IBINetIceApStatusReq_SDK *this, AriMsg **a2)
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
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetIceApStatusRspCb_SDK::ARI_IBINetIceApStatusRspCb_SDK(AriSdk::ARI_IBINetIceApStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487260160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487260160, 0);
}

void AriSdk::ARI_IBINetIceApStatusRspCb_SDK::ARI_IBINetIceApStatusRspCb_SDK(AriSdk::ARI_IBINetIceApStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceApStatusRspCb_SDK::~ARI_IBINetIceApStatusRspCb_SDK(AriSdk::ARI_IBINetIceApStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceApStatusRspCb_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK::ARI_IBINetIceCellularSwitchStatusReq_SDK(AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478773248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478773248, 0);
}

void AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK::ARI_IBINetIceCellularSwitchStatusReq_SDK(AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK::~ARI_IBINetIceCellularSwitchStatusReq_SDK(AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK *this)
{
  *this = &unk_2A1D2A2E8;
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
  AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK::~ARI_IBINetIceCellularSwitchStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK::pack(AriSdk::ARI_IBINetIceCellularSwitchStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK::ARI_IBINetIceCellularSwitchStatusRspCb_SDK(AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487161856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487161856, 0);
}

void AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK::ARI_IBINetIceCellularSwitchStatusRspCb_SDK(AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK::~ARI_IBINetIceCellularSwitchStatusRspCb_SDK(AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK *this)
{
  *this = &unk_2A1D2A320;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK::~ARI_IBINetIceCellularSwitchStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK::pack(AriSdk::ARI_IBINetIceCellularSwitchStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIceFdReportIndCb_SDK::ARI_IBINetIceFdReportIndCb_SDK(AriSdk::ARI_IBINetIceFdReportIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495058944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495058944, 0);
}

void AriSdk::ARI_IBINetIceFdReportIndCb_SDK::ARI_IBINetIceFdReportIndCb_SDK(AriSdk::ARI_IBINetIceFdReportIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceFdReportIndCb_SDK::~ARI_IBINetIceFdReportIndCb_SDK(AriSdk::ARI_IBINetIceFdReportIndCb_SDK *this)
{
  *this = &unk_2A1D2A358;
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
  AriSdk::ARI_IBINetIceFdReportIndCb_SDK::~ARI_IBINetIceFdReportIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceFdReportIndCb_SDK::pack(AriSdk::ARI_IBINetIceFdReportIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIceFdStatusReq_SDK::ARI_IBINetIceFdStatusReq_SDK(AriSdk::ARI_IBINetIceFdStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478412800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478412800, 0);
}

void AriSdk::ARI_IBINetIceFdStatusReq_SDK::ARI_IBINetIceFdStatusReq_SDK(AriSdk::ARI_IBINetIceFdStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceFdStatusReq_SDK::~ARI_IBINetIceFdStatusReq_SDK(AriSdk::ARI_IBINetIceFdStatusReq_SDK *this)
{
  *this = &unk_2A1D2A390;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetIceFdStatusReq_SDK::~ARI_IBINetIceFdStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceFdStatusReq_SDK::pack(AriSdk::ARI_IBINetIceFdStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK::ARI_IBINetIceFdStatusCnfCb_SDK(AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 486801408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 486801408, 0);
}

void AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK::ARI_IBINetIceFdStatusCnfCb_SDK(AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK::~ARI_IBINetIceFdStatusCnfCb_SDK(AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK *this)
{
  *this = &unk_2A1D2A3C8;
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
  AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK::~ARI_IBINetIceFdStatusCnfCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK::pack(AriSdk::ARI_IBINetIceFdStatusCnfCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK::ARI_IBINetIceManualPlmnModeIndCb_SDK(AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495124480, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495124480, 0);
}

void AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK::ARI_IBINetIceManualPlmnModeIndCb_SDK(AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK::~ARI_IBINetIceManualPlmnModeIndCb_SDK(AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK *this)
{
  *this = &unk_2A1D2A400;
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
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
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
  AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK::~ARI_IBINetIceManualPlmnModeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK::pack(AriSdk::ARI_IBINetIceManualPlmnModeIndCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetIncrementalScanReq_SDK::ARI_IBINetIncrementalScanReq_SDK(AriSdk::ARI_IBINetIncrementalScanReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479068160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479068160, 0);
}

void AriSdk::ARI_IBINetIncrementalScanReq_SDK::ARI_IBINetIncrementalScanReq_SDK(AriSdk::ARI_IBINetIncrementalScanReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIncrementalScanReq_SDK::~ARI_IBINetIncrementalScanReq_SDK(AriSdk::ARI_IBINetIncrementalScanReq_SDK *this)
{
  *this = &unk_2A1D2A438;
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
  AriSdk::ARI_IBINetIncrementalScanReq_SDK::~ARI_IBINetIncrementalScanReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIncrementalScanReq_SDK::pack(AriSdk::ARI_IBINetIncrementalScanReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIncrementalScanRspCb_SDK::ARI_IBINetIncrementalScanRspCb_SDK(AriSdk::ARI_IBINetIncrementalScanRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487456768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487456768, 0);
}

void AriSdk::ARI_IBINetIncrementalScanRspCb_SDK::ARI_IBINetIncrementalScanRspCb_SDK(AriSdk::ARI_IBINetIncrementalScanRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIncrementalScanRspCb_SDK::~ARI_IBINetIncrementalScanRspCb_SDK(AriSdk::ARI_IBINetIncrementalScanRspCb_SDK *this)
{
  *this = &unk_2A1D2A470;
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
  AriSdk::ARI_IBINetIncrementalScanRspCb_SDK::~ARI_IBINetIncrementalScanRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIncrementalScanRspCb_SDK::pack(AriSdk::ARI_IBINetIncrementalScanRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIncrementalScanIndCb_SDK::ARI_IBINetIncrementalScanIndCb_SDK(AriSdk::ARI_IBINetIncrementalScanIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495353856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495353856, 0);
}

void AriSdk::ARI_IBINetIncrementalScanIndCb_SDK::ARI_IBINetIncrementalScanIndCb_SDK(AriSdk::ARI_IBINetIncrementalScanIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIncrementalScanIndCb_SDK::~ARI_IBINetIncrementalScanIndCb_SDK(AriSdk::ARI_IBINetIncrementalScanIndCb_SDK *this)
{
  *this = &unk_2A1D2A4A8;
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
    MEMORY[0x29C257E70](v6, 0x1000C4004CCECB6);
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
  AriSdk::ARI_IBINetIncrementalScanIndCb_SDK::~ARI_IBINetIncrementalScanIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIncrementalScanIndCb_SDK::pack(AriSdk::ARI_IBINetIncrementalScanIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xF7CuLL, 0), !result))
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

void AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK::ARI_IBINetManageUEPolicyCommandIndCb_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495386624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495386624, 0);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK::ARI_IBINetManageUEPolicyCommandIndCb_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK::~ARI_IBINetManageUEPolicyCommandIndCb_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK *this)
{
  *this = &unk_2A1D2A4E0;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
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
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
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
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
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
  AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK::~ARI_IBINetManageUEPolicyCommandIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK::pack(AriSdk::ARI_IBINetManageUEPolicyCommandIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 6, v10, v11 - v10, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 1uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 8, v13, v14 - v13, 0), !result))
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

void sub_2961040AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,8000ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x1F41)
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
      v23 = 8000;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 8000);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296104338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned int,10ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x29)
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
      v23 = 10;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 10);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296104530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK::ARI_IBINetManageUEPolicyCommandResultReq_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479264768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479264768, 0);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK::ARI_IBINetManageUEPolicyCommandResultReq_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK::~ARI_IBINetManageUEPolicyCommandResultReq_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK *this)
{
  *this = &unk_2A1D2A518;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
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
  AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK::~ARI_IBINetManageUEPolicyCommandResultReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK::pack(AriSdk::ARI_IBINetManageUEPolicyCommandResultReq_SDK *this, AriMsg **a2)
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
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 8, v11, v12 - v11, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 1uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 10, v14, v15 - v14, 0), !result))
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

void sub_296104E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487653376, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487653376, 0);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK::~ARI_IBINetManageUEPolicyCommandResultRspCb_SDK(AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK *this)
{
  *this = &unk_2A1D2A550;
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
  AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK::~ARI_IBINetManageUEPolicyCommandResultRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK::pack(AriSdk::ARI_IBINetManageUEPolicyCommandResultRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 494993408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 494993408, 0);
}

void AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK::~ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK *this)
{
  *this = &unk_2A1D2A588;
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
  AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK::~ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK::pack(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 9, v11, 4uLL, 0), !result))
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

void AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495452160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495452160, 0);
}

void AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK::~ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK *this)
{
  *this = &unk_2A1D2A5C0;
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

  v4 = *(this + 23);
  *(this + 23) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 21);
  *(this + 21) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 20);
  *(this + 20) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 19);
  *(this + 19) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 18);
  *(this + 18) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 17);
  *(this + 17) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 16);
  *(this + 16) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 15);
  *(this + 15) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 14);
  *(this + 14) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 13);
  *(this + 13) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 12);
  *(this + 12) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 11);
  *(this + 11) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 10);
  *(this + 10) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
  }

  v18 = *(this + 9);
  *(this + 9) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 8);
  *(this + 8) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK::~ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK::pack(AriSdk::ARI_IBINetNetworkFeatureSupportInfoIndCb_V2_SDK *this, AriMsg **a2)
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
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 16, v20, 4uLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 17, v21, 4uLL, 0), !result))
                                  {
                                    v22 = *(this + 25);
                                    if (!v22 || (result = AriMsg::pack(*(this + 6), 18, v22, 4uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK::ARI_IBINetNitzInfoIndCb_V1_SDK(AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495255552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495255552, 0);
}

void AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK::ARI_IBINetNitzInfoIndCb_V1_SDK(AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK::~ARI_IBINetNitzInfoIndCb_V1_SDK(AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK *this)
{
  *this = &unk_2A1D2A5F8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4001E4F5AELL);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK::~ARI_IBINetNitzInfoIndCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK::pack(AriSdk::ARI_IBINetNitzInfoIndCb_V1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 8, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 9, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 10, v11, 0xAuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 12, v12, 0xCuLL, 0), !result))
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

void AriSdk::ARI_IBINetNssaiInfoIndCb_SDK::ARI_IBINetNssaiInfoIndCb_SDK(AriSdk::ARI_IBINetNssaiInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495419392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495419392, 0);
}

void AriSdk::ARI_IBINetNssaiInfoIndCb_SDK::ARI_IBINetNssaiInfoIndCb_SDK(AriSdk::ARI_IBINetNssaiInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNssaiInfoIndCb_SDK::~ARI_IBINetNssaiInfoIndCb_SDK(AriSdk::ARI_IBINetNssaiInfoIndCb_SDK *this)
{
  *this = &unk_2A1D2A630;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C406B768C9FLL);
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
  AriSdk::ARI_IBINetNssaiInfoIndCb_SDK::~ARI_IBINetNssaiInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNssaiInfoIndCb_SDK::pack(AriSdk::ARI_IBINetNssaiInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x258uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK::ARI_IBINetNssaiInfoIndCb_V2_SDK(AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495550464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495550464, 0);
}

void AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK::ARI_IBINetNssaiInfoIndCb_V2_SDK(AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK::~ARI_IBINetNssaiInfoIndCb_V2_SDK(AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK *this)
{
  *this = &unk_2A1D2A668;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40805B3259);
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
  AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK::~ARI_IBINetNssaiInfoIndCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK::pack(AriSdk::ARI_IBINetNssaiInfoIndCb_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x298uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetNssaiInfoReq_SDK::ARI_IBINetNssaiInfoReq_SDK(AriSdk::ARI_IBINetNssaiInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479363072, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479363072, 0);
}

void AriSdk::ARI_IBINetNssaiInfoReq_SDK::ARI_IBINetNssaiInfoReq_SDK(AriSdk::ARI_IBINetNssaiInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNssaiInfoReq_SDK::~ARI_IBINetNssaiInfoReq_SDK(AriSdk::ARI_IBINetNssaiInfoReq_SDK *this)
{
  *this = &unk_2A1D2A6A0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetNssaiInfoReq_SDK::~ARI_IBINetNssaiInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNssaiInfoReq_SDK::pack(AriSdk::ARI_IBINetNssaiInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetNssaiInfoRspCb_SDK::ARI_IBINetNssaiInfoRspCb_SDK(AriSdk::ARI_IBINetNssaiInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487751680, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487751680, 0);
}

void AriSdk::ARI_IBINetNssaiInfoRspCb_SDK::ARI_IBINetNssaiInfoRspCb_SDK(AriSdk::ARI_IBINetNssaiInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNssaiInfoRspCb_SDK::~ARI_IBINetNssaiInfoRspCb_SDK(AriSdk::ARI_IBINetNssaiInfoRspCb_SDK *this)
{
  *this = &unk_2A1D2A6D8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4035B30F66);
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
  AriSdk::ARI_IBINetNssaiInfoRspCb_SDK::~ARI_IBINetNssaiInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNssaiInfoRspCb_SDK::pack(AriSdk::ARI_IBINetNssaiInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x25CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK::ARI_IBINetNssaiInfoReq_V2_SDK(AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479494144, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479494144, 0);
}

void AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK::ARI_IBINetNssaiInfoReq_V2_SDK(AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK::~ARI_IBINetNssaiInfoReq_V2_SDK(AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK *this)
{
  *this = &unk_2A1D2A710;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK::~ARI_IBINetNssaiInfoReq_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK::pack(AriSdk::ARI_IBINetNssaiInfoReq_V2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK::ARI_IBINetNssaiInfoRspCb_V2_SDK(AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487882752, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487882752, 0);
}

void AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK::ARI_IBINetNssaiInfoRspCb_V2_SDK(AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK::~ARI_IBINetNssaiInfoRspCb_V2_SDK(AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK *this)
{
  *this = &unk_2A1D2A748;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4093E08644);
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
  AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK::~ARI_IBINetNssaiInfoRspCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK::pack(AriSdk::ARI_IBINetNssaiInfoRspCb_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x29CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetPowerDownReq_SDK::ARI_IBINetPowerDownReq_SDK(AriSdk::ARI_IBINetPowerDownReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478347264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478347264, 0);
}

void AriSdk::ARI_IBINetPowerDownReq_SDK::ARI_IBINetPowerDownReq_SDK(AriSdk::ARI_IBINetPowerDownReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetPowerDownReq_SDK::~ARI_IBINetPowerDownReq_SDK(AriSdk::ARI_IBINetPowerDownReq_SDK *this)
{
  *this = &unk_2A1D2A780;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetPowerDownReq_SDK::~ARI_IBINetPowerDownReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetPowerDownReq_SDK::pack(AriSdk::ARI_IBINetPowerDownReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetPowerDownCnfCb_SDK::ARI_IBINetPowerDownCnfCb_SDK(AriSdk::ARI_IBINetPowerDownCnfCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 486735872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 486735872, 0);
}

void AriSdk::ARI_IBINetPowerDownCnfCb_SDK::ARI_IBINetPowerDownCnfCb_SDK(AriSdk::ARI_IBINetPowerDownCnfCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetPowerDownCnfCb_SDK::~ARI_IBINetPowerDownCnfCb_SDK(AriSdk::ARI_IBINetPowerDownCnfCb_SDK *this)
{
  *this = &unk_2A1D2A7B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetPowerDownCnfCb_SDK::~ARI_IBINetPowerDownCnfCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetPowerDownCnfCb_SDK::pack(AriSdk::ARI_IBINetPowerDownCnfCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK::ARI_IBINetPreferredNssaiInfoReq_SDK(AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479428608, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479428608, 0);
}

void AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK::ARI_IBINetPreferredNssaiInfoReq_SDK(AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK::~ARI_IBINetPreferredNssaiInfoReq_SDK(AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK *this)
{
  *this = &unk_2A1D2A7F0;
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
  AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK::~ARI_IBINetPreferredNssaiInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK::pack(AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK *this, AriMsg **a2)
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

    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK::unpack(AriSdk::ARI_IBINetPreferredNssaiInfoReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296108F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK::ARI_IBINetPreferredNssaiInfoRspCb_SDK(AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487817216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487817216, 0);
}

void AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK::ARI_IBINetPreferredNssaiInfoRspCb_SDK(AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK::~ARI_IBINetPreferredNssaiInfoRspCb_SDK(AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK *this)
{
  *this = &unk_2A1D2A828;
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
  AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK::~ARI_IBINetPreferredNssaiInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK::pack(AriSdk::ARI_IBINetPreferredNssaiInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK(AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495321088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495321088, 0);
}

void AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK(AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK::~ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK(AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK *this)
{
  *this = &unk_2A1D2A860;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40117FECB1);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40117FECB1);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
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
  AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK::~ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK::pack(AriSdk::ARI_IBINetRegisteredPlmnNameIndCb_V1_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x64uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x64uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK::ARI_IBINetRegistrationInfoIndCb_SDK(AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 494960640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 494960640, 0);
}

void AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK::ARI_IBINetRegistrationInfoIndCb_SDK(AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK::~ARI_IBINetRegistrationInfoIndCb_SDK(AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK *this)
{
  *this = &unk_2A1D2A898;
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 33);
  *(this + 33) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 32);
  *(this + 32) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 31);
  *(this + 31) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C403E1C8BA9);
  }

  v6 = *(this + 30);
  *(this + 30) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 29);
  *(this + 29) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 28);
  *(this + 28) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 27);
  *(this + 27) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 26);
  *(this + 26) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 25);
  *(this + 25) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 24);
  *(this + 24) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4000313F17);
  }

  v13 = *(this + 23);
  *(this + 23) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 22);
  *(this + 22) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 21);
  *(this + 21) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 20);
  *(this + 20) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 19);
  *(this + 19) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
  }

  v18 = *(this + 18);
  *(this + 18) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 17);
  *(this + 17) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 16);
  *(this + 16) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C403E1C8BA9);
  }

  v21 = *(this + 15);
  *(this + 15) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4052888210);
  }

  v22 = *(this + 14);
  *(this + 14) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 13);
  *(this + 13) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 12);
  *(this + 12) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 11);
  *(this + 11) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 10);
  *(this + 10) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 9);
  *(this + 9) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 8);
  *(this + 8) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK::~ARI_IBINetRegistrationInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK::pack(AriSdk::ARI_IBINetRegistrationInfoIndCb_SDK *this, AriMsg **a2)
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
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0xCuLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 13, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 16, v17, 4uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 17, v18, 4uLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 19, v19, 4uLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 20, v20, 4uLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 22, v21, 8uLL, 0), !result))
                                  {
                                    v22 = *(this + 25);
                                    if (!v22 || (result = AriMsg::pack(*(this + 6), 23, v22, 4uLL, 0), !result))
                                    {
                                      v23 = *(this + 26);
                                      if (!v23 || (result = AriMsg::pack(*(this + 6), 25, v23, 4uLL, 0), !result))
                                      {
                                        v24 = *(this + 27);
                                        if (!v24 || (result = AriMsg::pack(*(this + 6), 26, v24, 4uLL, 0), !result))
                                        {
                                          v25 = *(this + 28);
                                          if (!v25 || (result = AriMsg::pack(*(this + 6), 27, v25, 1uLL, 0), !result))
                                          {
                                            v26 = *(this + 29);
                                            if (!v26 || (result = AriMsg::pack(*(this + 6), 28, v26, 1uLL, 0), !result))
                                            {
                                              v27 = *(this + 30);
                                              if (!v27 || (result = AriMsg::pack(*(this + 6), 29, v27, 4uLL, 0), !result))
                                              {
                                                v28 = *(this + 31);
                                                if (!v28 || (result = AriMsg::pack(*(this + 6), 30, v28, 0xCuLL, 0), !result))
                                                {
                                                  v29 = *(this + 32);
                                                  if (!v29 || (result = AriMsg::pack(*(this + 6), 31, v29, 4uLL, 0), !result))
                                                  {
                                                    v30 = *(this + 33);
                                                    if (!v30 || (result = AriMsg::pack(*(this + 6), 32, v30, 4uLL, 0), !result))
                                                    {
                                                      v31 = *(this + 34);
                                                      if (!v31 || (result = AriMsg::pack(*(this + 6), 33, v31, 4uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBINetSetECBMReq_SDK::ARI_IBINetSetECBMReq_SDK(AriSdk::ARI_IBINetSetECBMReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479232000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479232000, 0);
}

void AriSdk::ARI_IBINetSetECBMReq_SDK::ARI_IBINetSetECBMReq_SDK(AriSdk::ARI_IBINetSetECBMReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetECBMReq_SDK::~ARI_IBINetSetECBMReq_SDK(AriSdk::ARI_IBINetSetECBMReq_SDK *this)
{
  *this = &unk_2A1D2A8D0;
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
  AriSdk::ARI_IBINetSetECBMReq_SDK::~ARI_IBINetSetECBMReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetECBMReq_SDK::pack(AriSdk::ARI_IBINetSetECBMReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSetECBMRspCb_SDK::ARI_IBINetSetECBMRspCb_SDK(AriSdk::ARI_IBINetSetECBMRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487620608, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487620608, 0);
}

void AriSdk::ARI_IBINetSetECBMRspCb_SDK::ARI_IBINetSetECBMRspCb_SDK(AriSdk::ARI_IBINetSetECBMRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetECBMRspCb_SDK::~ARI_IBINetSetECBMRspCb_SDK(AriSdk::ARI_IBINetSetECBMRspCb_SDK *this)
{
  *this = &unk_2A1D2A908;
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
  AriSdk::ARI_IBINetSetECBMRspCb_SDK::~ARI_IBINetSetECBMRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetECBMRspCb_SDK::pack(AriSdk::ARI_IBINetSetECBMRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSetECBMIndCb_SDK::ARI_IBINetSetECBMIndCb_SDK(AriSdk::ARI_IBINetSetECBMIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 496009216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 496009216, 0);
}

void AriSdk::ARI_IBINetSetECBMIndCb_SDK::ARI_IBINetSetECBMIndCb_SDK(AriSdk::ARI_IBINetSetECBMIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetECBMIndCb_SDK::~ARI_IBINetSetECBMIndCb_SDK(AriSdk::ARI_IBINetSetECBMIndCb_SDK *this)
{
  *this = &unk_2A1D2A940;
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
  AriSdk::ARI_IBINetSetECBMIndCb_SDK::~ARI_IBINetSetECBMIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetECBMIndCb_SDK::pack(AriSdk::ARI_IBINetSetECBMIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK::ARI_IBINetSetSatelliteSystemConfigReq_SDK(AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479559680, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479559680, 0);
}

void AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK::ARI_IBINetSetSatelliteSystemConfigReq_SDK(AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK::~ARI_IBINetSetSatelliteSystemConfigReq_SDK(AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK *this)
{
  *this = &unk_2A1D2A978;
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
  AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK::~ARI_IBINetSetSatelliteSystemConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK::pack(AriSdk::ARI_IBINetSetSatelliteSystemConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK(AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487948288, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487948288, 0);
}

void AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK(AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK::~ARI_IBINetSetSatelliteSystemConfigRspCb_SDK(AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK *this)
{
  *this = &unk_2A1D2A9B0;
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
  AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK::~ARI_IBINetSetSatelliteSystemConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK::pack(AriSdk::ARI_IBINetSetSatelliteSystemConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK::ARI_IBINetSetSystemSelectionPreferenceReq_SDK(AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479199232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479199232, 0);
}

void AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK::ARI_IBINetSetSystemSelectionPreferenceReq_SDK(AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK::~ARI_IBINetSetSystemSelectionPreferenceReq_SDK(AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK *this)
{
  *this = &unk_2A1D2A9E8;
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
  AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK::~ARI_IBINetSetSystemSelectionPreferenceReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK::pack(AriSdk::ARI_IBINetSetSystemSelectionPreferenceReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK(AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487587840, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487587840, 0);
}

void AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK(AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK::~ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK(AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK *this)
{
  *this = &unk_2A1D2AA20;
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
  AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK::~ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK::pack(AriSdk::ARI_IBINetSetSystemSelectionPreferenceRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetIceSingleShotFdReq_SDK::ARI_IBINetIceSingleShotFdReq_SDK(AriSdk::ARI_IBINetIceSingleShotFdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478478336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478478336, 0);
}

void AriSdk::ARI_IBINetIceSingleShotFdReq_SDK::ARI_IBINetIceSingleShotFdReq_SDK(AriSdk::ARI_IBINetIceSingleShotFdReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetIceSingleShotFdReq_SDK::~ARI_IBINetIceSingleShotFdReq_SDK(AriSdk::ARI_IBINetIceSingleShotFdReq_SDK *this)
{
  *this = &unk_2A1D2AA58;
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
  AriSdk::ARI_IBINetIceSingleShotFdReq_SDK::~ARI_IBINetIceSingleShotFdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetIceSingleShotFdReq_SDK::pack(AriSdk::ARI_IBINetIceSingleShotFdReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetSingleShotFdRspCb_SDK::ARI_IBINetSingleShotFdRspCb_SDK(AriSdk::ARI_IBINetSingleShotFdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 486866944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 486866944, 0);
}

void AriSdk::ARI_IBINetSingleShotFdRspCb_SDK::ARI_IBINetSingleShotFdRspCb_SDK(AriSdk::ARI_IBINetSingleShotFdRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetSingleShotFdRspCb_SDK::~ARI_IBINetSingleShotFdRspCb_SDK(AriSdk::ARI_IBINetSingleShotFdRspCb_SDK *this)
{
  *this = &unk_2A1D2AA90;
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
  AriSdk::ARI_IBINetSingleShotFdRspCb_SDK::~ARI_IBINetSingleShotFdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetSingleShotFdRspCb_SDK::pack(AriSdk::ARI_IBINetSingleShotFdRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetUeStateIndicationReq_SDK::ARI_IBINetUeStateIndicationReq_SDK(AriSdk::ARI_IBINetUeStateIndicationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479297536, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479297536, 0);
}

void AriSdk::ARI_IBINetUeStateIndicationReq_SDK::ARI_IBINetUeStateIndicationReq_SDK(AriSdk::ARI_IBINetUeStateIndicationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetUeStateIndicationReq_SDK::~ARI_IBINetUeStateIndicationReq_SDK(AriSdk::ARI_IBINetUeStateIndicationReq_SDK *this)
{
  *this = &unk_2A1D2AAC8;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 16);
  if (v6)
  {
    *(this + 17) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
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
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
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
  AriSdk::ARI_IBINetUeStateIndicationReq_SDK::~ARI_IBINetUeStateIndicationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetUeStateIndicationReq_SDK::pack(AriSdk::ARI_IBINetUeStateIndicationReq_SDK *this, AriMsg **a2)
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
                v14 = *(this + 19);
                if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 1uLL, 0), !result))
                {
                  v15 = *(this + 20);
                  if (!v15 || (v16 = *(this + 21), v15 == v16) || (result = AriMsg::pack(*(this + 6), 10, v15, v16 - v15, 0), !result))
                  {
                    v17 = *(this + 23);
                    if (!v17 || (result = AriMsg::pack(*(this + 6), 11, v17, 1uLL, 0), !result))
                    {
                      v18 = *(this + 24);
                      if (!v18 || (v19 = *(this + 25), v18 == v19) || (result = AriMsg::pack(*(this + 6), 12, v18, v19 - v18, 0), !result))
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

void sub_29610D88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,3ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 4)
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
      v23 = 3;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 3);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29610DB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,240ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xF1)
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
      v23 = 240;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 240);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29610DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK::ARI_IBINetUeStateIndicationRspCb_SDK(AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487686144, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487686144, 0);
}

void AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK::ARI_IBINetUeStateIndicationRspCb_SDK(AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK::~ARI_IBINetUeStateIndicationRspCb_SDK(AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK *this)
{
  *this = &unk_2A1D2AB00;
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
  AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK::~ARI_IBINetUeStateIndicationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK::pack(AriSdk::ARI_IBINetUeStateIndicationRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIP2PMessageIndCb_SDK::ARI_IBIP2PMessageIndCb_SDK(AriSdk::ARI_IBIP2PMessageIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 495190016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 495190016, 0);
}

void AriSdk::ARI_IBIP2PMessageIndCb_SDK::ARI_IBIP2PMessageIndCb_SDK(AriSdk::ARI_IBIP2PMessageIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIP2PMessageIndCb_SDK::~ARI_IBIP2PMessageIndCb_SDK(AriSdk::ARI_IBIP2PMessageIndCb_SDK *this)
{
  *this = &unk_2A1D2AB38;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIP2PMessageIndCb_SDK::~ARI_IBIP2PMessageIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIP2PMessageIndCb_SDK::pack(AriSdk::ARI_IBIP2PMessageIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
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

std::vector<int> *AriSdk::TlvArray<unsigned char,3000ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xBB9)
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
      v23 = 3000;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 3000);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29610E8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIP2PMsgPushReq_SDK::ARI_IBIP2PMsgPushReq_SDK(AriSdk::ARI_IBIP2PMsgPushReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479166464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479166464, 0);
}

void AriSdk::ARI_IBIP2PMsgPushReq_SDK::ARI_IBIP2PMsgPushReq_SDK(AriSdk::ARI_IBIP2PMsgPushReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIP2PMsgPushReq_SDK::~ARI_IBIP2PMsgPushReq_SDK(AriSdk::ARI_IBIP2PMsgPushReq_SDK *this)
{
  *this = &unk_2A1D2AB70;
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
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
  AriSdk::ARI_IBIP2PMsgPushReq_SDK::~ARI_IBIP2PMsgPushReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIP2PMsgPushReq_SDK::pack(AriSdk::ARI_IBIP2PMsgPushReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
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

void sub_29610EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIP2PMsgPushRspCb_SDK::ARI_IBIP2PMsgPushRspCb_SDK(AriSdk::ARI_IBIP2PMsgPushRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487555072, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487555072, 0);
}

void AriSdk::ARI_IBIP2PMsgPushRspCb_SDK::ARI_IBIP2PMsgPushRspCb_SDK(AriSdk::ARI_IBIP2PMsgPushRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIP2PMsgPushRspCb_SDK::~ARI_IBIP2PMsgPushRspCb_SDK(AriSdk::ARI_IBIP2PMsgPushRspCb_SDK *this)
{
  *this = &unk_2A1D2ABA8;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIP2PMsgPushRspCb_SDK::~ARI_IBIP2PMsgPushRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIP2PMsgPushRspCb_SDK::pack(AriSdk::ARI_IBIP2PMsgPushRspCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIP2PMsgPushRspCb_SDK::unpack(AriSdk::ARI_IBIP2PMsgPushRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29610F710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

std::vector<int> *AriSdk::TlvArray<unsigned char,174ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xAF)
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
      v23 = 174;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 174);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29610F974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIP2PProximityStatusReq_SDK::ARI_IBIP2PProximityStatusReq_SDK(AriSdk::ARI_IBIP2PProximityStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478806016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478806016, 0);
}

void AriSdk::ARI_IBIP2PProximityStatusReq_SDK::ARI_IBIP2PProximityStatusReq_SDK(AriSdk::ARI_IBIP2PProximityStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIP2PProximityStatusReq_SDK::~ARI_IBIP2PProximityStatusReq_SDK(AriSdk::ARI_IBIP2PProximityStatusReq_SDK *this)
{
  *this = &unk_2A1D2ABE0;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIP2PProximityStatusReq_SDK::~ARI_IBIP2PProximityStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIP2PProximityStatusReq_SDK::pack(AriSdk::ARI_IBIP2PProximityStatusReq_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 6, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 7, v13, v14 - v13, 0), !result))
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

void sub_29611007C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,42ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x2B)
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
      v23 = 42;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 42);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961102E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,176ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xB1)
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
      v23 = 176;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 176);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961104D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK::ARI_IBIP2PProximityStatusRspCb_SDK(AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487194624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487194624, 0);
}

void AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK::ARI_IBIP2PProximityStatusRspCb_SDK(AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK::~ARI_IBIP2PProximityStatusRspCb_SDK(AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK *this)
{
  *this = &unk_2A1D2AC18;
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
  AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK::~ARI_IBIP2PProximityStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK::pack(AriSdk::ARI_IBIP2PProximityStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISendApacsDataReq_SDK::ARI_IBISendApacsDataReq_SDK(AriSdk::ARI_IBISendApacsDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478707712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478707712, 0);
}

void AriSdk::ARI_IBISendApacsDataReq_SDK::ARI_IBISendApacsDataReq_SDK(AriSdk::ARI_IBISendApacsDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendApacsDataReq_SDK::~ARI_IBISendApacsDataReq_SDK(AriSdk::ARI_IBISendApacsDataReq_SDK *this)
{
  *this = &unk_2A1D2AC50;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
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
  AriSdk::ARI_IBISendApacsDataReq_SDK::~ARI_IBISendApacsDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendApacsDataReq_SDK::pack(AriSdk::ARI_IBISendApacsDataReq_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 1uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 8, v13, 4uLL, 0), !result))
              {
                v14 = *(this + 17);
                if (!v14 || (v15 = *(this + 18), v14 == v15) || (result = AriMsg::pack(*(this + 6), 9, v14, v15 - v14, 0), !result))
                {
                  v16 = *(this + 20);
                  if (!v16 || (v17 = *(this + 21), v16 == v17) || (result = AriMsg::pack(*(this + 6), 10, v16, v17 - v16, 0), !result))
                  {
                    v18 = *(this + 23);
                    if (!v18 || (v19 = *(this + 24), v18 == v19) || (result = AriMsg::pack(*(this + 6), 11, v18, v19 - v18, 0), !result))
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

void AriSdk::ARI_IBISendApacsDataReq_SDK::unpack(AriSdk::ARI_IBISendApacsDataReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2961114A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v25, v24);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBINetPssiListExt,12ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 3) < 0xD)
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
      v12 = 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 3);
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1) - *a2) >> 3), 12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961117E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINetPssiCdma1xInfo,10ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x51uLL)
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
      v25 = 10;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 10);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296111A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBINetPssiCdmaEvdoInfo,10ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2) < 0xB)
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
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 10;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2), 10);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296111C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISendApacsDataRspCb_SDK::ARI_IBISendApacsDataRspCb_SDK(AriSdk::ARI_IBISendApacsDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487096320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487096320, 0);
}

void AriSdk::ARI_IBISendApacsDataRspCb_SDK::ARI_IBISendApacsDataRspCb_SDK(AriSdk::ARI_IBISendApacsDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendApacsDataRspCb_SDK::~ARI_IBISendApacsDataRspCb_SDK(AriSdk::ARI_IBISendApacsDataRspCb_SDK *this)
{
  *this = &unk_2A1D2AC88;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISendApacsDataRspCb_SDK::~ARI_IBISendApacsDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendApacsDataRspCb_SDK::pack(AriSdk::ARI_IBISendApacsDataRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISendApacsDataReq_V2_SDK::ARI_IBISendApacsDataReq_V2_SDK(AriSdk::ARI_IBISendApacsDataReq_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479395840, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479395840, 0);
}

void AriSdk::ARI_IBISendApacsDataReq_V2_SDK::ARI_IBISendApacsDataReq_V2_SDK(AriSdk::ARI_IBISendApacsDataReq_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendApacsDataReq_V2_SDK::~ARI_IBISendApacsDataReq_V2_SDK(AriSdk::ARI_IBISendApacsDataReq_V2_SDK *this)
{
  *this = &unk_2A1D2ACC0;
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
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
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
  AriSdk::ARI_IBISendApacsDataReq_V2_SDK::~ARI_IBISendApacsDataReq_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendApacsDataReq_V2_SDK::pack(AriSdk::ARI_IBISendApacsDataReq_V2_SDK *this, AriMsg **a2)
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
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 1uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 1uLL, 0), !result))
            {
              v13 = *(this + 16);
              if (!v13 || (result = AriMsg::pack(*(this + 6), 8, v13, 4uLL, 0), !result))
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

void AriSdk::ARI_IBISendApacsDataReq_V2_SDK::unpack(AriSdk::ARI_IBISendApacsDataReq_V2_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK::ARI_IBISendApacsDataRspCb_V2_SDK(AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487784448, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487784448, 0);
}

void AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK::ARI_IBISendApacsDataRspCb_V2_SDK(AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK::~ARI_IBISendApacsDataRspCb_V2_SDK(AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK *this)
{
  *this = &unk_2A1D2ACF8;
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
  AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK::~ARI_IBISendApacsDataRspCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK::pack(AriSdk::ARI_IBISendApacsDataRspCb_V2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISendPreferredListReq_SDK::ARI_IBISendPreferredListReq_SDK(AriSdk::ARI_IBISendPreferredListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479100928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479100928, 0);
}

void AriSdk::ARI_IBISendPreferredListReq_SDK::ARI_IBISendPreferredListReq_SDK(AriSdk::ARI_IBISendPreferredListReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendPreferredListReq_SDK::~ARI_IBISendPreferredListReq_SDK(AriSdk::ARI_IBISendPreferredListReq_SDK *this)
{
  *this = &unk_2A1D2AD30;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4055DB4192);
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
  AriSdk::ARI_IBISendPreferredListReq_SDK::~ARI_IBISendPreferredListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendPreferredListReq_SDK::pack(AriSdk::ARI_IBISendPreferredListReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0xC0CuLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
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

void AriSdk::ARI_IBISendPreferredListRspCb_SDK::ARI_IBISendPreferredListRspCb_SDK(AriSdk::ARI_IBISendPreferredListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487489536, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487489536, 0);
}

void AriSdk::ARI_IBISendPreferredListRspCb_SDK::ARI_IBISendPreferredListRspCb_SDK(AriSdk::ARI_IBISendPreferredListRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendPreferredListRspCb_SDK::~ARI_IBISendPreferredListRspCb_SDK(AriSdk::ARI_IBISendPreferredListRspCb_SDK *this)
{
  *this = &unk_2A1D2AD68;
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
  AriSdk::ARI_IBISendPreferredListRspCb_SDK::~ARI_IBISendPreferredListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendPreferredListRspCb_SDK::pack(AriSdk::ARI_IBISendPreferredListRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK::ARI_IBISendPreferredPlmnVersionReq_SDK(AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 479133696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 479133696, 0);
}

void AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK::ARI_IBISendPreferredPlmnVersionReq_SDK(AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK::~ARI_IBISendPreferredPlmnVersionReq_SDK(AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK *this)
{
  *this = &unk_2A1D2ADA0;
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
  AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK::~ARI_IBISendPreferredPlmnVersionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK::pack(AriSdk::ARI_IBISendPreferredPlmnVersionReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK::ARI_IBISendPreferredPlmnVersionRspCb_SDK(AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487522304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487522304, 0);
}

void AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK::ARI_IBISendPreferredPlmnVersionRspCb_SDK(AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK::~ARI_IBISendPreferredPlmnVersionRspCb_SDK(AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK *this)
{
  *this = &unk_2A1D2ADD8;
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
  AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK::~ARI_IBISendPreferredPlmnVersionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK::pack(AriSdk::ARI_IBISendPreferredPlmnVersionRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISetRtcEpochTimeReq_SDK::ARI_IBISetRtcEpochTimeReq_SDK(AriSdk::ARI_IBISetRtcEpochTimeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 478904320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 478904320, 0);
}

void AriSdk::ARI_IBISetRtcEpochTimeReq_SDK::ARI_IBISetRtcEpochTimeReq_SDK(AriSdk::ARI_IBISetRtcEpochTimeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISetRtcEpochTimeReq_SDK::~ARI_IBISetRtcEpochTimeReq_SDK(AriSdk::ARI_IBISetRtcEpochTimeReq_SDK *this)
{
  *this = &unk_2A1D2AE10;
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
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISetRtcEpochTimeReq_SDK::~ARI_IBISetRtcEpochTimeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISetRtcEpochTimeReq_SDK::pack(AriSdk::ARI_IBISetRtcEpochTimeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK::ARI_IBISetRtcEpochTimeRspCb_SDK(AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 487292928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 487292928, 0);
}

void AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK::ARI_IBISetRtcEpochTimeRspCb_SDK(AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK::~ARI_IBISetRtcEpochTimeRspCb_SDK(AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK *this)
{
  *this = &unk_2A1D2AE48;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK::~ARI_IBISetRtcEpochTimeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK::pack(AriSdk::ARI_IBISetRtcEpochTimeRspCb_SDK *this, AriMsg **a2)
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

void std::vector<IBINetPlmn_V1>::__init_with_size[abi:ne200100]<IBINetPlmn_V1*,IBINetPlmn_V1*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29611430C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINetPssiListExt>::__init_with_size[abi:ne200100]<IBINetPssiListExt*,IBINetPssiListExt*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961143B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINetPssiCdma1xInfo>::__init_with_size[abi:ne200100]<IBINetPssiCdma1xInfo*,IBINetPssiCdma1xInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29611445C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBINetPssiCdmaEvdoInfo>::__init_with_size[abi:ne200100]<IBINetPssiCdmaEvdoInfo*,IBINetPssiCdmaEvdoInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_296114508(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriClient::create(Ari::AriClient *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v1 = getprogname();
  isProcessRunning = strncmp(v1, "CommCenter", 0x10uLL);
  if (isProcessRunning)
  {
    v3 = getprogname();
    isProcessRunning = strncmp(v3, "CommCenter-asan", 0x10uLL);
    if (isProcessRunning)
    {
      v4 = getprogname();
      isProcessRunning = strncmp(v4, "basebandd", 0x10uLL);
      if (isProcessRunning)
      {
        v5 = getprogname();
        isProcessRunning = strncmp(v5, "bbutil", 0x10uLL);
        if (isProcessRunning)
        {
          goto LABEL_25;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "CommCenter");
        isProcessRunning = ari_util::isProcessRunning(buf);
        if (isProcessRunning)
        {
          v6 = 0;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "basebandd");
          isProcessRunning = ari_util::isProcessRunning(__p);
          v6 = isProcessRunning ^ 1;
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if ((SHIBYTE(v20) & 0x80000000) == 0)
        {
          if (v6)
          {
            goto LABEL_11;
          }

LABEL_25:
          if ((DefaultLogLevel & 0x20) != 0)
          {
            OsLog = AriOsa::GetOsLog(isProcessRunning);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "create", __p);
              v12 = v16 >= 0 ? __p : __p[0];
              *buf = 136315650;
              *&buf[4] = "ari";
              v18 = 2080;
              v19 = v12;
              v20 = 1024;
              v21 = 39;
              _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Creating XPC client", buf, 0x1Cu);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "create", buf);
            if (v20 >= 0)
            {
              v14 = buf;
            }

            else
            {
              v14 = *buf;
            }

            AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Creating XPC client", v13, v14, 39);
            if (SHIBYTE(v20) < 0)
            {
              operator delete(*buf);
            }
          }

          operator new();
        }

        operator delete(*buf);
        if (!v6)
        {
          goto LABEL_25;
        }
      }
    }
  }

LABEL_11:
  if ((DefaultLogLevel & 0x20) != 0)
  {
    v7 = AriOsa::GetOsLog(isProcessRunning);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "create", __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "ari";
      v18 = 2080;
      v19 = v8;
      v20 = 1024;
      v21 = 32;
      _os_log_impl(&dword_296048000, v7, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Creating GCD client", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "create", buf);
    if (v20 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Creating GCD client", v9, v10, 32);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(*buf);
    }
  }

  operator new();
}

void sub_29611498C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

Ari::AriClient *Ari::AriClient::AriClient(Ari::AriClient *this)
{
  *this = &unk_2A1D2B5B8;
  *(this + 1) = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("AriHostIPC", v2);
  *(this + 1) = v3;
  AriOsa::SWTrap((v3 == 0), "ipcQueue == nullptr", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", 0x35);
  return this;
}

void Ari::AriClient::~AriClient(Ari::AriClient *this)
{
  *this = &unk_2A1D2B5B8;
  v1 = *(this + 1);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void **Ari::AriClientGcd::AriClientGcd(void **this)
{
  *Ari::AriClient::AriClient(this) = &unk_2A1D2B630;
  v2 = dlopen("/usr/lib/libARIServer.dylib", 1);
  this[11] = v2;
  AriOsa::SWTrap((v2 == 0), "rtlibHandle == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", 0x55);
  this[2] = dlsym(this[11], "AriRuntimeRegisterClient");
  this[3] = dlsym(this[11], "AriRuntimeDeregisterClient");
  this[4] = dlsym(this[11], "AriRuntimeSendRaw");
  this[5] = dlsym(this[11], "AriRuntimeRegisterIndication");
  this[6] = dlsym(this[11], "AriRuntimeRegisterAllIndications");
  this[7] = dlsym(this[11], "AriRuntimePushAllIndications");
  this[8] = dlsym(this[11], "AriRuntimeDeregisterIndication");
  this[9] = dlsym(this[11], "AriRuntimeNotifyAck");
  this[10] = dlsym(this[11], "AriRuntimeReportError");
  return this;
}

void sub_296114CB8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1D2B5B8;
  v3 = v1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriClientGcd::~AriClientGcd(Ari::AriClientGcd *this)
{
  *this = &unk_2A1D2B630;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  dlclose(*(this + 11));
  *(this + 11) = 0;
  *this = &unk_2A1D2B5B8;
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }
}

{
  Ari::AriClientGcd::~AriClientGcd(this);

  JUMPOUT(0x29C257E70);
}

uint64_t Ari::AriClientGcd::registerClient(Ari::AriClientGcd *this, const char *a2, unsigned int *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    return v3(a2, a3, *(this + 1));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::deregisterClient(Ari::AriClientGcd *this, uint64_t a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::sendRaw(Ari::AriClientGcd *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 4);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::regIndication(Ari::AriClientGcd *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 5);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::regAllIndications(Ari::AriClientGcd *this, uint64_t a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::pushAllIndications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::deregIndication(Ari::AriClientGcd *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 8);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::sendNotifyAck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t Ari::AriClientGcd::clientReportFatalErr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v7 = v4(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_296114F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Ari::AriClientXpc *Ari::AriClientXpc::AriClientXpc(Ari::AriClientXpc *this)
{
  v2 = Ari::AriClient::AriClient(this);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *v2 = &unk_2A1D2B6A8;
  *(v2 + 4) = 0;
  mach_service = xpc_connection_create_mach_service("com.apple.commcenter.ari.rt.xpc", *(v2 + 1), 2uLL);
  *(this + 4) = mach_service;
  AriOsa::SWTrap((mach_service == 0), "connection == nullptr", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", 0xC7);
  return this;
}

void sub_296114FE8(_Unwind_Exception *exception_object)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *v1 = &unk_2A1D2B5B8;
  v4 = v1[1];
  if (v4)
  {
    dispatch_release(v4);
  }

  _Unwind_Resume(exception_object);
}

void Ari::AriClientXpc::~AriClientXpc(Ari::AriClientXpc *this)
{
  *this = &unk_2A1D2B6A8;
  v2 = *(this + 4);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(this + 4));
    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *this = &unk_2A1D2B5B8;
  v4 = *(this + 1);
  if (v4)
  {
    dispatch_release(v4);
  }
}

{
  Ari::AriClientXpc::~AriClientXpc(this);

  JUMPOUT(0x29C257E70);
}

void Ari::AriClientXpc::init(Ari::AriClientXpc *this)
{
  xpc_connection_set_target_queue(*(this + 4), *(this + 1));
  v2 = *(this + 3);
  if (!v2 || (v3 = *(this + 2), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v7 = *(this + 4);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN3Ari12AriClientXpc4initEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_5;
  v8[4] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  xpc_connection_set_event_handler(v7, v8);
  xpc_connection_resume(*(this + 4));
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_2961151DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN3Ari12AriClientXpc4initEv_block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 32))
      {
        v7 = MEMORY[0x29C2583E0](a2);
        if (v7 == MEMORY[0x29EDCAA00])
        {
          uint64 = xpc_dictionary_get_uint64(a2, "AriCmd");
          if (uint64 > 8194)
          {
            if (uint64 == 8195)
            {
              v29 = xpc_dictionary_get_uint64(a2, "AriEvent");
              v30 = xpc_dictionary_get_uint64(a2, "AriCid");
              v31 = xpc_dictionary_get_uint64(a2, "AriToken");
              AriHost::NotifyEventCallback(v29, v30, v31);
              goto LABEL_40;
            }

            if (uint64 == 8196)
            {
              v19 = xpc_dictionary_get_uint64(a2, "context_id");
              v20 = xpc_dictionary_get_uint64(a2, "AriGmid");
              int64 = xpc_dictionary_get_int64(a2, "AriResult");
              if (v19)
              {
                AriHost::CancelTrx(v19, v20, int64);
              }

              goto LABEL_40;
            }
          }

          else
          {
            if (uint64 == 8193)
            {
              *length = 0xAAAAAAAAAAAAAAAALL;
              data = xpc_dictionary_get_data(a2, "AriMsg", length);
              AriHost::ClientInboundRespCB(data, *length);
              goto LABEL_40;
            }

            if (uint64 == 8194)
            {
              *length = 0xAAAAAAAAAAAAAAAALL;
              v15 = xpc_dictionary_get_data(a2, "AriMsg", length);
              AriHost::ClientInboundIndCB(v15, *length);
              goto LABEL_40;
            }
          }

          if ((DefaultLogLevel & 8) != 0)
          {
            OsLog = AriOsa::GetOsLog(uint64);
            if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "init_block_invoke", __p);
              v38 = v45;
              v39 = __p[0];
              v40 = xpc_dictionary_get_uint64(a2, "AriCmd");
              *&length[4] = "ari";
              v41 = __p;
              *length = 136315906;
              if (v38 < 0)
              {
                v41 = v39;
              }

              v47 = 2080;
              v48 = v41;
              v49 = 1024;
              v50 = 262;
              v51 = 2048;
              v52 = v40;
              _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) unknown command 0x%llx", length, 0x26u);
              if (v45 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "init_block_invoke", length);
            v23 = SHIBYTE(v49);
            v24 = *length;
            v25 = xpc_dictionary_get_uint64(a2, "AriCmd");
            v27 = length;
            if (v23 < 0)
            {
              v27 = v24;
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) unknown command 0x%llx", v26, v27, 262, v25);
            goto LABEL_36;
          }
        }

        else
        {
          if (a2 == MEMORY[0x29EDCA9B8])
          {
            if ((DefaultLogLevel & 8) != 0)
            {
              v16 = AriOsa::GetOsLog(v7);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "init_block_invoke", __p);
                v37 = v45 >= 0 ? __p : __p[0];
                *length = 136315650;
                *&length[4] = "ari";
                v47 = 2080;
                v48 = v37;
                v49 = 1024;
                v50 = 268;
                _os_log_error_impl(&dword_296048000, v16, OS_LOG_TYPE_ERROR, "%s: (%s:%d) XPC connection interrupted", length, 0x1Cu);
                if (v45 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "init_block_invoke", length);
              if (v49 >= 0)
              {
                v18 = length;
              }

              else
              {
                v18 = *length;
              }

              AriOsa::LogToDefaultStringLogger(8, "(%s:%d) XPC connection interrupted", v17, v18, 268);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(*length);
              }
            }

            AriHost::HandleConnectionError(v7);
            goto LABEL_40;
          }

          if ((DefaultLogLevel & 8) != 0)
          {
            v8 = AriOsa::GetOsLog(v7);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "init_block_invoke", __p);
              v33 = v45;
              v34 = __p[0];
              asString(a2, v42);
              v35 = __p;
              if (v33 < 0)
              {
                v35 = v34;
              }

              if (v43 >= 0)
              {
                v36 = v42;
              }

              else
              {
                v36 = v42[0];
              }

              *length = 136315906;
              *&length[4] = "ari";
              v47 = 2080;
              v48 = v35;
              v49 = 1024;
              v50 = 273;
              v51 = 2080;
              v52 = v36;
              _os_log_error_impl(&dword_296048000, v8, OS_LOG_TYPE_ERROR, "%s: (%s:%d) %s", length, 0x26u);
              if (v43 < 0)
              {
                operator delete(v42[0]);
              }

              if (v45 < 0)
              {
                operator delete(__p[0]);
              }
            }

            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "init_block_invoke", length);
            v9 = SHIBYTE(v49);
            v10 = *length;
            asString(a2, __p);
            v12 = length;
            if (v9 < 0)
            {
              v12 = v10;
            }

            if (v45 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            AriOsa::LogToDefaultStringLogger(8, "(%s:%d) %s", v11, v12, 273, v13);
            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_36:
            if (SHIBYTE(v49) < 0)
            {
              operator delete(*length);
            }
          }
        }
      }

LABEL_40:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v32 = *MEMORY[0x29EDCA608];
}

void sub_2961157A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrIN3Ari12AriClientXpcEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrIN3Ari12AriClientXpcEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t Ari::AriClientXpc::registerClient(Ari::AriClientXpc *this, char *__s, unsigned int *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  if (__s && a3)
  {
    *a3 = 0;
    __p[3] = 0xAAAAAAAAAAAAAAAALL;
    __p[4] = 0xAAAAAAAAAAAAAAAALL;
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    AriDispatch::Semaphore::Create();
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "registerClient", v12);
      v10 = v13 >= 0 ? v12 : v12[0];
      *buf = 136316162;
      *&buf[4] = "ari";
      v17 = 2080;
      v18 = v10;
      v19 = 1024;
      v20 = 285;
      v21 = 2048;
      v22 = __s;
      v23 = 2048;
      v24 = a3;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) name(%p) or cid(%p) is NULL", buf, 0x30u);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "registerClient", buf);
    if (v19 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) name(%p) or cid(%p) is NULL", v6, v7, 285, __s, a3);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }

  _Block_object_dispose(v14, 8);
  v8 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_296116078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  std::__shared_weak_count::__release_weak(v34);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void ___ZN3Ari12AriClientXpc14registerClientEPKcPjj_block_invoke(void *a1, void *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!a1[5])
      {
LABEL_25:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_26;
      }

      v7 = MEMORY[0x29C2583E0](a2);
      if (v7 == MEMORY[0x29EDCAA00])
      {
        uint64 = xpc_dictionary_get_uint64(a2, "AriCmd");
        v16 = uint64;
        if (uint64 == 40976)
        {
          *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(a2, "AriCid");
        }

        else if ((DefaultLogLevel & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(uint64);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "registerClient_block_invoke", __p);
            v26 = v30 >= 0 ? __p : __p[0];
            *buf = 136315906;
            *&buf[4] = "ari";
            v32 = 2080;
            v33 = v26;
            v34 = 1024;
            v35 = 313;
            v36 = 1024;
            LODWORD(v37) = v16;
            _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Unexpected response message 0x%x", buf, 0x22u);
            if (v30 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "registerClient_block_invoke", buf);
          if (v34 >= 0)
          {
            v19 = buf;
          }

          else
          {
            v19 = *buf;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Unexpected response message 0x%x", v18, v19, 313, v16);
          goto LABEL_22;
        }
      }

      else if ((DefaultLogLevel & 8) != 0)
      {
        v8 = AriOsa::GetOsLog(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "registerClient_block_invoke", __p);
          v21 = v30;
          v22 = __p[0];
          v23 = a1[7];
          asString(a2, v27);
          v24 = __p;
          if (v21 < 0)
          {
            v24 = v22;
          }

          if (v28 >= 0)
          {
            v25 = v27;
          }

          else
          {
            v25 = v27[0];
          }

          *buf = 136316162;
          *&buf[4] = "ari";
          v32 = 2080;
          v33 = v24;
          v34 = 1024;
          v35 = 318;
          v36 = 2080;
          v37 = v23;
          v38 = 2080;
          v39 = v25;
          _os_log_error_impl(&dword_296048000, v8, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Registration failed for client %s: %s", buf, 0x30u);
          if (v28 < 0)
          {
            operator delete(v27[0]);
          }

          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "registerClient_block_invoke", buf);
        v9 = SHIBYTE(v34);
        v10 = *buf;
        v11 = a1[7];
        asString(a2, __p);
        v13 = buf;
        if (v9 < 0)
        {
          v13 = v10;
        }

        if (v30 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Registration failed for client %s: %s", v12, v13, 318, v11, v14);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_22:
        if (SHIBYTE(v34) < 0)
        {
          operator delete(*buf);
        }
      }

      dispatch_semaphore_signal(*(a1[8] + 40));
      goto LABEL_25;
    }
  }

LABEL_26:
  v20 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrIN3Ari12AriClientXpcEEE64c51_ZTSNSt3__110shared_ptrIN11AriDispatch9SemaphoreEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrIN3Ari12AriClientXpcEEE64c51_ZTSNSt3__110shared_ptrIN11AriDispatch9SemaphoreEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
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

uint64_t Ari::AriClientXpc::deregisterClient(xpc_connection_t *this, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "deregisterClient", __p);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v14 = 2080;
      v15 = v5;
      v16 = 1024;
      v17 = 349;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) deregister cid 0x%x", buf, 0x22u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "deregisterClient", buf);
    if (v16 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) deregister cid 0x%x", v6, v7, 349, a2);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "AriCmd", 0x1011uLL);
  xpc_dictionary_set_uint64(v8, "AriCid", a2);
  xpc_connection_send_message(this[4], v8);
  xpc_release(v8);
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296116794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpc::sendRaw(xpc_connection_t *this, AriMsg *a2, unsigned int a3, unsigned int a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v7 = a3;
  BufHeader = AriMsg::GetBufHeader(a2, a3);
  if (BufHeader)
  {
    v9 = BufHeader[2];
    v10 = v9 >> 17;
    if (v9 >> 25)
    {
      v11 = (v9 & 0x1FE0000) == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v12, "AriCmd", 0x1001uLL);
      xpc_dictionary_set_data(v12, "AriMsg", a2, v7);
      xpc_dictionary_set_uint64(v12, "context_id", v10);
      xpc_dictionary_set_uint64(v12, "AriMsgTO", a4);
      xpc_connection_send_message(this[4], v12);
      xpc_release(v12);
      result = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0x8000;
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(BufHeader);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "sendRaw", v19);
      v18 = v20 >= 0 ? v19 : v19[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v22 = 2080;
      v23 = v18;
      v24 = 1024;
      v25 = 365;
      v26 = 1024;
      v27 = v10;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid context id 0x%x", __p, 0x22u);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "sendRaw", __p);
    if (v24 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid context id 0x%x", v15, v16, 365, v10);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(*__p);
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_16:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2961169F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpc::regIndication(xpc_connection_t *this, unsigned int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "AriCmd", 0x1012uLL);
  xpc_dictionary_set_uint64(v6, "AriGmid", a2);
  xpc_dictionary_set_uint64(v6, "AriCid", a3);
  xpc_connection_send_message(this[4], v6);
  xpc_release(v6);
  return 0;
}

uint64_t Ari::AriClientXpc::pushAllIndications(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "AriCmd", 0x1017uLL);
  xpc_dictionary_set_uint64(v6, "AriCid", a2);
  v7 = xpc_array_create(0, 0);
  for (i = *(a3 + 8); i != a3; i = *(i + 8))
  {
    v9 = xpc_uint64_create(*(i + 16));
    xpc_array_append_value(v7, v9);
    xpc_release(v9);
  }

  xpc_dictionary_set_value(v6, "AriGmidList", v7);
  xpc_release(v7);
  xpc_connection_send_message(*(a1 + 32), v6);
  xpc_release(v6);
  return 0;
}

uint64_t Ari::AriClientXpc::regAllIndications(xpc_connection_t *this, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "AriCmd", 0x1016uLL);
  xpc_dictionary_set_uint64(v4, "AriCid", a2);
  xpc_connection_send_message(this[4], v4);
  xpc_release(v4);
  return 0;
}

uint64_t Ari::AriClientXpc::deregIndication(xpc_connection_t *this, unsigned int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "AriCmd", 0x1013uLL);
  xpc_dictionary_set_uint64(v6, "AriCid", a3);
  xpc_dictionary_set_uint64(v6, "AriGmid", a2);
  xpc_connection_send_message(this[4], v6);
  xpc_release(v6);
  return 0;
}

uint64_t Ari::AriClientXpc::sendNotifyAck(xpc_connection_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "sendNotifyAck", v17);
      v15 = asString(a4);
      v16 = v17[0];
      if (v18 >= 0)
      {
        v16 = v17;
      }

      *__p = 136316162;
      *&__p[4] = "ari";
      v20 = 2080;
      v21 = v16;
      v22 = 1024;
      v23 = 436;
      v24 = 1024;
      v25 = a2;
      v26 = 2080;
      v27 = v15;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Sending reply for cid 0x%x event %s", __p, 0x2Cu);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "sendNotifyAck", __p);
    v9 = asString(a4);
    v11 = *__p;
    if (v22 >= 0)
    {
      v11 = __p;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Sending reply for cid 0x%x event %s", v10, v11, 436, a2, v9);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*__p);
    }
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v12, "AriCmd", 0x1014uLL);
  xpc_dictionary_set_uint64(v12, "AriCid", a2);
  xpc_dictionary_set_uint64(v12, "AriEvent", a4);
  xpc_dictionary_set_uint64(v12, "AriToken", a3);
  xpc_connection_send_message(a1[4], v12);
  xpc_release(v12);
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296116EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::AriClientXpc::clientReportFatalErr(xpc_connection_t *a1, uint64_t a2, unsigned int a3, const char *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "clientReportFatalErr", __p);
      v9 = __p[0];
      if (v18 >= 0)
      {
        v9 = __p;
      }

      v10 = a4;
      if (a4[23] < 0)
      {
        v10 = *a4;
      }

      *buf = 136316162;
      *&buf[4] = "ari";
      v20 = 2080;
      v21 = v9;
      v22 = 1024;
      v23 = 451;
      v24 = 1024;
      v25 = a2;
      v26 = 2080;
      v27 = v10;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Reporting error for cid 0x%x: %s", buf, 0x2Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_client.cpp", "clientReportFatalErr", buf);
    if (v22 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    v13 = a4;
    if (a4[23] < 0)
    {
      v13 = *a4;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Reporting error for cid 0x%x: %s", v11, v12, 451, a2, v13);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v14, "AriCmd", 0x1015uLL);
  xpc_dictionary_set_uint64(v14, "AriCid", a2);
  xpc_dictionary_set_uint64(v14, "ErrorType", a3);
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  xpc_dictionary_set_string(v14, "ErrorReason", a4);
  xpc_connection_send_message(a1[4], v14);
  xpc_release(v14);
  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296117110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__shared_ptr_emplace<Ari::AriClientGcd>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D2B7F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<Ari::AriClientXpc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D2B848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK::ARI_CsiIceSecActivationRegisterReq_SDK(AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -58490880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -58490880, 0);
}

void AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK::ARI_CsiIceSecActivationRegisterReq_SDK(AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK::~ARI_CsiIceSecActivationRegisterReq_SDK(AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK *this)
{
  *this = &unk_2A1D2B898;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK::~ARI_CsiIceSecActivationRegisterReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK::pack(AriSdk::ARI_CsiIceSecActivationRegisterReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK::ARI_CsiIceSecActivationRegisterRespCb_SDK(AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -50102272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -50102272, 0);
}

void AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK::ARI_CsiIceSecActivationRegisterRespCb_SDK(AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK::~ARI_CsiIceSecActivationRegisterRespCb_SDK(AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK *this)
{
  *this = &unk_2A1D2B8D0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK::~ARI_CsiIceSecActivationRegisterRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK::pack(AriSdk::ARI_CsiIceSecActivationRegisterRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK::ARI_CsiIceSecActivationRegisterIndCb_SDK(AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -41713664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -41713664, 0);
}

void AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK::ARI_CsiIceSecActivationRegisterIndCb_SDK(AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK::~ARI_CsiIceSecActivationRegisterIndCb_SDK(AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK *this)
{
  *this = &unk_2A1D2B908;
  v2 = *(this + 43);
  *(this + 43) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 42);
  *(this + 42) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 41);
  *(this + 41) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40274DC3F3);
  }

  v5 = *(this + 40);
  *(this + 40) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4080B1215BLL);
  }

  v6 = *(this + 39);
  *(this + 39) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4080B1215BLL);
  }

  v7 = *(this + 38);
  *(this + 38) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 37);
  *(this + 37) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 36);
  *(this + 36) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 35);
  *(this + 35) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40B88D2812);
  }

  v11 = *(this + 34);
  *(this + 34) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 33);
  *(this + 33) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
  }

  v13 = *(this + 32);
  *(this + 32) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4077774924);
  }

  v14 = *(this + 31);
  *(this + 31) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C40B88D2812);
  }

  v15 = *(this + 30);
  *(this + 30) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4077774924);
  }

  v16 = *(this + 29);
  *(this + 29) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4077774924);
  }

  v17 = *(this + 28);
  *(this + 28) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 27);
  *(this + 27) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C403E1C8BA9);
  }

  v19 = *(this + 26);
  *(this + 26) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 25);
  *(this + 25) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4077774924);
  }

  v21 = *(this + 24);
  *(this + 24) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C408DD1DBA6);
  }

  v22 = *(this + 23);
  *(this + 23) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C408DD1DBA6);
  }

  v23 = *(this + 22);
  *(this + 22) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C408DD1DBA6);
  }

  v24 = *(this + 21);
  *(this + 21) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C408DD1DBA6);
  }

  v25 = *(this + 20);
  *(this + 20) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C408DD1DBA6);
  }

  v26 = *(this + 19);
  *(this + 19) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C408DD1DBA6);
  }

  v27 = *(this + 18);
  *(this + 18) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C408DD1DBA6);
  }

  v28 = *(this + 17);
  *(this + 17) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C408DD1DBA6);
  }

  v29 = *(this + 16);
  *(this + 16) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4080B1215BLL);
  }

  v30 = *(this + 15);
  *(this + 15) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4080B1215BLL);
  }

  v31 = *(this + 14);
  *(this + 14) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4077774924);
  }

  v32 = *(this + 13);
  *(this + 13) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4077774924);
  }

  v33 = *(this + 12);
  *(this + 12) = 0;
  if (v33)
  {
    MEMORY[0x29C257E70](v33, 0x1000C4080B1215BLL);
  }

  v34 = *(this + 11);
  *(this + 11) = 0;
  if (v34)
  {
    MEMORY[0x29C257E70](v34, 0x1000C40B88D2812);
  }

  v35 = *(this + 10);
  *(this + 10) = 0;
  if (v35)
  {
    MEMORY[0x29C257E70](v35, 0x1000C40EEF2B9B0);
  }

  v36 = *(this + 9);
  *(this + 9) = 0;
  if (v36)
  {
    MEMORY[0x29C257E70](v36, 0x1000C40EEF2B9B0);
  }

  v37 = *(this + 8);
  *(this + 8) = 0;
  if (v37)
  {
    MEMORY[0x29C257E70](v37, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK::~ARI_CsiIceSecActivationRegisterIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}