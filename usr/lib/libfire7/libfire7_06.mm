uint64_t BlueFin::GlMeSrdAsicConfig::GetParam(BlueFin::GlMeSrdAsicConfig *this, char *a2, char *a3, unsigned int *a4, const char **a5)
{
  __endptr = 0;
  *a3 = strtoul(this, &__endptr, 0);
  v8 = __endptr;
  *a4 = __endptr;
  if (v8 != this && strchr(a2, *v8))
  {
    return 1;
  }

  result = 0;
  *a4 = this;
  return result;
}

unint64_t BlueFin::GlDineCtrl::SetBlankingConfig(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = a8;
  v9 = a7;
  GlCustomLog(14, "GlDineCtrl::SetBlankingConfig(%d %d %u %u %u %d %d)\n", *a2, a3, a4, a5, a6, a7, a8);
  v16 = 0;
  v17 = (a1 + 29670);
  do
  {
    *(v17 - 11) = a2[v16];
    *(v17 - 9) = a3;
    *(v17 - 7) = a4;
    *(v17 - 5) = a5;
    *(v17 - 3) = a6;
    *(v17 - 1) = v9;
    *v17 = v8;
    v17 += 12;
    ++v16;
  }

  while (v16 != 7);

  return BlueFin::GlMeSrdCtrlSm::BlankingConfigUpdated((a1 + 75168));
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetGeofenceSupport(uint64_t this, int a2)
{
  *(this + 528) = a2;
  if (a2)
  {
    if ((*(this + 529) & 1) == 0)
    {
      DeviceFaultNotify("glmesrd_asic_config.cpp", 1880, "SetGeofenceSupport", "m_bIsGeofenceSupportedByChip");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 1880, "m_bIsGeofenceSupportedByChip");
    }
  }

  return this;
}

unint64_t BlueFin::GlMeSrdCtrlSm::BlankingConfigUpdated(BlueFin::GlMeSrdCtrlSm *this)
{
  v4 = 37;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlDineCtrl::GetRadioPerfMode(BlueFin::GlDineCtrl *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  *a2 = *(this + 7868);
  *a3 = *(this + 7869);
  *a4 = *(this + 7870);
  return *(this + 31485);
}

uint64_t BlueFin::GlDineCtrl::SetLTEFilter(BlueFin::GlDineCtrl *this, int a2, int a3)
{
  if (a3 == -10)
  {
    v6 = -1;
  }

  else
  {
    v6 = a3;
  }

  *(this + 29819) = a2;
  *(this + 7455) = v6;
  if ((*(*(this + 3661) + 256))(this + 29288))
  {
    v7 = v6 > 0;
    v8 = 13.735;
    if ((v7 & a2) != 0)
    {
      v8 = 6.992;
    }

    v9 = 34.544;
    if ((v7 & a2) != 0)
    {
      v9 = 17.58;
    }

    BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT = LODWORD(v8);
    BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT = LODWORD(v9);
  }

  BlueFin::GlMeSrdCtrlSm::LteFilterSettingsUpdated((this + 75168));
  if (a3 == -10)
  {
    return GlCustomLog(14, "Auto Detect (%s,%d)\n");
  }

  else
  {
    return GlCustomLog(14, "GlDineCtrl::SetLTEFilter is %s LteFilterSetting = %d\n");
  }
}

unint64_t BlueFin::GlMeSrdCtrlSm::LteFilterSettingsUpdated(BlueFin::GlMeSrdCtrlSm *this)
{
  v4 = 60;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetSwTrackAgc(uint64_t this, char a2)
{
  *(this + 30892) = 1;
  *(this + 30891) = a2;
  return this;
}

uint64_t BlueFin::GlDineCtrl::SetL5DeltaExtBias(BlueFin::GlDineCtrl *this, float a2)
{
  result = BlueFin::GlMeSrdAsicConfig::IsMinnowAsicType((this + 29288));
  if (result)
  {
    *(this + 7407) = a2;
    *(this + 29558) = 1;
    return GlCustomLog(14, "GlDineCtrl::SetL5DeltaExtBias(m) is %f \n", a2);
  }

  return result;
}

double BlueFin::GlDineCtrl::SetAdcCapture(uint64_t a1, uint64_t a2)
{
  *(a1 + 31492) = *a2;
  result = *(a2 + 4);
  *(a1 + 31496) = result;
  return result;
}

unint64_t BlueFin::GlMeSrdPacketManager::SendReliablePacket(unint64_t this, void (*a2)(void *, unsigned __int8), void *a3, char a4)
{
  if ((*(this + 13874) & 1) == 0)
  {
    v22 = "m_bMessageReliableStarted";
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 84, "SendReliablePacket", "m_bMessageReliableStarted");
    v23 = 84;
    goto LABEL_38;
  }

  v4 = this;
  *(this + 13874) = 0;
  v5 = *(this + 13864);
  v6 = *(this + 13848);
  if (v5 >= v6)
  {
    v7 = v5 - v6;
  }

  else
  {
    v7 = v5 - v6 + 7168;
  }

  if (!v7)
  {
    *(this + 13864) = v6;
    return this;
  }

  v11 = (*(**(this + 120) + 416))(*(this + 120));
  if (v7 < 3 || v7 > v11)
  {
    v22 = "uiSize <= m_rAsicConfigIfc.GetMaxEswTransBufSize() && uiSize >= ESW_RPC_HDR_SZ";
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 104, "SendReliablePacket", "uiSize <= m_rAsicConfigIfc.GetMaxEswTransBufSize() && uiSize >= ESW_RPC_HDR_SZ");
    v23 = 104;
LABEL_38:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", v23, v22);
  }

  v13 = *(v4 + 13888);
  if (v13)
  {
    *(v4 + 13888) = *(v13 + 88);
    *(v13 + 64) = a2;
    *(v13 + 72) = a3;
    *(v13 + 80) = a4;
    *(v13 + 56) = *(v4 + 13848);
    *(v13 + 54) = v7;
    *(v13 + 49) = 0;
    *(v13 + 88) = 0;
    v14 = *(v4 + 13880);
    if (v14)
    {
      v15 = 1;
      do
      {
        v16 = v14;
        ++v15;
        v14 = *(v14 + 88);
      }

      while (v14);
      v17 = (v16 + 88);
    }

    else
    {
      v17 = (v4 + 13880);
      v15 = 1;
    }

    *v17 = v13;
    if (*(v4 + 6594) < v15)
    {
      *(v4 + 6594) = v15;
    }

    v19 = *(v4 + 13864);
    *(v4 + 13848) = v19;
    v20 = *(v4 + 13856);
    if (v19 >= v20)
    {
      v21 = v19 - v20;
    }

    else
    {
      v21 = v19 - v20 + 7168;
    }

    if (v21 > *(v4 + 6590))
    {
      *(v4 + 6590) = v21;
    }

    LOBYTE(v24) = 11;
    HIBYTE(v24) = *v13;
    v18 = *(v4 + 32);
    this = *(v4 + 8);
    *(v4 + 32) = this;
    do
    {
      v25 = 0;
      if (BlueFin::patch_dispatch(this, v4, &v24, &v25))
      {
        this = v25;
      }

      else
      {
        this = (*(v4 + 32))(v4, &v24);
      }

      *(v4 + 32) = this;
    }

    while (this);
  }

  else
  {
    v24 = 7694;
    v18 = *(v4 + 32);
    this = *(v4 + 8);
    *(v4 + 32) = this;
    do
    {
      v25 = 0;
      if (BlueFin::patch_dispatch(this, v4, &v24, &v25))
      {
        this = v25;
      }

      else
      {
        this = (*(v4 + 32))(v4, &v24);
      }

      *(v4 + 32) = this;
    }

    while (this);
  }

  *(v4 + 32) = v18;
  return this;
}

uint64_t BlueFin::GlMeSrdPacketManager::AppendData(BlueFin::GlMeSrdPacketManager *this, unsigned __int8 *a2, int a3)
{
  if ((*(this + 13872) & 1) == 0)
  {
    v9 = "m_bPacketStarted";
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 576, "AppendData", "m_bPacketStarted");
    v10 = 576;
    goto LABEL_10;
  }

  v3 = a3;
  v6 = *(this + 3256) + a3;
  *(this + 3256) = v6;
  result = (*(**(this + 15) + 416))(*(this + 15));
  if (result < v6)
  {
    v9 = "m_usTxDataLen <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 581, "AppendData", "m_usTxDataLen <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v10 = 581;
    goto LABEL_10;
  }

  if (v3)
  {
    do
    {
      --v3;
      *(this + 6515) = BlueFin::GlUtlCrc::ucCrcTable[*(this + 6515) ^ *a2];
      v8 = *a2++;
      result = BlueFin::GlMeSrdPacketManager::EscapeAndAppend(this, v8);
    }

    while (v3);
  }

  if ((*(this + 813) - this - 4240) >= 0x8BE)
  {
    v9 = "(m_pucTxMsg-m_aucTxMessageBuf)<(sizeof(m_aucTxMessageBuf)-20)";
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 588, "AppendData", "(m_pucTxMsg-m_aucTxMessageBuf)<(sizeof(m_aucTxMessageBuf)-20)");
    v10 = 588;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", v10, v9);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdPacketManager::SendPacket(BlueFin::GlMeSrdPacketManager *this)
{
  if ((*(this + 13872) & 1) == 0)
  {
    v11 = "m_bPacketStarted";
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 596, "SendPacket", "m_bPacketStarted");
    v12 = 596;
    goto LABEL_18;
  }

  if (!*(this + 3256))
  {
    v11 = "m_usTxDataLen > 0";
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 598, "SendPacket", "m_usTxDataLen > 0");
    v12 = 598;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", v12, v11);
  }

  v2 = (this + 4240);
  BlueFin::GlMeSrdPacketManager::EscapeAndAppend(this, (*(this + 6515) >> 4) | (16 * *(this + 6515)));
  v3 = *(this + 813);
  *(this + 813) = v3 + 1;
  *v3 = -32;
  v4 = *(this + 813);
  *(this + 813) = v4 + 1;
  *v4 = 1;
  v5 = *(this + 813) - v2;
  v13 = &unk_2A1F0CE40;
  v14 = v5;
  v15 = this + 4240;
  if (*(this + 6516) == 1 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlMeHost2SrdData::SerializeImpl(&v13);
  }

  (*(**(this + 16) + 24))(*(this + 16), this + 4240, v5);
  ++*(this + 1635);
  *(this + 1632) += v5;
  if (v5 > *(this + 3294))
  {
    *(this + 3294) = v5;
  }

  v6 = *(this + 6514);
  if ((*(this + 6520) & 1) == 0)
  {
    v7 = this + 6596;
    v8 = 10;
    while (*v7)
    {
      v7 += 8;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    *v7 = *(BlueFin::GlUtils::m_pInstance + 1092);
    v7[4] = v6;
  }

LABEL_15:
  GlCustomLog(15, "PacketMgr::Packet Sent with SeqId %u\n", v6);
  *(this + 13872) = 0;
  v9 = *(this + 6514) + 1;
  *(this + 6514) = v9;
  *v2 = 224;
  *(this + 813) = this + 4242;
  *(this + 6515) = 0;
  result = BlueFin::GlMeSrdPacketManager::EscapeAndAppend(this, v9);
  *(this + 6515) = BlueFin::GlUtlCrc::ucCrcTable[*(this + 6515) ^ *(this + 6514)];
  *(this + 3256) = 0;
  return result;
}

void BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(BlueFin::GlMeSrdTransaction *this)
{
  if ((*(this + 18) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_transaction_builder.cpp", 202, "~GlMeSrdTransaction", "m_bComplete");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_builder.cpp", 202, "m_bComplete");
  }
}

uint64_t BlueFin::GlMeSrdPacketManager::ReliableAckReceived(uint64_t this, int a2)
{
  if (*(this + 13874) == 1)
  {
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 347, "ReliableAckReceived", "!m_bMessageReliableStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", 347, "!m_bMessageReliableStarted");
  }

  v2 = *(this + 13880);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 49);
      if (*(v2 + 49))
      {
        break;
      }

LABEL_7:
      v2 = *(v2 + 88);
      if (!v2)
      {
        return this;
      }
    }

    v4 = (v2 + 50);
    while (1)
    {
      v5 = *v4++;
      if (v5 == a2)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    return BlueFin::GlMeSrdPacketManager::ProcessAckedElement(this, v2);
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicinit::BypassLteFilter(uint64_t a1, BlueFin::GlMeSrdTransaction *a2, int a3, int a4)
{
  result = (*(**(a1 + 128) + 264))(*(a1 + 128));
  if (result)
  {
    BlueFin::GlMeSrdRfInit4777::GlMeSrdRfInit4777(v21, *(a1 + 128));
    v9 = *(a1 + 128);
    v10 = v9[546];
    v11 = v9[547];
    v12 = v9[548];
    v20 = 0;
    v14 = v10 != 3 && v10 != 5;
    if ((a3 & v14) != 0)
    {
      v15 = 3;
    }

    else
    {
      v15 = v10;
    }

    DrRegistersForModes = BlueFin::GlMeSrdRfInit4777::GetDrRegistersForModes(v21, v15, v11, v12, a4, &v20);
    v17 = (*(**(a2 + 3) + 48))(*(a2 + 3));
    v18 = (*(*v17 + 16))(v17);
    (*(*v18 + 56))(v18, a2, v20, 1, *(*(a1 + 128) + 2184), *(*(a1 + 128) + 2188), *(*(a1 + 128) + 2192), DrRegistersForModes);
    BlueFin::GlMeSrdTransaction::Complete(a2);
    GlCustomLog(15, "L1 PerfMode: %d", v15);
    if (v15 == 5 || v15 == 3)
    {
      return GlCustomLog(15, " LTE Band config: %d\n");
    }

    else
    {
      return GlCustomLog(15, "\n");
    }
  }

  return result;
}

uint64_t BlueFin::MinnowEswRpcTimEncImp::esw_tim_rpc_set_duty_cycling(BlueFin::MinnowEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2, char a3, unsigned int a4, char a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((a3 & 0xFu) - 11 <= 0xFFFFFFF5)
  {
    v14 = "((interval & 0x0F) > 0) && ((interval & 0x0F) <= MAX_DUTY_CYCLE_INTERVAL)";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 399, "esw_tim_rpc_set_duty_cycling", "((interval & 0x0F) > 0) && ((interval & 0x0F) <= MAX_DUTY_CYCLE_INTERVAL)");
    v15 = 399;
    goto LABEL_8;
  }

  v5 = a4;
  if (a4 >= 6)
  {
    v14 = "min_active_blocks <= MAX_DUTY_CYCLE_MIN_ACTIVE_BLOCKS";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 400, "esw_tim_rpc_set_duty_cycling", "min_active_blocks <= MAX_DUTY_CYCLE_MIN_ACTIVE_BLOCKS");
    v15 = 400;
    goto LABEL_8;
  }

  v8 = a2;
  v10 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v16, v17, 1800, v10);
  BlueFin::GlStream::PutU08(v16, a3);
  BlueFin::GlStream::PutU08(v16, v5);
  BlueFin::GlStream::PutU08(v16, a5);
  Offset = BlueFin::GlStream::GetOffset(v16);
  BlueFin::GlMeSrdTransaction::Add(v8, 3, 8u, v17, Offset);
  LODWORD(v8) = v8[16];
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    v14 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 410, "esw_tim_rpc_set_duty_cycling", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v15 = 410;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v15, v14);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcTimEncImp::esw_tim_rpc_time_capture_arm(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*a3 >= 4)
  {
    v10 = "capture->port <= CAPTURE_PORT_CNTIN";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1118, "esw_tim_rpc_time_capture_arm", "capture->port <= CAPTURE_PORT_CNTIN");
    v11 = 1118;
    goto LABEL_6;
  }

  v4 = a2;
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, *a3);
  BlueFin::GlStream::PutU08(v12, a3[4]);
  BlueFin::GlStream::PutU08(v12, a3[8]);
  BlueFin::GlStream::PutU08(v12, a3[12]);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(v4, 3, 0, v13, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1131, "esw_tim_rpc_time_capture_arm", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 1131;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t BlueFin::GlMeSrdRpcMiscAsicInit::gll_misc_rpc_echo_response(BlueFin::GlMeSrdRpcMiscAsicInit *this, int a2, unsigned __int8 *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = (*(**(*(this + 1) + 120) + 80))(*(*(this + 1) + 120));
  v7 = (*(*v6 + 40))(v6);
  BlueFin::GlStream::GlStream(v30, a3, a2, v7);
  if (BlueFin::GlStream::GetU32(v30) != -87053062)
  {
    goto LABEL_41;
  }

  U32 = BlueFin::GlStream::GetU32(v30);
  v9 = BlueFin::GlStream::GetU32(v30);
  v10 = BlueFin::GlStream::GetU32(v30);
  BlueFin::GlStream::GetU32(v30);
  BlueFin::GlStream::GetU32(v30);
  BlueFin::GlStream::GetU32(v30);
  BlueFin::GlStream::GetU32(v30);
  v11 = BlueFin::GlStream::GetU32(v30);
  v12 = BlueFin::GlStream::GetU32(v30);
  v13 = BlueFin::GlStream::GetU32(v30);
  v14 = BlueFin::GlStream::GetU32(v30);
  if (((*(**(*(this + 1) + 128) + 184))(*(*(this + 1) + 128)) & 0xF100FFFE) != 0x31000014)
  {
    if (((*(**(*(this + 1) + 128) + 184))(*(*(this + 1) + 128)) & 0xF100FFFE) != 0x30000012 && ((*(**(*(this + 1) + 128) + 184))(*(*(this + 1) + 128)) & 0xF100FFFE) != 0x30000014)
    {
      DeviceFaultNotify("glmesrd_asicinit.cpp", 4204, "gll_misc_rpc_echo_response", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 4204, "false");
    }

    if (v10 == -1 || v9 == -1 || (U32 + 1) < 2 || !v10)
    {
      GlCustomLog(12, "AsicId: Invalid Information(%08X %08X %08X) - Wafer Sort\n");
LABEL_35:
      if ((U32 - 1) <= 0xFFFFFFFD && v10 && v9 != -1 && v10 != -1)
      {
        v23 = *(*(this + 1) + 128);
        *(v23 + 2220) = 3;
        *(v23 + 2224) = U32;
        *(v23 + 2228) = v9;
        *(v23 + 2232) = v10;
      }

      goto LABEL_40;
    }

    v15 = 0;
    v16 = 0;
    v32 = 0;
    v17 = 16;
    while (1)
    {
      v18 = (U32 & 0x1FFFF | ((v10 & 1) << 17)) >> v15;
      if (v16 >= 3)
      {
        LOBYTE(v18) = v10 >> 1 >> (v15 - 18);
      }

      v19 = v18 & 0x3F;
      if (v19 <= 9)
      {
        break;
      }

      if (v19 <= 0x24)
      {
        v20 = v19 + 55;
        goto LABEL_20;
      }

      if (v19 == 37)
      {
        *(v31 + v17 - 1) = 67;
        v20 = 66;
        v21 = -2;
        goto LABEL_21;
      }

      if (v19 == 63)
      {
LABEL_33:
        GlCustomLog(14, "AsicId: Information(%08X %08X %08X) - Wafer Sort\n", U32, v9, v10);
        GlCustomLog(14, "AsicId: LotId=%s, WaferNum=%u, WaferX=%u, WaferY=%u\n");
        goto LABEL_35;
      }

LABEL_22:
      ++v16;
      v15 += 6;
      if (v16 == 8)
      {
        goto LABEL_33;
      }
    }

    v20 = v19 | 0x30;
LABEL_20:
    v21 = -1;
LABEL_21:
    v17 += v21;
    *(v31 + v17) = v20;
    goto LABEL_22;
  }

  if (v11 && v12 && v14 | v13)
  {
    GlCustomLog(14, "AsicId: Information(%08X %08X %08X %08X) - Final Sort\n", v11, v12, v13, v14);
    GlCustomLog(14, "AsicId: ECID hash: 0x%08X%08X\n");
  }

  else
  {
    GlCustomLog(14, "AsicId: Invalid Information(%08X %08X %08X %08X) - Final Sort\n");
  }

  if (v11 && v12 && v13 | v14)
  {
    v22 = *(*(this + 1) + 128);
    *(v22 + 2220) = 4;
    *(v22 + 2224) = v11;
    *(v22 + 2228) = v12;
    *(v22 + 2232) = v13;
    *(v22 + 2236) = v14;
  }

LABEL_40:
  v24 = BlueFin::GlStream::GetU32(v30);
  GlCustomLog(14, "CoreOtpData: 0x%08X\n", v24);
LABEL_41:
  v29 = 8;
  v25 = *(this + 1);
  v26 = *(v25 + 32);
  result = *(v25 + 8);
  *(v25 + 32) = result;
  do
  {
    v31[0] = 0;
    if (BlueFin::patch_dispatch(result, v25, &v29, v31))
    {
      result = v31[0];
    }

    else
    {
      result = (*(v25 + 32))(v25, &v29);
    }

    *(v25 + 32) = result;
  }

  while (result);
  *(v25 + 32) = v26;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdPacketManager::SendReliableElement(unsigned __int8 *a1, uint64_t a2)
{
  if (a1[13872] == 1)
  {
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 172, "SendReliableElement", "!m_bPacketStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", 172, "!m_bPacketStarted");
  }

  a1[13872] = 1;
  v9[0] = 1;
  v9[1] = *(a2 + 48);
  BlueFin::GlMeSrdPacketManager::AppendData(a1, v9, 2);
  v4 = *(a2 + 54);
  v5 = *(a2 + 56);
  v6 = a1 + 13844;
  if (&v5[v4] > a1 + 13844)
  {
    v7 = v6 - v5;
    BlueFin::GlMeSrdPacketManager::AppendData(a1, v5, (v6 - v5));
    LOWORD(v4) = v4 - v7;
    v5 = a1 + 6676;
  }

  BlueFin::GlMeSrdPacketManager::AppendData(a1, v5, v4);
  BlueFin::GlMeSrdPacketManager::SendPacket(a1);
  GlCustomLog(15, "PacketMgr::Reliable Packet Sent with SeqId %u(Reliable SeqId %u)\n", (a1[6514] - 1), *(a2 + 48));
  return (a1[6514] - 1);
}

uint64_t BlueFin::GlMeSrdPacketManager::ProcessAckedElement(void *a1, uint64_t a2)
{
  v4 = a1[1735];
  do
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v5(*(v4 + 9), v4[80]);
    }

    BlueFin::GlTimer::disarm(v4 + 1);
    result = BlueFin::GlMeSrdPacketManager::RemoveEventFromQueue(a1, 5, *v4);
    if (v4 == a2)
    {
      break;
    }

    v4 = *(v4 + 11);
  }

  while (v4);
  v7 = a1[1736];
  a1[1736] = a1[1735];
  a1[1735] = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = (*(a2 + 56) + *(a2 + 54));
  if (v8 == (a1 + 13844))
  {
    v8 = (a1 + 6676);
  }

  a1[1732] = v8;
  return result;
}

uint64_t BlueFin::GlMeSrdPacketManager::RemoveEventFromQueue(BlueFin::GlMeSrdPacketManager *this, int a2, int a3)
{
  v6 = 0;
  v21 = *MEMORY[0x29EDCA608];
  memset(var10, 0, sizeof(var10));
  v7 = 31;
  do
  {
    result = BlueFin::GlQueue::get(this + 40, &v18);
    v9 = var10 + 2 * v6;
    v10 = v18;
    *v9 = v18;
    v11 = v19;
    v9[1] = v19;
    if (!v10)
    {
      break;
    }

    if (v10 != a2 || v11 != a3)
    {
      ++v6;
    }

    --v7;
  }

  while (v7);
  if (v6)
  {
    v13 = v6;
    v14 = var10 + 1;
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v14 += 2;
      result = BlueFin::GlQueue::putFIFO((this + 40), v15, v16);
      --v13;
    }

    while (v13);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetAagcGain4777(BlueFin::GlMeSrdAsicConfig *this, BOOL *a2, BOOL *a3, unsigned int *a4, unsigned int *a5)
{
  *a2 = *(this + 1356);
  v5 = *(this + 1357);
  *a3 = v5;
  *a4 = *(this + 340);
  *a5 = *(this + 341);
  return (*a2 | v5) & 1;
}

uint64_t BlueFin::GlMeSrdRfInit4777::ProgramDrRegs(BlueFin::GlMeSrdRfInit4777 *this)
{
  *(this + 556) = 0;
  v1 = *(this + 554);
  if (v1 > 6)
  {
LABEL_20:
    v7 = "0";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 969, "ProgramDrRegs", "0");
    v8 = 969;
    goto LABEL_22;
  }

  if (((1 << v1) & 0x5C) == 0)
  {
    if (((1 << v1) & 0x22) != 0)
    {
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x10u, 3);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x300u, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x304u, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x318u, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x31Cu, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x30Cu, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x310u, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x324u, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x328u, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x330u, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x334u, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x33Cu, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x340u, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x360u, 11141136);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x364u, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x348u, 12582928);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0x34Cu, 327680);
      BlueFin::GlMeSrdRfInit4777::Add(this, 192, 0xFFCu, *(this + 570));
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v3 = *(this + 2);
  if (v3 > 8 || ((1 << v3) & 0x1C6) == 0)
  {
    v7 = "IsValidMinnowRFMode(m_eRFModeConfig)";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 814, "ProgramDrRegs", "IsValidMinnowRFMode(m_eRFModeConfig)");
    v8 = 814;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v8, v7);
  }

  if (v1 - 3 < 2)
  {
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 80, 233488);
    v5 = 81;
LABEL_13:
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, v5, 458752);
    goto LABEL_14;
  }

  if (v1 == 2)
  {
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 80, 163856);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 81, 458752);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 78, 434192);
    v5 = 79;
    goto LABEL_13;
  }

LABEL_14:
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 74, 201719824);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 75, 458752);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 76, 256352272);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 77, 458752);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 64, 1879064320);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 71, 268451584);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 66, -1068429275);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 68, -1065213936);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 69, 1074006017);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 70, -1062137819);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 73, -1068429275);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 20, -65281);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 128, 6316032);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 7, 23);
LABEL_15:
  if (*(this + 2240) == 1)
  {
    BlueFin::GlMeSrdRfInit4777::ProgramRegsForVDACCtrl(this);
  }

  return BlueFin::GlMeSrdRfInit4777::LockAgcs(this);
}

_BYTE *BlueFin::GlUtlB64::b64_decode_(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, __int16 a5, void *a6, _DWORD *a7)
{
  v7 = a2 >> 2;
  if ((a2 & 3) != 0)
  {
    ++v7;
  }

  v8 = 3 * v7;
  *a6 = 0;
  *a7 = 0;
  if (a3)
  {
    if (v8 > a4)
    {
      v8 = 0;
      *a7 = 1;
      return v8;
    }

    v9 = a3;
    if (!a2)
    {
      return (v9 - a3);
    }

    v10 = 0;
    v11 = 0;
    v9 = a3;
    while (1)
    {
      v12 = *a1;
      if (v12 == 61)
      {
        *(&v15 + v10) = 0;
        ++v11;
        goto LABEL_12;
      }

      v13 = BlueFin::GlUtlB64::b64_indexes[v12];
      if (v13 != 255)
      {
        v11 = 0;
        *(&v15 + v10) = v13;
LABEL_12:
        if (++v10 == 4)
        {
          *v9 = (4 * v15) | (v16 >> 4) & 3;
          if (v11 == 2)
          {
            return (++v9 - a3);
          }

          v9[1] = (16 * v16) | (v17 >> 2) & 0xF;
          if (v11 == 1)
          {
            v9 += 2;
            return (v9 - a3);
          }

          v9[2] = v18 + (v17 << 6);
          if (v11)
          {
            v9 += 3;
            return (v9 - a3);
          }

          v10 = 0;
          v9 += 3;
        }

        goto LABEL_23;
      }

      if (v12 <= 0x20)
      {
        if (((1 << v12) & 0x100000B00) != 0)
        {
          if ((a5 & 0x200) != 0)
          {
            goto LABEL_30;
          }

          goto LABEL_23;
        }

        if (((1 << v12) & 0x2400) != 0)
        {
          goto LABEL_23;
        }
      }

      if ((a5 & 0x100) != 0)
      {
LABEL_30:
        v8 = 0;
        *a7 = 3;
        *a6 = a1;
        return v8;
      }

LABEL_23:
      ++a1;
      if (!--a2)
      {
        return (v9 - a3);
      }
    }
  }

  return v8;
}

uint64_t BlueFin::GlSysLogEntry::GetU8(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) >= *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 134, "GetU8", "m_sReadIdx + sizeof(GlIntU8) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 134, "m_sReadIdx + sizeof(GlIntU8) <= m_sDataSize");
  }

  v2 = (*(*this + 24))(this);
  v3 = *(this + 10);
  *(this + 10) = v3 + 1;
  return *(v2 + v3);
}

