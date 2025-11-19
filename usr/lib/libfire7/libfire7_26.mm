uint64_t BlueFin::GlMeSrdTrkCvecTapConfig::GlMeSrdTrkCvecTapConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 9)
  {
    v19 = "etTapCfg == TRK_TAP_REGULAR || etTapCfg == TRK_TAP_REGULAR_5TH_MULTIPATH || etTapCfg == TRK_TAP_REGULAR_4TH_MULTIPATH || etTapCfg == TRK_TAP_SNIFF || etTapCfg == TRK_TAP_SBAS || etTapCfg == TRK_TAP_GALILEO_REGULAR || etTapCfg == TRK_TAP_GALILEO_VARIABLE || etTapCfg == TRK_TAP_GPS_NARROW_CVEC || etTapCfg == TRK_TAP_GPS_POSTFRAME";
    DeviceFaultNotify("glmesrd_receiver_parameters_track.cpp", 148, "GlMeSrdTrkCvecTapConfig", "etTapCfg == TRK_TAP_REGULAR || etTapCfg == TRK_TAP_REGULAR_5TH_MULTIPATH || etTapCfg == TRK_TAP_REGULAR_4TH_MULTIPATH || etTapCfg == TRK_TAP_SNIFF || etTapCfg == TRK_TAP_SBAS || etTapCfg == TRK_TAP_GALILEO_REGULAR || etTapCfg == TRK_TAP_GALILEO_VARIABLE || etTapCfg == TRK_TAP_GPS_NARROW_CVEC || etTapCfg == TRK_TAP_GPS_POSTFRAME");
    v20 = 148;
    goto LABEL_70;
  }

  if (a3 >= 2)
  {
    v19 = "etTrkResolutionType == TRK_RESOLUTION_20TH_CHIP || etTrkResolutionType == TRK_RESOLUTION_16TH_CHIP";
    DeviceFaultNotify("glmesrd_receiver_parameters_track.cpp", 151, "GlMeSrdTrkCvecTapConfig", "etTrkResolutionType == TRK_RESOLUTION_20TH_CHIP || etTrkResolutionType == TRK_RESOLUTION_16TH_CHIP");
    v20 = 151;
LABEL_70:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_track.cpp", v20, v19);
  }

  *result = a2;
  if (a2 == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8;
  }

  v4 = 1;
  if (a2 == 2)
  {
    v3 = 4;
  }

  *(result + 4) = v3;
  if (a2 != 2 && a2 != 4)
  {
    if (a2 - 5 >= 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 6;
    }
  }

  *(result + 5) = v4;
  if (a2 <= 6 && ((1 << a2) & 0x54) != 0)
  {
    *(result + 6) = 0;
    if (a2 == 2)
    {
      v5 = 0;
      *(result + 7) = 2;
      if (a3)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }

      *(result + 8) = v6;
LABEL_20:
      v7 = a2 == 6;
      goto LABEL_37;
    }
  }

  else
  {
    v8 = 2 * (a2 != 7);
    if (a2 == 5)
    {
      v8 = 3;
    }

    *(result + 6) = v8;
  }

  if ((a2 | 2) == 6)
  {
    v9 = 1;
  }

  else
  {
    if (a2 == 7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4;
    }

    if (a2 == 5)
    {
      v9 = 5;
    }
  }

  *(result + 7) = v9;
  if (a2 - 5 >= 3)
  {
    v10 = 4;
  }

  else
  {
    v10 = 8;
  }

  if (!a3)
  {
    v10 = 5;
  }

  *(result + 8) = v10;
  v5 = a2 == 8;
  v7 = 1;
  if (((1 << a2) & 0x1AA) == 0)
  {
    goto LABEL_20;
  }

LABEL_37:
  *(result + 9) = v7;
  if (a2 - 1 < 7 && ((0x75u >> (a2 - 1)) & 1) != 0)
  {
    v11 = 7;
  }

  else if (v5)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetRegular5thMultipath;
  if (!a2)
  {
    v13 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetRegular;
  }

  v14 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetGpsNarrowCvec;
  if (a2 == 3)
  {
    v14 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetRegular4thMultipath;
  }

  if (a2 >= 2)
  {
    v13 = v14;
  }

  v15 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetSniff;
  if (a2 != 4)
  {
    v15 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetGalileoVariable;
  }

  v17 = !v5;
  v16 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetGpsPostframeCvec;
  if (v17)
  {
    v16 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetSbas;
  }

  if (a2 == 6)
  {
    v16 = &BlueFin::GlMeSrdTrkCvecTapConfig::ascSampleOffsetGalileoVariable;
  }

  if ((a2 & 0xE) == 4)
  {
    v16 = v15;
  }

  v17 = a2 < 2 || a2 == 7;
  v18 = v17 || a2 == 3;
  *(result + 10) = v11;
  if (v18)
  {
    v16 = v13;
  }

  do
  {
    *(result + v12 + 11) = v16[v12];
    ++v12;
  }

  while (v12 != 8);
  return result;
}

uint64_t BlueFin::sCwResults::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 25) = *(a2 + 25);
    do
    {
      *(a1 + 27 + v3) = *(a2 + 27 + v3);
      ++v3;
    }

    while (v3 != 10);
    *(a1 + 40) = *(a2 + 40);
    memcpy((a1 + 48), (a2 + 48), 0x1F4uLL);
  }

  return a1;
}

uint64_t BlueFin::GlMeSrdTestMgrCW::GlMeSrdTestMgrCW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a6;
  *a1 = &unk_2A1F0C7B0;
  BlueFin::GlMeSrdTestMgrCwReceiver::GlMeSrdTestMgrCwReceiver(a1 + 432, a3, a5, a1, a6);
  *(a1 + 28632) = 0;
  if ((*(**(*(a1 + 16) + 136) + 248))(*(*(a1 + 16) + 136)))
  {
    v7 = a1 + 32;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = a1;
    *(a1 + 324) = 0;
    *(a1 + 328) = 0;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 307) = 0u;
    *(a1 + 32) = &unk_2A1F0C820;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0;
  }

  else
  {
    if ((*(**(*(a1 + 16) + 136) + 240))(*(*(a1 + 16) + 136)))
    {
      v7 = a1 + 32;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = a1;
      *(a1 + 324) = 0;
      *(a1 + 328) = 0;
      v8 = 0uLL;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 307) = 0u;
      v9 = &unk_2A1F0C890;
    }

    else if ((*(**(*(a1 + 16) + 136) + 256))(*(*(a1 + 16) + 136)))
    {
      v7 = a1 + 32;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = a1;
      *(a1 + 324) = 0;
      *(a1 + 328) = 0;
      v8 = 0uLL;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 307) = 0u;
      v9 = &unk_2A1F0C900;
    }

    else
    {
      if (!(*(**(*(a1 + 16) + 136) + 264))(*(*(a1 + 16) + 136)))
      {
        DeviceFaultNotify("glmesrd_test_mgr_cw.cpp", 71, "GlMeSrdTestMgrCW", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw.cpp", 71, "0");
      }

      v7 = a1 + 32;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = a1;
      *(a1 + 324) = 0;
      *(a1 + 328) = 0;
      v8 = 0uLL;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 307) = 0u;
      v9 = &unk_2A1F0C970;
    }

    *(a1 + 32) = v9;
    *(a1 + 384) = v8;
    *(a1 + 400) = v8;
    *(a1 + 352) = v8;
    *(a1 + 368) = v8;
    *(a1 + 336) = v8;
  }

  *(a1 + 424) = v7;
  return a1;
}

void BlueFin::GlMeSrdTestMgrCW::~GlMeSrdTestMgrCW(BlueFin::GlMeSrdTestMgrCW *this)
{
  *this = &unk_2A1F0C7B0;
  if (*(this + 28632) == 1)
  {
    DeviceFaultNotify("glmesrd_test_mgr_cw.cpp", 78, "~GlMeSrdTestMgrCW", "!m_bCwResource");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw.cpp", 78, "!m_bCwResource");
  }

  (***(this + 53))(*(this + 53));
  *(this + 53) = 0;
  BlueFin::GlMeSrdTestMgrCwReceiver::~GlMeSrdTestMgrCwReceiver((this + 432));
}

{
  BlueFin::GlMeSrdTestMgrCW::~GlMeSrdTestMgrCW(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlMeSrdTestMgrCW::AllocateCwResources(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 24576;
  if (*(a1 + 28632) == 1)
  {
    DeviceFaultNotify("glmesrd_test_mgr_cw.cpp", 87, "AllocateCwResources", "!m_bCwResource");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw.cpp", 87, "!m_bCwResource");
  }

  *(a1 + 28632) = 1;
  BlueFin::GlMeSrdTestMgrCwReceiver::AllocateCwResources(a1 + 432, a2);
  (*(**(a1 + 424) + 16))(*(a1 + 424), a2);
  if ((*(**(*(a1 + 16) + 136) + 248))(*(*(a1 + 16) + 136)) && (*(a2 + 252) & 0x22) == 0x20)
  {
    *(*(a1 + 424) + 384) = 1;
    *(v2 + 3981) = 1;
  }

  for (i = 0; i != 10; ++i)
  {
    result = (*(**(a1 + 424) + 72))(*(a1 + 424), i, *(a1 + 28304 + 8 * i));
  }

  return result;
}

void BlueFin::GlMeSrdTestMgrCW::RunCwTest(BlueFin::GlMeSrdTestMgrCW *this)
{
  if ((*(this + 28632) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_test_mgr_cw.cpp", 114, "RunCwTest", "m_bCwResource");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw.cpp", 114, "m_bCwResource");
  }

  (*(**(this + 53) + 24))(*(this + 53));

  BlueFin::GlMeSrdTestMgrCwReceiver::RunCwTest((this + 432));
}

uint64_t BlueFin::GlMeSrdTestMgrCW::ClearCwResources(BlueFin::GlMeSrdTestMgrCW *this)
{
  if ((*(this + 28632) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_test_mgr_cw.cpp", 127, "ClearCwResources", "m_bCwResource");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw.cpp", 127, "m_bCwResource");
  }

  *(this + 28632) = 0;
  BlueFin::GlMeSrdTestMgrCwReceiver::ClearCwResources(this + 432);
  v2 = *(**(this + 53) + 32);

  return v2();
}

void BlueFin::GlMeSrdTestMgrCwController::RunCwTest(BlueFin::GlMeSrdTestMgrCwController *this)
{
  v2 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v18 = 1;
  v19 = v2;
  v20 = 0;
  v21 = 0;
  (*(*v2 + 16))(v2, 1);
  v15[1] = 0;
  v15[3] = 30415315;
  v3 = *(*(*(this + 4) + 16) + 136);
  v4 = (*(*v3 + 88))(v3);
  v5 = v4 * 20.0 + -1575420000.0;
  v6 = (v5 - *(this + 38)) * 4294967300.0 / v4;
  if (v6 <= 0.0)
  {
    if (v6 >= 0.0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = -0.5;
  }

  else
  {
    v7 = 0.5;
  }

  v8 = (v6 + v7);
LABEL_7:
  v15[0] = -v8;
  v9 = (v5 - *(this + 39)) * 4294967300.0 / v4;
  if (v9 <= 0.0)
  {
    if (v9 >= 0.0)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v10 = -0.5;
  }

  else
  {
    v10 = 0.5;
  }

  v11 = (v9 + v10);
LABEL_13:
  v12 = -v11;
  v15[2] = v12;
  if (*(this + 384) == 1)
  {
    v15[0] = v12;
  }

  v13 = (*(*v2 + 48))(v2);
  v14 = (*(*v13 + 16))(v13);
  (*(*v14 + 64))(v14, v16, v15);
  BlueFin::GlMeSrdTransaction::Complete(v16);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v16);
}

void sub_298987C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrCwController::KillSAT(BlueFin::GlMeSrdTestMgrCwController *this, uint64_t a2)
{
  v3 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  (*(*v3 + 16))(v3, 1);
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 64))(v4);
  (*(*v5 + 120))(v5, v6, a2);
  BlueFin::GlMeSrdTransaction::Complete(v6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v6);
}

void sub_298987DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrCwController::CreateSAT(uint64_t a1, __int16 *a2, unsigned __int8 a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v26 = a3;
  v5 = (*(**(*(a1 + 32) + 8) + 80))(*(*(a1 + 32) + 8));
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = 1;
  v23 = v5;
  v24 = 0;
  v25 = 0;
  (*(*v5 + 16))(v5, 1);
  v6 = 0;
  v27 = *a2;
  v28 = 0;
  do
  {
    if (*(&v27 + v6) != 1)
    {
      goto LABEL_12;
    }

    v19 = 0u;
    *&v18[4] = 0u;
    v18[14] = 32;
    *v18 = 0;
    *&v18[3] = 0;
    *&v18[12] = *(*(a1 + 32) + 27688);
    v7 = (*(*v23 + 48))(v23);
    v8 = (*(*v7 + 48))(v7);
    (*(*v8 + 72))(v8, v20, 1, &v26, v18);
    v16 = 2048;
    v17 = 7;
    v15 = 0;
    v14 = 0;
    if (v6)
    {
      if (v6 != 1)
      {
        DeviceFaultNotify("glmesrd_test_mgr_cw_controller.cpp", 208, "CreateSAT", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_controller.cpp", 208, "0");
      }

      LOBYTE(v14) = *(a1 + 288);
      v9 = v14 - 59;
      if (v14 - 52 >= 0xE)
      {
        v9 = -8;
      }

      LOWORD(v15) = v9;
      HIDWORD(v14) = 5;
      if ((*(a1 + 384) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }

    LOWORD(v15) = 0;
    HIDWORD(v14) = 1;
LABEL_11:
    v10 = (*(*v23 + 48))(v23);
    v11 = (*(*v10 + 64))(v10);
    LOBYTE(v13) = 0;
    (*(*v11 + 16))(v11, v20, v26, &v14, 48, &v16, 1, v26, v13);
LABEL_12:
    ++v6;
  }

  while (v6 != 10);
  BlueFin::GlMeSrdTransaction::Complete(v20);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v20);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2989880F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

double BlueFin::GlMeSrdTestMgrCwParams::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a2 + 80);
    v3 = (a1 + 80);
    v4 = 10;
    do
    {
      *(v3 - 10) = *(v2 - 10);
      *v3 = *v2;
      v3[10] = v2[10];
      ++v3;
      ++v2;
      --v4;
    }

    while (v4);
    result = *(a2 + 240);
    *(a1 + 240) = result;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 249) = *(a2 + 249);
    *(a1 + 250) = *(a2 + 250);
    *(a1 + 252) = *(a2 + 252);
    *(a1 + 256) = *(a2 + 256);
  }

  return result;
}

void BlueFin::GlMeCarpTestMgrCwController::RunCwTest(BlueFin::GlMeCarpTestMgrCwController *this)
{
  v2 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = v2;
  v16 = 0;
  v17 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
  v4 = (*(*v3 + 32))(v3);
  (*(*v4 + 32))(v4, &v11, 8, 17, 0, 6);
  BlueFin::GlMeSrdTransaction::Complete(&v11);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v11);
  v5 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  (*(*v5 + 16))(v5, 1);
  v6 = (this + 292);
  v7 = vld1_dup_f32(v6);
  v10[0] = vbsl_s8(vceqz_s32(vand_s8(v7, 0x100000000800)), 0x1789EACEC6B6823ELL, 0x15FC7A79C52911EALL);
  v10[1] = 0x45DCBEDD37CAF4ELL;
  v8 = (*(*v5 + 48))(v5);
  v9 = (*(*v8 + 16))(v8);
  (*(*v9 + 64))(v9, &v11, v10);
  BlueFin::GlMeSrdTransaction::Complete(&v11);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v11);
}

void sub_2989883EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeCarpTestMgrCwController::KillSAT(BlueFin::GlMeCarpTestMgrCwController *this, uint64_t a2)
{
  v3 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  (*(*v3 + 16))(v3, 1);
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 64))(v4);
  (*(*v5 + 120))(v5, v6, a2);
  BlueFin::GlMeSrdTransaction::Complete(v6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v6);
}

void sub_29898852C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeCarpTestMgrCwController::CreateSAT(uint64_t a1, char *a2, unsigned __int8 a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v39 = a3;
  v5 = (*(**(*(a1 + 32) + 8) + 80))(*(*(a1 + 32) + 8));
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = 1;
  v36 = v5;
  v37 = 0;
  v38 = 0;
  (*(*v5 + 16))(v5, 1);
  v7 = 0;
  v31 = 2112;
  v32 = 7;
  v40 = *a2;
  v41 = *(a2 + 1);
  memset(v42, 0, sizeof(v42));
  do
  {
    if (*(&v40 + v7) == 1)
    {
      v30 = 0;
      v29 = 0;
      if (v7 == 2)
      {
        v8 = 0x4Cu;
        LOBYTE(v29) = 0x4Cu;
        LOWORD(v30) = 0;
        HIDWORD(v29) = 7;
        v9 = *(a1 + 32);
        if (*(v9 + 28521))
        {
          v14 = 59;
        }

        else
        {
          v14 = 79;
        }
      }

      else
      {
        if (v7 == 1)
        {
          LOBYTE(v29) = *(a1 + 288);
          v8 = v29;
          if (v29 - 52 >= 0xE)
          {
            v13 = -8;
          }

          else
          {
            v13 = v29 - 59;
          }

          LOWORD(v30) = v13;
          HIDWORD(v29) = 5;
          v9 = *(a1 + 32);
          v11 = *(v9 + 28521) == 0;
          v12 = 46;
        }

        else
        {
          if (v7)
          {
            DeviceFaultNotify("glmesrd_test_mgr_cw_controller.cpp", 357, "CreateSAT", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_controller.cpp", 357, "0");
          }

          v8 = 1u;
          LOBYTE(v29) = 1u;
          LOWORD(v30) = 0;
          v9 = *(a1 + 32);
          if (*(v9 + 27681))
          {
            v10 = 1;
          }

          else
          {
            v10 = 3;
          }

          HIDWORD(v29) = v10;
          v11 = *(v9 + 28521) == 0;
          v12 = 25;
        }

        if (v11)
        {
          v14 = 48;
        }

        else
        {
          v14 = v12;
        }

        v31 = HIBYTE(*(a1 + 292)) & 0x20 | v31 & 0xFFDF;
      }

      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v15 = *(v9 + 28528);
      if (v7 == 2)
      {
        v16 = 96;
      }

      else
      {
        v16 = 32;
      }

      BYTE14(v26) = v16;
      BYTE4(v24) = v8;
      LODWORD(v25) = 0;
      WORD2(v25) = 575;
      if ((v8 + 67) >= 0x44u)
      {
        v17 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v17] == 255)
        {
          LODWORD(v25) = -1;
        }

        else
        {
          WORD2(v25) = BlueFin::GlSignalId::s_ausGnss2signalId[v17] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v17];
        }
      }

      v18 = v15;
      LOWORD(v26) = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency((&v24 + 4), v18, v6);
      WORD4(v26) = 0;
      BYTE6(v26) = 0;
      BYTE10(v26) = 0;
      WORD6(v26) = *(*(a1 + 32) + 27688);
      LOBYTE(v27) = 0;
      v19 = (*(*v36 + 48))(v36);
      v20 = (*(*v19 + 48))(v19);
      (*(*v20 + 72))(v20, v33, 1, &v39, &v26);
      v21 = (*(*v36 + 48))(v36);
      v22 = (*(*v21 + 64))(v21);
      LOBYTE(v24) = 0;
      (*(*v22 + 16))(v22, v33, v39, &v29, v14, &v31, 1, v39, v24, v25);
    }

    ++v7;
  }

  while (v7 != 10);
  BlueFin::GlMeSrdTransaction::Complete(v33);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v33);
  v23 = *MEMORY[0x29EDCA608];
}

void sub_298988980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMePikeTestMgrCwController::RunCwTest(BlueFin::GlMePikeTestMgrCwController *this)
{
  v2 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v36 = 1;
  v37 = v2;
  v38 = 0;
  v39 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = (*(this + 73) & 0x800) == 0;
  v4 = (*(this + 73) & 0x1000) == 0;
  v5 = *(*(*(this + 4) + 16) + 136);
  v6 = (*(*v5 + 96))(v5);
  switch(v6)
  {
    case 26000000:
      v7 = 63859112.0;
      break;
    case 38400000:
      v7 = 43237936.0;
      break;
    case 52000000:
      v7 = 31929556.0;
      break;
    default:
      DeviceFaultNotify("glmesrd_test_mgr_cw_controller.cpp", 756, "MoveDecimatorNCO", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_controller.cpp", 756, "0");
  }

  v8 = *(*(*(this + 4) + 16) + 136);
  v9 = (*(*v8 + 96))(v8);
  v13 = dbl_298A390F0[v3];
  *v14.i64 = v7 * v9 * 0.000000953674316 + -1583420000.0;
  if (*v14.i64 < 0.0)
  {
    *v14.i64 = -*v14.i64;
  }

  v33 = 0;
  *v10.i64 = (v13 - *v14.i64) * 130.198198;
  *v11.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = vnegq_f64(v15);
  v17 = vbslq_s8(v16, v11, v10);
  if (*v10.i64 <= 4294967300.0)
  {
    *v17.i64 = (v13 - *v14.i64) * 130.198198;
  }

  if (*v17.i64 < -4294967300.0)
  {
    *v10.i64 = -*v17.i64;
    *v17.i64 = -(*v17.i64 - trunc(*v17.i64 * -2.32830644e-10) * -4294967300.0);
    v10 = vbslq_s8(v16, v17, v10);
    *v17.i64 = -*v10.i64;
  }

  v18 = dbl_298A39100[v4];
  if (*v17.i64 < 0.0)
  {
    v19 = --*v17.i64;
  }

  else
  {
    v19 = *v17.i64;
  }

  v29[0] = v19;
  *v17.i64 = (-14407916.7 - *v14.i64) * 130.198198;
  *v12.i64 = *v17.i64 + trunc(*v17.i64 * 2.32830644e-10) * -4294967300.0;
  v20 = vbslq_s8(v16, v12, v17);
  if (*v17.i64 <= 4294967300.0)
  {
    *v20.i64 = (-14407916.7 - *v14.i64) * 130.198198;
  }

  if (*v20.i64 < -4294967300.0)
  {
    *v17.i64 = -*v20.i64;
    *v20.i64 = -(*v20.i64 - trunc(*v20.i64 * -2.32830644e-10) * -4294967300.0);
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v20 = vbslq_s8(vnegq_f64(v21), v20, v17);
    *v20.i64 = -*v20.i64;
  }

  if (*v20.i64 < 0.0)
  {
    v22 = --*v20.i64;
  }

  else
  {
    v22 = *v20.i64;
  }

  v29[2] = v22;
  *v14.i64 = (v18 - *v14.i64) * 130.198198;
  *v20.i64 = *v14.i64 + trunc(*v14.i64 * 2.32830644e-10) * -4294967300.0;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v24 = vnegq_f64(v23);
  v20.i64[0] = vbslq_s8(v24, v20, v14).u64[0];
  if (*v14.i64 > 4294967300.0)
  {
    v14.i64[0] = v20.i64[0];
  }

  if (*v14.i64 < -4294967300.0)
  {
    *v10.i64 = -*v14.i64;
    *v14.i64 = -(*v14.i64 - trunc(*v14.i64 * -2.32830644e-10) * -4294967300.0);
    *v14.i64 = -*vbslq_s8(v24, v14, v10).i64;
  }

  if (*v14.i64 < 0.0)
  {
    v25 = --*v14.i64;
  }

  else
  {
    v25 = *v14.i64;
  }

  v29[1] = v25;
  v30 = 0xEB3045D8006;
  if ((*(this + 73) & 0x100000) != 0)
  {
    v26 = 665963500;
  }

  else
  {
    v26 = 622564119;
  }

  v31 = v26;
  v32 = -1997879210;
  v27 = (*(*v37 + 48))(v37);
  v28 = (*(*v27 + 16))(v27);
  (*(*v28 + 72))(v28, v34, v29);
  BlueFin::GlMeSrdTransaction::Complete(v34);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v34);
}

void sub_298988DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMePikeTestMgrCwController::KillSAT(BlueFin::GlMePikeTestMgrCwController *this, uint64_t a2)
{
  v3 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  (*(*v3 + 16))(v3, 1);
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 64))(v4);
  (*(*v5 + 120))(v5, v6, a2);
  BlueFin::GlMeSrdTransaction::Complete(v6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v6);
}

void sub_298988F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMePikeTestMgrCwController::CreateSAT(uint64_t a1, int *a2, unsigned __int8 a3)
{
  v64 = *MEMORY[0x29EDCA608];
  v53 = a3;
  v5 = (*(**(*(a1 + 32) + 8) + 80))(*(*(a1 + 32) + 8));
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  v49 = 1;
  v50 = v5;
  v51 = 0;
  v52 = 0;
  (*(*v5 + 16))(v5, 1);
  v7 = 0;
  v45 = 2114;
  v46 = 7;
  v59 = *a2;
  v60 = *(a2 + 2);
  v61 = 0;
  v62 = *(a2 + 7);
  v63 = 0;
  do
  {
    if (*(&v59 + v7) != 1)
    {
      goto LABEL_66;
    }

    v58 = xmmword_298A39110;
    if (v7 > 3u)
    {
      if (v7 > 6u)
      {
        if (v7 == 7)
        {
          v8 = *(a1 + 289);
        }

        else
        {
          if (v7 != 8)
          {
LABEL_68:
            DeviceFaultNotify("glmesrd_test_mgr_cw_controller.cpp", 634, "CreateSAT", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_controller.cpp", 634, "0");
          }

          v8 = *(a1 + 290);
        }

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_68;
        }

        v9 = 0;
        v10 = 0;
        LOBYTE(v8) = 0;
        v11 = 0;
        LODWORD(v58) = 48;
        v12 = -81;
        v42[0] = -81;
        v13 = *(a1 + 32);
        v14 = 561;
        v15 = 15;
        goto LABEL_50;
      }

      v19 = 0;
      v12 = -117;
      v42[0] = -117;
      v16 = 1;
      v43 = 1;
      v13 = *(a1 + 32);
      v21 = *(v13 + 28521);
      v44 = 489;
      if (v21)
      {
        v17 = 71;
      }

      else
      {
        v17 = 250;
      }

      LODWORD(v58) = v17;
      v18 = 2;
      v15 = 11;
    }

    else
    {
      if (v7 <= 1u)
      {
        if (!v7)
        {
          v10 = 0;
          v15 = 0;
          v12 = 0;
          v11 = 0;
          v14 = 0;
          v13 = *(a1 + 32);
          if (*(v13 + 27681))
          {
            v9 = 1;
          }

          else
          {
            v9 = 3;
          }

          if (*(v13 + 28521))
          {
            v20 = 25;
          }

          else
          {
            v20 = 48;
          }

          LODWORD(v58) = v20;
          v45 = HIBYTE(*(a1 + 292)) & 0x20 | v45 & 0xFFDF;
          LOBYTE(v8) = 1;
          v42[0] = 1;
          goto LABEL_50;
        }

        v8 = *(a1 + 288);
LABEL_38:
        if ((v8 - 52) > 0xD)
        {
          v10 = -8;
        }

        else
        {
          v10 = (v8 - 59);
        }

        v13 = *(a1 + 32);
        if (*(v13 + 28521))
        {
          v23 = 46;
        }

        else
        {
          v23 = 48;
        }

        LODWORD(v58) = v23;
        v45 = HIBYTE(*(a1 + 292)) & 0x20 | v45 & 0xFFDF;
        if ((v8 + 67) >= 0x44u)
        {
          v24 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v24] == 255)
          {
            v14 = 575;
            v11 = -1;
          }

          else
          {
            v11 = 0;
            v14 = BlueFin::GlSignalId::s_ausGnss2signalId[v24] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v24];
          }
        }

        else
        {
          v11 = 0;
          v14 = 575;
        }

        v15 = 0;
        v12 = 0;
        v42[0] = v8;
        v9 = 5;
LABEL_50:
        v16 = 0;
        v19 = 0;
        v43 = v11;
        v44 = v14;
        v18 = 1;
        goto LABEL_51;
      }

      if (v7 == 2)
      {
        v10 = 0;
        v15 = 0;
        v12 = 0;
        v11 = 0;
        v13 = *(a1 + 32);
        if (*(v13 + 28521))
        {
          v22 = 59;
        }

        else
        {
          v22 = 79;
        }

        LODWORD(v58) = v22;
        LOBYTE(v8) = 76;
        v42[0] = 76;
        v14 = 201;
        v9 = 7;
        goto LABEL_50;
      }

      if (v7 != 3)
      {
        goto LABEL_68;
      }

      v16 = 0;
      v13 = *(a1 + 32);
      if (*(v13 + 28521))
      {
        v17 = 25;
      }

      else
      {
        v17 = 250;
      }

      LODWORD(v58) = v17;
      v12 = 2;
      v42[0] = 2;
      v43 = 2;
      v44 = 65;
      v18 = 3;
      v15 = 1;
      v19 = 1;
    }

    if (v17 == 250)
    {
      goto LABEL_66;
    }

    v9 = 0;
    v10 = 0;
    LOBYTE(v8) = 0;
