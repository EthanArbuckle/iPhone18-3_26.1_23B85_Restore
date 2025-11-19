__n128 BlueFin::GlMeDspMeasListener::SetTrkMeasSet(BlueFin::GlMeDspMeasListener *this, BlueFin::GlSignalIdSet *a2)
{
  v3 = *(this + 1);
  BlueFin::GlSetBase::operator=(v3 + 11432, a2);
  *(v3 + 11444) = *(a2 + 12);
  result = *(a2 + 28);
  v5 = *(a2 + 44);
  v6 = *(a2 + 60);
  *(v3 + 11504) = *(a2 + 72);
  *(v3 + 11476) = v5;
  *(v3 + 11492) = v6;
  *(v3 + 11460) = result;
  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdCtrlSm::normal(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    v8 = *(a1 + 120);
    if (!v8)
    {
      v8 = *(a1 + 112);
    }

    v9 = (*(**(a1 + 184) + 16))(*(a1 + 184));
    (*(*v8 + 144))(v8, v9);
    (*(**(a1 + 128) + 8))(*(a1 + 128));
  }

  else
  {
    result = BlueFin::GlMeSrdCtrlSm::running;
    if (v3 != 2)
    {
      return result;
    }

    (***(a1 + 128))(*(a1 + 128));
    (*(**(a1 + 184) + 32))(*(a1 + 184), *(a1 + 3544));
    v5 = *(a1 + 120);
    if (!v5)
    {
      v5 = *(a1 + 112);
    }

    v6 = (*(**(a1 + 184) + 16))(*(a1 + 184));
    (*(*v5 + 136))(v5, v6);
    v7 = *(a1 + 136);
    if (v7[1206] == 1)
    {
      v10 = 0;
      (*(*v7 + 216))(v7, &v10 + 1, &v10);
      BlueFin::GlMeSrdCtrlSm::SetMeasurementIntervalMs(a1, (1000 * HIBYTE(v10)), (1000 * v10));
    }
  }

  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::running(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (v3 > 0x18)
  {
    if (*a2 > 0x3Bu)
    {
      if (v3 != 60)
      {
        if (v3 == 61)
        {
          v13 = *(this + 15);
          if (!v13)
          {
            v13 = *(this + 14);
          }

          v14 = (*(*v13 + 80))(v13);
          v22[0] = 0;
          v22[1] = 0;
          v23 = 0;
          v24 = 1;
          v25 = v14;
          v26 = 0;
          v27 = 0;
          (*(*v14 + 16))(v14, 1);
          v20 = 0;
          v21 = 0;
          (*(**(this + 17) + 1416))();
          v15 = *(this + 15);
          if (!v15)
          {
            v15 = *(this + 14);
          }

          v16 = (*(*v15 + 208))(v15);
          v17 = (*(*v16 + 32))(v16);
          (*(*v17 + 40))(v17, v22, v21, HIBYTE(v20), BYTE2(v20), BYTE1(v20), v20, v28);
          BlueFin::GlMeSrdTransaction::Complete(v22);
          v10 = v22;
          goto LABEL_31;
        }

        if (v3 == 62)
        {
          v4 = *(this + 15);
          if (!v4)
          {
            v4 = *(this + 14);
          }

          v5 = (*(*v4 + 80))(v4);
          v28[0] = 0;
          v28[1] = 0;
          v29 = 0;
          v30 = 1;
          v31 = v5;
          v32 = 0;
          v33 = 0;
          (*(*v5 + 16))(v5, 1);
          v6 = *(this + 15);
          if (!v6)
          {
            v6 = *(this + 14);
          }

          v7 = (*(*v6 + 208))(v6);
          v8 = (*(*v7 + 24))(v7);
          v9 = (*(**(this + 17) + 1192))(*(this + 17));
          (*(*v8 + 32))(v8, v28, *(v9 + 1));
          BlueFin::GlMeSrdTransaction::Complete(v28);
          v10 = v28;
LABEL_31:
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v10);
          goto LABEL_32;
        }

LABEL_34:
        result = BlueFin::GlMeSrdCtrlSm::my_top;
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v3 != 25)
    {
      if (v3 != 37)
      {
        goto LABEL_34;
      }

      BlueFin::GlMeSrdCtrlSm::SetBlankingConfig(this);
      goto LABEL_32;
    }

    v11 = "&GlMeSrdCtrlSm::wait4standby";
    v12 = BlueFin::GlMeSrdCtrlSm::wait4standby;
LABEL_25:
    BlueFin::QHsm::tran(this, v12, v11);
    goto LABEL_32;
  }

  if (*a2 > 4u)
  {
    if (v3 == 5)
    {
      v11 = "&GlMeSrdCtrlSm::com_breakdown";
      v12 = BlueFin::GlMeSrdCtrlSm::com_breakdown;
    }

    else
    {
      if (v3 != 21)
      {
        goto LABEL_34;
      }

      v11 = "&GlMeSrdCtrlSm::wait4memdump";
      v12 = BlueFin::GlMeSrdCtrlSm::wait4memdump;
    }

    goto LABEL_25;
  }

  if (v3 == 2)
  {
    BlueFin::GlMeSrdCtrlSm::SetBlankingConfig(this);
LABEL_22:
    BlueFin::GlMeSrdCtrlSm::UpdateLteFilter(this);
    goto LABEL_32;
  }

  if (v3 != 3)
  {
    goto LABEL_34;
  }

LABEL_32:
  result = 0;
LABEL_33:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2987BC224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

unint64_t BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat(BlueFin::GlMeSrdMeasTimingMgr *this, unsigned int a2)
{
  if (*(this + 73) >= a2)
  {
    DeviceFaultNotify("glmesrd_meas_timing_mgr.cpp", 78, "SetHeartBeat", "ulLms > m_ulPreviousHeartbeatMs");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_meas_timing_mgr.cpp", 78, "ulLms > m_ulPreviousHeartbeatMs");
  }

  v3 = *(this + 72);
  *(this + 73) = v3;
  *(this + 75) = v3;
  *(this + 72) = a2;
  v6 = 47;
  v4 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(result, this, &v6, &v7))
    {
      result = v7;
    }

    else
    {
      result = (*(this + 4))(this, &v6);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v4;
  return result;
}

unsigned __int8 *BlueFin::GlMeSrdStats::SetHeartbeatMs(int32x2_t *this, __int32 a2)
{
  this[1].i32[0] = a2;
  v3 = (*(**this + 72))(*this);
  v4 = *(v3 + 44);
  v5 = *(v3 + 28);
  this[10].i32[0] = *(v3 + 60);
  *this[6].i8 = v5;
  *this[8].i8 = v4;
  v6 = *(v3 + 4);
  v7 = this[114].i32[0] + *v3;
  v8 = *(v3 + 8);
  this[2].i32[1] = this[114].i32[1] + *(v3 + 12);
  v9 = this[115].i32[0] + v8;
  this[5].i32[0] = this[113].i32[0] + v6;
  this[5].i32[1] = v7;
  v10 = this[113].i32[1] + *(v3 + 16);
  this[1].i32[1] = v9;
  this[2].i32[0] = v10;
  this[4] = vrev64_s32(*(v3 + 20));

  return BlueFin::GlIQSnrStatsMgr::UpdateSnrStats(&this[196], &this[101] + 4);
}

uint64_t BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms(BlueFin::GlMeSrdMeasTimingMgr *this)
{
  if (*(this + 304) == 1)
  {
    v1 = this + 308;
    v2 = *(this + 77) - *(this + 72);
    if ((v2 - 201) <= 0xFFFFFE6E)
    {
      GlCustomLog(11, "ERROR: GlMeSrdMeasTimingMgr::GetReportingLms(%u), pending (%d)\n", *(this + 77), v2);
    }
  }

  else
  {
    v1 = this + 288;
  }

  return *v1;
}

unsigned __int8 *BlueFin::GlIQSnrStatsMgr::UpdateSnrStats(unsigned __int8 *result, uint64_t a2)
{
  v3 = result + 36864;
  v75 = &v77;
  v76 = 19;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  memset(v80, 0, 28);
  v4 = *(result + 5020);
  v5 = (v4 + 10020);
  v6 = 4;
  do
  {
    if (*(v5 - 5))
    {
      *(&v77 + (*v5 >> 5)) |= 1 << *v5;
    }

    v5 += 5020;
    --v6;
  }

  while (v6);
  v7 = 0;
  v8 = 84;
  do
  {
    v9 = *(&v75 + v8);
    if (v9)
    {
      v10 = v9 - (((v9 >> 1) & 0x5B6DB6DB) + ((v9 >> 2) & 0x9249249));
      v11 = (v10 + (v10 >> 3)) & 0xC71C71C7;
      v12 = (68174085 * v11) >> 32;
      result = (v11 - v12);
      v7 = v11 + v7 - 63 * ((v12 + (result >> 1)) >> 5);
    }

    v13 = v8 > 0xF;
    v8 -= 4;
  }

  while (v13);
  if (v7)
  {
    v14 = 0;
    v15 = 84;
    do
    {
      v16 = *(&v75 + v15);
      if (v16)
      {
        v17 = v16 - (((v16 >> 1) & 0x5B6DB6DB) + ((v16 >> 2) & 0x9249249));
        v18 = (v17 + (v17 >> 3)) & 0xC71C71C7;
        v19 = (68174085 * v18) >> 32;
        result = (v18 - v19);
        v14 = v18 + v14 - 63 * ((v19 + (result >> 1)) >> 5);
      }

      v13 = v15 > 0xF;
      v15 -= 4;
    }

    while (v13);
    if (v14 <= 4u)
    {
      v20 = *(v3 + 414);
      if (v20)
      {
        v71 = v77;
        v72 = v78;
        v73 = v79;
        *v74 = v80[0];
        *&v74[12] = *(v80 + 12);
        v70[0] = 19;
        v70[1] = v77;
        result = BlueFin::GlSetIterator::operator++(v70);
        if (BYTE1(v70[0]) != LOBYTE(v70[0]))
        {
          v21 = 2.0;
          v22 = -2.0;
          while (1)
          {
            if (HIWORD(v70[0]) >= 0x23FuLL)
            {
              DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
            }

            v23 = 0;
            v24 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v70[0]);
            v25 = *v24;
            v26 = v24[1];
            v27 = 4;
            v28 = 10032;
            while (!*(v4 + v28 - 32) || *(v4 + v28 - 20) != v25 || *(v4 + v28 - 16) != v26)
            {
              v28 += 10040;
              v23 += 10040;
              if (!--v27)
              {
                goto LABEL_25;
              }
            }

            v29 = BlueFin::GlSvId::s_aucSvId2gnss[v25];
            v30 = (*(*v20[1] + 16))(v20[1]);
            (*(**v20 + 40))(*v20, v30, v29, v26);
            if (v26 <= 1u)
            {
              break;
            }

            if (v26 != 2)
            {
              if (v26 == 3)
              {
                v32 = 0;
                goto LABEL_38;
              }

LABEL_36:
              v32 = 9;
              goto LABEL_38;
            }

            v32 = 4;
LABEL_38:
            v20 = *(v3 + 414);
            v4 = *(v3 + 412);
            if (*(v4 + v28 - 32))
            {
              v33 = 10004;
              if (*(v4 + v28))
              {
                v33 = 10008;
              }

              v34 = *(v4 + v33 + v23);
              if (v34)
              {
                v35 = (v4 + v23);
                v36 = 0.0;
                v37 = v34;
                v38 = 0.0;
                v39 = 0.0;
                v40 = (v4 + v23);
                do
                {
                  v41 = *v40++;
                  v42 = v41 * v41 + v35[5000] * v35[5000];
                  v36 = v36 + sqrt(v42);
                  v39 = v39 + v42;
                  v38 = v38 + v42 * v42;
                  v35 = v40;
                  --v37;
                }

                while (v37);
                v43 = v34;
                v44 = v36 / v34;
                v45 = (v4 + v23);
                v46 = 0.0;
                v47 = (v4 + v23);
                do
                {
                  v48 = *v47++;
                  v49 = sqrt(v48 * v48 + v45[5000] * v45[5000]);
                  v46 = v46 + (v49 - v44) * (v49 - v44);
                  v45 = v47;
                  --v34;
                }

                while (v34);
                v50 = v39 / v43;
              }

              else
              {
                v43 = 0.0;
                v50 = NAN;
                v38 = 0.0;
                v46 = 0.0;
              }

              v51 = -v38 / v43 + v50 * v50 * v21;
              if (v51 <= 0.0)
              {
                v54 = *(v4 + v28 - 8);
                v55 = 0.0;
                v58 = 0.0;
                v57 = 0.0;
              }

              else
              {
                v69 = v31;
                v52 = *(v20[31] + 24 * v32 + 8);
                v53 = sqrt(v51);
                v54 = *(v4 + v28 - 8);
                v55 = 0.0;
                if (v53 > 0.0)
                {
                  v56 = (v50 - v53) * v54;
                  if (v56 > 0.0)
                  {
                    v55 = log10(v53 / v56) * 10.0;
                  }
                }

                v57 = 0.0;
                v58 = 0.0;
                if (v53 > 0.0)
                {
                  v59 = v54 * (v54 * v52) * 1000.0;
                  if (v59 > 0.0)
                  {
                    v60 = log10(v53 / v59);
                    v57 = 0.0;
                    v58 = v60 * 10.0;
                  }
                }

                if (v53 <= 0.0)
                {
                  v21 = 2.0;
                  v22 = -2.0;
                }

                else
                {
                  v61 = v54 * (v54 * v69) * 1000.0;
                  v22 = -2.0;
                  if (v61 > 0.0)
                  {
                    v57 = log10(v53 / v61) * 10.0;
                  }

                  v21 = 2.0;
                }
              }

              v62 = v50 + v46 / v43 * v22;
              if (v62 > 0.0)
              {
                v63 = (v46 / v43 + v46 / v43) * v54;
                if (v63 > 0.0)
                {
                  v64 = v57;
                  v65 = log10(v62 / v63);
                  if (v55 > 0.0)
                  {
                    v66 = v65 * 10.0;
                    if (v66 > 0.0)
                    {
                      *a2 = 1;
                      *(a2 + 1) = *(v4 + v28 - 20);
                      *(a2 + 2) = *(v4 + v28 - 16);
                      v67 = v55;
                      v68 = v66;
                      *(a2 + 4) = v67;
                      *(a2 + 8) = v68;
                      *(a2 + 12) = v58;
                      *(a2 + 16) = v64;
                    }
                  }
                }
              }
            }

            a2 += 20;
LABEL_25:
            result = BlueFin::GlSetIterator::operator++(v70);
            if (BYTE1(v70[0]) == LOBYTE(v70[0]))
            {
              return result;
            }
          }

          if (v26)
          {
            if (v26 == 1)
            {
              v32 = 5;
              goto LABEL_38;
            }
          }

          else if (v29 < 7)
          {
            v32 = qword_298A355B0[v29];
            goto LABEL_38;
          }

          goto LABEL_36;
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgPeIf::SetPlatfStats(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (!a2)
  {
    return (*(*result + 104))(result, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_glpeif.cpp:321");
  }

  *(result + 580) = 1;
  if (*(result + 576) != 1)
  {
    return (*(**(a1 + 16) + 176))();
  }

  return result;
}

uint64_t BlueFin::GlMePlatfStat::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 222) = *(a2 + 222);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 884) = *(a2 + 884);
  *(a1 + 888) = *(a2 + 888);
  memcpy((a1 + 224), (a2 + 224), 0x190uLL);
  v7 = *(a2 + 640);
  v6 = *(a2 + 656);
  v8 = *(a2 + 624);
  *(a1 + 668) = *(a2 + 668);
  *(a1 + 640) = v7;
  *(a1 + 656) = v6;
  *(a1 + 624) = v8;
  v9 = *(a2 + 684);
  v10 = *(a2 + 700);
  v11 = *(a2 + 716);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 700) = v10;
  *(a1 + 716) = v11;
  *(a1 + 684) = v9;
  *(a1 + 168) = *(a2 + 168);
  v12 = *(a2 + 188);
  v13 = *(a2 + 172);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 172) = v13;
  *(a1 + 188) = v12;
  if (a2 != a1)
  {
    v14 = *(a2 + 92);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 92) = v14;
    v15 = *(a2 + 124);
    *(a1 + 140) = *(a2 + 140);
    *(a1 + 124) = v15;
    *(a1 + 88) = *(a2 + 88);
  }

  *(a1 + 160) = *(a2 + 160);
  v16 = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 776) = v16;
  v17 = *(a2 + 788);
  *(a1 + 796) = *(a2 + 796);
  *(a1 + 788) = v17;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 804) = *(a2 + 804);
  v18 = *(a2 + 820);
  v19 = *(a2 + 836);
  v20 = *(a2 + 868);
  *(a1 + 852) = *(a2 + 852);
  *(a1 + 868) = v20;
  *(a1 + 820) = v18;
  *(a1 + 836) = v19;
  return a1;
}

uint64_t BlueFin::GlPePlatfStatMgr::SetMePlatfStat(BlueFin::GlPePlatfStatMgr *this, const BlueFin::GlMePlatfStat *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = this + 344;
  if (*(this + 86) > *a2)
  {
    memset(v28, 0, sizeof(v28));
    *(this + 20) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *(this + 44) = 0u;
    *(this + 84) = -180;
    *(this + 170) = 0;
    *(this + 48) = 0;
    *(this + 196) = 0;
    *(this + 181) = 0;
    *(this + 22) = 0;
    *(this + 50) = 1148829696;
    *(this + 204) = xmmword_298A44A10;
    *(this + 251) = 0;
    *(this + 220) = 0;
    *(this + 57) = 0;
    *(this + 236) = 0;
    *(this + 61) = 0;
    *(this + 249) = 0;
    *(this + 248) = 0;
    *(this + 232) = 0;
    *(this + 252) = *&v28[1];
    *(this + 268) = *&v28[17];
    *(this + 280) = 0u;
    *(this + 60) = 0u;
    *(this + 76) = 0u;
    *(this + 6) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 9) = 0u;
    *(this + 92) = 0;
    *(this + 171) = 0;
    *(this + 328) = 0;
    *(this + 83) = 0;
    *(this + 37) = 0;
    *(this + 76) = 0;
    *(this + 79) = 0;
    *(this + 308) = 0;
    *(this + 40) = 0;
  }

  v5 = (a2 + 744);
  result = BlueFin::GlMePlatfStat::operator=(this + 344, a2);
  v7 = 0;
  *(this + 155) = v4;
  *(this + 251) = *(a2 + 168);
  do
  {
    *(this + v7 + 252) = *(a2 + v7 + 172);
    v7 += 4;
  }

  while (v7 != 44);
  v8 = 0;
  v9 = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  v10 = (a2 + 684);
  v11 = 15;
  do
  {
    v8 += *(v10 - 15);
    *(this + 46) = v8;
    v12 = *v10++;
    v9 += v12;
    *(this + 45) = v9;
    --v11;
  }

  while (v11);
  v13 = *v5;
  *(this + 60) = *v5;
  v14 = *(a2 + 760);
  *(this + 76) = v14;
  v15 = *(a2 + 221);
  *(this + 83) = v15;
  *(this + 84) = *(a2 + 222);
  if (v13 > 0xA && (*(this + 171) & 1) == 0)
  {
    *(this + 85) = 257;
    *(this + 232) = 1;
  }

  if (DWORD2(v13) >= 3 && (*(this + 172) & 1) == 0)
  {
    *(this + 170) = 1;
    *(this + 172) = 1;
    *(this + 232) = 1;
  }

  if (v14 >= 0xB && (*(this + 173) & 1) == 0)
  {
    *(this + 170) = 1;
    *(this + 173) = 1;
    *(this + 232) = 1;
  }

  if (DWORD2(v14) >= 0xB && (*(this + 174) & 1) == 0)
  {
    *(this + 170) = 1;
    *(this + 174) = 1;
    *(this + 232) = 1;
  }

  if (v15 >= 0xB && (*(this + 328) & 1) == 0)
  {
    *(this + 170) = 1;
    *(this + 328) = 1;
    *(this + 232) = 1;
  }

  if (*(this + 170) == 1)
  {
    if (v8)
    {
      v16 = ((v8 - v9) * 100.0) / v8;
    }

    else
    {
      v16 = 0.0;
    }

    *(this + 44) = v16;
  }

  if (*(a2 + 88) == 1 && a2 + 88 != this + 92)
  {
    v17 = *(a2 + 108);
    *(this + 6) = *(a2 + 92);
    *(this + 7) = v17;
    v18 = *(a2 + 140);
    *(this + 8) = *(a2 + 124);
    *(this + 9) = v18;
    *(this + 92) = *(a2 + 88);
  }

  v19 = (this + 296);
  v20 = (a2 + 788);
  v21 = 3;
  do
  {
    *v19 = *(v20 - 3);
    v22 = *v20++;
    v19[3] = v22;
    ++v19;
    --v21;
  }

  while (v21);
  v23 = *(a2 + 800);
  if (v23)
  {
    v24 = 1;
  }

  else if ((v23 & 6) > 3)
  {
    if ((v23 & 6) == 4)
    {
      v24 = 3;
    }

    else
    {
      v24 = 5;
    }
  }

  else if ((v23 & 6) != 0)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  *(this + 80) = v24;
  v25 = (v23 >> 4) & 3;
  if (v25 <= 1)
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_43;
  }

  if (v25 == 2)
  {
    v26 = 3;
LABEL_43:
    *(this + 81) = v26;
  }

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdSatReportMgr::ReportHeartbeat(BlueFin::GlMeSrdSatReportMgr *this, int a2)
{
  *(this + 14) = a2;
  *(this + 15) = a2;
  result = (*(**(this + 4) + 32))(*(this + 4));
  v5 = *(this + 456);
  if (*(v5 + 32) > (*(v5 + 34) + 1))
  {
    v6 = (*(v5 + 34) + 1);
    while (1)
    {
      v7 = (*(v5 + 28) + *(*(v5 + 16) + 2 * v6));
      result = BlueFin::GlBigArray::Has(v5, v7);
      if ((result & 1) == 0)
      {
        v10 = "m_potArray->Has(handle)";
        DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
        v11 = 362;
        goto LABEL_15;
      }

      v8 = *(this + 456);
      if (v7 - *(v8 + 28) >= *(v8 + 30))
      {
        break;
      }

      v9 = *(*(v8 + 8) + 2 * (v7 - *(v8 + 28)));
      if (v9 != 0xFFFF)
      {
        if (*(v8 + 32) <= v9)
        {
          v10 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v11 = 319;
LABEL_15:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v11, v10);
        }

        if (*v8)
        {
          if (a2 - *(*v8 + *(v8 + 24) * v9 + 24) >= 5001)
          {
            result = BlueFin::GlMeSrdSatReportMgr::DestroySatReportByHandle(this, v7);
          }
        }
      }

      if (++v6 >= *(v5 + 32))
      {
        return result;
      }
    }

    v10 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v11 = 313;
    goto LABEL_15;
  }

  return result;
}

uint64_t BlueFin::GlSetBase::operator&=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 694, "operator&=", "m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 694, "m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(result + 8))
  {
    v3 = *a2;
    v4 = *result;
    do
    {
      v5 = *v3++;
      *v4++ &= v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

unsigned int *BlueFin::GlStream::PutU16(unsigned int *this, unsigned int a2)
{
  if (this[6])
  {
    v7 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 122, "PutU16", "m_uiBitOffset == 0");
    v8 = 122;
    goto LABEL_11;
  }

  if (this[7])
  {
    v7 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 123, "PutU16", "m_uiBitsRemainingInWord == 0");
    v8 = 123;
    goto LABEL_11;
  }

  v2 = *this;
  if (v2 + 2 > this[4])
  {
    v7 = "m_uiOffset+2<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 125, "PutU16", "m_uiOffset+2<=m_uiMaxOffset");
    v8 = 125;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v8, v7);
  }

  if (*(this + 20) == 1)
  {
    v3 = *(this + 1);
    *this = v2 + 1;
    *(v3 + v2) = BYTE1(a2);
  }

  else
  {
    v4 = *(this + 1);
    *this = v2 + 1;
    *(v4 + v2) = a2;
    a2 >>= 8;
  }

  v5 = *(this + 1);
  v6 = *this;
  *this = v6 + 1;
  *(v5 + v6) = a2;
  return this;
}

unsigned int *BlueFin::GlStream::PutU32(unsigned int *this, unsigned int a2)
{
  if (this[6])
  {
    v15 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 164, "PutU32", "m_uiBitOffset == 0");
    v16 = 164;
    goto LABEL_11;
  }

  if (this[7])
  {
    v15 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 165, "PutU32", "m_uiBitsRemainingInWord == 0");
    v16 = 165;
    goto LABEL_11;
  }

  v2 = *this;
  if (v2 + 4 > this[4])
  {
    v15 = "m_uiOffset+4<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 167, "PutU32", "m_uiOffset+4<=m_uiMaxOffset");
    v16 = 167;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v16, v15);
  }

  if (*(this + 20) == 1)
  {
    v3 = *(this + 1);
    *this = v2 + 1;
    *(v3 + v2) = HIBYTE(a2);
    v4 = *(this + 1);
    v5 = *this;
    *this = v5 + 1;
    *(v4 + v5) = BYTE2(a2);
    v6 = *(this + 1);
    v7 = *this;
    *this = v7 + 1;
    *(v6 + v7) = BYTE1(a2);
  }

  else
  {
    v8 = *(this + 1);
    *this = v2 + 1;
    *(v8 + v2) = a2;
    v9 = *(this + 1);
    v10 = *this;
    *this = v10 + 1;
    *(v9 + v10) = BYTE1(a2);
    v11 = *(this + 1);
    v12 = *this;
    *this = v12 + 1;
    *(v11 + v12) = BYTE2(a2);
    a2 >>= 24;
  }

  v13 = *(this + 1);
  v14 = *this;
  *this = v14 + 1;
  *(v13 + v14) = a2;
  return this;
}

void *BlueFin::GlMeSrdPacketManager::AppendReliableData(BlueFin::GlMeSrdPacketManager *this, unsigned __int8 *__src, size_t __n)
{
  if ((*(this + 13874) & 1) == 0)
  {
    v8 = "m_bMessageReliableStarted";
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 51, "AppendReliableData", "m_bMessageReliableStarted");
    v9 = 51;
    goto LABEL_12;
  }

  v3 = __n;
  v4 = __src;
  v6 = *(this + 1733);
  v7 = *(this + 1732);
  if (v6 < v7)
  {
    if (__n >= v7 - v6)
    {
      v8 = "usLen < ulRemaining";
      DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 74, "AppendReliableData", "usLen < ulRemaining");
      v9 = 74;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v7 - v6 + 7168 <= __n)
  {
    v8 = "usLen < ulRemaining";
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 57, "AppendReliableData", "usLen < ulRemaining");
    v9 = 57;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", v9, v8);
  }

  v10 = this + 13844;
  if (&v6[__n] >= this + 13844)
  {
    v12 = v10 - v6;
    memcpy(v6, __src, (v10 - v6));
    v4 += v12;
    *(this + 1733) = this + 6676;
    v11 = (v3 - v12);
    v6 = this + 6676;
    goto LABEL_9;
  }

LABEL_7:
  v11 = __n;
LABEL_9:
  result = memcpy(v6, v4, v11);
  *(this + 1733) += v11;
  return result;
}

uint64_t BlueFin::GlStream::GetOffset(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v2 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 42, "GetOffset", "m_uiBitOffset == 0");
    v3 = 42;
    goto LABEL_6;
  }

  if (*(this + 7))
  {
    v2 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 43, "GetOffset", "m_uiBitsRemainingInWord == 0");
    v3 = 43;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v3, v2);
  }

  return *this;
}

uint64_t BlueFin::GlMeSrdTransaction::AddMethodData(BlueFin::GlMeSrdTransaction *this, char *a2, unsigned int a3)
{
  if (*(this + 18))
  {
    v16 = "!m_bComplete";
    DeviceFaultNotify("glmesrd_transaction_builder.cpp", 148, "AddMethodData", "!m_bComplete");
    v17 = 148;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_builder.cpp", v17, v16);
  }

  if (a3)
  {
    v4 = a3;
    while (1)
    {
      v6 = *(this + 16);
      *(this + 16) = v6 + 1;
      v7 = *(this + 17);
      v8 = v6 - v7;
      if (!v8)
      {
        break;
      }

      if (v8 != 1)
      {
        v12 = *(this + 18);
        if (v12 + 2 != v8)
        {
          goto LABEL_12;
        }

        v9 = 0;
        *(this + 17) = v7 + v12 + 3;
        goto LABEL_6;
      }

      *(this + 18) += 32 * (*a2 & 0x20) + 4 * (*a2 & 0xC0);
      v10 = *a2;
      v11 = *(*(**(this + 3) + 56))(*(this + 3));
      if (((*(v11 + 376))() & 1) == 0)
      {
        v16 = "GetAsicConfigIfc().IsRpcClassValid(ucClassId)";
        DeviceFaultNotify("glmesrd_transaction_builder.cpp", 168, "AddMethodData", "GetAsicConfigIfc().IsRpcClassValid(ucClassId)");
        v17 = 168;
        goto LABEL_16;
      }

LABEL_12:
      ++a2;
      if (!--v4)
      {
        goto LABEL_13;
      }
    }

    v9 = *a2;
LABEL_6:
    *(this + 18) = v9;
    goto LABEL_12;
  }

LABEL_13:
  v13 = *(this + 17);
  v14 = *(**(this + 3) + 24);

  return v14();
}

uint64_t BlueFin::GlMeSrdTransactionBuilder::StartTransaction(BlueFin::GlMeSrdTransactionBuilder *this, int a2)
{
  v2 = *(this + 1);
  if (a2)
  {
    return BlueFin::GlMeSrdPacketManager::StartReliablePacket(v2);
  }

  else
  {
    return BlueFin::GlMeSrdPacketManager::StartPacket(v2);
  }
}

uint64_t BlueFin::GlMeSrdPacketManager::StartReliablePacket(uint64_t this)
{
  if (*(this + 13874) == 1)
  {
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 44, "StartReliablePacket", "!m_bMessageReliableStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", 44, "!m_bMessageReliableStarted");
  }

  *(this + 13874) = 1;
  return this;
}

unsigned int *BlueFin::GlStream::PutU08(unsigned int *this, char a2)
{
  if (this[6])
  {
    v4 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.cpp", 112, "PutU08", "m_uiBitOffset == 0");
    v5 = 112;
    goto LABEL_8;
  }

  if (this[7])
  {
    v4 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.cpp", 113, "PutU08", "m_uiBitsRemainingInWord == 0");
    v5 = 113;
    goto LABEL_8;
  }

  v2 = *this;
  if (v2 + 1 > this[4])
  {
    v4 = "m_uiOffset+1<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 115, "PutU08", "m_uiOffset+1<=m_uiMaxOffset");
    v5 = 115;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v5, v4);
  }

  v3 = *(this + 1);
  *this = v2 + 1;
  *(v3 + v2) = a2;
  return this;
}

uint64_t BlueFin::GlMeSrdTransaction::Add(BlueFin::GlMeSrdTransaction *this, char a2, unsigned __int8 a3, char *a4, unsigned int a5)
{
  v9[0] = a5;
  v9[1] = ((a5 >> 2) & 0xC0) + a2 + ((a5 >> 5) & 0x20);
  v9[2] = a3;
  BlueFin::GlMeSrdTransaction::AddMethodData(this, v9, 3u);
  return BlueFin::GlMeSrdTransaction::AddMethodData(this, a4, a5);
}

