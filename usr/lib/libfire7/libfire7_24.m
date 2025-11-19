uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::wait4cw(uint64_t a1))(uint64_t a1, _BYTE *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v2 = v1;
  STACK[0x4338] = *MEMORY[0x29EDCA608];
  v4 = *v3;
  v5 = BlueFin::GlMeSrdCtrlSm::test;
  if (v4 <= 0xF)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        (*(**(v1 + 34240) + 32))(*(v1 + 34240));
        *(v2 + 216) = 0;
        (***(v2 + 34240))();
        v5 = 0;
        *(v2 + 34240) = 0;
      }

      else if (v4 == 15)
      {
        v6 = *(v1 + 3544);
        BlueFin::GlMeSrdStats::SetHeartbeatMs(*(v1 + 200), *(v1 + 3544));
        (*(**(v2 + 160) + 176))(*(v2 + 160), *(v2 + 200) + 8);
        (*(**(v2 + 34240) + 64))(*(v2 + 34240), v6);
        BlueFin::GlMeas::GlMeas(&v32);
        v7 = 0;
        v8 = 100;
        do
        {
          v9 = STACK[0x4300];
          BYTE4(v29) = 0;
          v30 = -1;
          v31 = 575;
          v10.n128_f64[0] = BlueFin::GlSigMeas::init(v9 + v7, &v29 + 4);
          v7 += 144;
          --v8;
        }

        while (v8);
        LODWORD(STACK[0x430C]) = 0;
LABEL_22:
        LODWORD(v32) = v6;
        (*(**(v2 + 160) + 16))(*(v2 + 160), &v32, v10);
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (*(v1 + 34240))
    {
      v27 = "me->m_otTestMgr == nullptr";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3046, "wait4cw", "me->m_otTestMgr == nullptr");
      v28 = 3046;
    }

    else
    {
      v12 = *(v1 + 136);
      v13 = v12[2];
      if ((v13 - 2) < 2)
      {
        if ((*(*v12 + 184))(v12) == 872480775 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 872611847 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 889126919 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 939589639 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 939720711 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 956235783 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 805371913 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 1006829577 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 805502985 || ((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x3000000F || ((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x30000011)
        {
          v13 = 2;
          goto LABEL_37;
        }

        if ((*(**(v2 + 136) + 184))(*(v2 + 136)) == 805371910 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 805502982 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 822018054 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 805371912 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 1006829576 || (*(**(v2 + 136) + 184))(*(v2 + 136)) == 805502984 || ((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x3000000E || ((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x30000010)
        {
          v13 = 3;
LABEL_37:
          v17 = *(v2 + 120);
          if (!v17)
          {
            v17 = *(v2 + 112);
          }

          *(v2 + 34240) = BlueFin::GlMeSrdTestMgrCW::GlMeSrdTestMgrCW(v2 + 5600, v17, *(v2 + 136), v2, *(v2 + 176), v13);
          if ((*(**(v2 + 136) + 256))() & 1) != 0 || ((*(**(v2 + 136) + 264))(*(v2 + 136)))
          {
            v18 = *(v2 + 136);
            v19 = (*(*v18 + 1032))(v18);
            v20 = (*(**(v2 + 136) + 1080))();
            *(v18 + 531) = v19;
            *(v18 + 532) = v20;
            if ((*(*v18 + 256))(v18))
            {
              v21 = v19 ^ 1;
              if (v20 < 1)
              {
                v21 = 1;
              }

              if (v21)
              {
                BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT = 1096532623;
                BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT = 1107963150;
              }

              else
              {
                BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT = 1088405111;
                BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT = 1099736023;
                BlueFin::GlMeSrdConstants::_4755_GPS_L1_COH_NOI_PWR_AT_CA_EPOCH_INT = 1083173765;
              }
            }

            goto LABEL_52;
          }

          v22 = *(v2 + 136);
          v23 = *(v22 + 28);
          if (v23 == 26000000)
          {
            v24 = 0x419796AA70000000;
          }

          else
          {
            if (v23 != 52000000)
            {
LABEL_52:
              (*(**(v2 + 34240) + 16))(*(v2 + 34240), v2 + 34248);
              (*(**(v2 + 34240) + 24))(*(v2 + 34240));
              goto LABEL_53;
            }

            v24 = 0x4197AC7BE158E780;
          }

          *(v22 + 40) = v24;
          *(v22 + 48) = 0x4192F0631AAD8600;
          goto LABEL_52;
        }
      }

      else
      {
        if (v13 == 1)
        {
          goto LABEL_37;
        }

        if (v13 == 5)
        {
          if (((*(*v12 + 184))(v12) & 0xF000FFFF) == 0x30000013 || ((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x30000015)
          {
            v13 = 6;
            goto LABEL_37;
          }

          if (((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x30000012 || ((*(**(v2 + 136) + 184))(*(v2 + 136)) & 0xF000FFFF) == 0x30000014)
          {
            v13 = 7;
            goto LABEL_37;
          }
        }
      }

      v27 = "eChipType != GlMeSrdTestMgr::ChipTypeUnknown";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3097, "wait4cw", "eChipType != GlMeSrdTestMgr::ChipTypeUnknown");
      v28 = 3097;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v28, v27);
  }

  switch(v4)
  {
    case 0x10u:
      LODWORD(v6) = *(v1 + 3592);
      BlueFin::GlMeas::GlMeas(&v32);
      v14 = 0;
      v15 = 100;
      do
      {
        v16 = STACK[0x4300];
        BYTE4(v29) = 0;
        v30 = -1;
        v31 = 575;
        v10.n128_f64[0] = BlueFin::GlSigMeas::init(v16 + v14, &v29 + 4);
        v14 += 144;
        --v15;
      }

      while (v15);
      LODWORD(STACK[0x430C]) = 1;
      goto LABEL_22;
    case 0x17u:
      BlueFin::GlMeSrdCtrlSm::GotRadioReport(v1);
      goto LABEL_53;
    case 0x27u:
      v11 = (*(**(v1 + 34240) + 40))(*(v1 + 34240));
      (*(**(v2 + 160) + 208))(*(v2 + 160), *(v11 + 25), *(v11 + 24), *(v11 + 26), *v11, *(v11 + 8), *(v11 + 16));
LABEL_53:
      v5 = 0;
      break;
  }

LABEL_54:
  v25 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x4338]);
  return v5;
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::platform_test(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, _BYTE *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::test;
  if (v3 <= 0xE)
  {
    switch(v3)
    {
      case 2u:
        if (*(this + 4280))
        {
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3397, "platform_test", "me->m_otTestMgr == nullptr");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3397, "me->m_otTestMgr == nullptr");
        }

        v5 = *(this + 15);
        if (!v5)
        {
          v5 = *(this + 14);
        }

        (*(*v5 + 88))(v5, this + 5320);
        *(this + 216) = this;
        BlueFin::GlTimer::arm((this + 1696), 5, 0, 0x1388u);
        v4 = 0;
        *(this + 1720) = 1;
        break;
      case 3u:
        v14 = *(this + 15);
        if (!v14)
        {
          v14 = *(this + 14);
        }

        (*(*v14 + 96))(v14, this + 5320);
        *(this + 218) = 0;
        BlueFin::GlTimer::disarm(this + 207);
        goto LABEL_38;
      case 5u:
        BlueFin::QHsm::tran(this, BlueFin::GlMeSrdCtrlSm::com_breakdown, "&GlMeSrdCtrlSm::com_breakdown");
LABEL_38:
        v4 = 0;
        goto LABEL_39;
    }

    goto LABEL_39;
  }

  switch(v3)
  {
    case 0xFu:
      v6 = *(this + 68);
      *(this + 216) = this;
      BlueFin::GlTimer::arm((this + 1696), 5, 0, 0x4E20u);
      *(this + 1720) = 1;
      if (v6 == 1)
      {
        GlCustomLog(15, "<PFT> SerialStressTest \n");
        if (*(this + 69))
        {
          v7 = *(this + 69);
        }

        else
        {
          v7 = 40;
        }

        if (*(this + 71))
        {
          v8 = *(this + 71);
        }

        else
        {
          v8 = 200;
        }

        if (v8 >= 0xC9)
        {
          GlCustomLog(15, "<PFT> Max bytes to be transmitted cannot be greater than 200 \n");
          LOBYTE(v8) = -56;
        }

        if (v7 >= 0x4C)
        {
          GlCustomLog(15, "<PFT> Max packets to be transmitted cannot be greater than 75 \n");
          v7 = 75;
        }

        v9 = *(this + 296);
        v25 = 0x101010101010101 * v9;
        v24[0] = vdupq_n_s8(v9);
        v24[1] = v24[0];
        v24[2] = v24[0];
        v24[3] = v24[0];
        v24[4] = v24[0];
        v24[5] = v24[0];
        v24[6] = v24[0];
        v24[7] = v24[0];
        v24[8] = v24[0];
        v24[9] = v24[0];
        v24[10] = v24[0];
        v24[11] = v24[0];
        if (v7 <= 1)
        {
          v7 = 1;
        }

        do
        {
          v10 = *(this + 15);
          if (!v10)
          {
            v10 = *(this + 14);
          }

          v11 = (*(*v10 + 80))(v10);
          v19 = 0;
          v20[0] = 0;
          *(v20 + 7) = 0;
          v21 = v11;
          v22 = 0;
          v23 = 0;
          (*(*v11 + 16))(v11, 0);
          v12 = (*(*v21 + 48))(v21);
          v13 = (*(*v12 + 24))(v12);
          (*(*v13 + 16))(v13, &v19, 1, v8, v24);
          BlueFin::GlMeSrdTransaction::Complete(&v19);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v19);
          --v7;
        }

        while (v7);
      }

      else
      {
        GlCustomLog(11, "<PFT> unknown test\n");
      }

      BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((this + 3072), *(this + 886));
      ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
      BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), ReportingLms);
      (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
      (*(**(this + 23) + 32))(*(this + 23), ReportingLms);
      v15 = *(**(this + 19) + 24);
      goto LABEL_37;
    case 0x10u:
      BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat((this + 3072), *(this + 898));
      (*(**(this + 23) + 40))(*(this + 23), *(this + 842));
      v15 = *(**(this + 19) + 24);
LABEL_37:
      v15();
      goto LABEL_38;
    case 0x17u:
      BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
      goto LABEL_38;
  }

LABEL_39:
  v17 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::extsuspend(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::steady;
  if (v3 <= 0xC)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        BlueFin::GlTimer::disarm((a1 + 1656));
        return 0;
      }

      return BlueFin::GlMeSrdCtrlSm::normal;
    }

    if (*(a1 + 3324))
    {
      v9 = 260;
    }

    else
    {
      v9 = 284;
      if (*(a1 + 3340))
      {
        v9 = 276;
      }
    }

    v10 = *(a1 + 3072 + v9);
    if (*(a1 + 3356) > v10)
    {
      v10 = *(a1 + 3356);
    }

    v11 = 5 * v10;
    if (v11 >= 0x4E20)
    {
      v11 = 20000;
    }

    *(a1 + 1688) = a1;
    BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v11 + 250);
    v4 = 0;
    *(a1 + 1680) = 1;
  }

  else
  {
    if (v3 == 13)
    {
      if (a2[1] == 2)
      {
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::wait4hb, "&GlMeSrdCtrlSm::wait4hb");
      }

      return 0;
    }

    if (v3 != 15)
    {
      if (v3 == 28)
      {
        if (*(a1 + 1614))
        {
          v5 = *(a1 + 120);
          if (!v5)
          {
            v5 = *(a1 + 112);
          }

          v6 = (*(*v5 + 80))(v5);
          v13[0] = BlueFin::GlMeSrdCtrlSm::OnReliableTransactionAck;
          v13[1] = a1;
          v14 = 258;
          v15 = 0;
          v16 = v6;
          v17 = 0;
          v18 = 0;
          (*(*v6 + 16))(v6, 1);
          v7 = (*(*v6 + 48))(v6);
          v8 = (*(*v7 + 40))(v7);
          (*(*v8 + 88))(v8, v13, 0);
          BlueFin::GlMeSrdTransaction::Complete(v13);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v13);
        }

        return 0;
      }

      return BlueFin::GlMeSrdCtrlSm::normal;
    }
  }

  return v4;
}

void sub_298963D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::wait4extsuspend(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::normal;
  switch(v3)
  {
    case 13:
      if (a2[1] == 2)
      {
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::extsuspend, "&GlMeSrdCtrlSm::extsuspend");
      }

      return 0;
    case 3:
      BlueFin::GlTimer::disarm((a1 + 1656));
      return 0;
    case 2:
      v5 = *(a1 + 120);
      if (!v5)
      {
        v5 = *(a1 + 112);
      }

      v6 = (*(*v5 + 80))(v5);
      v13[0] = BlueFin::GlMeSrdCtrlSm::OnReliableTransactionAck;
      v13[1] = a1;
      v14 = 258;
      v15 = 0;
      v16 = v6;
      v17 = 0;
      v18 = 0;
      (*(*v6 + 16))(v6, 1);
      v7 = (*(*v6 + 48))(v6);
      v8 = (*(*v7 + 40))(v7);
      (*(*v8 + 88))(v8, v13, 1);
      BlueFin::GlMeSrdTransaction::Complete(v13);
      if (*(a1 + 3324))
      {
        v9 = 260;
      }

      else
      {
        v9 = 284;
        if (*(a1 + 3340))
        {
          v9 = 276;
        }
      }

      v10 = *(a1 + 3072 + v9);
      if (*(a1 + 3356) > v10)
      {
        v10 = *(a1 + 3356);
      }

      v11 = 5 * v10;
      if (v11 >= 0x4E20)
      {
        v11 = 20000;
      }

      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v11 + 250);
      *(a1 + 1680) = 1;
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v13);
      return 0;
  }

  return v4;
}

void sub_298963FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*(*BlueFin::GlMeSrdCtrlSm::geofence(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::running;
  if (v3 > 0xF)
  {
    switch(v3)
    {
      case 0x10u:
        BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat((this + 3072), *(this + 898));
        (*(**(this + 23) + 40))(*(this + 23), *(this + 842));
        v6 = *(**(this + 19) + 24);
        goto LABEL_15;
      case 0x17u:
        BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
        return 0;
      case 0x1Fu:
        if (a2[1])
        {
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2987, "geofence", "e->par == 0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 2987, "e->par == 0");
        }

        BlueFin::QHsm::tran(this, BlueFin::GlMeSrdCtrlSm::idle, "&GlMeSrdCtrlSm::idle");
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 2u:
        v7 = *(this + 15);
        if (!v7)
        {
          v7 = *(this + 14);
        }

        (*(*v7 + 128))(v7, this + 3856);
        BlueFin::GlMeSrdMeasTimingMgr::CancelOngoingMIAdjustment((this + 3072));
        *(this + 217) = 1;
        (*(**(this + 24) + 16))(*(this + 24), this + 3856);
        return 0;
      case 3u:
        (*(**(this + 24) + 24))(*(this + 24));
        *(this + 217) = 0;
        BlueFin::GlTimer::disarm(this + 207);
        v8 = *(this + 15);
        if (!v8)
        {
          v8 = *(this + 14);
        }

        (*(*v8 + 120))(v8, this + 3856);
        return 0;
      case 0xFu:
        BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((this + 3072), *(this + 886));
        ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
        BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), ReportingLms);
        (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
        (*(**(this + 23) + 32))(*(this + 23), ReportingLms);
        v6 = *(**(this + 19) + 24);
LABEL_15:
        v6();
        return 0;
    }
  }

  return v4;
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::wait4hb(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 15)
  {
    v4 = BlueFin::GlMeSrdCtrlSm::steady;
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::steady, "&GlMeSrdCtrlSm::steady");
  }

  else if (v3 == 3)
  {
    BlueFin::GlTimer::disarm((a1 + 1656));
    return 0;
  }

  else
  {
    v4 = BlueFin::GlMeSrdCtrlSm::normal;
    if (v3 == 2)
    {
      if (*(a1 + 3324))
      {
        v5 = 260;
      }

      else
      {
        v5 = 284;
        if (*(a1 + 3340))
        {
          v5 = 276;
        }
      }

      v6 = *(a1 + 3072 + v5);
      if (*(a1 + 3356) > v6)
      {
        v6 = *(a1 + 3356);
      }

      v7 = 5 * v6;
      if (v7 >= 0x4E20)
      {
        v7 = 20000;
      }

      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v7 + 250);
      v4 = 0;
      *(a1 + 1680) = 1;
    }
  }

  return v4;
}

unint64_t BlueFin::GlMeSrdCtrlSm::PostCwResults(BlueFin::GlMeSrdCtrlSm *this)
{
  v4 = 39;
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

uint64_t (*(*(*BlueFin::GlMeSrdCtrlSm::test(uint64_t a1, _BYTE *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  if ((*a2 & 0xFE) == 2)
  {
    return 0;
  }

  else
  {
    return BlueFin::GlMeSrdCtrlSm::running;
  }
}

uint64_t BlueFin::GlMeSrdCtrlSmRpcRmRpt::gll_rmrpt_rpc_report_resources(uint64_t a1, uint64_t a2)
{
  result = (*(**(*(a1 + 8) + 136) + 56))(*(*(a1 + 8) + 136));
  if (result != *(a2 + 6))
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3893, "gll_rmrpt_rpc_report_resources", "m_rCtrlSm.m_rAsicConfig.GetNumMemoryBins() == rResourceType.ssb_capacity");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3893, "m_rCtrlSm.m_rAsicConfig.GetNumMemoryBins() == rResourceType.ssb_capacity");
  }

  return result;
}

unint64_t BlueFin::GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_mem_dump_response(unint64_t this, int a2, unsigned __int16 a3, unsigned __int8 a4, unsigned __int8 *a5)
{
  if (a2 == 1)
  {
    v10[3] = v5;
    v10[4] = v6;
    v9 = 22;
    v7 = *(this + 8);
    v8 = *(v7 + 32);
    this = *(v7 + 8);
    *(v7 + 32) = this;
    do
    {
      v10[0] = 0;
      if (BlueFin::patch_dispatch(this, v7, &v9, v10))
      {
        this = v10[0];
      }

      else
      {
        this = (*(v7 + 32))(v7, &v9);
      }

      *(v7 + 32) = this;
    }

    while (this);
    *(v7 + 32) = v8;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_adc_capture_response(BlueFin::GlMeSrdRpcMiscCtrlSm *this, __int16 a2, __int16 a3, unsigned __int8 *a4)
{
  ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((*(this + 1) + 3072));
  result = (*(**(*(this + 1) + 136) + 1192))(*(*(this + 1) + 136));
  v10 = *(result + 1);
  *(this + 12) = a4;
  *(this + 26) = ReportingLms;
  *(this + 108) = v10;
  *(this + 55) = a2;
  *(this + 56) = a3;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = *(*(this + 11) + 24);

    return v11();
  }

  return result;
}

void BlueFin::GlMeSrdRpcMiscCtrlSm::hrm_read_response(BlueFin::GlMeSrdRpcMiscCtrlSm *this, int a2, BlueFin::GlMeSrdCtrlSm *a3)
{
  v6 = (*(**(*(this + 1) + 136) + 16))(*(*(this + 1) + 136));
  if ((v6 & 0xF000FFFE) != 0x30000010 && (v6 & 0xF000FFFE) != 805306382)
  {
    if (v6 <= 889126918)
    {
      if (v6 > 872480774)
      {
        v8 = v6 == 872480775;
        v9 = 872611847;
      }

      else
      {
        v8 = v6 == 805371913;
        v9 = 805502985;
      }
    }

    else if (v6 <= 939720710)
    {
      v8 = v6 == 889126919;
      v9 = 939589639;
    }

    else
    {
      v8 = v6 == 939720711 || v6 == 1006829577;
      v9 = 956235783;
    }

    if (!v8 && v6 != v9)
    {
      GlCustomLog(199, "GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_hrm_response: Unsupported Chip Type\n");
      v38 = "0";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4171, "hrm_read_response", "0");
      v39 = 4171;
      goto LABEL_123;
    }

    if (a2 > 28)
    {
      if (a2 <= 30)
      {
        if (a2 == 29)
        {
          if (a3 >= 0x100)
          {
            v38 = "value == (value & 0x0FF)";
            DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4037, "hrm_read_response", "value == (value & 0x0FF)");
            v39 = 4037;
            goto LABEL_123;
          }

          *(this + 18) = 1;
          *(this + 80) = a3;
        }

        else
        {
          if (a3 >= 0x100)
          {
            v38 = "value == (value & 0x0FF)";
            DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4043, "hrm_read_response", "value == (value & 0x0FF)");
            v39 = 4043;
            goto LABEL_123;
          }

          *(this + 19) = 1;
          *(this + 81) = a3;
        }

        goto LABEL_74;
      }

      if (a2 == 31)
      {
        if (a3 >= 0x100)
        {
          v38 = "value == (value & 0x0FF)";
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4049, "hrm_read_response", "value == (value & 0x0FF)");
          v39 = 4049;
          goto LABEL_123;
        }

        *(this + 22) = 1;
        *(this + 82) = a3;
        goto LABEL_74;
      }

      if (a2 == 32)
      {
        if (a3 >= 0x100)
        {
          v38 = "value == (value & 0x0FF)";
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4055, "hrm_read_response", "value == (value & 0x0FF)");
          v39 = 4055;
          goto LABEL_123;
        }

        *(this + 23) = 1;
        *(this + 83) = a3;
        goto LABEL_74;
      }
    }

    else
    {
      if (a2 <= -1073691921)
      {
        if (a2 != -1073692432)
        {
          if (a2 == -1073692176)
          {
            *(this + 21) = 1;
            v11 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a3);
            *(this + 7) = v11;
            *&v11 = v11;
            *(*(*(this + 1) + 200) + 192) = LODWORD(v11);
            goto LABEL_74;
          }

          goto LABEL_125;
        }

        *(this + 17) = 1;
        v17 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a3);
        *(this + 5) = v17;
        v18 = *(this + 1);
        *&v17 = v17;
        *(*(v18 + 200) + 184) = LODWORD(v17);
        ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((v18 + 3072));
        GlCustomLog(199, "HWDEBUG: LMS = %u, Digital AGC gain (GPS) = %lf\n", ReportingLms, *(this + 5));
LABEL_74:
        if (*(this + 18) == 1 && *(this + 19) == 1)
        {
          v21 = *(this + 80);
          v22 = (v21 & 7) + (v21 >> 3);
          v24 = v21 < 0x2E && (v21 & 7) < 6;
          v26 = v22 < 0xB && ((*(this + 80) & 7) + (*(this + 80) >> 3) + *(this + 81)) < 0x10u;
          v27 = -(3 * (v22 + *(this + 81)));
          if (!v24 || !v26)
          {
            v27 = -255.0;
          }

          *(this + 6) = v27;
          *(this + 9) = 0;
          *(this + 20) = 1;
          v28 = v27;
          *(*(*(this + 1) + 200) + 188) = v28;
        }

        if (*(this + 22) == 1 && *(this + 23) == 1)
        {
          v29 = *(this + 82);
          v30 = (v29 & 7) + (v29 >> 3);
          v32 = v29 < 0x2E && (v29 & 7) < 6;
          v34 = v30 < 0xB && ((*(this + 82) & 7) + (*(this + 82) >> 3) + *(this + 83)) < 0x10u;
          v35 = -(3 * (v30 + *(this + 83)));
          if (!v32 || !v34)
          {
            v35 = -255.0;
          }

          *(this + 8) = v35;
          *(this + 11) = 0;
          *(this + 24) = 1;
          v36 = v35;
          *(*(*(this + 1) + 200) + 196) = v36;
        }

        if (*(this + 16) == 1 && *(this + 17) == 1 && *(this + 20) == 1 && *(this + 21) == 1 && *(this + 24) == 1 && *(this + 25) == 1)
        {
          *(this + 8) = 0;
          *(this + 10) = 0;
          *(this + 12) = 0;
          GlCustomLog(14, "AGC report:: GPS: %.3f dB  GLNS: %.3f dB  BDS: %.3f dB\n", *(this + 4) + *(this + 5), *(this + 6) + *(this + 7), *(this + 8) + *(this + 9));
          GlCustomLog(14, "AGC report extra:: GPS AAGC: %.3f dB DAGC: %.3f dB GLNS AAGC: %.3f dB DAGC: %.3f dB BDS AAGC: %.3f dB DAGC: %.3f dB\n", *(this + 4), *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9));
          *(this + 3) = 0u;
          *(this + 4) = 0u;
          *(this + 2) = 0u;
        }

        return;
      }

      if (a2 == -1073691920)
      {
        *(this + 25) = 1;
        v20 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a3);
        *(this + 9) = v20;
        *&v20 = v20;
        *(*(*(this + 1) + 200) + 200) = LODWORD(v20);
        goto LABEL_74;
      }

      if (a2 == 27)
      {
        if (a3 < 0x100)
        {
          *(this + 16) = 1;
          v12 = (a3 & 7) + ((a3 & 0xF8) >> 3);
          v14 = v12 >= 0xB || (a3 & 7u) >= 6 || a3 >= 0x2E;
          v15 = -(3 * v12);
          if (v14)
          {
            v15 = -255.0;
          }

          *(this + 4) = v15;
          v16 = v15;
          *(*(*(this + 1) + 200) + 180) = v16;
          goto LABEL_74;
        }

        v38 = "value == (value & 0x0FF)";
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4028, "hrm_read_response", "value == (value & 0x0FF)");
        v39 = 4028;
LABEL_123:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v39, v38);
      }
    }

LABEL_125:
    v38 = "0";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4121, "hrm_read_response", "0");
    v39 = 4121;
    goto LABEL_123;
  }

  if (a2 <= -1073691869)
  {
    switch(a2)
    {
      case -1073691904:
        GlCustomLog(199, "AGC report:: GPS:0x%08X Loop Gain %u Target Power %u\n");
        return;
      case -1073691892:
        GlCustomLog(199, "AGC report:: GPS (LP): Loop Gain %u Target Power %u");
        return;
      case -1073691880:
        GlCustomLog(199, "AGC report:: GLO: Loop Gain %u Target Power %u");
        return;
    }

LABEL_124:
    GlCustomLog(199, "GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_hrm_response: Unsupported PIKE Address\n");
    v38 = "0";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4007, "hrm_read_response", "0");
    v39 = 4007;
    goto LABEL_123;
  }

  if (a2 <= -1073690881)
  {
    if (a2 == -1073691868)
    {
      GlCustomLog(199, "AGC report:: GLO (LP): Loop Gain %u Target Power %u");
      return;
    }

    if (a2 == -1073691856)
    {
      GlCustomLog(199, "AGC report:: BDS: Loop Gain %u Target Power %u");
      return;
    }

    goto LABEL_124;
  }

  if (a2 == -1073690880)
  {
    if ((a3 & 7u) > 4)
    {
      v37 = "XXXXXXXX";
    }

    else if ((a3 & 7) == 4)
    {
      v37 = "E5B_BDS2";
    }

    else
    {
      v37 = off_29EEAC3A0[a3 & 7];
    }

    BlueFin::GlMeSrdRpcMiscCtrlSm::hrm_read_response(unsigned char,unsigned int,unsigned int)::acCstl = v37;
    GlCustomLog(199, "AGC report:: DR_MonCtrl %s Sample %u Done %u\n");
    return;
  }

  if (a2 != -1073690864)
  {
    goto LABEL_124;
  }

  if (a3)
  {
    log10f(a3);
  }

  GlCustomLog(199, "AGC report:: DR_MonReg3 %s DAGC Gain (Integer %u Fractional %u) Linear %f Db %f\n");
}

void BlueFin::GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_hrm_read_response(BlueFin::GlMeSrdRpcMiscCtrlSm *this, unsigned __int8 a2, int a3, unsigned int a4, unsigned int *a5)
{
  if (a4)
  {
    for (i = 0; i < a4; ++i)
    {
      v10 = *a5++;
      BlueFin::GlMeSrdRpcMiscCtrlSm::hrm_read_response(this, a3, v10);
      a3 += 4;
    }
  }
}

void BlueFin::GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_gpio_response(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 34524) == 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_11:
        *(*(a1 + 8) + 34524) = 0;
        return;
      }

      v6 = *(v3 + 120);
      if (!v6)
      {
        v6 = *(v3 + 112);
      }

      v7 = (*(*v6 + 80))(v6);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      v18 = v7;
      v19 = 0;
      v20 = 0;
      (*(*v7 + 16))(v7, 1);
      v8 = (*(*v7 + 48))(v7);
      v9 = (*(*v8 + 16))(v8);
      (*(*v9 + 88))(v9, &v14, a2, 0);
      BlueFin::GlMeSrdTransaction::Complete(&v14);
    }

    else
    {
      v10 = *(v3 + 120);
      if (!v10)
      {
        v10 = *(v3 + 112);
      }

      v11 = (*(*v10 + 80))(v10);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      v18 = v11;
      v19 = 0;
      v20 = 0;
      (*(*v11 + 16))(v11, 1);
      v12 = (*(*v11 + 48))(v11);
      v13 = (*(*v12 + 16))(v12);
      (*(*v13 + 88))(v13, &v14, a2, 1);
      BlueFin::GlMeSrdTransaction::Complete(&v14);
    }

    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v14);
    goto LABEL_11;
  }
}

void sub_2989651F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

unint64_t BlueFin::GlMeSrdCtrlSm::Assert(BlueFin::GlMeSrdCtrlSm *this, char *a2, uint64_t a3, const char *a4)
{
  if (BlueFin::GlUtils::m_ucEnabled && ((BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x1C) & 1) != 0 || BlueFin::GlUtils::m_ucEnabled && (BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(4), BlueFin::GlUtils::m_ucEnabled) && BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xEC)))
  {
    if (!*(this + 5444))
    {
      GlCustomLog(27, "ESW_ASSERT %s:%d\n", a2, a3);
      v7 = *(a2 + 4);
      v8 = *(a2 + 5);
      v9 = *(a2 + 6);
      *(this + 5556) = *(a2 + 7);
      v10 = *a2;
      v11 = *(a2 + 1);
      v12 = *(a2 + 3);
      *(this + 5476) = *(a2 + 2);
      *(this + 5492) = v12;
      *(this + 5444) = v10;
      *(this + 5460) = v11;
      *(this + 5524) = v8;
      *(this + 5540) = v9;
      *(this + 5508) = v7;
      *(this + 5571) = 0;
      *(this + 1393) = a3;
    }

    v16 = 21;
    v13 = *(this + 4);
    result = *(this + 1);
    *(this + 4) = result;
    do
    {
      v17 = 0;
      if (BlueFin::patch_dispatch(result, this, &v16, &v17))
      {
        result = v17;
      }

      else
      {
        result = (*(this + 4))(this, &v16);
      }

      *(this + 4) = result;
    }

    while (result);
    *(this + 4) = v13;
  }

  else
  {
    v15 = BlueFin::GlUtils::m_pInstance;

    return BlueFin::GlUtils::Assert(v15, a2, a3, a4);
  }

  return result;
}

BlueFin::GlFormat *BlueFin::GlMeSrdCtrlSm::RequestDump(BlueFin::GlMeSrdStats **this, BlueFin::GlFormat *a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  BlueFin::GlMeSrdStats::RequestDump(this[25], v9, 128);
  BlueFin::GlFormat::glsnprintf(a2, (a3 - 1), "ASIC=%X;ME_PREVSTATE=%s;ME_STATE=%s;ME_MAX_DELAY=%d;%s", v6, *(this + 598), this[3], this[2], *(this + 26), v9);
  v7 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t BlueFin::GlMeAdcCaptureData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v3 >= 2)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4436, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 4436, "ucVersion >= 1 && ucVersion <= 1");
  }

  v5 = v2;
  v6 = v1;
  v7 = *(v1 + 22) == 255;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = 118;
    v12 = v4;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F09520;
    v14 = v4;
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v1 + 16));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutU8(&v10, v7);
    BlueFin::GlSysLogEntry::PutU16(&v10, *(v6 + 22));
    BlueFin::GlSysLogEntry::PutBuffer(&v10, *(v6 + 8), *(v6 + 24));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL BlueFin::GlMeAdcCaptureData::Deserialize(BlueFin::GlMeAdcCaptureData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this);
  v10 = *MEMORY[0x29EDCA608];
  v4 = v3[12];
  if (v4 == 1)
  {
    v5 = v3;
    v6 = v2;
    *(v2 + 16) = BlueFin::GlSysLogEntry::GetU32(v3);
    *(v6 + 20) = BlueFin::GlSysLogEntry::GetU8(v5);
    BlueFin::GlSysLogEntry::GetU8(v5);
    *(v6 + 22) = BlueFin::GlSysLogEntry::GetU16(v5);
    *(v6 + 24) = BlueFin::GlSysLogEntry::GetU16(v5);
    BlueFin::GlSysLogEntry::GetBuffer(v5, v9, 0x1000u);
    if (v5[11] != v5[10])
    {
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4469, "Deserialize", "rotEntry.DataSize() == rotEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 4469, "rotEntry.DataSize() == rotEntry.ReadIdx()");
    }
  }

  result = v4 == 1;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeIONXMgr::~GlPeIONXMgr(BlueFin::GlPeIONXMgr *this)
{
  *this = &unk_2A1F0B5A8;
  *(this + 24) = 0;
}