LABEL_51:
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v25 = *(v13 + 28528);
    if (v7 == 2)
    {
      v26 = 96;
    }

    else
    {
      v26 = 32;
    }

    if (v7 == 3)
    {
      v26 = -32;
    }

    BYTE14(v39) = v26;
    v27 = v25;
    LOWORD(v39) = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v42, v27, v6);
    WORD4(v39) = 0;
    BYTE6(v39) = 0;
    BYTE10(v39) = 0;
    WORD6(v39) = *(*(a1 + 32) + 27688);
    LOBYTE(v40) = 0;
    v28 = (*(*v50 + 48))(v50);
    v29 = (*(*v28 + 48))(v28);
    (*(*v29 + 72))(v29, v47, 1, &v53, &v39);
    if (v7 == 3)
    {
      v30 = -64;
    }

    else
    {
      v30 = 0;
    }

    v54 = v18;
    v55 = v53;
    v56 = v30;
    v57 = 0;
    v36[0] = v8;
    if ((v9 & 6) == 4)
    {
      v31 = v10;
    }

    else
    {
      v31 = v10;
    }

    v37 = v9;
    LODWORD(v38) = v31;
    *(&v38 + 4) = 0;
    HIDWORD(v38) = 0;
    if (v15 == 15 || v16 | v19)
    {
      v36[0] = v12;
      v37 = v15;
      v38 = 0uLL;
    }

    v32 = (*(*v50 + 48))(v50);
    v33 = (*(*v32 + 64))(v32);
    LOBYTE(v35) = 0;
    (*(*v33 + 32))(v33, v47, v53, v36, &v58, 1, 1, &v45, &v54, v35);
LABEL_66:
    ++v7;
  }

  while (v7 != 10);
  BlueFin::GlMeSrdTransaction::Complete(v47);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v47);
  v34 = *MEMORY[0x29EDCA608];
}

void sub_2989895AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeMinnowTestMgrCwController::RunCwTest(BlueFin::GlMeMinnowTestMgrCwController *this)
{
  v2 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v54 = 1;
  v55 = v2;
  v56 = 0;
  v57 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = *(this + 73);
  if ((v3 & 0x100000) != 0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 4.2949673e15;
  }

  v5 = *(*(*(this + 4) + 16) + 136);
  v6 = (*(*v5 + 24))(v5);
  v7 = vceqz_s32(vand_s8(vdup_n_s32(v3), 0x100000000800));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  v46 = vandq_s8(vdupq_n_s64(0x41086A0000000000uLL), v8);
  v9 = *(*(*(this + 4) + 16) + 136);
  v10 = *v9;
  if (v6)
  {
    v45 = (*(v10 + 88))(v9);
    BlueFin::GlMeSrdRfInit4777::GlMeSrdRfInit4777(v51, v9);
    RfInit = BlueFin::GlMeSrdRfInit4777::GetRfInit(v51, 3);
    v47 = *RfInit;
    v13 = RfInit[2];
    v12 = RfInit[3];
    v14 = RfInit[1];
    *&v50[12] = *(RfInit + 60);
    v49 = v13;
    *v50 = v12;
    v48 = v14;
    *(&v47 + 4) = vadd_s32(*(&v47 + 4), vmovn_s64(vcvtq_u64_f64(vdivq_f64(vmulq_f64(v46, vdupq_n_s64(0x41F0000000000000uLL)), vdupq_lane_s64(*&v45, 0)))));
    DWORD1(v48) = DWORD1(v14) + (v4 / (v45 * 3.0));
    HIDWORD(v48) = HIDWORD(v14) + (v4 / v45);
    v15 = (*(*v55 + 48))(v55);
    v16 = (*(*v15 + 16))(v15);
    (*(*v16 + 72))(v16, v52, &v47 + 4);
  }

  else if (((*(v10 + 40))(v9) & 1) == 0)
  {
    v17 = *(*(*(this + 4) + 16) + 136);
    if ((*(*v17 + 960))(v17))
    {
      v18 = 260.396395;
    }

    else
    {
      v18 = 130.198198;
    }

    v19 = *(*(*(this + 4) + 16) + 136);
    v20 = (*(*v19 + 96))(v19);
    switch(v20)
    {
      case 26000000:
        v21 = 63859112.0;
        break;
      case 38400000:
        v21 = 43237936.0;
        break;
      case 52000000:
        v21 = 31929556.0;
        break;
      default:
        DeviceFaultNotify("glmesrd_test_mgr_cw_controller.cpp", 1115, "MoveDecimatorNCO", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_controller.cpp", 1115, "0");
    }

    v22 = *(*(*(this + 4) + 16) + 136);
    v23 = (*(*v22 + 96))(v22);
    v28.i64[1] = *&v46.f64[1];
    v29 = v21 * v23 * 0.000000953674316 + -1583420000.0;
    if (v29 < 0.0)
    {
      v29 = -v29;
    }

    v51[7] = 0;
    *v25.i64 = (v46.f64[0] + 1575420000.0 + -1583420000.0 - v29) * 130.198198;
    *v27.i64 = *v25.i64 + trunc(*v25.i64 * 2.32830644e-10) * -4294967300.0;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v31 = vnegq_f64(v30);
    v27.i64[0] = vbslq_s8(v31, v27, v25).u64[0];
    if (*v25.i64 > 4294967300.0)
    {
      v25.i64[0] = v27.i64[0];
    }

    if (*v25.i64 < -4294967300.0)
    {
      *v26.i64 = -*v25.i64;
      *v25.i64 = -(*v25.i64 - trunc(*v25.i64 * -2.32830644e-10) * -4294967300.0);
      v25 = vbslq_s8(v31, v25, v26);
      *v25.i64 = -*v25.i64;
    }

    if (*v25.i64 < 0.0)
    {
      v32 = --*v25.i64;
    }

    else
    {
      v32 = *v25.i64;
    }

    v51[0] = v32;
    *v24.i64 = v18 * (-14407916.7 - v29);
    *v25.i64 = *v24.i64 + trunc(*v24.i64 * 2.32830644e-10) * -4294967300.0;
    v33 = vbslq_s8(v31, v25, v24);
    if (*v24.i64 > 4294967300.0)
    {
      v24.i64[0] = v33.i64[0];
    }

    if (*v24.i64 < -4294967300.0)
    {
      *v33.i64 = -*v24.i64;
      *v24.i64 = -(*v24.i64 - trunc(*v24.i64 * -2.32830644e-10) * -4294967300.0);
      v34.f64[0] = NAN;
      v34.f64[1] = NAN;
      v24 = vbslq_s8(vnegq_f64(v34), v24, v33);
      *v24.i64 = -*v24.i64;
    }

    if (*v24.i64 < 0.0)
    {
      v35 = --*v24.i64;
    }

    else
    {
      v35 = *v24.i64;
    }

    v51[2] = v35;
    *v28.i64 = (v46.f64[1] + 1561098000.0 + -1583420000.0 + 32987916.7 - v29) * 130.198198;
    *v33.i64 = *v28.i64 + trunc(*v28.i64 * 2.32830644e-10) * -4294967300.0;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v37 = vnegq_f64(v36);
    v33.i64[0] = vbslq_s8(v37, v33, v28).u64[0];
    if (*v28.i64 > 4294967300.0)
    {
      v28.i64[0] = v33.i64[0];
    }

    if (*v28.i64 < -4294967300.0)
    {
      *v24.i64 = -*v28.i64;
      *v28.i64 = -(*v28.i64 - trunc(*v28.i64 * -2.32830644e-10) * -4294967300.0);
      v28 = vbslq_s8(v37, v28, v24);
      *v28.i64 = -*v28.i64;
    }

    if (*v28.i64 < 0.0)
    {
      v38 = --*v28.i64;
    }

    else
    {
      v38 = *v28.i64;
    }

    v51[1] = v38;
    *v28.i64 = v18 * 562500.0;
    *v24.i64 = v18 * 562500.0 + trunc(v18 * 562500.0 * 2.32830644e-10) * -4294967300.0;
    v39 = vbslq_s8(v37, v24, v28);
    if (v18 * 562500.0 <= 4294967300.0)
    {
      *v39.i64 = v18 * 562500.0;
    }

    if (*v39.i64 < -4294967300.0)
    {
      *v28.i64 = -*v39.i64;
      *v39.i64 = -(*v39.i64 - trunc(*v39.i64 * -2.32830644e-10) * -4294967300.0);
      v40.f64[0] = NAN;
      v40.f64[1] = NAN;
      *v39.i64 = -*vbslq_s8(vnegq_f64(v40), v39, v28).i64;
    }

    if (*v39.i64 < 0.0)
    {
      v41 = --*v39.i64;
    }

    else
    {
      v41 = *v39.i64;
    }

    v51[3] = v41;
    v51[4] = 3763;
    if ((*(this + 73) & 0x100000) != 0)
    {
      v42 = 665963500;
    }

    else
    {
      v42 = 622564119;
    }

    v51[5] = v42;
    v51[6] = -1997879210;
    v43 = (*(*v55 + 48))(v55);
    v44 = (*(*v43 + 16))(v43);
    (*(*v44 + 72))(v44, v52, v51);
  }

  BlueFin::GlMeSrdTransaction::Complete(v52);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v52);
}

void BlueFin::GlMeMinnowTestMgrCwController::KillSAT(BlueFin::GlMeMinnowTestMgrCwController *this, uint64_t a2)
{
  v3 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  (*(*v3 + 16))(v3, 1);
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 64))(v4);
  (*(*v5 + 120))(v5, v6, a2);
  BlueFin::GlMeSrdTransaction::Complete(v6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v6);
}

void sub_298989E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeMinnowTestMgrCwController::CreateSAT(uint64_t a1, int *a2, unsigned __int8 a3)
{
  v62 = *MEMORY[0x29EDCA608];
  v52 = a3;
  v5 = (*(**(*(a1 + 32) + 8) + 80))(*(*(a1 + 32) + 8));
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  v48 = 1;
  v49 = v5;
  v50 = 0;
  v51 = 0;
  (*(*v5 + 16))(v5, 1);
  v7 = 0;
  v44 = (*(a1 + 292) >> 17) & 0x100 | 0x842;
  v45 = 7;
  v57 = *a2;
  v58 = *(a2 + 2);
  v59 = 0;
  v60 = *(a2 + 7);
  v61 = 0;
  do
  {
    if (*(&v57 + v7) != 1)
    {
      goto LABEL_62;
    }

    v56 = xmmword_298A39110;
    if (v7 > 3u)
    {
      if (v7 > 6u)
      {
        if (v7 == 7)
        {
          v8 = *(a1 + 289);
        }

        else
        {
          if (v7 != 8)
          {
LABEL_64:
            DeviceFaultNotify("glmesrd_test_mgr_cw_controller.cpp", 969, "CreateSAT", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_controller.cpp", 969, "0");
          }

          v8 = *(a1 + 290);
        }

LABEL_38:
        if ((v8 - 52) > 0xD)
        {
          v10 = -8;
        }

        else
        {
          v10 = (v8 - 59);
        }

        v14 = *(a1 + 32);
        if (*(v14 + 28521))
        {
          v21 = 46;
        }

        else
        {
          v21 = 48;
        }

        LODWORD(v56) = v21;
        v44 = HIBYTE(*(a1 + 292)) & 0x20 | v44 & 0xFFDF;
        if ((v8 + 67) >= 0x44u)
        {
          v24 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v24] == 255)
          {
            v23 = 575;
            v22 = -1;
          }

          else
          {
            v22 = 0;
            v23 = BlueFin::GlSignalId::s_ausGnss2signalId[v24] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v24];
          }
        }

        else
        {
          v22 = 0;
          v23 = 575;
        }

        v16 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0;
        v41[0] = v8;
        v42 = v22;
        v15 = 1;
        v43 = v23;
        v9 = 5;
        goto LABEL_50;
      }

      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_64;
        }

        v9 = 0;
        v10 = 0;
        LOBYTE(v8) = 0;
        v11 = 0;
        v12 = 0;
        LODWORD(v56) = 48;
        v13 = -81;
        v41[0] = -81;
        v42 = 0;
        v43 = 561;
        v44 = HIBYTE(*(a1 + 292)) & 0x20 | v44 & 0xFFDF;
        v14 = *(a1 + 32);
        v15 = 1;
        v16 = 15;
        goto LABEL_50;
      }

      v12 = 0;
      v13 = -117;
      v41[0] = -117;
      v11 = 1;
      v42 = 1;
      v14 = *(a1 + 32);
      v19 = *(v14 + 28521);
      v43 = 489;
      if (v19)
      {
        v17 = 71;
      }

      else
      {
        v17 = 250;
      }

      LODWORD(v56) = v17;
      v15 = 2;
      v16 = 11;
    }

    else
    {
      if (v7 <= 1u)
      {
        if (!v7)
        {
          v10 = 0;
          v16 = 0;
          v13 = 0;
          v11 = 0;
          v12 = 0;
          v14 = *(a1 + 32);
          if (*(v14 + 27681))
          {
            v9 = 1;
          }

          else
          {
            v9 = 3;
          }

          if (*(v14 + 28521))
          {
            v18 = 25;
          }

          else
          {
            v18 = 48;
          }

          LODWORD(v56) = v18;
          v44 = HIBYTE(*(a1 + 292)) & 0x20 | v44 & 0xFFDF;
          LOBYTE(v8) = 1;
          v41[0] = 1;
          v42 = 0;
          v43 = 0;
          v15 = 1;
          goto LABEL_50;
        }

        v8 = *(a1 + 288);
        goto LABEL_38;
      }

      if (v7 == 2)
      {
        v10 = 0;
        v16 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0;
        v14 = *(a1 + 32);
        if (*(v14 + 28521))
        {
          v20 = 59;
        }

        else
        {
          v20 = 79;
        }

        LODWORD(v56) = v20;
        LOBYTE(v8) = 76;
        v41[0] = 76;
        v42 = 0;
        v43 = 201;
        v15 = 1;
        v9 = 7;
        goto LABEL_50;
      }

      if (v7 != 3)
      {
        goto LABEL_64;
      }

      v11 = 0;
      v14 = *(a1 + 32);
      if (*(v14 + 28521))
      {
        v17 = 25;
      }

      else
      {
        v17 = 250;
      }

      LODWORD(v56) = v17;
      v13 = 2;
      v41[0] = 2;
      v42 = 2;
      v43 = 65;
      v15 = 3;
      v16 = 1;
      v12 = 1;
    }

    if (v17 == 250)
    {
      goto LABEL_62;
    }

    v9 = 0;
    v10 = 0;
    LOBYTE(v8) = 0;
LABEL_50:
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v25 = *(v14 + 28528);
    if (v7 == 2)
    {
      v26 = 96;
    }

    else
    {
      v26 = 32;
    }

    if (v7 == 3)
    {
      v26 = -32;
    }

    BYTE14(v38) = v26;
    v27 = v25;
    LOWORD(v38) = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v41, v27, v6);
    WORD4(v38) = 0;
    BYTE6(v38) = 0;
    BYTE10(v38) = 0;
    WORD6(v38) = *(*(a1 + 32) + 27688);
    LOBYTE(v39) = 0;
    v28 = (*(*v49 + 48))(v49);
    v29 = (*(*v28 + 48))(v28);
    (*(*v29 + 72))(v29, v46, 1, &v52, &v38);
    v53 = v15;
    v54 = v52;
    v55 = 0;
    v35[0] = v8;
    if ((v9 & 6) == 4)
    {
      v30 = v10;
    }

    else
    {
      v30 = v10;
    }

    v36 = v9;
    LODWORD(v37) = v30;
    *(&v37 + 4) = 0;
    HIDWORD(v37) = 0;
    if (v16 == 15 || v11 | v12)
    {
      v35[0] = v13;
      v36 = v16;
      v37 = 0uLL;
    }

    v31 = (*(*v49 + 48))(v49);
    v32 = (*(*v31 + 64))(v31);
    LOBYTE(v34) = 0;
    (*(*v32 + 32))(v32, v46, v52, v35, &v56, 1, 1, &v44, &v53, v34);
LABEL_62:
    ++v7;
  }

  while (v7 != 10);
  BlueFin::GlMeSrdTransaction::Complete(v46);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v46);
  v33 = *MEMORY[0x29EDCA608];
}

void sub_29898A50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdTestMgrCwReceiver::GlMeSrdTestMgrCwReceiver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = a5;
  *a1 = &unk_2A1F0CA58;
  *(a1 + 32) = a4;
  v6 = a1 + 24576;
  *(a1 + 27244) = 0;
  *(a1 + 27248) = 0;
  *(a1 + 26992) = 0u;
  *(a1 + 27008) = 0u;
  *(a1 + 27024) = 0u;
  *(a1 + 27040) = 0u;
  *(a1 + 27056) = 0u;
  *(a1 + 27072) = 0u;
  *(a1 + 27088) = 0u;
  *(a1 + 27104) = 0u;
  *(a1 + 27120) = 0u;
  *(a1 + 27136) = 0u;
  *(a1 + 27152) = 0u;
  *(a1 + 27168) = 0u;
  *(a1 + 27184) = 0u;
  *(a1 + 27200) = 0u;
  *(a1 + 27216) = 0u;
  *(a1 + 27227) = 0u;
  *(a1 + 27256) = 0;
  *(a1 + 27320) = 0;
  *(a1 + 27304) = 0u;
  *(a1 + 27328) = 0;
  *(a1 + 27330) = -1;
  *(a1 + 27331) = 0;
  *(a1 + 27339) = 0;
  *(a1 + 27344) = 0;
  *(a1 + 27352) = 0;
  *(a1 + 27856) = 0;
  *(a1 + 27952) = 0;
  *(a1 + 27960) = a3;
  *(a1 + 27968) = a2;
  *(a1 + 27976) = &unk_2A1F0CAB0;
  *(a1 + 27984) = a1;
  *(a1 + 27992) = &unk_2A1F0CB40;
  *(a1 + 28000) = a1;
  *(a1 + 28008) = &unk_2A1F0CB88;
  *(a1 + 28016) = a1;
  *(a1 + 28056) = 0;
  *(a1 + 28024) = 0u;
  *(a1 + 28040) = 0u;
  *(a1 + 28064) = &unk_2A1F0CC20;
  *(a1 + 28072) = a1;
  *(a1 + 28096) = 0;
  *(a1 + 28104) = 0;
  *(a1 + 28125) = 0;
  *(a1 + 28080) = 0;
  *(a1 + 28087) = 0;
  v7 = (a1 + 28132);
  *(a1 + 28128) = 0;
  *(a1 + 28132) = 0u;
  *(a1 + 28148) = 0u;
  *(a1 + 28164) = 0u;
  *(a1 + 28180) = 0u;
  v8 = (a1 + 28115);
  *(a1 + 948) = 0;
  *(a1 + 940) = 0;
  *(a1 + 9360) = 0;
  *(a1 + 9352) = 0;
  *(a1 + 9532) = 0;
  *(a1 + 9524) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 26984) = 0;
  *(a1 + 26952) = 0u;
  *(a1 + 26968) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 27296) = -1;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 27280) = v9;
  *(a1 + 27264) = v9;
  *(a1 + 27865) = 0;
  v10 = -80;
  *(a1 + 27857) = 0;
  do
  {
    *(a1 + v10 + 27952) = 0;
    *(v8 - 10) = 1;
    *v8++ = 2;
    v10 += 8;
  }

  while (v10);
  if (a4)
  {
    v11 = *(a4 + 16);
    if (v11)
    {
      *(a1 + 16) = v11;
      *(a1 + 16) = *(a4 + 16);
    }
  }

  bzero((a1 + 60), 0x370uLL);
  bzero((a1 + 952), 0x20D0uLL);
  v12 = (a1 + 9376);
  v13 = 10;
  do
  {
    *(v12 - 4) = 0;
    *(v12 - 3) = 0;
    *v12 = 0;
    v12 += 4;
    --v13;
  }

  while (v13);
  bzero((a1 + 9536), 0x43F8uLL);
  *(v6 + 3552) = 0;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  return a1;
}

void BlueFin::GlMeSrdTestMgrCwReceiver::~GlMeSrdTestMgrCwReceiver(BlueFin::GlMeSrdTestMgrCwReceiver *this)
{
  *this = &unk_2A1F0CA58;
  for (i = 40; i != 50; ++i)
  {
    if (*(this + i) == 1)
    {
      DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 159, "~GlMeSrdTestMgrCwReceiver", "!m_bSatAlive[i]");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 159, "!m_bSatAlive[i]");
    }
  }
}

{
  BlueFin::GlMeSrdTestMgrCwReceiver::~GlMeSrdTestMgrCwReceiver(this);

  JUMPOUT(0x29C292F70);
}

void BlueFin::GlMeSrdTestMgrCwReceiver::AllocateCwResources(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(**(v4 + 8) + 136))(*(v4 + 8), a1 + 27976);
    (*(**(*(a1 + 32) + 8) + 168))(*(*(a1 + 32) + 8), a1 + 27992);
    v5 = *(*(*(a1 + 32) + 16) + 136);
    if (((*(*v5 + 240))(v5) & 1) != 0 || (v6 = *(*(*(a1 + 32) + 16) + 136), (*(*v6 + 264))(v6)))
    {
      (*(**(*(a1 + 32) + 8) + 88))(*(*(a1 + 32) + 8), a1 + 28008);
    }

    v7 = *(*(*(a1 + 32) + 16) + 136);
    if ((*(*v7 + 264))(v7))
    {
      (*(**(*(a1 + 32) + 8) + 88))(*(*(a1 + 32) + 8), a1 + 28064);
    }
  }

  BlueFin::GlMeSrdTestMgrCwParams::operator=(a1 + 26992, a2);
  v8 = 3484;
  v9 = a2;
  do
  {
    *(a1 + 8 * v8++) = (*v9 + v9[10]) * 0.5;
    ++v9;
  }

  while (v8 != 3494);
  v10 = *(a1 + 27244);
  if ((v10 & 0x20) != 0)
  {
    v11 = *(a2 + 248);
    if ((v11 + 67) < 0x44u || (v12 = BlueFin::GlSvId::s_aucSvId2gnss[v11], v13 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v12], v13 == -1) || (BlueFin::GlSignalId::s_ausGnss2signalId[v12] + v11 - BlueFin::GlSvId::s_aucGnss2minSvId[v12]) >= 0x23Fu)
    {
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
    }

    v14 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[v13];
    if (v12 == 2)
    {
      v15 = (v11 - 59);
      if ((v11 - 52) >= 0xE)
      {
        v15 = -8.0;
      }

      v14 = v14 + v15 * 562500.0;
    }

    *(a1 + 27880) = *(a1 + 27880) + v14 + -1575420000.0;
  }

  *(a1 + 26976) = (v10 & 2) != 0;
  *(a1 + 26977) = (v10 & 0x20) >> 5;
  *(a1 + 26978) = (v10 & 0x40) != 0;
  *(a1 + 26979) = (v10 & 0x4000) != 0;
  *(a1 + 26980) = (v10 & 0x8000) != 0;
  v16 = (v10 >> 21) & 1;
  if ((v10 & 0x4002) == 0x4000)
  {
    LOBYTE(v16) = 1;
  }

  *(a1 + 26981) = v16;
  *(a1 + 26983) = (v10 & 0x800000) != 0;
  *(a1 + 26984) = HIBYTE(v10) & 1;
}

double BlueFin::GlSignalId::GetRfCarrierFrqHz(BlueFin::GlSignalId *this)
{
  if (*(this + 4) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v1 = *this;
  v2 = BlueFin::GlSvId::s_aucSvId2gnss[v1];
  result = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v2]];
  if (v2 == 2)
  {
    v4 = (v1 - 59);
    if ((v1 - 52) >= 0xE)
    {
      v4 = -8.0;
    }

    return result + v4 * 562500.0;
  }

  return result;
}

void BlueFin::GlMeSrdTestMgrCwReceiver::RunCwTest(BlueFin::GlMeSrdTestMgrCwReceiver *this)
{
  v2 = 0;
  v7 = *MEMORY[0x29EDCA608];
  v3 = this + 26976;
  do
  {
    *&v3[4 * v2 - 40] = 1;
    if (v3[v2] == 1)
    {
      v5[0] = 0;
      v6 = v2;
      BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(this, v5);
    }

    ++v2;
  }

  while (v2 != 10);
  v4 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(BlueFin::GlMeSrdTestMgrCwReceiver *this, uint64_t a2)
{
  v2 = this + 26976;
  v3 = *(a2 + 1752);
  if ((*(this + v3 + 26976) & 1) == 0)
  {
    v11 = "m_bSmEnabled[stEvent.ucEventId]";
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 489, "ProcessEvent", "m_bSmEnabled[stEvent.ucEventId]");
    v12 = 489;
LABEL_76:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", v12, v11);
  }

  v6 = this + 26936;
  v7 = *(this + v3 + 6734);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v17 = *a2;
      if (*a2 == 5)
      {
        *(this + 16 * v3 + 9364) = *(a2 + 8);
        v23 = 9352;
      }

      else if (v17 == 4)
      {
        memcpy(this + 840 * *(a2 + 1752) + 952, (a2 + 8), 0x348uLL);
        v23 = 940;
      }

      else
      {
        if (v17 != 3 || *(a2 + 12) != 1)
        {
          return;
        }

        v18 = this + 88 * *(a2 + 1752);
        v19 = *(a2 + 8);
        *(v18 + 76) = *(a2 + 24);
        *(v18 + 60) = v19;
        v20 = *(a2 + 40);
        v21 = *(a2 + 56);
        v22 = *(a2 + 72);
        *(v18 + 140) = *(a2 + 88);
        *(v18 + 124) = v22;
        *(v18 + 108) = v21;
        *(v18 + 92) = v20;
        v23 = 50;
      }

      v24 = *(a2 + 1752);
      *(this + v24 + v23) = 1;
      if ((*(this + v24 + 9524) & 1) != 0 || !*(this + v24 + 50))
      {
        if (*(this + v24 + 9524))
        {
          v25 = *(this + v24 + 50) == 0;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          return;
        }
      }

      else if ((*(this + v24 + 940) & 1) == 0)
      {
        return;
      }

      BlueFin::GlMeSrdTestMgrCwReceiver::ReadAgcValues(this);
      v26 = this;
      v27 = a2;
      v28 = 0;
      goto LABEL_70;
    }

    if (v7 == 4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v7 == 1)
  {
    if (*a2)
    {
      return;
    }

    v13 = *(this + 4);
    if (v13)
    {
      v14 = vand_s8(vceq_s16(vdup_n_s16(v3), 0x3000200010000), 0x1000100010001);
      v42 = vuzp1_s8(v14, v14).u32[0];
      v43 = v3 == 4;
      v44 = v3 == 5;
      v45 = 0;
      v46 = v3 == 7;
      v47 = v3 == 8;
      (*(**(v13 + 424) + 88))(*(v13 + 424), &v42);
      v3 = *(a2 + 1752);
    }

    *(this + v3 + 40) = 1;
    if (((*(**(this + 3496) + 256))(*(this + 3496)) & 1) == 0 && ((*(**(this + 3496) + 264))(*(this + 3496)) & 1) == 0)
    {
      BlueFin::GlMeSrdTestMgrCwReceiver::ReadAgcValues(this);
    }

    v15 = *(a2 + 1752);
    v16 = 2;
    goto LABEL_20;
  }

  if (v7 != 2)
  {
LABEL_12:
    v11 = "0";
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 661, "ProcessEvent", "0");
    v12 = 661;
    goto LABEL_76;
  }

  v8 = *a2;
  if (*a2 <= 2)
  {
    if (v8 == 1)
    {
      v29 = 0;
      v6 = this + 27264;
      while (1)
      {
        if (v2[v29] == 1)
        {
          v30 = *(this + 6814);
          v31 = *&v2[4 * v29 + 288];
          if (v29 > 8 || v30 > v31)
          {
            if (v30 <= v31)
            {
              return;
            }

            if (*(this + 27329) == 1)
            {

              BlueFin::GlMeSrdTestMgrCwReceiver::Restart(this, a2);
              return;
            }

            BlueFin::GlMeSrdTestMgrCwReceiver::ReportFailure(this, a2);
            v15 = *(a2 + 1752);
            v16 = -1;
LABEL_20:
            *&v6[4 * v15] = v16;
            return;
          }
        }

        else if (v29 > 8)
        {
          return;
        }

        ++v29;
      }
    }

    if (v8 != 2)
    {
      return;
    }

    v9 = *(*(a2 + 8) + 4);
    if (v9)
    {
      v9 = 1;
      v10 = -1;
    }

    else
    {
      v10 = *(this + 6814) + 5000;
    }

    *(this + v3 + 6816) = v10;
    *(this + v3 + 40) = v9;
    v37 = (*(**(this + 3496) + 264))();
    v38 = *(a2 + 8);
    if (v37 && v38[6] == 255 && v38[4] == 1 || v38[5] == 255 && v38[4])
    {
      v39 = *(a2 + 1752);
      *(this + v39 + 6816) = -1;
      *&v6[4 * v39] = 3;
    }

    v40 = *(a2 + 1752);
    v41 = *(this + v40 + 50);
    if ((*(this + v40 + 9524) & 1) != 0 || !*(this + v40 + 50))
    {
      if (!*(this + v40 + 9524) || !*(this + v40 + 50))
      {
        return;
      }
    }

    else if ((*(this + v40 + 940) & 1) == 0)
    {
      return;
    }

    v26 = this;
    v27 = a2;
    v28 = 1;
LABEL_70:

    BlueFin::GlMeSrdTestMgrCwReceiver::ProcessMsmts(v26, v27, v28);
    return;
  }

  if (v8 == 3)
  {
    if (!*(a2 + 12))
    {
      if ((*(this + 27244) & 0x40) == 0 || (*(this + 28088) = (*(a2 + 20) & 2) != 0, !*(a2 + 12)))
      {
        v32 = this + 88 * v3;
        v33 = *(a2 + 8);
        *(v32 + 76) = *(a2 + 24);
        *(v32 + 60) = v33;
        v34 = *(a2 + 40);
        v35 = *(a2 + 56);
        v36 = *(a2 + 72);
        *(v32 + 140) = *(a2 + 88);
        *(v32 + 124) = v36;
        *(v32 + 108) = v35;
        *(v32 + 92) = v34;
        *(this + *(a2 + 1752) + 50) = 1;
      }
    }
  }

  else if (v8 == 6)
  {
    memcpy(this + 1740 * *(a2 + 1752) + 9536, (a2 + 8), 0x6CCuLL);
    *(this + *(a2 + 1752) + 9524) = 1;
  }
}