void *BlueFin::GlMeSrdTransactionBuilder::AppendData(BlueFin::GlMeSrdTransactionBuilder *this, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  v4 = *(this + 1);
  if (a2)
  {
    return BlueFin::GlMeSrdPacketManager::AppendReliableData(v4, a3, a4);
  }

  else
  {
    return BlueFin::GlMeSrdPacketManager::AppendData(v4, a3, a4);
  }
}

uint64_t BlueFin::GlMeSrdTransaction::Complete(BlueFin::GlMeSrdTransaction *this)
{
  if (*(this + 18) == 1)
  {
    v3 = "!m_bComplete";
    DeviceFaultNotify("glmesrd_transaction_builder.cpp", 183, "Complete", "!m_bComplete");
    v4 = 183;
    goto LABEL_7;
  }

  if (*(this + 16) && *(this + 17) != *(this + 16))
  {
    v3 = "m_usTransLen == 0 || m_usLastRpcBaseIndex == m_usTransLen";
    DeviceFaultNotify("glmesrd_transaction_builder.cpp", 186, "Complete", "m_usTransLen == 0 || m_usLastRpcBaseIndex == m_usTransLen");
    v4 = 186;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_builder.cpp", v4, v3);
  }

  result = (*(**(this + 3) + 32))(*(this + 3), *(this + 17), *this, *(this + 1), *(this + 16));
  *(this + 18) = 1;
  return result;
}

unint64_t BlueFin::GlMeSrdTransactionBuilder::SendTransaction(BlueFin::GlMeSrdTransactionBuilder *this, int a2, void (*a3)(void *, unsigned __int8), void *a4, char a5)
{
  v5 = *(this + 1);
  if (a2)
  {
    return BlueFin::GlMeSrdPacketManager::SendReliablePacket(v5, a3, a4, a5);
  }

  else
  {
    return BlueFin::GlMeSrdPacketManager::SendPacket(v5);
  }
}

BOOL BlueFin::GlPeAsstMgr::DetermineSystemMode(BlueFin::GlPeAsstMgr *this, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, BlueFin::GlSetBase *a53, uint64_t a54, uint64_t a55, char a56)
{
  STACK[0x518] = *MEMORY[0x29EDCA608];
  if (!*(this + 30003))
  {
    v58 = *(*(this + 3) + 36);
    if (v58 != 3)
    {
      if (v58 == 2 || (a2 & 0x40) != 0 && !v58 || a3)
      {
        goto LABEL_8;
      }

      v61 = 0;
      STACK[0x4F8] = &a56;
      do
      {
        v62 = STACK[0x4F8] + v61;
        *(v62 + 12) = 0;
        *v62 = v62 + 12;
        *(v62 + 8) = 2;
        v61 += 24;
      }

      while (v61 != 168);
      v63 = 0;
      a53 = &a32;
      do
      {
        v64 = a53 + v63;
        v65 = a53 + v63;
        *(v65 + 12) = 0;
        *v64 = v65 + 12;
        v64[8] = 2;
        v63 += 24;
      }

      while (v63 != 168);
      BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v84, (this + 120800));
      v66 = a27;
      for (i = a28; a27 != 6 || a28 != 14; i = a28)
      {
        v82 = v66;
        v83 = i;
        Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, v66);
        if (Mgr)
        {
          v70 = (*(*Mgr + 112))(Mgr, &v83, 0);
          v71 = v70;
          if (v70)
          {
            if ((*(*v70 + 40))(v70) && (*(*v71 + 48))(v71))
            {
              if ((*(*v71 + 56))(v71))
              {
                v72 = &a56;
              }

              else
              {
                v72 = &a32;
              }

              BlueFin::GlGnssSet::Add(v72, &v82);
            }
          }
        }

        BlueFin::GlGnssSetIterator::operator++(&v84);
        v66 = a27;
      }

      v74 = 0;
      v75 = STACK[0x4F8];
      v76 = 7;
      v77 = STACK[0x4F8];
      do
      {
        v74 += BlueFin::GlSetBase::Cnt(v77);
        v77 = (v77 + 24);
        --v76;
      }

      while (v76);
      v78 = a53;
      v79 = 7;
      do
      {
        LODWORD(v76) = v76 + BlueFin::GlSetBase::Cnt(v78);
        v78 = (v78 + 24);
        --v79;
      }

      while (v79);
      if ((v76 + v74) < 3u)
      {
        result = *(this + 30003) != 0;
        goto LABEL_9;
      }

      v80 = 0;
      v81 = 7;
      do
      {
        v80 += BlueFin::GlSetBase::Cnt(v75);
        v75 = (v75 + 24);
        --v81;
      }

      while (v81);
      if (v80 >= 2u)
      {
LABEL_8:
        result = 1;
        *(this + 30003) = 1;
        goto LABEL_9;
      }
    }

    *(this + 30003) = 2;
  }

  result = 1;
LABEL_9:
  v59 = STACK[0x518];
  v60 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *BlueFin::GlPeAlmMgr::GetValidity@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 12) = 0;
  *a4 = a4 + 12;
  *(a4 + 8) = 2;
  result = *(a1 + 448);
  if (*(result + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(result, 1, v13);
    v14[0] = &off_2A1F0B5F0;
    v14[1] = 0;
    BlueFin::GlPeGnssTime::GetGps(v13, v14);
    v9 = *(a1 + 432) + 48 * a2;
    v13[0].n128_u8[0] = *(v9 + 32);
    memcpy(&v13[0].n128_i8[8], *(v9 + 24), 4 * v13[0].n128_u8[0]);
    v13[0].n128_u16[1] = 0;
    v13[0].n128_u8[1] = 0;
    v13[0].n128_u32[1] = v13[0].n128_u32[2];
    while (1)
    {
      result = BlueFin::GlSetIterator::operator++(v13);
      if (v13[0].n128_u8[1] == v13[0].n128_u8[0])
      {
        break;
      }

      v10 = v13[0].n128_u8[2];
      v11 = a2;
      v12 = v13[0].n128_u8[2];
      if (BlueFin::GlPeAlmMgr::IsValid(a1, v14, &v11, a3))
      {
        if (v10 - 64 <= 0xFFFFFFC0)
        {
          DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        }

        *(*a4 + ((v10 >> 3) & 0x1C)) |= 1 << v10;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPePwrStateMgr::NewMeas(uint64_t this, char a2, unsigned int a3, int a4)
{
  *(this + 213) = a2;
  v4 = (a2 & 0xF) - 12;
  if (v4 <= 3)
  {
    *(this + 210) = 0x1010000u >> (8 * (v4 & 0x1F));
  }

  *(this + 258) = a3 > 7;
  if (a4)
  {
    v5 = *(this + 244);
    if (!v5)
    {
      v5 = 30;
      *(this + 244) = 30;
    }

    v6 = *(this + 240) + 1;
    *(this + 240) = v6;
    *(this + 257) = 0;
    if (v6 > v5)
    {
      *(this + 244) = 6;
      *(this + 257) = 1;
    }
  }

  else
  {
    *(this + 240) = 0;
    *(this + 257) = 0;
  }

  return this;
}

uint64_t BlueFin::GlPeKF::InFlightMode(BlueFin::GlPeKF *this)
{
  v1 = *(this + 61480);
  v2 = *(this + 15371);
  v3 = v2 == 2;
  v4 = *(this + 7629);
  if (v4)
  {
    if (*(v4 + 4216) == 10 && *(v4 + 4224) == 1)
    {
      v5 = *(v4 + 4226) ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v3 = (v2 == 2) | v5;
  }

  if (v2)
  {
    v1 = 0;
  }

  return (v1 | v3) & 1;
}

void BlueFin::GlPeMsmtMgr::InitMeas(BlueFin::GlPeMsmtMgr *this)
{
  bzero(*(this + 23), ((4 * *(this + 192) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v2 = *(this + 2349);
  v5 = v2 + 1152;
  v6 = *(v2 + 1186) + 1;
  if (*(v2 + 1184) > v6)
  {
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v5, v4);
      v3 = BlueFin::GlSignalIdArray::Get(*(this + 2349), v4);
      *(v3 + 240) = 0;
      *(v3 + 272) = 0;
    }

    while (v6 < *(v5 + 32));
  }
}

uint64_t BlueFin::GlSetBase::operator|=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 712, "operator|=", "m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 712, "m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(result + 8))
  {
    v3 = *a2;
    v4 = *result;
    do
    {
      v5 = *v3++;
      *v4++ |= v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t BlueFin::GlMeDspMeasListener::SetTcxoJumpDetected(uint64_t this, int a2)
{
  v2 = *(this + 8);
  *(v2 + 29140) = a2;
  if (a2)
  {
    return (*(**(v2 + 16) + 336))(*(v2 + 16), 2);
  }

  return this;
}

uint64_t BlueFin::GlMeMeas::Serialize(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v41 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 21;
  }

  if (v4 >= 0x16)
  {
    DeviceFaultNotify("glmepeif_types.cpp", 1597, "Serialize", "ucVersion >= 1 && ucVersion <= 21");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 1597, "ucVersion >= 1 && ucVersion <= 21");
  }

  v5 = v3;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v31 = v2;
    v37 = 15;
    v38 = v4;
    v39 = 0x1000000000000;
    v36 = &unk_2A1F09578;
    v40 = v4;
    BlueFin::GlSysLogEntry::PutS16(&v36, *(v1 + 4));
    BlueFin::GlSysLogEntry::PutS16(&v36, *(v6 + 6));
    BlueFin::GlSysLogEntry::PutS16(&v36, *(v6 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v36, *(v6 + 10));
    BlueFin::GlSysLogEntry::PutU32(&v36, *v6);
    BlueFin::GlSysLogEntry::PutS16(&v36, *(v6 + 14));
    BlueFin::GlSysLogEntry::PutF32(&v36, *(v6 + 16));
    if (v4 >= 0xD)
    {
      BlueFin::GlSysLogEntry::PutU8(&v36, 100);
    }

    v7 = 0;
    v8 = 99;
    while (1)
    {
      v9 = v8;
      v10 = *(v6 + 17120);
      if (*(v10 + v7) - 1 >= 0xBC)
      {
        BlueFin::GlSysLogEntry::PutU16(&v36, 0xFFFF);
        if (v4 > 9)
        {
          BlueFin::GlSysLogEntry::PutU8(&v36, 0);
          if (v4 != 10)
          {
            v11 = 0;
LABEL_16:
            BlueFin::GlSysLogEntry::PutU8(&v36, v11);
          }

LABEL_17:
          BlueFin::GlSysLogEntry::PutU16(&v36, *(v10 + v7 + 16));
          v35 = *(v10 + v7 + 12);
          v32 = &v35;
          v33 = 1;
          BlueFin::GlSysLogEntry::PutGlSet(&v36, &v32);
          v12 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        BlueFin::GlSysLogEntry::PutU16(&v36, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v10 + v7)));
        if (v4 > 9)
        {
          BlueFin::GlSysLogEntry::PutU8(&v36, *(v10 + v7 + 4));
          if (v4 != 10)
          {
            v11 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v10 + v7 + 4) - *(v10 + v7 + 4) + BlueFin::GlSvId::s_aucSvId2gnss[*(v10 + v7)]];
            goto LABEL_16;
          }

          goto LABEL_17;
        }
      }

      if (v4 >= 7)
      {
        break;
      }

      if (v5 == 5)
      {
        BlueFin::GlSysLogEntry::PutU32(&v36, *(v10 + v7 + 12));
        BlueFin::GlSysLogEntry::PutU32(&v36, 0);
        BlueFin::GlSysLogEntry::PutU32(&v36, 0);
      }

      else
      {
        if (v5 == 6)
        {
          goto LABEL_22;
        }

        BlueFin::GlSysLogEntry::PutU32(&v36, *(v10 + v7 + 12) >> (v4 == 1));
        BlueFin::GlSysLogEntry::PutU32(&v36, 0);
      }

      v12 = 0;
LABEL_26:
      BlueFin::GlSysLogEntry::PutU8(&v36, *(v10 + v7 + 20));
      BlueFin::GlSysLogEntry::PutS32(&v36, *(v10 + v7 + 112));
      if (v4 >= 9)
      {
        BlueFin::GlSysLogEntry::PutU32(&v36, *(v10 + v7 + 48));
      }

      else
      {
        BlueFin::GlSysLogEntry::PutF32(&v36, (*(v10 + v7 + 116) + -174.0) + 4.0);
        BlueFin::GlSysLogEntry::PutU32(&v36, *(v10 + v7 + 48));
        if (v4 <= 3)
        {
          BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 64));
          goto LABEL_32;
        }
      }

      BlueFin::GlSysLogEntry::PutU32(&v36, *(v10 + v7 + 52));
      BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 64));
      if (v4 > 0xB)
      {
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 96));
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 104));
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 108));
        BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 88));
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 100));
        goto LABEL_38;
      }

LABEL_32:
      BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 96));
      BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 104));
      BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 108));
      BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 88));
      if (v4 <= 2)
      {
        v32 = v34;
        v33 = 3;
        memset(v34, 0, 12);
LABEL_37:
        ULong = BlueFin::GlSetBase::GetULong(&v32, 0);
        BlueFin::GlSysLogEntry::PutU32(&v36, ULong);
        v15 = BlueFin::GlSetBase::GetULong(&v32, 1u);
        BlueFin::GlSysLogEntry::PutU32(&v36, v15);
        goto LABEL_38;
      }

      BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 100));
      if (v4 >= 8)
      {
        goto LABEL_38;
      }

      v32 = v34;
      v33 = 3;
      memset(v34, 0, 12);
      if (v4 >= 6)
      {
        BlueFin::GlSysLogEntry::PutGlSet(&v36, &v32);
        goto LABEL_38;
      }

      if (v4 != 5)
      {
        goto LABEL_37;
      }

      v17 = BlueFin::GlSetBase::GetULong(&v32, 0);
      BlueFin::GlSysLogEntry::PutU32(&v36, v17);
      v18 = BlueFin::GlSetBase::GetULong(&v32, 1u);
      BlueFin::GlSysLogEntry::PutU32(&v36, v18);
      v19 = BlueFin::GlSetBase::GetULong(&v32, 2u);
      BlueFin::GlSysLogEntry::PutU32(&v36, v19);
LABEL_38:
      if (v12)
      {
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 116));
      }

      if (v4 <= 0xD)
      {
        if (v4 < 8)
        {
          goto LABEL_49;
        }

        v16 = *(v10 + v7 + 24);
      }

      else
      {
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 120));
        BlueFin::GlSysLogEntry::PutU8(&v36, *(v10 + v7 + 24));
        if (v4 <= 0xF)
        {
          goto LABEL_49;
        }

        BlueFin::GlSysLogEntry::PutU8(&v36, *(v10 + v7 + 32));
        BlueFin::GlSysLogEntry::PutF32(&v36, *(v10 + v7 + 44));
        if (v4 == 16)
        {
          goto LABEL_49;
        }

        BlueFin::GlSysLogEntry::PutU8(&v36, *(v10 + v7 + 28));
        if (v4 <= 0x11)
        {
          goto LABEL_49;
        }

        BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 136));
        BlueFin::GlSysLogEntry::PutD64(&v36, *(v10 + v7 + 140));
        if (v4 == 18)
        {
          goto LABEL_49;
        }

        BlueFin::GlSysLogEntry::PutU8(&v36, *(v10 + v7 + 36));
        LOBYTE(v16) = *(v10 + v7 + 40);
      }

      BlueFin::GlSysLogEntry::PutU8(&v36, v16);
LABEL_49:
      if (*(v10 + v7) - 189 >= 0xFFFFFF44)
      {
        v8 = v9 - 1;
        v7 += 144;
        if (v9)
        {
          continue;
        }
      }

      if (v4 >= 0x14)
      {
        v20 = 0;
        for (i = 8; i != 2584; i += 184)
        {
          if (*(*(v6 + 2704) + i) < 0x23Fu)
          {
            ++v20;
          }
        }

        BlueFin::GlSysLogEntry::PutU8(&v36, v20);
        BlueFin::GlSysLogEntry::PutU8(&v36, 4);
        v22 = 0;
        v23 = 56;
        do
        {
          v24 = *(v6 + 2704);
          v25 = (v24 + 184 * v22);
          if (*(v25 + 4) <= 0x23Eu)
          {
            BlueFin::GlSysLogEntry::PutU8(&v36, v22);
            BlueFin::GlSysLogEntry::PutU16(&v36, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *v25));
            BlueFin::GlSysLogEntry::PutU8(&v36, v25[4]);
            BlueFin::GlSysLogEntry::PutU32(&v36, *(v25 + 3));
            BlueFin::GlSysLogEntry::PutU8(&v36, v25[16]);
            v26 = 0;
            for (j = (v24 + v23); ; j += 10)
            {
              v28 = v4 == 21 ? v25[16] : 4;
              if (v28 <= v26)
              {
                break;
              }

              BlueFin::GlSysLogEntry::PutF32(&v36, *j);
              BlueFin::GlSysLogEntry::PutD64(&v36, *(j - 4));
              BlueFin::GlSysLogEntry::PutF32(&v36, *(j - 3));
              BlueFin::GlSysLogEntry::PutF32(&v36, *(j - 4));
              BlueFin::GlSysLogEntry::PutF32(&v36, *(j - 1));
              BlueFin::GlSysLogEntry::PutD64(&v36, *(j - 3));
              BlueFin::GlSysLogEntry::PutF32(&v36, *(j - 2));
              ++v26;
            }
          }

          ++v22;
          v23 += 184;
        }

        while (v22 != 14);
      }

      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v36, v31, 4);
      goto LABEL_69;
    }

    BlueFin::GlSysLogEntry::PutU16(&v36, *(v10 + v7 + 16));
LABEL_22:
    v13 = *(v10 + v7 + 12);
    v32 = v34;
    v33 = 3;
    v34[0] = v13;
    *&v34[1] = 0;
    BlueFin::GlSysLogEntry::PutGlSet(&v36, &v32);
    v12 = v4 > 6;
    goto LABEL_26;
  }

LABEL_69:
  v29 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeTimeManager::outputCurrentTime(BlueFin::GlPeTimeManager *this)
{
  GlCustomLog(15, "GlPeTimeManager::CurrentTime:  LMS:%u", *(this + 642));
  if (*(this + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(this, 1, v47);
    v46 = 0;
    v45 = &off_2A1F0B5F0;
    Gps = BlueFin::GlPeGnssTime::GetGps(v47, &v45);
    v3 = (v45[4])(&v45) / 0x93A80;
    v4 = (v45[4])(&v45);
    LODWORD(v5) = v46;
    GlCustomLog(15, "  GPS(Week:%4hu TowS:%16.9lf uncUs:%7.3lf)", v3, v5 * 2.32830644e-10 + (v4 % 0x93A80), Gps);
    v44 = 0;
    v43 = &off_2A1F0E430;
    BlueFin::GlPeGnssTime::GetGlns(v47, &v43);
    Glns = BlueFin::GlPeGnssTime::GetGlns(v47, &v43);
    v9 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v44) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v10 = ((v43[4])(&v43) - v9) / 0x7861F80 + 1;
    v13 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v44) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v14 = 0;
    v15 = (((203613265 * (((v43[4])(&v43) - v13) % 0x7861F80)) >> 32) >> 12) + 1;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      v14 = HIDWORD(v44) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    }

    v16 = (v43[4])(&v43);
    v17 = 10799.0;
    v18 = (v16 % 0x15180);
    if (!v14)
    {
      v17 = (v16 % 0x15180);
    }

    LODWORD(v18) = v44;
    GlCustomLog(15, "  GLO(N4:%u Nt:%4hu TodS:%15.9lf uncUs:%7.3lf)", v10, v15, v17 + *&v18 * 2.32830644e-10, Glns);
    BlueFin::GlPeTimeManager::GetUtcTime(v35, this);
    UncUs = BlueFin::GlPeGnssTime::GetUncUs(v47, 2);
    LOBYTE(v20) = v42;
    LODWORD(v21) = v36;
    GlCustomLog(15, "  UTC(%4hu/%02u/%02u %02u:%02u:%012.9lf uncUs:%7.3lf)", v37, v38, v39, v40, v41, v21 * 2.32830644e-10 + v20, UncUs);
    v34 = 0;
    v33 = &off_2A1F0E480;
    Gal = BlueFin::GlPeGnssTime::GetGal(v47, &v33);
    v23 = (v33[4])(&v33) / 0x93A80;
    v24 = (v33[4])(&v33);
    LODWORD(v25) = v34;
    GlCustomLog(15, "  GAL(Week:%4hu TowS:%16.9lf uncUs:%7.3lf)", v23, v25 * 2.32830644e-10 + (v24 % 0x93A80), Gal);
    v32 = 0;
    v31 = &off_2A1F0E4D0;
    Bds = BlueFin::GlPeGnssTime::GetBds(v47, &v31);
    v27 = (v31[4])(&v31) / 0x93A80;
    v28 = (v31[4])(&v31);
    LODWORD(v29) = v32;
    GlCustomLog(15, "  BDS(Week:%4hu TowS:%16.9lf uncUs:%7.3lf)", v27, v29 * 2.32830644e-10 + (v28 % 0x93A80), Bds);
    return GlCustomLog(15, "\n");
  }

  else
  {

    return GlCustomLog(15, "  <not_initialized>\n");
  }
}

uint64_t BlueFin::GlMeas::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 0x4000;
    *a1 = *a2;
    BlueFin::GlPowerMeas::operator=(a1 + 4, a2 + 4);
    for (i = 12; i != 2588; i += 184)
    {
      v6 = *(a2 + 2704);
      v7 = (v6 + i);
      v8 = *(a1 + 2704);
      v9 = (v8 + i);
      if (v8 != v6)
      {
        *(v9 - 12) = *(v7 - 12);
        *(v9 - 2) = *(v7 - 2);
        *(v9 - 2) = *(v7 - 2);
      }

      v10 = *v7;
      v11 = v7[2];
      v9[1] = v7[1];
      v9[2] = v11;
      *v9 = v10;
      v12 = v7[3];
      v13 = v7[4];
      v14 = v7[6];
      v9[5] = v7[5];
      v9[6] = v14;
      v9[3] = v12;
      v9[4] = v13;
      v15 = v7[7];
      v16 = v7[8];
      v17 = v7[9];
      *(v9 + 156) = *(v7 + 156);
      v9[8] = v16;
      v9[9] = v17;
      v9[7] = v15;
    }

    v18 = 0;
    v19 = 100;
    do
    {
      v20 = *(a2 + 17120);
      v21 = *(a1 + 17120);
      if (v21 != v20)
      {
        v22 = v21 + v18;
        *v22 = *(v20 + v18);
        *(v22 + 4) = *(v20 + v18 + 4);
        *(v22 + 8) = *(v20 + v18 + 8);
      }

      v23 = v21 + v18;
      v24 = v20 + v18;
      *(v23 + 12) = *(v24 + 12);
      v25 = *(v24 + 28);
      v26 = *(v24 + 44);
      v27 = *(v24 + 60);
      *(v23 + 76) = *(v24 + 76);
      *(v23 + 60) = v27;
      *(v23 + 44) = v26;
      *(v23 + 28) = v25;
      v28 = *(v24 + 92);
      v29 = *(v24 + 108);
      v30 = *(v24 + 124);
      *(v23 + 140) = *(v24 + 140);
      *(v23 + 124) = v30;
      *(v23 + 108) = v29;
      *(v23 + 92) = v28;
      v18 += 144;
      --v19;
    }

    while (v19);
    *(a1 + 17128) = *(a2 + 17128);
    *(a1 + 17136) = *(v4 + 752);
    *(a1 + 17140) = *(v4 + 756);
  }

  return a1;
}

float64_t BlueFin::GlPeMsmtMgr::SetPwrMeas(float64x2_t *a1, uint64_t a2)
{
  v4 = a1 + 3328;
  BlueFin::GlPowerMeas::SetPwrMeas(&a1[3501], a2);
  v5 = v4[186].f64[1];
  if (v5 == 0.0)
  {
    v6 = 1.3;
  }

  else
  {
    v6 = flt_298A41A20[(*(*&v5 + 88) - 39) < 2];
  }

  v13 = v6;
  v7 = *(a2 + 10) * 0.001;
  v14 = v7;
  v4[180].f64[1] = ((v6 * *(a2 + 12)) * v7);
  v8 = BlueFin::GlSignalIdSet::CntSecondarySignalSvIdSet(&a1[6], 1);
  v9 = *(a2 + 24);
  v10 = 7018;
  if (v8)
  {
    v10 = 7019;
  }

  a1->f64[v10] = ((v13 * *(a2 + 20)) * v14);
  v11 = 7020;
  if (v8)
  {
    v11 = 7021;
  }

  a1->f64[v11] = ((v13 * v9) * v14);
  a1[3511] = vcvtq_f64_f32(vmul_n_f32(vmul_n_f32(*(a2 + 28), v13), v14));
  a1[3512] = vcvtq_f64_f32(vmul_n_f32(vmul_n_f32(*(a2 + 36), v13), v14));
  result = ((v13 * *(a2 + 44)) * v14);
  v4[185].f64[0] = result;
  return result;
}

uint64_t BlueFin::GlSignalIdSet::CntSecondarySignalSvIdSet(BlueFin::GlSignalIdSet *this, int a2)
{
  v3 = *this;
  v4 = *(this + 8);
  if (!**this)
  {
    if (v4 < 2)
    {
      return 0;
    }

    v10 = v4 - 1;
    v11 = v3 + 1;
    while (!*v11++)
    {
      if (!--v10)
      {
        return 0;
      }
    }
  }

  memset(v19, 0, sizeof(v19));
  v14 = v4;
  memcpy(v18, v3, 4 * v4);
  v16 = 0;
  v15 = 0;
  v17 = v18[0];
  BlueFin::GlSetIterator::operator++(&v14);
  if (v15 == v14)
  {
    return 0;
  }

  while (1)
  {
    v5 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v16;
    if (v5[1] - 1 > 1)
    {
      goto LABEL_7;
    }

    v6 = *v5;
    v7 = v6 >> 5;
    v8 = *(v19 + (v6 >> 5));
    v9 = v6 & 0x1F;
    if ((v8 >> v9))
    {
      goto LABEL_7;
    }

    if (!--a2)
    {
      return 1;
    }

    *(v19 + v7) = (1 << v9) | v8;
LABEL_7:
    BlueFin::GlSetIterator::operator++(&v14);
    if (v15 == v14)
    {
      return 0;
    }
  }
}

unint64_t BlueFin::GlReqSm::SetSIGMeasuement(BlueFin::GlReqSm *this)
{
  v4 = 19;
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

uint64_t BlueFin::GlPeReqBag::GetMinimumPeriod(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v10 = this + 3233;
  v11 = *(this + 3233);
  *(this + 3233) = 0;
  v3 = -1;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = v5[4];
      if (v6 == 3 || v6 == 0)
      {
        v8 = (*(*v5 + 184))(v5);
        if (v8 < v3)
        {
          v3 = v8;
        }
      }
    }

    v2 += 8;
  }

  while (v2 != 576);
  if (v3 == -1)
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  *v10 = v11;
  return result;
}

BOOL BlueFin::GlReqSm::ShouldRequestAdcCapture(BlueFin::GlReqSm *this)
{
  v1 = *(this + 784);
  if (*(v1 + 26324) == 1)
  {
    v2 = *(*(this + 785) + 2568);
    v3 = *(v1 + 26328);
    v4 = 1000 * v3;
    v5 = *(v1 + 26332);
    if (v5)
    {
      v6 = *(this + 13723);
      v7 = 1000 * v5 <= (v2 - v6);
      v8 = *(this + 13724);
    }

    else
    {
      v8 = *(this + 13724);
      v7 = v8 == 0;
      v6 = *(this + 13723);
    }

    v10 = (*(v1 + 88) - 39) < 2;
    if (v7)
    {
      v11 = 84;
    }

    else
    {
      v11 = 70;
    }

    v12 = v4 >= v2;
    v13 = v4 < v2 && v7;
    if (v12)
    {
      v14 = 70;
    }

    else
    {
      v14 = 84;
    }

    v9 = v13 && v10;
    v17 = v3;
    if (v13 && v10)
    {
      v15 = 84;
    }

    else
    {
      v15 = 70;
    }

    GlCustomLog(15, "GlReqSm::ShouldRequestAdcCapture: Lms %u Request %c InitialDelayOk %c PeriodOk %c InitialDelayS %d IntervalS %d LastAdcCaptureLms %u CaptureCount %u\n", v2, v15, v14, v11, v17, v5, v6, v8);
  }

  else
  {
    return 0;
  }

  return v9;
}

BOOL BlueFin::GlReqSm::ShouldTransitionToStandby(BlueFin::GlReqSm *this)
{
  v1 = *(this + 3048);
  if (!*(*(this + 784) + 1318))
  {
    v1 &= 0xFFFFCFFF;
  }

  return !v1 && !*(this + 31608) && !*(this + 31648) && !*(this + 31688) && *(this + 31776) == 0;
}

uint64_t BlueFin::GlReqSm::ShouldTransitionToInternalWarmStandby(BlueFin::GlReqSm *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 31608) || *(this + 31648) || *(this + 31688) || *(this + 31776) != 0;
  v3 = 0;
  if ((*(this + 13646) + 2000) < *(*(this + 785) + 2568) && !v2)
  {
    *(this + 7948) = a2;
    return 1;
  }

  return v3;
}