{
  JUMPOUT(0x29C292F60);
}

void BlueFin::GlPeIONXMgr::setDcbFromLto(uint64_t a1, uint64_t a2, unsigned int a3, float *a4)
{
  if (!a2)
  {
    v6 = "paotDcb != nullptr";
    DeviceFaultNotify("glpe_ionxmgr.cpp", 103, "setDcbFromLto", "paotDcb != nullptr");
    v7 = 103;
    goto LABEL_12;
  }

  if (!a4)
  {
    v6 = "pDcbArray != nullptr";
    DeviceFaultNotify("glpe_ionxmgr.cpp", 104, "setDcbFromLto", "pDcbArray != nullptr");
    v7 = 104;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", v7, v6);
  }

  if (a3)
  {
    v4 = a3;
    v5 = (a2 + 4);
    do
    {
      if (*(v5 - 2))
      {
        if (*v5 <= 19)
        {
          *a4 = *(v5 - 2) / 29.979;
        }
      }

      ++a4;
      v5 += 3;
      --v4;
    }

    while (v4);
  }
}

void BlueFin::GlPeIONXMgr::SetDcbFromLto(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v20 = *MEMORY[0x29EDCA608];
  v9 = a1 + 46216;
  v10 = 32;
  v11 = 1;
  v12 = a1 + 46344;
  v13 = 32;
  v14 = 2;
  v15 = a1 + 46472;
  v16 = 32;
  v17 = 3;
  v8[0] = 0;
  v18 = a1 + 46600;
  v19 = 32;
  while (*(a2 + 4) != v8[v2])
  {
    v2 += 6;
    if (v2 == 24)
    {
      goto LABEL_10;
    }
  }

  v3 = &v8[v2];
  v4 = *(v3 + 1);
  if (!v4)
  {
LABEL_10:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v3[4] != 32)
  {
    DeviceFaultNotify("glpe_ionxmgr.cpp", 142, "SetDcbFromLto", "ulNumDcbSlots == _DIM(rstDcb.astDcb)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", 142, "ulNumDcbSlots == _DIM(rstDcb.astDcb)");
  }

  v5 = *(a2 + 224);
  v6 = *MEMORY[0x29EDCA608];

  BlueFin::GlPeIONXMgr::setDcbFromLto(a1, v5, 0x20u, v4);
}

{
  v2 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v8[0] = 6;
  v9 = a1 + 46728;
  v10 = 10;
  v11 = 7;
  v12 = a1 + 46768;
  v13 = 10;
  v14 = 8;
  v15 = a1 + 46808;
  v16 = 10;
  while (*(a2 + 4) != v8[v2])
  {
    v2 += 6;
    if (v2 == 18)
    {
      goto LABEL_10;
    }
  }

  v3 = &v8[v2];
  v4 = *(v3 + 1);
  if (!v4)
  {
LABEL_10:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v3[4] != 10)
  {
    DeviceFaultNotify("glpe_ionxmgr.cpp", 202, "SetDcbFromLto", "ulNumDcbSlots == _DIM(rstDcb.astDcb)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", 202, "ulNumDcbSlots == _DIM(rstDcb.astDcb)");
  }

  v5 = *(a2 + 96);
  v6 = *MEMORY[0x29EDCA608];

  BlueFin::GlPeIONXMgr::setDcbFromLto(a1, v5, 0xAu, v4);
}

{
  v2 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v8[0] = 9;
  v9 = a1 + 46848;
  v10 = 63;
  v11 = 10;
  v12 = a1 + 47100;
  v13 = 63;
  v14 = 11;
  v15 = a1 + 47352;
  v16 = 63;
  while (*(a2 + 4) != v8[v2])
  {
    v2 += 6;
    if (v2 == 18)
    {
      goto LABEL_10;
    }
  }

  v3 = &v8[v2];
  v4 = *(v3 + 1);
  if (!v4)
  {
LABEL_10:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v3[4] != 63)
  {
    DeviceFaultNotify("glpe_ionxmgr.cpp", 233, "SetDcbFromLto", "ulNumDcbSlots == _DIM(rstDcb.astDcb)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", 233, "ulNumDcbSlots == _DIM(rstDcb.astDcb)");
  }

  v5 = *(a2 + 416);
  v6 = *MEMORY[0x29EDCA608];

  BlueFin::GlPeIONXMgr::setDcbFromLto(a1, v5, 0x3Fu, v4);
}

uint64_t BlueFin::GlPeIONXMgr::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v21 = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_ionxmgr.cpp", 589, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", 589, "ucVersion == 1");
  }

  v4 = v2;
  v5 = v1;
  v17 = 106;
  v18 = 1;
  v19 = 0x1000000000000;
  v16 = &unk_2A1F09578;
  v20 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v16, *(v1 + 32));
  v6 = v5 + 45056;
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 56));
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 48));
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 16));
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 32));
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 40));
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 8));
  BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 24));
  BlueFin::GlSysLogEntry::PutU32(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 64));
  BlueFin::GlSysLogEntry::PutU32(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128)));
  BlueFin::GlSysLogEntry::PutU32(&v16, *(*(v6 + 1120) + 11520 * *(v6 + 1128) + 68));
  v7 = *(v6 + 1120) + 11520 * *(v6 + 1128);
  if (*(v7 + 68))
  {
    v8 = 0;
    do
    {
      v9 = v8;
      BlueFin::GlSysLogEntry::PutD64(&v16, *(*(v7 + 11496) + 200 * v8 + 24));
      BlueFin::GlSysLogEntry::PutD64(&v16, *(*(*(v6 + 1120) + 11520 * *(v6 + 1128) + 11496) + 200 * v9 + 16));
      BlueFin::GlSysLogEntry::PutD64(&v16, *(*(*(v6 + 1120) + 11520 * *(v6 + 1128) + 11496) + 200 * v9));
      BlueFin::GlSysLogEntry::PutD64(&v16, *(*(*(v6 + 1120) + 11520 * *(v6 + 1128) + 11496) + 200 * v9 + 8));
      BlueFin::GlSysLogEntry::PutS16(&v16, *(*(*(v6 + 1120) + 11520 * *(v6 + 1128) + 11496) + 200 * v9 + 32));
      BlueFin::GlSysLogEntry::PutU16(&v16, *(*(*(v6 + 1120) + 11520 * *(v6 + 1128) + 11496) + 200 * v9 + 34));
      v10 = *(v6 + 1120);
      v11 = *(v6 + 1128);
      v12 = *(v10 + 11520 * *(v6 + 1128) + 11496);
      if (*(v12 + 200 * v9 + 34))
      {
        v13 = 0;
        do
        {
          BlueFin::GlSysLogEntry::PutS16(&v16, *(v12 + 200 * v9 + 36 + 2 * v13++));
          v10 = *(v6 + 1120);
          v11 = *(v6 + 1128);
          v12 = *(v10 + 11520 * *(v6 + 1128) + 11496);
        }

        while (v13 < *(v12 + 200 * v9 + 34));
      }

      v8 = v9 + 1;
      v7 = v10 + 11520 * v11;
    }

    while (*(v7 + 68) > (v9 + 1));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v16, v4, 4);
  v14 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeIONXMgr::Deserialize(BlueFin::GlPeIONXMgr *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 106 || *(a2 + 12) > 1u)
  {
    return 0;
  }

  v6 = this + 45056;
  if (*(this + 46184) < 4u)
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 56) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 48) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 16) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 32) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 40) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 8) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 24) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(*(v6 + 140) + 11520 * v6[1128] + 64) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(*(v6 + 140) + 11520 * v6[1128]) = BlueFin::GlSysLogEntry::GetU32(a2);
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    v9 = *(v6 + 140);
    LOBYTE(v10) = v6[1128];
    *(v9 + 11520 * v10 + 68) = U32;
    if (U32)
    {
      v11 = 0;
      do
      {
        v12 = v11;
        v13 = 200 * v11;
        *(*(*(v6 + 140) + 11520 * v6[1128] + 11496) + v13 + 24) = BlueFin::GlSysLogEntry::GetD64(a2);
        *(*(*(v6 + 140) + 11520 * v6[1128] + 11496) + 200 * v12 + 16) = BlueFin::GlSysLogEntry::GetD64(a2);
        *(*(*(v6 + 140) + 11520 * v6[1128] + 11496) + v13) = BlueFin::GlSysLogEntry::GetD64(a2);
        *(*(*(v6 + 140) + 11520 * v6[1128] + 11496) + 200 * v12 + 8) = BlueFin::GlSysLogEntry::GetD64(a2);
        *(*(*(v6 + 140) + 11520 * v6[1128] + 11496) + 200 * v12 + 32) = BlueFin::GlSysLogEntry::GetS16(a2);
        U16 = BlueFin::GlSysLogEntry::GetU16(a2);
        v9 = *(v6 + 140);
        v10 = v6[1128];
        *(*(v9 + 11520 * v6[1128] + 11496) + 200 * v12 + 34) = U16;
        if (U16)
        {
          v15 = 0;
          v16 = v13 + 36;
          do
          {
            S16 = BlueFin::GlSysLogEntry::GetS16(a2);
            v9 = *(v6 + 140);
            v10 = v6[1128];
            v18 = *(v9 + 11520 * v6[1128] + 11496);
            *(v18 + v16 + 2 * v15++) = S16;
          }

          while (v15 < *(v18 + 200 * v12 + 34));
        }

        v11 = v12 + 1;
      }

      while (*(v9 + 11520 * v10 + 68) > (v12 + 1));
    }

    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glpe_ionxmgr.cpp", 673, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionxmgr.cpp", 673, "otEntry.DataSize() == otEntry.ReadIdx()");
    }

    v19 = v10 + 1;
    v6[1128] = v19;
    if (U8 == v19)
    {
      v6[1128] = 0;
      BlueFin::GlPeIONXMgr::SetIONXFromLto(this, v9, U8);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 10) = *(a2 + 11);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_sub_heartbeat(BlueFin::GlMeSrdRpcEvtCtrl *this, unsigned int a2)
{
  v2 = *(this + 1);
  *(v2 + 200) = a2;
  *(v2 + 184) = a2 * 0.001;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*(v2 + 176) + 24))(v2 + 176, 0, 0);
    v2 = *(this + 1);
  }

  v4 = *(**(v2 + 112) + 24);

  return v4();
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_radio_report(uint64_t a1, int a2, int a3, _OWORD *a4, __int16 a5)
{
  v5 = *(a1 + 8);
  *(v5 + 256) = a2;
  *(v5 + 260) = a3;
  v5 += 264;
  v7 = a4[2];
  v6 = a4[3];
  v8 = a4[1];
  *(v5 + 60) = *(a4 + 60);
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  *(v5 + 16) = v8;
  *v5 = *a4;
  v9 = *(a1 + 8);
  *(v9 + 340) = a5;
  return (*(**(v9 + 112) + 64))();
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_frequency_captured(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a2 != 3)
  {
    v17 = "CAPTURE_PORT_CNTIN == port";
    DeviceFaultNotify("glmesrd_evt_ctrl.cpp", 175, "gll_sysevt_rpc_frequency_captured", "CAPTURE_PORT_CNTIN == port");
    v18 = 175;
    goto LABEL_17;
  }

  v4 = *(*(a1 + 16) + 56);
  if (!v4)
  {
    v17 = "m_rAsicConfig.GetCntinFreqHz() > 0";
    DeviceFaultNotify("glmesrd_evt_ctrl.cpp", 176, "gll_sysevt_rpc_frequency_captured", "m_rAsicConfig.GetCntinFreqHz() > 0");
    v18 = 176;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_evt_ctrl.cpp", v18, v17);
  }

  v5 = v4;
  if (a4 == 1)
  {
    v6 = (a1 + 8);
    GlCustomLog(12, "gll_sysevt_rpc_frequency_captured:there is no reference cnt in clk detected, clk_cnt:%d, hs_clk_cnt:%d, CntinFreq:%f, hsClkFreq:%f\n", a3, 1, v4, *(*(*(a1 + 8) + 120) + 40));
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = (a1 + 8);
    v9 = *(*(*(a1 + 8) + 120) + 40);
    v10 = (a4 + 0.5) / v9;
    v11 = (a3 / v5 - v10) / v10;
    v12 = -v11;
    if (v11 >= 0.0)
    {
      v13 = (a3 / v5 - v10) / v10;
    }

    else
    {
      v13 = -v11;
    }

    if (v13 < 0.0000069000001)
    {
      GlCustomLog(14, "gll_sysevt_rpc_frequency_captured:Tcxo Offset from Freq capture(%.1f PPB), clk_cnt:%d, hs_clk_cnt:%d, CntinFreq:%f, hsClkFreq:%f\n", v11 * -1000000000.0, a3, a4, v5, v9);
      v7 = 1;
      v8 = 1;
      goto LABEL_12;
    }

    GlCustomLog(12, "gll_sysevt_rpc_frequency_captured:TCXO offset from CNTIN is too big (%.1g PPB), clk_cnt:%d, hs_clk_cnt:%d, CntinFreq:%f, hsClkFreq:%f\n", v11 * 1000000000.0, a3, a4, v5, v9);
    v7 = 0;
    v8 = 1;
  }

  v12 = 0.0;
LABEL_12:
  v14 = *v6;
  *(v14 + 240) = v12;
  *(v14 + 248) = v7;
  *(v14 + 249) = v8;
  v15 = *(**(v14 + 112) + 48);

  return v15();
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_sysevt_rpc_pps_out(BlueFin::GlMeSrdRpcEvtCtrl *this, int a2, unsigned int a3, unsigned int a4, int a5)
{
  v8 = a4 / ((522753 * (*(**(this + 2) + 320))(*(this + 2))) * 8388608.0) + a3;
  v9 = (*(**(*(this + 1) + 120) + 88))(*(*(this + 1) + 120));
  v10 = *(this + 1);
  *(v10 + 208) = v8 + (a2 - a5) * 1000.0 / v9;
  v11 = (*(**(v10 + 120) + 88))(*(v10 + 120));
  v12 = *(this + 1);
  *(v12 + 208) = *(v12 + 208) + (1.0 / v11 + 1.0 / v11) * 1000.0;
  v13 = *(**(v12 + 112) + 56);

  return v13();
}

void BlueFin::GlMeSrdEvtCtrl::~GlMeSrdEvtCtrl(BlueFin::GlMeSrdEvtCtrl *this)
{
  *this = &unk_2A1F0B708;
}

{
  JUMPOUT(0x29C292F60);
}

void BlueFin::GlMeSrdMeasTimingMgr::~GlMeSrdMeasTimingMgr(BlueFin::GlMeSrdMeasTimingMgr *this)
{
  *this = &unk_2A1F0B758;
  BlueFin::GlEventPump::RemoveActive(*(this + 14), this);
}

{
  BlueFin::GlMeSrdMeasTimingMgr::~GlMeSrdMeasTimingMgr(this);

  JUMPOUT(0x29C292F60);
}

unint64_t BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat(BlueFin::GlMeSrdMeasTimingMgr *this, unsigned int a2)
{
  if (*(this + 75) >= a2)
  {
    DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 93, "SetSubHeartBeat", "ulLms > m_ulPreviousSubHeartbeatMs");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 93, "ulLms > m_ulPreviousSubHeartbeatMs");
  }

  *(this + 75) = *(this + 74);
  *(this + 74) = a2;
  v5 = 52;
  v3 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, this, &v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(this + 4))(this, &v5);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v3;
  return result;
}

uint64_t BlueFin::GlMeSrdMeasTimingMgr::AdjustTargetLms(uint64_t this)
{
  v1 = this;
  v2 = *(this + 284);
  v3 = *(this + 288);
  if (*(this + 228) + 10 * v2 < v3)
  {
    this = GlCustomLog(11, "AdjustTargetLms failed. %d %d\n", *(this + 228), v3);
    v2 = *(v1 + 284);
    v3 = *(v1 + 288);
  }

  if (*(v1 + 304) == 1)
  {
LABEL_4:
    *(v1 + 304) = 1;
    v4 = *(v1 + 308);
    v5 = 10;
    do
    {
      if (v4 + v2 >= v3 + 500)
      {
        break;
      }

      *(v1 + 308) = v4 + v2;
      v4 += v2;
      --v5;
    }

    while (v5);
    v6 = v4 - v3;
    if ((v6 - 201) <= 0xFFFFFE6E)
    {
      return GlCustomLog(11, "AdjustTargetLms failed. %d\n", v6);
    }
  }

  else
  {
    v7 = *(v1 + 228);
    v8 = 9;
    while (v3 != v7)
    {
      if (v7 <= v3 + v2)
      {
        v9 = v8--;
        v7 += v2;
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_4;
    }
  }

  return this;
}

unint64_t BlueFin::GlMeSrdMeasTimingMgr::SetMIAdjustment(unint64_t this, int a2, unsigned __int16 a3)
{
  if (a3 - 1001 <= 0xF82E)
  {
    DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 209, "SetMIAdjustment", "ms <= 1000 && ms >= -1000");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 209, "ms <= 1000 && ms >= -1000");
  }

  if (a3)
  {
    v3 = this;
    *(this + 244) = a2;
    *(this + 248) = a3;
    *(this + 240) = 1;
    v5 = 49;
    v4 = *(this + 32);
    this = *(this + 8);
    *(v3 + 32) = this;
    do
    {
      v6 = 0;
      if (BlueFin::patch_dispatch(this, v3, &v5, &v6))
      {
        this = v6;
      }

      else
      {
        this = (*(v3 + 32))(v3, &v5);
      }

      *(v3 + 32) = this;
    }

    while (this);
    *(v3 + 32) = v4;
  }

  return this;
}

unint64_t BlueFin::GlMeSrdMeasTimingMgr::CancelOngoingMIAdjustment(BlueFin::GlMeSrdMeasTimingMgr *this)
{
  v4 = 50;
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

uint64_t BlueFin::GlMeSrdMeasTimingMgr::SetReportingInterval(BlueFin::GlMeSrdMeasTimingMgr *this, int a2)
{
  HIDWORD(v3) = 652835029 * a2;
  LODWORD(v3) = 652835029 * a2;
  if ((v3 >> 3) > 0x418937 || (a2 - 10001) <= 0xFFFFDCD6)
  {
    DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 244, "SetReportingInterval", "usReportingIntMs%1000 == 0 && usReportingIntMs >= 1000 && usReportingIntMs <= 10000");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 244, "usReportingIntMs%1000 == 0 && usReportingIntMs >= 1000 && usReportingIntMs <= 10000");
  }

  *(this + 64) = *(this + 72);
  *(this + 130) = a2;
  if (*(this + 252))
  {
    v5 = 264;
  }

  else
  {
    v6 = *(this + 268) == 0;
    v7 = 286;
    if (*(this + 268))
    {
      v7 = 279;
    }

    *(this + 263) = *(this + v7);
    v5 = 312;
    if (!v6)
    {
      v5 = 280;
    }
  }

  *(this + 264) = *(this + v5);
  *(this + 252) = 1;
  v8 = (this + 40);

  return BlueFin::GlQueue::putFIFO(v8, 49, 0);
}

uint64_t BlueFin::GlMeSrdMeasTimingMgr::SetPowerSaveEnabled(BlueFin::GlMeSrdMeasTimingMgr *this, char a2)
{
  *(this + 64) = *(this + 72);
  *(this + 263) = a2;
  if (*(this + 252))
  {
    v2 = 264;
  }

  else
  {
    v3 = *(this + 268) == 0;
    v4 = 284;
    if (*(this + 268))
    {
      v4 = 276;
    }

    *(this + 130) = *(this + v4);
    v2 = 312;
    if (!v3)
    {
      v2 = 280;
    }
  }

  *(this + 264) = *(this + v2);
  *(this + 252) = 1;
  return BlueFin::GlQueue::putFIFO((this + 40), 49, 0);
}

uint64_t BlueFin::GlMeSrdMeasTimingMgr::SetLimitMaxRfOnTime(BlueFin::GlMeSrdMeasTimingMgr *this, int a2, __int16 a3)
{
  v4 = a2;
  v6 = 70;
  if (a2)
  {
    v6 = 84;
  }

  GlCustomLog(14, "GlMeSrdMeasTimingMgr::SetLimitMaxRfOnTime(%c)\n", v6);
  *(this + 157) = a3;
  *(this + 64) = *(this + 72);
  if (*(this + 252))
  {
    v7 = 260;
  }

  else
  {
    v8 = *(this + 268) == 0;
    v9 = 286;
    if (*(this + 268))
    {
      v9 = 279;
    }

    *(this + 263) = *(this + v9);
    v7 = 284;
    if (!v8)
    {
      v7 = 276;
    }
  }

  *(this + 264) = v4;
  *(this + 130) = *(this + v7);
  *(this + 252) = 1;

  return BlueFin::GlQueue::putFIFO((this + 40), 49, 0);
}

unint64_t BlueFin::GlMeSrdMeasTimingMgr::OnReliableAckCb(BlueFin::GlMeSrdMeasTimingMgr *this, void *a2)
{
  v5[1] = a2;
  v5[0] = 51;
  v3 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, this, v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(this + 4))(this, v5);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v3;
  return result;
}

uint64_t (*BlueFin::GlMeSrdMeasTimingMgr::wait4dutycyle_programming(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::QHsm::top;
  switch(v3)
  {
    case 51:
      (*(**(a1 + 120) + 32))(*(a1 + 120), *(a1 + 276));
      BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdMeasTimingMgr::wait4dutycyle_done, "&GlMeSrdMeasTimingMgr::wait4dutycyle_done");
      return 0;
    case 3:
      BlueFin::GlTimer::disarm((a1 + 184));
      return 0;
    case 2:
      v5 = *(a1 + 279);
      v6 = *(a1 + 280);
      if (v5)
      {
        if ((*(a1 + 280) & 1) == 0)
        {
          v7 = *(a1 + 136);
          if (v7[1176] == 1)
          {
            v8 = v7[1177];
            v9 = v7[1178];
          }

          else
          {
            v8 = 2;
            v9 = 2;
          }

          goto LABEL_20;
        }
      }

      else if ((*(a1 + 280) & 1) == 0)
      {
        v8 = 0;
        v9 = 5;
LABEL_20:
        v14 = *(a1 + 128);
        if (!v14)
        {
          v14 = *(a1 + 120);
        }

        v15 = (*(*v14 + 80))(v14);
        v19[0] = BlueFin::GlMeSrdMeasTimingMgr::OnReliableAckCb;
        v19[1] = a1;
        v20 = 256;
        v21 = 0;
        v22 = v15;
        v23 = 0;
        v24 = 0;
        (*(*v15 + 16))(v15, 1);
        v16 = (*(*v15 + 48))(v15);
        v17 = (*(*v16 + 40))(v16);
        (*(*v17 + 80))(v17, v19, (8389 * (*(a1 + 276) >> 3)) >> 20, v8, v9);
        BlueFin::GlMeSrdTransaction::Complete(v19);
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v19);
        return 0;
      }

      v10 = *(a1 + 276);
      if (v10 == 1000)
      {
        v8 = 2;
        v11 = 2;
      }

      else if (v10 == 2000)
      {
        v8 = 4;
        v11 = 4;
      }

      else
      {
        v8 = 5;
        v11 = 5;
      }

      v12 = v5 == 0;
      v13 = 70;
      if (!v12)
      {
        v13 = 84;
      }

      GlCustomLog(14, "GlMeSrdMeasTimingMgr::wait4dutycyle_programming: bPowerSaveEnable(xml) %c, bPowerSaveEnable(API) %c, MI Interval(ms) %u, MinNumBlk %u MaxNumBlk %u\n", v13, 84, v10, v11, v11);
      v9 = v8;
      goto LABEL_20;
  }

  return v4;
}

void sub_29896710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*BlueFin::GlMeSrdMeasTimingMgr::wait4miadjustment_programming(BlueFin::GlMeSrdMeasTimingMgr *this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 <= 0x2E)
  {
    if (v3 == 2)
    {
      v7 = *(this + 16);
      if (!v7)
      {
        v7 = *(this + 15);
      }

      v8 = (*(*v7 + 80))(v7);
      v20[0] = BlueFin::GlMeSrdMeasTimingMgr::OnReliableAckCb;
      v20[1] = this;
      v21 = 256;
      v22 = 0;
      v23 = v8;
      v24 = 0;
      v25 = 0;
      (*(*v8 + 16))(v8, 1);
      if (*(this + 224) == 1)
      {
        v9 = *(this + 117);
        if (v9 < 0)
        {
          v16 = -v9 % 0xC8u;
          v17 = 5243 * (v9 + 1100);
          v10 = (v17 >> 20) + (v17 >> 31);
          if ((v17 >> 20) + (v17 < 0))
          {
            LOBYTE(v11) = 0;
            if (v16 > 0x77u)
            {
              v13 = 20;
            }

            else
            {
              v13 = -20;
            }

            if (v16 <= 0x77u)
            {
              v12 = (205 * v16) >> 12;
            }

            else
            {
              v12 = 10 - ((205 * v16) >> 12);
            }
          }

          else
          {
            if (*(this + 142) <= 0x7CFu)
            {
              DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 523, "wait4miadjustment_programming", "me->m_usReportingIntMs >= 2000");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 523, "me->m_usReportingIntMs >= 2000");
            }

            LOBYTE(v11) = 0;
            if (v16 >= 0x14u)
            {
              v12 = (205 * v16) >> 12;
            }

            else
            {
              v12 = 10;
            }

            LOBYTE(v10) = 1;
            v13 = -20;
          }
        }

        else
        {
          LOBYTE(v10) = 0;
          v11 = v9 / 0xC8u;
          v12 = v9 % 0xC8u / 0x14;
          v13 = 20;
        }

        v18 = (*(*v8 + 48))(v8);
        v19 = (*(*v18 + 40))(v18);
        (*(*v19 + 72))(v19, v20, v13, v12, v10, v11);
        *(this + 224) = 0;
      }

      else
      {
        if (*(this + 225) != 1)
        {
          DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 554, "wait4miadjustment_programming", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 554, "0");
        }

        v14 = (*(*v8 + 48))(v8);
        v15 = (*(*v14 + 40))(v14);
        (*(*v15 + 72))(v15, v20, *(this + 236), 1, 0, 0);
        *(this + 225) = 0;
      }

      BlueFin::GlMeSrdTransaction::Complete(v20);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v20);
      return 0;
    }

    if (v3 != 3)
    {
      return BlueFin::QHsm::top;
    }
  }

  else
  {
    if (v3 != 47)
    {
      if (v3 == 50)
      {
        *(this + 240) = 0;
        *(this + 304) = 0;
        v4 = "&GlMeSrdMeasTimingMgr::idle";
        v5 = BlueFin::GlMeSrdMeasTimingMgr::idle;
        goto LABEL_11;
      }

      if (v3 == 51)
      {
        v4 = "&GlMeSrdMeasTimingMgr::wait4miadjustment_done";
        v5 = BlueFin::GlMeSrdMeasTimingMgr::wait4miadjustment_done;
LABEL_11:
        BlueFin::QHsm::tran(this, v5, v4);
        return 0;
      }

      return BlueFin::QHsm::top;
    }

    BlueFin::GlMeSrdMeasTimingMgr::AdjustTargetLms(this);
  }

  return 0;
}