uint64_t BlueFin::GlMeSrdTestMgrCwReceiver::ClearCwResources(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = this + 40;
  do
  {
    if (*(v3 + v2) == 1)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        this = (*(**(v4 + 424) + 80))(*(v4 + 424), v2);
      }

      *(v3 + v2) = 0;
    }

    ++v2;
  }

  while (v2 != 10);
  v5 = *(v1 + 32);
  if (v5)
  {
    (*(**(v5 + 8) + 176))(*(v5 + 8), v1 + 27992);
    (*(**(*(v1 + 32) + 8) + 144))(*(*(v1 + 32) + 8), v1 + 27976);
    v6 = *(*(*(v1 + 32) + 16) + 136);
    if ((*(*v6 + 240))(v6))
    {
      (*(**(*(v1 + 32) + 8) + 96))(*(*(v1 + 32) + 8), v1 + 28008);
    }

    v7 = *(*(*(v1 + 32) + 16) + 136);
    this = (*(*v7 + 264))(v7);
    if (this)
    {
      this = (*(**(*(v1 + 32) + 8) + 96))(*(*(v1 + 32) + 8), v1 + 28064);
    }
  }

  for (i = 0; i != 10; ++i)
  {
    *(v1 + 26936 + 4 * i) = 4;
    if (*(v3 + i) == 1)
    {
      DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 286, "ClearCwResources", "!m_bSatAlive[band]");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 286, "!m_bSatAlive[band]");
    }
  }

  return this;
}

void BlueFin::GlMeSrdTestMgrCwReceiver::Heartbeat(BlueFin::GlMeSrdTestMgrCwReceiver *this, int a2)
{
  v4 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v5 = *(this + 6814);
  v6 = this + 27264;
  do
  {
    if (!v5)
    {
      v7 = *&v6[v4];
      if (v7 != -1)
      {
        *&v6[v4] = v7 + a2;
      }
    }

    v4 += 4;
  }

  while (v4 != 40);
  v8 = 0;
  *(this + 6814) = a2;
  do
  {
    if (*(this + v8 + 26976) == 1)
    {
      v23[0] = 1;
      v23[2] = a2;
      v24[0] = v8;
      BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(this, v23);
      v9 = *(this + 4);
      if (v9)
      {
        v10 = (*(**(v9 + 8) + 80))(*(v9 + 8));
        v17[0] = 0;
        v17[1] = 0;
        v18 = 256;
        v19 = 0;
        v20 = v10;
        v21 = 0;
        v22 = 0;
        (*(*v10 + 16))(v10, 1);
        v16 = 0u;
        *&v15[4] = 0u;
        if (v8)
        {
          v11 = 32;
        }

        else
        {
          v11 = 96;
        }

        if (v8 == 3)
        {
          v11 = -32;
        }

        v15[14] = v11;
        *v15 = 0;
        *&v15[3] = 0;
        *&v15[12] = *(*(this + 4) + 27688);
        v12 = (*(*v20 + 48))(v20);
        v13 = (*(*v12 + 48))(v12);
        (*(*v13 + 72))(v13, v17, 1, v24, v15);
        BlueFin::GlMeSrdTransaction::Complete(v17);
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v17);
      }
    }

    ++v8;
  }

  while (v8 != 10);
  v14 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrCwReceiver::ReadAgcValues(BlueFin::GlMeSrdTestMgrCwReceiver *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = (*(**(v1 + 8) + 80))(*(v1 + 8));
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    v34 = 1;
    v35 = v3;
    v36 = 0;
    v37 = 0;
    (*(*v3 + 16))(v3, 1);
    v4 = *(this + 6);
    if ((v4 - 6) >= 2)
    {
      if (v4 == 2)
      {
        v17 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v18 = (*(*v17 + 32))(v17);
        (*(*v18 + 16))(v18, v32, 10, 27);
        v19 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v20 = (*(*v19 + 32))(v19);
        (*(*v20 + 16))(v20, v32, 10, 29);
        v21 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v22 = (*(*v21 + 32))(v21);
        (*(*v22 + 16))(v22, v32, 10, 30);
        v23 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v24 = (*(*v23 + 32))(v23);
        (*(*v24 + 16))(v24, v32, 10, 31);
        v25 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v26 = (*(*v25 + 32))(v25);
        (*(*v26 + 16))(v26, v32, 10, 32);
        v27 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v28 = (*(*v27 + 32))(v27);
        (*(*v28 + 16))(v28, v32, 9, 3221274864);
        v29 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v30 = (*(*v29 + 32))(v29);
        (*(*v30 + 16))(v30, v32, 9, 3221275120);
        v31 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v14 = (*(*v31 + 32))(v31);
        v15 = 3221275376;
        v16 = 9;
      }

      else
      {
        if (v4 != 1)
        {
          DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 393, "ReadAgcValues", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 393, "0");
        }

        v5 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v6 = (*(*v5 + 32))(v5);
        (*(*v6 + 32))(v6, v32, 4, 12288, 0, 0x4000);
        v7 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v8 = (*(*v7 + 32))(v7);
        (*(*v8 + 32))(v8, v32, 4, 12288, 0x4000, 0x4000);
        v9 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v10 = (*(*v9 + 32))(v9);
        (*(*v10 + 32))(v10, v32, 4, 12288, 0, 0x4000);
        v11 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v12 = (*(*v11 + 32))(v11);
        (*(*v12 + 16))(v12, v32, 4, 12318);
        v13 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
        v14 = (*(*v13 + 32))(v13);
        v15 = 12319;
        v16 = 4;
      }

      (*(*v14 + 16))(v14, v32, v16, v15);
    }

    BlueFin::GlMeSrdTransaction::Complete(v32);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v32);
  }
}

void sub_29898C124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrCwReceiver::PollMsCounter(BlueFin::GlMeSrdTestMgrCwReceiver *this)
{
  v2 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v11 = 1;
  v12 = v2;
  v13 = 0;
  v14 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = *(this + 6);
  if ((v3 - 6) >= 2)
  {
    if (v3 == 2)
    {
      v8 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
      v5 = (*(*v8 + 32))(v8);
      v6 = 3221225560;
      v7 = 9;
    }

    else
    {
      if (v3 != 1)
      {
        DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 428, "PollMsCounter", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 428, "0");
      }

      v4 = (*(**(*(this + 4) + 8) + 208))(*(*(this + 4) + 8));
      v5 = (*(*v4 + 32))(v4);
      v6 = 22;
      v7 = 4;
    }

    (*(*v5 + 16))(v5, v9, v7, v6);
  }

  BlueFin::GlMeSrdTransaction::Complete(v9);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v9);
}

void sub_29898C320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrCwReceiver::RequestDump(BlueFin::GlMeSrdTestMgrCwReceiver *this)
{
  v2 = this + 24576;
  *(this + 6734) = 6;
  v3 = (*(**(*(this + 4) + 8) + 80))(*(*(this + 4) + 8));
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v19 = 1;
  v20 = v3;
  v21 = 0;
  v22 = 0;
  (*(*v3 + 16))(v3, 1);
  v4 = *(this + 6);
  if ((v4 - 6) >= 2)
  {
    if (v4 == 2)
    {
      v11 = (*(**(this + 1) + 208))(*(this + 1));
      v12 = (*(*v11 + 32))(v11);
      (*(*v12 + 24))(v12, v17, 9, 3221226032, 0);
      v13 = *(v2 + 667);
      v14 = *(*(this + 4) + 8);
      v7 = *(*v14 + 208);
      if ((v13 & 0x180) != 0 && ((v13 >> 9) & 3) - 1 <= 2)
      {
        v15 = *v14 + 208;
        v16 = v7();
        v9 = (*(*v16 + 16))(v16);
        v10 = 512;
        goto LABEL_9;
      }
    }

    else
    {
      if (v4 != 1)
      {
        DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 472, "RequestDump", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 472, "0");
      }

      v5 = (*(**(this + 1) + 208))(*(this + 1));
      v6 = (*(*v5 + 32))(v5);
      (*(*v6 + 24))(v6, v17, 4, 70, 256);
      v7 = *(**(this + 1) + 208);
    }

    v8 = v7();
    v9 = (*(*v8 + 16))(v8);
    v10 = 1024;
LABEL_9:
    (*(*v9 + 160))(v9, v17, v10);
  }

  BlueFin::GlMeSrdTransaction::Complete(v17);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v17);
}

void sub_29898C63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdTestMgrCwReceiver::Restart(BlueFin::GlMeSrdTestMgrCwReceiver *this, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *(this + 4);
  if (v4)
  {
    (*(**(v4 + 424) + 80))(*(v4 + 424), *(a2 + 1752));
  }

  v5 = *(a2 + 1752);
  *(this + v5 + 40) = 0;
  *(this + v5 + 6734) = 1;
  result = BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(this);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t BlueFin::GlMeSrdTestMgrCwReceiver::ReportFailure(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *(a1 + 4 * *(a2 + 1752) + 26936) = 4;
  v4 = a1 + 24576;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = -1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  BlueFin::sCwResults::operator=(a1 + 27304, v8);
  *(v4 + 2752) = 1;
  *(v4 + 2754) = *(a2 + 1752);
  *(v4 + 3280) = 1;
  v5 = *(a1 + 32);
  if (!v5)
  {
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 1957, "ReportFailure", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 1957, "0");
  }

  result = BlueFin::GlMeSrdCtrlSm::PostCwResults(*(v5 + 16));
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdTestMgrCwReceiver::GetSignalId(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (!a3)
  {
    v3 = 1u;
    goto LABEL_8;
  }

  if (*(a2 + 28125))
  {
    v3 = 1u;
    goto LABEL_4;
  }

  v3 = 0xAFu;
  if (a3 > 3u)
  {
    switch(a3)
    {
      case 4u:
        v3 = 0x8Bu;
        goto LABEL_22;
      case 8u:
        v7 = 27242;
        break;
      case 7u:
        v7 = 27241;
        break;
      default:
LABEL_4:
        if (a3 != 4)
        {
          if (a3 != 3)
          {
LABEL_29:
            *(result + 4) = 0;
            v4 = (result + 4);
            *result = v3;
            *(result + 8) = 575;
            result += 8;
            if (v3 - 189 < 0xFFFFFF44)
            {
              return result;
            }

            goto LABEL_30;
          }

LABEL_14:
          *result = v3;
          *(result + 4) = 2;
          v5 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
          *(result + 8) = 575;
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5 + 14] != 255)
          {
            v6 = BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v3 - BlueFin::GlSvId::s_aucGnss2minSvId[v5] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v5];
LABEL_24:
            *(result + 8) = v6;
            return result;
          }

          goto LABEL_25;
        }

LABEL_22:
        *result = v3;
        *(result + 4) = 1;
        v8 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v8 + 7] != 255)
        {
          v6 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v3 + BlueFin::GlSvId::s_aucGnss2numSvId[v8] - BlueFin::GlSvId::s_aucGnss2minSvId[v8];
          goto LABEL_24;
        }

LABEL_25:
        *(result + 4) = -1;
        return result;
    }

LABEL_28:
    v3 = *(a2 + v7);
    goto LABEL_29;
  }

  if (a3 == 1)
  {
    v7 = 27240;
    goto LABEL_28;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      v3 = 2u;
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  v3 = 0x4Cu;
LABEL_8:
  *result = v3;
  *(result + 4) = 0;
  v4 = (result + 4);
  *(result + 8) = 575;
  result += 8;
LABEL_30:
  v9 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v9] == 255)
  {
    *v4 = -1;
  }

  else
  {
    *result = BlueFin::GlSignalId::s_ausGnss2signalId[v9] + v3 - BlueFin::GlSvId::s_aucGnss2minSvId[v9];
  }

  return result;
}

uint64_t BlueFin::GlMeSrdTestMgrCwReceiver::LastGearId(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 60 + 88 * a2 + 4) != 1)
  {
    v6 = "m_stAcqWindow[stEvent.ucEventId].id.eng_type == TRACK_ENGINE_TYPE";
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 1293, "LastGearId", "m_stAcqWindow[stEvent.ucEventId].id.eng_type == TRACK_ENGINE_TYPE");
    v7 = 1293;
    goto LABEL_10;
  }

  v2 = a1 + 60 + 88 * a2 + 9;
  v3 = 4;
  do
  {
    result = *(v2 + v3);
    v5 = v3-- != 0;
  }

  while (v5 && result == 255);
  if (result == 255)
  {
    v6 = "ucRet != 0xFF";
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 1300, "LastGearId", "ucRet != 0xFF");
    v7 = 1300;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", v7, v6);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdTestMgrCwReceiver::GetGearId(uint64_t a1, unsigned __int8 a2, unsigned int a3)
{
  v3 = a1 + 88 * a2;
  if (*(v3 + 64) != 1)
  {
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 1307, "GetGearId", "m_stAcqWindow[stEvent.ucEventId].id.eng_type == TRACK_ENGINE_TYPE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", 1307, "m_stAcqWindow[stEvent.ucEventId].id.eng_type == TRACK_ENGINE_TYPE");
  }

  return *(v3 + 60 + a3 + 9);
}

void BlueFin::GlMeSrdTestMgrCwReceiver::BuildAcqWindowMsmtInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  BlueFin::GlMeSrdTestMgrCwReceiver::GetSignalId(v68, a1, *(a3 + 1752));
  v9 = *(a3 + 1752);
  v10 = a1 + 60 + 88 * *(a3 + 1752);
  if (a4)
  {
    *a2 = 1;
    *(a2 + 4) = 1;
    if ((a2 + 8) != v68)
    {
      *(a2 + 8) = v68[0];
      *(a2 + 12) = v69;
      *(a2 + 16) = v70;
    }

    if (*(v10 + 4) == 1)
    {
      v11 = 0;
      LOBYTE(v12) = 4;
      do
      {
        if (*(v10 + 9 + v11) != 0xFF)
        {
          LOBYTE(v12) = v11;
        }

        ++v11;
      }

      while (v11 != 5);
      v12 = v12;
    }

    else
    {
      v12 = 4;
    }

    v39 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v10 + 4 * v12 + 56), v68, v8);
    *(a2 + 56) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(v68, v39, v40);
    if (*(a1 + 27256) <= 1u)
    {
      v41 = 1;
    }

    else
    {
      v41 = *(a1 + 27256);
    }

    *(a2 + 64) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v10 + 20), v68, v41) * 0.001;
    *(a2 + 64) = *(a2 + 64) - (*(**(a1 + 27960) + 56))(*(a1 + 27960), v68);
    InterSignalBiasInMs = BlueFin::GlSignalId::GetInterSignalBiasInMs(v68, *(a1 + 27968));
    v43 = *(a2 + 64);
    v44 = v43 - InterSignalBiasInMs * 0.001;
    *(a2 + 64) = v44;
    *(a2 + 64) = BlueFin::GlMeSrdAsicUnitConverter::Esw16thOr20thChipsToSecs(*(a1 + 9536 + 1740 * v9 + 9), v68, v45, v44, v43, v46) + *(a2 + 64);
    v47 = (*(**(a1 + 27960) + 248))(*(a1 + 27960), *(v10 + 8));
    LOWORD(v48) = *(v10 + 16);
    *(a2 + 64) = *(a2 + 64) + (1.0 - *(a2 + 56)) * (*(v47 + 4) * v48);
    if (v70 < 0x23Fu)
    {
      v49 = BlueFin::GlSvId::s_aucSvId2gnss[v68[0]];
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v69 - v69 + v49])
      {
        v50 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v69 + v49];
        if (v50)
        {
          *(a2 + 72) = ((vcvtd_n_f64_u32(*(v10 + 42), 0x10uLL) + (*(v10 + 32) & 0xF)) * 0.0625 + (*(v10 + 32) >> 4)) * (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v69 - v69 + v49] * 0.001) / v50;
          *(a2 + 20) = 0;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          *(a2 + 32) = 0;
          return;
        }

        goto LABEL_60;
      }

LABEL_59:
      v66 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v67 = 686;
      goto LABEL_61;
    }

LABEL_58:
    v66 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v67 = 679;
    goto LABEL_61;
  }

  *a2 = 1;
  *(a2 + 4) = 2;
  if ((a2 + 8) != v68)
  {
    *(a2 + 8) = v68[0];
    *(a2 + 12) = v69;
    *(a2 + 16) = v70;
  }

  if (*(a1 + 27256) <= 1u)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a1 + 27256);
  }

  *(a2 + 40) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToInitialUserTimeMs(v10 + 20, v68, v13) * 0.001;
  *(a2 + 40) = *(a2 + 40) - (*(**(a1 + 27960) + 56))(*(a1 + 27960), v68);
  *(a2 + 40) = *(a2 + 40) - BlueFin::GlSignalId::GetInterSignalBiasInMs(v68, *(a1 + 27968)) * 0.001;
  if (v70 >= 0x23Fu)
  {
    goto LABEL_58;
  }

  v16 = BlueFin::GlSvId::s_aucSvId2gnss[v68[0]];
  v17 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v69 - v69 + v16];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v69 - v69 + v16])
  {
    goto LABEL_59;
  }

  v18 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v69 + v16];
  if (!v18)
  {
    goto LABEL_60;
  }

  v19 = *(v10 + 28);
  LOWORD(v14) = *(v10 + 40);
  LODWORD(v15) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v20 = v14 / v15;
  v21 = *&v20 + (v19 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v20) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a2 + 48) = (v21 / v20 + (v19 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v17 * 0.001) / v18;
  if (*(a1 + 27256) <= 1u)
  {
    v22 = 1;
  }

  else
  {
    v22 = *(a1 + 27256);
  }

  *(a2 + 64) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v10 + 20), v68, v22) * 0.001;
  *(a2 + 64) = *(a2 + 64) - (*(**(a1 + 27960) + 56))(*(a1 + 27960), v68);
  *(a2 + 64) = *(a2 + 64) - BlueFin::GlSignalId::GetInterSignalBiasInMs(v68, *(a1 + 27968)) * 0.001;
  if (v70 >= 0x23Fu)
  {
    goto LABEL_58;
  }

  v25 = BlueFin::GlSvId::s_aucSvId2gnss[v68[0]];
  v26 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v69 - v69 + v25];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v69 - v69 + v25])
  {
    goto LABEL_59;
  }

  v27 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v69 + v25];
  if (!v27)
  {
LABEL_60:
    v66 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v67 = 785;
LABEL_61:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v67, v66);
  }

  v28 = *(v10 + 32);
  LOWORD(v23) = *(v10 + 42);
  LODWORD(v24) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v29 = v23 / v24;
  v30 = *&v29 + (v28 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v29) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a2 + 72) = (v30 / v29 + (v28 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v26 * 0.001) / v27;
  BlueFin::GlMeSrdTestMgrCwReceiver::GetSignalId(v71, a1, *(a3 + 1752));
  v34 = a1 + 60 + 88 * *(a3 + 1752);
  v35 = *(v34 + 76);
  if (v35 == -1)
  {
    EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(v71);
    if (v73 >= 0x23Fu)
    {
      goto LABEL_58;
    }

    v37 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v72 - v72 + BlueFin::GlSvId::s_aucSvId2gnss[v71[0]]];
    if (!v37)
    {
      goto LABEL_59;
    }

    if (v71[0] - 76 > 0x3E)
    {
      v51 = v37 * EpochPerSymbol;
    }

    else
    {
      if ((*(v34 + 8) & 0xF) != 0)
      {
        EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(v71);
      }

      else
      {
        EpochPerBit = BlueFin::GlSignalId::GetEpochPerSymbol(v71);
      }

      if (v73 >= 0x23Fu)
      {
        goto LABEL_58;
      }

      v52 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v72 - v72 + BlueFin::GlSvId::s_aucSvId2gnss[v71[0]]];
      if (!v52)
      {
        goto LABEL_59;
      }

      v51 = v52 * EpochPerBit;
    }

    v35 = 25 * v51;
  }

  *v32.i64 = v35;
  v53 = 0;
  v54 = 0;
  *v33.i64 = *v32.i64 - trunc(*v32.i64 * 2.32830644e-10) * 4294967300.0;
  v55.f64[0] = NAN;
  v55.f64[1] = NAN;
  v33.i64[0] = vbslq_s8(vnegq_f64(v55), v33, v32).u64[0];
  if (*v32.i64 > 4294967300.0)
  {
    v32.i64[0] = v33.i64[0];
  }

  *(a2 + 20) = *v32.i64;
  *(a2 + 24) = 0;
  v56 = v10 + 9;
  do
  {
    if (*(v56 + v53) != 255)
    {
      *(a2 + 24) = ++v54;
    }

    ++v53;
  }

  while (v53 != 5);
  v58 = *(v10 + 56);
  v57 = v10 + 56;
  *(a2 + 25) = (*(v57 - 42) & 0x10) != 0;
  v60 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(v58, v68, v31);
  if (*(v57 - 52) == 1)
  {
    v61 = 0;
    LOBYTE(v62) = 4;
    do
    {
      if (*(v56 + v61) != 0xFF)
      {
        LOBYTE(v62) = v61;
      }

      ++v61;
    }

    while (v61 != 5);
    v62 = v62;
  }

  else
  {
    v62 = 4;
  }

  v63 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v57 + 4 * v62), v68, v59);
  *(a2 + 32) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(v68, v60, v64);
  *(a2 + 56) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(v68, v63, v65);
}

void BlueFin::GlMeSrdTestMgrRpcSatEvtCW::gll_satevt_rpc_rm_event_report(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 2;
  if (a2)
  {
    v5 = a2;
    do
    {
      if (a3[5] != 253)
      {
        v8 = a3;
        v9 = *a3;
        BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(*(a1 + 8), &v7);
      }

      a3 += 10;
      --v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeCarpTestMgrRpcMiscCW::gll_misc_rpc_hrm_response(BlueFin::GlMeCarpTestMgrRpcMiscCW *this, int a2, int a3, BlueFin::GlMeSrdCtrlSm *a4)
{
  v4 = *(this + 1);
  v5 = *(v4 + 24);
  if ((v5 - 6) < 2)
  {
    return;
  }

  if (v5 == 2)
  {
    if ((a2 - 9) < 2 || a2 == 4)
    {
      if (a3 <= 26)
      {
        if (a3 > -1073692177)
        {
          if (a3 == -1073692176)
          {
            v12 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a4);
            *(this + 9) = v12;
            *(*(*(v4 + 16) + 200) + 192) = v12;
            goto LABEL_62;
          }

          if (a3 == -1073691920)
          {
            v10 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a4);
            *(this + 10) = v10;
            *(*(*(v4 + 16) + 200) + 200) = v10;
            goto LABEL_62;
          }
        }

        else
        {
          if (a3 == -1073741736)
          {
            if (*(v4 + 26936) != 5)
            {
              goto LABEL_62;
            }

            v11 = *(v4 + 27260);
            if (v11 == -1)
            {
              *(v4 + 27260) = a4;
            }

            else if (v11 + 50 <= a4)
            {
              BlueFin::GlMeSrdTestMgrCwReceiver::RequestDump(*(this + 1));
              goto LABEL_62;
            }

            BlueFin::GlMeSrdTestMgrCwReceiver::PollMsCounter(v4);
LABEL_62:
            if (*(this + 24) == 1 && *(this + 25) == 1)
            {
              v17 = *(this + 28);
              v18 = (v17 & 7) + (v17 >> 3);
              v20 = v17 < 0x2E && (v17 & 7) < 6;
              v22 = v18 < 0xB && ((*(this + 28) & 7) + (*(this + 28) >> 3) + *(this + 29)) < 0x10u;
              v23 = -(3 * (v18 + *(this + 29)));
              if (!v20 || !v22)
              {
                v23 = -255.0;
              }

              *(this + 12) = v23;
              *(*(*(*(this + 1) + 16) + 200) + 188) = v23;
              *(this + 12) = 0;
            }

            if (*(this + 26) == 1 && *(this + 27) == 1)
            {
              v24 = *(this + 30);
              v25 = (v24 & 7) + (v24 >> 3);
              v27 = v24 < 0x2E && (v24 & 7) < 6;
              v29 = v25 < 0xB && ((*(this + 30) & 7) + (*(this + 30) >> 3) + *(this + 31)) < 0x10u;
              v30 = -(3 * (v25 + *(this + 31)));
              if (!v27 || !v29)
              {
                v30 = -255.0;
              }

              *(this + 13) = v30;
              *(*(*(*(this + 1) + 16) + 200) + 196) = v30;
              *(this + 13) = 0;
            }

            return;
          }

          if (a3 == -1073692432)
          {
            v7 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a4);
            *(this + 8) = v7;
            *(*(*(v4 + 16) + 200) + 184) = v7;
            goto LABEL_62;
          }
        }
      }

      else if (a3 <= 29)
      {
        if (a3 == 27)
        {
          if (a4 >= 0x100)
          {
            v31 = "value == (value & 0x0FF)";
            DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2184, "gll_misc_rpc_hrm_response", "value == (value & 0x0FF)");
            v32 = 2184;
            goto LABEL_102;
          }

          v13 = (a4 & 7) + ((a4 & 0xF8) >> 3);
          v15 = v13 >= 0xB || (a4 & 7u) >= 6 || a4 >= 0x2E;
          v16 = -(3 * v13);
          if (v15)
          {
            v16 = -255.0;
          }

          *(this + 11) = v16;
          *(*(*(v4 + 16) + 200) + 180) = v16;
          goto LABEL_62;
        }

        if (a3 == 29)
        {
          if (a4 >= 0x100)
          {
            v31 = "value == (value & 0x0FF)";
            DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2191, "gll_misc_rpc_hrm_response", "value == (value & 0x0FF)");
            v32 = 2191;
            goto LABEL_102;
          }

          *(this + 24) = 1;
          *(this + 28) = a4;
          goto LABEL_62;
        }
      }

      else
      {
        switch(a3)
        {
          case 30:
            if (a4 >= 0x100)
            {
              v31 = "value == (value & 0x0FF)";
              DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2197, "gll_misc_rpc_hrm_response", "value == (value & 0x0FF)");
              v32 = 2197;
              goto LABEL_102;
            }

            *(this + 25) = 1;
            *(this + 29) = a4;
            goto LABEL_62;
          case 31:
            if (a4 >= 0x100)
            {
              v31 = "value == (value & 0x0FF)";
              DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2203, "gll_misc_rpc_hrm_response", "value == (value & 0x0FF)");
              v32 = 2203;
              goto LABEL_102;
            }

            *(this + 26) = 1;
            *(this + 30) = a4;
            goto LABEL_62;
          case 32:
            if (a4 >= 0x100)
            {
              v31 = "value == (value & 0x0FF)";
              DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2209, "gll_misc_rpc_hrm_response", "value == (value & 0x0FF)");
              v32 = 2209;
              goto LABEL_102;
            }

            *(this + 27) = 1;
            *(this + 31) = a4;
            goto LABEL_62;
        }
      }

      v31 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2257, "gll_misc_rpc_hrm_response", "0");
      v32 = 2257;
    }

    else
    {
      v31 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2284, "gll_misc_rpc_hrm_response", "0");
      v32 = 2284;
    }