uint64_t BlueFin::GlPeReqBag::GetInternalWarmStandbyPeriodIfAllowed(uint64_t this)
{
  v1 = (this + 3233);
  v7 = (this + 3233);
  v2 = *(this + 3233);
  v8 = v2;
  *(this + 3233) = 0;
  if (*(this + 1312) == 1)
  {
    v3 = this;
    v4 = 0;
    LODWORD(this) = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + v4);
      if (v6)
      {
        LODWORD(this) = (*(*v6 + 224))(*(v3 + v4));
        ++v5;
      }

      v4 += 8;
    }

    while (v4 != 576);
    if (v5 <= 1)
    {
      this = this;
    }

    else
    {
      this = 0;
    }

    v2 = v8;
    v1 = v7;
  }

  else
  {
    this = 0;
  }

  *v1 = v2;
  return this;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SetCurrentTimeLms(BlueFin::GlPeRqHdlrPosPeriodic *this, int a2)
{
  result = BlueFin::GlPeRqHdlr::SetCurrentTimeLms(this, a2);
  if (*(this + 19))
  {
    v5 = a2 - *(this + 21);
    v6 = a2 - *(this + 25);
  }

  else
  {
    v7 = *(this + 9);
    if (v7 == -1)
    {
      v6 = 1;
      v5 = 1;
    }

    else
    {
      v8 = *(*(this + 1) + 28);
      v9 = *(this + 8) + v7;
      v10 = v9 >= v8;
      v6 = v9 - v8;
      if (!v10)
      {
        v6 = 1;
      }

      v5 = v6;
    }
  }

  *(this + 17) = v5;
  *(this + 18) = v6;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetCurrentTimeLms(BlueFin::GlPeRqHdlrGnssMeasData *this, int a2)
{
  v4 = (this + 172032);
  result = BlueFin::GlPeRqHdlr::SetCurrentTimeLms(this, a2);
  if (v4[930])
  {
    v6 = a2 - v4[929];
  }

  else
  {
    v7 = *(this + 9);
    if (v7 == -1)
    {
      v6 = 1;
    }

    else
    {
      v8 = *(*(this + 1) + 28);
      v9 = *(this + 8) + v7;
      v10 = v9 >= v8;
      v6 = v9 - v8;
      if (!v10)
      {
        v6 = 1;
      }
    }
  }

  v4[928] = v6;
  return result;
}

uint64_t BlueFin::GlPeEphemerisMgr::GetValidity@<X0>(BlueFin::GlPeEphemerisMgr *this@<X0>, BlueFin::GlGnssIdSet *a2@<X1>, BlueFin::GlGnssIdSet *a3@<X2>, BlueFin::GlGnssIdSet *a4@<X3>, BlueFin::GlGnssIdSet *a5@<X4>, unsigned int *a6@<X8>)
{
  v37 = &v39;
  v38 = 2;
  v34 = &v36;
  v35 = 2;
  v31 = &v33;
  v32 = 2;
  v28 = &v30;
  v29 = 2;
  v12 = *(*(this + 2) + 2568);
  v39 = 0;
  v36 = 0;
  v33 = 0;
  v30 = 0;
  if (v12 <= 0xFF9222FE)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12;
  }

  (*(*this + 304))(&__src);
  LOBYTE(v25) = v23;
  memcpy(&v26, __src, 4 * v23);
  WORD1(v25) = 0;
  BYTE1(v25) = 0;
  HIDWORD(v25) = v26;
  BlueFin::GlSetIterator::operator++(&v25);
  while (BYTE1(v25) != v25)
  {
    LOBYTE(__src) = BYTE2(v25);
    if (!(*(*this + 64))(this, &__src, 1, v13))
    {
      v14 = (*(*this + 368))(this, &__src);
      v15 = (*(*v14 + 144))(v14);
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v16 = __src;
          if (__src - 64 <= 0xFFFFFFC0)
          {
LABEL_30:
            DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          }

          v17 = &v31;
          goto LABEL_19;
        }

        if (v15 == 3)
        {
          v16 = __src;
          if (__src - 64 <= 0xFFFFFFC0)
          {
            goto LABEL_30;
          }

          v17 = &v28;
          goto LABEL_19;
        }
      }

      else
      {
        if (!v15)
        {
          v16 = __src;
          if (__src - 64 <= 0xFFFFFFC0)
          {
            goto LABEL_30;
          }

          v17 = &v37;
          goto LABEL_19;
        }

        if (v15 == 1)
        {
          v16 = __src;
          if (__src - 64 <= 0xFFFFFFC0)
          {
            goto LABEL_30;
          }

          v17 = &v34;
LABEL_19:
          (*v17)[v16 >> 5] |= 1 << v16;
        }
      }
    }

    BlueFin::GlSetIterator::operator++(&v25);
  }

  if (a2)
  {
    BlueFin::GlSetBase::operator=(a2, &v37);
    *(a2 + 12) = v39;
  }

  if (a3)
  {
    BlueFin::GlSetBase::operator=(a3, &v34);
    *(a3 + 12) = v36;
  }

  if (a4)
  {
    BlueFin::GlSetBase::operator=(a4, &v31);
    *(a4 + 12) = v33;
  }

  if (a5)
  {
    BlueFin::GlSetBase::operator=(a5, &v28);
    *(a5 + 12) = v30;
  }

  BlueFin::GlSetBase::GlSetBase(&v20, v21, 2u, &v37);
  v25 = v27;
  LOBYTE(v26) = 2;
  v27[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryOr(&v20, &v25, &v34);
  BlueFin::GlSetBase::operator=(&v20, &v25);
  *v21 = v27[0];
  BlueFin::GlSetBase::GlSetBase(&__src, v24, 2u, &v20);
  v25 = v27;
  LOBYTE(v26) = 2;
  v27[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryOr(&__src, &v25, &v31);
  BlueFin::GlSetBase::operator=(&__src, &v25);
  *v24 = v27[0];
  v18 = BlueFin::GlSetBase::GlSetBase(a6, a6 + 3, 2u, &__src);
  v25 = v27;
  LOBYTE(v26) = 2;
  v27[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryOr(v18, &v25, &v28);
  result = BlueFin::GlSetBase::operator=(a6, &v25);
  *(a6 + 3) = v27[0];
  return result;
}

uint64_t BlueFin::GlPeEphemerisMgr::IsEphValid(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!(*(*a1 + 312))(a1))
  {
    return 2;
  }

  v8 = (*(*a1 + 368))(a1, a2);
  v9 = *(*a1 + 72);
  v10.n128_f64[0] = a4;

  return v9(a1, v8, a3, v10);
}

BlueFin::GlPeEphemerisMgr *BlueFin::GlPeGloEphMgr::GetValidity@<X0>(BlueFin::GlPeEphemerisMgr *this@<X0>, BlueFin::GlGnssIdSet *a2@<X1>, BlueFin::GlGnssIdSet *a3@<X2>, BlueFin::GlGnssIdSet *a4@<X3>, BlueFin::GlGnssIdSet *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(this + 7969) == 1)
  {
    if (a2)
    {
      v11 = &v13;
      v12 = 2;
      v13 = 0;
      this = BlueFin::GlSetBase::operator=(a2, &v11);
      *(a2 + 12) = v13;
    }

    if (a3)
    {
      v11 = &v13;
      v12 = 2;
      v13 = 0;
      this = BlueFin::GlSetBase::operator=(a3, &v11);
      *(a3 + 12) = v13;
    }

    if (a4)
    {
      v11 = &v13;
      v12 = 2;
      v13 = 0;
      this = BlueFin::GlSetBase::operator=(a4, &v11);
      *(a4 + 12) = v13;
    }

    if (a5)
    {
      v11 = &v13;
      v12 = 2;
      v13 = 0;
      this = BlueFin::GlSetBase::operator=(a5, &v11);
      *(a5 + 12) = v13;
    }

    *(a6 + 12) = 0;
    *a6 = a6 + 12;
    *(a6 + 8) = 2;
  }

  else
  {

    return BlueFin::GlPeEphemerisMgr::GetValidity(this, a2, a3, a4, a5, a6);
  }

  return this;
}

uint64_t BlueFin::GlArray::Iterator@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *(a2 + 8) = *(this + 39) + 1;
  return this;
}

uint64_t BlueFin::GlMeSrdPwrMeasController::SetHeartbeat(uint64_t a1, int a2, int a3, __int16 a4, __int16 *a5)
{
  v10 = (*(**(a1 + 32) + 760))(*(a1 + 32));
  if ((v10 & 1) == 0)
  {
    v11 = *(a1 + 8);
    v12 = v11 + a3;
    *(a1 + 4) = v11 + a3;
    LOWORD(v11) = a2 - v11;
    *a1 = 1;
    *(a1 + 8) = a2;
    *a5 = a4;
    v13 = a2 - v12;
    a5[1] = v11 - v13;
    a5[2] = v11;
    a5[3] = v13;
    a5[5] = v11;
    BlueFin::GlMeSrdPwrMeas::mA_Estimate(a1 + 8, a5, 0);
    *a1 = 0;
  }

  return v10 ^ 1u;
}

unsigned __int8 *BlueFin::GlMeMsmtHolder::MsmtsCompleteInit(BlueFin::GlMeMsmtHolder *this, unsigned int a2, int a3)
{
  v5 = this + 0x4000;
  BlueFin::GlMeas::init((this + 128));
  v201 = v5;
  *(v5 + 219) = a3 != 1000;
  v229 = v231;
  v230 = 19;
  memset(v231, 0, sizeof(v231));
  v226 = v228;
  v227 = 16;
  memset(v228, 0, 64);
  v223 = v225;
  v224 = 8;
  memset(v225, 0, 32);
  v6 = BlueFin::GlSetBase::Cnt((this + 32));
  GlCustomLog(15, "QDPN_MsmtsComplete_CNT %i\n", v6);
  v218 = *(this + 40);
  memcpy(v222, *(this + 4), 4 * v218);
  v220 = 0;
  v219 = 0;
  v221 = v222[0];
  BlueFin::GlSetIterator::operator++(&v218);
  if (v219 != v218)
  {
    v19 = 0;
    v204 = a2 * 0.001;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v203 = vnegq_f64(v20);
    while (1)
    {
      if (v220 >= 0x23FuLL)
      {
        goto LABEL_361;
      }

      v21 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v220;
      v22 = *v21;
      LODWORD(v21) = v21[1];
      v215[0] = v22;
      v216 = v21;
      LOWORD(v217) = v220;
      v23 = BlueFin::GlSignalIdArray::Get(*(this + 15), v215);
      if (!v23)
      {
        v192 = "pMeDspMeas != nullptr";
        DeviceFaultNotify("glme_msmtholder.cpp", 573, "GetSigMeas", "pMeDspMeas != nullptr");
        v193 = "glme_msmtholder.cpp";
        v194 = 573;
        goto LABEL_360;
      }

      v24 = v23;
      v205 = 0;
      v208 = -1;
      v209[0] = 575;
      LODWORD(v210) = 0;
      WORD2(v210) = -1;
      *&v211 = 0;
      *(&v210 + 1) = 0;
      *(&v211 + 5) = 0;
      v212 = 0uLL;
      memset(&v213[4], 0, 32);
      *&v213[36] = xmmword_298A31A70;
      *&v213[52] = 0;
      *&v213[56] = 0xBF80000000000000;
      *v214 = 2139095039;
      *&v214[4] = 0;
      *&v214[12] = 0x38D1B71700000000;
      BlueFin::GlSigMeas::init(&v205, v23 + 100);
      WORD2(v210) = *(v24 + 112);
      v25 = *(v24 + 140);
      if ((v25 - 8) < 2)
      {
        goto LABEL_34;
      }

      if (v25 == 15)
      {
        break;
      }

      v26 = v210 & 0xFFFF7FFF;
LABEL_36:
      LODWORD(v210) = v26;
      v27 = *(v24 + 84);
      *(&v210 + 1) = *(v24 + 88);
      v28 = *(v24 + 132);
      LODWORD(v211) = *(v24 + 96);
      DWORD1(v211) = v28;
      LODWORD(v212) = *(v24 + 136);
      v29 = (v27 >> 4) & 0x800 | v26 & 0xFFBAF7BF | (((v27 >> 12) & 1) << 16) | (v27 >> 4) & 0x40000 | ((v25 == 14) << 22);
      if ((v27 & 0x800080) != 0)
      {
        v30 = v29 | (v27 >> 11) & 0x40 | 0x1000;
        v31 = v29 | 0x1040;
        if ((v27 & 0x80) != 0)
        {
          v31 = v30;
        }

        v32 = -*(v24 + 8);
        *&v213[40] = *(v24 + 60);
      }

      else
      {
        v32 = -*(v24 + 8);
        v31 = v29 & 0xFFFFEFBF | 0x40;
      }

      v33 = *(v24 + 120);
      if ((v27 & 0x1000000) != 0)
      {
        v34 = v31 | 0x100000;
        *v214 = *(v24 + 128);
      }

      else
      {
        v34 = v31 & 0xFFEFFFFF;
      }

      v35 = (v32 + 262144.0) * 0.00000190734863;
      v36 = floor(v35);
      v37 = ceil(v35);
      if (v35 < 0.0)
      {
        v36 = v37;
      }

      v38 = -v33;
      v39 = (v35 - v36) * 524288.0;
      if (v39 < 0.0)
      {
        v39 = v39 + 524288.0;
      }

      *&v214[4] = v38;
      *&v213[28] = v39 + -262144.0;
      *&v213[60] = *(v24 + 44);
      if ((v27 & 0x40000) != 0)
      {
        v34 |= 0x4000u;
        LODWORD(v210) = v34;
        *&v213[56] = *(v24 + 40);
      }

      *(&v212 + 4) = *(v24 + 48);
      v40 = v34 | v27 & 0x100;
      if ((v27 & 4) != 0)
      {
        *&v213[52] = (*(v24 + 16) * 1000.0);
        v40 |= 0x400u;
      }

      *&v213[44] = *(v24 + 32);
      *&v213[48] = *(v24 + 56);
      *&v214[12] = *(v24 + 148);
      *&v213[36] = *(v24 + 68);
      v41 = *(v24 + 24);
      v42 = *(v24 + 64);
      v43 = (v27 >> 4) & 2 | (v27 >> 6) & 0x80 | v40 & 0xFFF7FFFD | ((*(v24 + 116) == 1) << 19);
      LODWORD(v210) = v43;
      if ((~v27 & 0x208) == 0)
      {
        if ((v27 & 0x400) == 0)
        {
          v192 = "pMeDspMeas->otFlags32.Has(GLME_DSPMEAS_TIMETAG_BIT_ALIGNED)";
          DeviceFaultNotify("glme_msmtholder.cpp", 767, "GetSigMeas", "pMeDspMeas->otFlags32.Has(GLME_DSPMEAS_TIMETAG_BIT_ALIGNED)");
          v193 = "glme_msmtholder.cpp";
          v194 = 767;
          goto LABEL_360;
        }

        v44 = BYTE2(v27) & 8;
        if (*(v24 + 100) - 52 >= 0xE)
        {
          v44 = 8;
        }

        LODWORD(v210) = v43 | v44 | 4;
      }

      v45 = v41 + v42;
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(*(this + 1), v215, 1, 1);
      v253[0] = 0.0;
      v47 = v210 & 0xFFFDFFCF;
      if (!BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v216 - v216 + BlueFin::GlSvId::s_aucSvId2gnss[v215[0]]]])
      {
        v47 = v210 & 0xFFDDFFCF | 0x20000;
      }

      LODWORD(v210) = v47;
      v48 = 0.0;
      v49 = 0xFFFFFFFFLL;
      if (!MsmtSlotPtr || (v47 & 0x100) == 0)
      {
        goto LABEL_163;
      }

      LOBYTE(__src) = 0;
      if (!v215[0])
      {
        goto LABEL_149;
      }

      v50 = MsmtSlotPtr;
      if (v215[0] < 0x21u)
      {
        goto LABEL_63;
      }

      if (v215[0] < 0x42u)
      {
        if (v215[0] >= 0x34u)
        {
          v252 = 0;
          v250 = 0;
          v251 = 0;
          v74 = BlueFin::GlMeSlots::GlonassFrameMgr(MsmtSlotPtr, v215);
          if (BlueFin::GlMeGlonassFrameMgr::GetSystemTime(v74, &v252 + 1, &v252, &v251 + 3, &v251 + 2, &v251 + 1, &v251, &v250))
          {
            if (HIBYTE(v251) == 1)
            {
              v49 = v252;
              LODWORD(v75) = DWORD1(v212);
              LODWORD(v76) = HIDWORD(v252);
              v77 = v75 - v76;
              if (v251 == 1)
              {
                v48 = fmod(v77 + v252, 30000.0) * 0.001;
                v253[0] = v48;
                LODWORD(v210) = v210 | 0x10;
              }

              if (BYTE2(v251) != 1)
              {
                goto LABEL_150;
              }

              HIDWORD(v78) = 1062232653;
              v48 = (v49 + 86400000.0 + v77) * 0.001;
              v253[0] = v48;
              if ((v251 & 0x100) != 0)
              {
LABEL_337:
                LODWORD(v210) = v210 | 0x20;
              }

              else
              {
                v79 = *(this + 2);
                if (*(v79 + 352) >= 43200.0)
                {
                  goto LABEL_336;
                }

                v199 = *(v79 + 352);
                LODWORD(v78) = *(v79 + 356);
                v80 = v45 + v78 * -0.001;
                v81 = *(v79 + 344) + ((*(v24 + 32) + 1.0) * v80);
                v195 = v81;
                v196 = *(v24 + 56);
                v197 = v80;
                v82 = fmodf(v81, 86400.0);
                if (v195 < 86400.0)
                {
                  v82 = v195;
                }

                if (v82 < 0.0)
                {
                  v82 = 86400.0 - fmodf(-v82, 86400.0);
                }

                v83 = v82 * 1000.0;
                if (v83 > 0.0)
                {
                  v84 = 0.5;
                  goto LABEL_308;
                }

                if (v83 < 0.0)
                {
                  v84 = -0.5;
LABEL_308:
                  v172 = (v83 + v84);
                }

                else
                {
                  v172 = 0;
                }

                v173 = (v199 + (fabsf(v197) * v196)) * 1000.0 + 73.0 + 11.0 + 4.0;
                if (v173 <= 0.0)
                {
                  v175 = v49 + 86400000.0 + v77;
                  v174 = v173 < 0.0 ? (v173 + -0.5) : 0;
                }

                else
                {
                  v174 = (v173 + 0.5);
                  v175 = v49 + 86400000.0 + v77;
                }

                v176 = 0.5;
                if (v175 <= 0.0 && (v176 = -0.5, v175 >= 0.0))
                {
                  v177 = 0;
                }

                else
                {
                  v177 = (v175 + v176);
                  if (v177 > 0x5265BFF)
                  {
                    v177 -= 86400000;
                  }
                }

                v178 = v177 - v172;
                v179 = v172 >= v177;
                v180 = v172 - v177;
                if (!v179)
                {
                  v180 = v178;
                }

                if (v180 > 0x2932E00)
                {
                  v180 = 86400000 - v180;
                }

                if (v180 < 10 * v174)
                {
LABEL_336:
                  BYTE1(v251) = 1;
                  goto LABEL_337;
                }
              }

              if (BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v216 - v216 + BlueFin::GlSvId::s_aucSvId2gnss[v215[0]]]] && v250)
              {
                v181 = v210 | 0x20000;
                LODWORD(v210) = v210 | 0x20000;
                if (v250 == 2)
                {
                  RfCarrierWavelengthM = BlueFin::GlSignalId::GetRfCarrierWavelengthM(v215);
                  *&v213[28] = *&v213[28] + RfCarrierWavelengthM * -0.5;
                  v183 = v210 | 0x200000;
                }

                else
                {
                  v183 = v181 & 0xFFDFFFFF;
                }

                LODWORD(v210) = v183;
              }

              goto LABEL_150;
            }
          }
        }

        goto LABEL_149;
      }

      if (v215[0] <= 0x4Bu)
      {
LABEL_63:
        v51 = BlueFin::GlMeSlots::GpsFrameMgr(MsmtSlotPtr, v215);
        TowMeas = BlueFin::GlMeFrameMgr::GetTowMeas(v51, &__src);
        if (BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v216 - v216 + BlueFin::GlSvId::s_aucSvId2gnss[v215[0]]]] && *(BlueFin::GlMeSlots::GpsFrameMgr(v50, v215) + 800))
        {
          LODWORD(v210) = v210 | 0x20000;
          if (*(BlueFin::GlMeSlots::GpsFrameMgr(v50, v215) + 800) == 2)
          {
            if (v217 >= 0x23Fu)
            {
              v192 = "IsValid()";
              DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
              v193 = "glsignalid.h";
              v194 = 651;
              goto LABEL_360;
            }

            v55 = BlueFin::GlSvId::s_aucSvId2gnss[v215[0]];
            v56 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v216 - v216 + v55]];
            if (v55 == 2)
            {
              v57 = (v215[0] - 59);
              if (v215[0] - 52 >= 0xE)
              {
                v57 = -8.0;
              }

              v56 = v56 + v57 * 562500.0;
            }

            HIDWORD(v54) = *&v213[32];
            v53 = *&v213[28] + -299792458.0 / v56 * 0.5;
            *&v213[28] = v53;
            v58 = v210 | 0x200000;
          }

          else
          {
            v58 = v210 & 0xFFDFFFFF;
          }

          LODWORD(v210) = v58;
        }

        if (v216 == 3)
        {
          LODWORD(v210) = v210 & 0xFFDDFFFF | 0x20000;
        }

        if (!TowMeas)
        {
          goto LABEL_149;
        }

        if (v215[0] != __src)
        {
          v192 = "rotSignalId.GetSvId() == stTowMeas.otSvId";
          DeviceFaultNotify("glme_msmtholder.cpp", 836, "GetSigMeas", "rotSignalId.GetSvId() == stTowMeas.otSvId");
          v193 = "glme_msmtholder.cpp";
          v194 = 836;
          goto LABEL_360;
        }

        LODWORD(v53) = DWORD1(v212);
        LODWORD(v54) = HIDWORD(__src);
        v48 = (*&v53 - v54) * 0.001 + (v233 + 604800);
        v253[0] = v48;
        *v85.i64 = BlueFin::GlSystemTime::getSubBitTime(v253, v215, 0);
        *v87.i64 = *v85.i64 + trunc(*v85.i64 * 2.32830644e-10) * -4294967300.0;
        v88 = vbslq_s8(v203, v87, v85);
        if (*v85.i64 > 4294967300.0)
        {
          v85.i64[0] = v88.i64[0];
        }

        v88.i64[0] = v85.i64[0];
        if (*v85.i64 < -4294967300.0)
        {
          *v88.i64 = -*v85.i64;
          *v86.i64 = -(*v85.i64 - trunc(*v85.i64 * -2.32830644e-10) * -4294967300.0);
          v88 = vbslq_s8(v203, v86, v88);
          *v88.i64 = -*v88.i64;
        }

        if (*v88.i64 < 0.0)
        {
          v89 = --*v88.i64;
        }

        else
        {
          v89 = *v88.i64;
        }

        if (v89)
        {
          if (*v85.i64 < -4294967300.0)
          {
            *v88.i64 = -*v85.i64;
            *v85.i64 = -(*v85.i64 - trunc(*v85.i64 * -2.32830644e-10) * -4294967300.0);
            *v85.i64 = -*vbslq_s8(v203, v85, v88).i64;
          }

          if (*v85.i64 < 0.0)
          {
            v90 = --*v85.i64;
          }

          else
          {
            v90 = *v85.i64;
          }

          EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit((v24 + 100));
          if (*(v24 + 108) >= 0x23Fu)
          {
            v192 = "IsValid()";
            DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
            v193 = "glsignalid.h";
            v194 = 679;
            goto LABEL_360;
          }

          if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v24 + 104) - *(v24 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v24 + 100)]])
          {
            v192 = "ucMsPerEpoch != 0";
            DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
            v193 = "glsignalid.h";
            v194 = 686;
            goto LABEL_360;
          }

          *v92.i64 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v24 + 104) - *(v24 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v24 + 100)]] * EpochPerBit) * 0.001;
          *v93.i64 = *v92.i64 + trunc(*v92.i64 * 2.32830644e-10) * -4294967300.0;
          v94 = vbslq_s8(v203, v93, v92);
          if (*v92.i64 > 4294967300.0)
          {
            v92.i64[0] = v94.i64[0];
          }

          if (*v92.i64 < -4294967300.0)
          {
            *v94.i64 = -*v92.i64;
            *v92.i64 = -(*v92.i64 - trunc(*v92.i64 * -2.32830644e-10) * -4294967300.0);
            *v92.i64 = -*vbslq_s8(v203, v92, v94).i64;
          }

          v95 = *v92.i64 < 0.0 ? --*v92.i64 : *v92.i64;
          if (v90 != v95)
          {
            v192 = "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime)==REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)";
            DeviceFaultNotify("glme_msmtholder.cpp", 848, "GetSigMeas", "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime)==REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)");
            v193 = "glme_msmtholder.cpp";
            v194 = 848;
            goto LABEL_360;
          }
        }

        v96 = v210;
        LODWORD(v210) = v210 | 0x10;
        if (TowMeas != 2)
        {
          goto LABEL_149;
        }

        v97 = v96 | 0x30;
LABEL_148:
        LODWORD(v210) = v97;
        goto LABEL_149;
      }

      if (v215[0] <= 0x8Au)
      {
        if ((v216 - 1) >= 2)
        {
          if (v216 == 3)
          {
            v160 = v47 & 0xFFDDFFCF;
          }

          else
          {
            if (v216)
            {
              goto LABEL_149;
            }

            v252 = 0;
            v59 = BlueFin::GlMeSlots::BeidouBitDecoder(MsmtSlotPtr, v215);
            if (!BlueFin::GlMeBeidouDecodeMgr::GetSecondOfWeek(v59, v215, &v252 + 1, &v252))
            {
              goto LABEL_149;
            }

            LODWORD(v60) = DWORD1(v212);
            LODWORD(v61) = HIDWORD(v252);
            v48 = (v60 - v61) * 0.001 + (v252 + 604800);
            v253[0] = v48;
            *v62.i64 = BlueFin::GlSystemTime::getSubBitTime(v253, v215, 0);
            *v64.i64 = *v62.i64 + trunc(*v62.i64 * 2.32830644e-10) * -4294967300.0;
            v65 = vbslq_s8(v203, v64, v62);
            if (*v62.i64 > 4294967300.0)
            {
              v62.i64[0] = v65.i64[0];
            }

            v65.i64[0] = v62.i64[0];
            if (*v62.i64 < -4294967300.0)
            {
              *v65.i64 = -*v62.i64;
              *v63.i64 = -(*v62.i64 - trunc(*v62.i64 * -2.32830644e-10) * -4294967300.0);
              v65 = vbslq_s8(v203, v63, v65);
              *v65.i64 = -*v65.i64;
            }

            if (*v65.i64 < 0.0)
            {
              v66 = --*v65.i64;
            }

            else
            {
              v66 = *v65.i64;
            }

            if (v66)
            {
              if (*v62.i64 < -4294967300.0)
              {
                *v65.i64 = -*v62.i64;
                *v62.i64 = -(*v62.i64 - trunc(*v62.i64 * -2.32830644e-10) * -4294967300.0);
                *v62.i64 = -*vbslq_s8(v203, v62, v65).i64;
              }

              if (*v62.i64 < 0.0)
              {
                v67 = --*v62.i64;
              }

              else
              {
                v67 = *v62.i64;
              }

              *v68.i64 = BlueFin::GlSignalId::GetMsPerBit((v24 + 100)) * 0.001;
              *v69.i64 = *v68.i64 + trunc(*v68.i64 * 2.32830644e-10) * -4294967300.0;
              v70 = vbslq_s8(v203, v69, v68);
              if (*v68.i64 > 4294967300.0)
              {
                v68.i64[0] = v70.i64[0];
              }

              if (*v68.i64 < -4294967300.0)
              {
                *v70.i64 = -*v68.i64;
                *v68.i64 = -(*v68.i64 - trunc(*v68.i64 * -2.32830644e-10) * -4294967300.0);
                *v68.i64 = -*vbslq_s8(v203, v68, v70).i64;
              }

              v71 = *v68.i64 < 0.0 ? --*v68.i64 : *v68.i64;
              if (v67 != v71)
              {
                v192 = "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime) == REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)";
                DeviceFaultNotify("glme_msmtholder.cpp", 970, "GetSigMeas", "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime) == REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)");
                v193 = "glme_msmtholder.cpp";
                v194 = 970;
                goto LABEL_360;
              }
            }

            LODWORD(v210) = v210 | 0x30;
            LOBYTE(v250) = 1;
            if (!BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v216 - v216 + BlueFin::GlSvId::s_aucSvId2gnss[v215[0]]]])
            {
              goto LABEL_149;
            }

            v72 = BlueFin::GlMeSlots::BeidouBitDecoder(v50, v215);
            v73 = v215[0] - 81 > 0x34 ? DWORD1(v212) >> 1 : DWORD1(v212) / 0x14;
            if (!BlueFin::GlMeBeidouPolarityMgr::GetPolarity(v72, 1u, v73, &v250))
            {
              goto LABEL_149;
            }

            if (v250 != 1)
            {
              LODWORD(v210) = v210 | 0x220000;
              v184 = BlueFin::GlSignalId::GetRfCarrierWavelengthM(v215);
              *&v213[28] = *&v213[28] + v184 * -0.5;
              goto LABEL_149;
            }

            v160 = v210 & 0xFFDFFFFF;
          }

          v97 = v160 | 0x20000;
          goto LABEL_148;
        }

LABEL_279:
        LODWORD(v210) = v47 & 0xFFDDFFCF | 0x20000;
        if ((v47 & 2) == 0)
        {
          goto LABEL_149;
        }

        v97 = v47 & 0xFFDDFFCF | 0x20010;
        goto LABEL_148;
      }

      if (v215[0] <= 0xAEu)
      {
        if ((v216 - 1) >= 2)
        {
          if (v216)
          {
            goto LABEL_149;
          }

          v155 = BlueFin::GlMeSlots::GalileoINavDecoder(MsmtSlotPtr, v215);
          if (*(v155 + 752) == 1 && (*(v155 + 753) & 1) != 0)
          {
            v156 = (v155 + 764);
            v157 = (v155 + 760);
            v158 = 1;
            v159 = 1;
          }

          else
          {
            v156 = (v155 + 388);
            v157 = (v155 + 384);
            v158 = *(v155 + 377);
            v159 = *(v155 + 376) & v158;
          }

          v163 = *v157;
          v164 = *v156;
          if (BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v216 - v216 + BlueFin::GlSvId::s_aucSvId2gnss[v215[0]]]])
          {
            v165 = *(v155 + 756);
            v166 = v210;
            LODWORD(v210) = v210 & 0xFFFDFFFF;
            if (v165 == 2)
            {
              LODWORD(v210) = v166 | 0x220000;
              v200 = v163;
              v198 = v164;
              v168 = BlueFin::GlSignalId::GetRfCarrierWavelengthM(v215);
              v164 = v198;
              v163 = v200;
              *&v213[28] = *&v213[28] + v168 * -0.5;
            }

            else if (v165 == 1 || (v167 = *(v24 + 140), v167 <= 0x11) && ((1 << v167) & 0x23000) != 0)
            {
              LODWORD(v210) = v166 & 0xFFDDFFFF | 0x20000;
            }
          }

          if (v159)
          {
            if ((v158 & 1) == 0)
            {
              goto LABEL_149;
            }

            v169 = (v163 + DWORD1(v212) - v164 + 604800000);
            v170 = 48;
          }

          else
          {
            v171 = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(v50, v215);
            if (*(v171 + 8) != 1)
            {
              goto LABEL_149;
            }

            v169 = ((DWORD1(v212) - *(v171 + 4)) % 100);
            v170 = 16;
          }

          v48 = v169 * 0.001;
          v97 = v210 | v170;
          goto LABEL_148;
        }

        goto LABEL_279;
      }

      if (v215[0] <= 0xBCu)
      {
        v149 = BlueFin::GlMeSlots::NavICDecoder(MsmtSlotPtr, v215);
        if ((*(v149 + 368) & 1) != 0 || *(v149 + 744) == 1)
        {
          LODWORD(v210) = v210 | 0x10;
        }

        v150 = BlueFin::GlMeSlots::NavICDecoder(v50, v215);
        if (v150[368] == 1 && (v150[369] & 1) != 0)
        {
          v153 = v150 + 380;
          v154 = v150 + 376;
LABEL_297:
          LODWORD(v151) = DWORD1(v212);
          LODWORD(v152) = *v153;
          *&v161 = v152;
          v162 = v151 - *&v161;
          LODWORD(v210) = v210 | 0x20;
          LODWORD(v161) = *v154;
          v48 = v161 * 0.001 + v162 * 0.001;
          goto LABEL_149;
        }

        if (v150[744] == 1)
        {
          v49 = 0xFFFFFFFFLL;
          if ((v150[745] & 1) == 0)
          {
            goto LABEL_150;
          }

          v153 = v150 + 756;
          v154 = v150 + 752;
          goto LABEL_297;
        }
      }

