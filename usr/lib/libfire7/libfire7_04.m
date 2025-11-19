uint64_t BlueFin::GlMeSrdRfInit4777::GetRfInit(BlueFin::GlMeSrdRfInit4777 *this, char a2)
{
  v2 = *(this + 554);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v15 = *(this + 2);
      if (v15 > 8)
      {
        goto LABEL_58;
      }

      if (((1 << v15) & 0x1C6) != 0)
      {
        v16 = *(*this + 2184);
        *(this + 4) = 0;
        if (v16 == 4)
        {
          *(this + 20) = xmmword_298A32B40;
          *(this + 3) = 2126588388;
          *(this + 36) = xmmword_298A32B50;
          *(this + 52) = xmmword_298A32B60;
          *(this + 68) = xmmword_298A32B70;
          v5 = 17215;
        }

        else
        {
          *(this + 20) = xmmword_298A32B00;
          *(this + 3) = 2119165741;
          *(this + 36) = xmmword_298A32B10;
          *(this + 52) = xmmword_298A32B20;
          *(this + 68) = xmmword_298A32B30;
          v5 = 17155;
        }

        goto LABEL_18;
      }

      if (v15)
      {
LABEL_58:
        DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 438, "GetRfInit", "0");
        v17 = 438;
      }

      else
      {
        DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 381, "GetRfInit", "0");
        v17 = 381;
      }

LABEL_59:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v17, "0");
    }

    if (v2 == 6)
    {
      goto LABEL_20;
    }

    if (v2 != 5)
    {
LABEL_49:
      DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 443, "GetRfInit", "0");
      v17 = 443;
      goto LABEL_59;
    }

LABEL_9:
    *(this + 12) = 0xC1EA77167EC6A954;
    if (*(this + 2284))
    {
      v3 = 543258880;
    }

    else
    {
      v3 = -1875854208;
    }

    if (*(this + 2284))
    {
      v4 = 146474822;
    }

    else
    {
      v4 = 73237411;
    }

    *(this + 5) = 1388646378;
    *(this + 6) = v3;
    *(this + 7) = v4;
    *(this + 2) = xmmword_298A32C20;
    *(this + 3) = xmmword_298A32C30;
    *(this + 4) = xmmword_298A32C40;
    *(this + 20) = 7258400;
    if (v2 == 5)
    {
      v5 = 25752;
    }

    else
    {
      v5 = 21245;
    }

    goto LABEL_18;
  }

  if (v2 == 1)
  {
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v14 = *(this + 2);
    if (v14 > 8)
    {
      goto LABEL_57;
    }

    if (((1 << v14) & 0x1C6) != 0)
    {
      if (*(*this + 2184) == 4)
      {
        *(this + 28) = xmmword_298A32BE0;
        *(this + 12) = xmmword_298A32BF0;
        *(this + 44) = xmmword_298A32C00;
        *(this + 60) = xmmword_298A32C10;
        *(this + 76) = 0x1B5BC0020B00F9;
        v5 = 8608;
      }

      else
      {
        *(this + 28) = xmmword_298A32BA0;
        *(this + 12) = xmmword_298A32BB0;
        *(this + 44) = xmmword_298A32BC0;
        *(this + 60) = xmmword_298A32BD0;
        *(this + 76) = 0x22A9C0020B00F9;
        v5 = 8577;
      }

LABEL_18:
      *(this + 42) = v5;
      *(this + 86) = a2;
      return this + 12;
    }

    if (v14)
    {
LABEL_57:
      DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 303, "GetRfInit", "0");
      v17 = 303;
    }

    else
    {
      DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 245, "GetRfInit", "0");
      v17 = 245;
    }

    goto LABEL_59;
  }

  if (v2 != 3)
  {
    goto LABEL_49;
  }

LABEL_20:
  v7 = *(this + 2);
  if (v7 > 8)
  {
LABEL_52:
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 369, "GetRfInit", "0");
    v17 = 369;
    goto LABEL_59;
  }

  if (((1 << v7) & 0x1C6) == 0)
  {
    if (!v7)
    {
      DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 312, "GetRfInit", "0");
      v17 = 312;
      goto LABEL_59;
    }

    goto LABEL_52;
  }

  if (*(*this + 2184) == 4)
  {
    v8 = 2126588388;
  }

  else
  {
    v8 = 2119165741;
  }

  if (*(*this + 2184) == 4)
  {
    v9 = 526608417;
  }

  else
  {
    v9 = 40069154;
  }

  if (*(*this + 2184) == 4)
  {
    v10 = 129925046;
  }

  else
  {
    v10 = 197033989;
  }

  if (*(*this + 2184) == 4)
  {
    v11 = 4555641;
  }

  else
  {
    v11 = 7117668;
  }

  if (*(*this + 2184) == 4)
  {
    v12 = 8608;
  }

  else
  {
    v12 = 8577;
  }

  v13 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*(*this + 2184) == 4)), 0x1FuLL));
  *(this + 20) = vbslq_s8(v13, xmmword_298A32B40, xmmword_298A32B00);
  *(this + 3) = v8;
  *(this + 4) = 0;
  *(this + 36) = vbslq_s8(v13, xmmword_298A32B90, xmmword_298A32B80);
  *(this + 13) = v9;
  *(this + 7) = 0x1000201070108;
  *(this + 16) = 12336;
  *(this + 17) = v10;
  *(this + 9) = 0x20B00F9010501F3;
  *(this + 20) = v11;
  *(this + 42) = v12;
  *(this + 86) = a2;
  if (v2 == 6)
  {
    *(this + 42) = 3 * v12;
  }

  return this + 12;
}

uint64_t BlueFin::GlMeSrdRfInit4777::GetESWRadioMode(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 8) - 1;
  if (v2 >= 8 || ((0xE3u >> v2) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1335, "GetESWRadioMode", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", 1335, "0");
  }

  *a2 = dword_298A32C68[v2];
  return result;
}

uint64_t BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(uint64_t this, char a2, __int16 a3, int a4)
{
  v4 = *(this + 2224);
  if (v4 >= 0x100)
  {
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 533, "Add_wOffsetInput", "bIsulApbCount");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", 533, "bIsulApbCount");
  }

  v5 = this + 8 * v4;
  *(v5 + 88) = a2;
  *(v5 + 90) = a3;
  *(v5 + 92) = a4;
  *(this + 2224) = v4 + 1;
  return this;
}

uint64_t BlueFin::EswRpcEnc::GetEswGcmRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 16);

  return v3();
}

uint64_t BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(BlueFin::EswRpcEnc *this)
{
  if (((*(**(this + 2) + 264))(*(this + 2)) & 1) == 0)
  {
    v4 = "bIsAsicConfigConsistent";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder.cpp", 58, "MakeEswRpcEncoderImp", "bIsAsicConfigConsistent");
    v5 = 58;
    goto LABEL_5;
  }

  result = (*(**(this + 2) + 264))(*(this + 2));
  if (!result)
  {
    v4 = "0";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder.cpp", 79, "MakeEswRpcEncoderImp", "0");
    v5 = 79;
LABEL_5:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder.cpp", v5, v4);
  }

  v3 = *(this + 2);
  *(this + 3) = &unk_2A1F0D270;
  *(this + 4) = &unk_2A1F10E80;
  *(this + 5) = v3;
  *(this + 6) = &unk_2A1F10F80;
  *(this + 7) = v3;
  *(this + 8) = &unk_2A1F10FD0;
  *(this + 9) = v3;
  *(this + 10) = &unk_2A1F11040;
  *(this + 11) = v3;
  *(this + 12) = &unk_2A1F11180;
  *(this + 13) = v3;
  *(this + 14) = &unk_2A1F11250;
  *(this + 15) = v3;
  *(this + 16) = &unk_2A1F110D0;
  *(this + 17) = v3;
  *(this + 18) = &unk_2A1F0D2E8;
  *(this + 19) = v3;
  *(this + 1) = this + 24;
  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAsicinit::esw_wait4version(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::esw_loading;
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      GlCustomLog(11, "GlMeSrdAsicinit::esw_wait4version no version received from ESW, RetainEsw=%d, LoadEsw=%d... could be Overlay was not retained!\n", *(*(a1 + 128) + 555), *(*(a1 + 128) + 556));
      (*(**(a1 + 112) + 16))(*(a1 + 112));
      v11 = "&GlMeSrdAsicinit::off";
      v12 = BlueFin::GlMeSrdAsicinit::off;
LABEL_34:
      BlueFin::QHsm::tran(a1, v12, v11);
      return 0;
    }

    if (v3 != 6)
    {
      if (v3 == 8)
      {
        if (a2[1] == 3)
        {
          v6 = *(a1 + 632);
          *(a1 + 632) = v6 | 8;
          if ((v6 & 0x20000) == 0)
          {
            v7 = (*(**(a1 + 128) + 248))(*(a1 + 128));
            v8 = **(a1 + 128);
            if (v7)
            {
              if ((*(v8 + 824))() != 129)
              {
                v9 = "ERROR: IFC Version from FW not supported\n";
                DeviceFaultNotify("glmesrd_asicinit.cpp", 1710, "esw_wait4version", "ERROR: IFC Version from FW not supported\n");
                v10 = 1710;
                goto LABEL_38;
              }

              goto LABEL_30;
            }

            v24 = (*(v8 + 240))();
            v25 = **(a1 + 128);
            if (!v24)
            {
              v26 = (*(v25 + 264))();
              v27 = **(a1 + 128);
              if (v26)
              {
                if ((*(v27 + 824))() == 143)
                {
                  goto LABEL_30;
                }

                v9 = "ERROR: IFC Version from FW not supported\n";
                DeviceFaultNotify("glmesrd_asicinit.cpp", 1718, "esw_wait4version", "ERROR: IFC Version from FW not supported\n");
                v10 = 1718;
              }

              else if ((*(v27 + 256))())
              {
                if ((*(**(a1 + 128) + 824))(*(a1 + 128)) == 135)
                {
                  goto LABEL_30;
                }

                v9 = "ERROR: IFC Version from FW not supported\n";
                DeviceFaultNotify("glmesrd_asicinit.cpp", 1722, "esw_wait4version", "ERROR: IFC Version from FW not supported\n");
                v10 = 1722;
              }

              else
              {
                v9 = "ERROR: Unexpected platform for IFC Version check\n";
                DeviceFaultNotify("glmesrd_asicinit.cpp", 1726, "esw_wait4version", "ERROR: Unexpected platform for IFC Version check\n");
                v10 = 1726;
              }

LABEL_38:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v10, v9);
            }

            if ((*(v25 + 824))() != 129)
            {
              v9 = "ERROR: IFC Version from FW not supported\n";
              DeviceFaultNotify("glmesrd_asicinit.cpp", 1714, "esw_wait4version", "ERROR: IFC Version from FW not supported\n");
              v10 = 1714;
              goto LABEL_38;
            }
          }

LABEL_30:
          v28 = *(a1 + 128);
          v29 = (*(*v28 + 184))(v28);
          if (*(v28 + 1212) == 1)
          {
            v30 = *(v28 + 1216);
          }

          else
          {
            v30 = v29;
          }

          *(v28 + 16) = v30;
          (*(**(a1 + 128) + 200))(*(a1 + 128), 0, 0);
          v31 = (*(**(a1 + 128) + 824))();
          GlCustomLog(12, "INIT_STAGE A: DONE. Version received: Asic 0x%08X, IFC %u, Radio 0x%02X)\n", v30, v31, *(*(a1 + 128) + 20));
          v11 = "&GlMeSrdAsicinit::esw_wait4initasic";
          v12 = BlueFin::GlMeSrdAsicinit::esw_wait4initasic;
          goto LABEL_34;
        }

        GlCustomLog(12, "INIT_STAGE A: WARNING => Received %u!\n", a2[1]);
        return 0;
      }

      return v4;
    }

    if (a2[1] <= 3u)
    {
      v13 = (*(**(a1 + 120) + 80))(*(a1 + 120));
      v33 = 0;
      v34[0] = 0;
      *(v34 + 7) = 0;
      v34[2] = v13;
      v35 = 0;
      v36 = 0;
      (*(*v13 + 16))(v13, 0);
      GlCustomLog(12, "INIT_STAGE A: Requesting the Asic Version Number trial %u!\n", a2[1] + 1);
      v14 = (*(*v13 + 48))(v13);
      v15 = (*(*v14 + 16))(v14);
      (*(*v15 + 16))(v15, &v33);
      BlueFin::GlMeSrdTransaction::Complete(&v33);
      v16 = a2[1];
      if (v16 >= 2)
      {
        GlCustomLog(12, "INIT_STAGE A: Resending Bri_GetOutOfLegacy %u!\n", v16 - 1);
        BlueFin::GlMeSrdAsicinit::Bri_GetOutOfLegacy(a1);
        v16 = a2[1];
      }

      v17 = v16 + 1;
      v18 = *(a1 + 740) + 300 * v16;
      *(a1 + 688) = a1;
      BlueFin::GlTimer::arm((a1 + 656), 6, v17, v18 + 50);
      *(a1 + 680) = 1;
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v33);
      return 0;
    }

    v23 = *(a1 + 740);
    *(a1 + 688) = a1;
    v20 = (a1 + 656);
    v21 = v23 + 1000;
    v22 = 5;
LABEL_20:
    BlueFin::GlTimer::arm(v20, v22, 0, v21);
    v4 = 0;
    *(a1 + 680) = 1;
    return v4;
  }

  if (v3 == 2)
  {
    v19 = *(a1 + 740);
    *(a1 + 688) = a1;
    v20 = (a1 + 656);
    v21 = v19 + 500;
    v22 = 6;
    goto LABEL_20;
  }

  if (v3 == 3)
  {
    BlueFin::GlQueue::Remove(a1 + 40, 5);
    BlueFin::GlTimer::disarm((a1 + 656));
    return 0;
  }

  return v4;
}

void sub_2987EA454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::MinnowEswRpcGcmEncImp::esw_gcm_rpc_rf_set_frequency_plan_multi_carr_minnow(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, char a7, char a8, char a9)
{
  v24 = *MEMORY[0x29EDCA608];
  v17 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v22, v23, 1800, v17);
  BlueFin::GlStream::PutU32(v22, *a3);
  BlueFin::GlStream::PutU32(v22, *(a3 + 4));
  BlueFin::GlStream::PutU32(v22, *(a3 + 8));
  BlueFin::GlStream::PutU32(v22, *(a3 + 12));
  BlueFin::GlStream::PutU32(v22, *(a3 + 16));
  BlueFin::GlStream::PutU32(v22, *(a3 + 20));
  BlueFin::GlStream::PutU32(v22, *(a3 + 24));
  BlueFin::GlStream::PutU32(v22, *(a3 + 28));
  BlueFin::GlStream::PutU32(v22, *(a3 + 32));
  BlueFin::GlStream::PutU32(v22, *(a3 + 36));
  BlueFin::GlStream::PutU32(v22, *(a3 + 40));
  BlueFin::GlStream::PutU32(v22, *(a3 + 44));
  BlueFin::GlStream::PutU32(v22, *(a3 + 48));
  BlueFin::GlStream::PutU32(v22, *(a3 + 52));
  BlueFin::GlStream::PutU32(v22, *(a3 + 56));
  BlueFin::GlStream::PutU32(v22, *(a3 + 60));
  BlueFin::GlStream::PutU32(v22, *(a3 + 64));
  BlueFin::GlStream::PutU32(v22, *(a3 + 68));
  BlueFin::GlStream::PutU16(v22, *(a3 + 72));
  BlueFin::GlStream::PutU08(v22, *(a3 + 74));
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, *a4);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, a4[1]);
  BlueFin::GlStream::PutU08(v22, a4[2]);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, a4[3]);
  BlueFin::GlStream::PutU08(v22, a4[4]);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, a4[5]);
  BlueFin::GlStream::PutU08(v22, a4[6]);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, a4[7]);
  BlueFin::GlStream::PutU08(v22, a4[8]);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, a4[9]);
  BlueFin::GlStream::PutU08(v22, a4[10]);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, 0);
  BlueFin::GlStream::PutU08(v22, a5);
  BlueFin::GlStream::PutU08(v22, a7);
  BlueFin::GlStream::PutU08(v22, a8);
  BlueFin::GlStream::PutU08(v22, a9);
  for (; a5; --a5)
  {
    BlueFin::GlStream::PutU08(v22, *a6);
    BlueFin::GlStream::PutU08(v22, 0);
    BlueFin::GlStream::PutU16(v22, *(a6 + 2));
    BlueFin::GlStream::PutU32(v22, *(a6 + 4));
    a6 += 8;
  }

  Offset = BlueFin::GlStream::GetOffset(v22);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0x12u, v23, Offset);
  v19 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v19)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 392, "esw_gcm_rpc_rf_set_frequency_plan_multi_carr_minnow", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 392, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetDagcGain4777(BlueFin::GlMeSrdAsicConfig *this, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  *a2 = *(this + 1368);
  *a3 = *(this + 1369);
  *a4 = *(this + 1370);
  v9 = *(this + 1371);
  *a5 = v9;
  *a6 = *(this + 343);
  *a7 = *(this + 344);
  *a8 = *(this + 345);
  *a9 = *(this + 346);
  if (*a2 || *a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = *a4 | v9;
  }

  return v10 & 1;
}

uint64_t BlueFin::MinnowEswRpcGcmEncImp::esw_gcm_rpc_rf_set_dr_init_minnow(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  v23 = *MEMORY[0x29EDCA608];
  v16 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v21, v22, 1800, v16);
  BlueFin::GlStream::PutU08(v21, a3);
  BlueFin::GlStream::PutU08(v21, a5);
  BlueFin::GlStream::PutU08(v21, a6);
  BlueFin::GlStream::PutU08(v21, a7);
  BlueFin::GlStream::PutU08(v21, a4);
  BlueFin::GlStream::PutU08(v21, 0);
  BlueFin::GlStream::PutU08(v21, 0);
  BlueFin::GlStream::PutU08(v21, 0);
  for (; a3; --a3)
  {
    BlueFin::GlStream::PutU08(v21, *a8);
    BlueFin::GlStream::PutU08(v21, 0);
    BlueFin::GlStream::PutU16(v21, *(a8 + 2));
    BlueFin::GlStream::PutU32(v21, *(a8 + 4));
    a8 += 8;
  }

  Offset = BlueFin::GlStream::GetOffset(v21);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0x14u, v22, Offset);
  v18 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v18)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 598, "esw_gcm_rpc_rf_set_dr_init_minnow", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", 598, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdRfInit4777::GetDrRegistersForModes(uint64_t a1, int a2, int a3, int a4, int a5, _BYTE *a6)
{
  *a6 = 0;
  result = a1 + 2136;
  *(a1 + 2136) = -64;
  *(result + 8 * *a6 + 2) = 128;
  if (a2 == 5)
  {
    v8 = 6316033;
  }

  else
  {
    v8 = 6316032;
  }

  v9 = *a6;
  *a6 = v9 + 1;
  *(result + 8 * v9 + 4) = v8;
  if (a5 == 2)
  {
    v10 = 55;
  }

  else
  {
    v10 = 23;
  }

  *(result + 8 * *a6) = -64;
  *(result + 8 * *a6 + 2) = 7;
  v11 = *a6;
  *a6 = v11 + 1;
  *(result + 8 * v11 + 4) = v10;
  if (a5 == 2)
  {
    *(result + 8 * *a6) = -64;
    *(result + 8 * *a6 + 2) = 131;
    v12 = *a6;
    *a6 = v12 + 1;
    *(result + 8 * v12 + 4) = -2004043112;
    *(result + 8 * *a6) = -64;
    *(result + 8 * *a6 + 2) = 132;
    v13 = *a6;
    *a6 = v13 + 1;
    *(result + 8 * v13 + 4) = 1985229619;
  }

  v14 = a2 - 1;
  if (!a2)
  {
    v14 = 0;
  }

  v15 = 16 * a3;
  if (a3 == 4)
  {
    v15 = 32;
  }

  if (a5)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 3;
  }

  v17 = 2 * v14;
  if (v16)
  {
    v17 = 0;
  }

  *(result + 8 * *a6) = -64;
  *(result + 8 * *a6 + 2) = 17;
  v18 = *a6;
  *a6 = v18 + 1;
  *(result + 8 * v18 + 4) = v15 | ((a2 == 5) << 8) | ((a4 == 5) << 12) | v17 | (a2 == 5);
  v19 = *(a1 + 2216);
  if ((v19 - 3) < 2)
  {
    v20 = 2 * (a4 == 2);
    if (a4 == 5)
    {
      v20 = 1;
    }

    if (*(a1 + 2240) == 1 && *(a1 + 2228) - 6 < 8)
    {
      v20 |= 0x10u;
    }

    v21 = 279;
    goto LABEL_25;
  }

  if (v19 == 2)
  {
    if (!a4)
    {
      v20 = 31;
      v21 = 19;
LABEL_25:
      *(result + 8 * *a6) = -64;
      *(result + 8 * *a6 + 2) = v21;
      v22 = *a6;
      *a6 = v22 + 1;
      *(result + 8 * v22 + 4) = v20;
      v19 = *(a1 + 2216);
      goto LABEL_30;
    }

    if (a4 == 2)
    {
      v25 = "etL5ArPerfMode != RADIO_PERF_PM";
      DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1725, "GetDrRegistersForModes", "etL5ArPerfMode != RADIO_PERF_PM");
      v26 = 1725;
LABEL_40:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v26, v25);
    }

    v19 = 2;
  }

LABEL_30:
  if ((v19 - 3) >= 2)
  {
    v23 = 26222348;
  }

  else
  {
    v23 = 30154508;
  }

  *(result + 8 * *a6) = -64;
  if (a5 == 2)
  {
    v23 = 25173772;
  }

  *(result + 8 * *a6 + 2) = 21;
  v24 = *a6;
  *a6 = v24 + 1;
  *(result + 8 * v24 + 4) = v23;
  if (*a6 >= 0xBu)
  {
    v25 = "ucNumRegs <= MAX_NUM_BYPASS_APB_COMMANDS";
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1826, "GetDrRegistersForModes", "ucNumRegs <= MAX_NUM_BYPASS_APB_COMMANDS");
    v26 = 1826;
    goto LABEL_40;
  }

  return result;
}

void BlueFin::GlMeSrdRfInit4777::ProgramNotchMinnow(int8x16_t a1, double a2, int8x16_t a3, int8x16_t a4, uint64_t a5, BlueFin::GlMeSrdTransaction *a6, int *a7, unsigned __int8 *a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  if (!a9)
  {
    return;
  }

  if (a10 <= 2)
  {
    if (a10 == 1)
    {
      if (a9 == 1)
      {
        v24 = 268500992;
      }

      else
      {
        v24 = 269549568;
      }

      *a11 |= v24;
      v16 = 0;
      v18 = 4;
      v19 = 8;
      v20 = -0.0000000088817842;
      goto LABEL_29;
    }

    if (a10 == 2)
    {
      if (a9 == 1)
      {
        v21 = 268435712;
      }

      else
      {
        v21 = 268439808;
      }

      *a11 |= v21;
      v16 = 12;
      v18 = 16;
      v19 = 20;
      v20 = -3769597.2;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (a10 == 3)
  {
    if (a9 == 1)
    {
      v22 = 268435457;
    }

    else
    {
      v22 = 268435473;
    }

    *a11 |= v22;
    v16 = 24;
    v18 = 28;
    v19 = 32;
    v20 = 852798.599;
    goto LABEL_29;
  }

  if (a10 == 4)
  {
    v16 = 44;
    *a11 |= 0x20000000u;
    if (a9 == 1)
    {
      v23 = 256;
    }

    else
    {
      v23 = 4352;
    }

    *a12 |= v23;
    v18 = 48;
    v19 = 52;
    v20 = -15461453.6;
    goto LABEL_29;
  }

  if (a10 != 5)
  {
LABEL_34:
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1426, "ProgramNotchMinnow", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", 1426, "0");
  }

  v16 = 44;
  *a11 |= 0x20000000u;
  if (a9 == 1)
  {
    v17 = 256;
  }

  else
  {
    v17 = 4352;
  }

  *a12 |= v17;
  v18 = 48;
  v19 = 52;
  v20 = 15228546.4;
LABEL_29:
  v25 = a10 & 0xFFFFFFFE;
  v26 = *a8;
  v27 = v20 + *a7;
  *a1.i64 = -v27;
  v28 = BlueFin::GlMeSrdRfInit4777::FrequencyToNco(((a10 & 0xFFFFFFFE) == 4), a1, a2, a3, a4);
  v29 = BlueFin::GlMeSrdRfInit4777::SendNotchRpc(v28, a6, v16);
  if (a9 != 1)
  {
    v33 = a7[1];
    v34 = a8[1];
    *v30.i64 = -(v20 + 0.0 - v27 + v33);
    v35 = BlueFin::GlMeSrdRfInit4777::FrequencyToNco((v25 == 4), v30, v33, v31, v32);
    v29 = BlueFin::GlMeSrdRfInit4777::SendNotchRpc(v35, a6, v18);
  }

  BlueFin::GlMeSrdRfInit4777::SendNotchRpc(v29, a6, v19);
}

uint64_t BlueFin::PikeEswRpcHrmEncImp::esw_hrm_rpc_set(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3 >= 11)
  {
    v14 = "eSegment <= ARAD";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 691, "esw_hrm_rpc_set", "eSegment <= ARAD");
    v15 = 691;
    goto LABEL_6;
  }

  v7 = a3;
  v8 = a2;
  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v16, v17, 1800, v10);
  BlueFin::GlStream::PutU08(v16, v7);
  BlueFin::GlStream::PutU32(v16, a4);
  BlueFin::GlStream::PutU32(v16, a5);
  Offset = BlueFin::GlStream::GetOffset(v16);
  BlueFin::GlMeSrdTransaction::Add(v8, 2, 1u, v17, Offset);
  LODWORD(v8) = v8[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    v14 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 702, "esw_hrm_rpc_set", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v15 = 702;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v15, v14);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::EswRpcEnc::GetEswTimRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 40);

  return v3();
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_get_nvram(BlueFin::CarpEswRpcGcmEncImp *this, BlueFin::GlMeSrdTransaction *a2, int a3, int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a4 + a3) >= 9)
  {
    v12 = "(offset + size) <= NVRAM_SIZE";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 146, "esw_gcm_rpc_get_nvram", "(offset + size) <= NVRAM_SIZE");
    v13 = 146;
    goto LABEL_6;
  }

  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v8);
  BlueFin::GlStream::PutU08(v14, v5);
  BlueFin::GlStream::PutU08(v14, v4);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(v6, 0, 0xAu, v15, Offset);
  LODWORD(v6) = v6[16];
  result = (*(**(this + 1) + 416))();
  if (result < v6)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 157, "esw_gcm_rpc_get_nvram", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 157;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_enable_external_LNA_control(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU08(v10, *a3);
  BlueFin::GlStream::PutU08(v10, a3[4]);
  BlueFin::GlStream::PutU08(v10, a3[8]);
  BlueFin::GlStream::PutU08(v10, a3[12]);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 0, 0xCu, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 213, "esw_gcm_rpc_enable_external_LNA_control", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 213, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_set_nvram(BlueFin::CarpEswRpcGcmEncImp *this, BlueFin::GlMeSrdTransaction *a2, int a3, int a4, unsigned int *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((a4 + a3) >= 9)
  {
    v16 = "(offset + size) <= NVRAM_SIZE";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 124, "esw_gcm_rpc_set_nvram", "(offset + size) <= NVRAM_SIZE");
    v17 = 124;
    goto LABEL_9;
  }

  LODWORD(v6) = a4;
  v7 = a3;
  v10 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v18, v19, 1800, v10);
  BlueFin::GlStream::PutU08(v18, v7);
  BlueFin::GlStream::PutU08(v18, v6);
  if (v6)
  {
    v6 = v6;
    do
    {
      v11 = *a5++;
      BlueFin::GlStream::PutU32(v18, v11);
      --v6;
    }

    while (v6);
  }

  Offset = BlueFin::GlStream::GetOffset(v18);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 9u, v19, Offset);
  v13 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v13)
  {
    v16 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 139, "esw_gcm_rpc_set_nvram", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v17 = 139;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v17, v16);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t BlueFin::GlMeSrdAsicinit::OnReliableAck(BlueFin::GlMeSrdAsicinit *this, void *a2)
{
  v2 = a2;
  GlCustomLog(14, "OnReliableAck: %u\n", a2);
  v6[0] = 13;
  v6[1] = v2;
  v4 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(result, this, v6, &v7))
    {
      result = v7;
    }

    else
    {
      result = (*(this + 4))(this, v6);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v4;
  return result;
}