LABEL_102:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", v32, v31);
  }

  if (v5 != 1)
  {
    v31 = "0";
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2293, "gll_misc_rpc_hrm_response", "0");
    v32 = 2293;
    goto LABEL_102;
  }

  if (a2 != 4)
  {
    v31 = "0";
    DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2174, "gll_misc_rpc_hrm_response", "0");
    v32 = 2174;
    goto LABEL_102;
  }

  if (a3 != 22)
  {
    if (a3 == 12319)
    {
      *(this + 5) = a4;
    }

    else if (a3 == 12318)
    {
      *(this + 4) = a4;
    }

    return;
  }

  if (*(v4 + 26936) != 5)
  {
    return;
  }

  v8 = *(v4 + 27260);
  if (v8 == -1)
  {
    *(v4 + 27260) = a4;
  }

  else if (v8 + 50 <= a4)
  {
    v9 = *(this + 1);

    BlueFin::GlMeSrdTestMgrCwReceiver::RequestDump(v9);
    return;
  }

  BlueFin::GlMeSrdTestMgrCwReceiver::PollMsCounter(v4);
}

uint64_t BlueFin::GlMeMinnowTestMgrRpcMiscCW::gll_misc_rpc_adc_capture_response(BlueFin::GlMeMinnowTestMgrRpcMiscCW *this, __int16 a2, __int16 a3, unsigned __int8 *a4)
{
  v11 = &unk_2A1F0B470;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(this + 1);
  v8 = *(v7 + 27256);
  result = (*(**(*(v7 + 16) + 136) + 1192))(*(*(v7 + 16) + 136));
  v10 = *(result + 1);
  v12 = a4;
  v13 = v8;
  v14 = v10;
  LOWORD(v15) = a2;
  HIWORD(v15) = a3;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return (*(v11 + 3))(&v11, 0, 0);
    }
  }

  return result;
}

void BlueFin::GlMeSrdTestMgrRpcSatReportCW::gll_satrpt_rpc_acquisition_window(uint64_t a1, char a2, __int128 *a3, uint64_t *a4, __int128 *a5, _OWORD *a6, uint64_t *a7)
{
  v18 = *MEMORY[0x29EDCA608];
  v8 = 3;
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = *a4;
  v12 = *a5;
  v13 = *(a5 + 4);
  *v14 = *a6;
  *&v14[12] = *(a6 + 12);
  v17 = a2;
  if (a7)
  {
    v15 = *a7;
    v16 = *(a7 + 2);
  }

  BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(*(a1 + 8), &v8);
  v7 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrRpcSatReportCW::gll_satrpt_rpc_trk_msmt(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t *a7, int *a8, __int128 *a9, __int128 *a10, int *a11, uint64_t a12, __int128 *a13, uint64_t a14, __int128 *a15, __int128 *a16)
{
  v67 = *MEMORY[0x29EDCA608];
  v16 = a5[11];
  v42 = a5[10];
  v43 = v16;
  *v44 = a5[12];
  *&v44[3] = *(a5 + 204);
  v17 = a5[7];
  v38 = a5[6];
  v39 = v17;
  v18 = a5[9];
  v40 = a5[8];
  v41 = v18;
  v19 = a5[3];
  v34 = a5[2];
  v35 = v19;
  v20 = a5[5];
  v36 = a5[4];
  v37 = v20;
  v21 = a5[1];
  v32 = *a5;
  v31[0] = 4;
  v33 = v21;
  *&v44[7] = *a6;
  v45 = *a7;
  v46 = *(a7 + 2);
  if (a8)
  {
    v47 = *a8;
  }

  v22 = a9[1];
  v48 = *a9;
  v49 = v22;
  v23 = a10[1];
  v50 = *a10;
  v51 = v23;
  v52 = *a11;
  v66 = a2;
  if (a13)
  {
    v24 = a13[5];
    v57 = a13[4];
    v58 = v24;
    v59 = *(a13 + 12);
    v25 = a13[1];
    v53 = *a13;
    v54 = v25;
    v26 = a13[2];
    v56 = a13[3];
    v55 = v26;
  }

  if (a15)
  {
    v27 = a15[1];
    v60 = *a15;
    v61 = v27;
    v28 = a15[3];
    v62 = a15[2];
    v63 = v28;
  }

  if (a16)
  {
    v29 = a16[1];
    v64 = *a16;
    v65 = v29;
  }

  BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(*(a1 + 8), v31);
  v30 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrRpcSatReportCW::gll_satrpt_rpc_sub_trk_msmt(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, _OWORD *a7, uint64_t *a8, __int128 *a9, uint64_t *a10, __int128 *a11, _OWORD *a12, int *a13)
{
  v55 = *MEMORY[0x29EDCA608];
  v16 = a6[11];
  v46 = a6[10];
  v47 = v16;
  *v48 = a6[12];
  *&v48[3] = *(a6 + 204);
  v17 = a6[7];
  v42 = a6[6];
  v43 = v17;
  v18 = a6[9];
  v44 = a6[8];
  v45 = v18;
  v19 = a6[3];
  v38 = a6[2];
  v39 = v19;
  v20 = a6[5];
  v40 = a6[4];
  v41 = v20;
  v21 = a6[1];
  v36 = *a6;
  v35[0] = 4;
  v37 = v21;
  *&v48[7] = *a7;
  v49 = *a8;
  v50 = *(a8 + 2);
  v51 = *a13;
  v54 = a2;
  if (a9)
  {
    v22 = a9[1];
    v52 = *a9;
    v53 = v22;
  }

  BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(*(a1 + 8), v35);
  v25 = 3;
  v26 = *a5;
  v27 = *(a5 + 4);
  v28 = *a10;
  v29 = *a11;
  v30 = *(a11 + 4);
  *v31 = *a12;
  *&v31[12] = *(a12 + 12);
  v34 = a2;
  v23 = *a13;
  v33 = a13[2];
  v32 = v23;
  BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(*(a1 + 8), &v25);
  v24 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrRpcSatReportCW::gll_satrpt_rpc_noise(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 5;
  if (~a3 & 6) == 0 && (a3)
  {
    if (a6)
    {
      v6 = *(a1 + 8);
      if (*(v6 + 26976) == 1 && (*(v6 + 26977) & 1) == 0 && (*(v6 + 26978) & 1) == 0 && (*(v6 + 26979) & 1) == 0 && !(*(v6 + 26980) | a2))
      {
        v9 = *a6;
        v10 = a2;
        BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(v6, &v8);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrRpcSatReportCW::gll_satrpt_rpc_search(uint64_t a1, char a2, unsigned __int8 *a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v13 = 6;
  v23 = a2;
  if (a3)
  {
    if (*a3 <= 2u)
    {
      v15 = *a3;
      v16 = *(a3 + 4);
      v4 = a3[3] + a3[4] - 1;
      if (v4 >= 0x11)
      {
        v11 = "uiNsearchReportCnt <= _DIM(stEvent.uData.stSearchReport.satrpt_search)";
        DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2476, "gll_satrpt_rpc_search", "uiNsearchReportCnt <= _DIM(stEvent.uData.stSearchReport.satrpt_search)");
        v12 = 2476;
        goto LABEL_21;
      }

      if (a3[3] + a3[4] == 1)
      {
        goto LABEL_18;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = -v4;
      while (1)
      {
        v9 = (a4 + 4 + 108 * v5++);
        while (1)
        {
          if (a4)
          {
            v20 = *(v9 + 44);
            v21 = *(v9 + 60);
            v22[0] = *(v9 + 76);
            *(v22 + 12) = *(v9 + 88);
            v17 = *(v9 - 4);
            v18 = *(v9 + 12);
            v19 = *(v9 + 28);
            if (*v9 == a3[5] && v9[1] == a3[6])
            {
              break;
            }
          }

          ++v5;
          v9 += 108;
          if (v8 + v5 == 1)
          {
            v14 = v7;
            if (v6)
            {
              goto LABEL_16;
            }

LABEL_18:
            v11 = "bMaxFound";
            DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2496, "gll_satrpt_rpc_search", "bMaxFound");
            v12 = 2496;
LABEL_21:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_cw_receiver.cpp", v12, v11);
          }
        }

        if (v6)
        {
          break;
        }

        v7 = v5 - 1;
        v6 = 1;
        if (!(v8 + v5))
        {
          v14 = v5 - 1;
          goto LABEL_16;
        }
      }

      v11 = "!bMaxFound";
      DeviceFaultNotify("glmesrd_test_mgr_cw_receiver.cpp", 2491, "gll_satrpt_rpc_search", "!bMaxFound");
      v12 = 2491;
      goto LABEL_21;
    }
  }

  else
  {
LABEL_16:
    BlueFin::GlMeSrdTestMgrCwReceiver::ProcessEvent(*(a1 + 8), &v13);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdTestMgrRpcMiscSPA::misc_hrm_response(BlueFin::GlMeSrdTestMgrRpcMiscSPA *this, int a2, int a3, BlueFin::GlMeSrdCtrlSm *a4)
{
  v5 = *(this + 1);
  if ((*(v5 + 73) & 0x180) != 0 && ((*(v5 + 73) >> 9) & 3u) - 1 < 3)
  {
    return;
  }

  v7 = *(v5 + 6);
  if (v7 != 1)
  {
    if ((v7 & 0xFFFFFFFE) != 2)
    {
      v32 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 457, "misc_hrm_response", "0");
      v33 = 457;
      goto LABEL_114;
    }

    if ((a2 - 9) >= 2 && a2 != 4)
    {
      v32 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 452, "misc_hrm_response", "0");
      v33 = 452;
      goto LABEL_114;
    }

    if (a3 <= -1073684357)
    {
      if (a3 > -1073691921)
      {
        if (a3 <= -1073684365)
        {
          if (a3 == -1073691920)
          {
            v16 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a4);
            *(this + 10) = v16;
            goto LABEL_74;
          }

          if (a3 != -1073684372)
          {
            goto LABEL_118;
          }

          goto LABEL_39;
        }

        if (a3 != -1073684364)
        {
          if (a3 == -1073684360)
          {
LABEL_52:
            if (a4 >= 0x100)
            {
              v32 = "value == (value & 0x0FF)";
              DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 368, "misc_hrm_response", "value == (value & 0x0FF)");
              v33 = 368;
              goto LABEL_114;
            }

            *(this + 25) = 1;
            *(this + 29) = a4;
            goto LABEL_74;
          }

LABEL_118:
          v32 = "0";
          DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 427, "misc_hrm_response", "0");
          v33 = 427;
LABEL_114:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", v33, v32);
        }

LABEL_60:
        if (a4 >= 0x100)
        {
          v32 = "value == (value & 0x0FF)";
          DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 361, "misc_hrm_response", "value == (value & 0x0FF)");
          v33 = 361;
          goto LABEL_114;
        }

        *(this + 24) = 1;
        *(this + 28) = a4;
        goto LABEL_74;
      }

      if (a3 != -1073741736)
      {
        if (a3 == -1073692432)
        {
          v17 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a4);
          *(this + 8) = v17;
          goto LABEL_74;
        }

        if (a3 == -1073692176)
        {
          v9 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a4);
          *(this + 9) = v9;
          goto LABEL_74;
        }

        goto LABEL_118;
      }

      if (*(v5 + 7) != 1)
      {
        goto LABEL_74;
      }

      v15 = *(v5 + 163);
      if (v15 == -1)
      {
        *(v5 + 163) = a4;
      }

      else if (v15 + 50 <= a4)
      {
        BlueFin::GlMeSrdTestMgrSPA::RequestDump(v5);
        goto LABEL_74;
      }

      BlueFin::GlMeSrdTestMgrSPA::PollMsCounter(v5, 0);
LABEL_74:
      if (*(this + 24) == 1 && *(this + 25) == 1)
      {
        v18 = *(this + 28);
        v19 = (v18 & 7) + (v18 >> 3);
        v21 = v18 < 0x2E && (v18 & 7) < 6;
        v23 = v19 < 0xB && ((*(this + 28) & 7) + (*(this + 28) >> 3) + *(this + 29)) < 0x10u;
        v24 = -(3 * (v19 + *(this + 29)));
        if (!v21 || !v23)
        {
          v24 = -255.0;
        }

        *(this + 12) = v24;
        *(this + 12) = 0;
      }

      if (*(this + 26) == 1 && *(this + 27) == 1)
      {
        v25 = *(this + 30);
        v26 = (v25 & 7) + (v25 >> 3);
        v28 = v25 < 0x2E && (v25 & 7) < 6;
        v30 = v26 < 0xB && ((*(this + 30) & 7) + (*(this + 30) >> 3) + *(this + 31)) < 0x10u;
        v31 = -(3 * (v26 + *(this + 31)));
        if (!v28 || !v30)
        {
          v31 = -255.0;
        }

        *(this + 13) = v31;
        *(this + 13) = 0;
      }

      return;
    }

    if (a3 <= 28)
    {
      if (a3 != -1073684356)
      {
        if (a3 != -1073684352)
        {
          if (a3 == 27)
          {
LABEL_39:
            if (a4 >= 0x100)
            {
              v32 = "value == (value & 0x0FF)";
              DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 354, "misc_hrm_response", "value == (value & 0x0FF)");
              v33 = 354;
              goto LABEL_114;
            }

            v10 = (a4 & 7) + ((a4 & 0xF8) >> 3);
            v11 = v10 >= 0xB || (a4 & 7u) >= 6;
            v12 = 3 * v10;
            v13 = v11 || a4 >= 0x2E;
            v14 = -v12;
            if (v13)
            {
              v14 = -255.0;
            }

            *(this + 11) = v14;
            goto LABEL_74;
          }

          goto LABEL_118;
        }

        goto LABEL_56;
      }
    }

    else
    {
      if (a3 <= 30)
      {
        if (a3 != 29)
        {
          goto LABEL_52;
        }

        goto LABEL_60;
      }

      if (a3 != 31)
      {
        if (a3 != 32)
        {
          goto LABEL_118;
        }

LABEL_56:
        if (a4 >= 0x100)
        {
          v32 = "value == (value & 0x0FF)";
          DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 382, "misc_hrm_response", "value == (value & 0x0FF)");
          v33 = 382;
          goto LABEL_114;
        }

        *(this + 27) = 1;
        *(this + 31) = a4;
        goto LABEL_74;
      }
    }

    if (a4 >= 0x100)
    {
      v32 = "value == (value & 0x0FF)";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 375, "misc_hrm_response", "value == (value & 0x0FF)");
      v33 = 375;
      goto LABEL_114;
    }

    *(this + 26) = 1;
    *(this + 30) = a4;
    goto LABEL_74;
  }

  if (a2 != 4)
  {
    v32 = "0";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 343, "misc_hrm_response", "0");
    v33 = 343;
    goto LABEL_114;
  }

  if (a3 != 22)
  {
    if (a3 == 12319)
    {
      *(this + 5) = a4;
    }

    else if (a3 == 12318)
    {
      *(this + 4) = a4;
    }

    return;
  }

  if (*(v5 + 7) != 1)
  {
    return;
  }

  v8 = *(v5 + 163);
  if (v8 == -1)
  {
    *(v5 + 163) = a4;
  }

  else if (v8 + 50 <= a4)
  {

    BlueFin::GlMeSrdTestMgrSPA::RequestDump(v5);
    return;
  }

  BlueFin::GlMeSrdTestMgrSPA::PollMsCounter(v5, 0);
}

void BlueFin::GlMeSrdTestMgrSPA::PollMsCounter(BlueFin::GlMeSrdTestMgrSPA *this, int a2)
{
  if (a2)
  {
    *(this + 163) = -1;
  }

  v3 = (*(**(this + 1) + 80))(*(this + 1));
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v13 = 1;
  v14 = v3;
  v15 = 0;
  v16 = 0;
  (*(*v3 + 16))(v3, 1);
  v4 = *(this + 6);
  if (v4 == 1)
  {
    v5 = (*(**(this + 1) + 208))(*(this + 1));
    v6 = (*(*v5 + 32))(v5);
    v7 = 22;
    v8 = 4;
  }

  else
  {
    if ((v4 & 0xFFFFFFFE) != 2 || (v9 = *(this + 73), (v9 & 0x180) != 0) && ((v9 >> 9) & 3) - 1 < 3)
    {
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1679, "PollMsCounter", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", 1679, "0");
    }

    v10 = (*(**(this + 1) + 208))(*(this + 1));
    v6 = (*(*v10 + 32))(v10);
    v7 = 3221225560;
    v8 = 9;
  }

  (*(*v6 + 16))(v6, v11, v8, v7);
  BlueFin::GlMeSrdTransaction::Complete(v11);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v11);
}

void sub_29899109C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrSPA::RequestDump(BlueFin::GlMeSrdTestMgrSPA *this)
{
  *(this + 7) = 2;
  v2 = (*(**(this + 1) + 80))(*(this + 1));
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = 1;
  v23 = v2;
  v24 = 0;
  v25 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = *(this + 6);
  v4 = v3 & 0xFFFFFFFE;
  if ((v3 & 0xFFFFFFFE) != 6)
  {
    if (v3 == 1)
    {
      v8 = (*(**(this + 1) + 208))(*(this + 1));
      v9 = (*(*v8 + 32))(v8);
      v10 = 256;
      v11 = 70;
      v12 = 4;
    }

    else
    {
      if (v4 != 2)
      {
        if (v4 != 4)
        {
          goto LABEL_18;
        }

        v5 = *(this + 73);
        goto LABEL_12;
      }

      v5 = *(this + 73);
      if ((v5 & 0x180) != 0 && ((v5 >> 9) & 3) - 1 < 3)
      {
        goto LABEL_12;
      }

      v19 = (*(**(this + 1) + 208))(*(this + 1));
      v9 = (*(*v19 + 32))(v19);
      v10 = 0;
      v11 = 3221226032;
      v12 = 9;
    }

    (*(*v9 + 24))(v9, v20, v12, v11, v10);
    v13 = (*(**(this + 1) + 208))(*(this + 1));
    v14 = (*(*v13 + 16))(v13);
    v15 = 1024;
LABEL_17:
    (*(*v14 + 160))(v14, v20, v15);
    goto LABEL_18;
  }

  v5 = *(this + 73);
  if ((v5 & 0x400000) != 0)
  {
    v6 = (*(**(this + 1) + 208))(*(this + 1));
    v7 = (*(*v6 + 16))(v6);
    (*(*v7 + 160))(v7, v20, 256);
    (*(**(this + 1) + 56))(*(this + 1));
    goto LABEL_18;
  }

LABEL_12:
  if ((v5 & 0x180) != 0 && ((v5 >> 9) & 3) - 1 <= 2)
  {
    v16 = *(**(this + 1) + 208);
    if ((v5 & 0x80000) != 0)
    {
      v18 = v16();
      v14 = (*(*v18 + 16))(v18);
      v15 = 8704;
    }

    else
    {
      v17 = v16();
      v14 = (*(*v17 + 16))(v17);
      v15 = 512;
    }

    goto LABEL_17;
  }

LABEL_18:
  BlueFin::GlMeSrdTransaction::Complete(v20);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v20);
}

void sub_298991454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrRpcMiscSPA::gll_misc_rpc_hrm_read_response(BlueFin::GlMeSrdTestMgrRpcMiscSPA *this, int a2, int a3, unsigned int a4, unsigned int *a5)
{
  if (a4)
  {
    for (i = 0; i < a4; ++i)
    {
      v11 = *a5++;
      BlueFin::GlMeSrdTestMgrRpcMiscSPA::misc_hrm_response(this, a2, a3, v11);
      a3 += 4;
    }
  }
}

void BlueFin::GlMeSrdTestMgrRpcMiscSPA::gll_misc_rpc_iq_dump_captured(BlueFin::GlMeSrdTestMgrRpcMiscSPA *this, char a2, char a3, int a4, int a5, unsigned int a6, unsigned __int8 *a7, unsigned __int16 *a8, unsigned int a9)
{
  v13 = *(this + 1);
  if ((*(v13 + 24) & 0xFFFFFFFE) == 6)
  {
    v14 = *(v13 + 292);
    *(this + 56) = a2;
    *(this + 57) = a3;
    *(this + 15) = a4;
    *(this + 16) = a5;
    if ((v14 & 0x400000) != 0)
    {
      *(this + 17) = 0;
      *(this + 18) = 0;
      *(v13 + 568) = 0;
      goto LABEL_31;
    }

    *(this + 17) = a9;
    *(this + 18) = 0;
  }

  else
  {
    *(this + 56) = a2;
    *(this + 57) = a3;
    *(this + 15) = a4;
    *(this + 16) = a5;
  }

  *(v13 + 568) = a6;
  GlCustomLog(14, "<SPA> AGC gain (AAGC,DAGC):");
  if (a6)
  {
    v16 = 0;
    v17 = &a8[a6 - 1];
    v18 = &a7[a6 - 1];
    v19 = 0.0;
    v20 = 0.0;
    while (1)
    {
      v21 = *(this + 1);
      v22 = *(v21 + 24);
      if ((v22 & 0xFFFFFFFE) == 6)
      {
        break;
      }

      if ((v22 & 0xFFFFFFFE) == 2)
      {
        v23 = v18[v16];
        if (((v18[v16] & 7) + (v18[v16] >> 3)) >= 0xBu || (v23 & 7) >= 6 || v23 >= 0x2E)
        {
          v20 = -255.0;
        }

        else
        {
          v20 = -(3 * ((v18[v16] & 7) + (v18[v16] >> 3)));
        }

        v26 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(v17[v16]);
LABEL_23:
        v19 = v26;
      }

LABEL_24:
      v27 = *(this + 1) + 4 * a6 + 4 * v16;
      *(v27 + 484) = v20;
      *(v27 + 404) = v19;
      GlCustomLog(14, "%.1f,%.1f; ", v20, v19);
      if (-a6 == --v16)
      {
        goto LABEL_29;
      }
    }

    if (v22 != 6 && (v22 != 7 || !(*(**(*(v21 + 16) + 136) + 40))(*(*(v21 + 16) + 136))))
    {
      v20 = 0.0;
      if (v17[v16])
      {
        v28 = v17[v16];
        v19 = ((log10f(v17[v16]) + ((v28 << 19 >> 27) / 3.3219)) + -1.8062) * 20.0;
      }

      else
      {
        v19 = 0.0;
      }

      goto LABEL_24;
    }

    LOBYTE(v15) = v18[v16];
    v20 = v15;
    v26 = BlueFin::GlMeSrdCtrlSm::DagcDecode4777(HIBYTE(v17[v16]), v17[v16]);
    goto LABEL_23;
  }

LABEL_29:
  GlCustomLog(14, "\n");
  v13 = *(this + 1);
LABEL_31:

  BlueFin::GlMeSrdTestMgrSPA::RequestDump(v13);
}

unint64_t BlueFin::GlMeSrdTestMgrRpcMiscSPA::gll_misc_rpc_mem_dump_response(BlueFin::GlMeSrdTestMgrRpcMiscSPA *this, int a2, unsigned int a3, int a4, unsigned __int8 *a5)
{
  result = *(this + 1);
  v10 = *(result + 24);
  v11 = v10 & 0xFFFFFFFE;
  v12 = *(result + 292);
  if ((v10 & 0xFFFFFFFE) == 6 && (v12 & 0x400000) != 0)
  {
    v29 = *(this + 16) >> 7;
    if (a2 == 1)
    {
      result = BlueFin::GlMeSrdTestMgrSPA::DumpFinished(result, dword_2A18BB1F0 == v29);
      v33 = 0;
      goto LABEL_73;
    }

    if (a2 != 256)
    {
      return result;
    }

    if (*(result + 28) == 2)
    {
      v30 = *(result + 684) << 10;
      v31 = v29 + v30 + 1;
      if (v30 >= a3 || v31 < a3)
      {
        return result;
      }

      *(result + 569) = 0;
      *(result + 400) = a5;
      *(result + 392) = a4;
      *(result + 388) = dword_2A18BB1F0;
      *(result + 384) = v31;
      *(result + 576) = 0;
      *(result + 584) = vrev64q_s32(*(result + 624));
      *(result + 600) = 0;
      *(result + 616) = *(result + 680);
      if (*(result + 648) != 1)
      {
        *(result + 648) = 1;
        result = BlueFin::GlMeSrdCtrlSm::PostCwResults(*(result + 16));
        v33 = dword_2A18BB1F0 + 1;
LABEL_73:
        dword_2A18BB1F0 = v33;
        return result;
      }

      v51 = "!m_pTestMgr->m_bDoubleBufferResultsReady";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 827, "HandleMemoryDumpAdcCapture", "!m_pTestMgr->m_bDoubleBufferResultsReady");
      v52 = 827;
    }

    else
    {
      v51 = "m_pTestMgr->m_etState == GlMeSrdTestMgrSPA::WaitingDump";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 802, "HandleMemoryDumpAdcCapture", "m_pTestMgr->m_etState == GlMeSrdTestMgrSPA::WaitingDump");
      v52 = 802;
    }

LABEL_131:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", v52, v51);
  }

  v14 = *(result + 292) & 0x180;
  v15 = v14 != 0;
  if (((v12 >> 9) & 3) - 1 >= 3)
  {
    v15 = 0;
  }

  v16 = v11 == 6;
  v17 = v11 == 2 || v11 == 4;
  if (v17)
  {
    v18 = 2048;
  }

  else
  {
    v18 = v16 << 11;
  }

  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = v16;
  }

  v20 = ((v12 << 25) >> 31) & 0x301;
  if ((v12 & 0x20) != 0)
  {
    v20 = 1;
  }

  v21 = ((v12 << 25) >> 31) & 0x3AB;
  if ((v12 & 0x20) != 0)
  {
    v21 = 128;
  }

  if (v10 == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 257;
  }

  if (v10 == 1)
  {
    v23 = 512;
  }

  else
  {
    v23 = 768;
  }

  v24 = v10 != 1 && (*(result + 292) & 2) == 0;
  if (v24)
  {
    v25 = v21;
  }

  else
  {
    v25 = v23;
  }

  if (v24)
  {
    v26 = v20;
  }

  else
  {
    v26 = v22;
  }

  if (v15)
  {
    v27 = v18;
  }

  else
  {
    v27 = v25;
  }

  if (v15)
  {
    v28 = v19;
  }

  else
  {
    v28 = v26;
  }

  if (HIDWORD(_MergedGlobals_2) <= a3)
  {
    HIDWORD(_MergedGlobals_2) = a3;
  }

  else
  {
    dword_2A18BB1E8 = HIDWORD(_MergedGlobals_2);
  }

  if (a2 > 511)
  {
    if (a2 != 1024 && a2 != 512)
    {
      return result;
    }
  }

  else
  {
    if (a2 == 1)
    {
      result = BlueFin::GlMeSrdTestMgrSPA::DumpFinished(result, _MergedGlobals_2 == v27 - v28 + 1);
      _MergedGlobals_2 = 0;
      dword_2A18BB1E8 = 0;
      return result;
    }

    if (a2 != 256)
    {
      return result;
    }
  }

  v34 = (dword_2A18BB1E8 + a3);
  if (v28 <= v34 && v27 >= v34)
  {
    if (*(result + 28) != 2)
    {
      v51 = "m_pTestMgr->m_etState == GlMeSrdTestMgrSPA::WaitingDump";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 654, "HandleMemoryDumpSpa", "m_pTestMgr->m_etState == GlMeSrdTestMgrSPA::WaitingDump");
      v52 = 654;
      goto LABEL_131;
    }

    *(result + 569) = 0;
    *(result + 400) = a5;
    *(result + 392) = a4;
    if (v15 && v34 <= *(this + 15) >> 7)
    {
      *(result + 388) = 0;
      dword_2A18BB1EC = v34;
      if (v10 == 1)
      {
        *(result + 488) = *(this + 5);
        *(result + 408) = *(this + 4);
        *(result + 568) = 1;
      }
    }

    else
    {
      v36 = dword_2A18BB1EC + v28;
      *(result + 388) = v34 - (dword_2A18BB1EC + v28) + 1;
      *(result + 384) = v27 - v36 + 1;
      if (v10 == 1)
      {
        *(result + 488) = *(this + 5);
        *(result + 408) = *(this + 4);
        *(result + 568) = 1;
        if (!v15)
        {
LABEL_84:
          v38 = *(result + 640);
          goto LABEL_85;
        }
      }

      else if (!v15)
      {
        if ((v12 & 2) != 0)
        {
          *(result + 488) = *(this + 11);
          v37 = 32;
        }

        else if ((v12 & 0x20) != 0)
        {
          *(result + 488) = *(this + 12);
          v37 = 36;
        }

        else
        {
          *(result + 488) = *(this + 13);
          v37 = 40;
        }

        *(result + 408) = *(this + v37);
        *(result + 568) = 1;
        goto LABEL_84;
      }
    }

    v38 = *(result + 656) * 1000000.0;