double BlueFin::GlPeEphemeris::GetScaledFloatingField(BlueFin::GlPeEphemeris *this, uint64_t a2)
{
  v4 = (*(*this + 200))(this);
  v5 = *this;
  if (v4)
  {
    v6 = (*(v5 + 208))(this, a2);
  }

  else
  {
    v6 = (*(v5 + 192))(this, a2);
  }

  return v6 * (*(*this + 240))(this, a2);
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetIntegerScaleFactor(BlueFin::GlPeGpsEphemerisBase *this, unsigned int a2)
{
  if (a2 >= 0x20 || ((0xF80400BF >> a2) & 1) == 0)
  {
    GlCustomLog(11, "GlPeGpsEphemerisBase::GetIntegerScaleFactor: Illegal field index:%d\n", a2);
    DeviceFaultNotify("glpe_ephmgr.cpp", 3077, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3077, "0");
  }

  return dword_298A3BD58[a2];
}

uint64_t BlueFin::GlPeGpsEphemerisBase::isSignedField(BlueFin::GlPeGpsEphemerisBase *this, unsigned int a2)
{
  if (a2 >= 0x20 || ((0xDFFFFFFF >> a2) & 1) == 0)
  {
    GlCustomLog(11, "GlPeGpsEphemerisBase::isSignedField: Illegal field index:%d\n", a2);
    DeviceFaultNotify("glpe_ephmgr.cpp", 2936, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 2936, "0");
  }

  return (0x7F97F40u >> a2) & 1;
}

double BlueFin::GlPeGpsEphemerisBase::GetFloatingScaleFactor(BlueFin::GlPeGpsEphemerisBase *this, int a2)
{
  result = 1.0;
  if ((a2 - 6) <= 0x14)
  {
    return dbl_298A3BDD8[(a2 - 6)];
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetCmpSignedField(BlueFin::GlPeGpsEphemerisBase *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 6:
      HIDWORD(v3) = *v2;
      LODWORD(v3) = v2[1];
      return ((v3 >> 4) >> 24);
    case 8:
      return ((v2[1] << 20) >> 24);
    case 9:
      HIDWORD(v14) = v2[1];
      LODWORD(v14) = v2[2];
      v11 = v14 >> 4;
      goto LABEL_19;
    case 10:
      HIDWORD(v15) = v2[2];
      LODWORD(v15) = v2[3];
      return ((v15 >> 20) >> 10);
    case 11:
      v13 = v2[3];
      return (v13 >> 14);
    case 12:
      v10 = v2[3];
      v9 = v2[4];
      goto LABEL_17;
    case 13:
      return (__PAIR64__(v2[4], v2[5]) >> 30);
    case 14:
      v13 = v2[5];
      return (v13 >> 14);
    case 16:
      v10 = v2[6];
      v9 = v2[7];
LABEL_17:
      v11 = __PAIR64__(v10, v9) >> 14;
      goto LABEL_19;
    case 19:
      v6 = v2[8];
      v5 = v2[9];
      goto LABEL_9;
    case 20:
      v8 = v2[9];
      v7 = v2[10];
      goto LABEL_11;
    case 21:
      return (v2[10] >> 13);
    case 22:
      return (__PAIR64__(v2[10], v2[11]) >> 13);
    case 23:
      v6 = v2[11];
      v5 = v2[12];
LABEL_9:
      v11 = __PAIR64__(v6, v5) >> 13;
LABEL_19:
      result = (v11 >> 16);
      break;
    case 24:
      v8 = v2[12];
      v7 = v2[13];
LABEL_11:
      result = (__PAIR64__(v8, v7) >> 29);
      break;
    case 25:
      result = (v2[13] >> 5);
      break;
    case 26:
      HIDWORD(v12) = v2[13];
      LODWORD(v12) = v2[14];
      result = ((v12 >> 5) >> 18);
      break;
    default:
      GlCustomLog(11, "GlPeGpsEphemerisBase::GetCmpSignedField: Illegal field index:%d\n", a2);
      DeviceFaultNotify("glpe_ephmgr.cpp", 2970, "GetCmpSignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 2970, "0");
  }

  return result;
}

uint64_t BlueFin::GlPeEphemeris::TimeToExpirationS(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 64))(a1, a2, 1);
  v4 = (*(*a1 + 88))(a1);
  v5 = (v4 / 2) - v3;
  if (v5 <= 0.0)
  {
    if (v5 >= 0.0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = -0.5;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = (v5 + v6);
LABEL_7:
  if (v7 <= v4)
  {
    return v7 & ~(v7 >> 31);
  }

  else
  {
    return 0;
  }
}

double BlueFin::GlPeGpsEphemerisBase::ComputeAgeS(BlueFin::GlPeGpsEphemerisBase *this, const BlueFin::GlPeGnssTime *a2, int a3)
{
  v33 = &off_2A1F0B5F0;
  v34 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(a2, &v33);
  (v33[4])(&v33, Gps);
  v6 = (*(*this + 192))(this, 28);
  v7 = *this + 192;
  if (a3)
  {
    v8 = 18;
  }

  else
  {
    v8 = 7;
  }

  v9 = (*(*this + 192))(this, v8);
  v10 = (*(*this + 232))(this, v8);
  v12 = v11 * v9;
  *v10.i64 = v12;
  v30 = &off_2A1F0B5F0;
  *v13.i64 = v12 - trunc(v12);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = *vbslq_s8(vnegq_f64(v14), v13, v10).i64;
  if (v15 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v16 = v15 * 4294967300.0 + 0.5;
  v17 = v16;
  if (v16 >= 4294967300.0)
  {
    v17 = -1;
  }

  v31 = v17;
  v32 = v12 + 604800 * v6;
  v30 = &off_2A1F0B5F0;
  if ((*(*this + 80))(this))
  {
    v18 = (v30[4])(&v30);
    v36 = v31;
    v37 = v18;
    v19 = (v33[4])(&v33);
    v35[0] = v34;
    v35[1] = v19;
    BlueFin::GlTimePoint::resolveAmbiguity(&v36, v35, 0x24EA0000u);
    v20 = (v33[3])(&v33, v37);
    v21 = v36;
  }

  else
  {
    v22 = (v30[4])(&v30);
    LODWORD(v24) = v31;
    *v25.i64 = v24 * 2.32830644e-10;
    *v22.i64 = *v25.i64 + (v23 % 0x93A80);
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v33, v22, &v36, v25);
    v21 = v36;
    v20 = v37;
  }

  v26 = v34;
  v27 = HIDWORD(v34);
  v28 = v20 | v21;
  if (v20 | v21)
  {
    if (v34 < __PAIR64__(v20, v21))
    {
      v27 = (__PAIR64__(v20 - HIDWORD(v34), v21) - v34) >> 32;
      v26 = v21 - v34;
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v27 = (v34 - __PAIR64__(v20, v21)) >> 32;
      v26 = v34 - v21;
    }
  }

  result = v26 * 2.32830644e-10 + v27;
  if ((v28 & ((v27 | v26) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

void BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777x(BlueFin::GlMeSrdRfInit4777 *this, BlueFin::GlMeSrdTransaction *a2)
{
  *v7 = 0;
  BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777Band(this, a2, 1, &v7[1], v7);
  BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777Band(this, a2, 2, &v7[1], v7);
  BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777Band(this, a2, 3, &v7[1], v7);
  BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777Band(this, a2, 4, &v7[1], v7);
  BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777Band(this, a2, 5, &v7[1], v7);
  if (v7[1])
  {
    v5 = (*(**this + 1176))(*this);
    if (v5 == 3)
    {
      v6 = 40;
    }

    else
    {
      v6 = 36;
    }

    v4 = BlueFin::GlMeSrdRfInit4777::SendNotchRpc(v5, a2, v6);
  }

  if (v7[0])
  {

    BlueFin::GlMeSrdRfInit4777::SendNotchRpc(v4, a2, 56);
  }
}

void BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777Band(void *a1, BlueFin::GlMeSrdTransaction *a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v18[0] = 0;
  v17 = 0;
  v16 = 0;
  v9 = (*(**a1 + 1072))(*a1);
  BlueFin::GlMeSrdRfInit4777::GetNotchConfiguration(v9, v9, v18, &v17, &v16, a3);
  BlueFin::GlMeSrdRfInit4777::ProgramNotchMinnow(v11, v12, v13, v14, v10, a2, v18, &v17, v16, a3, a4, a5);
  v15 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdRfInit4777::GetNotchConfiguration(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6)
{
  v6 = 0;
  v7 = 0;
  do
  {
    if (*a2 == a6)
    {
      v8 = a2[1];
      if (v8 >= 0xF)
      {
        DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1491, "GetNotchConfiguration", "rstNotches[i].ucLoopCoefficient<15");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", 1491, "rstNotches[i].ucLoopCoefficient<15");
      }

      *(a3 + 4 * v7) = *(a2 + 1);
      *(a4 + v7++) = v8;
    }

    if (v6 > 0x16)
    {
      break;
    }

    ++v6;
    a2 += 8;
  }

  while (v7 < 2);
  *a5 = v7;
}

uint64_t BlueFin::GlMeSrdRfInit4777::SendNotchRpc(BlueFin::GlMeSrdRfInit4777 *this, BlueFin::GlMeSrdTransaction *a2, char a3)
{
  if ((a3 & 3) != 0)
  {
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1344, "SendNotchRpc", "(ulAddr & 0x3)==0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", 1344, "(ulAddr & 0x3)==0");
  }

  v3 = (*(**(a2 + 3) + 48))(*(a2 + 3));
  v4 = *(*(*(*v3 + 32))(v3) + 24);

  return v4();
}

uint64_t BlueFin::GlMeSrdRfInit4777::FrequencyToNco(BlueFin::GlMeSrdRfInit4777 *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v5 = 16554325.7;
  if (this)
  {
    v5 = 99325954.5;
  }

  v6 = fabs(*a2.i64);
  if (v6 >= v5 * 0.5)
  {
    v6 = v5 * 0.5;
  }

  if (*a2.i64 >= 0.0)
  {
    *a2.i64 = v6;
  }

  else
  {
    *a2.i64 = -v6;
  }

  *a2.i64 = *a2.i64 * 1048576.0 / v5;
  *a5.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  a5.i64[0] = vbslq_s8(v8, a5, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a5.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a4.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v8, a2, a4).i64;
  }

  if (*a2.i64 < 0.0)
  {
    return --*a2.i64;
  }

  else
  {
    return *a2.i64;
  }
}

uint64_t BlueFin::EswRpcEnc::GetEswHrmRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 32);

  return v3();
}

char *BlueFin::GlUtlGlSysLogEntryCodec::DecodeLine(BlueFin::GlUtlGlSysLogEntryCodec *this, char *__s1, const char *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  result = strstr(__s1, "@^@");
  if (result)
  {
    v7 = result;
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *__source = 0u;
    v22 = 0u;
    for (i = strlen(__s1); ; --i)
    {
      v10 = __s1[i - 1];
      if (v10 != 13 && v10 != 10)
      {
        break;
      }
    }

    v12 = v7 - __s1;
    if ((v7 - __s1) + 3 >= i)
    {
      BlueFin::GlFormat::glsnprintf(__source, 0xC8, "Error decoding SLOG entry. Line missing entry tag and body.", v8);
LABEL_18:
      *(this + 4) = 1;
      v19 = (this + 5);
      BlueFin::GlFormat::glsnprintf(v19, 0x100, "DecodeLine: SLOG entry corrupt on Line Number:%d", v18, a3);
      GlCustomLog(11, "%s\n", v19);
      GlCustomLog(11, "%s\n", __source);
      strlcat(v19, "  Error:", 0x100uLL);
      strlcat(v19, __source, 0x100uLL);
LABEL_19:
      result = 0;
    }

    else
    {
      v13 = &unk_298A330B8;
      v14 = 131;
      while (strncmp((v7 + 3), v13, 2uLL))
      {
        v13 += 8;
        if (!--v14)
        {
          v16 = *(v7 + 3);
          v17 = *(v7 + 4);
          if (v16 != 100 && v16 != 97 || v17 != 108)
          {
            BlueFin::GlFormat::glsnprintf(__source, 0xC8, "Error decoding SLOG entry. Unrecognized tag %c%c.", v15, v16, v17);
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      if (!BlueFin::GlUtlGlSysLogEntryCodec::ParseEntry(this, (v7 + 5), (i - v12 - 5), a3))
      {
        goto LABEL_19;
      }

      result = this + 264;
      *(this + 142) = 1;
      *(this + 276) = *(this + 288);
      *(this + 68) = *(v13 - 1);
      *(this + 70) = a3;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_10,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_10>,void ()(BlueFin::GlNvStorageReader *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  (*(**(FireResourceMgr::fInstance + 24) + 64))(&__p);
  FireDeviceLog::DeviceLogBase(6, "GlEngCbOnNvStgReadImpl,recall,size,%zu", v4, v5, v6, v7, v8, v9, v28 - __p);
  v16 = __p;
  if (__p != v28)
  {
    v17 = 0;
    v18 = v28 - __p;
    v19 = v28 - __p;
    do
    {
      v17 += 256;
      if (v18 >= v17)
      {
        v20 = 256;
      }

      else
      {
        v20 = v19;
      }

      (*(*v2 + 64))(v2, v16, v20);
      v16 += 256;
      v19 -= 256;
    }

    while (v18 > v17);
  }

  FireDeviceLog::DeviceLogBase(6, "GlEngCbOnNvStgReadImpl,PRIVATE_DATA,recall,size,%zu", v10, v11, v12, v13, v14, v15, *(v3 + 1160) - *(v3 + 1152));
  v21 = *(v3 + 1152);
  v22 = *(v3 + 1160);
  if (v21 != v22)
  {
    v23 = 0;
    v24 = v22 - v21;
    v25 = v22 - v21;
    do
    {
      v23 += 256;
      if (v24 >= v23)
      {
        v26 = 256;
      }

      else
      {
        v26 = v25;
      }

      (*(*v2 + 64))(v2, v21, v26);
      v21 += 256;
      v25 -= 256;
    }

    while (v24 > v23);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_29880F058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *BlueFin::GlCryptoMd5::final(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  BlueFin::GlCryptoMd5::update(a1, a2, a3);
  v4 = *(a1 + 104);
  *(a1 + 104) = v4 + 1;
  *(a1 + 40 + v4) = 0x80;
  v5 = *(a1 + 104);
  if (v5 < 0x39)
  {
    if (v5 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5 <= 0x3F)
    {
      v6 = (v5 + a1 + 40);
      v7 = v5 + 1;
      do
      {
        v8 = v7;
        *(a1 + 104) = v7;
        *v6++ = 0;
        ++v7;
      }

      while (v8 != 64);
    }

    BlueFin::GlCryptoMd5::md5_dgst_blk(a1, (a1 + 40));
    LODWORD(v5) = 0;
  }

  v9 = v5;
  v10 = (a1 + v5 + 40);
  v11 = v9 + 1;
  do
  {
    v12 = v11;
    *(a1 + 104) = v11;
    *v10++ = 0;
    ++v11;
  }

  while (v12 != 56);
LABEL_9:
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 32);
  v16 = *(a1 + 36);
  do
  {
    v21[v14] = v15 >> v13;
    v21[(v14++ & 0xFFFFFFFB) + 4] = v16 >> v13;
    v13 += 8;
  }

  while (v14 != 4);
  result = BlueFin::GlCryptoMd5::update(a1, v21, 8u);
  v18 = 0;
  for (i = 0; i != 4; ++i)
  {
    *(a1 + i) = *(a1 + 16) >> v18;
    *(a1 + (i & 0xFFFFFFFB) + 4) = *(a1 + 20) >> v18;
    *(a1 + (i & 0xFFFFFFF7) + 8) = *(a1 + 24) >> v18;
    *(a1 + (i & 0xFFFFFFF3) + 12) = *(a1 + 28) >> v18;
    v18 += 8;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngCbOnNvStgRead(BlueFin::GlDbgCodec *this, BlueFin::GlNvMemImpl *a2)
{
  *(this + 871) = a2;
  if (!*(this + 101))
  {
    v3 = this;
    BlueFin::GlDbgCodec::WriteStart(this, 515);
    (*(*v3 + 32))(v3, 1);
    v4 = *(v3 + 93);
    if (v4)
    {
      v4(v3 + 608, v3 + 6952);
    }

    BlueFin::GlDbgCodec::WriteFinal(v3, 515);
    v5 = *(*v3 + 32);

    return v5(v3, 1);
  }

  return this;
}

uint64_t BlueFin::GlNvMemImpl::ChangeState(uint64_t a1, int a2)
{
  v2 = *(a1 + 11892);
  *(a1 + 11892) = a2;
  if (v2 != 6)
  {
    BlueFin::GlNvMemImpl::Serialize(a1, 0);
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        if (*(a1 + 11892) == 1)
        {
          v5 = *(a1 + 10) << 16;
          GlCustomLog(14, " NVMEM writing complete (Clear 0x%04x)\n");
        }
      }

      else if (v2 == 7 && *(a1 + 11892) == 1)
      {
        GlCustomLog(14, " NVMEM checking integrity complete.\n");
      }
    }

    else if (v2 == 1)
    {
      v4 = *(a1 + 11892);
      switch(v4)
      {
        case 7:
          GlCustomLog(14, " Start checking integrity of NVMEM ...\n");
          break;
        case 3:
          GlCustomLog(14, " Start writing NVMEM ...\n");
          break;
        case 2:
          GlCustomLog(14, " Start reading NVMEM ...\n");
          break;
      }
    }

    else if (v2 == 2 && *(a1 + 11892) == 1)
    {
      GlCustomLog(14, " NVMEM reading complete.\n");
    }
  }

  return v2;
}

uint64_t BlueFin::GlNvMemImpl::Read(BlueFin::GlNvMemImpl *this)
{
  v2 = BlueFin::GlNvMemImpl::ChangeState(this, 7);
  BlueFin::GlNvMemImpl::ResetReader(this);
  v3 = *(this + 2);
  v4 = *(v3 + 136);
  if (v4)
  {
    v4(*(v3 + 8), this);
  }

  BlueFin::GlNvMemImpl::ChangeState(this, v2);
  v5 = *(this + 2964);
  v6 = *(this + 2973);
  if (v5 == 2)
  {
    if (v6 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    v2 = BlueFin::GlNvMemImpl::ChangeState(this, v7);
    BlueFin::GlNvMemImpl::ResetReader(this);
    BlueFin::GlNvMemImpl::DetermineDataToIgnore(this);
    if ((*(this + 8) & 4) != 0)
    {
      *(*(this + 3) + 2563) = 1;
    }

    v8 = *(this + 2);
    v9 = *(v8 + 136);
    if (v9)
    {
      v9(*(v8 + 8), this);
    }

    *(this + 11917) = 1;
  }

  else
  {
    if ((v6 - 3) >= 3 && *(this + 39))
    {
      GlCustomLog(11, " NVMEM integrity error detected\n");
      GlCustomLog(11, " NVMEM discarded\n");
      *(this + 11889) = 0;
      v5 = *(this + 2964);
    }

    if (!v5)
    {
      if (*(this + 39))
      {
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }

      *(this + 2964) = v10;
    }
  }

  result = BlueFin::GlNvMemImpl::LoadComplete(this);
  if (*(this + 2964) == 2)
  {

    return BlueFin::GlNvMemImpl::ChangeState(this, v2);
  }

  return result;
}

uint64_t BlueFin::GlNvMemImpl::Serialize(uint64_t result, uint64_t a2)
{
  v3 = *(result + 11890);
  v2 = *(result + 8);
  v4 = *(result + 11892);
  v5 = *(*(result + 24) + 2568);
  if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    return BlueFin::GlNvMemImplData::SerializeImpl();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngCbOnNvStgRead(uint64_t a1, BlueFin::GlNvMemImpl *a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnNvStgRead(v3, a2);
}

uint64_t BlueFin::GlNvMemImplData::Deserialize(BlueFin::GlNvMemImplData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 28)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 6) < 0xFFFFFFFB)
  {
    return 0;
  }

  if (v3 == 5)
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  else
  {
    U8 = 0;
  }

  U32 = -7200001;
  *(this + 8) = U8;
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) <= 1u)
  {
    *(this + 16) = 0;
  }

  else
  {
    *(this + 16) = BlueFin::GlSysLogEntry::GetU8(a2);
    if (*(a2 + 12) > 2u)
    {
      *(this + 5) = BlueFin::GlSysLogEntry::GetU8(a2);
      if (*(a2 + 12) >= 4u)
      {
        U32 = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      goto LABEL_14;
    }
  }

  *(this + 5) = 0;
LABEL_14:
  *(this + 6) = U32;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 1346);
  return 1;
}

uint64_t BlueFin::GlMeSrdRfInit4777::LockAgcs(uint64_t this)
{
  v1 = this;
  if (*(this + 2285) == 1)
  {
    v2 = *(this + 2292) & 0x3F;
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 192, 67, 0);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 68, v2 | 0xC0511000);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 69, 0);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 70, v2 - 1062137856);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 65, 0);
    this = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 66, v2 | 0xC0511000);
  }

  if (*(v1 + 2286) == 1)
  {
    v3 = *(v1 + 2296) & 0x3F;
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 72, 0);
    this = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 73, v3 | 0xC0511000);
  }

  if (*(v1 + 2287) == 1)
  {
    v4 = BlueFin::GlMeSrdRfInit4777::EncodeDagcGain(this, *(v1 + 2300));
    this = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 75, v4 & 0x3FF);
  }

  if (*(v1 + 2288) == 1)
  {
    v5 = BlueFin::GlMeSrdRfInit4777::EncodeDagcGain(this, *(v1 + 2304));
    this = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 77, v5 & 0x3FF);
  }

  if (*(v1 + 2289) == 1)
  {
    v6 = BlueFin::GlMeSrdRfInit4777::EncodeDagcGain(this, *(v1 + 2308));
    this = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 79, v6 & 0x3FF);
  }

  if (*(v1 + 2290) == 1)
  {
    v7 = BlueFin::GlMeSrdRfInit4777::EncodeDagcGain(this, *(v1 + 2312)) & 0x3FF;

    return BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(v1, 192, 81, v7);
  }

  return this;
}

uint64_t BlueFin::GlStream::GetStr(BlueFin::GlStream *this, int a2)
{
  if (*(this + 6))
  {
    v5 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 256, "GetStr", "m_uiBitOffset == 0");
    v6 = 256;
    goto LABEL_8;
  }

  if (*(this + 7))
  {
    v5 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 257, "GetStr", "m_uiBitsRemainingInWord == 0");
    v6 = 257;
    goto LABEL_8;
  }

  v2 = *this;
  if ((v2 + a2) > *(this + 4))
  {
    v5 = "m_uiOffset+size<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 259, "GetStr", "m_uiOffset+size<=m_uiMaxOffset");
    v6 = 259;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v6, v5);
  }

  v3 = *(this + 1);
  *this = v2 + a2;
  return v3 + v2;
}

_DWORD *BlueFin::GlCryptoMd5::update(_DWORD *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  LODWORD(v6) = 0;
  if (a3)
  {
    LOBYTE(v7) = *(result + 104);
    if (v7)
    {
      v6 = 0;
      v8 = result + 10;
      do
      {
        *(v8 + v7) = *(a2 + v6++);
        v7 = (*(result + 104) + 1) & 0x3F;
        *(result + 104) = v7;
        if (v7)
        {
          v9 = v6 >= a3;
        }

        else
        {
          v9 = 1;
        }
      }

      while (!v9);
      if (!v7)
      {
        result = BlueFin::GlCryptoMd5::md5_dgst_blk(result, v8);
      }
    }
  }

  if (v6 + 64 <= a3)
  {
    do
    {
      result = BlueFin::GlCryptoMd5::md5_dgst_blk(v5, (a2 + v6));
      v10 = v6 + 64;
      v11 = v6 + 128;
      LODWORD(v6) = v6 + 64;
    }

    while (v11 <= a3);
  }

  else
  {
    v10 = v6;
  }

  if (v10 < a3)
  {
    v12 = (a2 + v10);
    v13 = a3 - v10;
    do
    {
      v14 = *v12++;
      v15 = *(v5 + 104);
      *(v5 + 104) = v15 + 1;
      *(v5 + v15 + 40) = v14;
      --v13;
    }

    while (v13);
  }

  v16 = v5[8];
  v17 = v16 + a3;
  if (__CFADD__(v16, a3))
  {
    ++v5[9];
  }

  v9 = __CFADD__(v17, a3);
  v18 = v17 + a3;
  if (v9)
  {
    ++v5[9];
  }

  v9 = __CFADD__(v18, a3);
  v19 = v18 + a3;
  if (v9)
  {
    ++v5[9];
  }

  v9 = __CFADD__(v19, a3);
  v20 = v19 + a3;
  if (v9)
  {
    ++v5[9];
  }

  v9 = __CFADD__(v20, a3);
  v21 = v20 + a3;
  if (v9)
  {
    ++v5[9];
  }

  v9 = __CFADD__(v21, a3);
  v22 = v21 + a3;
  if (v9)
  {
    ++v5[9];
  }

  v9 = __CFADD__(v22, a3);
  v23 = v22 + a3;
  if (v9)
  {
    ++v5[9];
  }

  if (__CFADD__(v23, a3))
  {
    ++v5[9];
  }

  v5[8] = v16 + 8 * a3;
  return result;
}