_DWORD *BlueFin::GlCryptoMd5::md5_dgst_blk(_DWORD *result, _OWORD *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v39[0] = *a2;
  v39[1] = v2;
  v3 = a2[3];
  v39[2] = a2[2];
  v39[3] = v3;
  v4 = result[5];
  v5 = v39 + 2;
  v6 = -4;
  v7 = &dword_298A32918;
  v9 = result[6];
  v8 = result[7];
  v10 = v8;
  v11 = v9;
  v12 = v4;
  v13 = result[4];
  do
  {
    HIDWORD(v14) = (v10 & ~v12 | v12 & v11) + v13 + *(v5 - 2) + *(v7 - 2);
    LODWORD(v14) = HIDWORD(v14);
    v13 = (v14 >> 25) + v12;
    HIDWORD(v14) = *(v5 - 1) + v10 + *(v7 - 1) + (v13 & v12 | v11 & ~v13);
    LODWORD(v14) = HIDWORD(v14);
    v10 = (v14 >> 20) + v13;
    v15 = *v5;
    v16 = v5[1];
    v5 += 4;
    v17 = v15 + v11;
    v18 = *v7;
    v19 = v7[1];
    v7 += 4;
    HIDWORD(v14) = v17 + v18 + (v10 & v13 | v12 & ~v10);
    LODWORD(v14) = HIDWORD(v14);
    v11 = (v14 >> 15) + v10;
    HIDWORD(v14) = v16 + v12 + v19 + (v11 & v10 | v13 & ~v11);
    LODWORD(v14) = HIDWORD(v14);
    v12 = (v14 >> 10) + v11;
    v6 += 4;
  }

  while (v6 < 0xC);
  v20 = 0;
  v21 = &dword_298A3295C;
  do
  {
    v22 = v20 + 16;
    v23 = &BlueFin::GlCryptoMd5::MD5_K + v20 + 16;
    HIDWORD(v24) = (v12 & v10 | v11 & ~v10) + v13 + *(v21 - 3) + *(v39 + *v23);
    LODWORD(v24) = HIDWORD(v24);
    v13 = (v24 >> 27) + v12;
    HIDWORD(v24) = *(v39 + v23[1]) + v10 + *(v21 - 2) + (v13 & v11 | v12 & ~v11);
    LODWORD(v24) = HIDWORD(v24);
    v10 = (v24 >> 23) + v13;
    HIDWORD(v24) = *(v39 + v23[2]) + v11 + *(v21 - 1) + (v10 & v12 | v13 & ~v12);
    LODWORD(v24) = HIDWORD(v24);
    v11 = (v24 >> 18) + v10;
    v25 = *v21;
    v21 += 4;
    HIDWORD(v24) = *(v39 + v23[3]) + v12 + v25 + (v11 & v13 | v10 & ~v13);
    LODWORD(v24) = HIDWORD(v24);
    v12 = (v24 >> 12) + v11;
    v20 += 4;
  }

  while (v22 < 0x1C);
  v26 = 0;
  v27 = &dword_298A3299C;
  do
  {
    v28 = v26 + 32;
    v29 = &BlueFin::GlCryptoMd5::MD5_K + v26 + 32;
    HIDWORD(v30) = (v12 ^ v11 ^ v10) + v13 + *(v27 - 3) + *(v39 + *v29);
    LODWORD(v30) = HIDWORD(v30);
    v13 = (v30 >> 28) + v12;
    HIDWORD(v30) = *(v39 + v29[1]) + v10 + *(v27 - 2) + (v13 ^ v12 ^ v11);
    LODWORD(v30) = HIDWORD(v30);
    v10 = (v30 >> 21) + v13;
    HIDWORD(v30) = *(v39 + v29[2]) + v11 + *(v27 - 1) + (v10 ^ v13 ^ v12);
    LODWORD(v30) = HIDWORD(v30);
    v11 = (v30 >> 16) + v10;
    v31 = *v27;
    v27 += 4;
    HIDWORD(v30) = *(v39 + v29[3]) + v12 + v31 + (v10 ^ v13 ^ v11);
    LODWORD(v30) = HIDWORD(v30);
    v12 = (v30 >> 9) + v11;
    v26 += 4;
  }

  while (v28 < 0x2C);
  v32 = 0;
  v33 = &dword_298A329DC;
  do
  {
    v34 = v32 + 48;
    v35 = &BlueFin::GlCryptoMd5::MD5_K + v32 + 48;
    HIDWORD(v36) = ((v12 | ~v10) ^ v11) + v13 + *(v33 - 3) + *(v39 + *v35);
    LODWORD(v36) = HIDWORD(v36);
    v13 = (v36 >> 26) + v12;
    HIDWORD(v36) = *(v39 + v35[1]) + v10 + *(v33 - 2) + ((v13 | ~v11) ^ v12);
    LODWORD(v36) = HIDWORD(v36);
    v10 = (v36 >> 22) + v13;
    HIDWORD(v36) = *(v39 + v35[2]) + v11 + *(v33 - 1) + ((v10 | ~v12) ^ v13);
    LODWORD(v36) = HIDWORD(v36);
    v11 = (v36 >> 17) + v10;
    v37 = *v33;
    v33 += 4;
    HIDWORD(v36) = *(v39 + v35[3]) + v12 + v37 + ((v11 | ~v13) ^ v10);
    LODWORD(v36) = HIDWORD(v36);
    v12 = (v36 >> 11) + v11;
    v32 += 4;
  }

  while (v34 < 0x39);
  result[4] += v13;
  result[5] = v12 + v4;
  result[6] = v11 + v9;
  result[7] = v10 + v8;
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlUtlGlSysLogEntryCodec::ParseEntry(BlueFin::GlUtlGlSysLogEntryCodec *this, const char *a2, const char *a3, const char *a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *__source = 0u;
  v35 = 0u;
  *(this + 4) = 0;
  if (a3 <= 3)
  {
    *this = 0;
    *(this + 3) = 256;
    *(this + 143) = 0;
    BlueFin::GlFormat::glsnprintf(__source, 0xC8, "Error decoding SLOG entry. Line missing header.", a4);
    goto LABEL_47;
  }

  v7 = *a2;
  v8 = v7 - 48;
  v9 = v7 - 55;
  if (v8 < 0xA)
  {
    v9 = v8;
  }

  v10 = *(a2 + 1);
  v11 = v10 - 48;
  v12 = v10 - 55;
  if (v11 < 0xA)
  {
    v12 = v11;
  }

  v13 = *(a2 + 2);
  v14 = v13 - 65;
  if ((v13 - 65) >= 0x1A)
  {
    if ((v13 - 97) > 0x19)
    {
      if ((v13 - 48) > 9)
      {
        if (v13 == 43)
        {
          v14 = 62;
        }

        else
        {
          v14 = 63;
        }
      }

      else
      {
        v14 = v13 + 4;
      }
    }

    else
    {
      v14 = v13 - 71;
    }
  }

  v15 = v12 | (16 * v9);
  v16 = *(a2 + 3);
  v17 = v16 - 65;
  if ((v16 - 65) >= 0x1A)
  {
    if ((v16 - 97) > 0x19)
    {
      if ((v16 - 48) > 9)
      {
        if (v16 == 43)
        {
          v17 = 62;
        }

        else
        {
          v17 = 63;
        }
      }

      else
      {
        v17 = v16 + 4;
      }
    }

    else
    {
      v17 = v16 - 71;
    }
  }

  v18 = a3 - 4;
  if (v15 <= (a3 - 4))
  {
    v19 = v18 - v15;
  }

  else
  {
    *(this + 4) = 1;
    BlueFin::GlFormat::glsnprintf(__source, 0xC8, "Line missing bytes. Expected %d bytes but only %d were found.", a4, v15, (a3 - 4));
    v19 = 0;
  }

  *(this + 131) = v19;
  if (v17 == 1)
  {
    v20 = *this;
    if (*this)
    {
      *(this + 4) = 1;
      BlueFin::GlFormat::glsnprintf(__source, 0xC8, "Error decoding SLOG entry. Missing line %d of %d lines", a4, (v20 - 1), v20);
    }

    *(this + 143) = 0;
    *this = v14;
    *(this + 3) = v15 > v18;
    *(this + 2) = v15;
  }

  else
  {
    v21 = *(this + 1);
    if (*(this + 1))
    {
      if (v21 != v17)
      {
        *(this + 3) = 257;
        BlueFin::GlFormat::glsnprintf(__source, 0xC8, "Error decoding SLOG entry. Expected line %d but found line %d of %d lines.", a4, v21, v17, *this);
      }
    }

    else
    {
      *this = v14;
      *(this + 3) = 257;
      BlueFin::GlFormat::glsprintf(__source, "Error decoding SLOG entry. Missing line 1 of %d lines.", a3, v14);
    }
  }

  if (v17 == 63)
  {
    v22 = 63;
  }

  else
  {
    v22 = v17 + 1;
  }

  *(this + 1) = v22;
  v23 = *(this + 143);
  if (v23 + ((3 * v15) >> 2) > 0x2800)
  {
    *(this + 3) = 257;
    v30 = v23 + ((3 * v15) >> 2);
    v31 = 10240;
    v25 = "Error decoding SLOG entry. Entry size is %d.  Max supported size is %u.";
    goto LABEL_42;
  }

  if ((*(this + 3) & 1) == 0)
  {
    v24 = BlueFin::GlUtlB64::b64_decode_(a2 + 4, v15, this + *(this + 143) + 288, 10240 - v23, 768, &v33, &v32);
    if (v24)
    {
      *(this + 143) += v24;
      goto LABEL_43;
    }

    *(this + 3) = 257;
    v25 = "Error decoding SLOG entry. Error in b64 decode.";
LABEL_42:
    BlueFin::GlFormat::glsnprintf(__source, 0xC8, v25, a4, v30, v31);
  }

LABEL_43:
  if (v14 == v17 && (v14 != 63 || v15 < *(this + 2)))
  {
    v26 = *(this + 3) ^ 1;
    *this = 0;
    *(this + 3) = 0;
    goto LABEL_48;
  }

LABEL_47:
  v26 = 0;
LABEL_48:
  if (*(this + 4) == 1)
  {
    v27 = (this + 5);
    BlueFin::GlFormat::glsnprintf(v27, 0x100, "ParseEntry: SLOG entry corrupt on Line Number:%d", a4, a4);
    GlCustomLog(11, "%s\n", v27);
    GlCustomLog(11, "%s\n", __source);
    strlcat(v27, "  Error:", 0x100uLL);
    strlcat(v27, __source, 0x100uLL);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v26 & 1;
}

uint64_t BlueFin::GlDbgNvStorageReader::FromStorageToGll(BlueFin::GlDbgNvStorageReader *this, char *a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(this + 1);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 2566);
    BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v10);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 64))(*(this + 2), a2, a3);
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 2566);
    v7 = *(**(this + 1) + 32);

    return v7();
  }

  else
  {
    v9 = *(*v4 + 104);

    return v9();
  }
}

uint64_t BlueFin::GlNvMemImpl::ResetReader(uint64_t this)
{
  *(this + 152) = 0;
  *(this + 156) = 0;
  if (*(this + 11892) == 7)
  {
    *(this + 11760) = xmmword_298A32900;
    *(this + 11776) = 0;
    *(this + 11848) = 0;
    *(this + 11852) = 0;
    *(this + 11856) = 0;
    *(this + 11860) = 0;
    *(this + 11888) = 0;
  }

  if (*(this + 12) == -1)
  {
    *(this + 12) = 0;
  }

  *(this + 11926) = 0;
  return this;
}

void FireCallback::GlEngCbOnNvStgRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 536);
    if (v10)
    {
      v12 = a2;
      (*(*v10 + 48))(v10, &v12);
      return;
    }

    v11 = "fcb,fEngCbOnNvStgReadCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlEngCbOnNvStgRead,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  v31 = *MEMORY[0x29EDCA608];
  if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    LOWORD(v5) = *(result + 22);
    if (v5 % 0xA2u)
    {
      v6 = *(result + 22) / 0xA2u + 1;
    }

    else
    {
      v6 = *(result + 22) / 0xA2u;
    }

    if (v6 > 0x3F)
    {
      DeviceFaultNotify("glutl_slog_codec.cpp", 1342, "PrintEntry", "sLinesCount < 64");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 1342, "sLinesCount < 64");
    }

    if (*(result + 22))
    {
      v7 = 0;
      v8 = 0;
      v9 = &BlueFin::GlUtlGlSysLogEntryCodec::_tagEntry + 8 * *(result + 8) + 4;
      v10 = v6;
      v11 = v6 - 4;
      if (v6 == 62)
      {
        v12 = 43;
      }

      else
      {
        v12 = 47;
      }

      v13 = v6 + 71;
      v14 = v6 + 65;
      if (v10 >= 0x3E)
      {
        v11 = v12;
      }

      if (v10 < 0x34)
      {
        v11 = v13;
      }

      if (v10 >= 0x1A)
      {
        v14 = v11;
      }

      v15 = v14;
      v16 = 1;
      do
      {
        v17 = (v5 - v8);
        if (v17 >= 162)
        {
          v18 = 162;
        }

        else
        {
          v18 = v17;
        }

        v19 = (*(*v4 + 32))(v4);
        v20 = BlueFin::GlUtlB64::b64_encode_((v19 + v7), v18, v30, 0xD8uLL, 0, &v28);
        v22 = v20;
        if (v16 > 0x19u)
        {
          if (v16 > 0x33u)
          {
            if (v16 > 0x3Du)
            {
              if (v16 == 62)
              {
                v23 = 43;
              }

              else
              {
                v23 = 47;
              }
            }

            else
            {
              v23 = v16 - 4;
            }
          }

          else
          {
            v23 = v16 + 71;
          }
        }

        else
        {
          v23 = v16 + 65;
        }

        v24 = v30[0];
        BlueFin::GlFormat::glsnprintf(v29, 0xA, "%s%s%02X%c%c", v21, "@^@", v9, v20, v15, v23);
        v30[0] = v24;
        v25 = v22 + 9;
        if (a2)
        {
          v29[v25] = 10;
          v29[v22 + 10] = 0;
          result = (*(*a2 + 72))(a2, 1, v29, (v22 + 10));
        }

        else
        {
          v29[v25] = 0;
          result = GlCustomLog(a3 | 0x18u, "%s\n", v29);
        }

        ++v16;
        v8 = v7 + 162;
        v7 = (v7 + 162);
        v5 = v4[11];
      }

      while (v7 < v5);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlSysLogEntry::GetU32(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 4 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 483, "GetU32", "m_sReadIdx + sizeof(GlIntU32) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 483, "m_sReadIdx + sizeof(GlIntU32) <= m_sDataSize");
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

BOOL BlueFin::GlSysLogEntry::CheckConsumed(BlueFin::GlSysLogEntry *this, int a2)
{
  v2 = *(this + 11);
  v3 = *(this + 10);
  if (v2 != v3)
  {
    GlCustomLog(11, "SysLogEntry %hu != %hu from %d\n", v2, *(this + 10), a2);
    if (*(this + 11) != *(this + 10))
    {
      DeviceFaultNotify("glutl_slog_codec.cpp", 755, "CheckConsumed", "DataSize() == ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 755, "DataSize() == ReadIdx()");
    }
  }

  return v2 == v3;
}

void BlueFin::GlPeTimeManager::Deserialize(int8x16_t *this, BlueFin::GlSysLogEntry *a2, int a3)
{
  v6 = *(a2 + 2);
  if (v6 > 94)
  {
    if (v6 <= 102)
    {
      switch(v6)
      {
        case '_':
          v47 = &unk_2A1F18420;
          *v48 = 0;
          *&v48[4] = 0;
          *&v48[8] = 0;
          *&v48[16] = 0;
          LODWORD(v49) = 0;
          if (BlueFin::GlPeGalUtcModelData::Deserialize(&v47, a2))
          {
            BlueFin::GlPeTimeManager::SetGalUtcModel(this, &v47, a3);
          }

          goto LABEL_68;
          v47 = &unk_2A1F18450;
          *v48 = 0;
          *&v48[4] = 0;
          *&v48[8] = 0;
          *&v48[16] = 0;
          if (BlueFin::GlPeGalGpsOffsetData::Deserialize(&v47, a2))
          {
            BlueFin::GlPeTimeManager::SetGalGpsSystemOffset(this, &v47, a3);
          }

          goto LABEL_68;
        case 'b':
          v47 = &unk_2A1F18678;
          LODWORD(v50) = 1333788672;
          *&v48[16] = 0;
          v49 = 0;
          *v48 = &off_2A1F0B5F0;
          *&v48[8] = 0;
          if (BlueFin::GlPeGnssTimeModelData::Deserialize(&v47, a2))
          {
            BlueFin::GlPeTimeManager::SetGnssTimeModel(this, &v48[16], *&v50);
          }

          goto LABEL_68;
      }

      goto LABEL_119;
    }

    if (v6 != 108)
    {
      if (v6 == 107)
      {
        v47 = &unk_2A1F0E018;
        *v48 = 0;
        *&v48[4] = 0;
        *&v48[8] = 0;
        *&v48[16] = 0;
        LOWORD(v49) = 0;
        if (BlueFin::GlPeNicUtcModelData::Deserialize(&v47, a2))
        {
          BlueFin::GlPeNicTimeMgr::SetUtcModel(&this[152].u64[1], &v47);
          this[156].i8[8] = 0;
        }

        goto LABEL_68;
      }

      if (v6 != 103)
      {
        goto LABEL_119;
      }

      BlueFin::GlPeRtcModel::Deserialize(&this[227].u64[1], a2);
LABEL_68:
      BlueFin::GlPeTimeManager::updateConversionTable(this);
      return;
    }

    v47 = &unk_2A1F0E048;
    *v48 = 0;
    *&v48[4] = 0;
    *&v48[8] = 0;
    *&v48[16] = 0;
    if (!BlueFin::GlPeNicGpsOffsetData::Deserialize(&v47, a2))
    {
      goto LABEL_68;
    }

    BlueFin::GlPeNicTimeMgr::SetGpsOffset(&this[152].u64[1], &v47);
    v15 = this[159].u8[0];
    this[159].i8[0] = 0;
    if (v15 != 1)
    {
      goto LABEL_68;
    }

LABEL_67:
    BlueFin::GlPeTimeManager::updateConversionTable(this);
    goto LABEL_68;
  }

  if (v6 > 32)
  {
    switch(v6)
    {
      case '!':
        v47 = &unk_2A1F18320;
        *v48 = 0;
        memset(&v48[4], 0, 20);
        if (BlueFin::GlPeBdsSysOffsetsData::Deserialize(&v47, a2))
        {
          BlueFin::GlPeTimeManager::SetBdsSystemOffsets(this, *&v48[8], *v48, *&v48[4], &v48[12], a3);
        }

        goto LABEL_68;
      case '""':
        v47 = &unk_2A1F18350;
        *v48 = 2;
        *&v48[4] = 0;
        *&v48[16] = 0;
        v49 = 0;
        *&v48[8] = 0;
        if (BlueFin::GlPeBdsSingleSysOffsetData::Deserialize(&v47, a2))
        {
          BlueFin::GlPeTimeManager::SetBdsSystemOffset(this, &v47);
        }

        goto LABEL_68;
      case '+':
        v47 = &unk_2A1F185A8;
        *v48 = 0;
        v48[4] = 0;
        v49 = 0;
        *&v50 = 0;
        *&v48[8] = &off_2A1F0B5F0;
        *&v48[16] = 0;
        if (BlueFin::GlPeGpsUtcModel::Deserialize(&v47, a2))
        {
          if (a3)
          {
            BlueFin::GlPeGpsTimeMgr::RecoverFromNvMem(this + 4, &v47, v7, v8);
          }

          else
          {
            BlueFin::GlPeTimeManager::SetGpsUtcModel(this, &v47, v7, v8);
          }
        }

        goto LABEL_68;
    }

    goto LABEL_119;
  }

  if (v6 != 30)
  {
    if (v6 != 31)
    {
      if (v6 == 32)
      {
        v47 = &unk_2A1F182F0;
        *v48 = 0;
        *&v48[4] = 0uLL;
        if (BlueFin::GlPeBdsUtcModelData::Deserialize(&v47, a2))
        {
          BlueFin::GlPeTimeManager::SetBdsUtcModel(this, *&v48[4], *v48, &v48[8], a3);
        }

        goto LABEL_68;
      }

LABEL_119:
      DeviceFaultNotify("glpe_timemgr.cpp", 5455, "Deserialize", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 5455, "0");
    }

    v47 = &unk_2A1F18508;
    v48[0] = 0;
    *&v48[2] = 0;
    *&v48[4] = 0;
    v48[8] = 0;
    *&v48[16] = 0;
    LOBYTE(v49) = 0;
    HIDWORD(v50) = 0;
    v51 = 0;
    *&v50 = 0;
    *(&v50 + 7) = 0;
    v16 = BlueFin::GlPeGlnTimeData::Deserialize(&v47, a2);
    if (!this[161].i32[0])
    {
      goto LABEL_68;
    }

    v17 = v48[0] ? v16 : 0;
    if (v17 != 1 || !*&v48[2])
    {
      goto LABEL_68;
    }

    if (a3)
    {
      BlueFin::GlPeTimeManager::GetTime(this, 1, &v43);
      v45 = &off_2A1F0E430;
      v46 = 0;
      BlueFin::GlPeGnssTime::GetGlns(&v43, &v45);
      BlueFin::GlGlnsTime::GlGlnsTime(&v43, v48[0], *&v48[2], 0.0);
      BlueFin::GlWeekTowTime::operator-(&v45, &v43, v41);
      LODWORD(v19) = v41[0];
      LODWORD(v18) = v41[1];
      v20 = v19 * 2.32830644e-10 + v18;
      if (v42)
      {
        v20 = -v20;
      }

      v21 = v20;
      if (v20 < 0)
      {
        v21 = -v21;
      }

      if ((this[169].i8[8] & 2) == 0 && *&v48[4] == 1)
      {
        BYTE10(v50) = 0;
        BYTE8(v50) = 0;
        LOBYTE(v49) = 0;
        v48[8] = 0;
      }

      if (v21 <= 0x93A80)
      {
        BlueFin::GlPeGlnTimeMgr::initializeTimeData(this[12].i64, &v47, 1u);
      }
    }

    else
    {
      BlueFin::GlPeGlnTimeMgr::SetAsst(&this[12], &v47);
    }

    if (this[27].i8[3] == 1)
    {
      BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(this);
    }

    v27 = this[21].i8[9];
    this[21].i8[9] = 0;
    v28 = this[25].i8[1];
    this[25].i8[1] = 0;
    if ((v27 & 1) == 0 && (v28 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (*(a2 + 12) - 1 > 6)
  {
    BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v47);
    if ((BlueFin::GlPeTimeManagerData::Deserialize(&v47, a2) & 1) == 0)
    {
      return;
    }

    BlueFin::GlPeTimeManager::processTimeManagerData(this, &v47, v22, v23, v24, v25, v26);
    goto LABEL_68;
  }

  BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v47);
  v9 = BlueFin::GlPeTimeManagerData::Deserialize(&v47, a2);
  if (v9)
  {
    if (v57 == 1)
    {
      if (v48[0])
      {
        *&v48[8] = 1;
      }

      BlueFin::GlPeTimeManager::processTimeManagerData(this, &v47, v10, *v11.i64, v12, v13, v14);
    }

    else
    {
      v29 = this[161].i32[0];
      v30 = &v48[8];
      if (v29)
      {
        if (v49 == -1 || (v11.i64[0] = 0x41EFFFFFFFE00000, v30 = &v48[8], *(&v50 + 1) == 4294967300.0))
        {
          v30 = v55;
          *v48 = 4;
        }
      }

      *v30 = 1;
      v31 = v48[0];
      if (this[160].i32[2] == -7200001 && (v48[0] & 1) != 0)
      {
        v10.i64[0] = v50;
        this[160].i32[2] = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v9, v10, v11, v12, *v13.i64, v14);
      }

      if ((v31 & 4) != 0)
      {
        this[292].i8[0] = 1;
      }

      if ((v31 & 8) != 0 && (this[160].i8[0] & 1) == 0)
      {
        this[159].i64[1] = v55[1];
      }

      if (v31)
      {
        if (v29 || *&v48[8] != 1)
        {
          if (*&v48[8] == 2)
          {
            v43.n128_u8[0] = 0;
            BlueFin::GlPeTimeManager::SetTime(this, &v48[16], 2u, &v43);
          }
        }

        else
        {
          v10.i64[0] = this[159].i64[1];
          if (*v10.i64 > 0.0)
          {
            if ((this[160].i8[0] & 1) == 0)
            {
              BlueFin::GlPeGnssTime::operator-=(&v48[16], *v10.i64 * 0.001);
            }

            BlueFin::GlPeTimeManager::recoverFromSleep(this->i64, &v48[8], v10, *v11.i64, v12, v13, v14);
          }
        }

        if ((v48[0] & 2) != 0 && v54 <= 0.01)
        {
          v32 = v56;
          if (v49)
          {
            v33 = v32 - v52;
          }

          else
          {
            v33 = -(v53 + v32);
          }

          v45 = &off_2A1F0E430;
          v46 = 0;
          v34.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(&v48[16], &v45);
          v43 = 0uLL;
          v44 = 0;
          v37 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v46) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
          v43.n128_u8[0] = ((v45[4])(&v45, v34) - v37) / 0x7861F80 + 1;
          v40 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v46) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
          v43.n128_u16[1] = (((203613265 * (((v45[4])(&v45) - v40) % 0x7861F80)) >> 32) >> 12) + 1;
          v43.n128_u32[1] = 0x7FFFFFFF;
          v43.n128_u32[2] = vcvtd_n_s64_f64(v33, 0x1EuLL);
          BlueFin::GlPeGlnTimeMgr::SetAsst(this[12].i64, 3, &v43);
        }

        if (this[161].i32[0] && (v48[0] & 0x10) != 0 && this[161].i8[13])
        {
          BlueFin::GlPeTimeManager::updateLeapSecFromNvMem(this, &v48[16], v56);
        }
      }
    }
  }
}

uint64_t BlueFin::GlPeRtcModel::Deserialize(BlueFin::GlPeRtcModel *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 103)
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
    *(this + 8) = 0;
    *(this + 3) = -7200001;
    *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *v7.i64 = BlueFin::GlSysLogEntry::GetU32(a2) * 0.001;
    *v8.i64 = *v7.i64 - trunc(*v7.i64);
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = *vbslq_s8(vnegq_f64(v9), v8, v7).i64;
    if (v10 < 0.0 || v10 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v12 = v10 * 4294967300.0 + 0.5;
    v13 = v12;
    if (v12 >= 4294967300.0)
    {
      v13 = -1;
    }

    *(this + 6) = v13;
    *(this + 7) = *v7.i64 + 604800 * U16;
    D64 = 60.0;
  }

  else
  {
    *(this + 8) = 1;
    *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 3) = 0;
    *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  *(this + 5) = D64;
  if (*(a2 + 12) < 3u)
  {
    *(this + 6) = 0;
    v15 = 1.79769313e308;
  }

  else
  {
    *(this + 6) = BlueFin::GlSysLogEntry::GetD64(a2);
    v15 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  *(this + 7) = v15;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 1894);
  return 1;
}

double BlueFin::GlSysLogEntry::GetD64(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 8 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 717, "GetD64", "m_sReadIdx + sizeof(dValue) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 717, "m_sReadIdx + sizeof(dValue) <= m_sDataSize");
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

  while (v2 != 8);
  return v6;
}