LABEL_85:
    *(result + 576) = v38;
    *(result + 584) = vrev64q_s32(*(result + 624));
    *(result + 619) = *(result + 683);
    switch(v14)
    {
      case 128:
        v39 = 1;
        break;
      case 256:
        v39 = 2;
        break;
      case 384:
        v39 = 4;
        break;
      default:
        v39 = 5;
        break;
    }

    *(result + 600) = v39;
    v40 = v12 & 0x600;
    if (v40 == 512)
    {
      v41 = 1;
    }

    else if (v40 == 1024)
    {
      v41 = 2;
    }

    else
    {
      v41 = 4 * (v40 == 1536);
    }

    *(result + 601) = v41;
    if (*(result + 648) == 1)
    {
      v51 = "!m_pTestMgr->m_bDoubleBufferResultsReady";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 705, "HandleMemoryDumpSpa", "!m_pTestMgr->m_bDoubleBufferResultsReady");
      v52 = 705;
      goto LABEL_131;
    }

    *(result + 648) = 1;
    result = BlueFin::GlMeSrdCtrlSm::PostCwResults(*(result + 16));
    LODWORD(_MergedGlobals_2) = _MergedGlobals_2 + 1;
  }

  if (a2 == 512 || a2 == 256)
  {
    v42 = (v34 << 7) - 128;
    v43 = *(this + 15);
    v44 = *(this + 16) + v43;
    if (v44 >= v42 && a4 && v43 <= v42 + a4)
    {
      v45 = 0;
      result = *(this + 1);
      v46 = *(result + 292) & 0x180;
      if (v46 == 384)
      {
        v47 = 4;
      }

      else
      {
        v47 = 5;
      }

      v48 = ((*(result + 292) >> 7) & 3) - 1;
      do
      {
        if (v46 == 256)
        {
          v49 = 2;
        }

        else
        {
          v49 = v47;
        }

        if (v46 == 128)
        {
          v49 = 1;
        }

        if (v44 >= v42 + v45 && v43 <= v42 + v45)
        {
          v50 = 4u / v49;
          while (v50 > 0)
          {
            --v50;
            if (v48 >= 3)
            {
              v51 = "0";
              DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 753, "HandleMemoryDumpSpa", "0");
              v52 = 753;
              goto LABEL_131;
            }
          }

          if (v27 >= v34 && v28 <= v34 && (*(result + 24) & 0xFFFFFFFE) == 6)
          {
            *(this + 18) += a5[v45];
          }
        }

        ++v45;
      }

      while (v45 != a4);
    }
  }

  return result;
}

unint64_t BlueFin::GlMeSrdTestMgrSPA::DumpFinished(BlueFin::GlMeSrdTestMgrSPA *this, int a2)
{
  v3 = *(this + 159);
  v4 = *(this + 158);
  if (v3 != v4 - 1 || (*(this + 157) == *(this + 156) - 1 ? (v5 = a2 == 0) : (v5 = 1), v5))
  {
    if (a2)
    {
      v6 = v3 + 1;
      *(this + 159) = v6;
      if (v6 == v4)
      {
        *(this + 159) = 0;
        ++*(this + 157);
        if ((*(this + 73) & 0x180) == 0 || ((*(this + 73) >> 9) & 3u) - 1 >= 3)
        {
          *(this + 80) = *(this + 80) + 500000.0;
        }

        else
        {
          *&v11 = BlueFin::GlMeSrdTestMgrSPA::GetSampleRate(this);
          *(this + 41) = vaddq_f64(vdupq_lane_s64(v11, 0), *(this + 41));
          *(this + 84) = *&v11 + *(this + 84);
        }
      }
    }

    else
    {
      v8 = *(this + 686) + 1;
      *(this + 686) = v8;
      if (*(this + 687) <= v8)
      {
        BlueFin::GlQueue::putFIFO((*(this + 2) + 40), 38, 0);
      }
    }

    v12 = *(*this + 24);

    return v12(this);
  }

  else
  {
    *(this + 569) = 1;
    *(this + 648) = 1;
    *(this + 7) = 0;
    v9 = *(this + 2);

    return BlueFin::GlMeSrdCtrlSm::PostCwResults(v9);
  }
}

double BlueFin::GlMeSrdTestMgrSPA::GlMeSrdTestMgrSPA(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 0;
  *a1 = &unk_2A1F0CD50;
  *(a1 + 32) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 275) = 0u;
  *(a1 + 304) = &unk_2A1F0CCD0;
  *(a1 + 312) = a1;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 361) = 6;
  *(a1 + 364) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 568) = 0;
  *(a1 + 604) = 0;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 612) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 652) = 0u;
  *(a1 + 668) = 0u;
  *(a1 + 683) = 0;
  *(a1 + 687) = 5;
  *(a1 + 696) = 0xC01E51EB851EB852;
  result = -8.0;
  *(a1 + 704) = xmmword_298A396A0;
  *(a1 + 720) = xmmword_298A396B0;
  return result;
}

void BlueFin::GlMeSrdTestMgrSPA::~GlMeSrdTestMgrSPA(BlueFin::GlMeSrdTestMgrSPA *this)
{
  *this = &unk_2A1F0CD50;
  if (*(this + 32) == 1)
  {
    v2 = "!m_bCwResources";
    v3 = 919;
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 919, "~GlMeSrdTestMgrSPA", "!m_bCwResources");
    goto LABEL_11;
  }

  v1 = (*(this + 73) & 0x180) == 0 || ((*(this + 73) >> 9) & 3u) - 1 >= 3;
  if (v1 && *(this + 7))
  {
    v2 = "m_etState == GlMeSrdTestMgrSPA::Idle";
    v3 = 922;
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 922, "~GlMeSrdTestMgrSPA", "m_etState == GlMeSrdTestMgrSPA::Idle");
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", v3, v2);
  }
}

{
  BlueFin::GlMeSrdTestMgrSPA::~GlMeSrdTestMgrSPA(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeSrdTestMgrSPA::AllocateCwResources(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    v6 = "!m_bCwResources";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 931, "AllocateCwResources", "!m_bCwResources");
    v7 = 931;
    goto LABEL_237;
  }

  v3 = a1;
  v4 = *(a2 + 252);
  if ((v4 & 0x20000) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 >> 17) & 2;
  }

  *(a1 + 604) = v5;
  if ((*(a1 + 24) & 0xFFFFFFFE) == 2)
  {
    if (v5)
    {
      v6 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 939, "AllocateCwResources", "0");
      v7 = 939;
      goto LABEL_237;
    }
  }

  else
  {
    if ((v5 - 1) <= 1 && (*(**(*(a1 + 16) + 136) + 152))(*(*(a1 + 16) + 136)) != 5 && (*(**(*(v3 + 16) + 136) + 152))(*(*(v3 + 16) + 136)) != 2)
    {
      v6 = "m_pSrdCtrlSm->GetAsicConfigIfc().GetRfMode() == GL_MULTI_CARR_RF_MODE_L1_L2_L5 || m_pSrdCtrlSm->GetAsicConfigIfc().GetRfMode() == GL_MULTI_CARR_RF_MODE_L1_L5";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 947, "AllocateCwResources", "m_pSrdCtrlSm->GetAsicConfigIfc().GetRfMode() == GL_MULTI_CARR_RF_MODE_L1_L2_L5 || m_pSrdCtrlSm->GetAsicConfigIfc().GetRfMode() == GL_MULTI_CARR_RF_MODE_L1_L5");
      v7 = 947;
      goto LABEL_237;
    }

    v8 = *(a2 + 252);
    v10 = (v8 & 0x180) != 0 && ((v8 >> 9) & 3) - 1 < 3;
    if ((v8 & 0x400000) == 0 && !v10)
    {
      v6 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 952, "AllocateCwResources", "0");
      v7 = 952;
      goto LABEL_237;
    }
  }

  BlueFin::GlMeSrdTestMgrCwParams::operator=(v3 + 40, a2);
  *(v3 + 628) = 0;
  *(v3 + 636) = 0;
  v11 = *(v3 + 292);
  if ((v11 & 0x180) == 0 || ((v11 >> 9) & 3) - 1 >= 3)
  {
    v24 = *a2;
    v25 = (*(a2 + 80) - *a2) / 500000.0;
    v26 = (v25 + 1.0);
    if (v25 + 1.0 == v26)
    {
      v26 = v25;
    }

    *(v3 + 624) = v26;
    v27 = *(a2 + 240);
    if (v27)
    {
      if (v27 >= 0x1A)
      {
        GlCustomLog(15, "<SPA> ERROR: Legacy SPA does not support more than 25ms coh\n");
        v6 = "0";
        DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 976, "AllocateCwResources", "0");
        v7 = 976;
        goto LABEL_237;
      }

      v28 = *(a2 + 252);
      v29 = 25.0;
      v30 = v28 & 0x180;
      if ((v28 & 0x180) != 0 && ((v28 >> 9) & 3) - 1 <= 2)
      {
        v31 = 2.0;
        v32 = 4.0;
        v33 = 10.0;
        if (v30 == 384)
        {
          v33 = 8.0;
        }

        if (v30 != 256)
        {
          v32 = v33;
        }

        if (v30 != 128)
        {
          v31 = v32;
        }

        v34 = 1961984.0 / v31;
        v35 = v28 & 0x600;
        if (v35 == 512)
        {
          v36 = 1023000000.0;
        }

        else if (v35 == 1024)
        {
          v36 = 2046000000.0;
        }

        else
        {
          v36 = 4092000000.0;
          if (v35 != 1536)
          {
            v36 = 0.0;
          }
        }

        v29 = v34 / v36;
      }

      v64 = v29 / v27;
      v65 = v64 < 0.0;
      if (v64 == v64)
      {
        v65 = 0;
      }

      v66 = *(a2 + 244) / (v64 - v65);
      v67 = v66 + 1.0;
      v37 = v67;
      if (v67 == v67)
      {
        v37 = v66;
      }
    }

    else
    {
      v37 = 1;
    }

    *(v3 + 632) = v37;
    *(v3 + 640) = v24 + 250000.0;
    (*(**(*(v3 + 16) + 136) + 88))(*(*(v3 + 16) + 136));
    v15 = *(v3 + 24);
    if (v15 == 1)
    {
      v69 = v68 * 20.0 + -1575420000.0;
      v70 = *(a2 + 252);
      if ((v70 & 2) != 0)
      {
        v71 = *(v3 + 640) - v69;
        goto LABEL_124;
      }

      if ((v70 & 0x20) != 0)
      {
        v71 = 26580000.0 - v69 + *(v3 + 640);
LABEL_124:
        *(v3 + 640) = v71;
        goto LABEL_133;
      }

      v6 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1005, "AllocateCwResources", "0");
      v7 = 1005;
LABEL_237:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", v7, v6);
    }

    if ((v15 & 0xFFFFFFFE) > 6 || ((1 << (v15 & 0xFE)) & 0x54) == 0)
    {
      v6 = "0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1043, "AllocateCwResources", "0");
      v7 = 1043;
      goto LABEL_237;
    }

    v72 = v68 * 48.0;
    v73 = *a2 + 250000.0;
    v74 = *(a2 + 252);
    if ((v74 & 2) != 0)
    {
      v77 = 1575420000.0 - v72 + v73;
    }

    else
    {
      if ((v74 & 0x20) != 0)
      {
        v75 = -1602000000.0;
        v76 = 1.015625;
      }

      else
      {
        if ((v74 & 0x40) == 0)
        {
          v6 = "0";
          DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1038, "AllocateCwResources", "0");
          v7 = 1038;
          goto LABEL_237;
        }

        v75 = -1561098000.0;
        v76 = 0.984375;
      }

      v77 = v73 - (v75 + v72 * v76);
    }

    *(v3 + 640) = v77;
    goto LABEL_129;
  }

  v12 = *a2;
  v13 = *(a2 + 80);
  if (*a2 >= v13)
  {
    v6 = "rCwTestParams.dInitFreqHz[0] < rCwTestParams.dEndFreqHz[0]";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1048, "AllocateCwResources", "rCwTestParams.dInitFreqHz[0] < rCwTestParams.dEndFreqHz[0]");
    v7 = 1048;
    goto LABEL_237;
  }

  v14 = *(a2 + 252);
  if ((v14 & 0x600) == 0)
  {
    v6 = "rCwTestParams.GetSampleRateMsps()";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1049, "AllocateCwResources", "rCwTestParams.GetSampleRateMsps()");
    v7 = 1049;
    goto LABEL_237;
  }

  *(v3 + 612) = v14;
  v15 = *(v3 + 24);
  if ((v11 & 0x400000) != 0 && (v16 = v14, (v15 & 0xFFFFFFFE) == 6) || (v16 = v14 & 0xFFBFFFFF, *(v3 + 612) = v14 & 0xFFBFFFFF, (v15 & 0xFFFFFFFC | 2) == 6))
  {
    if ((~v11 & 0x620) == 0)
    {
      v11 &= ~0x200u;
      *(v3 + 292) = v11;
      *(v3 + 612) = v16 & 0xFFFFF9FF | 0x400;
      v14 = *(a2 + 252);
    }
  }

  v17 = v12 / 1000000.0;
  v18 = v13 / 1000000.0;
  v19 = v13 / 1000000.0 - v12 / 1000000.0;
  SampleRate = BlueFin::GlMeSrdTestMgrSPA::GetSampleRate(v3);
  v21 = v19 / SampleRate + 1.0;
  v22 = v21;
  if (v21 == v21)
  {
    v22 = (v19 / SampleRate);
  }

  *(v3 + 624) = v22;
  if ((v14 & 2) != 0)
  {
    v23 = 0;
  }

  else if ((v14 & 0x20) != 0)
  {
    v23 = 2;
  }

  else
  {
    if ((v14 & 0x40) == 0)
    {
LABEL_242:
      v6 = "dBandCenterMHz != 0";
      DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1081, "AllocateCwResources", "dBandCenterMHz != 0");
      v7 = 1081;
      goto LABEL_237;
    }

    v23 = 4;
  }

  LODWORD(v38) = (v14 >> 17) & 2;
  if ((v14 & 0x20000) != 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = v38;
  }

  v39 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v38 - v38 + v23]];
  if (v39 == 0.0)
  {
    goto LABEL_242;
  }

  v40 = v39 / 1000000.0;
  v41 = v17 + v39 / 1000000.0;
  v42 = v41 + (SampleRate * v22 - v19) * -0.5 + SampleRate * 0.5;
  *(v3 + 656) = v42;
  if ((v14 & 0x20) != 0)
  {
    v43 = -v17;
    if (v17 >= 0.0)
    {
      v43 = v17;
    }

    if (v43 == v18)
    {
      v44 = v40 - v42;
      if (v40 - v42 < 0.0)
      {
        v44 = -(v40 - v42);
      }

      if (v44 * 1000000.0 > 1.0)
      {
        v45 = v44 / SampleRate;
        v46 = v45 < 0.0;
        if (v45 == v45)
        {
          v46 = 0;
        }

        v47 = SampleRate * (v45 - (v45 - v46));
        if (v40 < v42)
        {
          v48 = SampleRate - v47;
        }

        else
        {
          v48 = v47;
        }

        v42 = v42 + v48;
        *(v3 + 656) = v42;
      }
    }
  }

  if (v42 + SampleRate * -0.5 > v41)
  {
    v42 = v42 - SampleRate;
    *(v3 + 656) = v42;
    *(v3 + 624) = v22 + 1;
  }

  *(v3 + 656) = v42;
  if ((v11 & 0x60000) != 0)
  {
    if ((v11 & 0x20000) != 0)
    {
      v49 = -1227.6;
    }

    else
    {
      v49 = -1176.45;
    }

    *(v3 + 664) = v42 + v49 + 1575.42;
    *(v3 + 672) = v42;
  }

  else
  {
    *(v3 + 664) = v42;
    *(v3 + 672) = 0x409261CCCCCCCCCDLL;
    if ((v15 & 0xFFFFFFFC | 2) == 6 && (v11 & 0x20) != 0)
    {
      *(v3 + 672) = BlueFin::GlMeSrdTestMgrSPA::GetSampleRate(v3) + 1176.45;
    }
  }

  v50 = (v11 >> 7) & 3;
  if (v50 > 1)
  {
    if (v50 == 2)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }
  }

  else if (v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = 4;
  }

  v52 = (v11 >> 9) & 3;
  if (v52 > 1)
  {
    if (v52 == 2)
    {
      v53 = 1;
    }

    else
    {
      v53 = 2;
    }
  }

  else if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = -1;
  }

  v54 = (v53 + v51);
  if (v54 >= 5)
  {
    v6 = "i < _DIM(MAX_COH_INT_MS)";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1111, "AllocateCwResources", "i < _DIM(MAX_COH_INT_MS)");
    v7 = 1111;
    goto LABEL_237;
  }

  v55 = BlueFin::MAX_COH_INT_MS[v54];
  v56 = *(a2 + 240);
  v57 = v56;
  if (!v56 || v55 < v57)
  {
    GlCustomLog(15, "<SPA> ERROR: Mode not supported! CohT (%.1f) > MaxCoh (%.1f) with current sampling rate/sampling size configuration. Minimum RBW for this configuration is %.0f Hz\n", v57, v55, 1000.0 / v55);
    v6 = "0";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1117, "AllocateCwResources", "0");
    v7 = 1117;
    goto LABEL_237;
  }

  v58 = v55 / v57;
  v60 = v58 != v58 && v58 < 0.0;
  v61 = *(a2 + 244) / (v58 - v60);
  v62 = v61 + 1.0;
  v63 = v62;
  if (v62 == v62)
  {
    v63 = v61;
  }

  *(v3 + 632) = v63;
LABEL_129:
  if ((v15 & 0xFFFFFFFE) != 6)
  {
    if (v15 != 1)
    {
      goto LABEL_134;
    }

LABEL_133:
    v78 = (*(**(v3 + 8) + 80))(*(v3 + 8));
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 1;
    v161 = v78;
    v162 = 0;
    v163 = 0;
    (*(*v78 + 16))(v78, 1);
    v79 = (*(**(v3 + 8) + 208))(*(v3 + 8));
    v80 = (*(*v79 + 32))(v79);
    (*(*v80 + 24))(v80, &v157, 5, 136, 0);
    BlueFin::GlMeSrdTransaction::Complete(&v157);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v157);
    goto LABEL_134;
  }

  if ((*(v3 + 294) & 0x40) != 0)
  {
    *(v3 + 632) = 1;
    *(v3 + 624) = 1;
  }

LABEL_134:
  v81 = *(v3 + 292);
  if ((v81 & 0x180) == 0 || ((v81 >> 9) & 3) - 1 >= 3)
  {
    *(v3 + 28) = 0;
    *(*(v3 + 16) + 34522) = 1;
    goto LABEL_232;
  }

  v82 = *(v3 + 16);
  *(v82 + 34522) = 1;
  if ((v81 & 4) != 0)
  {
    v167 = 0;
    v168[0] = 0;
    v165 = 0;
    v166 = 0;
    v164 = 0;
    (*(**(v82 + 136) + 768))(*(v82 + 136), v168 + 3);
    (*(**(*(v3 + 16) + 136) + 776))(*(*(v3 + 16) + 136), v168 + 2);
    if ((*(v3 + 24) & 0xFFFFFFFE) == 6)
    {
      v83 = (*(**(v3 + 8) + 80))(*(v3 + 8));
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 1;
      v161 = v83;
      v162 = 0;
      v163 = 0;
      (*(*v83 + 16))(v83, 1);
      v84 = v167;
      v85 = *(v3 + 24) & 0xFFFFFFFE;
      if ((*(v3 + 24) & 0xFFFFFFFC | 2) == 6)
      {
        v86 = *(v3 + 292);
        if ((v86 & 0x20) != 0)
        {
          v154 = *(v3 + 292);
          v155 = *(v3 + 24) & 0xFFFFFFFE;
          v156 = v3;
          v87 = 1;
          v88 = v84;
          v89 = 1000.0;
          v90 = 1;
          v91 = 1;
          do
          {
            v92 = 1;
            do
            {
              v93 = 1;
              do
              {
                v94 = v93;
                v95 = v88 - (log10(((((1000 * ((((2 * v87 + 8 * v92) >> 6) + v93) & 7) + 1000) * ((((2 * v87 + 8 * v92) >> 3) & 7) + 1)) & 0xFFF8) / ((2 * v87) | 1u))) * 20.0 + -52.0);
                if (v95 < 0.0)
                {
                  v95 = -v95;
                }

                v96 = v95;
                if (v89 > v96)
                {
                  v91 = v92;
                  v89 = v96;
                  v90 = v87;
                }

                ++v93;
              }

              while (v94 < 7);
              v97 = v92++;
            }

            while (v97 < 7);
            v98 = v87++;
          }

          while (v98 < 3);
          v99 = (8 * (v91 & 7)) | (2 * (v90 & 3));
          v3 = v156;
          v86 = v154;
          v85 = v155;
          goto LABEL_176;
        }
      }

      else
      {
        v86 = *(v3 + 292);
      }

      v100 = v84;
      if ((v86 & 0x60000) != 0)
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v104 = 1000.0;
        do
        {
          v105 = 0;
          do
          {
            v106 = 0;
            do
            {
              v107 = 0;
              do
              {
                v109 = v107;
                v108 = (v101 << 9) + (v105 << 6) + 8 * (v106 & 0x1F);
                v110 = v100 - (3 * ((((v108 + v107) >> 6) & 7) + ((v108 + v107) & 7) + (((v108 + v107) >> 9) & 7) + (((v108 + v107) >> 3) & 7)));
                if (v110 < 0.0)
                {
                  v110 = -v110;
                }

                v111 = v110;
                if (v104 > v111)
                {
                  v103 = v107;
                  v102 = v106;
                  v104 = v111;
                }

                ++v107;
              }

              while (v109 < 7);
              v112 = v106++;
            }

            while (v112 < 7);
            v113 = v105;
            v105 = (v105 + 1);
          }

          while (v113 < 7);
          v114 = v101;
          v101 = (v101 + 1);
        }

        while (v114 < 7);
        v99 = v103 | (8 * v102);
      }

      else
      {
        v115 = 1;
        v116 = 1000.0;
        v117 = 1;
        v118 = 1;
        do
        {
          for (i = 2; i != 9; ++i)
          {
            v120 = v100 - (log10((i + i * ((v115 + ((i - 1) >> 3)) & 7u))) * 20.0 + -12.0);
            if (v120 < 0.0)
            {
              v120 = -v120;
            }

            v121 = v120;
            if (v116 > v121)
            {
              v118 = v115;
              v117 = i - 1;
              v116 = v121;
            }
          }

          ++v115;
        }

        while (v115 != 8);
        v99 = v117 & 7 | (8 * (v118 & 7));
      }

LABEL_176:
      if ((v86 & 0x60000) != 0)
      {
        v122 = 3221274912;
        v123 = 3221274916;
      }

      else
      {
        v123 = 3221274888;
        if (v85 == 6)
        {
          v124 = *(v3 + 683);
          if (v124 == 3)
          {
            v122 = 3221274892;
          }

          else
          {
            v122 = 3221274884;
          }

          if (v124 == 3)
          {
            v123 = 3221274896;
          }

          else
          {
            v123 = 3221274888;
          }

LABEL_187:
          if ((v86 & 0x20) != 0)
          {
            v125 = 3221274932;
            goto LABEL_195;
          }

          if (v85 == 6 && (v86 & 0x40) != 0)
          {
            v125 = 3221274940;
            goto LABEL_195;
          }

LABEL_191:
          if ((v86 & 0x60000) != 0)
          {
            v125 = 3221274948;
          }

          else
          {
            v125 = 3221274924;
          }

LABEL_195:
          if (HIBYTE(v168[0]) == 1)
          {
            v126 = (*(**(v3 + 8) + 208))(*(v3 + 8));
            v127 = (*(*v126 + 32))(v126);
            (*(*v127 + 32))(v127, &v157, 9, v122, 0, 1);
            v128 = (*(**(v3 + 8) + 208))(*(v3 + 8));
            v129 = (*(*v128 + 32))(v128);
            (*(*v129 + 32))(v129, &v157, 9, v123, v99 & 0x3F, 63);
          }

          if (BYTE2(v168[0]) != 1)
          {
            goto LABEL_224;
          }

          v130 = (*(**(v3 + 8) + 208))(*(v3 + 8));
          v131 = (*(*v130 + 32))(v130);
          v132 = __exp10f(fminf(fmaxf(HIDWORD(v166), 4.0), 98.0) / 20.0);
          v133 = logf(v132) / 0.693147181;
          if (v133 <= 0.0)
          {
            if (v133 >= 0.0)
            {
              v135 = 0;
LABEL_204:
              v136 = v132;
              v137 = v132 * 64.0;
              v138 = v137 / ldexpf(1.0, v135);
              if (v138 <= 0.0)
              {
                v139 = 0;
              }

              else
              {
                v139 = (v138 + 0.5);
              }

              v140 = v135 - 1;
              v141 = 3;
              do
              {
                v142 = ldexpf(1.0, v140);
                v143 = v137 / v142;
                v144 = (v143 + 0.5);
                if (v143 <= 0.0)
                {
                  v144 = 0;
                }

                v145 = v136 + (v142 * v144) * -0.015625;
                if (v145 < 0.0)
                {
                  v145 = -v145;
                }

                v146 = v145;
                if (v132 > v146)
                {
                  v139 = v144;
                  v135 = v140;
                  v132 = v146;
                }

                ++v140;
                --v141;
              }

              while (v141);
              v147 = log(v139 * 0.015625) * 32.0 / 0.693147181;
              if (v147 <= 0.0)
              {
                if (v147 >= 0.0)
                {
                  v149 = 0;
LABEL_221:
                  if (v149 <= 1)
                  {
                    LOWORD(v149) = 1;
                  }

                  (*(*v131 + 32))(v131, &v157, 9, v125, v149 & 0x3FF | (32 * v135) & 0x200u, 66559);
LABEL_224:
                  BlueFin::GlMeSrdTransaction::Complete(&v157);
                  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v157);
                  goto LABEL_225;
                }

                v148 = -0.5;
              }

              else
              {
                v148 = 0.5;
              }

              v149 = (v147 + v148);
              goto LABEL_221;
            }

            v134 = -0.5;
          }

          else
          {
            v134 = 0.5;
          }

          v135 = (v133 + v134);
          goto LABEL_204;
        }

        v122 = 3221274884;
      }

      if ((v85 | 2) != 6)
      {
        goto LABEL_191;
      }

      goto LABEL_187;
    }
  }