BOOL BlueFin::GlPeEphemeris::Deserialize(BlueFin::GlPeEphemeris *this, BlueFin::GlSysLogEntry *a2)
{
  v23 = 0;
  result = BlueFin::GlPeEphemeris::DeserializeHeader(a2, &v23 + 1, &v23);
  if (result)
  {
    v5 = *(this + 8);
    if (v23 == __PAIR64__(v5 >> 4, v5 & 0xF))
    {
      *(a2 + 10) = 1;
      v6 = *(a2 + 12);
      if (v6 >= 9)
      {
        BlueFin::GlSysLogEntry::GetU8(a2);
        if (*(a2 + 12) >= 0xBu)
        {
          BlueFin::GlSysLogEntry::GetU8(a2);
        }

        U8 = BlueFin::GlSysLogEntry::GetU8(a2);
        if (*(a2 + 12) > 0xAu || v5 >> 4 && v5 >> 4 != 3)
        {
          if (U8 <= *(this + 9))
          {
            if (!U8)
            {
LABEL_32:
              if ((*(*this + 144))(this) != 2)
              {
                return 1;
              }

              v21 = *(a2 + 12);
              if (v21 == 9)
              {
                (*(*this + 216))(this, 32, 0);
                v21 = *(a2 + 12);
              }

              if (v21 >= 0xB)
              {
                return 1;
              }

              goto LABEL_36;
            }

LABEL_30:
            v19 = 0;
            v20 = U8;
            do
            {
              *(*(this + 2) + 4 * v19++) = BlueFin::GlSysLogEntry::GetU32(a2);
            }

            while (v20 != v19);
            goto LABEL_32;
          }
        }

        else if (*(this + 9) >= 0x12u)
        {
          U8 = 18;
          goto LABEL_30;
        }

        return 0;
      }

      if (v6 == 8)
      {
        BlueFin::GlSysLogEntry::GetU8(a2);
      }

      if (*(this + 9) >= 0x12u)
      {
        for (i = 0; i != 18; ++i)
        {
          U32 = BlueFin::GlSysLogEntry::GetU32(a2);
          v10 = *(this + 2);
          v10[i] = U32;
        }

        if (*(a2 + 12) != 7)
        {
          goto LABEL_24;
        }

        v11 = *v10;
        v12 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
        v13 = v12[v11 >> 25];
        if (v12[v11 >> 25])
        {
          if (v13 < 0x21)
          {
            goto LABEL_21;
          }

          if (v13 - 66 <= 9)
          {
            LOBYTE(v13) = v13 - 65;
LABEL_21:
            v14 = v11 & 0x1FFFFFF | (v13 << 25);
            *v10 = v14;
            v15 = v10 + 1;
            v16 = 17;
            do
            {
              v17 = *v15;
              HIDWORD(v18) = v14;
              LODWORD(v18) = *v15;
              *(v15++ - 1) = v18 >> 31;
              v14 = v17;
              --v16;
            }

            while (v16);
            v10[17] *= 2;
LABEL_24:
            if ((*(*this + 144))(this) != 2)
            {
              return 1;
            }

            (*(*this + 216))(this, 32, 0);
LABEL_36:
            (*(*this + 216))(this, 33, 0);
            v22 = (*(*this + 192))(this, 28);
            (*(*this + 216))(this, 34, v22);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

double BlueFin::GlPeGnssTime::operator-(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 != *(a2 + 8) && BlueFin::GlPeGnssTime::m_potConversionTable == 0)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 356, "operator-", "m_potConversionTable != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 356, "m_potConversionTable != nullptr");
  }

  v14 = 0;
  BlueFin::GlPeGnssTime::getDateTime(a2, v2, &v14);
  v5 = *a1;
  v6 = a1[1];
  if (v14)
  {
    v8 = v6 - HIDWORD(v14);
    if (__PAIR64__(v6, v5) < v14)
    {
      v11 = HIDWORD(v14) - v6;
      v9 = v14 >= v5;
      v5 = v14 - v5;
      v12 = !v9;
      v6 = v11 - v12;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v9 = v5 >= v14;
      v5 -= v14;
      v10 = !v9;
      v6 = v8 - v10;
    }
  }

  else
  {
    v7 = 0;
  }

  result = v5 * 2.32830644e-10 + v6;
  if ((v7 & ((v6 | v5) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

double BlueFin::GlPeGnssTime::getDateTime(double *a1, int a2, _DWORD *a3)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = BlueFin::GlPeGnssTime::m_potConversionTable;
  v6 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 8 * a2);
  v7 = fabs(v6);
  v8 = v7 - trunc(v7);
  v9 = v8 * 4294967300.0 + 0.5;
  v10 = v9;
  *a3 = v3;
  a3[1] = v4;
  if (v9 >= 4294967300.0)
  {
    v10 = -1;
  }

  if (v8 < 0.0 || v8 >= 1.0)
  {
    v19 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v20 = "glpe_timepoint.h";
    v21 = 173;
    goto LABEL_24;
  }

  v12 = v7;
  if (v6 < 0.0)
  {
    v14 = v4 - v12;
    if (v4 > v12 || v4 == v12 && v3 >= v10)
    {
      v15 = v3 >= v10;
      LODWORD(v3) = v3 - v10;
      v16 = !v15;
      v13 = v14 - v16;
    }

    else
    {
      if (v12 - v4 != v3 > v10 || v10 != v3)
      {
        v19 = "!otTmp.isNegative()";
        DeviceFaultNotify("glpe_datetime.h", 1360, "operator+=", "!otTmp.isNegative()");
        v20 = "glpe_datetime.h";
        v21 = 1360;
LABEL_24:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
      }

      v13 = 0;
      LODWORD(v3) = 0;
    }
  }

  else
  {
    v3 += v10;
    v13 = v4 + v12 + HIDWORD(v3);
  }

  *a3 = v3;
  a3[1] = v13;
  return a1[3] + *(v5 + 4 * a2 + 48);
}

uint64_t BlueFin::GlPeAlmanacPlainOldData::Gnss2almId(unsigned int a1, unsigned __int8 a2)
{
  v2 = a2;
  if (!a2 || a1 > 6 || ((0xE243F0A181320uLL >> (8 * a1)) & 0x3F) < a2)
  {
    DeviceFaultNotify("glpe_almmgr.cpp", 89, "Gnss2almId", "*rotGnss.otGnssId != INVALID_GNSS_ID && rotGnss.otGnssId <= GlGnssId::MaxGnssId(rotGnss.eGnss)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 89, "*rotGnss.otGnssId != INVALID_GNSS_ID && rotGnss.otGnssId <= GlGnssId::MaxGnssId(rotGnss.eGnss)");
  }

  v3 = a2 + 119;
  if (a1 != 1)
  {
    v3 = a2 - 64;
  }

  if (((1 << a1) & 0x75) == 0)
  {
    return v3;
  }

  return v2;
}

uint64_t BlueFin::GlPeEphemerisMgr::SetEphFromBuffer(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeEphemeris *a2)
{
  (*(*a2 + 136))(&v13, a2);
  if (!v13 || v13 >= (*(this + 104) + 1))
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1910, "SetEphFromBuffer", "otGnssId >= MIN_GNSS_ID && otGnssId < m_ucMaxEphSVs + MIN_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1910, "otGnssId >= MIN_GNSS_ID && otGnssId < m_ucMaxEphSVs + MIN_GNSS_ID");
  }

  v4 = (*(*this + 16))(this, *(this + 58) + 4 * (v13 - 1) * *(this + 456), *(a2 + 8) & 0xF);
  BlueFin::GlPeEphemeris::operator=(v4, a2);
  if (*(*(this + 2) + 2576) && ((*(*v4 + 80))(v4) & 1) == 0)
  {
    Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, v12);
    (*(*v4 + 72))(v4, v12, Time);
  }

  BlueFin::GlSetBase::Remove(this + 480, v13);
  BlueFin::GlSetBase::Remove(this + 504, v13);
  v12[0].n128_u32[0] = *(this + 3);
  v12[0].n128_u8[4] = v13;
  v6 = *(this + 6);
  v7 = (*(*a2 + 152))(a2);
  (*(*v6 + 88))(v6, v12, v7);
  v8 = *(this + 8);
  BlueFin::GlPeSvIdConverter::Gnss2SvId(v8, v12, &v11);
  v9 = (*(*v4 + 256))(v4);
  return BlueFin::GlPeSvIdConverter::SetOrbitType(v8, &v11, v9);
}

void *BlueFin::GlPeSatPos::ReportNewOrbitalData(uint64_t a1, uint64_t a2)
{
  if (*a2 != 2)
  {
    result = BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 17704) + 119744), a2, &v10);
    v6 = *(a1 + v10 + 17512);
    if (v6 >= 0x5B)
    {
      return result;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 24);
  memcpy(v13, *(a1 + 16), 4 * v10);
  v12[0] = 0;
  v11 = 0;
  *&v12[1] = v13[0];
  result = BlueFin::GlSetIterator::operator++(&v10);
  if (v11 != v10)
  {
    v5 = *(a2 + 4);
    while (1)
    {
      v6 = v12[0];
      v7 = a1 + 40 + 192 * v12[0];
      v9 = *(v7 + 4);
      v8 = v7 + 4;
      if (v9 == 2 && *(v8 + 4) == v5)
      {
        break;
      }

      result = BlueFin::GlSetIterator::operator++(&v10);
      if (v11 == v10)
      {
        return result;
      }
    }

    if ((v12[0] & 0x80000000) == 0)
    {
LABEL_11:

      return BlueFin::GlPeMiniEphMgr::remove((a1 + 8), v6);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSvIdConverter::SetOrbitType(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = *a2;
  if (a3 == 1)
  {
    BlueFin::GlSetBase::Remove(a1 + 8, v6);
    *(*(a1 + 56) + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
  }

  else if (a3)
  {
    BlueFin::GlSetBase::Remove(a1 + 8, v6);
    BlueFin::GlSetBase::Remove(a1 + 56, *a2);
    if (a3 >= 3)
    {
      DeviceFaultNotify("glpe_svid_converter.cpp", 252, "SetOrbitType", "eOrbitType < _DIM(cOrbitNames)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svid_converter.cpp", 252, "eOrbitType < _DIM(cOrbitNames)");
    }
  }

  else
  {
    *(*(a1 + 8) + ((v6 >> 3) & 0x1C)) |= 1 << v6;
    BlueFin::GlSetBase::Remove(a1 + 56, v6);
  }

  return GlCustomLog(14, "SetOrbitType %d %s\n", *a2, __const__ZN7BlueFin17GlPeSvIdConverter12SetOrbitTypeERKNS_6GlSvIdENS_13GlPeOrbitTypeE_cOrbitNames[a3]);
}

BOOL BlueFin::GlPeStartupMgr::checkAsstAndRtoEph(BlueFin::GlPeStartupMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, BlueFin::GlSetBase *a24)
{
  v30 = *MEMORY[0x29EDCA608];
  BlueFin::GlGnssSet::operator|(*this + 120224, *this + 120608, &v29);
  v24 = 0;
  v26 = 7;
  do
  {
    v24 += BlueFin::GlSetBase::Cnt(a24);
    a24 = (a24 + 24);
    --v26;
  }

  while (v26);
  result = v24 > 3u;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeQzssEphemeris::GetCurveFitIntervalS(BlueFin::GlPeQzssEphemeris *this)
{
  if ((*(*this + 192))(this, 30))
  {
    return 15000;
  }

  else
  {
    return 7800;
  }
}

__n128 BlueFin::GlPeBdsEphMgr::validateCandidateEphemeris(BlueFin::GlPeBdsEphMgr *this, const BlueFin::GlPeEphemeris *a2, BlueFin::GlPeEphemeris *a3)
{
  if ((*(a3 + 8) & 0xF) == 1)
  {
    (*(*a3 + 136))(&v56, a3);
    v6 = v56;
    if ((v56 - 64) <= 0xC0u)
    {
      DeviceFaultNotify("glpe_bdephmgr.cpp", 1301, "validateCandidateEphemeris", "IS_GNSS_ID(ucGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(ucGnssId))");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 1301, "IS_GNSS_ID(ucGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(ucGnssId))");
    }

    LOWORD(v56) = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    BlueFin::GlPeBdsEphemeris::GetBdUncmprsdEph(a3, &v56);
    v7 = (v6 - 1) >= 5 && (v6 - 59) >= 5;
    v8 = !v7;
    if (BlueFin::BdNavMsgMgr::EphRangeCheck(&v56, v8) <= 1)
    {
      v10 = this + 104 * v6 + 9520;
      v11 = (*(*a3 + 144))(a3);
      if ((v11 & 0xFFFFFFFD) == 1)
      {
        (*(*v10 + 136))(&v56, this + 104 * v6 + 9520);
        if (v56 - 64 > 0xFFFFFFC0)
        {
          return result;
        }

LABEL_30:
        BlueFin::GlPeEphemeris::operator=(this + 104 * v6 + 9520, a3);
        *(this + 104 * v6 + 9552) = *(a3 + 2);
        result = *(a3 + 3);
        v26 = *(a3 + 4);
        v27 = *(a3 + 5);
        *(this + 13 * v6 + 1202) = *(a3 + 12);
        *(this + 104 * v6 + 9584) = v26;
        *(this + 104 * v6 + 9600) = v27;
        *(this + 104 * v6 + 9568) = result;
        return result;
      }

      if (v11)
      {
        return result;
      }

      (*(*v10 + 136))(&v56, this + 104 * v6 + 9520);
      if (v56 - 1 >= 0x3F)
      {
        goto LABEL_30;
      }

      if ((*(*v10 + 192))(this + 104 * v6 + 9520, 27) && (*(*a3 + 192))(a3, 27) && (v12 = (*(*v10 + 192))(this + 104 * v6 + 9520, 28), v12 != (*(*a3 + 192))(a3, 28)))
      {
        v55 = 0;
      }

      else
      {
        v13 = (*(*v10 + 192))(this + 104 * v6 + 9520, 18);
        v14 = (*(*v10 + 232))(this + 104 * v6 + 9520, 18) * v13;
        v15 = (*(*a3 + 192))(a3, 18);
        v55 = v14 == (*(*a3 + 232))(a3, 18) * v15;
      }

      v16 = (*(*v10 + 192))(this + 104 * v6 + 9520, 5);
      v17 = (*(*a3 + 192))(a3, 5);
      v18 = (*(*v10 + 192))(this + 104 * v6 + 9520, 3);
      v19 = (*(*a3 + 192))(a3, 3);
      v20 = (*(*v10 + 192))(this + 104 * v6 + 9520, 7);
      v21 = (*(*a3 + 192))(a3, 7);
      if (v55 && v16 == v17 && v18 == v19 && v20 == v21)
      {
        v28 = (*(*v10 + 192))(this + 104 * v6 + 9520, 0);
        if (v28 == (*(*a3 + 192))(a3, 0))
        {
          v29 = (*(*v10 + 192))(this + 104 * v6 + 9520, 4);
          if (v29 == (*(*a3 + 192))(a3, 4))
          {
            v30 = (*(*v10 + 192))(this + 104 * v6 + 9520, 3);
            if (v30 == (*(*a3 + 192))(a3, 3))
            {
              v31 = (*(*v10 + 208))(this + 104 * v6 + 9520, 6);
              if (v31 == (*(*a3 + 208))(a3, 6))
              {
                v32 = (*(*v10 + 192))(this + 104 * v6 + 9520, 5);
                if (v32 == (*(*a3 + 192))(a3, 5))
                {
                  v33 = (*(*v10 + 192))(this + 104 * v6 + 9520, 7);
                  if (v33 == (*(*a3 + 192))(a3, 7))
                  {
                    v34 = (*(*v10 + 208))(this + 104 * v6 + 9520, 8);
                    if (v34 == (*(*a3 + 208))(a3, 8))
                    {
                      v35 = (*(*v10 + 208))(this + 104 * v6 + 9520, 9);
                      if (v35 == (*(*a3 + 208))(a3, 9))
                      {
                        v36 = (*(*v10 + 208))(this + 104 * v6 + 9520, 10);
                        if (v36 == (*(*a3 + 208))(a3, 10))
                        {
                          v37 = (*(*v10 + 208))(this + 104 * v6 + 9520, 11);
                          if (v37 == (*(*a3 + 208))(a3, 11))
                          {
                            v38 = (*(*v10 + 208))(this + 104 * v6 + 9520, 12);
                            if (v38 == (*(*a3 + 208))(a3, 12))
                            {
                              v39 = (*(*v10 + 208))(this + 104 * v6 + 9520, 13);
                              if (v39 == (*(*a3 + 208))(a3, 13))
                              {
                                v40 = (*(*v10 + 208))(this + 104 * v6 + 9520, 14);
                                if (v40 == (*(*a3 + 208))(a3, 14))
                                {
                                  v41 = (*(*v10 + 192))(this + 104 * v6 + 9520, 15);
                                  if (v41 == (*(*a3 + 192))(a3, 15))
                                  {
                                    v42 = (*(*v10 + 208))(this + 104 * v6 + 9520, 16);
                                    if (v42 == (*(*a3 + 208))(a3, 16))
                                    {
                                      v43 = (*(*v10 + 192))(this + 104 * v6 + 9520, 17);
                                      if (v43 == (*(*a3 + 192))(a3, 17))
                                      {
                                        v44 = (*(*v10 + 192))(this + 104 * v6 + 9520, 18);
                                        if (v44 == (*(*a3 + 192))(a3, 18))
                                        {
                                          v45 = (*(*v10 + 208))(this + 104 * v6 + 9520, 19);
                                          if (v45 == (*(*a3 + 208))(a3, 19))
                                          {
                                            v46 = (*(*v10 + 208))(this + 104 * v6 + 9520, 20);
                                            if (v46 == (*(*a3 + 208))(a3, 20))
                                            {
                                              v47 = (*(*v10 + 208))(this + 104 * v6 + 9520, 21);
                                              if (v47 == (*(*a3 + 208))(a3, 21))
                                              {
                                                v48 = (*(*v10 + 208))(this + 104 * v6 + 9520, 22);
                                                if (v48 == (*(*a3 + 208))(a3, 22))
                                                {
                                                  v49 = (*(*v10 + 208))(this + 104 * v6 + 9520, 23);
                                                  if (v49 == (*(*a3 + 208))(a3, 23))
                                                  {
                                                    v50 = (*(*v10 + 208))(this + 104 * v6 + 9520, 24);
                                                    if (v50 == (*(*a3 + 208))(a3, 24))
                                                    {
                                                      v51 = (*(*v10 + 208))(this + 104 * v6 + 9520, 25);
                                                      if (v51 == (*(*a3 + 208))(a3, 25))
                                                      {
                                                        v52 = (*(*v10 + 208))(this + 104 * v6 + 9520, 26);
                                                        if (v52 == (*(*a3 + 208))(a3, 26))
                                                        {
                                                          (*(*v10 + 168))(this + 104 * v6 + 9520);
                                                          (*(*a3 + 168))(a3);
                                                          return result;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (BlueFin::GlPeBdsEphMgr::NewEphSet(v6, this + 104 * v6 + 9520, a3, v22))
      {
        goto LABEL_30;
      }

      if (a2 && !(*(*a2 + 144))(a2) && ((*(*a2 + 184))(a2) & 1) == 0)
      {
        LOBYTE(v56) = v6;
        (*(*this + 288))(this, &v56, 0);
      }

      if ((*(*v10 + 184))(this + 104 * v6 + 9520))
      {
        (*(*v10 + 176))(this + 104 * v6 + 9520);
      }

      else
      {
        BlueFin::GlPeEphemeris::operator=(this + 104 * v6 + 9520, a3);
        *(this + 104 * v6 + 9552) = *(a3 + 2);
        result = *(a3 + 3);
        v53 = *(a3 + 4);
        v54 = *(a3 + 5);
        *(this + 13 * v6 + 1202) = *(a3 + 12);
        *(this + 104 * v6 + 9584) = v53;
        *(this + 104 * v6 + 9600) = v54;
        *(this + 104 * v6 + 9568) = result;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetIntegerScaleFactor(BlueFin::GlPeBdsEphemeris *this, unsigned int a2)
{
  if (a2 >= 0x22 || ((0x3F80400BFuLL >> a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_bdephmgr.cpp", 858, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 858, "0");
  }

  return dword_298A3B6DC[a2];
}

uint64_t *BlueFin::GlPeBdsEphemeris::PutCmpUnsignedField(BlueFin::GlPeBdsEphemeris *this, signed int a2, unsigned int a3)
{
  v6 = *(this + 2);
  v7 = 4 * *(this + 9);
  v12 = 0;
  BlueFin::GlBitBuffer::Initialize(v11, v6, v7);
  if (a2 > 26)
  {
    switch(a2)
    {
      case 27:
        a2 = 1;
        v8 = 562;
        goto LABEL_17;
      case 32:
        a2 = 1;
        v8 = 14;
        goto LABEL_17;
      case 33:
        a2 = 1;
        v8 = 15;
        goto LABEL_17;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v8 = 0;
        a2 = 8;
        goto LABEL_17;
      case 1:
        a2 = 6;
        v8 = 8;
        goto LABEL_17;
      case 2:
        a2 = 1;
        v8 = 561;
        goto LABEL_17;
    }
  }

  if (BlueFin::GlPeBdsEphemeris::isD2Format(this))
  {
    v8 = 22;
    switch(a2)
    {
      case 3:
        a2 = 1;
        goto LABEL_62;
      case 4:
        goto LABEL_17;
      case 5:
        v8 = 17;
        goto LABEL_17;
      case 6:
        a2 = 10;
        v8 = 26;
        goto LABEL_17;
      case 7:
        a2 = 17;
        v8 = 61;
        goto LABEL_17;
      case 8:
        a2 = 11;
        v8 = 130;
        goto LABEL_17;
      case 9:
        a2 = 22;
        v8 = 108;
        goto LABEL_17;
      case 10:
        a2 = 24;
        v8 = 84;
        goto LABEL_17;
      case 11:
        a2 = 18;
        v8 = 395;
        goto LABEL_17;
      case 12:
        a2 = 16;
        v8 = 146;
        goto LABEL_17;
      case 13:
        goto LABEL_20;
      case 14:
        a2 = 18;
        v8 = 162;
        goto LABEL_17;
      case 15:
        BlueFin::GlBitBuffer::Position(v11, 0xC6u);
        BlueFin::GlBitBuffer::PutU(v11, a3 >> 22, 0xAu);
        a2 = 22;
        goto LABEL_34;
      case 16:
        a2 = 18;
        v8 = 180;
        goto LABEL_17;
      case 17:
        a2 = 32;
        goto LABEL_49;
      case 18:
        a2 = 17;
        v8 = 330;
        goto LABEL_17;
      case 19:
        BlueFin::GlBitBuffer::Position(v11, 0x106u);
        BlueFin::GlBitBuffer::PutU(v11, a3 >> 8, 0xAu);
        a2 = 8;
        goto LABEL_52;
      case 20:
        a2 = 32;
        goto LABEL_54;
      case 21:
        a2 = 18;
        v8 = 312;
        goto LABEL_17;
      case 22:
        BlueFin::GlBitBuffer::Position(v11, 0x15Bu);
        BlueFin::GlBitBuffer::PutU(v11, a3 >> 11, 0x15u);
        BlueFin::GlBitBuffer::Position(v11, 0x22Eu);
        BlueFin::GlBitBuffer::PutU(v11, a3 >> 9, 2u);
        a2 = 9;
        goto LABEL_45;
      case 23:
        a2 = 18;
        v8 = 377;
        goto LABEL_17;
      case 24:
        BlueFin::GlBitBuffer::Position(v11, 0x1B5u);
        BlueFin::GlBitBuffer::PutU(v11, a3 >> 5, 0x1Bu);
        a2 = 5;
        v8 = 507;
        goto LABEL_17;
      case 25:
        a2 = 24;
        v8 = 413;
        goto LABEL_17;
      case 26:
        a2 = 14;
        v8 = 512;
        goto LABEL_17;
      case 28:
        a2 = 13;
        goto LABEL_68;
      case 29:
        a2 = 5;
        v8 = 141;
        goto LABEL_17;
      default:
        DeviceFaultNotify("glpe_bdephmgr.cpp", 738, "PutCmpUnsignedField", "0");
        v10 = 738;
        goto LABEL_76;
    }
  }

  v8 = 95;
  switch(a2)
  {
    case 3:
      a2 = 1;
      v8 = 136;
      break;
    case 4:
      break;
    case 5:
      v8 = 137;
      break;
    case 6:
      a2 = 10;
      v8 = 65;
      break;
    case 7:
      a2 = 17;
LABEL_68:
      v8 = 48;
      break;
    case 8:
      a2 = 11;
      v8 = 80;
      break;
    case 9:
      a2 = 22;
LABEL_62:
      v8 = 16;
      break;
    case 10:
      a2 = 24;
      v8 = 112;
      break;
    case 11:
      a2 = 18;
      v8 = 286;
      break;
    case 12:
      a2 = 16;
LABEL_34:
      v8 = 240;
      break;
    case 13:
LABEL_20:
      a2 = 32;
      v8 = 208;
      break;
    case 14:
      BlueFin::GlBitBuffer::Position(v11, 0x100u);
      BlueFin::GlBitBuffer::PutU(v11, a3 >> 2, 0x10u);
      a2 = 2;
      v8 = 326;
      break;
    case 15:
      a2 = 32;
      v8 = 176;
      break;
    case 16:
      a2 = 18;
LABEL_52:
      v8 = 304;
      break;
    case 17:
      a2 = 32;
      v8 = 144;
      break;
    case 18:
      BlueFin::GlBitBuffer::Position(v11, 0x148u);
      BlueFin::GlBitBuffer::PutU(v11, a3 >> 15, 2u);
      a2 = 15;
      v8 = 496;
      break;
    case 19:
      a2 = 18;
LABEL_54:
      v8 = 464;
      break;
    case 20:
      a2 = 32;
      v8 = 336;
      break;
    case 21:
      a2 = 18;
      v8 = 400;
      break;
    case 22:
      a2 = 32;
      v8 = 432;
      break;
    case 23:
      BlueFin::GlBitBuffer::Position(v11, 0x142u);
      BlueFin::GlBitBuffer::PutU(v11, a3 >> 14, 4u);
      a2 = 14;
LABEL_49:
      v8 = 272;
      break;
    case 24:
      a2 = 32;
LABEL_45:
      v8 = 368;
      break;
    case 25:
      BlueFin::GlBitBuffer::Position(v11, 0x1E2u);
      BlueFin::GlBitBuffer::PutU(v11, a3 >> 13, 0xBu);
      a2 = 13;
      v8 = 511;
      break;
    case 26:
      a2 = 14;
      v8 = 418;
      break;
    case 28:
      a2 = 13;
      v8 = 99;
      break;
    case 29:
      a2 = 5;
      v8 = 75;
      break;
    default:
      DeviceFaultNotify("glpe_bdephmgr.cpp", 772, "PutCmpUnsignedField", "0");
      v10 = 772;
LABEL_76:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", v10, "0");
  }

LABEL_17:
  BlueFin::GlBitBuffer::Position(v11, v8);
  return BlueFin::GlBitBuffer::PutU(v11, a3, a2);
}

uint64_t BlueFin::GlPeLtoEphemeris::GetCmpSignedField(BlueFin::GlPeLtoEphemeris *this, int a2)
{
  if (a2 == 36)
  {
    return ((32 * *(*(this + 2) + 72)) >> 28);
  }

  else
  {
    return BlueFin::GlPeGpsEphemerisBase::GetCmpSignedField(this, a2);
  }
}

uint64_t BlueFin::GlPeAlmMgr::getAlmReference(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 6 || ((v3 = *(a1 + qword_298A3B428[a2]), dword_298A3B460[a2] >= a3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    DeviceFaultNotify("glpe_almmgr.cpp", 1024, "getAlmReference", "potAlmArrayBase != nullptr && (iIndex < iMaxSVs)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 1024, "potAlmArrayBase != nullptr && (iIndex < iMaxSVs)");
  }

  return v3 + 112 * a3 - 112;
}

uint64_t BlueFin::GlPeAlmanac::GetToa@<X0>(BlueFin::GlPeAlmanac *this@<X0>, const BlueFin::GlGpsTime *a2@<X1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  v17 = v7;
  v18 = v6;
  v16 = &off_2A1F0B5F0;
  if (*(this + 23) == 2)
  {
    v6 = BlueFin::GlSettingsImpl::m_ulActiveBuildFct;
    *a4.i64 = (BlueFin::GlSettingsImpl::m_ulActiveBuildFct % 0x93A80u);
    *a5.i64 = *a4.i64 - trunc(*a4.i64);
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    a4 = vbslq_s8(vnegq_f64(v8), a5, a4);
    if (*a4.i64 >= 1.0)
    {
      goto LABEL_10;
    }

    v9 = *a4.i64 * 4294967300.0 + 0.5;
    v7 = v9;
    if (v9 >= 4294967300.0)
    {
      v7 = -1;
    }

    v17 = v7;
    v18 = BlueFin::GlSettingsImpl::m_ulActiveBuildFct;
  }

  v10 = *(this + 4);
  *a4.i64 = v10;
  v11 = *(this + 44);
  *a5.i64 = v10 - trunc(v10);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v12), a5, a4).i64[0];
  if (*a4.i64 >= 1.0)
  {
LABEL_10:
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v13 = *a4.i64 * 4294967300.0 + 0.5;
  v14 = v13;
  if (v13 >= 4294967300.0)
  {
    v14 = -1;
  }

  v20 = v14;
  v21 = v10 + 604800 * v11;
  v19[0] = v7;
  v19[1] = v6;
  BlueFin::GlTimePoint::resolveAmbiguity(&v20, v19, 0x93A8000u);
  result = (v16[3])(&v16, v21);
  *(a3 + 8) = v20;
  *(a3 + 12) = result;
  *a3 = &off_2A1F0B5F0;
  return result;
}

uint64_t BlueFin::GlPeGpsEphemeris::GetSrc(BlueFin::GlPeGpsEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 3435, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3435, "false");
  }

  return dword_298A3A830[v1];
}

uint64_t BlueFin::GlPeBdsEphemeris::GetSrc(BlueFin::GlPeBdsEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_bdephmgr.cpp", 396, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 396, "false");
  }

  return dword_298A3A830[v1];
}

uint64_t BlueFin::GlPeGalEphemeris::GetSrc(BlueFin::GlPeGalEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 509, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 509, "false");
  }

  return dword_298A3A830[v1];
}

double BlueFin::GlPeBdsEphemeris::GetFloatingScaleFactor(BlueFin::GlPeBdsEphemeris *this, int a2)
{
  result = 1.0;
  if ((a2 - 6) <= 0x14)
  {
    return dbl_298A3B768[(a2 - 6)];
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetBdUncmprsdEph(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 4) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 36) = 0u;
  *(a2 + 52) = 0u;
  *(a2 + 68) = 0u;
  *(a2 + 84) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 16) = (*(*a1 + 192))(a1, 4);
  *(a2 + 12) = (*(*a1 + 192))(a1, 3);
  *(a2 + 4) = (*(*a1 + 192))(a1, 5);
  *(a2 + 8) = (*(*a1 + 192))(a1, 29);
  *(a2 + 40) = (*(*a1 + 208))(a1, 6);
  *(a2 + 20) = (*(*a1 + 192))(a1, 7);
  *(a2 + 28) = (*(*a1 + 208))(a1, 8);
  *(a2 + 32) = (*(*a1 + 208))(a1, 9);
  *(a2 + 36) = (*(*a1 + 208))(a1, 10);
  *(a2 + 56) = (*(*a1 + 208))(a1, 11);
  *(a2 + 48) = (*(*a1 + 208))(a1, 12);
  *(a2 + 52) = (*(*a1 + 208))(a1, 13);
  *(a2 + 68) = (*(*a1 + 208))(a1, 14);
  *(a2 + 80) = (*(*a1 + 192))(a1, 15);
  *(a2 + 64) = (*(*a1 + 208))(a1, 16);
  *(a2 + 84) = (*(*a1 + 192))(a1, 17);
  *(a2 + 88) = (*(*a1 + 192))(a1, 18);
  *(a2 + 76) = (*(*a1 + 208))(a1, 19);
  *(a2 + 92) = (*(*a1 + 208))(a1, 20);
  *(a2 + 72) = (*(*a1 + 208))(a1, 21);
  *(a2 + 96) = (*(*a1 + 208))(a1, 22);
  *(a2 + 60) = (*(*a1 + 208))(a1, 23);
  *(a2 + 100) = (*(*a1 + 208))(a1, 24);
  *(a2 + 104) = (*(*a1 + 208))(a1, 25);
  *(a2 + 108) = (*(*a1 + 208))(a1, 26);
  result = (*(*a1 + 192))(a1, 28);
  *(a2 + 24) = result;
  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetCmpSignedField(BlueFin::GlPeBdsEphemeris *this, int a2)
{
  v3 = *(this + 2);
  if (BlueFin::GlPeBdsEphemeris::isD2Format(this))
  {
    switch(a2)
    {
      case 6:
        HIDWORD(v4) = *v3;
        LODWORD(v4) = *(v3 + 4);
        return ((v4 >> 6) >> 22);
      case 8:
        return ((4 * *(v3 + 16)) >> 21);
      case 9:
        HIDWORD(v23) = *(v3 + 12);
        LODWORD(v23) = *(v3 + 16);
        v22 = v23 >> 20;
        return (v22 >> 10);
      case 10:
        HIDWORD(v24) = *(v3 + 8);
        LODWORD(v24) = *(v3 + 12);
        v16 = v24 >> 12;
        return (v16 >> 8);
      case 11:
        return ((*(v3 + 48) << 11) >> 14);
      case 12:
        HIDWORD(v20) = *(v3 + 16);
        LODWORD(v20) = *(v3 + 20);
        return ((v20 >> 14) >> 16);
      case 13:
        goto LABEL_6;
      case 14:
        return ((4 * *(v3 + 20)) >> 14);
      case 16:
        HIDWORD(v13) = *(v3 + 20);
        LODWORD(v13) = *(v3 + 24);
        v8 = v13 >> 12;
        return (v8 >> 14);
      case 19:
        return *(v3 + 37) | ((*(v3 + 32) << 6) >> 22 << 8);
      case 20:
        v6 = *(v3 + 56);
        v7 = *(v3 + 60);
        goto LABEL_22;
      case 21:
        HIDWORD(v9) = *(v3 + 36);
        LODWORD(v9) = *(v3 + 40);
        v8 = v9 >> 8;
        return (v8 >> 14);
      case 22:
        HIDWORD(v12) = *(v3 + 40);
        LODWORD(v12) = *(v3 + 44);
        return (v12 >> 5) & 0xFFFFF800 | (v12 >> 7) | (*(v3 + 68) >> 7) & 0x600;
      case 23:
        HIDWORD(v14) = *(v3 + 44);
        LODWORD(v14) = *(v3 + 48);
        v8 = v14 >> 7;
        return (v8 >> 14);
      case 24:
        HIDWORD(v15) = *(v3 + 52);
        LODWORD(v15) = *(v3 + 56);
        return (v15 >> 11) & 0xFFFFFFE0 | *(v3 + 60) & 0x1F;
      case 25:
        HIDWORD(v18) = *(v3 + 48);
        LODWORD(v18) = *(v3 + 52);
        v16 = v18 >> 3;
        return (v16 >> 8);
      case 26:
        return (*(v3 + 64) >> 18);
      default:
        DeviceFaultNotify("glpe_bdephmgr.cpp", 658, "GetCmpSignedField", "0");
        v26 = 658;
        goto LABEL_45;
    }
  }

  switch(a2)
  {
    case 6:
      return ((2 * *(v3 + 8)) >> 22);
    case 8:
      return (*(v3 + 8) >> 5);
    case 9:
      HIDWORD(v25) = *v3;
      LODWORD(v25) = *(v3 + 4);
      v22 = v25 >> 16;
      return (v22 >> 10);
    case 10:
      HIDWORD(v17) = *(v3 + 12);
      LODWORD(v17) = *(v3 + 16);
      v16 = v17 >> 16;
      return (v16 >> 8);
    case 11:
      HIDWORD(v21) = *(v3 + 32);
      LODWORD(v21) = *(v3 + 36);
      v8 = v21 >> 2;
      return (v8 >> 14);
    case 12:
      return *(v3 + 28);
    case 13:
LABEL_6:
      v6 = *(v3 + 24);
      v7 = *(v3 + 28);
      goto LABEL_22;
    case 14:
      return (*(v3 + 32) >> 14) & 0xFFFFFFFC | *(v3 + 43) & 3;
    case 16:
      v10 = *(v3 + 36);
      v11 = *(v3 + 40);
      goto LABEL_17;
    case 19:
      v10 = *(v3 + 56);
      v11 = *(v3 + 60);
      goto LABEL_17;
    case 20:
      v6 = *(v3 + 40);
      v7 = *(v3 + 44);
      goto LABEL_22;
    case 21:
      v10 = *(v3 + 48);
      v11 = *(v3 + 52);
LABEL_17:
      v8 = __PAIR64__(v10, v11) >> 16;
      return (v8 >> 14);
    case 22:
      v6 = *(v3 + 52);
      v7 = *(v3 + 56);
      goto LABEL_22;
    case 23:
      return ((4 * *(v3 + 40)) >> 14) & 0xFFFFC000 | (*(v3 + 32) >> 2);
    case 24:
      v6 = *(v3 + 44);
      v7 = *(v3 + 48);
LABEL_22:
      result = (__PAIR64__(v6, v7) >> 16);
      break;
    case 25:
      HIDWORD(v19) = *(v3 + 60);
      LODWORD(v19) = *(v3 + 64);
      result = (SHIDWORD(v19) >> 6) & 0xFFFFE000 | ((v19 >> 1) >> 19);
      break;
    case 26:
      result = ((4 * *(v3 + 52)) >> 18);
      break;
    default:
      DeviceFaultNotify("glpe_bdephmgr.cpp", 683, "GetCmpSignedField", "0");
      v26 = 683;
LABEL_45:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", v26, "0");
  }

  return result;
}

unint64_t BlueFin::GlPeBdsEphemeris::isSignedField(BlueFin::GlPeBdsEphemeris *this, unsigned int a2)
{
  if (a2 >= 0x22 || ((0x31FFFFFFFuLL >> a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_bdephmgr.cpp", 624, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 624, "0");
  }

  return (0x7F97F40uLL >> a2) & 1;
}

uint64_t BlueFin::GlPeGalEphemeris::GetIntegerScaleFactor(BlueFin::GlPeGalEphemeris *this, unsigned int a2)
{
  if (a2 > 0x1F)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0x9800003F) != 0)
  {
    return 1;
  }

  if (((1 << a2) & 0x40080) == 0)
  {
LABEL_6:
    DeviceFaultNotify("glpe_galephmgr.cpp", 729, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 729, "0");
  }

  return 60;
}

uint64_t BlueFin::GlPeGalEphemeris::isSignedField(BlueFin::GlPeGalEphemeris *this, unsigned int a2)
{
  if (a2 >= 0x1D)
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 601, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 601, "0");
  }

  return (0x7F97F40u >> a2) & 1;
}

double BlueFin::GlPeGalEphemeris::GetFloatingScaleFactor(BlueFin::GlPeGalEphemeris *this, int a2)
{
  result = 1.0;
  if ((a2 - 6) <= 0x14)
  {
    return dbl_298A3C0D0[(a2 - 6)];
  }

  return result;
}

uint64_t BlueFin::GlPeGalEphemeris::GetCmpSignedField(BlueFin::GlPeGalEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 6:
      return (*(v2 + 4) >> 22);
    case 8:
      return (*(v2 + 4) >> 2);
    case 9:
      HIDWORD(v10) = *(v2 + 4);
      LODWORD(v10) = *(v2 + 8);
      return ((v10 >> 2) >> 11);
    case 10:
      HIDWORD(v11) = *(v2 + 8);
      LODWORD(v11) = *(v2 + 12);
      return ((v11 >> 13) >> 1);
    case 11:
      v8 = *(v2 + 12);
      v7 = *(v2 + 16);
      return ((__PAIR64__(v8, v7) >> 14) >> 16);
    case 12:
      v6 = *(v2 + 16);
      return (v6 >> 14);
    case 13:
      return (__PAIR64__(*(v2 + 16), *(v2 + 20)) >> 14);
    case 14:
      v8 = *(v2 + 20);
      v7 = *(v2 + 24);
      return ((__PAIR64__(v8, v7) >> 14) >> 16);
    case 16:
      v6 = *(v2 + 28);
      return (v6 >> 14);
    case 19:
      return *(v2 + 38);
    case 20:
      v5 = *(v2 + 36);
      v4 = *(v2 + 40);
      goto LABEL_10;
    case 21:
      return *(v2 + 40);
    case 22:
      return *(v2 + 44);
    case 23:
      return *(v2 + 50);
    case 24:
      v5 = *(v2 + 48);
      v4 = *(v2 + 52);
LABEL_10:
      result = (__PAIR64__(v5, v4) >> 16);
      break;
    case 25:
      HIDWORD(v9) = *(v2 + 52);
      LODWORD(v9) = *(v2 + 56);
      result = ((v9 >> 16) >> 8);
      break;
    case 26:
      result = ((*(v2 + 56) << 8) >> 18);
      break;
    default:
      DeviceFaultNotify("glpe_galephmgr.cpp", 633, "GetCmpSignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 633, "0");
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::GetAlm(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5, int a6)
{
  if (((*(*(*(a1 + 432) + 48 * a2 + 24) + 4 * (a3 >> 5)) >> (a3 & 0x1F)) & 1) == 0 || a6 && !*(*(a1 + 448) + 2576))
  {
    return 0;
  }

  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(a1, a2, a3);
  v12 = AlmReference;
  if (!a5 || (result = BlueFin::GlPeAlmanac::IsHealthy(AlmReference)))
  {
    if (a6)
    {
      BlueFin::GlPeTimeManager::GetTime(*(a1 + 448), 1, v21);
      v22 = &off_2A1F0B5F0;
      v23 = 0;
      *v14.i64 = BlueFin::GlPeGnssTime::GetGps(v21, &v22);
      BlueFin::GlPeAlmanac::GetToa(v12, &v22, v21, v14, v15);
      v16 = v23;
      v17 = HIDWORD(v23);
      if (v21[0].n128_u64[1])
      {
        if (v23 < v21[0].n128_u64[1])
        {
          v17 = (__PAIR64__(v21[0].n128_u32[3] - HIDWORD(v23), v21[0].n128_u32[2]) - v23) >> 32;
          v16 = v21[0].n128_u32[2] - v23;
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v17 = (v23 - v21[0].n128_u64[1]) >> 32;
          v16 = v23 - v21[0].n128_u32[2];
        }
      }

      else
      {
        v18 = 0;
      }

      if (a2 != 1)
      {
        v19 = v16 * 2.32830644e-10 + v17;
        if ((v18 & ((v17 | v16) != 0)) != 0)
        {
          v19 = -v19;
        }

        v20 = v19;
        if (v19 < 0)
        {
          v20 = -v20;
        }

        if (v20 > 0xEFF100)
        {
          return 0;
        }
      }
    }

    BlueFin::GlPeAlmanac::operator=(a4, v12);
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeQzssEphemeris::GetSrc(BlueFin::GlPeQzssEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 3516, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3516, "false");
  }

  return dword_298A3A830[v1];
}

double BlueFin::GlPeGalEphemeris::ComputeAgeS(BlueFin::GlPeGalEphemeris *this, const BlueFin::GlPeGnssTime *a2, int a3)
{
  v32 = &off_2A1F0E480;
  v33 = 0;
  Gal = BlueFin::GlPeGnssTime::GetGal(a2, &v32);
  (v32[4])(&v32, Gal);
  v6 = (*(*this + 192))(this, 28);
  v7 = *this + 192;
  if (a3)
  {
    v8 = 18;
  }

  else
  {
    v8 = 7;
  }

  v9 = (*(*this + 192))(this, v8);
  v10 = (*(*this + 232))(this, v8);
  v12 = v11 * v9;
  *v10.i64 = v12;
  v29 = &off_2A1F0E480;
  *v13.i64 = v12 - trunc(v12);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = *vbslq_s8(vnegq_f64(v14), v13, v10).i64;
  if (v15 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v16 = v15 * 4294967300.0 + 0.5;
  v17 = v16;
  if (v16 >= 4294967300.0)
  {
    v17 = -1;
  }

  v30 = v17;
  v31 = v12 + 604800 * v6 + 619315200;
  v29 = &off_2A1F0E480;
  if ((*(*this + 80))(this))
  {
    v18 = v30;
    v19 = v31;
  }

  else
  {
    v20 = (v29[4])(&v29);
    LODWORD(v22) = v30;
    *v23.i64 = v22 * 2.32830644e-10;
    *v20.i64 = *v23.i64 + (v21 % 0x93A80);
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v32, v20, v34, v23);
    v18 = v34[0];
    v19 = v34[1];
  }

  v24 = v33;
  v25 = HIDWORD(v33);
  if (v19 | v18)
  {
    v27 = HIDWORD(v33) - v19;
    if (v33 < __PAIR64__(v19, v18))
    {
      v25 = (__PAIR64__(v19, v18) - v33) >> 32;
      v24 = v18 - v33;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v25 = (__PAIR64__(v27, v33) - v18) >> 32;
      v24 = v33 - v18;
    }
  }

  else
  {
    v26 = 0;
  }

  result = v24 * 2.32830644e-10 + v25;
  if ((v26 & ((v25 | v24) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t BlueFin::GlPeGalEphemeris::GetCurveFitIntervalS(BlueFin::GlPeGalEphemeris *this)
{
  (*(*this + 136))(&v3 + 1);
  if (BYTE1(v3) == 14)
  {
    return 10800;
  }

  (*(*this + 136))(&v3, this);
  if (v3 == 18)
  {
    return 10800;
  }

  else
  {
    return 28800;
  }
}

BOOL BlueFin::GlPeAlmanac::IsHealthy(BlueFin::GlPeAlmanac *this)
{
  v1 = *(this + 26);
  if (v1 < 5 && ((0x1Du >> v1) & 1) != 0)
  {
    v2 = dword_298A3B47C[v1];
  }

  else if (v1 == 5)
  {
    LOWORD(v2) = 31;
  }

  else
  {
    LOWORD(v2) = 255;
  }

  return (v2 & *(this + 1)) == 0;
}

__n128 BlueFin::GlPeAlmanac::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  return result;
}

{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  return result;
}

double BlueFin::GlPeLtoEphemeris::ComputeAgeS(BlueFin::GlPeLtoEphemeris *this, const BlueFin::GlPeGnssTime *a2, int a3)
{
  v34 = &off_2A1F0B5F0;
  v35 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(a2, &v34);
  (v34[4])(&v34, Gps);
  v6 = *this + 192;
  if (a3)
  {
    v7 = 28;
  }

  else
  {
    v7 = 34;
  }

  if (a3)
  {
    v8 = 18;
  }

  else
  {
    v8 = 7;
  }

  v9 = (*(*this + 192))(this, v7);
  v10 = (*(*this + 192))(this, v8);
  v11 = (*(*this + 232))(this, v8);
  v13 = v12 * v10;
  *v11.i64 = v13;
  v31 = &off_2A1F0B5F0;
  *v14.i64 = v13 - trunc(v13);
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = *vbslq_s8(vnegq_f64(v15), v14, v11).i64;
  if (v16 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v17 = v16 * 4294967300.0 + 0.5;
  v18 = v17;
  if (v17 >= 4294967300.0)
  {
    v18 = -1;
  }

  v32 = v18;
  v33 = v13 + 604800 * v9;
  v31 = &off_2A1F0B5F0;
  if ((*(*this + 80))(this))
  {
    v19 = (v31[4])(&v31);
    v37 = v32;
    v38 = v19;
    v20 = (v34[4])(&v34);
    v36[0] = v35;
    v36[1] = v20;
    BlueFin::GlTimePoint::resolveAmbiguity(&v37, v36, 0x24EA0000u);
    v21 = (v34[3])(&v34, v38);
    v22 = v37;
  }

  else
  {
    v23 = (v31[4])(&v31);
    LODWORD(v25) = v32;
    *v26.i64 = v25 * 2.32830644e-10;
    *v23.i64 = *v26.i64 + (v24 % 0x93A80);
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v34, v23, &v37, v26);
    v22 = v37;
    v21 = v38;
  }

  v27 = v35;
  v28 = HIDWORD(v35);
  v29 = v21 | v22;
  if (v21 | v22)
  {
    if (v35 < __PAIR64__(v21, v22))
    {
      v28 = (__PAIR64__(v21 - HIDWORD(v35), v22) - v35) >> 32;
      v27 = v22 - v35;
      v29 = 1;
    }

    else
    {
      v29 = 0;
      v28 = (v35 - __PAIR64__(v21, v22)) >> 32;
      v27 = v35 - v22;
    }
  }

  result = v27 * 2.32830644e-10 + v28;
  if ((v29 & ((v28 | v27) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v58 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v8 = v58 * v58;
  v9 = v58;
  v55 = ScaledFloatingField * ScaledFloatingField;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.986005e14 / (v55 * (v55 * v55)));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *(a3 + 48) = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v57 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v56 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v57, &v58, &v56, v16);
  v17 = __sincos_stret(v56);
  v18 = ScaledFloatingField * (v9 * -4.44280763e-10);
  *(a3 + 48) = *(a3 + 48) + v18 * v17.__sinval;
  *(a3 + 56) = v11 + v18 * v17.__cosval * v10;
  v45 = v15 - v18 * v17.__sinval;
  v53 = atan2(sqrt(1.0 - v8) * v17.__sinval, v17.__cosval - v9);
  v19 = v53 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v20 = __sincos_stret(v19 + v19);
  v48 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 16);
  v47 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 14);
  v50 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  v49 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 23);
  v52 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 21);
  v51 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 19);
  v21 = v19 + v47 * v20.__cosval + v48 * v20.__sinval;
  v44 = 1.0 - v9 * v17.__cosval;
  v22 = v20.__cosval * v49 + v50 * v20.__sinval + ScaledFloatingField * ScaledFloatingField * v44;
  v46 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 26);
  v23 = v20.__cosval * v51 + v52 * v20.__sinval + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22) + v46 * v45;
  v24 = __sincos_stret(v21);
  v43 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 25) + -0.0000729211515;
  v25 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20) + v43 * (v45 + a4);
  v26 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v27 = __sincos_stret(v25 + v26 * -0.0000729211515);
  v28 = __sincos_stret(v23);
  v29 = v22 * v24.__sinval * v28.__cosval;
  *a3 = v22 * v24.__cosval * v27.__cosval - v29 * v27.__sinval;
  *(a3 + 8) = v29 * v27.__cosval + v22 * v24.__cosval * v27.__sinval;
  *(a3 + 16) = v22 * v24.__sinval * v28.__sinval;
  v30 = __sincos_stret(v21 + v21);
  sinval = v30.__sinval;
  cosval = v30.__cosval;
  v33 = __sincos_stret(v53);
  v34 = v17.__sinval * (v10 / v44) * (v9 * v33.__cosval + 1.0) / (v44 * v33.__sinval);
  v35 = v34 + (v48 * cosval - v47 * sinval + v48 * cosval - v47 * sinval) * v34;
  v36 = v10 * (v55 * v9 * v17.__sinval) / v44 + (v50 * cosval - v49 * sinval + v50 * cosval - v49 * sinval) * v34;
  v37 = v46 + (v52 * cosval - v51 * sinval + v52 * cosval - v51 * sinval) * v34;
  v38 = v36 * v24.__cosval - v22 * v24.__sinval * v35;
  v39 = v22 * v24.__cosval * v35 + v36 * v24.__sinval;
  v40 = v38 - v29 * v43;
  v41 = v28.__cosval * v39 + v22 * v24.__cosval * v43 - v22 * v24.__sinval * v28.__sinval * v37;
  *(a3 + 24) = v40 * v27.__cosval - v41 * v27.__sinval;
  *(a3 + 32) = v27.__cosval * v41 + v40 * v27.__sinval;
  *(a3 + 40) = v29 * v37 + v39 * v28.__sinval;
  *(a3 + 64) = (*(*a1 + 152))(a1);
  return 1;
}

uint64_t BlueFin::GlPeGalEphemeris::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v58 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v8 = v58 * v58;
  v9 = v58;
  v55 = ScaledFloatingField * ScaledFloatingField;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.98600442e14 / (v55 * (v55 * v55)));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *(a3 + 48) = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v57 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v56 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v57, &v58, &v56, v16);
  v17 = __sincos_stret(v56);
  v18 = ScaledFloatingField * (v9 * -4.44280731e-10);
  *(a3 + 48) = *(a3 + 48) + v18 * v17.__sinval;
  *(a3 + 56) = v11 + v18 * v17.__cosval * v10;
  v45 = v15 - v18 * v17.__sinval;
  v53 = atan2(sqrt(1.0 - v8) * v17.__sinval, v17.__cosval - v9);
  v19 = v53 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v20 = __sincos_stret(v19 + v19);
  v48 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 16);
  v47 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 14);
  v50 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  v49 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 23);
  v52 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 21);
  v51 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 19);
  v21 = v19 + v47 * v20.__cosval + v48 * v20.__sinval;
  v44 = 1.0 - v9 * v17.__cosval;
  v22 = v20.__cosval * v49 + v50 * v20.__sinval + ScaledFloatingField * ScaledFloatingField * v44;
  v46 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 26);
  v23 = v20.__cosval * v51 + v52 * v20.__sinval + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22) + v46 * v45;
  v24 = __sincos_stret(v21);
  v43 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 25) + -0.0000729211515;
  v25 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20) + v43 * (v45 + a4);
  v26 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v27 = __sincos_stret(v25 + v26 * -0.0000729211515);
  v28 = __sincos_stret(v23);
  v29 = v24.__sinval * v22 * v28.__cosval;
  *a3 = v24.__cosval * v22 * v27.__cosval - v29 * v27.__sinval;
  *(a3 + 8) = v29 * v27.__cosval + v24.__cosval * v22 * v27.__sinval;
  *(a3 + 16) = v24.__sinval * v22 * v28.__sinval;
  v30 = __sincos_stret(v21 + v21);
  sinval = v30.__sinval;
  cosval = v30.__cosval;
  v33 = __sincos_stret(v53);
  v34 = v17.__sinval * (v10 / v44) * (v9 * v33.__cosval + 1.0) / (v44 * v33.__sinval);
  v35 = v34 + (v48 * cosval - v47 * sinval + v48 * cosval - v47 * sinval) * v34;
  v36 = v10 * (v55 * v9 * v17.__sinval) / v44 + (v50 * cosval - v49 * sinval + v50 * cosval - v49 * sinval) * v34;
  v37 = v46 + (v52 * cosval - v51 * sinval + v52 * cosval - v51 * sinval) * v34;
  v38 = v36 * v24.__cosval - v24.__sinval * v22 * v35;
  v39 = v24.__cosval * v22 * v35 + v36 * v24.__sinval;
  v40 = v38 - v29 * v43;
  v41 = v28.__cosval * v39 + v24.__cosval * v22 * v43 - v24.__sinval * v22 * v28.__sinval * v37;
  *(a3 + 24) = v40 * v27.__cosval - v41 * v27.__sinval;
  *(a3 + 32) = v27.__cosval * v41 + v40 * v27.__sinval;
  *(a3 + 40) = v29 * v37 + v39 * v28.__sinval;
  *(a3 + 64) = (*(*a1 + 152))(a1);
  return 1;
}

BOOL BlueFin::GlPeBdsEphemeris::GetPvt(uint64_t a1, BlueFin::GlPeGnssTime *a2, uint64_t a3, double a4)
{
  v24[0] = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  BlueFin::GlPeBdsEphemeris::GetBdUncmprsdEph(a1, v24);
  v22[0].i64[0] = &off_2A1F0E4D0;
  v22[0].i64[1] = 0;
  Bds = BlueFin::GlPeGnssTime::GetBds(a2, v22);
  v8 = (*(v22[0].i64[0] + 32))(v22, Bds);
  LODWORD(v9) = v22[0].i32[2];
  v23 = (v9 * 2.32830644e-10 + (v8 % 0x93A80)) * 1000.0;
  memset(v22, 0, sizeof(v22));
  v10 = (*(*a1 + 192))(a1, 0);
  v12 = v10 - 1 < 5 || v10 - 59 < 5;
  SatPos = BlueFin::BdSvStateCompute::GetSatPos(v12, v24, &v23, v22[0].i64);
  if (!SatPos)
  {
    v14 = v22[1].i64[0];
    v15 = vmulq_f64(v22[0], xmmword_298A3B590);
    v16 = vmlaq_n_f64(v22[0], vextq_s8(v15, v15, 8uLL), a4);
    *v15.i8 = vdup_n_s32(a4 != 0.0);
    v17.i64[0] = v15.u32[0];
    v17.i64[1] = v15.u32[1];
    v18 = vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL));
    *a3 = vbslq_s8(v18, v16, v22[0]);
    *(a3 + 16) = v14;
    v19 = vmulq_f64(*(&v22[1] + 8), xmmword_298A3B590);
    *(a3 + 24) = vbslq_s8(v18, vmlaq_n_f64(*(&v22[1] + 8), vextq_s8(v19, v19, 8uLL), a4), *(&v22[1] + 8));
    *(a3 + 40) = *(&v22[2] + 8);
    *(a3 + 56) = v22[3].i64[1];
    *(a3 + 64) = (*(*a1 + 152))(a1);
  }

  return SatPos == 0;
}

uint64_t BlueFin::GlPeEphemeris::isExpired(_DWORD *a1, uint64_t a2)
{
  v2 = a1[6];
  if (v2 == -7200001)
  {
    return (*(*a1 + 248))(a1) == 0;
  }

  v4 = v2;
  v5 = *(a2 + 16);
  if (v2 <= 0xFF9222FE)
  {
    v4 = v2;
  }

  if (v4 > v5)
  {
    return 1;
  }

  v6 = a1[7];
  v7 = v6;
  if (v6 <= 0xFF9222FE)
  {
    v7 = v6;
  }

  return v7 < v5;
}

double BlueFin::BdNavMsgMgr::svd_computeSVSatate_D1(uint64_t a1, double *a2, double *a3)
{
  HIDWORD(v6) = 1083129856;
  LODWORD(v6) = *(a1 + 8);
  v7 = *a2 / 1000.0 - v6;
  v8 = v7 + 604800.0;
  if (v7 >= -302400.0)
  {
    v8 = *a2 / 1000.0 - v6;
  }

  if (v7 <= 302400.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7 + -604800.0;
  }

  BlueFin::BdNavMsgMgr::setEphemerisConstants(&v60, a1);
  v59 = v61;
  v10 = __sincos_stret(*(a1 + 88) + v61 * v9);
  v11 = v10.__sinval * (v10.__sinval * v10.__sinval);
  v12 = v10.__sinval * (v10.__sinval * v11);
  v58 = v76;
  v45 = v80;
  v56 = v76 * (v10.__cosval * (v63 * v10.__sinval) + v62 * v10.__sinval + v64 * v11 + v65 * v11 * v10.__cosval + v66 * v12 + v67 * v12 * v10.__cosval + v68 * (v10.__sinval * (v10.__sinval * v12)));
  v57 = v10.__cosval + v69 * (v10.__sinval * v10.__sinval) + v10.__sinval * v10.__sinval * v70 * v10.__cosval + v71 * (v10.__sinval * v11) + v10.__sinval * v11 * v72 * v10.__cosval + v73 * (v10.__sinval * v12) + v10.__sinval * v12 * v74 * v10.__cosval;
  v13 = v57 * v78 + v56 * v79;
  v14 = v57 * v79 - v56 * v78;
  v15 = v14 * (v13 + v13);
  v16 = v14 * v14 - v13 * v13;
  v54 = *(a1 + 128);
  v55 = *(a1 + 136);
  v17 = v54 * v16 + v55 * v15;
  v18 = v17 * v17 * -0.5 + 1.0;
  v19 = v14 * v17 + v13 * v18;
  v20 = v14 * v18 - v13 * v17;
  v52 = *(a1 + 64);
  v53 = v19;
  v21 = v52 * v57 + 1.0;
  v46 = *(a1 + 144);
  v47 = *(a1 + 152);
  v22 = v75 / v21 + v16 * v46 + v47 * v15;
  v23 = v22 * v20;
  v24 = v22 * v19;
  v50 = *(a1 + 168);
  v51 = v20;
  v49 = *(a1 + 160);
  v48 = *(a1 + 120);
  v25 = *(a1 + 112) + v16 * v49 + v50 * v15 + v48 * v9;
  v26 = __sincos_stret(*(a1 + 96) + v80 * v9 - v81);
  v27 = __sincos_stret(v25);
  *a3 = v23 * v26.__cosval - v24 * v27.__cosval * v26.__sinval;
  a3[1] = v24 * v27.__cosval * v26.__cosval + v23 * v26.__sinval;
  v28 = v21 * (v59 * v21) / v77;
  v29 = v28 + v28;
  v30 = v28 + (v28 + v28) * (v55 * v16 - v54 * v15);
  v31 = (v47 * v16 - v46 * v15) * v29 + v59 * (v52 * v60) / v58 * v56;
  v32 = v31 * v51 - v24 * v30;
  v33 = v23 * v30 + v31 * v53;
  v34 = v48 + v29 * (v50 * v16 - v49 * v15);
  v35 = v32 + -(v24 * v45) * v27.__cosval;
  v36 = v33 * v27.__cosval - v24 * v27.__sinval * v34 + v23 * v45;
  a3[2] = v24 * v27.__sinval;
  a3[3] = v35 * v26.__cosval - v36 * v26.__sinval;
  a3[4] = v26.__cosval * v36 + v35 * v26.__sinval;
  a3[5] = v27.__cosval * (v24 * v34) + v33 * v27.__sinval;
  HIDWORD(v37) = 1083129856;
  LODWORD(v37) = *(a1 + 12);
  v38 = *a2 / 1000.0 - v37;
  v39 = v38 + 604800.0;
  if (v38 >= -302400.0)
  {
    v39 = *a2 / 1000.0 - v37;
  }

  if (v38 <= 302400.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = v38 + -604800.0;
  }

  v41 = *(a1 + 24);
  v42 = *(a1 + 32);
  result = v56 * (v58 * (v82 / v21)) + *(a1 + 16) + v40 * (v41 + v40 * v42);
  v44 = (v57 + v52) * (v59 * (v82 / v21)) + v41 + (v42 + v42) * v40;
  a3[6] = result;
  a3[7] = v44;
  return result;
}

uint64_t BlueFin::BdSvStateCompute::GetSatPos(int a1, uint64_t a2, unint64_t *a3, double *a4)
{
  BlueFin::BdNavMsgMgr::UnpackEphPara(a2, v11);
  if (v11[0])
  {
    if (v11[0])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v8 = *a3 / 1000.0 - (v12 | 0x408F400000000000uLL);
    v9 = v8 + 604800.0;
    if (v8 >= -302400.0)
    {
      v9 = *a3 / 1000.0 - (v12 | 0x408F400000000000uLL);
    }

    if (v8 <= 302400.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8 + -604800.0;
    }

    if (fabs(v10) > 7200.0)
    {
      return 2;
    }

    else
    {
      if (a1 == 1)
      {
        BlueFin::BdNavMsgMgr::svd_computeSVSatate_D2(v11, a3, a4);
      }

      else
      {
        BlueFin::BdNavMsgMgr::svd_computeSVSatate_D1(v11, a3, a4);
      }

      return 0;
    }
  }
}

uint64_t BlueFin::GlPeLtoEphemeris::GetIntegerScaleFactor(BlueFin::GlPeLtoEphemeris *this, unsigned int a2)
{
  if (a2 - 32 >= 5)
  {
    return BlueFin::GlPeGpsEphemerisBase::GetIntegerScaleFactor(this, a2);
  }

  else
  {
    return 1;
  }
}

double BlueFin::GlPeLtoEphemeris::GetFloatingScaleFactor(BlueFin::GlPeLtoEphemeris *this, int a2)
{
  if (a2 - 6) < 0x15 && ((0x1DFF8Fu >> (a2 - 6)))
  {
    return dbl_298A3BE80[(a2 - 6)];
  }

  v4 = (*(*this + 192))(this, 32);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (a2 > 11)
      {
        if (a2 == 12)
        {
          return 3.57157734e-13;
        }

        if (a2 != 23)
        {
          return 1.0;
        }
      }

      else
      {
        if (a2 == 10)
        {
          return 0.0000000149011612;
        }

        if (a2 != 11)
        {
          return 1.0;
        }
      }

      return 0.03125;
    }

    if (v4 != 3)
    {
      goto LABEL_35;
    }

    if (a2 <= 11)
    {
      goto LABEL_13;
    }

    if (a2 != 12)
    {
      goto LABEL_27;
    }

    return 9.143238e-11;
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (a2 > 11)
        {
          if (a2 == 12)
          {
            return 2.85726187e-12;
          }

LABEL_27:
          if (a2 == 23)
          {
            return 0.0625;
          }

          return 1.0;
        }

LABEL_13:
        if (a2 == 10)
        {
          return 4.65661287e-10;
        }

        if (a2 == 11)
        {
          return 0.0625;
        }

        return 1.0;
      }

LABEL_35:
      GlCustomLog(11, "GlPeLtoEphemeris::GetFloatingScaleFactor: Illegal scale group index:%d\n", v4);
      DeviceFaultNotify("glpe_ephmgr.cpp", 3837, "GetFloatingScaleFactor", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3837, "0");
    }

    return BlueFin::GlPeGpsEphemerisBase::GetFloatingScaleFactor(v4, a2);
  }
}

uint64_t BlueFin::GlPeLtoEphemeris::isSignedField(BlueFin::GlPeLtoEphemeris *this, unsigned int a2)
{
  if (a2 - 32 >= 6)
  {
    return BlueFin::GlPeGpsEphemerisBase::isSignedField(this, a2);
  }

  else
  {
    return (0x10u >> (a2 - 32)) & 1;
  }
}

uint64_t BlueFin::GlPeBdsEphMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = &unk_2A1F0E970;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 48) = 0u;
    v5 = 18;
    v6 = 65;
  }

  else
  {
    v7 = *(a1 + 12);
    v3 = &unk_2A1F0F470;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 92) = 0u;
    v6 = (16 * v7) | 2;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 48) = 0u;
    v5 = 19;
  }

  *(a2 + 8) = v6;
  *(a2 + 9) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = vdup_n_s32(0xFF9222FF);
  *a2 = v3;
  return a2;
}

uint64_t BlueFin::BdNavMsgMgr::EphRangeCheck(_DWORD *a1, int a2)
{
  v4 = a1[3];
  v5 = a1[24];
  *&v6 = ldexp(3.14159265, -31);
  v7 = *&v6 * v5;
  LODWORD(v6) = a1[20];
  v8 = v6;
  *&v9 = ldexp(1.0, -33);
  v10 = *&v9 * v8;
  LODWORD(v9) = a1[21];
  v11 = ldexp(1.0, -19) * v9;
  v12 = v10 > 0.03 || v10 < 0.0;
  v13 = v4 & 1 | 2;
  if (!v12)
  {
    v13 = v4 & 1;
  }

  v15 = v7 < 1.1 && v7 > 0.8 || a2 == 1;
  v16 = v13 | 8;
  if (!v15)
  {
    v13 |= 8u;
  }

  if (a2 != 1)
  {
    v16 = v13;
  }

  if (v7 >= 0.13 || v7 < 0.0)
  {
    v13 = v16;
  }

  if (v11 >= 6700.0 || v11 <= 5100.0)
  {
    v13 |= 4u;
  }

  if ((8 * a1[22]) > 0x93A78)
  {
    v13 |= 0x20u;
  }

  if ((8 * a1[5]) <= 0x93A78)
  {
    return v13;
  }

  else
  {
    return v13 | 0x40;
  }
}

double BlueFin::GlPeBdsEphemeris::ComputeAgeS(BlueFin::GlPeBdsEphemeris *this, const BlueFin::GlPeGnssTime *a2, int a3)
{
  v32 = &off_2A1F0E4D0;
  v33 = 0;
  Bds = BlueFin::GlPeGnssTime::GetBds(a2, &v32);
  (v32[4])(&v32, Bds);
  v6 = (*(*this + 192))(this, 28);
  v7 = *this + 192;
  if (a3)
  {
    v8 = 18;
  }

  else
  {
    v8 = 7;
  }

  v9 = (*(*this + 192))(this, v8);
  v10 = (*(*this + 232))(this, v8);
  v12 = v11 * v9;
  *v10.i64 = v12;
  v29 = &off_2A1F0E4D0;
  *v13.i64 = v12 - trunc(v12);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = *vbslq_s8(vnegq_f64(v14), v13, v10).i64;
  if (v15 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v16 = v15 * 4294967300.0 + 0.5;
  v17 = v16;
  if (v16 >= 4294967300.0)
  {
    v17 = -1;
  }

  v30 = v17;
  v31 = v12 + 604800 * v6 + 820108814;
  v29 = &off_2A1F0E4D0;
  if ((*(*this + 80))(this))
  {
    v18 = v30;
    v19 = v31;
  }

  else
  {
    v20 = (v29[4])(&v29);
    LODWORD(v22) = v30;
    *v23.i64 = v22 * 2.32830644e-10;
    *v20.i64 = *v23.i64 + (v21 % 0x93A80);
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v32, v20, v34, v23);
    v18 = v34[0];
    v19 = v34[1];
  }

  v24 = v33;
  v25 = HIDWORD(v33);
  if (v19 | v18)
  {
    v27 = HIDWORD(v33) - v19;
    if (v33 < __PAIR64__(v19, v18))
    {
      v25 = (__PAIR64__(v19, v18) - v33) >> 32;
      v24 = v18 - v33;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v25 = (__PAIR64__(v27, v33) - v18) >> 32;
      v24 = v33 - v18;
    }
  }

  else
  {
    v26 = 0;
  }

  result = v24 * 2.32830644e-10 + v25;
  if ((v26 & ((v25 | v24) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetOrbitType(BlueFin::GlPeBdsEphemeris *this)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 17);
  v3 = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 22) > 0.2;
  if (ScaledFloatingField <= 6400.0)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

uint64_t BlueFin::GlPeNicEphMgr::validateCandidateEphemeris(BlueFin::GlPeNicEphMgr *this, const BlueFin::GlPeEphemeris *a2, BlueFin::GlPeEphemeris *a3)
{
  (*(*a3 + 136))(&v65, a3);
  v5 = (*(*a3 + 192))(a3, 7);
  v6 = (*(*a3 + 232))(a3, 7) * v5;
  v7 = (*(*a3 + 192))(a3, 18);
  v8 = (*(*a3 + 232))(a3, 18) * v7;
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 17);
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 15);
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 22);
  v12 = (*(*a3 + 256))(a3);
  v13 = ScaledFloatingField > 8192.0 || ScaledFloatingField < 2530.0;
  v14 = v10 > 0.03 || v10 < 0.0;
  v15 = v11 > dbl_298A3A820[v12 == 1] || v11 < dbl_298A3A810[v12 == 1];
  v16 = (*(*a3 + 56))(a3);
  v18 = v6 > 0x93A70 || v8 > 0x93A70 || v13;
  v19 = (v18 | v14 | v15) ^ 1 | v16;
  if (v19)
  {
    goto LABEL_24;
  }

  v20 = *(*(this + 2) + 2568);
  if (v6 > 0x93A70)
  {
    v21 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(11, "EphMgr(%s,%d)[%u]: Toc out of range (%u). Bad decode.\n", v21, v65, v20, v6);
  }

  if (v8 > 0x93A70)
  {
    v53 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(11, "EphMgr(%s,%d)[%u]: Toe out of range (%u). Bad decode.\n", v53, v65, v20, v8);
    if (!v13)
    {
LABEL_21:
      if (!v14)
      {
        goto LABEL_22;
      }

LABEL_57:
      v55 = BlueFin::GNSS2STR(*(this + 3));
      GlCustomLog(11, "EphMgr(%s,%d)[%u]: Ecc out of range (%.8g). Bad decode.\n", v55, v65, v20, v10);
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if (!v13)
  {
    goto LABEL_21;
  }

  v54 = BlueFin::GNSS2STR(*(this + 3));
  GlCustomLog(11, "EphMgr(%s,%d)[%u]: ASqrt out of range (%.8g). Bad decode.\n", v54, v65, v20, ScaledFloatingField);
  if (v14)
  {
    goto LABEL_57;
  }

LABEL_22:
  if (v15)
  {
LABEL_23:
    v22 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(11, "EphMgr(%s,%d)[%u]: I0 out of range (%.8g). Bad decode.\n", v22, v65, v20, v11);
  }

LABEL_24:
  v23 = a2;
  if (!a2)
  {
    return v19 & 1;
  }

  v24 = *(a2 + 8) & 0xF;
  if ((*(a2 + 8) & 0xF) == 0)
  {
    return v19 & 1;
  }

  v25 = v19 ^ 1;
  BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, &v60);
  isExpired = BlueFin::GlPeEphemeris::isExpired(a3, &v60);
  if (v24 == 1)
  {
    v60.n128_u16[4] = 3937;
    v61 = v63;
    v62 = vdup_n_s32(0xFF9222FF);
    v27 = *(a3 + 3);
    v63[0] = *(a3 + 2);
    v63[1] = v27;
    v64[0] = *(a3 + 4);
    *(v64 + 12) = *(a3 + 76);
    v60.n128_u64[0] = &unk_2A1F0DCC8;
    v28 = BlueFin::GlPeNicEphemeris::CompareEphSetFields(&v60, a2);
    LOBYTE(v19) = v19 | (v28 | isExpired) ^ 1;
    if ((*(*this + 264))(this, &v65))
    {
      if (v28)
      {
        if (BlueFin::GlPeNicEphemeris::CompareEphSetFields(a2, &v60))
        {
          v29 = (*(*a2 + 192))(a2, 0);
          if (v29 == (*(v60.n128_u64[0] + 192))(&v60, 0))
          {
            v30 = (*(*a2 + 192))(a2, 4);
            if (v30 == (*(v60.n128_u64[0] + 192))(&v60, 4))
            {
              v31 = (*(*a2 + 208))(a2, 6);
              if (v31 == (*(v60.n128_u64[0] + 208))(&v60, 6))
              {
                v32 = (*(*a2 + 192))(a2, 29);
                if (v32 == (*(v60.n128_u64[0] + 192))(&v60, 29))
                {
                  v33 = (*(*a2 + 192))(a2, 7);
                  if (v33 == (*(v60.n128_u64[0] + 192))(&v60, 7))
                  {
                    v34 = (*(*a2 + 208))(a2, 8);
                    if (v34 == (*(v60.n128_u64[0] + 208))(&v60, 8))
                    {
                      v35 = (*(*a2 + 208))(a2, 9);
                      if (v35 == (*(v60.n128_u64[0] + 208))(&v60, 9))
                      {
                        v36 = (*(*a2 + 208))(a2, 10);
                        if (v36 == (*(v60.n128_u64[0] + 208))(&v60, 10))
                        {
                          v37 = (*(*a2 + 208))(a2, 11);
                          if (v37 == (*(v60.n128_u64[0] + 208))(&v60, 11))
                          {
                            v38 = (*(*a2 + 208))(a2, 12);
                            if (v38 == (*(v60.n128_u64[0] + 208))(&v60, 12))
                            {
                              v39 = (*(*a2 + 208))(a2, 13);
                              if (v39 != (*(v60.n128_u64[0] + 208))(&v60, 13))
                              {
                                goto LABEL_59;
                              }

                              v40 = (*(*a2 + 208))(a2, 14);
                              if (v40 != (*(v60.n128_u64[0] + 208))(&v60, 14))
                              {
                                goto LABEL_59;
                              }

                              v41 = (*(*a2 + 192))(a2, 15);
                              if (v41 != (*(v60.n128_u64[0] + 192))(&v60, 15))
                              {
                                goto LABEL_59;
                              }

                              v42 = (*(*a2 + 208))(a2, 16);
                              if (v42 != (*(v60.n128_u64[0] + 208))(&v60, 16))
                              {
                                goto LABEL_59;
                              }

                              v43 = (*(*a2 + 192))(a2, 17);
                              if (v43 != (*(v60.n128_u64[0] + 192))(&v60, 17))
                              {
                                goto LABEL_59;
                              }

                              v44 = (*(*a2 + 192))(a2, 18);
                              if (v44 != (*(v60.n128_u64[0] + 192))(&v60, 18))
                              {
                                goto LABEL_59;
                              }

                              v45 = (*(*a2 + 208))(a2, 19);
                              if (v45 == (*(v60.n128_u64[0] + 208))(&v60, 19) && (v46 = (*(*a2 + 208))(a2, 20), v46 == (*(v60.n128_u64[0] + 208))(&v60, 20)) && (v47 = (*(*a2 + 208))(a2, 21), v47 == (*(v60.n128_u64[0] + 208))(&v60, 21)) && (v48 = (*(*a2 + 208))(a2, 22), v48 == (*(v60.n128_u64[0] + 208))(&v60, 22)) && (v49 = (*(*a2 + 208))(a2, 23), v49 == (*(v60.n128_u64[0] + 208))(&v60, 23)) && (v50 = (*(*a2 + 208))(a2, 24), v50 == (*(v60.n128_u64[0] + 208))(&v60, 24)) && (v51 = (*(*a2 + 208))(a2, 25), v51 == (*(v60.n128_u64[0] + 208))(&v60, 25)))
                              {
                                v23 = a2;
                                v52 = (*(*a2 + 208))(a2, 26);
                                if (v52 == (*(v60.n128_u64[0] + 208))(&v60, 26))
                                {
                                  LOBYTE(v19) = 1;
                                  (*(v60.n128_u64[0] + 216))(&v60, 2, 1);
                                  goto LABEL_63;
                                }
                              }

                              else
                              {
LABEL_59:
                                v23 = a2;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v56 = (*(*v23 + 184))(v23);
        v57 = BlueFin::GNSS2STR(*(this + 3));
        if (v56)
        {
          GlCustomLog(14, "EphMgr(%s,%d): Compare with existing external eph which is verified did not match.  Reject this new broadcast.\n", v57, v65);
          LOBYTE(v19) = 0;
        }

        else
        {
          GlCustomLog(14, "EphMgr(%s,%d): Compare with existing external eph which is unverified did not match. Possible bad decode.\n", v57, v65);
          LOBYTE(v19) = 0;
          v25 = 1;
        }
      }
    }
  }

LABEL_63:
  if ((v25 | isExpired))
  {
    (*(*this + 288))(this, &v65, 0);
    LOBYTE(v19) = v19 & (isExpired ^ 1);
  }

  return v19 & 1;
}

uint64_t BlueFin::GlPeNicEphemeris::GetIntegerScaleFactor(BlueFin::GlPeNicEphemeris *this, unsigned int a2)
{
  if (a2 > 0x20)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0x13800001FLL) != 0)
  {
    return 1;
  }

  if (((1 << a2) & 0x40080) == 0)
  {
LABEL_6:
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1139, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1139, "0");
  }

  return 16;
}

unint64_t BlueFin::GlPeNicEphemeris::isSignedField(BlueFin::GlPeNicEphemeris *this, unsigned int a2)
{
  if (a2 >= 0x21 || ((0x13FFFFFDFuLL >> a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1010, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1010, "0");
  }

  return (0x7F97F40uLL >> a2) & 1;
}

double BlueFin::GlPeNicEphemeris::GetFloatingScaleFactor(BlueFin::GlPeNicEphemeris *this, int a2)
{
  result = 1.0;
  if ((a2 - 6) <= 0x14)
  {
    return dbl_298A3AA50[(a2 - 6)];
  }

  return result;
}

uint64_t BlueFin::GlPeNicEphemeris::GetCmpSignedField(BlueFin::GlPeNicEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 6:
      return ((v2[2] << 18) >> 24);
    case 8:
      return ((v2[1] << 22) >> 24);
    case 9:
      return (v2[1] >> 10);
    case 10:
      v10 = *v2;
      v9 = v2[1];
      goto LABEL_20;
    case 11:
      return ((8 * v2[6]) >> 17);
    case 12:
      HIDWORD(v12) = v2[2];
      LODWORD(v12) = v2[3];
      v11 = v12 >> 6;
      goto LABEL_21;
    case 13:
      return v2[7];
    case 14:
      HIDWORD(v13) = v2[3];
      LODWORD(v13) = v2[4];
      v4 = v13 >> 8;
      goto LABEL_18;
    case 16:
      return ((v2[4] << 7) >> 17);
    case 19:
      HIDWORD(v5) = v2[4];
      LODWORD(v5) = v2[5];
      v4 = v5 >> 10;
      goto LABEL_18;
    case 20:
      v7 = v2[10];
      v6 = v2[11];
      goto LABEL_10;
    case 21:
      return ((32 * v2[5]) >> 17);
    case 22:
      return (__PAIR64__(v2[13], v2[14]) >> 26);
    case 23:
      HIDWORD(v8) = v2[5];
      LODWORD(v8) = v2[6];
      v4 = v8 >> 12;
LABEL_18:
      result = (v4 >> 17);
      break;
    case 24:
      v7 = v2[11];
      v6 = v2[12];
LABEL_10:
      result = (__PAIR64__(v7, v6) >> 16);
      break;
    case 25:
      v10 = v2[12];
      v9 = v2[13];
LABEL_20:
      v11 = __PAIR64__(v10, v9) >> 16;
LABEL_21:
      result = (v11 >> 10);
      break;
    case 26:
      result = ((v2[6] << 18) >> 18);
      break;
    default:
      DeviceFaultNotify("glpe_nicephmgr.cpp", 1042, "GetCmpSignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1042, "0");
  }

  return result;
}

BOOL BlueFin::GlPeNicEphemeris::isSimulated(BlueFin::GlPeNicEphemeris *this)
{
  if ((*(*this + 192))(this, 3))
  {
    return 0;
  }

  v3 = (*(*this + 208))(this, 11);
  v4 = (*(*this + 208))(this, 23);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = v5;
  }

  if (!(*(*this + 208))(this, 21))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 19))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 14))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 16))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 26))
  {
    ++v6;
  }

  if ((*(*this + 208))(this, 25))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  return v7 > 5u;
}

double BlueFin::GlPeNicEphemeris::ComputeAgeS(BlueFin::GlPeNicEphemeris *this, const BlueFin::GlPeGnssTime *a2, int a3)
{
  v34 = &off_2A1F0DFC8;
  v35 = 0;
  Nic = BlueFin::GlPeGnssTime::GetNic(a2, &v34);
  (v34[4])(&v34, Nic);
  v6 = (*(*this + 192))(this, 28);
  v7 = *this + 192;
  if (a3)
  {
    v8 = 18;
  }

  else
  {
    v8 = 7;
  }

  v9 = (*(*this + 192))(this, v8);
  v10 = (*(*this + 232))(this, v8);
  v12 = v11 * v9;
  *v10.i64 = v12;
  v31 = &off_2A1F0DFC8;
  *v13.i64 = v12 - trunc(v12);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = *vbslq_s8(vnegq_f64(v14), v13, v10).i64;
  if (v15 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v16 = v15 * 4294967300.0 + 0.5;
  v17 = v16;
  if (v16 >= 4294967300.0)
  {
    v17 = -1;
  }

  v32 = v17;
  v33 = v12 + 604800 * v6 + 619315200;
  v31 = &off_2A1F0DFC8;
  if ((*(*this + 80))(this))
  {
    v18 = (v31[4])(&v31);
    v37 = v32;
    v38 = v18;
    v19 = (v34[4])(&v34);
    v36[0] = v35;
    v36[1] = v19;
    BlueFin::GlTimePoint::resolveAmbiguity(&v37, v36, 0x24EA0000u);
    v20 = (v34[3])(&v34, v38);
    v21 = v37;
  }

  else
  {
    v22 = (v31[4])(&v31);
    LODWORD(v24) = v32;
    *v25.i64 = v24 * 2.32830644e-10;
    *v22.i64 = *v25.i64 + (v23 % 0x93A80);
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v34, v22, &v37, v25);
    v21 = v37;
    v20 = v38;
  }

  v32 = v21;
  v33 = v20;
  v26 = v35;
  v27 = HIDWORD(v35);
  v28 = v20 | v21;
  if (v20 | v21)
  {
    if (v35 < __PAIR64__(v20, v21))
    {
      v27 = (__PAIR64__(v20, v21) - v35) >> 32;
      v26 = v21 - v35;
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v27 = (v35 - __PAIR64__(v20, v21)) >> 32;
      v26 = v35 - v21;
    }
  }

  if ((v28 & ((v27 | v26) != 0)) != 0)
  {
    v29 = -(v26 * 2.32830644e-10 + v27);
  }

  else
  {
    v29 = v26 * 2.32830644e-10 + v27;
  }

  if ((*(*this + 144))(this) == 3 && (*(*this + 192))(this, 32) && (*(*this + 192))(this, 5) <= 0x17 && v29 >= 7080.0)
  {
    (*(*this + 216))(this, 32, 1);
  }

  return v29;
}

uint64_t BlueFin::GlPeNicEphemeris::GetCurveFitIntervalS(BlueFin::GlPeNicEphemeris *this)
{
  if ((*(*this + 192))(this, 5) >= 0x18)
  {
    return 14400;
  }

  else
  {
    return 21600;
  }
}

uint64_t *BlueFin::GlPeNicEphemeris::PutCmpUnsignedField(BlueFin::GlPeNicEphemeris *this, unsigned int a2, unsigned int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if (a2 >= 0x21 || ((0x13FFFFFDFuLL >> a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1087, "PutCmpUnsignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1087, "0");
  }

  v7 = dword_298A3A938[a2];
  v8 = byte_298A3A9BC[a2];
  BlueFin::GlBitBuffer::Position(v10, v7);
  return BlueFin::GlBitBuffer::PutU(v10, a3, v8);
}

uint64_t BlueFin::GlPeNicEphemeris::GetSrc(BlueFin::GlPeNicEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 905, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 905, "false");
  }

  return dword_298A3A830[v1];
}

uint64_t BlueFin::GlPeOscMgr::FromSlogEntry(BlueFin::GlPeOscMgr *this, BlueFin::GlSysLogEntry *a2, BlueFin::GlPeOscMgr *a3, unsigned int a4)
{
  if (!this)
  {
    DeviceFaultNotify("glpe_oscmgr.cpp", 318, "FromSlogEntry", "pEntry");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_oscmgr.cpp", 318, "pEntry");
  }

  v5 = a3;
  v16 = &unk_2A1F108B8;
  result = BlueFin::GlPeOscData::Deserialize(&v16, this);
  if (result)
  {
    v8 = v18;
    if (v8 >= 0)
    {
      v9 = v18;
    }

    else
    {
      v9 = -v8;
    }

    v10 = v17;
    if (v10 >= 0)
    {
      LOWORD(v11) = v17;
    }

    else
    {
      v11 = -v10;
    }

    if (v9 > 0x1770 || (v11 >> 2) > 0x6BCu)
    {
      return GlCustomLog(14, "OSC_STORE not read :Warning! Out of range osc offset values found %hdppb(%hdunc).Osc values from NVMEM not updated\n");
    }

    else
    {
      *(a2 + 5) = v18;
      *(a2 + 6) = v19;
      v12 = v20;
      v13 = v21;
      *(a2 + 1) = v10 + v5;
      *(a2 + 12) = v12;
      *(a2 + 7) = v13;
      if (a4 - 1 <= 0x17123FF)
      {
        v14 = a4 / 0x93A80;
        v15 = v13 - 1000 * (a4 % 0x93A80);
        *(a2 + 7) = v15;
        if (v15 >= 0x240C8400)
        {
          *(a2 + 7) = v15 - 604800000;
          LOWORD(v14) = v14 + 1;
        }

        *(a2 + 12) = v12 - v14;
      }

      return GlCustomLog(14, "OSC_STORE read %hdppb(%hdunc)[%u,%hu] + API %dppb(0unc)[%s-%u,0] = %hdppb(%hdunc)[%u,%hu]\n", v10, v8, v13);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeOscData::Deserialize(BlueFin::GlPeOscData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 71 && *(a2 + 12) == 3;
  v3 = v2;
  if (v2)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 297);
  }

  return v3;
}

uint64_t BlueFin::GlSysLogEntry::GetS16(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 2 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 581, "GetS16", "m_sReadIdx + sizeof(GlIntS16) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 581, "m_sReadIdx + sizeof(GlIntS16) <= m_sDataSize");
  }

  v2 = (*(*this + 24))(this);
  v3 = *(this + 10);
  *(this + 10) = v3 + 1;
  v4 = *(v2 + v3);
  v5 = (*(*this + 24))(this);
  v6 = *(this + 10);
  *(this + 10) = v6 + 1;
  return (v4 | (*(v5 + v6) << 8));
}

uint64_t BlueFin::GlPeTimeManager::GetTime@<X0>(BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlGpsTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v24 = 0.0;
  v8 = (*(*a2 + 32))(a2);
  v9 = BlueFin::GlPeTimeManager::handleGps1023WeekRollovers(this, v8 / 0x93A80);
  v12 = (*(*a2 + 32))(a2);
  LODWORD(v11) = *(a2 + 2);
  *v12.i64 = v11 * 2.32830644e-10 + (v10 % 0x93A80);
  v21 = &off_2A1F0B5F0;
  *v13.i64 = *v12.i64 - trunc(*v12.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = *vbslq_s8(vnegq_f64(v14), v13, v12).i64;
  if (v15 < 0.0 || v15 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v17 = v15 * 4294967300.0 + 0.5;
  v18 = v17;
  if (v17 >= 4294967300.0)
  {
    v18 = -1;
  }

  v22 = v18;
  v23 = *v12.i64 + 604800 * v9;
  v21 = &off_2A1F0B5F0;
  v20[0] = v18;
  v20[1] = v23;
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 0, v20, &v24);
  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v24, a3, a4);
}

uint64_t BlueFin::GlPeOscMgr::Update(uint64_t this, int a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6)
{
  if (*(this + 40) != -7200001 && a2 == 0)
  {
    return this;
  }

  v7 = this;
  v8 = *(this + 10);
  v9 = *(this + 10);
  v10 = *(this + 16);
  SleepTimeSec = BlueFin::GlPeTimeManager::GetSleepTimeSec(v10, a3, a4, a5, a6);
  v17 = SleepTimeSec;
  v18 = *(v7 + 24);
  if (*(v7 + 24) || *(v7 + 28))
  {
    if (*(v10 + 644))
    {
      v12.i32[0] = *(v7 + 28);
      *v12.i64 = v12.u64[0] * 0.001;
      v33[0].n128_u64[0] = &off_2A1F0B5F0;
      *v13.i64 = *v12.i64 - trunc(*v12.i64);
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v13.i64[0] = vbslq_s8(vnegq_f64(v19), v13, v12).i64[0];
      if (*v13.i64 < 0.0 || *v13.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v21 = *v13.i64 * 4294967300.0 + 0.5;
      v22 = v21;
      if (v21 >= 4294967300.0)
      {
        v22 = -1;
      }

      v33[0].n128_u32[2] = v22;
      v33[0].n128_u32[3] = *v12.i64 + 604800 * v18;
      v33[0].n128_u64[0] = &off_2A1F0B5F0;
      BlueFin::GlPeTimeManager::GetTime(v10, v33, 1, v34);
      v23 = 0;
      if (v35 != -1)
      {
        v13.i64[0] = 0x41EFFFFFFFE00000;
        if (v36 != 4294967300.0)
        {
          if (*(v7 + 10) > 0x62u)
          {
            v23 = 0;
          }

          else
          {
            BlueFin::GlPeTimeManager::GetTime(*(v7 + 16), 1, v33);
            *v12.i64 = BlueFin::GlPeGnssTime::operator-(v33, v34);
            v23 = *v12.i64 > 0.0;
            if (*v12.i64 > 0.0)
            {
              v24 = 98;
              v13.i64[0] = 0x408C200000000000;
              if (*v12.i64 > 900.0)
              {
                if (*(v7 + 10) <= 98)
                {
                  v25 = 98;
                }

                else
                {
                  v25 = *(v7 + 10);
                }

                *v13.i64 = (*v12.i64 + -900.0) * 0.100000001;
                v15.i64[0] = 0xC1F0000000000000;
                *v16.i64 = *v13.i64 + trunc(*v13.i64 * 2.32830644e-10) * -4294967300.0;
                v26.f64[0] = NAN;
                v26.f64[1] = NAN;
                v14 = vnegq_f64(v26);
                v16 = vbslq_s8(v14, v16, v13);
                if (*v13.i64 > 4294967300.0)
                {
                  v13.i64[0] = v16.i64[0];
                }

                if (*v13.i64 < -4294967300.0)
                {
                  *v15.i64 = -*v13.i64;
                  *v16.i64 = trunc(*v13.i64 * -2.32830644e-10);
                  *v13.i64 = -(*v13.i64 - *v16.i64 * -4294967300.0);
                  v13 = vbslq_s8(v14, v13, v15);
                  *v13.i64 = -*v13.i64;
                }

                *v14.i64 = -*v13.i64;
                if (*v13.i64 < 0.0)
                {
                  v27 = --*v13.i64;
                }

                else
                {
                  LOWORD(v27) = *v13.i64;
                }

                v28 = (v25 + v27);
                if (v28 >= 301)
                {
                  LOWORD(v28) = 301;
                }

                v24 = v28 + 80 * (*v12.i64 / 0x24EA00);
              }

              *(v7 + 10) = v24;
            }
          }
        }
      }

      v9 = *(v7 + 10);
      if (v23 || (v17 - 900) < 0xFFFFFC7D)
      {
        if (v23)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }
    }

    else if ((SleepTimeSec - 900) < 0xFFFFFC7D)
    {
      goto LABEL_47;
    }

    if (v9 < 0x63)
    {
      goto LABEL_42;
    }

LABEL_47:
    if (v9 <= 301)
    {
      v29 = 301;
    }

    else
    {
      v29 = v9;
    }

    v30 = 78;
    goto LABEL_51;
  }

  if ((SleepTimeSec - 1) >= 0xB71)
  {
    goto LABEL_47;
  }

LABEL_42:
  if (v9 <= 98)
  {
    v29 = 98;
  }

  else
  {
    v29 = v9;
  }

  v30 = 89;
LABEL_51:
  *(v7 + 10) = v29;
  v31 = *(v7 + 16);
  v32 = *(v31 + 2568);
  if (v32 == -7200001)
  {
    v12.i64[0] = *(v31 + 2624);
    LODWORD(v32) = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v32, v12, v13, v14, *v15.i64, v16);
  }

  *(v7 + 40) = v32;
  return GlCustomLog(14, "OSC_UPDATE read %hdppb (%hd)(%hd) OscDataFresh %c\n", *(v7 + 2), v29, v8, v30);
}

uint64_t BlueFin::GlPeTimeManager::GetSleepTimeSec(BlueFin::GlPeTimeManager *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  a2.i64[0] = *(this + 319);
  if (*a2.i64 <= 0.0)
  {
    return 0;
  }

  *a2.i64 = *a2.i64 * 0.001 + 0.5;
  *a5.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = vnegq_f64(v5);
  a5.i64[0] = vbslq_s8(v6, a5, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a5.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a4.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v6, a2, a4).i64;
  }

  if (*a2.i64 < 0.0)
  {
    v7 = --*a2.i64;
  }

  else
  {
    v7 = *a2.i64;
  }

  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t BlueFin::GlPeTimeManager::handleGps1023WeekRollovers(BlueFin::GlPeTimeManager *this, unsigned int a2)
{
  if (a2 <= 0x3FF)
  {
    v2 = *(this + 3424);
    if (v2 == 255)
    {
      DeviceFaultNotify("glpe_timemgr.cpp", 4922, "handleGps1023WeekRollovers", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 4922, "false");
    }

    v3 = a2 | (v2 << 10);
    if (*(this + 1713) <= v3)
    {
      LOWORD(a2) = v3;
    }

    else
    {
      LOWORD(a2) = v3 + 1024;
    }
  }

  return a2;
}

void BlueFin::GlPeTimeManager::dateTimeToLms(uint64_t a1, int a2, unsigned int *a3, double *a4)
{
  if (*(a1 + 2576))
  {
    v16 = 0;
    BlueFin::GlPeGnssTime::getDateTime((a1 + 2608), a2, &v16);
    v7 = *a3;
    v8 = a3[1];
    if (v16)
    {
      v10 = v8 - HIDWORD(v16);
      if (__PAIR64__(v8, v7) < v16)
      {
        v13 = HIDWORD(v16) - v8;
        v11 = v16 >= v7;
        v7 = v16 - v7;
        v14 = !v11;
        v8 = v13 - v14;
        v9 = 1;
      }

      else
      {
        v9 = 0;
        v11 = v7 >= v16;
        v7 -= v16;
        v12 = !v11;
        v8 = v10 - v12;
      }
    }

    else
    {
      v9 = 0;
    }

    v15 = v7 * 2.32830644e-10 + v8;
    if ((v9 & ((v8 | v7) != 0)) != 0)
    {
      v15 = -v15;
    }

    *a4 = *(a1 + 2624) + v15 * 1000.0;
  }
}

uint64_t BlueFin::GlPeTimeManager::commonGnssToLms@<X0>(BlueFin::GlPeTimeManager *this@<X0>, double a2@<D0>, int a3@<W1>, uint64_t a4@<X8>)
{
  result = BlueFin::GlPeTimeManager::GetTime(this, a2, 0, a4);
  if (a3)
  {
    if (*(a4 + 8) != -1 && *(a4 + 24) != 4294967300.0)
    {
      v9 = *(this + 342);
      if (v9 != 4294967300.0)
      {
        v10 = *(this + 341);
        v11 = a2 - *(this + 340);
        v12 = *(this + 4);
        v13 = *(v12 + 2) * 0.000000001;
        v14 = *(v12 + 10) * 0.000000001;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
          v9 = *(this + 342);
        }

        *(a4 + 16) = *(a4 + 16) + (v10 + v11 * v13 * 0.001) * 1000.0;
        *(a4 + 24) = v9 + fabs(v11) * 1000.0 * (v14 + 0.000000005);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded(_BYTE *a1, int a2, uint64_t a3)
{
  result = (*(*a1 + 40))(a1, a3);
  if (a2 && result == 2)
  {
    v7 = 0;
LABEL_7:
    result = (*(*a1 + 32))(a1, a3, v7);
    goto LABEL_8;
  }

  if ((a2 & 1) == 0 && !result)
  {
    v7 = 2;
    goto LABEL_7;
  }

LABEL_8:
  if (a1[2272] == 1 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = (*(*a1 + 24))(a1, 0, 0);
  }

  a1[2272] = 0;
  return result;
}

uint64_t BlueFin::GlPeAlmMgr::Eph2Alm(BlueFin::GlPeAlmMgr *this, const BlueFin::GlPeEphemeris *a2)
{
  result = (*(*a2 + 192))(a2, 27);
  if (result)
  {
    if (*(*(this + 56) + 2576))
    {
      v5 = *(a2 + 8) >> 4;
      (*(*a2 + 136))(v24, a2);
      v25 = v5;
      v6 = v24[0].n128_u8[0];
      v26 = v24[0].n128_u8[0];
      result = BlueFin::GlPeAlmMgr::IsFresh(this, &v25);
      if ((result & 1) == 0)
      {
        Time = BlueFin::GlPeTimeManager::GetTime(*(this + 56), 1, v24);
        if (v5 != 2 || (result = (*(*a2 + 152))(a2, Time), result == 3) && ((*(*(*(this + 54) + 120) + ((v6 >> 3) & 0x1C)) >> (v6 & 0x1F)) & 1) != 0)
        {
          BlueFin::GlPeEphemeris::GetEphTime(a2, v24, v23);
          BlueFin::GlPeEphemeris::GetEphTime(a2, v24, v22);
          v8 = BlueFin::GlPeGnssTime::operator-(v23, v22);
          AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, v5, v6);
          v20 = &off_2A1F0B5F0;
          v21 = 0;
          BlueFin::GlPeGnssTime::GetGps(v23, &v20);
          *(AlmReference + 104) = v5;
          *(AlmReference + 108) = v6;
          *AlmReference = BlueFin::GlPeAlmanacPlainOldData::Gnss2almId(v5, v6);
          *(AlmReference + 2) = (*(*a2 + 192))(a2, 3);
          *(AlmReference + 8) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 15);
          v13 = (v20[4])(&v20);
          LODWORD(v12) = v21;
          *v13.i64 = v12 * 2.32830644e-10 + (v11 % 0x93A80);
          *v14.i64 = *v13.i64 + trunc(*v13.i64 * 2.32830644e-10) * -4294967300.0;
          v15.f64[0] = NAN;
          v15.f64[1] = NAN;
          v16 = vnegq_f64(v15);
          *&v17 = vbslq_s8(v16, v14, v13).u64[0];
          if (*v13.i64 > 4294967300.0)
          {
            *v13.i64 = v17;
          }

          if (*v13.i64 < -4294967300.0)
          {
            *v10.i64 = -*v13.i64;
            *v13.i64 = -(*v13.i64 - trunc(*v13.i64 * -2.32830644e-10) * -4294967300.0);
            *v13.i64 = -*vbslq_s8(v16, v13, v10).i64;
          }

          if (*v13.i64 < 0.0)
          {
            v18 = --*v13.i64;
          }

          else
          {
            v18 = *v13.i64;
          }

          *(AlmReference + 16) = v18;
          *(AlmReference + 24) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 22);
          *(AlmReference + 32) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 25);
          *(AlmReference + 40) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 17);
          *(AlmReference + 48) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 20);
          *(AlmReference + 56) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 24);
          *(AlmReference + 64) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 13);
          *(AlmReference + 80) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 9);
          *(AlmReference + 72) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 10) + *(AlmReference + 80) * v8;
          *(AlmReference + 88) = ((v20[4])(&v20) / 0x93A80);
          *(AlmReference + 92) = 3;
          if ((v6 - 64) <= 0xC0u)
          {
            DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          }

          v19 = *(this + 54) + 48 * v5;
          *(*(v19 + 24) + ((v6 >> 3) & 0x1C)) |= 1 << v6;
          result = BlueFin::GlSetBase::Remove(v19, v6);
          *(this + 36712) = 0;
        }
      }
    }
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::IsFresh(uint64_t a1, uint64_t a2)
{
  v24 = 7;
  v25 = 0;
  v14 = -65536;
  v15 = 0;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v22 = -1;
  v23 = 0;
  if (!*(*(a1 + 448) + 2576) || !BlueFin::GlPeAlmMgr::GetAlm(a1, *a2, *(a2 + 4), &v14, 1, 1) || v22 == 2)
  {
    return 0;
  }

  BlueFin::GlPeTimeManager::GetTime(*(a1 + 448), 1, v11);
  v12 = &off_2A1F0B5F0;
  v13 = 0;
  *v3.i64 = BlueFin::GlPeGnssTime::GetGps(v11, &v12);
  BlueFin::GlPeAlmanac::GetToa(&v14, &v12, v11, v3, v4);
  v5 = v13;
  v6 = HIDWORD(v13);
  if (v11[0].n128_u64[1])
  {
    if (v13 < v11[0].n128_u64[1])
    {
      v6 = (__PAIR64__(v11[0].n128_u32[3] - HIDWORD(v13), v11[0].n128_u32[2]) - v13) >> 32;
      v5 = v11[0].n128_u32[2] - v13;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v6 = (v13 - v11[0].n128_u64[1]) >> 32;
      v5 = v13 - v11[0].n128_u32[2];
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v5 * 2.32830644e-10 + v6;
  if ((v7 & ((v6 | v5) != 0)) != 0)
  {
    v8 = -v8;
  }

  v9 = v8;
  if (v8 < 0)
  {
    v9 = -v9;
  }

  return v9 < 0x93A80;
}

unsigned int *BlueFin::GlPeEphemeris::GetEphTime@<X0>(BlueFin::GlPeEphemeris *this@<X0>, const BlueFin::GlPeGnssTime *a2@<X1>, uint64_t a3@<X8>)
{
  (*(*this + 64))(this);
  *a3 = *a2;
  *(a3 + 8) = *(a2 + 2);
  *(a3 + 16) = *(a2 + 1);

  return BlueFin::GlPeGnssTime::operator-=(a3, v5);
}

uint64_t BlueFin::GlPeGalEphMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = &unk_2A1F0FBD0;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 48) = 0u;
    v5 = 16;
    v6 = 81;
  }

  else
  {
    v7 = *(a1 + 12);
    v3 = &unk_2A1F0F470;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 92) = 0u;
    v6 = (16 * v7) | 2;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 48) = 0u;
    v5 = 19;
  }

  *(a2 + 8) = v6;
  *(a2 + 9) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = vdup_n_s32(0xFF9222FF);
  *a2 = v3;
  return a2;
}