void sub_298967500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*BlueFin::GlMeSrdMeasTimingMgr::wait4miadjustment_done(BlueFin::GlMeSrdMeasTimingMgr *this, unsigned __int8 *a2))()
{
  v3 = *a2;
  result = BlueFin::QHsm::top;
  if (v3 <= 0x2E)
  {
    if (v3 == 2)
    {
      if (*(this + 225) == 1)
      {
        *(this + 27) = this;
        BlueFin::GlTimer::arm((this + 184), 48, 0, 0x4B0u);
        result = 0;
        *(this + 208) = 1;
        return result;
      }
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      BlueFin::GlTimer::disarm(this + 23);
    }
  }

  else
  {
    if (v3 != 47)
    {
      if (v3 != 48)
      {
        if (v3 != 50)
        {
          return result;
        }

        *(this + 240) = 0;
LABEL_6:
        *(this + 304) = 0;
        v5 = "&GlMeSrdMeasTimingMgr::idle";
        v6 = BlueFin::GlMeSrdMeasTimingMgr::idle;
LABEL_13:
        BlueFin::QHsm::tran(this, v6, v5);
        return 0;
      }

      goto LABEL_12;
    }

    BlueFin::GlMeSrdMeasTimingMgr::AdjustTargetLms(this);
    if (*(this + 304) == 1)
    {
      if (*(this + 225) != 1)
      {
        if (*(this + 72) != *(this + 77))
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_12:
      v5 = "&GlMeSrdMeasTimingMgr::wait4miadjustment_programming";
      v6 = BlueFin::GlMeSrdMeasTimingMgr::wait4miadjustment_programming;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t (*BlueFin::GlMeSrdMeasTimingMgr::wait4dutycyle_done(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  v3 = BlueFin::QHsm::top;
  switch(v2)
  {
    case 47:
      if (*(a1 + 288) - *(a1 + 292) != *(a1 + 276))
      {
        if (!*(a1 + 278))
        {
          DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 738, "wait4dutycyle_done", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 738, "0");
        }

        v3 = 0;
        v4 = *(a1 + 278) - 1;
        goto LABEL_10;
      }

      BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdMeasTimingMgr::idle, "&GlMeSrdMeasTimingMgr::idle");
      return 0;
    case 3:
      v3 = 0;
      *(a1 + 284) = *(a1 + 276);
      *(a1 + 286) = *(a1 + 279);
      *(a1 + 312) = *(a1 + 280);
      *(a1 + 268) = 0;
      break;
    case 2:
      v3 = 0;
      v4 = 5;
LABEL_10:
      *(a1 + 278) = v4;
      break;
  }

  return v3;
}

uint64_t BlueFin::GlMeSrdNvRamReader::ProcessRpcNvRamResponse(BlueFin::GlMeSrdNvRamReader *this, unsigned int *a2, int a3)
{
  if (a3 != 6)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 118, "ProcessRpcNvRamResponse", "ucNumUL == NVRAM_WORD_SIZE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 118, "ucNumUL == NVRAM_WORD_SIZE");
  }

  v4 = *(a2 + 2);
  *(this + 4) = *a2;
  *(this + 20) = v4;
  *this = 257;
  v5 = *(this + 1);
  *(this + 1) = v5 & 0xFFFFFF;
  v8 = 0;
  result = BlueFin::GlUtlCrc::GlUtlCrcCalc(&v8, this + 1, 6u);
  if ((v5 & 0xFF0000) != 0x30000 || HIBYTE(v5) != result)
  {
    *this = 0;
  }

  *(this + 1) = v5;
  return result;
}

uint64_t BlueFin::GlMeSrdNvRamReader::IsInvalidateFlagSet(BlueFin::GlMeSrdNvRamReader *this)
{
  if ((*this & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 155, "IsInvalidateFlagSet", "m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 155, "m_bValid");
  }

  return (*(this + 4) >> 1) & 1;
}

uint64_t BlueFin::GlMeSrdNvRamReader::GetRtc11bitsMsb(BlueFin::GlMeSrdNvRamReader *this)
{
  if ((*this & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 162, "GetRtc11bitsMsb", "m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 162, "m_bValid");
  }

  return *(this + 2) >> 5;
}

uint64_t BlueFin::GlMeSrdNvRamReader::GetRtcLsb(BlueFin::GlMeSrdNvRamReader *this)
{
  if ((*this & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 170, "GetRtcLsb", "m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 170, "m_bValid");
  }

  return *(this + 2);
}

uint64_t BlueFin::GlMeSrdNvRamReader::GetDataReg1(BlueFin::GlMeSrdNvRamReader *this)
{
  if ((*this & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 178, "GetDataReg1", "m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 178, "m_bValid");
  }

  return *(this + 3);
}

uint64_t BlueFin::GlMeSrdNvRamReader::GetDataReg2(BlueFin::GlMeSrdNvRamReader *this)
{
  if ((*this & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 186, "GetDataReg2", "m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 186, "m_bValid");
  }

  return *(this + 4);
}

uint64_t BlueFin::GlMeSrdNvRamReader::GetDataReg3(BlueFin::GlMeSrdNvRamReader *this)
{
  if ((*this & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 194, "GetDataReg3", "m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 194, "m_bValid");
  }

  return *(this + 5);
}

uint64_t BlueFin::GlMeSrdNvRamWriter::SendNvramToEsw(BlueFin::GlMeSrdNvRamWriter *this, BlueFin::GlMeSrdTransaction *a2, int a3)
{
  v3 = *this;
  if (HIBYTE(*this))
  {
    DeviceFaultNotify("glmesrd_nvram.cpp", 262, "SendNvramToEsw", "(m_ulNvRam[NVRAM_ESW_CRC_REGISTER]&NVRAM_ESW_CRC_MASK) == 0x0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_nvram.cpp", 262, "(m_ulNvRam[NVRAM_ESW_CRC_REGISTER]&NVRAM_ESW_CRC_MASK) == 0x0");
  }

  if (a3)
  {
    v3 |= 2u;
  }

  *this = v3 | 0x30000;
  v8 = 0;
  *this = v3 | 0x30000 | (BlueFin::GlUtlCrc::GlUtlCrcCalc(&v8, this, 6u) << 24);
  v5 = (*(**(a2 + 3) + 48))(*(a2 + 3));
  v6 = *(*(*(*v5 + 16))(v5) + 120);

  return v6();
}

uint64_t BlueFin::GlHealthProfileData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v15 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = 3;
    }

    if (v6 >= 4)
    {
      DeviceFaultNotify("glmesrd_pwrmeas.cpp", 52, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_pwrmeas.cpp", 52, "ucVersion >= 1 && ucVersion <= 3");
    }

    v11 = 116;
    v12 = v6;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F09520;
    v14 = v6;
    v7 = v1 + 8;
    BlueFin::GlSysLogEntry::PutU32(&v10, **(v1 + 8));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 4));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 148));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 8));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 16));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 35));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 24));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 26));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 34));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 44));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 20));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 28));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 48));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 52));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 58));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 32));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 56));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 80));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 84));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 88));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 92));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 96));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 100));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 104));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 108));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 112));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 116));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 120));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(v5 + 17));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 124));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 128));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 132));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 136));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 138));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 36));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 30));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 40));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 42));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 60));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 64));
    BlueFin::GlSysLogEntry::PutS16(&v10, *(*v7 + 66));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 68));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 72));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 73));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 74));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 75));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 76));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 77));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 78));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 79));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 70));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(*v7 + 140));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(*v7 + 144));
    BlueFin::GlSysLogEntry::PutU8(&v10, *(*v7 + 38));
    if (v6 >= 2)
    {
      BlueFin::GlSysLogEntry::PutU8(&v10, *(*(v5 + 8) + 157));
      BlueFin::GlSysLogEntry::PutS16(&v10, *(*(v5 + 8) + 158));
      if (v6 == 3)
      {
        BlueFin::GlSysLogEntry::PutU32(&v10, *(*(v5 + 8) + 160));
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlHealthProfileData::Deserialize(BlueFin::GlHealthProfileData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 116 || *(a2 + 12) - 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  **(this + 1) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 148) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 12) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 16) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 35) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 24) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 26) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 34) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 44) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 20) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 28) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 48) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 52) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 58) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 32) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 56) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 80) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 84) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 88) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 92) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 16) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 96) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 100) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 104) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 108) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 112) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 116) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 120) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 17) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 124) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 128) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 132) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 136) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 138) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 36) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 30) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 40) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 42) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 60) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 64) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 66) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(*(this + 1) + 68) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 72) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 73) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 74) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 75) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 76) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 77) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 78) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 79) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 1) + 70) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 140) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(*(this + 1) + 144) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(*(this + 1) + 38) = BlueFin::GlSysLogEntry::GetU8(a2);
  if (*(a2 + 12) >= 2u)
  {
    *(*(this + 1) + 157) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(*(this + 1) + 158) = BlueFin::GlSysLogEntry::GetS16(a2);
    if (*(a2 + 12) >= 3u)
    {
      *(*(this + 1) + 160) = BlueFin::GlSysLogEntry::GetU32(a2);
    }
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glmesrd_pwrmeas.cpp", 244, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_pwrmeas.cpp", 244, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

char *BlueFin::GlMeSrdCaNoiseStats::GetNoiseType(int a1)
{
  if (a1 >= 9)
  {
    DeviceFaultNotify("glmesrd_stats.cpp", 40, "GetNoiseType", "etType < MAX_NOISE_TYPES");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_stats.cpp", 40, "etType < MAX_NOISE_TYPES");
  }

  return &BlueFin::GlMeSrdCaNoiseStats::aucNOISE_TYPE_STR[10 * a1];
}

void BlueFin::GlMeSrdStats::~GlMeSrdStats(BlueFin::GlMeSrdStats *this, double a2)
{
  if ((*(this + 992) & 1) == 0)
  {
    BlueFin::GlMeSrdStats::ReportStats(this, a2);
  }

  *(this + 232) = 0;
  *(this + 466) = 0;
  *(this + 123) = 0;
  *(this + 117) = 0;
  *(this + 942) = 0;
  *(this + 119) = 0;
  *(this + 958) = 0;
  *(this + 121) = 0;
  *(this + 974) = 0;
}

void BlueFin::GlMeSrdStats::ReportStats(BlueFin::GlMeSrdStats *this, double a2)
{
  *(this + 992) = 1;
  LODWORD(a2) = *(this + 2);
  v3 = *&a2 / 1000.0;
  GlCustomLog(13, "Gll Ran for %.1f Secs\n", v3);
  v4 = 0.0;
  v5 = 0.0;
  if (v3 != 0.0)
  {
    LODWORD(v5) = *(this + 10);
    v5 = *&v5 / v3;
  }

  GlCustomLog(13, "Serial Tx:  %u packets Tx'd, %u Seq errors, %u CRC errors, Avg Rate=%.1f bytes/sec\n", *(this + 4), *(this + 8), *(this + 6), v5);
  if (v3 != 0.0)
  {
    LODWORD(v6) = *(this + 11);
    v4 = v6 / v3;
  }

  GlCustomLog(13, "Serial Rx:  %u packets Rx'd, %u Seq errors, %u CRC errors, %u Malformed Pckts, Avg Rate=%.1f bytes/sec\n", *(this + 5), *(this + 9), *(this + 7), *(this + 3), v4);
  v7 = 0;
  v8 = 0;
  do
  {
    v8 += *(this + v7 + 48);
    v7 += 4;
  }

  while (v7 != 36);
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = 100.0 / v8;
  BlueFin::ReportRoundtrip("    0ms<=x< 250ms:", *(this + 12), v9 * *(this + 12));
  BlueFin::ReportRoundtrip("  250ms<=x< 500ms:", *(this + 13), v9 * *(this + 13));
  BlueFin::ReportRoundtrip("  500ms<=x< 750ms:", *(this + 14), v9 * *(this + 14));
  BlueFin::ReportRoundtrip("  750ms<=x<1000ms:", *(this + 15), v9 * *(this + 15));
  BlueFin::ReportRoundtrip(" 1000ms<=x<1250ms:", *(this + 16), v9 * *(this + 16));
  BlueFin::ReportRoundtrip(" 1250ms<=x<1500ms:", *(this + 17), v9 * *(this + 17));
  BlueFin::ReportRoundtrip(" 1500ms<=x<1750ms:", *(this + 18), v9 * *(this + 18));
  BlueFin::ReportRoundtrip(" 1750ms<=x<2000ms:", *(this + 19), v9 * *(this + 19));
  BlueFin::ReportRoundtrip(" 2000ms<=x:       ", *(this + 20), v9 * *(this + 20));
  v10 = *(this + 8);
  v11 = *(this + 6);
  if (v10)
  {
    v12 = *(this + 9);
    v13 = *(this + 7);
  }

  else
  {
    v12 = *(this + 9);
    v13 = *(this + 7);
    if (!(v11 | v12))
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v12 = 0;
    }
  }

  GlCustomLog(11, "Communication error, TxSeqErr, %u, TxCrcErr, %u, RxSeqErr, %u, RxCrcErr, %u\n", v10, v11, v12, v13);
LABEL_15:
  v14 = 0;
  v15 = (this + 632);
  v16 = -15;
  do
  {
    v17 = *v15;
    if (*v15)
    {
      if ((v14 & 1) == 0)
      {
        GlCustomLog(13, "WER Statistics\n");
        v17 = *v15;
      }

      v18 = v15[15];
      v19 = 1.0 - v18 / v17;
      v20 = v17 - v18;
      v21 = BlueFin::GlMePlatfStat::hist2cn0(v16 + 15);
      GlCustomLog(13, "%8sdBHz Fail Rate=%.1f%% (%u out of %u)\n", v21, v19 * 100.0, v20, v17);
      v14 = 1;
    }

    ++v15;
  }

  while (!__CFADD__(v16++, 1));
  v23 = *(this + 464);
  v24 = *(this + 472);
  v25 = 0.0;
  v26 = 0.0;
  v27 = *(this + 480);
  if (*(this + 464))
  {
    v26 = *(this + 465) / v23 * 100.0;
  }

  v58 = *(this + 465);
  v28 = *(this + 488);
  if (*(this + 472))
  {
    v25 = *(this + 473) / v24 * 100.0;
  }

  v57 = *(this + 473);
  v29 = 0.0;
  v30 = 0.0;
  if (*(this + 480))
  {
    v30 = *(this + 481) / v27 * 100.0;
  }

  v59 = *(this + 481);
  if (*(this + 488))
  {
    v29 = *(this + 489) / v28 * 100.0;
  }

  v31 = *(this + 466);
  v32 = 0.0;
  v33 = 0.0;
  if (*(this + 464))
  {
    v33 = v31 / v23 * 100.0;
  }

  if (*(this + 472))
  {
    v32 = *(this + 474) / v24 * 100.0;
  }

  v55 = *(this + 474);
  v34 = 0.0;
  v35 = 0.0;
  if (*(this + 480))
  {
    v35 = *(this + 482) / v27 * 100.0;
  }

  v56 = *(this + 482);
  v60 = *(this + 489);
  v36 = *(this + 234);
  v37 = *(this + 235);
  v38 = *(this + 238);
  v39 = *(this + 239);
  v51 = *(this + 242);
  v50 = *(this + 243);
  v54 = *(this + 246);
  v53 = *(this + 247);
  if (*(this + 488))
  {
    v34 = *(this + 490) / v28 * 100.0;
  }

  v52 = *(this + 490);
  GlCustomLog(13, "PFA Statistics\n");
  GlCustomLog(13, "GNSS,  Detect(#),  Detect(%%),   Xcorr(#),   Xcorr(%%), Attempt(#), ValidPR(#), ValidRR(#)\n");
  GlCustomLog(13, " GPS, %10u, %10.2f, %10u, %10.2f, %10u, %10u, %10u\n", v58, v26, v31, v33, v23, v36, v37);
  GlCustomLog(13, "GLNS, %10u, %10.2f, %10u, %10.2f, %10u, %10u, %10u\n", v57, v25, v55, v32, v24, v38, v39);
  GlCustomLog(13, " BDS, %10u, %10.2f, %10u, %10.2f, %10u, %10u, %10u\n", v59, v30, v56, v35, v27, v51, v50);
  GlCustomLog(13, " GAL, %10u, %10.2f, %10u, %10.2f, %10u, %10u, %10u\n", v60, v29, v52, v34, v28, v54, v53);
  v40 = 0;
  for (i = 0; i != 216; i += 24)
  {
    if (!*(*(this + 159) + i + 16))
    {
      goto LABEL_54;
    }

    v42 = *(this + 128);
    v43 = (*(**(this + 129) + 16))(*(this + 129));
    if (v40 > 3)
    {
      switch(v40)
      {
        case 4:
          v44 = (*(*v42 + 40))(v42, v43, 5, 2);
          break;
        case 5:
          v44 = (*(*v42 + 40))(v42, v43, 5, 1);
          break;
        case 7:
          v44 = (*(*v42 + 40))(v42, v43, 6, 0);
          break;
        default:
          goto LABEL_54;
      }
    }

    else if (v40)
    {
      if (v40 == 1)
      {
        v44 = (*(*v42 + 40))(v42, v43, 2, 0);
      }

      else
      {
        if (v40 != 2)
        {
          goto LABEL_54;
        }

        v44 = (*(*v42 + 40))(v42, v43, 4, 0);
      }
    }

    else
    {
      v44 = (*(*v42 + 40))(v42, v43, 0, 0);
    }

    v45 = v44;
    if (v44 > 0.0)
    {
      NoiseType = BlueFin::GlMeSrdCaNoiseStats::GetNoiseType(v40);
      GlCustomLog(13, "GlMeSrdNoiseStatsMgr::LogNoiseStats(%s) Measured Noise(u:%f, o:%f, c:%i) GLL Noise Table(u:%f, %%Err:%f)\n", NoiseType, *(*(this + 159) + i + 8), *(*(this + 159) + i + 4), *(*(this + 159) + i + 16), v45, (((*(*(this + 159) + i + 8) - v45) * 100.0) / v45));
    }

LABEL_54:
    ++v40;
  }

  v47 = 0;
  for (j = 0; j != 9; ++j)
  {
    if (*(*(this + 159) + v47 + 16))
    {
      v49 = BlueFin::GlMeSrdCaNoiseStats::GetNoiseType(j);
      GlCustomLog(13, "GlMeSrdNoiseStatsMgr::LogTrkDrDagcStats(%s) Measured Trk DAGC(u:%f, o:%f, c:%i)\n", v49, *(*(this + 187) + v47 + 8), *(*(this + 187) + v47 + 4), *(*(this + 187) + v47 + 16));
    }

    v47 += 24;
  }
}

uint64_t BlueFin::ReportRoundtrip(BlueFin *this, const char *a2, double a3)
{
  if (a3 >= 0.1 || a2 == 0)
  {
    return GlCustomLog(13, "%s  %.1f%%\n");
  }

  else
  {
    return GlCustomLog(13, "%s  %.1f%% (%u times)\n");
  }
}

uint64_t BlueFin::GlMeSrdStats::SetTrkMsmtIQPower(BlueFin::GlMeSrdStats *this, int a2, int a3, const BlueFin::GlSignalId *a4)
{
  result = BlueFin::GlIqData::Svid2EnumGnssIQ(this, a4, *(a4 + 1));
  if (result > 7)
  {
    return GlCustomLog(14, "<FTPHN> Error: Phase noise track measurements not saved for svid %d %s\n", *a4, BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]]]);
  }

  v9 = this + 4 * result;
  *(v9 + 25) = a2;
  *(v9 + 33) = a3;
  *(this + 96) = 1;
  return result;
}

double BlueFin::GlIQData::Init(BlueFin::GlIQData *this, const BlueFin::GlSignalId *a2, const double *a3)
{
  v3 = *a3;
  if (*a3 < 0.001)
  {
    DeviceFaultNotify("glmesrd_stats.cpp", 675, "Init", "1.0/(DOUBLE)MAX_SAMPLE_PER_SEC <= dCohTimeInSec");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_stats.cpp", 675, "1.0/(DOUBLE)MAX_SAMPLE_PER_SEC <= dCohTimeInSec");
  }

  if ((this + 10012) != a2)
  {
    *(this + 10012) = *a2;
    *(this + 2504) = *(a2 + 1);
    *(this + 5010) = *(a2 + 4);
  }

  *(this + 1253) = v3;
  result = 1.0 / *a3;
  *(this + 2502) = 5 * result;
  return result;
}

void BlueFin::GlIQData::SetIQData(BlueFin::GlIQData *this, const signed __int8 *a2, const signed __int8 *a3, const unsigned int *a4, const double *a5)
{
  v10 = *(this + 2500);
  if (v10 && *a4 - v10 >= 0x3E9)
  {
    *(this + 1253) = 0;
    *(this + 10032) = 0;
    bzero(this, 0x271CuLL);
  }

  v11 = *a5;
  *(this + 2502) = 5 * (1.0 / *a5);
  *(this + 1253) = v11;
  *(this + *(this + 2501)) = *a2;
  *(this + *(this + 2501) + 5000) = *a3;
  *(this + 2500) = *a4;
  v12 = *(this + 2501) + 1;
  *(this + 2501) = v12;
  if (v12 >= *(this + 2502))
  {
    *(this + 2501) = 0;
    *(this + 10032) = 1;
  }
}

uint64_t BlueFin::GlIQSnrStatsMgr::UpdateIQDataIdx(BlueFin::GlIQSnrStatsMgr *this, const BlueFin::GlSignalId *a2, const double *a3)
{
  v3 = this + 36864;
  v4 = *(this + 10042);
  v5 = *(this + 5020);
  if (v4)
  {
    v6 = 0;
    v7 = (v5 + 10016);
    do
    {
      if (*a2 == *(v7 - 4) && *(a2 + 1) == *v7)
      {
        return v6;
      }

      ++v6;
      v7 += 2510;
    }

    while (v6 != 4);
    if (v4 <= 3)
    {
      v5 = (v5 + 10040 * v4);
      goto LABEL_8;
    }

    return 4;
  }

  else
  {
LABEL_8:
    BlueFin::GlIQData::Init(v5, a2, a3);
    ++*(v3 + 826);
  }

  return v4;
}

void BlueFin::GlIQSnrStatsMgr::SetIQData(BlueFin::GlIQSnrStatsMgr *a1, const BlueFin::GlSignalId *a2, const double *a3, uint64_t a4)
{
  updated = BlueFin::GlIQSnrStatsMgr::UpdateIQDataIdx(a1, a2, a3);
  if (updated != 4 && !*(a4 + 4) && *(a4 + 1))
  {
    v8 = 0;
    v9 = (a4 + 13);
    v10 = updated;
    do
    {
      v11 = (*(a1 + 5020) + 10040 * v10);
      v14 = *(v9 - 1);
      v12 = *v9;
      v9 += 4;
      v13 = v12;
      BlueFin::GlIQData::SetIQData(v11, &v14, &v13, (a4 + 8), a3);
      ++v8;
    }

    while (v8 < *(a4 + 1));
  }
}

uint64_t BlueFin::GlMeSrdStats::ReportLegacyIqData(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = v1 + 40960;
  result = GlCustomLog(126, "IQDUMP,%d,%d:%s,%d", *(v2 + 8), BlueFin::GlSvId::s_aucSvId2prn[*v4], BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v4 + 1) - *(v4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v4]]], *(v2 + 1));
  v9 = *(v5 + 4) - *(v7 + 1988);
  if (v9 >= *(v7 + 1990))
  {
    v27 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v28 = "glinc_array.h";
    v29 = 313;
    goto LABEL_24;
  }

  v10 = *(v7 + 1968);
  if (*(v10 + 2 * v9) != -1)
  {
    if (*(v3 + 1) > 0xFAu)
    {
      return result;
    }

    v11 = *(v10 + 2 * (*(v5 + 4) - *(v7 + 1988)));
    if (v11 != 0xFFFF)
    {
      if (*(v7 + 1992) <= v11)
      {
        v27 = "slot < m_usNumSlots";
        DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
        v28 = "glinc_array.h";
        v29 = 319;
        goto LABEL_24;
      }

      v12 = *(v7 + 1960);
      if (v12)
      {
        v13 = (v12 + *(v7 + 1984) * v11);
        v14 = 1000000000 * *(v3 + 8);
        v15 = v14 - *v13;
        if ((v15 + 0x2E90EDCFFFLL) > 0x1176592DFFELL)
        {
          GlCustomLog(126, " Wrong block idx %d\n", v15 / 200000000000);
          v26 = *(v5 + 4);

          return BlueFin::GlBigArray::Remove(v6 + 42920, v26);
        }

        else
        {
          GlCustomLog(126, ",%d\n", v15 / 200000000000);
          v16 = &v13[v15 / 200000000000];
          v17 = *(v3 + 1);
          v18 = *v5;
          v19 = *v5;
          if ((v18 - 52) >= 0xE)
          {
            v19 = BlueFin::GlSvId::s_aucSvId2prn[*v5];
          }

          v20 = v16[1];
          v30[0] = v19;
          v21 = *(v5 + 1);
          v31 = BlueFin::GlSvId::s_aucSvId2gnss[v18];
          v32 = v21;
          v33 = v17;
          if (v17)
          {
            v22 = v16[6];
            v23 = v34;
            v24 = v3 + 13;
            v25 = v20 / v17;
            do
            {
              *(v23 - 1) = *(v24 - 1);
              *(v23 - 9) = v22;
              *(v23 - 17) = v14;
              v14 += v25;
              v23 += 24;
              v24 += 4;
              --v17;
            }

            while (v17);
          }

          GlCustomLog(126, "\n");
          result = (*(**(v7 + 800) + 264))(*(v7 + 800), v30);
          if ((v15 - 800000000000) < 0x2E90EDD000)
          {
            return BlueFin::GlBigArray::Remove(v6 + 42920, *(v5 + 4));
          }
        }

        return result;
      }
    }

    v27 = "nullptr != pAcqWin";
    DeviceFaultNotify("glmesrd_stats.cpp", 907, "ReportLegacyIqData", "nullptr != pAcqWin");
    v28 = "glmesrd_stats.cpp";
    v29 = 907;
LABEL_24:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v28, v29, v27);
  }

  return GlCustomLog(126, "IQDUMP Warning: Missing AcqWin\n");
}

void BlueFin::GlMeSrdSyncIn::~GlMeSrdSyncIn(BlueFin::GlMeSrdSyncIn *this)
{
  *this = &unk_2A1F0B7D8;
  BlueFin::GlEventPump::RemoveActive(*(this + 16), this);
}

{
  BlueFin::GlMeSrdSyncIn::~GlMeSrdSyncIn(this);

  JUMPOUT(0x29C292F60);
}

void BlueFin::GlMeSrdSyncIn::DisarmESW(BlueFin::GlMeSrdSyncIn *this)
{
  v2 = (*(**(this + 14) + 80))(*(this + 14));
  v5[0] = BlueFin::GlMeSrdSyncIn::OnReliableAck;
  v5[1] = this;
  v6 = 257;
  v7 = 0;
  v8 = v2;
  v9 = 0;
  v10 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = (*(*v2 + 48))(v2);
  v4 = (*(*v3 + 40))(v3);
  (*(*v4 + 24))(v4, v5, 1);
  BlueFin::GlMeSrdTransaction::Complete(v5);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v5);
}

void sub_298969750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*BlueFin::GlMeSrdSyncIn::wait4disarm(void *a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = 0;
  v3 = *a2;
  if ((v3 - 2) >= 2 && v3 != 41)
  {
    if (v3 == 13)
    {
      if (a2[1] == 1)
      {
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdSyncIn::idle, "&GlMeSrdSyncIn::idle");
      }

      return 0;
    }

    else
    {
      return BlueFin::GlMeSrdSyncIn::running;
    }
  }

  return v2;
}

unint64_t BlueFin::GlMeSrdRpcGeoRpt::gll_georpt_rpc_internal_state(uint64_t a1, uint64_t a2)
{
  v15 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(*(a2 + 28)), vdupq_n_s64(0x3F50624DD2F1A9FCuLL)), vdupq_n_s64(0x41B1DE784A000000uLL));
  v16 = *(a2 + 36) * 0.001 * 299792458.0;
  v4 = *(a2 + 48);
  v18 = vcvtq_f64_f32(*(a2 + 40));
  v17 = 0;
  v5 = *(a2 + 24);
  LODWORD(v19) = *a2;
  HIDWORD(v19) = v5;
  v20 = v4;
  v21 = *(a2 + 56);
  v6 = *(a1 + 8);
  *(v6 + 704) = *(a2 + 6);
  v7 = *(v6 + 240);
  v31 = 0;
  LODWORD(v27) = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v8 = (*(*v7 + 112))(v7, &v31, &v27, &v30 + 4, &v30, &v29 + 4, &v29, &v28, *&v15.f64[0], *&v15.f64[1], COERCE_DOUBLE(*&v16), v17, *&v18.f64[0], *&v18.f64[1], v19, v20, v21);
  v9 = 0;
  if (v8)
  {
    v10 = 0;
    if (v31)
    {
      v9 = *(a2 + 60);
      v10 = *(a2 + 62);
    }
  }

  else
  {
    v10 = 0;
  }

  v22 = v9;
  v23 = v10;
  v11 = *(a2 + 4);
  v24 = (v11 & 2) != 0;
  v25 = (v11 & 4) != 0;
  v26 = *(a2 + 6);
  (*(**(*(a1 + 8) + 232) + 224))(*(*(a1 + 8) + 232), &v15);
  WORD2(v30) = 55;
  v12 = *(a1 + 8);
  v13 = *(v12 + 32);
  result = *(v12 + 8);
  *(v12 + 32) = result;
  do
  {
    v27 = 0;
    if (BlueFin::patch_dispatch(result, v12, &v30 + 4, &v27))
    {
      result = v27;
    }

    else
    {
      result = (*(v12 + 32))(v12, &v30 + 4);
    }

    *(v12 + 32) = result;
  }

  while (result);
  *(v12 + 32) = v13;
  return result;
}

uint64_t (***BlueFin::GlMeSrdTransCbStub::OnAsicData(BlueFin::GlMeSrdTransCbStub *this, unsigned __int8 *a2, unsigned __int16 a3))(void, unsigned __int8 *, void)
{
  result = *(this + 1);
  if (result)
  {
    return (**result)(result, a2, a3);
  }

  return result;
}

void BlueFin::GlMeSrdRpcGeoRpt::gll_georpt_rpc_raw_rpcs(BlueFin::GlMeSrdRpcGeoRpt *this, unsigned __int8 a2, unsigned __int8 a3, unsigned __int16 a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = MEMORY[0x2A1C7C4A8](this);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v16;
  STACK[0x4428] = *MEMORY[0x29EDCA608];
  vars8 = &unk_2A1F0B910;
  BlueFin::GlMeSrdTransactionManager::GlMeSrdTransactionManager(&a11, &vars8, *(v16 + 16), 0);
  *(a16 + 6516) = 0;
  v26 = (*(**(*(v25 + 8) + 248) + 16))(*(*(v25 + 8) + 248));
  BlueFin::GlMeSrdTransactionManager::RegisterSatRpt(&a11, v26);
  BlueFin::GlMeSrdTransactionManager::RegisterEvents(&a11, *(*(v25 + 8) + 256));
  memset(v33, 0, 19);
  v33[3] = &a15;
  vars0 = 0;
  vars0_4 = 0;
  (*(a15 + 16))();
  BlueFin::GlMeSrdTransaction::Add(v33, v24, v22, v18, v20);
  BlueFin::GlMeSrdTransaction::Complete(v33);
  v27 = (*(**(*(v25 + 8) + 248) + 16))(*(*(v25 + 8) + 248));
  BlueFin::GlMeSrdTransactionManager::UnregisterSatRpt(&a11, v27);
  BlueFin::GlMeSrdTransactionManager::UnregisterEvents(&a11, *(*(v25 + 8) + 256));
  HIWORD(v32) = 56;
  v28 = *(v25 + 8);
  v29 = *(v28 + 32);
  v30 = *(v28 + 8);
  *(v28 + 32) = v30;
  do
  {
    a10 = 0;
    if (BlueFin::patch_dispatch(v30, v28, &v32 + 6, &a10))
    {
      v30 = a10;
    }

    else
    {
      v30 = (*(v28 + 32))(v28, &v32 + 6);
    }

    *(v28 + 32) = v30;
  }

  while (v30);
  *(v28 + 32) = v29;
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v33);
  BlueFin::GlMeSrdTransactionManager::~GlMeSrdTransactionManager(&a11);
  v31 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x4428]);
}

void sub_298969C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  BlueFin::GlMeSrdTransactionManager::~GlMeSrdTransactionManager(va);
  _Unwind_Resume(a1);
}

unint64_t BlueFin::GlMeSrdRpcGeoRpt::gll_georpt_rpc_host_request(BlueFin::GlMeSrdRpcGeoRpt *this, unsigned __int8 a2)
{
  v5[0] = 57;
  v5[1] = a2;
  v2 = *(this + 1);
  v3 = *(v2 + 32);
  result = *(v2 + 8);
  *(v2 + 32) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, v2, v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(v2 + 32))(v2, v5);
    }

    *(v2 + 32) = result;
  }

  while (result);
  *(v2 + 32) = v3;
  return result;
}

unint64_t BlueFin::GlMeSrdGeofenceIfcImpl::AllocateEswResources(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v2[32] = a2;
  v5 = 309;
  v3 = v2[4];
  result = v2[1];
  v2[4] = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, v2, &v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (v2[4])(v2, &v5);
    }

    v2[4] = result;
  }

  while (result);
  v2[4] = v3;
  return result;
}

unint64_t BlueFin::GlMeSrdGeofenceIfcImpl::FreeEswResources(BlueFin::GlMeSrdGeofenceIfcImpl *this)
{
  v1 = *(this + 1);
  v1[32] = 0;
  v4 = 53;
  v2 = v1[4];
  result = v1[1];
  v1[4] = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (v1[4])(v1, &v4);
    }

    v1[4] = result;
  }

  while (result);
  v1[4] = v2;
  return result;
}

unint64_t BlueFin::GlMeSrdGeofenceIfcImpl::SetGeofenceData(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v3[24] = a2;
  v6 = 54;
  v4 = v3[4];
  result = v3[1];
  v3[4] = result;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(result, v3, &v6, &v7))
    {
      result = v7;
    }

    else
    {
      result = (v3[4])(v3, &v6);
    }

    v3[4] = result;
  }

  while (result);
  v3[4] = v4;
  *(*(a1 + 8) + 192) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdGeofenceIfcImpl::SetGeofenceSettings(uint64_t this, unsigned int a2, char a3)
{
  v3 = *(this + 8);
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  *(v3 + 708) = v4;
  *(v3 + 712) = a3;
  return this;
}

unint64_t BlueFin::GlMeSrdGeofenceIfcImpl::GetGeofenceState(BlueFin::GlMeSrdGeofenceIfcImpl *this)
{
  v4 = 58;
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  result = *(v1 + 8);
  *(v1 + 32) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(v1 + 32))(v1, &v4);
    }

    *(v1 + 32) = result;
  }

  while (result);
  *(v1 + 32) = v2;
  return result;
}

void BlueFin::GlMeSrdGeofenceMgr::~GlMeSrdGeofenceMgr(BlueFin::GlMeSrdGeofenceMgr *this)
{
  *this = &unk_2A1F0B810;
  BlueFin::GlEventPump::RemoveActive(*(this + 28), this);
}

{
  BlueFin::GlMeSrdGeofenceMgr::~GlMeSrdGeofenceMgr(this);

  JUMPOUT(0x29C292F60);
}

unint64_t BlueFin::GlMeSrdGeofenceMgr::OnReliableTransactionAck(BlueFin::GlMeSrdGeofenceMgr *this, void *a2)
{
  v5[0] = 13;
  v5[1] = a2;
  v3 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, this, v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(this + 4))(this, v5);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v3;
  return result;
}