LABEL_225:
  v150 = *(v3 + 24) & 0xFFFFFFFE;
  if (v150 == 4)
  {
    *(v3 + 688) = (*(**(*(v3 + 16) + 136) + 1032))(*(*(v3 + 16) + 136));
    if (*(v3 + 624) < 2u)
    {
      v152 = 0;
    }

    else
    {
      v152 = (*(**(*(v3 + 16) + 136) + 1032))(*(*(v3 + 16) + 136));
    }

    *(v3 + 608) = v152;
  }

  else if (v150 == 2)
  {
    v151 = *(v3 + 624) > 1u;
    *(v3 + 688) = v151;
    *(v3 + 608) = v151;
  }

LABEL_232:
  result = (*(**(v3 + 8) + 88))(*(v3 + 8), v3 + 304);
  *(v3 + 32) = 1;
  return result;
}

void sub_2989934E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

double BlueFin::GlMeSrdTestMgrSPA::GetSampleRate(BlueFin::GlMeSrdTestMgrSPA *this)
{
  v1 = *(this + 73);
  v2 = v1 & 0x600;
  if (v2 == 512)
  {
    result = 1.023;
  }

  else if (v2 == 1024)
  {
    result = 2.046;
  }

  else
  {
    result = 4.092;
    if (v2 != 1536)
    {
      result = 0.0;
    }
  }

  v4 = result + result;
  if ((v1 & 0x40) == 0)
  {
    v4 = result;
  }

  if ((*(this + 6) & 0xFFFFFFFE) == 6)
  {
    return v4;
  }

  return result;
}

void BlueFin::GlMeSrdTestMgrSPA::RunCwTest(BlueFin::GlMeSrdTestMgrSPA *this)
{
  v124 = *MEMORY[0x29EDCA608];
  if ((*(this + 32) & 1) == 0)
  {
    v108 = "m_bCwResources";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1186, "RunCwTest", "m_bCwResources");
    v109 = 1186;
    goto LABEL_183;
  }

  v2 = *(this + 73);
  v3 = v2 & 0x180;
  if ((v2 & 0x180) == 0 || ((v2 >> 9) & 3) - 1 >= 3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 6);
    goto LABEL_36;
  }

  if (v3 == 384)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  if (v3 == 256)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (v3 == 128)
  {
    v5 = 1;
  }

  else
  {
    v5 = v9;
  }

  v10 = 4 * ((v2 & 0x600) == 1536);
  if ((v2 & 0x600) == 0x400)
  {
    v10 = 2;
  }

  if ((v2 & 0x600) == 0x200)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = (this + 24);
  v7 = *(this + 6);
  if (v11 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 4;
  }

  if ((v2 & 0x20) == 0)
  {
    v13 = v11;
  }

  if ((v7 & 0xFFFFFFFC | 2) == 6)
  {
    v6 = v13;
  }

  else
  {
    v6 = v11;
  }

  if ((v7 & 0xFFFFFFFE) != 6)
  {
LABEL_36:
    v12 = (this + 24);
    if (v7 == 1)
    {
      v15 = (*(**(this + 1) + 80))(*(this + 1));
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 1;
      v114 = v15;
      v115 = 0;
      v116 = 0;
      (*(*v15 + 16))(v15, 1);
      v16 = (*(**(this + 1) + 208))(*(this + 1));
      v17 = (*(*v16 + 32))(v16);
      (*(*v17 + 32))(v17, &v110, 4, 12288, 48, 48);
      v18 = (*(**(this + 1) + 208))(*(this + 1));
      v19 = (*(*v18 + 32))(v18);
      (*(*v19 + 32))(v19, &v110, 4, 12299, 1, 1);
      v20 = (*(**(this + 1) + 208))(*(this + 1));
      v21 = (*(*v20 + 32))(v20);
      (*(*v21 + 16))(v21, &v110, 4, 12294);
      BlueFin::GlMeSrdTransaction::Complete(&v110);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
      if (*v12 == 1)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_38;
  }

  if (v6 <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v6;
  }

  if ((v2 & 0x40) != 0)
  {
    v6 = v14;
  }

LABEL_38:
  v22 = (*(**(this + 1) + 80))(*(this + 1));
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 1;
  v114 = v22;
  v115 = 0;
  v116 = 0;
  (*(*v22 + 16))(v22, 1);
  v23 = (*(**(this + 1) + 208))(*(this + 1));
  v24 = (*(*v23 + 32))(v23);
  (*(*v24 + 32))(v24, &v110, 8, 17, 0, 6);
  BlueFin::GlMeSrdTransaction::Complete(&v110);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
  if ((*v12 & 0xFFFFFFFE) == 6)
  {
    if ((*(this + 294) & 0x40) != 0)
    {
      LOBYTE(v120) = 0;
      v122 = 0;
      *(this + 681) = *(this + 296);
      v28 = (*(**(*(this + 2) + 136) + 1176))(*(*(this + 2) + 136));
      *(this + 683) = v28;
      v29 = *(this + 296);
      if (v29 <= 0x1F)
      {
        *(this + 680) = byte_298A3976F[*(this + 296)];
      }

      if (*v12 == 7)
      {
        if ((*(**(*(this + 2) + 136) + 40))(*(*(this + 2) + 136)))
        {
          switch(*(this + 296))
          {
            case 1:
            case 2:
            case 5:
            case 6:
            case 0xE:
            case 0x13:
            case 0x14:
            case 0x15:
            case 0x18:
            case 0x19:
            case 0x1F:
              GlCustomLog(15, "<SPA> ADC data sel %d is not supported in Saturnas\n", *(this + 296));
              v108 = "0";
              DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 2871, "GetAdcCaptureSettings", "0");
              v109 = 2871;
              goto LABEL_183;
            case 3:
            case 4:
              *(this + 682) = 0;
              goto LABEL_163;
            case 7:
            case 8:
            case 0xB:
            case 0xC:
            case 0xD:
            case 0x16:
            case 0x17:
            case 0x1A:
            case 0x1B:
            case 0x1C:
              goto LABEL_161;
            case 9:
            case 0xA:
              goto LABEL_150;
            case 0xF:
              goto LABEL_156;
            case 0x10:
            case 0x11:
            case 0x1D:
            case 0x1E:
              v30 = 6;
              goto LABEL_162;
            case 0x12:
              v30 = 4;
              goto LABEL_162;
            default:
              goto LABEL_163;
          }
        }

        v28 = *(this + 683);
        v29 = *(this + 296);
      }

      if (v28 == 4)
      {
        if (v29 != 26 && v29 != 20)
        {
          GlCustomLog(15, "<SPA> ADC capture of signal %d is not supported in VLP mode\n", v29);
          v108 = "0";
          DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 2918, "GetAdcCaptureSettings", "0");
          v109 = 2918;
          goto LABEL_183;
        }

        v30 = 3;
LABEL_162:
        *(this + 682) = v30;
      }

      else
      {
        switch(v29)
        {
          case 1u:
          case 2u:
          case 0xEu:
          case 0x13u:
          case 0x14u:
          case 0x15u:
          case 0x18u:
          case 0x19u:
            goto LABEL_161;
          case 3u:
          case 4u:
            GlCustomLog(15, "<SPA> ADC data sel %d. Every sample will be repeated three times at 200MHz\n", v29);
LABEL_161:
            v30 = 1;
            goto LABEL_162;
          case 5u:
          case 6u:
          case 0x1Fu:
LABEL_150:
            v30 = 2;
            goto LABEL_162;
          case 7u:
          case 8u:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0x16u:
          case 0x17u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
            v30 = 5;
            goto LABEL_162;
          case 9u:
          case 0xAu:
            v98 = 5;
            goto LABEL_158;
          case 0xFu:
LABEL_156:
            v30 = 7;
            goto LABEL_162;
          case 0x10u:
          case 0x11u:
          case 0x1Du:
          case 0x1Eu:
            v98 = 7;
LABEL_158:
            *(this + 682) = v98;
            GlCustomLog(15, "<SPA> ADC data sel %d. Every sample will be repeated twice at 200MHz\n");
            break;
          case 0x12u:
            *(this + 682) = 5;
            GlCustomLog(15, "<SPA> ADC data sel %d. Every sample will be repeated x3 at 200MHz\n");
            break;
          default:
            break;
        }
      }

LABEL_163:
      *(this + 342) = 1024;
      v99 = *(this + 681) & 0x1F | (32 * *(this + 680)) | (*(this + 682) << 6) | 0xC000;
      GlCustomLog(15, "<SPA> ADC Config: %08X - DataSel %d DataMode %d FreqSel %d\n", v99, *(this + 681), *(this + 680), *(this + 682));
      v123 = v99;
      v121 = 9;
      v100 = (*(**(this + 1) + 80))(*(this + 1));
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 1;
      v114 = v100;
      v115 = 0;
      v116 = 0;
      (*(*v100 + 16))(v100, 1);
      v101 = (*(**(this + 1) + 208))();
      v102 = (*(*v101 + 24))(v101);
      (*(*v102 + 24))(v102, &v110, &v120);
      BlueFin::GlMeSrdTransaction::Complete(&v110);
LABEL_180:
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
      goto LABEL_181;
    }

    *(this + 683) = (*(**(*(this + 2) + 136) + 1176))(*(*(this + 2) + 136));
  }

LABEL_41:
  v25 = *(this + 73);
  if ((v25 & 0x180) != 0 && ((v25 >> 9) & 3) - 1 < 3)
  {
    goto LABEL_74;
  }

  v26 = *(this + 80) / ((*(**(*(this + 2) + 136) + 88))(*(*(this + 2) + 136)) * 2.32830644e-10);
  if (v26 > 0.0)
  {
    v27 = 0.5;
LABEL_54:
    v31 = (v26 + v27);
    goto LABEL_55;
  }

  if (v26 < 0.0)
  {
    v27 = -0.5;
    goto LABEL_54;
  }

  v31 = 0;
LABEL_55:
  if (*v12 == 1)
  {
    v32 = 4;
    v33 = 64;
  }

  else if ((*v12 & 0xFFFFFFFE) == 2 && ((v34 = *(this + 73), (v34 & 0x180) == 0) || ((v34 >> 9) & 3) - 1 >= 3))
  {
    v33 = 3221226044;
    if ((v34 & 2) == 0)
    {
      if ((v34 & 0x20) != 0)
      {
        v33 = 3221226064;
      }

      else
      {
        v33 = 3221226144;
      }
    }

    v32 = 9;
  }

  else
  {
    v33 = 0;
    v32 = 4;
  }

  v35 = (*(**(this + 1) + 80))(*(this + 1));
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 1;
  v114 = v35;
  v115 = 0;
  v116 = 0;
  (*(*v35 + 16))(v35, 1);
  v36 = (*(**(this + 1) + 208))(*(this + 1));
  v37 = (*(*v36 + 32))(v36);
  (*(*v37 + 24))(v37, &v110, v32, v33, -v31);
  BlueFin::GlMeSrdTransaction::Complete(&v110);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
LABEL_74:
  v38 = (*(**(this + 1) + 80))(*(this + 1));
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 1;
  v114 = v38;
  v115 = 0;
  v116 = 0;
  (*(*v38 + 16))(v38, 1);
  v39 = *(this + 6);
  if (v39 == 1)
  {
    v40 = (*(**(this + 1) + 208))(*(this + 1));
    v41 = (*(*v40 + 32))(v40);
    (*(*v41 + 32))(v41, &v110, 4, 12288, 0, 0x4000);
    v42 = (*(**(this + 1) + 208))(*(this + 1));
    v43 = (*(*v42 + 32))(v42);
    (*(*v43 + 32))(v43, &v110, 4, 12288, 0x4000, 0x4000);
    v44 = (*(**(this + 1) + 208))(*(this + 1));
    v45 = (*(*v44 + 32))(v44);
    (*(*v45 + 32))(v45, &v110, 4, 12288, 0, 0x4000);
    v46 = (*(**(this + 1) + 208))(*(this + 1));
    v47 = (*(*v46 + 32))(v46);
    (*(*v47 + 16))(v47, &v110, 4, 12318);
    v48 = (*(**(this + 1) + 208))(*(this + 1));
    v49 = (*(*v48 + 32))(v48);
    v50 = 12319;
    v51 = 4;
  }

  else
  {
    if ((v39 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_80;
    }

    v52 = *(this + 73);
    if ((v52 & 0x180) != 0 && ((v52 >> 9) & 3) - 1 < 3)
    {
      goto LABEL_80;
    }

    v77 = (*(**(this + 1) + 208))(*(this + 1));
    v78 = (*(*v77 + 32))(v77);
    (*(*v78 + 16))(v78, &v110, 10, 27);
    v79 = (*(**(this + 1) + 208))(*(this + 1));
    v80 = (*(*v79 + 32))(v79);
    (*(*v80 + 16))(v80, &v110, 10, 29);
    v81 = (*(**(this + 1) + 208))(*(this + 1));
    v82 = (*(*v81 + 32))(v81);
    (*(*v82 + 16))(v82, &v110, 10, 30);
    v83 = (*(**(this + 1) + 208))(*(this + 1));
    v84 = (*(*v83 + 32))(v83);
    (*(*v84 + 16))(v84, &v110, 10, 31);
    v85 = (*(**(this + 1) + 208))(*(this + 1));
    v86 = (*(*v85 + 32))(v85);
    (*(*v86 + 16))(v86, &v110, 10, 32);
    v87 = (*(**(this + 1) + 208))(*(this + 1));
    v88 = (*(*v87 + 32))(v87);
    (*(*v88 + 16))(v88, &v110, 9, 3221274864);
    v89 = (*(**(this + 1) + 208))(*(this + 1));
    v90 = (*(*v89 + 32))(v89);
    (*(*v90 + 16))(v90, &v110, 9, 3221275120);
    v91 = (*(**(this + 1) + 208))(*(this + 1));
    v49 = (*(*v91 + 32))(v91);
    v50 = 3221275376;
    v51 = 9;
  }

  (*(*v49 + 16))(v49, &v110, v51, v50);
LABEL_80:
  BlueFin::GlMeSrdTransaction::Complete(&v110);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
  v53 = (*(**(this + 1) + 80))(*(this + 1));
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 1;
  v114 = v53;
  v115 = 0;
  v116 = 0;
  (*(*v53 + 16))(v53, 1);
  if (*(this + 6) == 1)
  {
    v54 = &unk_298A396E8;
    v55 = 4;
    do
    {
      v56 = (*(**(this + 1) + 208))(*(this + 1));
      v57 = (*(*v56 + 32))(v56);
      (*(*v57 + 24))(v57, &v110, 4, *(v54 - 1), *v54);
      v54 += 2;
      --v55;
    }

    while (v55);
  }

  else
  {
    v58 = &unk_298A39708;
    v59 = 5;
    do
    {
      v60 = (*(**(this + 1) + 208))(*(this + 1));
      v61 = (*(*v60 + 32))(v60);
      (*(*v61 + 24))(v61, &v110, 9, *(v58 - 1), *v58);
      v58 += 2;
      --v59;
    }

    while (v59);
  }

  BlueFin::GlMeSrdTransaction::Complete(&v110);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
  *(this + 7) = 1;
  v62 = *(this + 73);
  if ((v62 & 0x180) == 0 || ((v62 >> 9) & 3) - 1 >= 3)
  {
    BlueFin::GlMeSrdTestMgrSPA::PollMsCounter(this, 1);
    v62 = *(this + 73);
  }

  if ((v62 & 4) != 0)
  {
    BlueFin::GlMeSrdTestMgrSPA::AgcLock(this, 1);
  }

  if ((*v12 & 0xFFFFFFFE) == 6 && (*v12 == 6 || (*(**(*(this + 2) + 136) + 40))(*(*(this + 2) + 136))))
  {
    v63 = (*(**(*(this + 2) + 136) + 1072))(*(*(this + 2) + 136));
    *v119 = 0;
    v117 = 0;
    v64 = (*(**(this + 1) + 80))(*(this + 1));
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 1;
    v114 = v64;
    v115 = 0;
    v116 = 0;
    (*(*v64 + 16))(v64, 1);
    v65 = *(this + 73);
    if ((v65 & 0x60000) == 0)
    {
      if ((v65 & 0x20) != 0)
      {
        v71 = 2;
      }

      else
      {
        v71 = 3;
      }

      if ((v65 & 2) != 0)
      {
        v72 = 1;
      }

      else
      {
        v72 = v71;
      }

      BlueFin::GlMeSrdTestMgrSPA::GetNotchConfiguration(this, v63, &v120, v118, &v117, v72);
      BlueFin::GlMeSrdTestMgrSPA::ProgramNotchMinnow(this, &v110, &v120, v118, v117, v72, &v119[1], v119, v73, v74, v75, v76);
      goto LABEL_108;
    }

    if ((v65 & 0x20000) != 0)
    {
      v66 = 5;
      BlueFin::GlMeSrdTestMgrSPA::GetNotchConfiguration(this, v63, &v120, v118, &v117, 5);
    }

    else
    {
      if ((v65 & 0x60000) != 0x40000)
      {
LABEL_108:
        if (v119[1])
        {
          if ((*v12 & 0xFFFFFFFE) == 6 && *(this + 683) == 3)
          {
            v92 = 3221275432;
          }

          else
          {
            v92 = 3221275428;
          }

          BlueFin::GlMeSrdTestMgrSPA::SendNotchRpc(&v110, v92);
        }

        if (v119[0])
        {
          BlueFin::GlMeSrdTestMgrSPA::SendNotchRpc(&v110, 0xC000C338);
        }

        BlueFin::GlMeSrdTransaction::Complete(&v110);
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v110);
        goto LABEL_117;
      }

      v66 = 4;
      BlueFin::GlMeSrdTestMgrSPA::GetNotchConfiguration(this, v63, &v120, v118, &v117, 4);
    }

    BlueFin::GlMeSrdTestMgrSPA::ProgramNotchMinnow(this, &v110, &v120, v118, v117, v66, &v119[1], v119, v67, v68, v69, v70);
    goto LABEL_108;
  }

LABEL_117:
  v93 = *(this + 73);
  v94 = v93 & 0x180;
  if ((v93 & 0x180) != 0 && ((v93 >> 9) & 3) - 1 <= 2)
  {
    v95 = *v12 & 0xFFFFFFFE;
    if (v95 == 6)
    {
      if ((v93 & 0x20000) != 0)
      {
        GlCustomLog(11, "<SPA> L2 SPA is not avialable on Minnow. Assert to notify the user\n");
        v108 = "0";
        DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1291, "RunCwTest", "0");
        v109 = 1291;
        goto LABEL_183;
      }

      if ((v93 & 0x20) == 0)
      {
        if ((v93 & 0x40) != 0)
        {
          v96 = 1;
          goto LABEL_132;
        }

LABEL_127:
        if ((v93 & 0x60000) != 0)
        {
          if ((v93 & 0x20000) != 0)
          {
            v96 = 5;
          }

          else
          {
            v96 = 6;
          }
        }

        else
        {
          v96 = 0;
        }

        goto LABEL_132;
      }
    }

    else if ((v93 & 0x20) == 0 || v95 != 4)
    {
      goto LABEL_127;
    }

    v96 = 2;
LABEL_132:
    LOBYTE(v120) = v96;
    if (v5 == 1 && v6 == 1)
    {
      v97 = 0;
LABEL_172:
      v121 = v97;
      v122 = 0;
      switch(v94)
      {
        case 128:
          v103 = 2;
          break;
        case 256:
          v103 = 4;
          break;
        case 384:
          v103 = 8;
          break;
        default:
          v103 = 10;
          break;
      }

      v123 = 0x1DF000 / v103;
      v104 = (*(**(this + 1) + 80))(*(this + 1));
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 1;
      v114 = v104;
      v115 = 0;
      v116 = 0;
      (*(*v104 + 16))(v104, 1);
      v105 = (*(**(this + 1) + 208))();
      v106 = (*(*v105 + 24))(v105);
      (*(*v106 + 24))(v106, &v110, &v120);
      BlueFin::GlMeSrdTransaction::Complete(&v110);
      goto LABEL_180;
    }

    if (v5 == 2 && v6 == 1)
    {
      v97 = 1;
      goto LABEL_172;
    }

    if (v5 == 4 && v6 == 1)
    {
      v97 = 2;
      goto LABEL_172;
    }

    if (v5 == 1 && v6 == 2)
    {
      v97 = 3;
      goto LABEL_172;
    }

    if (v5 == 2 && v6 == 2)
    {
      v97 = 4;
      goto LABEL_172;
    }

    if (v5 == 4 && v6 == 2)
    {
      v97 = 5;
      goto LABEL_172;
    }

    if (v5 == 1 && v6 == 4)
    {
      v97 = 6;
      goto LABEL_172;
    }

    if (v5 == 2 && v6 == 4)
    {
      v97 = 7;
      goto LABEL_172;
    }

    if (v5 == 4 && v6 == 4)
    {
      v97 = 8;
      goto LABEL_172;
    }

    v108 = "0";
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1316, "RunCwTest", "0");
    v109 = 1316;
LABEL_183:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", v109, v108);
  }

LABEL_181:
  v107 = *MEMORY[0x29EDCA608];
}

void sub_298994DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdTestMgrSPA::AgcLock(BlueFin::GlMeSrdTestMgrSPA *this, int a2)
{
  if (*(this + 6) == 1)
  {
    v4 = (*(**(this + 1) + 80))(*(this + 1));
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    v10 = 1;
    v11 = v4;
    v12 = 0;
    v13 = 0;
    (*(*v4 + 16))(v4, 1);
    v5 = (*(**(this + 1) + 208))(*(this + 1));
    v6 = (*(*v5 + 32))(v5);
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 6;
    }

    (*(*v6 + 32))(v6, v8, 4, 12288, v7, 6);
    BlueFin::GlMeSrdTransaction::Complete(v8);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v8);
  }
}

void sub_298994F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdTestMgrSPA::ClearCwResources(BlueFin::GlMeSrdTestMgrSPA *this)
{
  if ((*(this + 292) & 4) != 0)
  {
    BlueFin::GlMeSrdTestMgrSPA::AgcLock(this, 0);
  }

  if ((*(this + 32) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1339, "ClearCwResources", "m_bCwResources");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", 1339, "m_bCwResources");
  }

  *(this + 32) = 0;
  v2 = *(**(this + 1) + 96);

  return v2();
}

uint64_t BlueFin::GlMeSrdTestMgrSPA::GetSpaIqResults(BlueFin::GlMeSrdTestMgrSPA *this)
{
  if ((*(this + 648) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 1358, "GetSpaIqResults", "m_bDoubleBufferResultsReady");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", 1358, "m_bDoubleBufferResultsReady");
  }

  *(this + 648) = 0;
  return this + 384;
}

uint64_t BlueFin::GlMeSrdTestMgrSPA::FrequencyToNco(BlueFin::GlMeSrdTestMgrSPA *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *a2.i64;
  v7 = *(this + 6) & 0xFFFFFFFE;
  if (v7 == 6)
  {
    a2.i64[0] = qword_298A396C0[(*(this + 294) & 6) == 0];
    v11 = fabs(v5);
    if (v11 >= *a2.i64 * 0.5)
    {
      v11 = *a2.i64 * 0.5;
    }

    if (v5 < 0.0)
    {
      v11 = -v11;
    }

    v12 = v11 * 1048576.0;
  }

  else
  {
    if (v7 == 4)
    {
      *a2.i64 = (*(**(*(this + 2) + 136) + 96))(*(*(this + 2) + 136)) / 1000000.0;
      if ((*(this + 6) & 0xFFFFFFFC | 2) == 6)
      {
        v10 = 712;
        if ((*(this + 73) & 0x20) == 0)
        {
          v10 = 704;
        }
      }

      else
      {
        v10 = 704;
      }

      *v8.i64 = (*(this + 83) - *(this + v10)) * 1048576.0 / *a2.i64 + 0.5;
      *v9.i64 = *v8.i64 + trunc(*v8.i64 * 2.32830644e-10) * -4294967300.0;
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      a4 = vnegq_f64(v14);
      v9.i64[0] = vbslq_s8(a4, v9, v8).u64[0];
      if (*v8.i64 > 4294967300.0)
      {
        v8.i64[0] = v9.i64[0];
      }

      if (*v8.i64 < -4294967300.0)
      {
        *a5.i64 = -*v8.i64;
        *v8.i64 = -(*v8.i64 - trunc(*v8.i64 * -2.32830644e-10) * -4294967300.0);
        *v8.i64 = -*vbslq_s8(a4, v8, a5).i64;
      }

      if (*v8.i64 < 0.0)
      {
        v15 = --*v8.i64;
      }

      else
      {
        v15 = *v8.i64;
      }

      *a2.i64 = *a2.i64 * v15 * 0.000000953674316;
    }

    else
    {
      if (v7 != 2)
      {
        return 0;
      }

      (*(**(*(this + 2) + 136) + 96))(*(*(this + 2) + 136));
      *a2.i64 = *(this + 82) - *(this + 87);
    }

    *a2.i64 = *a2.i64 / 48.0 * 1000000.0 * 0.000000953674316;
    v12 = fabs(v5);
    if (v5 < 0.0)
    {
      v12 = -v12;
    }
  }

  *a2.i64 = v12 / *a2.i64;
  *a5.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  a5.i64[0] = vbslq_s8(v17, a5, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a5.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a4.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v17, a2, a4).i64;
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

uint64_t BlueFin::GlMeSrdTestMgrSPA::SendNotchRpc(BlueFin::GlMeSrdTestMgrSPA *this, BlueFin::GlMeSrdTransaction *a2)
{
  if ((a2 & 3) != 0)
  {
    DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 2465, "SendNotchRpc", "(ulAddr & 0x3)==0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", 2465, "(ulAddr & 0x3)==0");
  }

  v2 = (*(**(this + 3) + 48))(*(this + 3));
  v3 = *(*(*(*v2 + 32))(v2) + 24);

  return v3();
}

uint64_t BlueFin::GlMeSrdTestMgrSPA::GetNotchConfiguration(uint64_t result, unsigned __int8 *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, int a6)
{
  v10 = 0;
  v11 = 0;
  *a3 = 0;
  *a4 = 0;
  a3[1] = 0;
  a4[1] = 0;
  do
  {
    if (*a2 == a6)
    {
      v12 = a2[1];
      if (v12 >= 0x10)
      {
        DeviceFaultNotify("glmesrd_test_mgr_spa.cpp", 2498, "GetNotchConfiguration", "pNotches->ucLoopCoefficient<=15");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_test_mgr_spa.cpp", 2498, "pNotches->ucLoopCoefficient<=15");
      }

      a3[v11] = *(a2 + 1);
      a4[v11++] = v12;
    }

    if (v10 > 0x16)
    {
      break;
    }

    ++v10;
    a2 += 8;
  }

  while (v11 < 2);
  if ((*(result + 24) & 0xFFFFFFFE) != 6)
  {
    result = (*(**(*(result + 16) + 136) + 1080))(*(*(result + 16) + 136));
    if (a6 == 1 && result == 1)
    {
      a3[v11] = -2100000;
      a4[v11] = 8;
      LOBYTE(v11) = 1;
    }
  }

  *a5 = v11;
  return result;
}