uint64_t BlueFin::GlPeGalEphMgr::validateCandidateEphemeris(BlueFin::GlPeGalEphMgr *this, const BlueFin::GlPeEphemeris *a2, BlueFin::GlPeEphemeris *a3)
{
  (*(*a3 + 136))(&v63, a3);
  v6 = v63;
  v7 = (*(*a3 + 192))(a3, 7);
  v8 = (*(*a3 + 232))(a3, 7) * v7;
  v9 = (*(*a3 + 192))(a3, 18);
  v10 = (*(*a3 + 232))(a3, 18) * v9;
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 17);
  v12 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 15);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 22);
  if (v8 > 0x93A44)
  {
    v14 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d): Toc out of range (%u). Bad decode.\n", v14, v6, v8);
    if (v10 <= 0x93A44)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v10 > 0x93A44)
  {
LABEL_5:
    v15 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d): Toe out of range (%u). Bad decode.\n", v15, v6, v10);
    goto LABEL_6;
  }

  v53 = ScaledFloatingField >= 2530.0 && ScaledFloatingField <= 8192.0;
  if (v53 && v12 >= 0.0)
  {
    v54 = v6 == 18 || v6 == 14;
    v55 = 0.03;
    if (v54)
    {
      v55 = 0.17;
    }

    if (v12 <= v55 && v13 >= 0.802 && v13 <= 1.152)
    {
      v22 = 0;
      v21 = 1;
      if (!a2)
      {
        return v21 & 1;
      }

      goto LABEL_21;
    }
  }