uint64_t (*BlueFin::GlMeSrdGeofenceMgr::running(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::QHsm::top;
  if (v3 > 2)
  {
    if (*a2 > 0x34u)
    {
      if (v3 == 53)
      {
        if (!a2[1])
        {
          BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdGeofenceMgr::idle, "&GlMeSrdGeofenceMgr::idle");
          return 0;
        }

        v22 = "e->par == 0";
        DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 328, "running", "e->par == 0");
        v23 = 328;
      }

      else
      {
        if (v3 != 54)
        {
          return v4;
        }

        v22 = "0";
        DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 335, "running", "0");
        v23 = 335;
      }
    }

    else
    {
      if (v3 == 3)
      {
        (*(**(a1 + 200) + 192))(*(a1 + 200), a1 + 280);
        (*(**(a1 + 200) + 32))(*(a1 + 200), 1000);
        return 0;
      }

      if (v3 != 13)
      {
        return v4;
      }

      v22 = "0";
      DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 341, "running", "0");
      v23 = 341;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", v23, v22);
  }

  if (v3 == 1)
  {
    *(a1 + 8) = BlueFin::GlMeSrdGeofenceMgr::hostsleep;
    v20 = *(a1 + 16);
    if (*(a1 + 24) != v20)
    {
      *(a1 + 24) = v20;
    }

    v4 = 0;
    *(a1 + 16) = "&GlMeSrdGeofenceMgr::hostsleep";
  }

  else if (v3 == 2)
  {
    (*(**(a1 + 200) + 32))(*(a1 + 200), 10000);
    (*(**(a1 + 200) + 184))(*(a1 + 200), a1 + 280);
    v39 = 40791555;
    v5 = (*(**(a1 + 200) + 80))(*(a1 + 200));
    v33 = 0;
    v34 = 0;
    v35[0] = 0;
    *&v35[1] = 1;
    v36 = v5;
    v37 = 0;
    v38 = 0;
    (*(*v5 + 16))(v5, 1);
    v27 = 16385;
    v28 = (*(**(a1 + 240) + 72))(*(a1 + 240));
    v29 = 0;
    v30 = (*(**(a1 + 240) + 72))(*(a1 + 240));
    v6 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    v31 = v6[76];
    v32 = v6[139];
    v7 = (*(**(a1 + 200) + 208))(*(a1 + 200));
    v8 = (*(*v7 + 48))(v7);
    (*(*v8 + 32))(v8, &v33, &v27);
    v9 = (*(**(a1 + 200) + 208))(*(a1 + 200));
    v10 = (*(*v9 + 48))(v9);
    (*(*v10 + 128))(v10, &v33, 1, &v39);
    v25 = (*(**(a1 + 240) + 584))(*(a1 + 240));
    v26 = 0x100000001;
    v11 = (*(**(a1 + 200) + 208))(*(a1 + 200));
    v12 = (*(*v11 + 16))(v11);
    (*(*v12 + 80))(v12, &v33, &v25);
    if (*(a1 + 712) == 1)
    {
      v25 = (*(**(a1 + 240) + 592))(*(a1 + 240));
      v26 = 1;
      v13 = (*(**(a1 + 200) + 208))(*(a1 + 200));
      v14 = (*(*v13 + 16))(v13);
      (*(*v14 + 80))(v14, &v33, &v25);
    }

    BlueFin::GlMeSrdGeofenceMgr::GetDefaultGeofenceMode(a1, v24, 0);
    v15 = (*(**(a1 + 200) + 208))(*(a1 + 200));
    v16 = (*(*v15 + 72))(v15);
    (*(*v16 + 72))(v16, &v33, v24);
    BlueFin::GlMeSrdTransaction::Complete(&v33);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v33);
    v17 = (*(**(a1 + 200) + 80))(*(a1 + 200));
    v33 = BlueFin::GlMeSrdGeofenceMgr::OnReliableTransactionAck;
    v34 = a1;
    *v35 = 257;
    v35[2] = 0;
    v36 = v17;
    v37 = 0;
    v38 = 0;
    (*(*v17 + 16))(v17, 1);
    v18 = (*(**(a1 + 200) + 208))(*(a1 + 200));
    v19 = (*(*v18 + 72))(v18);
    (*(*v19 + 88))(v19, &v33);
    BlueFin::GlMeSrdTransaction::Complete(&v33);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v33);
    return 0;
  }

  return v4;
}

void sub_29896A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*BlueFin::GlMeSrdGeofenceMgr::hostsleep(const void **this, unsigned __int8 *a2))()
{
  v2 = this;
  v202[153] = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (v3 <= 0x35)
  {
    if (*a2 <= 4u)
    {
      if (v3 == 2)
      {
        this[23] = this;
        BlueFin::GlTimer::arm((this + 19), 5, 1, 0x7D0u);
        result = 0;
        *(v2 + 176) = 1;
        goto LABEL_194;
      }

      if (v3 == 3)
      {
        BlueFin::GlTimer::disarm(this + 19);
        result = 0;
        *(v2 + 175) = 3;
        goto LABEL_194;
      }

      goto LABEL_99;
    }

    if (v3 == 5)
    {
      if (a2[1] == 1)
      {
        goto LABEL_100;
      }

      if (a2[1])
      {
        goto LABEL_193;
      }
    }

    else
    {
      if (v3 != 13)
      {
        goto LABEL_99;
      }

      v5 = a2[1];
      if (a2[1])
      {
        if (v5 == 2)
        {
          *(this + 730) = 0;
          if (*(this + 727) == 1)
          {
            result = 0;
            *(v2 + 727) = 0;
            goto LABEL_194;
          }

          goto LABEL_193;
        }

        if (v5 != 1)
        {
          goto LABEL_193;
        }

LABEL_100:
        result = 0;
        *(v2 + 728) = 0;
        goto LABEL_194;
      }
    }

    result = 0;
    *(v2 + 729) = 0;
    goto LABEL_194;
  }

  if (*a2 > 0x37u)
  {
    if (v3 != 56)
    {
      if (v3 != 57)
      {
        if (v3 != 58)
        {
          goto LABEL_99;
        }

        goto LABEL_192;
      }

      v61 = a2[1];
      if (v61 > 3)
      {
        if (v61 == 4)
        {
          (*(*this[29] + 232))(this[29], 2);
          goto LABEL_193;
        }

        if (v61 != 8)
        {
          goto LABEL_210;
        }

        v62 = *(*this[29] + 232);
      }

      else
      {
        if (v61 != 1)
        {
          if (v61 == 2)
          {
            (*(*this[29] + 232))(this[29], 1);
            BlueFin::GlMeSrdGeofenceMgr::AskForState(v2);
            result = 0;
            *(v2 + 730) = 1;
            goto LABEL_194;
          }

LABEL_210:
          v148 = "0";
          DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 428, "hostsleep", "0");
          v149 = 428;
LABEL_207:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", v149, v148);
        }

        v62 = *(*this[29] + 232);
      }

      v62();
LABEL_192:
      BlueFin::GlMeSrdGeofenceMgr::AskForState(v2);
    }

LABEL_193:
    result = 0;
    goto LABEL_194;
  }

  if (v3 != 54)
  {
    if (v3 == 55)
    {
      if ((*(this + 727) & 1) == 0)
      {
        v6 = (*(*this[25] + 80))(this[25]);
        memset(v201, 0, 17);
        *(&v201[8] + 1) = 1;
        *&v201[12] = v6;
        *&v201[16] = 0;
        v201[18] = 0;
        (*(*v6 + 16))(v6, 1);
        BlueFin::GlMeSrdGeofenceMgr::GetDefaultGeofenceMode(v2, &v173, 0);
        v7 = (*(**(v2 + 25) + 208))(*(v2 + 25));
        v8 = (*(*v7 + 72))(v7);
        (*(*v8 + 72))(v8, v201, &v173);
        BlueFin::GlMeSrdTransaction::Complete(v201);
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v201);
        *(v2 + 727) = 1;
      }

      if (*(v2 + 176) && (*(v2 + 729) & 1) == 0)
      {
        v9 = (*(**(v2 + 25) + 80))(*(v2 + 25));
        *v201 = BlueFin::GlMeSrdGeofenceMgr::OnReliableTransactionAck;
        *&v201[4] = v2;
        v201[8] = 256;
        LOBYTE(v201[9]) = 0;
        *&v201[12] = v9;
        *&v201[16] = 0;
        v201[18] = 0;
        (*(*v9 + 16))(v9, 1);
        if (*(v2 + 177) >= *(v2 + 176))
        {
          v10 = *(v2 + 176);
        }

        else
        {
          v10 = *(v2 + 177);
        }

        v11 = (*(**(v2 + 25) + 208))(*(v2 + 25));
        v12 = (*(*v11 + 72))(v11);
        (*(*v12 + 104))(v12, v201, v10);
        BlueFin::GlMeSrdTransaction::Complete(v201);
        *(v2 + 729) = 1;
        *(v2 + 23) = v2;
        BlueFin::GlTimer::arm((v2 + 152), 5, 0, 0x7D0u);
        *(v2 + 176) = 1;
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v201);
      }

      goto LABEL_193;
    }

LABEL_99:
    result = BlueFin::GlMeSrdGeofenceMgr::running;
    goto LABEL_194;
  }

  v13 = this[24];
  if (!v13)
  {
    v148 = "m_ptData != nullptr";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 562, "GetGeofenceData", "m_ptData != nullptr");
    v149 = 562;
    goto LABEL_207;
  }

  v14 = *(v13 + 8);
  if (v14 >= 0x15)
  {
    v148 = "rGeoData.otSatPosModels.m_uiNumSatPos <= GlSatPosModels::GEO_FENCE_MAX_SATPOS_MODELS";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 570, "SetGeofenceData", "rGeoData.otSatPosModels.m_uiNumSatPos <= GlSatPosModels::GEO_FENCE_MAX_SATPOS_MODELS");
    v149 = 570;
    goto LABEL_207;
  }

  *(this + 713) = *(v13 + 4560);
  *(this + 179) = *(v13 + 4564);
  *(this + 180) = *(v13 + 4568);
  *(this + 362) = *(v13 + 4572);
  *(this + 726) = *(v13 + 4574);
  v157 = v159;
  v158 = 8;
  memset(v159, 0, sizeof(v159));
  memset(v156, 0, sizeof(v156));
  if (v14)
  {
    v15 = *(v13 + 2432);
    do
    {
      v16 = *v15;
      v15 += 120;
      *(v159 + ((v16 >> 3) & 0x1C)) |= 1 << v16;
      --v14;
    }

    while (v14);
  }

  v151 = v13;
  LOBYTE(v201[0]) = *(this + 320);
  memcpy(&v201[4], this[39], 4 * LOBYTE(v201[0]));
  v201[1] = 0;
  HIBYTE(v201[0]) = 0;
  *&v201[2] = *&v201[4];
  BlueFin::GlSetIterator::operator++(v201);
  while (HIBYTE(v201[0]) != LOBYTE(v201[0]))
  {
    v17 = LOBYTE(v201[1]) >> 5;
    if ((*(v157 + v17) >> (v201[1] & 0x1F)))
    {
      BlueFin::GlSetBase::Remove(&v157, LOBYTE(v201[1]));
    }

    else
    {
      *(v156 + v17) |= 1 << (v201[1] & 0x1F);
    }

    BlueFin::GlSetIterator::operator++(v201);
  }

  v18 = (*(**(v2 + 25) + 80))(*(v2 + 25));
  v173 = 0;
  v174 = 0;
  v175 = 256;
  v176 = 0;
  v177 = v18;
  v178 = 0;
  v179 = 0;
  (*(*v18 + 16))(v18, 1);
  BlueFin::GlMeSrdGeofenceMgr::GetDefaultGeofenceMode(v2, v201, 0);
  v19 = (*(*v177 + 48))(v177);
  v20 = (*(*v19 + 72))(v19);
  (*(*v20 + 72))(v20, &v173, v201);
  LOBYTE(v201[0]) = *(v2 + 320);
  memcpy(&v201[4], *(v2 + 39), 4 * LOBYTE(v201[0]));
  v201[1] = 0;
  HIBYTE(v201[0]) = 0;
  *&v201[2] = *&v201[4];
  BlueFin::GlSetIterator::operator++(v201);
  if (HIBYTE(v201[0]) != LOBYTE(v201[0]))
  {
    v21 = 0;
    do
    {
      v22 = v21 + 1;
      *(&v180 + v21) = BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(v2, v201[1]);
      BlueFin::GlSetIterator::operator++(v201);
      ++v21;
    }

    while (HIBYTE(v201[0]) != LOBYTE(v201[0]));
    if (v22)
    {
      v23 = (*(**(v2 + 25) + 208))(*(v2 + 25));
      v24 = (*(*v23 + 72))(v23);
      (*(*v24 + 64))(v24, &v173, v22, &v180);
    }
  }

  v25 = *(v2 + 76);
  if (v25)
  {
    v26 = 0;
    v27 = xmmword_298A31960;
    v28 = xmmword_298A31970;
    v29 = xmmword_298A31980;
    v30 = xmmword_298A31990;
    v31 = xmmword_298A319A0;
    v32 = xmmword_298A319B0;
    v33 = xmmword_298A319C0;
    v34 = vdupq_n_s64(v25 - 1);
    v35 = xmmword_298A319D0;
    v36 = vdupq_n_s64(0x10uLL);
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v34, v35));
      if (vuzp1_s8(vuzp1_s16(v37, v27.n128_u64[0]), v27.n128_u64[0]).u8[0])
      {
        LOBYTE(v201[v26 / 2]) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v37, *&v27), *&v27).i8[1])
      {
        HIBYTE(v201[v26 / 2]) = v26 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v34, *&v33))), *&v27).i8[2])
      {
        LOBYTE(v201[v26 / 2 + 1]) = v26 | 2;
        HIBYTE(v201[v26 / 2 + 1]) = v26 | 3;
      }

      v38 = vmovn_s64(vcgeq_u64(v34, v32));
      if (vuzp1_s8(*&v27, vuzp1_s16(v38, *&v27)).i32[1])
      {
        LOBYTE(v201[v26 / 2 + 2]) = v26 | 4;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(v38, *&v27)).i8[5])
      {
        HIBYTE(v201[v26 / 2 + 2]) = v26 | 5;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v34, *&v31)))).i8[6])
      {
        LOBYTE(v201[v26 / 2 + 3]) = v26 | 6;
        HIBYTE(v201[v26 / 2 + 3]) = v26 | 7;
      }

      v39 = vmovn_s64(vcgeq_u64(v34, v30));
      if (vuzp1_s8(vuzp1_s16(v39, v27.n128_u64[0]), v27.n128_u64[0]).u8[0])
      {
        LOBYTE(v201[v26 / 2 + 4]) = v26 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v39, *&v27), *&v27).i8[1])
      {
        HIBYTE(v201[v26 / 2 + 4]) = v26 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v34, *&v29))), *&v27).i8[2])
      {
        LOBYTE(v201[v26 / 2 + 5]) = v26 | 0xA;
        HIBYTE(v201[v26 / 2 + 5]) = v26 | 0xB;
      }

      v40 = vmovn_s64(vcgeq_u64(v34, v28));
      if (vuzp1_s8(*&v27, vuzp1_s16(v40, *&v27)).i32[1])
      {
        LOBYTE(v201[v26 / 2 + 6]) = v26 | 0xC;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(v40, *&v27)).i8[5])
      {
        HIBYTE(v201[v26 / 2 + 6]) = v26 | 0xD;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v34, *&v27)))).i8[6])
      {
        LOBYTE(v201[v26 / 2 + 7]) = v26 | 0xE;
        HIBYTE(v201[v26 / 2 + 7]) = v26 | 0xF;
      }

      v32 = vaddq_s64(v32, v36);
      v26 += 16;
      v33 = vaddq_s64(v33, v36);
      v35 = vaddq_s64(v35, v36);
      v31 = vaddq_s64(v31, v36);
      v30 = vaddq_s64(v30, v36);
      v29 = vaddq_s64(v29, v36);
      v28 = vaddq_s64(v28, v36);
      v27 = vaddq_s64(v27, v36);
    }

    while (((v25 + 15) & 0x1FFFFFFF0) != v26);
    v41 = (*(*v177 + 48))(v177, v27, v28, v29, v30, v31, v32, v33);
    v42 = (*(*v41 + 72))(v41);
    (*(*v42 + 32))(v42, &v173, *(v2 + 304), v201);
    *(v2 + 76) = 0;
  }

  *v201 = 8;
  memcpy(&v201[4], v156, 0x20uLL);
  *&v201[2] = *&v201[4];
  BlueFin::GlSetIterator::operator++(v201);
  if (HIBYTE(v201[0]) != LOBYTE(v201[0]))
  {
    v43 = 0;
    do
    {
      v44 = v43 + 1;
      *(&v180 + v43) = BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(v2, v201[1]);
      BlueFin::GlSetIterator::operator++(v201);
      ++v43;
    }

    while (HIBYTE(v201[0]) != LOBYTE(v201[0]));
    if (v44)
    {
      v45 = (*(*v177 + 48))(v177);
      v46 = (*(*v45 + 72))(v45);
      (*(*v46 + 48))(v46, &v173, v44, &v180);
    }
  }

  BlueFin::GlMeSrdTransaction::Complete(&v173);
  *v201 = 8;
  memcpy(&v201[4], v156, 0x20uLL);
  *&v201[2] = *&v201[4];
  BlueFin::GlSetIterator::operator++(v201);
  while (HIBYTE(v201[0]) != LOBYTE(v201[0]))
  {
    v47 = LOBYTE(v201[1]);
    *(v2 + 90) &= ~(1 << BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(v2, v201[1]));
    BlueFin::GlSetBase::Remove(v2 + 312, v47);
    BlueFin::GlSetIterator::operator++(v201);
  }

  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v173);
  v161 = ~*(v2 + 90);
  v162 = v161;
  v160 = 1;
  BlueFin::GlSetIterator::operator++(&v160);
  LOBYTE(v201[0]) = v158;
  memcpy(&v201[4], v157, 4 * v158);
  v201[1] = 0;
  HIBYTE(v201[0]) = 0;
  *&v201[2] = *&v201[4];
  BlueFin::GlSetIterator::operator++(v201);
  while (HIBYTE(v201[0]) != LOBYTE(v201[0]))
  {
    if (BYTE1(v160) == v160 || (v49 = HIWORD(v160), HIWORD(v160) >= 0x14u))
    {
      DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 749, "SetupGeofenceAndBreadcrumb", "!itAvailableGeoIds.last() && *itAvailableGeoIds < MAX_NUM_GEO_ID");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", 749, "!itAvailableGeoIds.last() && *itAvailableGeoIds < MAX_NUM_GEO_ID");
    }

    BlueFin::GlSetIterator::operator++(&v160);
    v50 = LOBYTE(v201[1]);
    *(v2 + v49 + 364) = v201[1];
    *(v2 + v50 + 384) = v49;
    *(v2 + 90) |= 1 << v49;
    *(*(v2 + 39) + 4 * (v50 >> 5)) |= 1 << v50;
    BlueFin::GlSetIterator::operator++(v201);
  }

  BlueFin::GlStdLib::QsortImpl((v151 + 2496), *(v151 + 2492), 0x20u, BlueFin::GlMeSrdGeofenceMgr::AreaComparator, v201, v48);
  v54 = *(v151 + 2492);
  if (v54 < 0x21)
  {
    v60 = 0;
  }

  else
  {
    v55 = 0;
    v56 = (v151 + 3504);
    v57 = 0.0;
    do
    {
      v58 = sqrt(*(v56 - 1) * *(v56 - 1) + *(v56 - 2) * *(v56 - 2));
      if (v58 <= *v56)
      {
        v59 = *v56 - v58;
      }

      else
      {
        v59 = v58 - *v56;
      }

      if (!v55 || v59 < v57)
      {
        v57 = v59;
      }

      ++v55;
      v56 += 4;
    }

    while (v54 - 31 != v55);
    *&v201[4] = 0;
    *v201 = 0;
    *&v201[8] = v57;
    v54 = 31;
    v201[12] = 31;
    v60 = 1;
    LOBYTE(v201[13]) = 1;
  }

  v63 = 0;
  v64 = 0;
  v65 = v60 + v54;
  while (v64 < v54)
  {
    v66 = (v151 + 2496 + v63);
LABEL_110:
    v67 = &v173 + v63;
    v51 = *v66;
    *v67 = *v66;
    *(v67 + 2) = *(v66 + 2);
    *(v67 + 12) = v66[12];
    v67[26] = *(v66 + 26);
    ++v64;
    v63 += 32;
    if (v63 == 1024)
    {
      v150 = 32;
      goto LABEL_113;
    }
  }

  if (v64 < v65)
  {
    v66 = v201;
    goto LABEL_110;
  }

  v150 = v64;
LABEL_113:
  v68 = *(v151 + 8);
  v69 = *v151;
  if (v68)
  {
    v70 = 0;
    *v51.i64 = (*(v151 + 4) - v69) * 0.001 + 1.0;
    *v52.i64 = *v51.i64 + trunc(*v51.i64 * 2.32830644e-10) * -4294967300.0;
    v71.f64[0] = NAN;
    v71.f64[1] = NAN;
    v72 = vnegq_f64(v71);
    v73 = vbslq_s8(v72, v52, v51);
    if (*v51.i64 > 4294967300.0)
    {
      v51.i64[0] = v73.i64[0];
    }

    *v73.i64 = -*v51.i64;
    *v53.i64 = -(*v51.i64 - trunc(*v51.i64 * -2.32830644e-10) * -4294967300.0);
    *v73.i64 = -*vbslq_s8(v72, v53, v73).i64;
    if (*v51.i64 < -4294967300.0)
    {
      v51.i64[0] = v73.i64[0];
    }

    if (*v51.i64 < 0.0)
    {
      v74 = --*v51.i64;
    }

    else
    {
      LOWORD(v74) = *v51.i64;
    }

    v75 = *(v151 + 2432);
    do
    {
      v154 = v68;
      if (v68 >= 0xA)
      {
        v76 = 10;
      }

      else
      {
        v76 = v68;
      }

      v77 = (*(**(v2 + 25) + 80))(*(v2 + 25));
      v181 = 0;
      v180 = 0;
      v182 = 256;
      v183 = 0;
      v184 = v77;
      v185 = 0;
      LOWORD(v186) = 0;
      (*(*v77 + 16))(v77, 1);
      v78 = v2;
      v153 = v70;
      v79 = v202;
      v80 = v76;
      do
      {
        v81 = v75 + 120 * v70;
        *(v79 - 56) = BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(v78, *v81);
        *(v79 - 26) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v81 + 24)), *(v81 + 40));
        *(v79 - 18) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v81 + 56)), *(v81 + 72));
        *(v79 - 10) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v81 + 88)), *(v81 + 104));
        *(v79 - 1) = v69;
        *v79 = v74;
        v79 += 30;
        ++v70;
        --v80;
      }

      while (v80);
      v2 = v78;
      v82 = (*(**(v78 + 200) + 208))(*(v78 + 200));
      v83 = (*(*v82 + 72))(v82);
      (*(*v83 + 56))(v83, &v180, v76, v201);
      BlueFin::GlMeSrdTransaction::Complete(&v180);
      v68 = v154 - v76;
      v70 = v76 + v153;
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v180);
    }

    while (v154 != v76);
    v69 = *v151;
  }

  bzero(v201, 0x2D0uLL);
  v199 = 0;
  v198 = 0;
  v200 = 0;
  GeoIdFromSvId = *(v2 + 320);
  memcpy(&v171, *(v2 + 39), 4 * GeoIdFromSvId);
  v169 = 0;
  v168 = 0;
  v170 = v171;
  BlueFin::GlSetIterator::operator++(&GeoIdFromSvId);
  LOBYTE(v84) = 0;
  if (v168 != GeoIdFromSvId)
  {
    v84 = 0;
    v85 = BlueFin::GlSvId::s_aucSvId2gnss;
    v86.f64[0] = NAN;
    v86.f64[1] = NAN;
    v152 = vnegq_f64(v86);
    do
    {
      v87 = v169;
      *(&v198 + v84) = BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(v2, v169);
      v180 = &off_2A1F0E398;
      LOBYTE(v181) = 0;
      HIDWORD(v181) = -1;
      v182 = 575;
      v184 = 0;
      v186 = xmmword_298A339D0;
      v185 = 0;
      v187 = 2139095039;
      v188 = 0.0;
      v189 = 2139095039;
      v190 = 0;
      v191 = 0x7FEFFFFFFFFFFFFFLL;
      v192 = -1;
      v193 = -1;
      v195 = 0;
      v196 = 0;
      v194 = 0;
      v197 = 0;
      v164[0] = v87;
      v165 = 0;
      v166 = 575;
      if ((v87 - 189) >= 0xFFFFFF44)
      {
        v88 = v85[v87];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v88] == 255)
        {
          v165 = -1;
        }

        else
        {
          v166 = BlueFin::GlSignalId::s_ausGnss2signalId[v88] + v87 - BlueFin::GlSvId::s_aucGnss2minSvId[v88];
        }
      }

      v89 = *(v2 + 27);
      v163 = 1;
      if (((*(*v89 + 24))(v89, v164, &v180, &v163, 0, 0, v69, 0.0, 0.0) & 1) == 0)
      {
        DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 984, "SendAiding", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", 984, "0");
      }

      v91 = &v201[18 * v84];
      v91[6] = v69;
      v92 = *(v91 + 14);
      *(v91 + 14) = v92 | 5;
      *v91 = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v164, *(&v186 + 1), v90);
      v91[1] = BlueFin::GlMeSrdAsicUnitConverter::PpuPerSecToEswAidingAcceleration(v164, *(&v186 + 3), v93);
      v94 = (*(**(v2 + 26) + 56))(*(v2 + 26), v164);
      v95 = v188;
      InterSignalBiasInMs = BlueFin::GlSignalId::GetInterSignalBiasInMs(v164, *(v2 + 30));
      EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(v164);
      v98 = EpochPerSymbol;
      v99 = v94;
      v100 = v69 + (v95 + v94 + InterSignalBiasInMs * 0.001) * -1000.0;
      v101 = fabs(v100);
      if (v101 >= 10.0 && v101 > fabs(v99 * 1000.0) + (2 * EpochPerSymbol) + 0.001)
      {
        DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1000, "SendAiding", "FABS_D(dChannelTimeToaOffsetMs) < 10.0 || FABS_D(dChannelTimeToaOffsetMs) <= 2*uiEpochPerSymbol + FABS_D(fBbHwInterSysBiasInSec*1000.0) + 1.0e-3");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", 1000, "FABS_D(dChannelTimeToaOffsetMs) < 10.0 || FABS_D(dChannelTimeToaOffsetMs) <= 2*uiEpochPerSymbol + FABS_D(fBbHwInterSysBiasInSec*1000.0) + 1.0e-3");
      }

      if (v100 >= 0.0)
      {
        v103 = 0;
      }

      else
      {
        if (v166 > 0x23Eu)
        {
          v146 = "IsValid()";
          v147 = 679;
          DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
          goto LABEL_204;
        }

        v102 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v165 - v165];
        if (!v102[v85[v164[0]]])
        {
          v146 = "ucMsPerEpoch != 0";
          v147 = 686;
          DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
LABEL_204:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v147, v146);
        }

        v103 = 0;
        do
        {
          v104 = v103++;
          v100 = v100 + (v102[v85[v164[0]]] * EpochPerSymbol);
        }

        while (v104 <= 3 && v100 < 0.0);
      }

      if (v100 < 0.0)
      {
        DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1010, "SendAiding", "dChannelTimeToaOffsetMs >= 0.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", 1010, "dChannelTimeToaOffsetMs >= 0.0");
      }

      if (v166 >= 0x23Fu)
      {
        v144 = "IsValid()";
        v145 = 778;
        DeviceFaultNotify("glsignalid.h", 778, "GetChipsPerEpoch", "IsValid()");
        goto LABEL_200;
      }

      v105 = v85;
      v106 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v165 + v85[v164[0]]];
      if (!v106)
      {
        v144 = "ucChipsPerEpoch != 0";
        v145 = 785;
        DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
LABEL_200:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v145, v144);
      }

      v108 = (*(**(v2 + 30) + 320))(*(v2 + 30));
      *v108.i64 = v100 * v106 * v107 + 0.5;
      *v109.i64 = *v108.i64 + trunc(*v108.i64 * 2.32830644e-10) * -4294967300.0;
      v110 = vbslq_s8(v152, v109, v108);
      if (*v108.i64 > 4294967300.0)
      {
        v108.i64[0] = v110.i64[0];
      }

      if (*v108.i64 < -4294967300.0)
      {
        *v110.i64 = -*v108.i64;
        *v108.i64 = -(*v108.i64 - trunc(*v108.i64 * -2.32830644e-10) * -4294967300.0);
        *v108.i64 = -*vbslq_s8(v152, v108, v110).i64;
      }

      if (*v108.i64 < 0.0)
      {
        v111 = --*v108.i64;
      }

      else
      {
        v111 = *v108.i64;
      }

      v112 = v111 / v107;
      *(v91 + 10) = v111 % v107;
      v113 = v111 / v107 / v106;
      v91[4] = v112 - v113 * v106;
      *(v91 + 6) = v113 % v98;
      v114 = v113 / v98 % 0xC8;
      v91[2] = v114;
      v115 = v185;
      v116 = v92 | 0x45;
      if ((v185 & 0x1A) == 0)
      {
        v116 = v92 | 5;
      }

      if ((v185 & 0x80) != 0)
      {
        v116 |= 0x80u;
        v117 = v192 + v114;
        if (v117 > 0xC7u)
        {
          v117 -= 200;
        }

        if (v103 > v117)
        {
          v117 += 200;
        }

        LOWORD(v114) = v117 - v103;
        v91[2] = v114;
      }

      v85 = v105;
      if ((v115 & 0x400) != 0)
      {
        v116 |= 0x80u;
        v118 = v114 + BYTE1(v192);
        if (v118 > 0x18u)
        {
          v118 -= 25;
        }

        if (v103 > v118)
        {
          v118 += 25;
        }

        v91[2] = v118 - v103;
      }

      ++v84;
      *(v91 + 14) = v116 | 0x20;
      BlueFin::GlSetIterator::operator++(&GeoIdFromSvId);
    }

    while (v168 != GeoIdFromSvId);
  }

  v119 = (*(**(v2 + 25) + 80))(*(v2 + 25));
  v181 = 0;
  v180 = 0;
  v182 = 256;
  v183 = 0;
  v184 = v119;
  v185 = 0;
  LOWORD(v186) = 0;
  (*(*v119 + 16))(v119, 1);
  v120 = (*(**(v2 + 25) + 208))();
  v121 = (*(*v120 + 48))(v120);
  (*(*v121 + 72))(v121, &v180, v84, &v198, v201);
  BlueFin::GlMeSrdTransaction::Complete(&v180);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v180);
  v122 = (*(**(v2 + 25) + 80))(*(v2 + 25));
  v180 = BlueFin::GlMeSrdGeofenceMgr::OnReliableTransactionAck;
  v181 = v2;
  v182 = 258;
  v183 = 0;
  v184 = v122;
  v185 = 0;
  LOWORD(v186) = 0;
  (*(*v122 + 16))(v122, 1);
  *v201 = *(v151 + 2488);
  v155 = vdupq_n_s64(0x41B1DE784A000000uLL);
  *&v201[2] = vcvt_f32_f64(vmulq_f64(vdivq_f64(*(v151 + 2464), v155), vdupq_n_s64(0x408F400000000000uLL)));
  v123 = *(v151 + 2480) / 299792458.0 * 1000.0;
  *&v201[6] = v123;
  v124 = (*(*v184 + 48))(v184);
  v125 = (*(*v124 + 72))(v124);
  (*(*v125 + 16))(v125, &v180, v201);
  LOBYTE(v201[0]) = v158;
  memcpy(&v201[4], v157, 4 * v158);
  v201[1] = 0;
  HIBYTE(v201[0]) = 0;
  *&v201[2] = *&v201[4];
  BlueFin::GlSetIterator::operator++(v201);
  while (HIBYTE(v201[0]) != LOBYTE(v201[0]))
  {
    v126 = LOBYTE(v201[1]);
    GeoIdFromSvId = BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(v2, v201[1]);
    LOBYTE(v198) = v126;
    v127 = BlueFin::GlMeSrdAsicUnitConverter::Svid2SvParamType(&v198);
    v128 = *v127;
    v172 = *(v127 + 2);
    v171 = v128;
    v168 = 49;
    v129 = *(v2 + 26);
    LOBYTE(v198) = v126;
    HIDWORD(v198) = 0;
    LOWORD(v199) = 575;
    if ((v126 + 67) >= 0x44u)
    {
      v130 = BlueFin::GlSvId::s_aucSvId2gnss[v126];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v130] == 255)
      {
        HIDWORD(v198) = -1;
      }

      else
      {
        LOWORD(v199) = BlueFin::GlSignalId::s_ausGnss2signalId[v130] + v126 - BlueFin::GlSvId::s_aucGnss2minSvId[v130];
      }
    }

    v170 = ((*(*v129 + 56))(v129, &v198) * 1000000000.0 + 0.5);
    v131 = (*(*v184 + 48))(v184);
    v132 = (*(*v131 + 72))(v131);
    (*(*v132 + 40))(v132, &v180, &GeoIdFromSvId);
    BlueFin::GlSetIterator::operator++(v201);
  }

  if (v150 > 0x40)
  {
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 873, "SendAreas", "_DIM(aEswArea)>=uiNumAreas");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", 873, "_DIM(aEswArea)>=uiNumAreas");
  }

  if (v150)
  {
    v133 = 0;
    v134 = 0;
    v135 = &v201[6];
    v136 = vdupq_n_s64(0x408F400000000000uLL);
    do
    {
      *(v135 - 12) = v134;
      *(v135 - 1) = vcvt_f32_f64(vmulq_f64(vdivq_f64(*(&v173 + v133), v155), v136));
      v137 = *(&v175 + v133) / 299792458.0 * 1000.0;
      *v135 = v137;
      *(v135 + 4) = *(&v177 + v133 + 2) ^ 1;
      *(v2 + v134++ + 286) = *(&v177 + v133);
      v133 += 32;
      v135 += 10;
    }

    while (32 * v150 != v133);
  }

  v138 = (*(**(v2 + 25) + 208))(*(v2 + 25));
  v139 = (*(*v138 + 72))(v138);
  (*(*v139 + 24))(v139, &v180, v150, v201);
  *(v2 + 76) = v150;
  BlueFin::GlMeSrdTransaction::Complete(&v180);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v180);
  v140 = (*(**(v2 + 25) + 80))(*(v2 + 25));
  v173 = 0;
  v174 = 0;
  v175 = 256;
  v176 = 0;
  v177 = v140;
  v178 = 0;
  v179 = 0;
  (*(*v140 + 16))(v140, 1);
  BlueFin::GlMeSrdGeofenceMgr::GetDefaultGeofenceMode(v2, v201, v151);
  if (*(v2 + 76))
  {
    LOBYTE(v201[0]) |= 2u;
  }

  if (*(v2 + 726) == 1)
  {
    LOBYTE(v201[0]) |= 0x20u;
    *(v2 + 726) = 0;
  }

  if (*(v2 + 712) == 1)
  {
    LOBYTE(v201[0]) |= 0x80u;
    *&v201[16] = (*(**(v2 + 30) + 592))(*(v2 + 30));
  }

  v141 = (*(**(v2 + 25) + 208))(*(v2 + 25));
  v142 = (*(*v141 + 72))(v141);
  (*(*v142 + 72))(v142, &v173, v201);
  BlueFin::GlMeSrdTransaction::Complete(&v173);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v173);
  *(v2 + 23) = v2;
  BlueFin::GlTimer::arm((v2 + 152), 5, 2, 0x7D0u);
  result = 0;
  *(v2 + 176) = 1;