uint64_t BlueFin::GlPeTimeManagerData::Deserialize(BlueFin::GlPeTimeManagerData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 30)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 11 < 0xFFFFFFF6)
  {
    return 0;
  }

  if (v3 > 7)
  {
    *(this + 39) = 2;
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 2) = U16;
    if ((U16 & 1) == 0)
    {
      v87 = 0;
      S8 = -1;
      v27 = 0.0;
      D64 = 0.0;
      if ((U16 & 0x40) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_43;
    }

    *(this + 4) = BlueFin::GlSysLogEntry::GetS8(a2);
    S8 = BlueFin::GlSysLogEntry::GetS8(a2);
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
    v31 = 0;
    if (S8 > 2u)
    {
      switch(S8)
      {
        case 3u:
          v46 = BlueFin::GlSysLogEntry::GetU16(a2);
          *v47.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
          BlueFin::GlGalTime::GlGalTime(&v88, v46, v47, v48);
          break;
        case 4u:
          v52 = BlueFin::GlSysLogEntry::GetU16(a2);
          *v53.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
          BlueFin::GlBdsTime::GlBdsTime(&v88, v52, v53, v54);
          break;
        case 5u:
          v40 = BlueFin::GlSysLogEntry::GetU16(a2);
          *v41.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
          BlueFin::GlNicTime::GlNicTime(&v88, v40, v41, v42);
          break;
        default:
          goto LABEL_39;
      }
    }

    else if (S8)
    {
      if (S8 == 1)
      {
        U8 = BlueFin::GlSysLogEntry::GetU8(a2);
        v50 = BlueFin::GlSysLogEntry::GetU16(a2);
        v51 = BlueFin::GlSysLogEntry::GetD64(a2);
        BlueFin::GlGlnsTime::GlGlnsTime(&v88, U8, v50, v51);
      }

      else
      {
        if (S8 != 2)
        {
          goto LABEL_39;
        }

        v32 = BlueFin::GlSysLogEntry::GetU16(a2);
        v33 = BlueFin::GlSysLogEntry::GetU8(a2);
        v34 = BlueFin::GlSysLogEntry::GetU8(a2);
        v35 = BlueFin::GlSysLogEntry::GetU8(a2);
        v36 = BlueFin::GlSysLogEntry::GetU8(a2);
        *v37.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
        BlueFin::GlUtcTime::GlUtcTime(&v88, v32, v33, v34, v35, v36, v37, v38, v39);
      }
    }

    else
    {
      v43 = BlueFin::GlSysLogEntry::GetU16(a2);
      *v44.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlGpsTime::GlGpsTime(&v88, v43, v44, v45);
    }

    v31 = *(&v88 + 1);
LABEL_39:
    v87 = v31;
    v27 = BlueFin::GlSysLogEntry::GetD64(a2);
    if (*(a2 + 12) < 0xAu)
    {
      U32 = -1;
    }

    else
    {
      U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    }

    *(this + 14) = U32;
    if ((*(this + 2) & 0x40) == 0)
    {
      goto LABEL_59;
    }

LABEL_43:
    v56 = BlueFin::GlSysLogEntry::GetU16(a2);
    v57 = v56;
    if (v56 < 0)
    {
      BlueFin::GlSysLogEntry::GetD64(a2);
      if ((v57 & 1) == 0)
      {
LABEL_45:
        if ((v57 & 2) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_53;
      }
    }

    else if ((v56 & 1) == 0)
    {
      goto LABEL_45;
    }

    BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    if ((v57 & 2) == 0)
    {
LABEL_46:
      if ((v57 & 4) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_54;
    }

LABEL_53:
    BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    if ((v57 & 4) == 0)
    {
LABEL_47:
      if ((v57 & 8) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_55;
    }

LABEL_54:
    BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    if ((v57 & 8) == 0)
    {
LABEL_48:
      if ((v57 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_56;
    }

LABEL_55:
    BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    if ((v57 & 0x10) == 0)
    {
LABEL_49:
      if ((v57 & 0x20) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

LABEL_56:
    BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_59;
    }

LABEL_57:
    if (*(a2 + 12) >= 9u)
    {
      BlueFin::GlSysLogEntry::GetU16(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
    }

LABEL_59:
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
    memset_pattern16(&v91, &unk_298A45D20, 0x18uLL);
    v58 = *(this + 2);
    if ((v58 & 2) != 0)
    {
      v59 = BlueFin::GlSysLogEntry::GetU8(a2);
      if (v59)
      {
        v60 = v59;
        v61 = v59;
        v62 = &v88;
        v63 = &v91;
        do
        {
          v64 = BlueFin::GlSysLogEntry::GetD64(a2);
          v65 = BlueFin::GlSysLogEntry::GetD64(a2);
          if (v60 == 6)
          {
            *v62 = v64;
            v66 = v65;
            *v63 = v66;
          }

          ++v63;
          ++v62;
          --v61;
        }

        while (v61);
      }

      v67 = v89;
      *(this + 4) = v88;
      *(this + 5) = v67;
      v68 = v91;
      *(this + 6) = v90;
      *(this + 7) = v68;
      *(this + 16) = v92;
      v58 = *(this + 2);
    }

    if (v58)
    {
      *(this + 3) = v87;
      *(this + 8) = S8;
      *(this + 5) = D64;
      *(this + 6) = v27;
      if ((v58 & 4) == 0)
      {
LABEL_68:
        if ((v58 & 8) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_74;
      }
    }

    else if ((v58 & 4) == 0)
    {
      goto LABEL_68;
    }

    *(this + 34) = BlueFin::GlSysLogEntry::GetU8(a2);
    v58 = *(this + 2);
    if ((v58 & 8) == 0)
    {
LABEL_69:
      if ((v58 & 0x10) == 0)
      {
LABEL_71:
        v69 = a2;
        v70 = 1492;
LABEL_110:
        BlueFin::GlSysLogEntry::CheckConsumed(v69, v70);
        return 1;
      }

LABEL_70:
      *(this + 152) = BlueFin::GlSysLogEntry::GetS8(a2);
      goto LABEL_71;
    }

LABEL_74:
    *(this + 18) = BlueFin::GlSysLogEntry::GetD64(a2);
    if ((*(this + 2) & 0x10) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *(this + 2) = 0;
  v6 = BlueFin::GlSysLogEntry::GetU32(a2);
  v7 = v6;
  v8 = *(a2 + 12);
  if (v8 <= 3)
  {
    v7 = v6 <= 0x7A120 ? 500000 : v6;
    if (v8 - 1 <= 1)
    {
      BlueFin::GlSysLogEntry::GetS32(a2);
    }
  }

  v9 = BlueFin::GlSysLogEntry::GetU32(a2);
  v10 = BlueFin::GlSysLogEntry::GetU32(a2);
  v11 = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 39) = 0;
  v85 = v11;
  v86 = v10;
  if (*(a2 + 12) < 2u)
  {
    goto LABEL_23;
  }

  v14 = BlueFin::GlSysLogEntry::GetU32(a2);
  v15 = BlueFin::GlSysLogEntry::GetU16(a2);
  if (v14 == -1 && v15 == 0xFFFF)
  {
    *(this + 39) = 1;
  }

  if (*(a2 + 12) <= 3u)
  {
LABEL_23:
    v29 = 0;
    v18 = 0;
    v30 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    S32 = 1000 * (byte_2A18BAB18 - 1);
    v20 = v7 != -1;
    v19 = 0.0;
    v17 = 0.0;
  }

  else
  {
    v16 = BlueFin::GlSysLogEntry::GetU32(a2);
    v17 = BlueFin::GlSysLogEntry::GetD64(a2);
    v84 = BlueFin::GlSysLogEntry::GetU16(a2);
    v83 = BlueFin::GlSysLogEntry::GetU16(a2);
    v18 = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    v19 = v16 * 0.001;
    v20 = v7 != -1;
    if (*(a2 + 12) < 5u)
    {
      v24 = 0;
      v21 = 0;
      v22 = 0;
      S32 = 1000 * (byte_2A18BAB18 - 1);
    }

    else
    {
      v20 = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
      v21 = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
      v22 = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
      S32 = BlueFin::GlSysLogEntry::GetS32(a2);
      if (*(a2 + 12) < 6u)
      {
        v24 = 0;
      }

      else
      {
        v24 = BlueFin::GlSysLogEntry::GetU32(a2);
        if (*(a2 + 12) == 7)
        {
          BlueFin::GlSysLogEntry::GetU8(a2);
        }
      }
    }

    v30 = v83;
    v29 = v84;
  }

  if (*(this + 39) != 1)
  {
    goto LABEL_85;
  }

  if (!v9)
  {
    *(this + 2) |= 8u;
    *(this + 18) = v24 * 1000.0;
    return 1;
  }

  if (v9 != 1)
  {
    if (v9 >= 0xFFFFFFF7)
    {
      *(this + 2) |= 4u;
      *(this + 34) = ~v9;
      return 1;
    }

LABEL_85:
    if (v22)
    {
      *(this + 2) |= 0x10u;
      *(this + 152) = ((274877907 * S32) >> 38) + (274877907 * S32 < 0);
      if (v18)
      {
        v71 = 0.001;
      }

      else
      {
        v71 = 0.5;
      }

      v72 = 0.0;
      if (v18)
      {
        v72 = v17;
      }
    }

    else
    {
      v72 = 0.0;
      v71 = 2000000.0;
    }

    v73 = S32;
    if (v20)
    {
      *v12.i64 = v86 * 0.001;
      *&v88 = &off_2A1F0B5F0;
      *v13.i64 = *v12.i64 - trunc(*v12.i64);
      v74.f64[0] = NAN;
      v74.f64[1] = NAN;
      v13.i64[0] = vbslq_s8(vnegq_f64(v74), v13, v12).i64[0];
      if (*v13.i64 < 0.0 || *v13.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v76 = 0;
      v77 = -(v72 + v73 * 0.001);
      v78 = *v13.i64 * 4294967300.0 + 0.5;
      v79 = *v12.i64 + 604800 * v85;
      v80 = v78;
      if (v78 >= 4294967300.0)
      {
        v80 = -1;
      }

      *(this + 8) = 0;
      *(this + 28) = 0;
      *(this + 9) = v77;
      *(this + 10) = v73 * -0.001;
      if (v22)
      {
        v81 = 500.0;
      }

      else
      {
        v81 = 2000000.0;
      }

      *(this + 29) = v71;
      *(this + 30) = v81;
    }

    else
    {
      if (!v21)
      {
        if (v22)
        {
          goto LABEL_114;
        }

        goto LABEL_107;
      }

      v82 = v72 + v73 * 0.001;
      BlueFin::GlGlnsTime::GlGlnsTime(&v88, v29, v30, v19);
      v80 = DWORD2(v88);
      v79 = HIDWORD(v88);
      *(this + 8) = v82;
      *(this + 28) = v71;
      *(this + 9) = 0;
      *(this + 10) = 0;
      *(this + 116) = 0x43FA000000000000;
      v76 = 1;
    }

    *(this + 2) |= 3u;
    *(this + 4) = 0;
    *(this + 6) = v80;
    *(this + 7) = v79;
    *(this + 8) = v76;
    *(this + 5) = v9;
    *(this + 6) = v7;
    if (v22)
    {
LABEL_114:
      *(this + 2) |= 0x10u;
      *(this + 152) = S32 / 1000;
      if (!v24)
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }

LABEL_107:
    if (!v24)
    {
LABEL_109:
      v69 = a2;
      v70 = 7371;
      goto LABEL_110;
    }

LABEL_108:
    *(this + 2) |= 8u;
    *(this + 18) = (1000 * v24);
    goto LABEL_109;
  }

  *(this + 2) |= 0x20u;
  return 1;
}

uint64_t BlueFin::GlSysLogEntry::GetU16(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 2 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 601, "GetU16", "m_sReadIdx + sizeof(GlIntU16) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 601, "m_sReadIdx + sizeof(GlIntU16) <= m_sDataSize");
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

uint64_t BlueFin::GlSysLogEntry::GetS8(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) >= *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 118, "GetS8", "m_sReadIdx + sizeof(GlIntS8) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 118, "m_sReadIdx + sizeof(GlIntS8) <= m_sDataSize");
  }

  v2 = (*(*this + 24))(this);
  v3 = *(this + 10);
  *(this + 10) = v3 + 1;
  return *(v2 + v3);
}

void BlueFin::GlPeTimeManager::processTimeManagerData(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeTimeManagerData *a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  v9 = *(a2 + 2);
  if ((v9 & 4) == 0)
  {
    goto LABEL_2;
  }

  v10 = *(a2 + 34);
  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v11 = *(this + 7);
        *(v11 + 11856) = 3;
        *(v11 + 11889) = 1;
      }

      goto LABEL_2;
    }

    goto LABEL_28;
  }

  if (v10 == 5)
  {
LABEL_28:
    if ((*(this + 2560) & 1) == 0)
    {
      a4 = 4294967300.0;
      if (*(this + 342) != 4294967300.0 && (*(this + 2744) & 2) != 0)
      {
        BlueFin::GlPeTimeManager::Reset(this, v10);
      }
    }

    goto LABEL_2;
  }

  if (v10 == 3)
  {
    v17 = *(this + 7) + 0x2000;
    *(v17 + 3668) = 0;
    *(v17 + 3696) = 1;
  }

LABEL_2:
  if ((v9 & 8) != 0 && (*(this + 2560) & 1) == 0)
  {
    *(this + 319) = *(a2 + 18);
  }

  if ((v9 & 0x20) != 0 && (*(this + 2560) & 1) == 0)
  {
    *(this + 2564) = 1;
  }

  if ((v9 & 1) != 0 && *(a2 + 8) != -1 && *(a2 + 6) != 4294967300.0)
  {
    v12 = *(a2 + 4);
    if (v12 == 1)
    {
      a3.i64[0] = *(this + 319);
      v13 = 78;
      v14 = 78;
      v15 = 78;
      if (*a3.i64 > 0.0)
      {
        if (*(this + 2560) == 1 && (*(this + 696) == -1 || *(this + 350) == 4294967300.0 || (*a3.i64 = fabs(BlueFin::GlPeGnssTime::operator-(a2 + 6, this + 2776)), a4 = 2.1, *a3.i64 >= 2.1)))
        {
          v14 = 78;
          v15 = 78;
        }

        else
        {
          v16 = BlueFin::GlPeTimeManager::recoverFromSleep(this, a2 + 16, a3, a4, a5, a6, a7);
          v15 = 89;
          if (v16)
          {
            v14 = 89;
          }

          else
          {
            v14 = 78;
          }
        }
      }

      if (*(this + 319) <= 0.0)
      {
        v18 = 78;
      }

      else
      {
        v18 = 89;
      }

      if (*(this + 696) != -1)
      {
        if (*(this + 350) == 4294967300.0)
        {
          v13 = 78;
        }

        else
        {
          v13 = 89;
        }
      }

      GlCustomLog(14, "GlPeTimeManager::processTimeManagerData(%u):  SleepTimeValid:%c  NvMemValid:Y  NvRamTimeValid:%c  RecoveryAttempted:%c  TimeRecovered:%c\n", *(this + 642), v18, v13, v15, v14);
    }

    else if ((*(this + 2560) & 1) == 0)
    {
      v19 = 0;
      BlueFin::GlPeTimeManager::SetTime(this, (a2 + 24), v12, &v19);
    }

    if ((v9 & 0x10) != 0 && (*(this + 2563) & 1) == 0)
    {
      BlueFin::GlPeTimeManager::updateLeapSecFromNvMem(this, (a2 + 24), *(a2 + 152));
      if (*(this + 646))
      {
        *(this + 2840) = *(this + 2588);
      }
    }
  }
}

uint64_t BlueFin::GlPeAsstMgr::DeserializeEph(uint64_t this, BlueFin::GlSysLogEntry *a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_asstmgr.cpp", 1030, "DeserializeEph", "potEntry != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstmgr.cpp", 1030, "potEntry != nullptr");
  }

  v3 = this;
  v4 = *(a2 + 2);
  if (v4 > 37)
  {
    if (v4 == 38)
    {
      v7 = &unk_2A1F10C58;
      v9 = 2065;
      v10 = &v12;
      v11 = vdup_n_s32(0xFF9222FF);
      v12 = 0u;
      v13 = 0u;
      v8 = &unk_2A1F10B38;
      this = BlueFin::GlPeLegacySbasEph::Deserialize(&v7, a2);
      if (!this)
      {
        return this;
      }

      v6 = v3[920];
    }

    else
    {
      if (v4 != 66)
      {
        return this;
      }

      v7 = &unk_2A1F0ED10;
      v9 = 4673;
      v10 = &v12;
      v11 = vdup_n_s32(0xFF9222FF);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
      v8 = &unk_2A1F0E970;
      this = BlueFin::GlPeLegacyBdsEph::Deserialize(&v7, a2);
      if (!this)
      {
        return this;
      }

      v6 = v3[923];
    }

    return (*(*v6 + 192))(v6, &v8);
  }

  if (v4 == 35)
  {
    LODWORD(v7) = 0;
    this = BlueFin::GlPeEphemeris::DeserializeHeader(a2, &v7, &v17);
    if (this)
    {
      this = BlueFin::GlPeGnssEphemerisMgr::GetMgr(v3 + 48, v7);
      if (this)
      {
        return (*(*this + 184))(this, a2);
      }
    }
  }

  else if (v4 == 37)
  {
    v5 = *(this + 7368);
    v7 = &unk_2A1F101B8;
    v9 = 2593;
    v10 = &v12;
    v11 = vdup_n_s32(0xFF9222FF);
    v12 = 0u;
    v13 = 0u;
    v8 = &unk_2A1F0FED0;
    *&v14 = 0;
    *(&v14 + 1) = v5 + 5856;
    this = BlueFin::GlPeLegacyGloEph::Deserialize(&v7, a2);
    if (this)
    {
      return (*(*v5 + 192))(v5, &v8);
    }
  }

  return this;
}

BOOL BlueFin::GlPeEphemeris::DeserializeHeader(BlueFin::GlSysLogEntry *this, int *a2, int *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(this + 2) != 35)
  {
    goto LABEL_3;
  }

  v4 = *(this + 12);
  if (v4 - 12 < 0xFFFFFFF9)
  {
    goto LABEL_3;
  }

  *(this + 10) = 1;
  if (v4 >= 0xB)
  {
    *a2 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(this)];
    *a3 = BlueFin::GlSysLogEntry::GetU8(this);
    result = *a2 != 7;
    goto LABEL_4;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  if (v4 < 8 || (*a2 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(this)], *(this + 12) < 9u))
  {
    U8 = 18;
  }

  else
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(this);
    if (U8 > 0x1C)
    {
      goto LABEL_3;
    }

    if (!U8)
    {
      goto LABEL_15;
    }
  }

  v10 = U8;
  v11 = v18;
  do
  {
    *v11++ = BlueFin::GlSysLogEntry::GetU32(this);
    --v10;
  }

  while (v10);
LABEL_15:
  v12 = *(this + 12);
  if (v12 >= 7)
  {
    if (v12 != 7)
    {
      result = *a2 != 7;
      v13 = 20;
      goto LABEL_23;
    }

    v14 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    v15 = v14[LODWORD(v18[0]) >> 25];
    if (v14[LODWORD(v18[0]) >> 25])
    {
      if (v15 < 0x21)
      {
        v16 = 0;
LABEL_29:
        *a2 = v16;
        v13 = 21;
        goto LABEL_17;
      }

      if (v15 - 66 <= 9)
      {
        v16 = 3;
        goto LABEL_29;
      }
    }

LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  *a2 = 0;
  v13 = 20;
LABEL_17:
  result = 1;
LABEL_23:
  if (DWORD2(v19) << v13 >> 30 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *a3 = v17;
LABEL_4:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeEphemerisMgr::DeserializeEph(BlueFin::GlPeEphemerisMgr *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 35)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1828, "DeserializeEph", "rotEntry.eType == GLPE_LOG_ENTRY_EPH");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1828, "rotEntry.eType == GLPE_LOG_ENTRY_EPH");
  }

  v7 = 0;
  result = BlueFin::GlPeEphemeris::DeserializeHeader(a2, &v7 + 1, &v7);
  if (result)
  {
    if (HIDWORD(v7) == *(this + 3))
    {
      v5 = (*(*this + 16))(this, v6, v7);
      result = (*(*v5 + 16))(v5, a2);
      if (result)
      {
        return (*(*this + 192))(this, v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGpsQzssEphMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 12);
  v4 = (a2 + 32);
  if (a3 == 1)
  {
    if (v3)
    {
      v5 = &unk_2A1F0F338;
      v6 = 4657;
    }

    else
    {
      v5 = &unk_2A1F0F200;
      v6 = 4609;
    }

    *(a2 + 8) = v6;
    *(a2 + 16) = v4;
    *(a2 + 24) = vdup_n_s32(0xFF9222FF);
    *v4 = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0;
  }

  else
  {
    v5 = &unk_2A1F0F470;
    *(a2 + 8) = (16 * v3) | 2;
    *(a2 + 9) = 19;
    *(a2 + 16) = v4;
    *(a2 + 24) = vdup_n_s32(0xFF9222FF);
    *v4 = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 92) = 0u;
  }

  *a2 = v5;
  return a2;
}

uint64_t BlueFin::GlPeEphemerisMgr::DeserializeEph(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeEphemeris *a2)
{
  (*(*a2 + 136))(&v7, a2);
  if (!BlueFin::GlPeEphemerisMgr::AllowSV(this, &v7) || !v7 || v7 >= (*(this + 104) + 1) || (*(*a2 + 144))(a2) == 2 || !(*(*this + 376))(this, a2, 1))
  {
    return 0;
  }

  if (v7 - 64 <= 0xFFFFFFC0)
  {
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
  }

  v4 = 1;
  *(*(this + 51) + ((v7 >> 3) & 0x1C)) |= 1 << v7;
  v5 = BlueFin::GNSS2STR(*(this + 3));
  GlCustomLog(14, "Read %s Ephemeris(%s,%d)\n", "NVMEM", v5, v7);
  return v4;
}

BOOL BlueFin::GlPeEphemerisMgr::AllowSV(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = (1 << (v2 - 1)) & *(a1 + 528);
  if (v3)
  {
    GlCustomLog(14, "NVS: suppress BE from %d %d\n", *(a1 + 12), v2);
  }

  return v3 == 0;
}

BOOL BlueFin::GlPeEphemerisMgr::processCandidateEphemeris(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeEphemeris *a2, char a3)
{
  if (*(this + 3) != *(a2 + 8) >> 4)
  {
    result = 0;
    v14 = -7;
    goto LABEL_10;
  }

  (*(*a2 + 136))(v55, a2);
  if ((*(a2 + 8) & 0xF) == 0 || v55[0] - 1 >= 0x3F)
  {
    result = 0;
    v14 = -6;
    goto LABEL_10;
  }

  v6 = (*(*this + 16))(this, v54, *(a2 + 8) & 0xF);
  v7 = BlueFin::GlPeEphemeris::operator=(v6, a2);
  v8 = (*(*v7 + 144))(v7);
  v9 = *(this + 2);
  v10 = v9[644];
  if (v10)
  {
    v11 = v9[642];
    v12 = v11;
    if (v11 <= 0xFF9222FE)
    {
      v12 = v11;
    }

    BlueFin::GlPeTimeManager::GetTime(v9, v12 + *(*(this + 5) + 824), 1, &v51);
  }

  else
  {
    v51 = 0;
    v52 = -1;
    v53 = xmmword_298A3BA20;
  }

  WritableEphemerisObj = BlueFin::GlPeEphemerisMgr::GetWritableEphemerisObj(this, v55);
  v16 = WritableEphemerisObj;
  v17 = *(WritableEphemerisObj + 8) & 0xF;
  if (v8 == 2)
  {
    if (!(*(*v6 + 192))(v6, 33))
    {
      v18 = (*(*v6 + 192))(v6, 28);
      (*(*v6 + 216))(v6, 34, v18);
    }
  }

  else
  {
    if ((*(WritableEphemerisObj + 8) & 0xF) == 0 || v10 == 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = WritableEphemerisObj;
    }

    if (((*(*this + 384))(this, v20, v6) & 1) == 0)
    {
      result = 0;
      v14 = -4;
      goto LABEL_10;
    }
  }

  v21 = *v6;
  if (v10)
  {
    v22 = (*(v21 + 248))(v6, &v51);
  }

  else
  {
    v22 = (*(v21 + 88))(v6);
  }

  v23 = v22;
  if (!v22)
  {
    if ((a3 & 1) == 0)
    {
      v26 = BlueFin::GNSS2STR(*(this + 3));
      v27 = v55[0];
      v28 = (*(*v6 + 64))(v6, &v51, 1);
      v29 = (*(*v6 + 88))(v6);
      GlCustomLog(12, "GlPeEphemerisMgr::processCandidateEphemeris: EXPIRED ephemeris received!  Gnss:%s %02d  Age(min):%.0lf  MaxAge(min):%u\n", v26, v27, v28 / 60.0, v29 / 0x78);
      if (BlueFin::GlUtils::m_pInstance)
      {
        if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          (*(*v6 + 24))(v6, 0, 0);
        }
      }
    }

    result = 0;
    v14 = -5;
    goto LABEL_10;
  }

  if (v8)
  {
    (*(*v6 + 168))(v6);
  }

  if (v17)
  {
    v24 = *v16;
    if (v10)
    {
      v25 = (*(v24 + 248))(v16, &v51);
    }

    else
    {
      v25 = (*(v24 + 88))(v16);
    }

    v34 = v25;
    v49 = v25 == 0;
    v35 = (*(*v16 + 144))(v16);
    v36 = (*(*v16 + 40))(v16);
    v30 = v35 == 2;
    if (v34 && v36 && (v8 == 2) != v30)
    {
      (*(*this + 392))(this, v6, v16);
    }

    v31 = this + 9;
    v32 = *(this + 9);
    if (v34 >= 0x78)
    {
      v32 = (*(*this + 104))(this, v35);
      v33 = 0;
    }

    else
    {
      v33 = v49;
    }
  }

  else
  {
    v30 = 0;
    v31 = this + 9;
    v32 = *(this + 9);
    v33 = 1;
  }

  if (v23 > 0x77)
  {
    v37 = (*(*this + 104))(this, v8);
  }

  else
  {
    v37 = *v31;
  }

  v38 = (*(*v6 + 40))(v6);
  v39 = (*(*v6 + 184))(v6);
  BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), *(this + 3), 0, v50);
  if ((v38 & 1) == 0)
  {
    if (v8 == 2)
    {
      v41 = v33;
    }

    else
    {
      v41 = 1;
    }

    if ((v41 | v30))
    {
      v40 = 0;
      goto LABEL_61;
    }

    result = 0;
    v14 = -3;
LABEL_10:
    *(this + 134) = v14;
    return result;
  }

  if ((v39 & 1) == 0)
  {
    if (*(this + 533) == 1 && v37 <= v32)
    {
      v40 = 1;
      goto LABEL_61;
    }

LABEL_81:
    if (v32 >= v37)
    {
      if (*(this + 533))
      {
        v43 = -1;
      }

      else
      {
        v43 = -2;
      }
    }

    else
    {
      v43 = -3;
    }

    if ((a3 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(*v6 + 24))(v6, 0, 0);
    }

    goto LABEL_96;
  }

  if (v37 > v32)
  {
    goto LABEL_81;
  }

  v40 = 2;
LABEL_61:
  if (((1 << (v55[0] & 0x1F)) & *(v50[0] + ((v55[0] >> 3) & 0x1C))) != 0 && v8 == 2)
  {
    v43 = 3;
  }

  else
  {
    v43 = v40;
  }

  if (v8 != 2)
  {
    v44 = *(this + 7);
    LODWORD(v50[0]) = *(this + 3);
    BYTE4(v50[0]) = v55[0];
    BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded((v44 + 32), v38, v50);
    v45 = *(this + 11);
    if (v45)
    {
      BlueFin::GlPeAlmMgr::Eph2Alm(v45, v6);
    }

    if ((*(*v6 + 184))(v6))
    {
      BlueFin::GlSetBase::Remove(this + 432, v55[0]);
    }
  }

  BlueFin::GlPeEphemerisMgr::SetEphFromBuffer(this, v6);
  if ((a3 & 1) == 0)
  {
    BlueFin::GlSetBase::Remove(this + 408, v55[0]);
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (*(*v6 + 24))(v6, 0, 0);
      }
    }
  }

  if (v38)
  {
    LODWORD(v50[0]) = 0;
    if (v8 != 2 || BlueFin::GlPeLtoMgr::GetLtoDataAgeS(*(this + 4), *(this + 3), *(*(this + 2) + 2568), v50) && SLODWORD(v50[0]) <= 86399)
    {
      v46 = v55[0];
      *(this + v55[0] + 26) = 0;
      BlueFin::GlSetBase::Remove(this + 360, v46);
    }
  }

  else
  {
    *(this + v55[0] + 26) = *(*(this + 2) + 2568);
    BlueFin::GlGnssIdSet::Add(this + 45, v55);
    v47 = *(this + 4);
    if ((*(v47 + 1636) & 4) == 0)
    {
      v48 = *(this + 3);
      LOBYTE(v50[0]) = v55[0];
      BlueFin::GlGnssSet::Add(v47 + 576, v48, v50);
    }
  }

  if (v8)
  {
    BlueFin::GlPeStartupMgr::Update(*(this + 9));
  }

  else
  {
    BlueFin::GlPeEphemerisMgr::m_bAnyNewBroadcastEphemerisRcvd = 1;
  }

LABEL_96:
  *(this + 134) = v43;
  return v43 >= 0;
}

uint64_t BlueFin::GlPeEphemeris::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 9) != *(a2 + 9))
    {
      DeviceFaultNotify("glpe_ephmgr.cpp", 148, "operator=", "NumWords() == rotRight.NumWords()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 148, "NumWords() == rotRight.NumWords()");
    }

    v3 = *(a2 + 8);
    *(a1 + 8) = *(a1 + 8) & 0xF0 | v3 & 0xF;
    *(a1 + 8) = *(a2 + 8) & 0xF0 | v3 & 0xF;
    v4 = *(a2 + 9);
    *(a1 + 9) = v4;
    memcpy(*(a1 + 16), *(a2 + 16), 4 * v4);
  }

  return a1;
}

uint64_t BlueFin::GlPeGpsQzssEphMgr::validateCandidateEphemeris(BlueFin::GlPeGpsQzssEphMgr *this, const BlueFin::GlPeEphemeris *a2, BlueFin::GlPeEphemeris *a3)
{
  (*(*a3 + 136))(&v36, a3, a2);
  if (!(*(*a3 + 40))(a3))
  {
    return 1;
  }

  v5 = (*(*a3 + 192))(a3, 7);
  v6 = (*(*a3 + 232))(a3, 7);
  v7 = (*(*a3 + 192))(a3, 18);
  v8 = (*(*a3 + 232))(a3, 18);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 17);
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 25);
  v11 = *(this + 3) == 0;
  v12 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 15);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a3, 22);
  v14 = *(this + 3);
  v15 = 0.0;
  v16 = 0.03;
  if (v14 == 3)
  {
    if (v13 <= 0.314159265)
    {
      v17 = -0.196349541;
      v18 = 2;
    }

    else
    {
      v17 = 0.589048623;
      v18 = 1;
      v15 = 0.06;
      v16 = 0.09125;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0.746128255;
  }

  v19 = dbl_298A3BA30[v11];
  v20 = v17 < v13 && v13 < dbl_298A3BF28[v18];
  v21 = v6 * v5;
  v22 = v8 * v7;
  v23 = ScaledFloatingField >= v19;
  if (v14)
  {
    v24 = v21 < 0x93A80;
    v25 = v22 < 0x93A80;
    v26 = v12 <= v16;
    v27 = 1;
  }

  else
  {
    v24 = v21 < 0x93A71;
    v25 = v22 < 0x93A71;
    v23 = ScaledFloatingField >= v19 && ScaledFloatingField <= 8192.0;
    v27 = v10 <= 0.0 && v10 >= -0.00000198862815;
    v26 = v12 >= v15 && v12 <= v16;
  }

  if (v24 && v25 && v23 && v26 && v27 && v20)
  {
    return 1;
  }

  v29 = *(*(this + 2) + 2568);
  if (v24)
  {
    if (v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v31 = BlueFin::GNSS2STR(v14);
    GlCustomLog(14, "EphMgr(%s,%d)[%u]: Toc out of range (%u). Bad decode.\n", v31, v36, v29, v21);
    if (v25)
    {
LABEL_25:
      if (v23)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }
  }

  v32 = BlueFin::GNSS2STR(*(this + 3));
  GlCustomLog(14, "EphMgr(%s,%d)[%u]: Toe out of range (%u). Bad decode.\n", v32, v36, v29, v22);
  if (v23)
  {
LABEL_26:
    if (v26)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

LABEL_33:
  v33 = BlueFin::GNSS2STR(*(this + 3));
  GlCustomLog(14, "EphMgr(%s,%d)[%u]: ASqrt out of range (%.8g). Bad decode.\n", v33, v36, v29, ScaledFloatingField);
  if (v26)
  {
LABEL_27:
    if (v27)
    {
      goto LABEL_28;
    }

LABEL_35:
    v35 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d)[%u]: Omegadot out of range (%.8g). Bad decode.\n", v35, v36, v29, v10);
    if (v20)
    {
      return 0;
    }

    goto LABEL_29;
  }

LABEL_34:
  v34 = BlueFin::GNSS2STR(*(this + 3));
  GlCustomLog(14, "EphMgr(%s,%d)[%u]: Ecc out of range (%.8g). Bad decode.\n", v34, v36, v29, v12);
  if (!v27)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!v20)
  {
LABEL_29:
    v30 = BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "EphMgr(%s,%d)[%u]: I0 out of range (%.8g). Bad decode.\n", v30, v36, v29, v13);
  }

  return 0;
}

uint64_t BlueFin::GlPeGpsEphemeris::GetCurveFitIntervalS(BlueFin::GlPeGpsEphemeris *this)
{
  if (!(*(*this + 192))(this, 30))
  {
    return 15000;
  }

  v2 = (*(*this + 192))(this, 5);
  v3 = v2 & 0xFFF8;
  if (v3 == 240)
  {
    return 28800;
  }

  v5 = v2;
  result = 50400;
  if (v3 != 248 && v5 != 496)
  {
    if (v5 - 497 >= 7)
    {
      if (v5 - 504 >= 7)
      {
        result = 266400;
        if (v5 - 752 >= 5 && v5 != 511)
        {
          if (v5 - 757 >= 7)
          {
            result = 439200;
            if ((v5 & 0xFFFC) != 0x2FC && v5 - 1008 >= 3)
            {
              if (v5 - 1011 >= 0xA)
              {
                return 21600;
              }

              else
              {
                return 525600;
              }
            }
          }

          else
          {
            return 352800;
          }
        }
      }

      else
      {
        return 180000;
      }
    }

    else
    {
      return 93600;
    }
  }

  return result;
}

uint64_t *BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(BlueFin::GlPeGpsEphemerisBase *this, unsigned int a2, unsigned int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if (a2 >= 0x20)
  {
    GlCustomLog(11, "GlPeGpsEphemerisBase::PutCmpUnsignedField: Illegal field index:%d\n", a2);
    DeviceFaultNotify("glpe_ephmgr.cpp", 3019, "PutCmpUnsignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3019, "0");
  }

  v7 = dword_298A3BC38[a2];
  v8 = byte_298A3BCB8[a2];
  BlueFin::GlBitBuffer::Position(v10, v7);
  return BlueFin::GlBitBuffer::PutU(v10, a3, v8);
}

uint64_t BlueFin::GlPeEphemerisMgr::GetEphDataSrcPriority(uint64_t a1, int a2)
{
  if (a2 <= 0)
  {
    if (a2 != -1)
    {
      if (!a2)
      {
        return 1;
      }

      goto LABEL_8;
    }

    return *(a1 + 9);
  }

  else
  {
    switch(a2)
    {
      case 3:
        return 0;
      case 2:
        return 3;
      case 1:
        return 1;
      default:
LABEL_8:
        DeviceFaultNotify("glpe_ephmgr.cpp", 1519, "GetEphDataSrcPriority", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1519, "false");
    }
  }
}

BOOL BlueFin::GlPosEng::SetRealTimeIntegrity(BlueFin::GlPosEng *this, const unsigned __int8 *a2)
{
  LODWORD(v18[0]) = 0;
  v3 = BlueFin::GlPeDecodeRti::ParseRtiStatus(a2);
  if (v3)
  {
    GlCustomLog(14, "SetRealTimeIntegrity: Failed to parse RTI (%d)\n", v3);
    return 0;
  }

  else
  {
    if (v12)
    {
      v5 = v13 - 1 > 0xB;
    }

    else
    {
      v5 = 1;
    }

    v7 = v5 || v14 - 1 > 0x1E || v15 > 0x17u;
    if (!v7 && v16 <= 0x3Bu && v17 <= 0x3Bu)
    {
      if ((v12 & 3) != 0 || !(v12 % 0x64u))
      {
        HIDWORD(v9) = -1030792151 * v12;
        LODWORD(v9) = HIDWORD(v9);
        v8 = (v9 >> 4) < 0xA3D70B;
      }

      else
      {
        v8 = 1;
      }

      if (v14 <= BlueFin::GlPosEng::SetRealTimeIntegrity(unsigned char const*,unsigned int)::aucDaysInMonth[12 * v8 - 1 + v13])
      {
        v10 = *(this + 4);
        v11 = *(v10 + 208);
        if (v11)
        {
          v11(*(v10 + 8), &v12);
        }
      }
    }

    return BlueFin::GlPosEng::SetRealTimeIntegrity(this, v18, 1);
  }
}

void *std::deque<BlueFin::GlExtSensData>::push_back(uint64_t a1, void *__src)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 2 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<BlueFin::GlExtSensData>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = memcpy((*(v6 + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 3560 * (v8 & 0xF)), __src, 0xDE8uLL);
  ++*(a1 + 40);
  return result;
}

__int16 *BlueFin::GlDbgEngine::SetExtSensInfo(uint64_t a1, __int16 *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1577);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetExtSensInfo((a1 + 368));
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1577);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1303");
  }

  return v2;
}