LABEL_149:
      v49 = 0xFFFFFFFFLL;
LABEL_150:
      v98 = v215[0] - 76;
      if (v215[0] < 0x4Cu)
      {
        if (!v215[0])
        {
          goto LABEL_163;
        }

        if (v215[0] >= 0x21u)
        {
          if (v215[0] < 0x42u)
          {
            goto LABEL_163;
          }

          if (v216 != 3)
          {
            goto LABEL_163;
          }

          v103 = *(this + 2);
          if ((*(v103 + (v215[0] - 66) + 10028) & 1) == 0)
          {
            goto LABEL_163;
          }

          v100 = v103 + 4 * (v215[0] - 66);
          v101 = 10040;
        }

        else
        {
          v102 = *(this + 2);
          if ((*(v102 + (v215[0] - 1) + 9868) & 1) == 0)
          {
            goto LABEL_163;
          }

          v100 = v102 + 4 * (v215[0] - 1);
          v101 = 9900;
        }
      }

      else
      {
        if (v215[0] >= 0x8Bu)
        {
          goto LABEL_163;
        }

        v99 = *(this + 2);
        if (*(v99 + v98 + 10080) != 1)
        {
          goto LABEL_163;
        }

        v100 = v99 + 4 * v98;
        v101 = 10144;
      }

      v104 = DWORD1(v212) - *(v100 + v101);
      v48 = (v104 % BlueFin::GlSignalId::GetMsPerSecFrame(v215)) * 0.001;
      LODWORD(v210) = v210 | 0x10;
LABEL_163:
      if ((v205 - 52 < 0xE || v205 - 76 <= 0x3E && !v208) && (~v210 & 0x32) == 0 && (~v210 & 0xC) != 0 && (*(v24 + 84) & 0x400) != 0)
      {
        LODWORD(v210) = v210 | 0xC;
      }

      v105 = v204 - v45;
      v106 = ((v204 - v45) * 1000.0);
      if (v106 >= 0)
      {
        v107 = ((v204 - v45) * 1000.0);
      }

      else
      {
        v107 = -v106;
      }

      v108 = *&v213[52];
      if (v107 >= 0x7D0)
      {
        v108 = *&v213[52] + v106;
        *&v213[52] += v106;
      }

      if (v108 < 0)
      {
        v108 = -v108;
      }

      if (v108 >= 0x1F4)
      {
        LODWORD(v210) = v210 | 0x400;
      }

      if (*(*(this + 2) + 32))
      {
        v109 = 5.99999994e-10;
      }

      else
      {
        v109 = 0.00000000560346142;
      }

      v110 = fabs(v105);
      v111 = v110 * v109;
      *&v213[48] = *&v213[48] + v111;
      v112 = v110 * *(v24 + 56);
      *&v213[36] = *&v213[36] + v112;
      v113 = *(v24 + 32);
      *&v213[28] = *&v213[28] + v113 * 299792458.0 * v105;
      v114 = v105 * (1.0 / (1.0 - v113));
      SubBitAndEpochTime = v48 + v114;
      __src = *&SubBitAndEpochTime;
      if (v215[0] < 0x8Bu)
      {
        if ((v215[0] > 0x4Bu || v215[0] && v215[0] - 66 <= 0xFFFFFFDE) && v216 == 3 && (v210 & 0x10) != 0)
        {
          MsPerSecFrame = BlueFin::GlSignalId::GetMsPerSecFrame(v215);
          v118 = fmod(SubBitAndEpochTime, ((8389 * (MsPerSecFrame >> 3)) >> 20));
          if (v118 < 0.0)
          {
            v118 = v118 + ((8389 * (BlueFin::GlSignalId::GetMsPerSecFrame(v215) >> 3)) >> 20);
          }

          SubBitAndEpochTime = v118 + 604800.0;
          goto LABEL_196;
        }
      }

      else if (v215[0] <= 0xAEu && (v210 & 0x30) == 0x10)
      {
        v116 = fmod(SubBitAndEpochTime, 0.1);
        if (v116 < 0.0)
        {
          v116 = v116 + 0.1;
        }

        SubBitAndEpochTime = v116 + 604800.0;
LABEL_196:
        __src = *&SubBitAndEpochTime;
      }

      if (v49 == 0xFFFFFFFF)
      {
        goto LABEL_203;
      }

      if (v49 >= 0xA4CF69)
      {
        goto LABEL_201;
      }

      if (SubBitAndEpochTime < 97199.0)
      {
        if (v49 < 0xA4C798)
        {
          goto LABEL_203;
        }

LABEL_201:
        if (SubBitAndEpochTime > 97201.0)
        {
          goto LABEL_203;
        }
      }

      __src = *&v114;
      LODWORD(v210) = v210 & 0xFFFFFFCF;
      SubBitAndEpochTime = v114;
LABEL_203:
      if (v114 * 1000.0 > 0.0)
      {
        v119 = 0.5;
LABEL_208:
        v120 = (v114 * 1000.0 + v119);
        goto LABEL_209;
      }

      if (v114 * 1000.0 < 0.0)
      {
        v119 = -0.5;
        goto LABEL_208;
      }

      v120 = 0;
LABEL_209:
      *(&v212 + 4) = vadd_s32(*(&v212 + 4), vdup_n_s32(v120));
      v121 = *(v24 + 140);
      if (v121 <= 0xFu && ((1 << v121) & 0x8300) != 0)
      {
        DWORD1(v212) = 0;
        LODWORD(v210) = v210 & 0xFFFFFEFF;
      }

      if (SubBitAndEpochTime >= 0.0)
      {
        *&v213[4] = SubBitAndEpochTime;
        if (v121 == 16 || v121 == 14)
        {
          SubBitAndEpochTime = floor(v45) + SubBitAndEpochTime;
          *&v213[4] = SubBitAndEpochTime;
        }
      }

      else
      {
        SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&__src, v215, 1u);
        *&v213[4] = SubBitAndEpochTime;
        if (v215[0] - 52 >= 0xE)
        {
          v122 = v210 & 0xFFFFFFCF;
        }

        else
        {
          v122 = v210;
        }

        LODWORD(v210) = v122 & 0xFFFFFFDF;
      }

      if (!v215[0])
      {
        goto LABEL_232;
      }

      if (v215[0] < 0x21u)
      {
        goto LABEL_224;
      }

      if (v215[0] >= 0x42u)
      {
        if (v215[0] > 0xBCu)
        {
          goto LABEL_232;
        }

LABEL_224:
        if (SubBitAndEpochTime >= 604800.0)
        {
          v123 = SubBitAndEpochTime + -604800.0;
LABEL_226:
          *&v213[4] = v123;
          goto LABEL_232;
        }

        goto LABEL_232;
      }

      if (v215[0] >= 0x34u)
      {
        if (SubBitAndEpochTime >= 86400.0)
        {
          SubBitAndEpochTime = SubBitAndEpochTime + -86400.0;
          *&v213[4] = SubBitAndEpochTime;
        }

        if ((v210 & 0x30) == 0x10)
        {
          v123 = fmod(SubBitAndEpochTime, 30.0);
          goto LABEL_226;
        }
      }

LABEL_232:
      if (v106)
      {
        if ((*(v24 + 84) & 0x40) == 0 && ((*(**(this + 3) + 48))(*(this + 3)) & 1) == 0)
        {
          __src = &off_2A1F0E398;
          LOBYTE(v233) = 0;
          v234 = -1;
          v235 = 575;
          v236 = 0;
          v238 = xmmword_298A339D0;
          v237 = 0;
          v239 = 2139095039;
          v240 = 0;
          v241 = 2139095039;
          v242 = 0;
          v243 = 0x7FEFFFFFFFFFFFFFLL;
          v244 = -1;
          v245 = -1;
          v247 = 0;
          v248 = 0;
          v246 = 0;
          v249 = 0;
          v124 = *(this + 2);
          HIDWORD(v252) = 1;
          if (!(*(*v124 + 24))(v124, v24 + 100, &__src, &v252 + 4, 0, 0, a2, 0.0, 0.0) || *(&v238 + 2) >= 0.000000016 || v107 > 0x63 || vabds_f32(*(&v238 + 1), *(v24 + 32)) >= 0.0000001)
          {
            LODWORD(v210) = v210 & 0xFFFFEFD5;
          }
        }
      }

      DWORD2(v211) = BlueFin::GlMeDSPMeas::GetMeasTrackMode(v24);
      if (DWORD2(v211))
      {
        BYTE12(v211) = *(v24 + 144);
      }

      if (*&v213[48] < 0.0)
      {
        v192 = "otMeSigMeas.m_fDopplerUncPpu >= 0.0";
        DeviceFaultNotify("glme_msmtholder.cpp", 116, "MsmtsCompleteInit", "otMeSigMeas.m_fDopplerUncPpu >= 0.0");
        v193 = "glme_msmtholder.cpp";
        v194 = 116;
        goto LABEL_360;
      }

      if (*&v213[36] < 0.0)
      {
        v192 = "otMeSigMeas.m_fRcvdSysTimeUncS >= 0.0";
        DeviceFaultNotify("glme_msmtholder.cpp", 117, "MsmtsCompleteInit", "otMeSigMeas.m_fRcvdSysTimeUncS >= 0.0");
        v193 = "glme_msmtholder.cpp";
        v194 = 117;
        goto LABEL_360;
      }

      if (*&v213[40] < 0.0)
      {
        v192 = "otMeSigMeas.m_fAccPhaseUncM >= 0.0";
        DeviceFaultNotify("glme_msmtholder.cpp", 118, "MsmtsCompleteInit", "otMeSigMeas.m_fAccPhaseUncM >= 0.0");
        v193 = "glme_msmtholder.cpp";
        v194 = 118;
        goto LABEL_360;
      }

      v125 = *&v213[52];
      v126 = BlueFin::GlSignalIdArray::Get(*(this + 15), v215);
      v127 = v126;
      if (v125 <= a3)
      {
        if ((v210 & 0x30) == 0x30)
        {
          if (*(v126 + 86) & 0x10) != 0 && ((*&v223[(v215[0] >> 3) & 0x1C] >> (v215[0] & 0x1F)))
          {
            BlueFin::GlSetBase::Remove(&v223, v215[0]);
          }
        }

        else if ((v210 & 0x30) == 0 && (*(v126 + 86) & 0x10) != 0 && *(v126 + 40) < 30.0)
        {
          *&v223[(v215[0] >> 3) & 0x1C] |= 1 << v215[0];
        }

        v129 = *(this + 2156) + 144 * v19;
        if (v129 != &v205)
        {
          *v129 = v205;
          *(v129 + 4) = v208;
          *(v129 + 8) = v209[0];
        }

        *(v129 + 12) = v210;
        v130 = v211;
        v131 = v212;
        v132 = *v213;
        *(v129 + 76) = *&v213[16];
        *(v129 + 60) = v132;
        *(v129 + 44) = v131;
        *(v129 + 28) = v130;
        v133 = *&v213[32];
        v134 = *&v213[48];
        v135 = *v214;
        *(v129 + 140) = *&v214[16];
        *(v129 + 124) = v135;
        *(v129 + 108) = v134;
        *(v129 + 92) = v133;
        v136 = *(v127 + 140);
        if (v136 == 14 || v136 == 16)
        {
          v137 = *(this + 2156);
          *(v137 + 144 * v19 + 12) = 4210688;
        }

        else
        {
          v137 = *(this + 2156);
        }

        BlueFin::GlSatCarrId::GlSatCarrId(&__src, *(v137 + 144 * v19 + 16), *(v137 + 144 * v19 + 4));
        v138 = __src + 100 * BYTE4(__src);
        v139 = v138 >> 5;
        v140 = *&v226[4 * (v138 >> 5)];
        v141 = v138 & 0x1F;
        if (((v140 >> v141) & 1) == 0)
        {
          *&v226[4 * v139] = (1 << v141) | v140;
          *&v229[4 * (v209[0] >> 5)] |= 1 << SLOBYTE(v209[0]);
          if (v19 >= 0x64)
          {
            v192 = "ucChnIdx < GL_CHANNELS";
            DeviceFaultNotify("glme_msmtholder.cpp", 176, "MsmtsCompleteInit", "ucChnIdx < GL_CHANNELS");
            v193 = "glme_msmtholder.cpp";
            v194 = 176;
            goto LABEL_360;
          }

          ++v19;
        }

        v142 = v209[0];
        if ((*(*(this + 2163) + 4 * (v209[0] >> 5)) >> (v209[0] & 0x1F)))
        {
          v143 = 0;
          v144 = *(this + 354);
          v145 = (v144 + 24);
          while (1)
          {
            v146 = (v144 + 184 * v143);
            if (*v146 == v205 && *(v146 + 1) == v208)
            {
              break;
            }

            ++v143;
            v145 += 23;
            if (v143 == 14)
            {
              goto LABEL_274;
            }
          }

          v147 = v146[16];
          if (v146[16])
          {
            v148 = *&v213[4];
            do
            {
              *v145 = v148 - *v145;
              v145 += 5;
              --v147;
            }

            while (v147);
          }

          BlueFin::GlSetBase::Remove(this + 17304, v142);
        }

LABEL_274:
        v128 = **BlueFin::GlSignalIdArray::Get(*(this + 15), v215);
      }

      else
      {
        v128 = **v126;
      }

      v128();
      BlueFin::GlBigArray::Remove(*(this + 15) + 1152, v217);
      BlueFin::GlSetBase::Remove(this + 32, v217);
      BlueFin::GlSetIterator::operator++(&v218);
      if (v219 == v218)
      {
        goto LABEL_2;
      }
    }

    *(v24 + 84) &= 0xFFFFFF9F;
LABEL_34:
    v26 = v210 | 0x8000;
    goto LABEL_36;
  }

LABEL_2:
  if (*(*(this + 15) + 1186) + 1 != *(*(this + 15) + 1184))
  {
    v192 = "m_otMsmtArray.IsEmpty()";
    DeviceFaultNotify("glme_msmtholder.cpp", 206, "MsmtsCompleteInit", "m_otMsmtArray.IsEmpty()");
    v193 = "glme_msmtholder.cpp";
    v194 = 206;
    goto LABEL_360;
  }

  *(this + 32) = a2;
  if (!*v223)
  {
    if (v224 < 2uLL)
    {
      goto LABEL_349;
    }

    v185 = v224 - 1;
    v186 = v223 + 4;
    while (!*v186++)
    {
      if (!--v185)
      {
        goto LABEL_349;
      }
    }
  }

  BlueFin::GlSetBase::GlSetBase(&__src, &v234, 8u, &v223);
  v7 = __src;
  v8 = v233;
  v201[900] = -1;
  *(v201 + 113) = 0;
  v205 = v8;
  memcpy(v209, v7, 4 * v8);
  v207 = 0;
  v206 = 0;
  v208 = *v209;
  BlueFin::GlSetIterator::operator++(&v205);
  while (v206 != v205)
  {
    v9 = *(this + 1);
    v218 = v207;
    v221 = 0;
    LOWORD(v222[0]) = 575;
    if (v207 - 189 >= 0xFFFFFF44)
    {
      v10 = BlueFin::GlSvId::s_aucSvId2gnss[v207];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10] == 255)
      {
        v221 = -1;
      }

      else
      {
        LOWORD(v222[0]) = BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v207 - BlueFin::GlSvId::s_aucGnss2minSvId[v10];
      }
    }

    v11 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v9, &v218, 1, 1);
    if (v11)
    {
      if ((*(v11 + 86) & 0x10) != 0)
      {
        v12 = *(v11 + 80);
        if (*(v201 + 224) < v12)
        {
          *(v201 + 224) = v12;
          v13 = *(v11 + 100);
          if (!*(v11 + 100) || (v13 >= 0x21 ? (v14 = v13 - 66 > 0xFFFFFFF1) : (v14 = 1), !v14))
          {
            v192 = "IS_GPS_SVID(*pMeDspMeas->otSignalId.GetSvId()) INC_GLO(|| IS_GLONASS_SVID(*pMeDspMeas->otSignalId.GetSvId()))";
            DeviceFaultNotify("glme_msmtholder.cpp", 298, "PickBestSvId4FrameSyncOnly", "IS_GPS_SVID(*pMeDspMeas->otSignalId.GetSvId()) INC_GLO(|| IS_GLONASS_SVID(*pMeDspMeas->otSignalId.GetSvId()))");
            v193 = "glme_msmtholder.cpp";
            v194 = 298;
            goto LABEL_360;
          }

          v201[900] = v13;
          *(v201 + 113) = *(v11 + 72);
        }
      }
    }

    BlueFin::GlSetIterator::operator++(&v205);
  }

  v15 = (*(this + 2156) + 64);
  v16 = 6000;
  v17 = 100;
  do
  {
    v18 = *(v15 - 64);
    if ((v18 - 1) > 0xBB)
    {
      break;
    }

    if (v18 == v201[900])
    {
      if ((v18 - 52) < 0xE)
      {
        v16 = 2000;
      }

      *v15 = *v15 + ((*(this + 32) - *(v201 + 227)) % v16 + *(v201 + 226)) / 1000.0;
      *(v15 - 13) |= 0x10u;
    }

    v15 += 18;
    --v17;
  }

  while (v17);
LABEL_349:
  v205 = v201[928];
  memcpy(v209, *(this + 2163), 4 * v205);
  v207 = 0;
  v206 = 0;
  v208 = *v209;
  result = BlueFin::GlSetIterator::operator++(&v205);
  if (v206 != v205)
  {
    while (v207 <= 0x23EuLL)
    {
      v189 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v207;
      v190 = *(this + 354);
      v191 = 14;
      while (*v189 != *v190 || *(v190 + 1) != v189[1])
      {
        v190 += 184;
        if (!--v191)
        {
          goto LABEL_357;
        }
      }

      v190[16] = 0;
LABEL_357:
      result = BlueFin::GlSetIterator::operator++(&v205);
      if (v206 == v205)
      {
        return result;
      }
    }

LABEL_361:
    v192 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v193 = "glsignalid.h";
    v194 = 578;
LABEL_360:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v193, v194, v192);
  }

  return result;
}

void BlueFin::GlMeMsmtHolder::MsmtsComplete(void **this, unsigned int a2, int a3)
{
  v4 = (this + 2048);
  BlueFin::GlMeMsmtHolder::MsmtsCompleteInit(this, a2, a3);
  (*(**this + 16))(*this, this + 128);
  v4[912] = 0;
  bzero(this[2163], ((4 * v4[928] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v5 = this[354];
  v5[16] = 0;
  v5[200] = 0;
  v5[384] = 0;
  v5[568] = 0;
  v5[752] = 0;
  v5[936] = 0;
  v5[1120] = 0;
  v5[1304] = 0;
  v5[1488] = 0;
  v5[1672] = 0;
  v5[1856] = 0;
  v5[2040] = 0;
  v5[2224] = 0;
  v5[2408] = 0;
}

void BlueFin::GlMeas::init(BlueFin::GlMeas *this)
{
  v2 = 0;
  *this = 0;
  v3 = 100;
  do
  {
    v4 = *(this + 2140);
    v5[0] = 0;
    v6 = -1;
    v7 = 575;
    BlueFin::GlSigMeas::init(v4 + v2, v5);
    v2 += 144;
    --v3;
  }

  while (v3);
}

void BlueFin::GlMeMeasAidFilter::MeasurementComplete(void **this, BlueFin::GlMeMeasSelfAidFilter *a2, int a3)
{
  BlueFin::GlMeMsmtHolder::MsmtsComplete(this + 1460, a2, a3);
  BlueFin::GlMeMsmtMgr::MsmtsComplete((this + 1328), a2);
  BlueFin::GlMeUserDynamic::GlMeUserDynamicUpdate((this + 6));
  if (!*(this + 7235))
  {

    BlueFin::GlMeMeasSelfAidFilter::UpdateMeSelfAid(a2, v5);
  }
}

double BlueFin::GlSigMeas::init(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 12) = 0;
  *(a1 + 16) = -1;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 33) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = xmmword_298A31A70;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0xBF80000000000000;
  *(a1 + 124) = 2139095039;
  *(a1 + 128) = 0;
  result = 5.33097249e-35;
  *(a1 + 136) = 0x38D1B71700000000;
  return result;
}

uint64_t BlueFin::GlDbgPeIf::SetSIGMeasuement(BlueFin::GlDbgPeIf *this, BlueFin::GlMeas *a2)
{
  result = *(this + 1);
  if (a2)
  {
    *(result + 580) = 1;
    if (*(result + 576) == 1)
    {
      if (*(result + 808))
      {
        return result;
      }

      BlueFin::GlDbgCodec::WriteStart(result, 4624);
      v7 = *(this + 1);
      if ((*(*v7 + 120))(v7))
      {
        *(v7 + 143) = 2;
        BlueFin::GlDbgCodec::Rvw(v7, a2);
      }

      (*(**(this + 1) + 32))(*(this + 1), 1);
      (*(**(this + 2) + 16))(*(this + 2), a2);
      BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4624);
      v6 = *(**(this + 1) + 32);
    }

    else
    {
      v6 = *(**(this + 2) + 16);
    }

    return v6();
  }

  v5 = *(*result + 104);

  return v5();
}

uint64_t BlueFin::GlPeTimeManager::SetCurrentAsicLms(BlueFin::GlPeTimeManager *this, int a2)
{
  *(this + 642) = a2;
  *(this + 643) = *(BlueFin::GlUtils::m_pInstance + 1092);
  BlueFin::GlPeTimeManager::cacheGnssTime(this);
  BlueFin::GlPeTimeManager::handleSpecialTimeEvents(this);
  BlueFin::GlPeTimeManager::outputCurrentLmsAndSources(this);

  return BlueFin::GlPeTimeManager::outputCurrentTime(this);
}

void BlueFin::GlPeTimeManager::handleSpecialTimeEvents(BlueFin::GlPeTimeManager *this)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = *(this + 855);
  if (!v2)
  {
    v2 = -7200002;
  }

  v3 = v2 - *(this + 642);
  if (v3 <= 0x4E20)
  {
    if (v3 < 0x3E9)
    {
      GlCustomLog(10, "GlPeTimeManager::handleSpecialTimeEvents(%u):  Error - LMS Rollover has occurred.  Forcing hot-start.\n", *(this + 642));
      *(this + 2768) = 1;
    }

    else
    {
      GlCustomLog(10, "GlPeTimeManager::handleSpecialTimeEvents(%u):  Warning - LMS Rollover condition in %d seconds\n", *(this + 642), v3 / 0x3E8u);
    }
  }

  if (*(this + 3388) == 1)
  {
    BlueFin::GlPeTimeManager::GetTime(this, 1, v39);
    *__s = &off_2A1F0B5F0;
    *&__s[8] = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(v39, __s);
    v8 = (*(*__s + 32))(__s, Gps);
    LODWORD(v7) = *&__s[8];
    *v8.i64 = v7 * 2.32830644e-10 + v6;
    *v9.i64 = *v8.i64 + trunc(*v8.i64 * 2.32830644e-10) * -4294967300.0;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v11 = vnegq_f64(v10);
    *&v12 = vbslq_s8(v11, v9, v8).u64[0];
    if (*v8.i64 > 4294967300.0)
    {
      *v8.i64 = v12;
    }

    if (*v8.i64 < -4294967300.0)
    {
      *v5.i64 = -*v8.i64;
      *v8.i64 = -(*v8.i64 - trunc(*v8.i64 * -2.32830644e-10) * -4294967300.0);
      *v8.i64 = -*vbslq_s8(v11, v8, v5).i64;
    }

    if (*v8.i64 < 0.0)
    {
      v13 = --*v8.i64;
    }

    else
    {
      v13 = *v8.i64;
    }

    *(this + 848) = v13;
    if (v13 >= *(this + 850) && v13 <= *(this + 851))
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *__s = 0u;
      v41 = 0u;
      if ((*(this + 3412) & 1) == 0)
      {
        *(this + 3412) = 1;
        *(this + 852) |= 1u;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          if (BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE))
          {
            BlueFin::GlFormat::glsnprintf(__s, 0x64, "Start of blackout period", v14);
          }
        }
      }

      if (*(this + 848) >= *(this + 849) && (*(this + 3413) & 1) == 0)
      {
        *(this + 3413) = 1;
        *(this + 852) |= 2u;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          if (BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE))
          {
            BlueFin::GlFormat::glsnprintf(__s, 0x64, "New quarter handled.", v15);
          }
        }
      }

      if (*(this + 3413) == 1 && (*(this + 3415) & 1) == 0)
      {
        v16 = *(this + 648);
        if (v16)
        {
          v17 = *(this + 646);
          if (v17 && (*(this + 654) - 1) <= 1)
          {
            BlueFin::GlPeGnssTime::operator-=(this + 652, (*(this + 2596) - *(this + 2588)));
            v17 = *(this + 646);
            v16 = *(this + 648);
          }

          *(this + 650) = v17;
          *(this + 2604) = *(this + 2588);
          *(this + 646) = v16;
          *(this + 2588) = *(this + 2596);
          *(this + 648) = 0;
          *(this + 2596) = 0x80;
          *(this + 3415) = 1;
          *(this + 852) |= 4u;
          if (BlueFin::GlUtils::m_ucEnabled && BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE))
          {
            v18 = strlen(__s);
            if (*(this + 2604) == *(this + 2588))
            {
              v20 = "No change in Leap Second.";
            }

            else
            {
              v20 = "New Leap Second applied.";
            }

            BlueFin::GlFormat::glsnprintf(&__s[v18], (100 - v18), v20, v19);
          }
        }
      }

      if (*(this + 848) == *(this + 851))
      {
        *(this + 3414) = 1;
        *(this + 852) |= 8u;
        if (BlueFin::GlUtils::m_ucEnabled && BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE))
        {
          BlueFin::GlFormat::glsnprintf(__s, 0x64, "Blackout period ended.", v21);
        }

        if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs)
        {
          v22 = BlueFin::GlWeekTowTime::m_ucNextLs;
          BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs = 0;
          BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent = 0;
          BlueFin::GlWeekTowTime::m_ucNextLs = 0;
          BlueFin::GlWeekTowTime::m_ucCurrentLs = v22;
        }
      }

      v30 = &unk_2A1F11310;
      v31 = 0;
      v23 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
      v32 = 1980;
      v33 = v23 / 0x15180 + 1;
      v34 = 1;
      v35 = v23 / 0x15180 + 1;
      v36 = v23 % 0x15180 / 0xE10;
      v37 = (2185 * (v23 - 3600 * ((1193047 * v23) >> 32))) >> 17;
      v38 = v23 - 60 * ((71582789 * v23) >> 32);
      Utc = BlueFin::GlPeGnssTime::GetUtc(v39, &v30);
      LOBYTE(Utc) = v38;
      LODWORD(v25) = v31;
      v26 = v25 * 2.32830644e-10 + *&Utc;
      v27 = "  Event:";
      if (!__s[0])
      {
        v27 = "";
      }

      GlCustomLog(14, "GlPeTimeManager::handleSpecialTimeEvents(%u):  UTC:%hd/%02d/%02d %02d:%02d:%012.9lf  TimeLeft:%3u  LeapSec:%u%s%s\n", *(this + 642), v32, v34, v35, v36, v37, v26, (*(this + 851) - *(this + 848)), *(this + 2588), v27, __s);
      v13 = *(this + 848);
    }

    if (v13 == *(this + 854))
    {
      *(this + 852) |= 0x10u;
      v28 = *(this + 3424) + 1;
      *(this + 3424) = v28;
      *(this + 1713) = v28 << 10;
    }
  }

  v29 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeTimeManager::outputCurrentLmsAndSources(BlueFin::GlPeTimeManager *this)
{
  v2 = *(this + 642);
  if (v2 >= 0x3E8 && (*(this + 2913) & 1) == 0)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE);
      v2 = *(this + 642);
    }

    GlCustomLog(14, "GlPeTimeManager::recoverFromSleep(%u): Could not recover.  Time not stored in prior session.\n", v2);
    *(this + 2913) = 1;
    v2 = *(this + 642);
  }

  GlCustomLog(15, "GlPeTimeManager::SetCurrentAsicLms(%u)  TimeSources:{", v2);
  v3 = *(this + 686);
  if (*(this + 644))
  {
    v3 |= 1 << *(this + 644);
  }

  if (v3)
  {
    v6[1] = v3;
    v6[2] = v3;
    v6[0] = 1;
    BlueFin::GlSetIterator::operator++(v6);
    if (BYTE1(v6[0]) != LOBYTE(v6[0]))
    {
      v4 = "%s";
      do
      {
        GlCustomLog(15, v4, BlueFin::GlPeTimeManager::m_acTimeSourceImage[SHIWORD(v6[0])]);
        BlueFin::GlSetIterator::operator++(v6);
        v4 = ", %s";
      }

      while (BYTE1(v6[0]) != LOBYTE(v6[0]));
    }
  }

  else
  {
    GlCustomLog(15, "%s", "<None>");
  }

  return GlCustomLog(15, "}  VerifySource:%s\n", BlueFin::GlPeTimeManager::m_acTimeSourceImage[*(this + 645)]);
}