uint64_t BlueFin::GlMeSrdTestMgrSPA::ProgramNotchMinnow(BlueFin::GlMeSrdTestMgrSPA *this, BlueFin::GlMeSrdTestMgrSPA *a2, int *a3, unsigned __int8 *a4, int a5, int a6, int *a7, _DWORD *a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12)
{
  v17 = 672;
  if ((*(this + 294) & 6) == 0)
  {
    v17 = 664;
  }

  v18 = *(this + v17);
  if (!a5)
  {
    *a3 = 0;
    *a4 = 0;
  }

  v19 = *a7;
  if (a6 <= 2)
  {
    if (a6 == 1)
    {
      if (a5 == 1)
      {
        v25 = 268500992;
      }

      else
      {
        v25 = 269549568;
      }

      if (!a5)
      {
        v25 = 268632064;
      }

      *a7 = v19 | v25;
      v20 = 3221275392;
      v22 = 3221275396;
      v23 = 3221275400;
      v24 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
    }

    else
    {
      if (a5 == 1)
      {
        v28 = 268435712;
      }

      else
      {
        v28 = 268439808;
      }

      v29 = 268436224;
      if (a5)
      {
        v29 = v28;
      }

      *a7 = v19 | v29;
      v20 = 3221275404;
      v22 = 3221275408;
      v23 = 3221275412;
      v24 = &byte_298A32040;
    }
  }

  else if (a6 == 3)
  {
    if (a5 == 1)
    {
      v26 = 268435457;
    }

    else
    {
      v26 = 268435473;
    }

    v27 = 268435459;
    if (a5)
    {
      v27 = v26;
    }

    *a7 = v19 | v27;
    v20 = 3221275416;
    v22 = 3221275420;
    v23 = 3221275424;
    v24 = &byte_298A32042;
  }

  else
  {
    v20 = 3221275436;
    *a7 = v19 | 0x20000000;
    if (a5 == 1)
    {
      v21 = 256;
    }

    else
    {
      v21 = 4352;
    }

    if (!a5)
    {
      v21 = 768;
    }

    *a8 |= v21;
    v22 = 3221275440;
    v23 = 3221275444;
    v24 = &byte_298A3204C;
  }

  v30 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[*v24];
  v31 = 0.0;
  if (a5)
  {
    v32 = *a4;
    v33 = *a3;
    *a9.i64 = -v33;
    BlueFin::GlMeSrdTestMgrSPA::FrequencyToNco(this, a9, a10, a11, a12);
    BlueFin::GlMeSrdTestMgrSPA::SendNotchRpc(a2, v20);
    v31 = 0.0 - v33;
    if (a5 != 1)
    {
      v35 = a4[1];
      v36 = v31 + a3[1];
      *a9.i64 = -v36;
      BlueFin::GlMeSrdTestMgrSPA::FrequencyToNco(this, a9, v34, a11, a12);
      BlueFin::GlMeSrdTestMgrSPA::SendNotchRpc(a2, v22);
      v31 = v31 - v36;
    }
  }

  v37 = v30 / 1000000.0 - v18;
  *a9.i64 = v37 * 1000000.0 + 0.0 - v31;
  BlueFin::GlMeSrdTestMgrSPA::FrequencyToNco(this, a9, v37, a11, a12);

  return BlueFin::GlMeSrdTestMgrSPA::SendNotchRpc(a2, v23);
}

void BlueFin::GlMeSrdPacketManager::~GlMeSrdPacketManager(BlueFin::GlMeSrdPacketManager *this)
{
  *this = &unk_2A1F0CDD8;
  v2 = *(this + 14);
  if (v2)
  {
    BlueFin::GlEventPump::RemoveActive(v2, this);
  }
}

{
  BlueFin::GlMeSrdPacketManager::~GlMeSrdPacketManager(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlMeHost2SrdData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v15 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2 >= 2)
    {
      DeviceFaultNotify("glmesrd_packet_manager.cpp", 682, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", 682, "ucVersion >= 1 && ucVersion <= 1");
    }

    v11 = 76;
    v12 = 1;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = 1;
    v6 = (v1 + 8);
    BlueFin::GlSysLogEntry::PutU16(&v10, *(v1 + 8));
    if (*v6)
    {
      v7 = 0;
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v10, *(*(v5 + 16) + v7++));
      }

      while (v7 < *(v5 + 8));
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

uint64_t BlueFin::GlMeHost2SrdData::Deserialize(BlueFin::GlMeHost2SrdData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 76 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = U16;
    if (U16)
    {
      v7 = 0;
      do
      {
        *(*(this + 2) + v7++) = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      while (v7 < *(this + 4));
    }

    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glmesrd_packet_manager.cpp", 710, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", 710, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v3;
}

uint64_t BlueFin::GlMeSrd2HostData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v19 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2;
    }

    if (v2 > 1)
    {
      DeviceFaultNotify("glmesrd_packet_manager.cpp", 722, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", 722, "ucVersion >= 1 && ucVersion <= 1");
    }

    LOWORD(v7) = *(v1 + 8);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v15 = 77;
        v16 = v6;
        v17 = 0x1000000000000;
        v14 = &unk_2A1F092C0;
        v18 = v6;
        if ((v7 - v9) >= 0x13FDu)
        {
          LODWORD(v10) = 5117;
        }

        else
        {
          LODWORD(v10) = (v7 - v9);
        }

        BlueFin::GlSysLogEntry::PutU16(&v14, v10);
        if (v7 != v9)
        {
          v11 = v8;
          if (v10 <= 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = v10;
          }

          do
          {
            BlueFin::GlSysLogEntry::PutU8(&v14, *(*(v5 + 16) + v11++));
            --v10;
          }

          while (v10);
        }

        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v4, 4);
        v9 = v8 + 5117;
        v8 = (v8 + 5117);
        v7 = *(v5 + 8);
      }

      while (v8 < v7);
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

uint64_t BlueFin::GlMeSrd2HostData::Deserialize(BlueFin::GlMeSrd2HostData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 77 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = U16;
    if (U16)
    {
      v7 = 0;
      do
      {
        *(*(this + 2) + v7++) = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      while (v7 < *(this + 4));
    }

    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glmesrd_packet_manager.cpp", 762, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", 762, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v3;
}

uint64_t BlueFin::GlMeSrdPacketManager::ReliableNackReceived(BlueFin::GlMeSrdPacketManager *this, int a2, int a3)
{
  if (*(this + 13874) == 1)
  {
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 293, "ReliableNackReceived", "!m_bMessageReliableStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", 293, "!m_bMessageReliableStarted");
  }

  result = GlCustomLog(12, "PacketMgr::ReliableNackReceived(%u, %u)\n", a2, a3);
  v7 = *(this + 1735);
  if (!v7)
  {
    return GlCustomLog(12, "PacketMgr::ReliableNackReceived(%u, %u) outdated!\n", a2, a3);
  }

  while (1)
  {
    if (!*(v7 + 49))
    {
      result = GlCustomLog(12, "PacketMgr::ReliableNackReceived(%u, %u) for seqid(%u) which was previously acked.  Large latency likely!!!\n", a2, a3, *(v7 + 48));
      goto LABEL_7;
    }

    if (*(v7 + *(v7 + 49) - 1 + 50) == a2)
    {
      break;
    }

LABEL_7:
    v7 = *(v7 + 88);
    if (!v7)
    {
      return GlCustomLog(12, "PacketMgr::ReliableNackReceived(%u, %u) outdated!\n", a2, a3);
    }
  }

  v8 = *(this + 1735);
  if (v8)
  {
    v9 = *(this + 1735);
    while (*(v9 + 48) != a3)
    {
      v9 = *(v9 + 88);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    result = BlueFin::GlMeSrdPacketManager::ProcessAckedElement(this, v9);
    v8 = *(this + 1735);
    if (!v8)
    {
      return result;
    }

    do
    {
LABEL_16:
      result = BlueFin::GlTimer::rearm((v8 + 8), 100);
      v8 = *(v8 + 88);
    }

    while (v8);
  }

  return result;
}

uint64_t (*BlueFin::GlMeSrdPacketManager::wait4kill(uint64_t a1, _BYTE *a2))()
{
  if ((*a2 & 0xFE) == 2)
  {
    return 0;
  }

  else
  {
    return BlueFin::QHsm::top;
  }
}

void BlueFin::GlMeSrdTransactionManager::~GlMeSrdTransactionManager(BlueFin::GlMeSrdTransactionManager *this)
{
  *this = &unk_2A1F0CF50;
  *(this + 2159) = &unk_2A1F0D098;
  v2 = *(this + 2160);
  if (v2)
  {
    (**v2)(v2);
    *(this + 2160) = 0;
  }

  BlueFin::GlMeSrdPacketManager::~GlMeSrdPacketManager((this + 96));
}

{
  *this = &unk_2A1F0CF50;
  *(this + 2159) = &unk_2A1F0D098;
  v2 = *(this + 2160);
  if (v2)
  {
    (**v2)(v2);
    *(this + 2160) = 0;
  }

  BlueFin::GlMeSrdPacketManager::~GlMeSrdPacketManager((this + 96));

  JUMPOUT(0x29C292F60);
}

void BlueFin::GlMeSrdTransactionManager::SetDacData(BlueFin::GlMeSrdTransactionManager *this, char *a2, unsigned int a3)
{
  vars8 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  vars0 = 0;
  memset(v14, 0, sizeof(v14));
  v7 = (*(*this + 80))(this);
  if (v6)
  {
    *&v14[0] = BlueFin::GlMeSrdTransactionManager::SendDacReliableAck;
    *(&v14[0] + 1) = this;
    LOWORD(v14[1]) = 256;
    BYTE2(v14[1]) = 0;
  }

  else
  {
    memset(v14, 0, 19);
  }

  *(&v14[1] + 1) = v7;
  LODWORD(vars0) = 0;
  WORD2(vars0) = 0;
  (*(*v7 + 16))(v7, v6 & 1);
  v8 = 1;
  if (a3 >= 2)
  {
    do
    {
      v9 = &a2[v8];
      v10 = *v9;
      v11 = a2[(v8 + 2)];
      v12 = &a2[(v8 + 3)];
      v8 += 3 + v10;
      BlueFin::GlMeSrdTransaction::Add(v14, v9[1], v11, v12, v10);
    }

    while (a3 > v8);
  }

  if (a3 != v8)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 156, "SetDacData", "usOffst == usSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 156, "usOffst == usSize");
  }

  BlueFin::GlMeSrdTransaction::Complete(v14);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v14);
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlMeSrdTransactionManager::SetSwFlowControlXonXoff(uint64_t this, char a2, char a3)
{
  *(this + 6614) = a2;
  *(this + 6615) = a3;
  return this;
}

int64x2_t BlueFin::GlMeSrdTransactionManager::SetBurstModeConfig(BlueFin::GlMeSrdTransactionManager *this, int a2, char a3, int64x2_t result)
{
  *(this + 6616) = a2;
  *(this + 6617) = a3;
  if (a2)
  {
    v4 = (this + 6700);
    result = xmmword_298A319D0;
    v5 = vdupq_n_s64(2uLL);
    v6 = 10;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), result)).u8[0])
      {
        *(v4 - 2) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&result)).i32[1])
      {
        *v4 = 0;
      }

      result = vaddq_s64(result, v5);
      v4 += 4;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::SendAutobaud(BlueFin::GlMeSrdTransactionManager *this)
{
  v3[2] = *MEMORY[0x29EDCA608];
  v3[0] = 0x8080808080808080;
  v3[1] = 0x8080808080808080;
  result = (*(**(*(this + 3) + 17024) + 24))(*(*(this + 3) + 17024), v3, 16);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterMisc(uint64_t this, BlueFin::GlRpcMiscIf *a2)
{
  if (!a2)
  {
    v3 = "nullptr != pMiscIf";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 225, "UnregisterMisc", "nullptr != pMiscIf");
    v4 = 225;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", v4, v3);
  }

  v2 = *(this + 17048);
  if (*(this + 17040) == a2)
  {
    *(this + 17040) = v2;
  }

  else if (v2 != a2)
  {
    v3 = "0";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 237, "UnregisterMisc", "0");
    v4 = 237;
    goto LABEL_8;
  }

  *(this + 17048) = 0;
  return this;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterUtils(uint64_t result, uint64_t a2)
{
  if (*(result + 17064) != a2)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 251, "UnregisterUtils", "m_pUtilsIf == pUtilsIf");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 251, "m_pUtilsIf == pUtilsIf");
  }

  *(result + 17064) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterEvents(uint64_t result, uint64_t a2)
{
  if (*(result + 17056) != a2)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 265, "UnregisterEvents", "m_pEventsIf == pEventsIf");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 265, "m_pEventsIf == pEventsIf");
  }

  *(result + 17056) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterSatRpt(uint64_t result, uint64_t a2)
{
  if (!a2 || *(result + 17072))
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 272, "RegisterSatRpt", "m_pSatRptIf == nullptr && pSatRptIf != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 272, "m_pSatRptIf == nullptr && pSatRptIf != nullptr");
  }

  *(result + 17072) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterSatRpt(uint64_t result, uint64_t a2)
{
  if (*(result + 17072) != a2)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 279, "UnregisterSatRpt", "m_pSatRptIf == pSatRptIf");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 279, "m_pSatRptIf == pSatRptIf");
  }

  *(result + 17072) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterRmRpt(uint64_t result, uint64_t a2)
{
  if (!a2 || *(result + 17080))
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 286, "RegisterRmRpt", "m_pRmRptIf == nullptr && pRmRptIf != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 286, "m_pRmRptIf == nullptr && pRmRptIf != nullptr");
  }

  *(result + 17080) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterRmRpt(uint64_t result, uint64_t a2)
{
  if (*(result + 17080) != a2)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 293, "UnregisterRmRpt", "m_pRmRptIf == pRmRptIf");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 293, "m_pRmRptIf == pRmRptIf");
  }

  *(result + 17080) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterSatEvt(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v2 = "pSatEvtIf != nullptr";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 300, "RegisterSatEvt", "pSatEvtIf != nullptr");
    v3 = 300;
    goto LABEL_7;
  }

  if (*(result + 17088))
  {
    if (!*(result + 17096))
    {
      *(result + 17096) = a2;
      return result;
    }

    v2 = "0";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 311, "RegisterSatEvt", "0");
    v3 = 311;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", v3, v2);
  }

  *(result + 17088) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterSatEvt(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = "nullptr != pSatEvtIf";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 318, "UnregisterSatEvt", "nullptr != pSatEvtIf");
    v4 = 318;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", v4, v3);
  }

  v2 = *(result + 17096);
  if (*(result + 17088) == a2)
  {
    *(result + 17088) = v2;
  }

  else if (v2 != a2)
  {
    v3 = "0";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 330, "UnregisterSatEvt", "0");
    v4 = 330;
    goto LABEL_8;
  }

  *(result + 17096) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterGeoRpt(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 337, "RegisterGeoRpt", "nullptr != pGeorptIf");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 337, "nullptr != pGeorptIf");
  }

  *(result + 17104) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdTransactionManager::UnregisterGeoRpt(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 344, "UnregisterGeoRpt", "nullptr != pGeorptIf");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", 344, "nullptr != pGeorptIf");
  }

  *(result + 17104) = 0;
  return result;
}

void BlueFin::GllRpcDec::~GllRpcDec(BlueFin::GllRpcDec *this)
{
  *this = &unk_2A1F0D098;
  v2 = *(this + 1);
  if (v2)
  {
    (**v2)(v2);
    *(this + 1) = 0;
  }
}

{
  *this = &unk_2A1F0D098;
  v2 = *(this + 1);
  if (v2)
  {
    (**v2)(v2);
    *(this + 1) = 0;
  }

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::EswRpcTimIf::CalculateMIAdjustmentMs(BlueFin::EswRpcTimIf *this, unsigned __int8 a2, unsigned int a3, int a4, _DWORD *a5, int *a6, int *a7, int *a8)
{
  *a5 = 0;
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (a2)
      {
        v10 = this + 200;
      }

      else
      {
        v10 = 200;
      }

      if (a2)
      {
        --a2;
      }

      else
      {
        a2 = 0;
      }

      v9 += v10;
      ++v8;
    }

    while (v8 < a3);
    *a5 = v9;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (a2)
    {
      v13 = this + 200;
    }

    else
    {
      v13 = 200;
    }

    if (a2)
    {
      --a2;
    }

    else
    {
      a2 = 0;
    }

    v12 += v13;
    ++v11;
  }

  while (a4 + 5 > v11);
  *a6 = v12;
  if (a2 > 5u)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder.cpp", 191, "CalculateMIAdjustmentMs", "num_blk_adjust <= 5");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder.cpp", 191, "num_blk_adjust <= 5");
  }

  v14 = 0;
  v15 = 0;
  do
  {
    if (a2)
    {
      v16 = this + 200;
    }

    else
    {
      v16 = 200;
    }

    if (a2)
    {
      --a2;
    }

    else
    {
      a2 = 0;
    }

    v15 += v16;
  }

  while (v14++ < 4);
  *a7 = v15;
  if (a3)
  {
    v18 = -3000;
  }

  else
  {
    v18 = -2000;
  }

  return (v15 + v18 + *a5 + *a6);
}

uint64_t BlueFin::EswRpcEnc::GetEswStmRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 24);

  return v3();
}

uint64_t BlueFin::EswRpcEnc::GetEswRmRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 56);

  return v3();
}