uint64_t BlueFin::GlPeHula::SetLmsFromSensorInput(uint64_t result, uint64_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v12 = result;
  v13 = *(a2 + 4);
  if (v13 <= 2)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        a4.i16[0] = *(a2 + 20);
        *&v40 = a4.u64[0];
        *a3.i64 = (3600 * *(a2 + 14) + 60 * *(a2 + 16) + *(a2 + 18)) + *&v40 * 0.001;
        LOWORD(v40) = *(a2 + 22);
        v41 = v40;
        a5.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
        *a3.i64 = *a3.i64 + v41 * 0.000001;
        BlueFin::GlUtcTime::GlUtcTime(&v91, *(a2 + 8), *(a2 + 10), *(a2 + 12), a3, v41, a5);
        result = BlueFin::GlPeTimeManager::GetTime(*(v12 + 1080), &v91, 1, &v87);
        v42.i64[0] = v90;
        *(v12 + 1048) = v89;
        v20 = *(a2 + 24);
        *v43.i64 = *v42.i64 + trunc(*v42.i64 * 2.32830644e-10) * -4294967300.0;
        v44.f64[0] = NAN;
        v44.f64[1] = NAN;
        v45 = vnegq_f64(v44);
        v22 = vbslq_s8(v45, v43, v42);
        if (*v42.i64 <= 4294967300.0)
        {
          v22.i64[0] = v42.i64[0];
        }

        if (*v22.i64 >= -4294967300.0)
        {
          goto LABEL_41;
        }

        *v42.i64 = -*v22.i64;
        *v22.i64 = -(*v22.i64 - trunc(*v22.i64 * -2.32830644e-10) * -4294967300.0);
        v22.i64[0] = vbslq_s8(v45, v22, v42).u64[0];
LABEL_40:
        *v22.i64 = -*v22.i64;
LABEL_41:
        if (*v22.i64 < 0.0)
        {
          v46 = --*v22.i64;
        }

        else
        {
          v46 = *v22.i64;
        }

        v47 = v46 + v20;
        goto LABEL_92;
      }

      if (v13 != 2)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v48 = *(result + 1032);
      HIDWORD(v49) = -1050970305;
      if (v48 != -7199999.0)
      {
        LODWORD(v49) = *(a2 + 8);
        *(result + 1048) = v48 + v49;
        v47 = *(result + 1040);
        goto LABEL_92;
      }

      result = GlCustomLog(12, "GlPeHula::Update: No PPS received so PPS-relative time stamp not possible. Using time of reception.\n");
    }

    v50 = *(*(v12 + 1080) + 2568);
    v51 = v50;
    if (v50 <= 0xFF9222FE)
    {
      v51 = v50;
    }

LABEL_57:
    *(v12 + 1048) = v51;
    v47 = 10000;
    goto LABEL_92;
  }

  if (v13 <= 4)
  {
    if (v13 != 3)
    {
      v14 = *(a2 + 8);
      a3.i32[0] = *(a2 + 12);
      a4.i64[0] = 0x3F50624DD2F1A9FCLL;
      a4.i16[0] = *(a2 + 16);
      *a4.i64 = a4.u64[0];
      *a3.i64 = a3.u64[0] * 0.001 + *a4.i64 * 0.000001;
      a4.i16[0] = *(a2 + 18);
      *a3.i64 = *a3.i64 + a4.u64[0] * 0.000000001;
      v87 = &off_2A1F0B5F0;
      *a4.i64 = *a3.i64 - trunc(*a3.i64);
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      v78 = vnegq_f64(v15);
      a4.i64[0] = vbslq_s8(v78, a4, a3).i64[0];
      if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
      {
        v75 = "dFracSec >= 0.0 && dFracSec < 1.0";
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        v76 = "glpe_timepoint.h";
        v77 = 173;
        goto LABEL_95;
      }

      v17 = *a4.i64 * 4294967300.0 + 0.5;
      v18 = v17;
      if (v17 >= 4294967300.0)
      {
        v18 = -1;
      }

      LODWORD(v88) = v18;
      HIDWORD(v88) = *a3.i64 + 604800 * v14;
      v87 = &off_2A1F0B5F0;
      result = BlueFin::GlPeTimeManager::GetTime(*(result + 1080), &v87, 1, &v91);
      v19.i64[0] = v93;
      *(v12 + 1048) = v92;
      v20 = *(a2 + 20);
      *v21.i64 = *v19.i64 + trunc(*v19.i64 * 2.32830644e-10) * -4294967300.0;
      v22 = vbslq_s8(v78, v21, v19);
      if (*v19.i64 <= 4294967300.0)
      {
        v22.i64[0] = v19.i64[0];
      }

      if (*v22.i64 >= -4294967300.0)
      {
        goto LABEL_41;
      }

      *v19.i64 = -*v22.i64;
      *v22.i64 = -(*v22.i64 - trunc(*v22.i64 * -2.32830644e-10) * -4294967300.0);
      v23.f64[0] = NAN;
      v23.f64[1] = NAN;
      v22.i64[0] = vbslq_s8(vnegq_f64(v23), v22, v19).u64[0];
      goto LABEL_40;
    }

    if (*(result + 1060))
    {
      result = GlCustomLog(12, "GlPeHula::Update: No monotonic-relationship established. Using time of reception.\n");
      v52 = *(*(v12 + 1080) + 2568);
      v53 = v52;
      if (v52 <= 0xFF9222FE)
      {
        v53 = v52;
      }

      *(v12 + 1048) = v53;
      v47 = *(v12 + 1072);
      goto LABEL_92;
    }

    v51 = *(result + 1064) + *(a2 + 8);
    goto LABEL_57;
  }

  if (v13 == 5)
  {
    BlueFin::GlPeTimeManager::GetTime(*(result + 1080), 1, &v91);
    v87 = &off_2A1F0B5F0;
    v88 = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(&v91, &v87);
    v55 = (v87[4])(&v87, Gps);
    v56 = (v87[4])(&v87);
    v57 = v55 / 0x93A80;
    v58.i32[0] = v88;
    *v58.i64 = v58.u64[0] * 2.32830644e-10 + (v56 % 0x93A80);
    *v59.i64 = *(a2 + 8) / 1000000000.0;
    if (*v58.i64 - *v59.i64 <= 302400.0)
    {
      if (*v59.i64 - *v58.i64 > 302400.0)
      {
        LOBYTE(v57) = v57 + 1;
      }
    }

    else
    {
      LOBYTE(v57) = v57 - 1;
    }

    *v79 = &off_2A1F0B5F0;
    *v58.i64 = *v59.i64 - trunc(*v59.i64);
    v60.f64[0] = NAN;
    v60.f64[1] = NAN;
    v58.i64[0] = vbslq_s8(vnegq_f64(v60), v58, v59).i64[0];
    if (*v58.i64 < 0.0 || *v58.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v62 = *v58.i64 * 4294967300.0 + 0.5;
    v63 = v62;
    if (v62 >= 4294967300.0)
    {
      v63 = -1;
    }

    v80 = v63;
    v81 = *v59.i64 + 604800 * v57;
    *v79 = &off_2A1F0B5F0;
    result = BlueFin::GlPeTimeManager::GetTime(*(v12 + 1080), v79, 1, &v91);
    v64 = *(*(v12 + 1080) + 2568);
    v65 = v64;
    if (v64 > 0xFF9222FE)
    {
      v65 = v64;
    }

    v66 = v92;
    goto LABEL_90;
  }

  if (v13 != 6)
  {
LABEL_96:
    v75 = "0";
    DeviceFaultNotify("glpe_hula.cpp", 4262, "SetLmsFromSensorInput", "0");
    v76 = "glpe_hula.cpp";
    v77 = 4262;
LABEL_95:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v76, v77, v75);
  }

  v86 = 1970;
  *v85 = 1;
  *v84 = 1;
  *v83 = 0;
  *v82 = 0;
  *v79 = *(a2 + 8) / 0xF4240uLL;
  BlueFin::GlUtcTime::MakeRelativeToGps0(&v86, v85, v84, v83, &v82[2], v82, v79, a11);
  LOWORD(v24) = *v82;
  *v25.i64 = v24;
  BlueFin::GlUtcTime::GlUtcTime(&v91, v86, v85[0], v84[0], v83[0], v82[2], v25, v26, v27);
  v28 = (*(a2 + 8) % 0xF4240uLL + 1000000 * (*v79 % 1000)) * 0.000000001 + 0.0;
  if (v28 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 191, "GlTimeFracSec", "(static_cast<DOUBLE>(ulMilliSec * 1000000UL + ulNanoSec) * 1e-9 + static_cast<DOUBLE>(ullFemtoSec) * 1e-15) < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 191, "(static_cast<DOUBLE>(ulMilliSec * 1000000UL + ulNanoSec) * 1e-9 + static_cast<DOUBLE>(ullFemtoSec) * 1e-15) < 1.0");
  }

  v29 = v28 * 4294967300.0 + 0.5;
  v30 = v29;
  if (v29 >= 4294967300.0)
  {
    v30 = 0xFFFFFFFFLL;
  }

  v31 = v30 + v91.n128_u32[2];
  v32 = v91.n128_u32[3] + *v79 / 1000 + HIDWORD(v31);
  v91.n128_u64[1] = __PAIR64__(v32, v31);
  v33 = BlueFin::GlWeekTowTime::m_ucNextLs;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v34 = v32 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v32)
  {
    v33 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  v36 = v32 - ((BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v35) - v33 + 432000;
  v37 = v36 % 0x7861F80;
  v38 = v36 % 0x7861F80 / 0x15180;
  if (v36 % 0x7861F80 > 0x5A4EBFF)
  {
    v39 = 3;
  }

  else if (v37 <= 0x3C3B87F)
  {
    v39 = v37 > 0x1E284FF;
  }

  else
  {
    v39 = 2;
  }

  v67 = v39;
  v68 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v39];
  if (v38 >= v68[9])
  {
    v69 = 9;
  }

  else if (v38 >= v68[6])
  {
    v69 = 6;
  }

  else if (v38 >= v68[3])
  {
    v69 = 3;
  }

  else
  {
    v69 = 0;
  }

  LOWORD(v92) = (v67 | (4 * (v36 / 0x7861F80))) + 1980;
  WORD1(v92) = v38 - *v68 + 1;
  if (v38 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v67 + v69 + 2])
  {
    v70 = 3;
  }

  else if (v38 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v67 + v69 + 1])
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = v70 + v69;
  BYTE4(v92) = v71;
  BYTE5(v92) = v38 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v67 + v71 - 1] + 1;
  LOBYTE(v38) = 60;
  if (((BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v35) != 0)
  {
    LOBYTE(v72) = 59;
    LOBYTE(v73) = 23;
  }

  else
  {
    v73 = (1193047 * (v36 % 0x15180)) >> 32;
    v72 = (2185 * (v36 % 0xE10)) >> 17;
    v38 = v36 % 0x3C;
  }

  BYTE6(v92) = v73;
  HIBYTE(v92) = v72;
  LOBYTE(v93) = v38;
  result = BlueFin::GlPeTimeManager::GetTime(*(v12 + 1080), &v91, 1, &v87);
  v74 = *(*(v12 + 1080) + 2568);
  v65 = v74;
  if (v74 > 0xFF9222FE)
  {
    v65 = v74;
  }

  v66 = v89;
LABEL_90:
  if (v66 + v65 < 0.0)
  {
    return result;
  }

  *(v12 + 1048) = v66;
  v47 = 1000000;
LABEL_92:
  *(v12 + 1056) = v47;
  return result;
}

uint64_t BlueFin::GlExtSensDataIf::OutputDebugMsg(BlueFin::GlExtSensDataIf *this)
{
  GlCustomLog(14, "Sens%d %d", *this, *(this + 1));
  v2 = *(this + 1);
  if (v2 > 3)
  {
    if ((v2 - 5) >= 2)
    {
      if (v2 == 4)
      {
        v3 = *(this + 4);
        v86 = *(this + 9);
        v89 = *(this + 5);
        v80 = *(this + 3);
        v82 = *(this + 8);
        GlCustomLog(14, "(%04hu:%09u.%03hu.%03hu :%06u)");
      }

      goto LABEL_12;
    }

LABEL_7:
    v76 = HIDWORD(*(this + 1));
    GlCustomLog(14, "(%u%08u)");
    goto LABEL_12;
  }

  switch(v2)
  {
    case 0:
      v4 = *(this + 2);
      GlCustomLog(14, "(%u)");
      break;
    case 1:
      v94 = *(this + 10);
      v95 = *(this + 11);
      v90 = *(this + 8);
      v92 = *(this + 9);
      v83 = *(this + 6);
      v87 = *(this + 7);
      v81 = *(this + 5);
      GlCustomLog(14, "(%04hu/%02hu/%02hu %02hu:%02hu%02hu.%03hu%03hu)", *(this + 4));
      break;
    case 3:
      goto LABEL_7;
  }

LABEL_12:
  GlCustomLog(14, " [%d]", *(this + 16));
  v5 = *this;
  v6 = *this;
  if (v6 <= 0x63)
  {
    switch(*this)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
        LODWORD(v7) = *(this + 16);
        if (v7 >= 1)
        {
          v8 = 0;
          v9 = (this + 48);
          do
          {
            v10 = *(v9 - 4);
            v11 = *v9;
            v9 += 22;
            GlCustomLog(14, ",%d,%.3f", v10, v11);
            ++v8;
            v7 = *(this + 16);
          }

          while (v8 < v7);
          v5 = *this;
        }

        v14 = v5 > 0x1C;
        v12 = (1 << v5) & 0x1C000038;
        v14 = v14 || v12 == 0 || v7 < 1;
        if (!v14)
        {
          GlCustomLog(14, ",%f", *(this + 22 * (v7 - 1) + 22));
        }

        goto LABEL_90;
      case 8u:
        if (*(this + 16) >= 1)
        {
          v61 = 0;
          v62 = (this + 56);
          do
          {
            GlCustomLog(14, ",%d,%f,%f,%f,%f,%f,%f,%f,%f", *(v62 - 8), *(v62 - 1), *v62, v62[1], v62[2], v62[4], v62[5], v62[6], v62[7]);
            ++v61;
            v62 += 11;
          }

          while (v61 < *(this + 16));
        }

        goto LABEL_90;
      case 9u:
        if (*(this + 16) >= 1)
        {
          v47 = 0;
          v48 = (this + 56);
          do
          {
            GlCustomLog(14, ",%d,%f,%f,%f,%f,%f,%f,%f", *(v48 - 8), *(v48 - 1), *v48, v48[1], v48[4], v48[5], v48[6], v48[7]);
            ++v47;
            v48 += 11;
          }

          while (v47 < *(this + 16));
        }

        goto LABEL_90;
      case 0xAu:
      case 0x21u:
        if (*(this + 16) >= 1)
        {
          v23 = 0;
          v24 = (this + 64);
          do
          {
            GlCustomLog(14, ",%d,%f,%f,%f,%f,%f,%f,%f,%d", *(v24 - 12), *(v24 - 2), *(v24 - 1), *v24, v24[3], v24[4], v24[5], v24[6], *(v24 + 14));
            ++v23;
            v24 += 11;
          }

          while (v23 < *(this + 16));
        }

        goto LABEL_90;
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
        if (*(this + 16) >= 1)
        {
          v15 = 0;
          v16 = (this + 48);
          do
          {
            GlCustomLog(14, ",%d,%.2f,%.2f", *(v16 - 4), *v16, v16[10]);
            ++v15;
            v16 += 22;
          }

          while (v15 < *(this + 16));
        }

        goto LABEL_90;
      case 0x11u:
        if (*(this + 16) >= 1)
        {
          v29 = 0;
          v30 = (this + 120);
          do
          {
            GlCustomLog(14, ",%d,%d", *(v30 - 40), *(v30 - 18));
            v31 = *v30;
            v30 += 22;
            GlCustomLog(14, ",%d", v31);
            ++v29;
          }

          while (v29 < *(this + 16));
        }

        goto LABEL_90;
      case 0x12u:
        if (*(this + 16) >= 1)
        {
          v25 = 0;
          v26 = (this + 48);
          do
          {
            v27 = *(v26 - 4);
            v28 = *v26;
            v26 += 22;
            GlCustomLog(14, ",%d,%d", v27, v28);
            ++v25;
          }

          while (v25 < *(this + 16));
        }

        goto LABEL_90;
      case 0x13u:
        if (*(this + 16) >= 1)
        {
          v57 = 0;
          v58 = (this + 48);
          do
          {
            v59 = *(v58 - 4);
            v60 = *v58;
            v58 += 22;
            GlCustomLog(14, ",%d,%d", v59, v60);
            ++v57;
          }

          while (v57 < *(this + 16));
        }

        goto LABEL_90;
      case 0x14u:
      case 0x18u:
        goto LABEL_90;
      case 0x15u:
        if (*(this + 16) >= 1)
        {
          v63 = 0;
          v64 = (this + 48);
          do
          {
            v65 = *(v64 - 4);
            v66 = v64[10];
            v67 = *v64;
            v68 = *(v64 + 1);
            v64 += 22;
            GlCustomLog(14, ",%d,%d,%d,%.2f", v65, v67, v68, v66);
            ++v63;
          }

          while (v63 < *(this + 16));
        }

        goto LABEL_90;
      case 0x16u:
        if (*(this + 16) >= 1)
        {
          v49 = 0;
          v50 = (this + 48);
          do
          {
            v51 = *(v50 - 4);
            v52 = v50[1];
            v53 = v50[10];
            v54 = *v50;
            v50 += 22;
            GlCustomLog(14, ",%d,%d,%.2f,%.2f", v51, v54, v52, v53);
            ++v49;
          }

          while (v49 < *(this + 16));
        }

        goto LABEL_90;
      case 0x17u:
        if (*(this + 16) >= 1)
        {
          v55 = 0;
          v56 = (this + 48);
          do
          {
            GlCustomLog(14, ",%d,%f,%f,%.2f,%.2f,%.3f,%.1f,%.2f", *(v56 - 4), *v56, v56[1], *(v56 + 4), *(v56 + 5), *(v56 + 6), *(v56 + 7), *(v56 + 10));
            ++v55;
            v56 += 11;
          }

          while (v55 < *(this + 16));
        }

        goto LABEL_90;
      case 0x1Du:
        if (*(this + 16) < 1)
        {
          goto LABEL_90;
        }

        v32 = 0;
        v33 = (this + 76);
        break;
      default:
        goto LABEL_95;
    }

    while (1)
    {
      GlCustomLog(14, ",%d,%d,%lld", *(v33 - 18), *(v33 - 20), *(v33 - 7));
      v34 = *(v33 - 5);
      if (v34 == 2)
      {
        v43 = *(v33 - 8);
        v44 = *(v33 - 3);
        v45 = *(v33 - 4);
        v46 = *(v33 - 3);
        v85 = *(v33 - 7);
        v79 = *(v33 - 1);
        GlCustomLog(14, ",%d,%d,%d,%.9f");
      }

      else if (v34 == 1)
      {
        v39 = *(v33 - 8);
        v40 = *(v33 - 3);
        v41 = *(v33 - 4);
        v42 = *(v33 - 3);
        v78 = *(v33 - 1);
        GlCustomLog(14, ",%d,%d,%.9f");
      }

      else
      {
        if (v34)
        {
          v74 = "false";
          DeviceFaultNotify("glpe_hula.cpp", 1196, "OutputDebugMsg", "false");
          v75 = 1196;
          goto LABEL_94;
        }

        v35 = *(v33 - 8);
        v36 = *(v33 - 3);
        v37 = *(v33 - 2);
        v38 = *(v33 - 1);
        v91 = *(v33 - 5);
        v93 = *(v33 - 4);
        v84 = *(v33 - 7);
        v88 = *(v33 - 6);
        v77 = *v33;
        GlCustomLog(14, ",%d,%d,%d,%d,%d,%d,%.6f");
      }

      ++v32;
      v33 += 22;
      if (v32 >= *(this + 16))
      {
        goto LABEL_90;
      }
    }
  }

  switch(v6)
  {
    case 'd':
      if (*(this + 16) >= 1)
      {
        v71 = 0;
        v72 = (this + 48);
        do
        {
          GlCustomLog(14, ",%d,%d,%d", *(v72 - 4), *v72, v72[10]);
          ++v71;
          v72 += 22;
        }

        while (v71 < *(this + 16));
      }

      break;
    case 'e':
      if (*(this + 16) >= 1)
      {
        v69 = 0;
        v70 = this + 48;
        do
        {
          GlCustomLog(14, ",%d,%d,%d,%d", *(v70 - 4), *v70, v70[1], v70[40]);
          ++v69;
          v70 += 88;
        }

        while (v69 < *(this + 16));
      }

      break;
    case 'f':
      if (*(this + 16) >= 1)
      {
        v17 = 0;
        v18 = (this + 64);
        do
        {
          v19 = *(v18 - 12);
          v20 = *(v18 - 2);
          v21 = *(v18 - 1);
          v22 = *v18;
          v18 += 11;
          GlCustomLog(14, ",%d,%.1lf,%.1lf,%d", v19, v20, v21, v22);
          ++v17;
        }

        while (v17 < *(this + 16));
      }

      break;
    default:
LABEL_95:
      v74 = "0";
      DeviceFaultNotify("glpe_hula.cpp", 1202, "OutputDebugMsg", "0");
      v75 = 1202;
LABEL_94:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", v75, v74);
  }

LABEL_90:

  return GlCustomLog(14, "\n");
}

BOOL BlueFin::GetPatchSegmentMinnow(BlueFin *this, const char *a2, unsigned int a3, _DWORD *a4, unsigned int *a5, const unsigned __int8 **a6, unsigned int *a7)
{
  v11 = a2;
  v12 = BlueFin::aMNW_B0_ImageSegments;
  if (!BlueFin::aMNW_B0_ImageSegments)
  {
    v12 = &BlueFin::_aMNW_B0_ImageSegments;
    BlueFin::aMNW_B0_ImageSegments = &BlueFin::_aMNW_B0_ImageSegments;
  }

  v13 = BlueFin::uiMNW_B0_NumSegments;
  result = !strncmp(this, "MNW_B0", 7uLL) && v13 + 1 > a3;
  if (result)
  {
    if (v13 <= a3)
    {
      *a4 = 393200;
      *a6 = 12;
      if (v11)
      {
        v17 = &BlueFin::pROMEnableRetain;
      }

      else
      {
        v17 = &BlueFin::pROMEnableNoRetain;
      }

      *a5 = v17;
    }

    else
    {
      v16 = &v12[24 * a3];
      *a4 = *v16;
      *a5 = *(v16 + 1);
      *a6 = *(BlueFin::aMNW_B0_ImageSegments + 24 * a3 + 16);
    }
  }

  else
  {
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
  }

  return result;
}

BOOL BlueFin::GlMeSrdAsicInitPatchLoader::InitSegment(BlueFin::GlMeSrdAsicInitPatchLoader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  *(this + 17) = 0;
  v8 = *(this + 106);
  if (v8 != 5)
  {
    if ((v8 - 2) >= 2)
    {
      v10 = "0";
      DeviceFaultNotify("glmesrd_asicinit_patchloader.cpp", 248, "InitSegment", "0");
      v11 = 248;
LABEL_8:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit_patchloader.cpp", v11, v10);
    }

    *(this + 84) = 0;
    *(this + 76) = 0;
LABEL_7:
    v10 = "bSuccess";
    DeviceFaultNotify("glmesrd_asicinit_patchloader.cpp", 252, "InitSegment", "bSuccess");
    v11 = 252;
    goto LABEL_8;
  }

  result = BlueFin::GetPatchSegmentMinnow(*(this + 7), *(this + 423), *(this + 16), this + 19, this + 20, this + 11, a7);
  if (!result)
  {
    goto LABEL_7;
  }

  if (*(this + 22) <= 3u)
  {
    v10 = "m_ulSegmentSize >= 4";
    DeviceFaultNotify("glmesrd_asicinit_patchloader.cpp", 253, "InitSegment", "m_ulSegmentSize >= 4");
    v11 = 253;
    goto LABEL_8;
  }

  return result;
}

uint64_t gnss::FireGnssDevice::setAssistanceMotionActivityContext(uint64_t a1, unint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6)
{
  v34 = *MEMORY[0x29EDCA608];
  bzero(v31, 0xDD8uLL);
  __src[0] = 0x300000011;
  v18 = a2 / 0xF4240;
  __src[1] = v18;
  v31[8] = 1;
  if (a5 <= 24)
  {
    v19 = a5;
    if (!a5)
    {
      goto LABEL_11;
    }

    if (a5 == 10)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  switch(a5)
  {
    case 75:
      v19 = 3;
      break;
    case 50:
      v19 = 2;
      break;
    case 25:
LABEL_5:
      v19 = 1;
      break;
    default:
LABEL_8:
      FireDeviceLog::DeviceLogBase(3, "#Warning,defaultCase,motionReliability,%d", v12, v13, v14, v15, v16, v17, a5);
      v19 = 0;
      break;
  }

LABEL_11:
  v33 = v19;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v20 = 1;
      goto LABEL_23;
    }

    if (a4 == 3)
    {
      if (a3 < 9)
      {
        v20 = dword_298A2F67C[a3];
        goto LABEL_23;
      }

      FireDeviceLog::DeviceLogBase(3, "#Warning,defaultCase,context,%d", v12, v13, v14, v15, v16, v17, a3);
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }

LABEL_19:
    FireDeviceLog::DeviceLogBase(3, "#Warning,defaultCase,MovingState,%d", v12, v13, v14, v15, v16, v17, a4);
    goto LABEL_22;
  }

  v20 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      v20 = 6;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_23:
  v32 = v20;
  FireDeviceLog::DeviceLogBase(6, "feeding,device,MotionActivityContext,machMs,%llu,state,%d,%d,relia,%d,%d", v12, v13, v14, v15, v16, v17, v18);
  v21 = *(a1 + 40);
  std::deque<BlueFin::GlExtSensData>::push_back(v21 + 1744, __src);
  FireMessageHandler::send(v21, 1073741831, v22, v23, v24, v25, v26, v27);
  result = std::function<void ()(gnss::Result)>::operator()(a6, 1);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPosEng::InjectExtSensInfo(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  if (*a2 >= 1)
  {
    v27[14] = v11;
    v27[15] = v12;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(a2 + 1);
      BlueFin::GlPeHula::SetLmsFromSensorInput(a1 + 362848, v17 + v15, a9, a10, a11, a3, a4, a5, a6, a7, a8);
      BlueFin::GlExtSensDataIf::OutputDebugMsg((v17 + v15));
      v18 = *(v17 + v15);
      BlueFin::GlPeKF::SensorMask(a1 + 184416, v27);
      if ((*(v27[0] + 4 * (v18 >> 5)) >> (v18 & 0x1F)))
      {
        BlueFin::GlPeHula::Update(a1 + 362848, v17 + v15, a9, a10, a11, v19, v20, v21, v22, v23);
        if (*(v17 + v15) == 32)
        {
          v24 = *(a1 + 363896);
        }

        else
        {
          v25 = *(v17 + v15 + 8);
        }

        BlueFin::GlPeKF::SetExtSensInfo(a1 + 184416, v17 + v15);
      }

      ++v16;
      v15 += 3560;
    }

    while (v16 < *a2);
  }

  return 1;
}

uint64_t BlueFin::GlPosEng::SetExtSensInfo(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v13 = *a2;
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = off_2A1F12210;
    v17 = BlueFin::GlUtils::m_pInstance;
    do
    {
      v18 = *(a2 + 1) + v14;
      v20[0] = &unk_2A1F121F8;
      v20[1] = v18;
      if (v17 && *(v17 + 1122) == 1)
      {
        v16(v20);
        v17 = BlueFin::GlUtils::m_pInstance;
        LOWORD(v13) = *a2;
      }

      ++v15;
      v14 += 3560;
    }

    while (v15 < v13);
  }

  return BlueFin::GlPosEng::InjectExtSensInfo(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

double BlueFin::GlPeHula::Update(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10)
{
  v11 = *(a2 + 32);
  if (v11 < 1)
  {
    return *a3.i64;
  }

  v13 = *a2;
  v14 = *a2;
  if (v14 < 0x22 || (v14 - 100) <= 2)
  {
    if (v14 == 19)
    {
LABEL_7:
      *a3.i64 = *(a2 + 40 + 88 * (v11 - 1)) / 1000.0;
      *(a1 + 4264) = a3.i64[0];
      *(a1 + 4272) = *(a2 + 40 + 88 * v11 - 80);
      return *a3.i64;
    }

    *(a1 + 1076) = 1;
  }

  if (v14 <= 99)
  {
    switch(v14)
    {
      case 0:
      case 1:
      case 2:
        if (v13 <= 2)
        {
          v19 = *(*(a1 + 1008) + 576);
          *(a1 + 188) = 1;

          *a3.i64 = BlueFin::GlPeSensStats::ProcessSensData(a1, v19, a2, (a1 + 96 * v13 + 200));
        }

        return *a3.i64;
      case 3:
      case 4:
      case 5:
      case 26:
      case 27:
      case 28:
        if (*(a1 + 1025))
        {
          v16 = -1;
        }

        else
        {
          v16 = -1;
          if (v13 <= 0x1C)
          {
            if (((1 << v13) & 0x4000008) != 0)
            {
              v16 = 0;
            }

            else if (((1 << v13) & 0x8000010) != 0)
            {
              v16 = 1;
            }

            else if (((1 << v13) & 0x10000020) != 0)
            {
              v16 = 2;
            }
          }
        }

        v44 = *(*(a1 + 1008) + 576);

        *a3.i64 = BlueFin::GlPeSensStats::updateGyr(a1, v44, v16, a2, *a3.i64);
        return *a3.i64;
      case 6:
      case 33:
        return *a3.i64;
      case 7:
        v22 = (a1 + 1088);

        a3.i64[0] = *&BlueFin::GlPeHula::TempData::Update(v22, v11, (a2 + 40));
        return *a3.i64;
      case 9:
        v26 = *(a1 + 1080);
        v27 = a1 + 4088;

        BlueFin::GlPeHula::DeltaPos::Update(v27, a2, v26, *a3.i64, *a4.i64, a5);
        return *a3.i64;
      case 10:
        v36 = a1 + 3000;

        BlueFin::GlPeHula::PosLocationData::Update(v36, a2);
        return *a3.i64;
      case 11:
        v24 = *(a1 + 1080);
        v25 = a1 + 1112;

        *a3.i64 = BlueFin::GlPeHula::AltData::Update(v25, a2, v24, *a3.i64, *a4.i64, a5);
        return *a3.i64;
      case 13:
        v31 = *(a1 + 1080);
        v32 = a1 + 1184;
        v33 = a2;

        goto LABEL_53;
      case 14:
        v31 = *(a1 + 1080);
        v32 = a1 + 1240;
        v33 = a2;

LABEL_53:
        BlueFin::GlPeHula::CrossTrkSpeedData::Update(v32, v33, v31, *a3.i64, *a4.i64, a5);
        return *a3.i64;
      case 15:
        v34 = *(a1 + 1080);
        v35 = a1 + 1296;

        BlueFin::GlPeHula::HdgData::Update(v35, a2, v34, *a3.i64, *a4.i64, a5);
        return *a3.i64;
      case 16:
        v20 = a1 + 4144;

        *a3.i32 = BlueFin::GlPeHula::TurningRateSensorData::Update(v20, a2, *a3.i32, *a4.i64, *a5.i64, a6, a7, a8, a9, a10);
        return *a3.i64;
      case 17:
        v21 = a1 + 4208;

        BlueFin::GlPeHula::MovingStateSensorData::Update(v21, a2);
        return *a3.i64;
      case 18:
        *a3.i64 = *(a2 + 40 + 88 * (v11 - 1)) / 1000.0;
        *(a1 + 4192) = a3.i64[0];
        v23 = *(a2 + 40 + 88 * v11 - 80);
        *(a1 + 4204) = 1;
        *(a1 + 4200) = v23;
        return *a3.i64;
      case 19:
        goto LABEL_7;
      case 21:

        BlueFin::GlPeHula::UpdateAuxInfo(a1, a2);
        return *a3.i64;
      case 22:
        v37 = (a1 + 3136);

        BlueFin::GlPeHula::ExtSensTempData::Update(v37, a2);
        return *a3.i64;
      case 23:
        v38 = a1 + 3168;

        BlueFin::GlPeHula::TravelAssistData::Update(v38, a2);
        return *a3.i64;
      case 29:
        if (v11 != 1)
        {
          GlCustomLog(12, "GlPeHula::Update: Monotonic time only uses 1st sample; other samples are ignored\n");
        }

        *(a1 + 1060) = 1;
        v28 = *(a2 + 56);
        if (v28 == 2)
        {
          a3.i32[0] = *(a2 + 64);
          a4.i16[0] = *(a2 + 68);
          *&v45 = a4.u64[0] * 0.000001;
          v46 = *&v45 + a3.u64[0] * 0.001;
          LOWORD(v45) = *(a2 + 70);
          BlueFin::GlGlnsTime::GlGlnsTime(v50, *(a2 + 60), *(a2 + 62), v46 + v45 * 0.000000001);
          BlueFin::GlPeTimeManager::GetTime(*(a1 + 1080), v50, 1, v52);
        }

        else
        {
          if (v28 != 1)
          {
            if (v28)
            {
              DeviceFaultNotify("glpe_hula.cpp", 1838, "Update", "0");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 1838, "0");
            }

            BlueFin::GlUtcTime::GlUtcTime(v52, (a2 + 60), a3, *a4.i64, a5);
            BlueFin::GlPeTimeManager::GetTime(*(a1 + 1080), v52, 1, v50);
            v29 = v51;
            v30 = *(a2 + 76);
LABEL_84:
            *(a1 + 1072) = v30;
            v47 = *(*(a1 + 1080) + 2568);
            v48 = v47;
            if (v47 <= 0xFF9222FE)
            {
              v48 = v47;
            }

            *a3.i64 = v48 - v29;
            *(a1 + 1064) = a3.i64[0];
            return *a3.i64;
          }

          a3.i32[0] = *(a2 + 64);
          a4.i16[0] = *(a2 + 68);
          *a4.i64 = a4.u64[0] * 0.000001;
          *a3.i64 = *a4.i64 + a3.u64[0] * 0.001;
          a4.i16[0] = *(a2 + 70);
          *a4.i64 = a4.u64[0];
          *a3.i64 = *a3.i64 + *a4.i64 * 0.000000001;
          BlueFin::GlGpsTime::GlGpsTime(v50, *(a2 + 60), a3, a4);
          BlueFin::GlPeTimeManager::GetTime(*(a1 + 1080), v50, 1, v52);
        }

        v29 = v53;
        v30 = *(a2 + 72);
        goto LABEL_84;
      default:
        goto LABEL_19;
    }
  }

  switch(v14)
  {
    case 'd':
      v39 = a2 + 88 * (v11 - 1);
      v40 = *(v39 + 40);
      v41 = *(v39 + 48);
      LODWORD(v39) = *(v39 + 88);
      *a3.i64 = v40 / 1000.0;
      *(a1 + 4280) = a3.i64[0];
      *(a1 + 4288) = v41;
      *(a1 + 4292) = v39;
      *(a1 + 4296) = 1;
      break;
    case 'e':
      v42 = *(*(a1 + 1080) + 2568);
      v43 = (a1 + 4304);

      BlueFin::GlPeHula::LosStateData::Update(v43, a2, v42);
      break;
    case 'f':
      v17 = *(*(a1 + 1080) + 2568);
      v18 = (a1 + 5128);

      BlueFin::GlPeHula::ExtConstraintData::Update(v18, a2, v17);
      break;
    default:
LABEL_19:
      GlCustomLog(12, "GlPeHula::Update: Unsupported sensor type %d\n", v13);
      break;
  }

  return *a3.i64;
}