void BlueFin::GlPeMsmtMgr::SetMeasurement(BlueFin::GlPeMsmtMgr *this, BlueFin::GlMeas *a2, int a3)
{
  v4 = this;
  v128 = *MEMORY[0x29EDCA608];
  v5 = this + 55872;
  *(this + 1) = *this;
  *this = *a2;
  *(this + 4696) = *(a2 + 4283);
  v112 = (this + 8);
  bzero(*(this + 1), ((4 * *(this + 16) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v4 + 23), ((4 * *(v4 + 192) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v4 + 12), ((4 * *(v4 + 104) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v5 + 46), ((4 * v5[376] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  memset(v122, 0, sizeof(v122));
  v117 = v4;
  v118[1] = 0;
  v118[0] = 0;
  if (a3 < 1)
  {
    LOWORD(v8) = 0;
    v115 = 0;
    v9 = a2;
    goto LABEL_30;
  }

  v113 = a3;
  v6 = 0;
  v7 = 0;
  v115 = 0;
  LOWORD(v8) = 0;
  v9 = a2;
  while (1)
  {
    v10 = *(v9 + 2140);
    v11 = v10 + v6;
    v12 = *(v10 + v6);
    if ((v12 - 1) > 0xBB)
    {
      break;
    }

    v13 = *(v11 + 12);
    LOBYTE(v123) = *(v10 + v6);
    v14 = *(v11 + 4);
    LOWORD(v124[0]) = *(v11 + 8);
    HIDWORD(v123) = v14;
    if (BlueFin::GlSvId::s_aucSvId2gnss[v12] != 4 || (v5[344] & 1) == 0)
    {
      inserted = BlueFin::GlPeMsmtMgr::insertMePeMeas(v117, v10 + v6, 0);
      v16 = inserted;
      if ((v13 & 0x4000) != 0)
      {
        *(v122 + v115) = *(v10 + v6 + 116);
        v18 = BlueFin::GlSignalIdArray::Get(*(v117 + 18792), (v10 + v6));
        if (!v18 || ((v19 = *(v18 + 272), v20 = v19 > 6, v21 = (1 << v19) & 0x52, !v20) ? (v22 = v21 == 0) : (v22 = 1), v22))
        {
          v23 = *(v11 + 4);
          if (!v23 || *(v10 + v6 + 116) > 20.0)
          {
            v24 = v10 + v6;
            if (*(v10 + v6 + 108) < 0.0000001)
            {
              v25 = *v5;
              v26 = *(v24 + 8);
              v27 = *v5 + 32 * v26;
              if (v11 != v27)
              {
                *v27 = *v11;
                *(v27 + 4) = v23;
                *(v27 + 8) = v26;
                v26 = *(v24 + 8);
              }

              v28 = v25 + 32 * v26;
              *(v28 + 12) = *(v10 + v6 + 16);
              *(v28 + 16) = *(v10 + v6 + 104);
              *(v28 + 24) = *a2;
              *(*(v5 + 1) + 4 * (v26 >> 5)) |= 1 << v26;
            }
          }
        }

        ++v115;
        if (v16)
        {
          *(*v112 + 4 * (*(v10 + v6 + 8) >> 5)) |= 1 << *(v10 + v6 + 8);
          LOWORD(v8) = v8 + 1;
        }

        else
        {
          *(v118 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v7;
        }
      }

      else if (inserted)
      {
        v17 = BlueFin::GlSignalIdArray::Get(*(v117 + 18792), &v123);
        v9 = a2;
        if (v17)
        {
          *(v17 + 272) = 2570;
        }

        goto LABEL_26;
      }
    }

    v9 = a2;
LABEL_26:
    if (v7 <= 0x62)
    {
      ++v7;
      v6 += 144;
      if (v113 > v8)
      {
        continue;
      }
    }

    break;
  }

  v4 = v117;
  a3 = v113;
LABEL_30:
  LODWORD(v123) = 4;
  memcpy(v124, v118, 0x10uLL);
  HIDWORD(v123) = v124[0];
  BlueFin::GlSetIterator::operator++(&v123);
  v30 = a3 > v8;
  if (BYTE1(v123) != v123 && a3 > v8)
  {
    do
    {
      v31 = *(v9 + 2140) + 144 * SWORD1(v123);
      if ((BlueFin::GlPeMsmtMgr::insertMePeMeas(v4, v31, 1) & 1) == 0)
      {
        v109 = "insertMePeMeas(rotMeMeas, true)";
        DeviceFaultNotify("glpe_msmtmgr.cpp", 516, "SetMeasurement", "insertMePeMeas(rotMeMeas, true)");
        v110 = "glpe_msmtmgr.cpp";
        v111 = 516;
        goto LABEL_117;
      }

      *(*v112 + 4 * (*(v31 + 8) >> 5)) |= 1 << *(v31 + 8);
      v8 = (v8 + 1);
      BlueFin::GlSetIterator::operator++(&v123);
      v30 = v8 < a3;
    }

    while (BYTE1(v123) != v123 && v8 < a3);
  }

  if (v30)
  {
    for (i = 0; i != 14; ++i)
    {
      v33 = *(v9 + 338) + 184 * i;
      v34 = *(v33 + 8);
      if (v34 <= 0x23E)
      {
        v35 = *v9;
        v36 = BlueFin::GlBigArray::Has((*(v5 + 57) + 1152), *(v33 + 8));
        v37 = *(v5 + 57);
        if (v36)
        {
          v38 = BlueFin::GlSignalIdArray::Get(v37, v33);
LABEL_49:
          if (v38 != v33)
          {
            *v38 = *v33;
            *(v38 + 4) = *(v33 + 4);
            *(v38 + 8) = *(v33 + 8);
          }

          v44 = *(v33 + 12);
          v45 = *(v33 + 28);
          *(v38 + 44) = *(v33 + 44);
          *(v38 + 28) = v45;
          *(v38 + 12) = v44;
          v46 = *(v33 + 60);
          v47 = *(v33 + 76);
          v48 = *(v33 + 92);
          *(v38 + 108) = *(v33 + 108);
          *(v38 + 92) = v48;
          *(v38 + 76) = v47;
          *(v38 + 60) = v46;
          v49 = *(v33 + 124);
          v50 = *(v33 + 140);
          v51 = *(v33 + 156);
          *(v38 + 168) = *(v33 + 168);
          *(v38 + 156) = v51;
          *(v38 + 140) = v50;
          *(v38 + 124) = v49;
          *(v38 + 184) = v35;
          *(*(v5 + 46) + 4 * (*(v33 + 8) >> 5)) |= 1 << *(v33 + 8);
          continue;
        }

        if (BlueFin::GlBigArray::Add((v37 + 1152), v34))
        {
          v39 = *(v5 + 57);
          v123 = (v39 + 1152);
          LOWORD(v124[0]) = *(v39 + 1186) + 1;
          if (*(v39 + 1184) <= LOWORD(v124[0]))
          {
            goto LABEL_118;
          }

          v40 = 0;
          v41 = 575;
          v42 = -7200002;
          do
          {
            BlueFin::GlSignalIdArrayIterator::Next(&v123, v119);
            if (((*(*(v5 + 46) + 4 * (v121 >> 5)) >> (v121 & 0x1F)) & 1) == 0)
            {
              v43 = BlueFin::GlSignalIdArray::Get(*(v5 + 57), v119);
              if (*(v43 + 184) < v42)
              {
                v40 = v119[0];
                v41 = v121;
                v42 = *(v43 + 184);
              }
            }
          }

          while (LOWORD(v124[0]) < *(v123 + 16));
          if ((v40 - 1) >= 0xBC)
          {
LABEL_118:
            v109 = "otSignalIdOldest.GetSvId().isValid()";
            DeviceFaultNotify("glpe_msmtmgr.cpp", 1000, "insertMeGridMeas", "otSignalIdOldest.GetSvId().isValid()");
            v110 = "glpe_msmtmgr.cpp";
            v111 = 1000;
            goto LABEL_117;
          }

          BlueFin::GlBigArray::Remove(*(v5 + 57) + 1152, v41);
          v38 = BlueFin::GlBigArray::Add((*(v5 + 57) + 1152), *(v33 + 8));
          if (!v38)
          {
            v109 = "potPeGridMeas != nullptr";
            DeviceFaultNotify("glpe_msmtmgr.cpp", 1006, "insertMeGridMeas", "potPeGridMeas != nullptr");
            v110 = "glpe_msmtmgr.cpp";
            v111 = 1006;
            goto LABEL_117;
          }

          goto LABEL_49;
        }
      }
    }
  }

  v52 = v117;
  v53 = v112;
  if (v115 >= 4)
  {
    BlueFin::GlSortFloats(v122, v115, &v123, v29);
    v54 = 0;
    v55 = 0.0;
    do
    {
      v55 = v55 + *(v122 + *(&v124[-2] + (v115 - 1) + v54--));
    }

    while (v54 != -4);
    if (fabsf(v55) > 0.1)
    {
      v56 = v55 * 0.25;
      v57 = (v55 * 0.25) * 0.016667;
      v58 = *(v5 + 34);
      v59 = *(v5 + 35);
      v60 = v57 + (v59 * 0.98333);
      if (v59 != 0.0)
      {
        v56 = v60;
      }

      *(v5 + 35) = v56;
      v61 = v56 + -40.0;
      if (v58 == 0.0 || vabds_f32(v58, v61) >= 1.0)
      {
        *(v5 + 34) = v61;
        if (BlueFin::GlUtils::m_pInstance)
        {
          if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
          {
            (*(*(v5 + 16) + 24))(v5 + 128, 0, 0);
          }
        }
      }
    }

    v9 = a2;
  }

  v62 = *(v5 + 1);
  LOBYTE(v123) = v5[16];
  memcpy(v124, v62, 4 * v123);
  WORD1(v123) = 0;
  BYTE1(v123) = 0;
  HIDWORD(v123) = v124[0];
  BlueFin::GlSetIterator::operator++(&v123);
  if (BYTE1(v123) != v123)
  {
    while (WORD1(v123) < 0x23Fu)
    {
      if (((*(*v112 + ((WORD1(v123) >> 3) & 0x1FFC)) >> (BYTE2(v123) & 0x1F)) & 1) == 0 && (*v9 - *(*v5 + 32 * WORD1(v123) + 24)) >= 0x927C1)
      {
        BlueFin::GlSetBase::Remove((v5 + 8), SWORD1(v123));
      }

      BlueFin::GlSetIterator::operator++(&v123);
      if (BYTE1(v123) == v123)
      {
        goto LABEL_71;
      }
    }

LABEL_115:
    v109 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v110 = "glsignalid.h";
    v111 = 578;
    goto LABEL_117;
  }

LABEL_71:
  *(v5 + 12) = *(*(v117 + 18808) + 2) * 0.000000001;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v63 = (v117 + 1448);
  LOBYTE(v123) = *(v117 + 1456);
  memcpy(v124, *(v117 + 1448), 4 * v123);
  WORD1(v123) = 0;
  BYTE1(v123) = 0;
  HIDWORD(v123) = v124[0];
  BlueFin::GlSetIterator::operator++(&v123);
  if (BYTE1(v123) != v123)
  {
    v64 = v117 + 296;
    while (WORD1(v123) < 0x23FuLL)
    {
      v65 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v123);
      v66 = *v65;
      LODWORD(v65) = v65[1];
      v119[0] = v66;
      v120 = v65;
      v121 = WORD1(v123);
      if ((*(*v112 + ((WORD1(v123) >> 3) & 0x1FFC)) >> (BYTE2(v123) & 0x1F)))
      {
        BlueFin::GlSetBase::Remove(v117 + 1448, SWORD1(v123));
        LOWORD(v67) = 0;
        v68 = v121;
      }

      else
      {
        v69 = BlueFin::GlPeMsmtMgr::AccessPropagatedMeMeas(v117, v119);
        v70 = v69;
        v68 = *(v69 + 8);
        LOWORD(v71) = *(v64 + 2 * v68);
        v72 = (*v117 - *(v117 + 1536));
        v73 = v71 + v72;
        if (v73 <= 3000.0)
        {
          if ((*(v69 + 12) & 0x20) != 0)
          {
            v75 = v72 * 0.001;
            v74 = v75 + *(v69 + 64);
          }

          else
          {
            v74 = *(v69 + 64);
            v75 = v72 * 0.001;
          }

          v76 = *(v69 + 108);
          *(v69 + 64) = v74 + *(v69 + 104) * v75;
          v77 = v75 * v76;
          *(v69 + 96) = *(v69 + 96) + v77;
        }

        else
        {
          BlueFin::GlSetBase::Remove(v117 + 1448, v68);
          BlueFin::GlBigArray::Remove(*(v117 + 288) + 1152, *(v70 + 8));
          v68 = *(v70 + 8);
          v73 = 0.0;
        }

        if (v73 > 65535.0)
        {
          v73 = 65535.0;
        }

        v67 = v73;
      }

      *(v64 + 2 * v68) = v67;
      BlueFin::GlSetIterator::operator++(&v123);
      if (BYTE1(v123) == v123)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_115;
  }

LABEL_88:
  v78 = 0;
  v123 = &v124[1];
  LOBYTE(v124[0]) = 19;
  *&v124[1] = 0u;
  v125 = 0u;
  v126 = 0u;
  memset(v127, 0, sizeof(v127));
  v116 = v117 + 296;
  for (j = 100; j; --j)
  {
    v80 = *(v52 + 18656);
    v81 = (v80 + v78);
    v82 = *(v80 + v78 + 8);
    if (v82 > 0x23E)
    {
      break;
    }

    if (BlueFin::GlSvId::s_aucSvId2gnss[*v81])
    {
      goto LABEL_93;
    }

    v83 = 1 << (v82 & 0x1F);
    if ((v83 & *(*v53 + 4 * (v82 >> 5))) != 0)
    {
      goto LABEL_92;
    }

    if ((v83 & *(*(v52 + 18688) + 4 * (v82 >> 5))) == 0)
    {
      goto LABEL_92;
    }

    v87 = v80 + v78;
    if (*(v80 + v78 + 116) <= 17.0)
    {
      goto LABEL_92;
    }

    v88 = *v117 - *(v117 + 1536);
    v89 = v88;
    v91 = *(v87 + 12);
    v90 = v87 + 12;
    if ((v91 & 0x20) != 0)
    {
      v93 = v89 * 0.001;
      v92 = v93 + *(v80 + v78 + 64);
    }

    else
    {
      v92 = *(v80 + v78 + 64);
      v93 = v89 * 0.001;
    }

    v94 = v80 + v78;
    v95 = *(v80 + v78 + 108);
    *(v94 + 64) = v92 + *(v80 + v78 + 104) * v93;
    v96 = v93 * v95;
    *(v94 + 96) = *(v80 + v78 + 96) + v96;
    if (v88 >= 0xFFFF)
    {
      v97 = -1;
    }

    else
    {
      v97 = v88;
    }

    *(v116 + 2 * v82) = v97;
    if (v88 >= 0xBB9)
    {
      LODWORD(v82) = *(v81 + 4);
LABEL_92:
      *(v116 + 2 * v82) = 0;
      BlueFin::GlSetBase::Remove(v63, *(v81 + 4));
      v52 = v117;
      BlueFin::GlBigArray::Remove(*(v117 + 288) + 1152, *(v81 + 4));
      v53 = v112;
      goto LABEL_93;
    }

    v98 = BlueFin::GlSignalIdArray::Get(*(v117 + 288), (v80 + v78));
    if (!v98)
    {
      v99 = BlueFin::GlBigArray::Add((*(v117 + 288) + 1152), *(v81 + 4));
      if (!v99)
      {
        v109 = "pPropSigMeas";
        DeviceFaultNotify("glpe_msmtmgr.cpp", 664, "SetMeasurement", "pPropSigMeas");
        v110 = "glpe_msmtmgr.cpp";
        v111 = 664;
LABEL_117:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v110, v111, v109);
      }

      v98 = v99;
      *v99 = 0;
      *(v99 + 4) = -1;
      *(v99 + 8) = 575;
      *(v99 + 12) = 0;
      *(v99 + 16) = -1;
      *(v99 + 28) = 0;
      *(v99 + 20) = 0;
      *(v99 + 33) = 0;
      *(v99 + 52) = 0;
      *(v99 + 44) = 0;
      *(v99 + 64) = 0u;
      *(v99 + 80) = 0u;
      *(v99 + 96) = xmmword_298A31A70;
      *(v99 + 112) = 0;
      *(v99 + 116) = 0xBF80000000000000;
      *(v99 + 124) = 2139095039;
      *(v99 + 128) = 0;
      *(v99 + 136) = 0x38D1B71700000000;
      BlueFin::GlSigMeas::init(v99, v80 + v78);
    }

    if (v81 != v98)
    {
      *v98 = *(v80 + v78);
      *(v98 + 4) = *(v80 + v78 + 4);
      *(v98 + 8) = *(v81 + 4);
    }

    *(v98 + 12) = *v90;
    v100 = *(v90 + 16);
    v101 = *(v90 + 32);
    v102 = *(v90 + 48);
    *(v98 + 76) = *(v90 + 64);
    *(v98 + 60) = v102;
    *(v98 + 44) = v101;
    *(v98 + 28) = v100;
    v103 = *(v90 + 80);
    v104 = *(v90 + 96);
    v105 = *(v90 + 112);
    *(v98 + 140) = *(v90 + 128);
    *(v98 + 124) = v105;
    *(v98 + 108) = v104;
    *(v98 + 92) = v103;
    *(*v63 + 4 * (*(v81 + 4) >> 5)) |= 1 << *(v81 + 4);
    v52 = v117;
    v53 = v112;
LABEL_93:
    if ((*(v80 + v78 + 12) & 2) != 0)
    {
      v84 = *(v81 + 4);
      v85 = v84 >> 5;
      v86 = v84 & 0x1F;
      if ((*(*v53 + 4 * v85) >> v86))
      {
        v123[v85] |= 1 << v86;
      }
    }

    v78 += 144;
  }

  BlueFin::GlSetBase::operator=(v52 + 18688, v53);
  v106 = *(v52 + 36);
  v107 = *(v52 + 68);
  *(v52 + 18732) = *(v52 + 52);
  *(v52 + 18748) = v107;
  *(v52 + 18760) = *(v52 + 80);
  *(v52 + 18700) = *(v52 + 20);
  *(v52 + 18716) = v106;
  BlueFin::GlMeas::operator=(v52 + 1536, v9);
  *(v9 + 113) = 256;
  BlueFin::GlPowerMeas::operator=(v52 + 56016, v9 + 4);
  BlueFin::GlPeMsmtMgr::SetPwrMeas(v52, v52 + 56016);
  v108 = *MEMORY[0x29EDCA608];
}

double BlueFin::GlPowerMeas::SetPwrMeas(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 109) & 1) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 108) = *(a2 + 108);
  }

  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  if ((*(a2 + 110) & 1) == 0)
  {
    *(a1 + 80) = vaddq_s32(*(a1 + 80), *(a2 + 80));
    *(a1 + 96) = vadd_s32(*(a1 + 96), *(a2 + 96));
    *(a1 + 104) += *(a2 + 104);
  }

  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 112) = *(a2 + 112);
  return result;
}

uint64_t BlueFin::GlReqSm::OnCpuLoadStarted(BlueFin::GlReqSm *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = this + 54612;
  v3 = (*(**(this + 4149) + 56))(*(this + 4149));
  v4 = *(v2 + 2);
  *v2 = v3 - *(v2 + 3) + 1000 * v2[4];
  result = GlCustomLog(15, "PredProcessingStart %d\n", v4);
  v6 = *(v2 + 2);
  v10[0] = 12648430;
  v10[1] = v6;
  v7 = *(this + 4149);
  v8 = *(v7 + 248);
  if (v8)
  {
    result = v8(*(v7 + 8), v10, 8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeReqBag::SetCurrentTimeLms(BlueFin::GlPeReqBag *this, uint64_t a2)
{
  v4 = 0;
  v6 = this + 3233;
  v7 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v4);
    if (result)
    {
      result = (*(*result + 152))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeRqHdlr::SetCurrentTimeLms(BlueFin::GlPeRqHdlr *this, int a2)
{
  *(this + 8) = a2;
  result = *(this + 1);
  v4 = *(this + 9);
  v5 = 1001;
  if (v4 != -1)
  {
    v6 = *(result + 28);
    v7 = v4 + a2;
    v8 = v7 >= v6;
    v9 = v7 - v6 + 1000;
    if (v8)
    {
      v5 = v9;
    }

    else
    {
      v5 = 1001;
    }
  }

  v10 = 1000 * *(result + 22);
  v11 = 1000 * *(result + 36);
  if (*(result + 16) == 8)
  {
    result = (*(*result + 360))(result);
    if (result == 7)
    {
      v10 += 6000;
      v11 += 6000;
    }
  }

  if (v5 > v10)
  {
    *(this + 23) = 1;
    BlueFin::GlPeFirstFix::m_bReqTimeOutReached = 1;
  }

  if (v5 > v11)
  {
    *(this + 24) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::UpdateEphValidityCache(BlueFin::GlPeAsstMgr *this)
{
  v2 = (this + 118784);
  v3 = (*(this + 15121) + 8);
  v4 = 7;
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v3 += 24;
    bzero(v5, ((4 * v6 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v4;
  }

  while (v4);
  v7 = (v2[177] + 8);
  v8 = 7;
  do
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v7 += 24;
    bzero(v9, ((4 * v10 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v8;
  }

  while (v8);
  v11 = (v2[201] + 8);
  v12 = 7;
  do
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    v11 += 24;
    bzero(v13, ((4 * v14 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v12;
  }

  while (v12);
  v15 = (v2[225] + 8);
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
  v19 = (v2[249] + 8);
  v20 = 7;
  do
  {
    v21 = *(v19 - 1);
    v22 = *v19;
    v19 += 24;
    bzero(v21, ((4 * v22 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v20;
  }

  while (v20);
  for (i = 0; i != 7; ++i)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, i);
    if (result)
    {
      v25 = result;
      v26 = BlueFin::GlGnssSet::operator()(this + 120032, i);
      v27 = BlueFin::GlGnssSet::operator()(this + 120224, i);
      v28 = BlueFin::GlGnssSet::operator()(this + 120416, i);
      v29 = BlueFin::GlGnssSet::operator()(this + 120608, i);
      (*(*v25 + 120))(v31, v25, v26, v27, v28, v29);
      v30 = BlueFin::GlGnssSet::operator()(this + 120800, i);
      result = BlueFin::GlSetBase::operator=(v30, v31);
      *(result + 12) = *(&v31[1] + 4);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeEphemerisMgr::IsEphValid(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeEphemeris *a2, double a3)
{
  if (!*(*(this + 2) + 2576))
  {
    return 3;
  }

  (*(*a2 + 136))(v34, a2);
  if ((*(*a2 + 144))(a2) == 2)
  {
    BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), *(this + 3), 0, &v32);
    if ((*(v32.n128_u64[0] + ((LOBYTE(v34[0]) >> 3) & 0x1C)) >> (v34[0] & 0x1F)))
    {
      return 2;
    }
  }

  if (!(*(*a2 + 40))(a2))
  {
    return 6;
  }

  v7 = *(a2 + 6);
  if (v7 != -7200001)
  {
    goto LABEL_22;
  }

  Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, &v32);
  v9 = (*(*a2 + 64))(a2, &v32, 1, Time);
  if (v9 <= 0.0)
  {
    if (v9 >= 0.0)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v10 = -0.5;
  }

  else
  {
    v10 = 0.5;
  }

  v11 = (v9 + v10);
LABEL_15:
  v12 = (*(*a2 + 88))(a2);
  v18 = v12 / 2;
  if (v11 < v12 / -2 || v18 < v11)
  {
    v7 = *(a2 + 6);
  }

  else
  {
    v20 = v18 - v11;
    v21 = v33;
    *v13.i64 = v33 - (1000 * (v18 + v11));
    v22 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v12, v13, v14, v15, v16, v17);
    v7 = v22;
    *(a2 + 6) = v22;
    *v23.i64 = v21 + (1000 * v20);
    *(a2 + 7) = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v22, v23, v24, v25, v26, v27);
  }

  if (v7 == -7200001)
  {
    return 1;
  }

LABEL_22:
  v28 = v7;
  if (v7 <= 0xFF9222FE)
  {
    v28 = v7;
  }

  if (v28 > a3)
  {
    return 1;
  }

  v29 = *(a2 + 7);
  v30 = v29;
  if (v29 <= 0xFF9222FE)
  {
    v30 = v29;
  }

  if (v30 < a3)
  {
    return 1;
  }

  if ((*(*(this + 48) + ((LOBYTE(v34[0]) >> 3) & 0x1C)) >> (v34[0] & 0x1F)))
  {
    v31 = (*(*this + 368))(this, v34);
    if (!(*(*v31 + 184))(v31))
    {
      return 2;
    }

    BlueFin::GlSetBase::Remove(this + 384, LOBYTE(v34[0]));
  }

  return 0;
}

uint64_t BlueFin::GlPeGloEphMgr::IsEphValid(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a1 + 7969))
  {
    return 2;
  }

  else
  {
    return BlueFin::GlPeEphemerisMgr::IsEphValid(a1, a2, a3, a4);
  }
}

uint64_t BlueFin::GlPeGloEphMgr::IsEphValid(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeEphemeris *a2, double a3)
{
  if (*(this + 7969))
  {
    return 2;
  }

  if ((*(a2 + 8) & 0xF0) != 0x20)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 2201, "IsEphValid", "rotEph.GetGnss() == GNSS_GLONASS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 2201, "rotEph.GetGnss() == GNSS_GLONASS");
  }

  IsEphValid = BlueFin::GlPeEphemerisMgr::IsEphValid(this, a2, a3);
  if (IsEphValid == 1)
  {
    if ((*(a2 + 8) & 0xF) == 1 && *(this + 533) == 1)
    {
      v7 = (*(*a2 + 208))(a2, 4);
      if (v7 != 248)
      {
        v8 = *(this + 730) + 184 * (v7 + 7);
        if ((*(v8 + 88) & 0xF) != 0)
        {
          v9 = *(v8 + 104);
          if (v9 == -7200001)
          {
            IsEphValid = 1;
            BlueFin::GlPeTimeManager::GetTime(*(this + 2), a3, 1, v14);
            if (BlueFin::GlPeEphemeris::isExpired((v8 + 80), v14))
            {
              return IsEphValid;
            }
          }

          else
          {
            v10 = v9;
            if (v9 <= 0xFF9222FE)
            {
              v10 = v9;
            }

            if (v10 > a3)
            {
              return 1;
            }

            v11 = *(v8 + 108);
            v12 = v11;
            if (v11 <= 0xFF9222FE)
            {
              v12 = v11;
            }

            if (v12 < a3)
            {
              return 1;
            }
          }

          if (BlueFin::GlPeGloEphMgr::updateEph(this, *(*(this + 2) + 2568), *(v8 + 168), (v8 + 80), 0))
          {
            return BlueFin::GlPeEphemerisMgr::IsEphValid(this, (v8 + 80), a3);
          }
        }
      }
    }

    return 1;
  }

  return IsEphValid;
}

uint64_t BlueFin::GlPeReqBag::ToSlog(uint64_t this)
{
  if (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1)
  {
    return this;
  }

  v1 = this;
  v12 = &unk_2A1F13A58;
  v2 = *(this + 1316);
  if ((v2 & 0x80000000) != 0)
  {
    if (v2 == -2)
    {
      v13 = -2;
      v14 = *(this + 3238);
      v15 = *(this + 3240);
      v16 = *(this + 3248);
      v11 = *(this + 3237);
LABEL_16:
      v17 = v11;
      goto LABEL_19;
    }

    v13 = -1;
    v14 = -1;
    v15 = 0;
    v16 = -1;
  }

  else
  {
    v13 = -2;
    v3 = *(this + 8 * v2);
    v4 = *(v3 + 8);
    v14 = *(v4 + 22);
    v5 = 1000 * v14;
    v6 = *(v3 + 36);
    if (v6 == -1)
    {
      if (v5 <= 1)
      {
        v5 = 1;
      }

      LODWORD(v15) = v5 - 1;
      v10 = 1;
    }

    else
    {
      v7 = *(v4 + 28);
      v8 = *(v3 + 32) + v6;
      v9 = v7 - v8;
      if (v7 > v8)
      {
        v9 = -1;
      }

      LODWORD(v15) = (v9 + v5) & ~((v9 + v5) >> 31);
      v10 = v8 - v7;
      if (v8 < v7)
      {
        v10 = 1;
      }
    }

    HIDWORD(v15) = v10;
    this = (*(*v4 + 152))(v4);
    v16 = this;
    if ((*(*(*(v1 + 8 * *(v1 + 1316)) + 8) + 16) - 1) <= 1)
    {
      v11 = 1;
      goto LABEL_16;
    }
  }

  v17 = 0;
LABEL_19:
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return (*(v12 + 3))(&v12, 0, 0);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::GetTimeSinceFirstPosReqMs(BlueFin::GlPeReqBag *this)
{
  if ((*(this + 1312) & 3) != 0)
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v3 = *(this + v1);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (*(v4 + 16) <= 1u)
        {
          v5 = *(v3 + 32) - *(v4 + 32);
          if (v5 <= v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v5;
          }
        }
      }

      v1 += 8;
    }

    while (v1 != 576);
  }

  else
  {
    v2 = 0;
  }

  *(this + 3233) = *(this + 3233);
  return v2;
}

BOOL BlueFin::GlPeSensorsMgr::PrepareData(BlueFin::GlPeSensorsMgr *this, unsigned int a2)
{
  v3 = *(this + 594);
  if (v3 < a2)
  {
    BlueFin::GlPeSensorsMgr::PublishData(this);
    *(this + 594) = a2;
    (*(*(this + 37) + 16))();
  }

  return v3 < a2;
}

uint64_t BlueFin::GlPeSensorsMgr::PublishData(BlueFin::GlPeSensorsMgr *this)
{
  v41 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE6);
  }

  v2 = *(*(this + 288) + 1816);
  *(v2 + 188) = 0;
  *(v2 + 585) = 0;
  v40 = *(this + 287);
  v38 = 0;
  v39 = &v29;
  if ((*(this + 1) & 1) != 0 || (*(this + 2) & 1) != 0 || *(this + 3) == 1)
  {
    (*(*(this + 3) + 64))(this + 24);
    (*(*(this + 3) + 56))(this + 24, &v29);
  }

  if (*(this + 7) == 1)
  {
    v3 = this + 296;
    (*(*(this + 37) + 56))(this + 296, **(this + 290));
    v4 = (*(*(this + 37) + 64))(this + 296, **(this + 290));
    v5 = (*(*(this + 37) + 72))(this + 296, **(this + 290));
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v6 >= 1)
    {
      v7 = v5;
      v8 = 50 * (((*(*v3 + 128))(this + 296, 0) + 25) / 0x32);
      v9 = 50 * (((*(*v3 + 136))(this + 296, 0) + 25) / 0x32);
      v10 = v9 - v8;
      if (v8 >= v9)
      {
        v10 = v8 - v9;
      }

      if (v10 >= 0x65)
      {
        *(this + 2380) = 1;
      }

      if (v8 == v9)
      {
        goto LABEL_27;
      }

      do
      {
        if (v8 <= v9)
        {
          if (v9 <= v8)
          {
            DeviceFaultNotify("glpe_sensmgr.cpp", 476, "FillInfoAccGyr", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.cpp", 476, "0");
          }

          (*(*v3 + 168))(v3, 1);
          --v4;
          v8 = 50 * (((*(*v3 + 128))(v3, 0) + 25) / 0x32);
        }

        else
        {
          (*(*v3 + 176))(v3, 1);
          --v7;
          v9 = 50 * (((*(*v3 + 136))(v3, 0) + 25) / 0x32);
        }

        if (v4 >= v7)
        {
          v6 = v7;
        }

        else
        {
          v6 = v4;
        }
      }

      while (v6 >= 1 && v8 != v9);
      if (v6 >= 1)
      {
LABEL_27:
        if (v6 >= 0x28)
        {
          v11 = 40;
        }

        else
        {
          v11 = v6;
        }

        if ((*(*v3 + 192))(v3))
        {
          v12 = -998.0;
        }

        else if (*(this + 2380))
        {
          v12 = -999.0;
        }

        else
        {
          v12 = -1.0;
        }

        v13 = 0;
        *(this + 2380) = 0;
        do
        {
          v14 = 0;
          v38 = 1;
          *(v39 + 2) = 0;
          v31 = v11;
          v29 = v13 | 0x200000000;
          v15 = v33;
          do
          {
            if (!v14)
            {
              v30 = (*(*v3 + 128))(v3, 0);
            }

            v16 = (*(*v3 + 128))(v3, v14);
            *(v15 - 4) = v16 - v30;
            *v15 = (*(*v3 + 96))(v3, v14, v13);
            v15[10] = -1082130432;
            ++v14;
            v15 += 22;
          }

          while (v11 != v14);
          if (v38)
          {
            (*(*v40 + 16))(v40, &v38);
          }

          v13 = (v13 + 1);
        }

        while (v13 != 3);
        v17 = 0;
        do
        {
          v18 = 0;
          v38 = 1;
          *(v39 + 2) = 0;
          v31 = v11;
          LODWORD(v29) = v17 + 3;
          HIDWORD(v29) = 2;
          v19 = v33;
          do
          {
            if (!v18)
            {
              v30 = (*(*v3 + 136))(v3, 0);
            }

            v20 = (*(*v3 + 136))(v3, v18);
            *(v19 - 4) = v20 - v30;
            *v19 = (*(*v3 + 104))(v3, v18, v17);
            *v19 = (*(*v3 + 104))(v3, v18, v17);
            v19[10] = v12;
            ++v18;
            v19 += 22;
          }

          while (v11 != v18);
          if (v38)
          {
            (*(*v40 + 16))(v40, &v38);
          }

          v17 = (v17 + 1);
        }

        while (v17 != 3);
        (*(*v3 + 168))(v3, v11);
        (*(*v3 + 176))(v3, v11);
      }
    }

    if ((*(*v3 + 80))(v3) >= 1)
    {
      v38 = 1;
      *(v39 + 2) = 0;
      v29 = 0x200000016;
      v31 = 2;
      v32 = 0;
      v33[0] = 3;
      v33[1] = (*(*v3 + 112))(v3, 0, 0);
      v33[10] = -1082130432;
      v34 = 0;
      v35 = 24;
      v36 = (*(*v3 + 112))(v3, 0, 1);
      v37 = -1082130432;
      if (v38)
      {
        (*(*v40 + 16))(v40, &v38);
      }
    }

    (*(*v3 + 216))(v3);
  }

  if (*(this + 8) == 1)
  {
    v21 = this + 296;
    v22 = (*(*(this + 37) + 88))(this + 296);
    if (v22 >= 1)
    {
      v38 = 1;
      *(v39 + 2) = 0;
      v31 = v22;
      v29 = 0x200000006;
      v23 = 0;
      v24 = v33;
      do
      {
        if (!v23)
        {
          v30 = (*(*v21 + 144))(this + 296, 0);
        }

        v25 = (*(*v21 + 144))(this + 296, v23);
        *(v24 - 4) = v25 - v30;
        v26 = (*(*v21 + 120))(this + 296, v23);
        *v24 = v26;
        v24[10] = -1082130432;
        ++v23;
        v24 += 22;
      }

      while (v23 < v31);
      if (v38)
      {
        (*(*v40 + 16))(v40, &v38);
      }

      (*(*v21 + 184))(this + 296);
    }
  }

  (*(*(this + 283) + 32))(this + 2264);
  result = (*(*(this + 283) + 24))(this + 2264, &v29);
  *(this + 298) = 0;
  *(this + 300) = 0;
  *(this + 299) = 0;
  *(this + 602) = 0;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *BlueFin::SensorsData::check(BlueFin::SensorsData *this)
{
  BlueFin::SensorsDownsampleFilt::Flush(this + 2);
  result = BlueFin::SensorsDownsampleFilt::Flush(this + 228);
  v3 = *(this + 202) - *(this + 428);
  if (v3 < 0)
  {
    v3 = *(this + 428) - *(this + 202);
  }

  if (v3 >= 5)
  {
    *(this + 211) = 0;
    *(this + 104) = 0;
    *(this + 840) = 0;
    *(this + 848) = 0;
    *(this + 101) = 0;
    *(this + 102) = 0;
    *(this + 206) = 0;
    *(this + 437) = 0;
    *(this + 217) = 0;
    *(this + 1744) = 0;
    *(this + 1752) = 0;
    *(this + 214) = 0;
    *(this + 215) = 0;
    *(this + 432) = 0;
  }

  *(this + 457) = 1;
  return result;
}

unsigned int *BlueFin::SensorsDownsampleFilt::Flush(unsigned int *this)
{
  v1 = this[204];
  if (v1)
  {
    v2 = this;
    if (v1 <= this[200])
    {
      this = memmove(this, &this[4 * v1], 16 * (50 - v1));
      v2[200] -= v2[204];
    }

    else
    {
      this[209] = 0;
      *(this + 103) = 0;
      *(this + 832) = 0;
      *(this + 840) = 0;
      *(this + 100) = 0;
      *(this + 101) = 0;
    }

    v2[204] = 0;
  }

  return this;
}

uint64_t BlueFin::SensorWheelInfo::fillInfo(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  *(a2 + 3560) = 1;
  *(*(a2 + 3568) + 8) = 0;
  *a2 = 0x20000000DLL;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = *(a1 + 28);
  *(a2 + 88) = 1036831949;
  if (*(a2 + 3560))
  {
    (*(**(a2 + 3576) + 16))(*(a2 + 3576), a2 + 3560);
  }

  *(a1 + 24) = 0;
  return 1;
}

BlueFin::GlPeGloFcnOsnMgr *BlueFin::GlPeFixStatus::SetSIGMeasuement(BlueFin::GlPeFixStatus *this, BlueFin::GlPeMsmtMgr *a2, const BlueFin::GlMePlatfStat *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, BlueFin::GlBigArray *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, BlueFin::GlPeMsmtMgr *a17, uint64_t a18, uint64_t a19, void *a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__src, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, int a37, unsigned __int8 a38, unsigned __int8 a39, unsigned __int16 a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int *a52, int a53, unsigned int a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = MEMORY[0x2A1C7C4A8](this);
  v214 = v69;
  v70 = v68;
  v71 = 0;
  STACK[0x1F38] = *MEMORY[0x29EDCA608];
  *&STACK[0x800] = 0u;
  *&STACK[0x810] = 0u;
  v224 = v72;
  v215 = v72 + 53248;
  *&STACK[0x7E0] = 0u;
  *&STACK[0x7F0] = 0u;
  v73 = (v68 + 9056);
  v217 = v68 + 4176;
  *&STACK[0x7C0] = 0u;
  *&STACK[0x7D0] = 0u;
  *&STACK[0x7A0] = 0u;
  *&STACK[0x7B0] = 0u;
  *&STACK[0x780] = 0u;
  *&STACK[0x790] = 0u;
  *&STACK[0x760] = 0u;
  *&STACK[0x770] = 0u;
  *&STACK[0x740] = 0u;
  *&STACK[0x750] = 0u;
  *&STACK[0x720] = 0u;
  *&STACK[0x730] = 0u;
  *&STACK[0x700] = 0u;
  *&STACK[0x710] = 0u;
  *&STACK[0x6E0] = 0u;
  *&STACK[0x6F0] = 0u;
  *&STACK[0x6C0] = 0u;
  *&STACK[0x6D0] = 0u;
  *&STACK[0x6A0] = 0u;
  *&STACK[0x6B0] = 0u;
  *&STACK[0x680] = 0u;
  *&STACK[0x690] = 0u;
  *&STACK[0x660] = 0u;
  *&STACK[0x670] = 0u;
  *&STACK[0x640] = 0u;
  *&STACK[0x650] = 0u;
  *&STACK[0x620] = 0u;
  *&STACK[0x630] = 0u;
  v74 = 200;
  v218 = *(v68 + 7840);
  do
  {
    v75 = &STACK[0x620] + v71;
    *v75 = 0;
    *(v75 + 4) = 0x700000000;
    v75[12] = 0;
    v75[16] = 0;
    *(v75 + 18) = 0;
    *(v75 + 6) = 0;
    v71 += 32;
    *(v75 + 14) = 0;
    --v74;
  }

  while (v74);
  bzero(&STACK[0x300], 0x320uLL);
  *(v70 + 1206) = 0u;
  *(v70 + 1210) = 0u;
  *(v70 + 1198) = 0u;
  *(v70 + 1202) = 0u;
  *(v70 + 1190) = 0u;
  *(v70 + 1194) = 0u;
  *(v70 + 1182) = 0u;
  *(v70 + 1186) = 0u;
  *(v70 + 1174) = 0u;
  *(v70 + 1178) = 0u;
  *(v70 + 1166) = 0u;
  *(v70 + 1170) = 0u;
  *(v70 + 1158) = 0u;
  *(v70 + 1162) = 0u;
  *(v70 + 1150) = 0u;
  *(v70 + 1154) = 0u;
  *(v70 + 1278) = 0u;
  *(v70 + 1282) = 0u;
  *(v70 + 1286) = 0u;
  *(v70 + 1290) = 0u;
  *(v70 + 1294) = 0u;
  *(v70 + 1298) = 0u;
  *(v70 + 1302) = 0u;
  *(v70 + 1306) = 0u;
  *(v70 + 1310) = 0u;
  *(v70 + 1314) = 0u;
  *(v70 + 1318) = 0u;
  *(v70 + 1322) = 0u;
  *(v70 + 1326) = 0u;
  *(v70 + 1330) = 0u;
  *(v70 + 1334) = 0u;
  *(v70 + 1338) = 0u;
  bzero(v70 + 1454, 0x430uLL);
  BlueFin::GlSetBase::GlSetBase(&a52, &a54, 0x13u, v224 + 12);
  BlueFin::GlSignalIdSet::GlSignalIdSet(&a20, *(v70 + 1264) + 119904, 0);
  BlueFin::GlSetBase::GlSetBase(&__src, &a32 + 1, 0x13u, &a20);
  a64 = &a65 + 1;
  LOBYTE(a65) = 19;
  *(&a65 + 4) = 0u;
  *(&a66 + 4) = 0u;
  *(&a67 + 4) = 0u;
  *(&a68 + 4) = 0u;
  *&STACK[0x280] = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(&__src, &a64, &a52);
  BlueFin::GlSetBase::operator=(&__src, &a64);
  *(&a33 + 4) = *(&a66 + 4);
  *(&a34 + 4) = *(&a67 + 4);
  *(&a35 + 4) = *(&a68 + 4);
  a36 = *&STACK[0x280];
  *(&a32 + 4) = *(&a65 + 4);
  a38 = a32;
  memcpy(&a42, __src, 4 * a32);
  a40 = 0;
  a39 = 0;
  a41 = a42;
  BlueFin::GlSetIterator::operator++(&a38);
  if (a39 == a38)
  {
    v76 = 0;
    LODWORD(v77) = 0;
    LOBYTE(v219) = 0;
    LOBYTE(a64) = 0;
    goto LABEL_100;
  }

  v76 = 0;
  v78 = 0;
  v219 = 0;
  v216 = (v70 + 2256);
  do
  {
    v79 = a40;
    if (a40 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v226 = v78;
    v80 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a40;
    v81 = *v80;
    v82 = v80[1];
    v83 = v80[1];
    LOBYTE(a20) = v81;
    HIDWORD(a20) = v82;
    LOWORD(a21) = a40;
    v84 = *(a52 + ((a40 >> 3) & 0x1FFC));
    if ((v81 - 76) <= 0x3E || ((v81 - 1) >= 0x20 ? (v85 = (v81 - 66) > 9) : (v85 = 0), !v85))
    {
      v86 = BlueFin::GlSvId::s_aucSvId2gnss[v81];
      v87 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v86 + 21] == 255 ? 575 : (BlueFin::GlSignalId::s_ausGnss2signalId[v86] + v81 - BlueFin::GlSvId::s_aucGnss2minSvId[v86] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v86]);
      if (((a52[v87 >> 5] >> (v87 & 0x1F)) & 1) != 0 && !v83)
      {
LABEL_17:
        v77 = v226;
        goto LABEL_91;
      }
    }

    AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v218 + 32, &a20);
    v91 = AidBySvId;
    v92 = (1 << (v79 & 0x1F)) & v84;
    if (AidBySvId)
    {
      LOWORD(v223) = *(AidBySvId + 37);
      HIDWORD(v223) = *(AidBySvId + 36);
      v93 = *(AidBySvId + 3) - 1;
      v94 = v93 >= 3;
      v222 = (v93 < 3) << 10;
      v95 = v219;
      if (!v94)
      {
        v95 = v219 + 1;
      }

      v219 = v95;
      v96 = *(AidBySvId + 1);
      if (v96 <= 6)
      {
        v225 = AidBySvId[8];
        if ((v225 - 1) < 0x3F)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (!v92)
      {
        goto LABEL_17;
      }

      v222 = 0;
      v223 = 0;
    }

    v97 = *(v70 + 1264);
    LODWORD(a64) = 7;
    BYTE4(a64) = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss((v97 + 119744), &a20, &a64, v89, v90);
    v96 = a64;
    LOBYTE(v225) = BYTE4(a64);
    if (a64 <= 6 && a64 == 2 && BYTE4(a64) - 1 >= 0x3F)
    {
      LODWORD(a64) = 7;
      BYTE4(a64) = 0;
      if (!BlueFin::GlPeSvIdConverter::SvId2PossibleGnss((*(v70 + 1264) + 119744), &a20, &a64, &__src))
      {
        goto LABEL_17;
      }

      LOBYTE(v225) = BYTE4(a64);
      v96 = 2u;
    }

LABEL_31:
    if (!v92)
    {
      v105 = 0;
      v106 = 8;
      v221 = 8;
      v103 = 0.0;
LABEL_47:
      v220 = v106;
      goto LABEL_49;
    }

    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v224, &a20, 0, 1u);
    v99 = 1 << (v225 - 1);
    v100 = BYTE4(a20);
    v101 = *(MeMeas + 3);
    if ((v101 & 2) != 0)
    {
      v102 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v96];
      *&v70[16 * BYTE4(a20) + 1150 + 2 * v102] |= v99;
      if (*(MeMeas + 27) < 0.0000000158999995)
      {
        *&v70[16 * v100 + 1278 + 2 * v102] |= v99;
      }
    }

    if ((v101 & 0x40000) != 0)
    {
      *&v70[16 * v100 + 1454 + 2 * BlueFin::GlImplGnss::m_aucEnabledGnssTable[v96]] |= v99;
    }

    if ((v101 & 0x400000) != 0)
    {
      *&v70[2 * BlueFin::GlImplGnss::m_aucEnabledGnssTable[v96] + 1518] |= v99;
    }

    v103 = 0.0;
    if ((v101 & 0x4000) != 0)
    {
      v103 = *(MeMeas + 29);
    }

    v104 = BlueFin::GlSignalIdArray::Get(*(v224 + 2349), &a20);
    if (v104)
    {
      v221 = *(v104 + 272);
    }

    else
    {
      v221 = 0;
    }

    v107 = BlueFin::GlSignalIdArray::Get(*(v224 + 2349), &a20);
    v105 = (v101 >> 14) & 1;
    if (v107)
    {
      v106 = *(v107 + 273);
      goto LABEL_47;
    }

    v220 = 0;
LABEL_49:
    v108 = *v70;
    v109 = BlueFin::GlSignalIdArray::Get((v70 + 1968), &a20);
    if (v109)
    {
      if (v105)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v109 = BlueFin::GlBigArray::Add(v216, a21);
      if (!v109)
      {
        a64 = v70 + 2256;
        LOWORD(a65) = v73[1] + 1;
        if (*v73 <= a65)
        {
          goto LABEL_202;
        }

        v112 = 0;
        v113 = 575;
        v114 = -1;
        do
        {
          v115 = BlueFin::GlBigArrayIterator::Next(&a64);
          if (v115 >= 0x23Fu)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          v116 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * (v115 & 0x3FF);
          v117 = *v116;
          LODWORD(v116) = v116[1];
          LOBYTE(__src) = v117;
          HIDWORD(__src) = v116;
          LOWORD(a32) = v115;
          v118 = *(BlueFin::GlSignalIdArray::Get((v70 + 1968), &__src) + 4);
          v119 = v118 <= v114;
          if (v118 <= v114)
          {
            v113 = a32;
          }

          if (v118 < v114)
          {
            v114 = v118;
          }

          v112 |= v119;
        }

        while (a65 < *(a64 + 16));
        if ((v112 & 1) == 0)
        {
LABEL_202:
          DeviceFaultNotify("glpe_fixstatus.cpp", 1194, "Get", "bHaveSignalIdToRemove");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_fixstatus.cpp", 1194, "bHaveSignalIdToRemove");
        }

        BlueFin::GlBigArray::Remove(v216, v113);
        v109 = BlueFin::GlBigArray::Add(v216, a21);
        if (!v109)
        {
          DeviceFaultNotify("glpe_fixstatus.cpp", 1201, "Get", "pSnrHist");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_fixstatus.cpp", 1201, "pSnrHist");
        }
      }

      *v109 = 0;
      if (v105)
      {
LABEL_51:
        *(v109 + 4) = v108;
        v111 = v220;
        v110 = v221;
LABEL_69:
        *v109 = v103;
        goto LABEL_70;
      }
    }

    v111 = v220;
    v110 = v221;
    if (v103 >= 7.0)
    {
      goto LABEL_69;
    }

    if ((v108 - *(v109 + 4)) > 0x3E8)
    {
      goto LABEL_69;
    }

    v120 = *(v70 + 1261);
    if (!*(v120 + 4048) || (*(v120 + 4068) & 8) != 0)
    {
      goto LABEL_69;
    }

    v105 = 1;
LABEL_70:
    if (v103 >= 7.0)
    {
      v121 = 1;
    }

    else
    {
      v121 = v105;
    }

    if (v121)
    {
      v122 = -2048;
    }

    else
    {
      v122 = 0;
    }

    if (v223 == 1 && HIDWORD(v223) == 0)
    {
      v124 = 2;
    }

    else
    {
      v124 = v223;
    }

    if (v91)
    {
      v125 = -512;
    }

    else
    {
      v125 = 0;
    }

    *(&STACK[0x300] + v76) = v125 - (v222 & 0x400 | v223) + v122;
    v126 = &STACK[0x620] + 4 * v76;
    *v126 = a20;
    if (v91)
    {
      v127 = WORD2(v223);
    }

    else
    {
      v127 = 0;
    }

    if (!v91)
    {
      v124 = 1;
    }

    *(v126 + 12) = v225;
    *(v126 + 16) = v121;
    *(v126 + 9) = v127;
    *(v126 + 10) = v124;
    *(v126 + 6) = v103;
    *(v126 + 28) = v110;
    *(v126 + 29) = v111;
    *(v126 + 1) = HIDWORD(a20);
    *(v126 + 2) = v96;
    v77 = (v226 + 1);
LABEL_91:
    BlueFin::GlSetIterator::operator++(&a38);
    v76 = v77;
    v78 = v77;
  }

  while (a39 != a38 && v77 <= 0xC7);
  LOBYTE(a64) = 0;
  if (v77 >= 2)
  {
    v128 = 1;
    do
    {
      v129 = *(&STACK[0x300] + v128);
      v130 = v128;
      while (1)
      {
        v131 = v130;
        v132 = *(&a64 + v130 - 1);
        if (*(&STACK[0x300] + v132) <= v129)
        {
          break;
        }

        *(&a64 + v131) = v132;
        v130 = v131 - 1;
        if (v131 == 1)
        {
          v131 = 0;
          break;
        }
      }

      *(&a64 + v131) = v128++;
    }

    while (v128 != v77);
  }

LABEL_100:
  *v70 = *v224;
  *(v70 + 2137) = 0;
  v133 = *(v70 + 981);
  *(v70 + 4051) = *(v133 + 2589) == 0;
  *v217 = *(v133 + 2588);
  BlueFin::GlPeFixStatus::SetTime(v70);
  GlCustomLog(14, "--GlPe_FixStatus::SetSIGMeasurement Setting utc time to %04hu/%02hu/%02hu %02hu:%02hu:%02hu.%03hu%03hu  UncUs:", *(v70 + 2), *(v70 + 3), *(v70 + 4), *(v70 + 5), *(v70 + 6), *(v70 + 7), *(v70 + 8), *(v70 + 9));
  if (v70[5] == -1)
  {
    GlCustomLog(14, "<invalid>\n");
  }

  else
  {
    GlCustomLog(14, "%u\n", v70[5]);
  }

  v134 = 100;
  if (v76 < 0x64)
  {
    v134 = v76;
  }

  *(v70 + 22) = v134;
  GlCustomLog(14, "--GlPe_FixStatus::SetSIGMeasurement  Chose best %hd out of %hd SVs LMS:%u TimeSource:%d\n", v134, v77, *v70, v70[10]);
  v135 = *(v70 + 1268);
  v136 = (*(v135 + 25) & 1) != 0 || *(v135 + 44) != -7200001;
  *(v217 + 3100) = v136;
  *(v217 + 3101) = *(v135 + 26);
  *(v217 + 3102) = *(v135 + 24);
  v70[1820] = v219;
  *(v217 + 3173) = 0;
  if (*(v70 + 22) >= 1)
  {
    v137 = 0;
    v138 = 1860;
    while (1)
    {
      v139 = &v70[v137];
      v140 = &STACK[0x620] + 4 * *(&a64 + v138 - 1860);
      v141 = *v140;
      *(v139 + 3) = 0u;
      *(v139 + 4) = 0u;
      *(v139 + 10) = 0;
      *(v139 + 49) = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v141);
      v143 = *(v140 + 1);
      v142 = *(v140 + 2);
      *(v139 + 50) = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v142];
      *(v139 + 48) = *(v140 + 16) != 0;
      v144 = *(v140 + 9) % 0x168u;
      v145 = *(v140 + 12);
      *(v139 + 51) = v145;
      *(v139 + 37) = -200;
      *(v139 + 27) = v144;
      *(v139 + 26) = *(v140 + 10);
      *(v139 + 83) = *(v140 + 28);
      *(v139 + 84) = *(v140 + 29);
      *(v139 + 82) = v143;
      if (v142 > 6 || (v145 - 1) > 0x3E || !BlueFin::GlPeSvHealthHelper::IsBadByRti(*(v70 + 1267) + 32, (v140 | 8)))
      {
        goto LABEL_118;
      }

      v146 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v140 | 8)];
      *&v70[2 * v146 + 1422] |= 1 << (*(v139 + 51) - 1);
      v147 = *(v139 + 26);
      if (v147 == 1)
      {
        break;
      }

      if ((v147 & 0x80000000) == 0)
      {
        goto LABEL_117;
      }

LABEL_118:
      v70[v138] = *(v140 + 6);
      if (*(v140 + 16))
      {
        v148 = *(v140 + 1);
        v149 = *v140;
        LOBYTE(__src) = *v140;
        HIDWORD(__src) = v148;
        LOWORD(a32) = 575;
        if (v148 != -1 && (v149 - 189) >= 0xFFFFFF44)
        {
          v150 = BlueFin::GlSvId::s_aucSvId2gnss[v149];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v148 - v148 + v150] == 255)
          {
            HIDWORD(__src) = -1;
          }

          else
          {
            LOWORD(a32) = BlueFin::GlSignalId::s_ausGnss2signalId[v150] + v149 - BlueFin::GlSvId::s_aucGnss2minSvId[v150] + v148 * BlueFin::GlSvId::s_aucGnss2numSvId[v150];
          }
        }

        v151 = BlueFin::GlSignalIdArray::Get((v70 + 1968), &__src);
        if (v151)
        {
          v152 = *v151;
        }

        else
        {
          v152 = 0;
        }

        v70[v137 + 16] = v152;
        v154 = 56;
        if (!HIDWORD(__src))
        {
          v154 = 52;
        }

        v153 = *(v70 + 1265);
        if (*(v153 + v154) >= 0.0)
        {
          v155 = *(v153 + v154);
        }

        else
        {
          v155 = 0.0;
        }

        v156 = BlueFin::GlSignalIdArray::Get((v70 + 1968), &__src);
        if (v156)
        {
          v157 = *v156;
        }

        else
        {
          v157 = 0.0;
        }

        v158 = v155 + v157;
        v159 = &v70[v137];
        v159[17] = v158;
        *(v159 + 36) = (v158 + -174.0);
        v160 = *(v140 + 6) + v155;
        *(v159 + 40) = (((v160 + -174.0) * 10.0) + -0.5);
        v159[19] = v160 * 10.0;
        *(v139 + 37) = ((v160 + -174.0) + -0.5);
      }

      v161 = v138 - 1859;
      ++v138;
      v137 += 10;
      if (v161 >= *(v70 + 22))
      {
        goto LABEL_137;
      }
    }

    if (!*(v139 + 27))
    {
      goto LABEL_118;
    }