LABEL_6:
  if (ScaledFloatingField < 2530.0 || ScaledFloatingField > 8192.0)
  {
    v16 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d): ASqrt out of range (%.8g). Bad decode.\n", v16, v6, ScaledFloatingField);
  }

  if (v12 < 0.0)
  {
    goto LABEL_16;
  }

  v17 = v6 == 18 || v6 == 14;
  v18 = 0.03;
  if (v17)
  {
    v18 = 0.17;
  }

  if (v12 > v18)
  {
LABEL_16:
    v19 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d): Ecc out of range (%.8g). Bad decode.\n", v19, v6, v12);
  }

  if (v13 < 0.802 || v13 > 1.152)
  {
    v20 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d): I0 out of range (%.8g). Bad decode.\n", v20, v6, v13);
  }

  v21 = 0;
  v22 = 1;
  if (a2)
  {
LABEL_21:
    v23 = *(a2 + 8) & 0xF;
    if ((*(a2 + 8) & 0xF) != 0)
    {
      BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, &v59);
      isExpired = BlueFin::GlPeEphemeris::isExpired(a3, &v59);
      if (v23 == 1)
      {
        v59.n128_u16[4] = 4177;
        v60 = v62;
        v61 = vdup_n_s32(0xFF9222FF);
        v25 = *(a3 + 3);
        v62[0] = *(a3 + 2);
        v62[1] = v25;
        v26 = *(a3 + 5);
        v62[2] = *(a3 + 4);
        v62[3] = v26;
        v59.n128_u64[0] = &unk_2A1F0FBD0;
        v27 = BlueFin::GlPeGalEphemeris::CompareEphSetFields(&v59, a2);
        v21 |= (v27 | isExpired) ^ 1;
        if ((*(*this + 264))(this, &v63))
        {
          if (v27)
          {
            if (!BlueFin::GlPeGalEphemeris::CompareEphSetFields(a2, &v59))
            {
              goto LABEL_68;
            }

            v28 = (*(*a2 + 192))(a2, 0);
            if (v28 != (*(v59.n128_u64[0] + 192))(&v59, 0))
            {
              goto LABEL_68;
            }

            v29 = (*(*a2 + 192))(a2, 4);
            if (v29 != (*(v59.n128_u64[0] + 192))(&v59, 4))
            {
              goto LABEL_68;
            }

            v30 = (*(*a2 + 192))(a2, 3);
            if (v30 != (*(v59.n128_u64[0] + 192))(&v59, 3))
            {
              goto LABEL_68;
            }

            v31 = (*(*a2 + 208))(a2, 6);
            if (v31 != (*(v59.n128_u64[0] + 208))(&v59, 6))
            {
              goto LABEL_68;
            }

            v32 = (*(*a2 + 192))(a2, 5);
            if (v32 != (*(v59.n128_u64[0] + 192))(&v59, 5))
            {
              goto LABEL_68;
            }

            v33 = (*(*a2 + 192))(a2, 7);
            if (v33 != (*(v59.n128_u64[0] + 192))(&v59, 7))
            {
              goto LABEL_68;
            }

            v34 = (*(*a2 + 208))(a2, 8);
            if (v34 != (*(v59.n128_u64[0] + 208))(&v59, 8))
            {
              goto LABEL_68;
            }

            v35 = (*(*a2 + 208))(a2, 9);
            if (v35 != (*(v59.n128_u64[0] + 208))(&v59, 9))
            {
              goto LABEL_68;
            }

            v36 = (*(*a2 + 208))(a2, 10);
            if (v36 != (*(v59.n128_u64[0] + 208))(&v59, 10))
            {
              goto LABEL_68;
            }

            v37 = (*(*a2 + 208))(a2, 11);
            if (v37 != (*(v59.n128_u64[0] + 208))(&v59, 11))
            {
              goto LABEL_68;
            }

            v38 = (*(*a2 + 208))(a2, 12);
            if (v38 != (*(v59.n128_u64[0] + 208))(&v59, 12))
            {
              goto LABEL_68;
            }

            v39 = (*(*a2 + 208))(a2, 13);
            if (v39 != (*(v59.n128_u64[0] + 208))(&v59, 13))
            {
              goto LABEL_68;
            }

            v40 = (*(*a2 + 208))(a2, 14);
            if (v40 != (*(v59.n128_u64[0] + 208))(&v59, 14))
            {
              goto LABEL_68;
            }

            v41 = (*(*a2 + 192))(a2, 15);
            if (v41 != (*(v59.n128_u64[0] + 192))(&v59, 15))
            {
              goto LABEL_68;
            }

            v42 = (*(*a2 + 208))(a2, 16);
            if (v42 != (*(v59.n128_u64[0] + 208))(&v59, 16))
            {
              goto LABEL_68;
            }

            v43 = (*(*a2 + 192))(a2, 17);
            if (v43 != (*(v59.n128_u64[0] + 192))(&v59, 17))
            {
              goto LABEL_68;
            }

            v44 = (*(*a2 + 192))(a2, 18);
            if (v44 != (*(v59.n128_u64[0] + 192))(&v59, 18))
            {
              goto LABEL_68;
            }

            v45 = (*(*a2 + 208))(a2, 19);
            if (v45 != (*(v59.n128_u64[0] + 208))(&v59, 19))
            {
              goto LABEL_68;
            }

            v46 = (*(*a2 + 208))(a2, 20);
            if (v46 == (*(v59.n128_u64[0] + 208))(&v59, 20) && (v47 = (*(*a2 + 208))(a2, 21), v47 == (*(v59.n128_u64[0] + 208))(&v59, 21)) && (v48 = (*(*a2 + 208))(a2, 22), v48 == (*(v59.n128_u64[0] + 208))(&v59, 22)) && (v49 = (*(*a2 + 208))(a2, 23), v49 == (*(v59.n128_u64[0] + 208))(&v59, 23)) && (v50 = (*(*a2 + 208))(a2, 24), v50 == (*(v59.n128_u64[0] + 208))(&v59, 24)) && (v51 = (*(*a2 + 208))(a2, 25), v51 == (*(v59.n128_u64[0] + 208))(&v59, 25)) && (v52 = (*(*a2 + 208))(a2, 26), v52 == (*(v59.n128_u64[0] + 208))(&v59, 26)))
            {
              v21 = 1;
              (*(v59.n128_u64[0] + 216))(&v59, 2, 1);
            }

            else
            {
LABEL_68:
              v56 = (*(*a2 + 184))(a2);
              v57 = BlueFin::GNSS2STR(*(this + 3));
              if (v56)
              {
                GlCustomLog(14, "EphMgr(%s,%d): Compare with existing external eph which is verified did not match.  Reject this new broadcast.\n", v57, v6);
                v21 = 0;
              }

              else
              {
                GlCustomLog(14, "EphMgr(%s,%d): Compare with existing external eph which is unverified did not match. Possible bad decode.\n", v57, v6);
                v21 = 0;
                v22 = 1;
              }
            }
          }
        }
      }

      if ((v22 | isExpired))
      {
        (*(*this + 288))(this, &v63, 0);
        v21 &= isExpired ^ 1;
      }
    }
  }

  return v21 & 1;
}