uint64_t BlueFin::GlPeHula::MovingStateSensorData::Update(uint64_t result, uint64_t a2)
{
  v2 = result;
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 32);
  if (((v3 - 1) & 0x8000) == 0)
  {
    v5 = a2 + 40;
    v6 = *(a2 + 40 + 88 * (v3 - 1));
    *result = v6 / 1000.0;
    v7 = *(result + 40);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 576);
    }

    v8 = (v7 + v6);
    if (v3 < 1)
    {
      v17 = 0;
      *(result + 28) = v8;
      v15 = *(result + 8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = v5 + 88 * v11;
        if (*(v13 + 80) <= 3)
        {
          GlCustomLog(14, "Motion update %d: state: %d, confidence: %d at Lms %lu\n", v9, *(v13 + 8), *(v13 + 80), v8);
          v14 = *(v13 + 80);
          if (v14 <= v10)
          {
            if (v14 == v10)
            {
              v19[v12++] = *(v13 + 8);
            }
          }

          else
          {
            v19[0] = *(v13 + 8);
            v12 = 1;
            v10 = v14;
          }
        }

        v9 = ++v11;
      }

      while (v11 < *(a2 + 32));
      v15 = *(v2 + 8);
      *(v2 + 28) = v8;
      if (v12 == 1)
      {
        v16 = v19[0];
        *(v2 + 8) = v19[0];
        *(v2 + 12) = v10;
        *(v2 + 16) = 257;
        v17 = 1;
LABEL_19:
        if (v16 == 6 || v16 == 1)
        {
          if (v8 >= *(v2 + 48))
          {
            if (v15 != 1 && v15 != 6)
            {
              *(v2 + 32) = v8;
            }
          }

          else
          {
            *(v2 + 8) = 0;
            *(v2 + 16) = 0;
            GlCustomLog(15, "Motion update: nomotion input rejected at %d\n", v8);
            v16 = *(v2 + 8);
          }

          goto LABEL_24;
        }

LABEL_23:
        *(v2 + 32) = 0;
LABEL_24:
        result = GlCustomLog(15, "Motion update conclusion at lms %u: state: %d, confidence: %d numSamples: %d\n", v8, v16, *(v2 + 12), v17);
        goto LABEL_25;
      }

      v17 = v12;
      if (v12 >= 2)
      {
        v16 = 0;
        *(v2 + 16) = 0;
        *(v2 + 8) = 0;
        goto LABEL_23;
      }
    }

    v16 = v15;
    goto LABEL_19;
  }

  *(result + 8) = 0;
LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeKF::SetExtSensInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2316);
  if (v4 && (v4 == 1 || (*(*(*(a1 + 60936) + 160) + 2) & 1) != 0))
  {
    (*(*(a1 + 17184) + 248))();
  }

  return BlueFin::GlPeBaro::SetExtSensInfo(a1 + 6800, a2);
}

uint64_t BlueFin::GlPeKfPool::SetExtSensInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1 + 37248;
  do
  {
    v7 = *(v6 + v5);
    result = (*(*v7 + 384))(v7);
    if (result)
    {
      result = (*(*v7 + 248))(v7, a2, a3);
    }

    v5 += 8;
  }

  while (v5 != 24);
  return result;
}

uint64_t BlueFin::GlPeBaro::SetExtSensInfo(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 40) = 0;
  *(result + 32) = 0;
  if (*a2 != 6)
  {
    return result;
  }

  v2 = *(a2 + 32);
  if (v2 < 1)
  {
    return result;
  }

  v3 = 0;
  v4 = 0.0;
  for (i = 1; ; ++i)
  {
    v6 = *(a2 + 40 + 88 * v3 + 8);
    v7 = v6;
    if (i != 1)
    {
      break;
    }

    *result = v7;
    *(result + 40) = 1;
    if (++v3 == v2)
    {
      if (v6 <= 0.0)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_8:
    v4 = v7;
  }

  v7 = (v7 + (i - 1) * v4) / i;
  *result = v7;
  *(result + 40) = i;
  if (++v3 != v2)
  {
    goto LABEL_8;
  }

  if (i && v7 > 0.0)
  {
LABEL_13:
    *(result + 32) = 1;
  }

  return result;
}