LABEL_117:
    *(v217 + 3173) = 1;
    goto LABEL_118;
  }

LABEL_137:
  *(v217 + 3140) = *(v215 + 346);
  v70[1831] = *(v215 + 694);
  v70[1832] = *(v215 + 695);
  *(v70 + 3666) = *(v215 + 1415) + *(v215 + 1408);
  *(v70 + 3667) = *(v215 + 1409);
  *(v70 + 3668) = *(v215 + 1416) + *(v215 + 1410);
  *(v70 + 3669) = *(v215 + 1411);
  v70[1835] = *(v215 + 706);
  *(v70 + 3672) = *(v215 + 1392);
  *(v70 + 3673) = *(v215 + 1393);
  v162 = *(v70 + 982);
  v163 = *(v162 + 2);
  v164 = *(v162 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v165 = v164 * 0.000000001;
  if (v165 != 0.0)
  {
    if ((v167 = v165 * 1000000000.0, v168 = 0.5, v165 * 1000000000.0 <= 0.0) && (v168 = -0.5, v165 * 1000000000.0 >= 0.0) || (v167 + v168) <= 5)
    {
      v169 = v73[614];
      if (!v73[614])
      {
        v70[1067] = 0;
        *(v217 + 96) = 0;
        if (*(v73 + 1240) == 1)
        {
          v70[1065] = 0;
        }
      }

      v170 = v163 * 0.000000001 * 1000000000.0;
      v171 = (v70 + 2551);
      *&v70[v169 + 2551] = v170;
      v172 = v167;
      v173 = v70 + 2561;
      *&v70[v169 + 2561] = v172;
      v174 = v169 + 1;
      v175 = (v169 + 1);
      v73[614] = v174;
      if (v165 < 0.000000005)
      {
        v176 = *(v70 + 1266);
        v177 = v171[v175 - 1];
        v178 = v177;
        if (v177 > 0.0)
        {
          v179 = 0.5;
          goto LABEL_166;
        }

        if (v177 < 0.0)
        {
          v179 = -0.5;
LABEL_166:
          v190 = (v178 + v179);
        }

        else
        {
          v190 = 0;
        }

        if (*(v176 + 220) == 4)
        {
          v191 = v190 - *(v176 + 224);
          if ((v191 + 300) < 0x259)
          {
            v192 = 6;
          }

          else
          {
            v192 = 7;
          }

          *(v176 + 220) = v192;
          *(v176 + 224) = v191;
          *(v176 + 232) = 1;
        }
      }

      if (v175 >= v73[618])
      {
        *(v217 + 96) = 1;
        v193 = *(v70 + 2551);
        v194 = *(v70 + 2561);
        if (v175 < 2)
        {
          v199 = *(v70 + 2561);
          v198 = *(v70 + 2551);
          v200 = v198;
        }

        else
        {
          v195 = v175;
          v196 = (v70 + 2562);
          v197 = v195 - 1;
          v198 = *(v70 + 2551);
          v199 = *(v70 + 2561);
          do
          {
            v200 = *(v196 - 10);
            if (v193 <= v200)
            {
              if (v198 < v200)
              {
                v199 = *v196;
                v198 = *(v196 - 10);
              }

              v200 = v193;
            }

            else
            {
              v194 = *v196;
            }

            ++v196;
            v193 = v200;
            --v197;
          }

          while (v197);
        }

        v201 = v198 - v200;
        if (v201 < 0.0)
        {
          v201 = -v201;
        }

        v202 = v199 + v194;
        if (v73[620])
        {
          *(v73 + 1240) = 0;
          v73[614] = 0;
          *(v217 + 82) = v201 < 40.0;
          v203 = (v201 + -0.5);
          if (v201 >= 0.0)
          {
            v203 = 0;
          }

          if (v201 > 0.0)
          {
            v203 = (v201 + 0.5);
          }

          v70[1065] = v203;
          BlueFin::GlPePlatfStat::SetOscDrift(*(v70 + 1266), 0, v201 < 40.0, v201, v202);
        }

        else
        {
          *(v217 + 88) = v201 < 10.0;
          v204 = (v201 + -0.5);
          if (v201 >= 0.0)
          {
            v204 = 0;
          }

          if (v201 > 0.0)
          {
            v204 = (v201 + 0.5);
          }

          v70[1067] = v204;
          BlueFin::GlPePlatfStat::SetOscDrift(*(v70 + 1266), 10, v201 < 10.0, v201, v202);
          v205 = 4 * v73[614];
          v206 = v205 - 4;
          v207 = v171[v205 / 4 - 1];
          v208 = v205 - 8;
          v209 = v207 - *(v171 + v208);
          if (v209 < 0.0)
          {
            v209 = -v209;
          }

          BlueFin::GlPePlatfStat::SetOscDrift(*(v70 + 1266), 1, v209 < 5.0, v209, *(v173 + v206) + *(v173 + v208));
          if (v73[614] >= 0xAu)
          {
            v73[614] = 9;
            v210 = *(v70 + 638);
            v211 = *(v70 + 639);
            v70[2559] = v70[2560];
            *v171 = v210;
            *(v70 + 2555) = v211;
            v212 = *(v70 + 2562);
            v213 = *(v70 + 2566);
            v70[2569] = v70[2570];
            *v173 = v212;
            *(v70 + 2565) = v213;
          }
        }
      }
    }
  }

  if (v214)
  {
    v70[1737] = *(v214 + 36);
    v70[1733] = *(v214 + 20);
    *(v217 + 2764) = *(v214 + 28);
    *(v217 + 2740) = *(v214 + 4);
    v70[1734] = *(v214 + 24);
  }

  v166 = v73[619];
  if (v166 <= 0)
  {
    v180 = 0;
    v181 = v70 + 1438;
    *(v70 + 1446) = 0u;
    *(v70 + 1450) = 0u;
    *(v70 + 1438) = 0u;
    *(v70 + 1442) = 0u;
    do
    {
      BlueFin::GlPeAlmMgr::GetValidity(*(v70 + 1264) + 34112, v180, 0, &a20);
      LOBYTE(__src) = a21;
      memcpy(&a32, a20, 4 * a21);
      WORD1(__src) = 0;
      BYTE1(__src) = 0;
      HIDWORD(__src) = a32;
      BlueFin::GlSetIterator::operator++(&__src);
      if (BYTE1(__src) != __src)
      {
        v182 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v180];
        v183 = *&v181[2 * v182];
        do
        {
          v183 |= 1 << (BYTE2(__src) - 1);
          *&v181[2 * v182] = v183;
          v73[619] = 300;
          BlueFin::GlSetIterator::operator++(&__src);
        }

        while (BYTE1(__src) != __src);
      }

      ++v180;
    }

    while (v180 != 7);
  }

  else
  {
    v73[619] = v166 - 1;
  }

  v184 = 0;
  v185 = *(v70 + 1264);
  LODWORD(__src) = 2;
  v186 = v70 + 1854;
  do
  {
    BYTE4(__src) = v184 + 1;
    result = BlueFin::GlPeSvIdConverter::Gnss2SvId((v185 + 119744), &__src, &a20);
    v188 = a20 - 59;
    if ((a20 - 1) >= 0xBCu)
    {
      v188 = -8;
    }

    *(v186 + v184++) = v188;
  }

  while (v184 != 24);
  v189 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x1F38]);
  return result;
}

double BlueFin::GlSignalIdSet::GlSignalIdSet(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 12) = 0u;
  v4 = (a1 + 12);
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 72) = 0u;
  v6 = 1 << a3;
  BlueFin::GlSignalIdSet::GlSignalIdSet(v7, a2, &v6);
  BlueFin::GlSetBase::operator=(a1, v7);
  *(a1 + 28) = v9;
  *(a1 + 44) = v10;
  *(a1 + 60) = *v11;
  *(a1 + 72) = *&v11[12];
  result = *&v8;
  *v4 = v8;
  return result;
}