uint64_t BlueFin::EswRpcEnc::GetEswGeomgrRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 72);

  return v3();
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_get_version(BlueFin::CarpEswRpcGcmEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  *v5 = 0;
  v6 = 0;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v5, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(v2, 0, 0);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 39, "esw_gcm_rpc_get_version", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 39, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_rf_set_frequency_plan(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v12 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v17, v18, 1800, v12);
  BlueFin::GlStream::PutU32(v17, *a3);
  BlueFin::GlStream::PutU32(v17, *(a3 + 4));
  BlueFin::GlStream::PutU32(v17, *(a3 + 8));
  BlueFin::GlStream::PutU32(v17, *(a3 + 12));
  BlueFin::GlStream::PutU32(v17, *(a3 + 16));
  BlueFin::GlStream::PutU32(v17, *(a3 + 20));
  BlueFin::GlStream::PutU32(v17, *(a3 + 24));
  BlueFin::GlStream::PutU32(v17, *(a3 + 28));
  BlueFin::GlStream::PutU32(v17, *(a3 + 32));
  BlueFin::GlStream::PutU32(v17, *(a3 + 36));
  BlueFin::GlStream::PutU16(v17, *(a3 + 40));
  BlueFin::GlStream::PutU08(v17, *(a3 + 42));
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, *a4);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, a4[1]);
  BlueFin::GlStream::PutU08(v17, a4[2]);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, a4[3]);
  BlueFin::GlStream::PutU08(v17, a4[4]);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, a4[5]);
  BlueFin::GlStream::PutU08(v17, a4[6]);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, a4[7]);
  BlueFin::GlStream::PutU08(v17, a4[8]);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, a4[9]);
  BlueFin::GlStream::PutU08(v17, a4[10]);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU08(v17, 0);
  BlueFin::GlStream::PutU32(v17, a5);
  for (; a5; --a5)
  {
    BlueFin::GlStream::PutU08(v17, *a6);
    BlueFin::GlStream::PutU08(v17, *(a6 + 1));
    BlueFin::GlStream::PutU08(v17, 0);
    BlueFin::GlStream::PutU08(v17, 0);
    BlueFin::GlStream::PutU32(v17, *(a6 + 4));
    a6 += 8;
  }

  Offset = BlueFin::GlStream::GetOffset(v17);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 1u, v18, Offset);
  v14 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v14)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 100, "esw_gcm_rpc_rf_set_frequency_plan", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 100, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_rf_set_nco_inc(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU32(v10, *a3);
  BlueFin::GlStream::PutU32(v10, a3[1]);
  BlueFin::GlStream::PutU32(v10, a3[2]);
  BlueFin::GlStream::PutU32(v10, a3[3]);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 0, 3u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 117, "esw_gcm_rpc_rf_set_nco_inc", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 117, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_set_burst_mode(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3[2] >= 0x21u)
  {
    v10 = "options->num_dummy_bytes <= MAX_NUMBER_DUMMY_BYTES";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 220, "esw_gcm_rpc_set_burst_mode", "options->num_dummy_bytes <= MAX_NUMBER_DUMMY_BYTES");
    v11 = 220;
    goto LABEL_6;
  }

  v4 = a2;
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, *a3);
  BlueFin::GlStream::PutU08(v12, a3[1]);
  BlueFin::GlStream::PutU08(v12, a3[2]);
  BlueFin::GlStream::PutU08(v12, a3[3]);
  BlueFin::GlStream::PutU08(v12, a3[4]);
  BlueFin::GlStream::PutU08(v12, a3[8]);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(v4, 0, 7u, v13, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 237, "esw_gcm_rpc_set_burst_mode", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 237;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_set_gllrpc_priorities(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v15, v16, 1800, v6);
  BlueFin::GlStream::PutU16(v15, *a3);
  v7 = (*(**(a1 + 8) + 368))();
  if (v7)
  {
    v8 = (a3 + 1);
    v9 = v7;
    do
    {
      v10 = *v8++;
      BlueFin::GlStream::PutU08(v15, v10);
      --v9;
    }

    while (v9);
  }

  BlueFin::GlStream::PutU08(v15, 0);
  Offset = BlueFin::GlStream::GetOffset(v15);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 8u, v16, Offset);
  v12 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v12)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 260, "esw_gcm_rpc_set_gllrpc_priorities", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 260, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_gpio_get(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3 >= 8)
  {
    v10 = "pin < _4753_GPIO_MAX";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 302, "esw_gcm_rpc_gpio_get", "pin < _4753_GPIO_MAX");
    v11 = 302;
    goto LABEL_6;
  }

  v3 = a3;
  v4 = a2;
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, v3);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(v4, 0, 6u, v13, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 311, "esw_gcm_rpc_gpio_get", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 311;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGcmEncImp::esw_gcm_rpc_set_glo_code_fft_table(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v6);
  BlueFin::GlStream::PutU16(v13, *a3);
  BlueFin::GlStream::PutU16(v13, a3[1]);
  if (a3[1])
  {
    v7 = 0;
    v8 = *(a3 + 1);
    do
    {
      BlueFin::GlStream::PutU32(v13, *v8);
      v8 = (*(a3 + 1) + 4);
      *(a3 + 1) = v8;
      ++v7;
    }

    while (v7 < a3[1]);
  }

  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0x11u, v14, Offset);
  v10 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 352, "esw_gcm_rpc_set_glo_code_fft_table", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 352, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcStmEncImp::esw_stm_rpc_echo(BlueFin::CarpEswRpcStmEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned __int8 a3, int a4, unsigned __int8 *a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v9 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v9);
  BlueFin::GlStream::PutU08(v13, a4);
  BlueFin::GlStream::PutStr(v13, a5, a4);
  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(a2, 1, 0, v14, Offset);
  LODWORD(a5) = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < a5)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 367, "esw_stm_rpc_echo", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 367, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_tm_set_suspend_limits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU32(v10, *(a3 + 4));
  BlueFin::GlStream::PutU32(v10, *(a3 + 8));
  BlueFin::GlStream::PutU32(v10, *(a3 + 12));
  BlueFin::GlStream::PutU08(v10, *a3);
  BlueFin::GlStream::PutU08(v10, *(a3 + 16));
  BlueFin::GlStream::PutU16(v10, *(a3 + 18));
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 4, 3u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 466, "esw_jd_rpc_tm_set_suspend_limits", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 466, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_sp_set_all(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  if (v6 >= (*(**(a1 + 8) + 432))(*(a1 + 8)))
  {
    v12 = "sp_param_ptr->sp_id < m_rAsicConfigIfc.GetMaxSearchParamIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 548, "esw_jd_rpc_sp_set_all", "sp_param_ptr->sp_id < m_rAsicConfigIfc.GetMaxSearchParamIndex()");
    v13 = 548;
    goto LABEL_6;
  }

  v7 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v7);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, a3[1]);
  BlueFin::GlStream::PutU16(v14, *(a3 + 2));
  BlueFin::GlStream::PutU16(v14, *(a3 + 4));
  BlueFin::GlStream::PutU16(v14, *(a3 + 6));
  BlueFin::GlStream::CarpPutBits(v14, *(a3 + 7) & 7, 3u, 0x10u);
  BlueFin::GlStream::CarpPutBits(v14, *(a3 + 7) >> 3, 0xDu, 0x10u);
  BlueFin::GlStream::CarpPutBits(v14, a3[17] & 0xF, 4u, 0x10u);
  BlueFin::GlStream::CarpPutBits(v14, *(a3 + 9) & 0x3FF, 0xAu, 0x10u);
  BlueFin::GlStream::CarpPutBits(v14, (*(a3 + 9) >> 10) & 3, 2u, 0x10u);
  BlueFin::GlStream::PutU08(v14, a3[6]);
  BlueFin::GlStream::CarpPutBits(v14, a3[2] & 0x1F, 5u, 8u);
  BlueFin::GlStream::CarpPutBits(v14, a3[2] >> 5, 3u, 8u);
  BlueFin::GlStream::CarpPutBits(v14, a3[10] & 0xF, 4u, 8u);
  BlueFin::GlStream::CarpPutBits(v14, (a3[10] >> 4) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v14, (a3[10] >> 5) & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v14, a3[10] >> 7, 1u, 8u);
  BlueFin::GlStream::PutU08(v14, a3[16]);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0, v15, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 581, "esw_jd_rpc_sp_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 581;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *BlueFin::CarpEswRpcJdEncImp::AddGpModeToStream(unsigned int *a1, uint64_t a2)
{
  BlueFin::GlStream::PutU16(a1, *(a2 + 2));
  BlueFin::GlStream::PutU08(a1, *a2);
  BlueFin::GlStream::PutU08(a1, *(a2 + 1));
  BlueFin::GlStream::PutU08(a1, *(a2 + 4));
  BlueFin::GlStream::PutU08(a1, 0);
  BlueFin::GlStream::PutU08(a1, 0);

  return BlueFin::GlStream::PutU08(a1, 0);
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_bs_set_all(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  if (v6 >= (*(**(a1 + 8) + 440))(*(a1 + 8)))
  {
    v12 = "bs_param_ptr->bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 784, "esw_jd_rpc_bs_set_all", "bs_param_ptr->bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()");
    v13 = 784;
    goto LABEL_6;
  }

  v7 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v7);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, a3[1]);
  BlueFin::GlStream::PutU08(v14, a3[2]);
  BlueFin::GlStream::PutU08(v14, a3[3]);
  BlueFin::GlStream::PutU08(v14, a3[4]);
  BlueFin::GlStream::PutU08(v14, a3[5]);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 1u, v15, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 803, "esw_jd_rpc_bs_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 803;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_tm_set_all(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU08(v10, *a3);
  BlueFin::GlStream::PutU08(v10, a3[1]);
  BlueFin::GlStream::PutU08(v10, a3[2]);
  BlueFin::GlStream::PutU08(v10, a3[3]);
  BlueFin::GlStream::PutU08(v10, a3[4]);
  BlueFin::GlStream::PutU08(v10, a3[5]);
  BlueFin::GlStream::PutU08(v10, a3[6]);
  BlueFin::GlStream::PutU08(v10, 0);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 4, 2u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 826, "esw_jd_rpc_tm_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 826, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_sm_set_all(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  if (v6 >= (*(**(a1 + 8) + 448))(*(a1 + 8)))
  {
    v12 = "sm_param_ptr->sm_id < m_rAsicConfigIfc.GetMaxSearchManagerIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 834, "esw_jd_rpc_sm_set_all", "sm_param_ptr->sm_id < m_rAsicConfigIfc.GetMaxSearchManagerIndex()");
    v13 = 834;
    goto LABEL_6;
  }

  v7 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v7);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, a3[1]);
  BlueFin::GlStream::PutU08(v14, a3[2]);
  BlueFin::GlStream::PutU08(v14, a3[3]);
  BlueFin::GlStream::PutU08(v14, a3[4]);
  BlueFin::GlStream::PutU08(v14, a3[5]);
  BlueFin::GlStream::PutU08(v14, a3[6]);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 4u, v15, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 853, "esw_jd_rpc_sm_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 853;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_move_sats_to_bs(BlueFin::CarpEswRpcJdEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  v10[0] = a3;
  v10[1] = a4;
  v11[0] = a4 + 2;
  v11[1] = ((a4 + 2) >> 2) & 0x40 | 4;
  v11[2] = 9;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v11, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v10, 2u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, a5, a4);
  LODWORD(a5) = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < a5)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 904, "esw_jd_rpc_move_sats_to_bs", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 904, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_move_sats_from_sniff_to_bs(BlueFin::CarpEswRpcJdEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  v10[0] = a3;
  v10[1] = a4;
  v11[0] = a4 + 2;
  v11[1] = ((a4 + 2) >> 2) & 0x40 | 4;
  v11[2] = 11;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v11, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v10, 2u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, a5, a4);
  LODWORD(a5) = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < a5)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 914, "esw_jd_rpc_move_sats_from_sniff_to_bs", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 914, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_init(void **a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, char a5, _WORD *a6, char a7, char a8, char a9)
{
  v14 = a3;
  v28 = *MEMORY[0x29EDCA608];
  if ((*(*a1[1] + 384))(a1[1]) <= a3)
  {
    v24 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 922, "esw_sat_rpc_init", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v25 = 922;
    goto LABEL_10;
  }

  v17 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v26, v27, 1800, v17);
  BlueFin::GlStream::PutU08(v26, v14);
  v18 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *a4);
  if (!v18)
  {
    v24 = "ucImplSvId != INVALID_SVID";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 933, "esw_sat_rpc_init", "ucImplSvId != INVALID_SVID");
    v25 = 933;
    goto LABEL_10;
  }

  BlueFin::GlStream::PutU08(v26, v18);
  BlueFin::GlStream::PutU08(v26, a4[4]);
  BlueFin::GlStream::PutU08(v26, 0);
  BlueFin::GlStream::PutU08(v26, 0);
  BlueFin::GlStream::PutU16(v26, *(a4 + 4));
  BlueFin::GlStream::PutU08(v26, a4[10]);
  BlueFin::GlStream::PutU08(v26, a4[11]);
  BlueFin::GlStream::PutU08(v26, a5);
  BlueFin::GlStream::CarpPutBits(v26, *a6 & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 1) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 2) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 3) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 4) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 5) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 6) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v26, (*a6 >> 7) & 1, 1u, 8u);
  BlueFin::GlStream::PutU08(v26, 0);
  BlueFin::GlStream::PutU08(v26, 0);
  BlueFin::GlStream::PutU08(v26, 0);
  BlueFin::GlStream::PutU08(v26, a7);
  BlueFin::GlStream::PutU08(v26, a8);
  BlueFin::GlStream::PutU08(v26, a9);
  Offset = BlueFin::GlStream::GetOffset(v26);
  if (Offset != ((*a1)[3])(a1))
  {
    v24 = "otStream.GetOffset() == esw_sat_rpc_init_msg_length()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 962, "esw_sat_rpc_init", "otStream.GetOffset() == esw_sat_rpc_init_msg_length()");
    v25 = 962;
    goto LABEL_10;
  }

  v20 = BlueFin::GlStream::GetOffset(v26);
  BlueFin::GlMeSrdTransaction::Add(a2, 6, 0, v27, v20);
  v21 = *(a2 + 32);
  result = (*(*a1[1] + 416))();
  if (result < v21)
  {
    v24 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 965, "esw_sat_rpc_init", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v25 = 965;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v25, v24);
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_set_track_priority(BlueFin::CarpEswRpcSatEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, unsigned __int8 a4)
{
  v5 = a3;
  if ((*(**(this + 1) + 384))(*(this + 1)) <= a3)
  {
    v10 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1009, "esw_sat_rpc_set_track_priority", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v11 = 1009;
    goto LABEL_6;
  }

  v12[0] = v5;
  v12[1] = a4;
  *v13 = 1538;
  v14 = 4;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v13, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v12, 2u);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1014, "esw_sat_rpc_set_track_priority", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 1014;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_set_aid_id(BlueFin::CarpEswRpcSatEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, unsigned __int8 a4)
{
  v5 = a3;
  if ((*(**(this + 1) + 384))(*(this + 1)) <= a3)
  {
    v10 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1021, "esw_sat_rpc_set_aid_id", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v11 = 1021;
    goto LABEL_6;
  }

  v12[0] = v5;
  v12[1] = a4;
  *v13 = 1538;
  v14 = 1;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v13, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v12, 2u);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1026, "esw_sat_rpc_set_aid_id", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 1026;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_set_aiding_control(BlueFin::CarpEswRpcSatEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, unsigned __int8 a4)
{
  v5 = a3;
  if ((*(**(this + 1) + 384))(*(this + 1)) <= a3)
  {
    v10 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1046, "esw_sat_rpc_set_aiding_control", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v11 = 1046;
    goto LABEL_6;
  }

  v12[0] = v5;
  v12[1] = a4;
  *v13 = 1538;
  v14 = 2;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v13, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v12, 2u);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1051, "esw_sat_rpc_set_aiding_control", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 1051;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_set_control_flag(uint64_t a1, uint64_t a2, char a3, _WORD *a4)
{
  v6 = a2;
  v14 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v8);
  BlueFin::GlStream::PutU08(v12, a3);
  BlueFin::GlStream::CarpPutBits(v12, *a4 & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 1) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 2) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 3) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 4) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 5) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 6) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v12, (*a4 >> 7) & 1, 1u, 8u);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(v6, 6, 3u, v13, Offset);
  LODWORD(v6) = v6[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v6)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1088, "esw_sat_rpc_set_control_flag", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1088, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcTimEncImp::esw_tim_rpc_time_capture_disarm(uint64_t a1, uint64_t a2, char a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::PutU08(v11, a3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 1u, v12, Offset);
  v8 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1145, "esw_tim_rpc_time_capture_disarm", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1145, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcTimEncImp::esw_tim_rpc_frequency_capture_arm(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3 != 3)
  {
    v11 = "CAPTURE_PORT_CNTIN == port";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1152, "esw_tim_rpc_frequency_capture_arm", "CAPTURE_PORT_CNTIN == port");
    v12 = 1152;
    goto LABEL_6;
  }

  v5 = a2;
  v7 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v7);
  BlueFin::GlStream::PutU08(v13, 3);
  BlueFin::GlStream::PutU32(v13, a4);
  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(v5, 3, 2u, v14, Offset);
  LODWORD(v5) = v5[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v5)
  {
    v11 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1163, "esw_tim_rpc_frequency_capture_arm", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v12 = 1163;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v12, v11);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcTimEncImp::esw_tim_rpc_frequency_capture_disarm(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a3 != 3)
  {
    v9 = "CAPTURE_PORT_CNTIN == port";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1170, "esw_tim_rpc_frequency_capture_disarm", "CAPTURE_PORT_CNTIN == port");
    v10 = 1170;
    goto LABEL_6;
  }

  v3 = a2;
  v5 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v5);
  BlueFin::GlStream::PutU08(v11, 3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(v3, 3, 3u, v12, Offset);
  LODWORD(v3) = v3[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v3)
  {
    v9 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1180, "esw_tim_rpc_frequency_capture_disarm", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v10 = 1180;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v10, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcTimEncImp::esw_tim_rpc_adjust_measurement_interval(BlueFin::CarpEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2, BlueFin::EswRpcTimIf *a3, unsigned __int8 a4, unsigned int a5, int a6, uint64_t a7, int *a8)
{
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  *v18 = 0;
  v10 = BlueFin::EswRpcTimIf::CalculateMIAdjustmentMs(a3, a4, a5, a6, &v18[4], v18, &v17, a8);
  v16 = 0;
  (*(**(this + 1) + 568))();
  if (v10 < 0)
  {
    v13 = "slAdjustmentMs >= sMinAdjustmentMs";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1291, "ValidateMIAdjustOk", "slAdjustmentMs >= sMinAdjustmentMs");
    v14 = 1291;
    goto LABEL_8;
  }

  if (v10 > v16)
  {
    v13 = "slAdjustmentMs <= sMaxAdjustmentMs";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1292, "ValidateMIAdjustOk", "slAdjustmentMs <= sMaxAdjustmentMs");
    v14 = 1292;
    goto LABEL_8;
  }

  *&v18[4] = 772;
  v18[6] = 7;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, &v18[4], 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v15, 4u);
  v11 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v11)
  {
    v13 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1239, "esw_tim_rpc_adjust_measurement_interval", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v14 = 1239;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v14, v13);
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcTimEncImp::esw_tim_rpc_set_ext_suspend_mode(BlueFin::CarpEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2, char a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::PutU08(v11, a3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 9u, v12, Offset);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1274, "esw_tim_rpc_set_ext_suspend_mode", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1274, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcRmEncImp::esw_rm_rpc_set_search_pivot(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v6);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, a3[1]);
  for (i = 2; i != 22; ++i)
  {
    BlueFin::GlStream::PutU08(v14, a3[i]);
  }

  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, a3[22]);
  v8 = 0;
  v9 = a3 + 23;
  do
  {
    BlueFin::GlStream::PutU08(v14, v9[v8++]);
  }

  while (v8 != 20);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 5, 4u, v15, Offset);
  v11 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v11)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1410, "esw_rm_rpc_set_search_pivot", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1410, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcRmEncImp::esw_rm_rpc_query_resources(BlueFin::CarpEswRpcRmEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  *v5 = 1280;
  v6 = 0;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v5, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(v2, 0, 0);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1417, "esw_rm_rpc_query_resources", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1417, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcRmEncImp::esw_rm_rpc_query_loading(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU08(v10, *a3);
  BlueFin::GlStream::PutU08(v10, a3[4]);
  BlueFin::GlStream::PutU08(v10, a3[8]);
  BlueFin::GlStream::PutU08(v10, a3[9]);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 5, 2u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1434, "esw_rm_rpc_query_loading", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1434, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcRmEncImp::esw_rm_rpc_get_usage(BlueFin::CarpEswRpcRmEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  *v5 = 1280;
  v6 = 3;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v5, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(v2, 0, 0);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1441, "esw_rm_rpc_get_usage", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1441, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_set_areas(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v16 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v8);
  BlueFin::GlStream::PutU08(v14, v5);
  if (v5)
  {
    v5 = v5;
    v9 = a4 + 8;
    do
    {
      BlueFin::GlStream::PutU08(v14, *(v9 - 8));
      BlueFin::GlStream::PutU08(v14, *(v9 + 8));
      BlueFin::GlStream::PutU08(v14, 0);
      BlueFin::GlStream::PutU08(v14, 0);
      BlueFin::GlStream::PutF32(v14, *(v9 - 4));
      BlueFin::GlStream::PutF32(v14, *v9);
      BlueFin::GlStream::PutF32(v14, *(v9 + 4));
      v9 += 20;
      --v5;
    }

    while (v5);
  }

  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 7, 1u, v15, Offset);
  v11 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v11)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1465, "geo_mgr_rpc_set_areas", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1465, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_unset_areas(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2, int a3, char *a4)
{
  LODWORD(v5) = a3;
  v16 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v8);
  BlueFin::GlStream::PutU08(v14, v5);
  if (v5)
  {
    v5 = v5;
    do
    {
      v9 = *a4++;
      BlueFin::GlStream::PutU08(v14, v9);
      --v5;
    }

    while (v5);
  }

  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 7, 2u, v15, Offset);
  v11 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v11)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1483, "geo_mgr_rpc_unset_areas", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1483, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_set_geo_sv_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v6);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, *(a3 + 1));
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutS32(v14, *(a3 + 4));
  v7 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(a3 + 8));
  if (!v7)
  {
    v12 = "ucImplSvId != INVALID_SVID";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1499, "geo_mgr_rpc_set_geo_sv_info", "ucImplSvId != INVALID_SVID");
    v13 = 1499;
    goto LABEL_6;
  }

  BlueFin::GlStream::PutU08(v14, v7);
  BlueFin::GlStream::PutU08(v14, *(a3 + 12));
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU16(v14, *(a3 + 16));
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 7, 3u, v15, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1509, "geo_mgr_rpc_set_geo_sv_info", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 1509;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_unset_geo_sv_info(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2, int a3, char *a4)
{
  LODWORD(v5) = a3;
  v16 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v8);
  BlueFin::GlStream::PutU08(v14, v5);
  if (v5)
  {
    v5 = v5;
    do
    {
      v9 = *a4++;
      BlueFin::GlStream::PutU08(v14, v9);
      --v5;
    }

    while (v5);
  }

  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 7, 4u, v15, Offset);
  v11 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v11)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1527, "geo_mgr_rpc_unset_geo_sv_info", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1527, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_set_satposmodel(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a3 > 0x14)
  {
    v16 = "num_pos_model <= GEO_MAX_SATPOSMODEL_ITEMS";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1546, "geo_mgr_rpc_set_satposmodel", "num_pos_model <= GEO_MAX_SATPOSMODEL_ITEMS");
    v17 = 1546;
    goto LABEL_13;
  }

  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = a4;
    v9 = a3;
    while (1)
    {
      v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
      BlueFin::GlStream::GlStream(v18, v19, 1800, v10);
      BlueFin::GlStream::PutU08(v18, 1);
      v11 = a4 + 60 * v7;
      BlueFin::GlStream::PutU08(v18, *v11);
      BlueFin::GlStream::PutU08(v18, 0);
      BlueFin::GlStream::PutU16(v18, *(v11 + 56));
      for (i = 4; i != 16; i += 4)
      {
        BlueFin::GlStream::PutF32(v18, *(v8 + i));
      }

      do
      {
        BlueFin::GlStream::PutF32(v18, *(v8 + i));
        i += 4;
      }

      while (i != 28);
      do
      {
        BlueFin::GlStream::PutF32(v18, *(v8 + i));
        i += 4;
      }

      while (i != 40);
      do
      {
        BlueFin::GlStream::PutF32(v18, *(v8 + i));
        i += 4;
      }

      while (i != 52);
      BlueFin::GlStream::PutU32(v18, *(v11 + 52));
      Offset = BlueFin::GlStream::GetOffset(v18);
      BlueFin::GlMeSrdTransaction::Add(a2, 7, 5u, v19, Offset);
      v14 = *(a2 + 32);
      result = (*(**(v6 + 8) + 416))();
      if (result < v14)
      {
        break;
      }

      ++v7;
      v8 += 60;
      if (v7 == v9)
      {
        goto LABEL_11;
      }
    }

    v16 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1561, "geo_mgr_rpc_set_satposmodel", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v17 = 1561;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v17, v16);
  }

LABEL_11:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_set_mode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU08(v10, *a3);
  BlueFin::GlStream::PutU08(v10, *(a3 + 1));
  BlueFin::GlStream::PutU08(v10, *(a3 + 6));
  BlueFin::GlStream::PutU08(v10, *(a3 + 16));
  BlueFin::GlStream::PutU16(v10, *(a3 + 2));
  BlueFin::GlStream::PutU16(v10, *(a3 + 4));
  BlueFin::GlStream::PutU16(v10, *(a3 + 8));
  BlueFin::GlStream::PutU16(v10, *(a3 + 10));
  BlueFin::GlStream::PutU16(v10, *(a3 + 12));
  BlueFin::GlStream::PutU08(v10, *(a3 + 20));
  BlueFin::GlStream::PutU08(v10, *(a3 + 21));
  BlueFin::GlStream::PutU08(v10, *(a3 + 22));
  BlueFin::GlStream::PutU08(v10, *(a3 + 23));
  BlueFin::GlStream::PutU16(v10, *(a3 + 24));
  BlueFin::GlStream::PutU32(v10, *(a3 + 28));
  BlueFin::GlStream::PutU08(v10, *(a3 + 32));
  BlueFin::GlStream::PutU08(v10, *(a3 + 36));
  BlueFin::GlStream::PutU08(v10, 0);
  BlueFin::GlStream::PutU08(v10, 0);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 7, 7u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1594, "geo_mgr_rpc_set_mode", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1594, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_set_ref_pos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU32(v10, *a3);
  BlueFin::GlStream::PutF32(v10, *(a3 + 4));
  BlueFin::GlStream::PutF32(v10, *(a3 + 8));
  BlueFin::GlStream::PutF32(v10, *(a3 + 12));
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 7, 0, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1611, "geo_mgr_rpc_set_ref_pos", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1611, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_unset_satposmodel(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, char *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3 >= 0x15)
  {
    v14 = "num_sats <= GEO_MAX_SATPOSMODEL_ITEMS";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1621, "geo_mgr_rpc_unset_satposmodel", "num_sats <= GEO_MAX_SATPOSMODEL_ITEMS");
    v15 = 1621;
    goto LABEL_9;
  }

  LODWORD(v5) = a3;
  v8 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v16, v17, 1800, v8);
  BlueFin::GlStream::PutU08(v16, v5);
  if (v5)
  {
    v5 = v5;
    do
    {
      v9 = *a4++;
      BlueFin::GlStream::PutU08(v16, v9);
      --v5;
    }

    while (v5);
  }

  Offset = BlueFin::GlStream::GetOffset(v16);
  BlueFin::GlMeSrdTransaction::Add(a2, 7, 6u, v17, Offset);
  v11 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v11)
  {
    v14 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1629, "geo_mgr_rpc_unset_satposmodel", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v15 = 1629;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v15, v14);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_dump_fixes(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  *v5 = 1792;
  v6 = 8;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v5, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(v2, 0, 0);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1636, "geo_mgr_rpc_dump_fixes", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1636, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_request_state(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  *v5 = 1792;
  v6 = 9;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v5, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(v2, 0, 0);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1643, "geo_mgr_rpc_request_state", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1643, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_send_areas_state(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  *v5 = 1792;
  v6 = 10;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v5, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(v2, 0, 0);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1650, "geo_mgr_rpc_send_areas_state", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1650, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcGeomgrEncImp::geo_mgr_rpc_send_set_of_msmsts(BlueFin::CarpEswRpcGeomgrEncImp *this, BlueFin::GlMeSrdTransaction *a2, char a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::PutU08(v11, a3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(a2, 7, 0xBu, v12, Offset);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1663, "geo_mgr_rpc_send_set_of_msmsts", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", 1663, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcSatEncImp::esw_sat_rpc_set_aid_id_multi_carr(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v7 = a3;
  if ((*(**(a1 + 8) + 384))(*(a1 + 8)) <= a3)
  {
    v12 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 162, "esw_sat_rpc_set_aid_id_multi_carr", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v13 = 162;
    goto LABEL_6;
  }

  v14[0] = v7;
  v14[1] = a4;
  v14[2] = a5;
  *v15 = 1539;
  v16 = 8;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v15, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v14, 3u);
  v10 = a2[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 167, "esw_sat_rpc_set_aid_id_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 167;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v13, v12);
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcJdEncImp::esw_jd_rpc_band_noise_set_all(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU32(v10, *a3);
  BlueFin::GlStream::PutU32(v10, a3[1]);
  BlueFin::GlStream::PutU32(v10, a3[2]);
  BlueFin::GlStream::PutU32(v10, a3[3]);
  BlueFin::GlStream::PutU32(v10, a3[4]);
  BlueFin::GlStream::PutU32(v10, a3[5]);
  BlueFin::GlStream::PutU32(v10, a3[6]);
  BlueFin::GlStream::PutU32(v10, a3[7]);
  BlueFin::GlStream::PutU32(v10, a3[8]);
  BlueFin::GlStream::PutU32(v10, a3[9]);
  BlueFin::GlStream::PutU32(v10, a3[10]);
  BlueFin::GlStream::PutU32(v10, a3[11]);
  BlueFin::GlStream::PutU32(v10, a3[12]);
  BlueFin::GlStream::PutU32(v10, a3[13]);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 4, 0xEu, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 479, "esw_jd_rpc_band_noise_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 479, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcGcmEncImp::esw_gcm_rpc_rf_set_frequency_plan_multi_carr(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, char a7, char a8, char a9)
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
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 585, "esw_gcm_rpc_rf_set_frequency_plan_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 585, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcGcmEncImp::esw_gcm_rpc_rf_set_dr_init(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6, uint64_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v14 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v19, v20, 1800, v14);
  BlueFin::GlStream::PutU08(v19, a3);
  BlueFin::GlStream::PutU08(v19, a4);
  BlueFin::GlStream::PutU08(v19, a5);
  BlueFin::GlStream::PutU08(v19, a6);
  for (; a3; --a3)
  {
    BlueFin::GlStream::PutU08(v19, *a7);
    BlueFin::GlStream::PutU08(v19, 0);
    BlueFin::GlStream::PutU16(v19, *(a7 + 2));
    BlueFin::GlStream::PutU32(v19, *(a7 + 4));
    a7 += 8;
  }

  Offset = BlueFin::GlStream::GetOffset(v19);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0x14u, v20, Offset);
  v16 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v16)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 613, "esw_gcm_rpc_rf_set_dr_init", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 613, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcGcmEncImp::esw_gcm_rpc_rf_set_nco_inc_multi_carr(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU32(v10, *a3);
  BlueFin::GlStream::PutU32(v10, a3[1]);
  BlueFin::GlStream::PutU32(v10, a3[2]);
  BlueFin::GlStream::PutU32(v10, a3[3]);
  BlueFin::GlStream::PutU32(v10, a3[4]);
  BlueFin::GlStream::PutU32(v10, a3[5]);
  BlueFin::GlStream::PutU32(v10, a3[6]);
  BlueFin::GlStream::PutU32(v10, a3[7]);
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 0, 0x13u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 634, "esw_gcm_rpc_rf_set_nco_inc_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 634, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcGcmEncImp::esw_gcm_rpc_mem_dump_request(BlueFin::PikeEswRpcGcmEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::PutU16(v11, a3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(a2, 0, 0xEu, v12, Offset);
  v8 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 648, "esw_gcm_rpc_mem_dump_request", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 648, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcStmEncImp::esw_stm_rpc_iq_dump_request(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v12 = *MEMORY[0x29EDCA608];
  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v10, v11, 1800, v6);
  BlueFin::GlStream::PutU08(v10, *a3);
  BlueFin::GlStream::PutU08(v10, *(a3 + 4));
  BlueFin::GlStream::PutU08(v10, 0);
  BlueFin::GlStream::PutU08(v10, 0);
  BlueFin::GlStream::PutU32(v10, 0);
  BlueFin::GlStream::PutU32(v10, *(a3 + 12));
  Offset = BlueFin::GlStream::GetOffset(v10);
  BlueFin::GlMeSrdTransaction::Add(v4, 1, 1u, v11, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v4)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 665, "esw_stm_rpc_iq_dump_request", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 665, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcHrmEncImp::esw_hrm_rpc_get(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a3 >= 11)
  {
    v12 = "eSegment <= ARAD";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 674, "esw_hrm_rpc_get", "eSegment <= ARAD");
    v13 = 674;
    goto LABEL_6;
  }

  v5 = a3;
  v6 = a2;
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v8);
  BlueFin::GlStream::PutU08(v14, v5);
  BlueFin::GlStream::PutU32(v14, a4);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(v6, 2, 0, v15, Offset);
  LODWORD(v6) = v6[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v6)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 684, "esw_hrm_rpc_get", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 684;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcHrmEncImp::esw_hrm_rpc_set_masked(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a3 >= 11)
  {
    v16 = "eSegment <= ARAD";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 709, "esw_hrm_rpc_set_masked", "eSegment <= ARAD");
    v17 = 709;
    goto LABEL_6;
  }

  v9 = a3;
  v10 = a2;
  v12 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v18, v19, 1800, v12);
  BlueFin::GlStream::PutU08(v18, v9);
  BlueFin::GlStream::PutU32(v18, a4);
  BlueFin::GlStream::PutU32(v18, a5);
  BlueFin::GlStream::PutU32(v18, a6);
  Offset = BlueFin::GlStream::GetOffset(v18);
  BlueFin::GlMeSrdTransaction::Add(v10, 2, 6u, v19, Offset);
  LODWORD(v10) = v10[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    v16 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 721, "esw_hrm_rpc_set_masked", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v17 = 721;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v17, v16);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_pps_setup(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 5, v8);
  BlueFin::GlStream::PutU32(v12, a3 | 0x80000000);
  BlueFin::GlStream::PutU08(v12, a4);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 4u, v13, Offset);
  v10 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 740, "esw_tim_rpc_pps_setup", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 740, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_pps_program(BlueFin::PikeEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, unsigned int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v13, v14, 8, v8);
  BlueFin::GlStream::PutU32(v13, a3);
  BlueFin::GlStream::PutU32(v13, a4);
  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 5u, v14, Offset);
  v10 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v10)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 751, "esw_tim_rpc_pps_program", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 751, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_pps_stop(BlueFin::PikeEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x29EDCA608];
  v4 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v8, v9, 8, v4);
  Offset = BlueFin::GlStream::GetOffset(v8);
  BlueFin::GlMeSrdTransaction::Add(v2, 3, 6u, v9, Offset);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 760, "esw_tim_rpc_pps_stop", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 760, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_set_esw_poll(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a3[1] >= 9u)
  {
    v12 = "p_poll_params->num_addr <= 8";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 769, "esw_tim_rpc_set_esw_poll", "p_poll_params->num_addr <= 8");
    v13 = 769;
    goto LABEL_9;
  }

  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v6);
  BlueFin::GlStream::PutU08(v14, *a3);
  BlueFin::GlStream::PutU08(v14, a3[1]);
  BlueFin::GlStream::PutU08(v14, 0);
  BlueFin::GlStream::PutU08(v14, 0);
  if (a3[1])
  {
    v7 = 0;
    do
    {
      BlueFin::GlStream::PutU32(v14, *&a3[4 * v7++ + 4]);
    }

    while (v7 < a3[1]);
  }

  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 0xBu, v15, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 785, "esw_tim_rpc_set_esw_poll", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 785;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v13, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::PikeEswRpcJdEncImp::esw_jd_rpc_tm_set_mpf_params(uint64_t a1, uint64_t a2, char a3, char a4, unint64_t a5)
{
  v8 = a2;
  v16 = *MEMORY[0x29EDCA608];
  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v14, v15, 1800, v10);
  BlueFin::GlStream::PutU08(v14, a3);
  BlueFin::GlStream::PutU08(v14, a4);
  BlueFin::GlStream::PutU16(v14, 0);
  BlueFin::GlStream::CarpPutBits(v14, a5 & 7, 3u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v14, a5 >> 3, 5u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v14, (a5 >> 8) & 0x1F, 5u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v14, (a5 >> 13) & 0x1F, 5u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v14, (a5 >> 18) & 0x3F, 6u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v14, BYTE3(a5) & 0x7F, 7u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v14, (a5 >> 31) & 1, 1u, 0x20u);
  Offset = BlueFin::GlStream::GetOffset(v14);
  BlueFin::GlMeSrdTransaction::Add(v8, 4, 0x10u, v15, Offset);
  LODWORD(v8) = v8[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 911, "esw_jd_rpc_tm_set_mpf_params", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 911, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeHeartbeatData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v13 = *MEMORY[0x29EDCA608];
  if (v3 && v3 != 3)
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 90, "SerializeImpl", "ucVersion >= 3 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 90, "ucVersion >= 3 && ucVersion <= 3");
  }

  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 7;
    v10 = 3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F09520;
    v12 = 3;
    BlueFin::GlSysLogEntry::PutU32(&v8, *(v1 + 28));
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v5 + 8));
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v5 + 36));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v5 + 38));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlMeHeartbeatData::Deserialize(BlueFin::GlMeHeartbeatData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 7 || (*(a2 + 12) & 0xFE) != 2)
  {
    return 0;
  }

  *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
  *v5.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 1) = v5.i64[0];
  *v5.i64 = *v5.i64 * 1000.0;
  *v6.i64 = *v5.i64 + trunc(*v5.i64 * 2.32830644e-10) * -4294967300.0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  *&v9 = vbslq_s8(v8, v6, v5).u64[0];
  if (*v5.i64 > 4294967300.0)
  {
    *v5.i64 = v9;
  }

  if (*v5.i64 < -4294967300.0)
  {
    *v4.i64 = -*v5.i64;
    *v5.i64 = -(*v5.i64 - trunc(*v5.i64 * -2.32830644e-10) * -4294967300.0);
    *v5.i64 = -*vbslq_s8(v8, v5, v4).i64;
  }

  if (*v5.i64 < 0.0)
  {
    v10 = --*v5.i64;
  }

  else
  {
    v10 = *v5.i64;
  }

  *(this + 6) = v10;
  *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) >= 3u)
  {
    *(this + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 19) = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 131, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 131, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlMeResourceData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v17 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = 4;
    }

    if (v6 - 5 <= 0xFFFFFFFC)
    {
      DeviceFaultNotify("glme_heartbeat_data.cpp", 161, "SerializeImpl", "ucVersion >= 2 && ucVersion <= 4");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 161, "ucVersion >= 2 && ucVersion <= 4");
    }

    v13 = 78;
    v14 = v6;
    v15 = 0x1000000000000;
    v12 = &unk_2A1F092C0;
    v16 = v6;
    v7 = (v1 + 8);
    BlueFin::GlSysLogEntry::PutU8(&v12, *(v1 + 8));
    if (*v7)
    {
      v8 = 0;
      v9 = 15;
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9 - 15));
        BlueFin::GlSysLogEntry::PutU8(&v12, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(*(v5 + 48) + v9 - 14)));
        BlueFin::GlSysLogEntry::PutU32(&v12, *(*(v5 + 48) + v9 - 11));
        BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9 - 7));
        BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9 - 6));
        BlueFin::GlSysLogEntry::PutU16(&v12, *(*(v5 + 48) + v9 - 5));
        BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9 - 3));
        if (v6 > 2)
        {
          BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9 - 2));
          BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9 - 1));
          if (v6 != 3)
          {
            BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v5 + 48) + v9));
          }
        }

        ++v8;
        v9 += 16;
      }

      while (v8 < *(v5 + 8));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v12, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}