uint64_t gnss::FireGnssDevice::setAssistanceMountState(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  bzero(v26, 0xDD8uLL);
  __src[0] = 0x300000013;
  v14 = a2 / 0xF4240;
  __src[1] = v14;
  v28 = 0;
  v26[8] = 1;
  if (a3 >= 3)
  {
    FireDeviceLog::DeviceLogBase(3, "#Warning,defaultCase,mountState,%d", v8, v9, v10, v11, v12, v13, a3);
    v15 = 0;
  }

  else
  {
    v15 = dword_298A2F6A0[a3];
  }

  v27 = v15;
  FireDeviceLog::DeviceLogBase(6, "feeding,device,MountState,machMs,%llu,state,%d", v8, v9, v10, v11, v12, v13, v14);
  v16 = *(a1 + 40);
  std::deque<BlueFin::GlExtSensData>::push_back(v16 + 1744, __src);
  FireMessageHandler::send(v16, 1073741831, v17, v18, v19, v20, v21, v22);
  result = std::function<void ()(gnss::Result)>::operator()(a4, 1);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t FireMessageHandler::sendAllowGnssDwellDutyCycling(FireMessageHandler *this, int a2)
{
  DeviceCommon::GetMachContinuousTime(this);
  if (*(this + 1352) != a2 || v10 - *(this + 168) >= 6.0)
  {
    *(this + 1352) = a2;
    *(this + 168) = v10;
    FireMessageHandler::send(this, 1073741826, v4, v5, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t gnss::FireGnssDevice::setConfigDutyCycling(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigDutyCycling isEnabled = %d", a3, a4, a5, a6, a7, a8, a2);
  v11 = FireMessageHandler::sendAllowGnssDwellDutyCycling(*(a1 + 40), a2);

  return std::function<void ()(gnss::Result)>::operator()(a3, v11);
}

uint64_t *BlueFin::GlEngineImplStd::EnablePowerSave(BlueFin::GlEngineImplStd *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (**a19)(BlueFin::GlGpsTime *__hidden this), uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, BlueFin::GlRequestImpl *a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, int a57, char a58)
{
  if (*(this + 32) == 1)
  {
    v61 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v61[273] = (*(**v61 + 48))();
    v62 = 70;
    if (a2)
    {
      v62 = 84;
      v63 = "ON";
    }

    else
    {
      v63 = "OFF";
    }

    GlCustomLog(14, "GlEngine::EnablePowerSave(%c), Max RF On Time %d\n", v62, a3);
    GlCustomLog(14, "\tPWM %s\n", v63);
    BlueFin::GlReqSm::EnableLowPower((*(this + 3) + 126144), a2, a3);

    return BlueFin::GlEngineImplStd::CommonAPIcode(this, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
  }

  else
  {
    if (a2)
    {
      v72 = 84;
    }

    else
    {
      v72 = 70;
    }

    if (*(this + 1))
    {
      result = GlCustomLog(14, "GlEngine::EnablePowerSave(%c), Max RF On Time %d. Engine is not loaded. GlSettings is set\n", v72, a3);
      v73 = *(this + 1);
      v74 = (*(v73 + 88) < 0x22uLL) & (0x301E00000uLL >> *(v73 + 88));
      if (a3 < 0)
      {
        v75 = (v73 + 11564);
        *v75 = a2 & ~v74;
        v75[1] = 1;
      }

      else
      {
        if (!a3)
        {
          v74 = 1;
        }

        if ((v74 & 1) == 0)
        {
          *(v73 + 26054) = a3;
        }
      }

      if ((*(this + 32) & 1) == 0)
      {

        return BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 75, 100000000, 0);
      }
    }

    else
    {
      return GlCustomLog(14, "GlEngine::EnablePowerSave(%c), Max RF On Time %d. Engine is not loaded. GlSettings is not set\n", v72, a3);
    }
  }

  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2987F3720(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t BlueFin::GlPeDecodeRti::ParseRtiStatus(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v5 = v2;
  v58 = *MEMORY[0x29EDCA608];
  if (v2 > 0x1000)
  {
    DeviceFaultNotify("glpe_decode_rti.cpp", 159, "ParseRtiStatus", "ciphertext_length <= MAX_RTI_MSG_LEN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_decode_rti.cpp", 159, "ciphertext_length <= MAX_RTI_MSG_LEN");
  }

  v6 = v4;
  *(v3 + 8) = 0u;
  v7 = (v3 + 8);
  v7[4] = 0u;
  v49 = v7 + 4;
  v50 = v7;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[5] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[1] = 0u;
  memcpy(__dst, v1, v2);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (v5 >= 8)
  {
    v8 = -1640531527 * (0x34u / (v5 >> 2)) - 1253254570;
    if (-1640531527 * (0x34u / (v5 >> 2)) != 1253254570)
    {
      v9 = __dst[0];
      do
      {
        v10 = (v5 >> 2) - 1;
        do
        {
          v11 = &__dst[v10];
          v9 = *v11 - ((((*(v11 - 1) >> 5) ^ (4 * v9)) + ((16 * *(v11 - 1)) ^ (v9 >> 3))) ^ ((*&aRtiparserMissi[4 * (((v8 >> 2) ^ v10) & 3)] ^ *(v11 - 1)) + (v9 ^ v8)));
          *v11 = v9;
        }

        while (v10-- > 1);
        v9 = __dst[0] - ((((__dst[(v5 >> 2) - 1] >> 5) ^ (4 * v9)) + ((16 * __dst[(v5 >> 2) - 1]) ^ (v9 >> 3))) ^ ((*&aRtiparserMissi[4 * ((v8 >> 2) & 3)] ^ __dst[(v5 >> 2) - 1]) + (v9 ^ v8)));
        __dst[0] = v9;
        v8 += 1640531527;
      }

      while (v8);
    }
  }

  v56 = v6;
  *(__dst + v5) = 0;
  if (LOBYTE(__dst[0]))
  {
    v54 = v6 + 4;
    v55 = v6 + 2;
    v52 = v6 + 8;
    v53 = v6 + 6;
    v51 = v6 + 10;
    v13 = __dst;
    do
    {
      v14 = strcspn(v13, "\n");
      v15 = v14;
      if (v14)
      {
        v13[v14] = 0;
        v16 = strcspn(v13, "=");
        for (i = &v13[v16 + 1]; ; ++i)
        {
          v18 = *i;
          if (v18 != 32 && v18 != 9)
          {
            break;
          }
        }

        if (strncmp("Version", v13, 7uLL))
        {
          if (!strncmp("Timestamp", v13, 9uLL))
          {
            if (sscanf(i, "%hd:%hd:%hd:%hd:%hd:%hd", v56, v55, v54, v53, v52, v51) != 6)
            {
              *v56 = 0;
              *(v56 + 8) = 0;
              *(v56 + 16) = 0;
            }
          }

          else
          {
            v20 = &dword_29EEB3640;
            v21 = 9;
            while (1)
            {
              v22 = *(v20 - 1);
              if (*v22)
              {
                v23 = strlen(*(v20 - 1));
                if (!strncmp(v22, v13, v23))
                {
                  break;
                }
              }

              v20 += 4;
              if (!--v21)
              {
                v13[v16] = 0;
                goto LABEL_64;
              }
            }

            v24 = 0;
            v25 = *v20;
            v26 = 0xE243F0A181320uLL >> (8 * v25);
            if (v25 >= 7)
            {
              LOBYTE(v26) = 0;
            }

            v27 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v25];
            *(v50 + v27) = ~(-1 << v26);
            v28 = BlueFin::GlPeDecodeRti::ParseRtiStatus(unsigned char const*,unsigned long,BlueFin::GL_RTI &,BlueFin::UTC_TIME &)::aucGnssBaseId[v25];
            v29 = (v26 + v28 - 1);
            v30 = v29 - v28;
            while (1)
            {
              v31 = *i;
              if (v31 <= 0x1F)
              {
                if (*i)
                {
                  v33 = v31 == 10;
                }

                else
                {
                  v33 = 1;
                }

                if (v33 || v31 == 13)
                {
                  break;
                }
              }

              else
              {
                while (v31 == 32)
                {
                  v32 = *++i;
                  v31 = v32;
                }
              }

              if (v31 - 58 < 0xFFFFFFF6)
              {
                goto LABEL_64;
              }

              v35 = atoi(i);
              v36 = v35 - v28;
              v37 = v30 > 30 && v36 == v29 - v28 + 1;
              v38 = v37;
              v39 = v30 < 31 && v36 == 31;
              if (v39 || v38)
              {
                break;
              }

              if (v35 > v29 || v36 < 0)
              {
                goto LABEL_64;
              }

              v40 = 1 << v36;
              v41 = i - 1;
              v42 = i + 1;
              do
              {
                v43 = v42;
                v45 = *++v41;
                v44 = v45;
                ++v42;
              }

              while ((v45 - 48) < 0xA);
              v24 |= v40;
              while (v44 == 32)
              {
                v46 = *v43++;
                v44 = v46;
              }

              if (v44 == 44)
              {
                i = v43;
              }

              else
              {
                i = v43 - 1;
              }
            }

            *(v49 + v27) |= v24;
          }
        }
      }

LABEL_64:
      v13 += v15 + 1;
    }

    while (*v13);
  }

  v47 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL BlueFin::GlPosEng::SetRealTimeIntegrity(uint64_t a1, __int128 *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2[7];
  v46 = a2[6];
  v47 = v4;
  v48 = *(a2 + 16);
  v5 = a2[1];
  v40 = *a2;
  v41 = v5;
  v6 = a2[3];
  v42 = a2[2];
  v43 = v6;
  v7 = a2[5];
  v44 = a2[4];
  v45 = v7;
  v8 = v40;
  if (v40 == 2)
  {
    GlCustomLog(14, "RTI from BLOCKLIST\n");
  }

  else if (v40 == 1)
  {
    GlCustomLog(14, "RTI for Emergency!\n");
  }

  else
  {
    if (v40)
    {
      GlCustomLog(11, "RTI type %d UNKNOWN\n", v40);
      return 0;
    }

    v9 = &v44 + 1;
    if (a3)
    {
      GlCustomLog(14, "RTI from File\n");
      v10 = (a1 + 375000);
      v11 = 8;
      v12 = &v44 + 1;
      do
      {
        v13 = *(v12 - 8);
        if (v13)
        {
          *(v10 - 8) = v13;
          *v10 = *v12;
        }

        ++v10;
        ++v12;
        --v11;
      }

      while (v11);
    }

    else
    {
      GlCustomLog(14, "RTI from API\n");
      v15 = (a1 + 375136);
      v16 = 8;
      v17 = &v44 + 1;
      do
      {
        v18 = *(v17 - 8);
        if (v18)
        {
          *(v15 - 8) = v18;
          *v15 = *v17;
        }

        ++v15;
        ++v17;
        --v16;
      }

      while (v16);
    }

    v19 = 0;
    v20 = (a1 + 375136);
    do
    {
      v21 = *(v20 - 25);
      if (v21)
      {
        v22 = *(v20 - 8);
        if (v22)
        {
          v23 = (*v20 & v22 | *(v20 - 17) & v21) & *(v9 - 8);
          if (v23 != *v9)
          {
            GlCustomLog(14, "RTI correction\n");
            v24 = BlueFin::IMPLGNSS2ABBREVSTR(v19);
            GlCustomLog(14, "file %s RTI     %08x%08x:%08x%08x\n", v24, HIDWORD(*(v20 - 25)), *(v20 - 25), HIDWORD(*(v20 - 17)), *(v20 - 17));
            v25 = BlueFin::IMPLGNSS2ABBREVSTR(v19);
            GlCustomLog(14, "api  %s RTI     %08x%08x:%08x%08x\n", v25, HIDWORD(*(v20 - 8)), *(v20 - 8), HIDWORD(*v20), *v20);
            *v9 = v23;
          }
        }
      }

      ++v19;
      ++v9;
      ++v20;
    }

    while (v19 != 8);
  }

  for (i = 0; i != 8; ++i)
  {
    v27 = BlueFin::IMPLGNSS2ABBREVSTR(i);
    GlCustomLog(14, "%s RTI     %016llx:%016llx\n", v27, *(&v40 + i + 1), *(&v44 + i + 1));
  }

  if (v8 != 2)
  {
    return BlueFin::GlReqSm::SetRealTimeIntegrity(a1 + 126144, &v40);
  }

  BlueFin::GlPeSvHealthHelper::OnBlocklistIntegrityInfo(a1 + 181344, &v40, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, BYTE4(v45));
  return 1;
}

const char *BlueFin::IMPLGNSS2ABBREVSTR(unsigned int a1)
{
  if (a1 < 8 && ((0xAFu >> a1) & 1) != 0)
  {
    return off_29EEAC248[a1];
  }

  if (a1 == 6)
  {
    return "GAL";
  }

  return "<->";
}

BOOL BlueFin::GlReqSm::SetRealTimeIntegrity(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2 == 1)
    {
      *(a1 + 54688) = *a2;
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 54752) = *(a2 + 64);
      *(a1 + 54736) = v6;
      *(a1 + 54720) = v5;
      *(a1 + 54704) = v4;
      v7 = *(a2 + 128);
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      *(a1 + 54800) = *(a2 + 112);
      *(a1 + 54784) = v9;
      *(a1 + 54768) = v8;
      *(a1 + 54816) = v7;
      *(a1 + 54824) = 1;
    }

    else
    {
      *(a1 + 10848) |= 0x200000u;
      *(a1 + 9768) = *a2;
      v10 = *(a2 + 16);
      v11 = *(a2 + 32);
      v12 = *(a2 + 64);
      *(a1 + 9816) = *(a2 + 48);
      *(a1 + 9832) = v12;
      *(a1 + 9784) = v10;
      *(a1 + 9800) = v11;
      v13 = *(a2 + 80);
      v14 = *(a2 + 96);
      v15 = *(a2 + 112);
      *(a1 + 9896) = *(a2 + 128);
      *(a1 + 9864) = v14;
      *(a1 + 9880) = v15;
      *(a1 + 9848) = v13;
      v19 = 10;
      v16 = *(a1 + 32);
      v17 = *(a1 + 8);
      *(a1 + 32) = v17;
      do
      {
        v20 = 0;
        if (BlueFin::patch_dispatch(v17, a1, &v19, &v20))
        {
          v17 = v20;
        }

        else
        {
          v17 = (*(a1 + 32))(a1, &v19);
        }

        *(a1 + 32) = v17;
      }

      while (v17);
      *(a1 + 32) = v16;
    }
  }

  return a2 != 0;
}

uint64_t BlueFin::GlReqSm::PrepareToWaitForRequest(BlueFin::GlReqSm *this, int a2)
{
  if ((*(this + 6096) & 0xF90F) != 0 || BlueFin::GlPePendingBag::HasReq(this + 6496, 0) || BlueFin::GlPePendingBag::HasReq(this + 6496, 14) || BlueFin::GlPePendingBag::HasReq(this + 6496, 15) || BlueFin::GlPePendingBag::HasReq(this + 6496, 1) || BlueFin::GlPePendingBag::HasReq(this + 6496, 2) || BlueFin::GlPePendingBag::HasReq(this + 6496, 3) || BlueFin::GlPePendingBag::HasReq(this + 6496, 11) || BlueFin::GlPePendingBag::HasReq(this + 6496, 8) || BlueFin::GlPePendingBag::HasReq(this + 6496, 13) || (result = BlueFin::GlPePendingBag::HasReq(this + 6496, 12), result))
  {

    return BlueFin::GlTimer::disarm(this + 3948);
  }

  else if (a2)
  {
    v5 = *(*(this + 784) + 844);
    *(this + 3952) = this;
    result = BlueFin::GlTimer::arm((this + 31584), 26, 0, v5);
    *(this + 31608) = 1;
  }

  return result;
}

uint64_t BlueFin::GlReqSm::SetAsstFromPend(BlueFin::GlReqSm *this, int a2, int a3)
{
  v144 = *MEMORY[0x29EDCA608];
  v6 = this + 54024;
  v7 = this + 6496;
  *(this + 13652) |= *(this + 2712);
  result = BlueFin::GlReqSm::PrepareToWaitForRequest(this, 1);
  v15 = *(this + 2712);
  if ((v15 & 0x100000) != 0)
  {
    result = BlueFin::GlPeGloFcnOsnMgr::SetAsst(*(*(this + 786) + 48), this + 620);
    v15 = *(this + 2712) & 0xFFEFFFFF;
    *(this + 2712) = v15;
  }

  if (v15)
  {
    v16 = 0;
    v17 = *(this + 784) + 1008;
    do
    {
      v136[v16] = *(v17 + v16);
      ++v16;
    }

    while (v16 != 32);
    LODWORD(v18) = v7[3448];
    if (v7[3448])
    {
      v19 = 0;
      v20 = 0;
LABEL_8:
      v21 = this + 2 * v19 + 9946;
      do
      {
        v22 = *(v21 - 1);
        if (v22 <= 0x1F)
        {
          v23 = v136[v22];
          if (v23 != 3 && (*v21 & 0x10) != 0)
          {
            v136[v22] = 3;
            result = GlCustomLog(14, "Signal type changed for GPS SV(%d) old(%d) new(%d)\n", v22, v23, 3);
            v18 = v7[3448];
            ++v19;
            v20 = 1;
            if (v19 < v18)
            {
              goto LABEL_8;
            }

            goto LABEL_17;
          }
        }

        ++v19;
        v21 += 2;
      }

      while (v19 < v18);
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      result = (*(**(this + 784) + 240))(*(this + 784), v136, 32);
    }

LABEL_18:
    v15 = *(this + 2712) & 0xFFFFFFFE;
    *(this + 2712) = v15;
  }

  if ((v15 & 4) != 0)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 786) + 384), *v7 >> 4);
    if (result)
    {
      result = (*(*result + 224))(result, v7, 1, 1);
      v15 = *(this + 2712);
    }

    v15 &= ~4u;
    *(this + 2712) = v15;
    *(v6 + 131) &= ~2u;
    v24 = a2 & result;
    if ((v15 & 2) == 0)
    {
LABEL_21:
      if ((v15 & 0x20000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v24 = 0;
    if ((v15 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v142 = 7;
  v143 = 0;
  *v136 = -65536;
  *&v136[8] = 0;
  *&v136[16] = 0;
  memset(&v136[24], 0, 32);
  v137 = 0u;
  v138 = 0u;
  v139 = 0;
  v140 = -1;
  v141 = 0;
  BlueFin::GlPeAlmanac::Import(v136, this + 6784, 0, 0, 0, *v10.i64, v11, v12, *v13.i64, v14);
  result = BlueFin::GlPeAlmMgr::SetAsstAlm((*(this + 786) + 34112), v136);
  v15 = *(this + 2712) & 0xFFFFFFFD;
  *(this + 2712) = v15;
  *(v6 + 131) &= ~8u;
  if ((v15 & 0x20000) == 0)
  {
LABEL_22:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = BlueFin::GlPeAlmMgr::SetAsstAlm(*(this + 786) + 34112, this + 3410, 0);
  v36 = *(this + 2712);
  v15 = v36 & 0xFFFDFFFF;
  *(this + 2712) = v36 & 0xFFFDFFFF;
  if ((v36 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_53:
  result = BlueFin::GlPeAlmMgr::SetAsstAlm((*(this + 786) + 34112), this + 6852, 0, v9, *v10.i64, v11, v12);
  v37 = *(this + 2712);
  v15 = v37 & 0xFEFFFFFF;
  *(this + 2712) = v37 & 0xFEFFFFFF;
  if ((v37 & 0x10) != 0)
  {
LABEL_24:
    v15 &= ~0x10u;
    *(this + 2712) = v15;
  }

LABEL_25:
  if ((v15 & 0x20) != 0)
  {
    v25 = *(this + 785);
    *v136 = &unk_2A1F185A8;
    *&v136[8] = 2;
    v136[12] = 0;
    *&v136[16] = &off_2A1F0B5F0;
    *&v136[24] = 0;
    *&v136[32] = *(this + 435);
    result = BlueFin::GlPeTimeManager::SetGpsUtcModel(v25, v136, *&v136[32], v10);
    v15 = *(this + 2712) & 0xFFFFFFDF;
    *(this + 2712) = v15;
  }

  if ((v15 & 0x40000) != 0)
  {
    result = BlueFin::GlPeTimeManager::SetGlnsAsst(*(this + 785), 2, this + 6976);
    v15 = *(this + 2712) & 0xFFFBFFFF;
    *(this + 2712) = v15;
  }

  if (a2)
  {
    v26 = *(*(this + 785) + 2576);
    if ((v15 & 0x10000) != 0 && v7[3624] == 1)
    {
      *(this + 3423) = *(this + 638);
      *(this + 3424) = *(this + 639);
      *(this + 3425) = *(this + 640);
      *(this + 3419) = *(this + 634);
      *(this + 3420) = *(this + 635);
      *(this + 3421) = *(this + 636);
      *(this + 3422) = *(this + 637);
      *(this + 3418) = *(this + 633);
      *(this + 6852) = *(this + 1282);
      v6[800] = 1;
      v7[3624] = 0;
    }

    if ((v15 & 0x200000) != 0)
    {
      result = BlueFin::GlPeRtiRequestor::OnRtiReceived(*(this + 783) + 181056, this + 9768);
      v15 = *(this + 2712) & 0xFFDFFFFF;
      *(this + 2712) = v15;
    }

    v133 = 0;
    v134 = -1;
    v27 = xmmword_298A3BA20;
    v135 = xmmword_298A3BA20;
    if ((v15 & 0x400) != 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
      v27.i16[0] = *(v7 + 1033);
      *v27.i64 = v27.u64[0];
      result = BlueFin::GlUtcTime::GlUtcTime(v136, *(v7 + 1028), v7[2058], v7[2060], v7[2062], v7[2064], v27, *v10.i64, v11);
      *v29.i64 = *(this + 1071) * 0.001;
      v30 = fabs(*v29.i64);
      *v12.i64 = v30 - trunc(v30);
      *v14.i64 = *v12.i64 * 4294967300.0 + 0.5;
      v31 = *v14.i64;
      if (*v14.i64 >= 4294967300.0)
      {
        v31 = -1;
      }

      v13.i64[0] = 1.0;
      if (*v12.i64 < 0.0 || *v12.i64 >= 1.0)
      {
        v128 = "dFracSec >= 0.0 && dFracSec < 1.0";
        v129 = 173;
        v130 = "glpe_timepoint.h";
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        goto LABEL_220;
      }

      v33 = v30;
      if (*v29.i64 < 0.0)
      {
        if (*&v136[8] < __PAIR64__(v33, v31))
        {
          if (v33 - *&v136[12] != *&v136[8] > v31 || v31 != *&v136[8])
          {
            v128 = "!tDelta.isNegative()";
            v129 = 1078;
            v130 = "glpe_datetime.h";
            DeviceFaultNotify("glpe_datetime.h", 1078, "operator+=", "!tDelta.isNegative()");
LABEL_220:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v130, v129, v128);
          }

          v35 = 0;
          LODWORD(v34) = 0;
        }

        else
        {
          v38 = *&v136[8] >= v31;
          LODWORD(v34) = *&v136[8] - v31;
          v39 = !v38;
          v35 = *&v136[12] - v33 - v39;
        }
      }

      else
      {
        v34 = *&v136[8] + v31;
        v35 = *&v136[12] + v33 + HIDWORD(v34);
      }

      *&v136[8] = __PAIR64__(v35, v34);
      v41 = BlueFin::GlWeekTowTime::m_ucNextLs;
      if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v42 = v35 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v44 = (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v43;
      if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v35)
      {
        v41 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
      }

      v45 = v35 - v44 + 432000 - v41;
      v46 = v45 % 0x7861F80;
      v47 = v45 % 0x7861F80 / 0x15180;
      if (v45 % 0x7861F80 >= 0x5A4EC00)
      {
        v48 = 3;
      }

      else if (v46 < 0x3C3B880)
      {
        v48 = v46 > 0x1E284FF;
      }

      else
      {
        v48 = 2;
      }

      v49 = v48;
      v50 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v48];
      if (v47 >= v50[9])
      {
        v51 = 9;
      }

      else if (v47 >= v50[6])
      {
        v51 = 6;
      }

      else if (v47 >= v50[3])
      {
        v51 = 3;
      }

      else
      {
        v51 = 0;
      }

      *&v136[16] = (v49 | (4 * (v45 / 0x7861F80))) + 1980;
      *&v136[18] = v47 - *v50 + 1;
      if (v47 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v49 + v51 + 2])
      {
        v52 = 3;
      }

      else if (v47 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v49 + v51 + 1])
      {
        v52 = 1;
      }

      else
      {
        v52 = 2;
      }

      v53 = v52 + v51;
      v136[20] = v53;
      v136[21] = v47 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v49 + v53 - 1] + 1;
      LOBYTE(v47) = 60;
      if (v44)
      {
        LOBYTE(v54) = 59;
        LOBYTE(v55) = 23;
      }

      else
      {
        v55 = (1193047 * (v45 % 0x15180)) >> 32;
        v54 = (2185 * (v45 % 0xE10)) >> 17;
        v47 = v45 % 0x3C;
      }

      v136[22] = v55;
      v136[23] = v54;
      v136[24] = v47;
      v56 = *(BlueFin::GlUtils::m_pInstance + 1092);
      *v27.i64 = (v56 - *(this + 2520)) * 0.001;
      *v29.i64 = *v27.i64 - trunc(*v27.i64);
      v57.f64[0] = NAN;
      v57.f64[1] = NAN;
      v11 = vnegq_f64(v57);
      v10 = vbslq_s8(v11, v29, v27);
      if (*v10.i64 < 0.0 || *v10.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v11.i64[0] = 0x41F0000000000000;
      v12.i64[0] = 0.5;
      v59 = *v10.i64 * 4294967300.0 + 0.5;
      v60 = v59;
      v61 = v35 + *v27.i64;
      if (v59 >= 4294967300.0)
      {
        v60 = 0xFFFFFFFFLL;
      }

      v62 = v60 + v34;
      v63 = v61 + HIDWORD(v62);
      v64 = *(*(this + 785) + 2568);
      if (v64 == -7200001)
      {
        v27.i64[0] = 0xC15B774040000000;
      }

      else
      {
        v65 = *(this + 1617);
        v66 = v64 + v56 - v65;
        if (!v65)
        {
          v66 = *(*(this + 785) + 2568);
        }

        if (v66 <= 0xFF9222FE)
        {
          *v27.i64 = v66;
        }

        else
        {
          *v27.i64 = v66;
        }
      }

      v67 = 1000 * *(this + 2144);
      if (v67 <= 0x30D40)
      {
        v67 = 200000;
      }

      *v10.i64 = v67;
      v133 = __PAIR64__(v63, v62);
      v134 = 2;
      *&v135 = v27.i64[0];
      *(&v135 + 1) = v67;
      v15 = *(this + 2712) & 0xFFFFFBFF;
      *(this + 2712) = v15;
    }

    v68 = v28 ^ 1;
    if ((v15 & 0x200) != 0 && (a3 & 1) == 0)
    {
      v69 = *(v7 + 898);
      v27.i32[0] = *(this + 2072);
      *v13.i64 = v27.u64[0] * 0.001;
      *v136 = &off_2A1F0B5F0;
      *v11.i64 = *v13.i64 - trunc(*v13.i64);
      v70.f64[0] = NAN;
      v70.f64[1] = NAN;
      v71 = vnegq_f64(v70);
      v14 = vbslq_s8(v71, v11, v13);
      if (*v14.i64 < 0.0 || *v14.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v12.i64[0] = 0.5;
      *v14.i64 = *v14.i64 * 4294967300.0 + 0.5;
      v73 = *v14.i64;
      if (*v14.i64 >= 4294967300.0)
      {
        v73 = -1;
      }

      v74 = *v13.i64 + 604800 * v69;
      *&v136[8] = __PAIR64__(v74, v73);
      *v136 = &off_2A1F0B5F0;
      v75 = *(BlueFin::GlUtils::m_pInstance + 1092);
      *v27.i64 = (v75 - *(this + 2519)) * 0.001;
      *v13.i64 = *v27.i64 - trunc(*v27.i64);
      v10 = vbslq_s8(v71, v13, v27);
      if (*v10.i64 < 0.0 || *v10.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v11.i64[0] = 0x41F0000000000000;
      v77 = *v10.i64 * 4294967300.0 + 0.5;
      v78 = v74 + *v27.i64;
      v79 = 0xFFFFFFFFLL;
      if (v77 < 4294967300.0)
      {
        v79 = v77;
      }

      v80 = v79 + v73;
      v81 = v78 + HIDWORD(v80);
      *&v136[8] = v80;
      *&v136[12] = v78 + HIDWORD(v80);
      v82 = *(*(this + 785) + 2568);
      if (v82 == -7200001)
      {
        v27.i64[0] = 0xC15B774040000000;
      }

      else
      {
        v83 = *(this + 1617);
        v84 = v82 + v75 - v83;
        if (!v83)
        {
          v84 = *(*(this + 785) + 2568);
        }

        if (v84 <= 0xFF9222FE)
        {
          *v27.i64 = v84;
        }

        else
        {
          *v27.i64 = v84;
        }
      }

      v85 = 1000 * *(this + 2141);
      if (v85 <= 0x30D40)
      {
        v85 = 200000;
      }

      *v10.i64 = v85;
      v133 = __PAIR64__(v81, v80);
      v134 = 0;
      *&v135 = v27.i64[0];
      *(&v135 + 1) = v85;
      if (v7[1798])
      {
        result = BlueFin::GlPeTowAssistMgr::SetAsstTime(*(this + 806), v7[1798], this + 8296);
        v15 = *(this + 2712);
      }

      v15 &= ~0x200u;
      *(this + 2712) = v15;
      v68 = 1;
    }

    if ((v15 & 0x80000) != 0 && (a3 & 1) == 0)
    {
      result = BlueFin::GlPeTimeManager::SetGnssTimeModel(*(this + 785), this + 9904, 4295000000.0);
      v15 = *(this + 2712) & 0xFFF7FFFF;
      *(this + 2712) = v15;
    }

    v86 = v15;
    if ((v15 & 0x40) != 0)
    {
      result = BlueFin::GlPeRangeAidGen::SetAsstAcqAid(*(this + 789), this + 3498);
      v24 = 1;
      *v6 = 1;
      v86 = *(this + 2712) & 0xFFFFFFBF;
      *(this + 2712) = v86;
    }

    v87 = (v15 >> 6) & 1;
    if ((v86 & 0x80) != 0 && *(*(*(this + 786) + 48) + 1224) == 1)
    {
      result = BlueFin::GlPeRangeAidGen::SetAsstAcqAid(*(this + 789), this + 1835);
      v88 = *(this + 3673);
      if (v88 >= 14)
      {
        LOBYTE(v88) = 14;
      }

      v89 = v88;
      if (v88)
      {
        v90 = 0;
        v91 = (this + 7348);
        do
        {
          v92 = *v91;
          v91 += 11;
          v90 |= 1 << (v92 + 1);
          --v89;
        }

        while (v89);
      }

      else
      {
        v90 = 0;
      }

      v93 = *(*(this + 786) + 48);
      *(v93 + 1216) = *(*(v93 + 16) + 2568);
      *(v93 + 1220) = v90;
      LOBYTE(v87) = 1;
      *v6 = 1;
      v86 = *(this + 2712) & 0xFFFFFF7F;
      *(this + 2712) = v86;
      v24 = 1;
    }

    if ((v86 & 0x8000000) != 0)
    {
      result = BlueFin::GlPeRangeAidGen::SetAsstAcqAid(*(this + 789), this + 1914);
      LOBYTE(v87) = 1;
      *v6 = 1;
      v86 = *(this + 2712) & 0xF7FFFFFF;
      *(this + 2712) = v86;
      v24 = 1;
    }

    if ((v86 & 0x10000000) != 0)
    {
      result = BlueFin::GlPeRangeAidGen::SetAsstAcqAid(*(this + 789), this + 1993);
      LOBYTE(v87) = 1;
      *v6 = 1;
      v86 = *(this + 2712) & 0xEFFFFFFF;
      *(this + 2712) = v86;
      v24 = 1;
    }

    if ((v86 & 0x100) != 0)
    {
      *&v136[48] = -1;
      v136[52] = 0;
      LODWORD(v137) = 0;
      memset(v136, 0, 48);
      result = BlueFin::GlPeAsstPosReqDataFifo::Get(this + 8608, v136);
      if (result)
      {
        do
        {
          v94 = ((*(BlueFin::GlUtils::m_pInstance + 1092) - v137) * 0.001);
          if (v94 <= 60)
          {
            *&v136[40] += v94;
            v95 = *(this + 786);
            v131[0] = *v136;
            v131[1] = *&v136[16];
            v132 = *&v136[32];
            BlueFin::GlPeAsstPosMgr::SetAsstPos(v95 + 56, v131, *&v136[48], *&v136[44], 0, &v136[40], v136[52]);
            BlueFin::GlPeStartupMgr::Update(*(this + 805));
            BlueFin::GlPosEng::SetInitialPosMicroNav(*(this + 783), v136);
            v24 = 1;
          }

          result = BlueFin::GlPeAsstPosReqDataFifo::Get(this + 8608, v136);
        }

        while ((result & 1) != 0);
      }

      v86 = *(this + 2712) & 0xFFFFFEFF;
      *(this + 2712) = v86;
      *(v6 + 131) &= ~1u;
    }

    if (v86 & 0x1000) == 0 || (a3)
    {
      if (!v68)
      {
        v101 = 0;
        if ((v86 & 0x2000) != 0)
        {
          goto LABEL_201;
        }

        goto LABEL_172;
      }
    }

    else
    {
      v96 = *(v7 + 1626);
      v97 = *(this + 2438);
      if (*(v7 + 1626) || v97)
      {
        *v27.i64 = v97 * 0.001;
        *v136 = &off_2A1F0B5F0;
        *v10.i64 = *v27.i64 - trunc(*v27.i64);
        v102.f64[0] = NAN;
        v102.f64[1] = NAN;
        v10.i64[0] = vbslq_s8(vnegq_f64(v102), v10, v27).i64[0];
        if (*v10.i64 < 0.0 || *v10.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v104 = *v10.i64 * 4294967300.0 + 0.5;
        v105 = v104;
        if (v104 >= 4294967300.0)
        {
          v105 = -1;
        }

        v106 = *v27.i64 + 604800 * v96;
        v107 = *(*(this + 785) + 2568);
        if (v107 == -7200001)
        {
          v100 = -7200001.0;
        }

        else
        {
          v109 = *(this + 1617);
          if (v109)
          {
            v107 = v107 - v109 + *(BlueFin::GlUtils::m_pInstance + 1092);
          }

          if (v107 <= 0xFF9222FE)
          {
            v100 = v107;
          }

          else
          {
            v100 = v107;
          }
        }

        v112 = *(this + 2440);
        if (v112 <= 200000)
        {
          v112 = 200000;
        }

        v111 = v112;
        v133 = __PAIR64__(v106, v105);
        v134 = 0;
      }

      else
      {
        v27.i16[0] = *(v7 + 1621);
        v10.i16[0] = *(v7 + 1622);
        v98 = v10.u64[0];
        v11.i64[0] = 0x3F50624DD2F1A9FCLL;
        *v27.i64 = v27.u64[0] + v98 * 0.001;
        BlueFin::GlUtcTime::GlUtcTime(v136, *(v7 + 1616), v7[3234], v7[3236], v7[3238], v7[3240], v27, v98, v11);
        v99 = *(*(this + 785) + 2568);
        if (v99 == -7200001)
        {
          v100 = -7200001.0;
        }

        else
        {
          v108 = *(this + 1617);
          if (v108)
          {
            v99 = v99 - v108 + *(BlueFin::GlUtils::m_pInstance + 1092);
          }

          if (v99 <= 0xFF9222FE)
          {
            v100 = v99;
          }

          else
          {
            v100 = v99;
          }
        }

        v110 = *(this + 2436);
        if (v110 <= 200000)
        {
          v110 = 200000;
        }

        v111 = v110;
        v133 = *&v136[8];
        v134 = 2;
      }

      *&v135 = v100;
      *(&v135 + 1) = v111;
      *&v131[0] = &off_2A1F0B5F0;
      *(&v131[0] + 1) = 0;
      BlueFin::GlPeGnssTime::GetGps(&v133, v131);
      v113 = *(this + 786);
      v114 = *(v7 + 3208);
      *v136 = *(v7 + 3192);
      *&v136[16] = v114;
      *&v136[32] = *(this + 1215);
      BlueFin::GlPeAsstPosMgr::SetAsstPos(v113 + 56, v136, 2, 0, v131, 0, 0);
      BlueFin::GlPeGnssTime::operator+=(&v133, (*(BlueFin::GlUtils::m_pInstance + 1092) - *(this + 2523)) * 0.001);
      *(this + 2712) &= ~0x1000u;
    }

    v115 = *(this + 785);
    v136[0] = 0;
    result = BlueFin::GlPeTimeManager::SetTime(v115, &v133, 2u, v136);
    *(v6 + 131) &= ~4u;
    v86 = *(this + 2712);
    v101 = 1;
    v24 = v26 == 0;
    if ((v86 & 0x2000) != 0)
    {
LABEL_201:
      *v27.i64 = *(this + 2524);
      BlueFin::GlPeOscMgr::SetAsstOscOffset(*(this + 807), this + 5052, v27, *(this + 2525), v11, v12);
      result = BlueFin::GlPeStartupMgr::Update(*(this + 805));
      v116 = *(this + 2712) & 0xFFFFDFFF;
      *(this + 2712) = v116;
      v24 = 1;
      if ((v116 & 0x800) != 0)
      {
        goto LABEL_202;
      }

      goto LABEL_208;
    }

LABEL_172:
    if ((v86 & 0x800) != 0)
    {
LABEL_202:
      v117 = *(this + 807);
      v118 = *(v117 + 2);
      v119 = *(v117 + 10);
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }

      v120 = v119 * 0.000000001;
      v121 = *(v7 + 1586);
      v122 = v121 * 0.000000001;
      v123 = *(this + 2420);
      v124 = v123 * 0.000000001 * 1000.0 / 31556952.0;
      v125 = v122 + v124;
      if (v122 + v124 >= v120)
      {
        GlCustomLog(14, "Ignored RefFreqStatus(%d, %hu)  %us (%dppb) was (%d, %d)\n", *(this + 2416), v121, v123, (v125 * 1000000000.0 + 0.5), (v118 * 0.000000001 * 1000000000.0 + 0.5), (v120 * 1000000000.0 + 0.5));
      }

      else
      {
        BlueFin::GlPeOscMgr::SetOscOff(*(this + 807), *(this + 2416) * 0.000000001, v122 + v124, 0);
        GlCustomLog(14, "Applied RefFreqStatus(%d, %hu) %us (%dppb)\n", *(this + 2416), *(v7 + 1586), *(this + 2420), (v125 * 1000000000.0 + 0.5));
        v24 = 1;
      }

      result = BlueFin::GlPeStartupMgr::Update(*(this + 805));
      *(this + 2712) &= ~0x800u;
    }

LABEL_208:
    if (!(v87 & 1 | ((v24 & 1) == 0)))
    {
      v126 = *(this + 789);
      if (*(v126 + 19352) <= 1)
      {
        *(v126 + 19352) = 2;
      }

      v6[529] = 1;
    }

    if (v101)
    {
      if (v26)
      {
        result = GlCustomLog(14, "Already had time\n");
      }

      else
      {
        result = BlueFin::GlPosEng::OnInitialTime(*(this + 783));
      }
    }

    if ((v24 & 1) != 0 && *(*(this + 786) + 368) == 1)
    {
      result = BlueFin::GlPosEng::SendNvMem2MicroNav(*(this + 783), v27, v10, *v11.i64, v12, v13, v14);
      *(*(this + 786) + 368) = 0;
    }
  }

  v127 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlReqSm::SetAsstPos(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  v7 = *(BlueFin::GlUtils::m_pInstance + 1092);
  v8 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v8;
  v14 = *(a2 + 32);
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = v7;
  *(a1 + 10848) |= 0x100u;
  BlueFin::GlPeAsstPosReqDataFifo::Put(a1 + 8608, v13);
  v12 = 10;
  v9 = *(a1 + 32);
  v10 = *(a1 + 8);
  *(a1 + 32) = v10;
  do
  {
    v20 = 0;
    if (BlueFin::patch_dispatch(v10, a1, &v12, &v20))
    {
      v10 = v20;
    }

    else
    {
      v10 = (*(a1 + 32))(a1, &v12);
    }

    *(a1 + 32) = v10;
  }

  while (v10);
  *(a1 + 32) = v9;
  return 1;
}

void std::deque<FireMessageHandler::GLRefPositionExtended>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0xAAuLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 85;
  }
}

uint64_t gnss::FireGnssDevice::setAssistanceSignalEnvironment(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  bzero(v26, 0xDD8uLL);
  __src[0] = 0x300000064;
  DeviceCommon::GetMachContinuousTime(v6);
  v14 = (v13 * 1000.0);
  __src[1] = v14;
  v26[8] = 1;
  v28 = 2;
  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 4;
      }

      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v15 = 5;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v15 = 6;
      goto LABEL_17;
    }

LABEL_13:
    FireDeviceLog::DeviceLogBase(2, "#fgd Unexpected SignalEnvironmentType %d", v7, v8, v9, v10, v11, v12, a2);
    std::function<void ()(gnss::Result)>::operator()(a3, 4);
    goto LABEL_18;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v15 = 1;
      goto LABEL_17;
    }

    if (a2 == 2)
    {
      v15 = 2;
LABEL_17:
      v27 = v15;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v27 = 0;
LABEL_18:
  FireDeviceLog::DeviceLogBase(6, "feeding,device,SignalEnvironment,machMs,%llu,state,%d", v7, v8, v9, v10, v11, v12, v14);
  v16 = *(a1 + 40);
  std::deque<BlueFin::GlExtSensData>::push_back(v16 + 1744, __src);
  FireMessageHandler::send(v16, 1073741831, v17, v18, v19, v20, v21, v22);
  result = std::function<void ()(gnss::Result)>::operator()(a3, 1);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__split_buffer<FireMessageHandler::GLRefPositionExtended *>::emplace_back<FireMessageHandler::GLRefPositionExtended *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::GLRefPositionExtended *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::deque<BlueFin::GlExtSensData>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::GLRefPositionExtended *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<FireMessageHandler::GLRefPositionExtended *>::emplace_back<FireMessageHandler::GLRefPositionExtended *&>(a1, &v10);
}

void sub_2987F5E90(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlNvMemImpl::DetermineDataToIgnore(uint64_t this)
{
  *(this + 11904) = 0x101010101010101;
  *(this + 11896) = 0x101010101010101;
  *(this + 11912) = 16843009;
  v1 = *(this + 8);
  if ((*(this + 11892) - 3) > 2)
  {
    v3 = (*(this + 8) & 0x10) != 0;
    *(this + 11896) = v3;
    *(this + 11897) = (v1 & 8) != 0;
    *(this + 11898) = (v1 & 2) != 0;
    *(this + 11899) = v1 & 1;
    *(this + 11900) = 0;
    *(this + 11901) = (v1 & 0x20) != 0;
    *(this + 11916) = (v1 & 0x200000) != 0;
    *(this + 11902) = (v1 & 0x80) != 0;
    *(this + 11903) = BYTE1(v1) & 1;
    *(this + 11904) = (v1 & 0x400) != 0;
    *(this + 11905) = v3;
    *(this + 11906) = (v1 & 0x2000) != 0;
    *(this + 11907) = (v1 & 0x4000) != 0;
    *(this + 11908) = 0;
    *(this + 11909) = (v1 & 0x1000) != 0;
    *(this + 11910) = 0;
    *(this + 11914) = 0;
  }

  else
  {
    if ((v1 & 8) != 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 11917);
    }

    *(this + 11897) = v2 & 1;
    if ((v1 & 2) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(this + 11917);
    }

    *(this + 11898) = v4 & 1;
    if (v1)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(this + 11917);
    }

    *(this + 11899) = v5 & 1;
    v6 = *(this + 11917);
    *(this + 11902) = ((v1 & 0x80) == 0) & v6;
    *(this + 11903) = ((v1 & 0x100) == 0) & v6;
    *(this + 11896) = v6;
    *(this + 11900) = v6;
    *(this + 11904) = 0x101010101010101 * v6;
    *(this + 11911) = 16843009 * v6;
  }

  return this;
}

BlueFin::GlPeTimeManagerData *BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(BlueFin::GlPeTimeManagerData *this)
{
  *this = &unk_2A1F18648;
  *(this + 2) = 0;
  *(this + 14) = -1;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  memset_pattern16(this + 112, &unk_298A45D20, 0x18uLL);
  *(this + 39) = 2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 8) = -1;
  *(this + 40) = xmmword_298A3BA20;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0x80;
  return this;
}

uint64_t gnss::FireGnssDevice::injectAssistanceTime(FireMessageHandler **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  DeviceCommon::GetMachContinuousTime(a1);
  v11 = (v10 * 1000000000.0) - a4;
  FireDeviceLog::DeviceLogBase(6, "#fgd injectAssistanceTime gpsNanoSeconds,%llu,uncertaintyNanoSeconds,%llu,machContinuousTimeNanoSeconds,%llu,nowNs,%llu,timeDiff,%llu", v12, v13, v14, v15, v16, v17, a2);
  v23 = FireMessageHandler::setAssistanceTime(a1[5], v11 + a2, a3, v18, v19, v20, v21, v22);

  return std::function<void ()(gnss::Result)>::operator()(a5, v23);
}

uint64_t FireMessageHandler::setAssistanceTime(FireMessageHandler *this, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3 / 0xF4240;
  v10 = a2 / 0x2260FF9290000;
  v11 = a2 % 0x2260FF9290000 / 0xF4240;
  FireDeviceLog::DeviceLogBase(6, "%s, gpsWeek, %llu, gpsTowMs, %llu", a3, a4, a5, a6, a7, a8, "setAssistanceTime");
  if (*(this + 1692) == 1)
  {
    v27 = *(this + 422);
    v26 = *(this + 356);
    FireDeviceLog::DeviceLogBase(5, "#Warning overwriting,oldWeek,%u,oldTowMs,%u,oldUncMs,%u,newWeek,%u,newTowMs,%u,newUncMs,%u", v12, v13, v14, v15, v16, v17, *(this + 714));
    v18 = *(this + 1692);
    *(this + 356) = v11;
    *(this + 714) = v10;
    *(this + 1430) = 0u;
    *(this + 1446) = 0u;
    *(this + 1462) = 0u;
    *(this + 1478) = 0u;
    *(this + 1494) = 0u;
    *(this + 1510) = 0u;
    *(this + 1526) = 0u;
    *(this + 1542) = 0u;
    *(this + 1558) = 0u;
    *(this + 1574) = 0u;
    *(this + 1590) = 0u;
    *(this + 1606) = 0u;
    *(this + 1622) = 0u;
    *(this + 1638) = 0u;
    *(this + 1654) = 0u;
    *(this + 1670) = 0u;
    *(this + 843) = 0;
    *(this + 422) = v9;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(this + 356) = v11;
    *(this + 714) = v10;
    *(this + 843) = 0;
    *(this + 1430) = 0u;
    *(this + 1446) = 0u;
    *(this + 1462) = 0u;
    *(this + 1478) = 0u;
    *(this + 1494) = 0u;
    *(this + 1510) = 0u;
    *(this + 1526) = 0u;
    *(this + 1542) = 0u;
    *(this + 1558) = 0u;
    *(this + 1574) = 0u;
    *(this + 1590) = 0u;
    *(this + 1606) = 0u;
    *(this + 1622) = 0u;
    *(this + 1638) = 0u;
    *(this + 1654) = 0u;
    *(this + 1670) = 0u;
    *(this + 422) = v9;
  }

  *(this + 1692) = 1;
LABEL_6:
  FireDeviceLog::DeviceLogBase(6, "SetAllowGnssDwellDutyCycling,%d", v12, v13, v14, v15, v16, v17, *(this + 1352));
  FireMessageHandler::send(this, 1073741827, v19, v20, v21, v22, v23, v24);
  return 1;
}

uint64_t BlueFin::GlDbgEngine::SetAsstTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1559);
    v7 = *(a1 + 8);
    if ((*(*v7 + 120))(v7))
    {
      *(v7 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v7, a2);
    }

    v8 = *(a1 + 8);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, &v13);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v9 = BlueFin::GlEngineImplStd::SetAsstTime(a1 + 368, a2, a3);
    v12 = v9;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1559);
    v10 = *(a1 + 8);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v12);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:840");
    return 0;
  }

  return v9;
}

uint64_t BlueFin::validateAsstTime(uint64_t result)
{
  if (*result > 0x240C83FFu)
  {
    return 0;
  }

  if (*(result + 4) > 0xFFCu)
  {
    return 0;
  }

  v1 = *(result + 6);
  if (v1 > 0x20)
  {
    return 0;
  }

  if (!*(result + 6))
  {
    return 1;
  }

  v2 = (result + 14);
  LOBYTE(result) = 1;
  do
  {
    result = (result & 1) != 0 && *(v2 - 6) <= 0x3Fu && (*(v2 - 2) & 0xC000) == 0 && *(v2 - 2) <= 1u && *(v2 - 1) <= 1u && *v2 < 4u;
    v2 += 8;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t BlueFin::GlReqSm::SetAsstTime(uint64_t a1, void *__src, int a3)
{
  *(a1 + 10848) |= 0x200u;
  v6 = *(a1 + 6280);
  if (*(v6 + 642) == -7200001 && (*(*(a1 + 6272) + 33) & 0x40) == 0)
  {
    BlueFin::GlPeTimeManager::TimeAsstPending(v6);
  }

  memcpy((a1 + 8288), __src, 0x108uLL);
  *(a1 + 8564) = a3;
  *(a1 + 10076) = *(BlueFin::GlUtils::m_pInstance + 1092);
  v10 = 10;
  v7 = *(a1 + 32);
  v8 = *(a1 + 8);
  *(a1 + 32) = v8;
  do
  {
    v11 = 0;
    if (BlueFin::patch_dispatch(v8, a1, &v10, &v11))
    {
      v8 = v11;
    }

    else
    {
      v8 = (*(a1 + 32))(a1, &v10);
    }

    *(a1 + 32) = v8;
  }

  while (v8);
  *(a1 + 32) = v7;
  return 1;
}

BlueFin::GlPeTimeManagerData *BlueFin::GlPeTimeManager::TimeAsstPending(BlueFin::GlPeTimeManagerData *this)
{
  if (*(this + 642) == -7200001)
  {
    v5 = v1;
    v6 = v2;
    *(this + 2564) = 1;
    this = BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v3);
    v4 |= 0x20u;
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        return (*(v3 + 24))(&v3, 0, 0);
      }
    }
  }

  return this;
}

BlueFin::GlPeSvHealthData *BlueFin::GlPeSvHealthData::GlPeSvHealthData(BlueFin::GlPeSvHealthData *this)
{
  *this = &unk_2A1F109F0;
  if ((BlueFin::GlPeSvHealthData::s_bGnssBaseIndexInit & 1) == 0)
  {
    v2 = 0;
    v3 = 0;
    BlueFin::GlPeSvHealthData::s_auiGnssBaseIndex[0] = 0;
    do
    {
      v3 += BlueFin::GlImplGnss::m_aucNumSatsPerImplGnss[v2];
      BlueFin::GlPeSvHealthData::s_auiGnssBaseIndex[++v2] = v3;
    }

    while (v2 != 7);
    BlueFin::GlPeSvHealthData::s_bGnssBaseIndexInit = 1;
  }

  bzero(this + 8, 0x8B8uLL);
  *(this + 140) = 0u;
  *(this + 564) = 0;
  return this;
}