LABEL_194:
  v143 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlMeSrdGeofenceMgr::AskForState(BlueFin::GlMeSrdGeofenceMgr *this)
{
  if ((*(this + 728) & 1) == 0)
  {
    v2 = (*(**(this + 25) + 80))(*(this + 25));
    v5[0] = BlueFin::GlMeSrdGeofenceMgr::OnReliableTransactionAck;
    v5[1] = this;
    v6 = 257;
    v7 = 0;
    v8 = v2;
    v9 = 0;
    v10 = 0;
    (*(*v2 + 16))(v2, 1);
    v3 = (*(**(this + 25) + 208))(*(this + 25));
    v4 = (*(*v3 + 72))(v3);
    (*(*v4 + 88))(v4, v5);
    BlueFin::GlMeSrdTransaction::Complete(v5);
    *(this + 728) = 1;
    *(this + 23) = this;
    BlueFin::GlTimer::arm((this + 152), 5, 1, 0x7D0u);
    *(this + 176) = 1;
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v5);
  }
}

void sub_29896C95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdGeofenceMgr::GetDefaultGeofenceMode(uint64_t a1, char *a2, uint64_t a3)
{
  *(a2 + 4) = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *a2 = 1;
  v39 = 0;
  v37 = -1;
  v38 = -1;
  v35 = -1;
  v36 = -1;
  v34 = -1;
  v33 = 0;
  (*(**(a1 + 240) + 112))(*(a1 + 240), &v39, &v38, &v37, &v36, &v35, &v34, &v33);
  v9 = v38;
  if (v38 < 0)
  {
    v9 = 6;
    v38 = 6;
  }

  v10 = v37;
  if (v37 < 0)
  {
    v10 = 60;
    v37 = 60;
  }

  v11 = v36;
  if (v36 < 0)
  {
    v11 = 180;
    v36 = 180;
  }

  v12 = v35;
  if (v35 < 0)
  {
    v12 = 30;
    v35 = 30;
  }

  v13 = v34;
  if (v34 < 0)
  {
    v13 = 50;
    v34 = 50;
  }

  if (v9 >= 0xFFFF)
  {
    v31 = "lOnTimeSec < 0xFFFF";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1099, "GetDefaultGeofenceMode", "lOnTimeSec < 0xFFFF");
    v32 = 1099;
    goto LABEL_59;
  }

  if (v10 > v11)
  {
    v31 = "lMinOffTimeSec <= lMaxOffTimeSec";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1100, "GetDefaultGeofenceMode", "lMinOffTimeSec <= lMaxOffTimeSec");
    v32 = 1100;
    goto LABEL_59;
  }

  if (v11 >= 0xFFFF)
  {
    v31 = "lMaxOffTimeSec < 0xFFFF";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1101, "GetDefaultGeofenceMode", "lMaxOffTimeSec < 0xFFFF");
    v32 = 1101;
    goto LABEL_59;
  }

  *v6.i64 = v13 / 299792458.0 * 1000000000.0;
  if (*v6.i64 >= 0xFFFF)
  {
    v31 = "(GlIntS32)(lHysterisM / SPEED_OF_LIGHT * 1e9)<0xFFFF";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1102, "GetDefaultGeofenceMode", "(GlIntS32)(lHysterisM / SPEED_OF_LIGHT * 1e9)<0xFFFF");
    v32 = 1102;
    goto LABEL_59;
  }

  *v8.i64 = *v6.i64 + trunc(*v6.i64 * 2.32830644e-10) * -4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  v8.i64[0] = vbslq_s8(v15, v8, v6).u64[0];
  if (*v6.i64 > 4294967300.0)
  {
    v6.i64[0] = v8.i64[0];
  }

  if (*v6.i64 < -4294967300.0)
  {
    *v7.i64 = -*v6.i64;
    *v6.i64 = -(*v6.i64 - trunc(*v6.i64 * -2.32830644e-10) * -4294967300.0);
    v6 = vbslq_s8(v15, v6, v7);
    *v6.i64 = -*v6.i64;
  }

  *v15.i64 = v12 * 3.2;
  if (*v15.i64 >= 255)
  {
    v31 = "(GlIntS32)(lUserSpeedMps *3.2)<0xFF";
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 1104, "GetDefaultGeofenceMode", "(GlIntS32)(lUserSpeedMps *3.2)<0xFF");
    v32 = 1104;
LABEL_59:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", v32, v31);
  }

  if (*v6.i64 < 0.0)
  {
    v16 = --*v6.i64;
  }

  else
  {
    LOWORD(v16) = *v6.i64;
  }

  *v6.i64 = *v15.i64 + trunc(*v15.i64 * 2.32830644e-10) * -4294967300.0;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = vnegq_f64(v17);
  v6.i64[0] = vbslq_s8(v18, v6, v15).u64[0];
  if (*v15.i64 <= 4294967300.0)
  {
    v6.i64[0] = v15.i64[0];
  }

  *v15.i64 = -*v6.i64;
  *v7.i64 = -(*v6.i64 - trunc(*v6.i64 * -2.32830644e-10) * -4294967300.0);
  *v15.i64 = -*vbslq_s8(v18, v7, v15).i64;
  if (*v6.i64 < -4294967300.0)
  {
    v6.i64[0] = v15.i64[0];
  }

  if (*v6.i64 < 0.0)
  {
    v19 = --*v6.i64;
  }

  else
  {
    LOBYTE(v19) = *v6.i64;
  }

  a2[1] = v9;
  *(a2 + 1) = v10;
  *(a2 + 2) = v11;
  *(a2 + 5) = 3;
  *(a2 + 6) = v16;
  a2[20] = v19;
  *(a2 + 12) = 0;
  *(a2 + 7) = 0;
  a2[36] = 0;
  if (v39)
  {
    v20 = *a2 | 8;
  }

  else
  {
    v20 = *a2;
  }

  *a2 = v20 | 0x10;
  result = (*(**(a1 + 240) + 584))();
  *(a2 + 4) = result;
  if (v33 == 1)
  {
    *a2 |= 0x80u;
    result = (*(**(a1 + 240) + 592))(*(a1 + 240));
    *(a2 + 8) = result;
  }

  if (a3)
  {
    *v22.i64 = (*(a3 + 4) - *a3) * 0.001;
    *v24.i64 = *v22.i64 + trunc(*v22.i64 * 2.32830644e-10) * -4294967300.0;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v26 = vnegq_f64(v25);
    v24.i64[0] = vbslq_s8(v26, v24, v22).u64[0];
    if (*v22.i64 > 4294967300.0)
    {
      v22.i64[0] = v24.i64[0];
    }

    if (*v22.i64 < -4294967300.0)
    {
      *v23.i64 = -*v22.i64;
      *v22.i64 = -(*v22.i64 - trunc(*v22.i64 * -2.32830644e-10) * -4294967300.0);
      *v22.i64 = -*vbslq_s8(v26, v22, v23).i64;
    }

    if (*v22.i64 < 0.0)
    {
      v27 = --*v22.i64;
    }

    else
    {
      LOWORD(v27) = *v22.i64;
    }
  }

  else
  {
    LOWORD(v27) = 820;
  }

  *(a2 + 4) = v27;
  *(a2 + 21) = 2048;
  a2[23] = 1;
  if (*(a1 + 713) == 1)
  {
    *(a2 + 1) = *(a1 + 716);
    *(a2 + 2) = *(a1 + 720);
    a2[20] = 3 * *(a1 + 724);
  }

  if (a3)
  {
    if (*(a3 + 4574) == 1)
    {
      *a2 |= 0x20u;
    }

    v28 = *(a3 + 4544);
    if (v28)
    {
      v29 = *a2;
      *a2 |= 4u;
      a2[6] = v28;
      v30 = *(a3 + 4548);
      *(a2 + 12) = v30;
      *(a2 + 7) = *(a3 + 4556);
      if (v30 == 1 || *(a3 + 4552) == 1)
      {
        *a2 = v29 | 0x44;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdGeofenceMgr::GetGeoIdFromSvId(uint64_t a1, unsigned __int8 a2)
{
  if (((*(*(a1 + 312) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_geofence_mgr.cpp", 951, "GetGeoIdFromSvId", "m_otSetSvIdUsed.Has(rotSvId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_geofence_mgr.cpp", 951, "m_otSetSvIdUsed.Has(rotSvId)");
  }

  return *(a1 + a2 + 384);
}

uint64_t BlueFin::GlMeSrdGeofenceMgr::AreaComparator(BlueFin::GlMeSrdGeofenceMgr *this, double *a2, const void *a3)
{
  v3 = sqrt(*(this + 1) * *(this + 1) + *this * *this);
  v4 = *(this + 2);
  if (v3 <= v4)
  {
    v5 = v4 - v3;
  }

  else
  {
    v5 = v3 - v4;
  }

  v6 = sqrt(a2[1] * a2[1] + *a2 * *a2);
  v7 = a2[2];
  if (v6 <= v7)
  {
    v8 = v7 - v6;
  }

  else
  {
    v8 = v6 - v7;
  }

  if (v8 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8 < v5;
  }
}

uint64_t BlueFin::GlMeObjFactory::DisposeFactory(BlueFin::GlMeObjFactory *this, void (*a2)(void *))
{
  result = BlueFin::GlMeObjFactory::m_ptObjFactory;
  if (BlueFin::GlMeObjFactory::m_ptObjFactory)
  {
    BlueFin::GlMeObjFactory::Dispose(BlueFin::GlMeObjFactory::m_ptObjFactory);
    result = (**BlueFin::GlMeObjFactory::m_ptObjFactory)(BlueFin::GlMeObjFactory::m_ptObjFactory);
    if (this)
    {
      result = (this)(BlueFin::GlMeObjFactory::m_ptObjFactory);
    }

    BlueFin::GlMeObjFactory::m_ptObjFactory = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeObjFactory::Dispose(BlueFin::GlMeObjFactory *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
    v3 = *(this + 4);
    if (v3)
    {
      v3(*(this + 8));
    }

    *(this + 8) = 0;
  }

  if (*(this + 9))
  {
    v4 = *(this + 4);
    if (v4)
    {
      v4();
      v5 = *(this + 4);
      if (v5)
      {
        v5(*(this + 10));
        v6 = *(this + 4);
        if (v6)
        {
          v6(*(this + 12));
        }
      }
    }

    *(this + 12) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
  }

  if (*(this + 13))
  {
    v7 = *(this + 4);
    if (v7)
    {
      v7();
      v8 = *(this + 4);
      v9 = (this + 112);
      if (v8)
      {
        v8(*(this + 14));
        v10 = *(this + 4);
        if (v10)
        {
          v10(*(this + 16));
          v11 = *(this + 4);
          if (v11)
          {
            v11(*(this + 15));
          }
        }
      }
    }

    else
    {
      v9 = (this + 112);
    }

    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *(this + 13) = 0;
  }

  if (*(this + 21))
  {
    v12 = *(this + 4);
    if (v12)
    {
      v12();
      v13 = *(this + 4);
      v14 = (this + 176);
      if (v13)
      {
        v13(*(this + 22));
        v15 = *(this + 4);
        if (v15)
        {
          v15(*(this + 24));
          v16 = *(this + 4);
          if (v16)
          {
            v16(*(this + 23));
          }
        }
      }
    }

    else
    {
      v14 = (this + 176);
    }

    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    *(this + 21) = 0;
  }

  if (*(this + 25))
  {
    v17 = *(this + 4);
    if (v17)
    {
      v17();
      v18 = *(this + 4);
      v19 = (this + 208);
      if (v18)
      {
        v18(*(this + 26));
        v20 = *(this + 4);
        if (v20)
        {
          v20(*(this + 28));
          v21 = *(this + 4);
          if (v21)
          {
            v21(*(this + 27));
          }
        }
      }
    }

    else
    {
      v19 = (this + 208);
    }

    *v19 = 0;
    v19[1] = 0;
    v19[2] = 0;
    *(this + 25) = 0;
  }

  if (*(this + 29))
  {
    v22 = *(this + 4);
    if (v22)
    {
      v22();
      v23 = *(this + 4);
      v24 = (this + 240);
      if (v23)
      {
        v23(*(this + 30));
        v25 = *(this + 4);
        if (v25)
        {
          v25(*(this + 32));
          v26 = *(this + 4);
          if (v26)
          {
            v26(*(this + 31));
          }
        }
      }
    }

    else
    {
      v24 = (this + 240);
    }

    *v24 = 0;
    v24[1] = 0;
    v24[2] = 0;
    *(this + 29) = 0;
  }

  if (*(this + 33))
  {
    v27 = *(this + 4);
    if (v27)
    {
      v27();
      v28 = *(this + 4);
      v29 = (this + 272);
      if (v28)
      {
        v28(*(this + 34));
        v30 = *(this + 4);
        if (v30)
        {
          v30(*(this + 36));
          v31 = *(this + 4);
          if (v31)
          {
            v31(*(this + 35));
          }
        }
      }
    }

    else
    {
      v29 = (this + 272);
    }

    *v29 = 0;
    v29[1] = 0;
    v29[2] = 0;
    *(this + 33) = 0;
  }

  if (*(this + 37))
  {
    v32 = *(this + 4);
    if (v32)
    {
      v32();
      v33 = *(this + 4);
      v34 = (this + 304);
      if (v33)
      {
        v33(*(this + 38));
        v35 = *(this + 4);
        if (v35)
        {
          v35(*(this + 40));
          v36 = *(this + 4);
          if (v36)
          {
            v36(*(this + 39));
          }
        }
      }
    }

    else
    {
      v34 = (this + 304);
    }

    *v34 = 0;
    v34[1] = 0;
    v34[2] = 0;
    *(this + 37) = 0;
  }

  if (*(this + 41))
  {
    v37 = *(this + 4);
    if (v37)
    {
      v37();
      v38 = *(this + 4);
      if (v38)
      {
        v38(*(this + 42));
        v39 = *(this + 4);
        if (v39)
        {
          v39(*(this + 44));
        }
      }
    }

    *(this + 44) = 0;
    *(this + 41) = 0;
    *(this + 42) = 0;
  }

  result = *(this + 17);
  if (result)
  {
    v41 = *(this + 4);
    if (v41)
    {
      result = v41();
      v42 = *(this + 4);
      v43 = (this + 144);
      if (v42)
      {
        result = v42(*(this + 18));
        v44 = *(this + 4);
        if (v44)
        {
          result = v44(*(this + 20));
          v45 = *(this + 4);
          if (v45)
          {
            result = v45(*(this + 19));
          }
        }
      }
    }

    else
    {
      v43 = (this + 144);
    }

    *v43 = 0;
    v43[1] = 0;
    v43[2] = 0;
    *(this + 17) = 0;
  }

  return result;
}

uint64_t BlueFin::GlEmptyArray::Iterator@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *(a2 + 8) = *(this + 39) + 1;
  return this;
}

void BlueFin::GlMeSrdReceiverParameters::~GlMeSrdReceiverParameters(BlueFin::GlMeSrdReceiverParameters *this)
{
  *this = &unk_2A1F0BE28;
  *(this + 1) = 0;
}

{
  *this = &unk_2A1F0BE28;
  *(this + 1) = 0;
  JUMPOUT(0x29C292F70);
}

void BlueFin::GlDineCtrl::~GlDineCtrl(BlueFin::GlDineCtrl *this)
{
  *this = &unk_2A1F0BA40;
  (*(*(this + 6155) + 8))(this + 49240);
  (*(*(this + 3976) + 112))(this + 31808, this + 29264);
  GlCustomLog(14, "PacketMgr:: TxUsage(%hu/%u), ReliableTxUsage(%hu/%u), RxUsage(%hu/%u), RxReliableElements(%hu/%u)\n", *(this + 19246), 2258, *(this + 19247), 7168, *(this + 19248), 4096, *(this + 19249), 30);
  BlueFin::GlMeSrdStats::~GlMeSrdStats((this + 118496), v2);
  BlueFin::GlMeSrdSatReportMgr::~GlMeSrdSatReportMgr((this + 114784));
  *(this + 13732) = &unk_2A1F0C4C0;
  BlueFin::GlMeSrdCtrlSm::~GlMeSrdCtrlSm((this + 75168));
  BlueFin::GlMeSrdGeofenceMgr::~GlMeSrdGeofenceMgr((this + 74432));
  BlueFin::GlMeSrdAcqMgrSm::~GlMeSrdAcqMgrSm((this + 49152));
  BlueFin::GlMeSrdTransactionManager::~GlMeSrdTransactionManager((this + 31808));
  *(this + 3941) = &unk_2A1F0BE28;
  *(this + 3942) = 0;
  *(this + 4) = &unk_2A1F0D848;
  *(this + 8) = &unk_2A1F0E3F8;
  *(this + 10) = &unk_2A1F0E368;
}

{
  BlueFin::GlDineCtrl::~GlDineCtrl(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlDineCtrl::SetCntInClockParams(uint64_t this, int a2, __int16 a3, __int16 a4)
{
  *(this + 29344) = a2;
  *(this + 29348) = a3;
  *(this + 29350) = a4;
  return this;
}

uint64_t BlueFin::GlDineCtrl::SetDutyCycleMinMaxBlockParams(BlueFin::GlDineCtrl *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = this + 28672;
  if (a3 && a2)
  {
    v5 = a4;
    if (a4 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a4;
    }

    if (a4)
    {
      v7 = v6;
    }

    else
    {
      v7 = a3;
    }

    result = GlCustomLog(14, "GlDineCtrl::SettingDutyCycleBlockParams On the fly API (Min %d,Max %d)\n", v7, a4);
  }

  else
  {
    v5 = 5;
    LOBYTE(v7) = 3;
    result = GlCustomLog(14, "GlDineCtrl::SettingDutyCycleBlockParams back to defaults(Min %d,Max %d)\n", 3, 5);
  }

  v4[1792] = 1;
  v4[1793] = v7;
  v4[1794] = v5;
  *(v4 + 1795) = 6408;
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetMeasurementInterval(BlueFin::GlDineCtrl *this, int a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    if (a3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3;
    }

    if (a4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4;
    }

    GlCustomLog(14, "GlDineCtrl::SetMeasurementInterval on the fly API (MI %d,DCMI %d)\n", v5, v6);
    v7 = 1000 * v5;
    v8 = 1000 * v6;
  }

  else
  {
    GlCustomLog(14, "GlDineCtrl::SetMeasurementInterval back to defaults (MI %d,DCMI %d)\n", 1, 1);
    v7 = 1000;
    v8 = 1000;
  }

  return BlueFin::GlMeSrdCtrlSm::SetMeasurementIntervalMs(this + 75168, v7, v8);
}

uint64_t BlueFin::GlDineCtrl::LimitRfOnTimeFromAPI(BlueFin::GlDineCtrl *this, int a2, int a3)
{
  v3 = a3;
  v6 = 70;
  if (a2)
  {
    v6 = 84;
  }

  result = GlCustomLog(14, "GlDineCtrl::LimitRfOnTimeFromAPI. Set Limit %c, RF ON Time %d\n", v6, a3);
  if (*(this + 75387) == 1)
  {

    return BlueFin::GlMeSrdMeasTimingMgr::SetLimitMaxRfOnTime((this + 78240), a2, v3);
  }

  else
  {
    *(this + 109686) = 1;
    *(this + 109687) = a2;
    *(this + 54844) = v3;
  }

  return result;
}

void BlueFin::GlDineCtrl::ComDacData(BlueFin::GlDineCtrl *this, char *a2, int a3)
{
  if (a3 < 1)
  {
    DeviceFaultNotify("glmesrd_dinectrl.cpp", 358, "ComDacData", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dinectrl.cpp", 358, "0");
  }

  v4 = (this + 31808);

  BlueFin::GlMeSrdTransactionManager::SetDacData(v4, a2, a3);
}

uint64_t BlueFin::GlDineCtrl::ChipData_GRABSNQ_643487(BlueFin::GlDineCtrl *this, unsigned __int8 *a2, int a3)
{
  if ((a3 - 1) > 0x10B)
  {
    DeviceFaultNotify("glmesrd_dinectrl.cpp", 371, "ChipData_GRABSNQ_643487", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dinectrl.cpp", 371, "false");
  }

  v4 = (this + 75168);

  return BlueFin::GlMeSrdCtrlSm::SetAsicData(v4, a2, a3);
}

unint64_t BlueFin::GlDineCtrl::LoadEswPatch(BlueFin::GlDineCtrl *this)
{
  GlCustomLog(14, "LoadEswPatch::GLL @%u\n", 643487);
  GlCustomLog(14, "GlDineCtrl::LoadEswPatch()\n");

  return BlueFin::GlMeSrdCtrlSm::LoadEswPatch((this + 75168));
}

uint64_t BlueFin::GlDineCtrl::AsicToStandby(BlueFin::GlDineCtrl *this)
{
  GlCustomLog(14, "GlDineCtrl::AsicToStandby()\n");

  return BlueFin::GlQueue::putFIFO((this + 75208), 25, 0);
}

void BlueFin::GlDineCtrl::SetPpsAiding(BlueFin::GlDineCtrl *this, int a2, double a3, double a4)
{
  v4 = -a3;
  if (a3 >= 0.0)
  {
    v4 = a3;
  }

  if (v4 < 1000.0)
  {
    BlueFin::GlMeSrdCtrlSm::SetPpsAiding((this + 75168), a2, a3, a4);
  }
}

uint64_t BlueFin::GlDineCtrl::SetTowAssist(BlueFin::GlDineCtrl *this, const BlueFin::GlTowAsstData *a2)
{
  GlCustomLog(14, "GlDineCtrl::SetTowAssist\n");
  v3 = *(*(this + 14357) + 16);

  return v3();
}

unint64_t BlueFin::GlDineCtrl::SetMeasurementPeriodCorrection(BlueFin::GlDineCtrl *this, int a2)
{
  GlCustomLog(14, "GlDineCtrl::SetMeasurementPeriodCorrection(%d)\n", a2);

  return BlueFin::GlMeSrdCtrlSm::SetMeasurementPeriodCorrection(this + 75168, a2);
}

void BlueFin::GlDineCtrl::DataBurstCtrl(BlueFin::GlDineCtrl *this, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if ((a2 & 1) == 0)
  {
    GlCustomLog(14, "GlDineCtrl::DataBurstCtrl(%s, %d, %d, 0x%02X, 0x%02X, %d, %d)\n", "OFF", a3, a4, a5, a6, a7, a8);
  }

  BlueFin::GlMeSrdCtrlSm::DataBurstCtrl((this + 75168), a2, a3, a4, a5, a6, a7, a8);
}

_BYTE *BlueFin::GlDineCtrl::Set1HzPhaseMs(BlueFin::GlDineCtrl *this, double a2)
{
  GlCustomLog(14, "GlDineCtrl::Set1HzPhaseMs(%f)\n", a2);

  return BlueFin::GlMeSrdCtrlSm::Set1HzPhaseMs(this + 75168, a2);
}

void BlueFin::GlDineCtrl::SaveNvRamAndRtc(BlueFin::GlDineCtrl *this, unsigned int a2, unsigned int *a3, int a4)
{
  v8 = "";
  if (a4)
  {
    v8 = ", Invalidate NvRam!";
  }

  GlCustomLog(14, "GlDineCtrl::SaveNvRamAndRtc(%u, %u, %u, %u %s)\n", a2, *a3, a3[1], a3[2], v8);

  BlueFin::GlMeSrdCtrlSm::SaveNvRamAndRtc((this + 75168), a2, a3, a4);
}

_BYTE *BlueFin::GlDineCtrl::MeasureCNTIN(BlueFin::GlDineCtrl *this, int a2)
{
  v4 = 70;
  if (a2)
  {
    v4 = 84;
  }

  GlCustomLog(14, "GlDineCtrl::MeasureCNTIN(%c)\n", v4);

  return BlueFin::GlMeSrdCtrlSm::MeasureCNTIN(this + 75168, a2);
}

uint64_t BlueFin::GlDineCtrl::SetMeasConfig(uint64_t a1, unsigned __int16 *a2)
{
  GlCustomLog(14, "GlDineCtrl::SetMeasConfig(%u)\n", *a2);
  v4 = *a2;

  return BlueFin::GlMeSrdCtrlSm::SetMeasurementIntervalMs(a1 + 75168, v4, v4);
}

uint64_t BlueFin::GlDineCtrl::SetDutyCycleParams(BlueFin::GlDineCtrl *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = a7;
  v8 = a6;
  v13 = this + 28672;
  result = GlCustomLog(14, "GlDineCtrl::SetDutyCycleParams %hu %hu\n", a6, a7);
  *(v13 + 911) = 257;
  v13[1824] = v8;
  v13[1792] = 1;
  v13[1793] = v7;
  v13[1794] = v7;
  v13[1800] = 1;
  *(v13 + 451) = a2;
  *(v13 + 452) = a3;
  *(v13 + 453) = a4;
  *(v13 + 454) = a5;
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetGeofenceMode(BlueFin::GlDineCtrl *this, int a2)
{
  v2 = a2;
  v4 = "Disabled";
  if (a2)
  {
    v4 = "Enabled";
    v5 = 49368;
  }

  else
  {
    v5 = 49352;
  }

  GlCustomLog(14, "GlDineCtrl::SetGeofenceMode(%s)\n", v4);
  result = BlueFin::GlMeSrdCtrlSm::SetGeofenceMode((this + 75168), v2);
  *(this + 14330) = this + v5;
  return result;
}

uint64_t BlueFin::GlDineCtrl::SetGeofenceData(uint64_t a1)
{
  GlCustomLog(14, "GlDineCtrl::SetGeofenceData()\n");

  return BlueFin::GlMeSrdCtrlSm::SetGeofenceData(a1 + 75168);
}

uint64_t BlueFin::GlDineCtrl::SetGeofenceSettings(BlueFin::GlDineCtrl *this, int a2)
{
  GlCustomLog(14, "GlDineCtrl::SetGeofenceSettings(%d)\n", a2);
  v3 = *(**(this + 9420) + 40);

  return v3();
}

uint64_t BlueFin::GlDineCtrl::GetGeofenceState(BlueFin::GlDineCtrl *this)
{
  GlCustomLog(14, "GlDineCtrl::GetGeofenceState()\n");

  return BlueFin::GlMeSrdCtrlSm::GetGeofenceState((this + 75168));
}

uint64_t BlueFin::GlDineCtrl::SetLowGainAntenna(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 30900) = a2;
  v2 = "false";
  if (a2)
  {
    v2 = "true";
  }

  return GlCustomLog(14, "GlDineCtrl::SetLowGainAntenna Setting Low Gain Antenna Mode to %s\n", v2);
}

uint64_t BlueFin::GlDineCtrl::SetGlitchRecoveryEnable(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 29846) = a2;
  v2 = "Disabled";
  if (a2)
  {
    v2 = "Enabled";
  }

  return GlCustomLog(14, "GlDineCtrl::SetGlitchRecoveryEnable is %s \n", v2);
}

uint64_t BlueFin::GlDineCtrl::SetRtcDutyCycleEnable(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 29847) = a2;
  v2 = "Disabled";
  if (a2)
  {
    v2 = "Enabled";
  }

  return GlCustomLog(14, "GlDineCtrl::SetRtcDutyCycleEnable is %s \n", v2);
}

uint64_t BlueFin::GlDineCtrl::SetPpsSyncInMode(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 31424) = a2;
  v4 = "Disabled";
  if (a2)
  {
    v4 = "Enabled";
  }

  result = GlCustomLog(14, "GlDineCtrl::SetPpsSyncInMode is %s \n", v4);
  if (a2)
  {
    v6 = *(*this + 792);

    return v6(this, 1);
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::SetL5ExtBias(BlueFin::GlDineCtrl *this, float a2)
{
  result = BlueFin::GlMeSrdAsicConfig::IsMinnowAsicType((this + 29288));
  if ((result & 1) == 0)
  {
    *(this + 7407) = a2;
    *(this + 29557) = 1;
    return GlCustomLog(14, "GlDineCtrl::SetL5ExtBias(m) is %f \n", a2);
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::SetPpsParam(uint64_t this, char a2, char a3, int a4, int a5, int a6)
{
  *(this + 29948) = a2;
  *(this + 29949) = a3;
  *(this + 29952) = a4;
  *(this + 29956) = a5;
  *(this + 29960) = a6;
  return this;
}

uint64_t BlueFin::GlDineCtrl::SetBdsSignalType(BlueFin::GlDineCtrl *this, const unsigned __int8 *a2)
{
  for (i = 0; i != 63; ++i)
  {
    *(this + i + 29885) = a2[i];
  }

  return GlCustomLog(14, "GlDineCtrl::SetBdsSignalType()\n");
}

uint64_t BlueFin::GlDineCtrl::SetGpsSignalType(BlueFin::GlDineCtrl *this, const unsigned __int8 *a2)
{
  for (i = 0; i != 32; ++i)
  {
    *(this + i + 29853) = a2[i];
  }

  return GlCustomLog(14, "GlDineCtrl::SetGpsSignalType()\n");
}

uint64_t BlueFin::GlDineCtrl::SetMeasIntMsForFactPlatformTest(BlueFin::GlDineCtrl *this, int a2)
{
  (*(**(this + 9419) + 48))(*(this + 9419));

  return BlueFin::GlMeSrdMeasTimingMgr::SetReportingInterval((this + 78240), a2);
}

uint64_t BlueFin::GlDineCtrl::SetSearch3G(uint64_t this, unsigned __int8 *a2)
{
  for (i = 0; i != 3; ++i)
  {
    *(this + 74155 + i) = a2[i];
  }

  return this;
}

__n128 BlueFin::GlDineCtrl::SetSpoofCarrierThresh(uint64_t a1, uint64_t a2)
{
  GlCustomLog(14, "GlDineCtrl::SetSpoofCarrierThresh()\n");
  if (*a2)
  {
    result = *(a2 + 4);
    *(a1 + 120044) = *(a2 + 20);
    *(a1 + 120028) = result;
    *(a1 + 120024) = 1;
  }

  return result;
}

uint64_t BlueFin::GlDineCtrl::EnableScanGrids(BlueFin::GlDineCtrl *this, int a2)
{
  v2 = "Disabled";
  if (a2)
  {
    v2 = "Enabled";
  }

  return GlCustomLog(14, "GlDineCtrl::EnableScanGrids is %s \n", v2);
}

unint64_t BlueFin::GlDineCtrl::GetRadioRegisters(BlueFin::GlDineCtrl *this, unsigned int *a2)
{
  BlueFin::GlMeSrdAsicConfig::SetRadioRegistersAddr((this + 29288), a2);

  return BlueFin::GlMeSrdCtrlSm::GetRadioRegisters((this + 75168));
}

__n128 BlueFin::GlDineCtrl::EnableIqDump(uint64_t a1, uint64_t a2)
{
  BlueFin::GlSetBase::operator=(a1 + 31296, a2);
  result = *(a2 + 12);
  v5 = *(a2 + 28);
  *(a1 + 31308) = result;
  *(a1 + 31324) = v5;
  return result;
}

unint64_t BlueFin::GlMeSrdRpcUtils::gll_utils_rpc_assert(BlueFin::GlMeSrdRpcUtils *this, unsigned __int8 a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a3 || !*a3)
  {
    a3 = "unknown";
  }

  BlueFin::GlFormat::glsnprintf(v12, 0x80, "%s args(%hlu %hlu %hlu)", a4, a3, a5, a6, a7);
  result = BlueFin::GlMeSrdCtrlSm::Assert((*(this + 1) + 75168), v12, a4, v9);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 BlueFin::GlDineCtrl::PlatformTest(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 73728;
  GlCustomLog(14, "GlDineCtrl::PlatformTest() \n");
  *(v4 + 1658) = 1;
  *(v4 + 1712) = *a2;
  result = *(a2 + 4);
  *(a1 + 75460) = *(a2 + 20);
  *(a1 + 75444) = result;
  return result;
}

uint64_t BlueFin::GlMeReceiverParametersIfc::GetRootGearIdFromSignalIdAndMode(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = BlueFin::GlMeReceiverParametersIfc::SvIdToCnstl(a2);
  v6 = *(*a1 + 96);

  return v6(a1, v5, a3);
}

uint64_t BlueFin::GlMeReceiverParametersIfc::GetAllModesTrkParamsFromSvId(uint64_t a1, unsigned __int8 *a2)
{
  v3 = BlueFin::GlMeReceiverParametersIfc::SvIdToCnstl(a2);
  v4 = *(*a1 + 152);

  return v4(a1, v3);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetModeTrkParamsFromCnstlAndMode(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 192);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetNumSrchParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 200);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetNumBinningStepParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 208);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetNumGearIds(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 216);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllSrchParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 224);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetHostSrchParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 232);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetEswSrchParamFromSpid(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 240);

  return v1();
}

uint64_t BlueFin::GlMeReceiverParametersIfc::SvIdToCnstl(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[*a1];
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      return 2;
    }

    else if (v4 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        if ((v3 - 134) >= 5 && (v3 - 76) >= 5)
        {
          return 3;
        }

        else
        {
          return 2;
        }

      case 5:
        return 4;
      case 6:
        return 5;
    }
  }

  return result;
}

float BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(BlueFin::GlMeSrdBitHistBuf *this, unsigned int *a2, const unsigned __int8 *a3, const unsigned int *a4)
{
  *(this + 4) = 0;
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  v5 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  v6 = *a3;
  if (v6 >= 0x1A)
  {
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 68, "GlMeSrdBitHistBuf", "rucNbHistBins <= MAX_NB_OF_HIST_BINS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.cpp", 68, "rucNbHistBins <= MAX_NB_OF_HIST_BINS");
  }

  *(this + 4) = v6;
  *this = *a4;
  if (v6)
  {
    do
    {
      v7 = *a2++;
      result = v7;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

void BlueFin::GlMeSrdEstBitPhs::~GlMeSrdEstBitPhs(BlueFin::GlMeSrdEstBitPhs *this)
{
  *this = &unk_2A1F0BF70;
}

{
  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlMeSrdEstBitPhs::AlignmentCheck(uint64_t a1, int a2, int a3, int a4, int a5, BlueFin::GlSignalId *this, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a11 = 0;
  *(a11 + 4) = -1082130432;
  *(a11 + 8) = 0;
  *(a11 + 10) = 127;
  result = BlueFin::GlSignalId::GetEpochPerSymbol(this);
  if (*(this + 4) >= 0x23Fu)
  {
    v30 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v31 = "glsignalid.h";
    v32 = 679;
    goto LABEL_47;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
  {
    v30 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v31 = "glsignalid.h";
    v32 = 686;
    goto LABEL_47;
  }

  if ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * result) != 2)
  {
    v30 = "ucBitIntvInCaEpoch == GlMeSrdEstBitPhsAlignmentObsBuf::NUM_OF_BIT_PHS";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 362, "AlignmentCheck", "ucBitIntvInCaEpoch == GlMeSrdEstBitPhsAlignmentObsBuf::NUM_OF_BIT_PHS");
    v31 = "glmesrd_bitphase.cpp";
    v32 = 362;
    goto LABEL_47;
  }

  if ((*(a8 + 232) & 1) == 0)
  {
    v30 = "stAsicBitPhsTrkMsmt.stAlignmentCheck.bValid";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 363, "AlignmentCheck", "stAsicBitPhsTrkMsmt.stAlignmentCheck.bValid");
    v31 = "glmesrd_bitphase.cpp";
    v32 = 363;
LABEL_47:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v31, v32, v30);
  }

  if (*(a8 + 233) == 1 && *(a8 + 252) > 0.0 && *a9 == 1 && *(a9 + 8) > 30.0)
  {
    v16.i64[0] = *(a7 + 8);
    *v18.i64 = *v16.i64 + trunc(*v16.i64 * 2.32830644e-10) * -4294967300.0;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v21 = vnegq_f64(v20);
    v18.i64[0] = vbslq_s8(v21, v18, v16).u64[0];
    if (*v16.i64 > 4294967300.0)
    {
      v16.i64[0] = v18.i64[0];
    }

    if (*v16.i64 < -4294967300.0)
    {
      *v17.i64 = -*v16.i64;
      *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
      *v16.i64 = -*vbslq_s8(v21, v16, v17).i64;
    }

    if (*v16.i64 < 0.0)
    {
      v22 = --*v16.i64;
    }

    else
    {
      v22 = *v16.i64;
    }

    v23 = (v22 % 2);
    v24 = a1 + 832;
    v25 = *(a1 + v23 + 836);
    if (((v25 + 1) & 0x100) != 0)
    {
      v26 = -1;
    }

    else
    {
      v26 = v25 + 1;
    }

    *(a1 + v23 + 836) = v26;
    v27 = *(a8 + 252) + -1.0;
    if (v27 < 0.0)
    {
      v27 = -v27;
    }

    if (v27 > 0.25 && (*(a8 + 234) == 1 && *(a8 + 236) > 0.04 || *(a8 + 235) == 1 && *(a8 + 240) > 0.04))
    {
      --*(v24 + 2 * v23);
    }

    if (v27 < 0.1 && (*(a8 + 234) == 1 && *(a8 + 236) > 0.25 || *(a8 + 235) == 1 && *(a8 + 240) > 0.25))
    {
      ++*(v24 + 2 * v23);
    }

    v28 = *(v24 + 2 * v23);
    if (v28 <= 2)
    {
      if (v28 > -3)
      {
        goto LABEL_40;
      }

      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    *a11 = 1;
    *(a11 + 4) = 1065353216;
    *(a11 + 10) = v29;
    *(a11 + 8) = 1;
  }

LABEL_40:
  if (*a11 == 1)
  {
    *(a1 + 832) = 0;
    *(a1 + 836) = 0;
  }

  return result;
}

void BlueFin::GlMeSrdEstBitPhs::Run(double a1, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, int a25, void *a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, __int16 a32, int a33, __int16 a34, int a35, uint64_t a36, int a37, char a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, int a45, uint64_t a46)
{
  STACK[0x5F8] = *MEMORY[0x29EDCA608];
  *(a14 + 4) = -1082130432;
  *(a14 + 8) = 0;
  *(a14 + 10) = 127;
  *a14 = 1;
  a26 = &unk_2A1F0BF90;
  a27 = 0;
  a28 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  a31 = _D0;
  a32 = 0;
  v49 = *(a11 + 4);
  v50 = *(a11 + 8);
  a34 = *a11;
  a36 = v50;
  a38 = 0;
  a35 = v49;
  a37 = 0;
  a39 = 0u;
  a40 = 0u;
  a41 = 0u;
  a42 = 0u;
  a43 = 0u;
  a44 = 0u;
  a45 = 0;
  STACK[0x588] = &a46;
  STACK[0x5C8] = &STACK[0x5A0];
  if ((*a12 & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1286, "GlMeSrdEstBitPhsSerializeContainer", "stAsicBitPhsSrchMsmt.stHistogram.bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 1286, "stAsicBitPhsSrchMsmt.stHistogram.bValid");
  }

  v51 = (a12 + 8);
  v52 = *(a12 + 8);
  if (!*(a12 + 8))
  {
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1287, "GlMeSrdEstBitPhsSerializeContainer", "stAsicBitPhsSrchMsmt.stHistogram.ucEffBitIntvlInCaEpochs > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 1287, "stAsicBitPhsSrchMsmt.stHistogram.ucEffBitIntvlInCaEpochs > 0");
  }

  for (i = 0; i != 324; i += 108)
  {
    v54 = &a26 + i;
    v54[164] = 0;
    *(v54 + 40) = 0;
    *(v54 + 168) = 0uLL;
    *(v54 + 184) = 0uLL;
    *(v54 + 200) = 0uLL;
    *(v54 + 216) = 0uLL;
    *(v54 + 232) = 0uLL;
    *(v54 + 248) = 0uLL;
    *(v54 + 66) = 0;
  }

  for (j = 0; j != 36; j += 12)
  {
    v56 = &a26 + j;
    v56[512] = 0;
    *(v56 + 129) = -1082130432;
    *(v56 + 260) = 0;
    v56[522] = 127;
  }

  a29 = v52;
  v57 = *(a12 + 9);
  a30 = *(a12 + 9);
  if (v52 > 0x14 || ((1 << v52) & 0x100404) == 0)
  {
    DeviceFaultNotify("glmesrd_bitphase.cpp", 822, "Run", "ucHistLen==20 || ucHistLen==10 || ucHistLen==2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 822, "ucHistLen==20 || ucHistLen==10 || ucHistLen==2");
  }

  if (v57 >= 3)
  {
    DeviceFaultNotify("glmesrd_bitphase.cpp", 827, "Run", "ucHistStp<=2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 827, "ucHistStp<=2");
  }

  v58 = (a12 + 12);
  if (v52 == 2)
  {
    *(a14 + 4) = 1065353216;
    *(a14 + 10) = 0;
    *(a14 + 8) = 1;
    BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf((&v120 + 4), v58, v51, (a12 + 4));
    v59 = BlueFin::GlMeSrdEstBitPhsSerializeContainer::Add2dBitHistObsAndResults(&a26, &v120 + 1, a14);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
LABEL_121:
      (*(a26 + 3))(&a26, 0, 0, v59);
    }
  }

  else
  {
    v60 = 0;
    v61 = *(a9 + 24);
    a25 = 0;
    a24 = 0;
    a23 = 0;
    a22 = 0;
    do
    {
      v62 = 0;
      v63 = v58[v60];
      while (v63 < *(&a22 + v62))
      {
        if (++v62 == 3)
        {
          goto LABEL_23;
        }
      }

      if (v62 <= 1)
      {
        v64 = &a25;
        v65 = &a23;
        v66 = 2;
        v67 = &a25;
        v68 = &a23;
        do
        {
          --v66;
          v69 = *--v67;
          *v64 = v69;
          v70 = *--v68;
          *v65 = v70;
          v64 = v67;
          v65 = v68;
        }

        while (v66 > v62);
      }

      *(&a24 + v62) = v60;
      *(&a22 + v62) = v63;
LABEL_23:
      ++v60;
    }

    while (v60 != v52);
    if (v52 == 20)
    {
      v71 = 10;
    }

    else
    {
      v71 = 6;
    }

    if (a22 < HIDWORD(a22))
    {
      DeviceFaultNotify("glmesrd_bitphase.cpp", 889, "Run", "aulPkHistVals[0] >= aulPkHistVals[1]");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 889, "aulPkHistVals[0] >= aulPkHistVals[1]");
    }

    if (HIDWORD(a22) < a23)
    {
      DeviceFaultNotify("glmesrd_bitphase.cpp", 890, "Run", "aulPkHistVals[1] >= aulPkHistVals[2]");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 890, "aulPkHistVals[1] >= aulPkHistVals[2]");
    }

    LOBYTE(v72) = a24;
    v73 = a24 - HIDWORD(a24);
    if (a24 - HIDWORD(a24) < 0)
    {
      v73 = HIDWORD(a24) - a24;
    }

    v74 = a24 - a25;
    if (a24 - a25 < 0)
    {
      v74 = a25 - a24;
    }

    v75 = (a22 - HIDWORD(a22));
    if (HIDWORD(a24) - a25 >= 0)
    {
      v76 = HIDWORD(a24) - a25;
    }

    else
    {
      v76 = a25 - HIDWORD(a24);
    }

    v77 = (a22 - a23);
    v78 = (HIDWORD(a22) - a23);
    v79 = v52 - v57;
    _ZF = v73 == v57 || v73 == v79;
    v81 = _ZF;
    v83 = v74 == v79 || v76 == v79;
    v84 = v83 & v81;
    if (v76 == v57)
    {
      v85 = v81;
    }

    else
    {
      v85 = v84;
    }

    if (v74 == v57)
    {
      v85 = v81;
    }

    v86 = (a24 == v79 + 1) & v85;
    if (a24 == v57 + 1)
    {
      v86 = v85;
    }

    if (a24 == 1)
    {
      v86 = v85;
    }

    v88 = v77 != v78 || HIDWORD(a22) != a23;
    v89 = v88 & v86;
    if (v75 != v77)
    {
      v89 = v86;
    }

    v90 = v77 + v78;
    v91 = v75 + v77;
    _ZF = (v75 + v77) == 0.0;
    v92 = 0.0;
    v94 = !_ZF && v90 != 0.0;
    v95 = v94 & v89;
    a4.i64[0] = 0;
    if (v95 == 1)
    {
      *a4.i32 = v75 / (v90 * 0.5);
      v92 = v78 / (v91 * 0.5);
    }

    v96 = v92 - *a4.i32;
    if ((v92 - *a4.i32) < 0.0)
    {
      v96 = -(v92 - *a4.i32);
    }

    a2.i32[1] = 1069128089;
    v97 = v95 & (v96 >= 0.1);
    if (v92 < *a4.i32)
    {
      v98 = v95 & (v96 >= 0.1);
    }

    else
    {
      v98 = 0;
    }

    v99 = a24 + v71;
    if (v52 <= v99)
    {
      v100 = v52;
    }

    else
    {
      v100 = 0;
    }

    v101 = v58[(v99 - v100)];
    if (v101)
    {
      v102 = v58[a24] / v101;
    }

    else
    {
      v102 = -1.0;
    }

    v103 = &dword_298A357F0;
    v104 = 10;
    while (*(a13 + 8) < *(v103 - 1))
    {
      v103 += 3;
      if (!--v104)
      {
        v105 = 10000;
        v106 = 2.0;
        goto LABEL_95;
      }
    }

    *a2.i32 = *(v103 - 2) * 1000.0;
    *a5.i32 = *a2.i32 + (truncf(*a2.i32 * 2.3283e-10) * -4295000000.0);
    v107.i64[0] = 0x8000000080000000;
    v107.i64[1] = 0x8000000080000000;
    a5.i32[0] = vbslq_s8(v107, a5, a2).u32[0];
    if (*a2.i32 > 4295000000.0)
    {
      a2.i32[0] = a5.i32[0];
    }

    if (*a2.i32 < -4295000000.0)
    {
      *a4.i32 = -*a2.i32;
      *a2.i32 = -(*a2.i32 - (truncf(*a2.i32 * -2.3283e-10) * -4295000000.0));
      *a2.i32 = -*vbslq_s8(v107, a2, a4).i32;
    }

    v106 = *v103;
    if (*a2.i32 < 0.0)
    {
      v105 = --*a2.i32;
    }

    else
    {
      v105 = *a2.i32;
    }

LABEL_95:
    v108 = (v61 << 25 >> 31) & v105;
    v110 = *(a12 + 4);
    v109 = (a12 + 4);
    v111 = v110 * v52;
    v113 = v110 * v52 >= v108 && v102 >= v106;
    v114 = v108 >> 1;
    v116 = v102 >= 1.08 && v111 >= v114;
    if ((v97 & (v116 || v113)) == 1)
    {
      if (v57 == 2)
      {
        v117 = v98;
      }

      else
      {
        v117 = 1;
      }

      if ((v117 & 1) == 0)
      {
        if (v73 == 2)
        {
          v72 = (HIDWORD(a24) + a24) / 2;
        }

        else if (v73 == v52 - 2)
        {
          v72 = (HIDWORD(a24) + a24) % v52;
        }
      }

      *(a14 + 4) = 1065353216;
      if (v72 <= v52 >> 1)
      {
        LOBYTE(v52) = 0;
      }

      *(a14 + 10) = v52 - v72 + 1;
      *(a14 + 8) = 1;
    }

    BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf((&v120 + 4), v58, v51, v109);
    v59 = BlueFin::GlMeSrdEstBitPhsSerializeContainer::Add2dBitHistObsAndResults(&a26, &v120 + 1, a14);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      goto LABEL_121;
    }
  }

  v118 = STACK[0x5F8];
  v119 = *MEMORY[0x29EDCA608];
}

float BlueFin::GlMeSrdEstBitPhsSerializeContainer::Add2dBitHistObsAndResults(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v8 = "m_bIsMiBitHist1DBit == false";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1348, "Add2dBitHistObsAndResults", "m_bIsMiBitHist1DBit == false");
    v9 = 1348;
    goto LABEL_6;
  }

  if (!*a2)
  {
    v8 = "o2DBitTotalAccBitHistBuf.GetTotalObsLenInEffSym() > 0";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1349, "Add2dBitHistObsAndResults", "o2DBitTotalAccBitHistBuf.GetTotalObsLenInEffSym() > 0");
    v9 = 1349;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v9, v8);
  }

  BlueFin::GlMeSrdBitHistBuf::operator=(*(a1 + 488) + 108 * *(a1 + 24), a2);
  v5 = *(a1 + 24);
  *(a1 + 25) = v5;
  v6 = *(a1 + 552) + 12 * v5;
  *v6 = *a3;
  result = *(a3 + 4);
  *(v6 + 4) = result;
  *(v6 + 8) = *(a3 + 8);
  *(v6 + 9) = *(a3 + 9);
  *(a1 + 24) = v5 + 1;
  return result;
}

uint64_t BlueFin::GlMeSrdEstBitPhsDeltaHistObsBuf::GlMeSrdEstBitPhsDeltaHistObsBuf(uint64_t this)
{
  v1 = 0;
  *this = this + 32;
  *(this + 8) = 1811941120;
  *(this + 16) = BlueFin::GlMeSrdEstBitPhsHistBuf::Print;
  *(this + 24) = 1;
  do
  {
    v2 = this + v1;
    *(v2 + 36) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0uLL;
    *(v2 + 56) = 0uLL;
    *(v2 + 72) = 0uLL;
    *(v2 + 88) = 0uLL;
    *(v2 + 104) = 0uLL;
    *(v2 + 120) = 0uLL;
    v1 += 108;
    *(v2 + 136) = 0;
  }

  while (v1 != 756);
  return this;
}

unint64_t BlueFin::GlMeSrdEstBitPhsHistBuf::Print(unint64_t this, _DWORD *a2, void *a3)
{
  if (((1 << (this >> 3)) & 0x2000800E) != 0)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      v4 = this;
      this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(this);
      if (this)
      {
        GlCustomLog(v4, "<%u [", *a2);
        for (i = 2; i != 27; ++i)
        {
          GlCustomLog(v4, "%f ", *&a2[i]);
        }

        return GlCustomLog(v4, "]>");
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSrdEstBitPhsSerializeContainer::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v26 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = 2;
    }

    if (v6 >= 3)
    {
      DeviceFaultNotify("glmesrd_bitphase.cpp", 1386, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 1386, "ucVersion >= 1 && ucVersion <= 2");
    }

    v22 = 14;
    v23 = v6;
    v24 = 0x1000000000000;
    v21 = &unk_2A1F09520;
    v25 = v6;
    BlueFin::GlSysLogEntry::PutU8(&v21, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v1 + 33)));
    BlueFin::GlSysLogEntry::PutU8(&v21, *(v5 + 32));
    BlueFin::GlSysLogEntry::PutU32(&v21, *(v5 + 36));
    BlueFin::GlSysLogEntry::PutD64(&v21, *(v5 + 40));
    BlueFin::GlSysLogEntry::PutU8(&v21, *(v5 + 11));
    BlueFin::GlSysLogEntry::PutU8(&v21, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutF32(&v21, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutF32(&v21, *(v5 + 20));
    BlueFin::GlSysLogEntry::PutU8(&v21, *(v5 + 24));
    if (*(v5 + 24))
    {
      v7 = 0;
      do
      {
        BlueFin::GlSysLogEntry::PutU32(&v21, *(*(v5 + 488) + 108 * v7));
        v8 = (*(v5 + 552) + 12 * v7);
        if (v8[8])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9 | *v8;
        if (v8[9])
        {
          v11 = 4;
        }

        else
        {
          v11 = 0;
        }

        BlueFin::GlSysLogEntry::PutU8(&v21, (v10 | v11 | (8 * (v7 == *(v5 + 25)))) & 0xF);
        BlueFin::GlSysLogEntry::PutF32(&v21, *(*(v5 + 552) + 12 * v7 + 4));
        BlueFin::GlSysLogEntry::PutS8(&v21, *(*(v5 + 552) + 12 * v7 + 10));
        if (*(v5 + 11))
        {
          v12 = 0;
          do
          {
            v13 = BlueFin::GlMeSrdBitHistBuf::operator[](*(v5 + 488) + 108 * v7, v12);
            BlueFin::GlSysLogEntry::PutF32(&v21, v13);
            ++v12;
          }

          while (v12 < *(v5 + 11));
        }

        ++v7;
      }

      while (v7 < *(v5 + 24));
    }

    if (*(v5 + 8))
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | *(v5 + 9);
    if (*(v5 + 10))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    BlueFin::GlSysLogEntry::PutU8(&v21, (v15 | v16) & 7);
    BlueFin::GlSysLogEntry::PutU32(&v21, *(v5 + 48));
    if (*(v5 + 11))
    {
      v17 = 0;
      do
      {
        if (*(v5 + 52))
        {
          v18 = BlueFin::GlMeSrdBitHistBuf::operator[](v5 + 48, v17);
        }

        else
        {
          v18 = 0.0;
        }

        BlueFin::GlSysLogEntry::PutF32(&v21, v18);
        ++v17;
      }

      while (v17 < *(v5 + 11));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v21, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdEstBitPhsSerializeContainer::Deserialize(BlueFin::GlMeSrdEstBitPhsSerializeContainer *this, BlueFin::GlSysLogEntry *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) == 14 && *(a2 + 12) - 3 >= 0xFFFFFFFE)
  {
    *(this + 33) = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
    *(this + 32) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 9) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetU8(a2);
    v5 = this + 11;
    *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetF32(a2);
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 24) = U8;
    if (U8)
    {
      v7 = 0;
      do
      {
        U32 = BlueFin::GlSysLogEntry::GetU32(a2);
        v8 = BlueFin::GlSysLogEntry::GetU8(a2);
        v9 = (*(this + 69) + 12 * v7);
        *v9 = v8 & 1;
        v9[8] = (v8 & 2) != 0;
        v9[9] = (v8 & 4) != 0;
        if ((v8 & 8) != 0)
        {
          *(this + 25) = v7;
        }

        *(*(this + 69) + 12 * v7 + 4) = BlueFin::GlSysLogEntry::GetF32(a2);
        *(*(this + 69) + 12 * v7 + 10) = BlueFin::GlSysLogEntry::GetS8(a2);
        if (*(this + 11))
        {
          v10 = 0;
          do
          {
            v16[v10++] = BlueFin::GlSysLogEntry::GetF32(a2);
          }

          while (v10 < *v5);
        }

        BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(v14, v16, this + 11, &U32);
        BlueFin::GlMeSrdBitHistBuf::operator=(*(this + 61) + 108 * v7++, v14);
      }

      while (v7 < *(this + 24));
    }

    v11 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 8) = (v11 & 4) != 0;
    *(this + 9) = v11 & 1;
    *(this + 10) = (v11 & 2) != 0;
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    if (*(this + 11))
    {
      v12 = 0;
      do
      {
        v16[v12++] = BlueFin::GlSysLogEntry::GetF32(a2);
      }

      while (v12 < *v5);
    }

    BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(v14, v16, this + 11, &U32);
    BlueFin::GlMeSrdBitHistBuf::operator=(this + 48, v14);
    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glmesrd_bitphase.cpp", 1528, "Deserialize", "rEntry.DataSize() == rEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 1528, "rEntry.DataSize() == rEntry.ReadIdx()");
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

