uint64_t AriSdk::ARI_IBISimExtendedAuthRspCb_SDK::pack(AriSdk::ARI_IBISimExtendedAuthRspCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 8, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 9, v10, 0x11uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 10, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 11, v12, 0x11uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 12, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 13, v14, 0x11uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 14, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 15, v16, 9uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 16, v17, 4uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 17, v18, 0xFuLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 18, v19, 4uLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 19, v20, 0x100uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBISimGenPinReq_SDK::ARI_IBISimGenPinReq_SDK(AriSdk::ARI_IBISimGenPinReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 813727744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 813727744, 0);
}

void AriSdk::ARI_IBISimGenPinReq_SDK::ARI_IBISimGenPinReq_SDK(AriSdk::ARI_IBISimGenPinReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGenPinReq_SDK::~ARI_IBISimGenPinReq_SDK(AriSdk::ARI_IBISimGenPinReq_SDK *this)
{
  *this = &unk_2A1D282E8;
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
    MEMORY[0x29C257E70](v3, 0x1000C403E1C8BA9);
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
    MEMORY[0x29C257E70](v5, 0x1000C40A86A77D5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBISimGenPinReq_SDK::~ARI_IBISimGenPinReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGenPinReq_SDK::pack(AriSdk::ARI_IBISimGenPinReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x14uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x14uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 0xCuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 9, v11, 0xCuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 10, v12, 0xCuLL, 0), !result))
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

void AriSdk::ARI_IBISimGenPinRspCb_SDK::ARI_IBISimGenPinRspCb_SDK(AriSdk::ARI_IBISimGenPinRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 822116352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 822116352, 0);
}

void AriSdk::ARI_IBISimGenPinRspCb_SDK::ARI_IBISimGenPinRspCb_SDK(AriSdk::ARI_IBISimGenPinRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGenPinRspCb_SDK::~ARI_IBISimGenPinRspCb_SDK(AriSdk::ARI_IBISimGenPinRspCb_SDK *this)
{
  *this = &unk_2A1D28320;
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
  AriSdk::ARI_IBISimGenPinRspCb_SDK::~ARI_IBISimGenPinRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGenPinRspCb_SDK::pack(AriSdk::ARI_IBISimGenPinRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 9, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 10, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 11, v11, 4uLL, 0), !result))
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

void AriSdk::ARI_IBINetBandStatusReq_SDK::ARI_IBINetBandStatusReq_SDK(AriSdk::ARI_IBINetBandStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545390592, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545390592, 0);
}

void AriSdk::ARI_IBINetBandStatusReq_SDK::ARI_IBINetBandStatusReq_SDK(AriSdk::ARI_IBINetBandStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetBandStatusReq_SDK::~ARI_IBINetBandStatusReq_SDK(AriSdk::ARI_IBINetBandStatusReq_SDK *this)
{
  *this = &unk_2A1D283B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetBandStatusReq_SDK::~ARI_IBINetBandStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetBandStatusReq_SDK::pack(AriSdk::ARI_IBINetBandStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetBandStatusRspCb_SDK::ARI_IBINetBandStatusRspCb_SDK(AriSdk::ARI_IBINetBandStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553779200, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553779200, 0);
}

void AriSdk::ARI_IBINetBandStatusRspCb_SDK::ARI_IBINetBandStatusRspCb_SDK(AriSdk::ARI_IBINetBandStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetBandStatusRspCb_SDK::~ARI_IBINetBandStatusRspCb_SDK(AriSdk::ARI_IBINetBandStatusRspCb_SDK *this)
{
  *this = &unk_2A1D283F0;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40104B78CFLL);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4057C224CCLL);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40FA0F61DDLL);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4057C224CCLL);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4057C224CCLL);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4057C224CCLL);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40451B5BE8);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4057C224CCLL);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4057C224CCLL);
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
  AriSdk::ARI_IBINetBandStatusRspCb_SDK::~ARI_IBINetBandStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetBandStatusRspCb_SDK::pack(AriSdk::ARI_IBINetBandStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x158uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x158uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x10uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x158uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x158uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x158uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x40uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0x158uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 0x100uLL, 0), !result))
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

void AriSdk::ARI_IBINetCbrsConfigReq_SDK::ARI_IBINetCbrsConfigReq_SDK(AriSdk::ARI_IBINetCbrsConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545619968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545619968, 0);
}

void AriSdk::ARI_IBINetCbrsConfigReq_SDK::ARI_IBINetCbrsConfigReq_SDK(AriSdk::ARI_IBINetCbrsConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCbrsConfigReq_SDK::~ARI_IBINetCbrsConfigReq_SDK(AriSdk::ARI_IBINetCbrsConfigReq_SDK *this)
{
  *this = &unk_2A1D28428;
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
  AriSdk::ARI_IBINetCbrsConfigReq_SDK::~ARI_IBINetCbrsConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCbrsConfigReq_SDK::pack(AriSdk::ARI_IBINetCbrsConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetCbrsConfigResp_SDK::ARI_IBINetCbrsConfigResp_SDK(AriSdk::ARI_IBINetCbrsConfigResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 554008576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 554008576, 0);
}

void AriSdk::ARI_IBINetCbrsConfigResp_SDK::ARI_IBINetCbrsConfigResp_SDK(AriSdk::ARI_IBINetCbrsConfigResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCbrsConfigResp_SDK::~ARI_IBINetCbrsConfigResp_SDK(AriSdk::ARI_IBINetCbrsConfigResp_SDK *this)
{
  *this = &unk_2A1D28460;
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
  AriSdk::ARI_IBINetCbrsConfigResp_SDK::~ARI_IBINetCbrsConfigResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCbrsConfigResp_SDK::pack(AriSdk::ARI_IBINetCbrsConfigResp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK::ARI_IBINetConfigureNetworkModeReq_SDK(AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545325056, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545325056, 0);
}

void AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK::ARI_IBINetConfigureNetworkModeReq_SDK(AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK::~ARI_IBINetConfigureNetworkModeReq_SDK(AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK *this)
{
  *this = &unk_2A1D28498;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C405EE0DD82);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40A86A77D5);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4027586B93);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40401DF834);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4079BB23A2);
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
    MEMORY[0x29C257E70](v8, 0x1000C4057C224CCLL);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C403E1C8BA9);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4000313F17);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40E91F0153);
  }

  v12 = *(this + 10);
  *(this + 10) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40451B5BE8);
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK::~ARI_IBINetConfigureNetworkModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK::pack(AriSdk::ARI_IBINetConfigureNetworkModeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x10uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x21CuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0xCuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x158uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0x234uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 0xACuLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 0x1CuLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 13, v16, 0x14uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 14, v17, 0x2B8uLL, 0), !result))
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

void AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK::ARI_IBINetConfigureNetworkModeRspCb_SDK(AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553713664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553713664, 0);
}

void AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK::ARI_IBINetConfigureNetworkModeRspCb_SDK(AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK::~ARI_IBINetConfigureNetworkModeRspCb_SDK(AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK *this)
{
  *this = &unk_2A1D284D0;
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
  AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK::~ARI_IBINetConfigureNetworkModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK::pack(AriSdk::ARI_IBINetConfigureNetworkModeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK::ARI_IBINetNetworkModeChangeIndCb_SDK(AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 562069504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 562069504, 0);
}

void AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK::ARI_IBINetNetworkModeChangeIndCb_SDK(AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK::~ARI_IBINetNetworkModeChangeIndCb_SDK(AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK *this)
{
  *this = &unk_2A1D28508;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C405EE0DD82);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40A86A77D5);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4027586B93);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40401DF834);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4079BB23A2);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4057C224CCLL);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4000313F17);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40E91F0153);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK::~ARI_IBINetNetworkModeChangeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK::pack(AriSdk::ARI_IBINetNetworkModeChangeIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x21CuLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x158uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x234uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0xACuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x1CuLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0x14uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 0x2B8uLL, 0), !result))
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

void AriSdk::ARI_IBINetRRCRejectInd_SDK::ARI_IBINetRRCRejectInd_SDK(AriSdk::ARI_IBINetRRCRejectInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 562233344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 562233344, 0);
}