void BlueFin::GlPeSvHealthHelper::Clear(BlueFin::GlPeSvHealthHelper *this)
{
  *(this + 565) = 0;
  *(this + 1136) = 0;
  *(this + 2274) = 0;
  *(this + 569) = 0;
  bzero(this + 8, 0x8B8uLL);
  *(this + 140) = 0u;
  *(this + 564) = 0;
  v2 = (*(this + 309) + 8);
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
  v6 = (*(this + 333) + 8);
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

unint64_t BlueFin::GlPeKF::GlPeKF(unint64_t a1, BlueFin::GlSettingsImpl *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const BlueFin::GlPeTimeManager *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = a1 + 60720;
  v23 = a1 + 56624;
  v37 = a1 + 11224;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = vdup_n_s32(0x44FA0000u);
  *(a1 + 72) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 136) = &off_2A1F0B5F0;
  *(a1 + 144) = xmmword_298A3B550;
  *(a1 + 160) = -1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 186) = 0;
  *(a1 + 178) = 0;
  BlueFin::stSkfStatus::stSkfStatus(a1 + 192);
  BlueFin::stSkfTestParam::stSkfTestParam((a1 + 1632));
  *(a1 + 3744) = 1;
  *(a1 + 3752) = 0;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  *(a1 + 3760) = vnegq_f64(v24);
  *(a1 + 3776) = 0x7FFFFFFFFFFFFFFFLL;
  BlueFin::GlPeCST::init(a1, a2, a7);
  *(a1 + 3808) = 0;
  *(&v31 + 1) = a15;
  *&v31 = a2;
  BlueFin::GlPeNavAid::GlPeNavAid(a1 + 3840, a9, a8, a3, a1 + 6856, a14, a7, a5, v31, a18);
  *(a1 + 6784) = a11;
  *(a1 + 6792) = a3;
  *(a1 + 6836) = 0;
  *(a1 + 6800) = 0u;
  *(a1 + 6816) = 0u;
  *(a1 + 6848) = -1;
  *(a1 + 6850) = 1;
  *(a1 + 6831) = 0;
  BlueFin::GlPeComputeZRH::GlPeComputeZRH(a1 + 6856, a3, a5, a9, a7, a1 + 57384, a2, a17);
  *v37 = 0;
  *(a1 + 11232) = 0u;
  *(a1 + 11248) = 0u;
  *(a1 + 11264) = 0u;
  *(a1 + 11280) = 0u;
  *(a1 + 11296) = 0;
  *(a1 + 12112) = a11;
  bzero((a1 + 11304), 0x322uLL);
  *(a1 + 12149) = 0;
  *(a1 + 12120) = 0u;
  *(a1 + 12136) = 0u;
  *(a1 + 12160) = a3;
  *(a1 + 12168) = a1 + 6856;
  *(a1 + 12176) = a1 + 61152;
  *(a1 + 12184) = a9 + 392;
  *(a1 + 12192) = a18;
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 12616));
  *(a1 + 12208) = a3;
  *(a1 + 12216) = a1 + 6856;
  *(a1 + 12200) = &unk_2A1F12320;
  *(a1 + 12616) = &unk_2A1F12358;
  *(a1 + 12224) = a7;
  *(a1 + 12232) = a1 + 6848;
  *(a1 + 12240) = a1 + 61152;
  *(a1 + 12248) = a18;
  *(v37 + 1032) = 0;
  *(v37 + 1104) = 0;
  *(a1 + 12264) = 0;
  *(a1 + 12272) = 0u;
  *(a1 + 12296) = 0;
  *(a1 + 12304) = 0u;
  *(a1 + 12320) = 0;
  *(a1 + 12336) = a3;
  *(a1 + 12344) = a1 + 6856;
  v35 = (a1 + 61152);
  *(a1 + 12352) = a1 + 61152;
  *(a1 + 12360) = 0;
  *(a1 + 12368) = a18;
  *(a1 + 12380) = 0;
  *(a1 + 12376) = 0;
  *(a1 + 12384) = 0x412E848000000000;
  *(a1 + 12392) = 0u;
  *(a1 + 12408) = 0u;
  *(a1 + 12417) = 0u;
  *(a1 + 12440) = 0;
  *(a1 + 12456) = 0u;
  *(a1 + 12448) = 0;
  *(v37 + 1248) = 1;
  *(a1 + 12496) = 0;
  memset_pattern16((a1 + 12474), &memset_pattern_2, 6uLL);
  *(a1 + 12482) = 0;
  *(a1 + 12480) = 0;
  *(a1 + 12484) = 0;
  *(a1 + 12492) = 0;
  *(a1 + 12512) = 0;
  *(v37 + 1292) = 0;
  *(a1 + 12500) = 0;
  *(a1 + 12508) = 0;
  *(a1 + 12520) = a1 + 12532;
  *(v37 + 1304) = 19;
  *(a1 + 12532) = 0u;
  *(a1 + 12548) = 0u;
  *(a1 + 12564) = 0u;
  *(a1 + 12580) = 0u;
  *(a1 + 12592) = 0u;
  *(a1 + 12608) = a13;
  *(a1 + 13360) = 0;
  *(a1 + 13496) = 0;
  *(a1 + 13632) = 0;
  *(a1 + 13152) = 0;
  *(a1 + 13144) = 0;
  *(a1 + 13160) = 0u;
  *(a1 + 13176) = 0u;
  *(a1 + 13192) = 0u;
  *(a1 + 13208) = 0u;
  *(a1 + 13224) = 0;
  *(a1 + 13768) = 0u;
  *(a1 + 13784) = 0u;
  *(a1 + 13800) = 6367427;
  *(a1 + 13804) = 0u;
  *(a1 + 13820) = 0u;
  *(a1 + 13832) = 0u;
  *(a1 + 13848) = a1 + 13860;
  *(v37 + 2632) = 19;
  *(a1 + 13860) = 0u;
  *(a1 + 13876) = 0u;
  *(a1 + 13892) = 0u;
  *(a1 + 13908) = 0u;
  *(a1 + 13920) = 0u;
  *(a1 + 13936) = a1 + 13948;
  *(v37 + 2720) = 19;
  *(a1 + 13948) = 0u;
  *(a1 + 13964) = 0u;
  *(a1 + 13980) = 0u;
  *(a1 + 13996) = 0u;
  *(a1 + 14008) = 0u;
  *(a1 + 14024) = 0x41584A30AEF9DB23;
  *(a1 + 14032) = 0x41584A30AEF9DB23;
  *(v37 + 2816) = 0;
  *(a1 + 14044) = 0;
  *(a1 + 14056) = 0u;
  *(a1 + 14072) = 0;
  *(a1 + 14080) = a1 + 14096;
  *(a1 + 14088) = 0x700000000;
  *(a1 + 14096) = 0u;
  *(a1 + 14112) = 0u;
  *(a1 + 14128) = 0u;
  *(a1 + 14144) = 0u;
  *(a1 + 14160) = a1 + 14172;
  *(v37 + 2944) = 4;
  *(a1 + 14172) = 0u;
  *(a1 + 14192) = 0;
  *(a1 + 14200) = a1 + 6856;
  *(a1 + 14216) = 0u;
  *(a1 + 14208) = a1 + 6848;
  *(a1 + 14232) = 0;
  *(a1 + 14240) = 6367427;
  *(a1 + 14272) = 0u;
  *(a1 + 14244) = 0u;
  *(a1 + 14260) = 0u;
  *(a1 + 14288) = a1 + 14300;
  *(v37 + 3072) = 19;
  *(a1 + 14360) = 0u;
  *(a1 + 14332) = 0u;
  *(a1 + 14348) = 0u;
  *(a1 + 14300) = 0u;
  *(a1 + 14316) = 0u;
  *(a1 + 14376) = a1 + 14388;
  *(v37 + 3160) = 19;
  *(a1 + 14448) = 0u;
  *(a1 + 14420) = 0u;
  *(a1 + 14436) = 0u;
  *(a1 + 14388) = 0u;
  *(a1 + 14404) = 0u;
  *(a1 + 14464) = vdupq_n_s64(0x41584A30AEF9DB23uLL);
  *(v37 + 3256) = 0;
  *(a1 + 14484) = 0;
  *(a1 + 14496) = a1 + 13776;
  *(a1 + 14504) = 0;
  *(a1 + 14512) = a7;
  *(a1 + 14520) = a3;
  *(v37 + 3304) = 0;
  *(a1 + 14536) = a3;
  BlueFin::GlPeNavGnssMeasMgr::GlPeNavGnssMeasMgr(a1 + 14560, a2, a3, a9, a9 + 7424, a7, a8, a1 + 6856, a11, a15, a18);
  v32 = a1 + 17184;
  BlueFin::GlPeKfPool::GlPeKfPool((a1 + 17184), a3, a1 + 6856, a1 + 57384, a11, a14, v23 + 528, a1 + 6784, v23 + 4040, v22 + 176);
  *v23 = a1 + 56636;
  *(v23 + 8) = 8;
  *(a1 + 56636) = 0u;
  *(a1 + 56652) = 0u;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 60) = 0;
  *(v23 + 64) = -256;
  *(v23 + 66) = 0;
  *(a1 + 56692) = 0u;
  *(a1 + 56708) = 0u;
  *(a1 + 56724) = 0u;
  *(a1 + 56740) = 0u;
  *(a1 + 56756) = 0u;
  *(a1 + 56772) = 0u;
  *(a1 + 56788) = 0u;
  *(a1 + 56804) = 0u;
  *(a1 + 56820) = 0u;
  *(a1 + 56836) = 0u;
  *(a1 + 56852) = 0u;
  *(a1 + 56868) = 0u;
  *(a1 + 56884) = 0u;
  *(a1 + 56900) = 0u;
  *(a1 + 56916) = 0u;
  *(a1 + 56932) = 0;
  *(a1 + 57008) = 0;
  *(a1 + 56992) = 0u;
  *(a1 + 56976) = 0u;
  *(v23 + 392) = 0x4059000000000000;
  *(v23 + 400) = 0;
  *(v23 + 416) = 0;
  *(v23 + 420) = 0;
  *(a1 + 57028) = 0;
  *(a1 + 57035) = 0;
  *(a1 + 57064) = 0;
  *(a1 + 57048) = 0u;
  *(a1 + 57072) = 0;
  *(a1 + 57080) = 0u;
  *(a1 + 57096) = 0;
  *(a1 + 57104) = 0xBF80000000000000;
  *(v23 + 488) = 0x1100000001;
  *(v23 + 496) = a9;
  *(v23 + 504) = a11;
  *(v23 + 512) = v23 + 4040;
  *(v23 + 520) = a1 + 6856;
  *(v23 + 528) = 0;
  *(v23 + 548) = 0;
  *(v23 + 552) = 0;
  *(a1 + 57162) = 0;
  *(a1 + 57156) = 0;
  *(a1 + 57208) = 0;
  *(a1 + 57184) = 0u;
  *(a1 + 57200) = 0;
  *(a1 + 57212) = 0u;
  *(a1 + 57228) = 0u;
  *(v23 + 620) = 10;
  *(v23 + 624) = 0;
  *(a1 + 57256) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v23 + 648) = 0x7FEFFFFFFFFFFFFFLL;
  *(v23 + 656) = 0;
  *(v23 + 664) = a11;
  *(v23 + 672) = a1 + 6800;
  *(v23 + 680) = &unk_2A1F0E928;
  *(a1 + 57344) = 0;
  *(a1 + 57328) = 0u;
  *(a1 + 57312) = 0u;
  *(v23 + 728) = &off_2A1F0B5F0;
  *(a1 + 57360) = xmmword_298A3B550;
  *(v23 + 752) = 0;
  BlueFin::GlPeCoarseTime::GlPeCoarseTime((a1 + 57384), a7, a3, a8 + 32);
  *(v23 + 808) = a14;
  *(v23 + 816) = &unk_2A1F12240;
  *(v23 + 824) = 0;
  *(v23 + 832) = 0;
  v25 = (a1 + 57480);
  v26 = 3200;
  do
  {
    *(v25 - 16) = 0;
    *(v25 - 3) = -1;
    *(v25 - 4) = 575;
    *v25 = 0;
    v25[1] = 0;
    v25 += 4;
    v26 -= 32;
  }

  while (v26);
  *(a1 + 60696) = 0;
  *(a1 + 60680) = 0u;
  *(v22 + 28) = 0;
  *(v22 + 36) = 0;
  *(v22 + 40) = 300000;
  *(v22 + 48) = 1145569280;
  *(v22 + 60) = 0;
  *(v22 + 64) = 0;
  *(v22 + 68) = 0x40B1999A41333333;
  *(v22 + 76) = 256;
  *(v22 + 80) = 0x40B1999A4131999ALL;
  *(a1 + 60856) = 0;
  *(a1 + 60864) = 0u;
  *(a1 + 60836) = 0u;
  *(a1 + 60808) = 0u;
  *(a1 + 60824) = 0u;
  *(v22 + 160) = 1120403456;
  *(v22 + 52) = 0;
  *(v23 + 4040) = 0;
  *(v23 + 4044) = 20;
  *(v23 + 4046) = 0;
  *(v23 + 4048) = 0xBB800000000;
  *(v23 + 4080) = 0;
  *(v23 + 4084) = 0;
  *(v23 + 4088) = 0;
  *v22 = 0x3FF0000000000000;
  *(a1 + 60728) = 0u;
  *(a1 + 60744) = 0;
  *(v22 + 196) = 256;
  *(v22 + 192) = 0;
  *(v22 + 168) = a14;
  *(v22 + 176) = &aotRegionsEmpty;
  *(v22 + 184) = &aotCityEmpty;
  *(v22 + 200) = 15;
  *(v22 + 208) = 0;
  *(v22 + 212) = 0;
  *(v22 + 216) = a2;
  *(v22 + 224) = a5;
  *(v22 + 232) = a9 + 56;
  *(v22 + 240) = a6;
  *(v22 + 248) = a7;
  *(v22 + 256) = a18;
  *(v22 + 264) = a8;
  *(v22 + 272) = a9 + 7424;
  *(v22 + 280) = a9;
  *(v22 + 288) = a3;
  *(v22 + 296) = a4;
  *(v22 + 304) = a10;
  *(v22 + 312) = a11;
  *(v22 + 320) = a15;
  *(v22 + 328) = a16;
  *(v22 + 336) = a17;
  *(v22 + 344) = a12;
  *(v22 + 352) = 0;
  *(v22 + 360) = 1;
  *(v22 + 364) = xmmword_298A43C00;
  *(v22 + 392) = 9;
  *(v22 + 400) = &BlueFin::GlPeNegAltRegions::m_aotRegions;
  *(v22 + 408) = 89;
  *(v22 + 416) = &BlueFin::GlPeNegAltRegions::m_aotIndex;
  *(v22 + 424) = -51;
  *(v22 + 384) = &unk_2A1F12190;
  *v35 = 0u;
  *(v22 + 476) = -1;
  *(a1 + 61168) = xmmword_298A419D0;
  *(v22 + 480) = 0;
  *(v22 + 482) = 0;
  *(v22 + 464) = 0;
  *(v22 + 468) = -1;
  *(v22 + 472) = 575;
  *(v22 + 488) = 0;
  *(v22 + 492) = 0;
  *(v22 + 496) = a1 + 61228;
  *(v22 + 504) = 19;
  *(a1 + 61228) = 0u;
  *(a1 + 61244) = 0u;
  *(a1 + 61260) = 0u;
  *(a1 + 61276) = 0u;
  *(a1 + 61288) = 0u;
  *(v22 + 584) = a1 + 61316;
  *(v22 + 592) = 8;
  *(a1 + 61316) = 0u;
  *(a1 + 61332) = 0u;
  *(v22 + 632) = a1 + 61364;
  *(v22 + 640) = 8;
  *(a1 + 61364) = 0u;
  *(a1 + 61380) = 0u;
  *(v22 + 680) = a1 + 61412;
  *(v22 + 688) = 8;
  *(a1 + 61412) = 0u;
  *(a1 + 61428) = 0u;
  *(v22 + 756) = 0;
  *(v22 + 760) = 0;
  *(v22 + 764) = 0;
  *(v22 + 768) = 0;
  *(v22 + 772) = 0;
  *(v22 + 780) = 0;
  *(v22 + 752) = 0;
  *(v22 + 744) = 0;
  *(v22 + 728) = 0u;
  *(v22 + 784) = 1;
  *(v22 + 788) = 0;
  *(v22 + 792) = 0;
  *(a1 + 61544) = 0;
  *(a1 + 61520) = 0u;
  *(a1 + 61536) = 0;
  *(v22 + 928) = 0;
  *(v22 + 932) = 0x451C400000000000;
  *(v22 + 940) = 0;
  *(v22 + 944) = &unk_2A1F0A870;
  *(v22 + 1144) = &unk_2A1F09610;
  *(a1 + 61872) = vaddq_s64(vdupq_n_s64(a1), xmmword_298A43C10);
  *(v22 + 1168) = a1 + 61934;
  *(v22 + 1176) = 2;
  *(v22 + 1180) = -17407;
  *(v22 + 1182) = 14;
  BlueFin::GlArray::Clear(v22 + 1144);
  *(v22 + 1184) = 0;
  *(v22 + 1228) = 0;
  *(v22 + 1232) = 0;
  *(v22 + 1240) = a13;
  *(v22 + 1248) = 0;
  *(v22 + 352) = 0;
  *(v23 + 4085) = 0;
  *(v37 + 3304) = 0;
  *(a1 + 16772) = 0;
  *(a1 + 1584) = 0;
  *(v22 + 488) = *(v22 + 488) & 0xFFD02745 | 0x245822;
  *(v23 + 414) = 1;
  *((*(*(a1 + 17184) + 240))(v32) + 1) = 0;
  v27 = *(v22 + 312);
  if (v27)
  {
    *(v27 + 2988) = 0;
  }

  *(*(*(a1 + 17184) + 240))(v32) = 0;
  *(a1 + 1604) = 0;
  *(a1 + 1580) = 0;
  *(a1 + 1600) = 0;
  v28 = *(*(v22 + 256) + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v29 = v28 * 0.000000001 * 1000000000.0;
  *(a1 + 24) = v29;
  *(a1 + 1086) = *(a1 + 152) != 1;
  bzero(*v23, ((4 * *(v23 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(a1 + 61465) = 0;
  *(a1 + 61460) = 0;
  *(v23 + 540) = 1;
  *(v23 + 544) = 0;
  *(v23 + 532) = 0;
  bzero(*(v22 + 584), ((4 * *(v22 + 592) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v22 + 632), ((4 * *(v22 + 640) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v22 + 680), ((4 * *(v22 + 688) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(v22 + 728) = 0;
  *(v22 + 736) = 0;
  *(v22 + 760) = 0;
  *(v22 + 764) = 0;
  bzero(*(v22 + 496), ((4 * *(v22 + 504) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(v22 + 768) = 1;
  *(v22 + 776) = 0;
  *(v23 + 4040) = 0;
  *(v23 + 4044) = 20;
  *(v23 + 4046) = 0;
  *(v23 + 4048) = 0xBB800000000;
  *(v23 + 4080) = 0;
  *(v23 + 4084) = 0;
  *(v23 + 4088) = 0;
  *v22 = 0x3FF0000000000000;
  *(a1 + 60728) = 0;
  *(a1 + 60736) = 0;
  *(a1 + 60744) = 0;
  *(a1 + 3808) = 0;
  *(v22 + 213) = 0;
  *(v22 + 215) = 0;
  *(v23 + 528) = 0;
  *(v23 + 536) = 0;
  *(v23 + 624) = 0;
  *(a1 + 61632) = 0u;
  *(a1 + 61616) = 0u;
  *(a1 + 61600) = 0u;
  *(a1 + 61584) = 0u;
  *(a1 + 61568) = 0u;
  *(a1 + 61552) = 0u;
  *v35 = 0;
  *(a1 + 61160) = 0;
  *(a1 + 57192) = 0;
  *(a1 + 57200) = 0;
  *(a1 + 57184) = 0;
  *(a1 + 57208) = 0;
  *(v22 + 476) = -1;
  *(a1 + 61168) = xmmword_298A419D0;
  *(v22 + 480) = 0;
  *(v22 + 482) = 0;
  *(v22 + 464) = 0;
  *(v22 + 468) = -1;
  *(v22 + 472) = 575;
  GlCustomLog(127, "Size,GlPeKF,%u\n", 61984);
  GlCustomLog(127, "    ->Size,GlPeCST,%u\n", 3808);
  GlCustomLog(127, "    ->Size,GlPeNavAid,%u\n", 2944);
  GlCustomLog(127, "    ->Size,GlPeComputeZRH,%u\n", 4368);
  GlCustomLog(127, "    ->Size,stRtdMgr,%u\n", 856);
  GlCustomLog(127, "    ->Size,GlPeLsq,%u\n", 40);
  GlCustomLog(127, "    ->Size,GlPeFirstFix,%u\n", 944);
  GlCustomLog(127, "    ->Size,GlPeFiltPos,%u\n", 632);
  GlCustomLog(127, "    ->Size,GlPeDnavMgr,%u\n", 752);
  GlCustomLog(127, "    ->Size,GlPeIntegers,%u\n", 16);
  GlCustomLog(127, "    ->Size,GlPeNavGnssMeasMgr,%u\n", 2624);
  GlCustomLog(127, "    ->Size,GlPePosInfo,%u\n", 528);
  GlCustomLog(127, "    ->Size,GlPeExtLoc,%u\n", 232);
  GlCustomLog(127, "    ->Size,GlPeCoarseTime,%u\n", 48);
  GlCustomLog(127, "    ->Size,GlPeContextMgr,%u\n", 2016);
  GlCustomLog(127, "    ->Size,GlPeGnssNavUpa,%u\n", 336);
  GlCustomLog(127, "    ->Size,GlPeGeoid,%u\n", 72);
  GlCustomLog(127, "    ->Size,stSKFMeas,%u\n", 56);
  GlCustomLog(127, "    ->Size,GlPeVlss,%u\n", 1272);
  GlCustomLog(127, "    ->Size,GL_MEIF_PWR_STATE,%u\n", 4);
  GlCustomLog(127, "    ->Size,stNumMeas,%u\n", 16);
  GlCustomLog(127, "    ->Size,stFlightModeMgr,%u\n", 8);
  if (!*(v22 + 1240))
  {
    DeviceFaultNotify("glpe_kf.cpp", 476, "GlPeKF", "m_pcbCallBacks !=nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 476, "m_pcbCallBacks !=nullptr");
  }

  return a1;
}

uint64_t BlueFin::stSkfStatus::stSkfStatus(uint64_t this)
{
  v1 = 0;
  *(this + 32) = 0u;
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 56) = &off_2A1F0B5F0;
  *(this + 64) = xmmword_298A3B550;
  *(this + 80) = -1;
  *(this + 116) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0u;
  *(this + 112) = 0;
  *(this + 132) = 0u;
  *(this + 120) = this + 132;
  *(this + 128) = 8;
  *(this + 148) = 0u;
  *(this + 168) = this + 180;
  *(this + 176) = 8;
  *(this + 228) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 216) = this + 228;
  *(this + 224) = 8;
  *(this + 244) = 0u;
  *(this + 264) = 0;
  *(this + 480) = this + 288;
  *(this + 488) = this + 500;
  *(this + 496) = 19;
  *(this + 672) = 0;
  *(this + 656) = 0u;
  *(this + 648) = 0;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 612) = 0;
  *(this + 580) = 0u;
  *(this + 596) = 0u;
  *(this + 548) = 0u;
  *(this + 564) = 0u;
  *(this + 516) = 0u;
  *(this + 532) = 0u;
  *(this + 500) = 0u;
  *(this + 680) = &off_2A1F0B5F0;
  *(this + 688) = xmmword_298A3B550;
  *(this + 704) = -1;
  *(this + 712) = 0;
  *(this + 720) = this + 732;
  *(this + 728) = 8;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 768) = xmmword_298A41DA0;
  v2 = vdup_n_s32(0x42C60000u);
  *(this + 784) = v2;
  *(this + 792) = 1120272384;
  *(this + 800) = 0;
  *(this + 808) = this + 820;
  *(this + 816) = 8;
  *(this + 820) = 0u;
  *(this + 836) = 0u;
  *(this + 856) = xmmword_298A41DA0;
  *(this + 872) = v2;
  *(this + 880) = 1120272384;
  *(this + 903) = 0;
  *(this + 888) = 0u;
  *(this + 908) = 0;
  *(this + 911) = 0;
  *(this + 915) = 1029;
  *(this + 920) = 0;
  *(this + 944) = 0;
  *(this + 952) = 0;
  *(this + 928) = 0u;
  *(this + 960) = 0;
  *(this + 968) = this + 980;
  *(this + 976) = 19;
  *(this + 980) = 0u;
  *(this + 996) = 0u;
  *(this + 1012) = 0u;
  *(this + 1028) = 0u;
  *(this + 1040) = 0u;
  *(this + 1056) = this + 1068;
  *(this + 1064) = 19;
  *(this + 1128) = 0u;
  *(this + 1100) = 0u;
  *(this + 1116) = 0u;
  *(this + 1068) = 0u;
  *(this + 1084) = 0u;
  *(this + 1144) = this + 1156;
  *(this + 1152) = 19;
  *(this + 1216) = 0u;
  *(this + 1188) = 0u;
  *(this + 1204) = 0u;
  *(this + 1156) = 0u;
  *(this + 1172) = 0u;
  *(this + 1232) = this + 1244;
  *(this + 1240) = 19;
  *(this + 1376) = 0;
  *(this + 1380) = 0;
  *(this + 1384) = 0;
  *(this + 1388) = 0u;
  *(this + 1404) = 0;
  *(this + 1412) = 0;
  *(this + 1372) = 0;
  *(this + 1340) = 0u;
  *(this + 1356) = 0u;
  *(this + 1308) = 0u;
  *(this + 1324) = 0u;
  *(this + 1276) = 0u;
  *(this + 1292) = 0u;
  *(this + 1244) = 0u;
  *(this + 1260) = 0u;
  *(this + 1416) = 1000;
  *(this + 1420) = 0;
  do
  {
    v3 = this + v1;
    *(v3 + 288) = 0;
    *(v3 + 292) = 0;
    *(v3 + 296) = -1;
    *(v3 + 300) = 575;
    v1 += 16;
  }

  while (v1 != 192);
  return this;
}

BlueFin::stSkfTestParam *BlueFin::stSkfTestParam::stSkfTestParam(BlueFin::stSkfTestParam *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 20) = 0u;
  v2 = (this + 20);
  *(this + 1) = this + 20;
  v3 = this + 8;
  *(this + 16) = 5;
  *(this + 9) = 0;
  *(this + 52) = 0u;
  v4 = (this + 52);
  *(this + 5) = this + 52;
  v5 = this + 40;
  *(this + 48) = 5;
  *(this + 84) = 0u;
  v6 = (this + 84);
  *(this + 9) = this + 84;
  v7 = this + 72;
  *(this + 17) = 0;
  *(this + 80) = 5;
  *(this + 25) = 0;
  *(this + 26) = 251723777;
  *(this + 108) = 10;
  *(this + 14) = this + 124;
  *(this + 120) = 19;
  *(this + 184) = 0u;
  *(this + 172) = 0u;
  *(this + 156) = 0u;
  *(this + 140) = 0u;
  *(this + 124) = 0u;
  *(this + 212) = 0u;
  *(this + 25) = this + 212;
  *(this + 208) = 19;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 17) = 0u;
  *(this + 260) = 0u;
  *(this + 36) = this + 300;
  *(this + 296) = 19;
  *(this + 300) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 348) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = this + 388;
  *(this + 384) = 19;
  *(this + 388) = 0u;
  *(this + 404) = 0u;
  *(this + 420) = 0u;
  *(this + 436) = 0u;
  *(this + 28) = 0u;
  *(this + 58) = this + 476;
  *(this + 472) = 19;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 536) = 0u;
  *(this + 69) = this + 564;
  *(this + 560) = 19;
  *(this + 612) = 0u;
  *(this + 628) = 0u;
  *(this + 580) = 0u;
  *(this + 596) = 0u;
  *(this + 564) = 0u;
  *(this + 161) = -1;
  *(this + 81) = 0xFFFFFFFF00000000;
  *(this + 164) = 0x10000;
  *(this + 330) = 1;
  *(this + 662) = 0;
  *(this + 83) = 0x200000002;
  *(this + 336) = 1;
  *(this + 169) = 2;
  *(this + 85) = 0x200000002;
  *(this + 344) = 0;
  *(this + 690) = 0;
  *(this + 1203) = 0;
  *(this + 1204) = 0x200000002;
  *(this + 606) = 257;
  *(this + 304) = 2;
  *(this + 1476) = 0;
  *(this + 185) = 0x200000002;
  *(this + 372) = 2;
  *(this + 379) = 0;
  *(this + 1508) = 0;
  *(this + 1492) = 0u;
  *(this + 1520) = 1;
  *(this + 1521) = 0;
  *(this + 191) = this + 1540;
  *(this + 1536) = 19;
  *(this + 1540) = 0u;
  *(this + 1556) = 0u;
  *(this + 1572) = 0u;
  *(this + 1588) = 0u;
  *(this + 100) = 0u;
  *(this + 202) = this + 1628;
  *(this + 1624) = 19;
  *(this + 1628) = 0u;
  *(this + 1644) = 0u;
  *(this + 1660) = 0u;
  *(this + 1676) = 0u;
  *(this + 1690) = 0u;
  *(this + 214) = this + 1724;
  *(this + 1720) = 5;
  *(this + 435) = 0;
  *(this + 1724) = 0u;
  *(this + 218) = this + 1756;
  *(this + 1752) = 19;
  *(this + 1756) = 0u;
  *(this + 1772) = 0u;
  *(this + 1788) = 0u;
  *(this + 1804) = 0u;
  *(this + 1816) = 0u;
  *(this + 229) = 0x20000020CLL;
  *(this + 262) = 0;
  *(this + 2104) = 0;
  BlueFin::GlPeExtSensorSet::getAllSensorSet(this);
  v8 = BlueFin::GlSetBase::operator=(v3, &BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet);
  v9 = xmmword_2A18BA78C;
  *(this + 9) = dword_2A18BA79C;
  *v2 = v9;
  BlueFin::GlPeExtSensorSet::getAllSensorSet(v8);
  v10 = BlueFin::GlSetBase::operator=(v5, &BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet);
  *v4 = xmmword_2A18BA78C;
  *(this + 17) = dword_2A18BA79C;
  BlueFin::GlPeExtSensorSet::getAllSensorSet(v10);
  BlueFin::GlSetBase::operator=(v7, &BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet);
  *v6 = xmmword_2A18BA78C;
  *(this + 25) = dword_2A18BA79C;
  *(this + 1220) = 0u;
  *(this + 1236) = 0u;
  *(this + 1252) = 0u;
  *(this + 1268) = 0u;
  *(this + 1284) = 0u;
  *(this + 1300) = 0u;
  *(this + 1316) = 0u;
  *(this + 1332) = 0u;
  *(this + 1348) = 0u;
  *(this + 1364) = 0u;
  *(this + 1380) = 0u;
  *(this + 1396) = 0u;
  *(this + 1412) = 0u;
  *(this + 1428) = 0u;
  *(this + 1444) = 0u;
  *(this + 1460) = 0u;
  *(this + 130) = 0u;
  *(this + 129) = 0u;
  *(this + 128) = 0u;
  *(this + 127) = 0u;
  *(this + 126) = 0u;
  *(this + 125) = 0u;
  *(this + 124) = 0u;
  *(this + 123) = 0u;
  *(this + 122) = 0u;
  *(this + 121) = 0u;
  *(this + 120) = 0u;
  *(this + 119) = 0u;
  *(this + 118) = 0u;
  *(this + 117) = 0u;
  *(this + 116) = 0u;
  *(this + 115) = 0u;
  *(this + 691) = 0u;
  *(this + 707) = 0u;
  *(this + 723) = 0u;
  *(this + 739) = 0u;
  *(this + 755) = 0u;
  *(this + 771) = 0u;
  *(this + 787) = 0u;
  *(this + 803) = 0u;
  *(this + 819) = 0u;
  *(this + 835) = 0u;
  *(this + 851) = 0u;
  *(this + 867) = 0u;
  *(this + 883) = 0u;
  *(this + 899) = 0u;
  *(this + 915) = 0u;
  *(this + 931) = 0u;
  *(this + 947) = 0u;
  *(this + 963) = 0u;
  *(this + 979) = 0u;
  *(this + 995) = 0u;
  *(this + 1011) = 0u;
  *(this + 1027) = 0u;
  *(this + 1043) = 0u;
  *(this + 1059) = 0u;
  *(this + 1075) = 0u;
  *(this + 1091) = 0u;
  *(this + 1107) = 0u;
  *(this + 1123) = 0u;
  *(this + 1139) = 0u;
  *(this + 1155) = 0u;
  *(this + 1171) = 0u;
  *(this + 1187) = 0u;
  return this;
}

uint64_t *BlueFin::GlPeExtSensorSet::getAllSensorSet(BlueFin::GlPeExtSensorSet *this)
{
  {
    BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet = &xmmword_2A18BA78C;
    byte_2A18BA788 = 5;
    xmmword_2A18BA78C = 0uLL;
    dword_2A18BA79C = 0;
  }

  v1 = BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet;
  if (!*BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet)
  {
    v2 = byte_2A18BA788 - 1;
    if (byte_2A18BA788 <= 1uLL)
    {
LABEL_7:
      for (i = 0; i != 34; ++i)
      {
        *(v1 + 4 * (i >> 5)) |= 1 << i;
      }

      *(v1 + 12) |= 0x70u;
      *(v1 + 4) |= 0x18u;
    }

    else
    {
      v3 = (BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet + 4);
      while (!*v3++)
      {
        if (!--v2)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return &BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet;
}

__n128 BlueFin::GlPeCST::init(BlueFin::GlPeCST *this, BlueFin::GlSettingsImpl *a2, const BlueFin::GlPeTimeManager *a3)
{
  v259 = *MEMORY[0x29EDCA608];
  *(this + 5) = 0;
  v6 = this + 40;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 8) = vdup_n_s32(0x44FA0000u);
  *(this + 18) = -1;
  *(this + 10) = 0;
  v7 = this + 80;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 17) = &off_2A1F0B5F0;
  *(this + 9) = xmmword_298A3B550;
  *(this + 40) = -1;
  *(this + 176) = 0;
  *(this + 21) = 0;
  *(this + 178) = 0;
  *(this + 186) = 0;
  BlueFin::stSkfStatus::stSkfStatus(this + 192);
  BlueFin::stSkfTestParam::stSkfTestParam((this + 1632));
  *(this + 3744) = 1;
  *(this + 469) = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(this + 235) = vnegq_f64(v8);
  *(this + 472) = 0x7FFFFFFFFFFFFFFFLL;
  if (!a2)
  {
    v106 = "pSettings != nullptr";
    DeviceFaultNotify("glpe_cst.cpp", 234, "init", "pSettings != nullptr");
    v107 = 234;
    goto LABEL_198;
  }

  v111 = v7;
  v112 = v6;
  *(this + 466) = a3;
  bzero(&v199, 0x2A8uLL);
  v156 = this + 1632;
  v157 = this + 1633;
  v158 = this + 1634;
  v159 = this + 1737;
  v160 = this + 1736;
  v161 = this + 1738;
  v162 = this + 1740;
  v163 = this + 1739;
  v130 = 0u;
  v131 = 0u;
  v164 = this + 2272;
  v165 = this + 2276;
  v166 = this + 2280;
  v167 = this + 2284;
  v168 = this + 1672;
  v169 = this + 1704;
  v170 = this + 1744;
  v115 = (this + 1744);
  v171 = this + 1744;
  v132 = 0u;
  v133 = 0u;
  v172 = this + 1832;
  v114 = (this + 1832);
  v173 = this + 1832;
  v118 = (this + 1920);
  v174 = this + 1920;
  v175 = this + 2008;
  v113 = (this + 2008);
  v176 = this + 2008;
  v177 = this + 2096;
  v117 = (this + 2096);
  v178 = this + 2096;
  v116 = (this + 2184);
  v179 = this + 2184;
  v134 = 0u;
  v135 = 0u;
  v180 = this + 1640;
  v181 = this + 1640;
  v182 = this + 1640;
  v183 = this + 1640;
  v184 = this + 1640;
  v185 = this + 1640;
  v186 = this + 1640;
  v187 = this + 1640;
  v136 = xmmword_298A41DB0;
  v137 = xmmword_298A41DC0;
  v188 = this + 1640;
  v189 = this + 1640;
  v190 = this + 1640;
  v191 = this + 1640;
  v192 = this + 1640;
  v193 = this + 1640;
  v194 = this + 1640;
  v195 = this + 1640;
  v138 = xmmword_298A41DD0;
  v139 = xmmword_298A41DE0;
  v196 = this + 1640;
  v197 = this + 1640;
  v198 = this + 1640;
  v199 = this + 1640;
  v200 = this + 1640;
  v201 = this + 1640;
  v202 = this + 1640;
  v203 = this + 1640;
  v140 = xmmword_298A41DF0;
  v141 = xmmword_298A41E00;
  v204 = this + 1640;
  v205 = this + 1640;
  v206 = this + 1640;
  v207 = this + 1640;
  v208 = this + 2288;
  v209 = this + 2289;
  v210 = this + 2290;
  v211 = this + 2291;
  v142 = xmmword_298A41E10;
  v143 = 0u;
  v212 = this + 2292;
  v213 = this + 3148;
  v214 = this + 3149;
  v215 = this + 3150;
  v216 = this + 3151;
  v217 = this + 3152;
  v218 = this + 3153;
  v219 = this + 3154;
  v144 = 0u;
  v145 = 0u;
  v220 = this + 3155;
  v221 = this + 3156;
  v222 = this + 2293;
  v223 = this + 2294;
  v224 = this + 2296;
  v225 = this + 2300;
  v226 = this + 2304;
  v227 = this + 2320;
  v146 = 0u;
  v147 = 0u;
  v228 = this + 2323;
  v229 = this + 2308;
  v230 = this + 2312;
  v231 = this + 2316;
  v232 = this + 2835;
  v233 = this + 2836;
  v234 = this + 2840;
  v235 = this + 2321;
  v148 = 0u;
  v149 = 0u;
  v236 = this + 2322;
  v237 = this + 2579;
  v238 = this + 3160;
  v239 = this + 3248;
  v240 = this + 3336;
  v241 = this + 2844;
  v242 = this + 2845;
  v243 = this + 2848;
  v150 = 0u;
  v151 = 0u;
  v244 = this + 2852;
  v245 = this + 3112;
  v246 = this + 3116;
  v247 = this + 3120;
  v248 = this + 3124;
  v249 = this + 3128;
  v250 = this + 3132;
  v251 = this + 3136;
  v152 = 0u;
  v153 = 0u;
  v252 = this + 3140;
  v253 = this + 3144;
  v254 = this + 3108;
  v255 = this + 2305;
  v154 = 0u;
  v256 = this + 3464;
  v257 = this + 3468;
  memset(v155, 0, sizeof(v155));
  v258 = this + 3472;
  v119 = *(a2 + 2890);
  if (v119 >= 1)
  {
    for (i = 0; i != v119; ++i)
    {
      v10 = a2;
      BlueFin::GlSettingsImpl::GetDbgParam(a2, i, &__s1[256], __s1);
      v11 = 0;
      v12 = __s1[256];
      v13 = &dword_29EEB3968;
      while (1)
      {
        v14 = *(v13 - 1);
        v15 = *v14;
        v16 = (v15 - 97) >= 0x1A ? *v14 : v15 - 32;
        v17 = (v15 - 65) <= 0x19 ? v15 | 0x20 : v16;
        if (v12 == v15 || v12 == v17)
        {
          v18 = strcmp(&__s1[257], v14 + 1);
          if (!v18)
          {
            break;
          }
        }

        ++v11;
        v13 += 4;
        if (v11 == 103)
        {
          goto LABEL_15;
        }
      }

      v19 = *v13;
      if (*v13 <= 3)
      {
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v36 = atol(__s1);
            if (!v36 && __s1[0] != 48)
            {
              DeviceFaultNotify("glpe_cst.cpp", 788, "Init", "ulTmp != 0 || acValue[0] == '0'");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", 788, "ulTmp != 0 || acValue[0] == '0'");
            }

            *(&v156)[v11] = v36;
          }

          else
          {
            if (v19 != 3)
            {
              goto LABEL_202;
            }

            v24 = atof(__s1);
            *(&v156)[v11] = v24;
          }
        }

        else if (v19)
        {
          if (v19 != 1)
          {
            goto LABEL_202;
          }

          v23 = atol(__s1);
          if (!v23 && __s1[0] != 48)
          {
            DeviceFaultNotify("glpe_cst.cpp", 781, "Init", "ucTmp != 0 || acValue[0] == '0'");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", 781, "ucTmp != 0 || acValue[0] == '0'");
          }

          *(&v156)[v11] = v23;
        }

        else
        {
          if (!(*__s1 ^ 0x65757274 | __s1[4]) || *__s1 == 49)
          {
            v35 = 1;
          }

          else
          {
            v34 = *__s1 == 1936482662 && *&__s1[4] == 101;
            if (!v34 && *__s1 != 48)
            {
              DeviceFaultNotify("glpe_cst.cpp", 774, "Init", "false");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", 774, "false");
            }

            v35 = 0;
          }

          *(&v156)[v11] = v35;
        }
      }

      else if (v19 <= 5)
      {
        if (v19 == 4)
        {
          v37 = (&v156)[v11];
          if (!(*__s1 ^ 0x65757274 | __s1[4]) || *__s1 == 49)
          {
            v42 = *(&v130 + v11);
            if (v42 == -1)
            {
              goto LABEL_109;
            }

            if (v42)
            {
              BlueFin::GlPeExtSensorSet::Add((&v156)[v11], v42);
              goto LABEL_15;
            }
          }

          else
          {
            v38 = *__s1 == 1936482662 && *&__s1[4] == 101;
            if (!v38 && *__s1 != 48)
            {
              DeviceFaultNotify("glpe_cst.cpp", 845, "Init", "false");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", 845, "false");
            }

            v39 = *(&v130 + v11);
            if (v39 != -1)
            {
              if (v39)
              {
                BlueFin::GlSetBase::Remove((&v156)[v11], v39);
                goto LABEL_15;
              }

LABEL_109:
              BlueFin::GlPeExtSensorSet::getAllSensorSet(v18);
              BlueFin::GlSetBase::operator=(v37, &BlueFin::GlPeExtSensorSet::getAllSensorSet(void)const::s_otAllSensorSet);
              v43 = xmmword_2A18BA78C;
              *(v37 + 28) = dword_2A18BA79C;
              *(v37 + 12) = v43;
              goto LABEL_15;
            }
          }

          bzero(*v37, ((4 * *(v37 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        }

        else
        {
          if (v19 != 5)
          {
LABEL_202:
            DeviceFaultNotify("glpe_cst.cpp", 879, "Init", "false");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", 879, "false");
          }

          v25 = (&v156)[v11];
          __src = v128;
          v127 = 8;
          memset(v128, 0, 32);
          if (BlueFin::GlSvIdSet::SetStr(&__src, __s1))
          {
            v121 = v127;
            memcpy(v125, __src, 4 * v127);
            v123 = 0;
            v122 = 0;
            v124 = v125[0];
            BlueFin::GlSetIterator::operator++(&v121);
            if (v122 != v121)
            {
              v26 = *v25;
              do
              {
                v27 = v123;
                v28 = BlueFin::GlSvId::s_aucSvId2gnss[v123];
                v29 = BlueFin::GlSignalId::s_aucGnss2numSignals[v28];
                if (BlueFin::GlSignalId::s_aucGnss2numSignals[v28])
                {
                  v30 = 0;
                  v31 = v123 - 189;
                  v32 = &BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v28];
                  do
                  {
                    if (v31 < 0xFFFFFF44 || *v32 == 255)
                    {
                      v33 = 575;
                    }

                    else
                    {
                      v33 = (BlueFin::GlSignalId::s_ausGnss2signalId[v28] + v27 - BlueFin::GlSvId::s_aucGnss2minSvId[v28] + BlueFin::GlSvId::s_aucGnss2numSvId[v28] * v30);
                    }

                    *(v26 + 4 * (v33 >> 5)) |= 1 << v33;
                    ++v30;
                    v32 += 7;
                  }

                  while (v29 != v30);
                }

                BlueFin::GlSetIterator::operator++(&v121);
              }

              while (v122 != v121);
            }
          }
        }
      }

      else
      {
        switch(v19)
        {
          case 6:
            v40 = (&v156)[v11];
            if (!(*__s1 ^ 0x65757274 | __s1[4]) || *__s1 == 49)
            {
              *v40 = 1;
            }

            else
            {
              v41 = *__s1 == 1936482662 && *&__s1[4] == 101;
              if (v41 || *__s1 == 48)
              {
                *v40 = 0;
              }

              else
              {
                if (*__s1 != 0x746C7561666564)
                {
                  DeviceFaultNotify("glpe_cst.cpp", 874, "Init", "false");
                  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", 874, "false");
                }

                *v40 = 2;
              }
            }

            break;
          case 7:
            strlcpy((&v156)[v11], __s1, 0x100uLL);
            break;
          case 8:
            v20 = (&v156)[v11];
            *v20 = 0;
            v21 = strstr(__s1, "ALL");
            if (v21)
            {
              v22 = -1;
            }

            else
            {
              v22 = 0;
            }

            *v20 = v22;
            if (strstr(__s1, "GPS") && !strstr(__s1, "HC_GPS"))
            {
              if (v21)
              {
                v22 = -1;
              }

              else
              {
                v22 = 12;
              }

              *v20 = v22;
            }

            if (strstr(__s1, "HC_GPS"))
            {
              v22 |= 4u;
              *v20 = v22;
            }

            if (strstr(__s1, "BDS"))
            {
              v22 |= 0x10u;
              *v20 = v22;
            }

            if (strstr(__s1, "QZSS"))
            {
              v22 |= 0x20u;
              *v20 = v22;
            }

            if (strstr(__s1, "SBAS"))
            {
              v22 |= 0x80u;
              *v20 = v22;
            }

            if (strstr(__s1, "ASST"))
            {
              v22 |= 0x40u;
              *v20 = v22;
            }

            if (strstr(__s1, "GAL") && !strstr(__s1, "HC_GAL"))
            {
              v22 |= 0x500u;
              *v20 = v22;
            }

            if (strstr(__s1, "HC_GAL"))
            {
              v22 |= 0x400u;
              *v20 = v22;
            }

            if (strstr(__s1, "IONEX"))
            {
              *v20 = v22 | 0x200;
              *(this + 2304) = 1;
            }

            break;
          default:
            goto LABEL_202;
        }
      }

LABEL_15:
      a2 = v10;
    }
  }

  if (**v115)
  {
    v44 = 1;
    v45 = this + 1632;
    v46 = this + 1832;
    v47 = this + 2008;
  }

  else
  {
    v48 = *(this + 1752);
    v45 = this + 1632;
    v46 = this + 1832;
    v47 = this + 2008;
    if (v48 < 2)
    {
LABEL_118:
      if (!**v114)
      {
        v52 = *(this + 1840);
        if (v52 < 2)
        {
LABEL_123:
          if (!**v118)
          {
            v56 = *(this + 1928);
            if (v56 < 2)
            {
LABEL_128:
              if (!**v113)
              {
                v60 = *(this + 2016);
                if (v60 < 2)
                {
LABEL_133:
                  if (!**v117)
                  {
                    v64 = *(this + 2104);
                    if (v64 < 2)
                    {
LABEL_138:
                      if (!**v116)
                      {
                        v101 = *(this + 2192);
                        v75 = v101 >= 2;
                        v102 = v101 - 2;
                        if (v75)
                        {
                          v103 = (*v116 + 4);
                          do
                          {
                            v104 = *v103++;
                            v44 = v104 != 0;
                            if (v104)
                            {
                              v105 = 1;
                            }

                            else
                            {
                              v105 = v102 == 0;
                            }

                            --v102;
                          }

                          while (!v105);
                        }

                        else
                        {
                          v44 = 0;
                        }

                        goto LABEL_140;
                      }
                    }

                    else
                    {
                      v65 = v64 - 1;
                      v66 = (*v117 + 4);
                      while (!*v66++)
                      {
                        if (!--v65)
                        {
                          goto LABEL_138;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v61 = v60 - 1;
                  v62 = (*v113 + 4);
                  while (!*v62++)
                  {
                    if (!--v61)
                    {
                      goto LABEL_133;
                    }
                  }
                }
              }
            }

            else
            {
              v57 = v56 - 1;
              v58 = (*v118 + 4);
              while (!*v58++)
              {
                if (!--v57)
                {
                  goto LABEL_128;
                }
              }
            }
          }
        }

        else
        {
          v53 = v52 - 1;
          v54 = (*v114 + 4);
          while (!*v54++)
          {
            if (!--v53)
            {
              goto LABEL_123;
            }
          }
        }
      }
    }

    else
    {
      v49 = v48 - 1;
      v50 = (*v115 + 4);
      while (!*v50++)
      {
        if (!--v49)
        {
          goto LABEL_118;
        }
      }
    }

    v44 = 1;
  }

LABEL_140:
  *(this + 3736) = v44;
  *(this + 3784) = v119 != 0;
  bzero(&v200, 0x2A0uLL);
  v68 = 0;
  v156 = v45;
  v157 = this + 1633;
  v158 = this + 1634;
  v159 = this + 1737;
  v160 = this + 1736;
  v161 = this + 1738;
  v162 = this + 1740;
  v163 = this + 1739;
  v164 = this + 2272;
  v165 = this + 2276;
  v166 = this + 2280;
  v167 = this + 2284;
  v168 = this + 1672;
  v169 = this + 1704;
  v174 = this + 1920;
  v179 = this + 2184;
  v208 = this + 2288;
  v209 = this + 2289;
  v210 = this + 2290;
  v211 = this + 2291;
  v212 = this + 2292;
  v213 = this + 3148;
  v214 = this + 3149;
  v215 = this + 3150;
  v216 = this + 3151;
  v217 = this + 3152;
  v218 = this + 3153;
  v219 = this + 3154;
  v220 = this + 3155;
  v221 = this + 3156;
  v222 = this + 2293;
  v223 = this + 2294;
  v224 = this + 2296;
  v225 = this + 2300;
  v226 = this + 2304;
  v227 = this + 2320;
  v228 = this + 2323;
  v229 = this + 2308;
  v230 = this + 2312;
  v231 = this + 2316;
  v232 = this + 2835;
  v233 = this + 2836;
  v234 = this + 2840;
  v130 = 0u;
  v131 = 0u;
  v170 = this + 1744;
  v171 = this + 1744;
  v132 = 0u;
  v133 = 0u;
  v172 = v46;
  v173 = v46;
  v175 = v47;
  v176 = v47;
  v177 = this + 2096;
  v178 = this + 2096;
  v134 = 0u;
  v135 = 0u;
  v180 = this + 1640;
  v181 = this + 1640;
  v182 = this + 1640;
  v183 = this + 1640;
  v184 = this + 1640;
  v185 = this + 1640;
  v186 = this + 1640;
  v187 = this + 1640;
  v136 = xmmword_298A41DB0;
  v137 = xmmword_298A41DC0;
  v188 = this + 1640;
  v189 = this + 1640;
  v190 = this + 1640;
  v191 = this + 1640;
  v192 = this + 1640;
  v193 = this + 1640;
  v194 = this + 1640;
  v195 = this + 1640;
  v138 = xmmword_298A41DD0;
  v139 = xmmword_298A41DE0;
  v196 = this + 1640;
  v197 = this + 1640;
  v198 = this + 1640;
  v199 = this + 1640;
  v140 = xmmword_298A41DF0;
  v200 = this + 1640;
  v201 = this + 1640;
  v202 = this + 1640;
  v203 = this + 1640;
  v141 = xmmword_298A41E00;
  v204 = this + 1640;
  v205 = this + 1640;
  v206 = this + 1640;
  v207 = this + 1640;
  v142 = xmmword_298A41E10;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v235 = this + 2321;
  v149 = 0u;
  v236 = this + 2322;
  v237 = this + 2579;
  v238 = this + 3160;
  v239 = this + 3248;
  v150 = 0u;
  v240 = this + 3336;
  v241 = this + 2844;
  v242 = this + 2845;
  v243 = this + 2848;
  v151 = 0u;
  v244 = this + 2852;
  v245 = this + 3112;
  v246 = this + 3116;
  v247 = this + 3120;
  v152 = 0u;
  v248 = this + 3124;
  v249 = this + 3128;
  v250 = this + 3132;
  v251 = this + 3136;
  v153 = 0u;
  v252 = this + 3140;
  v253 = this + 3144;
  v254 = this + 3108;
  v255 = this + 2305;
  v154 = 0u;
  memset(v155, 0, sizeof(v155));
  v256 = this + 3464;
  v257 = this + 3468;
  v155[0] = 0;
  v258 = this + 3472;
  LODWORD(v155[1]) = 0;
  do
  {
    v69 = &(&BlueFin::stSkfTestParam::aotSetting)[2 * v68];
    v70 = *(v69 + 2);
    if (v70 <= 4)
    {
      if (v70 > 1)
      {
        if (v70 != 2)
        {
          if (v70 == 3)
          {
            v88 = *(&v156)[v68];
            v109 = *v69;
            GlCustomLog(111, "testParam: %s=%.1f\n");
            goto LABEL_184;
          }

          v71 = (&v156)[v68];
          v72 = *(&v130 + v68);
          if (v72 == -1)
          {
            v80 = v71[8];
            if (!v71[8])
            {
LABEL_175:
              LODWORD(v80) = 1;
              goto LABEL_182;
            }

            v89 = *v71;
            if (**v71 == -1)
            {
              v90 = 0;
              v91 = v89 + 1;
              while (v80 - 1 != v90)
              {
                v92 = v91[v90++];
                if (v92 != -1)
                {
                  goto LABEL_181;
                }
              }

              v90 = v80;
LABEL_181:
              LODWORD(v80) = v90 >= v80;
              goto LABEL_182;
            }
          }

          else
          {
            if (v72)
            {
              v80 = (*(*v71 + 4 * (v72 >> 5)) >> (v72 & 0x1F)) & 1;
              goto LABEL_182;
            }

            v73 = *v71;
            if (!**v71)
            {
              v74 = v71[8];
              v75 = v74 >= 2;
              v76 = v74 - 2;
              if (v75)
              {
                v77 = v73 + 1;
                do
                {
                  v79 = *v77++;
                  v78 = v79;
                  LODWORD(v80) = v79 == 0;
                  v75 = v76-- != 0;
                  v81 = v75;
                }

                while (!v78 && (v81 & 1) != 0);
                goto LABEL_182;
              }

              goto LABEL_175;
            }
          }

          LODWORD(v80) = 0;
LABEL_182:
          v93 = *v69;
          v94 = off_29EEB3FD0[v80];
          goto LABEL_183;
        }

        v86 = *v69;
        v87 = *(&v156)[v68];
LABEL_169:
        GlCustomLog(111, "testParam: %s=%u\n");
        goto LABEL_184;
      }

      if (!v70)
      {
        v84 = *v69;
        v85 = off_29EEB3FD0[*(&v156)[v68]];
LABEL_183:
        GlCustomLog(111, "testParam: %s='%s'\n");
        goto LABEL_184;
      }

      if (v70 == 1)
      {
        v82 = *v69;
        v83 = *(&v156)[v68];
        goto LABEL_169;
      }

LABEL_201:
      v106 = "false";
      DeviceFaultNotify("glpe_cst.cpp", 984, "OutputToLog", "false");
      v107 = 984;
LABEL_198:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_cst.cpp", v107, v106);
    }

    if ((v70 - 7) < 2)
    {
      v108 = *v69;
      v110 = (&v156)[v68];
      GlCustomLog(111, "testParam: %s=%s\n");
    }

    else if (v70 == 5)
    {
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }
    }

    else if (v70 != 6)
    {
      goto LABEL_201;
    }

LABEL_184:
    ++v68;
  }

  while (v68 != 103);
  *(v111 + 2) = 0;
  *v111 = 0u;
  *(this + 26) = 1161527296;
  *(this + 38) = 0;
  *v112 = 0;
  *(v112 + 8) = 0u;
  *(this + 8) = vdup_n_s32(0x44FA0000u);
  *(this + 173) = 1;
  *(this + 178) = 13107227;
  HIDWORD(v95) = 1077936128;
  *(this + 28) = 0x404000003E4CCCCDLL;
  v96 = *(a2 + 25);
  *(this + 172) = v96 == 2;
  *(this + 42) = v96;
  LODWORD(v95) = *(a2 + 7);
  *this = v95;
  *(this + 1086) = 0;
  *(this + 194) = 0;
  *(this + 544) = 0;
  *(this + 36) = 0x40C3880000000000;
  bzero(*(this + 39), ((4 * *(this + 320) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(this + 152) = -200;
  *(this + 1091) = 0;
  *(this + 273) = 0;
  *(this + 1105) = 67436544;
  *(this + 77) = 0;
  *(this + 548) = 256;
  *(this + 542) = 0;
  *(this + 756) = 0;
  *(this + 1514) = 0;
  *(this + 1110) = 0;
  *(this + 278) = 0;
  *(this + 1515) = 0;
  *(this + 804) = 0;
  *(this + 200) = 0;
  *(this + 70) = 0u;
  *(this + 286) = 0;
  *(this + 142) = 0;
  *(this + 99) = 0x461C400000000000;
  *(this + 101) = 0x461C400000000000;
  v97 = *(this + 84) + 8;
  *(this + 37) = 0x3F00000000000000;
  v98 = 12;
  *(this + 456) = 0;
  do
  {
    *(v97 - 8) = 0;
    *(v97 - 4) = 0;
    *v97 = -1;
    *(v97 + 4) = 575;
    v97 += 16;
    --v98;
  }

  while (v98);
  bzero(*(this + 85), ((4 * *(this + 688) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(this + 12) = *(this + 5);
  *(this + 26) = *(this + 12);
  *(this + 54) = 1161527296;
  *(this + 14) = *(this + 7);
  *(this + 30) = *(this + 16);
  *(this + 32) = *(this + 18);
  *(this + 66) = 0;
  *(this + 67) = *(this + 39);
  bzero(*(this + 51), ((4 * *(this + 416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *(this + 35) = 0;
  *(this + 102) = 0;
  *(this + 824) = 0u;
  *(this + 110) = 0;
  *(this + 210) = 1254248837;
  *(this + 222) = 0;
  *(this + 780) = 0;
  *(this + 226) = 0;
  bzero(*(this + 114), ((4 * *(this + 920) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v120 = vdupq_n_s32(0x42C60000u);
  *(this + 964) = v120;
  *(this + 980) = 0x42C6000042C60000;
  *(this + 270) = 1120272384;
  *(this + 248) = 0;
  bzero(*(this + 125), ((4 * *(this + 1008) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  result = v120;
  *(this + 1052) = v120;
  *(this + 1068) = 0x42C6000042C60000;
  *(this + 759) = 0;
  v100 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeNavAid::GlPeNavAid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  *(a1 + 82) = 0;
  *(a1 + 264) = a1 + 96;
  do
  {
    v12 = *(a1 + 264) + v11;
    *(v12 + 12) = 0;
    *v12 = v12 + 12;
    *(v12 + 8) = 2;
    v11 += 24;
  }

  while (v11 != 168);
  v13 = 0;
  *(a1 + 2840) = a1 + 288;
  *(a1 + 2864) = 8;
  *(a1 + 2856) = a1 + 2868;
  *(a1 + 2868) = 0u;
  *(a1 + 2884) = 0u;
  *(a1 + 2848) = 0;
  do
  {
    v14 = a1 + v13;
    *(v14 + 288) = 0;
    *(a1 + v13 + 292) = 1;
    *(v14 + 300) = 0;
    *(v14 + 304) = 0xFFFFFFFF00000000;
    *(v14 + 312) = -1;
    v13 += 28;
  }

  while (v13 != 2548);
  *(a1 + 2912) = 0;
  v15 = (*(a1 + 264) + 8);
  v16 = 7;
  do
  {
    v17 = *(v15 - 1);
    v18 = *v15;
    v15 += 24;
    bzero(v17, ((4 * v18 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v16;
  }

  while (v16);
  return a1;
}

int *BlueFin::GlPeObjFactory::MakeComputeZRHSatPosCacheArray(BlueFin::GlPeObjFactory *this)
{
  v2 = *(this + 4);
  Memory = BlueFin::GlMemAlloc::glAllocateMemory(58, 16, *this);
  if (!Memory)
  {
    v11 = "pvBuff != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 186, "MakeComputeZRHSatPosCacheArray", "pvBuff != nullptr");
    v12 = 186;
    goto LABEL_9;
  }

  v4 = Memory;
  v5 = v2 + v2 / 2;
  v6 = BlueFin::GlMemAlloc::glAllocateMemory(59, (104 * v5), *this);
  *(this + 11) = v6;
  if (!v6)
  {
    v11 = "m_pstComputeZRHSatPosCacheArrayMemory != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 188, "MakeComputeZRHSatPosCacheArray", "m_pstComputeZRHSatPosCacheArrayMemory != nullptr");
    v12 = 188;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpeobjfact.cpp", v12, v11);
  }

  *v4 = v6;
  v4[2] = v5;
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v4 + v7;
      ++v8;
      *(v9 + 96) = 0;
      *(v9 + 64) = 0uLL;
      *(v9 + 80) = 0uLL;
      *(v9 + 32) = 0uLL;
      *(v9 + 48) = 0uLL;
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      v7 += 104;
    }

    while (v8 < v4[2]);
  }

  *(this + 10) = v4;
  return v4;
}

uint64_t BlueFin::GlPeComputeZRH::GlPeComputeZRH(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_2A1F12030;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ComputeZRHSatPosCacheArray = BlueFin::GlPeObjFactory::MakeComputeZRHSatPosCacheArray(BlueFin::GlPeObjFactory::m_potGlPeObjFactory);
  v17 = BlueFin::GlPeSatPosCache::GlPeSatPosCache(a1 + 24, ComputeZRHSatPosCacheArray);
  for (i = 0; i != 1212; i += 12)
  {
    v19 = a1 + i;
    *(v19 + 296) = 0;
    *(v19 + 304) = 0;
    *(v19 + 300) = 0;
  }

  v20 = 0;
  *(a1 + 1512) = a1 + 1524;
  *(a1 + 1520) = 8;
  *(a1 + 1524) = 0u;
  *(a1 + 1540) = 0u;
  *(a1 + 1560) = 0;
  do
  {
    v21 = a1 + v20;
    *(v21 + 1584) = 0;
    *(v21 + 1592) = 0;
    *(v21 + 1580) = 0;
    *(a1 + v20 + 1572) = 0;
    v20 += 24;
  }

  while (v20 != 2688);
  *(a1 + 1568) = 0;
  *(a1 + 4264) = a3;
  *(a1 + 4272) = a4;
  *(a1 + 4280) = a7;
  *(a1 + 4288) = a5;
  *(a1 + 4296) = a4 + 71232;
  *(a1 + 4304) = a4 + 71616;
  *(a1 + 4312) = *(a4 + 7360);
  *(a1 + 4320) = a2;
  *(a1 + 4328) = a8;
  *(a1 + 4336) = a6;
  *(a1 + 4344) = 0;
  *(a1 + 4348) = 0u;
  BlueFin::GlPeUnbTropoModel::getZenithDelayValues_WAAS_Model(v17, 0.0, 0.0, 1u, (a1 + 4356), (a1 + 4360));
  return a1;
}

double BlueFin::GlPeNavGnssState::GlPeNavGnssState(BlueFin::GlPeNavGnssState *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0x481C40004AC2A532;
  *(this + 11) = 0;
  *(this + 24) = 1217552911;
  *(this + 8) = vdupq_n_s32(0x44160000u);
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 40) = 1161518795;
  *(this + 21) = 0x3FE7FBBFDF65C4CCLL;
  *(this + 11) = xmmword_298A41B20;
  *(this + 48) = 1070141403;
  *(this + 204) = 0;
  *(this + 196) = 0;
  *(this + 212) = xmmword_298A41B30;
  *(this + 228) = 1077936128;
  *(this + 244) = 0;
  *(this + 59) = 1077936128;
  *(this + 60) = 0;
  *(this + 31) = 0x481C40004AC2A532;
  *(this + 64) = 0;
  *(this + 33) = this + 276;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 44) = this + 364;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0u;
  *(this + 424) = 0u;
  *(this + 272) = 19;
  *(this + 21) = 0u;
  *(this + 360) = 19;
  *(this + 448) = 19;
  *(this + 55) = this + 452;
  *(this + 452) = 0u;
  *(this + 468) = 0u;
  *(this + 484) = 0u;
  *(this + 500) = 0u;
  *(this + 32) = 0u;
  *this = &unk_2A1F11EF8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  return result;
}

uint64_t BlueFin::GlPeNavGnssMeasMgr::GlPeNavGnssMeasMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BlueFin::GlPeTimeManager *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a10;
  *(a1 + 64) = a11;
  do
  {
    v15 = a1 + v14;
    *(v15 + 72) = 0;
    *(v15 + 76) = -1;
    *(v15 + 80) = 575;
    *(v15 + 104) = 0;
    *(v15 + 92) = 0;
    *(v15 + 84) = 0;
    v14 += 36;
    *(v15 + 100) = 0;
  }

  while (v14 != 432);
  *(a1 + 504) = a3;
  BlueFin::GlPeSvVisibilityCache::GlPeSvVisibilityCache(a1 + 512, a6);
  v16 = 0;
  *(a1 + 2208) = 0;
  *(a1 + 2212) = 0;
  *(a1 + 2240) = a3;
  *(a1 + 2248) = a8;
  *(a1 + 2256) = a9;
  *(a1 + 2560) = a1 + 2272;
  do
  {
    v17 = (*(a1 + 2560) + v16);
    *(v17 + 7) = 0;
    *v17 = 0;
    v16 += 16;
  }

  while (v16 != 288);
  for (i = 0; i != 288; i += 16)
  {
    v19 = (*(a1 + 2560) + i);
    *(v19 + 7) = 0;
    *v19 = 0;
  }

  *(a1 + 2264) = -7200001;
  *(a1 + 2268) = 0;
  *(a1 + 2592) = -1;
  return a1;
}