double BlueFin::GlMeSrdEstCarrPrm::GlMeSrdEstCarrPrm(BlueFin::GlMeSrdEstCarrPrm *this)
{
  *this = &unk_2A1F0BFE8;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 9) = 0u;
  *(this + 15) = this + 144;
  *(this + 32) = 67111424;
  *(this + 17) = BlueFin::GlMeSrdEstCarrPrm::PrintValidityMagSqrdBufElem;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  *(this + 43) = this + 184;
  *(this + 88) = 268438016;
  *(this + 45) = BlueFin::GlMeSrdEstCarrPrm::PrintValidityMultiSecLagOneBufElem;
  *(this + 46) = 0xFFFFFFFF00000000;
  *(this + 195) = 0;
  *(this + 376) = 0;
  *(this + 95) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 192) = 575;
  *(this + 388) = 0;
  *(this + 49) = 0;
  return result;
}

void BlueFin::GlMeSrdEstCarrPrm::~GlMeSrdEstCarrPrm(BlueFin::GlMeSrdEstCarrPrm *this)
{
  *this = &unk_2A1F0BFE8;
}

{
  *this = &unk_2A1F0BFE8;
  JUMPOUT(0x29C292F70);
}

double BlueFin::GlMeSrdEstCarrPrm::SelectPublishedSrchCarrPrmEst(BlueFin::GlMeSrdEstCarrPrm *this, BlueFin::GlMeSrdCarrPrmResults *a2, BlueFin::GlMeSrdCarrPrmResults *a3)
{
  *(a3 + 1) = 0;
  *(a3 + 17) = 0;
  *(a3 + 36) = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  if (*a2 == 1)
  {
    *a3 = 1;
    v4 = *(a2 + 1);
    *(a3 + 1) = v4;
    if (v4 == 1)
    {
      result = *(a2 + 1);
      *(a3 + 1) = result;
      LODWORD(result) = *(a2 + 4);
      *(a3 + 4) = LODWORD(result);
      *(a3 + 5) = *(a2 + 5);
      if (*&result < 30.0)
      {
        *(a3 + 4) = 1106247680;
      }
    }

    v5 = *(a2 + 34);
    *(a3 + 34) = v5;
    if (v5 == 1)
    {
      *(a3 + 5) = *(a2 + 5);
      *(a3 + 14) = *(a2 + 14);
      result = *(a2 + 8);
      *(a3 + 8) = result;
    }
  }

  return result;
}

double BlueFin::GlMeSrdEstCarrPrm::Run(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned __int8 *a7, char a8, double a9, BlueFin::GlMeSrdCarrPrmResults *a10)
{
  if ((*a6 & 1) == 0)
  {
    v14 = "stAsicCarrPrmSrchMsmt.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1964, "Run", "stAsicCarrPrmSrchMsmt.bValid");
    v15 = 1964;
    goto LABEL_9;
  }

  v10 = *a7;
  if ((v10 - 1) >= 0xBC)
  {
    v14 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1965, "Run", "otSignalId.GetSvId().isValid()");
    v15 = 1965;
    goto LABEL_9;
  }

  if ((a1 + 376) != a7)
  {
    *(a1 + 376) = v10;
    *(a1 + 380) = *(a7 + 1);
    *(a1 + 384) = *(a7 + 4);
  }

  *(a1 + 388) = a8;
  *(a1 + 392) = a9;
  memset(v20, 0, sizeof(v20));
  v21 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v22 = vneg_f32(0x80000000800000);
  v23 = 0xFFFFFFFFLL;
  v24 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0x7FEFFFFFFFFFFFFFLL;
  v11 = *(a6 + 4);
  if (v11 != 2)
  {
    v14 = "0";
    if (v11 == 1)
    {
      DeviceFaultNotify("glmesrd_carrprm.cpp", 276, "EstSrchCarrPrmViaDopplerFocal", "0");
      v15 = 276;
    }

    else
    {
      DeviceFaultNotify("glmesrd_carrprm.cpp", 1982, "Run", "0");
      v15 = 1982;
    }

LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v15, v14);
  }

  v12 = *(a6 + 8);
  v16 = 257;
  v19 = 5;
  v17 = v12;
  v18 = *(a4 + 16) * 0.5;
  return BlueFin::GlMeSrdEstCarrPrm::SelectPublishedSrchCarrPrmEst(a1, &v16, a10);
}

double BlueFin::GlMeSrdEstCarrPrm::Run(uint64_t a1, unsigned __int8 *a2, char a3, double a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, double *a10, uint64_t a11)
{
  v11 = *a10;
  if ((*a10 & 1) == 0)
  {
    v34 = "rstAsicSniffMsmt.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2027, "Run", "rstAsicSniffMsmt.bValid");
    v35 = "glmesrd_carrprm.cpp";
    v36 = 2027;
    goto LABEL_21;
  }

  v12 = *a2;
  if ((v12 - 1) >= 0xBC)
  {
    v34 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2028, "Run", "otSignalId.GetSvId().isValid()");
    v35 = "glmesrd_carrprm.cpp";
    v36 = 2028;
    goto LABEL_21;
  }

  if ((a1 + 376) != a2)
  {
    *(a1 + 376) = v12;
    *(a1 + 380) = *(a2 + 1);
    *(a1 + 384) = *(a2 + 4);
  }

  *(a1 + 388) = a3;
  if (*(a10 + 1) != 1)
  {
    *(a11 + 20) = 4;
    v31 = a10[3];
    v32 = 200.0;
    goto LABEL_16;
  }

  if (*(a1 + 384) >= 0x23Fu)
  {
    v34 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v35 = "glsignalid.h";
    v36 = 693;
    goto LABEL_21;
  }

  v15 = *(a1 + 380);
  v16 = *(a1 + 376);
  if (v15 == 1)
  {
    v17 = 1.5;
    if ((v16 - 1) < 0x20 || (v16 - 66) < 0xA)
    {
      goto LABEL_12;
    }
  }

  v18 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v15 - v15 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]];
  if (!v18)
  {
    v34 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v35 = "glsignalid.h";
    v36 = 686;
LABEL_21:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v35, v36, v34);
  }

  v19 = v18 * 0.001;
  v17 = v19;
LABEL_12:
  v20 = a10[1] - a10[2];
  v21 = ((1.0 - (1.0 / (2 * *(a7 + 44)))) * 2.32) * 0.25;
  v22 = (v21 * v21) * a5;
  v23 = *(a8 + 4);
  v25 = 1.0;
  if ((v23 * 39.062) != 0.0)
  {
    v26 = (v23 * 39.062) * 3.14159265;
    v27 = v26;
    v25 = sinf(v27) / v26;
  }

  v28 = v23 * 122.718463;
  v24 = 2.0 / (v17 * 122.718463);
  v29 = ((v20 / v22) / ((v25 * v24) * (v25 - cosf(v28)))) / (v17 * 6.28318531);
  v30 = v29 * 0.5;
  *a9 = v30;
  *(a11 + 20) = 1;
  v31 = a10[3] + v30;
  v32 = 10.0;
LABEL_16:
  *(a11 + 8) = v31;
  *(a11 + 16) = v32;
  *(a11 + 1) = v11;
  *a11 = 1;
  *(a11 + 34) = 0;
  *(a11 + 36) = 0;
  result = 0.0;
  *(a11 + 40) = 0u;
  *(a11 + 56) = 0u;
  return result;
}

unint64_t BlueFin::GlMeSrdEstCarrPrm::PrintValidityMagSqrdBufElem(unint64_t this, float *a2, void *a3)
{
  if (((1 << (this >> 3)) & 0x2000800E) != 0 && BlueFin::GlUtils::m_ucEnabled)
  {
    v4 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(this);
    if (this)
    {
      return GlCustomLog(v4, "%f ", *a2);
    }
  }

  return this;
}

unint64_t BlueFin::GlMeSrdEstCarrPrm::PrintValidityMultiSecLagOneBufElem(unint64_t this, float *a2, void *a3)
{
  if (((1 << (this >> 3)) & 0x2000800E) != 0 && BlueFin::GlUtils::m_ucEnabled != 0)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(this);
    if (this && BlueFin::GlUtils::m_ucEnabled)
    {
      this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(v5);
      if (this)
      {
        return GlCustomLog(v5, "EstCarrPrm:LagOne:Averaging:BufElem fNumLagOneProd(%f) dInitCarrFrqOfMsmtRptInHz(%f) dResidCplxDotProdSum(%f) dResidCplxCrossProdSum(%f)\n", *a2, a2[3], a2[1], a2[2]);
      }
    }
  }

  return this;
}