uint64_t *BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(BlueFin::GlPeGalEphemeris *this, unsigned int a2, unsigned int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if (a2 >= 0x1D)
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 677, "PutCmpUnsignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 677, "0");
  }

  v7 = dword_298A3BFD0[a2];
  v8 = byte_298A3C044[a2];
  BlueFin::GlBitBuffer::Position(v10, v7);
  return BlueFin::GlBitBuffer::PutU(v10, a3, v8);
}

uint64_t BlueFin::GlPeNicEphMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = &unk_2A1F0DCC8;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 76) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    v5 = 15;
    v6 = 97;
  }

  else
  {
    v7 = *(a1 + 12);
    v3 = &unk_2A1F0F470;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 92) = 0u;
    v6 = (16 * v7) | 2;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 48) = 0u;
    v5 = 19;
  }

  *(a2 + 8) = v6;
  *(a2 + 9) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = vdup_n_s32(0xFF9222FF);
  *a2 = v3;
  return a2;
}

BOOL BlueFin::GlPeAlmanacData::Deserialize(BlueFin::GlPeAlmanacData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 40)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  *(this + 28) = 0;
  if (v3 >= 2)
  {
    *(this + 28) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  }

  S16 = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 116) = S16;
  *(this + 4) = BlueFin::GlPeAlmanacPlainOldData::Gnss2almId(*(this + 28), S16);
  *(this + 5) = BlueFin::GlSysLogEntry::GetS16(a2);
  D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 2) = D64;
  if (*(this + 28) == 3 && D64 < 0.06 && *(this + 116) - 6 >= 5)
  {
    *(this + 2) = D64 + 0.06;
  }

  *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 8) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 11) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 48) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 25) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) < 3u)
  {
    if (*(this + 28) == 2)
    {
      *(this + 104) = -8;
    }

    else
    {
      *(this + 104) = 0;
    }
  }

  else
  {
    *(this + 104) = BlueFin::GlSysLogEntry::GetS8(a2);
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 2659);
  return *(this + 28) != 7;
}

uint64_t BlueFin::GlPeAlmMgr::Deserialize(BlueFin::GlPeAlmMgr *this, BlueFin::GlSysLogEntry *a2)
{
  if (!a2)
  {
    v18 = "pEntry";
    DeviceFaultNotify("glpe_almmgr.cpp", 2673, "Deserialize", "pEntry");
    v19 = "glpe_almmgr.cpp";
    v20 = 2673;
    goto LABEL_28;
  }

  v33 = &unk_2A1F0E890;
  v42 = 7;
  v43 = 0;
  v34 = -65536;
  v35 = 0;
  v36 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v40 = -1;
  v41 = 0;
  result = BlueFin::GlPeAlmanacData::Deserialize(&v33, a2);
  if (!result || *v38 * *v38 < 7078137.0)
  {
    return result;
  }

  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, v42, v43);
  v5 = v42;
  v6 = *(this + 54) + 48 * v42;
  v8 = *(v6 + 24);
  v7 = (v6 + 24);
  if ((*(v8 + ((v43 >> 3) & 0x1C)) >> (v43 & 0x1F)))
  {
    v31 = 7;
    v32 = 0;
    v21 = -65536;
    v22 = 0;
    v23 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v29 = -1;
    v30 = 0;
    result = BlueFin::GlPeAlmMgr::GetAlm(this, v42, v43, &v21, 1, 1);
    if (result && v29 != 2)
    {
      return result;
    }

    v5 = v42;
  }

  v9 = v41;
  if (v5 == 2 && v41 == 248)
  {
    v10 = BlueFin::GlPeAlmMgr::m_iDefaultAlmGlnsArrayDim;
    if (BlueFin::GlPeAlmMgr::m_iDefaultAlmGlnsArrayDim < 1)
    {
LABEL_14:
      v9 = -8;
    }

    else
    {
      v11 = BlueFin::GlPeAlmMgr::m_potDefaultAlmGlnsPlainOldData;
      while (*v11 != v34)
      {
        v11 += 52;
        if (!--v10)
        {
          goto LABEL_14;
        }
      }

      v9 = *(v11 + 96);
      v41 = v9;
    }
  }

  v12 = *v38;
  if (v12 * v12 < 7078137.0)
  {
    v13 = BlueFin::GNSS2STR(v5);
    if (v40 > 4)
    {
      v14 = "INV";
    }

    else
    {
      v14 = BlueFin::GlPeAlmanac::GetSourceStr(void)const::aacSourceStr[v40];
    }

    return GlCustomLog(11, "GlPeAlmMgr::Deserialize:Rejected Alm %s %02d  Source:NVMEM  Reason:Invalid ASqrt(%.0lf)  OrgSrc:%s\n", v13, v43, *v38, v14);
  }

  *(AlmReference + 104) = v5;
  v15 = v43;
  *(AlmReference + 108) = v43;
  *AlmReference = v34;
  *(AlmReference + 8) = v35;
  *(AlmReference + 16) = v36;
  *(AlmReference + 24) = v37;
  *(AlmReference + 40) = v12;
  *(AlmReference + 48) = *(v38 + 8);
  *(AlmReference + 64) = *(&v38[1] + 8);
  *(AlmReference + 80) = *(&v38[2] + 1);
  *(AlmReference + 88) = v39;
  *(AlmReference + 92) = v40;
  *(AlmReference + 96) = v9;
  if ((v15 - 64) <= 0xFFFFFFC0)
  {
    v18 = "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID";
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    v19 = "glgnss.h";
    v20 = 115;
LABEL_28:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v19, v20, v18);
  }

  *(*v7 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
  v16 = BlueFin::GNSS2STR(v42);
  if (v40 > 4)
  {
    v17 = "INV";
  }

  else
  {
    v17 = BlueFin::GlPeAlmanac::GetSourceStr(void)const::aacSourceStr[v40];
  }

  result = GlCustomLog(14, "GlPeAlmMgr::Deserialize:Read Alm:%s %02d  Source:NVMEM  OrgSrc:%s\n", v16, v43, v17);
  *(this + 36712) = 0;
  return result;
}

void BlueFin::GlPeSpecialTimeEvents::ScheduleTimeEvents(BlueFin::GlPeSpecialTimeEvents *this, BlueFin::GlPeTimeManager *a2)
{
  if (!*(a2 + 644))
  {
    return;
  }

  v67 = byte_2A18BAB18;
  v68 = *(a2 + 2589);
  v4 = *(a2 + 648);
  BlueFin::GlPeTimeManager::GetTime(a2, 1, &v72);
  v80 = 0;
  v79 = &unk_2A1F11310;
  v5 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v81 = 1980;
  v82 = v5 / 0x15180 + 1;
  v83[0] = 1;
  v83[1] = v5 / 0x15180 + 1;
  v83[2] = v5 % 0x15180 / 0xE10;
  v83[3] = (2185 * (v5 - 3600 * ((1193047 * v5) >> 32))) >> 17;
  v83[4] = v5 - 60 * ((71582789 * v5) >> 32);
  BlueFin::GlPeGnssTime::GetUtc(&v72, &v79);
  v6 = BlueFin::GlPeTimeManager::GetTimeAtPreviousQuarter(BlueFin::GlPeGnssTime const&)const::aucQuarterMonths[(((21846 * v83[0] - 21846) >> 16) + ((21846 * v83[0] - 21846) >> 31))];
  v75 = 0;
  v74 = &unk_2A1F11310;
  if (v81 <= 0x7BCu && (v83[0] < 4u || v81 != 1980))
  {
    goto LABEL_93;
  }

  v7 = v81 - 1980;
  v8 = v81 - 1977;
  if (v7 >= 0)
  {
    v8 = v81 - 1980;
  }

  v9 = 86400 * BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v7 - (v8 & 0xFFFFFFFC)) - 1 + v6] + 126230400 * (v8 >> 2) - 432000;
  v10 = BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v9 + BlueFin::GlWeekTowTime::m_ucCurrentLs ? BlueFin::GlWeekTowTime::m_ucCurrentLs : BlueFin::GlWeekTowTime::m_ucNextLs;
  v11 = v9 + v10;
  HIDWORD(v75) = v11;
  v74 = &unk_2A1F11310;
  v12 = v11 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0;
  v13 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && v12;
  v14 = BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v11 ? BlueFin::GlWeekTowTime::m_ucCurrentLs : BlueFin::GlWeekTowTime::m_ucNextLs;
  v15 = v11 + 432000 - v14 - v13;
  v16 = v15 % 0x7861F80;
  v17 = v15 % 0x7861F80 / 0x15180;
  if (v15 % 0x7861F80 >= 0x5A4EC00)
  {
    v18 = 3;
  }

  else
  {
    v18 = v16 < 0x3C3B880 ? v16 > 0x1E284FF : 2;
  }

  v19 = v18;
  v20 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v18];
  if (v17 >= v20[9])
  {
    v21 = 9;
  }

  else if (v17 >= v20[6])
  {
    v21 = 6;
  }

  else
  {
    v21 = v17 >= v20[3] ? 3 : 0;
  }

  v76 = ((4 * (v15 / 0x7861F80)) | v19) + 1980;
  v77 = v17 + 1 - *v20;
  if (v17 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v19 + v21 + 2])
  {
    v22 = 3;
  }

  else
  {
    v22 = v17 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v19 + v21 + 1] ? 1 : 2;
  }

  v23 = v22 + v21;
  LOBYTE(v78[0]) = v23;
  BYTE1(v78[0]) = v17 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v19 + v23 - 1] + 1;
  if (v13)
  {
    LOBYTE(v24) = 59;
    LOBYTE(v25) = 23;
    LOBYTE(v26) = 60;
  }

  else
  {
    v25 = (1193047 * (v15 % 0x15180)) >> 32;
    v24 = (2185 * (v15 % 0xE10)) >> 17;
    v26 = v15 % 0x3C;
  }

  BYTE2(v78[0]) = v25;
  HIBYTE(v78[0]) = v24;
  LOBYTE(v78[1]) = v26;
  BlueFin::GlPeTimeManager::GetTime(a2, &v74, 1, v70);
  v80 = 0;
  v79 = &unk_2A1F11310;
  v27 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v81 = 1980;
  v82 = v27 / 0x15180 + 1;
  v83[0] = 1;
  v83[1] = v27 / 0x15180 + 1;
  v83[2] = v27 % 0x15180 / 0xE10;
  v83[3] = (2185 * (v27 - 3600 * ((1193047 * v27) >> 32))) >> 17;
  v83[4] = v27 - 60 * ((71582789 * v27) >> 32);
  BlueFin::GlPeGnssTime::GetUtc(&v72, &v79);
  v28 = (((21846 * v83[0] - 21846) >> 16) + ((21846 * v83[0] - 21846) >> 31));
  v29 = v81 + BlueFin::GlPeTimeManager::GetTimeAtNextQuarter(BlueFin::GlPeGnssTime const&)const::aucRelQuarterYear[v28];
  v30 = BlueFin::GlPeTimeManager::GetTimeAtNextQuarter(BlueFin::GlPeGnssTime const&)const::aucQuarterMonths[v28];
  v75 = 0;
  v74 = &unk_2A1F11310;
  if (v29 <= 0x7BCu && (v83[0] - 13 > 0xFFFFFFFC || v29 != 1980))
  {
    goto LABEL_93;
  }

  v31 = v29 - 1980;
  v32 = v29 - 1977;
  if (v31 >= 0)
  {
    v32 = v31;
  }

  v33 = 126230400 * (v32 >> 2) - 432000 + 86400 * BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v31 - (v32 & 0xFFFFFFFC)) - 1 + v30];
  v34 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v33 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v35 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v35 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  v36 = v33 + v35;
  HIDWORD(v75) = v36;
  v74 = &unk_2A1F11310;
  v37 = v36 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0;
  v38 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && v37;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 < v36)
  {
    v34 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  v39 = v36 + 432000 - v34 - v38;
  v40 = v39 % 0x7861F80;
  v41 = v39 % 0x7861F80 / 0x15180;
  if (v39 % 0x7861F80 >= 0x5A4EC00)
  {
    v42 = 3;
  }

  else if (v40 >= 0x3C3B880)
  {
    v42 = 2;
  }

  else
  {
    v42 = v40 > 0x1E284FF;
  }

  v43 = v42;
  v44 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v42];
  if (v41 >= v44[9])
  {
    v45 = 9;
  }

  else if (v41 >= v44[6])
  {
    v45 = 6;
  }

  else if (v41 >= v44[3])
  {
    v45 = 3;
  }

  else
  {
    v45 = 0;
  }

  v76 = ((4 * (v39 / 0x7861F80)) | v43) + 1980;
  v77 = v41 + 1 - *v44;
  if (v41 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v43 + v45 + 2])
  {
    v46 = 3;
  }

  else if (v41 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v43 + v45 + 1])
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  v47 = v46 + v45;
  LOBYTE(v78[0]) = v47;
  BYTE1(v78[0]) = v41 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v43 + v47 - 1] + 1;
  if (v38)
  {
    LOBYTE(v48) = 59;
    LOBYTE(v49) = 23;
    LOBYTE(v50) = 60;
  }

  else
  {
    v49 = (1193047 * (v39 % 0x15180)) >> 32;
    v48 = (2185 * (v39 % 0xE10)) >> 17;
    v50 = v39 % 0x3C;
  }

  BYTE2(v78[0]) = v49;
  HIBYTE(v78[0]) = v48;
  LOBYTE(v78[1]) = v50;
  BlueFin::GlPeTimeManager::GetTime(a2, &v74, 1, v69);
  v74 = &unk_2A1F11310;
  v75 = 0;
  v51 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v76 = 1980;
  v77 = v51 / 0x15180 + 1;
  LOBYTE(v78[0]) = 1;
  BYTE1(v78[0]) = v51 / 0x15180 + 1;
  BYTE2(v78[0]) = v51 % 0x15180 / 0xE10;
  HIBYTE(v78[0]) = (2185 * (v51 - 3600 * ((1193047 * v51) >> 32))) >> 17;
  LOBYTE(v78[1]) = v51 - 60 * ((71582789 * v51) >> 32);
  v79 = &unk_2A1F11310;
  v80 = 0;
  v81 = 1980;
  v82 = v77;
  *v83 = __PAIR16__(BYTE1(v78[0]), 1);
  v83[2] = BYTE2(v78[0]);
  *&v83[3] = *(v78 + 3);
  if (v73 - v71 >= 180000.0)
  {
    v52 = v69;
  }

  else
  {
    v52 = v70;
  }

  Utc = BlueFin::GlPeGnssTime::GetUtc(v52, &v79);
  v55 = v80;
  v56 = HIDWORD(v80);
  v75 = v80;
  v76 = v81;
  v77 = v82;
  LODWORD(Utc) = *v83;
  v57 = vmovl_u8(*&Utc);
  v78[0] = vuzp1_s8(*v57.i8, *v57.i8).u32[0];
  LOBYTE(v78[1]) = v83[4];
  if (!v4)
  {
    if (v68)
    {
      LOBYTE(v59) = v67 - 1;
    }

    else
    {
      LOBYTE(v59) = *(a2 + 2588);
      BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs = 0;
      BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent = 0;
      BlueFin::GlWeekTowTime::m_ucNextLs = 0;
      BlueFin::GlWeekTowTime::m_ucCurrentLs = v59;
    }

    LOBYTE(v58) = v59;
    goto LABEL_85;
  }

  v58 = *(a2 + 2588);
  v59 = *(a2 + 2596);
  BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs = 0;
  BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent = 0;
  BlueFin::GlWeekTowTime::m_ucNextLs = 0;
  BlueFin::GlWeekTowTime::m_ucCurrentLs = v58;
  if (v59 != v58)
  {
    BlueFin::GlWeekTowTime::m_ucCurrentLs = 0;
    v79 = &unk_2A1F11310;
    v80 = 0;
    if (v81 > 0x7BCu || v57.u8[0] >= 2u && v81 == 1980)
    {
      v60 = BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v81 & 3) - 1 + v57.u8[0]];
      BlueFin::GlWeekTowTime::m_ucCurrentLs = v58;
      v61 = v58 - 1;
      if (v59 > v58)
      {
        v61 = v58 + 1;
      }

      BlueFin::GlWeekTowTime::m_ucNextLs = v61;
      BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs = 126230400 * ((v81 - 1980) >> 2) - 432000 + v61 + 86400 * v60;
      BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent = (__PAIR64__(BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs, v58) - v61) >> 32;
      goto LABEL_85;
    }

LABEL_93:
    DeviceFaultNotify("glpe_datetime.h", 1034, "GlUtcTime", "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_datetime.h", 1034, "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))");
  }

  LOBYTE(v59) = v58;
LABEL_85:
  v62 = v55 * 2.32830644e-10 + v56;
  v63 = floor(v62 + 0.5);
  v64 = v62 <= 0.0;
  v57.i64[0] = 0;
  if (!v64)
  {
    *v57.i64 = v63;
  }

  *v54.i64 = *v57.i64 - trunc(*v57.i64 * 2.32830644e-10) * 4294967300.0;
  v65.f64[0] = NAN;
  v65.f64[1] = NAN;
  v54.i64[0] = vbslq_s8(vnegq_f64(v65), v54, v57).u64[0];
  if (*v57.i64 > 4294967300.0)
  {
    v57.i64[0] = v54.i64[0];
  }

  *(this + 2) = *v57.i64;
  *(this + 3) = *v57.i64 - v59 + v58 - 180;
  *(this + 4) = *v57.i64 + 180;
  v66 = *(a2 + 3424);
  if ((v66 & 0x80000000) == 0)
  {
    *(this + 7) = 619315200 * v66 + 619315200;
  }

  *this = 1;
}

uint64_t BlueFin::GlPeAlmMgr::UseHardCodedData(BlueFin::GlPeTimeManager **this, int8x16_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned __int8 a55, int a56, unsigned __int8 a57, uint64_t a58, uint64_t a59, void (**a60)(BlueFin::GlGpsTime *__hidden this), unint64_t a61)
{
  v61 = this;
  STACK[0x5F8] = *MEMORY[0x29EDCA608];
  v114 = &off_2A1F0B5F0;
  v115 = 0;
  v62 = this[56];
  if (*(v62 + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(v62, 1, &a31);
    a61 = 0;
    a60 = &off_2A1F0B5F0;
    BlueFin::GlPeGnssTime::GetGps(&a31, &a60);
    v115 = a61;
  }

  else
  {
    *a2.i64 = (BlueFin::GlSettingsImpl::m_ulActiveBuildFct % 0x93A80u);
    a31.n128_u64[0] = &off_2A1F0B5F0;
    *a3.i64 = *a2.i64 - trunc(*a2.i64);
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    a2.i64[0] = vbslq_s8(vnegq_f64(v63), a3, a2).i64[0];
    if (*a2.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v64 = *a2.i64 * 4294967300.0 + 0.5;
    v65 = v64;
    if (v64 >= 4294967300.0)
    {
      v65 = -1;
    }

    v115 = __PAIR64__(BlueFin::GlSettingsImpl::m_ulActiveBuildFct, v65);
  }

  v66 = 0;
  STACK[0x5C8] = &a60;
  do
  {
    v67 = STACK[0x5C8] + v66;
    *(v67 + 12) = 0;
    *v67 = v67 + 12;
    *(v67 + 8) = 2;
    v66 += 24;
  }

  while (v66 != 168);
  for (i = 0; i != 168; i += 24)
  {
    v69 = &v116 + i;
    *(&v118 + i + 4) = 0;
    *v69 = &v118 + i + 4;
    v69[8] = 2;
  }

  for (j = 0; j != 7; ++j)
  {
    BlueFin::GlGnssSet::SetAll(&v116, j);
  }

  BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a31, &v116);
  while (a54 != 6 || a55 != 14)
  {
    a56 = a54;
    a57 = a55;
    v116 = a54;
    v117 = a55;
    if (BlueFin::GlPeAlmMgr::GetDefaultAlm(&v116))
    {
      a56 = a54;
      a57 = a55;
      v116 = a54;
      v117 = a55;
      BlueFin::GlGnssSet::Add(&a60, &v116);
    }

    BlueFin::GlGnssSetIterator::operator++(&a31);
  }

  BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a31, &a60);
  v105 = v61;
  while (1)
  {
    v72 = a54;
    v73 = a55;
    if (a54 == 6 && a55 == 14)
    {
      break;
    }

    a56 = a54;
    a57 = a55;
    v112 = a54;
    v113 = a55;
    DefaultAlm = BlueFin::GlPeAlmMgr::GetDefaultAlm(&v112);
    if (DefaultAlm)
    {
      v76 = *DefaultAlm;
      LOWORD(v116) = *DefaultAlm;
      v77 = DefaultAlm[1];
      HIWORD(v116) = v77;
      v78 = *(DefaultAlm + 1);
      v118 = v78;
      v79 = *(DefaultAlm + 4);
      LODWORD(vars0) = v79;
      v81 = *(DefaultAlm + 3);
      v80 = *(DefaultAlm + 4);
      vars8 = v81;
      v107 = v80;
      v82 = *(DefaultAlm + 5);
      v83 = *(DefaultAlm + 6);
      v84 = *(DefaultAlm + 7);
      v85 = *(DefaultAlm + 8);
      v86 = *(DefaultAlm + 9);
      v87 = *(DefaultAlm + 10);
      v88 = DefaultAlm[44];
      v89 = *(DefaultAlm + 23);
      v90 = *(DefaultAlm + 96);
      AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(v61, v72, v73);
      if (((*(*(*(v61 + 54) + 48 * v72 + 24) + 4 * (v73 >> 5)) >> (v73 & 0x1F)) & 1) == 0)
      {
        goto LABEL_29;
      }

      v106 = v81;
      BlueFin::GlPeAlmanac::GetToa(&v116, &v114, &v110, v92, v93);
      v94 = v78;
      v95 = (*(v110 + 32))(&v110);
      LODWORD(v78) = v111;
      BlueFin::GlPeAlmanac::GetToa(AlmReference, &v114, &v108, v96, v97);
      v98 = (*(v108 + 32))(&v108);
      LODWORD(v99) = v109;
      v100 = v78 * 2.32830644e-10 + v95 - (v99 * 2.32830644e-10 + v98);
      v61 = v105;
      v78 = v94;
      v81 = v106;
      if (v100 >= 604800.0)
      {
LABEL_29:
        *(AlmReference + 104) = v72;
        *(AlmReference + 108) = v73;
        *AlmReference = v76;
        *(AlmReference + 2) = v77;
        *(AlmReference + 8) = v78;
        *(AlmReference + 16) = v79;
        *(AlmReference + 24) = v81;
        *(AlmReference + 32) = v107;
        *(AlmReference + 40) = v82;
        *(AlmReference + 48) = v83;
        *(AlmReference + 56) = v84;
        *(AlmReference + 64) = v85;
        *(AlmReference + 72) = v86;
        *(AlmReference + 80) = v87;
        *(AlmReference + 92) = v89;
        *(AlmReference + 96) = v90;
        *(AlmReference + 88) = v88;
        if ((v73 - 64) <= 0xC0u)
        {
          DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        }

        v101 = *(v61 + 54) + 48 * v72;
        *(*(v101 + 24) + 4 * (v73 >> 5)) |= 1 << (v73 & 0x1F);
        BlueFin::GlSetBase::Remove(v101, v73);
      }
    }

    BlueFin::GlGnssSetIterator::operator++(&a31);
  }

  *(v61 + 36712) = 0;
  v102 = STACK[0x5F8];
  v103 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoUtc(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v3 = *(this + 6615);
  v14 = &unk_2A1F10448;
  v15 = 7;
  v16 = 0uLL;
  memset(v17, 0, 14);
  result = BlueFin::GlPeLtoUtcDataInterface::Deserialize(&v14, a2);
  if (result)
  {
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v15);
    GlCustomLog(14, "LtoMgr: read LTO UTC (%s) from NVMEM!\n", AbbrevGnssName);
    switch(v15)
    {
      case 5u:
        goto LABEL_5;
      case 4u:
        BlueFin::GlPeLtoMgr::UpdateBdsUtcModel(this, WORD2(v17[1]), v17);
        return 1;
      case 0u:
LABEL_5:
        *v6.i64 = (v3 % 0x93A80);
        v11 = &off_2A1F0B5F0;
        *v7.i64 = *v6.i64 - trunc(*v6.i64);
        v8.f64[0] = NAN;
        v8.f64[1] = NAN;
        v6.i64[0] = vbslq_s8(vnegq_f64(v8), v7, v6).i64[0];
        if (*v6.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v7.i64[0] = 0x41F0000000000000;
        v9 = *v6.i64 * 4294967300.0 + 0.5;
        v10 = v9;
        if (v9 >= 4294967300.0)
        {
          v10 = -1;
        }

        v12 = v10;
        v13 = v3;
        v11 = &off_2A1F0B5F0;
        BlueFin::GlPeLtoMgr::UpdateUtcModel(this, &v16, &v11, 0, v9, v7);
        return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlPeGpsUtcModel::Deserialize(BlueFin::GlPeGpsUtcModel *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 43)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  if (v3 == 3)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 9) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 8) = BlueFin::GlSysLogEntry::GetS32(a2);
  }

  else
  {
    *(this + 2) = 3;
    *v6.i64 = BlueFin::GlSysLogEntry::GetD64(a2) * 1073741820.0;
    *v7.i64 = *v6.i64 + trunc(*v6.i64 * 2.32830644e-10) * -4294967300.0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = vnegq_f64(v8);
    v10 = vbslq_s8(v9, v7, v6);
    if (*v6.i64 > 4294967300.0)
    {
      v6.i64[0] = v10.i64[0];
    }

    v26 = v9;
    if (*v6.i64 < -4294967300.0)
    {
      *v10.i64 = -*v6.i64;
      *v6.i64 = -(*v6.i64 - trunc(*v6.i64 * -2.32830644e-10) * -4294967300.0);
      *v6.i64 = -*vbslq_s8(v9, v6, v10).i64;
    }

    if (*v6.i64 < 0.0)
    {
      v11 = --*v6.i64;
    }

    else
    {
      v11 = *v6.i64;
    }

    *(this + 9) = v11;
    *v12.i64 = BlueFin::GlSysLogEntry::GetD64(a2) * 1.12589991e15;
    *v13.i64 = *v12.i64 + trunc(*v12.i64 * 2.32830644e-10) * -4294967300.0;
    v14 = vbslq_s8(v26, v13, v12);
    if (*v12.i64 > 4294967300.0)
    {
      v12.i64[0] = v14.i64[0];
    }

    if (*v12.i64 < -4294967300.0)
    {
      *v14.i64 = -*v12.i64;
      *v12.i64 = -(*v12.i64 - trunc(*v12.i64 * -2.32830644e-10) * -4294967300.0);
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      *v12.i64 = -*vbslq_s8(vnegq_f64(v15), v12, v14).i64;
    }

    if (*v12.i64 < 0.0)
    {
      v16 = --*v12.i64;
    }

    else
    {
      v16 = *v12.i64;
    }

    *(this + 8) = v16;
  }

  *(this + 42) = BlueFin::GlSysLogEntry::GetS8(a2);
  if (*(a2 + 12) > 2u)
  {
    LOBYTE(v17) = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  else
  {
    v17 = BlueFin::GlSysLogEntry::GetS32(a2) / 4096;
  }

  *(this + 40) = v17;
  *(this + 41) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 43) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 44) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 45) = BlueFin::GlSysLogEntry::GetS8(a2);
  if (*(a2 + 12) < 2u)
  {
    *(this + 3) = 0;
  }

  else
  {
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *v19.i64 = BlueFin::GlSysLogEntry::GetU32(a2) * 0.001;
    *v20.i64 = *v19.i64 - trunc(*v19.i64);
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v22 = *vbslq_s8(vnegq_f64(v21), v20, v19).i64;
    if (v22 < 0.0 || v22 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v24 = v22 * 4294967300.0 + 0.5;
    v25 = v24;
    if (v24 >= 4294967300.0)
    {
      v25 = -1;
    }

    *(this + 6) = v25;
    *(this + 7) = *v19.i64 + 604800 * U16;
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 252);
  return 1;
}