uint64_t BlueFin::GlSignalIdSet::GlSignalIdSet(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 12) = 0u;
  v4 = a1 + 12;
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 72) = 0u;
  v14 = *(a2 + 8);
  memcpy(v18, *a2, 4 * v14);
  v16 = 0;
  v15 = 0;
  v17 = v18[0];
  BlueFin::GlSetIterator::operator++(&v14);
  while (v15 != v14)
  {
    v12 = *a3;
    v13 = v12;
    v11 = 1;
    BlueFin::GlSetIterator::operator++(&v11);
    if (BYTE1(v11) != v11)
    {
      v5 = v16;
      v6 = v16 - 189;
      do
      {
        if (SHIWORD(v11) != -1 && v6 >= 0xFFFFFF44)
        {
          v7 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * SHIWORD(v11) - SHIWORD(v11) + v7] != 255 && (BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v7] + HIWORD(v11) * BlueFin::GlSvId::s_aucGnss2numSvId[v7]) <= 0x23Eu)
          {
            v8 = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v7] + HIWORD(v11) * BlueFin::GlSvId::s_aucGnss2numSvId[v7];
            *(v4 + 4 * (v8 >> 5)) |= 1 << v8;
          }
        }

        BlueFin::GlSetIterator::operator++(&v11);
      }

      while (BYTE1(v11) != v11);
    }

    BlueFin::GlSetIterator::operator++(&v14);
  }

  return a1;
}

unsigned __int8 *BlueFin::GlPeSatAidInfo::GetAidBySvId(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  BlueFin::GlArray::EnsureValidHandle(a1 + 9120, v4);
  if (*(*(a1 + 9136) + v4 - *(a1 + 9156)) == 255)
  {
    return 0;
  }

  result = BlueFin::GlArray::Get((a1 + 9120), *a2);
  if (*a2 != *result)
  {
    return 0;
  }

  return result;
}

uint64_t BlueFin::GlArray::EnsureValidHandle(uint64_t this, int a2)
{
  if (a2 - *(this + 36) >= *(this + 37))
  {
    DeviceFaultNotify("glutl_array.cpp", 133, "EnsureValidHandle", "handle - m_ucMinHandle < m_ucNumHandles");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_array.cpp", 133, "handle - m_ucMinHandle < m_ucNumHandles");
  }

  return this;
}

unint64_t BlueFin::GlPeFixStatus::SetTime(unsigned int **this)
{
  BlueFin::GlPeTimeManager::GetTime(this[981], *this, 1, v24);
  BlueFin::GlPeGnssTime::GetGps(v24, (this + 3));
  BlueFin::GlPeGnssTime::GetUtc(v24, this + 4);
  v3 = this[981];
  v4 = *(v3 + 686);
  v5 = *(v3 + 644);
  if (v5)
  {
    v4 |= 1 << v5;
  }

  if (*(v3 + 645) == 5)
  {
    v6 = 6;
  }

  else if (BlueFin::GlPeTimeManager::IsTimeUncVerified(v3))
  {
    v6 = 5;
  }

  else if ((v4 & 0x150) != 0)
  {
    v6 = 4;
  }

  else if ((v4 & 0x80) != 0)
  {
    v6 = 3;
  }

  else if ((v4 & 4) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = (v4 >> 1) & 1;
  }

  *(this + 10) = v6;
  v23 = 0uLL;
  LODWORD(v2) = *this;
  result = BlueFin::GlPeTimeManager::GetDtsS(this[981], v2, &v23 + 1, &v23, 0, 0);
  *v10.i64 = *(&v23 + 1) * 1000.0;
  *v11.i64 = floor(*(&v23 + 1) * 1000.0);
  *v12.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  *&v15 = vbslq_s8(v14, v12, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    *v11.i64 = v15;
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v9.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    v11 = vbslq_s8(v14, v11, v9);
    *v11.i64 = -*v11.i64;
  }

  if (*v11.i64 < 0.0)
  {
    v16 = --*v11.i64;
  }

  else
  {
    v16 = *v11.i64;
  }

  *(this + 1042) = v16;
  *v8.i64 = (*v10.i64 - v16) * 1000.0 + 0.5;
  *v10.i64 = *v8.i64 + trunc(*v8.i64 * 2.32830644e-10) * -4294967300.0;
  v17 = vbslq_s8(v14, v10, v8);
  if (*v8.i64 > 4294967300.0)
  {
    v8.i64[0] = v17.i64[0];
  }

  if (*v8.i64 < -4294967300.0)
  {
    *v17.i64 = -*v8.i64;
    *v8.i64 = -(*v8.i64 - trunc(*v8.i64 * -2.32830644e-10) * -4294967300.0);
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v14 = vnegq_f64(v18);
    v8 = vbslq_s8(v14, v8, v17);
    *v8.i64 = -*v8.i64;
  }

  if (*v8.i64 < 0.0)
  {
    v19 = --*v8.i64;
  }

  else
  {
    LOWORD(v19) = *v8.i64;
  }

  *(this + 3444) = v19;
  if (v19 == 1000)
  {
    *(this + 3444) = 0;
    *(this + 1042) = v16 + 1;
  }

  *v8.i64 = *&v23 + 0.5;
  *v11.i64 = *&v23 + 0.5 + trunc((*&v23 + 0.5) * 2.32830644e-10) * -4294967300.0;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = vnegq_f64(v20);
  v11.i64[0] = vbslq_s8(v21, v11, v8).u64[0];
  if (*&v23 + 0.5 > 4294967300.0)
  {
    v8.i64[0] = v11.i64[0];
  }

  if (*v8.i64 < -4294967300.0)
  {
    *v14.i64 = -*v8.i64;
    *v8.i64 = -(*v8.i64 - trunc(*v8.i64 * -2.32830644e-10) * -4294967300.0);
    *v8.i64 = -*vbslq_s8(v21, v8, v14).i64;
  }

  if (*v8.i64 < 0.0)
  {
    v22 = --*v8.i64;
  }

  else
  {
    v22 = *v8.i64;
  }

  if (v22 <= 1)
  {
    v22 = 1;
  }

  *(this + 1043) = v22;
  return result;
}

void BlueFin::GlPeGnssTime::GetGps(BlueFin::GlPeGnssTime *a1, uint64_t a2)
{
  v23 = &off_2A1F0B5F0;
  v24 = 0;
  *v3.i64 = BlueFin::GlPeGnssTime::GetGps(a1, &v23);
  v22 = v3;
  *a2 = (v23[4])(&v23) / 0x93A80;
  v7 = (v23[4])(&v23);
  v6 = 1000 * (v5 % 0x93A80);
  *(a2 + 4) = v6;
  *v7.i64 = v24 * 2.32830644e-10 * 1000000000.0 + 0.5;
  *v8.i64 = *v7.i64 + trunc(*v7.i64 * 2.32830644e-10) * -4294967300.0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  *&v11 = vbslq_s8(v10, v8, v7).u64[0];
  if (*v7.i64 > 4294967300.0)
  {
    *v7.i64 = v11;
  }

  if (*v7.i64 < -4294967300.0)
  {
    *v4.i64 = -*v7.i64;
    *v7.i64 = -(*v7.i64 - trunc(*v7.i64 * -2.32830644e-10) * -4294967300.0);
    v7 = vbslq_s8(v10, v7, v4);
    *v7.i64 = -*v7.i64;
  }

  if (*v7.i64 < 0.0)
  {
    v12 = --*v7.i64;
  }

  else
  {
    v12 = *v7.i64;
  }

  if (v12 == 1000000000)
  {
    v13 = HIDWORD(v24);
    if (v24 > 0xFFFFFFFD)
    {
      v13 = HIDWORD(v24) + 1;
    }

    LODWORD(v24) = v24 + 2;
    HIDWORD(v24) = v13;
    *a2 = (v23[4])(&v23) / 0x93A80;
    v14 = (v23[4])(&v23);
    LOWORD(v15) = 0;
    LOWORD(v16) = 0;
    v17 = 1000 * (v14 % 0x93A80);
  }

  else
  {
    v17 = v12 / 0xF4240 + v6;
    v15 = v12 / 0x3E8 - 1000 * (((8589935 * (v12 / 0x3E8)) >> 32) >> 1);
    v16 = v12 % 0x3E8;
  }

  *(a2 + 4) = v17;
  *(a2 + 8) = v15;
  *(a2 + 10) = v16;
  *v7.i64 = *v22.i64 + trunc(*v22.i64 * 2.32830644e-10) * -4294967300.0;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = vnegq_f64(v18);
  v20 = vbslq_s8(v19, v7, v22);
  if (*v22.i64 <= 4294967300.0)
  {
    v20.i64[0] = v22.i64[0];
  }

  if (*v20.i64 < -4294967300.0)
  {
    *v4.i64 = -*v20.i64;
    *v20.i64 = -(*v20.i64 - trunc(*v20.i64 * -2.32830644e-10) * -4294967300.0);
    *v20.i64 = -*vbslq_s8(v19, v20, v4).i64;
  }

  if (*v20.i64 < 0.0)
  {
    v21 = --*v20.i64;
  }

  else
  {
    v21 = *v20.i64;
  }

  if (v21 <= 1)
  {
    v21 = 1;
  }

  *(a2 + 12) = v21;
}

void BlueFin::GlPeGnssTime::GetUtc(BlueFin::GlPeGnssTime *a1, uint64_t a2)
{
  v33 = &unk_2A1F11310;
  v34 = 0;
  v3 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v35 = 1980;
  v36 = v3 / 0x15180 + 1;
  LOBYTE(v37) = 1;
  BYTE1(v37) = v3 / 0x15180 + 1;
  BYTE2(v37) = v3 % 0x15180 / 0xE10;
  HIBYTE(v37) = (2185 * (v3 - 3600 * ((1193047 * v3) >> 32))) >> 17;
  v38 = v3 - 60 * ((71582789 * v3) >> 32);
  *v4.i64 = BlueFin::GlPeGnssTime::GetUtc(a1, &v33);
  *a2 = v35;
  v7.i32[0] = v37;
  *(a2 + 2) = vmovl_u8(v7).u64[0];
  v8 = v34;
  v9 = v34;
  *(a2 + 10) = v38;
  v10 = (v9 * 2.32830644e-10 * 1000000.0 + 0.5);
  if (v10 == 1000000)
  {
    if (v8 <= 0xFFFFF79C)
    {
      v11 = HIDWORD(v34);
    }

    else
    {
      v11 = HIDWORD(v34) + 1;
    }

    v12 = BlueFin::GlWeekTowTime::m_ucNextLs;
    if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      v13 = v11 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v14;
    if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v11)
    {
      v12 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
    }

    v16 = v11 + 432000 - v15 - v12;
    v17 = v16 % 0x7861F80;
    v18 = v16 % 0x7861F80 / 0x15180;
    if (v16 % 0x7861F80 > 0x5A4EBFF)
    {
      v19 = 3;
    }

    else if (v17 <= 0x3C3B87F)
    {
      v19 = v17 > 0x1E284FF;
    }

    else
    {
      v19 = 2;
    }

    v21 = v19;
    v22 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v19];
    if (v18 >= v22[9])
    {
      v23 = 9;
    }

    else if (v18 >= v22[6])
    {
      v23 = 6;
    }

    else if (v18 >= v22[3])
    {
      v23 = 3;
    }

    else
    {
      v23 = 0;
    }

    v24 = (v21 | (4 * (v16 / 0x7861F80))) + 1980;
    if (v18 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v21 + v23 + 2])
    {
      v25 = 3;
    }

    else if (v18 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v21 + v23 + 1])
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = v25 + v23;
    v27 = v18 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v21 + v26 - 1] + 1;
    LOBYTE(v18) = 60;
    if (v15)
    {
      LOBYTE(v28) = 59;
      LOBYTE(v29) = 23;
    }

    else
    {
      v29 = (1193047 * (v16 % 0x15180)) >> 32;
      v28 = (2185 * (v16 % 0xE10)) >> 17;
      v18 = v16 % 0x3C;
    }

    LOWORD(v20) = 0;
    *a2 = v24;
    *(a2 + 2) = v26;
    *(a2 + 4) = v27;
    *(a2 + 6) = v29;
    *(a2 + 8) = v28;
    *(a2 + 10) = v18;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a2 + 12) = v10 / 0x3E8;
    v20 = v10 % 0x3E8;
  }

  *(a2 + 14) = v20;
  *v6.i64 = *v4.i64 + trunc(*v4.i64 * 2.32830644e-10) * -4294967300.0;
  v30.f64[0] = NAN;
  v30.f64[1] = NAN;
  v31 = vnegq_f64(v30);
  v6.i64[0] = vbslq_s8(v31, v6, v4).u64[0];
  if (*v4.i64 > 4294967300.0)
  {
    v4.i64[0] = v6.i64[0];
  }

  if (*v4.i64 < -4294967300.0)
  {
    *v5.i64 = -*v4.i64;
    *v4.i64 = -(*v4.i64 - trunc(*v4.i64 * -2.32830644e-10) * -4294967300.0);
    *v4.i64 = -*vbslq_s8(v31, v4, v5).i64;
  }

  if (*v4.i64 < 0.0)
  {
    v32 = --*v4.i64;
  }

  else
  {
    v32 = *v4.i64;
  }

  if (v32 <= 1)
  {
    v32 = 1;
  }

  *(a2 + 16) = v32;
}

unint64_t BlueFin::GlPeTimeManager::GetDtsS(unint64_t this, double a2, double *a3, double *a4, double *a5, double *a6)
{
  v11 = this;
  v12 = *(this + 2728);
  v13 = *(this + 2736);
  v14 = *(this + 32);
  v15 = *(v14 + 2);
  v16 = *(v14 + 10);
  v17 = v13;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    v17 = *(v11 + 2736);
  }

  v18 = v15 * 0.000000001;
  v19 = v16 * 0.000000001;
  if (v17 != 4294967300.0)
  {
    v20 = (a2 - *(v11 + 2720)) * 0.001;
    v12 = v12 + v20 * v18;
    v13 = v13 + fabs(v20) * 1000000.0 * (v19 + 0.000000005);
  }

  if (a3)
  {
    *a3 = v12;
  }

  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return this;
}

uint64_t BlueFin::GlPeTimeManager::IsTimeUncVerified(BlueFin::GlPeTimeManager *this)
{
  v1 = *(this + 686);
  v2 = v1 & 0x200;
  v3 = *(this + 645);
  if (v3 != 5 && v2 == 0)
  {
    return 0;
  }

  if (v3 == 5 || v2 == 0)
  {
    if (v3 == 5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (*(this + 704) == -1 || *(this + 354) == 4294967300.0)
  {
    v6 = 0;
    if ((v1 & 0xC) != 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (v6)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v6 = *(this + 718) < 0x5265C00u;
  if ((v1 & 0xC) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  v7 = 1;
  if ((*(this + 4876) & 1) == 0)
  {
    *(this + 4876) = 1;
    v9 = *(this + 342);
    if ((v1 & 0x200) != 0)
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    if (v3 == 5)
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    GlCustomLog(14, "GlPeTimeManager::VerifyTimeUnc(%u): FullSatVer:%c  NavSystemSync:%c  CurTimeUncUs:%.3lf\n", *(this + 642), v11, v10, *(this + 342));
  }

  return v7;
}

_DWORD *BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::UpdateCache(_DWORD *this, int a2, char a3)
{
  v5 = this;
  v17[3] = *MEMORY[0x29EDCA608];
  v6 = this[1];
  if (v6 == -7200001 || (a2 - v6) >= 0x2711)
  {
    this = BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::ageCache(this, a2);
  }

  if ((a3 & 1) != 0 || ((v8 = v5[2], v8 != -7200001) ? (v9 = (a2 - v8) >= 0x2711) : (v9 = 1), v9))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    *v5 = 0;
    *(v5 + 2) = 0;
    memset(v17, 0, 24);
    do
    {
      if (v5[v10 + 3] != -7200001)
      {
        v14 = *(v5 + v10 + 24);
        v15 = *(v17 + v14 - 1);
        *(v17 + v14 - 1) = v15 + 1;
        if (!v15)
        {
          ++v13;
        }

        if ((v15 + 1) > v12)
        {
          v12 = v15 + 1;
          v11 = v14;
        }
      }

      ++v10;
    }

    while (v10 != 3);
    if ((v13 - 3) >= 0xFEu && v13 <= v12)
    {
      *v5 = 1;
      *(v5 + 1) = v12 > 1u;
      *(v5 + 2) = v11;
    }

    v5[2] = a2;
  }

  v16 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetCmpUnsignedField(BlueFin::GlPeLtoEphemeris *this, int a2)
{
  v2 = *(this + 2);
  if (a2 > 34)
  {
    if (a2 == 35)
    {
      return (v2[18] >> 27) & 1;
    }

    if (a2 != 36)
    {
      if (a2 == 37)
      {
        HIDWORD(v5) = v2[14];
        LODWORD(v5) = v2[15];
        return (v5 >> 4) >> 9;
      }

      return BlueFin::GlPeGpsEphemerisBase::GetCmpUnsignedField(this, a2);
    }

    return (v2[18] >> 23) & 0xF;
  }

  else
  {
    if (a2 == 32)
    {
      return (v2[17] >> 7) & 0xF;
    }

    if (a2 != 33)
    {
      if (a2 == 34)
      {
        HIDWORD(v3) = v2[17];
        LODWORD(v3) = v2[18];
        return (v3 >> 6) >> 22;
      }

      return BlueFin::GlPeGpsEphemerisBase::GetCmpUnsignedField(this, a2);
    }

    return (v2[17] >> 6) & 1;
  }
}

BlueFin::GlSetBase *BlueFin::GlPeLtoMgr::GetBadSvSet@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, unsigned int *a4@<X8>)
{
  v8 = BlueFin::GlGnssSet::operator()(a1 + 576, a2);
  if (a3)
  {

    return BlueFin::GlSetBase::GlSetBase(a4, a4 + 3, 2u, v8);
  }

  else
  {
    v10 = BlueFin::GlGnssSet::operator()(a1 + 768, a2);
    v11 = BlueFin::GlSetBase::GlSetBase(a4, a4 + 3, 2u, v8);
    v12 = &v14;
    v13 = 2;
    v14 = 0;
    BlueFin::GlSetBase::OperatorBinaryOr(v11, &v12, v10);
    result = BlueFin::GlSetBase::operator=(a4, &v12);
    *(a4 + 3) = v14;
  }

  return result;
}

unsigned int *BlueFin::GlPeGnssTime::operator-=(unsigned int *result, double a2)
{
  v2 = fabs(a2);
  v3 = v2 - trunc(v2);
  v4 = v3 * 4294967300.0 + 0.5;
  v5 = v4;
  if (v4 >= 4294967300.0)
  {
    v5 = -1;
  }

  if (v3 < 0.0 || v3 >= 1.0)
  {
    v15 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v16 = "glpe_timepoint.h";
    v17 = 173;
    goto LABEL_23;
  }

  v7 = v2;
  v8 = *result;
  v9 = result[1];
  if (a2 >= 0.0 && v2 | v5)
  {
    if (__PAIR64__(v9, v8) < __PAIR64__(v7, v5))
    {
      if (v7 - v9 != v8 > v5 || v5 != v8)
      {
        v15 = "!otTmp.isNegative()";
        DeviceFaultNotify("glpe_datetime.h", 1372, "operator-=", "!otTmp.isNegative()");
        v16 = "glpe_datetime.h";
        v17 = 1372;
LABEL_23:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
      }

      v13 = 0;
      LODWORD(v11) = 0;
    }

    else
    {
      v10 = v8 >= v5;
      LODWORD(v11) = v8 - v5;
      v12 = !v10;
      v13 = v9 - v7 - v12;
    }
  }

  else
  {
    v11 = v8 + v5;
    v13 = v9 + v7 + HIDWORD(v11);
  }

  *result = v11;
  result[1] = v13;
  return result;
}

double BlueFin::GlPeGnssTime::GetGal(BlueFin::GlPeGnssTime *this, BlueFin::GlGalTime *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  if (*(this + 2) == 3)
  {
    return *(this + 3);
  }

  v5 = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    v19 = "m_potConversionTable != nullptr";
    DeviceFaultNotify("glpe_timemgr.cpp", 457, "GetGal", "m_potConversionTable != nullptr");
    v20 = "glpe_timemgr.cpp";
    v21 = 457;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
  }

  v6 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 24);
  v7 = fabs(v6);
  v8 = v7 - trunc(v7);
  v9 = v8 * 4294967300.0 + 0.5;
  v10 = v9;
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
    goto LABEL_30;
  }

  v12 = v7;
  if (v6 >= 0.0)
  {
    v2 += v10;
    v13 = v3 + v12 + HIDWORD(v2);
    goto LABEL_26;
  }

  v14 = v3 - v12;
  if (v3 > v12 || v3 == v12 && v2 >= v10)
  {
    v15 = v2 >= v10;
    LODWORD(v2) = v2 - v10;
    v16 = !v15;
    v13 = v14 - v16;
    goto LABEL_26;
  }

  if (v12 - v3 != v2 > v10 || v10 != v2)
  {
    v19 = "!tDelta.isNegative()";
    DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
    v20 = "glpe_datetime.h";
    v21 = 425;
    goto LABEL_30;
  }

  v13 = 0;
  LODWORD(v2) = 0;
LABEL_26:
  *(a2 + 2) = v2;
  *(a2 + 3) = v13;
  v18 = *(this + 3);
  result = 4294967300.0;
  if (v18 != 4294967300.0)
  {
    return v18 + *(v5 + 60);
  }

  return result;
}

double BlueFin::GlPeGnssTime::GetBds(BlueFin::GlPeGnssTime *this, BlueFin::GlBdsTime *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  if (*(this + 2) == 4)
  {
    return *(this + 3);
  }

  v5 = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    v19 = "m_potConversionTable != nullptr";
    DeviceFaultNotify("glpe_timemgr.cpp", 478, "GetBds", "m_potConversionTable != nullptr");
    v20 = "glpe_timemgr.cpp";
    v21 = 478;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
  }

  v6 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 32);
  v7 = fabs(v6);
  v8 = v7 - trunc(v7);
  v9 = v8 * 4294967300.0 + 0.5;
  v10 = v9;
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
    goto LABEL_30;
  }

  v12 = v7;
  if (v6 >= 0.0)
  {
    v2 += v10;
    v13 = v3 + v12 + HIDWORD(v2);
    goto LABEL_26;
  }

  v14 = v3 - v12;
  if (v3 > v12 || v3 == v12 && v2 >= v10)
  {
    v15 = v2 >= v10;
    LODWORD(v2) = v2 - v10;
    v16 = !v15;
    v13 = v14 - v16;
    goto LABEL_26;
  }

  if (v12 - v3 != v2 > v10 || v10 != v2)
  {
    v19 = "!tDelta.isNegative()";
    DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
    v20 = "glpe_datetime.h";
    v21 = 425;
    goto LABEL_30;
  }

  v13 = 0;
  LODWORD(v2) = 0;
LABEL_26:
  *(a2 + 2) = v2;
  *(a2 + 3) = v13;
  v18 = *(this + 3);
  result = 4294967300.0;
  if (v18 != 4294967300.0)
  {
    return v18 + *(v5 + 64);
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetGnssId@<X0>(BlueFin::GlPeGpsEphemerisBase *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 0);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetGnssId@<X0>(BlueFin::GlPeBdsEphemeris *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 0);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeGalEphemeris::GetGnssId@<X0>(BlueFin::GlPeGalEphemeris *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 0);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeNicEphemeris::GetGnssId@<X0>(BlueFin::GlPeNicEphemeris *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 0);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeNicEphemeris::GetCmpUnsignedField(BlueFin::GlPeNicEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 0:
      return *v2 >> 26;
    case 1:
      return (*(v2 + 56) >> 23) & 3;
    case 2:
      return (*(v2 + 56) >> 22) & 1;
    case 3:
      return *(v2 + 58) & 0x3F;
    case 4:
      HIDWORD(v4) = *(v2 + 4);
      LODWORD(v4) = *(v2 + 8);
      return (v4 >> 2) >> 28;
    case 5:
    case 29:
      return *(v2 + 13);
    case 7:
      return (*(v2 + 8) >> 14);
    case 15:
      v6 = *(v2 + 32);
      v5 = *(v2 + 36);
      goto LABEL_15;
    case 17:
      v6 = *(v2 + 36);
      v5 = *(v2 + 40);
LABEL_15:
      result = (__PAIR64__(v6, v5) >> 16);
      break;
    case 18:
      result = *(v2 + 34);
      break;
    case 27:
      result = (*(v2 + 56) >> 25) & 1;
      break;
    case 28:
      result = *(v2 + 2) & 0x3FF;
      break;
    case 32:
      result = (*(v2 + 56) >> 15) & 1;
      break;
    default:
      DeviceFaultNotify("glpe_nicephmgr.cpp", 968, "GetCmpUnsignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 968, "0");
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphMgr::GetEph(uint64_t a1, _BYTE *a2, int a3)
{
  if (*(a1 + 7969))
  {
    return 0;
  }

  else
  {
    return BlueFin::GlPeEphemerisMgr::GetEph(a1, a2, a3);
  }
}

double BlueFin::GlPeGnssTime::GetNic(BlueFin::GlPeGnssTime *this, BlueFin::GlNicTime *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  if (*(this + 2) == 5)
  {
    return *(this + 3);
  }

  v5 = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    v19 = "m_potConversionTable != nullptr";
    DeviceFaultNotify("glpe_timemgr.cpp", 499, "GetNic", "m_potConversionTable != nullptr");
    v20 = "glpe_timemgr.cpp";
    v21 = 499;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
  }

  v6 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 40);
  v7 = fabs(v6);
  v8 = v7 - trunc(v7);
  v9 = v8 * 4294967300.0 + 0.5;
  v10 = v9;
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
    goto LABEL_30;
  }

  v12 = v7;
  if (v6 >= 0.0)
  {
    v2 += v10;
    v13 = v3 + v12 + HIDWORD(v2);
    goto LABEL_26;
  }

  v14 = v3 - v12;
  if (v3 > v12 || v3 == v12 && v2 >= v10)
  {
    v15 = v2 >= v10;
    LODWORD(v2) = v2 - v10;
    v16 = !v15;
    v13 = v14 - v16;
    goto LABEL_26;
  }

  if (v12 - v3 != v2 > v10 || v10 != v2)
  {
    v19 = "!tDelta.isNegative()";
    DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
    v20 = "glpe_datetime.h";
    v21 = 425;
    goto LABEL_30;
  }

  v13 = 0;
  LODWORD(v2) = 0;
LABEL_26:
  *(a2 + 2) = v2;
  *(a2 + 3) = v13;
  v18 = *(this + 3);
  result = 4294967300.0;
  if (v18 != 4294967300.0)
  {
    return v18 + *(v5 + 68);
  }

  return result;
}

unsigned int *BlueFin::GlTimePoint::resolveAmbiguity(unsigned int *result, unsigned int *a2, unsigned int a3)
{
  v3 = *a2;
  if (!*a2 || (v4 = *result) == 0)
  {
    v5 = result[1] % a3 + a2[1] / a3 * a3;
    result[1] = v5;
    v12 = a2[1] - v5;
    if (v12 <= (a3 >> 1))
    {
      if (!(((v12 + (a3 >> 1)) < 0) ^ __OFADD__(v12, a3 >> 1) | (v12 + (a3 >> 1) == 0)))
      {
        return result;
      }

      goto LABEL_39;
    }

    goto LABEL_16;
  }

  v5 = result[1] % a3 + a2[1] / a3 * a3;
  result[1] = v5;
  v6 = a2[1];
  if (v6 > v5 || v3 >= v4 && v6 == v5)
  {
    v7 = v3 >= v4;
    v8 = v3 - v4;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 - v5 + v6;
    v11 = a3 >> 1;
  }

  else
  {
    v7 = v4 >= v3;
    v8 = v4 - v3;
    v14 = !v7;
    v10 = v5 - v14 - v6;
    v11 = a3 >> 1;
    if (v10 | v8)
    {
      v15 = 1;
      goto LABEL_24;
    }
  }

  if (v11 < v10)
  {
    goto LABEL_16;
  }

  if (v11 == v10)
  {
    if (v8)
    {
      goto LABEL_16;
    }

    v15 = 0;
    goto LABEL_25;
  }

  v15 = 0;
LABEL_24:
  if (v11 == v10)
  {
LABEL_25:
    v10 = v11;
    if ((v15 & 1) != 0 || v8)
    {
      goto LABEL_27;
    }

LABEL_16:
    v13 = v5 + a3;
LABEL_40:
    result[1] = v13;
    return result;
  }

LABEL_27:
  if ((((a3 < 2) ^ v15) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (v10 < v11)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_35:
    if (v10 != v11)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (v10 != v11)
  {
LABEL_34:
    if ((v15 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    v13 = v5 - a3;
    goto LABEL_40;
  }

  if (v15)
  {
    goto LABEL_39;
  }

LABEL_36:
  v16 = v8 == 0;
  v17 = (a3 < 2) ^ v15 ^ 1;
  if (!v16)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_39;
  }

  return result;
}

double BlueFin::GlPeGnssTime::GetGlns(BlueFin::GlPeGnssTime *this, BlueFin::GlGlnsTime *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  if (*(this + 2) == 1)
  {
    return *(this + 3);
  }

  v5 = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    v19 = "m_potConversionTable != nullptr";
    DeviceFaultNotify("glpe_timemgr.cpp", 436, "GetGlns", "m_potConversionTable != nullptr");
    v20 = "glpe_timemgr.cpp";
    v21 = 436;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v20, v21, v19);
  }

  v6 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 8);
  v7 = fabs(v6);
  v8 = v7 - trunc(v7);
  v9 = v8 * 4294967300.0 + 0.5;
  v10 = v9;
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
    goto LABEL_30;
  }

  v12 = v7;
  if (v6 >= 0.0)
  {
    v2 += v10;
    v13 = v3 + v12 + HIDWORD(v2);
    goto LABEL_26;
  }

  v14 = v3 - v12;
  if (v3 > v12 || v3 == v12 && v2 >= v10)
  {
    v15 = v2 >= v10;
    LODWORD(v2) = v2 - v10;
    v16 = !v15;
    v13 = v14 - v16;
    goto LABEL_26;
  }

  if (v12 - v3 != v2 > v10 || v10 != v2)
  {
    v19 = "!tDelta.isNegative()";
    DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
    v20 = "glpe_datetime.h";
    v21 = 425;
    goto LABEL_30;
  }

  v13 = 0;
  LODWORD(v2) = 0;
LABEL_26:
  *(a2 + 2) = v2;
  *(a2 + 3) = v13;
  v18 = *(this + 3);
  result = 4294967300.0;
  if (v18 != 4294967300.0)
  {
    return v18 + *(v5 + 52);
  }

  return result;
}

uint64_t BlueFin::GlGlnsTime::ctFct2fctS(BlueFin::GlGlnsTime *this)
{
  v1 = *(this + 3);
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v1)
  {
    v2 = &BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v2 = &BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  return v1 - *v2 - 504478800;
}