void BlueFin::GlMeSrdEstCarrPrm::RunSubTrk(uint64_t a1, double *a2, uint64_t a3, float *a4, float *a5, uint64_t a6, double a7, uint64_t a8, float *a9, uint64_t a10, char a11, unsigned __int8 a12, char a13, unsigned __int8 a14, char a15, unsigned __int8 a16, unsigned __int16 a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21, char a22, unsigned int a23, unsigned __int8 a24, float *a25, _BYTE *a26, uint64_t a27)
{
  if ((*a19 & 1) == 0)
  {
    v51 = "stAsicCarrPrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2898, "RunSubTrk", "stAsicCarrPrmTrkMsmt.bValid");
    v52 = 2898;
    goto LABEL_23;
  }

  v27 = *a21;
  if ((v27 - 1) >= 0xBC)
  {
    v51 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2899, "RunSubTrk", "otSignalId.GetSvId().isValid()");
    v52 = 2899;
    goto LABEL_23;
  }

  v29 = a1;
  v30 = a26;
  v31 = a24;
  v32 = a23;
  v33 = a14;
  if ((a1 + 376) != a21)
  {
    *(a1 + 376) = v27;
    *(a1 + 380) = *(a21 + 1);
    *(a1 + 384) = *(a21 + 4);
  }

  *(a1 + 388) = a22;
  *(a1 + 392) = a7;
  v34 = *(a19 + 8);
  if (v34 == 1)
  {
    v35 = *(a19 + 24);
    v36 = *(a19 + 12);
    v37 = 1.0 / (*a4 + *a4);
  }

  else
  {
    LOBYTE(v34) = 0;
    v37 = 0.0;
    v35 = 0;
    v36 = 0.0;
  }

  v55 = *(a19 + 170);
  v38 = *(a19 + 122);
  *a27 = v34;
  *(a27 + 8) = v35;
  *(a27 + 16) = 0;
  *(a27 + 20) = v34;
  *(a27 + 24) = v36;
  *(a27 + 32) = v37;
  if (*(a19 + 48) == 1)
  {
    v39 = a3;
    v54 = a4;
    v40 = a5;
    v41 = v38;
    v42 = a9;
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaOpenLpLagOne(a1, a2, a3, a6, a19, a9, a25, a27, *a4, 1.0, a16, a17, a11, a12, 0, a11 | a14, a18, 0);
    v38 = v41;
    v32 = a23;
    v29 = a1;
    a9 = v42;
    v30 = a26;
    a4 = v54;
    a3 = v39;
    v31 = a24;
    a5 = v40;
    v33 = a14;
  }

  if (*(a19 + 88) == 1)
  {
    v53 = v31;
    v44 = v31;
    v45 = a3;
    v46 = a4;
    v47 = v33;
    v48 = a5;
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpFll(v29, a9, a3, a5, a6, a19, v38, 0, *a4, 1.0, 0, 0, 0, v32, v53, a25, a27);
    a4 = v46;
    a3 = v45;
    v31 = v44;
    a5 = v48;
    v33 = v47;
  }

  if (*(a19 + 144) == 1)
  {
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpPll(v29, *(a3 + 24), a19, a20, v55, v31, *a25, a27, a2[1], *a4, a5[8], a25[2]);
  }

  BlueFin::GlMeSrdEstCarrPrm::CrossCheckTrkCarrPrmEst(a6, a27, *&v35);
  BlueFin::GlMeSrdEstCarrPrm::SelectPublishedTrkCarrPrmEst(a6, a27, v33, v31, v30);
  if (*(a19 + 88) == 1)
  {
    v30[28] = 1;
    v30[29] = *(a27 + 121) ^ 1;
    v30[31] = 1;
    v30[32] = *(a27 + 160) ^ 1;
    v30[33] = *(a27 + 196) ^ 1;
  }

  if ((*(a19 + 8) & 1) == 0)
  {
    v51 = "stAsicCarrPrmTrkMsmt.stAcqPrm.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 3003, "RunSubTrk", "stAsicCarrPrmTrkMsmt.stAcqPrm.bValid");
    v52 = 3003;
LABEL_23:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v52, v51);
  }

  v49 = a25[2];
  v50 = *a25;

  BlueFin::GlMeSrdEstCarrPrm::OverrideTrkCarrPrmRmse(v29, v50, v30, v49);
}

void BlueFin::GlMeSrdEstCodePrm::~GlMeSrdEstCodePrm(BlueFin::GlMeSrdEstCodePrm *this)
{
  *this = &unk_2A1F0C018;
}

{
  *this = &unk_2A1F0C018;
  JUMPOUT(0x29C292F70);
}

float BlueFin::GlMeSrdEstCodePrm::SelectPublishedCodePrmEst(uint64_t a1, int *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *(a8 + 28) = 0;
  v8 = *(a2 + 22);
  v9 = (a6 ^ 1) & (*(a5 + 1) >> 5) & ((*(a5 + 3) & 0x10) >> 4) | ((*(a5 + 1) & 0x40) >> 6);
  if (v9 == 1)
  {
    *(a1 + 20) = 1;
    *(a1 + 28) = a3;
    v10 = *(a1 + 22);
    if (v8 > v10)
    {
      LOWORD(v10) = v8;
    }

    *(a1 + 22) = v10;
  }

  if (v8 >= a3)
  {
    goto LABEL_22;
  }

  if (*a4)
  {
    if (*(a1 + 24) >= 4u)
    {
      *(a1 + 20) = 1;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    v11 = *(a1 + 22);
    if (v8 > v11)
    {
      LOWORD(v11) = v8;
    }

    *(a1 + 22) = v11;
    if (*(a1 + 24) >= 4u)
    {
      *(a1 + 20) = 1;
      *(a1 + 28) = a3;
    }
  }

  v12 = *(a1 + 28);
  v13 = a3 >= v12;
  v14 = a3 - v12;
  if (!v13)
  {
    v23 = "ulEpochCntInMs >= m_stCodePhsState.m_ulStartOfDllProbationPeriodInMs";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 834, "UpdateDllProbation", "ulEpochCntInMs >= m_stCodePhsState.m_ulStartOfDllProbationPeriodInMs");
    v24 = 834;
    goto LABEL_42;
  }

  if (*(a1 + 20) == 1)
  {
    v15 = *(a1 + 22);
    if (v14 <= v15)
    {
      if (v8 <= v15)
      {
        v17 = *(a1 + 22);
      }

      else
      {
        v17 = v8;
      }

      *(a1 + 22) = v17;
LABEL_22:
      v16 = 1;
      goto LABEL_23;
    }
  }

  v16 = 0;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
LABEL_23:
  v18 = a6 & ~a7;
  v19 = *a2;
  v20 = *a2 != 0;
  if ((v18 & 1) != 0 || v19)
  {
    v21 = 0;
    if (a2[13] < a3)
    {
      LOBYTE(v9) = 1;
    }

    do
    {
      if (v20)
      {
        ++v21;
        if (v19 == 2)
        {
          goto LABEL_36;
        }

        if (v19 != 1)
        {
          goto LABEL_44;
        }
      }

      else if ((v18 & 1) == 0)
      {
LABEL_44:
        v23 = "0";
        DeviceFaultNotify("glmesrd_codeprm.cpp", 622, "SelectPublishedCodePrmEst", "0");
        v24 = 622;
        goto LABEL_42;
      }

      if (*a4)
      {
        if (!v16)
        {
          goto LABEL_40;
        }

        if ((v9 & 1) == 0)
        {
          if (*(a1 + 22) | v8)
          {
LABEL_40:
            *a8 = 1;
            *(a8 + 20) = 1;
            *(a8 + 8) = *(a4 + 8);
            result = *(a4 + 16);
            *(a8 + 16) = result;
            return result;
          }

          v23 = "dMaxDllPullinProbationTimeInMs > 0.0";
          DeviceFaultNotify("glmesrd_codeprm.cpp", 570, "SelectPublishedCodePrmEst", "dMaxDllPullinProbationTimeInMs > 0.0");
          v24 = 570;
LABEL_42:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", v24, v23);
        }
      }

      v18 = 0;
LABEL_36:
      v19 = a2[v21];
      v20 = v19 != 0;
    }

    while (v19 || (v18 & 1) != 0);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdEstCodePrm::Run(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, float *a10, uint64_t a11)
{
  if ((*a7 & 1) == 0)
  {
    v18 = "stAsicCodePrmSrchMsmt.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1025, "Run", "stAsicCodePrmSrchMsmt.bValid");
    v19 = "glmesrd_codeprm.cpp";
    v20 = 1025;
    goto LABEL_21;
  }

  v11 = *a6;
  if ((v11 - 1) >= 0xBC)
  {
    v18 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1026, "Run", "otSignalId.GetSvId().isValid()");
    v19 = "glmesrd_codeprm.cpp";
    v20 = 1026;
    goto LABEL_21;
  }

  if ((result + 8) != a6)
  {
    *(result + 8) = v11;
    *(result + 12) = *(a6 + 1);
    *(result + 16) = *(a6 + 4);
  }

  *a11 = 0;
  if (*a9 != 1)
  {
    *(a11 + 1) = *(a7 + 1);
    *(a11 + 8) = 0;
    *(a11 + 16) = 0;
    return result;
  }

  if (*(result + 16) >= 0x23Fu)
  {
    v18 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 778, "GetChipsPerEpoch", "IsValid()");
    v19 = "glsignalid.h";
    v20 = 778;
    goto LABEL_21;
  }

  v12 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * *(result + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(result + 8)]];
  if (!v12)
  {
    v18 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v19 = "glsignalid.h";
    v20 = 785;
LABEL_21:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v19, v20, v18);
  }

  v13 = v12;
  v14 = *(a7 + 8) - *(a9 + 28);
  *(a11 + 20) = 2;
  *(a11 + 16) = *(a9 + 12);
  *(a11 + 1) = *(a7 + 1);
  *a11 = 1;
  v15 = a10[7];
  if (v15 < 1.0 && a10[8] > 15.0)
  {
    *(a11 + 20) = 4;
    v14 = v14 - a10[6];
    *(a11 + 16) = v15;
  }

  v17 = v14 / v13 < 0.0;
  if (v14 / v13 == (v14 / v13))
  {
    v17 = 0;
  }

  *(a11 + 8) = v14 - ((v14 / v13) - v17) * v13;
  return result;
}

void BlueFin::GlMeSrdEstCodePrm::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, int *a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unsigned __int8 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((*a14 & 1) == 0)
  {
    v24 = "stAsicCodePrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1096, "Run", "stAsicCodePrmTrkMsmt.bValid");
    v25 = 1096;
    goto LABEL_16;
  }

  if ((*(a14 + 24) & 1) == 0)
  {
    v24 = "stAsicCodePrmTrkMsmt.stClosedLpDll.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1097, "Run", "stAsicCodePrmTrkMsmt.stClosedLpDll.bValid");
    v25 = 1097;
    goto LABEL_16;
  }

  v17 = *a7;
  if ((v17 - 1) >= 0xBC)
  {
    v24 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1098, "Run", "otSignalId.GetSvId().isValid()");
    v25 = 1098;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", v25, v24);
  }

  if ((a1 + 8) != a7)
  {
    *(a1 + 8) = v17;
    *(a1 + 12) = *(a7 + 1);
    *(a1 + 16) = *(a7 + 4);
  }

  v30 = 0;
  v31 = 0;
  v27 = *(a14 + 16);
  v26[0] = 1;
  v29 = 0;
  v21 = __exp10f(*(a15 + 8) / 10.0);
  v28 = sqrtf(((a5[22] * a5[23]) * ((2.0 / (v21 * (a5[5] * (2.0 - a5[23])))) + 1.0)) / (v21 + v21));
  BlueFin::GlMeSrdEstCodePrm::SelectPublishedCodePrmEst(a1, a6, *(a14 + 4), v26, a10, a12, a13, a16);
  *(a16 + 1) = *(a14 + 8);
  *(a16 + 32) = 0;
  *(a16 + 24) = 16777217;
  if (*(a7 + 1) == 2)
  {

    BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmsev2022(a1, v22, v23, a15, a5, a16);
  }

  else
  {

    BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmse(a1, v22, v23, a15, a5, a16);
  }
}

uint64_t BlueFin::GlMeSrdEstCodePrm::Run(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a7 & 1) == 0)
  {
    v19 = "rstAsicSniffCodeMsmt.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1311, "Run", "rstAsicSniffCodeMsmt.bValid");
    v20 = "glmesrd_codeprm.cpp";
    v21 = 1311;
    goto LABEL_18;
  }

  v8 = *a4;
  if ((v8 - 1) >= 0xBC)
  {
    v19 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1312, "Run", "otSignalId.GetSvId().isValid()");
    v20 = "glmesrd_codeprm.cpp";
    v21 = 1312;
    goto LABEL_18;
  }

  if ((result + 8) != a4)
  {
    *(result + 8) = v8;
    *(result + 12) = *(a4 + 1);
    *(result + 16) = *(a4 + 4);
  }

  v9 = *(a7 + 8);
  v10 = *(a7 + 1);
  if (v10 == 1)
  {
    v11 = *(a7 + 24) - *(a7 + 16);
    v12 = 1.0 / (2 * *(a3 + 44));
    v13 = ((v11 / *(a6 + 4)) / ((1.0 - v12) * 4.0)) * 0.5;
    *(a5 + 12) = v13;
    v9 = v9 - (v12 + v13);
  }

  if (*(result + 16) >= 0x23Fu)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 778, "GetChipsPerEpoch", "IsValid()");
    v20 = "glsignalid.h";
    v21 = 778;
    goto LABEL_18;
  }

  v14 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * *(result + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(result + 8)]];
  if (!v14)
  {
    v19 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v20 = "glsignalid.h";
    v21 = 785;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
  }

  v15 = v14;
  v16 = v9 / v14;
  v17 = v16 < 0.0;
  if (v16 == v16)
  {
    v17 = 0;
  }

  *a8 = 1;
  *(a8 + 1) = *(a7 + 2);
  *(a8 + 8) = v9 - (v16 - v17) * v15;
  *(a8 + 20) = 3;
  v18 = 0.0333;
  if (!v10)
  {
    v18 = 1.0;
  }

  *(a8 + 16) = v18;
  return result;
}

unint64_t BlueFin::GlMeSrdEstCodePrm::PrintValidityMagSqrdBufElem(unint64_t this, float *a2, void *a3)
{
  if (((1 << (this >> 3)) & 0x2000800E) != 0 && BlueFin::GlUtils::m_ucEnabled)
  {
    v4 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(this);
    if (this)
    {
      return GlCustomLog(v4, "%f ", *a2);
    }
  }

  return this;
}

unint64_t BlueFin::GlMeSrdEstCodePrm::PrintValidityEarlyLateBufElem(unint64_t this, uint64_t a2, void *a3)
{
  if (((1 << (this >> 3)) & 0x2000800E) != 0 && BlueFin::GlUtils::m_ucEnabled)
  {
    v4 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(this);
    if (this)
    {
      return GlCustomLog(v4, "<%f %hu %u> ", *a2, *(a2 + 4), *(a2 + 6));
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSrdCodePhsValidity::GlMeSrdCodePhsValidity(uint64_t this)
{
  v1 = 0;
  *(this + 56) = 0u;
  *this = 0;
  *(this + 8) = this + 56;
  *(this + 16) = 67111424;
  *(this + 24) = BlueFin::GlMeSrdEstCodePrm::PrintValidityMagSqrdBufElem;
  *(this + 32) = this + 96;
  *(this + 40) = 134220288;
  *(this + 48) = BlueFin::GlMeSrdEstCodePrm::PrintValidityEarlyLateBufElem;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  do
  {
    v2 = this + v1;
    *(v2 + 96) = 0;
    *(v2 + 100) = 0;
    *(v2 + 102) = 0;
    v1 += 8;
  }

  while (v1 != 80);
  return this;
}

void *BlueFin::GlMeGridRsltsAndParams::CopyFrom(unsigned __int8 *a1, uint64_t a2, uint8x8_t a3)
{
  a3.i32[0] = *a2;
  *a1 = *a2;
  v5 = *(a2 + 4);
  a1[4] = v5;
  a1[5] = *(a2 + 5);
  *(a1 + 2) = *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = 12;
    do
    {
      memcpy(&a1[v7], (a2 + v7), 4 * *a1);
      ++v6;
      v7 += 128;
    }

    while (v6 < *(a2 + 4));
    v8 = *a1;
  }

  else
  {
    v8 = vmovl_u8(a3).u8[0];
  }

  memcpy(a1 + 4108, (a2 + 4108), v8);
  v9 = *(a2 + 4);

  return memcpy(a1 + 4140, (a2 + 4140), v9);
}

uint64_t BlueFin::GlMeCorrVecAndParams::SetCorrVec(uint64_t result, unsigned int a2, int a3, int a4, char a5, char a6, int *a7)
{
  if (a2 >= 9)
  {
    v10 = "usCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 180, "SetCorrVec", "usCvecLen <= MAX_CVEC_LEN");
    v11 = 180;
    goto LABEL_11;
  }

  if (a3 >= 21)
  {
    v10 = "etCvecType < NUM_CVEC_TYPES";
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 181, "SetCorrVec", "etCvecType < NUM_CVEC_TYPES");
    v11 = 181;
    goto LABEL_11;
  }

  if (!a4)
  {
    v10 = "ucNumCvecsAveraged > 0";
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 182, "SetCorrVec", "ucNumCvecsAveraged > 0");
    v11 = 182;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", v11, v10);
  }

  if (a2)
  {
    v7 = (result + 4);
    v8 = a2;
    do
    {
      v9 = *a7++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *result = 1;
  *(result + 36) = a2;
  *(result + 40) = a3;
  *(result + 44) = a4;
  *(result + 45) = a5;
  *(result + 46) = a6;
  return result;
}

uint64_t BlueFin::GlMePkFitParams::SetParams(uint64_t this, float a2, float a3, float a4, char a5)
{
  if (a2 < 0.0)
  {
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 594, "SetParams", "fPkFitHeight >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 594, "fPkFitHeight >= 0");
  }

  if (a2 <= 0.0)
  {
    LOWORD(v5) = 0;
  }

  else
  {
    v5 = (a2 + 0.5);
    if (v5)
    {
      v6 = __clz(v5);
      v5 = v6 | (32 * (v5 << v6 >> 21));
    }
  }

  *(this + 2) = v5;
  *(this + 4) = a3;
  *(this + 8) = a4;
  *(this + 12) = a5;
  *this = 1;
  return this;
}

uint64_t BlueFin::GlMeCorrVecAndParams::GetSrchCvecType(BlueFin::GlMeCorrVecAndParams *this)
{
  if (this == 1)
  {
    return 20;
  }

  if (this == 4)
  {
    return 7;
  }

  if (this != 2)
  {
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 238, "GetSrchCvecType", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 238, "0");
  }

  return 6;
}

uint64_t BlueFin::GlMeCorrVecContainer::GlMeCorrVecContainer(uint64_t result, uint64_t a2, char a3, int a4, double a5)
{
  *result = &unk_2A1F0C048;
  *(result + 8) = *a2;
  v5 = *(a2 + 4);
  *(result + 16) = *(a2 + 8);
  *(result + 12) = v5;
  *(result + 20) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 744) = result + 64;
  *(result + 760) = 0;
  *(result + 752) = 0;
  *(result + 756) = 0;
  for (i = 64; i != 744; i += 68)
  {
    v7 = (*(result + 744) + i);
    *(v7 - 32) = 0;
    *(v7 - 62) = 0;
    *(v7 - 14) = 0;
    *(v7 - 6) = 21;
    *(v7 - 10) = 0;
    *(v7 - 18) = 0;
    *(v7 - 16) = 0;
    *(v7 - 7) = 0;
    *(v7 - 7) = 0;
    *v7 = 0;
    *(v7 - 30) = 0uLL;
    *(v7 - 22) = 0uLL;
  }

  return result;
}

uint64_t BlueFin::GlMeCorrVecContainer::GetWritableCorrVecAndParams(BlueFin::GlMeCorrVecContainer *this, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 338, "GetWritableCorrVecAndParams", "ucIdx < MAX_NUM_CVECS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 338, "ucIdx < MAX_NUM_CVECS");
  }

  return *(this + 93) + 68 * a2;
}

uint64_t BlueFin::GlMeCorrVecContainer::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v33 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2 && v2 != 7)
    {
      DeviceFaultNotify("glmesrd_corrvec_container.cpp", 360, "SerializeImpl", "ucVersion >= 7 && ucVersion <= 7");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 360, "ucVersion >= 7 && ucVersion <= 7");
    }

    v29 = 13;
    v30 = 7;
    v31 = 0x1000000000000;
    v28 = &unk_2A1F09520;
    v32 = 7;
    BlueFin::GlSysLogEntry::PutU8(&v28, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v1 + 8)));
    BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 20));
    BlueFin::GlSysLogEntry::PutU32(&v28, *(v5 + 24));
    BlueFin::GlSysLogEntry::PutD64(&v28, *(v5 + 32));
    v6 = 0;
    v7 = (*(v5 + 744) + 44);
    v8 = 10;
    do
    {
      v9 = *(v7 - 1);
      if (*(v7 - 44) == 1)
      {
        if (v9 >= 21)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 379, "SerializeImpl", "rSlot.m_etCvecType < GlMeCorrVecAndParams::NUM_CVEC_TYPES");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 379, "rSlot.m_etCvecType < GlMeCorrVecAndParams::NUM_CVEC_TYPES");
        }

        if (!*v7)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 380, "SerializeImpl", "rSlot.m_ucNumCvecsAveraged > 0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 380, "rSlot.m_ucNumCvecsAveraged > 0");
        }

        ++v6;
      }

      else
      {
        if (v9 != 21)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 385, "SerializeImpl", "rSlot.m_etCvecType == GlMeCorrVecAndParams::NUM_CVEC_TYPES");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 385, "rSlot.m_etCvecType == GlMeCorrVecAndParams::NUM_CVEC_TYPES");
        }

        if (*v7)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 386, "SerializeImpl", "rSlot.m_ucNumCvecsAveraged == 0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 386, "rSlot.m_ucNumCvecsAveraged == 0");
        }

        if (*(v7 - 43) == 1)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 387, "SerializeImpl", "!rSlot.m_bHavePkFitResults");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 387, "!rSlot.m_bHavePkFitResults");
        }

        if (*(v7 - 42) == 1)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 388, "SerializeImpl", "!rSlot.m_bHaveCvecMetric");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 388, "!rSlot.m_bHaveCvecMetric");
        }
      }

      v7 += 68;
      --v8;
    }

    while (v8);
    if (!v6)
    {
      DeviceFaultNotify("glmesrd_corrvec_container.cpp", 392, "SerializeImpl", "ucNumCvecs > 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 392, "ucNumCvecs > 0");
    }

    BlueFin::GlSysLogEntry::PutU8(&v28, v6);
    v10 = 0;
    v11 = 4;
    do
    {
      v12 = *(v5 + 744);
      v13 = v12 + 68 * v10;
      if (*v13 == 1)
      {
        v14 = *(v13 + 1);
        if (*(v13 + 2))
        {
          v14 |= 2u;
        }

        v15 = *(v13 + 36);
        if (!*(v13 + 36))
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 416, "SerializeImpl", "rSlot.m_usCvecLen >= 1");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 416, "rSlot.m_usCvecLen >= 1");
        }

        if (v15 >= 9)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 417, "SerializeImpl", "rSlot.m_usCvecLen <= MAX_CVEC_LEN");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 417, "rSlot.m_usCvecLen <= MAX_CVEC_LEN");
        }

        BlueFin::GlSysLogEntry::PutU16(&v28, (v14 | (16 * v15)) - 16);
        BlueFin::GlSysLogEntry::PutU8(&v28, *(v13 + 40));
        BlueFin::GlSysLogEntry::PutU8(&v28, *(v13 + 44));
        if (*(v13 + 36) > 8u)
        {
          DeviceFaultNotify("glmesrd_corrvec_container.cpp", 428, "SerializeImpl", "rSlot.m_usCvecLen <= _DIM(rSlot.m_afCvec)");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 428, "rSlot.m_usCvecLen <= _DIM(rSlot.m_afCvec)");
        }

        if (*(v13 + 36))
        {
          v16 = 0;
          v17 = v12 + v11;
          do
          {
            BlueFin::GlSysLogEntry::PutF32(&v28, *(v17 + 4 * v16++));
          }

          while (v16 < *(v13 + 36));
        }

        if (*(v13 + 1))
        {
          if ((*(v13 + 48) & 1) == 0)
          {
            DeviceFaultNotify("glmesrd_corrvec_container.cpp", 437, "SerializeImpl", "rSlot.m_otPkFitResults.Valid()");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 437, "rSlot.m_otPkFitResults.Valid()");
          }

          BlueFin::GlSysLogEntry::PutU16(&v28, *(v13 + 50));
          if ((*(v13 + 48) & 1) == 0)
          {
            DeviceFaultNotify("glme_corvec.h", 68, "GetOffset", "m_bValid");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_corvec.h", 68, "m_bValid");
          }

          BlueFin::GlSysLogEntry::PutF32(&v28, *(v13 + 52));
          if ((*(v13 + 48) & 1) == 0)
          {
            DeviceFaultNotify("glme_corvec.h", 69, "GetGradient", "m_bValid");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_corvec.h", 69, "m_bValid");
          }

          BlueFin::GlSysLogEntry::PutF32(&v28, *(v13 + 56));
          if ((*(v13 + 48) & 1) == 0)
          {
            DeviceFaultNotify("glme_corvec.h", 70, "GetStatus", "m_bValid");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_corvec.h", 70, "m_bValid");
          }

          BlueFin::GlSysLogEntry::PutU8(&v28, *(v13 + 60));
        }

        if (*(v13 + 2) == 1)
        {
          BlueFin::GlSysLogEntry::PutU16(&v28, *(v13 + 64));
        }
      }

      ++v10;
      v11 += 68;
    }

    while (v10 != 10);
    BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 752));
    if (*(v5 + 752))
    {
      BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 753));
      BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 754));
      BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 755));
      BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 756));
      BlueFin::GlSysLogEntry::PutU8(&v28, *(v5 + 757));
      BlueFin::GlSysLogEntry::PutF32(&v28, *(v5 + 760));
      LODWORD(v18) = *(v5 + 752);
      if (v18 > 0x20)
      {
        DeviceFaultNotify("glmesrd_corrvec_container.cpp", 461, "SerializeImpl", "m_otGridRslts.m_ucCvecLen <= GRID_MAX_TAPS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", 461, "m_otGridRslts.m_ucCvecLen <= GRID_MAX_TAPS");
      }

      if (*(v5 + 756))
      {
        v19 = 0;
        do
        {
          BlueFin::GlSysLogEntry::PutS8(&v28, *(v5 + 4892 + v19++));
          v20 = *(v5 + 756);
        }

        while (v19 < v20);
        LODWORD(v18) = *(v5 + 752);
        if (*(v5 + 756))
        {
          v21 = 0;
          v22 = v5 + 764;
          v23 = *(v5 + 752);
          do
          {
            if (v23)
            {
              v24 = 0;
              do
              {
                BlueFin::GlSysLogEntry::PutU32(&v28, *(v22 + 4 * v24++));
                v18 = *(v5 + 752);
              }

              while (v24 < v18);
              LOBYTE(v20) = *(v5 + 756);
              v23 = *(v5 + 752);
            }

            ++v21;
            v22 += 128;
          }

          while (v21 < v20);
        }
      }

      if (v18)
      {
        v25 = 0;
        do
        {
          BlueFin::GlSysLogEntry::PutS8(&v28, *(v5 + 4860 + v25++));
        }

        while (v25 < *(v5 + 752));
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v28, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeCorrVecContainer::Deserialize(BlueFin::GlMeCorrVecContainer *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 13 || *(a2 + 12) - 8 < 0xFFFFFFFE)
  {
    return 0;
  }

  v5 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if ((v5 - 189) >= 0xFFFFFF44)
  {
    v8 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * U8 - U8 + v8] == 255)
    {
      v7 = 575;
      U8 = -1;
    }

    else
    {
      v7 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v8] + BlueFin::GlSvId::s_aucGnss2numSvId[v8] * U8;
    }
  }

  else
  {
    v7 = 575;
  }

  *(this + 8) = v5;
  *(this + 3) = U8;
  *(this + 8) = v7;
  *(this + 20) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  v9 = BlueFin::GlSysLogEntry::GetU8(a2);
  if (v9 > 0xA)
  {
    v31 = "ucNumCvecs <= MAX_NUM_CVECS";
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 500, "Deserialize", "ucNumCvecs <= MAX_NUM_CVECS");
    v32 = 500;
    goto LABEL_39;
  }

  if (v9)
  {
    v10 = 0;
    v11 = 4;
    v12 = v9;
    while (1)
    {
      v13 = *(this + 93);
      v14 = v13 + 68 * v10;
      U16 = BlueFin::GlSysLogEntry::GetU16(a2);
      *(v14 + 40) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(v14 + 44) = BlueFin::GlSysLogEntry::GetU8(a2);
      *v14 = 1;
      *(v14 + 1) = U16 & 1;
      *(v14 + 2) = (U16 & 2) != 0;
      *(v14 + 36) = (U16 >> 4) + 1;
      if (U16 > 0x7F)
      {
        break;
      }

      v16 = 0;
      v17 = v13 + v11;
      do
      {
        *(v17 + 4 * v16++) = BlueFin::GlSysLogEntry::GetF32(a2);
      }

      while (v16 < *(v14 + 36));
      if (*(v14 + 1))
      {
        v18 = BlueFin::GlSysLogEntry::GetU16(a2);
        F32 = BlueFin::GlSysLogEntry::GetF32(a2);
        v20 = BlueFin::GlSysLogEntry::GetF32(a2);
        v21 = BlueFin::GlSysLogEntry::GetU8(a2);
        *(v14 + 50) = v18;
        *(v14 + 52) = F32;
        *(v14 + 56) = v20;
        *(v14 + 60) = v21;
        *(v14 + 48) = 1;
      }

      if (*(v14 + 2) == 1)
      {
        *(v14 + 64) = BlueFin::GlSysLogEntry::GetU16(a2);
      }

      ++v10;
      v11 += 68;
      if (v10 == v12)
      {
        goto LABEL_20;
      }
    }

    v31 = "rSlot.m_usCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 517, "Deserialize", "rSlot.m_usCvecLen <= MAX_CVEC_LEN");
    v32 = 517;
LABEL_39:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_container.cpp", v32, v31);
  }

LABEL_20:
  if (*(a2 + 12) > 6u)
  {
    v22 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 752) = v22;
    if (v22)
    {
      *(this + 753) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 754) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 755) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 756) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 757) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 190) = BlueFin::GlSysLogEntry::GetF32(a2);
      LODWORD(v23) = *(this + 752);
      if (v23 > 0x20)
      {
        v31 = "m_otGridRslts.m_ucCvecLen <= GRID_MAX_TAPS";
        DeviceFaultNotify("glmesrd_corrvec_container.cpp", 555, "Deserialize", "m_otGridRslts.m_ucCvecLen <= GRID_MAX_TAPS");
        v32 = 555;
        goto LABEL_39;
      }

      if (*(this + 756))
      {
        v24 = 0;
        do
        {
          *(this + v24++ + 4892) = BlueFin::GlSysLogEntry::GetS8(a2);
          v25 = *(this + 756);
        }

        while (v24 < v25);
        LODWORD(v23) = *(this + 752);
        if (*(this + 756))
        {
          v26 = 0;
          v27 = this + 764;
          v28 = *(this + 752);
          do
          {
            if (v28)
            {
              v29 = 0;
              do
              {
                *&v27[4 * v29++] = BlueFin::GlSysLogEntry::GetU32(a2);
                v23 = *(this + 752);
              }

              while (v29 < v23);
              LOBYTE(v25) = *(this + 756);
              v28 = *(this + 752);
            }

            ++v26;
            v27 += 128;
          }

          while (v26 < v25);
        }
      }

      if (v23)
      {
        v30 = 0;
        do
        {
          *(this + v30++ + 4860) = BlueFin::GlSysLogEntry::GetS8(a2);
        }

        while (v30 < *(this + 752));
      }
    }
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    v31 = "rEntry.DataSize() == rEntry.ReadIdx()";
    DeviceFaultNotify("glmesrd_corrvec_container.cpp", 574, "Deserialize", "rEntry.DataSize() == rEntry.ReadIdx()");
    v32 = 574;
    goto LABEL_39;
  }

  return 1;
}

void BlueFin::GlMeSrdEstCrossCorr::~GlMeSrdEstCrossCorr(BlueFin::GlMeSrdEstCrossCorr *this)
{
  *this = &unk_2A1F0C090;
}

{
  *this = &unk_2A1F0C090;
  JUMPOUT(0x29C292F70);
}