void BlueFin::GlPeLtoMgr::UpdateGnssL5Health(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v89 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = *(a1 + 88);
    if (*(v7 + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(v7, 1, v73);
      if (a4)
      {
        v11 = 0;
        v12.f64[0] = NAN;
        v12.f64[1] = NAN;
        v71 = vnegq_f64(v12);
        while (1)
        {
          v13 = (a3 + 12 * v11);
          if (*v13 != 255 && *(v13 + 1) != -1)
          {
            break;
          }

LABEL_68:
          if (++v11 == a4)
          {
            goto LABEL_69;
          }
        }

        v14 = *(v13 + 5);
        v15 = 300 * *(v13 + 4);
        if (a2 <= 3)
        {
          if (a2 && a2 != 3)
          {
            goto LABEL_49;
          }

          v81 = &off_2A1F0B5F0;
          v82 = 0;
          BlueFin::GlPeGnssTime::GetGps(v73, &v81);
          *v27.i64 = v15;
          v79 = &off_2A1F0B5F0;
          *v28.i64 = v15 - trunc(v15);
          v29 = *vbslq_s8(v71, v28, v27).i64;
          if (v29 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v30 = v29 * 4294967300.0 + 0.5;
          v31 = v30;
          if (v30 >= 4294967300.0)
          {
            v31 = -1;
          }

          LODWORD(v80) = v31;
          HIDWORD(v80) = v15 + 604800 * v14;
          v79 = &off_2A1F0B5F0;
          v76 = __PAIR64__(HIDWORD(v80), v31);
          v32 = (v81[4])(&v81);
          v74 = __PAIR64__(v32, v82);
          BlueFin::GlTimePoint::resolveAmbiguity(&v76, &v74, 0x27500000u);
          v33 = (v81[3])(&v81, HIDWORD(v76));
          v80 = __PAIR64__(v33, v76);
          *v25.i64 = (v79[4])(&v79);
          v26.i32[0] = v80;
        }

        else
        {
          switch(a2)
          {
            case 4:
              v79 = &off_2A1F0E4D0;
              v80 = 0;
              BlueFin::GlPeGnssTime::GetBds(v73, &v79);
              *v34.i64 = v15;
              v76 = &off_2A1F0E4D0;
              *v35.i64 = v15 - trunc(v15);
              v36 = *vbslq_s8(v71, v35, v34).i64;
              if (v36 >= 1.0)
              {
                DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
              }

              v37 = v36 * 4294967300.0 + 0.5;
              v38 = v37;
              if (v37 >= 4294967300.0)
              {
                v38 = -1;
              }

              v77 = v38;
              v78 = v15 + 604800 * v14 + 820108814;
              v76 = &off_2A1F0E4D0;
              LODWORD(v81) = v38;
              HIDWORD(v81) = v15 + 604800 * v14;
              v39 = (v79[4])(&v79);
              v74 = __PAIR64__(v39, v80);
              BlueFin::GlTimePoint::resolveAmbiguity(&v81, &v74, 0x27500000u);
              v40 = (v79[3])(&v79, HIDWORD(v81));
              v77 = v81;
              v78 = v40;
              BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), &v76, 1, &v81);
              v74 = &off_2A1F0B5F0;
              v75 = 0;
              Gps = BlueFin::GlPeGnssTime::GetGps(&v81, &v74);
              v24 = (v74[4])(&v74, Gps);
              break;
            case 5:
              v79 = &off_2A1F0E480;
              v80 = 0;
              BlueFin::GlPeGnssTime::GetGal(v73, &v79);
              *v42.i64 = v15;
              v76 = &off_2A1F0E480;
              *v43.i64 = v15 - trunc(v15);
              v44 = *vbslq_s8(v71, v43, v42).i64;
              if (v44 >= 1.0)
              {
                DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
              }

              v45 = v44 * 4294967300.0 + 0.5;
              v46 = v45;
              if (v45 >= 4294967300.0)
              {
                v46 = -1;
              }

              v77 = v46;
              v78 = v15 + 604800 * v14 + 619315200;
              v76 = &off_2A1F0E480;
              LODWORD(v81) = v46;
              HIDWORD(v81) = v15 + 604800 * v14;
              v47 = (v79[4])(&v79);
              v74 = __PAIR64__(v47, v80);
              BlueFin::GlTimePoint::resolveAmbiguity(&v81, &v74, 0x27500000u);
              v48 = (v79[3])(&v79, HIDWORD(v81));
              v77 = v81;
              v78 = v48;
              BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), &v76, 1, &v81);
              v74 = &off_2A1F0B5F0;
              v75 = 0;
              v49 = BlueFin::GlPeGnssTime::GetGps(&v81, &v74);
              v24 = (v74[4])(&v74, v49);
              break;
            case 6:
              v79 = &off_2A1F0DFC8;
              v80 = 0;
              BlueFin::GlPeGnssTime::GetNic(v73, &v79);
              *v16.i64 = v15;
              v76 = &off_2A1F0DFC8;
              *v17.i64 = v15 - trunc(v15);
              v18 = *vbslq_s8(v71, v17, v16).i64;
              if (v18 >= 1.0)
              {
                DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
              }

              v19 = v18 * 4294967300.0 + 0.5;
              v20 = v19;
              if (v19 >= 4294967300.0)
              {
                v20 = -1;
              }

              v77 = v20;
              v78 = v15 + 604800 * v14 + 619315200;
              v76 = &off_2A1F0DFC8;
              LODWORD(v81) = v20;
              HIDWORD(v81) = v15 + 604800 * v14;
              v21 = (v79[4])(&v79);
              v74 = __PAIR64__(v21, v80);
              BlueFin::GlTimePoint::resolveAmbiguity(&v81, &v74, 0x27500000u);
              v22 = (v79[3])(&v79, HIDWORD(v81));
              v77 = v81;
              v78 = v22;
              BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), &v76, 1, &v81);
              v74 = &off_2A1F0B5F0;
              v75 = 0;
              v23 = BlueFin::GlPeGnssTime::GetGps(&v81, &v74);
              v24 = (v74[4])(&v74, v23);
              break;
            default:
              goto LABEL_49;
          }

          *v25.i64 = v24;
          v26.i32[0] = v75;
        }

        *v25.i64 = v26.u64[0] * 2.32830644e-10 + *v25.i64;
        *v26.i64 = *v25.i64 + trunc(*v25.i64 * 2.32830644e-10) * -4294967300.0;
        v50 = vbslq_s8(v71, v26, v25);
        if (*v25.i64 > 4294967300.0)
        {
          v25.i64[0] = v50.i64[0];
        }

        if (*v25.i64 < -4294967300.0)
        {
          *v50.i64 = -*v25.i64;
          *v25.i64 = -(*v25.i64 - trunc(*v25.i64 * -2.32830644e-10) * -4294967300.0);
          *v25.i64 = -*vbslq_s8(v71, v25, v50).i64;
        }

        if (*v25.i64 < 0.0)
        {
          v51 = --*v25.i64;
        }

        else
        {
          v51 = *v25.i64;
        }

        v52 = *v13 + 1;
        LODWORD(v79) = a2;
        BYTE4(v79) = v52;
        if (a5)
        {
          v53 = *(a1 + 988 + 4 * a2);
          if (!v53)
          {
            v53 = v51;
          }

          v54 = v53 + 10800;
          if (v53 != -10800)
          {
            goto LABEL_41;
          }
        }

        else
        {
          Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 80) + 384), a2);
          if (Mgr)
          {
            v56 = (*(*Mgr + 112))(Mgr, &v79 + 4, 1);
            v57 = v56;
            if (v56)
            {
              if ((*(*v56 + 144))(v56) == 3)
              {
                v81 = &off_2A1F0B5F0;
                v82 = 0;
                v58 = BlueFin::GlPeGnssTime::GetGps(v73, &v81);
                v59 = (v81[4])(&v81, v58);
                LODWORD(v5) = v82;
                v60 = (*(*v57 + 248))(v57, v73) + (v5 * 2.32830644e-10 + v59);
                v54 = v51 <= v60 ? v60 : v51;
                if (v54)
                {
LABEL_41:
                  BlueFin::GlPeSvHealthMgr::SetGnssSvL5Health(*(a1 + 120), &v79, v54, *(v13 + 1) == 0, a5);
                }
              }
            }
          }
        }

LABEL_49:
        if (a5)
        {
          v61 = *v13;
          if (v61 <= 0x3E && a2 <= 6)
          {
            v63 = *(v13 + 1);
            if (v61 != 255 && v63 != -1)
            {
              v65 = 0;
              v81 = (a1 + 20116);
              v82 = 0xB00000000;
              v83 = a1 + 20500;
              v84 = 0xC00000003;
              v85 = a1 + 20620;
              v86 = 0xD00000004;
              v87 = a1 + 21376;
              v88 = 0xE00000005;
              while (1)
              {
                v66 = &(&v81)[v65];
                if (LODWORD((&v81)[v65 + 1]) == a2)
                {
                  break;
                }

                v65 += 2;
                if (v65 == 8)
                {
                  goto LABEL_68;
                }
              }

              v67 = *v66;
              v68 = *v66 + 12 * v61;
              *(a1 + 26464) |= 1 << *(v66 + 6);
              if (v67)
              {
                v69 = v68 == v13;
              }

              else
              {
                v69 = 1;
              }

              if (!v69)
              {
                *v68 = v61;
                *(v68 + 4) = v63;
                *(v68 + 8) = *(v13 + 2);
              }
            }
          }
        }

        goto LABEL_68;
      }
    }
  }

LABEL_69:
  v70 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlSysLogEntry::GetS32(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 4 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 506, "GetS32", "m_sReadIdx + sizeof(GlIntS32) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 506, "m_sReadIdx + sizeof(GlIntS32) <= m_sDataSize");
  }

  v2 = 0;
  v6 = 0;
  do
  {
    v3 = (*(*this + 24))(this);
    v4 = *(this + 10);
    *(this + 10) = v4 + 1;
    *(&v6 + v2++) = *(v3 + v4);
  }

  while (v2 != 4);
  return v6;
}

uint64_t BlueFin::GlPeBdsUtcModelData::Deserialize(BlueFin::GlPeBdsUtcModelData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 32)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  if (v3 == 1)
  {
    *(this + 4) = 0;
LABEL_9:
    U8 = 3;
    goto LABEL_10;
  }

  U16 = BlueFin::GlSysLogEntry::GetU16(a2);
  v7 = *(a2 + 12);
  *(this + 4) = U16;
  if (v7 < 3)
  {
    goto LABEL_9;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
LABEL_10:
  *(this + 3) = U8;
  *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 24) = BlueFin::GlSysLogEntry::GetS8(a2);
  *(this + 25) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 26) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 27) = BlueFin::GlSysLogEntry::GetS8(a2);
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 132);
  return 1;
}

uint64_t BlueFin::GlPeGalUtcModelData::Deserialize(BlueFin::GlPeGalUtcModelData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 95 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 30) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 28) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 29) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 31) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 32) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 33) = BlueFin::GlSysLogEntry::GetS8(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 188);
  }

  return v3;
}

uint64_t BlueFin::GlPeGlnTimeData::Deserialize(BlueFin::GlPeGlnTimeData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 31)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  if (v3 == 1)
  {
    *(a2 + 10) = *(a2 + 11);
  }

  else
  {
    *(this + 8) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetU16(a2);
    if (*(a2 + 12) < 3u)
    {
      U8 = 3;
    }

    else
    {
      U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    }

    *(this + 3) = U8;
    *(this + 16) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 32) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 48) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 49) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 50) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 13) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 14) = BlueFin::GlSysLogEntry::GetF32(a2);
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 151);
  return 1;
}

float BlueFin::GlSysLogEntry::GetF32(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 4 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 650, "GetF32", "m_sReadIdx + sizeof(fValue) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 650, "m_sReadIdx + sizeof(fValue) <= m_sDataSize");
  }

  v2 = 0;
  v6 = 0.0;
  do
  {
    v3 = (*(*this + 24))(this);
    v4 = *(this + 10);
    *(this + 10) = v4 + 1;
    *(&v6 + v2++) = *(v3 + v4);
  }

  while (v2 != 4);
  return v6;
}

uint64_t BlueFin::GlPeLtoReaderBase::FromLTOFileToGll(uint64_t this, const char *__src, unsigned int a3)
{
  if (!__src)
  {
    DeviceFaultNotify("glpe_ltoreader.cpp", 4471, "FromLTOFileToGll", "nullptr != pcBuff");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltoreader.cpp", 4471, "nullptr != pcBuff");
  }

  v3 = a3;
  v4 = __src;
  v5 = this;
  if (*(this + 10784) == 1)
  {
    v6 = *(this + 9748);
    if (v6 > 0x1B)
    {
      v8 = (this + 9852);
    }

    else
    {
      if (v6 + a3 < 0x1D)
      {
        goto LABEL_8;
      }

      v7 = 28 - v6;
      a3 -= v7;
      v8 = (this + 9852);
      __src += v7;
    }

    this = BlueFin::GlCryptoMd5::update(v8, __src, a3);
  }

LABEL_8:
  if (v3)
  {
    do
    {
      if (v5[2] == 65)
      {
        break;
      }

      v9 = v5[2435];
      v10 = v5[2434] - v9;
      v11 = v3 >= v10 ? v10 : v3;
      memcpy(v5 + v9 + 16, v4, v11);
      v5[2435] += v11;
      this = BlueFin::GlPeLtoReaderBase::processBlock(v5, v12, v13, v14);
      v3 -= v11;
      v5[2437] += v11;
      v4 += v11;
    }

    while (v11 && v3 != 0);
  }

  return this;
}

uint64_t BlueFin::GlPeGalTimeMgr::SetGpsOffset(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlPeGalGpsOffsetData *a2)
{
  v2 = *(a2 + 2);
  if (!v2)
  {
    return 0;
  }

  v5 = a2 + 20;
  v6 = *(a2 + 10) == -1 && *(a2 + 11) == 0xFFFF;
  if (v6 && *(a2 + 24) == 255 && *(a2 + 25) == 63)
  {
    return 0;
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 4);
  v9 = *(this + 18);
  if (v9)
  {
    if (v2 >= v9 && v8 / 0x3E8 + 604800 * v7 <= *(this + 20) / 0x3E8u + 604800 * *(this + 38))
    {
      return 0;
    }
  }

  v10 = (this + 64);
  if (BlueFin::GlPeGalGpsOffsetData::operator==(this + 64, a2))
  {
    return 0;
  }

  if (v10 != a2)
  {
    *(this + 18) = v2;
    *(this + 38) = v7;
    *(this + 20) = v8;
    v12 = *v5;
    *(this + 44) = *(v5 + 2);
    *(this + 21) = v12;
  }

  result = 1;
  *(this + 96) = 1;
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGpsQzsL1CaIscAltNav(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v6 = &unk_2A1F10640;
  v7 = 7;
  v8[0] = -1;
  v9 = 0;
  result = BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface::Deserialize(&v6, a2);
  if (result)
  {
    if (v7 == 3)
    {
      BlueFin::GlPeLtoMgr::UpdateQzsL1CaIsc(this, v8, 0, 1);
      goto LABEL_6;
    }

    if (!v7)
    {
      BlueFin::GlPeLtoMgr::UpdateL1CaIsc(this, v8, 0, 1);
LABEL_6:
      v4 = v8[0] + 1;
      AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v7);
      GlCustomLog(14, "LtoMgr: read LTO (%s %d) L1CA Isc Info from NVMEM!\n", AbbrevGnssName, v4);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateEphemeris(BlueFin::GlPeLtoMgr *this, BlueFin::GlPeLtoEphemeris *a2, int a3, unsigned int a4, int a5)
{
  Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 10) + 384), *(a2 + 8) >> 4);
  if (!Mgr)
  {
    return 0;
  }

  v11 = Mgr;
  if (a3)
  {
    v12 = BlueFin::GlPeClkCalibrateMgr::ApplyClockCalibrationParameters(*(this + 13), a2, a4, a5);
    if (a5 >= 604800)
    {
      if (v12)
      {
        return 0;
      }
    }
  }

  v14 = *(*v11 + 24);

  return v14(v11, a2);
}

uint64_t BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::Deserialize(BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 125 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetS32(a2);
  }

  return v3;
}

uint64_t BlueFin::GlPeLtoSysTimeDataInterface::Deserialize(BlueFin::GlPeLtoSysTimeDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 123 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v6 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 2) = v6;
  switch(v6)
  {
    case 5:
      *(this + 16) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 17) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 36) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 37) = BlueFin::GlSysLogEntry::GetU8(a2);
      return 1;
    case 4:
      *(this + 19) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 20) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 21) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 22) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 23) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 24) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 25) = BlueFin::GlSysLogEntry::GetU16(a2);
      return 1;
    case 2:
      *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
      *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 5) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 24) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 25) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 26) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 14) = BlueFin::GlSysLogEntry::GetS16(a2);
      *(this + 15) = BlueFin::GlSysLogEntry::GetS16(a2);
      return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeSvHealthHelper::DeserializeHelper(BlueFin::GlPeSvHealthHelper *this, BlueFin::GlSysLogEntry *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned __int8 a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35)
{
  STACK[0x13F8] = *MEMORY[0x29EDCA608];
  if ((*(this + 2273) & 1) == 0)
  {
    *(this + 2273) = 1;
    BlueFin::GlPeSvHealthData::GlPeSvHealthData(&a34);
    v35 = BlueFin::GlPeSvHealthData::Deserialize(&a34, a2);
    if (!v35)
    {
      goto LABEL_48;
    }

    if (*(this + 2274))
    {
      BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v60, &BlueFin::GlPeSvHealthHelper::s_otAllSvs);
      while (a29 != 6 || a30 != 14)
      {
        v58 = a29;
        v59 = a30;
        v40 = (*(*this + 40))(this, &v58);
        State = BlueFin::GlPeSvHealthData::GetState(&a34, &v58);
        if (v40 != 1 && State != 1)
        {
          (*(*this + 32))(this, &v58, State);
        }

        BlueFin::GlGnssSetIterator::operator++(&v60);
      }
    }

    else if (&a34 != this)
    {
      memcpy(this + 8, &a35, 0x174uLL);
      BlueFin::GlPeGnssL5HealthData::operator=(this + 380, &STACK[0xC9C]);
    }

    if (!*(this + 569))
    {
      *(this + 569) = a3;
    }

    v43 = *(this + 94);
    v44 = v43 >= a3;
    v45 = v43 - a3;
    if (v45 == 0 || !v44)
    {
      v45 = 1;
    }

    *(this + 94) = v45;
    BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v60, &BlueFin::GlPeSvHealthHelper::s_otAllSvs);
    while (1)
    {
      if (a29 == 6 && a30 == 14)
      {
        BlueFin::GlPeGnssL5HealthData::operator=(this + 380, &STACK[0xC9C]);
        goto LABEL_48;
      }

      v58 = a29;
      v59 = a30;
      v47 = (*(*this + 40))(this, &v58);
      v48 = *(*(this + 283) + 32);
      v49 = (v47 & 0xFFFFFFFD) == 1;
      if ((v48 & 0x40000) == 0)
      {
        v49 = v47 == 4;
      }

      if (v49)
      {
        v50 = BlueFin::GNSS2STR(v58);
        v51 = (v48 & 0x40000) != 0 ? "un" : "";
        GlCustomLog(11, "SVHM: Health(%s,%2d): Inconsistent state %d on %sconnected device!\n", v50, v59, v47, v51);
        (*(*this + 32))(this, &v58, 0);
        if (v58)
        {
          break;
        }
      }

LABEL_45:
      BlueFin::GlPeSvHealthHelper::LogState(this, &v58);
      BlueFin::GlGnssSetIterator::operator++(&v60);
    }

    if (!(*(*this + 40))(this, &v58))
    {
      v52 = *(*this + 32);
      if ((*(*(this + 283) + 34) & 4) == 0)
      {
        v53 = 3;
LABEL_39:
        v52(this, &v58, v53);
        goto LABEL_40;
      }

      v52(this, &v58, 4);
      v54 = *(this + 94);
      if (v54)
      {
        v53 = (10800 - v54);
        v52 = *(*this + 48);
        goto LABEL_39;
      }

      *(this + 94) = 10800;
    }

LABEL_40:
    if (*(this + 2272) == 1 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(*this + 24))(this, 0, 0);
    }

    *(this + 2272) = 0;
    goto LABEL_45;
  }

  v35 = 0;
LABEL_48:
  v55 = STACK[0x13F8];
  v56 = *MEMORY[0x29EDCA608];
  return v35;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateNonL1ClkErrTgd(uint64_t result, uint64_t a2, unsigned __int8 *a3, char a4, int a5)
{
  v24 = result;
  v31 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = a3;
    v23 = result + 25340;
    if (a5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 36;
    }

    v8 = off_2A1F10790;
    v9 = BlueFin::GlSvId::s_aucSvId2gnss;
    v10 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
    v11 = BlueFin::GlSignalId::s_ausGnss2signalId;
    do
    {
      v12 = *v6;
      if (v12 <= 0x23 && *(v6 + 1) == 1)
      {
        v26 = &unk_2A1F10778;
        v27 = 5;
        *&v29[27] = 0;
        v30 = 0;
        *&v29[12] = *(v6 + 12);
        *v29 = *v6;
        v28 = a4;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = v8(&v26);
          v12 = *v6;
        }

        if (v12 - 50 >= 0x44)
        {
          v13 = v12 - 117;
          v14 = v9[v13];
          if (v10[v14 + 14] != 255 && (v11[v14] + v13 - BlueFin::GlSvId::s_aucGnss2minSvId[v14] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v14]) <= 0x23Eu)
          {
            v15 = v11;
            v16 = v8;
            v17 = v10;
            v18 = v9;
            *v25 = *v6;
            *&v25[12] = *(v6 + 12);
            v25[28] = a4;
            if (v25[0] <= 0x23uLL)
            {
              v19 = *(*(v24 + 80) + 7392) + 32 * v25[0] + 6616;
              result = BlueFin::GlPeGalAltNavData::IsBetterThan(v25, v19);
              if (result)
              {
                *v19 = *v25;
                *(v19 + 13) = *&v25[13];
              }
            }

            if ((a4 & 1) == 0 && *v6 <= 0x3EuLL && *(v6 + 1) == 1)
            {
              v20 = (v23 + 28 * *v6);
              *(v24 + 26464) |= 0x1000000u;
              v21 = *v6;
              *(v20 + 12) = *(v6 + 12);
              *v20 = v21;
            }

            v9 = v18;
            v10 = v17;
            v8 = v16;
            v11 = v15;
          }
        }
      }

      v6 += 28;
      --v7;
    }

    while (v7);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::MakeNvMemDataActive(BlueFin::GlPeLtoMgr *this, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(this + 100) == 0 || *(this + 136) == 0)
  {
    if (!a2)
    {
LABEL_8:
      result = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v3 = *(this + 200) == *(this + 17) && *(this + 201) == *(this + 18);
    if (!v3 && (a2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  for (i = 12; i != 180; i += 24)
  {
    v6 = (*(this + 41) + i);
    v7 = (*(this + 93) + i);
    BlueFin::GlSetBase::operator=(v7 - 12, v6 - 12);
    *v7 = *v6;
  }

  for (j = 12; j != 180; j += 24)
  {
    v9 = (*(this + 65) + j);
    v10 = (*(this + 117) + j);
    BlueFin::GlSetBase::operator=(v10 - 12, v9 - 12);
    *v10 = *v9;
  }

  v11 = *(this + 409);
  if ((~v11 & 3) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v26 = (*(this + 117) + 8);
      v27 = 7;
      do
      {
        v28 = *(v26 - 1);
        v29 = *v26;
        v26 += 24;
        bzero(v28, ((4 * v29 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        --v27;
      }

      while (v27);
      BlueFin::GlSetBase::GetULong(*(this + 65), 0);
      BlueFin::GlSetBase::GetULong((*(this + 65) + 48), 0);
      BlueFin::GlSetBase::GetULong((*(this + 65) + 24), 0);
      BlueFin::GlSetBase::GetULong((*(this + 65) + 72), 0);
      GlCustomLog(14, "LtoMgr: clearing high residual flags  OrgFlags: G:%08x R:%07x S:%05x Q:%01x\n");
    }
  }

  else
  {
    v12 = (*(this + 93) + 8);
    v13 = 7;
    do
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v12 += 24;
      bzero(v14, ((4 * v15 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v13;
    }

    while (v13);
    v16 = (*(this + 117) + 8);
    v17 = 7;
    do
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 24;
      bzero(v18, ((4 * v19 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v17;
    }

    while (v17);
    ULong = BlueFin::GlSetBase::GetULong(*(this + 41), 0);
    v21 = BlueFin::GlSetBase::GetULong(*(this + 65), 0) | ULong;
    v22 = BlueFin::GlSetBase::GetULong((*(this + 41) + 48), 0);
    v23 = BlueFin::GlSetBase::GetULong((*(this + 65) + 48), 0) | v22;
    v24 = BlueFin::GlSetBase::GetULong((*(this + 41) + 24), 0);
    v25 = BlueFin::GlSetBase::GetULong((*(this + 65) + 24), 0) | v24;
    BlueFin::GlSetBase::GetULong((*(this + 41) + 72), 0);
    BlueFin::GlSetBase::GetULong((*(this + 65) + 72), 0);
    GlCustomLog(14, "LtoMgr: clearing bad SV flags  OrgFlags: G:%08x R:%07x S:%05x Q:%01x\n");
  }

  result = 1;
LABEL_25:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeLtoMgr::UpdateDigest(BlueFin::GlPeLtoMgr *a1)
{
  if ((BlueFin::GlPeLtoMgr::MakeNvMemDataActive(a1, 0) & 1) == 0)
  {
    v2 = (*(a1 + 93) + 8);
    v3 = 7;
    do
    {
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      bzero(v4, ((4 * v5 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v3;
    }

    while (v3);
    v6 = (*(a1 + 117) + 8);
    v7 = 7;
    do
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;
      bzero(v8, ((4 * v9 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v7;
    }

    while (v7);
  }
}

uint64_t BlueFin::GlPeLtoGnssAltNavInterface::Deserialize(BlueFin::GlPeLtoGnssAltNavInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 128 || *(a2 + 12) != 1)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  result = 0;
  v7 = BlueFin::GlImplGnss::m_aucImplGnssTable[U8];
  *(this + 2) = v7;
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      *(this + 44) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 26) = BlueFin::GlSysLogEntry::GetU16(a2);
      *(this + 27) = BlueFin::GlSysLogEntry::GetS16(a2);
      v9 = 58;
      v10 = 56;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      *(this + 60) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 16) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 17) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 18) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 19) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 40) = BlueFin::GlSysLogEntry::GetU16(a2);
      *(this + 41) = BlueFin::GlSysLogEntry::GetS16(a2);
      v9 = 86;
      v10 = 84;
    }

    goto LABEL_17;
  }

  if (v7)
  {
    v8 = v7 == 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 7) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 17) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 18) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 38) = BlueFin::GlSysLogEntry::GetU8(a2);
    v9 = 42;
    v10 = 40;
LABEL_17:
    *(this + v10) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + v9) = BlueFin::GlSysLogEntry::GetU16(a2);
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeSvHealthHelper::LogState(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = BlueFin::GNSS2STR(*a2);
  v6 = *(a2 + 4);
  v7 = BlueFin::GlPeSvHealthHelper::LogState(BlueFin::GlGnss const&)const::acState[v4];
  v8 = BlueFin::GlGnssSet::Has(a1 + 2304, a2);
  v9 = BlueFin::GlGnssSet::Has(a1 + 2496, a2);
  v10 = 78;
  if (v9)
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  if (v8)
  {
    v10 = 89;
  }

  GlCustomLog(14, "SVHM: Health(%s,%2d):  State:%s  InEmergencySet:%c  InBlocklistSet:%c", v5, v6, v7, v10, v11);
  if (v4 == 4 && *a2 != 0)
  {
    v13 = (*(*a1 + 56))(a1, a2);
    GlCustomLog(14, "  TimeOut:%d", v13);
  }

  return GlCustomLog(14, "\n");
}

BOOL BlueFin::GlPeLtoMgr::GetLtoDataAgeS(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v5 = *(a1 + 88);
  v6 = v5[644];
  if (v6)
  {
    v8 = *(a1 + 4 * a2 + 960);
    BlueFin::GlPeTimeManager::GetTime(v5, a3, 1, v13);
    v14 = &off_2A1F0B5F0;
    v15 = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(v13, &v14);
    v10 = (v14[4])(&v14, Gps);
    LODWORD(v11) = v15;
    *a4 = (v11 * 2.32830644e-10 + v10) - v8;
  }

  return v6 != 0;
}

uint64_t BlueFin::GlPeLtoSliceInterface::Deserialize(BlueFin::GlPeLtoSliceInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 119)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 > 1)
  {
    return 0;
  }

  v6 = *(a2 + 11);
  if (BlueFin::GlPeLtoSliceInterface::ExpectedSize(0, v3) == v6)
  {
    *(this + 2) = 0;
    *(this + 3) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
    *(this + 20) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  else
  {
    if (BlueFin::GlPeLtoSliceInterface::ExpectedSize(1, *(a2 + 12)) != v6)
    {
      return 0;
    }

    *(this + 2) = 1;
    for (i = 24; i != 100; i += 4)
    {
      *(this + i) = BlueFin::GlSysLogEntry::GetU32(a2);
    }
  }

  return 1;
}

uint64_t BlueFin::GlSysLogEntry::GetGlSet(BlueFin::GlSysLogEntry *this, void **a2)
{
  U8 = BlueFin::GlSysLogEntry::GetU8(this);
  if (*(this + 10) + U8 > *(this + 11))
  {
    v11 = "m_sReadIdx + ucByteNum <= m_sDataSize";
    DeviceFaultNotify("glutl_slog_codec.cpp", 353, "GetGlSet", "m_sReadIdx + ucByteNum <= m_sDataSize");
    v12 = 353;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", v12, v11);
  }

  v5 = U8;
  if (!U8 || (U8 & 3) != 0 || (v6 = *(a2 + 8), (v6 & 0x3F) == 0))
  {
    v11 = "ucByteNum > 0 && ucByteNum%4 == 0 && otBase.GetMaxByteSize()>0 && otBase.GetMaxByteSize()%4 == 0";
    DeviceFaultNotify("glutl_slog_codec.cpp", 356, "GetGlSet", "ucByteNum > 0 && ucByteNum%4 == 0 && otBase.GetMaxByteSize()>0 && otBase.GetMaxByteSize()%4 == 0");
    v12 = 356;
    goto LABEL_14;
  }

  bzero(*a2, ((4 * v6 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v7 = 0;
  v8 = v5 >> 2;
  do
  {
    v9 = a2[1] & 0x3F;
    result = BlueFin::GlSysLogEntry::GetU32(this);
    if (v9 > v7)
    {
      result = BlueFin::GlSetBase::SetULong(a2, v7, result);
      goto LABEL_9;
    }

    if (result)
    {
      v11 = "GetU32() == 0";
      DeviceFaultNotify("glutl_slog_codec.cpp", 369, "GetGlSet", "GetU32() == 0");
      v12 = 369;
      goto LABEL_14;
    }

LABEL_9:
    ++v7;
  }

  while (v8 > v7);
  return result;
}

uint64_t BlueFin::GlPeLtoData::Deserialize(BlueFin::GlPeLtoData *this, BlueFin::GlSysLogEntry *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) == 44)
  {
    v3 = *(a2 + 12);
    if (v3 - 13 >= 0xFFFFFFF4)
    {
      if (v3 >= 5)
      {
        if (v3 >= 9)
        {
          if (v3 == 9)
          {
            U8 = 5;
          }

          else
          {
            U8 = BlueFin::GlSysLogEntry::GetU8(a2);
          }
        }

        else
        {
          U8 = 4;
        }
      }

      else
      {
        U8 = 1;
      }

      BlueFin::GlPeLtoData::GlPeLtoData(&v37);
      BlueFin::GlPeLtoData::operator=(this, &v37);
      v37 = &v39;
      v38 = 3;
      v39 = 0;
      v40 = 0;
      v7 = *(a2 + 12);
      if (v7 >= 7)
      {
        if (U8)
        {
          for (i = 0; i != U8; ++i)
          {
            v12 = BlueFin::GlImplGnss::m_aucImplGnssTable[i];
            BlueFin::GlSysLogEntry::GetGlSet(a2, &v37);
            if (i == 4 || i == 8)
            {
              BlueFin::GlSysLogEntry::GetGlSet(a2, &v37);
            }

            else
            {
              ULong = BlueFin::GlSetBase::GetULong(&v37, 1u);
              v14 = BlueFin::GlSetBase::GetULong(&v37, 0);
              BlueFin::GlGnssIdSet::GlGnssIdSet(&v34, ULong, v14);
              v15 = BlueFin::GlGnssSet::operator()(this + 32, v12);
              v16 = BlueFin::GlSetBase::operator=(v15, &v34);
              *(v16 + 12) = v35;
              BlueFin::GlSysLogEntry::GetGlSet(a2, &v37);
              v17 = BlueFin::GlSetBase::GetULong(&v37, 1u);
              v18 = BlueFin::GlSetBase::GetULong(&v37, 0);
              BlueFin::GlGnssIdSet::GlGnssIdSet(&v34, v17, v18);
              v19 = BlueFin::GlGnssSet::operator()(this + 224, v12);
              v20 = BlueFin::GlSetBase::operator=(v19, &v34);
              *(v20 + 12) = v35;
            }
          }
        }
      }

      else
      {
        if (v7 - 3 < 2)
        {
          BlueFin::GlSysLogEntry::GetGlSet(a2, &v37);
          v21 = BlueFin::GlSetBase::GetULong(&v37, 1u);
          v22 = BlueFin::GlSetBase::GetULong(&v37, 0);
          BlueFin::GlGnssIdSet::GlGnssIdSet(&v34, v21, v22);
          v10 = BlueFin::GlSetBase::operator=(*(this + 49), &v34);
          goto LABEL_26;
        }

        if (v7 == 1)
        {
          BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete(a2, &v34);
          BlueFin::GlSetBase::operator=(&v37, &v34);
          v39 = v35;
          v40 = v36;
          v23 = BlueFin::GlSetBase::GetULong(&v37, 1u);
          v24 = BlueFin::GlSetBase::GetULong(&v37, 0);
          BlueFin::GlGnssIdSet::GlGnssIdSet(&v34, v23, v24);
          v10 = BlueFin::GlSetBase::operator=(*(this + 49), &v34);
          goto LABEL_26;
        }

        if (v7 == 2)
        {
          BlueFin::GlSysLogEntry::GetGlSet96BitsObsolete(a2, &v34);
          BlueFin::GlSetBase::operator=(&v37, &v34);
          v39 = v35;
          v40 = v36;
          v8 = BlueFin::GlSetBase::GetULong(&v37, 1u);
          v9 = BlueFin::GlSetBase::GetULong(&v37, 0);
          BlueFin::GlGnssIdSet::GlGnssIdSet(&v34, v8, v9);
          v10 = BlueFin::GlSetBase::operator=(*(this + 49), &v34);
LABEL_26:
          *(v10 + 12) = v35;
          goto LABEL_27;
        }

        if (U8)
        {
          for (j = 0; j != U8; ++j)
          {
            v29 = BlueFin::GlImplGnss::m_aucImplGnssTable[j];
            BlueFin::GlSysLogEntry::GetGlSet(a2, &v37);
            if (j != 4 && j != 8)
            {
              v30 = BlueFin::GlSetBase::GetULong(&v37, 1u);
              v31 = BlueFin::GlSetBase::GetULong(&v37, 0);
              BlueFin::GlGnssIdSet::GlGnssIdSet(&v34, v30, v31);
              v32 = BlueFin::GlGnssSet::operator()(this + 224, v29);
              v33 = BlueFin::GlSetBase::operator=(v32, &v34);
              *(v33 + 12) = v35;
            }
          }
        }
      }

LABEL_27:
      BlueFin::GlSysLogEntry::GetBuffer(a2, this + 8, 0x10u);
      v25 = *(a2 + 12);
      if (v25 - 4 <= 7)
      {
        BlueFin::GlSysLogEntry::GetU32(a2);
        v25 = *(a2 + 12);
        if (v25 < 6)
        {
LABEL_39:
          BlueFin::GlSysLogEntry::CheckConsumed(a2, 3532);
          result = 1;
          goto LABEL_40;
        }

        if (U8 >= 2)
        {
          v26 = U8 - 1;
          do
          {
            BlueFin::GlSysLogEntry::GetU32(a2);
            --v26;
          }

          while (v26);
          do
          {
LABEL_34:
            BlueFin::GlSysLogEntry::GetU32(a2);
            --U8;
          }

          while (U8);
          v25 = *(a2 + 12);
          goto LABEL_36;
        }

        if (U8)
        {
          goto LABEL_34;
        }
      }

LABEL_36:
      if (v25 >= 8)
      {
        *(this + 104) = BlueFin::GlSysLogEntry::GetU32(a2);
        if (*(a2 + 12) == 11)
        {
          BlueFin::GlSysLogEntry::GetU32(a2);
        }
      }

      goto LABEL_39;
    }
  }

  result = 0;
LABEL_40:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoAlmDataInterface::Deserialize(BlueFin::GlPeLtoAlmDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 121 || *(a2 + 12) != 1)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  result = 0;
  v7 = BlueFin::GlImplGnss::m_aucImplGnssTable[U8];
  *(this + 2) = v7;
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 4) = BlueFin::GlSysLogEntry::GetS16(a2) / 10.0;
        *(this + 10) = 0;
      }

      else
      {
        *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(this + 14) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 15) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
        *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
        *(this + 6) = BlueFin::GlSysLogEntry::GetS32(a2);
        *(this + 32) = BlueFin::GlSysLogEntry::GetS8(a2);
        *(this + 7) = BlueFin::GlSysLogEntry::GetS32(a2);
        *(this + 17) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(this + 18) = BlueFin::GlSysLogEntry::GetS16(a2);
        *(this + 19) = BlueFin::GlSysLogEntry::GetS16(a2);
        *(this + 40) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 41) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 42) = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      return 1;
    }

    goto LABEL_11;
  }

  if ((v7 - 3) < 2)
  {
LABEL_11:
    *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 16) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 9) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 7) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 8) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 9) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 20) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 21) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 22) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 23) = BlueFin::GlSysLogEntry::GetU16(a2);
    return 1;
  }

  if (v7 != 5)
  {
    return result;
  }

  *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 11) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 12) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 13) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 14) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 15) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 16) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 34) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 35) = BlueFin::GlSysLogEntry::GetU8(a2);
  return 1;
}