void AriSdk::ARI_IBINetRRCRejectInd_SDK::ARI_IBINetRRCRejectInd_SDK(AriSdk::ARI_IBINetRRCRejectInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRRCRejectInd_SDK::~ARI_IBINetRRCRejectInd_SDK(AriSdk::ARI_IBINetRRCRejectInd_SDK *this)
{
  *this = &unk_2A1D28540;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRRCRejectInd_SDK::~ARI_IBINetRRCRejectInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRRCRejectInd_SDK::pack(AriSdk::ARI_IBINetRRCRejectInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK::ARI_IBINetRRCReleaseChangeReq_SDK(AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545554432, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545554432, 0);
}

void AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK::ARI_IBINetRRCReleaseChangeReq_SDK(AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK::~ARI_IBINetRRCReleaseChangeReq_SDK(AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK *this)
{
  *this = &unk_2A1D28578;
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
  AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK::~ARI_IBINetRRCReleaseChangeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK::pack(AriSdk::ARI_IBINetRRCReleaseChangeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK::ARI_IBINetRRCReleaseChangeRspCb_SDK(AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553943040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553943040, 0);
}

void AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK::ARI_IBINetRRCReleaseChangeRspCb_SDK(AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK::~ARI_IBINetRRCReleaseChangeRspCb_SDK(AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK *this)
{
  *this = &unk_2A1D285B0;
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
  AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK::~ARI_IBINetRRCReleaseChangeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK::pack(AriSdk::ARI_IBINetRRCReleaseChangeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK::ARI_IBINetRRCReleaseChangeInfoInd_SDK(AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 562200576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 562200576, 0);
}

void AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK::ARI_IBINetRRCReleaseChangeInfoInd_SDK(AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK::~ARI_IBINetRRCReleaseChangeInfoInd_SDK(AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK *this)
{
  *this = &unk_2A1D285E8;
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
  AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK::~ARI_IBINetRRCReleaseChangeInfoInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK::pack(AriSdk::ARI_IBINetRRCReleaseChangeInfoInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK::ARI_IBINetRatGetServiceExtendedInfoReq_SDK(AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545488896, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545488896, 0);
}

void AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK::ARI_IBINetRatGetServiceExtendedInfoReq_SDK(AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK::~ARI_IBINetRatGetServiceExtendedInfoReq_SDK(AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK *this)
{
  *this = &unk_2A1D28620;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK::~ARI_IBINetRatGetServiceExtendedInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK::pack(AriSdk::ARI_IBINetRatGetServiceExtendedInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK(AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553877504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553877504, 0);
}

void AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK(AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK::~ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK(AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK *this)
{
  *this = &unk_2A1D28658;
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
  AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK::~ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK::pack(AriSdk::ARI_IBINetRatGetServiceExtendedInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatModeStatusReq_SDK::ARI_IBINetRatModeStatusReq_SDK(AriSdk::ARI_IBINetRatModeStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545357824, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545357824, 0);
}

void AriSdk::ARI_IBINetRatModeStatusReq_SDK::ARI_IBINetRatModeStatusReq_SDK(AriSdk::ARI_IBINetRatModeStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatModeStatusReq_SDK::~ARI_IBINetRatModeStatusReq_SDK(AriSdk::ARI_IBINetRatModeStatusReq_SDK *this)
{
  *this = &unk_2A1D28690;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRatModeStatusReq_SDK::~ARI_IBINetRatModeStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatModeStatusReq_SDK::pack(AriSdk::ARI_IBINetRatModeStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatModeStatusRspCb_SDK::ARI_IBINetRatModeStatusRspCb_SDK(AriSdk::ARI_IBINetRatModeStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553746432, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553746432, 0);
}

void AriSdk::ARI_IBINetRatModeStatusRspCb_SDK::ARI_IBINetRatModeStatusRspCb_SDK(AriSdk::ARI_IBINetRatModeStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatModeStatusRspCb_SDK::~ARI_IBINetRatModeStatusRspCb_SDK(AriSdk::ARI_IBINetRatModeStatusRspCb_SDK *this)
{
  *this = &unk_2A1D286C8;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40451B5BE8);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
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
    MEMORY[0x29C257E70](v8, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBINetRatModeStatusRspCb_SDK::~ARI_IBINetRatModeStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatModeStatusRspCb_SDK::pack(AriSdk::ARI_IBINetRatModeStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0xCuLL, 0), !result))
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
          if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 8uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 7, v12, v13 - v12, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (result = AriMsg::pack(*(this + 6), 8, v14, 0x10uLL, 0), !result))
              {
                v15 = *(this + 19);
                if (!v15 || (v16 = *(this + 20), v15 == v16) || (result = AriMsg::pack(*(this + 6), 9, v15, v16 - v15, 0), !result))
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

void sub_2960DA888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<IBIRat,3ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xD)
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 3);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2960DAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<IBIRat,2ul>::operator=(std::vector<int> *this, __n128 *__c)
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

void sub_2960DAD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<IBIRat,4ul>::operator=(std::vector<int> *this, __n128 *__c)
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
      v23 = 4;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 4);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2960DAF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBINetRatModeStatusIndCb_SDK::ARI_IBINetRatModeStatusIndCb_SDK(AriSdk::ARI_IBINetRatModeStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 562102272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 562102272, 0);
}

void AriSdk::ARI_IBINetRatModeStatusIndCb_SDK::ARI_IBINetRatModeStatusIndCb_SDK(AriSdk::ARI_IBINetRatModeStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatModeStatusIndCb_SDK::~ARI_IBINetRatModeStatusIndCb_SDK(AriSdk::ARI_IBINetRatModeStatusIndCb_SDK *this)
{
  *this = &unk_2A1D28700;
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

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40451B5BE8);
  }

  v8 = *(this + 14);
  if (v8)
  {
    *(this + 15) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4000313F17);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBINetRatModeStatusIndCb_SDK::~ARI_IBINetRatModeStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatModeStatusIndCb_SDK::pack(AriSdk::ARI_IBINetRatModeStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
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
          if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 5, v11, v12 - v11, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 6, v13, 0x10uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 7, v14, v15 - v14, 0), !result))
              {
                v16 = *(this + 21);
                if (!v16 || (result = AriMsg::pack(*(this + 6), 8, v16, 4uLL, 0), !result))
                {
                  v17 = *(this + 22);
                  if (!v17 || (result = AriMsg::pack(*(this + 6), 9, v17, 4uLL, 0), !result))
                  {
                    v18 = *(this + 23);
                    if (!v18 || (result = AriMsg::pack(*(this + 6), 10, v18, 4uLL, 0), !result))
                    {
                      v19 = *(this + 24);
                      if (!v19 || (result = AriMsg::pack(*(this + 6), 11, v19, 4uLL, 0), !result))
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

void AriSdk::ARI_IBINetRatNRStatusReq_SDK::ARI_IBINetRatNRStatusReq_SDK(AriSdk::ARI_IBINetRatNRStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545521664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545521664, 0);
}

void AriSdk::ARI_IBINetRatNRStatusReq_SDK::ARI_IBINetRatNRStatusReq_SDK(AriSdk::ARI_IBINetRatNRStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatNRStatusReq_SDK::~ARI_IBINetRatNRStatusReq_SDK(AriSdk::ARI_IBINetRatNRStatusReq_SDK *this)
{
  *this = &unk_2A1D28738;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetRatNRStatusReq_SDK::~ARI_IBINetRatNRStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatNRStatusReq_SDK::pack(AriSdk::ARI_IBINetRatNRStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatNRStatusRspCb_SDK::ARI_IBINetRatNRStatusRspCb_SDK(AriSdk::ARI_IBINetRatNRStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553910272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553910272, 0);
}

void AriSdk::ARI_IBINetRatNRStatusRspCb_SDK::ARI_IBINetRatNRStatusRspCb_SDK(AriSdk::ARI_IBINetRatNRStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatNRStatusRspCb_SDK::~ARI_IBINetRatNRStatusRspCb_SDK(AriSdk::ARI_IBINetRatNRStatusRspCb_SDK *this)
{
  *this = &unk_2A1D28770;
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
  AriSdk::ARI_IBINetRatNRStatusRspCb_SDK::~ARI_IBINetRatNRStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatNRStatusRspCb_SDK::pack(AriSdk::ARI_IBINetRatNRStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK::ARI_IBINetRatServiceExtendedIndCb_SDK(AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 562167808, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 562167808, 0);
}

void AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK::ARI_IBINetRatServiceExtendedIndCb_SDK(AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK::~ARI_IBINetRatServiceExtendedIndCb_SDK(AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK *this)
{
  *this = &unk_2A1D287A8;
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
  AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK::~ARI_IBINetRatServiceExtendedIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK::pack(AriSdk::ARI_IBINetRatServiceExtendedIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetRatSwitchStatusReport_SDK::ARI_IBINetRatSwitchStatusReport_SDK(AriSdk::ARI_IBINetRatSwitchStatusReport_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545423360, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 545423360, 1);
}

void AriSdk::ARI_IBINetRatSwitchStatusReport_SDK::ARI_IBINetRatSwitchStatusReport_SDK(AriSdk::ARI_IBINetRatSwitchStatusReport_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetRatSwitchStatusReport_SDK::~ARI_IBINetRatSwitchStatusReport_SDK(AriSdk::ARI_IBINetRatSwitchStatusReport_SDK *this)
{
  *this = &unk_2A1D287E0;
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
  AriSdk::ARI_IBINetRatSwitchStatusReport_SDK::~ARI_IBINetRatSwitchStatusReport_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetRatSwitchStatusReport_SDK::pack(AriSdk::ARI_IBINetRatSwitchStatusReport_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetTransitInformationReq_SDK::ARI_IBINetTransitInformationReq_SDK(AriSdk::ARI_IBINetTransitInformationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545587200, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545587200, 0);
}

void AriSdk::ARI_IBINetTransitInformationReq_SDK::ARI_IBINetTransitInformationReq_SDK(AriSdk::ARI_IBINetTransitInformationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetTransitInformationReq_SDK::~ARI_IBINetTransitInformationReq_SDK(AriSdk::ARI_IBINetTransitInformationReq_SDK *this)
{
  *this = &unk_2A1D28818;
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
  AriSdk::ARI_IBINetTransitInformationReq_SDK::~ARI_IBINetTransitInformationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetTransitInformationReq_SDK::pack(AriSdk::ARI_IBINetTransitInformationReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetTransitInformationRspCb_SDK::ARI_IBINetTransitInformationRspCb_SDK(AriSdk::ARI_IBINetTransitInformationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553975808, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553975808, 0);
}

void AriSdk::ARI_IBINetTransitInformationRspCb_SDK::ARI_IBINetTransitInformationRspCb_SDK(AriSdk::ARI_IBINetTransitInformationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetTransitInformationRspCb_SDK::~ARI_IBINetTransitInformationRspCb_SDK(AriSdk::ARI_IBINetTransitInformationRspCb_SDK *this)
{
  *this = &unk_2A1D28850;
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
  AriSdk::ARI_IBINetTransitInformationRspCb_SDK::~ARI_IBINetTransitInformationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetTransitInformationRspCb_SDK::pack(AriSdk::ARI_IBINetTransitInformationRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK::ARI_IBINetVoimsCallRatSwitchReq_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 545456128, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 545456128, 0);
}

void AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK::ARI_IBINetVoimsCallRatSwitchReq_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK::~ARI_IBINetVoimsCallRatSwitchReq_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK *this)
{
  *this = &unk_2A1D28888;
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
  AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK::~ARI_IBINetVoimsCallRatSwitchReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK::pack(AriSdk::ARI_IBINetVoimsCallRatSwitchReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK::ARI_IBINetVoimsCallRatSwitchRspCb_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 553844736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 553844736, 0);
}

void AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK::ARI_IBINetVoimsCallRatSwitchRspCb_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK::~ARI_IBINetVoimsCallRatSwitchRspCb_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK *this)
{
  *this = &unk_2A1D288C0;
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
  AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK::~ARI_IBINetVoimsCallRatSwitchRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK::pack(AriSdk::ARI_IBINetVoimsCallRatSwitchRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK::ARI_IBINetVoimsCallRatSwitchIndCb_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 562135040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 562135040, 0);
}

void AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK::ARI_IBINetVoimsCallRatSwitchIndCb_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK::~ARI_IBINetVoimsCallRatSwitchIndCb_SDK(AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK *this)
{
  *this = &unk_2A1D288F8;
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
  AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK::~ARI_IBINetVoimsCallRatSwitchIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK::pack(AriSdk::ARI_IBINetVoimsCallRatSwitchIndCb_SDK *this, AriMsg **a2)
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

void std::vector<IBIRat>::__init_with_size[abi:ne200100]<IBIRat*,IBIRat*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960DDEAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SdkGmidListSensitiveLogging(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = dword_2A1899160;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, qword_2A1899148);
  for (i = qword_2A1899150; i; i = *i)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, *(i + 16));
  }
}

uint64_t SdkMsgIsFilerInitiator(AriMsg *a1, unsigned int a2, unsigned int *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  BufGmid = AriMsg::GetBufGmid(a1, a2);
  v5 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(qword_2A1899048, &BufGmid);
  if (v5)
  {
    if (BufGmid > -116916225)
    {
      if (BufGmid > -116850689)
      {
        if (BufGmid == -116850688)
        {
          *&v26 = 0xAAAAAAAAAAAAAAAALL;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v24[32] = v13;
          v25 = v13;
          *v24 = v13;
          *&v24[16] = v13;
          AriSdk::MsgBase::MsgBase(v24, a1, a2);
        }

        if (BufGmid == -116555776)
        {
          *&v9 = 0xAAAAAAAAAAAAAAAALL;
          *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v25 = v9;
          v26 = v9;
          *&v24[16] = v9;
          *&v24[32] = v9;
          *v24 = v9;
          AriSdk::MsgBase::MsgBase(v24, a1, a2);
        }
      }

      else
      {
        if (BufGmid == -116916224)
        {
          *&v26 = 0xAAAAAAAAAAAAAAAALL;
          *&v11 = 0xAAAAAAAAAAAAAAAALL;
          *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v24[32] = v11;
          v25 = v11;
          *v24 = v11;
          *&v24[16] = v11;
          AriSdk::MsgBase::MsgBase(v24, a1, a2);
        }

        if (BufGmid == -116883456)
        {
          *&v26 = 0xAAAAAAAAAAAAAAAALL;
          *&v7 = 0xAAAAAAAAAAAAAAAALL;
          *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v24[32] = v7;
          v25 = v7;
          *v24 = v7;
          *&v24[16] = v7;
          AriSdk::MsgBase::MsgBase(v24, a1, a2);
        }
      }
    }

    else if (BufGmid > -1996423169)
    {
      if (BufGmid == -1996423168)
      {
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v24[32] = v12;
        v25 = v12;
        *v24 = v12;
        *&v24[16] = v12;
        AriSdk::MsgBase::MsgBase(v24, a1, a2);
      }

      if (BufGmid == -117145600)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v25 = v8;
        v26 = v8;
        *&v24[16] = v8;
        *&v24[32] = v8;
        *v24 = v8;
        AriSdk::MsgBase::MsgBase(v24, a1, a2);
      }
    }

    else
    {
      if (BufGmid == -2063532032)
      {
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v25 = v10;
        v26 = v10;
        *&v24[16] = v10;
        *&v24[32] = v10;
        *v24 = v10;
        AriSdk::MsgBase::MsgBase(v24, a1, a2);
      }

      if (BufGmid == -1996455936)
      {
        *&v6 = 0xAAAAAAAAAAAAAAAALL;
        *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v26 = v6;
        v27 = v6;
        *&v24[32] = v6;
        v25 = v6;
        *v24 = v6;
        *&v24[16] = v6;
        AriSdk::MsgBase::MsgBase(v24, a1, a2);
      }
    }

    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v5);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/sdk/ari_host_sdk_prop.cpp", "SdkMsgIsFilerInitiator", buf);
        v21 = Ari::MsgNameById(BufGmid);
        v22 = *buf;
        if (v29 >= 0)
        {
          v22 = buf;
        }

        *v24 = 136315906;
        *&v24[4] = "ari";
        *&v24[12] = 2080;
        *&v24[14] = v22;
        *&v24[22] = 1024;
        *&v24[24] = 325;
        *&v24[28] = 2080;
        *&v24[30] = v21;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Received filer initiator %s, but it is not handled", v24, 0x26u);
        if (v29 < 0)
        {
          operator delete(*buf);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/sdk/ari_host_sdk_prop.cpp", "SdkMsgIsFilerInitiator", v24);
      v15 = Ari::MsgDefById((BufGmid >> 26), (BufGmid >> 15) & 0x3FF);
      v17 = "Unknown";
      if (v15 && *(v15 + 48))
      {
        v17 = *(v15 + 48);
      }

      v18 = *v24;
      if (v24[23] >= 0)
      {
        v18 = v24;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Received filer initiator %s, but it is not handled", v16, v18, 325, v17);
      if ((v24[23] & 0x80000000) != 0)
      {
        operator delete(*v24);
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

void AriSdk::TlvArray<CsiIceIpcLogBufferList,5ul>::assign<std::__wrap_iter<CsiIceIpcLogBufferList*>>(AriOsa *__src, AriOsa *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - __src) >> 3);
  if (v3 >= 6)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(__src);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "assign", v20);
        v19 = v21 >= 0 ? v20 : v20[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v23 = 2080;
        v24 = v19;
        v25 = 1024;
        v26 = 385;
        v27 = 2048;
        v28 = &_MergedGlobals;
        v29 = 2048;
        v30 = v3;
        v31 = 2048;
        v32 = 5;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "assign", __p);
      if (v25 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v11, v12, 385, &_MergedGlobals, v3, 5);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v5 = qword_2A1899038;
    v6 = _MergedGlobals;
    if (qword_2A1899038 - _MergedGlobals < v2)
    {
      if (_MergedGlobals)
      {
        qword_2A1899030 = _MergedGlobals;
        operator delete(_MergedGlobals);
        v5 = 0;
        _MergedGlobals = 0;
        qword_2A1899030 = 0;
        qword_2A1899038 = 0;
      }

      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= v3)
      {
        v8 = v3;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<CsiIceIpcLogBufferList>::__vallocate[abi:ne200100](&_MergedGlobals, v9);
    }

    v13 = qword_2A1899030;
    v14 = qword_2A1899030 - _MergedGlobals;
    if (qword_2A1899030 - _MergedGlobals >= v2)
    {
      if (a2 != __src)
      {
        memmove(_MergedGlobals, __src, v2);
      }

      v17 = v6 + v2;
    }

    else
    {
      v15 = (__src + v14);
      if (qword_2A1899030 != _MergedGlobals)
      {
        memmove(_MergedGlobals, __src, v14);
        v13 = qword_2A1899030;
      }

      v16 = a2 - v15;
      if (v16)
      {
        memmove(v13, v15, v16);
      }

      v17 = v13 + v16;
    }

    qword_2A1899030 = v17;
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2960DF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SdkMsgIsFilerReadStream(unsigned __int8 *a1, unsigned int a2, unsigned int *a3)
{
  *a3 = 0;
  if (AriMsg::GetBufGmid(a1, a2) == -117309440)
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[3] = v5;
    v7[4] = v5;
    v7[1] = v5;
    v7[2] = v5;
    v7[0] = v5;
    AriSdk::MsgBase::MsgBase(v7, a1, a2);
  }

  return 0;
}

uint64_t std::unordered_set<unsigned int>::unordered_set(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, *a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
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

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::vector<CsiIceIpcLogBufferList>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CsiIceIpcLogBufferList>>(a1, a2);
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CsiIceIpcLogBufferList>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t _GLOBAL__sub_I_ari_host_sdk_prop_cpp()
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = xmmword_29623D5D0;
  v3 = unk_29623D5E0;
  v4 = xmmword_29623D5F0;
  LODWORD(v5) = -124878848;
  std::unordered_set<unsigned int>::unordered_set(ARIHOST_GMID_DISALLOWED_DURING_STALL, &v2, 13);
  __cxa_atexit(std::unordered_set<unsigned int>::~unordered_set[abi:ne200100], ARIHOST_GMID_DISALLOWED_DURING_STALL, &dword_296048000);
  v2 = xmmword_29623D604;
  v3 = unk_29623D614;
  v4 = xmmword_29623D624;
  v5 = unk_29623D634;
  v6 = -242745344;
  std::unordered_set<unsigned int>::unordered_set(ARI_GMID_APPROVED_FOR_PUBLIC_LOGGING, &v2, 17);
  __cxa_atexit(std::unordered_set<unsigned int>::~unordered_set[abi:ne200100], ARI_GMID_APPROVED_FOR_PUBLIC_LOGGING, &dword_296048000);
  v2 = xmmword_29623D648;
  LODWORD(v3) = 1149632512;
  std::unordered_set<unsigned int>::unordered_set(&ARI_GMID_SENSITIVE_LOGGING, &v2, 5);
  __cxa_atexit(std::unordered_set<unsigned int>::~unordered_set[abi:ne200100], &ARI_GMID_SENSITIVE_LOGGING, &dword_296048000);
  v2 = xmmword_29623D65C;
  v3 = unk_29623D66C;
  std::unordered_set<unsigned int>::unordered_set(&unk_2A1899048, &v2, 8);
  __cxa_atexit(std::unordered_set<unsigned int>::~unordered_set[abi:ne200100], &unk_2A1899048, &dword_296048000);
  LODWORD(v2) = -117276672;
  std::unordered_set<unsigned int>::unordered_set(ARI_FILER_WRITE_TERMINATOR_RESPONSES, &v2, 1);
  __cxa_atexit(std::unordered_set<unsigned int>::~unordered_set[abi:ne200100], ARI_FILER_WRITE_TERMINATOR_RESPONSES, &dword_296048000);
  qword_2A1899030 = 0;
  qword_2A1899038 = 0;
  _MergedGlobals = 0;
  result = __cxa_atexit($_0::~$_0, &_MergedGlobals, &dword_296048000);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void AriSdk::ARI_IBIPriWriteStatusIndCb_SDK::ARI_IBIPriWriteStatusIndCb_SDK(AriSdk::ARI_IBIPriWriteStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2055176192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2055176192, 0);
}

void AriSdk::ARI_IBIPriWriteStatusIndCb_SDK::ARI_IBIPriWriteStatusIndCb_SDK(AriSdk::ARI_IBIPriWriteStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriWriteStatusIndCb_SDK::~ARI_IBIPriWriteStatusIndCb_SDK(AriSdk::ARI_IBIPriWriteStatusIndCb_SDK *this)
{
  *this = &unk_2A1D28B88;
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
  AriSdk::ARI_IBIPriWriteStatusIndCb_SDK::~ARI_IBIPriWriteStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriWriteStatusIndCb_SDK::pack(AriSdk::ARI_IBIPriWriteStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK::ARI_IBIPriWriteStatusIndCb_V2_SDK(AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2055110656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2055110656, 0);
}

void AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK::ARI_IBIPriWriteStatusIndCb_V2_SDK(AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK::~ARI_IBIPriWriteStatusIndCb_V2_SDK(AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK *this)
{
  *this = &unk_2A1D28BC0;
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
  AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK::~ARI_IBIPriWriteStatusIndCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK::pack(AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK::unpack(AriSdk::ARI_IBIPriWriteStatusIndCb_V2_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2960E0A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK::ARI_IBIPriRefreshStatusIndCb_SDK(AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2055143424, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2055143424, 0);
}

void AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK::ARI_IBIPriRefreshStatusIndCb_SDK(AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK::~ARI_IBIPriRefreshStatusIndCb_SDK(AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK *this)
{
  *this = &unk_2A1D28BF8;
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
  AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK::~ARI_IBIPriRefreshStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK::pack(AriSdk::ARI_IBIPriRefreshStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriRefreshReq_SDK::ARI_IBIPriRefreshReq_SDK(AriSdk::ARI_IBIPriRefreshReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2071887872, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2071887872, 0);
}

void AriSdk::ARI_IBIPriRefreshReq_SDK::ARI_IBIPriRefreshReq_SDK(AriSdk::ARI_IBIPriRefreshReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriRefreshReq_SDK::~ARI_IBIPriRefreshReq_SDK(AriSdk::ARI_IBIPriRefreshReq_SDK *this)
{
  *this = &unk_2A1D28C30;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPriRefreshReq_SDK::~ARI_IBIPriRefreshReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriRefreshReq_SDK::pack(AriSdk::ARI_IBIPriRefreshReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriRefreshRspCb_SDK::ARI_IBIPriRefreshRspCb_SDK(AriSdk::ARI_IBIPriRefreshRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2063499264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2063499264, 0);
}

void AriSdk::ARI_IBIPriRefreshRspCb_SDK::ARI_IBIPriRefreshRspCb_SDK(AriSdk::ARI_IBIPriRefreshRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriRefreshRspCb_SDK::~ARI_IBIPriRefreshRspCb_SDK(AriSdk::ARI_IBIPriRefreshRspCb_SDK *this)
{
  *this = &unk_2A1D28C68;
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
  AriSdk::ARI_IBIPriRefreshRspCb_SDK::~ARI_IBIPriRefreshRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriRefreshRspCb_SDK::pack(AriSdk::ARI_IBIPriRefreshRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriWriteReq_V2_SDK::ARI_IBIPriWriteReq_V2_SDK(AriSdk::ARI_IBIPriWriteReq_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2071920640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2071920640, 0);
}

void AriSdk::ARI_IBIPriWriteReq_V2_SDK::ARI_IBIPriWriteReq_V2_SDK(AriSdk::ARI_IBIPriWriteReq_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriWriteReq_V2_SDK::~ARI_IBIPriWriteReq_V2_SDK(AriSdk::ARI_IBIPriWriteReq_V2_SDK *this)
{
  *this = &unk_2A1D28CA0;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIPriWriteReq_V2_SDK::~ARI_IBIPriWriteReq_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriWriteReq_V2_SDK::pack(AriSdk::ARI_IBIPriWriteReq_V2_SDK *this, AriMsg **a2)
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
          v10 = *(this + 14);
          if (!v10 || (v11 = *(this + 15), v10 == v11) || (result = AriMsg::pack(*(this + 6), 6, v10, v11 - v10, 0), !result))
          {
            v12 = *(this + 17);
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

  return result;
}

void AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::ARI_IBIPriWriteRspCb_V2_SDK(AriSdk::ARI_IBIPriWriteRspCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2063532032, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2063532032, 0);
}

void AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::ARI_IBIPriWriteRspCb_V2_SDK(AriSdk::ARI_IBIPriWriteRspCb_V2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::~ARI_IBIPriWriteRspCb_V2_SDK(AriSdk::ARI_IBIPriWriteRspCb_V2_SDK *this)
{
  *this = &unk_2A1D28CD8;
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
  AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::~ARI_IBIPriWriteRspCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::pack(AriSdk::ARI_IBIPriWriteRspCb_V2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriWriteReq_V3_SDK::ARI_IBIPriWriteReq_V3_SDK(AriSdk::ARI_IBIPriWriteReq_V3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2071855104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2071855104, 0);
}

void AriSdk::ARI_IBIPriWriteReq_V3_SDK::ARI_IBIPriWriteReq_V3_SDK(AriSdk::ARI_IBIPriWriteReq_V3_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriWriteReq_V3_SDK::~ARI_IBIPriWriteReq_V3_SDK(AriSdk::ARI_IBIPriWriteReq_V3_SDK *this)
{
  *this = &unk_2A1D28D10;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
  AriSdk::ARI_IBIPriWriteReq_V3_SDK::~ARI_IBIPriWriteReq_V3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriWriteReq_V3_SDK::pack(AriSdk::ARI_IBIPriWriteReq_V3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
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
          if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 4uLL, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (result = AriMsg::pack(*(this + 6), 7, v13, 1uLL, 0), !result))
            {
              v14 = *(this + 18);
              if (!v14 || (result = AriMsg::pack(*(this + 6), 8, v14, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::ARI_IBIPriWriteRspCb_V3_SDK(AriSdk::ARI_IBIPriWriteRspCb_V3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2063466496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2063466496, 0);
}

void AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::ARI_IBIPriWriteRspCb_V3_SDK(AriSdk::ARI_IBIPriWriteRspCb_V3_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::~ARI_IBIPriWriteRspCb_V3_SDK(AriSdk::ARI_IBIPriWriteRspCb_V3_SDK *this)
{
  *this = &unk_2A1D28D48;
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
  AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::~ARI_IBIPriWriteRspCb_V3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::pack(AriSdk::ARI_IBIPriWriteRspCb_V3_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriRevertToCarrierReq_SDK::ARI_IBIPriRevertToCarrierReq_SDK(AriSdk::ARI_IBIPriRevertToCarrierReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2071822336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2071822336, 0);
}

void AriSdk::ARI_IBIPriRevertToCarrierReq_SDK::ARI_IBIPriRevertToCarrierReq_SDK(AriSdk::ARI_IBIPriRevertToCarrierReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriRevertToCarrierReq_SDK::~ARI_IBIPriRevertToCarrierReq_SDK(AriSdk::ARI_IBIPriRevertToCarrierReq_SDK *this)
{
  *this = &unk_2A1D28D80;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIPriRevertToCarrierReq_SDK::~ARI_IBIPriRevertToCarrierReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriRevertToCarrierReq_SDK::pack(AriSdk::ARI_IBIPriRevertToCarrierReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK::ARI_IBIPriRevertToCarrierRspCb_SDK(AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2063433728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2063433728, 0);
}

void AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK::ARI_IBIPriRevertToCarrierRspCb_SDK(AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK::~ARI_IBIPriRevertToCarrierRspCb_SDK(AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK *this)
{
  *this = &unk_2A1D28DB8;
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
  AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK::~ARI_IBIPriRevertToCarrierRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK::pack(AriSdk::ARI_IBIPriRevertToCarrierRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsCellTimeStampReq_SDK::ARI_IBIMsCellTimeStampReq_SDK(AriSdk::ARI_IBIMsCellTimeStampReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283620864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283620864, 0);
}

void AriSdk::ARI_IBIMsCellTimeStampReq_SDK::ARI_IBIMsCellTimeStampReq_SDK(AriSdk::ARI_IBIMsCellTimeStampReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCellTimeStampReq_SDK::~ARI_IBIMsCellTimeStampReq_SDK(AriSdk::ARI_IBIMsCellTimeStampReq_SDK *this)
{
  *this = &unk_2A1D28EF8;
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
  AriSdk::ARI_IBIMsCellTimeStampReq_SDK::~ARI_IBIMsCellTimeStampReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCellTimeStampReq_SDK::pack(AriSdk::ARI_IBIMsCellTimeStampReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK::ARI_IBIMsCellTimeStampReqAckCb_SDK(AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1292009472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1292009472, 0);
}

void AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK::ARI_IBIMsCellTimeStampReqAckCb_SDK(AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK::~ARI_IBIMsCellTimeStampReqAckCb_SDK(AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK *this)
{
  *this = &unk_2A1D28F30;
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
  AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK::~ARI_IBIMsCellTimeStampReqAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK::pack(AriSdk::ARI_IBIMsCellTimeStampReqAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK::ARI_IBIMsCellTimeStampIndCb_SDK(AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1301151744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1301151744, 0);
}

void AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK::ARI_IBIMsCellTimeStampIndCb_SDK(AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK::~ARI_IBIMsCellTimeStampIndCb_SDK(AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK *this)
{
  *this = &unk_2A1D28F68;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4055933E4BLL);
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
  AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK::~ARI_IBIMsCellTimeStampIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK::pack(AriSdk::ARI_IBIMsCellTimeStampIndCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK::ARI_IBIMsClsPositioningCapabilityReq_SDK(AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283719168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283719168, 0);
}

void AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK::ARI_IBIMsClsPositioningCapabilityReq_SDK(AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK::~ARI_IBIMsClsPositioningCapabilityReq_SDK(AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK *this)
{
  *this = &unk_2A1D28FA0;
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
  AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK::~ARI_IBIMsClsPositioningCapabilityReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK::pack(AriSdk::ARI_IBIMsClsPositioningCapabilityReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK::ARI_IBIMsClsPositioningCapabilityRspCb_SDK(AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1292107776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1292107776, 0);
}

void AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK::ARI_IBIMsClsPositioningCapabilityRspCb_SDK(AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK::~ARI_IBIMsClsPositioningCapabilityRspCb_SDK(AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK *this)
{
  *this = &unk_2A1D28FD8;
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
  AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK::~ARI_IBIMsClsPositioningCapabilityRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK::pack(AriSdk::ARI_IBIMsClsPositioningCapabilityRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK(AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300889600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300889600, 0);
}

void AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK(AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK::~ARI_IBIMsLpAssistanceDataErrorIndCb_SDK(AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK *this)
{
  *this = &unk_2A1D29010;
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
    MEMORY[0x29C257E70](v3, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK::~ARI_IBIMsLpAssistanceDataErrorIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK::pack(AriSdk::ARI_IBIMsLpAssistanceDataErrorIndCb_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK(AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1301086208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1301086208, 0);
}

void AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK(AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK::~ARI_IBIMsLpDiscardedPosSessionIndCb_SDK(AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK *this)
{
  *this = &unk_2A1D29048;
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
    MEMORY[0x29C257E70](v6, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK::~ARI_IBIMsLpDiscardedPosSessionIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK::pack(AriSdk::ARI_IBIMsLpDiscardedPosSessionIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300561920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300561920, 0);
}

void AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK::~ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK *this)
{
  *this = &unk_2A1D29080;
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
    MEMORY[0x29C257E70](v5, 0x1000C4006B66553);
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
  AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK::~ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssAcquisitionAssistanceIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x508uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300692992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300692992, 0);
}

void AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK::~ARI_IBIMsLpGanssAddUtcModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK *this)
{
  *this = &unk_2A1D290B8;
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
    MEMORY[0x29C257E70](v5, 0x1000C40832ED3FDLL);
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
  AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK::~ARI_IBIMsLpGanssAddUtcModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssAddUtcModelIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x10uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300791296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300791296, 0);
}

void AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK::~ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK *this)
{
  *this = &unk_2A1D290F0;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 12);
  *(this + 12) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 10);
  *(this + 10) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK::~ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssAdditionalIonosphericModelIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
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
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300660224, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300660224, 0);
}

void AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK::~ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK(AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK *this)
{
  *this = &unk_2A1D29128;
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
    MEMORY[0x29C257E70](v5, 0x1000C4050E77D38);
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
  AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK::~ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssAuxiliaryInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0xC1uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK(AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300594688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300594688, 0);
}

void AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK(AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK::~ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK(AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK *this)
{
  *this = &unk_2A1D29160;
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

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK::~ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssRealTimeIntegrityIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBILpGanssBadSatelliteInfo,64ul>::operator=(AriOsa *a1, __int128 *a2)
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
      v12 = (*(a2 + 1) - *a2) >> 1;
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
      v25 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 1, 64);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960E7834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK(AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300725760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300725760, 0);
}

void AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK(AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK::~ARI_IBIMsLpGanssReferenceLocationIndCb_SDK(AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK *this)
{
  *this = &unk_2A1D29198;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40BDFB0063);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4077774924);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK::~ARI_IBIMsLpGanssReferenceLocationIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssReferenceLocationIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
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
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 1uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK(AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300758528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300758528, 0);
}

void AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK(AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK::~ARI_IBIMsLpGanssReferenceTimeIndCb_SDK(AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK *this)
{
  *this = &unk_2A1D291D0;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4035F102B6);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v15, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK::~ARI_IBIMsLpGanssReferenceTimeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssReferenceTimeIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
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
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 0x2ECuLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK::ARI_IBIMsLpGanssTimeModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300627456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300627456, 0);
}

void AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK::ARI_IBIMsLpGanssTimeModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK::~ARI_IBIMsLpGanssTimeModelIndCb_SDK(AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK *this)
{
  *this = &unk_2A1D29208;
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

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK::~ARI_IBIMsLpGanssTimeModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGanssTimeModelIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBILpGanssTimeModelData,15ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 0x10)
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
      v25 = 15;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960E9B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK::ARI_IBIMsLpGlonassAlmanacIndCb_SDK(AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300824064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300824064, 0);
}

void AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK::ARI_IBIMsLpGlonassAlmanacIndCb_SDK(AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK::~ARI_IBIMsLpGlonassAlmanacIndCb_SDK(AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK *this)
{
  *this = &unk_2A1D29240;
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

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4005A209FELL);
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
  AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK::~ARI_IBIMsLpGlonassAlmanacIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGlonassAlmanacIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBILpGlonassAlmanacElement,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x801uLL)
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
      v25 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 5, 64);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960EA570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK(AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300856832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300856832, 0);
}

void AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK(AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK::~ARI_IBIMsLpGlonassNavigationModelIndCb_SDK(AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK *this)
{
  *this = &unk_2A1D29278;
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

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK::~ARI_IBIMsLpGlonassNavigationModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGlonassNavigationModelIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBILpGanssNavDataGlonass,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 3)) < 0x41)
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
      v12 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 3);
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
      v25 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 3), 64);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960EAF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK::ARI_IBIMsLpGnssAbortCnf_SDK(AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283588096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283588096, 0);
}

void AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK::ARI_IBIMsLpGnssAbortCnf_SDK(AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK::~ARI_IBIMsLpGnssAbortCnf_SDK(AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK *this)
{
  *this = &unk_2A1D292B0;
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
  AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK::~ARI_IBIMsLpGnssAbortCnf_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK::pack(AriSdk::ARI_IBIMsLpGnssAbortCnf_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK::ARI_IBIMsLpGnssAbortCnfAckCb_SDK(AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1291976704, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1291976704, 0);
}

void AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK::ARI_IBIMsLpGnssAbortCnfAckCb_SDK(AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK::~ARI_IBIMsLpGnssAbortCnfAckCb_SDK(AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK *this)
{
  *this = &unk_2A1D292E8;
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
  AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK::~ARI_IBIMsLpGnssAbortCnfAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK::pack(AriSdk::ARI_IBIMsLpGnssAbortCnfAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK::ARI_IBIMsLpGnssAbortReqCb_SDK(AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300955136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300955136, 0);
}

void AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK::ARI_IBIMsLpGnssAbortReqCb_SDK(AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK::~ARI_IBIMsLpGnssAbortReqCb_SDK(AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK *this)
{
  *this = &unk_2A1D29320;
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
  AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK::~ARI_IBIMsLpGnssAbortReqCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK::pack(AriSdk::ARI_IBIMsLpGnssAbortReqCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK::ARI_IBIMsLpGnssSuspendIndCb_SDK(AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300987904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300987904, 0);
}

void AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK::ARI_IBIMsLpGnssSuspendIndCb_SDK(AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK::~ARI_IBIMsLpGnssSuspendIndCb_SDK(AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK *this)
{
  *this = &unk_2A1D29358;
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
  AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK::~ARI_IBIMsLpGnssSuspendIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGnssSuspendIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK(AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300496384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300496384, 0);
}

void AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK(AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK::~ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK(AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK *this)
{
  *this = &unk_2A1D29390;
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4035F102B6);
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
  AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK::~ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsAcquisitionAssistanceIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x2ECuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 8, v13, 4uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBILpGpsAcquisitionElement,16ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2) < 0x11)
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 2), 16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960ECEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK::ARI_IBIMsLpGpsAlmanacIndCb_SDK(AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300463616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300463616, 0);
}

void AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK::ARI_IBIMsLpGpsAlmanacIndCb_SDK(AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK::~ARI_IBIMsLpGpsAlmanacIndCb_SDK(AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK *this)
{
  *this = &unk_2A1D293C8;
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
  AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK::~ARI_IBIMsLpGpsAlmanacIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsAlmanacIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
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
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBILpGpsAlmanacElement,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 0x41)
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
      v25 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 64);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960ED934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK(AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300332544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300332544, 0);
}

void AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK(AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK::~ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK(AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK *this)
{
  *this = &unk_2A1D29400;
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

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
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
  AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK::~ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsDgpsCorrectionsIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
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
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBILpDgpsElement,16ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 1) < 0x11)
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
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 1);
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 1), 16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960EE3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300398080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300398080, 0);
}

void AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK::~ARI_IBIMsLpGpsIonosphericModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK *this)
{
  *this = &unk_2A1D29438;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
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
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK::~ARI_IBIMsLpGpsIonosphericModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsIonosphericModelIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
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
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK::ARI_IBIMsLpGpsNavigationModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300365312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300365312, 0);
}

void AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK::ARI_IBIMsLpGpsNavigationModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK::~ARI_IBIMsLpGpsNavigationModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK *this)
{
  *this = &unk_2A1D29470;
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
  AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK::~ARI_IBIMsLpGpsNavigationModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK::unpack(AriSdk::ARI_IBIMsLpGpsNavigationModelIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK(AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300529152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300529152, 0);
}

void AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK(AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK::~ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK(AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK *this)
{
  *this = &unk_2A1D294A8;
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
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK::~ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsRealTimeIntegrityIndCb_SDK *this, AriMsg **a2)
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
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 1uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK(AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300299776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300299776, 0);
}

void AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK(AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK::~ARI_IBIMsLpGpsReferenceLocationIndCb_SDK(AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK *this)
{
  *this = &unk_2A1D294E0;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 19);
  *(this + 19) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 17);
  *(this + 17) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 15);
  *(this + 15) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 14);
  *(this + 14) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 13);
  *(this + 13) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40BDFB0063);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4077774924);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK::~ARI_IBIMsLpGpsReferenceLocationIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsReferenceLocationIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
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
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 1uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK(AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300267008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300267008, 0);
}

void AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK(AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK::~ARI_IBIMsLpGpsReferenceTimeIndCb_SDK(AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK *this)
{
  *this = &unk_2A1D29518;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 21);
  *(this + 21) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4035F102B6);
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
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 11);
  *(this + 11) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 10);
  *(this + 10) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK::~ARI_IBIMsLpGpsReferenceTimeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsReferenceTimeIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x2ECuLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (v14 = *(this + 17), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 1uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 4uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 4uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 13, v18, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBILpTowAssist,16ul>::operator=(AriOsa *a1, __int128 *a2)
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 4, 16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2960F17D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK::ARI_IBIMsLpGpsUtcModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300430848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300430848, 0);
}

void AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK::ARI_IBIMsLpGpsUtcModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK::~ARI_IBIMsLpGpsUtcModelIndCb_SDK(AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK *this)
{
  *this = &unk_2A1D29550;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK::~ARI_IBIMsLpGpsUtcModelIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK::pack(AriSdk::ARI_IBIMsLpGpsUtcModelIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
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
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283555328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283555328, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK::~ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK *this)
{
  *this = &unk_2A1D29588;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408AE239F3);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40A066A46ELL);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK::~ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRsp_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xCuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x26uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x72CuLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1291943936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1291943936, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK *this)
{
  *this = &unk_2A1D295C0;
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
  AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionAssistanceRequestRspAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283522560, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283522560, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK::~ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK *this)
{
  *this = &unk_2A1D295F8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C405950932ALL);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BE0CE13BLL);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C404D4A888DLL);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40490D5A1BLL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C403E1C8BA9);
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
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK::~ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRsp_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xCuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x48uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x7CuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0xD0uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x1CuLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1291911168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1291911168, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK *this)
{
  *this = &unk_2A1D29630;
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
  AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionLocationInfoRspAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283457024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283457024, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK *this)
{
  *this = &unk_2A1D29668;
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
    MEMORY[0x29C257E70](v4, 0x1000C4034AA302DLL);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40764655BELL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C403E1C8BA9);
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
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRsp_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xCuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x1C8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x67CuLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1291845632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1291845632, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK *this)
{
  *this = &unk_2A1D296A0;
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
  AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsRspAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283686400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283686400, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK *this)
{
  *this = &unk_2A1D296D8;
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
    MEMORY[0x29C257E70](v4, 0x1000C40E36397FFLL);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40764655BELL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C403E1C8BA9);
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
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRsp_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xCuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x1C8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x30uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1292075008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1292075008, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK *this)
{
  *this = &unk_2A1D29710;
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
  AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsAndEstimateRspAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1283489792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1283489792, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK *this)
{
  *this = &unk_2A1D29748;
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
    MEMORY[0x29C257E70](v4, 0x1000C40A0C2120FLL);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40764655BELL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C403E1C8BA9);
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
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRsp_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xCuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x1C8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0xC98uLL, 0), !result))
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

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1291878400, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1291878400, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK *this)
{
  *this = &unk_2A1D29780;
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
  AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK::~ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionMeasurementsShortRspAckCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK::ARI_IBIMsLpMeasurePositionReqCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1300234240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1300234240, 0);
}

void AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK::ARI_IBIMsLpMeasurePositionReqCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK::~ARI_IBIMsLpMeasurePositionReqCb_SDK(AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK *this)
{
  *this = &unk_2A1D297B8;
  v2 = *(this + 31);
  *(this + 31) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 30);
  *(this + 30) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 29);
  *(this + 29) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 27);
  *(this + 27) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 26);
  *(this + 26) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 25);
  *(this + 25) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 24);
  *(this + 24) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 23);
  *(this + 23) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 22);
  *(this + 22) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 21);
  *(this + 21) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 20);
  *(this + 20) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 19);
  *(this + 19) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 18);
  *(this + 18) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4077774924);
  }

  v16 = *(this + 17);
  *(this + 17) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4077774924);
  }

  v17 = *(this + 16);
  *(this + 16) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 15);
  *(this + 15) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 14);
  *(this + 14) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 13);
  *(this + 13) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 12);
  *(this + 12) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4077774924);
  }

  v22 = *(this + 11);
  *(this + 11) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C40BDFB0063);
  }

  v23 = *(this + 10);
  *(this + 10) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 9);
  *(this + 9) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C40BDFB0063);
  }

  v25 = *(this + 8);
  *(this + 8) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK::~ARI_IBIMsLpMeasurePositionReqCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK::pack(AriSdk::ARI_IBIMsLpMeasurePositionReqCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
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
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 1uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 1uLL, 0), !result))
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
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 15, v19, 2uLL, 0), !result))
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
                                      v23 = *(this + 26);
                                      if (!v23 || (result = AriMsg::pack(*(this + 6), 19, v23, 4uLL, 0), !result))
                                      {
                                        v24 = *(this + 27);
                                        if (!v24 || (result = AriMsg::pack(*(this + 6), 20, v24, 1uLL, 0), !result))
                                        {
                                          v25 = *(this + 28);
                                          if (!v25 || (result = AriMsg::pack(*(this + 6), 21, v25, 1uLL, 0), !result))
                                          {
                                            v26 = *(this + 29);
                                            if (!v26 || (result = AriMsg::pack(*(this + 6), 22, v26, 1uLL, 0), !result))
                                            {
                                              v27 = *(this + 30);
                                              if (!v27 || (result = AriMsg::pack(*(this + 6), 23, v27, 4uLL, 0), !result))
                                              {
                                                v28 = *(this + 31);
                                                if (!v28 || (result = AriMsg::pack(*(this + 6), 24, v28, 4uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK(AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1301184512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1301184512, 0);
}

void AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK(AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK::~ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK(AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK *this)
{
  *this = &unk_2A1D297F0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40E36397FFLL);
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
  AriSdk::ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK::~ARI_IBIMsLpPosIs801GpsLocationIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}