double BlueFin::GlPeTimeManager::GetUtcTime(BlueFin::GlPeTimeManager *this, uint64_t a2)
{
  if (*(a2 + 4804) == -7200001)
  {
    BlueFin::GlPeTimeManager::GetTime(a2, 1, v4);
    *this = &unk_2A1F11310;
    *(this + 1) = 0;
    BlueFin::GlUtcTime::breakdownFct(this);
    return BlueFin::GlPeGnssTime::GetUtc(v4, this);
  }

  else
  {
    result = *(a2 + 4848);
    *(this + 1) = result;
    *this = &unk_2A1F11310;
    *(this + 4) = *(a2 + 4856);
    *(this + 5) = *(a2 + 4860);
    *(this + 24) = *(a2 + 4864);
  }

  return result;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetEphDataSrc(BlueFin::GlPeLtoEphemeris *this)
{
  if ((*(this + 8) & 0xF) == 2)
  {
    return 2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BlueFin::GlArray::Get(BlueFin::GlArray *this, int a2)
{
  v2 = a2;
  BlueFin::GlArray::EnsureValidHandle(this, a2);
  v4 = (v2 - *(this + 36));
  v5 = *(*(this + 2) + v4);
  if (v5 == 255)
  {
    return 0;
  }

  BlueFin::GlArray::EnsureValidSlot(this, v5);
  return *(this + 1) + *(this + 8) * *(*(this + 2) + v4);
}

uint64_t BlueFin::GlArray::EnsureValidSlot(uint64_t this, unsigned int a2)
{
  if (*(this + 38) <= a2)
  {
    DeviceFaultNotify("glutl_array.cpp", 140, "EnsureValidSlot", "slot < m_ucNumSlots");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_array.cpp", 140, "slot < m_ucNumSlots");
  }

  return this;
}

uint64_t BlueFin::GlSignalIdArray::Get(BlueFin::GlSignalIdArray *this, const BlueFin::GlSignalId *a2)
{
  if (*(a2 + 4) - *(this + 590) >= *(this + 591))
  {
    v4 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v5 = 313;
    goto LABEL_8;
  }

  v2 = *(*(this + 145) + 2 * (*(a2 + 4) - *(this + 590)));
  if (v2 == 0xFFFF)
  {
    return 0;
  }

  if (*(this + 592) <= v2)
  {
    v4 = "slot < m_usNumSlots";
    DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
    v5 = 319;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v5, v4);
  }

  return *(this + 144) + *(this + 294) * v2;
}

uint64_t BlueFin::GlPeEphemeris::GetEphDataSrc(BlueFin::GlPeEphemeris *this)
{
  if ((*(this + 8) & 0xF) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(*this + 192))(this, 1);
  if (result >= 4)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 207, "GetEphDataSrc", "ulSrc < NUM_EPH_DATA_SRC");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 207, "ulSrc < NUM_EPH_DATA_SRC");
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetCmpUnsignedField(BlueFin::GlPeGpsEphemerisBase *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 0:
      result = *v2 >> 26;
      break;
    case 1:
      result = (v2[14] >> 10) & 3;
      break;
    case 2:
      result = (v2[17] >> 12) & 1;
      break;
    case 3:
      result = (*v2 >> 14) & 0x3F;
      break;
    case 4:
      result = (*v2 >> 20) & 0xF;
      break;
    case 5:
      result = (*v2 >> 4) & 0x3FF;
      break;
    case 7:
      result = (v2[1] >> 12);
      break;
    case 15:
      result = (__PAIR64__(v2[5], v2[6]) >> 14);
      break;
    case 17:
      result = (__PAIR64__(v2[7], v2[8]) >> 30);
      break;
    case 18:
      result = (v2[8] >> 14);
      break;
    case 27:
      result = (v2[14] >> 22) & 1;
      break;
    case 28:
      result = (v2[14] >> 12) & 0x3FF;
      break;
    case 29:
      result = (*v2 >> 4);
      break;
    case 30:
      result = (v2[8] >> 13) & 1;
      break;
    case 31:
      result = (v2[17] >> 11) & 1;
      break;
    default:
      GlCustomLog(11, "GlPeGpsEphemerisBase::GetCmpUnsignedField: Illegal field index:%d\n", a2);
      DeviceFaultNotify("glpe_ephmgr.cpp", 2891, "GetCmpUnsignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 2891, "0");
  }

  return result;
}

BOOL BlueFin::GlPeGpsEphemerisBase::isHealthy(BlueFin::GlPeGpsEphemerisBase *this)
{
  v2 = *(this + 8);
  if ((v2 & 0xF) == 2)
  {
    v3 = 63;
  }

  else
  {
    v4 = v2 >> 4;
    if (v2 < 0x50 && ((0x1Du >> v4) & 1) != 0)
    {
      v3 = dword_298A3BD44[v4];
    }

    else if (v4 == 5)
    {
      v3 = 31;
    }

    else
    {
      v3 = 255;
    }
  }

  return ((*(*this + 192))(this, 3) & v3) == 0 && (*(*this + 192))(this, 4) < 0xF;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetCmpUnsignedField(BlueFin::GlPeBdsEphemeris *this, int a2)
{
  v3 = *(this + 2);
  if (a2 > 26)
  {
    switch(a2)
    {
      case 27:
        return (*(v3 + 68) >> 13) & 1;
      case 32:
        return (*v3 >> 17) & 1;
      case 33:
        return HIWORD(*v3) & 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return *(v3 + 3);
      case 1:
        return (*v3 >> 18) & 0x3F;
      case 2:
        return (*(v3 + 68) >> 14) & 1;
    }
  }

  if (!BlueFin::GlPeBdsEphemeris::isD2Format(this))
  {
    if (a2 <= 14)
    {
      if (a2 > 4)
      {
        if (a2 == 5)
        {
          return (*(v3 + 16) >> 18) & 0x1F;
        }

        if (a2 == 7)
        {
          HIDWORD(v8) = *(v3 + 4);
          LODWORD(v8) = *(v3 + 8);
          v6 = v8 >> 16;
          return v6 >> 15;
        }
      }

      else
      {
        if (a2 == 3)
        {
          return (*(v3 + 16) >> 23) & 1;
        }

        if (a2 == 4)
        {
          HIDWORD(v5) = *(v3 + 8);
          LODWORD(v5) = *(v3 + 12);
          return (v5 >> 1) >> 28;
        }
      }
    }

    else if (a2 <= 17)
    {
      if (a2 == 15)
      {
        v9 = *(v3 + 20);
        v10 = *(v3 + 24);
        return (__PAIR64__(v9, v10) >> 16);
      }

      if (a2 == 17)
      {
        v9 = *(v3 + 16);
        v10 = *(v3 + 20);
        return (__PAIR64__(v9, v10) >> 16);
      }
    }

    else
    {
      switch(a2)
      {
        case 18:
          return (*(v3 + 40) >> 7) & 0x18000 | (*(v3 + 60) >> 1);
        case 28:
          return *(v3 + 14) & 0x1FFF;
        case 29:
          return *(v3 + 10) & 0x1F;
      }
    }

    DeviceFaultNotify("glpe_bdephmgr.cpp", 580, "GetCmpUnsignedField", "0");
    v12 = 580;
LABEL_61:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", v12, "0");
  }

  if (a2 <= 14)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        return (*v3 >> 15) & 1;
      }

      if (a2 == 4)
      {
        return (*v3 >> 6) & 0xF;
      }

      goto LABEL_59;
    }

    if (a2 == 5)
    {
      return (*v3 >> 10) & 0x1F;
    }

    if (a2 != 7)
    {
LABEL_59:
      DeviceFaultNotify("glpe_bdephmgr.cpp", 563, "GetCmpUnsignedField", "0");
      v12 = 563;
      goto LABEL_61;
    }

    HIDWORD(v7) = *(v3 + 4);
    LODWORD(v7) = *(v3 + 8);
    v6 = v7 >> 3;
    return v6 >> 15;
  }

  if (a2 <= 17)
  {
    if (a2 == 15)
    {
      HIDWORD(v11) = *(v3 + 28);
      LODWORD(v11) = *(v3 + 32);
      return (*(v3 + 24) << 6) & 0xFFC00000 | ((v11 >> 16) >> 10);
    }

    if (a2 == 17)
    {
      v9 = *(v3 + 32);
      v10 = *(v3 + 36);
      return (__PAIR64__(v9, v10) >> 16);
    }

    goto LABEL_59;
  }

  if (a2 == 18)
  {
    return (*(v3 + 40) >> 5) & 0x1FFFF;
  }

  if (a2 != 28)
  {
    if (a2 == 29)
    {
      return (*(v3 + 16) >> 14) & 0x1F;
    }

    goto LABEL_59;
  }

  return *(v3 + 4) >> 3;
}

BOOL BlueFin::GlPeBdsEphemeris::isD2Format(BlueFin::GlPeBdsEphemeris *this)
{
  v2 = (*(*this + 192))(this, 32);
  v3 = *(*this + 192);
  if (v2 == 1)
  {
    return v3(this, 33) == 0;
  }

  v5 = v3(this, 0);
  return v5 - 1 < 5 || v5 - 59 < 5;
}

uint64_t BlueFin::GlPeGalEphemeris::GetCmpUnsignedField(BlueFin::GlPeGalEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 0:
      result = *v2 >> 26;
      break;
    case 1:
      result = (*(v2 + 15) >> 27) & 3;
      break;
    case 2:
      result = (*(v2 + 15) >> 26) & 1;
      break;
    case 3:
      result = *v2 >> 10;
      break;
    case 4:
      result = v2[2];
      break;
    case 5:
      result = *v2 & 0x3FF;
      break;
    case 7:
      result = (*(v2 + 1) >> 8) & 0x3FFF;
      break;
    case 15:
      result = (__PAIR64__(*(v2 + 6), *(v2 + 7)) >> 30);
      break;
    case 17:
      result = (__PAIR64__(*(v2 + 7), *(v2 + 8)) >> 14);
      break;
    case 18:
      result = *(v2 + 8) & 0x3FFF;
      break;
    case 27:
      result = (*(v2 + 14) >> 9) & 1;
      break;
    case 28:
      HIDWORD(v4) = *(v2 + 14);
      LODWORD(v4) = *(v2 + 15);
      result = (v4 >> 9) >> 20;
      break;
    case 29:
      result = *v2;
      break;
    default:
      DeviceFaultNotify("glpe_galephmgr.cpp", 560, "GetCmpUnsignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 560, "0");
  }

  return result;
}

uint64_t BlueFin::GlPeSvHealthData::GetState(uint64_t a1, unsigned int *a2)
{
  Index = BlueFin::GlPeSvHealthData::getIndex(a1, a2);
  if (Index < 0)
  {
    DeviceFaultNotify("glpe_svhealthmgr.cpp", 168, "GetState", "iIndex >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 168, "iIndex >= 0");
  }

  v5[0] = 0;
  v5[1] = a1 + 8;
  v6 = 1;
  v9 = 0;
  v8 = 0;
  v7 = vdup_n_s32(0xB80u);
  v10 = 0;
  BlueFin::GlBitBuffer::Position(v5, 3 * Index);
  return BlueFin::GlBitBuffer::GetU(v5, 3u);
}

uint64_t BlueFin::GlPeSvHealthData::getIndex(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 4);
  v3 = *a2;
  v4 = v3 > 6 || v2 == 0;
  if (v4 || v2 > ((0xE243F0A181320uLL >> (8 * v3)) & 0x3F))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v2 + BlueFin::GlPeSvHealthData::s_auiGnssBaseIndex[BlueFin::GlImplGnss::m_aucEnabledGnssTable[v3]] - 1);
  }
}

uint64_t BlueFin::GlBitBuffer::GetU(BlueFin::GlBitBuffer *this, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    v16 = "ucBits <= 32";
    DeviceFaultNotify("glutl_bitbuffer.cpp", 330, "GetU", "ucBits <= 32");
    v17 = 330;
    goto LABEL_18;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 9);
  v4 = *(this + 6);
  v3 = *(this + 7);
  *(this + 7) = v3 + a2;
  if (v3 + a2 > v4)
  {
    v16 = "m_ulPosition <= m_ulLimit";
    DeviceFaultNotify("glutl_bitbuffer.cpp", 337, "GetU", "m_ulPosition <= m_ulLimit");
    v17 = 337;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", v17, v16);
  }

  v5 = v3 + v2;
  v6 = *(this + 5);
  if (v6 <= v5)
  {
    v7 = *(this + 5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v5 - v7;
  v9 = (v5 - v7) >> 5;
  v10 = 32 - (v8 & 0x1F);
  v11 = 8;
  if (!*(this + 16))
  {
    v11 = 0;
  }

  v12 = *(this + v11);
  v13 = *(v12 + 4 * v9) << v8;
  if (v10 < a2)
  {
    if (v9 + 1 == v6 >> 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9 + 1;
    }

    v13 |= *(v12 + 4 * v14) >> v10;
  }

  return v13 >> -a2;
}

uint64_t BlueFin::GlPeEphemerisMgr::GetEph(void *a1, _BYTE *a2, int a3)
{
  if (!(*(*a1 + 312))(a1))
  {
    return 0;
  }

  v6 = (*(*a1 + 368))(a1, a2);
  if (a3)
  {
    if (!(*(*a1 + 344))(a1, a2))
    {
      return 0;
    }
  }

  if ((*(a1[48] + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)))
  {
    v7 = (*(*a1 + 368))(a1, a2);
    if ((*(*v7 + 184))(v7))
    {
      BlueFin::GlSetBase::Remove((a1 + 48), *a2);
    }
  }

  return v6;
}

double BlueFin::GlPeGnssTime::GetUtc(BlueFin::GlPeGnssTime *this, BlueFin::GlUtcTime *a2)
{
  v3 = *(this + 1);
  v4 = BlueFin::GlWeekTowTime::m_ucNextLs;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v5 = v3 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v6;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v3)
  {
    v4 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  v8 = v3 - v7 - v4 + 432000;
  v9 = v8 % 0x7861F80;
  v10 = v8 % 0x7861F80 / 0x15180;
  if (v8 % 0x7861F80 > 0x5A4EBFF)
  {
    v11 = 3;
  }

  else if (v9 <= 0x3C3B87F)
  {
    v11 = v9 > 0x1E284FF;
  }

  else
  {
    v11 = 2;
  }

  v12 = *this;
  v13 = v11;
  v14 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v11];
  if (v10 >= v14[9])
  {
    v15 = 9;
  }

  else if (v10 >= v14[6])
  {
    v15 = 6;
  }

  else if (v10 >= v14[3])
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v13 | (4 * (v8 / 0x7861F80))) + 1980;
  v17 = v10 - *v14 + 1;
  if (v10 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v13 + v15 + 2])
  {
    v18 = 3;
  }

  else if (v10 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v13 + v15 + 1])
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = v18 + v15;
  v20 = v10 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v13 + v19 - 1] + 1;
  v21 = (1193047 * (v8 % 0x15180)) >> 32;
  v22 = (2185 * (v8 % 0xE10)) >> 17;
  v23 = v8 % 0x3C;
  v24 = (v7 & 1) == 0;
  if (v7)
  {
    v25 = 23;
  }

  else
  {
    v25 = v21;
  }

  if (v24)
  {
    v26 = v22;
  }

  else
  {
    v26 = 59;
  }

  if (!v24)
  {
    LOBYTE(v23) = 60;
  }

  *(a2 + 2) = v12;
  *(a2 + 3) = v3;
  *(a2 + 8) = v16;
  *(a2 + 9) = v17;
  *(a2 + 20) = v19;
  *(a2 + 21) = v20;
  *(a2 + 22) = v25;
  *(a2 + 23) = v26;
  *(a2 + 24) = v23;
  if (*(this + 2) == 2)
  {
    return *(this + 3);
  }

  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    v41 = "m_potConversionTable != nullptr";
    DeviceFaultNotify("glpe_timemgr.cpp", 520, "GetUtc", "m_potConversionTable != nullptr");
    v42 = "glpe_timemgr.cpp";
    v43 = 520;
LABEL_60:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v42, v43, v41);
  }

  v28 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 16);
  v29 = fabs(v28);
  v30 = v29 - trunc(v29);
  v31 = v30 * 4294967300.0 + 0.5;
  v32 = v31;
  if (v31 >= 4294967300.0)
  {
    v32 = -1;
  }

  if (v30 < 0.0 || v30 >= 1.0)
  {
    v41 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v42 = "glpe_timepoint.h";
    v43 = 173;
    goto LABEL_60;
  }

  v34 = v29;
  if (v28 >= 0.0)
  {
    v35 = v3 + v34;
    v36 = v12 + v32;
    v37 = v35 + HIDWORD(v36);
    goto LABEL_56;
  }

  if (v3 > v34 || v3 == v34 && v12 >= v32)
  {
    v38 = __PAIR64__(v3 - v34, v12) - v32;
    v37 = HIDWORD(v38);
    LODWORD(v36) = v38;
    goto LABEL_56;
  }

  if (v34 - v3 != v12 > v32 || v12 != v32)
  {
    v41 = "!tDelta.isNegative()";
    DeviceFaultNotify("glpe_datetime.h", 1078, "operator+=", "!tDelta.isNegative()");
    v42 = "glpe_datetime.h";
    v43 = 1078;
    goto LABEL_60;
  }

  v37 = 0;
  LODWORD(v36) = 0;
LABEL_56:
  *(a2 + 2) = v36;
  *(a2 + 3) = v37;
  BlueFin::GlUtcTime::breakdownFct(a2);
  v40 = *(this + 3);
  result = 4294967300.0;
  if (v40 != 4294967300.0)
  {
    return v40 + *(BlueFin::GlPeGnssTime::m_potConversionTable + 56);
  }

  return result;
}

uint64_t BlueFin::GlSetBase::OperatorBinaryOr(uint64_t this, int **a2, int **a3)
{
  v3 = *(this + 8);
  v4 = *(a3 + 8);
  if (v3 != v4 || *(a2 + 8) != v4)
  {
    DeviceFaultNotify("glutl_set.cpp", 509, "OperatorBinaryOr", "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 509, "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v6 = *this;
    v7 = *a3;
    v8 = *a2;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v7++;
      *v8++ = v11 | v9;
      --v3;
    }

    while (v3);
  }

  return this;
}

unsigned int *BlueFin::GlPeTimeManager::GetTime@<X0>(unsigned int *this@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 && this[1201] == a2)
  {
    *a4 = *(this + 601);
    *(a4 + 8) = this[1204];
    *(a4 + 16) = *(this + 1206);
  }

  else
  {
    v4 = a2;
    if (a2 <= 0xFF9222FE)
    {
      v4 = a2;
    }

    return BlueFin::GlPeTimeManager::GetTime(this, v4, a3, a4);
  }

  return this;
}

BlueFin::GlPeGloFcnOsnMgr *BlueFin::GlPeSvIdConverter::Gnss2SvId@<X0>(BlueFin::GlPeGloFcnOsnMgr *result@<X0>, unsigned int *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  if (v4 != 2 || (v5 = result, (result = *result) == 0))
  {
    v8 = *(a2 + 4);
    if (v8 <= BlueFin::GlSvId::s_aucGnss2numSvId[v4])
    {
      v7 = v8 + BlueFin::GlSvId::s_aucGnss2minSvId[v4] - 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 4);
  result = BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(result, v6);
  if (result < -7 || (result = BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(*v5, v6), result > 6))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_9;
  }

  result = BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(*v5, v6);
  v7 = result + 59;
LABEL_9:
  *a3 = v7;
  return result;
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(BlueFin::GlPeGloFcnOsnMgr *this, unsigned int a2)
{
  if ((a2 - 25) <= 0xE7u)
  {
    DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 628, "OSN2FCN", "IS_GLONASS_OSN(ucOsn)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 628, "IS_GLONASS_OSN(ucOsn)");
  }

  v4 = a2 - 1;
  v5 = this + 16 * v4 + 716;
  if (*(this + 1249) == 1)
  {
    return *(this + 16 * v4 + 728);
  }

  v6 = *(*(this + 2) + 2568);
  if (*v5 == v6)
  {
    if (!*(this + 4 * v4 + 181))
    {
      return -8;
    }

    return *(this + 16 * v4 + 728);
  }

  *v5 = v6;
  v8 = *(this + 4 * v4 + 181);
  if (v8)
  {
    if ((v6 - *(this + 4 * v4 + 180)) < BlueFin::GlPeGloFcnOsnMgr::m_aulMaxFcnToOsnMs[v8])
    {
      return *(this + 16 * v4 + 728);
    }

    *(this + 4 * v4 + 181) = 0;
  }

  if (*(this + 1224) == 1 && *(this + v4 + 1225) != 248)
  {
    *(this + 4 * v4 + 181) = 2;
    v7 = *(this + v4 + 1225);
LABEL_35:
    v5[12] = v7;
    *(v5 + 1) = v6;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(this + 53);
      BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::UpdateCache((v12 + v10), v6, 0);
      if (*(v12 + v10) == 1 && *(v12 + v10 + 2) == a2)
      {
        break;
      }

      ++v11;
      v10 += 28;
      if (v11 == 14)
      {
        v23 = -8;
        v22 = a2;
        v13 = (*(**(this + 1) + 328))(*(this + 1), &v22);
        v14 = **(this + 1);
        if (v13)
        {
          v15 = (*(v14 + 112))();
          if (v15 && BlueFin::GlPeLtoEphemeris::GetFcn(v15, &v23))
          {
            *(v5 + 2) = 3;
            v7 = v23;
            goto LABEL_35;
          }

LABEL_30:
          FcnFromGlonassAlm = BlueFin::GlPeAlmMgr::GetFcnFromGlonassAlm((*this + 34112), a2);
          v7 = FcnFromGlonassAlm;
          if (FcnFromGlonassAlm == -8)
          {
            if (*(*this + 120012) != 1)
            {
              return -8;
            }

            v7 = BlueFin::GlPeGloFcnOsnMgr::m_acSimulationOsn2Fcn[v4];
          }

          v21 = 3;
        }

        else
        {
          if (!(*(v14 + 320))())
          {
            goto LABEL_30;
          }

          v17 = (*(**(this + 1) + 112))(*(this + 1), &v22, 0);
          if (!v17)
          {
            goto LABEL_30;
          }

          v18 = v17;
          if ((v17[8] & 0xF) != 1)
          {
            goto LABEL_30;
          }

          v19 = (*(*v17 + 208))(v17, 4);
          if (v19 == 248)
          {
            goto LABEL_30;
          }

          v7 = v19;
          if ((*(*v18 + 184))(v18))
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }
        }

        *(v5 + 2) = v21;
        goto LABEL_35;
      }
    }

    if (*(v12 + v10 + 1))
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v7 = v11 - 7;
    v5[12] = v11 - 7;
    *(v5 + 1) = *(v12 + v10 + 8);
    *(v5 + 2) = v16;
  }

  return v7;
}

double BlueFin::GlPeGnssTime::GetUncUs(uint64_t a1, int a2)
{
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 382, "GetUncUs", "m_potConversionTable != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 382, "m_potConversionTable != nullptr");
  }

  v2 = 0.0;
  if (*(a1 + 8) != a2)
  {
    v2 = *(BlueFin::GlPeGnssTime::m_potConversionTable + 4 * a2 + 48);
  }

  return *(a1 + 24) + v2;
}

unint64_t BlueFin::GlPeSvHealthHelper::IsBadByRti(uint64_t a1, int *a2)
{
  if (*(*a1 + 40))(a1) == 1 || (BlueFin::GlGnssSet::Has(a1 + 2304, a2))
  {
    return 1;
  }

  return BlueFin::GlGnssSet::Has(a1 + 2496, a2);
}

uint64_t BlueFin::GlPeKF::GetPosConfidence(BlueFin::GlPeKF *this)
{
  v2 = this + 61460;
  v14 = 0;
  v3 = this + 57165;
  v13 = 0;
  BlueFin::GlPeNavGnssMeasMgr::CountNewValidGnssMeas(this + 14560, this + 61460, &v14 + 1, &v14, &v13, 1);
  v4 = *v2;
  v5 = v2[5] + v4;
  if (*(this + 15232) <= 1u)
  {
    v6 = *(this + 1108);
  }

  else
  {
    v5 += v2[3];
    v6 = *(this + 1107) - 1;
  }

  v7 = (v5 - v6);
  if (v7 <= 1 && (v3[1] & 1) != 0)
  {
    return 0;
  }

  LODWORD(result) = (*v3 != 1 || (v9 = *(v3 + 123)) == 0 || *(v9 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v9 + 3040), *(v9 + 3040))) >= 160000.0 || ((v10 = *(v9 + 3072), v10 <= 3) ? (v11 = v10 == 1) : (v11 = 1), v11)) && *(this + 193) == *(this + 192) && BlueFin::GlPeKF::IsGood4Nav(this);
  if (v7 < 2)
  {
    if (v7 >= 0)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  else
  {
    v12 = v7 < 4 || v4 < 1;
    if (v12 || *(this + 1110) != 1 || (SHIBYTE(v14) / v4) >= 0.15)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::CountNewValidGnssMeas(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, int a6)
{
  *(a2 + 5) = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v10 = *(a1 + 40);
  v11 = 19;
  BlueFin::GlSetBase::GlSetBase(&v44, v46, 0x13u, (*(a1 + 8) + 184));
  v12 = v43;
  v41 = v43;
  v42 = 19;
  memset(v43, 0, sizeof(v43));
  v36 = v45;
  memcpy(v40, v44, 4 * v45);
  v38 = 0;
  v37 = 0;
  v39 = v40[0];
  BlueFin::GlSetIterator::operator++(&v36);
  if (v37 != v36)
  {
    do
    {
      v13 = v38;
      if (v38 >= 0x23FuLL)
      {
LABEL_53:
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      if (!a6 || BlueFin::GlPeTimeManager::GetSystemConversionUncUs(*(a1 + 32), BlueFin::GlSvId::s_aucSvId2gnss[*(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v38)]) <= 0.01) && ((*(*(*(a1 + 8) + 8) + 4 * (v13 >> 5)) >> (v13 & 0x1F)))
      {
        *&v41[4 * (v13 >> 5)] |= 1 << (v13 & 0x1F);
      }

      BlueFin::GlSetIterator::operator++(&v36);
    }

    while (v37 != v36);
    v11 = v42;
    v12 = v41;
  }

  v36 = v11;
  v14 = 4 * v11;
  memcpy(v40, v12, v14);
  v38 = 0;
  v37 = 0;
  v39 = v40[0];
  BlueFin::GlSetIterator::operator++(&v36);
  if (v37 != v36)
  {
    do
    {
      if (v38 >= 0x23FuLL)
      {
        goto LABEL_53;
      }

      v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v38;
      v16 = *v15;
      LODWORD(v15) = v15[1];
      v33[0] = v16;
      v34 = v15;
      v35 = v38;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), v33, 0);
      if (BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas))
      {
        if ((*(PeMeas + 96) & 8) == 0)
        {
          AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v10 + 32, v33);
          if (AidBySvId)
          {
            if (*(AidBySvId + 37) <= 25)
            {
              MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), v33, 0, 0);
              v20 = (*(MeMeas + 5) - 1) < 2;
              if (*(MeMeas + 29) < 35.0)
              {
                ++*a5;
              }
            }
          }
        }
      }

      BlueFin::GlSetIterator::operator++(&v36);
    }

    while (v37 != v36);
    LOBYTE(v11) = v42;
    v12 = v41;
    v14 = 4 * v42;
  }

  v36 = v11;
  memcpy(v40, v12, v14);
  v38 = 0;
  v37 = 0;
  v39 = v40[0];
  result = BlueFin::GlSetIterator::operator++(&v36);
  if (v37 != v36)
  {
    while (1)
    {
      if (v38 >= 0x23FuLL)
      {
        goto LABEL_53;
      }

      v22 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v38;
      v23 = *v22;
      LODWORD(v22) = v22[1];
      v33[0] = v23;
      v34 = v22;
      v35 = v38;
      v24 = BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), v33, 0);
      if (BlueFin::stPeSigMeasKF::IsPRValid(v24))
      {
        if ((*(v24 + 96) & 8) == 0)
        {
          break;
        }
      }

LABEL_42:
      if (BlueFin::stPeSigMeasKF::IsRRValid(v24) && (*(v24 + 96) & 0x40) == 0 && (!a6 || BlueFin::stPeSigMeasKF::IsRRValidForNav(v24)))
      {
        ++*(a2 + 1);
      }

      result = BlueFin::GlSetIterator::operator++(&v36);
      if (v37 == v36)
      {
        return result;
      }
    }

    v25 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), v33, 0, 0);
    if (a6)
    {
      if (!BlueFin::stPeSigMeasKF::IsPRValidForNav(v24))
      {
        goto LABEL_36;
      }

      ++*a2;
      v26 = *(v25 + 5);
      if (v26 >= 3)
      {
        ++*a3;
        v26 = *(v25 + 5);
        if (v26 >= 4)
        {
          ++*a4;
          v26 = *(v25 + 5);
        }
      }

      v27 = *(v24 + 24);
      if (v26 > 3 || v26 == 0)
      {
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_36;
        }
      }

      else if ((v27 & 0x80) == 0)
      {
        ++*(a2 + 6);
        v30 = *(v25 + 29);
        if (v30 < *(a2 + 8))
        {
          *(a2 + 8) = v30;
        }

        goto LABEL_36;
      }

      ++*(a2 + 7);
    }

    else
    {
      ++*a2;
    }

LABEL_36:
    v29 = (~*(v25 + 3) & 0x30) != 0 || (*(v25 + 3) & 0xC) == 0;
    if (!v29 && v33[0] - 52 <= 0xFFFFFFEC)
    {
      ++*(a2 + 4);
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t BlueFin::GlPeAlmMgr::GetFcnFromGlonassAlm(BlueFin::GlPeTimeManager **this, unsigned int a2)
{
  if (((*(*(this[54] + 15) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) != 0 && *(this[56] + 644))
  {
    AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, 2u, a2);
    BlueFin::GlPeTimeManager::GetTime(this[56], 1, v13);
    v14 = &off_2A1F0B5F0;
    v15 = 0;
    *v4.i64 = BlueFin::GlPeGnssTime::GetGps(v13, &v14);
    BlueFin::GlPeAlmanac::GetToa(AlmReference, &v14, v13, v4, v5);
    v6 = v15;
    v7 = HIDWORD(v15);
    if (v13[0].n128_u64[1])
    {
      if (v15 < v13[0].n128_u64[1])
      {
        v7 = (__PAIR64__(v13[0].n128_u32[3] - HIDWORD(v15), v13[0].n128_u32[2]) - v15) >> 32;
        v6 = v13[0].n128_u32[2] - v15;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        v7 = (v15 - v13[0].n128_u64[1]) >> 32;
        v6 = v15 - v13[0].n128_u32[2];
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v6 * 2.32830644e-10 + v7;
    if ((v8 & ((v7 | v6) != 0)) != 0)
    {
      v10 = -v10;
    }

    v11 = v10;
    if (v10 < 0)
    {
      v11 = -v11;
    }

    if (v11 <= 0xEFF100)
    {
      return *(AlmReference + 96);
    }

    else
    {
      return -8;
    }
  }

  else
  {
    return -8;
  }
}

unint64_t BlueFin::GlPePwrStateMgr::UpdatePwrState(BlueFin::GlPePwrStateMgr *this, char a2, unsigned int a3, int a4)
{
  if ((*(this + 256) & 1) == 0)
  {
    v6 = *(this + 63);
    if (v6)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1092) >= v6)
      {
        *(this + 256) = 1;
      }
    }
  }

  BlueFin::GlPePwrStateMgr::NewMeas(this, a2, a3, a4);
  v9[0] = 47;
  v9[1] = a2;
  v7 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v10 = 0;
    if (BlueFin::patch_dispatch(result, this, v9, &v10))
    {
      result = v10;
    }

    else
    {
      result = (*(this + 4))(this, v9);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v7;
  return result;
}