uint64_t BlueFin::GlPeTimeManager::GetTime@<X0>(BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlUtcTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = 0.0;
  v9 = *(a2 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 2, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a3, a4);
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoAlm(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v15 = &unk_2A1F10400;
  v16 = 7;
  *v17 = 0u;
  v18 = 0u;
  v19 = 0;
  result = BlueFin::GlPeLtoAlmDataInterface::Deserialize(&v15, a2);
  if (result)
  {
    result = 0;
    if (v16 > 2)
    {
      if (v16 != 3)
      {
        if (v16 == 4)
        {
          if (v17[0] <= 0x3Eu)
          {
            v10 = v17[0] + 1;
            BlueFin::GlPeLtoMgr::UpdateBdsAlmanac(this, v17, v4, v5, v6, v7, v8, v9);
            goto LABEL_23;
          }
        }

        else
        {
          if (v16 != 5)
          {
            return result;
          }

          if (v17[0] <= 0x3Eu)
          {
            v10 = v17[0] + 1;
            BlueFin::GlPeAlmMgr::SetAsstAlm((*(this + 10) + 34112), v17, *(this + 6615), *v4.i64, v5, v6, v7);
            if (v17[0] <= 0x3EuLL)
            {
              v13 = this + 24 * v17[0] + 18876;
              *v13 = *v17;
              *(v13 + 2) = v18;
            }

            goto LABEL_23;
          }
        }

        return 0;
      }

      if (v17[0] > 0x3Eu)
      {
        return 0;
      }

      v10 = v17[0] + 1;
      BlueFin::GlPeLtoMgr::UpdateQzssAlmanac(this, v17, *v4.i64, v5, v6, v7, v8, v9);
    }

    else
    {
      if (v16)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            return result;
          }

          v10 = v17[2];
          if (v17[2] - 1 <= 0x3E)
          {
            BlueFin::GlPeAlmMgr::SetAsstAlm(*(this + 10) + 34112, v17, 1);
            if (v17[2] - 1 <= 0x17)
            {
              v11 = v18;
              v12 = (this + 32 * v17[2] + 15448);
              *v12 = *v17;
              v12[1] = v11;
            }

            goto LABEL_23;
          }

          return 0;
        }

        if (v17[0] - 120 <= 0x3E)
        {
          v10 = v17[0] - 119;
          BlueFin::GlPeLtoMgr::UpdateSbasAlmanac(this, *(this + 6615) / 0x93A80u, v17[0], *&v17[4]);
          goto LABEL_23;
        }

        return 0;
      }

      if (v17[0] > 0x3Eu)
      {
        return 0;
      }

      v10 = v17[0] + 1;
      BlueFin::GlPeLtoMgr::UpdateGpsAlmanac(this, v17, *v4.i64, v5, v6, v7, v8, v9);
    }

LABEL_23:
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v16);
    GlCustomLog(14, "LtoMgr: read LTO Alm (%s %d) from NVMEM!\n", AbbrevGnssName, v10);
    return 1;
  }

  return result;
}

BOOL BlueFin::GlPeRtiData::Deserialize(BlueFin::GlPeRtiData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 64)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 > 6)
  {
    return 0;
  }

  if (v3 > 4)
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  else
  {
    U8 = __const__ZN7BlueFin11GlPeRtiData11DeserializeERNS_13GlSysLogEntryE_aiVersionToNumGnss[*(a2 + 12)];
  }

  if (U8 >= 9)
  {
    DeviceFaultNotify("glpe_rti_requestor.cpp", 142, "Deserialize", "iNumGnss <= _DIM(m_otRti.ganssInfoAvailList.aullImplGnssMask)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rti_requestor.cpp", 142, "iNumGnss <= _DIM(m_otRti.ganssInfoAvailList.aullImplGnssMask)");
  }

  *(this + 17) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v7 = *(a2 + 12);
  if (v7 >= 6)
  {
    if (!U8)
    {
LABEL_22:
      *(this + 36) = BlueFin::GlSysLogEntry::GetU32(a2);
      goto LABEL_23;
    }

    v12 = (this + 16);
    v13 = U8;
    v14 = U8;
    do
    {
      *v12++ = BlueFin::GlSysLogEntry::GetU64(a2);
      --v14;
    }

    while (v14);
    v15 = (this + 80);
    do
    {
      *v15++ = BlueFin::GlSysLogEntry::GetU64(a2);
      --v13;
    }

    while (v13);
  }

  else
  {
    if (!U8)
    {
      goto LABEL_21;
    }

    v8 = (this + 16);
    v9 = U8;
    v10 = U8;
    do
    {
      *v8++ = BlueFin::GlSysLogEntry::GetU32(a2);
      --v10;
    }

    while (v10);
    v11 = (this + 80);
    do
    {
      *v11++ = BlueFin::GlSysLogEntry::GetU32(a2);
      --v9;
    }

    while (v9);
  }

  v7 = *(a2 + 12);
LABEL_21:
  if (v7 >= 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 175);
  return *(a2 + 12) > 1u;
}

uint64_t BlueFin::GlPeTimeManager::updateLeapSeconds(BlueFin::GlPeTimeManager *this, unsigned __int8 a2, int a3, unsigned int a4, int a5)
{
  if (!a3)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 6282, "updateLeapSeconds", "eSource != LEAP_SEC_SRC_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 6282, "eSource != LEAP_SEC_SRC_INVALID");
  }

  v7 = *(this + 646);
  v8 = *(this + 648);
  v9 = a2 + 14;
  if (a3 != 5)
  {
    v9 = a2;
  }

  v10 = *(this + 2588);
  v11 = v9;
  v12 = (v9 - 11);
  if (v10 != v9)
  {
    if (v12 < 0x13)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

LABEL_9:
      v14 = *(this + 2588) - v9;
      if (v14 < 0)
      {
        v14 = v9 - *(this + 2588);
      }

      if (v14 == 1)
      {
        *(this + 2604) = v10;
        *(this + 650) = v7;
      }

      else
      {
LABEL_15:
        *(this + 650) = 0;
        *(this + 2604) = 0x80;
      }

      *(this + 2588) = v9;
      *(this + 2589) = a4;
      *(this + 646) = 1 << a3;
      v16 = *(this + 848);
      if (v16 < *(this + 850) || v16 > *(this + 851))
      {
        *(this + 852) |= 4u;
      }

      v13 = 1;
      goto LABEL_20;
    }

LABEL_14:
    GlCustomLog(11, "GlPeTimeManager::updateLeapSeconds(%u): Error! Update value out of range!  Source:%s  LeapSec:%d\n", *(this + 642), off_29EEB4438[a3], v9);
    v15 = 0;
    goto LABEL_34;
  }

  if (v12 >= 0x13)
  {
    goto LABEL_14;
  }

  if (*(this + 2589) > a4)
  {
    goto LABEL_9;
  }

  v13 = 0;
  *(this + 646) = v7 | (1 << a3);
LABEL_20:
  if (a5 == -128)
  {
    goto LABEL_26;
  }

  v17 = a5 - v11;
  if (a5 - v11 < 0)
  {
    v17 = v11 - a5;
  }

  if (v17 > 1)
  {
LABEL_26:
    v18 = 0;
  }

  else
  {
    if (v8)
    {
      v18 = *(this + 2596) != a5;
    }

    else
    {
      v18 = 0;
    }

    *(this + 2596) = a5;
    *(this + 648) = v8 | (1 << a3);
  }

  BlueFin::GlPeTimeManager::updateConversionTable(this);
  if (((v13 | v18) & 1) != 0 || !v7 && *(this + 646) || !v8 && *(this + 648))
  {
    BlueFin::GlPeSpecialTimeEvents::ScheduleTimeEvents((this + 3388), this);
  }

  GlCustomLog(14, "GlPeTimeManager::updateLeapSeconds(%u): Update:[Source:%s  LeapSec:%d]  Accepted:%c\n", *(this + 642), off_29EEB4438[a3], v11, 89);
  v15 = 1;
LABEL_34:
  v19 = 70;
  if (!*(this + 2589))
  {
    v19 = 84;
  }

  GlCustomLog(14, "GlPeTimeManager::updateLeapSeconds(%u): ActiveState:[Valid:%c  LeapSec:%d  Sources:{", *(this + 642), v19, *(this + 2588));
  v22 = *(this + 646);
  v23 = v22;
  v21 = 1;
  BlueFin::GlSetIterator::operator++(&v21);
  while (BYTE1(v21) != v21)
  {
    GlCustomLog(14, "%s ", off_29EEB4438[SHIWORD(v21)]);
    BlueFin::GlSetIterator::operator++(&v21);
  }

  GlCustomLog(14, "}\n");
  return v15;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetCurveFitIntervalS(BlueFin::GlPeLtoEphemeris *this)
{
  if ((*(this + 8) & 0xF0) != 0x50)
  {
    return 21600;
  }

  *&v5[9] = v1;
  *&v5[13] = v2;
  (*(*this + 136))(v5 + 1);
  if (HIBYTE(v5[0]) == 14)
  {
    return 10800;
  }

  (*(*this + 136))(v5, this);
  if (LOBYTE(v5[0]) == 18)
  {
    return 10800;
  }

  else
  {
    return 21600;
  }
}

uint64_t BlueFin::GlPeIonoMgr::SetLtoIono(uint64_t a1, char *a2, unsigned int a3, int a4)
{
  if (*(a1 + 120) && *(a1 + 124) > a3)
  {
    v7 = "LTO";
    if (a4)
    {
      v7 = "RTO";
    }

    return GlCustomLog(15, "current GPS IONO is newer, no update from %s.\n", v7);
  }

  else
  {
    v9 = a1 + 64;
    v10 = "LTO";
    if (a4)
    {
      v10 = "RTO";
    }

    GlCustomLog(15, "IONO(%s): ", v10);
    GlCustomLog(15, "%d, %d, %d, %d, ", *a2, a2[1], a2[2], a2[3]);
    GlCustomLog(15, "%d, %d, %d, %d  ", a2[4], a2[5], a2[6], a2[7]);
    GlCustomLog(15, "\n");
    v17 = &unk_2A1F10338;
    v11.i32[0] = *a2;
    v12 = vmovl_u16(*&vmovl_u8(v11));
    v13 = vshr_n_s32(vshl_n_s32(*v12.i8, 0x18uLL), 0x18uLL);
    v14.i64[0] = v13.i32[0];
    v14.i64[1] = v13.i32[1];
    v15 = vcvtq_f64_s64(v14);
    *v12.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v12, v12, 8uLL), 0x18uLL), 0x18uLL);
    v14.i64[0] = v12.i32[0];
    v14.i64[1] = v12.i32[1];
    v16 = vmulq_f64(vcvtq_f64_s64(v14), vdupq_n_s64(0x3E70000000000000uLL));
    v18 = vmulq_f64(v15, xmmword_298A40390);
    v19 = v16;
    LODWORD(v16.f64[0]) = *(a2 + 1);
    v20 = vshlq_u32(vmovl_s16(*&vmovl_s8(*&v16.f64[0])), xmmword_298A403A0);
    v21 = 5;
    v22 = a3;
    result = BlueFin::GlPeIonoModel::operator!=(&v17, a1 + 64);
    *(a1 + 48504) = result;
    *(a1 + 72) = v18;
    *(a1 + 88) = v19;
    *(a1 + 104) = v20;
    *(a1 + 120) = 5;
    *(a1 + 124) = a3;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return (*(*v9 + 24))(a1 + 64, 0, 0);
    }
  }

  return result;
}

BlueFin::GlPeTimeManager *BlueFin::GlPeSvHealthMgr::SetGnssSvL5Health(uint64_t a1, unsigned int *a2, unsigned int a3, int a4, int a5)
{
  result = *(a1 + 2744);
  if (!*(result + 644))
  {
    return result;
  }

  BlueFin::GlPeTimeManager::GetTime(result, 1, v17);
  v18 = &off_2A1F0B5F0;
  v19 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v17, &v18);
  result = (v18[4])(&v18, Gps);
  LODWORD(v12) = v19;
  v13 = (v12 * 2.32830644e-10 + result);
  if (!a5)
  {
    if (v13 >= a3)
    {
      return result;
    }

    result = BlueFin::GlPeGnssL5HealthData::getL5HealthData(a1 + 412, a2);
    if (!result)
    {
      return result;
    }

    v15 = 1;
    goto LABEL_13;
  }

  result = BlueFin::GlPeGnssL5HealthData::getL5HealthData(a1 + 412, a2);
  if (result)
  {
    v14 = *(result + 1);
    if (!v14 || v14 == 2 || v14 == 1 && *result - 120 < v13)
    {
      result = BlueFin::GlPeGnssL5HealthData::getL5HealthData(a1 + 412, a2);
      if (result)
      {
        v15 = 2;
LABEL_13:
        if (a4)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        *(result + 1) = v15;
        *(result + 2) = v16;
        *result = a3;
      }
    }
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::ApplyDecodedGlonassAlmanac(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, int a4, int8x16_t a5, int8x16_t a6)
{
  if (!*(*(a1 + 448) + 2576))
  {
    return 0;
  }

  *a5.i64 = vcvtd_n_f64_u32(*(a3 + 2), 5uLL);
  *a6.i64 = *a5.i64 - trunc(*a5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  a6.i64[0] = vbslq_s8(vnegq_f64(v7), a6, a5).i64[0];
  if (*a6.i64 < 0.0 || *a6.i64 >= 1.0)
  {
LABEL_47:
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v12 = *a3;
  v13 = *a6.i64 * 4294967300.0 + 0.5;
  if (v13 >= 4294967300.0)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  LODWORD(v84[0]) = v14;
  HIDWORD(v84[0]) = *a5.i64 + 86400 * v12 - 86400;
  v15 = (*(*a2 + 32))(a2);
  LODWORD(v80) = a2[2];
  HIDWORD(v80) = v15;
  BlueFin::GlTimePoint::resolveAmbiguity(v84, &v80, 0x7861F80u);
  v16 = (*(*a2 + 24))(a2, HIDWORD(v84[0]));
  v96 = v14;
  v97 = v16;
  v95 = &off_2A1F0E430;
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  if (v18 <= 0xF)
  {
    v19 = *(a3 + 3);
  }

  else
  {
    v19 = v18 - 32;
  }

  v21 = v17 - 1 < 0x18 && (v19 + 7) < 0xEu;
  if (v21)
  {
    v75 = *(a3 + 1);
    v73 = *(a3 + 3);
    v71 = *(a3 + 4);
    v22 = vcvtd_n_f64_u32(a3[11], 0x14uLL);
    v23 = a3[12];
    v77 = a3[13];
    v24 = *(a3 + 28);
    v85 = 0;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0;
    v91 = -1;
    v93 = 2;
    v94 = v17;
    LOWORD(v84[0]) = v17;
    v92 = v19;
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = 63;
    }

    v69 = v25;
    v70 = v19;
    WORD1(v84[0]) = v25;
    v84[1] = v22;
    BlueFin::GlPeTimeManager::GetTime(*(a1 + 448), &v95, 1, &v80);
    v83 = 0;
    v82 = &off_2A1F0B5F0;
    Gps = BlueFin::GlPeGnssTime::GetGps(&v80, &v82);
    v27 = ((v82[4])(&v82, Gps) % 0x93A80 + 2048) & 0x1FF000;
    v81 = 0;
    v80 = &off_2A1F0B5F0;
    if (v27 >= 0x93A80)
    {
      v35 = (v82[4])(&v82);
      LODWORD(v81) = 0;
      HIDWORD(v81) = 604800 * (v35 / 0x93A80) + 604800;
    }

    else
    {
      v29 = (v82[4])(&v82);
      *v29.i64 = v27;
      v79 = &off_2A1F0B5F0;
      *v30.i64 = v27 - trunc(v27);
      v31.f64[0] = NAN;
      v31.f64[1] = NAN;
      v32 = *vbslq_s8(vnegq_f64(v31), v30, v29).i64;
      if (v32 >= 1.0)
      {
        goto LABEL_47;
      }

      v33 = v32 * 4294967300.0 + 0.5;
      v34 = v33;
      if (v33 >= 4294967300.0)
      {
        v34 = -1;
      }

      LODWORD(v81) = v34;
      HIDWORD(v81) = v27 + 604800 * (v28 / 0x93A80);
    }

    v36 = a4;
    v76 = vcvtd_n_f64_s32(v75, 0x14uLL);
    v37 = vcvtd_n_f64_s32(v73, 0x14uLL);
    v38 = vcvtd_n_f64_s32(v71, 9uLL);
    v39 = vcvtd_n_f64_s32(v23, 0xFuLL);
    v40 = ((v80[4])(&v80) / 0x93A80);
    v90 = v40;
    v41 = (v80[4])(&v80) % 0x93A80;
    v85 = v41;
    v42 = v81;
    v43 = HIDWORD(v81);
    if (v83)
    {
      if (v81 < v83)
      {
        v43 = (__PAIR64__(HIDWORD(v83) - HIDWORD(v81), v83) - v81) >> 32;
        v42 = v83 - v81;
        v44 = 1;
      }

      else
      {
        v44 = 0;
        v43 = (v81 - v83) >> 32;
        v42 = v81 - v83;
      }
    }

    else
    {
      v44 = 0;
    }

    v45 = v42 * 2.32830644e-10 + v43;
    if ((v44 & ((v43 | v42) != 0)) != 0)
    {
      v45 = -v45;
    }

    v72 = v45;
    v74 = v77;
    v46 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(v84, v37);
    *&v86 = v46;
    v47 = v39 * 3.14159265;
    v48 = tan(v39 * 3.14159265 * 0.5);
    v49 = atan(sqrt((1.0 - v22) / (v22 + 1.0)) * v48);
    v50 = v49 + v49;
    v51 = v38 + 43200.0;
    v78 = v47;
    if (v47 >= 3.14159265)
    {
      v52 = v38 + 43200.0;
    }

    else
    {
      v52 = 0.0;
    }

    v53 = 6.28318531;
    v54 = 6.28318531 / v51;
    v68 = v22;
    v55 = v52 + (v50 - v22 * sin(v50)) / (6.28318531 / v51);
    v56 = pow(3.9860044e14 / (v54 * v54), 0.333333333);
    v57 = pow(6378136.0 / v56, 3.5) * -10.0 * 0.0000002020057;
    v67 = v46;
    v58 = v57 * cos(v46);
    v59 = sqrt(v56);
    *(&v86 + 1) = v58;
    *&v87 = v59;
    v60 = (v82[4])(&v82);
    LODWORD(v61) = v83;
    v62 = fmod((v61 * 2.32830644e-10 + (v60 % 0x93A80)) * 0.00007292115 + v76 * 3.14159265 + v58 * v72, 6.28318531);
    *(&v87 + 1) = v62;
    if (v62 <= 3.14159265)
    {
      if (v62 >= -3.14159265)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v53 = -6.28318531;
    }

    v62 = v62 + v53;
    *(&v87 + 1) = v62;
LABEL_44:
    v63 = v54 * (v72 - v55);
    *&v88 = v78;
    *(&v88 + 1) = v63;
    *(&v89 + 1) = 0;
    *&v89 = v74 * -0.00000381469727;
    v91 = v36;
    AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(a1, 2u, v17);
    if (!BlueFin::GlPeAlmanac::operator==(v84, AlmReference))
    {
      *(AlmReference + 104) = 2;
      *(AlmReference + 108) = v17;
      *AlmReference = v17;
      *(AlmReference + 2) = v69;
      *(AlmReference + 8) = v68;
      *(AlmReference + 16) = v41;
      *(AlmReference + 24) = v67;
      *(AlmReference + 32) = v58;
      *(AlmReference + 40) = v59;
      *(AlmReference + 48) = v62;
      *(AlmReference + 56) = v78;
      *(AlmReference + 64) = v63;
      *(AlmReference + 72) = v74 * -0.00000381469727;
      *(AlmReference + 80) = 0;
      *(AlmReference + 88) = v40;
      *(AlmReference + 92) = v36;
      *(AlmReference + 96) = v70;
      LODWORD(v79) = 2;
      BYTE4(v79) = v17;
      v65 = *(a1 + 432);
      **(v65 + 120) |= 1 << v17;
      BlueFin::GlSetBase::Remove(v65 + 96, v17);
      BlueFin::GlPeAlmMgr::Serialize(a1, &v79, 0);
    }
  }

  return v21;
}

uint64_t BlueFin::GlPeBdsEphMgr::setAsstEphCommon(BlueFin::GlPeBdsEphMgr *this, const BlueFin::GlPeEphemeris *a2)
{
  v4 = *(this + 2);
  if (!*(v4 + 644))
  {
    return (*(*this + 376))(this, a2, 0);
  }

  BlueFin::GlPeTimeManager::GetTime(v4, 1, v6);
  v7[0] = &unk_2A1F11310;
  v7[1] = 0;
  BlueFin::GlUtcTime::breakdownFct(v7);
  BlueFin::GlPeGnssTime::GetUtc(v6, v7);
  result = 0;
  if (v8 >= 0x7D6u)
  {
    return (*(*this + 376))(this, a2, 0);
  }

  return result;
}

BOOL BlueFin::GlPeGpsTimeMgr::isExpired(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2)
{
  v2 = *(this + 18);
  if (!v2)
  {
    return 1;
  }

  if (v2 == 4)
  {
    return 0;
  }

  v6 = *(this + 23);
  v25 = *(this + 22);
  v26 = v6;
  v24 = &off_2A1F0B5F0;
  if (v6 < 0x93A80)
  {
    v7 = (*(*a2 + 32))(a2);
    v10 = (v7 / 0x93A80) - *(this + 105);
    if (v10 >= 0)
    {
      v11 = (v7 / 0x93A80) - *(this + 105);
    }

    else
    {
      v11 = *(this + 105) - (v7 / 0x93A80);
    }

    v12 = v10 + 256;
    if (v10 >= -127)
    {
      v12 = (v7 / 0x93A80) - *(this + 105);
    }

    if (v10 >= 128)
    {
      v12 = v10 - 256;
    }

    v13 = *(this + 104) << 12;
    *v8.i64 = v13;
    if (v11 == 128)
    {
      v12 = 0;
    }

    *v9.i64 = *v8.i64 - trunc(*v8.i64);
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = *vbslq_s8(vnegq_f64(v14), v9, v8).i64;
    if (v15 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v16 = v12 + v7 / 0x93A80;
    v17 = v15 * 4294967300.0 + 0.5;
    v18 = v17;
    if (v17 >= 4294967300.0)
    {
      v18 = -1;
    }

    v25 = v18;
    v26 = v13 + 604800 * v16;
  }

  v19 = (*(*a2 + 32))(a2);
  LODWORD(v20) = *(a2 + 2);
  v21 = v20 * 2.32830644e-10 + v19;
  v22 = (v24[4])(&v24);
  LODWORD(v23) = v25;
  return vabdd_f64(v21, v23 * 2.32830644e-10 + v22) > 4838400.0;
}

uint64_t BlueFin::GlPeGpsTimeMgr::GetFutureLS(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2, signed __int8 *a3)
{
  if (!*(this + 18))
  {
    return 0;
  }

  if (BlueFin::GlPeGpsTimeMgr::isExpired(this, a2))
  {
    return 0;
  }

  FctOfFutureLS = BlueFin::GlPeGpsTimeMgr::GetFctOfFutureLS(this, a2);
  v10 = (*(*a2 + 32))(a2);
  LODWORD(v9) = *(a2 + 2);
  *v10.i64 = v9 * 2.32830644e-10 + v8;
  *v11.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *&v14 = vbslq_s8(v13, v11, v10).u64[0];
  if (*v10.i64 > 4294967300.0)
  {
    *v10.i64 = v14;
  }

  if (*v10.i64 < -4294967300.0)
  {
    *v7.i64 = -*v10.i64;
    *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
    *v10.i64 = -*vbslq_s8(v13, v10, v7).i64;
  }

  v15 = *v10.i64 < 0.0 ? --*v10.i64 : *v10.i64;
  if (FctOfFutureLS < v15)
  {
    return 0;
  }

  *a3 = *(this + 109);
  return 1;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngCbOnLTOFileRead(BlueFin::GlDbgCodec *result, uint64_t a2, uint64_t a3)
{
  *(result + 867) = a2;
  if (!*(result + 101))
  {
    v5 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 514);
    (*(*v5 + 32))(v5, 1);
    v6 = *(v5 + 92);
    if (v6)
    {
      v6(v5 + 608, v5 + 6920, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(v5, 514);
    v7 = *(*v5 + 32);

    return v7(v5, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgLTOFileReader::FromLTOFileToGll(BlueFin::GlDbgLTOFileReader *this, char *a2, unsigned int a3)
{
  v8 = a3;
  if (a2)
  {
    if (a3 > 0x2000)
    {
      (*(**(this + 1) + 104))(*(this + 1), 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_ltofilereader.cpp:44");
    }

    BlueFin::GlDbgCodec::WriteStart(*(this + 1), 2049);
    BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v8);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    (***(this + 2))();
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 2049);
    v5 = *(**(this + 1) + 32);

    return v5();
  }

  else
  {
    v7 = *(**(this + 1) + 104);

    return v7();
  }
}

uint64_t BlueFin::GlDbgLTOFileReader::SetCbOnLtoFileGpsTimestampReport(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 2050);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 8))(*(a1 + 16), BlueFin::GlDbgProxyLtoFileGpsTimestampsReport);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 2050);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_5,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_5>,void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a3;
  if (*a3)
  {
    v10 = *a4;
    v11 = *(a1 + 8);
    if (*a4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    v29 = v12;
    v30 = &v29;
    v13 = std::__hash_table<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::__unordered_map_hasher<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::hash<gnss::SvPositionSource>,std::equal_to<gnss::SvPositionSource>,true>,std::__unordered_map_equal<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::equal_to<gnss::SvPositionSource>,std::hash<gnss::SvPositionSource>,true>,std::allocator<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>>>::__emplace_unique_key_args<gnss::SvPositionSource,std::piecewise_construct_t const&,std::tuple<gnss::SvPositionSource const&>,std::tuple<>>((v11 + 2152), &v29);
    v27 = 0;
    v28 = 0;
    v26 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v26, v13[3], v13[4], v13[4] - v13[3]);
    if (v26 == v27)
    {
      FireDeviceLog::DeviceLogBase(6, "EngineLtoFileReadImpl,noData,bRTO,%d", v14, v15, v16, v17, v18, v19, v10);
      v20 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_13;
    }

    FireDeviceLog::DeviceLogBase(6, "EngineLtoFileReadImpl,size,%zu,bRTO,%d", v14, v15, v16, v17, v18, v19, v27 - v26);
    (*(*v9 + 16))(v9, FireCallback::GlEngineOnLtoFileErrReport);
    (*(*v9 + 8))(v9, FireCallback::GlLTOFileGpsPredictionTimestampReport);
    v20 = v26;
    v21 = v27 - v26;
    if (v27 != v26)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v21 + v22;
        if (v24 >= 0x2000)
        {
          v25 = 0x2000;
        }

        else
        {
          v25 = v24;
        }

        (**v9)(v9, &v20[v23], v25);
        v23 += 0x2000;
        v20 = v26;
        v21 = v27 - v26;
        v22 -= 0x2000;
      }

      while (v23 < v27 - v26);
    }

    if (v20)
    {
LABEL_13:
      v27 = v20;
      operator delete(v20);
    }
  }

  else
  {

    FireDeviceLog::DeviceLogBase(2, "EngineLtoFileReadImpl,pLTOFileReader,nullptr", a3, a4, a5, a6, a7, a8, a9);
  }
}