void BlueFin::GlMeSrdEstCrossCorr::Run(int a1, int a2, int a3, uint64_t a4, BlueFin::GlMeSrdCNoResults *this, uint64_t a6, uint64_t a7)
{
  v59 = *MEMORY[0x29EDCA608];
  BlueFin::GlMeSrdCNoResults::isGarbage(this);
  if (v15)
  {
    v53 = "!stCNoResults.isGarbage()";
    DeviceFaultNotify("glmesrd_crosscorr.cpp", 61, "Run", "!stCNoResults.isGarbage()");
    v54 = "glmesrd_crosscorr.cpp";
    v55 = 61;
    goto LABEL_63;
  }

  if (*(this + 1) != 1)
  {
    v53 = "stCNoResults.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SEARCH";
    DeviceFaultNotify("glmesrd_crosscorr.cpp", 62, "Run", "stCNoResults.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SEARCH");
    v54 = "glmesrd_crosscorr.cpp";
    v55 = 62;
LABEL_63:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v54, v55, v53);
  }

  if (*this != 1)
  {
    goto LABEL_42;
  }

  v16 = *(a6 + 1);
  if (!*(a6 + 1))
  {
    goto LABEL_42;
  }

  v17 = 0;
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  v11.i32[0] = *(this + 5);
  v18 = *(this + 6);
  LOWORD(v12) = *(a4 + 26);
  v19 = fabsf(v18) * v12;
  v20 = *(a6 + 4);
  v21 = v18 + *(a6 + 36);
  do
  {
    if (!v17 && (*v11.i32 > v20 ? (v22 = v19 < 1.0) : (v22 = 0), v22))
    {
      LODWORD(v57[0]) = v11.i32[0];
      *v56 = v21;
    }

    else
    {
      *(v57 + v17) = *(a6 + v17 + 4);
      *(v56 + v17) = *(a6 + v17 + 36);
    }

    v17 += 4;
  }

  while (4 * v16 != v17);
  v11.i16[0] = *(a4 + 10);
  *v11.i32 = v11.u32[0] * 0.003;
  *v14.i32 = *v11.i32 + (truncf(*v11.i32 * 2.3283e-10) * -4295000000.0);
  v23.i64[0] = 0x8000000080000000;
  v23.i64[1] = 0x8000000080000000;
  v14.i32[0] = vbslq_s8(v23, v14, v11).u32[0];
  if (*v11.i32 > 4295000000.0)
  {
    v11.i32[0] = v14.i32[0];
  }

  if (*v11.i32 < -4295000000.0)
  {
    *v13.i32 = -*v11.i32;
    *v11.i32 = -(*v11.i32 - (truncf(*v11.i32 * -2.3283e-10) * -4295000000.0));
    *v11.i32 = -*vbslq_s8(v23, v11, v13).i32;
  }

  if (*v11.i32 < 0.0)
  {
    v24 = --*v11.i32;
  }

  else
  {
    LOBYTE(v24) = *v11.i32;
  }

  v25 = *(this + 4);
  if (v25 <= 0.0 || *v57 <= 0.0 || v20 <= 0.0)
  {
LABEL_42:
    *a7 = 0;
    *(a7 + 8) = 0;
    goto LABEL_43;
  }

  v26 = 0;
  LOBYTE(v27) = 0;
  v28 = (*v57 * 3.0) / v25;
  v29 = v28 + (v20 * 0.063539);
  v30 = *v56;
  v31 = *(a6 + 80);
  v32 = *(a6 + 72);
  v33 = *(a6 + 76);
  do
  {
    if (v26 && *(v57 + v26) > *(v57 + (v26 - 1)))
    {
      v53 = "fPeakMag[ucI] <= fPeakMag[ucI - 1]";
      DeviceFaultNotify("glmesrd_crosscorr.cpp", 185, "Run", "fPeakMag[ucI] <= fPeakMag[ucI - 1]");
      v54 = "glmesrd_crosscorr.cpp";
      v55 = 185;
      goto LABEL_63;
    }

    v34 = *(v56 + v26);
    if (v27)
    {
      v35 = v27;
      v36 = 1;
      v37 = v58;
      do
      {
        v38 = *v37++;
        v36 &= vabds_f32(v34, *(v56 + v38)) > 1.0;
        --v35;
      }

      while (v35);
    }

    else
    {
      v36 = 1;
    }

    if (v31 >= 0x23F)
    {
      v53 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 792, "GetSecondsPerChip", "IsValid()");
      v54 = "glsignalid.h";
      v55 = 792;
      goto LABEL_63;
    }

    v39 = BlueFin::GlSvId::s_aucSvId2gnss[v32];
    v40 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v33 + v39];
    v41 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v33 - v33 + v39];
    if (v40)
    {
      v42 = v41 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      v53 = "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 800, "GetSecondsPerChip", "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0");
      v54 = "glsignalid.h";
      v55 = 800;
      goto LABEL_63;
    }

    v43 = v41 / (1000 * v40) * 299792458.0;
    if (((vabds_f32(v34, v30) > (2000.0 / v43)) & v36) != 0)
    {
      v58[v27] = v26;
      LOBYTE(v27) = v27 + 1;
    }

    ++v26;
  }

  while (v26 != v16);
  if (v27 < 3u)
  {
    goto LABEL_42;
  }

  v45 = 0;
  v46 = 0;
  v27 = v27;
  v47 = v58;
  do
  {
    v48 = *v47++;
    v49 = *(v57 + v48);
    if (v49 > v28)
    {
      ++v46;
    }

    if (v49 > v29)
    {
      ++v45;
    }

    --v27;
  }

  while (v27);
  v50 = *(v57 + v58[0]) + *(v57 + v58[0]);
  *(a7 + 4) = v46;
  *(a7 + 5) = v45;
  *(a7 + 6) = v24;
  *(a7 + 7) = 1;
  *(a7 + 8) = v28;
  *(a7 + 12) = v29;
  if (v45 > 1u && v46 > v24)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  *a7 = v52;
  if (v20 > v50)
  {
    *a7 = 1;
    *(a7 + 4) = 0;
    *(a7 + 12) = 0;
  }

LABEL_43:
  v44 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlMeSrdDspMeasAux::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v19 = *MEMORY[0x29EDCA608];
  if (!v3 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    goto LABEL_61;
  }

  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 14;
  }

  v7 = *(v1 + 9);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
LABEL_61:
      result = 0;
      goto LABEL_62;
    }

    if (v7 != 4)
    {
      goto LABEL_73;
    }

    if (BlueFin::GlMeSrdDspMeasAux::isGarbage(v1))
    {
      v12 = "!isGarbage()";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1147, "SerializeSubTrack", "!isGarbage()");
      v13 = 1147;
    }

    else if (*(v5 + 64))
    {
      if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
      {
        goto LABEL_61;
      }

      if (v6 > 5)
      {
        v15 = 89;
        v16 = v6;
        v17 = 0x1000000000000;
        v14 = &unk_2A1F09520;
        v18 = v6;
        BlueFin::GlSysLogEntry::PutU8(&v14, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v5 + 8)));
        if (v6 >= 8)
        {
          BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 12));
          BlueFin::GlSysLogEntry::PutU8(&v14, BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v5 + 3) - *(v5 + 3) + BlueFin::GlSvId::s_aucSvId2gnss[*(v5 + 8)]]);
        }

        BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 20));
        BlueFin::GlSysLogEntry::PutD64(&v14, *(v5 + 3));
        if (v6 != 6)
        {
          BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 32));
        }

        BlueFin::GlSysLogEntry::PutU8(&v14, 4);
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v4, 4);
        goto LABEL_52;
      }

      v12 = "ucVersion >= 6";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1155, "SerializeSubTrack", "ucVersion >= 6");
      v13 = 1155;
    }

    else
    {
      v12 = "m_stTrkRslts.m_bValid";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1148, "SerializeSubTrack", "m_stTrkRslts.m_bValid");
      v13 = 1148;
    }

LABEL_72:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.cpp", v13, v12);
  }

  if (v7 == 1)
  {
    if (BlueFin::GlMeSrdDspMeasAux::isGarbage(v1))
    {
      v12 = "!isGarbage()";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1183, "SerializeSearch", "!isGarbage()");
      v13 = 1183;
    }

    else if (*(v5 + 40))
    {
      if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
      {
        goto LABEL_61;
      }

      if (v6 > 5)
      {
        v15 = 89;
        v16 = v6;
        v17 = 0x1000000000000;
        v14 = &unk_2A1F09520;
        v18 = v6;
        BlueFin::GlSysLogEntry::PutU8(&v14, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v5 + 8)));
        if (v6 >= 8)
        {
          BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 12));
          BlueFin::GlSysLogEntry::PutU8(&v14, BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v5 + 3) - *(v5 + 3) + BlueFin::GlSvId::s_aucSvId2gnss[*(v5 + 8)]]);
        }

        BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 20));
        BlueFin::GlSysLogEntry::PutD64(&v14, *(v5 + 3));
        if (v6 != 6)
        {
          BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 32));
        }

        BlueFin::GlSysLogEntry::PutU8(&v14, 1);
        BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 11));
        BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 12));
        BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 14));
        BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 52));
        BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 53));
        BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 40));
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v4, 4);
        goto LABEL_52;
      }

      v12 = "ucVersion >= 6";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1191, "SerializeSearch", "ucVersion >= 6");
      v13 = 1191;
    }

    else
    {
      v12 = "m_stSrchRslts.m_bValid";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1184, "SerializeSearch", "m_stSrchRslts.m_bValid");
      v13 = 1184;
    }

    goto LABEL_72;
  }

  if (v7 != 2)
  {
LABEL_73:
    v12 = "0";
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1029, "SerializeImpl", "0");
    v13 = 1029;
    goto LABEL_72;
  }

  if (BlueFin::GlMeSrdDspMeasAux::isGarbage(v1))
  {
    v12 = "!isGarbage()";
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1040, "SerializeTrack", "!isGarbage()");
    v13 = 1040;
    goto LABEL_72;
  }

  v8 = v5 + 64;
  if ((*(v5 + 64) & 1) == 0)
  {
    v12 = "m_stTrkRslts.m_bValid";
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1041, "SerializeTrack", "m_stTrkRslts.m_bValid");
    v13 = 1041;
    goto LABEL_72;
  }

  if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    goto LABEL_61;
  }

  if (v6 <= 5)
  {
    v12 = "ucVersion >= 6";
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1048, "SerializeTrack", "ucVersion >= 6");
    v13 = 1048;
    goto LABEL_72;
  }

  v15 = 89;
  v16 = v6;
  v17 = 0x1000000000000;
  v14 = &unk_2A1F09520;
  v18 = v6;
  BlueFin::GlSysLogEntry::PutU8(&v14, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v5 + 8)));
  if (v6 >= 8)
  {
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutU8(&v14, BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v5 + 3) - *(v5 + 3) + BlueFin::GlSvId::s_aucSvId2gnss[*(v5 + 8)]]);
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 20));
  BlueFin::GlSysLogEntry::PutD64(&v14, *(v5 + 3));
  if (v6 != 6)
  {
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 32));
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, 2);
  BlueFin::GlSysLogEntry::PutU32(&v14, *(v5 + 48));
  if (v6 >= 0xA)
  {
    BlueFin::GlSysLogEntry::PutU32(&v14, *(v5 + 49));
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 84));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 76));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 80));
  for (i = 0; i != 5; ++i)
  {
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + i + 88));
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 93));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 94));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 95));
  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 17));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 72));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 96));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 97));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 100));
  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 26));
  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 27));
  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 28));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 116));
  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 30));
  BlueFin::GlSysLogEntry::PutS8(&v14, *(v5 + 183));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 184));
  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 185));
  if (v6 <= 8)
  {
    goto LABEL_27;
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 128));
  if (v6 >= 0xE)
  {
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 33));
  }

  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 34));
  BlueFin::GlSysLogEntry::PutF32(&v14, *(v5 + 38));
  if (v6 < 0xB)
  {
    goto LABEL_27;
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, *(v5 + 73));
  if (v6 == 11)
  {
    goto LABEL_27;
  }

  BlueFin::GlSysLogEntry::PutU8(&v14, 0);
  BlueFin::GlSysLogEntry::PutU8(&v14, 0);
  BlueFin::GlSysLogEntry::PutF32(&v14, 0.0);
  BlueFin::GlSysLogEntry::PutF32(&v14, 0.0);
  BlueFin::GlSysLogEntry::PutF32(&v14, 0.0);
  BlueFin::GlSysLogEntry::PutU8(&v14, *v8);
  if (v6 >= 0xD)
  {
    v8 = v5 + 124;
LABEL_27:
    BlueFin::GlSysLogEntry::PutU8(&v14, *v8);
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v4, 4);
LABEL_52:
  result = 1;
LABEL_62:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::Deserialize(BlueFin::GlMeSrdDspMeasAux *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 89 || *(a2 + 12) - 15 < 0xFFFFFFF3)
  {
    return 0;
  }

  v5 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
  if (*(a2 + 12) < 8u)
  {
    if ((v5 - 189) >= 0xFFFFFF44)
    {
      v11 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v11] != 255)
      {
        v10 = 0;
        v12 = BlueFin::GlSignalId::s_ausGnss2signalId[v11] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v11];
LABEL_18:
        *(this + 8) = v5;
        *(this + 3) = v10;
        *(this + 8) = v12;
        goto LABEL_19;
      }

      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v12 = 575;
    goto LABEL_18;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v7 = BlueFin::GlSysLogEntry::GetU8(a2);
  v8 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
  if ((v5 - 189) > 0xFFFFFF43)
  {
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * U8 - U8 + v8] == 255)
    {
      v9 = 575;
      U8 = -1;
    }

    else
    {
      v9 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v8] + BlueFin::GlSvId::s_aucGnss2numSvId[v8] * U8;
    }
  }

  else
  {
    v9 = 575;
  }

  *(this + 8) = v5;
  *(this + 3) = U8;
  *(this + 8) = v9;
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * U8 - U8 + v8] != v7)
  {
    v13 = "etSignalType == m_otSignalId.GetSignalType()";
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1237, "Deserialize", "etSignalType == m_otSignalId.GetSignalType()");
    v14 = 1237;
    goto LABEL_57;
  }

LABEL_19:
  *(this + 20) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) >= 7u)
  {
    *(this + 32) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
  }

  v15 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 9) = v15;
  if (v15 > 2)
  {
    if (v15 != 4)
    {
      if (v15 == 3)
      {
        v13 = "0";
        DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1276, "Deserialize", "0");
        v14 = 1276;
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    BlueFin::GlMeSrdDspMeasAuxTrackRslts::Clear(this + 64);
    if (*(a2 + 11) != *(a2 + 10))
    {
      v13 = "rEntry.DataSize() == rEntry.ReadIdx()";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1391, "DeserializeSubTrack", "rEntry.DataSize() == rEntry.ReadIdx()");
      v14 = 1391;
      goto LABEL_57;
    }
  }

  else
  {
    if (v15 != 1)
    {
      if (v15 == 2)
      {
        BlueFin::GlMeSrdDspMeasAuxTrackRslts::Clear(this + 64);
        U32 = BlueFin::GlSysLogEntry::GetU32(a2);
        if (U32 >= 0x80000)
        {
          v13 = "(ulFlags & m_ulAllowableFlags) == ulFlags";
          DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 660, "SetFlags", "(ulFlags & m_ulAllowableFlags) == ulFlags");
          v14 = 660;
          goto LABEL_57;
        }

        *(this + 48) = U32;
        if (*(a2 + 12) >= 0xAu)
        {
          v17 = BlueFin::GlSysLogEntry::GetU32(a2);
          if (v17 >= 0x8000)
          {
            v13 = "(ulFlags & m_ulAllowableCycleSlipFlags) == ulFlags";
            DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 668, "SetCycleSlipFlags", "(ulFlags & m_ulAllowableCycleSlipFlags) == ulFlags");
            v14 = 668;
            goto LABEL_57;
          }

          *(this + 49) = v17;
        }

        *(this + 21) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 19) = BlueFin::GlSysLogEntry::GetU8(a2);
        v18 = 0;
        *(this + 20) = BlueFin::GlSysLogEntry::GetU8(a2);
        do
        {
          *(this + v18++ + 88) = BlueFin::GlSysLogEntry::GetU8(a2);
        }

        while (v18 != 5);
        *(this + 93) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 94) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 95) = BlueFin::GlSysLogEntry::GetU8(a2);
        v19 = *(a2 + 12);
        if (v19 > 3)
        {
          *(this + 17) = BlueFin::GlSysLogEntry::GetF32(a2);
          *(this + 72) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
          *(this + 96) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
          *(this + 97) = BlueFin::GlSysLogEntry::GetU8(a2);
          *(this + 25) = BlueFin::GlSysLogEntry::GetU8(a2);
          *(this + 26) = BlueFin::GlSysLogEntry::GetF32(a2);
          *(this + 27) = BlueFin::GlSysLogEntry::GetF32(a2);
          *(this + 28) = BlueFin::GlSysLogEntry::GetF32(a2);
          *(this + 29) = BlueFin::GlSysLogEntry::GetU8(a2);
          if (*(a2 + 12) >= 5u)
          {
            *(this + 30) = BlueFin::GlSysLogEntry::GetF32(a2);
          }

          *(this + 183) = BlueFin::GlSysLogEntry::GetS8(a2);
          *(this + 184) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
          *(this + 185) = BlueFin::GlSysLogEntry::GetU8(a2);
          v19 = *(a2 + 12);
          if (v19 >= 9)
          {
            *(this + 32) = BlueFin::GlSysLogEntry::GetU8(a2);
            if (*(a2 + 12) >= 0xEu)
            {
              *(this + 33) = BlueFin::GlSysLogEntry::GetF32(a2);
            }

            *(this + 34) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(this + 38) = BlueFin::GlSysLogEntry::GetF32(a2);
            v19 = *(a2 + 12);
            if (v19 >= 0xB)
            {
              *(this + 73) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
              v19 = *(a2 + 12);
              if (v19 >= 0xC)
              {
                BlueFin::GlSysLogEntry::GetU8(a2);
                BlueFin::GlSysLogEntry::GetU8(a2);
                BlueFin::GlSysLogEntry::GetF32(a2);
                BlueFin::GlSysLogEntry::GetF32(a2);
                BlueFin::GlSysLogEntry::GetF32(a2);
                v19 = *(a2 + 12);
              }
            }
          }
        }

        if (v19 <= 2)
        {
          v22 = 0;
          *(this + 64) = 1;
        }

        else
        {
          v20 = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
          v21 = *(a2 + 12);
          *(this + 64) = v20;
          if (v21 < 0xD)
          {
            v22 = 0;
          }

          else
          {
            v22 = BlueFin::GlSysLogEntry::GetU8(a2);
          }
        }

        *(this + 124) = v22;
        if (*(a2 + 11) == *(a2 + 10))
        {
          goto LABEL_51;
        }

        v13 = "rEntry.DataSize() == rEntry.ReadIdx()";
        DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1381, "DeserializeTrack", "rEntry.DataSize() == rEntry.ReadIdx()");
        v14 = 1381;
LABEL_57:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.cpp", v14, v13);
      }

LABEL_61:
      v13 = "0";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1279, "Deserialize", "0");
      v14 = 1279;
      goto LABEL_57;
    }

    if (*(a2 + 12) <= 5u)
    {
      v13 = "0";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1262, "Deserialize", "0");
      v14 = 1262;
      goto LABEL_57;
    }

    *(this + 40) = 0;
    *(this + 26) = 0;
    *(this + 44) = vneg_f32(0x80000000800000);
    *(this + 14) = 0;
    *(this + 11) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 12) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 14) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 52) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 53) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 40) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    if (*(a2 + 11) != *(a2 + 10))
    {
      v13 = "rEntry.DataSize() == rEntry.ReadIdx()";
      DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1419, "DeserializeSearch", "rEntry.DataSize() == rEntry.ReadIdx()");
      v14 = 1419;
      goto LABEL_57;
    }
  }

LABEL_51:
  if (BlueFin::GlMeSrdDspMeasAux::isGarbage(this))
  {
    v13 = "!isGarbage()";
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 1283, "Deserialize", "!isGarbage()");
    v14 = 1283;
    goto LABEL_57;
  }

  return 1;
}

void BlueFin::GlMeSrdEstCNo::~GlMeSrdEstCNo(BlueFin::GlMeSrdEstCNo *this)
{
  *this = &unk_2A1F0C108;
}

{
  *this = &unk_2A1F0C108;
  JUMPOUT(0x29C292F70);
}

float BlueFin::GlMeSrdEstCNo::CalcCohSnrFromNonCohSnr(BlueFin::GlMeSrdEstCNo *this, float a2, unsigned int a3)
{
  v3 = log10f(a2 / sqrtf(a3));
  v4 = 0;
  v5 = v3 * 20.0;
  v6 = &dword_298A35A84;
  v7 = 53.333;
  while (1)
  {
    v8 = *(v6 - 1);
    if (v8 > v5)
    {
      break;
    }

    --v4;
    v6 += 2;
    if (v4 == -281)
    {
      goto LABEL_13;
    }
  }

  if (-v4 != 281)
  {
    if (!v4)
    {
      v7 = *v6;
      goto LABEL_13;
    }

    v9 = (&BlueFin::GlMeSrdEstCNo::m_afMode1ToMode3Table + 8 * ~v4);
    v10 = v8 - *v9;
    if (v10 <= 0.0)
    {
      v15 = "fDeltaMode1SnrDb > 0.0";
      DeviceFaultNotify("glmesrd_estcno.cpp", 89, "CalcCohSnrFromNonCohSnr", "fDeltaMode1SnrDb > 0.0");
      v16 = 89;
    }

    else
    {
      v11 = v9[1];
      v12 = *v6 - v11;
      if (v12 <= 0.0)
      {
        v15 = "fDeltaMode3SnrDb > 0.0";
        DeviceFaultNotify("glmesrd_estcno.cpp", 90, "CalcCohSnrFromNonCohSnr", "fDeltaMode3SnrDb > 0.0");
        v16 = 90;
      }

      else
      {
        v13 = v5 - *v9;
        if (v13 < 0.0)
        {
          v15 = "fOffsetMode1SnrDb >= 0.0";
          DeviceFaultNotify("glmesrd_estcno.cpp", 96, "CalcCohSnrFromNonCohSnr", "fOffsetMode1SnrDb >= 0.0");
          v16 = 96;
        }

        else
        {
          if (v13 < v10)
          {
            v7 = v11 + (v13 * (v12 / v10));
            goto LABEL_13;
          }

          v15 = "fOffsetMode1SnrDb < fDeltaMode1SnrDb";
          DeviceFaultNotify("glmesrd_estcno.cpp", 97, "CalcCohSnrFromNonCohSnr", "fOffsetMode1SnrDb < fDeltaMode1SnrDb");
          v16 = 97;
        }
      }
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estcno.cpp", v16, v15);
  }

LABEL_13:

  return __exp10f(v7 / 10.0);
}

void BlueFin::GlMeSrdEstCNo::Run(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v62 = *MEMORY[0x29EDCA608];
  if ((*a8 & 1) == 0)
  {
    v58 = "stAsicCNoSrchMsmt.bValid";
    DeviceFaultNotify("glmesrd_estcno.cpp", 174, "Run", "stAsicCNoSrchMsmt.bValid");
    v59 = "glmesrd_estcno.cpp";
    v60 = 174;
    goto LABEL_59;
  }

  v10 = *a7;
  if ((v10 - 1) >= 0xBC)
  {
    v58 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_estcno.cpp", 175, "Run", "otSignalId.GetSvId().isValid()");
    v59 = "glmesrd_estcno.cpp";
    v60 = 175;
    goto LABEL_59;
  }

  if ((a1 + 20) != a7)
  {
    *(a1 + 20) = v10;
    *(a1 + 24) = *(a7 + 1);
    *(a1 + 28) = *(a7 + 4);
  }

  memset(v61, 0, sizeof(v61));
  v16 = *(a8 + 1);
  if (v16 > 8)
  {
    v58 = "stAsicCNoSrchMsmt.ucCvecLen <= _DIM(aulCvec)";
    DeviceFaultNotify("glmesrd_estcno.cpp", 186, "Run", "stAsicCNoSrchMsmt.ucCvecLen <= _DIM(aulCvec)");
    v59 = "glmesrd_estcno.cpp";
    v60 = 186;
    goto LABEL_59;
  }

  if (!*(a8 + 1))
  {
    v22 = *(a8 + 40);
LABEL_60:
    v58 = "stAsicCNoSrchMsmt.ucCvecLen == usExpectedCvecLen";
    DeviceFaultNotify("glmesrd_estcno.cpp", 240, "Run", "stAsicCNoSrchMsmt.ucCvecLen == usExpectedCvecLen");
    v59 = "glmesrd_estcno.cpp";
    v60 = 240;
    goto LABEL_59;
  }

  v17 = (a8 + 4);
  memcpy(v61, (a8 + 4), 4 * v16);
  v18 = 0;
  v19 = v16;
  do
  {
    v20 = *v17++;
    v18 += v20;
    --v19;
  }

  while (v19);
  v21 = *(a8 + 40);
  if (v21 < v18)
  {
    v58 = "ulTotalMagSum >= ulSumVec";
    DeviceFaultNotify("glmesrd_estcno.cpp", 206, "Run", "ulTotalMagSum >= ulSumVec");
    v59 = "glmesrd_estcno.cpp";
    v60 = 206;
    goto LABEL_59;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = *(a8 + 36);
  v27 = (v21 - v18) / (v26 * *(a5 + 10) - v16);
  do
  {
    v28 = *(v61 + v23);
    if (v27 > v28)
    {
LABEL_13:
      v29 = 0;
      goto LABEL_19;
    }

    v30 = v28 - v27;
    v31 = (v28 - v27);
    if (v30 <= 0.0)
    {
      if (v30 >= 0.0)
      {
        goto LABEL_13;
      }

      v32 = v31 + -0.5;
    }

    else
    {
      v32 = v31 + 0.5;
    }

    v29 = v32;
LABEL_19:
    *(v61 + v23) = v29;
    if (v29 > v24)
    {
      v25 = v23;
      v24 = v29;
    }

    ++v23;
  }

  while (v16 != v23);
  if (v16 != 8)
  {
    goto LABEL_60;
  }

  v33 = v24 != HIDWORD(v61[0]) || v25 == 3;
  if (!v33)
  {
    v25 = 3;
  }

  v34 = v25;
  v35 = v61 + v25;
  v37 = *(v35 - 1);
  v36 = *v35;
  v38 = *(v61 + (v34 + 1));
  if (v37 <= v38)
  {
    v39 = *(v61 + (v34 + 1));
  }

  else
  {
    v39 = v37;
  }

  switch(v26)
  {
    case 1u:
      v40 = 1.0;
      break;
    case 4u:
      if (*a7 - 139 < 0x24 || (v40 = 1.75, (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a7 + 1) - *(a7 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a7]] - 13) <= 1))
      {
        v40 = 1.25;
      }

      break;
    case 2u:
      v40 = 1.5;
      break;
    default:
      v58 = "0";
      DeviceFaultNotify("glmesrd_estcno.cpp", 286, "Run", "0");
      v59 = "glmesrd_estcno.cpp";
      v60 = 286;
LABEL_59:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v59, v60, v58);
  }

  v41 = (v36 + v39) / v40;
  v42 = v41 / v27;
  v33 = v27 == 0.0;
  v43 = 0.0;
  if (!v33)
  {
    v43 = v42;
  }

  v44 = v43 * (sqrtf(*(a8 + 44)) * 1.9131);
  (*(*a1 + 16))(a1, v44);
  if (*(a1 + 28) >= 0x23Fu)
  {
    v58 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v59 = "glsignalid.h";
    v60 = 693;
    goto LABEL_59;
  }

  v46 = *(a5 + 4);
  v47 = *(a1 + 24);
  v48 = *(a1 + 20);
  if (v47 == 1 && ((v48 - 1) < 0x20 || (v48 - 66) <= 9))
  {
    v49 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)];
    v50 = 1.5;
    LODWORD(v47) = 1;
  }

  else
  {
    v49 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)];
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v47 - v47 + v49])
    {
      v58 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v59 = "glsignalid.h";
      v60 = 686;
      goto LABEL_59;
    }

    v50 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v47 - v47 + v49] * 0.001;
  }

  v51 = BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * v47 + v49];
  if (!v51)
  {
    v58 = "ssEpochIndB != 0";
    DeviceFaultNotify("glsignalid.h", 719, "GetSecPerEpochIndB", "ssEpochIndB != 0");
    v59 = "glsignalid.h";
    v60 = 719;
    goto LABEL_59;
  }

  v52 = 0.5;
  if (v37 > v38)
  {
    v52 = -0.5;
  }

  v53 = v52 / v26;
  v54 = v46 / v50;
  v55 = v45 / v54;
  v56 = log10f(v45 / v54);
  *a9 = 1;
  *(a9 + 8) = ((v56 * 10.0) - v51) + a2;
  *(a9 + 12) = v55;
  *(a9 + 4) = 1;
  *(a9 + 16) = v44;
  *(a9 + 20) = v41;
  *(a9 + 24) = v53;
  *(a1 + 12) = 2;
  *(a1 + 16) = v55;
  v57 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdEstCNo::Run(uint64_t a1, double *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, float *a6, uint64_t a7, __n128 a8)
{
  if ((*a5 & 1) == 0)
  {
    v19 = "stAsicCNoSniffMsmt.bValid";
    DeviceFaultNotify("glmesrd_estcno.cpp", 349, "Run", "stAsicCNoSniffMsmt.bValid");
    v20 = "glmesrd_estcno.cpp";
    v21 = 349;
    goto LABEL_23;
  }

  v8 = *a4;
  if ((v8 - 1) >= 0xBC)
  {
    v19 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_estcno.cpp", 350, "Run", "otSignalId.GetSvId().isValid()");
    v20 = "glmesrd_estcno.cpp";
    v21 = 350;
    goto LABEL_23;
  }

  if ((a1 + 20) == a4)
  {
    v11 = *(a1 + 28);
  }

  else
  {
    *(a1 + 20) = v8;
    *(a1 + 24) = *(a4 + 1);
    v11 = *(a4 + 4);
    *(a1 + 28) = v11;
  }

  if (v11 >= 0x23F)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v20 = "glsignalid.h";
    v21 = 693;
    goto LABEL_23;
  }

  v12 = *(a1 + 24);
  v13 = *(a1 + 20);
  if (v12 != 1 || (a8.n128_u32[0] = 1.5, (v13 - 1) >= 0x20) && (v13 - 66) >= 0xA)
  {
    v14 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v12 - v12 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)]];
    if (!v14)
    {
      v19 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v20 = "glsignalid.h";
      v21 = 686;
LABEL_23:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
    }

    a8.n128_f64[0] = v14 * 0.001;
    a8.n128_f32[0] = a8.n128_f64[0];
  }

  v15 = *a2;
  *a7 = (*(*a1 + 24))(a1, v24, v22, a8, *a6, *(a3 + 4), *(a3 + 4), v15, *(a5 + 8), 0.0);
  v16 = v23;
  *(a7 + 12) = v23;
  if (*(a1 + 28) >= 0x23Fu)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 712, "GetSecPerEpochIndB", "IsValid()");
    v20 = "glsignalid.h";
    v21 = 712;
    goto LABEL_23;
  }

  v17 = BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * *(a1 + 24) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)]];
  if (!v17)
  {
    v19 = "ssEpochIndB != 0";
    DeviceFaultNotify("glsignalid.h", 719, "GetSecPerEpochIndB", "ssEpochIndB != 0");
    v20 = "glsignalid.h";
    v21 = 719;
    goto LABEL_23;
  }

  v18 = -(v17 - (log10f(v16) * 10.0));
  if (v18 < 7.0)
  {
    v18 = 7.0;
  }

  *(a7 + 8) = v18;
  *(a7 + 4) = 3;
  *(a1 + 12) = 3;
}

uint64_t GlMeSrdSortPhase_Id(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 >= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 > 0.0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

BlueFin::GlMeSrdEstLowTow *BlueFin::GlMeSrdEstLowTow::GlMeSrdEstLowTow(BlueFin::GlMeSrdEstLowTow *this)
{
  v2 = 0;
  *this = &unk_2A1F0C148;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 164) = this + 32;
  do
  {
    v3 = *(this + 164) + v2;
    *v3 = 0;
    *(v3 + 4) = -1;
    *(v3 + 8) = 575;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 76) = 0;
    *(v3 + 68) = 0;
    *(v3 + 81) = 0;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    *(v3 + 124) = 0;
    *(v3 + 116) = 0;
    *(v3 + 129) = 0;
    BlueFin::GlMeSrdLowTowMgr::Initialize(v3);
    v2 += 320;
  }

  while (v2 != 1280);
  return this;
}

void BlueFin::GlMeSrdEstLowTow::~GlMeSrdEstLowTow(BlueFin::GlMeSrdEstLowTow *this)
{
  *this = &unk_2A1F0C148;
}

{
  JUMPOUT(0x29C292F60);
}