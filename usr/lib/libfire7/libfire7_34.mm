uint64_t BlueFin::GlPeMsaMeasData::Deserialize(BlueFin::GlPeMsaMeasData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 16 || *(a2 + 12) - 5 < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 3) = BlueFin::GlSysLogEntry::GetS32(a2);
  if (*(a2 + 12) == 1)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  else
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 631) = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 12) = BlueFin::GlSysLogEntry::GetU16(a2);
  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 7) = U8;
  if (U8)
  {
    v6 = 0;
    do
    {
      v7 = (this + 32 * v6 + 32);
      *v7 = BlueFin::GlSysLogEntry::GetU16(a2);
      v7[1] = BlueFin::GlSysLogEntry::GetU32(a2);
      v7[2] = BlueFin::GlSysLogEntry::GetS32(a2);
      v7[3] = BlueFin::GlSysLogEntry::GetU32(a2);
      v7[4] = BlueFin::GlSysLogEntry::GetU32(a2);
      v7[5] = BlueFin::GlSysLogEntry::GetU8(a2);
      v7[6] = BlueFin::GlSysLogEntry::GetU32(a2);
      v7[7] = BlueFin::GlSysLogEntry::GetU32(a2);
      ++v6;
    }

    while (*(this + 7) > v6);
  }

  v8 = *(a2 + 12);
  if (v8 == 3)
  {
    *(this + 104) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 106) = BlueFin::GlSysLogEntry::GetU8(a2);
    v9 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 434) = v9;
    if (v9)
    {
      v10 = 0;
      v11 = (this + 456);
      do
      {
        *(v11 - 5) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v11 - 4) = BlueFin::GlSysLogEntry::GetU32(a2);
        *v11 = BlueFin::GlSysLogEntry::GetS32(a2);
        *(v11 - 2) = BlueFin::GlSysLogEntry::GetU32(a2);
        *(v11 - 3) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(v11 - 1) = BlueFin::GlSysLogEntry::GetU32(a2);
        ++v10;
        v11 += 6;
      }

      while (v10 < *(this + 434));
    }

    v8 = *(a2 + 12);
  }

  if (v8 == 4)
  {
    *(this + 104) = BlueFin::GlSysLogEntry::GetU32(a2);
    v12 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 420) = v12;
    if (v12)
    {
      v13 = 0;
      v22 = this + 424;
      v23 = this;
      v24 = this + 456;
      do
      {
        v14 = &v22[300 * v13];
        *v14 = BlueFin::GlSysLogEntry::GetU8(a2);
        v15 = BlueFin::GlSysLogEntry::GetU8(a2);
        v14[4] = v15;
        if (v15)
        {
          v16 = 0;
          v17 = v24;
          do
          {
            v18 = BlueFin::GlSysLogEntry::GetU8(a2);
            v19 = &v14[292 * v16 + 8];
            *(v19 + 2) = v18;
            if (v18)
            {
              v20 = 0;
              v21 = v17;
              do
              {
                *(v21 - 5) = BlueFin::GlSysLogEntry::GetU16(a2);
                *(v21 - 4) = BlueFin::GlSysLogEntry::GetU32(a2);
                *v21 = BlueFin::GlSysLogEntry::GetS32(a2);
                *(v21 - 2) = BlueFin::GlSysLogEntry::GetU32(a2);
                *(v21 - 3) = BlueFin::GlSysLogEntry::GetU8(a2);
                *(v21 - 1) = BlueFin::GlSysLogEntry::GetU32(a2);
                ++v20;
                v21 += 6;
              }

              while (v20 < *(v19 + 2));
            }

            ++v16;
            v17 += 73;
          }

          while (v16 < v14[4]);
        }

        ++v13;
        v24 += 300;
      }

      while (v13 < *(v23 + 420));
    }
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 1848, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas.cpp", 1848, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlPeRqHdlrMeas::GlPeRqHdlrMeas(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v9 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  *v9 = &unk_2A1F14718;
  *(v9 + 64) = 0;
  *(v9 + 72) = a6;
  *(a6 + 48) = (*(**(v9 + 8) + 208))(*(v9 + 8));
  BlueFin::GlPeMeasStatus::Start(*(a1 + 72), a3);
  BlueFin::GlArray::Clear(*(a1 + 72) + 616);
  return a1;
}

void BlueFin::GlPeRqHdlrMeas::~GlPeRqHdlrMeas(BlueFin::GlPeRqHdlrMeas *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrMeasData::SetDataSubFrmMeas(uint64_t this, BlueFin::GlDataSubFrmMeas *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(this + 8);
  *(this + 7824) = 0;
  *(this + 7840) = 0;
  *(this + 7832) = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v3 = *(a2 + 8);
  if ((v3 - 1) <= 0x1F)
  {
    v4 = 0;
    v5 = 0;
    *(this + 7828) = v3;
    *(this + 7829) = 1;
    *(this + 7824) = 24;
    *(this + 7832) = *(a2 + 9);
    *(this + 7836) = 40;
    v6 = xmmword_298A319D0;
    v7 = a2 + 20;
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = v5 >> 2;
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x28uLL), v6)).u8[0])
      {
        *(v12 + v5) = *&v7[4 * v9] >> (v4 & 0x10 ^ 0x18);
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x28uLL), *&v6)).i32[1])
      {
        *(v12 + v5 + 1) = *&v7[4 * v9] >> (~v4 & 0x10);
      }

      v5 += 2;
      v6 = vaddq_s64(v6, v8);
      v4 += 16;
    }

    while (v5 != 40);
    *(this + 7840) = v12;
    v10 = *(v2 + 88);
    if (v10)
    {
      this = v10(v2, this + 7824, v6);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeRqHdlrMeasData::SetGlonassDataString(uint64_t this, BlueFin::GlGlonassDataString *a2)
{
  v2 = 0;
  v3 = 0;
  v12[2] = *MEMORY[0x29EDCA608];
  v4 = *(this + 8);
  *(this + 7824) = 0;
  *(this + 7840) = 0;
  *(this + 7832) = 0;
  memset(v12, 0, 11);
  *(this + 7824) = 24;
  v6 = *(a2 + 5);
  v5 = a2 + 20;
  *(this + 7828) = *(v5 - 12);
  *(this + 7829) = 5;
  *(this + 7832) = (v6 >> 27) & 0xF;
  *(this + 7836) = 11;
  v7 = xmmword_298A319D0;
  v8 = vdupq_n_s64(2uLL);
  do
  {
    v9 = v3 >> 2;
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v7)).u8[0])
    {
      *(v12 + v3) = *&v5[4 * v9] >> (v2 & 0x10 ^ 0x18);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v7)).i32[1])
    {
      *(v12 + v3 + 1) = *&v5[4 * v9] >> (~v2 & 0x10);
    }

    v3 += 2;
    v7 = vaddq_s64(v7, v8);
    v2 += 16;
  }

  while (v3 != 12);
  *(this + 7840) = v12;
  v10 = *(v4 + 88);
  if (v10)
  {
    this = v10(v4, this + 7824, v7);
  }

  v11 = *MEMORY[0x29EDCA608];
  return this;
}

double BlueFin::GlPeRqHdlrMeasData::SetSIGMeasuement(BlueFin::GlPeRqHdlrMeasData *this, BlueFin::GlPeMsmtMgr *a2)
{
  bzero(this + 64, 0x1E50uLL);
  v42 = *(a2 + 16);
  memcpy(v46, *(a2 + 1), 4 * v42);
  v44 = 0;
  v43 = 0;
  v45 = v46[0];
  BlueFin::GlSetIterator::operator++(&v42);
  if (v43 != v42)
  {
    v5 = this + 72;
    v6 = this + 7848;
    v7 = this + 8600;
    v8 = this + 10104;
    v4 = vdupq_n_s64(0x41B1DE784A000000uLL);
    v37 = v4;
    v38 = vdupq_n_s64(0x41CDCD6500000000uLL);
    do
    {
      if (*(this + 17) > 0x1Fu)
      {
        break;
      }

      if (v44 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v9 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v44;
      v10 = *v9;
      LODWORD(v9) = v9[1];
      v39[0] = v10;
      v40 = v9;
      v41 = v44;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v39, 0, 0);
      v12 = *MeMeas;
      if (v12 < 0x34)
      {
        if (v12 - 1 <= 0x1F)
        {
LABEL_9:
          v13 = *(this + 17);
          v14 = &v5[240 * v13];
          *v14 = 240;
          v14[8] = v12;
          *(v14 + 2) = 0;
          v15 = *(MeMeas + 3);
          *(v14 + 12) = (8 * v15) & 0x20 | (v15 >> 2) & 0xE | (v15 >> 1) & 1;
          v16.f64[0] = *(MeMeas + 8);
          v16.f64[1] = *(MeMeas + 24);
          *(v14 + 2) = vcvtq_s64_f64(vmulq_f64(v16, v38));
          v17 = 56;
          if (!*(MeMeas + 1))
          {
            v17 = 52;
          }

          v18 = *(*(*(this + 7) + 56) + v17);
          if (v18 < 0.0)
          {
            v18 = 0.0;
          }

          *(v14 + 6) = (*(MeMeas + 29) + v18);
          v19.f32[0] = -*(MeMeas + 26);
          v19.i32[1] = *(MeMeas + 27);
          *(v14 + 56) = vmulq_f64(vcvtq_f64_f32(v19), v37);
          if ((v15 & 2) == 0)
          {
            v20 = &v5[240 * v13];
            *(v20 + 8) = 0x41B1DE784A000000;
            *(v20 + 5) = 1000000000;
          }

          *(v14 + 1) = 0x40000;
          v21 = &v5[240 * v13];
          v22 = (v15 >> 4) & 4 | (v15 >> 12) & 1;
          *(v21 + 36) = (v15 >> 4) & 4 | (v15 >> 12) & 1;
          v23 = v21 + 72;
          if ((v15 & 0x100) != 0)
          {
            v24 = *(MeMeas + 12);
            v25 = v10 - 1;
            if (v24 < *&v6[4 * v10 - 4])
            {
              *v23 = v22 | 2;
            }
          }

          else
          {
            *v23 = v22 | 2;
            v24 = *(MeMeas + 12);
            v25 = v10 - 1;
          }

          *&v6[4 * v25] = v24;
          v26 = *(MeMeas + 11);
          v27 = -v26;
          v28 = *&v7[8 * v25];
          v29 = *&v8[8 * v25];
          if (v26 > 131072.0 && v28 > 131072.0)
          {
            v29 = v29 + 524288.0;
          }

          v31 = v26 < -131072.0 && v28 < -131072.0;
          v32 = v29 + -524288.0;
          if (!v31)
          {
            v32 = v29;
          }

          v33 = v27 - v28 + v32;
          *&v7[8 * v25] = v27;
          *&v8[8 * v25] = v33;
          v34 = &v5[240 * v13];
          v35 = *(MeMeas + 25);
          *(v34 + 10) = v33;
          *(v34 + 11) = v35;
          *(v34 + 162) = 0;
          *(v34 + 6) = 0u;
          *(v34 + 7) = 0u;
          *(v34 + 32) = 0;
          *(v34 + 18) = 0;
          *(v34 + 19) = 0;
          *(v34 + 17) = 0;
          v34[160] = 0;
          *(v34 + 21) = 0;
          *(v34 + 22) = 0;
          v34[184] = *(MeMeas + 5) == 4;
          *(v34 + 217) = 0u;
          *(v34 + 12) = 0u;
          *(v34 + 13) = 0u;
          *(this + 17) = v13 + 1;
        }
      }

      else if (v12 < 0x42)
      {
        goto LABEL_9;
      }

      BlueFin::GlSetIterator::operator++(&v42);
    }

    while (v43 != v42);
  }

  *(this + 969) = 72;
  *(this + 7760) = 1;
  v4.i32[0] = *a2;
  *(this + 971) = (v4.u64[0] * 1000000.0);
  result = 0.0;
  *(this + 488) = 0u;
  *(this + 487) = 0u;
  *(this + 486) = 0u;
  return result;
}

void BlueFin::GlPeRqHdlrMeasData::SetFixStatus(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 68);
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = a1 + 72 + 240 * v6;
      if (*(v7 + 8) < 0)
      {
        v21 = "m_oMeasData.aotMeasurements[iLoop].scPrn >= 0";
        DeviceFaultNotify("glpe_reqhdlr_meas_data.cpp", 285, "SetFixStatus", "m_oMeasData.aotMeasurements[iLoop].scPrn >= 0");
        v22 = 285;
        goto LABEL_30;
      }

      v8 = *(v7 + 8);
      if (v8 > 0x20)
      {
        break;
      }

      v10 = *(v7 + 4) | 0x20000;
      *(v7 + 4) = v10;
      if (v8)
      {
        v11 = 0;
        v9 = v8;
LABEL_15:
        if ((*&a2[2 * v11 + 1070] >> (v9 - 1)))
        {
          *(v7 + 232) = 1;
        }
      }

      v12 = *(a2 + 22);
      v13 = a2 + 27;
      if (v12 >= 1)
      {
        while (*(v13 - 5) != v8)
        {
          v13 += 20;
          if (!--v12)
          {
            goto LABEL_22;
          }
        }

        *(v7 + 216) = *v13;
        *(v7 + 224) = 0x3FF0000000000000;
        *(v7 + 200) = *(v13 - 1);
        *(v7 + 208) = 0x3FF0000000000000;
        *(v7 + 4) = v10 | 0x1E;
      }

LABEL_22:
      if (++v6 == v5)
      {
        goto LABEL_23;
      }
    }

    v9 = v8 - 51;
    v10 = *(v7 + 4) | 0x20000;
    *(v7 + 4) = v10;
    if (v8 < 0x4C)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    if (v8 < 0x42)
    {
      v11 = 2;
    }

    if (v8 < 0x34)
    {
      v11 = 1;
    }

    goto LABEL_15;
  }

LABEL_23:
  v14 = *(*(a1 + 56) + 8);
  if (v14[644])
  {
    v24 = &off_2A1F0B5F0;
    v25 = 0;
    BlueFin::GlPeTimeManager::GetTime(v14, *a2, 1, v23);
    Gps = BlueFin::GlPeGnssTime::GetGps(v23, &v24);
    v16 = (v24[4])(&v24) / 0x93A80uLL;
    v17 = (v24[4])(&v24);
    v17.n128_u32[0] = v25;
    *(a1 + 7792) = 0;
    *(a1 + 7800) = Gps * 1000.0;
    v19 = -604800000000000 * v16 - 1000000000 * (v18 % 0x93A80) - (v17.n128_u64[0] * 2.32830644e-10 * 1000000000.0) + 1000000 * *a2;
    *(a1 + 7784) = v19;
    if (v19 >= 1)
    {
      v21 = "m_oMeasData.otClock.sllFullBiasNs <= 0";
      DeviceFaultNotify("glpe_reqhdlr_meas_data.cpp", 342, "SetFixStatus", "m_oMeasData.otClock.sllFullBiasNs <= 0");
      v22 = 342;
LABEL_30:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_meas_data.cpp", v22, v21);
    }

    *(a1 + 7756) = 28;
  }

  v20 = *(v4 + 80);
  if (v20)
  {
    v20(v4, a1 + 64);
  }
}

void BlueFin::GlPeRqHdlrMeasData::~GlPeRqHdlrMeasData(BlueFin::GlPeRqHdlrMeasData *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

void BlueFin::GlPeRqHdlrMeasPeriodic::SetSIGMeasuement(BlueFin::GlPeRqHdlrMeasPeriodic *this, BlueFin::GlPeMsmtMgr *a2)
{
  if (*(this + 20))
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (*(this + 80) != 1)
  {
    v4 = 0;
LABEL_11:
    v12 = *(this + 8) - *(this + 21) + 300;
    v4 |= v12 > (*(**(this + 1) + 184))(*(this + 1));
    goto LABEL_12;
  }

  v5 = *(this + 9);
  v6 = *(this + 1);
  v7 = 1001;
  if (v5 != -1)
  {
    v8 = v6[7];
    v9 = *(this + 8) + v5;
    v10 = v9 >= v8;
    v11 = v9 - v8 + 1000;
    if (v10)
    {
      v7 = v11;
    }

    else
    {
      v7 = 1001;
    }
  }

  v4 = v7 > (*(*v6 + 184))(v6);
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(this + 65) = v4 & 1;
  if (*(this + 80) & 1) != 0 || (v4)
  {
    BlueFin::GlPeRqHdlrMeas::SetSIGMeasuement(this, a2);
    if ((*(this + 64) & 1) != 0 || *(this + 65) == 1)
    {
      *(this + 21) = *(this + 8);
      *(this + 80) = 0;
    }
  }
}

uint64_t BlueFin::GlPeRqHdlrMeasPeriodic::Cleanup(BlueFin::GlPeRqHdlrMeasPeriodic *this)
{
  if ((*(this + 20) & 1) != 0 || *(this + 24) == 1)
  {
    *(this + 19) = 1;
    (*(*this + 272))(this, 0, 0);
    v3 = &unk_2A1F13C98;
    v4 = *(this + 24);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13CB0(&v3);
    }
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrMeasPeriodic::~GlPeRqHdlrMeasPeriodic(BlueFin::GlPeRqHdlrMeasPeriodic *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrMeasSingleShot::Cleanup(BlueFin::GlPeRqHdlrMeasSingleShot *this)
{
  if ((*(this + 64) & 1) != 0 || (*(this + 23) & 1) != 0 || *(this + 20) == 1)
  {
    *(this + 19) = 1;
    v3 = &unk_2A1F13C98;
    v4 = *(this + 24);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13CB0(&v3);
    }
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrMeasSingleShot::~GlPeRqHdlrMeasSingleShot(BlueFin::GlPeRqHdlrMeasSingleShot *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrPlatformTest::Cleanup(BlueFin::GlPeRqHdlrPlatformTest *this)
{
  if ((*(this + 20) & 1) != 0 || (*(this + 19) & 1) != 0 || *(this + 24) == 1)
  {
    *(this + 19) = 1;
    (*(*this + 272))(this, 0, 0);
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

uint64_t BlueFin::GlPeRqHdlrPlatformTest::SetFixStatus(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v9 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v3 = result;
    if ((*(result + 20) & 1) == 0)
    {
      v4 = v2;
      bzero(__dst, 0x1CF8uLL);
      memset(&__dst[927], 248, 24);
      memset(v8, 0, sizeof(v8));
      if (__dst != v4)
      {
        memcpy(__dst, v4, sizeof(__dst));
        memcpy(v8, (v4 + 7440), sizeof(v8));
      }

      result = *(v3 + 8);
      v5 = *(result + 48);
      if (v5)
      {
        result = v5();
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeRqHdlrPlatformTest::~GlPeRqHdlrPlatformTest(BlueFin::GlPeRqHdlrPlatformTest *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::CheckAccyMaskTimeout(BlueFin::GlPeRqHdlrPosPeriodic *this, int a2, int a3, int a4)
{
  if (a2 <= 0)
  {
    v4 = this + 64;
    goto LABEL_5;
  }

  v4 = this + 64;
  if (1000 * a2 - a3 > *(this + 21) + a4)
  {
LABEL_5:
    v5 = *v4;
    return v5 & 1;
  }

  v5 = 1;
  *v4 = 1;
  return v5 & 1;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::GetInternalWarmStandbyPeriodOfReq(BlueFin::GlPeRqHdlrPosPeriodic *this)
{
  if (*(*(*(this + 7) + 56) + 88) == 39 || (*(**(this + 1) + 184))(*(this + 1)) < 0x7531 || !*(this + 168) || (*(this + 8) - (*(this + 7) + *(this + 26))) > 0x7D0)
  {
    return 0;
  }

  v2 = *(**(this + 1) + 184);

  return v2();
}

void BlueFin::GlPeRqHdlrPosPeriodic::~GlPeRqHdlrPosPeriodic(BlueFin::GlPeRqHdlrPosPeriodic *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

_BYTE *BlueFin::GlPeRqHdlrPosSigleShot::GlPeRqHdlrPosSigleShot(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v36 = *MEMORY[0x29EDCA608];
  v6 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(v1, v2, v3, v4, v5);
  *v6 = &unk_2A1F15060;
  *(v6 + 64) = 0;
  *(v6 + 68) = 0x19000000000;
  *(v6 + 76) = 0;
  if (!*(*(v6 + 8) + 22))
  {
    BlueFin::GlPeRqHdlr::ToSlog(v1);
    v1[23] = 1;
    bzero(v10, 0x1CF8uLL);
    memset(&v10[7416], 248, 24);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    inited = BlueFin::GlPeFixStatus::InitFixStatus(v10);
    (*(*v1 + 24))(v1, v10, inited);
    v1[20] = 1;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::SetNmeaSentence(uint64_t a1, int a2, uint64_t a3, char *a4, __int16 a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 20);
  if ((v5 & 1) == 0)
  {
    if (*a3)
    {
      *(a1 + 64) = *(a3 + 4048) != 0;
    }

    if ((*(**(a1 + 8) + 416))(*(a1 + 8)) && (*(a1 + 23) & 1) == 0)
    {
      *(a1 + 64) = 0;
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      *(a1 + 16) = 1;
      BlueFin::GlPeNmeaGen::FormatNmeaRID(**(a1 + 56), __s, 80, v10);
      GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
      v11 = strlen(__s);
      BlueFin::GlPeRqHdlr::OnNmea(a1, __s, v11, v12);
    }

    if (a2 == 8 && *(a1 + 64) == 1)
    {
      v13 = *(a1 + 36);
      if (v13 == -1)
      {
        v15 = *(a1 + 32);
        v19 = 1;
      }

      else
      {
        v14 = *(*(a1 + 8) + 28);
        v15 = *(a1 + 32);
        v16 = v15 + v13;
        v17 = v16 >= v14;
        v18 = v16 - v14;
        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1;
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaFIX(**(a1 + 56), v19, v15 - *(a1 + 28), __s, 80);
      GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
      v20 = strlen(__s);
      BlueFin::GlPeRqHdlr::OnNmea(a1, __s, v20, v21);
    }

    BlueFin::GlPeRqHdlr::OnNmea(a1, a4, a5, v10);
  }

  v22 = *MEMORY[0x29EDCA608];
  return v5 ^ 1u;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::SetFixStatus(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v112 = *MEMORY[0x29EDCA608];
  if ((*(result + 20) & 1) == 0)
  {
    v3 = v2;
    v4 = result;
    bzero(v83, 0x1CF8uLL);
    memset(v86, 248, sizeof(v86));
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    BlueFin::GlPeRqHdlrPosSigleShot::ApplyLocalUpdates(v4, v83, v3);
    v5 = *(v4 + 56);
    v6 = *(v5 + 24);
    v7 = *(*(v5 + 16) + 57388);
    v8 = *(v6 + 120968);
    if (!**v8)
    {
      v41 = *(v8 + 8);
      if (v41 < 2)
      {
        goto LABEL_41;
      }

      v42 = v41 - 1;
      v43 = (*v8 + 4);
      while (!*v43++)
      {
        if (!--v42)
        {
          goto LABEL_41;
        }
      }
    }

    v9 = *(v8 + 24);
    if (!*v9)
    {
      v10 = *(v8 + 32);
      if (v10 < 2)
      {
LABEL_8:
        v14 = *(v8 + 48);
        if (!*v14)
        {
          v15 = *(v8 + 56);
          if (v15 < 2)
          {
LABEL_13:
            v19 = *(v8 + 72);
            if (!*v19)
            {
              v20 = *(v8 + 80);
              if (v20 < 2)
              {
LABEL_18:
                v24 = *(v8 + 96);
                if (!*v24)
                {
                  v25 = *(v8 + 104);
                  if (v25 < 2)
                  {
LABEL_23:
                    v29 = *(v8 + 120);
                    if (!*v29)
                    {
                      v30 = *(v8 + 128);
                      if (v30 < 2)
                      {
LABEL_28:
                        v34 = *(v8 + 144);
                        if (!*v34)
                        {
                          v35 = *(v8 + 152);
                          v36 = v35 - 2;
                          if (v35 < 2)
                          {
                            v39 = 0;
                          }

                          else
                          {
                            v37 = v34 + 1;
                            do
                            {
                              v38 = *v37++;
                              v39 = v38 != 0;
                              if (v38)
                              {
                                v40 = 1;
                              }

                              else
                              {
                                v40 = v36 == 0;
                              }

                              --v36;
                            }

                            while (!v40);
                          }

LABEL_42:
                          if (v7 < 0x2EE1)
                          {
                            v39 = 1;
                          }

                          if (v84)
                          {
                            v45 = !v39;
                          }

                          else
                          {
                            v45 = 1;
                          }

                          if (v45 || (*(v4 + 64) = 1, (v85 & 7) == 4) || (*(**(v4 + 8) + 416))(*(v4 + 8)))
                          {
                            *(v4 + 64) = 0;
                          }

                          else if (*(v4 + 64))
                          {
                            GlCustomLog(13, "\tttff=%u:%02u.%01u\n", (*v83 + 50) / 0xEA60u, (*v83 + 50) / 0x3E8u - 60 * ((71582789 * ((*v83 + 50) / 0x3E8u)) >> 32), (*v83 + 50) / 0x64u - 10 * ((429496730 * ((*v83 + 50) / 0x64u)) >> 32));
                          }

                          bzero(v57, 0x1CF8uLL);
                          memset(&v57[7416], 248, 24);
                          v58 = 0u;
                          v59 = 0u;
                          v60 = 0u;
                          v61 = 0u;
                          v62 = 0u;
                          v63 = 0u;
                          v64 = 0u;
                          v65 = 0u;
                          v66 = 0u;
                          v67 = 0u;
                          v68 = 0u;
                          v69 = 0u;
                          v70 = 0u;
                          v71 = 0u;
                          v72 = 0u;
                          v73 = 0u;
                          v74 = 0u;
                          v75 = 0u;
                          v76 = 0u;
                          v77 = 0u;
                          v78 = 0u;
                          v79 = 0u;
                          v80 = 0u;
                          v81 = 0u;
                          v82 = 0u;
                          if ((*(v4 + 23) & 1) != 0 || *(v4 + 64) == 1)
                          {
                            GlCustomLog(14, "RequestResponse ");
                            (*(**(v4 + 8) + 136))(*(v4 + 8), 14);
                            if (*(v4 + 64) == 1)
                            {
                              v46 = 1;
                              v47 = 1;
                            }

                            else
                            {
                              v46 = 0;
                              v47 = 0;
                            }

                            (*(*v4 + 272))(v4, v46, v47);
                            v48 = v84;
                            if (v84)
                            {
                              v49 = *(*(v4 + 8) + 48);
                              if (v49)
                              {
                                v49();
                                v48 = v84;
                              }

                              v50 = *(v4 + 68);
                              v51 = "SS ";
                              v52 = v83;
                              v53 = v4;
                              goto LABEL_66;
                            }

                            v54 = v83;
                            if (BlueFin::GlPeRqHdlrPosSigleShot::UpdateFixStatusTimeout(v4, v83, v57))
                            {
                              v54 = v57;
                            }

                            v55 = *(*(v4 + 8) + 48);
                            if (v55)
                            {
                              v55();
                            }
                          }

                          else
                          {
                            v54 = v83;
                          }

                          v50 = *(v4 + 68);
                          v48 = v54[4048];
                          v51 = "ss ";
                          v53 = v4;
                          v52 = v54;
LABEL_66:
                          result = BlueFin::GlPeRqHdlr::LogGL007(v53, v51, v52, v50, v48);
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        v31 = v30 - 1;
                        v32 = v29 + 1;
                        while (!*v32++)
                        {
                          if (!--v31)
                          {
                            goto LABEL_28;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v26 = v25 - 1;
                    v27 = v24 + 1;
                    while (!*v27++)
                    {
                      if (!--v26)
                      {
                        goto LABEL_23;
                      }
                    }
                  }
                }
              }

              else
              {
                v21 = v20 - 1;
                v22 = v19 + 1;
                while (!*v22++)
                {
                  if (!--v21)
                  {
                    goto LABEL_18;
                  }
                }
              }
            }
          }

          else
          {
            v16 = v15 - 1;
            v17 = v14 + 1;
            while (!*v17++)
            {
              if (!--v16)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }

      else
      {
        v11 = v10 - 1;
        v12 = v9 + 1;
        while (!*v12++)
        {
          if (!--v11)
          {
            goto LABEL_8;
          }
        }
      }
    }

LABEL_41:
    v39 = 1;
    goto LABEL_42;
  }

LABEL_67:
  v56 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::ApplyLocalUpdates(uint64_t a1, char *__dst, char *__src)
{
  if (__dst != __src)
  {
    memcpy(__dst, __src, 0x1CF8uLL);
    v6 = *(__src + 929);
    *(__dst + 7416) = *(__src + 7416);
    *(__dst + 929) = v6;
    memcpy(__dst + 7440, __src + 7440, 0x190uLL);
  }

  if (!__src[4048])
  {
    v8 = 1;
LABEL_8:
    v7 = (a1 + 76);
    if (!*(a1 + 76) && v8)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (*(a1 + 77) != 1)
  {
    *(a1 + 77) = (*(__src + 1752) & 3) != 0;
    v8 = __src[4048] == 0;
    goto LABEL_8;
  }

  v7 = (a1 + 76);
LABEL_10:
  if ((*(**(a1 + 8) + 400))(*(a1 + 8)))
  {
    (*(**(a1 + 8) + 424))(*(a1 + 8), *(__src + 1752));
    *(__dst + 1752) = (*(**(a1 + 8) + 432))();
  }

LABEL_12:
  result = (*(**(a1 + 8) + 400))(*(a1 + 8));
  if (result && (*(a1 + 77) & 1) == 0)
  {
    *v7 = 0;
    goto LABEL_20;
  }

  v10 = *v7;
  __dst[4048] = v10;
  if (!v10)
  {
LABEL_20:
    __dst[4048] = 0;
    *(__dst + 4280) = 0u;
    *(__dst + 4296) = 0u;
    *(__dst + 4312) = 0u;
    *(__dst + 4328) = 0u;
    *(__dst + 4856) = 0u;
    *(__dst + 4872) = 0u;
    *(__dst + 4888) = 0u;
    *(__dst + 4904) = 0u;
    *(__dst + 4920) = 0u;
    *(__dst + 4936) = 0u;
    *(__dst + 4952) = 0u;
    *(__dst + 4968) = 0u;
    *(__dst + 4984) = 0u;
    *(__dst + 5000) = 0u;
    *(__dst + 5016) = 0u;
    *(__dst + 5032) = 0u;
    *(__dst + 5048) = 0u;
    *(__dst + 5064) = 0u;
    *(__dst + 5080) = 0u;
    *(__dst + 5096) = 0u;
    *(__dst + 5592) = 0u;
    *(__dst + 5608) = 0u;
    *(__dst + 5560) = 0u;
    *(__dst + 5576) = 0u;
    *(__dst + 5528) = 0u;
    *(__dst + 5544) = 0u;
    *(__dst + 5496) = 0u;
    *(__dst + 5512) = 0u;
    *(__dst + 5464) = 0u;
    *(__dst + 5480) = 0u;
    *(__dst + 5432) = 0u;
    *(__dst + 5448) = 0u;
    *(__dst + 5400) = 0u;
    *(__dst + 5416) = 0u;
    *(__dst + 5368) = 0u;
    *(__dst + 5384) = 0u;
    return result;
  }

  v11 = *(a1 + 36);
  if (v11 == -1)
  {
    v16 = 1.0;
  }

  else
  {
    v12 = *(*(a1 + 8) + 28);
    v13 = *(a1 + 32) + v11;
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      v15 = 1;
    }

    v16 = v15;
  }

  *(__dst + 863) = v16;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::UpdateFixStatusTimeout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) == 1 && !*(a2 + 4048))
  {
    v8 = *(*(a1 + 56) + 8);
    v159 = *(v8 + 2576);
    v156 = BlueFin::GlPeTimeManager::TimeKnown(v8, 0, 0x200B20u);
    v11 = *(*(a1 + 56) + 64);
    if (*(v11 + 44) == -1)
    {
      v155 = 0;
      AgeS = -1;
    }

    else
    {
      AgeS = BlueFin::stTimeOfAsstPos::GetAgeS((v11 + 56), *(v11 + 296), v9, v10);
      v155 = AgeS != -1;
    }

    v13 = (*(**(a1 + 8) + 200))(*(a1 + 8));
    v14 = *(*(a1 + 56) + 64);
    v15 = *(v14 + 44);
    if (v15 == -1)
    {
      v175 = 0uLL;
      v16 = 0;
      v17 = 0;
      v176 = 0;
    }

    else
    {
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      v175 = *(v14 + 88);
      v176 = *(v14 + 104);
    }

    v173 = 0uLL;
    v174 = 0;
    v18 = BlueFin::ecef2lla(&v175, &v173);
    v19 = v18;
    LOBYTE(v20) = 0;
    v21 = *(*(a1 + 56) + 64);
    v22 = *(v21 + 48);
    if (v159 == 0 || !v156 || !v155 || AgeS > v13 || v15 == -1 || !v18)
    {
      v26 = a2;
      v27 = *(v21 + 44);
    }

    else
    {
      v26 = a2;
      v27 = *(v21 + 44);
      if ((v27 == 1) | v22 & 1)
      {
        v20 = (*(**(a1 + 8) + 400))(*(a1 + 8)) ^ 1;
        if ((v20 & 1) == 0 && v27 == 1)
        {
          if ((*(**(a1 + 8) + 400))(*(a1 + 8)))
          {
            LOBYTE(v20) = *(a1 + 77);
          }

          else
          {
            LOBYTE(v20) = 0;
          }
        }
      }
    }

    if (v159)
    {
      v28 = v15 == -1;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28 && v19;
    if (v29 && (*(**(a1 + 8) + 400))(*(a1 + 8)))
    {
      v30 = (v22 ^ 1) & (((*(**(a1 + 8) + 432))(*(a1 + 8)) & 4) >> 2);
    }

    else
    {
      v30 = 0;
    }

    GlCustomLog(14, "AgedFix (Time %d GpsTime %d PosAge %d AgeOK %d (%u <= %u) PosQual %d xyz %d ecef %d PosFromKF %d) = OK %d, ForcedFix = %d\n", v159 != 0, v156, v155, AgeS <= v13, AgeS, v13, v15 != -1, v15 != -1, v19, v27 == 1, v20 & 1, v30);
    v4 = v20 | v30;
    if ((v20 | v30))
    {
      BlueFin::GlPeFixStatus::InitFixStatus(a3);
      v31 = *(*(a1 + 56) + 8);
      v32 = v31[642];
      v33 = v32;
      if (v32 <= 0xFF9222FE)
      {
        v33 = v32;
      }

      BlueFin::GlPeTimeManager::GetTime(v31, v33, 1, v172);
      v34 = AgeS;
      BlueFin::GlPeGnssTime::operator-=(v172, AgeS);
      *(a3 + 4060) = 5;
      *(a3 + 4048) = 257;
      *a3 = *v26;
      if (v20 & 1 | ((v30 & 1) == 0) || v27 == 1)
      {
        v37.i64[1] = *(&v173 + 1);
        *(a3 + 4072) = v173;
        v37.i64[0] = v174;
        *(a3 + 4088) = v174;
        *(a3 + 4144) = v16;
        *(a3 + 4152) = v16;
        *(a3 + 4160) = v17;
        *(a3 + 6952) = v16;
        *(a3 + 6960) = v16;
        v36 = v27 == 1 && (v38 = *(*(a1 + 56) + 64), *(v38 + 44) != -1) && BlueFin::stTimeOfAsstPos::GetAgeS((v38 + 56), *(v38 + 296), v37, v35) == 0;
      }

      else
      {
        *(a3 + 4072) = *(v26 + 4072);
        *(a3 + 4080) = *(v26 + 4080);
        *(a3 + 4144) = *(v26 + 4144);
        *(a3 + 4160) = *(v26 + 4160);
        *(a3 + 6952) = *(v26 + 6952);
        *(a3 + 6960) = *(v26 + 6960);
        v36 = 1;
      }

      *(a3 + 6968) = 0;
      if ((*(**(a1 + 8) + 400))(*(a1 + 8)))
      {
        *(a3 + 7008) = (*(**(a1 + 8) + 432))(*(a1 + 8));
      }

      v170 = &off_2A1F0B5F0;
      v171 = 0;
      *v39.i64 = BlueFin::GlPeGnssTime::GetGps(v172, &v170);
      v160 = v39;
      *(a3 + 24) = (v170[4])(&v170) / 0x93A80;
      v44 = (v170[4])(&v170);
      LODWORD(v43) = v171;
      *v44.i64 = (v43 * 2.32830644e-10 + (v42 % 0x93A80)) * 1000.0;
      *v45.i64 = *v44.i64 + trunc(*v44.i64 * 2.32830644e-10) * -4294967300.0;
      v46 = -1;
      v49.f64[1] = NAN;
      v47 = vnegq_f64(v49);
      v48 = vbslq_s8(v47, v45, v44);
      v49.f64[0] = 4294967300.0;
      if (*v44.i64 <= 4294967300.0)
      {
        v48.i64[0] = v44.i64[0];
      }

      v157 = v47;
      if (*v48.i64 < -4294967300.0)
      {
        *v41.i64 = -*v48.i64;
        v49.f64[0] = trunc(*v48.i64 * -2.32830644e-10);
        *v48.i64 = -(*v48.i64 - v49.f64[0] * -4294967300.0);
        *v48.i64 = -*vbslq_s8(v47, v48, v41).i64;
      }

      if (*v48.i64 < 0.0)
      {
        v50 = --*v48.i64;
      }

      else
      {
        v50 = *v48.i64;
      }

      *(a3 + 28) = v50;
      *v44.i64 = (*v44.i64 - v50) * 0.001;
      *v41.i64 = -*v48.i64;
      BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v169, v44, (a3 + 32), (a3 + 34), v40, 0.001, v41, v49);
      *v52.i64 = *v160.i64 + trunc(*v160.i64 * 2.32830644e-10) * -4294967300.0;
      v53 = vbslq_s8(v157, v52, v160);
      if (*v160.i64 <= 4294967300.0)
      {
        v53.i64[0] = v160.i64[0];
      }

      if (*v53.i64 < -4294967300.0)
      {
        *v51.i64 = -*v53.i64;
        *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
        v54.f64[0] = NAN;
        v54.f64[1] = NAN;
        *v53.i64 = -*vbslq_s8(vnegq_f64(v54), v53, v51).i64;
      }

      if (*v53.i64 < 0.0)
      {
        v55 = --*v53.i64;
      }

      else
      {
        v55 = *v53.i64;
      }

      *(a3 + 36) = v55;
      v163 = &unk_2A1F11310;
      v164 = 0;
      v56 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
      v165 = 1980;
      v166 = v56 / 0x15180 + 1;
      LOBYTE(v167) = 1;
      BYTE1(v167) = v56 / 0x15180 + 1;
      BYTE2(v167) = v56 % 0x15180 / 0xE10;
      HIBYTE(v167) = (2185 * (v56 - 3600 * ((1193047 * v56) >> 32))) >> 17;
      v168 = v56 - 60 * ((71582789 * v56) >> 32);
      *v58.i64 = BlueFin::GlPeGnssTime::GetUtc(v172, &v163);
      v161 = v58;
      *(a3 + 4) = v165;
      v58.i32[0] = v167;
      v61 = vmovl_u8(*v58.i8);
      *(a3 + 6) = v61.i64[0];
      v61.i8[0] = v168;
      LODWORD(v60) = v164;
      *v61.i64 = v60 * 2.32830644e-10 + v61.u64[0];
      *v62.i64 = *v61.i64 + trunc(*v61.i64 * 2.32830644e-10) * -4294967300.0;
      v63 = -1;
      v66.f64[1] = NAN;
      v64 = vnegq_f64(v66);
      v65 = vbslq_s8(v64, v62, v61);
      v66.f64[0] = 4294967300.0;
      if (*v61.i64 <= 4294967300.0)
      {
        v65.i64[0] = v61.i64[0];
      }

      if (*v65.i64 < -4294967300.0)
      {
        *v59.i64 = -*v65.i64;
        v66.f64[0] = trunc(*v65.i64 * -2.32830644e-10);
        *v65.i64 = -(*v65.i64 - v66.f64[0] * -4294967300.0);
        v65 = vbslq_s8(v64, v65, v59);
        *v65.i64 = -*v65.i64;
      }

      *v59.i64 = -*v65.i64;
      if (*v65.i64 < 0.0)
      {
        v67 = --*v65.i64;
      }

      else
      {
        LOWORD(v67) = *v65.i64;
      }

      *(a3 + 14) = v67;
      *v65.i64 = *v61.i64 - trunc(*v61.i64);
      v158 = v64;
      BlueFin::GlPeTimeMgrUtil::BreakDownFracSec((a3 + 16), vbslq_s8(v64, v65, v61), (a3 + 18), &v162, v57, *v65.i64, v59, v66);
      *v69.i64 = *v161.i64 + trunc(*v161.i64 * 2.32830644e-10) * -4294967300.0;
      v70 = vbslq_s8(v158, v69, v161);
      if (*v161.i64 <= 4294967300.0)
      {
        v70.i64[0] = v161.i64[0];
      }

      if (*v70.i64 < -4294967300.0)
      {
        *v68.i64 = -*v70.i64;
        *v70.i64 = -(*v70.i64 - trunc(*v70.i64 * -2.32830644e-10) * -4294967300.0);
        v71.f64[0] = NAN;
        v71.f64[1] = NAN;
        *v70.i64 = -*vbslq_s8(vnegq_f64(v71), v70, v68).i64;
      }

      if (*v70.i64 < 0.0)
      {
        v72 = --*v70.i64;
      }

      else
      {
        v72 = *v70.i64;
      }

      *(a3 + 20) = v72;
      v73 = *(a1 + 36);
      if (v73 == -1)
      {
        v78 = 1.0;
      }

      else
      {
        v74 = *(*(a1 + 8) + 28);
        v75 = *(a1 + 32) + v73;
        v76 = v75 >= v74;
        v77 = v75 - v74;
        if (!v76)
        {
          v77 = 1;
        }

        v78 = v77;
      }

      *(a3 + 6904) = v78;
      v79 = *(*(a1 + 56) + 8);
      *(a3 + 4051) = *(v79 + 2589) == 0;
      *(a3 + 4176) = *(v79 + 2588);
      *(a3 + 44) = *(v26 + 44);
      memcpy((a3 + 48), (v26 + 48), 0xFA0uLL);
      if (v36)
      {
        *(a3 + 4274) = *(v26 + 4274);
        v80 = *(v26 + 4280);
        v81 = *(v26 + 4296);
        v82 = *(v26 + 4328);
        *(a3 + 4312) = *(v26 + 4312);
        *(a3 + 4328) = v82;
        *(a3 + 4280) = v80;
        *(a3 + 4296) = v81;
        v83 = *(v26 + 4456);
        v85 = *(v26 + 4408);
        v84 = *(v26 + 4424);
        *(a3 + 4440) = *(v26 + 4440);
        *(a3 + 4456) = v83;
        *(a3 + 4408) = v85;
        *(a3 + 4424) = v84;
        v86 = *(v26 + 4520);
        v88 = *(v26 + 4472);
        v87 = *(v26 + 4488);
        *(a3 + 4504) = *(v26 + 4504);
        *(a3 + 4520) = v86;
        *(a3 + 4472) = v88;
        *(a3 + 4488) = v87;
        v89 = *(v26 + 4584);
        v91 = *(v26 + 4536);
        v90 = *(v26 + 4552);
        *(a3 + 4568) = *(v26 + 4568);
        *(a3 + 4584) = v89;
        *(a3 + 4536) = v91;
        *(a3 + 4552) = v90;
        v92 = *(v26 + 4344);
        v93 = *(v26 + 4360);
        v94 = *(v26 + 4392);
        *(a3 + 4376) = *(v26 + 4376);
        *(a3 + 4392) = v94;
        *(a3 + 4344) = v92;
        *(a3 + 4360) = v93;
        v95 = *(v26 + 4600);
        v96 = *(v26 + 4616);
        v97 = *(v26 + 4648);
        *(a3 + 4632) = *(v26 + 4632);
        *(a3 + 4648) = v97;
        *(a3 + 4600) = v95;
        *(a3 + 4616) = v96;
        v98 = *(v26 + 4664);
        v99 = *(v26 + 4680);
        v100 = *(v26 + 4712);
        *(a3 + 4696) = *(v26 + 4696);
        *(a3 + 4712) = v100;
        *(a3 + 4664) = v98;
        *(a3 + 4680) = v99;
        v101 = *(v26 + 4728);
        v102 = *(v26 + 4744);
        v103 = *(v26 + 4776);
        *(a3 + 4760) = *(v26 + 4760);
        *(a3 + 4776) = v103;
        *(a3 + 4728) = v101;
        *(a3 + 4744) = v102;
        v104 = *(v26 + 4792);
        v105 = *(v26 + 4808);
        v106 = *(v26 + 4840);
        *(a3 + 4824) = *(v26 + 4824);
        *(a3 + 4840) = v106;
        *(a3 + 4792) = v104;
        *(a3 + 4808) = v105;
        v107 = *(v26 + 5112);
        v108 = *(v26 + 5128);
        v109 = *(v26 + 5160);
        *(a3 + 5144) = *(v26 + 5144);
        *(a3 + 5160) = v109;
        *(a3 + 5112) = v107;
        *(a3 + 5128) = v108;
        v110 = *(v26 + 5176);
        v111 = *(v26 + 5192);
        v112 = *(v26 + 5224);
        *(a3 + 5208) = *(v26 + 5208);
        *(a3 + 5224) = v112;
        *(a3 + 5176) = v110;
        *(a3 + 5192) = v111;
        v113 = *(v26 + 5240);
        v114 = *(v26 + 5256);
        v115 = *(v26 + 5288);
        *(a3 + 5272) = *(v26 + 5272);
        *(a3 + 5288) = v115;
        *(a3 + 5240) = v113;
        *(a3 + 5256) = v114;
        v116 = *(v26 + 5304);
        v117 = *(v26 + 5320);
        v118 = *(v26 + 5352);
        *(a3 + 5336) = *(v26 + 5336);
        *(a3 + 5352) = v118;
        *(a3 + 5304) = v116;
        *(a3 + 5320) = v117;
        v119 = *(v26 + 4856);
        v120 = *(v26 + 4872);
        v121 = *(v26 + 4904);
        *(a3 + 4888) = *(v26 + 4888);
        *(a3 + 4904) = v121;
        *(a3 + 4856) = v119;
        *(a3 + 4872) = v120;
        v122 = *(v26 + 4920);
        v123 = *(v26 + 4936);
        v124 = *(v26 + 4968);
        *(a3 + 4952) = *(v26 + 4952);
        *(a3 + 4968) = v124;
        *(a3 + 4920) = v122;
        *(a3 + 4936) = v123;
        v125 = *(v26 + 4984);
        v126 = *(v26 + 5000);
        v127 = *(v26 + 5032);
        *(a3 + 5016) = *(v26 + 5016);
        *(a3 + 5032) = v127;
        *(a3 + 4984) = v125;
        *(a3 + 5000) = v126;
        v128 = *(v26 + 5048);
        v129 = *(v26 + 5064);
        v130 = *(v26 + 5096);
        *(a3 + 5080) = *(v26 + 5080);
        *(a3 + 5096) = v130;
        *(a3 + 5048) = v128;
        *(a3 + 5064) = v129;
        v131 = *(v26 + 5368);
        v132 = *(v26 + 5384);
        v133 = *(v26 + 5416);
        *(a3 + 5400) = *(v26 + 5400);
        *(a3 + 5416) = v133;
        *(a3 + 5368) = v131;
        *(a3 + 5384) = v132;
        v134 = *(v26 + 5432);
        v135 = *(v26 + 5448);
        v136 = *(v26 + 5480);
        *(a3 + 5464) = *(v26 + 5464);
        *(a3 + 5480) = v136;
        *(a3 + 5432) = v134;
        *(a3 + 5448) = v135;
        v137 = *(v26 + 5496);
        v138 = *(v26 + 5512);
        v139 = *(v26 + 5544);
        *(a3 + 5528) = *(v26 + 5528);
        *(a3 + 5544) = v139;
        *(a3 + 5496) = v137;
        *(a3 + 5512) = v138;
        v140 = *(v26 + 5560);
        v141 = *(v26 + 5576);
        v142 = *(v26 + 5608);
        *(a3 + 5592) = *(v26 + 5592);
        *(a3 + 5608) = v142;
        *(a3 + 5560) = v140;
        *(a3 + 5576) = v141;
        v143 = *(v26 + 5816);
        v144 = *(v26 + 5832);
        v145 = *(v26 + 5864);
        *(a3 + 5848) = *(v26 + 5848);
        *(a3 + 5864) = v145;
        *(a3 + 5816) = v143;
        *(a3 + 5832) = v144;
        v146 = *(v26 + 5880);
        v147 = *(v26 + 5896);
        v148 = *(v26 + 5928);
        *(a3 + 5912) = *(v26 + 5912);
        *(a3 + 5928) = v148;
        *(a3 + 5880) = v146;
        *(a3 + 5896) = v147;
        v149 = *(v26 + 5944);
        v150 = *(v26 + 5960);
        v151 = *(v26 + 5992);
        *(a3 + 5976) = *(v26 + 5976);
        *(a3 + 5992) = v151;
        *(a3 + 5944) = v149;
        *(a3 + 5960) = v150;
        v152 = *(v26 + 6008);
        v153 = *(v26 + 6024);
        v154 = *(v26 + 6056);
        *(a3 + 6040) = *(v26 + 6040);
        *(a3 + 6056) = v154;
        *(a3 + 6008) = v152;
        *(a3 + 6024) = v153;
        *(a3 + 4120) = *(v26 + 4120);
        *(a3 + 4128) = *(v26 + 4128);
      }

      GlCustomLog(14, "AgedFix %1.6f %1.6f %1.0f  (%0.1f hours old)\n", *(a3 + 4072), *(a3 + 4080), *(a3 + 4088), v34 / 3600.0);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::UpdateFixStatus(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v60 = *MEMORY[0x29EDCA608];
  *(v1 + 76) = *(v4 + 4048);
  bzero(v34, 0x1CF8uLL);
  memset(&v34[7416], 248, 24);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  result = BlueFin::GlPeRqHdlrPosSigleShot::UpdateFixStatusTimeout(v6, v5, v34);
  if ((result & 1) == 0 && (*(v5 + 4048) || (*(v5 + 4068) & 0x10) != 0))
  {
    v8 = (*(**(v6 + 8) + 400))(*(v6 + 8));
    if (v8)
    {
      (*(**(v6 + 8) + 424))(*(v6 + 8), *(v5 + 7008));
    }

    result = (*(**(v6 + 8) + 152))(*(v6 + 8));
    v9 = result;
    if (result <= 400)
    {
      v10 = 400;
    }

    else
    {
      v10 = result;
    }

    *(v6 + 72) = v10;
    v11 = *(v6 + 8);
    v12 = *(v6 + 36);
    if (v12 == -1)
    {
      v17 = 1;
    }

    else
    {
      v13 = *(v11 + 28);
      v14 = *(v6 + 32) + v12;
      v15 = v14 >= v13;
      v16 = v14 - v13;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 1;
      }
    }

    v18 = *(v11 + 22);
    if (v3)
    {
      result = (*(*v6 + 16))(v6, v18, v17, 0);
      v10 = v9;
      if (result)
      {
        v10 = *(v6 + 72);
      }
    }

    else
    {
      v33 = *(v11 + 22);
      if (*(v6 + 68) != v10)
      {
        GllStartupType = BlueFin::GlPeKF::GetGllStartupType(*(*(v6 + 56) + 16));
        v31 = *(v6 + 72);
        v32 = GllStartupType;
        if (v9 == -1)
        {
          v33 = -1;
          ReqSmartMaskAccyM_Startup = BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(v6, &v32);
          v31 = ReqSmartMaskAccyM_Startup;
          v22 = *(*(*(v6 + 56) + 16) + 16824);
          if (v22 != -7200001)
          {
            v23 = *(v6 + 36);
            if (v23 == -1)
            {
              v17 = 1;
            }

            else
            {
              v24 = *(*(v6 + 8) + 28);
              v25 = *(v6 + 32);
              v26 = v25 + v23;
              v15 = v26 >= v24;
              v27 = v26 - v24;
              if (!v15)
              {
                v27 = 1;
              }

              v28 = v25 - v22;
              if (v28 >= v27)
              {
                v17 = v27;
              }

              else
              {
                v17 = v28;
              }
            }
          }

          BlueFin::GlPeRqHdlr::GetDynAccyMask_ToutForSmartphoneFF(v6, &v32, v17, &v31, &v33);
          v20 = "Smartphone";
          LOWORD(v18) = v33;
        }

        else
        {
          v20 = "Constant";
          ReqSmartMaskAccyM_Startup = v9;
        }

        if ((*(*v6 + 16))(v6, v18, v17, 0))
        {
          v10 = v31;
        }

        else
        {
          v10 = ReqSmartMaskAccyM_Startup;
        }

        result = GlCustomLog(14, "AccyMask[%hu]SS %s %s Current %dm\n", *(v6 + 48), v20, off_29EEB41F0[v32], v10);
      }
    }

    if (*(v5 + 4144) < v10 + 0.01 && (!v8 || (result = (*(**(v6 + 8) + 416))(*(v6 + 8)), (result & 1) != 0) || (v29 = *(v5 + 4160), result = (*(**(v6 + 8) + 440))(*(v6 + 8)), v29 <= result)))
    {
      *(v6 + 76) = 1;
      if (v10 == *(v6 + 72))
      {
        *(v6 + 68) = v9;
      }

      *(*(*(v6 + 56) + 16) + 61488) = 0;
    }

    else
    {
      *(v6 + 76) = 0;
      *(v6 + 68) = v10;
    }
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::GetFixStatus(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v11 = *MEMORY[0x29EDCA608];
  BlueFin::GlPeRqHdlrPosSigleShot::ApplyLocalUpdates(v1, v2, v5);
  bzero(__src, 0x1CF8uLL);
  memset(&__src[927], 248, 24);
  memset(v10, 0, sizeof(v10));
  updated = BlueFin::GlPeRqHdlrPosSigleShot::UpdateFixStatusTimeout(v4, v3, __src);
  if (__src != v3 && updated)
  {
    memcpy(v3, __src, 0x1CF8uLL);
    *(v3 + 7416) = *&__src[927];
    *(v3 + 7432) = __src[929];
    memcpy((v3 + 7440), v10, 0x190uLL);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t BlueFin::GlPeRqHdlrPosSigleShot::Cleanup(BlueFin::GlPeRqHdlrPosSigleShot *this)
{
  if ((*(this + 64) & 1) != 0 || (*(this + 23) & 1) != 0 || *(this + 20) == 1)
  {
    *(this + 19) = 1;
    *(this + 77) = 0;
    v3 = &unk_2A1F13C98;
    v4 = *(this + 24);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13CB0(&v3);
    }
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrPosSigleShot::~GlPeRqHdlrPosSigleShot(BlueFin::GlPeRqHdlrPosSigleShot *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPePulseTimeData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v55 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 >= 3)
  {
    DeviceFaultNotify("glpe_reqhdlr_syncin.cpp", 258, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_syncin.cpp", 258, "ucVersion >= 1 && ucVersion <= 2");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v51 = 91;
    v52 = v4;
    v53 = 0x1000000000000;
    v50 = &unk_2A1F092C0;
    v54 = v4;
    v7 = v4 == 1;
    BlueFin::GlSysLogEntry::PutD64(&v50, *(v1 + 8));
    if (v7)
    {
      v8 = *(v6 + 24);
      v48 = *(v6 + 20);
      v49 = v8;
      v47 = &off_2A1F0B5F0;
      BlueFin::GlSysLogEntry::PutU16(&v50, v8 / 0x93A80);
      v9 = (off_2A1F0B610)(&v47);
      LODWORD(v12) = v48;
      *v13.i64 = (v12 * 2.32830644e-10 + (v11 % 0x93A80)) * 1000.0;
      *v9.i64 = *v13.i64 + trunc(*v13.i64 * 2.32830644e-10) * -4294967300.0;
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v15 = vnegq_f64(v14);
      v16 = vbslq_s8(v15, v9, v13);
      v45 = *v13.i64;
      if (*v13.i64 <= 4294967300.0)
      {
        v16.i64[0] = v13.i64[0];
      }

      if (*v16.i64 < -4294967300.0)
      {
        *v10.i64 = -*v16.i64;
        *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
        *v16.i64 = -*vbslq_s8(v15, v16, v10).i64;
      }

      if (*v16.i64 < 0.0)
      {
        v17 = --*v16.i64;
      }

      else
      {
        v17 = *v16.i64;
      }

      BlueFin::GlSysLogEntry::PutU32(&v50, v17);
      *v19.i64 = (v45 - v17) * 1000.0;
      *v20.i64 = *v19.i64 + trunc(*v19.i64 * 2.32830644e-10) * -4294967300.0;
      v21.f64[0] = NAN;
      v21.f64[1] = NAN;
      v22 = vnegq_f64(v21);
      v23 = vbslq_s8(v22, v20, v19);
      if (*v19.i64 <= 4294967300.0)
      {
        *v23.i64 = (v45 - v17) * 1000.0;
      }

      v46 = (v45 - v17) * 1000.0;
      if (*v23.i64 < -4294967300.0)
      {
        *v18.i64 = -*v23.i64;
        *v23.i64 = -(*v23.i64 - trunc(*v23.i64 * -2.32830644e-10) * -4294967300.0);
        *v23.i64 = -*vbslq_s8(v22, v23, v18).i64;
      }

      if (*v23.i64 < 0.0)
      {
        v24 = --*v23.i64;
      }

      else
      {
        LOWORD(v24) = *v23.i64;
      }

      v25 = v24;
      BlueFin::GlSysLogEntry::PutU16(&v50, v24);
      *v27.i64 = (v46 - v25) * 1000.0;
      *v28.i64 = *v27.i64 + trunc(*v27.i64 * 2.32830644e-10) * -4294967300.0;
      v29.f64[0] = NAN;
      v29.f64[1] = NAN;
      v30 = vnegq_f64(v29);
      *&v31 = vbslq_s8(v30, v28, v27).u64[0];
      if (*v27.i64 > 4294967300.0)
      {
        *v27.i64 = v31;
      }

      if (*v27.i64 < -4294967300.0)
      {
        *v26.i64 = -*v27.i64;
        *v27.i64 = -(*v27.i64 - trunc(*v27.i64 * -2.32830644e-10) * -4294967300.0);
        *v27.i64 = -*vbslq_s8(v30, v27, v26).i64;
      }

      if (*v27.i64 < 0.0)
      {
        v32 = --*v27.i64;
      }

      else
      {
        LOWORD(v32) = *v27.i64;
      }

      BlueFin::GlSysLogEntry::PutU16(&v50, v32);
      v34.i64[0] = *(v6 + 32);
      *v35.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
      v36.f64[0] = NAN;
      v36.f64[1] = NAN;
      v37 = vnegq_f64(v36);
      *&v38 = vbslq_s8(v37, v35, v34).u64[0];
      if (*v34.i64 > 4294967300.0)
      {
        *v34.i64 = v38;
      }

      if (*v34.i64 < -4294967300.0)
      {
        *v33.i64 = -*v34.i64;
        *v34.i64 = -(*v34.i64 - trunc(*v34.i64 * -2.32830644e-10) * -4294967300.0);
        *v34.i64 = -*vbslq_s8(v37, v34, v33).i64;
      }

      if (*v34.i64 < 0.0)
      {
        v39 = --*v34.i64;
      }

      else
      {
        v39 = *v34.i64;
      }

      BlueFin::GlSysLogEntry::PutU32(&v50, v39);
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU8(&v50, *(v6 + 16));
      BlueFin::GlDateTime::getByTimeSys((v6 + 20), *(v6 + 16), &v47);
      v40 = HIDWORD(v47);
      v41 = HIDWORD(v47) / 0x93A80;
      BlueFin::GlSysLogEntry::PutS32(&v50, HIDWORD(v47) / 0x93A80);
      LODWORD(v42) = *(v6 + 20);
      BlueFin::GlSysLogEntry::PutD64(&v50, v42 * 2.32830644e-10 + (v40 - 604800 * v41));
      BlueFin::GlSysLogEntry::PutD64(&v50, *(v6 + 32));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v50, v5, 4);
  }

  v43 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPePulseTimeData::Deserialize(BlueFin::GlPePulseTimeData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 91)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (v3 == 1)
  {
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    v8 = BlueFin::GlSysLogEntry::GetU16(a2);
    v9 = BlueFin::GlSysLogEntry::GetU16(a2);
    v10 = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 4) = 0;
    *v11.i64 = (U32 + v8 * 0.001 + v9 * 0.000001) * 0.001;
    v28 = &off_2A1F0B5F0;
    *v12.i64 = *v11.i64 - trunc(*v11.i64);
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = *vbslq_s8(vnegq_f64(v13), v12, v11).i64;
    if (v14 < 0.0 || v14 >= 1.0)
    {
      goto LABEL_22;
    }

    v16 = v14 * 4294967300.0 + 0.5;
    v17 = v16;
    if (v16 >= 4294967300.0)
    {
      v17 = -1;
    }

    *(this + 5) = v17;
    *(this + 6) = *v11.i64 + 604800 * U16;
    D64 = v10;
  }

  else
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetU8(a2);
    S32 = BlueFin::GlSysLogEntry::GetS32(a2);
    *v20.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
    *v21.i64 = *v20.i64 - trunc(*v20.i64);
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v23 = *vbslq_s8(vnegq_f64(v22), v21, v20).i64;
    if (v23 < 0.0 || v23 >= 1.0)
    {
LABEL_22:
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v25 = v23 * 4294967300.0 + 0.5;
    v26 = v25;
    if (v25 >= 4294967300.0)
    {
      v26 = -1;
    }

    LODWORD(v27) = v26;
    HIDWORD(v27) = *v20.i64 + 604800 * S32;
    BlueFin::GlDateTime::GlDateTime(&v28, &v27, *(this + 4));
    *(this + 20) = v28;
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  *(this + 4) = D64;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 328);
  return 1;
}

void BlueFin::GlPeRqHdlrSyncin::~GlPeRqHdlrSyncin(BlueFin::GlPeRqHdlrSyncin *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlReqSm::AddFlagToSignalAiding(uint64_t this, int a2, BlueFin::GlSvIdSet *a3)
{
  v3 = *(this + 4942);
  if (*(this + 4942))
  {
    v4 = (*(this + 4944) + 4);
    do
    {
      v5 = *(v4 - 2);
      if (v5)
      {
        if ((*(a3 + ((v5 >> 3) & 0x1C)) >> (v5 & 0x1F)))
        {
          v6 = *v4 | a2;
        }

        else
        {
          v6 = *v4 & ~a2;
        }

        *v4 = v6;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return this;
}

void BlueFin::GlReqSm::HighestVisibilitySigAidOverride(BlueFin::GlReqSm *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40)
{
  v41 = 0;
  STACK[0xB38] = *MEMORY[0x29EDCA608];
  *&STACK[0x800] = 0u;
  *&STACK[0x810] = 0u;
  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a35 = 0u;
  a36 = 0u;
  a33 = 0u;
  a34 = 0u;
  a31 = 0u;
  a32 = 0u;
  a29 = 0u;
  a30 = 0u;
  a27 = 0u;
  a28 = 0u;
  a25 = 0u;
  a26 = 0u;
  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  a17 = 0u;
  a18 = 0u;
  a15 = 0u;
  a16 = 0u;
  a13 = 0u;
  a14 = 0u;
  a11 = 0u;
  a12 = 0u;
  v104 = &unk_2A1F09328;
  vars0 = 0;
  vars0_4 = -96;
  vars0_6 = 0;
  vars8 = &a11;
  do
  {
    v42 = &a11 + v41;
    *v42 = 0;
    *(v42 + 1) = 0;
    v41 += 8;
  }

  while (v41 != 1280);
  BlueFin::GlMeSignalAidInfo::operator=(&v104, this + 4928);
  *(this + 2471) = 0;
  *(this + 3127) = 0;
  v102 = &v103[4];
  v103[0] = 8;
  memset(&v103[4], 0, 32);
  v43 = *(this + 784);
  v44 = *(v43 + 48);
  if ((v44 - 4) >= 5 && v44 != 2)
  {
    v99 = 0;
    goto LABEL_57;
  }

  v46 = *(v43 + 1024);
  a9 = *(v43 + 1008);
  a10 = v46;
  BlueFin::GlPeSvVisibilityCache::GetSvIdByRank((*(this + 788) + 15072), 0, &v100);
  v47 = v100;
  v101 = v100;
  if (v100)
  {
    v48 = 0;
    do
    {
      if (!vars0_6)
      {
        goto LABEL_34;
      }

      v49 = 0;
      while (*(vars8 + v49) != v47 || ((1 << (v47 & 0x1F)) & *&v102[4 * (v47 >> 5)]) != 0)
      {
        v49 += 8;
        if (8 * vars0_6 == v49)
        {
          goto LABEL_34;
        }
      }

      AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(*(this + 789) + 32, &v101);
      v51 = *(*(this + 789) + 9190);
      v52 = *(*(this + 789) + 9191) + 1;
      v53 = v52 == v51 || AidBySvId == 0;
      v54 = !v53 && *(AidBySvId + 37) > 10;
      if (v52 != v51 && !v54)
      {
        goto LABEL_34;
      }

      if (v47 > 0x20)
      {
        if (v47 - 66 <= 9)
        {
LABEL_30:
          v56 = *(this + 2471);
          if (v56 < *(this + 4940))
          {
            v57 = vars8;
            v58 = *(vars8 + v49);
            if (*(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v58))
            {
              v59 = *(this + 618);
              *(this + 2471) = v56 + 1;
              v60 = v59 + 8 * v56;
              *v60 = v58;
              *(v60 + 4) = *(v57 + v49 + 4);
            }
          }

          *&v102[4 * (v47 >> 5)] |= 1 << (v47 & 0x1F);
        }
      }

      else if (*(&a9 + v47 - 1) > 2u)
      {
        goto LABEL_30;
      }

LABEL_34:
      BlueFin::GlPeSvVisibilityCache::GetSvIdByRank((*(this + 788) + 15072), ++v48, &v100);
      v47 = v100;
      v101 = v100;
    }

    while (v100);
  }

  BlueFin::GlPeSvVisibilityCache::GetSvIdByRank((*(this + 788) + 15072), 0, &v100);
  v61 = v100;
  v101 = v100;
  if (v100)
  {
    v62 = 0;
    do
    {
      if (vars0_6)
      {
        v63 = 0;
        v64 = 0;
        v65 = *(this + 789);
        while (1)
        {
          v66 = BlueFin::GlPeSatAidInfo::GetAidBySvId(v65 + 32, &v101);
          v65 = *(this + 789);
          v67 = *(v65 + 9191) + 1 == *(v65 + 9190) || v66 == 0;
          v68 = v67 || *(v66 + 37) < 21;
          v69 = vars8;
          if (*(vars8 + v63) == v61)
          {
            break;
          }

          ++v64;
          v63 += 8;
          if (v64 >= vars0_6)
          {
            goto LABEL_55;
          }
        }

        if (v61 < 0x21 || v61 - 66 >= 0xFFFFFFF2 && !v68)
        {
          v70 = v102;
          v71 = v61 >> 5;
          v72 = *&v102[4 * (v61 >> 5)];
          if (((v72 >> (v61 & 0x1F)) & 1) == 0)
          {
            v73 = *(this + 2471);
            if (v73 < *(this + 4940) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v61))
            {
              v74 = *(this + 618);
              *(this + 2471) = v73 + 1;
              v72 = v74 + 8 * v73;
              *v72 = v61;
              *(v72 + 4) = *(v69 + v63 + 4);
              LODWORD(v72) = *&v70[4 * v71];
            }

            *&v70[4 * v71] = v72 | (1 << (v61 & 0x1F));
          }
        }
      }

LABEL_55:
      BlueFin::GlPeSvVisibilityCache::GetSvIdByRank((*(this + 788) + 15072), ++v62, &v100);
      v61 = v100;
      v101 = v100;
    }

    while (v100);
  }

  v99 = 1;
LABEL_57:
  BlueFin::GlPeSvVisibilityCache::GetSvIdByRank((*(this + 788) + 15072), 0, &a9);
  v75 = a9;
  if (a9)
  {
    v76 = 0;
    do
    {
      v77 = v102;
      v78 = v75 >> 5;
      v79 = *&v102[4 * (v75 >> 5)];
      v80 = v75 & 0x1F;
      if (((v79 >> (v75 & 0x1F)) & 1) == 0 && (!v99 || v75 - 76 > 0x3E || ((1 << (v75 - 76)) & 0x7C0000000000001FLL) == 0))
      {
        v81 = vars0_6;
        if (vars0_6)
        {
          v82 = v75;
          v83 = vars8 + 1;
          while (*(v83 - 2) != v75)
          {
            v83 += 2;
            if (!--v81)
            {
              goto LABEL_72;
            }
          }

          v84 = *(this + 2471);
          if (v84 < *(this + 4940) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v75))
          {
            v85 = *(this + 618);
            *(this + 2471) = v84 + 1;
            v86 = v85 + 8 * v84;
            *v86 = v82;
            *(v86 + 4) = *v83;
            LODWORD(v79) = *&v77[4 * v78];
          }

          *&v77[4 * v78] = v79 | (1 << v80);
        }
      }

LABEL_72:
      BlueFin::GlPeSvVisibilityCache::GetSvIdByRank((*(this + 788) + 15072), ++v76, &a9);
      v75 = a9;
    }

    while (a9);
  }

  v87 = vars0_6;
  if (vars0_6)
  {
    v88 = vars8;
    v89 = v102;
    v90 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    do
    {
      v91 = *v88;
      v92 = *v88 >> 5;
      v93 = *v88 & 0x1F;
      if (((*&v89[4 * v92] >> v93) & 1) == 0)
      {
        v94 = *(this + 2471);
        if (v94 < *(this + 4940) && v90[*v88])
        {
          v95 = *(this + 618);
          *(this + 2471) = v94 + 1;
          v96 = v95 + 8 * v94;
          *v96 = v91;
          *(v96 + 4) = *(v88 + 1);
          v92 = *v88 >> 5;
          v93 = *v88 & 0x1F;
        }

        *&v89[4 * v92] |= 1 << v93;
      }

      v88 = (v88 + 8);
      --v87;
    }

    while (v87);
  }

  v97 = STACK[0xB38];
  v98 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlReqSm::SetSimSigAiding(uint64_t this, const BlueFin::GlMeSignalAidInfo *a2, const BlueFin::GlSvIdSet *a3, BlueFin::GlMeSignalAidInfo *a4)
{
  v5 = this;
  v105 = *MEMORY[0x29EDCA608];
  v6 = this + 53536;
  v101 = v103;
  v102 = 8;
  memset(v103, 0, sizeof(v103));
  if (*(*(this + 6312) + 9191) + 1 != *(*(this + 6312) + 9190) && *(a2 + 14))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v5 + 6312);
      v10 = a2;
      v11 = *(*(a2 + 2) + v7);
      v104[0] = v11;
      this = BlueFin::GlPeSatAidInfo::GetAidBySvId(v9 + 32, v104);
      if (this)
      {
        v12 = v11 >> 5;
        v13 = 1 << (v11 & 0x1F);
        if ((v13 & *(*(v6 + 816) + 4 * v12)) == 0 && (v13 & *(*(v6 + 912) + 4 * v12)) == 0)
        {
          v14 = *(a4 + 7);
          if (v14 < *(a4 + 12))
          {
            v15 = *(v10 + 2);
            v16 = *(v15 + v7);
            if (*(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v16))
            {
              v17 = *(a4 + 2);
              *(a4 + 7) = v14 + 1;
              v18 = v17 + 8 * v14;
              *v18 = v16;
              *(v18 + 4) = *(v15 + v7 + 4);
            }
          }

          *(v101 + v12) |= 1 << (v11 & 0x1F);
        }
      }

      ++v8;
      a2 = v10;
      v7 += 8;
    }

    while (v8 < *(v10 + 14));
  }

  v19 = *a3;
  if (!**a3)
  {
    v33 = *(a3 + 8);
    if (v33 < 2)
    {
      goto LABEL_29;
    }

    v34 = v33 - 1;
    v35 = v19 + 1;
    while (!*v35++)
    {
      if (!--v34)
      {
        goto LABEL_29;
      }
    }
  }

  v20 = *(a2 + 7);
  if (v20)
  {
    v21 = 0;
    v22 = v101;
    v23 = *(a4 + 12);
    v24 = *(a4 + 2);
    v25 = (*(a2 + 2) + 4);
    v26 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    do
    {
      v27 = *(v25 - 2);
      v28 = v27 >> 5;
      this = v27 & 0x1F;
      v29 = 1 << (v27 & 0x1F);
      if ((v29 & v19[v28]) != 0 && (v29 & *(*(v6 + 816) + 4 * v28)) == 0 && (v29 & *(*(v6 + 912) + 4 * v28)) == 0)
      {
        v30 = *(v22 + v28);
        if ((v29 & v30) == 0)
        {
          v31 = *(a4 + 7);
          if (v31 < v23 && v26[*(v25 - 2)])
          {
            *(a4 + 7) = v31 + 1;
            v32 = v24 + 8 * v31;
            *v32 = v27;
            *(v32 + 4) = *v25;
            LODWORD(v30) = *(v22 + v28);
            v20 = *(a2 + 7);
          }

          this = v30 | (1 << this);
          *(v22 + v28) = this;
        }
      }

      ++v21;
      v25 += 2;
    }

    while (v21 < v20);
  }

LABEL_29:
  v37 = *(v5 + 6272);
  if (*(v37 + 26341) == 1)
  {
    v38 = a2;
    v39 = 0;
    v40 = (v37 + 26348);
    *v104 = *v40;
    *&v104[12] = *(v40 + 12);
    do
    {
      v41 = *(v5 + 6288);
      v42 = v104[v39];
      v98 = 4;
      v99 = v42;
      this = BlueFin::GlPeSvIdConverter::Gnss2SvId((v41 + 119744), &v98, &v100);
      v43 = v100;
      v44 = v100 >> 5;
      v45 = v100 & 0x1F;
      v46 = 1 << (v100 & 0x1F);
      if ((v46 & *(*(v6 + 816) + 4 * v44)) == 0 && (v46 & *(*(v6 + 912) + 4 * v44)) == 0)
      {
        v47 = v101;
        v48 = *(v101 + v44);
        if ((v46 & v48) == 0)
        {
          v49 = *(v38 + 7);
          if (*(v38 + 7))
          {
            v50 = (*(v38 + 2) + 4);
            while (*(v50 - 2) != v100)
            {
              v50 += 2;
              if (!--v49)
              {
                goto LABEL_34;
              }
            }

            v51 = *(a4 + 7);
            if (v51 < *(a4 + 12) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v100))
            {
              v52 = *(a4 + 2);
              *(a4 + 7) = v51 + 1;
              v48 = v52 + 8 * v51;
              *v48 = v43;
              *(v48 + 4) = *v50;
              LODWORD(v48) = *(v47 + v44);
            }

            *(v47 + v44) = v48 | (1 << v45);
          }
        }
      }

LABEL_34:
      ++v39;
    }

    while (v39 != 28);
    a2 = v38;
  }

  v53 = *(v5 + 12192);
  v54 = v53 & 6;
  v55 = v53 & 9;
  if (v54)
  {
    v56 = v55 == 0;
  }

  else
  {
    v56 = 0;
  }

  if (!v56)
  {
    goto LABEL_55;
  }

  v57 = *(v5 + 12196);
  if ((v57 & 0x80000000) == 0)
  {
    v58 = (*(*(v5 + 8 * v57 + 10880) + 8) + 22);
    goto LABEL_54;
  }

  if (v57 != -1)
  {
    v58 = (v5 + 14118);
LABEL_54:
    if (*v58 != -1)
    {
      goto LABEL_100;
    }
  }

LABEL_55:
  v59 = *(v5 + 6440);
  if ((*(v59 + 32) & 1) == 0 && *(v59 + 31) != 1 || *(*(v5 + 6312) + 9191) + 1 == *(*(v5 + 6312) + 9190))
  {
    v60 = *v6;
    v61 = *(*(v5 + 6280) + 2568);
    if (*v6 - 1 >= v61)
    {
      *v6 = v61;
      v60 = v61;
    }

    v96 = a2;
    v62 = v61 - v60;
    v63 = *(v6 + 4);
    if (v62 >= 0x186A1)
    {
      v63 ^= 1u;
      *(v6 + 4) = v63 & 1;
      *v6 = v61;
    }

    if (v63)
    {
      v64 = 63;
    }

    else
    {
      v64 = 1;
    }

    if (v63)
    {
      v65 = -1;
    }

    else
    {
      v65 = 1;
    }

    v97 = v65;
    if (v63)
    {
      v66 = 0;
    }

    else
    {
      v66 = 64;
    }

    v67 = v64;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        if (dword_298A45080[dword_298A45070[i]] >= v64)
        {
          v69 = *(v5 + 6288);
          *v104 = dword_298A45070[i];
          v104[4] = v67;
          this = BlueFin::GlPeSvIdConverter::Gnss2SvId((v69 + 119744), v104, &v98);
          v70 = v98;
          if (v98 - 1 <= 0xBB)
          {
            v71 = v101;
            v72 = v98 >> 5;
            v73 = *(v101 + v72);
            v74 = v98 & 0x1F;
            v75 = 1 << (v98 & 0x1F);
            if ((v75 & v73) == 0 && (v75 & *(*(v6 + 816) + 4 * (v98 >> 5))) == 0 && (v75 & *(*(v6 + 912) + 4 * (v98 >> 5))) == 0)
            {
              v76 = *(v96 + 7);
              if (*(v96 + 7))
              {
                v77 = (*(v96 + 2) + 4);
                while (*(v77 - 2) != v98)
                {
                  v77 += 2;
                  if (!--v76)
                  {
                    goto LABEL_78;
                  }
                }

                v78 = *(a4 + 7);
                if (v78 < *(a4 + 12) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v98))
                {
                  v79 = *(a4 + 2);
                  *(a4 + 7) = v78 + 1;
                  v73 = v79 + 8 * v78;
                  *v73 = v70;
                  *(v73 + 4) = *v77;
                  LODWORD(v73) = *(v71 + v72);
                }

                *(v71 + v72) = v73 | (1 << v74);
              }
            }
          }
        }

LABEL_78:
        ;
      }

      v67 += v97;
      v64 = v67;
    }

    while (v66 != v67);
    v80 = *(v96 + 7);
    if (v80)
    {
      v81 = 0;
      v82 = *(v6 + 816);
      v83 = v101;
      v84 = *(a4 + 12);
      v85 = *(a4 + 2);
      v86 = (*(v96 + 2) + 4);
      v87 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
      do
      {
        v88 = *(v86 - 2);
        v89 = v88 >> 5;
        this = v88 & 0x1F;
        v90 = 1 << (v88 & 0x1F);
        if ((v90 & *(v82 + 4 * v89)) == 0 && (v90 & *(*(v6 + 912) + 4 * v89)) == 0)
        {
          v91 = *(v83 + v89);
          if ((v90 & v91) == 0)
          {
            v92 = *(a4 + 7);
            if (v92 < v84 && v87[*(v86 - 2)])
            {
              *(a4 + 7) = v92 + 1;
              v93 = v85 + 8 * v92;
              *v93 = v88;
              *(v93 + 4) = *v86;
              LODWORD(v91) = *(v83 + v89);
              v80 = *(v96 + 7);
            }

            this = v91 | (1 << this);
            *(v83 + v89) = this;
          }
        }

        ++v81;
        v86 += 2;
      }

      while (v81 < v80);
    }
  }

LABEL_100:
  v94 = *MEMORY[0x29EDCA608];
  return this;
}

double BlueFin::GlSignalIdSet::operator&(uint64_t a1, const void **a2, int **a3)
{
  v5 = BlueFin::GlSetBase::GlSetBase(a1, (a1 + 12), 0x13u, a2);
  v7 = &v9;
  v8 = 19;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  BlueFin::GlSetBase::OperatorBinaryAnd(v5, &v7, a3);
  BlueFin::GlSetBase::operator=(a1, &v7);
  *(a1 + 28) = v10;
  *(a1 + 44) = v11;
  *(a1 + 60) = *v12;
  *(a1 + 72) = *&v12[12];
  result = *&v9;
  *(a1 + 12) = v9;
  return result;
}

uint64_t BlueFin::GlSignalIdSet::operator~(uint64_t a1, const void **a2)
{
  v3 = BlueFin::GlSetBase::GlSetBase(a1, (a1 + 12), 0x13u, a2);
  v6 = &v8;
  v7 = 19;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  BlueFin::GlSetBase::OperatorBinaryInversion(v3, &v6);
  v4 = BlueFin::GlSetBase::operator=(a1, &v6);
  *(a1 + 28) = v9;
  *(a1 + 44) = v10;
  *(a1 + 60) = *v11;
  *(a1 + 72) = *&v11[12];
  *(a1 + 12) = v8;
  return BlueFin::GlSignalIdSet::setSignalIdLimits(v4);
}

char *BlueFin::stDebugSelectedStats::getSortedSet(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  a53 = *MEMORY[0x29EDCA608];
  a48 = 0u;
  a49 = 0u;
  v54 = &a1[48 * a2];
  a46 = 0u;
  a47 = 0u;
  a44 = 0u;
  a45 = 0u;
  a42 = 0u;
  a43 = 0u;
  a40 = 0u;
  a41 = 0u;
  a38 = 0u;
  a39 = 0u;
  __source[0] = v54[240];
  memcpy(&v84, *(v54 + 29), 4 * __source[0]);
  *&__source[2] = 0;
  __source[1] = 0;
  *&__source[4] = v84;
  BlueFin::GlSetIterator::operator++(__source);
  if (__source[1] == __source[0])
  {
    v56 = a1 + 480;
    BlueFin::GlFormat::glsnprintf((a1 + 480), 0x5E0, "(%2d){", v55);
  }

  else
  {
    v57 = 0;
    v58 = *a1;
    v59 = 1;
    do
    {
      v60 = v59;
      v61 = __source[2];
      v62 = v57;
      *(&a38 + v57) = __source[2];
      *(&a14 + v57) = 0;
      if (v58 >= 1)
      {
        v63 = *(a1 + 16);
        v64 = v58;
        v65 = a1 + 136;
        while (1)
        {
          v66 = *v63++;
          if (v66 == v61)
          {
            break;
          }

          ++v65;
          if (!--v64)
          {
            goto LABEL_10;
          }
        }

        *(&a14 + v57) = *v65;
      }

LABEL_10:
      ++v57;
      BlueFin::GlSetIterator::operator++(__source);
      v59 = v60 + 1;
    }

    while (__source[1] != __source[0]);
    v56 = a1 + 480;
    BlueFin::GlFormat::glsnprintf((a1 + 480), 0x5E0, "(%2d){", v67);
    if (v62 != 0xFF)
    {
      v70 = 0;
      do
      {
        if (v62)
        {
          v71 = 0;
          v72 = a14;
          v73 = 1;
          do
          {
            if (*(&a14 + v73) > v72)
            {
              v71 = v73;
              v72 = *(&a14 + v73);
            }

            ++v73;
          }

          while (v60 != v73);
          v74 = v71;
        }

        else
        {
          v74 = 0;
        }

        v82 = *(&a38 + v74);
        v75 = *(a1 + 59);
        HIDWORD(v80) = 7;
        v81 = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss(v75, &v82, &v80 + 4, v68, v69);
        BlueFin::GNSS2CHARCODE(HIDWORD(v80));
        v79 = *(&a14 + v74);
        BlueFin::GlFormat::glsnprintf(__source, 0x14, " %c%02d:%02d", v76);
        strlcat(a1 + 480, __source, 0x5E0uLL);
        *(&a14 + v74) = -90;
        ++v70;
      }

      while (v70 != (v62 + 1));
    }
  }

  strlcat(v56, "}", 0x5E0uLL);
  v77 = *MEMORY[0x29EDCA608];
  return v56;
}

uint64_t BlueFin::GlReqSm::SatelliteSelectionPrint(BlueFin::stDebugSelectedStats &)const::PrintSet::operator()(unsigned __int8 *a1, const char *a2, const char *a3, char *__s)
{
  v4 = __s;
  v29 = *MEMORY[0x29EDCA608];
  v8 = strlen(__s);
  v9 = &v4[v8];
  v10 = __sa;
  if (v8 >= 1)
  {
    do
    {
      v11 = *v4;
      if (v11 == 123)
      {
        break;
      }

      ++v4;
      *v10++ = v11;
    }

    while (v4 < v9);
  }

  v13 = *v4;
  v12 = v4 + 2;
  *v10 = v13;
  v10[2] = 0;
  GlCustomLog(15, "%s%s", a2, __sa);
  v14 = strlen(a2);
  v15 = strlen(__sa);
  BlueFin::GlFormat::glsnprintf(v27, 0x14, "\n%%%ds", v16, v15 + v14);
  v17 = strlen(a3);
  v18 = strlen(__sa);
  BlueFin::GlFormat::glsnprintf(v26, 0x14, "\n%%%ds", v19, v18 + v17);
  if (v12 < v9)
  {
    v20 = 0;
    do
    {
      ++v12;
      for (i = __sa; ; ++i)
      {
        v22 = *(v12 - 1);
        if (v22 == 32 || v22 == 125)
        {
          break;
        }

        *i = v22;
        ++v12;
      }

      *i = v22;
      GlCustomLog(15, "%s", __sa);
      if (++v20 % *a1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v12 >= v9;
      }

      if (!v23)
      {
        GlCustomLog(15, "%s", v27);
      }
    }

    while (v12 < v9);
  }

  result = GlCustomLog(15, "\n");
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlReqSm::RequestAiding(BlueFin::GlReqSm *this)
{
  v1 = MEMORY[0x2A1C7C4A8](this);
  v2 = v1;
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(v1 + 12192);
  v4 = (*(v1 + 10849) & 0x80) != 0 && *(*(v1 + 33192) + 128) != 0;
  bzero(&v11, 0x38A8uLL);
  if ((v3 & 0x200) != 0 || v4)
  {
    BlueFin::GlPeAsstMgr::GetAsstStat(*(v2 + 6288), &v11, *(v2 + 54548));
    Accuracymask = BlueFin::GlPeReqBag::GetAccuracymask((v2 + 10880));
    v12 = BlueFin::GlPeReqBag::GetTimeTillTimeoutMs((v2 + 10880), 0) / 1000;
    v14 = 0;
    *(v2 + 54548) = 0;
    if ((v3 & 0x200) != 0)
    {
      BlueFin::GlPeReqBag::SetAsstStat(v2 + 10880, &v11);
      v5 = "REQ";
      goto LABEL_10;
    }
  }

  else
  {
    BlueFin::GlPeAsstMgr::InitAidRequest(&v11, *(v2 + 54548));
    *(v2 + 54548) = 0;
  }

  v5 = "!req";
LABEL_10:
  v6 = *(v2 + 33192);
  v7 = *(v6 + 128);
  if (v7)
  {
    v7(*(v6 + 8), &v11);
    v8 = "CB";
  }

  else
  {
    v8 = "!cb";
  }

  result = BlueFin::GlPeAsstMgr::DumpAidRequest(v5, v8, &v11);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlReqSm::SetAsstEph(BlueFin::GlReqSm *this, const BlueFin::GlPeEphemeris *a2)
{
  *(this + 2712) |= 4u;
  (*(*a2 + 264))(a2, this + 6496);
  v4 = *(a2 + 8) >> 4;
  (*(*a2 + 136))(&v9 + 4, a2);
  LODWORD(v9) = v4;
  BlueFin::GlGnssSet::Add(this + 6592, &v9);
  v8 = 10;
  v5 = *(this + 4);
  v6 = *(this + 1);
  *(this + 4) = v6;
  do
  {
    v9 = 0;
    if (BlueFin::patch_dispatch(v6, this, &v8, &v9))
    {
      v6 = v9;
    }

    else
    {
      v6 = (*(this + 4))(this, &v8);
    }

    *(this + 4) = v6;
  }

  while (v6);
  *(this + 4) = v5;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstAlm(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 10848) |= 2u;
  v3 = *a2;
  v4 = *(a2 + 1);
  *(a1 + 6816) = *(a2 + 8);
  *(a1 + 6800) = v4;
  *(a1 + 6784) = v3;
  *(*(a1 + 6928) + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
  v8 = 10;
  v5 = *(a1 + 32);
  v6 = *(a1 + 8);
  *(a1 + 32) = v6;
  do
  {
    v9 = 0;
    if (BlueFin::patch_dispatch(v6, a1, &v8, &v9))
    {
      v6 = v9;
    }

    else
    {
      v6 = (*(a1 + 32))(a1, &v8);
    }

    *(a1 + 32) = v6;
  }

  while (v6);
  *(a1 + 32) = v5;
  return 1;
}

{
  *(a1 + 10848) |= 0x1000000u;
  v3 = *a2;
  *(a1 + 6868) = *(a2 + 2);
  *(a1 + 6852) = v3;
  *(*(a1 + 6904) + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
  v7 = 10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  *(a1 + 32) = v5;
  do
  {
    v8 = 0;
    if (BlueFin::patch_dispatch(v5, a1, &v7, &v8))
    {
      v5 = v8;
    }

    else
    {
      v5 = (*(a1 + 32))(a1, &v7);
    }

    *(a1 + 32) = v5;
  }

  while (v5);
  *(a1 + 32) = v4;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstAlm(uint64_t a1, uint64_t a2)
{
  *(a1 + 10848) |= 0x20000u;
  v3 = *(a2 + 16);
  *(a1 + 6820) = *a2;
  *(a1 + 6836) = v3;
  *(*(a1 + 6880) + ((*(a2 + 2) >> 3) & 0x1C)) |= 1 << *(a2 + 2);
  v7 = 10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  *(a1 + 32) = v5;
  do
  {
    v8 = 0;
    if (BlueFin::patch_dispatch(v5, a1, &v7, &v8))
    {
      v5 = v8;
    }

    else
    {
      v5 = (*(a1 + 32))(a1, &v7);
    }

    *(a1 + 32) = v5;
  }

  while (v5);
  *(a1 + 32) = v4;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstIono(uint64_t a1, void *a2)
{
  *(a1 + 10848) |= 0x10u;
  *(a1 + 6952) = *a2;
  v6 = 10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  *(a1 + 32) = v4;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(v4, a1, &v6, &v7))
    {
      v4 = v7;
    }

    else
    {
      v4 = (*(a1 + 32))(a1, &v6);
    }

    *(a1 + 32) = v4;
  }

  while (v4);
  *(a1 + 32) = v3;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstUtc(uint64_t a1, _OWORD *a2)
{
  *(a1 + 10848) |= 0x20u;
  *(a1 + 6960) = *a2;
  v6 = 10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  *(a1 + 32) = v4;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(v4, a1, &v6, &v7))
    {
      v4 = v7;
    }

    else
    {
      v4 = (*(a1 + 32))(a1, &v6);
    }

    *(a1 + 32) = v4;
  }

  while (v4);
  *(a1 + 32) = v3;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstUtc(uint64_t a1, __int128 *a2)
{
  *(a1 + 10848) |= 0x40000u;
  v3 = *a2;
  *(a1 + 6992) = *(a2 + 4);
  *(a1 + 6976) = v3;
  v7 = 10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  *(a1 + 32) = v5;
  do
  {
    v8 = 0;
    if (BlueFin::patch_dispatch(v5, a1, &v7, &v8))
    {
      v5 = v8;
    }

    else
    {
      v5 = (*(a1 + 32))(a1, &v7);
    }

    *(a1 + 32) = v5;
  }

  while (v5);
  *(a1 + 32) = v4;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstAcq(uint64_t a1, const void *a2)
{
  *(a1 + 10848) |= 0x40u;
  memcpy((a1 + 6996), a2, 0x158uLL);
  v3 = *(*(a1 + 6280) + 2568);
  if (v3 == -7200001)
  {
    v3 = 0;
  }

  *(a1 + 10084) = v3;
  *(a1 + 10088) = *(BlueFin::GlUtils::m_pInstance + 1092);
  v7 = 10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  *(a1 + 32) = v5;
  do
  {
    v8 = 0;
    if (BlueFin::patch_dispatch(v5, a1, &v7, &v8))
    {
      v5 = v8;
    }

    else
    {
      v5 = (*(a1 + 32))(a1, &v7);
    }

    *(a1 + 32) = v5;
  }

  while (v5);
  *(a1 + 32) = v4;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstAcq(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  if (v4 < 6 && ((0x2Fu >> v4) & 1) != 0)
  {
    v5 = off_29EEB4210[v4];
  }

  else if (v4 == 6)
  {
    v5 = "BDS";
  }

  else
  {
    v5 = "Unknown";
  }

  GlCustomLog(14, "GlReqSm::SetAsstAcq(%s)\n", v5);
  v6 = *a2;
  if (*a2 == 6)
  {
    *(a1 + 10848) |= 0x10000000u;
    v7 = 7972;
  }

  else if (v6 == 5)
  {
    *(a1 + 10848) |= 0x8000000u;
    v7 = 7656;
  }

  else
  {
    if (v6 != 3)
    {
      return 0;
    }

    *(a1 + 10848) |= 0x80u;
    v7 = 7340;
  }

  memcpy((a1 + v7), a2, 0x13CuLL);
  v11 = 10;
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  *(a1 + 32) = v9;
  do
  {
    v12 = 0;
    if (BlueFin::patch_dispatch(v9, a1, &v11, &v12))
    {
      v9 = v12;
    }

    else
    {
      v9 = (*(a1 + 32))(a1, &v11);
    }

    *(a1 + 32) = v9;
  }

  while (v9);
  *(a1 + 32) = v8;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstGnssTimeModel(uint64_t a1, _OWORD *a2)
{
  *(a1 + 10848) |= 0x80000u;
  *(a1 + 9904) = *a2;
  v6 = 10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  *(a1 + 32) = v4;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(v4, a1, &v6, &v7))
    {
      v4 = v7;
    }

    else
    {
      v4 = (*(a1 + 32))(a1, &v6);
    }

    *(a1 + 32) = v4;
  }

  while (v4);
  *(a1 + 32) = v3;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstGlnsAuxiliaryMsg(uint64_t a1, __int128 *a2)
{
  *(a1 + 10848) |= 0x100000u;
  v3 = *a2;
  *(a1 + 9936) = *(a2 + 2);
  *(a1 + 9920) = v3;
  v7 = 10;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  *(a1 + 32) = v5;
  do
  {
    v8 = 0;
    if (BlueFin::patch_dispatch(v5, a1, &v7, &v8))
    {
      v5 = v8;
    }

    else
    {
      v5 = (*(a1 + 32))(a1, &v7);
    }

    *(a1 + 32) = v5;
  }

  while (v5);
  *(a1 + 32) = v4;
  return 1;
}

uint64_t BlueFin::GlReqSm::SetAsstGpsAuxiliaryMsg(uint64_t a1, uint64_t a2)
{
  *(a1 + 10848) |= 1u;
  *(a1 + 9944) = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(a1 + 9992) = *(a2 + 48);
  *(a1 + 10008) = v5;
  *(a1 + 9960) = v3;
  *(a1 + 9976) = v4;
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(a1 + 10072) = *(a2 + 128);
  *(a1 + 10040) = v7;
  *(a1 + 10056) = v8;
  *(a1 + 10024) = v6;
  v12 = 10;
  v9 = *(a1 + 32);
  v10 = *(a1 + 8);
  *(a1 + 32) = v10;
  do
  {
    v13 = 0;
    if (BlueFin::patch_dispatch(v10, a1, &v12, &v13))
    {
      v10 = v13;
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

uint64_t BlueFin::GlReqSm::SetAsstTime(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  *(a1 + 10848) |= 0x400u;
  v12 = *(a1 + 6280);
  if (*(v12 + 642) == -7200001 && (*(*(a1 + 6272) + 33) & 0x40) == 0)
  {
    BlueFin::GlPeTimeManager::TimeAsstPending(v12);
  }

  v13 = *a2;
  *(a1 + 8560) = *(a2 + 2);
  *(a1 + 8552) = v13;
  *(a1 + 8568) = a3;
  BlueFin::GlUtcTime::MakeRelativeToGps0((a1 + 8552), (a1 + 8554), (a1 + 8556), (a1 + 8558), (a1 + 8560), (a1 + 8562), (a1 + 8568), a8);
  *(a1 + 8576) = a4;
  *(a1 + 10080) = *(BlueFin::GlUtils::m_pInstance + 1092);
  v17 = 10;
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  *(a1 + 32) = v15;
  do
  {
    v18 = 0;
    if (BlueFin::patch_dispatch(v15, a1, &v17, &v18))
    {
      v15 = v18;
    }

    else
    {
      v15 = (*(a1 + 32))(a1, &v17);
    }

    *(a1 + 32) = v15;
  }

  while (v15);
  *(a1 + 32) = v14;
  return 1;
}

BOOL BlueFin::GlReqSm::SetAsstFixStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *(a1 + 11504);
  if (*v6)
  {
LABEL_3:
    GlCustomLog(14, "SetFixStatus [  %.6f %.6f %.1f ] %s \n", *(a2 + 4072), *(a2 + 4080), *(a2 + 4088), "Some Request actv");
    goto LABEL_4;
  }

  v22 = *(a1 + 11512);
  if (v22 >= 2)
  {
    v23 = v22 - 1;
    v24 = v6 + 1;
    do
    {
      if (*v24++)
      {
        goto LABEL_3;
      }
    }

    while (--v23);
  }

  v26 = *(a2 + 4072);
  v27 = *(a2 + 4080);
  v28 = *(a2 + 4088);
  if (*(a1 + 10264) < 1)
  {
    GlCustomLog(14, "SetFixStatus [  %.6f %.6f %.1f ] %s \n", v26, v27, v28, "No Requests actv");
    return 0;
  }

  GlCustomLog(14, "SetFixStatus [  %.6f %.6f %.1f ] %s \n", v26, v27, v28, "Some Request actv");
LABEL_4:
  BlueFin::GlPeReqBag::UpdateFixStatus(a1 + 10880, a2, a3, 0, 0);
  v36 = 0;
  v35 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v78 = v80;
  v79 = 8;
  v81 = -1;
  v83 = 0;
  v82 = 0u;
  v84 = vdupq_n_s32(0x42C60000u);
  v85 = 1176255488;
  v86 = vdup_n_s32(0x461C3C00u);
  v87 = 0;
  v95 = 0;
  v96 = 0;
  _Q1 = vdupq_n_s64(0x40C3878000000000uLL);
  v97 = _Q1;
  v98 = 0;
  v99 = 0;
  v102 = 0;
  v119 = 0;
  v120 = 0;
  __asm { FMOV            V1.2S, #-1.0 }

  v121 = _Q1.i64[0];
  v122 = 0;
  v123 = 0;
  memset(v80, 0, 32);
  memset(&v94[32], 0, 96);
  memset(&v80[36], 0, 64);
  v100 = 0;
  v101 = 0;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v93 = 0u;
  memset(v94, 0, 28);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  *&v37[4] = *(a2 + 4072);
  *&v37[20] = *(a2 + 4088);
  BlueFin::GlPeFixStatus::SetPosition(*(a1 + 31800), &v35, 0, 0, 0, *&v37[20], _Q1, v12, v13, v14, v15);
  *(*(a1 + 31800) + 4060) = *(a2 + 4060);
  BlueFin::GlReqSm::GenerateNMEA(a1);
  v16 = *(a2 + 4048) != 0;
  if (*(a2 + 4048))
  {
    v17 = *(a1 + 33192);
    v18 = *(v17 + 160);
    if (v18)
    {
      v18(*(v17 + 8), a2, 0);
    }

    v31 = &v33;
    v32 = 3;
    v33 = 0;
    v34 = 0;
    BlueFin::GlPeReqBag::SetFixStatus(a1 + 10880);
    *(a1 + 10848) |= 0x1000u;
    v19 = *(a2 + 4);
    *(a1 + 9744) = *(a2 + 20);
    *(a1 + 9728) = v19;
    *(a1 + 9748) = *(a2 + 24);
    *(a1 + 10092) = *(BlueFin::GlUtils::m_pInstance + 1092);
    *(a1 + 9688) = *(a2 + 4072);
    *(a1 + 9696) = *(a2 + 4080);
    *(a1 + 9712) = *(a2 + 4144);
    *(a1 + 9720) = *(a2 + 4160);
    v30 = 10;
    v20 = *(a1 + 32);
    v21 = *(a1 + 8);
    *(a1 + 32) = v21;
    do
    {
      v124 = 0;
      if (BlueFin::patch_dispatch(v21, a1, &v30, &v124))
      {
        v21 = v124;
      }

      else
      {
        v21 = (*(a1 + 32))(a1, &v30);
      }

      *(a1 + 32) = v21;
    }

    while (v21);
    *(a1 + 32) = v20;
    BlueFin::GlPeReqBag::Cleanup(a1 + 10880);
    BlueFin::GlTimer::disarm((a1 + 31584));
  }

  return v16;
}

unint64_t BlueFin::GlReqSm::SetRefFreqStatus(uint64_t a1, __int128 *a2)
{
  *(a1 + 10848) |= 0x800u;
  v3 = *a2;
  *(a1 + 9680) = *(a2 + 4);
  *(a1 + 9664) = v3;
  v6 = 10;
  v4 = *(a1 + 32);
  result = *(a1 + 8);
  *(a1 + 32) = result;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(result, a1, &v6, &v7))
    {
      result = v7;
    }

    else
    {
      result = (*(a1 + 32))(a1, &v6);
    }

    *(a1 + 32) = result;
  }

  while (result);
  *(a1 + 32) = v4;
  return result;
}

uint64_t BlueFin::GlReqSm::SetAsstOscOffset(uint64_t a1, int a2, int a3, _OWORD *a4)
{
  *(a1 + 10848) |= 0x2000u;
  *(a1 + 10096) = a2;
  *(a1 + 10100) = a3;
  v5 = (a1 + 10104);
  if (a4)
  {
    *v5 = *a4;
  }

  else
  {
    *v5 = 0;
    *(a1 + 10112) = 0;
  }

  v9 = 10;
  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  *(a1 + 32) = v7;
  do
  {
    v10 = 0;
    if (BlueFin::patch_dispatch(v7, a1, &v9, &v10))
    {
      v7 = v10;
    }

    else
    {
      v7 = (*(a1 + 32))(a1, &v9);
    }

    *(a1 + 32) = v7;
  }

  while (v7);
  *(a1 + 32) = v6;
  return 1;
}

void BlueFin::GlReqSm::UpdateOscAidingFromBit(BlueFin::GlReqSm *this, const void **a2)
{
  v4 = this + 53248;
  v5 = *(this + 789);
  BlueFin::GlSetBase::GlSetBase(&v32, v33, 0x13u, a2 + 1);
  v6 = 0;
  v20 = v22;
  v21 = 19;
  memset(v22, 0, sizeof(v22));
  do
  {
    *&v22[4 * (v6 >> 5)] |= 1 << v6;
    ++v6;
  }

  while (v6 != 128);
  BlueFin::GlSetBase::GlSetBase(&__src, v25, 0x13u, &v32);
  v34 = &v36;
  LOBYTE(v35) = 19;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v34, &v20);
  BlueFin::GlSetBase::operator=(&__src, &v34);
  v25[1] = v37;
  v25[2] = v38;
  v26[0] = *v39;
  *(v26 + 12) = *&v39[12];
  v25[0] = v36;
  v27 = v24;
  memcpy(v31, __src, 4 * v24);
  v29 = 0;
  v28 = 0;
  v30 = v31[0];
  BlueFin::GlSetIterator::operator++(&v27);
  if (v28 != v27)
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      if (v29 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v9 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v29;
      v10 = *v9;
      LODWORD(v9) = v9[1];
      LOBYTE(v34) = v10;
      HIDWORD(v34) = v9;
      v35 = v29;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, &v34, 0, 0);
      if (MeMeas)
      {
        v12 = MeMeas;
        if (*(MeMeas + 27) < 0.000000016)
        {
          AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v5 + 32, MeMeas);
          if (AidBySvId)
          {
            v8 = v8 + (*(AidBySvId + 11) - *(v12 + 26));
            ++v7;
          }
        }
      }

      BlueFin::GlSetIterator::operator++(&v27);
    }

    while (v28 != v27);
    if (v7 > 0)
    {
      v14 = *(v4 + 75) + 1;
      *(v4 + 75) = v14;
      v15 = v8 / v7 + *(v4 + 38);
      *(v4 + 38) = v15;
      v16 = *(this + 807);
      v17 = v15 / v14;
      v18 = v16[5] * 0.000000001;
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
        v16 = *(this + 807);
      }

      if (v18 * 1000000000.0 <= 98.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0.0000000979999939;
      }

      BlueFin::GlPeOscMgr::SetOscOff(v16, v17, v19, 0);
    }
  }
}

void BlueFin::GlPeTowFilter::init(BlueFin::GlPeTowFilter *this, const BlueFin::GlPeTimeManager *a2, unsigned int a3)
{
  if (!*this)
  {
    v9 = v3;
    v10 = v4;
    *this = a3;
    v6 = a3;
    *(this + 12) = 0;
    if (a3 <= 0xFF9222FE)
    {
      v6 = a3;
    }

    BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(a2, 0, 0, v8, v6);
    v7 = v8[3] / 0x3E8u;
    *(this + 1) = v8[1];
    *(this + 2) = v7;
  }
}

void BlueFin::GlReqSm::~GlReqSm(BlueFin::GlReqSm *this)
{
  *this = &unk_2A1F153B8;
  BlueFin::GlPeReqBag::TerminateAll((this + 10880));
  BlueFin::GlPeReqBag::Cleanup(this + 10880);
  BlueFin::GlPePendingBag::TerminateAll(this + 6496);
}

{
  BlueFin::GlReqSm::~GlReqSm(this);

  JUMPOUT(0x29C292F60);
}

unint64_t BlueFin::GlReqSm::SetPendingBag(BlueFin::GlReqSm *this, BlueFin::GlPePendingBag *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = (this + 10264);
  v4 = *(this + 5132);
  if (v4 <= 0)
  {
    result = BlueFin::GlPePendingBag::operator=(this + 6496, a2);
    LOWORD(v8) = *v3;
  }

  else
  {
    v5 = 0;
    memset(v16, 0, 512);
    do
    {
      v6 = *&v3[4 * v4];
      *&v3[4 * v4] = 0;
      if (v6)
      {
        *(v16 + v5++) = v6;
      }

      --v4;
    }

    while ((v4 + 1) > 1);
    *v3 = v4;
    result = BlueFin::GlPePendingBag::operator=(this + 6496, a2);
    v8 = *v3;
    if (v5 >= 1)
    {
      v9 = v5 + 1;
      v10 = v16 + v5 - 1;
      do
      {
        if (v8 <= 0x47)
        {
          *(this + v8++ + 1284) = *v10;
          *v3 = v8;
        }

        --v9;
        --v10;
      }

      while (v9 > 1);
    }
  }

  if (v8 >= 1)
  {
    v14 = 7;
    v11 = *(this + 4);
    result = *(this + 1);
    *(this + 4) = result;
    do
    {
      v15 = 0;
      if (BlueFin::patch_dispatch(result, this, &v14, &v15))
      {
        result = v15;
      }

      else
      {
        result = (*(this + 4))(this, &v14);
      }

      *(this + 4) = result;
    }

    while (result);
    *(this + 4) = v11;
  }

  if (*(this + 2712))
  {
    v14 = 10;
    v12 = *(this + 4);
    result = *(this + 1);
    *(this + 4) = result;
    do
    {
      v15 = 0;
      if (BlueFin::patch_dispatch(result, this, &v14, &v15))
      {
        result = v15;
      }

      else
      {
        result = (*(this + 4))(this, &v14);
      }

      *(this + 4) = result;
    }

    while (result);
    *(this + 4) = v12;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t BlueFin::GlReqSm::SetSIGMeasuement5Hz(BlueFin::GlReqSm *this)
{
  v4 = 20;
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

uint64_t BlueFin::GlReqSm::SetCntinMeas(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = a1 + 28672;
  v9 = a3 * 1000000000.0;
  v10 = (a3 * 1000000000.0);
  GlCustomLog(14, "GlReqSm::SetCntinMeas(%d, %.1fpb, %.1fppb)\n", a2, a3 * 1000000000.0, a4);
  if (v6 == 1)
  {
    v11 = *(v8 + 3356);
    v12 = v11 > 7;
    v13 = (1 << v11) & 0xB8;
    if (v12 || v13 == 0)
    {
      *(v8 + 3368) = 1;
      *(v8 + 3356) = 4;
      *(v8 + 3360) = v10;
    }

    v15 = -v5;
    if (v5 >= 0.0)
    {
      v15 = v5;
    }

    if (v15 >= 0.00001)
    {
      GlCustomLog(14, "Osc Manager not updated with CNTIN because Freq out of range (|%f| > 10000PPB)\n", v9);
      v20 = *(v8 + 3356);
      if (v20 > 7 || ((1 << v20) & 0xA8) == 0)
      {
        *(v8 + 3368) = 1;
        *(v8 + 3356) = 5;
        *(v8 + 3360) = v10;
      }

      v6 = 2;
    }

    else
    {
      v16 = *(a1 + 6456);
      v17 = v16[1];
      v18 = v16[5] * 0.000000001;
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
        v16 = *(a1 + 6456);
      }

      v4 = v4 + -3.0;
      v19 = (v9 + -0.5);
      if (v9 >= 0.0)
      {
        LOWORD(v19) = 0;
      }

      if (v9 > 0.0)
      {
        LOWORD(v19) = (v9 + 0.5);
      }

      v16[3] = v19;
      GlCustomLog(14, "CntinDebug Meas %d\n", v19);
      if (v4 <= v18 * 1000000000.0)
      {
        v21 = *(a1 + 6272);
        v5 = *(v21 + 832) * 0.000000001 + v5;
        v9 = v5 * 1000000000.0;
        v22 = v17 * 0.000000001 * 1000000000.0;
        if (v22 == 0.0)
        {
          goto LABEL_32;
        }

        v23 = *(v21 + 32) & 0x40;
        if (v18 * 1000000000.0 > 301.0 || v23 == 0)
        {
          goto LABEL_32;
        }

        v25 = v22 - v9;
        if (v22 - v9 < 0.0)
        {
          v25 = -(v22 - v9);
        }

        if (v25 <= 1500.0)
        {
LABEL_32:
          BlueFin::GlPeOscMgr::SetOscOff(*(a1 + 6456), v5, v4 * 0.000000001, 1);
          BlueFin::GlPeOscMgr::Serialize(*(a1 + 6456), 0, v26, v27);
          BlueFin::GlReqSm::SetOscOffsAiding(a1, 0);
        }

        else
        {
          GlCustomLog(14, "Osc Manager not updated with CNTIN because delta(Available Osc and Measured Cntin is large (Osc %f,CNTIN %f)\n");
        }
      }

      else
      {
        GlCustomLog(14, "Osc Manager not updated with CNTIN because uncertainty not better(%f > %f)\n");
      }

      v28 = *(a1 + 6440);
      if (*(v28 + 44) == -7200001)
      {
        *(v28 + 44) = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v28 + 40);
      }

      v29 = *(v8 + 3356);
      v6 = 1;
      if (v29 > 7 || ((1 << v29) & 0xB8) == 0)
      {
        *(v8 + 3368) = 1;
        *(v8 + 3356) = 4;
        *(v8 + 3360) = v9;
      }
    }
  }

  else
  {
    *(v8 + 3368) = 1;
    *(v8 + 3356) = 3;
    *(v8 + 3360) = v10;
    *(v8 + 3364) = v6;
  }

  return BlueFin::GlPeReqBag::SetCntinMeas(a1 + 10880, v6, v5, v4);
}

uint64_t BlueFin::GlReqSm::CWResults(BlueFin::GlReqSm *this, uint64_t a2, unsigned int a3, double a4, double a5, double a6, uint64_t a7)
{
  result = BlueFin::GlPeReqBag::GetCWRequest((this + 10880));
  if (result)
  {
    if ((*(*result + 368))(result) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = a3;
    }

    return BlueFin::GlPeReqBag::CWResults((this + 10880), a2, v15, a4, a5, a6, a7);
  }

  return result;
}

uint64_t (*BlueFin::GlReqSm::warmstandbystate(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this)
{
  v3 = *a2;
  v4 = BlueFin::GlReqSm::processing;
  if (v3 <= 6)
  {
    if (v3 == 2)
    {
      v8 = *(a1 + 31792);
      *(a1 + 54548) = *(*(a1 + 6336) + 8);
      *(a1 + 31784) = a1;
      BlueFin::GlTimer::arm((a1 + 31752), 51, 0, v8 - 10000);
      *(a1 + 31776) = 1;
      GlCustomLog(14, "Start Internal Warm Standby Timer: %ums Ignore 0x%x\n", v8, *(a1 + 54548));
    }

    else
    {
      if (v3 != 3)
      {
        return v4;
      }

      BlueFin::GlTimer::disarm((a1 + 31752));
    }

    return 0;
  }

  if (v3 - 7 >= 3)
  {
    if (v3 != 51)
    {
      return v4;
    }

    v5 = *(a1 + 31800);
    v6 = *(a1 + 6320);
    v7 = *v6;
    BlueFin::GlSignalIdSet::GetSvIdSet(v6 + 8, v10);
    BlueFin::GlReqSm::GenerateAiding(a1, v7, v10, v5, 1);
    BlueFin::QHsm::tran(a1, BlueFin::GlReqSm::processing, "&GlReqSm::processing");
    return 0;
  }

  v4 = BlueFin::GlReqSm::processing;
  BlueFin::QHsm::tran(a1, BlueFin::GlReqSm::processing, "&GlReqSm::processing");
  return v4;
}

uint64_t BlueFin::GlReqSm::StopRequest(BlueFin::GlReqSm *this, BlueFin::GlRequestImpl *a2)
{
  if (!*(a2 + 4))
  {
    BlueFin::GlReqSm::StartWarmStandBy(this);
  }

  *(this + 4148) = a2;
  v4 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
  GlCustomLog(14, "GlReqSm: Received StopRequest For %s\n", v4);

  return BlueFin::GlQueue::putFIFO((this + 40), 8, 0);
}

uint64_t BlueFin::GlReqSm::StartWarmStandBy(BlueFin::GlReqSm *this)
{
  result = BlueFin::QHsm::isIn(this, BlueFin::GlReqSm::host_based_positioning);
  if (result)
  {
    v5 = *(this + 784);
    v6 = *(v5 + 848);
    v7 = *(v5 + 852);
    if (v6)
    {
      *(this + 13637) = *(*(this + 792) + 8);
      *(this + 3957) = this;
      BlueFin::GlTimer::arm((this + 31624), 28, 0, v6);
      *(this + 31648) = 1;
      result = GlCustomLog(14, "Start Warm Standby Timer1: %ums Ignore 0x%x\n", v6, *(this + 13637));
    }

    if (v7)
    {
      *(this + 13637) = *(*(this + 792) + 8);
      *(this + 3962) = this;
      BlueFin::GlTimer::arm((this + 31664), 29, 0, v7);
      *(this + 31688) = 1;
      result = GlCustomLog(14, "Start Warm Standby Timer2: %ums Ignore 0x%x\n", v7, *(this + 13637));
    }

    if (v7 | v6)
    {
      v8 = *(**(this + 799) + 272);
      v3.n128_u64[0] = 0;
      v4.n128_u64[0] = 0;

      return v8(v3, v4);
    }
  }

  return result;
}

unint64_t BlueFin::GlReqSm::StopAllRequests(BlueFin::GlReqSm *this, int a2)
{
  v5 = 9;
  if (a2)
  {
    HIBYTE(v5) = 1;
    BlueFin::GlTimer::disarm(this + 3953);
    BlueFin::GlTimer::disarm(this + 3958);
    BlueFin::GlTimer::disarm(this + 3969);
  }

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

uint64_t (*BlueFin::GlReqSm::initialize_location_hub(BlueFin::GlReqSm *this, uint64_t a2))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      *(this + 6705) = this;
      BlueFin::GlTimer::arm((this + 53608), 31, 0, 5u);
      result = 0;
      *(this + 53632) = 1;
      goto LABEL_9;
    case 3:
      BlueFin::GlTimer::disarm(this + 6701);
      goto LABEL_29;
    case 6:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x29:
    case 0x32:
    case 0x33:
    case 0x35:
    case 0x36:
      return result;
    case 7:
      result = 0;
      *(this + 54568) = 1;
      return result;
    case 8:
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *(this + 4148));
      goto LABEL_29;
    case 9:
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      BlueFin::GlPeReqBag::TerminateAll((this + 10880));
      result = 0;
LABEL_9:
      *(this + 54568) = 0;
      return result;
    case 0xA:
    case 0x31:
      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      goto LABEL_29;
    case 0xC:
      BlueFin::GlReqSm::ProcessChipData(this, a2);
      goto LABEL_29;
    case 0x1F:
      if (!*(a2 + 1))
      {
        v12 = 100000;
        if ((*(this + 3048) & 0x100) == 0)
        {
          if (BlueFin::GlPePendingBag::HasReq(this + 6496, 8))
          {
            v12 = 100000;
          }

          else
          {
            v12 = 30000;
          }
        }

        BlueFin::GlTimer::fireIn((this + 53608), this, 31, 1, v12);
        BlueFin::GlPeLocationHubMgr::StartInitializationProcess(*(this + 4150));
      }

      v13 = *(this + 3048);
      if ((v13 & 0x100) != 0 || BlueFin::GlPePendingBag::HasReq(this + 6496, 8))
      {
        v9 = *(this + 4131);
        GlCustomLog(14, "GlReqSm::initialize_location_hub calling HandleFactoryTestFailure\n");
        if ((v13 & 0x100) == 0)
        {
          BlueFin::GlReqSm::CreateNewReqFromPend(this);
        }

        BlueFin::GlPeReqBag::HandleFactoryTestFailure((this + 10880), v9);
        BlueFin::GlPeReqBag::TerminateAll((this + 10880));
        BlueFin::GlPeReqBag::Cleanup(this + 10880);
      }

      BlueFin::GlQueue::putFIFO((this + 40), 9, 0);
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      *(this + 2712) = 0;
      v10 = *(this + 4149);
      if (*(v10 + 296) == 1)
      {
        v11 = *(v10 + 80);
        if (v11)
        {
          v11(*(v10 + 8), 0);
          *(v10 + 296) = 0;
          v10 = *(this + 4149);
        }
      }

      (*(*v10 + 80))(v10, 6, 0);
      v8 = 2705;
      goto LABEL_27;
    case 0x34:
      if (*(this + 54568) == 1)
      {
        BlueFin::GlQueue::putFIFO((this + 40), 7, 0);
        *(this + 54568) = 0;
      }

      (*(**(this + 784) + 1144))(*(this + 784), 1);
      v4 = "&GlReqSm::retention_check";
      v5 = BlueFin::GlReqSm::retention_check;
      goto LABEL_28;
    case 0x43:
      v6 = *(this + 4149);
      if (*(v6 + 296) == 1)
      {
        v7 = *(v6 + 80);
        if (v7)
        {
          v7(*(v6 + 8), 0);
          *(v6 + 296) = 0;
          v6 = *(this + 4149);
        }
      }

      (*(*v6 + 80))(v6, 6, 0);
      v8 = 2749;
LABEL_27:
      GlCustomLog(11, "GlReqSm::communication breakdown at %s: %d. GLL will be restarted!\n", "initialize_location_hub", v8);
      v4 = "&GlReqSm::restart";
      v5 = BlueFin::GlReqSm::restart;
LABEL_28:
      BlueFin::QHsm::tran(this, v5, v4);
LABEL_29:
      result = 0;
      break;
    default:
      result = BlueFin::QHsm::top;
      break;
  }

  return result;
}

uint64_t (*BlueFin::GlReqSm::restart(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::QHsm::top;
  }

  *(a1 + 108) = 1;
  if (*(a1 + 54033) == 1)
  {
    if ((*(**(a1 + 6272) + 1112))(*(a1 + 6272)))
    {
      v4 = "chip";
    }

    else
    {
      v4 = "host";
    }

    if ((*(**(a1 + 6272) + 1128))())
    {
      v5 = "chip";
    }

    else
    {
      v5 = "host";
    }

    GlCustomLog(13, "GlReqSm::restart: ME switch from on-%s to on-%s required--switching now.\n", v4, v5);
  }

  return 0;
}

uint64_t (*(*(*BlueFin::GlReqSm::wait4nullme(BlueFin::GlReqSm *this, _BYTE *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      *(this + 6700) = this;
      BlueFin::GlTimer::arm((this + 53568), 35, 0, 1u);
      result = 0;
      *(this + 53592) = 1;
      return result;
    case 3:
      v8 = 53608;
      goto LABEL_19;
    case 6:
    case 7:
    case 0xB:
    case 0x12:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x24:
    case 0x26:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
      return result;
    case 8:
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *(this + 4148));
      return 0;
    case 9:
      GlCustomLog(14, "GlReqSm: remove all requests\n");
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      v8 = 31584;
LABEL_19:
      BlueFin::GlTimer::disarm((this + v8));
      return 0;
    case 0xA:
      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      return 0;
    case 0x11:
      if (*(this + 5132) > 0 || *(this + 2712) || *(this + 31608) || *(this + 31648) || *(this + 31688))
      {
        goto LABEL_15;
      }

      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      goto LABEL_25;
    case 0x13:
    case 0x23:
      MinimumPeriod = BlueFin::GlPeReqBag::GetMinimumPeriod((this + 10880));
      *(this + 6705) = this;
      BlueFin::GlTimer::arm((this + 53608), 31, 0, MinimumPeriod + 10000);
      *(this + 53632) = 1;
      v5 = *(this + 785);
      if (*(v5 + 2768) != 1 || (*(v5 + 2568) + 7201002) < 0x3E8)
      {
        goto LABEL_4;
      }

      v9 = *(*(this + 784) + 32);
      if ((v9 & 0x10000) != 0)
      {
        if ((v9 & 0x4000) == 0)
        {
          (*(**(this + 792) + 16))(*(this + 792), 0x10000, 0);
        }

LABEL_4:
        BlueFin::GlReqSm::ProcessNewMeas(this);
LABEL_15:
        BlueFin::GlReqSm::CreateMeJob(this);
        v6 = "&GlReqSm::processing";
        v7 = BlueFin::GlReqSm::processing;
      }

      else
      {
        BlueFin::GlPosEng::SetDeathCause(*(this + 783), 2);
        (*(**(this + 792) + 16))(*(this + 792), 327680, 0);
LABEL_25:
        v6 = "&GlReqSm::standby";
        v7 = BlueFin::GlReqSm::standby;
      }

LABEL_16:
      BlueFin::QHsm::tran(this, v7, v6);
      return 0;
    case 0x1A:
      BlueFin::GlTimer::disarm(this + 3948);
      result = 0;
      *(this + 2712) = 0;
      return result;
    case 0x1F:
    case 0x25:
      BlueFin::GlPosEng::SetDeathCause(*(this + 783), 1);
      BlueFin::GlQueue::putFIFO((this + 40), 9, 0);
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      *(this + 2712) = 0;
      v6 = "&GlReqSm::restart";
      v7 = BlueFin::GlReqSm::restart;
      goto LABEL_16;
    default:
      return BlueFin::GlReqSm::host_based_positioning;
  }
}

uint64_t (*BlueFin::GlReqSm::standby(BlueFin::GlReqSm *this, const char *a2))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      BlueFin::GlReqSm::ToggleCoexGpio(this, 0);
      (*(**(this + 39) + 224))(*(this + 39));
      *(this + 6705) = this;
      BlueFin::GlTimer::arm((this + 53608), 31, 0, 0x4E20u);
      *(this + 53632) = 1;
      bzero(*(this + 866), ((4 * *(this + 6936) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      v8 = (*(this + 845) + 8);
      v9 = 7;
      do
      {
        v10 = *(v8 - 1);
        v11 = *v8;
        v8 += 24;
        bzero(v10, ((4 * v11 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        --v9;
      }

      while (v9);
      bzero(*(this + 860), ((4 * *(this + 6888) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(*(this + 863), ((4 * *(this + 6912) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      if (!(*(**(this + 784) + 1064))())
      {
        return 0;
      }

      v6 = (this + 40);
      v7 = 18;
      goto LABEL_15;
    case 3:
      BlueFin::GlTimer::disarm(this + 6701);
      BlueFin::GlTimer::disarm(this + 6696);
      result = 0;
      *(this + 31744) = 0;
      return result;
    case 6:
    case 7:
    case 0xB:
    case 0x11:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x26:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
      return result;
    case 8:
      BlueFin::GlPeReqBag::TerminateRequest(this + 10880, *(this + 4148));
      BlueFin::GlPeReqBag::Cleanup(this + 10880);
      BlueFin::GlPePendingBag::TerminateRequest(this + 6496, *(this + 4148));
      if (*(this + 5132) > 0)
      {
        return 0;
      }

      v12 = *(this + 1438);
      if (*v12)
      {
        return 0;
      }

      v13 = *(this + 11512);
      if (v13 < 2)
      {
        goto LABEL_23;
      }

      v14 = v13 - 1;
      v15 = v12 + 1;
      break;
    case 9:
      *(this + 2712) = 0;
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      BlueFin::GlPeReqBag::TerminateAll((this + 10880));
      BlueFin::GlPeReqBag::Cleanup(this + 10880);
      return 0;
    case 0xA:
      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      return 0;
    case 0xC:
      BlueFin::GlReqSm::ProcessChipData(this, a2);
      return 0;
    case 0x12:
      if ((*(*(this + 784) + 25964) & 1) == 0)
      {
        goto LABEL_25;
      }

      return 0;
    case 0x1F:
    case 0x25:
      if (((*(**(this + 784) + 1064))(*(this + 784)) & 1) == 0)
      {
        v4 = *(this + 4149);
        if (*(v4 + 296) == 1)
        {
          v5 = *(v4 + 80);
          if (v5)
          {
            v5(*(v4 + 8), 0);
            *(v4 + 296) = 0;
            v4 = *(this + 4149);
          }
        }

        (*(*v4 + 80))(v4, 6, 0);
        GlCustomLog(11, "GlReqSm::communication breakdown at %s: %d. GLL will be restarted!\n", "standby", 4696);
      }

      v6 = (this + 40);
      v7 = 44;
LABEL_15:
      BlueFin::GlQueue::putFIFO(v6, v7, 0);
      return 0;
    case 0x2C:
    case 0x36:
LABEL_25:
      BlueFin::QHsm::tran(this, BlueFin::GlReqSm::restart, "&GlReqSm::restart");
      return 0;
    default:
      return BlueFin::QHsm::top;
  }

  while (!*v15++)
  {
    if (!--v14)
    {
LABEL_23:
      result = 0;
      *(this + 2712) = 0;
      return result;
    }
  }

  return 0;
}

unint64_t BlueFin::GlReqSm::BypassLteFilter(BlueFin::GlReqSm *this, unsigned __int8 a2)
{
  v5[0] = 68;
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

unint64_t BlueFin::GlReqSm::UpdateLteFilter(BlueFin::GlReqSm *this)
{
  v4 = 71;
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

unint64_t BlueFin::GlReqSm::UpdateL5HardwareDelayInMeters(BlueFin::GlReqSm *this)
{
  v4 = 72;
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

unint64_t BlueFin::GlReqSm::UpdateL5DeltaHardwareDelayInMeters(BlueFin::GlReqSm *this)
{
  v4 = 73;
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

unint64_t BlueFin::GlReqSm::OnRtiReceived(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = 0;
  a57 = *MEMORY[0x29EDCA608];
  a51 = &a30;
  do
  {
    v61 = &a51[v60];
    v62 = &a51[v60];
    *(v62 + 12) = 0;
    *v61 = v62 + 12;
    v61[8] = 2;
    v60 += 24;
  }

  while (v60 != 168);
  for (i = 0; i != 7; ++i)
  {
    BlueFin::GlGnssSet::SetAll(&a30, i);
  }

  for (result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v80, &a30); a25 != 6 || a26 != 14; result = BlueFin::GlGnssSetIterator::operator++(&v80))
  {
    v78 = a25;
    v79 = a26;
    if (!a26)
    {
      DeviceFaultNotify("glreqsm.cpp", 6454, "OnRtiReceived", "*otCurGnss.otGnssId != INVALID_GNSS_ID");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glreqsm.cpp", 6454, "*otCurGnss.otGnssId != INVALID_GNSS_ID");
    }

    v66 = 1 << (a26 - 1);
    v67 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a25];
    if ((*(a2 + 8 + 8 * v67) & v66) == 0 || (*(a2 + 72 + 8 * v67) & v66) == 0)
    {
      continue;
    }

    BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 6288) + 119744), &v78, &v77);
    v70 = v77;
    v71 = (v77 - 1);
    if (a25 != 2)
    {
      if (v71 > 0xBB)
      {
        continue;
      }

LABEL_20:
      if (a3)
      {
        goto LABEL_29;
      }

      if ((*(*(a1 + 54632) + ((v70 >> 3) & 0x1C)) >> (v70 & 0x1F)))
      {
        BlueFin::GlSetBase::Remove(a1 + 54632, v70);
      }

      continue;
    }

    if (v71 <= 0xBB)
    {
      v72 = *(a1 + 6288);
      HIDWORD(v75) = 7;
      v76 = 0;
      BlueFin::GlPeSvIdConverter::SvId2Gnss((v72 + 119744), &v77, &v75 + 4, v68, v69);
      if (SHIDWORD(v75) <= 6 && v76 - 1 < 0x3F && a26 != v76)
      {
        continue;
      }

      goto LABEL_20;
    }

    if (a3)
    {
      HardcodedFcn = BlueFin::GlPeGloFcnOsnMgr::GetHardcodedFcn(a26);
      if (HardcodedFcn != -8)
      {
        if ((HardcodedFcn + 7) >= 0xE)
        {
          LOBYTE(v70) = 0;
        }

        else
        {
          LOBYTE(v70) = HardcodedFcn + 59;
        }

        v77 = v70;
LABEL_29:
        *(*(a1 + 54632) + 4 * (v70 >> 5)) |= 1 << v70;
        continue;
      }
    }
  }

  v74 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlReqSm::SetMIAdjustmentFromApi(uint64_t this, int a2)
{
  v2 = *(this + 54584);
  if (v2)
  {
    if ((*(*(this + 6280) + 2568) - v2) >= 0x1771)
    {
      *(this + 54588) = a2;
      LOBYTE(v2) = a2 != 0;
      v3 = 1;
      goto LABEL_6;
    }

    LOBYTE(v2) = 0;
  }

  v3 = 3;
LABEL_6:
  *(this + 54590) = v2;
  v4 = *(this + 33192);
  v5 = *(v4 + 288);
  if (v5)
  {
    return v5(*(v4 + 8), v3);
  }

  return this;
}

uint64_t BlueFin::GlReqSm::ToggleNotchFilterConfig(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 0;
  v7 = *(a1 + 6272);
  do
  {
    v8 = v7 + v6;
    *(v8 + 1104) = 0;
    *(v8 + 1108) = 0;
    v6 += 8;
  }

  while (v6 != 192);
  result = (*(*v7 + 328))(v7, a2, a3);
  if (v3)
  {
    v10 = 0;
    do
    {
      result = GlCustomLog(15, "GlReqSm::Toggle Notch Filter %d Band %d FreqHz %d LC %d\n", v10++, *v4, *(v4 + 1), v4[1]);
      v4 += 8;
    }

    while (v3 != v10);
  }

  *(a1 + 108) = 1;
  return result;
}

BOOL GlReqSm_lowPowerAllowed(_BYTE *a1)
{
  result = 0;
  if (a1[3] == 1 && a1[9] == 1)
  {
    v1 = a1[36];
    if (a1[11] == 1)
    {
      v4 = __OFSUB__(v1, 7);
      v2 = v1 == 7;
      v3 = v1 - 7 < 0;
    }

    else
    {
      v4 = 0;
      v2 = 1;
      v3 = 0;
    }

    if (!(v3 ^ v4 | v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlReqSm::SetDwellPeriodMs(BlueFin::GlReqSm *this, int a2, int a3)
{
  v4 = a2;
  v6 = this + 0x8000;
  v7 = 70;
  if (a2)
  {
    v7 = 84;
  }

  GlCustomLog(14, "GlReqSm::SetDwellPeriodMs: LMS:%u  bSet:%c  DwellPeriodMs:%d", *(*(this + 785) + 2568), v7, a3);
  if (v4)
  {
    *(v6 + 91) = GlReqSm_lowPowerAllowed;
    BlueFin::GlPePwrStateMgr::EnableLowPower((this + 33216), 1u);
    v6[657] = 1;
    GlCustomLog(14, "GlPePwrStateMgr::EnablePedestrianLowPower %s\n", "True");
    BlueFin::GlPePwrStateMgr::EnableLowPower((this + 33216), 1u);
    if (200 * ((21474837 * (a3 + 100)) >> 32))
    {
      v8 = (5243 * ((200 * ((21474837 * (a3 + 100)) >> 32)) >> 3)) >> 17;
    }

    else
    {
      v8 = 1;
    }

    GlCustomLog(14, "  DwellBlocks:%d\n", v8);
    v9 = *(**(this + 39) + 144);

    return v9();
  }

  else
  {
    *(v6 + 91) = 0;
    BlueFin::GlPePwrStateMgr::EnableLowPower((this + 33216), 0);

    return GlCustomLog(14, "\n");
  }
}

uint64_t BlueFin::GlReqSm::SetMeasurementIntervalSec(BlueFin::GlReqSm *this, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = 70;
  if (a2)
  {
    v6 = 84;
  }

  GlCustomLog(14, "GlReqSm::SetMeasurementIntervalSec: LMS:%u  bSet:%c  MeasurementIntervalSec:%d\n", *(*(this + 785) + 2568), v6, a3);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  result = (*(**(this + 39) + 152))(*(this + 39), a2, 1, v3);
  *(this + 54616) = v3;
  return result;
}

BlueFin::GlFormat *BlueFin::GlReqSm::ReportDump(BlueFin::GlReqSm *this)
{
  v2 = (this + 54845);
  *(this + 54845) = 0u;
  *(this + 54861) = 0u;
  v3 = *(this + 1438);
  if (*v3)
  {
LABEL_2:
    v4 = 101;
    goto LABEL_8;
  }

  v5 = *(this + 11512);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = v3 + 1;
    do
    {
      if (*v7++)
      {
        goto LABEL_2;
      }
    }

    while (--v6);
  }

  v4 = 69;
LABEL_8:
  v9 = *(this + 31608);
  v10 = *(this + 31648);
  v11 = *(this + 31688);
  v12 = (*(**(this + 784) + 1112))(*(this + 784));
  InternalWarmStandbyPeriodIfAllowed = BlueFin::GlPeReqBag::GetInternalWarmStandbyPeriodIfAllowed(this + 10880);
  if (BlueFin::GlReqSm::ShouldTransitionToInternalWarmStandby(this, InternalWarmStandbyPeriodIfAllowed))
  {
    v15 = 73;
  }

  else
  {
    v15 = 105;
  }

  v16 = 111;
  if (v12)
  {
    v16 = 79;
  }

  v22 = v15;
  v21 = v16;
  v17 = 65;
  if (v11)
  {
    v18 = 65;
  }

  else
  {
    v18 = 97;
  }

  if (v10)
  {
    v19 = 65;
  }

  else
  {
    v19 = 97;
  }

  if (!v9)
  {
    v17 = 97;
  }

  BlueFin::GlFormat::glsnprintf(v2, 0x20, "%c%c%c%c%c%c%c", v14, v4, v17, v19, v18, v21, 104, v22);
  return v2;
}

uint64_t BlueFin::GlReqSm::SetBlankingConfigOnTheFly(uint64_t a1, int *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v15 = 0;
  v2 = a2[2];
  v3 = *a2;
  if (*a2 <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          goto LABEL_80;
        }

        v5 = a2[1];
        if (v5 <= 2)
        {
          if (v5 != 1 && v5 != 2)
          {
            goto LABEL_80;
          }
        }

        else if (v5 != 3)
        {
          if (v5 == 5)
          {
            v5 = 6;
          }

          else
          {
            if (v5 != 6)
            {
              goto LABEL_80;
            }

            v5 = 7;
          }
        }

        LODWORD(v14) = v5;
        goto LABEL_80;
      }

      v10 = a2[1];
      if (v10 <= 2)
      {
        if (v10 != 1 && v10 != 2)
        {
          goto LABEL_80;
        }
      }

      else if (v10 != 3)
      {
        if (v10 == 5)
        {
          v10 = 6;
        }

        else
        {
          if (v10 != 6)
          {
            goto LABEL_80;
          }

          v10 = 7;
        }
      }

      HIDWORD(v13) = v10;
      goto LABEL_80;
    }

    v7 = a2[1];
    if (v7 <= 2)
    {
      if (v7 != 1 && v7 != 2)
      {
        goto LABEL_80;
      }
    }

    else if (v7 != 3)
    {
      if (v7 == 5)
      {
        v7 = 6;
      }

      else
      {
        if (v7 != 6)
        {
          goto LABEL_80;
        }

        v7 = 7;
      }
    }

    LODWORD(v13) = v7;
    goto LABEL_80;
  }

  if (v3 > 4)
  {
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        goto LABEL_80;
      }

      v6 = a2[1];
      if (v6 <= 2)
      {
        if (v6 != 1 && v6 != 2)
        {
          goto LABEL_80;
        }
      }

      else if (v6 != 3)
      {
        if (v6 == 5)
        {
          v6 = 6;
        }

        else
        {
          if (v6 != 6)
          {
            goto LABEL_80;
          }

          v6 = 7;
        }
      }

      v16 = v6;
      goto LABEL_80;
    }

    v9 = a2[1];
    if (v9 <= 2)
    {
      if (v9 != 1 && v9 != 2)
      {
        goto LABEL_80;
      }
    }

    else if (v9 != 3)
    {
      if (v9 == 5)
      {
        v9 = 6;
      }

      else
      {
        if (v9 != 6)
        {
          goto LABEL_80;
        }

        v9 = 7;
      }
    }

    HIDWORD(v15) = v9;
    goto LABEL_80;
  }

  if (v3 == 3)
  {
    v8 = a2[1];
    if (v8 <= 2)
    {
      if (v8 != 1 && v8 != 2)
      {
        goto LABEL_80;
      }
    }

    else if (v8 != 3)
    {
      if (v8 == 5)
      {
        v8 = 6;
      }

      else
      {
        if (v8 != 6)
        {
          goto LABEL_80;
        }

        v8 = 7;
      }
    }

    HIDWORD(v14) = v8;
    goto LABEL_80;
  }

  if (v3 == 4)
  {
    v4 = a2[1];
    if (v4 <= 2)
    {
      if (v4 == 1 || v4 == 2)
      {
        goto LABEL_73;
      }
    }

    else
    {
      switch(v4)
      {
        case 3:
LABEL_73:
          LODWORD(v15) = v4;
          break;
        case 5:
          v4 = 6;
          goto LABEL_73;
        case 6:
          v4 = 7;
          goto LABEL_73;
      }
    }
  }

LABEL_80:
  result = (*(**(a1 + 312) + 120))(*(a1 + 312), &v13, v2 == 1, 0, 0, *(*(a1 + 6272) + 26004), *(*(a1 + 6272) + 26008), *(*(a1 + 6272) + 26010));
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

int32x4_t BlueFin::GlRequestImpl::GetHdlrParams(BlueFin::GlRequestImpl *this, BlueFin::GlPeReqHdlrParams *a2)
{
  *(a2 + 2) = *(this + 4);
  *(a2 + 6) = *(this + 11);
  *(a2 + 2) = 100;
  *(a2 + 3) = *(this + 28);
  *(a2 + 16) = 0;
  result = vmovl_s16(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default);
  *(a2 + 36) = result;
  *(a2 + 52) = 0x800AF005A001ELL;
  *(a2 + 58) = 0xD0003000D0008;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  return result;
}

uint64_t BlueFin::GlRequestImplBreadcrumb::GetHdlrParams(BlueFin::GlRequestImplBreadcrumb *this, BlueFin::GlPeReqHdlrParams *a2)
{
  HdlrParams = BlueFin::GlRequestImpl::GetHdlrParams(this, a2);
  result = (*(*this + 184))(this, HdlrParams);
  *(a2 + 5) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplPos::GetHdlrParams(BlueFin::GlRequestImplPos *this, BlueFin::GlPeReqHdlrParams *a2)
{
  HdlrParams = BlueFin::GlRequestImpl::GetHdlrParams(this, a2);
  result = (*(*this + 152))(this, HdlrParams);
  v6 = 0;
  *(a2 + 4) = result;
  *(a2 + 36) = vmovl_s16(*(this + 84));
  do
  {
    *(a2 + v6 + 52) = *(this + v6 + 92);
    v6 += 2;
  }

  while (v6 != 14);
  return result;
}

uint64_t BlueFin::GlRequestImplPosPeriodic::GetHdlrParams(BlueFin::GlRequestImplPosPeriodic *this, BlueFin::GlPeReqHdlrParams *a2)
{
  BlueFin::GlRequestImplPos::GetHdlrParams(this, a2);
  result = (*(*this + 184))(this);
  *(a2 + 5) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplPosSingleShot::GetHdlrParams(BlueFin::GlRequestImplPosSingleShot *this, BlueFin::GlPeReqHdlrParams *a2)
{
  BlueFin::GlRequestImplPos::GetHdlrParams(this, a2);
  *(a2 + 16) = (*(*this + 200))(this);
  *(a2 + 17) = *(this + 108) | (2 * *(this + 109)) | (4 * *(this + 110));
  result = (*(*this + 440))(this);
  *(a2 + 19) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplMeas::GetHdlrParams(BlueFin::GlRequestImplMeas *this, BlueFin::GlPeReqHdlrParams *a2)
{
  HdlrParams = BlueFin::GlRequestImpl::GetHdlrParams(this, a2);
  result = (*(*this + 152))(this, HdlrParams);
  *(a2 + 4) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplMeasPeriodic::GetHdlrParams(BlueFin::GlRequestImplMeasPeriodic *this, BlueFin::GlPeReqHdlrParams *a2)
{
  HdlrParams = BlueFin::GlRequestImpl::GetHdlrParams(this, a2);
  *(a2 + 4) = (*(*this + 152))(this, HdlrParams);
  result = (*(*this + 184))(this);
  *(a2 + 5) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplCollectEphemeris::GetHdlrParams(BlueFin::GlRequestImplCollectEphemeris *this, BlueFin::GlPeReqHdlrParams *a2)
{
  HdlrParams = BlueFin::GlRequestImpl::GetHdlrParams(this, a2);
  result = (*(*this + 152))(this, HdlrParams);
  *(a2 + 4) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplFactoryTest::GlRequestImplFactoryTest(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char a6, char a7, int a8, int a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, __int16 a25, __int16 a26, char a27, char a28, char a29, char a30, char a31)
{
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 22) = -1;
  *(a1 + 28) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a3;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1F153F0;
  *(a1 + 8) = a2;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 236) = -255;
  *(a1 + 238) = -1;
  *(a1 + 239) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 255) = 0u;
  *(a1 + 271) = 0;
  *(a1 + 36) = a10;
  if (a29)
  {
    *(a1 + 232) = 0x2000000;
    v32 = 34609152;
  }

  else
  {
    v32 = 1054720;
  }

  if (a14)
  {
    *(a1 + 232) = v32;
    *(a1 + 272) = a14;
  }

  *(a1 + 88) = a4;
  if ((a5 + 7) >= 0xE)
  {
    v33 = 0;
  }

  else
  {
    v33 = a5 + 59;
  }

  *(a1 + 89) = v33;
  *(a1 + 90) = a6;
  *(a1 + 91) = a7;
  *(a1 + 92) = a8;
  *(a1 + 96) = a9;
  *(a1 + 100) = a11;
  *(a1 + 268) = a12;
  *(a1 + 270) = a13;
  *(a1 + 273) = a15;
  *(a1 + 274) = a16;
  *(a1 + 276) = a20;
  *(a1 + 278) = a23;
  *(a1 + 279) = a24;
  *(a1 + 275) = a18;
  *(a1 + 277) = a22;
  if ((a25 + 7) >= 0xE)
  {
    v34 = 0;
  }

  else
  {
    v34 = a25 + 59;
  }

  *(a1 + 280) = v34;
  if ((a26 + 7) >= 0xE)
  {
    v35 = 0;
  }

  else
  {
    v35 = a26 + 59;
  }

  *(a1 + 281) = v35;
  *(a1 + 282) = a27;
  *(a1 + 283) = a31;
  BlueFin::GlRequestImplFactoryTest::Initialize(a1, a1 + 88);
  return a1;
}

uint64_t BlueFin::GlRequestImplFactoryTest::Initialize(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *a2;
  *(a1 + 89) = *(a2 + 1);
  *(a1 + 90) = *(a2 + 2);
  *(a1 + 91) = *(a2 + 3);
  *(a1 + 92) = *(a2 + 4);
  *(a1 + 100) = *(a2 + 12);
  result = BlueFin::GL_FACT_CW_PARAMS::Copy(a1 + 104, a2 + 16);
  v7 = *(a2 + 152);
  *(a1 + 252) = *(a2 + 164);
  *(a1 + 240) = v7;
  *(a1 + 268) = *(a2 + 180);
  *(a1 + 270) = *(a2 + 182);
  *(a1 + 272) = *(a2 + 184);
  *(a1 + 273) = *(a2 + 185);
  v5 = *(a2 + 186);
  *(a1 + 274) = v5;
  v6 = *(a2 + 187);
  *(a1 + 275) = v6;
  LODWORD(v7) = *(a2 + 188);
  *(a1 + 276) = v7;
  v8 = *(a2 + 192);
  *(a1 + 280) = v8;
  v9 = *(a2 + 193);
  *(a1 + 281) = v9;
  v10 = *(a2 + 194);
  *(a1 + 282) = v10;
  v11 = *(a2 + 195);
  *(a1 + 283) = v11;
  *(a1 + 22) = *(a1 + 36);
  v12 = *(a1 + 88);
  if ((v12 - 1) >= 0x20)
  {
    LOBYTE(v12) = -1;
  }

  *(a1 + 88) = v12;
  if (*(a1 + 89) - 52 >= 0xE)
  {
    *(a1 + 89) = -1;
  }

  if ((v8 - 52) >= 0xE)
  {
    *(a1 + 280) = -1;
  }

  if ((v9 - 52) >= 0xE)
  {
    *(a1 + 281) = -1;
  }

  v13 = *(a1 + 90);
  if ((v13 - 1) >= 0x3F)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13 + 75;
  }

  *(a1 + 90) = v14;
  v15 = *(a1 + 91);
  v16 = v15 - 1;
  v17 = v15 - 118;
  if (v16 >= 0x24)
  {
    v17 = -1;
  }

  *(a1 + 91) = v17;
  if (v5 != 255)
  {
    if (v6 <= 4)
    {
      if (v6 == 1)
      {
        if (!v5)
        {
          goto LABEL_35;
        }

        if (v5 >= 0x21)
        {
          if ((v5 + 63) > 9u)
          {
            goto LABEL_35;
          }

          LOBYTE(v5) = v5 - 127;
        }

        goto LABEL_36;
      }

      if (v6 == 4)
      {
        v18 = -127;
        goto LABEL_25;
      }
    }

    else
    {
      switch(v6)
      {
        case 5:
          v18 = 75;
          goto LABEL_25;
        case 6:
          v18 = -118;
          goto LABEL_25;
        case 7:
          v18 = -82;
LABEL_25:
          LOBYTE(v5) = v18 + v5;
          if (!v5)
          {
            goto LABEL_35;
          }

          if (v5 >= 0x21u)
          {
            if (v5 >= 0x8Bu)
            {
              if (v5 < 0xBDu)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            if (v5 <= 0x41u)
            {
LABEL_35:
              LOBYTE(v5) = -1;
            }
          }

LABEL_36:
          *(a1 + 274) = v5;
          goto LABEL_37;
      }
    }

    DeviceFaultNotify("glrequest.cpp", 569, "Initialize", "0");
    v26 = 569;
LABEL_54:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", v26, "0");
  }

LABEL_37:
  v19 = vmovl_u8(*&v7).u32[0];
  if (!~v19)
  {
    goto LABEL_45;
  }

  if (HIWORD(v19) == 5)
  {
    v20 = 75;
    goto LABEL_42;
  }

  if (HIWORD(v19) != 6)
  {
    DeviceFaultNotify("glrequest.cpp", 624, "Initialize", "0");
    v26 = 624;
    goto LABEL_54;
  }

  v20 = -118;
LABEL_42:
  v21 = v20 + v19;
  if ((v20 + v19 - 76) >= 0x63u)
  {
    v21 = -1;
  }

  *(a1 + 276) = v21;
LABEL_45:
  if (v10 != 255)
  {
    v22 = v10 - 1;
    v23 = v10 - 82;
    if (v22 >= 0xE)
    {
      v23 = -1;
    }

    *(a1 + 282) = v23;
  }

  v24 = (v11 + 63);
  v25 = v11 - 127;
  if (v24 >= 0xA)
  {
    v25 = -1;
  }

  *(a1 + 283) = v25;
  return result;
}

uint64_t BlueFin::GlRequestImplFactoryTest::GlRequestImplFactoryTest(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0xFFFF000100000008;
  *(a1 + 24) = -1;
  *(a1 + 28) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a3;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1F153F0;
  *(a1 + 88) = 0;
  v16 = (a1 + 88);
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 236) = -255;
  *(a1 + 238) = -1;
  *(a1 + 232) = 0;
  *(a1 + 239) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 255) = 0u;
  *(a1 + 36) = -1;
  *(a1 + 96) = 0;
  *(a1 + 100) = -1;
  *(a1 + 88) = -1;
  *(a1 + 90) = -1;
  *(a1 + 274) = -1;
  *(a1 + 276) = -1;
  *(a1 + 280) = -1;
  if ((a9 & 2) != 0)
  {
    *v16 = 1;
  }

  else if ((a9 & 0x20) != 0)
  {
    *(a1 + 89) = 59;
  }

  else
  {
    v20 = xmmword_298A3244C;
    v21 = unk_298A3245C;
    v19[0] = 8;
    v19[1] = 0;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(v19);
      if (BYTE1(v19[0]) == LOBYTE(v19[0]))
      {
        break;
      }

      if (BYTE2(v19[0]) - 81 <= 0x34)
      {
        *(a1 + 90) = BYTE2(v19[0]);
        break;
      }
    }
  }

  *(a1 + 228) = 0;
  *(a1 + 237) = -1;
  *(a1 + 140) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 220) = 0;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 104) = a4;
  *(a1 + 144) = a5;
  *(a1 + 184) = a6;
  if (a7 && a8)
  {
    *(a1 + 224) = 0xF4240 / a7;
    *(a1 + 228) = 0xF4240 / a8 / (0xF4240 / a7);
  }

  v17 = 89;
  if ((a9 & 0x20) == 0)
  {
    v17 = 90;
  }

  if ((a9 & 2) != 0)
  {
    v17 = 88;
  }

  *(a1 + 236) = *(a1 + v17);
  *(a1 + 232) = a9 | 1;
  *(a1 + 239) = a10;
  BlueFin::GlRequestImplFactoryTest::Initialize(a1, v16);
  return a1;
}

uint64_t BlueFin::GlRequestImplGeofence::Destroy(uint64_t this, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(this);
  }

  return this;
}

uint64_t BlueFin::GlRequestImplTimer::Print(uint64_t this, unsigned __int8 a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        if (*(v3 + 64))
        {
          v5 = "";
        }

        else
        {
          v5 = "!";
        }

        BlueFin::GlFormat::glsnprintf(v7, 0x28, "%scbTimer TO=%ums X %u", v4, v5, *(v3 + 76), *(v3 + 72));
        this = BlueFin::GlRequestImpl::Print(v3, a2, v7);
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlRequestImplCntin::Print(BlueFin::GlRequestImplCntin *this, unsigned __int8 a2)
{
  if (*(this + 10))
  {
    v2 = "cbCntin";
  }

  else
  {
    v2 = "!cbCntin";
  }

  return BlueFin::GlRequestImplNmea::Print(this, a2, v2);
}

uint64_t BlueFin::GlRequestImplFactoryTest::Print(uint64_t this, unsigned __int8 a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v4 = "";
        if (*(v3 + 80))
        {
          v5 = "";
        }

        else
        {
          v5 = "!";
        }

        v6 = *(v3 + 275);
        if (v6 - 1) < 6 && ((0x39u >> (v6 - 1)))
        {
          v4 = off_29EEB4360[(v6 - 1)];
        }

        else if (v6 == 7)
        {
          v4 = "NIC";
        }

        v7 = "false";
        if (*(v3 + 272))
        {
          v8 = "true";
        }

        else
        {
          v8 = "false";
        }

        if (*(v3 + 273))
        {
          v9 = "true";
        }

        else
        {
          v9 = "false";
        }

        if ((*(v3 + 232) & 0x2000000) != 0)
        {
          v7 = "true";
        }

        BlueFin::GlFormat::glsnprintf(v11, 0x200, "%scbFactTest SVID(GPS%hd,GLO%hd,BDS%hd,GAL%hd,%sL5a%hd,GLO2%hd,GLO3%hd,NIC%hd,QZSS%hd) items=%d mode=%d DisableFreqOffset=%s EnableExtendedCw=%s 5HzCW=%s", *(v3 + 92), v5, *(v3 + 88), *(v3 + 89), *(v3 + 90), *(v3 + 91), v4, *(v3 + 274), *(v3 + 280), *(v3 + 281), *(v3 + 282), *(v3 + 283), *(v3 + 92), *(v3 + 96), v8, v9, v7);
        this = BlueFin::GlRequestImplNmea::Print(v3, a2, v11);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlRequestImplPos::Print(uint64_t this, unsigned __int8 a2, const char *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v8[0] = 0;
        if (*(v5 + 80) == -1)
        {
          BlueFin::GlFormat::glsnprintf(v8, 0x64, " acc=SmartMask %s", v6, a3);
        }

        else
        {
          BlueFin::GlFormat::glsnprintf(v8, 0x64, " acc=%d %s", v6, *(v5 + 80), a3);
        }

        this = BlueFin::GlRequestImplNmea::Print(v5, a2, v8);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlRequestImplPosSingleShot::Print(uint64_t this, unsigned __int8 a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        if (*(v3 + 109))
        {
          v5 = "Set";
        }

        else
        {
          v5 = "UnSet";
        }

        v6 = "Off";
        if (*(v3 + 110))
        {
          v6 = "On";
        }

        BlueFin::GlFormat::glsnprintf(v8, 0x64, " age=%hu EmergencyReq=%s EarlyExit=%s VerAccacc=%d", v4, *(v3 + 106), v5, v6, *(v3 + 116));
        this = BlueFin::GlRequestImplPos::Print(v3, a2, v8);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

unint64_t BlueFin::GlRequestImplMeasData::Print(unint64_t this, unsigned __int8 a2)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {

        return BlueFin::GlRequestImplNmea::Print(v3, a2, "");
      }
    }
  }

  return this;
}

unint64_t BlueFin::GlRequestImplComStressTest::Print(unint64_t this, unsigned __int8 a2)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {

        return BlueFin::GlRequestImplNmea::Print(v3, a2, "");
      }
    }
  }

  return this;
}

unsigned __int8 *BlueFin::GlRequestImplMeas::Print(unsigned __int8 *this, unsigned __int8 a2, const char *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v6 = v5[88];
        if (v5[89])
        {
          v7 = " preferCoarseTime";
        }

        else
        {
          v7 = "";
        }

        v11 = (*(*v5 + 152))(v5);
        v9 = 65;
        if (v6)
        {
          v9 = 69;
        }

        BlueFin::GlFormat::glsnprintf(v12, 0x64, " MS-%c%s acc=%dm %s", v8, v9, v7, v11, a3);
        this = BlueFin::GlRequestImplNmea::Print(v5, a2, v12);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlRequestImplMeasPeriodic::Print(uint64_t this, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        BlueFin::GlFormat::glsnprintf(v6, 0x32, " per=%u", v4, *(v3 + 96));
        this = BlueFin::GlRequestImplMeas::Print(v3, a2, v6);
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

unsigned __int8 *BlueFin::GlRequestImplMeasSingleShot::Print(unsigned __int8 *this, unsigned __int8 a2)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {

        return BlueFin::GlRequestImplMeas::Print(v3, a2, "");
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlRequestImplPlatformTest::Print(uint64_t this, unsigned __int8 a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v4 = (*(*v3 + 536))(v3);
        BlueFin::GlFormat::glsnprintf(v7, 0x32, " test=%d p0=%d p1=%d p2=%d p3=%d p4=%d p5=%d", v5, *v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
        this = BlueFin::GlRequestImplNmea::Print(v3, a2, v7);
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlRequestImplGetGpsData::Print(uint64_t this, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        BlueFin::GlFormat::glsnprintf(v6, 0x32, "data=0x%x", v4, *(v3 + 88));
        this = BlueFin::GlRequestImplNmea::Print(v3, a2, v6);
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlRequestImplGeofence::Print(uint64_t this, unsigned __int8 a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v5 = "Out";
        v6 = *(v3 + 108);
        if (v6 == 1)
        {
          v5 = "In";
        }

        if (v6 == 4)
        {
          v5 = "Unknown";
        }

        v7 = "I";
        if (!*(v3 + 112))
        {
          v7 = "Uni";
        }

        BlueFin::GlFormat::glsnprintf(v9, 0x3E8, "Geofence{%.6f,%.6f r=%um %sside %snit}", v4, *(v3 + 88), *(v3 + 96), *(v3 + 104), v5, v7);
        this = BlueFin::GlRequestImplNmea::Print(v3, a2, v9);
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GL_FACT_CW_PARAMS::Copy(uint64_t result, uint64_t a2)
{
  for (i = 40; i != 80; i += 4)
  {
    v3 = (result + i);
    *(v3 - 10) = *(a2 + i - 40);
    *v3 = *(a2 + i);
    v3[10] = *(a2 + i + 40);
  }

  *(result + 120) = *(a2 + 120);
  *(result + 124) = *(a2 + 124);
  *(result + 132) = *(a2 + 132);
  *(result + 133) = *(a2 + 133);
  *(result + 134) = *(a2 + 134);
  *(result + 128) = *(a2 + 128);
  *(result + 135) = *(a2 + 135);
  return result;
}

__n128 BlueFin::GlRequestImplPlatformTest::GlRequestImplPlatformTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 11;
  *(a1 + 20) = 1;
  *(a1 + 22) = -1;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a3;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = &unk_2A1F15628;
  *(a1 + 8) = a2;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 86) = 0;
  *(a1 + 228) = -255;
  *(a1 + 230) = -1;
  *(a1 + 224) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 247) = 0u;
  *(a1 + 231) = 0u;
  *(a1 + 260) = 0u;
  result = *a4;
  *(a1 + 244) = *(a4 + 12);
  *(a1 + 232) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplBreadcrumb::GetPeriodMs(BlueFin::GlRequestImplBreadcrumb *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  a2.i32[0] = *(this + 41);
  *a2.i64 = a2.u64[0] * 1000.0;
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
    return --*a2.i64;
  }

  else
  {
    return *a2.i64;
  }
}

uint64_t BlueFin::GlRequestImplBreadcrumb::ReportBatchOptions(BlueFin::GlRequestImplBreadcrumb *this, int a2)
{
  v2 = "Immediate";
  if (a2)
  {
    v2 = "Pending";
  }

  v3 = *(this + 43);
  v4 = " ON_FIFO_FULL";
  if ((v3 & 1) == 0)
  {
    v4 = "";
  }

  v5 = " ON_LOCATION_FIX";
  if ((v3 & 2) == 0)
  {
    v5 = "";
  }

  v6 = " ON_STOP";
  if ((v3 & 0x40) == 0)
  {
    v6 = "";
  }

  v7 = " WAKEUP_FIRST_FIX";
  if ((v3 & 0x400) == 0)
  {
    v7 = "";
  }

  if ((v3 & 0x1000) != 0)
  {
    v8 = " WAKEUP_INDOOR";
  }

  else
  {
    v8 = "";
  }

  return GlCustomLog(14, "Update %s BatchOptions %s%s%s%s%s\n", v2, v4, v5, v6, v7, v8);
}

uint64_t BlueFin::GlRequestImplFactoryTest::Create(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10)
{
  if (!a1)
  {
    DeviceFaultNotify("glrequest.cpp", 1165, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1165, "pvBuffer != nullptr");
  }

  return BlueFin::GlRequestImplFactoryTest::GlRequestImplFactoryTest(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t BlueFin::GlRequestImplFactoryTest::Create(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char a6, char a7, int a8, int a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, __int16 a25, __int16 a26, char a27, char a28, char a29, char a30, char a31)
{
  if (!a1)
  {
    DeviceFaultNotify("glrequest.cpp", 1174, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1174, "pvBuffer != nullptr");
  }

  return BlueFin::GlRequestImplFactoryTest::GlRequestImplFactoryTest(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

__n128 BlueFin::GlRequestImplComStressTest::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __n128 *a6)
{
  if (!a1)
  {
    DeviceFaultNotify("glrequest.cpp", 1241, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1241, "pvBuffer != nullptr");
  }

  *(a1 + 16) = 16;
  *(a1 + 20) = 1;
  *(a1 + 24) = -1;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a3;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = a4;
  *a1 = &unk_2A1F16AF8;
  *(a1 + 8) = a2;
  *(a1 + 22) = a5;
  result = *a6;
  *(a1 + 88) = *a6;
  return result;
}

uint64_t BlueFin::GlRequestImpl::StopAfter(uint64_t this, int a2, int a3, int a4)
{
  if ((a4 & 0x80000000) == 0)
  {
    *(this + 22) = a4;
    *(this + 36) = a4;
  }

  return this;
}

uint64_t BlueFin::GlRequestImplPosPeriodic::StopAfter(uint64_t this, int a2, int a3, int a4)
{
  *(this + 112) = a2;
  *(this + 116) = a3;
  if ((a4 & 0x80000000) == 0)
  {
    *(this + 22) = a4;
    *(this + 36) = a4;
  }

  return this;
}

uint64_t BlueFin::GlRequestImplPosSingleShot::UpdateHulaPosSource(uint64_t this, int a2)
{
  v2 = *(this + 112) | a2;
  if ((~v2 & 3) == 0)
  {
    v2 &= ~1u;
  }

  if ((v2 & 0xC) != 0)
  {
    v2 &= 0xFFFE7FFF;
  }

  if ((~v2 & 0x18000) == 0)
  {
    v2 &= ~0x10000u;
  }

  *(this + 112) = v2;
  return this;
}

uint64_t BlueFin::GlRequestImplPosSingleShot::GetVerAccuracyMeters(BlueFin::GlRequestImplPosSingleShot *this)
{
  v1 = *(this + 29);
  if (v1 <= 0)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

__n128 BlueFin::GlRequestImplGeofence::SetGeofenceData(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 104) = v3;
  *(a1 + 88) = result;
  return result;
}

uint64_t BlueFin::GlRequestImplComStressTest::Destroy(uint64_t this, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(this);
  }

  return this;
}

uint64_t BlueFin::GlRequestImplSyncin::StopAfter(uint64_t this, int a2, int a3, int a4, __int16 a5)
{
  *(this + 112) = a5;
  if ((a4 & 0x80000000) == 0)
  {
    *(this + 22) = a4;
    *(this + 36) = a4;
  }

  return this;
}

uint64_t BlueFin::GlRequestImplCntin::OnCntin(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

BlueFin::GlRequestImplBreadcrumb *BlueFin::GlRequestImplBreadcrumb::GlRequestImplBreadcrumb(BlueFin::GlRequestImplBreadcrumb *this, uint64_t a2, uint64_t a3, __int16 a4, int a5, int a6, int a7, uint64_t a8)
{
  *(this + 4) = 13;
  *(this + 10) = 1;
  *(this + 22) = -1;
  *(this + 28) = -1;
  *(this + 9) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = a3;
  *(this + 32) = 1;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_2A1F17660;
  *(this + 1) = a2;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 41) = a5;
  *(this + 42) = a6;
  *(this + 43) = a7;
  *(this + 22) = a8;
  *(this + 23) = 0;
  *(this + 96) = a4;
  *(this + 194) = 0;
  if (!a5)
  {
    *(this + 41) = 10;
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 26) = -7200001;
  BlueFin::GlRequestImplBreadcrumb::ReportBatchOptions(this, 0);
  return this;
}

uint64_t BlueFin::GlRequestImplGeofence::GlRequestImplGeofence(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned __int8 a6, int a7, int a8, double a9, double a10, double a11, int a12, uint64_t a13)
{
  *(result + 8) = a2;
  *(result + 16) = 0xFFFF00010000000CLL;
  *(result + 24) = -1;
  *(result + 28) = -1;
  *(result + 36) = -1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = a3;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *result = &unk_2A1F15F78;
  *(result + 80) = a4;
  *(result + 88) = a9;
  *(result + 96) = a10;
  *(result + 104) = 0;
  *(result + 108) = a5;
  *(result + 112) = 0;
  *(result + 116) = a6;
  *(result + 120) = a7;
  *(result + 124) = a8;
  *(result + 128) = a12;
  if (a11 >= 1)
  {
    *(result + 104) = a11;
  }

  *(result + 136) = 0;
  *(result + 144) = a13;
  return result;
}

BlueFin::GlRequestImplPos *BlueFin::GlRequestImplPosSingleShot::GlRequestImplPosSingleShot(BlueFin::GlRequestImplPos *this, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int *a8, unsigned __int16 a9, __int16 *a10, char a11, char a12, char a13, int a14)
{
  *(this + 1) = a2;
  *(this + 4) = 1;
  *(this + 10) = 1;
  *(this + 12) = -1;
  *(this + 28) = -1;
  *(this + 9) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = a3;
  *(this + 32) = 1;
  *(this + 9) = 0;
  *(this + 20) = a6;
  *(this + 11) = a5;
  *(this + 92) = 0;
  *(this + 84) = 0;
  *(this + 98) = 0;
  *this = &unk_2A1F15D30;
  *(this + 53) = a4;
  *(this + 108) = a11;
  *(this + 109) = a12;
  *(this + 110) = a13;
  *(this + 28) = 0;
  *(this + 29) = a14;
  if (!a4 && a5 >= 1)
  {
    *(this + 53) = a5;
  }

  BlueFin::GlRequestImplPos::InitSmartMask(this, a9, a10, a7, a8);
  return this;
}

BOOL BlueFin::getRotationMatrix(BlueFin *this, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a3[1];
  v8 = a3[2];
  v9 = (v7 * v6) - (v8 * v5);
  v10 = (v8 * *a2) - (*a3 * v6);
  v11 = (*a3 * v5) - (v7 * *a2);
  v12 = sqrtf(((v10 * v10) + (v9 * v9)) + (v11 * v11));
  if (v12 >= 0.1)
  {
    v13 = v9 * (1.0 / v12);
    v14 = v10 * (1.0 / v12);
    v15 = v11 * (1.0 / v12);
    v16 = sqrtf(((v5 * v5) + (v4 * v4)) + (v6 * v6));
    v17 = v4 * (1.0 / v16);
    v18 = v5 * (1.0 / v16);
    v19 = v6 * (1.0 / v16);
    *this = v13;
    *(this + 1) = v14;
    *(this + 2) = v15;
    *(this + 3) = (v18 * v15) - (v19 * v14);
    *(this + 4) = (v19 * v13) - (v17 * v15);
    *(this + 5) = (v17 * v14) - (v18 * v13);
    *(this + 6) = v17;
    *(this + 7) = v18;
    *(this + 8) = v19;
  }

  return v12 >= 0.1;
}

double BlueFin::getHeading(BlueFin *this, float *a2, float *a3, float *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (BlueFin::getRotationMatrix(v9, this, a2, a4))
  {
    v4 = v10;
    v5 = v11;
    v6 = *MEMORY[0x29EDCA608];

    *&result = atan2f(v4, v5);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0.0;
  }

  return result;
}

uint64_t BlueFin::SensorMagnetometer::updateOri(uint64_t this, int a2, float a3)
{
  if (a3 < 0.0 || a3 > 360.0)
  {
    return this;
  }

  v4 = *(this + 116);
  v5 = a3 - v4;
  if (v5 <= 180.0)
  {
    if (v5 >= -180.0)
    {
      goto LABEL_11;
    }

    v6 = 360.0;
  }

  else
  {
    v6 = -360.0;
  }

  v5 = v5 + v6;
LABEL_11:
  v7 = v4 + v5;
  v8 = (v7 + (v4 * 16.0)) / 17.0;
  v9 = v8 + 360.0;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  if (v8 >= 360.0)
  {
    v10 = v8 + -360.0;
  }

  else
  {
    v10 = v9;
  }

  *(this + 116) = v10;
  v11 = v7 - v10;
  if (v11 <= 180.0)
  {
    v13 = v11;
    if (v11 >= -180.0)
    {
      goto LABEL_21;
    }

    v12 = 360.0;
  }

  else
  {
    v12 = -360.0;
  }

  v13 = v11 + v12;
LABEL_21:
  v14 = (v13 + (*(this + 128) * 16.0)) / 17.0;
  if (v14 <= 180.0)
  {
    if (v14 >= -180.0)
    {
      goto LABEL_26;
    }

    v15 = 360.0;
  }

  else
  {
    v15 = -360.0;
  }

  v14 = v14 + v15;
LABEL_26:
  *(this + 128) = v14;
  v16 = v11 - v14;
  if (v16 > 180.0)
  {
    v17 = -360.0;
LABEL_30:
    v16 = v16 + v17;
    goto LABEL_31;
  }

  if (v16 < -180.0)
  {
    v17 = 360.0;
    goto LABEL_30;
  }

LABEL_31:
  *(this + 124) = (fabsf(v16) + (*(this + 124) * 32.0)) / 33.0;
  ++*(this + 152);
  v18 = *(this + 104);
  if (!v18)
  {
    *(this + 104) = a2;
    v18 = a2;
  }

  *(this + 16) = 1;
  v19 = (a2 - v18) / 0x64u;
  if (v19 == *(this + 112))
  {
    ++*(this + 100);
    *(this + 32) = v7 + *(this + 32);
  }

  else
  {
    v20 = *(this + 108);
    if (v20 <= 15)
    {
      v21 = *(this + 100);
      if (v21 >= 1)
      {
        v22 = 1.0;
        if (v21 != 1)
        {
          v22 = 1.0 / v21;
        }

        *(this + 4 * v20 + 36) = v22 * *(this + 32);
        *(this + 108) = v20 + 1;
      }

      *(this + 112) = v19;
      *(this + 100) = 1;
      *(this + 32) = v7;
    }
  }

  if (*(this + 20) == 0.0)
  {
    *(this + 20) = v7;
  }

  *(this + 28) = a2;
  return this;
}

float BlueFin::SensorMagnetometer::updateAcc(BlueFin::SensorMagnetometer *this, int a2, float a3, float a4, float a5)
{
  *(this + 60) = a3;
  *(this + 61) = a4;
  *(this + 62) = a5;
  *(this + 63) = a2;
  v5 = *(this + 57);
  if (v5 == 0.0)
  {
    v5 = 9.8067;
  }

  v6 = ((a4 * a4) + (a3 * a3)) + (a5 * a5);
  v7 = (sqrtf(v6) + (v5 * 5000.0)) / 5001.0;
  *(this + 57) = v7;
  v8 = v6 - (v7 * v7);
  v9 = sqrtf(v8);
  v10 = v8 <= 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  result = ((v11 - *(this + 33)) + (*(this + 33) * 50.0)) / 51.0;
  *(this + 33) = result;
  return result;
}

uint64_t BlueFin::SensorMagnetometer::updateMag(uint64_t this, uint64_t a2, float a3, float a4, float a5, float *a6, float *a7)
{
  v9 = sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
  v10 = *(this + 176);
  if (v10 == 0.0)
  {
    v10 = v9;
  }

  v11 = (v9 + (v10 * 100.0)) / 101.0;
  *(this + 176) = v11;
  *(this + 180) = v9;
  *(this + 136) = ((v9 - v11) + (*(this + 136) * 10.0)) / 11.0;
  *(this + 184) = 1;
  v12 = *(this + 252) - a2;
  if (v12 < 0)
  {
    v12 = a2 - *(this + 252);
  }

  if (v12 <= 0x3E7)
  {
    v19 = v7;
    v20 = v8;
    v14 = this;
    v18[0] = a3;
    v18[1] = a4;
    v18[2] = a5;
    LODWORD(v18[3]) = a2;
    v16.n128_f64[0] = BlueFin::getHeading((this + 240), v18, a6, a7);
    v15.n128_u32[1] = 1078765020;
    v16.n128_f64[0] = v16.n128_f32[0] * 57.2957795;
    v16.n128_f32[0] = v16.n128_f64[0];
    if (v14[149])
    {
      v16.n128_f32[0] = v16.n128_f32[0] + -90.0;
    }

    v15.n128_u32[0] = 1135869952;
    v17 = v16.n128_f32[0] + 360.0;
    if (v16.n128_f32[0] >= 0.0)
    {
      v17 = v16.n128_f32[0];
    }

    if (v16.n128_f32[0] >= 360.0)
    {
      v16.n128_f32[0] = v16.n128_f32[0] + -360.0;
    }

    else
    {
      v16.n128_f32[0] = v17;
    }

    return (*(*v14 + 16))(v14, a2, v16, v15);
  }

  return this;
}

uint64_t BlueFin::SensorMagnetometer::updateGyr(uint64_t this, float a2, float a3, float a4)
{
  v4 = ((a3 * a3) + (a2 * a2)) + (a4 * a4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(this + 156);
    v7 = *(this + 160);
    v8 = (v6 + 1);
    v9 = sqrtf(v4);
    v10 = (v9 + (*(this + 140) * v6)) / v8;
    *(this + 140) = v10;
    *(this + 164) = (vabds_f32(v10, v9) + (*(this + 164) * v6)) / v8;
    *(this + 168) = v9;
    *(this + 160) = v7 + 1;
    v5 = 1;
  }

  *(this + 172) = v5;
  return this;
}

uint64_t BlueFin::SensorMagnetometer::timeout(BlueFin::SensorMagnetometer *this)
{
  *(this + 39) = *(this + 40);
  *(this + 40) = 0;
  *(this + 38) = 0;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 25);
    if (v1 >= 1)
    {
      v2 = *(this + 27);
      if (v2 <= 15)
      {
        v3 = 1.0;
        if (v1 != 1)
        {
          v3 = 1.0 / v1;
        }

        *(this + v2 + 9) = v3 * *(this + 8);
        *(this + 27) = v2 + 1;
      }
    }
  }

  return 0;
}

uint64_t BlueFin::SensorMagnetometer::fillInfo(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  if (*(*(a1 + 8) + 3) && (v4 = *(a1 + 108), v4))
  {
    if (v4 <= 0)
    {
      v14 = 0.0 / v4;
      v11 = v14;
    }

    else
    {
      v5 = (a1 + 36);
      v6 = 0.0;
      v7 = (a1 + 36);
      v8 = *(a1 + 108);
      do
      {
        v9 = *v7++;
        v6 = v6 + v9;
        --v8;
      }

      while (v8);
      v10 = v4;
      v11 = v6 / v4;
      v12 = 0.0;
      do
      {
        v13 = *v5++;
        v12 = v12 + ((v13 - v11) * (v13 - v11));
        --v4;
      }

      while (v4);
      v14 = v12 / v10;
    }

    v16 = sqrtf(v14);
    if (v16 < 20.0)
    {
      v16 = 20.0;
    }

    v15 = 1;
    *(a2 + 3560) = 1;
    *(*(a2 + 3568) + 8) = 0;
    *(a2 + 32) = 1;
    *a2 = 0x20000000FLL;
    *(a2 + 40) = 0;
    *(a2 + 48) = v11;
    *(a2 + 88) = v16;
    if (*(a2 + 3560))
    {
      (*(**(a2 + 3576) + 16))(*(a2 + 3576), a2 + 3560);
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *(a1 + 8);
  v18 = v17[1];
  if (v17[1])
  {
    v19 = *(a1 + 212);
    if (v19 == 0.0)
    {
      v19 = *(a1 + 116);
      *(a1 + 212) = v19;
    }

    v20 = *(a1 + 128);
    v21 = v20 + *(a1 + 216);
    *(a1 + 216) = v21;
    v22 = *(a1 + 210);
    v23 = *(a1 + 148);
    if (v23)
    {
      v22 = 0;
    }

    *(a1 + 210) = *(a1 + 148);
    if (*(a1 + 256) == 1)
    {
      *(a1 + 211) = 1;
    }

    if (*(a1 + 257))
    {
      v24 = 1;
    }

    else
    {
      v25 = *(a1 + 264);
      if (v25 == 0.0)
      {
        v24 = 0;
      }

      else
      {
        v24 = v25 < 6.0;
        *(a1 + 257) = v24;
      }
    }

    v26 = *(a1 + 209);
    if (v26 == 1 && (v23 & 1) == 0)
    {
      ++*(a1 + 204);
    }

    if (!v24 || *(a1 + 258) != 1)
    {
LABEL_53:
      if (*(a1 + 100) < 1 || (v23 & 1) != 0 || (v39 = *(a1 + 124), v39 > 20.0) || *(a1 + 132) > 2.0 || fabsf(*(a1 + 136)) > 8.0)
      {
LABEL_58:
        v40 = 0;
        goto LABEL_59;
      }

      v52 = fabsf(v20);
      if (v52 >= (v39 + 6.0))
      {
        *(a1 + 208) = 1;
      }

      else if ((*(a1 + 208) & 1) == 0)
      {
        goto LABEL_108;
      }

      v53 = v19 - *(a1 + 116);
      if (v53 <= 180.0)
      {
        if (v53 >= -180.0)
        {
          goto LABEL_106;
        }

        v54 = 360.0;
      }

      else
      {
        v54 = -360.0;
      }

      v53 = v53 + v54;
LABEL_106:
      if (fabsf(v53) > 45.0)
      {
        *(a1 + 208) = 256;
        v40 = 2;
        goto LABEL_117;
      }

LABEL_108:
      v40 = 0;
      if (v52 > (v39 + 3.0) || fabsf(v21) > 15.0)
      {
        goto LABEL_59;
      }

      if (fabsf(*(a1 + 200)) > 15.0)
      {
        goto LABEL_58;
      }

      if (((v24 | v26 ^ 1) & 1) == 0)
      {
        v55 = *(a1 + 211) ? 30 : 0;
        if (*(a1 + 204) <= v55)
        {
          goto LABEL_58;
        }
      }

      *(a1 + 212) = *(a1 + 116);
      *(a1 + 208) = 0;
      *(a1 + 211) = 0;
      v40 = 1;
LABEL_117:
      *(a1 + 204) = 0;
LABEL_59:
      if (*(a1 + 184))
      {
        v41 = *(a1 + 185) == 0;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v40;
      }

      *(a1 + 184) = 0;
      if (*(a1 + 172) != 1)
      {
        goto LABEL_78;
      }

      if (v17[2] == 1 && *(a1 + 164) < 11.4591559)
      {
        v43 = *(a1 + 140);
        if (v43 <= 28.6478898)
        {
          if (v43 >= 5.72957795)
          {
            goto LABEL_74;
          }

          v44 = v42 == 2;
        }

        else
        {
          v44 = v42 == 1;
        }

        if (v44)
        {
          v42 = 0;
        }
      }

LABEL_74:
      if (v17[3] == 1 && *(a1 + 164) < 11.4591559)
      {
        v45 = *(a1 + 140);
        if (v45 > 11.4591559)
        {
          v42 = 2;
          goto LABEL_79;
        }

        if (v45 < 5.72957795)
        {
          v42 = 1;
LABEL_79:
          v46 = *(a1 + 236);
          *(a1 + 236) = v46 + 1;
          if (v46 >= 4)
          {
            v47 = v42;
          }

          else
          {
            v47 = 0;
          }

          if (!v22)
          {
            goto LABEL_84;
          }

LABEL_83:
          *(a1 + 216) = 0;
          *(a1 + 210) = 0;
LABEL_84:
          if ((v47 & 1) == 0)
          {
            *(a1 + 216) = 0;
          }

          if (v47 == *(a1 + 224))
          {
            v18 = 0;
          }

          else
          {
            *(a1 + 224) = v47;
            v18 = 1;
            *(a2 + 3560) = 1;
            *(*(a2 + 3568) + 8) = 0;
            *(a2 + 32) = 1;
            *a2 = 0x200000012;
            *(a2 + 40) = 0;
            *(a2 + 48) = *(a1 + 224);
            *(a2 + 88) = -1082130432;
            if (*(a2 + 3560))
            {
              (*(**(a2 + 3576) + 16))(*(a2 + 3576), a2 + 3560);
              v18 = 1;
            }
          }

          goto LABEL_90;
        }

LABEL_95:
        v47 = 0;
        *(a1 + 236) = 0;
        if (!v22)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

LABEL_78:
      if (v42)
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

    v27 = *(a1 + 260);
    *(a1 + 144) = v27;
    v28 = *(a1 + 188);
    if (v28 == 0.0)
    {
      v28 = v27;
    }

    v29 = *(a1 + 196);
    if (v29 == 0.0)
    {
      v29 = *(a1 + 116);
    }

    v30 = v27 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
        goto LABEL_41;
      }

      v31 = 360.0;
    }

    else
    {
      v31 = -360.0;
    }

    v30 = v30 + v31;
LABEL_41:
    if (fabsf(v30) <= 2.0)
    {
      *(a1 + 192) = 0;
      v37 = (a1 + 200);
      v33 = *(a1 + 116);
    }

    else
    {
      v32 = v30 + *(a1 + 192);
      *(a1 + 192) = v32;
      v33 = *(a1 + 116);
      v34 = v33 - v29;
      v35 = v34 + 360.0;
      if (v34 >= -180.0)
      {
        v35 = v34;
      }

      if (v34 > 180.0)
      {
        v36 = v34 + -360.0;
      }

      else
      {
        v36 = v35;
      }

      v37 = (a1 + 200);
      v38 = v36 + *(a1 + 200);
      *(a1 + 200) = v38;
      if (fabsf(v32) <= 45.0 || (*(a1 + 185) & 1) != 0)
      {
        goto LABEL_52;
      }

      *(a1 + 185) = fabsf(v38) > 10.0;
      *(a1 + 192) = 0;
    }

    *v37 = 0;
LABEL_52:
    *(a1 + 196) = v33;
    *(a1 + 188) = v27;
    goto LABEL_53;
  }

LABEL_90:
  v48 = *(a1 + 108);
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v50 < 0 == v49)
  {
    *(a1 + 20) = *(a1 + 4 * v50 + 36);
    *(a1 + 24) = *(a1 + 28);
  }

  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  result = (v18 + v15);
  *(a1 + 112) = 0;
  return result;
}

uint64_t BlueFin::SensorMagnetometer::setFixStatus(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    *(result + 256) = 0;
    *(result + 264) = 0;
    goto LABEL_11;
  }

  if (*(a2 + 4048))
  {
    v2 = *(a2 + 4274) == 0;
  }

  else
  {
    v2 = 1;
  }

  *(result + 256) = v2;
  v3 = *(a2 + 4068) & 2;
  *(result + 257) = v3 != 0;
  v4 = *(a2 + 6976);
  if (v4 < 1000000.0)
  {
    v5 = sqrt(v4) * 57.2957795;
    *(result + 264) = v5;
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_11:
    *(result + 258) = 0;
    goto LABEL_12;
  }

  *(result + 264) = 0;
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v6 = *(a2 + 4208);
  *(result + 258) = *(a2 + 4208) != 0;
  if (!v6)
  {
LABEL_12:
    v7 = 0.0;
    goto LABEL_13;
  }

  v7 = *(a2 + 4216);
LABEL_13:
  *(result + 260) = v7;
  return result;
}

uint64_t BlueFin::GlPeSensorsData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v22 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if (v4 >= 5)
  {
    v15 = "ucVersion >= 1 && ucVersion <= 4";
    DeviceFaultNotify("glpe_sensmgr.cpp", 898, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 4");
    v16 = 898;
    goto LABEL_45;
  }

  v5 = v2;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v6 = *(v1 + 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 < 0x12D)
      {
        v18 = 48;
        v19 = v4;
        v20 = 0x1000000000000;
        v17 = &unk_2A1F092C0;
        v21 = v4;
        if (v4 == 4)
        {
          BlueFin::GlSysLogEntry::PutS16(&v17, v7);
        }

        else
        {
          if (v7 >= 0x100)
          {
            DeviceFaultNotify("glpe_sensmgr.cpp", 913, "SerializeImpl", "otData.sSensNum < 256");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.cpp", 913, "otData.sSensNum < 256");
          }

          BlueFin::GlSysLogEntry::PutU8(&v17, v7);
        }

        if (*v6 < 1)
        {
LABEL_40:
          BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v17, v5, 4);
          goto LABEL_41;
        }

        v8 = 0;
        v9 = *(v6 + 1);
        while (1)
        {
          BlueFin::GlSysLogEntry::PutU8(&v17, *v9);
          BlueFin::GlSysLogEntry::PutU32(&v17, *(v9 + 4));
          v10 = *v9;
          if (*v9 > 5)
          {
            break;
          }

          if (v10 <= 2)
          {
            if (v10 >= 3)
            {
              goto LABEL_37;
            }

LABEL_32:
            BlueFin::GlSysLogEntry::PutF32(&v17, *(v9 + 8));
            v12 = 12;
            v11 = 16;
            goto LABEL_33;
          }

          if (v10 == 3)
          {
            goto LABEL_30;
          }

          if (v10 != 4 && v10 != 5)
          {
            goto LABEL_37;
          }

          if (v19 > 1u)
          {
LABEL_30:
            v11 = 8;
LABEL_34:
            BlueFin::GlSysLogEntry::PutF32(&v17, *(v9 + v11));
          }

LABEL_35:
          ++v8;
          v9 += 20;
          if (v8 >= *v6)
          {
            goto LABEL_40;
          }
        }

        if (v10 > 10)
        {
          if ((v10 - 11) < 3)
          {
            goto LABEL_32;
          }

LABEL_37:
          if (v10 != 10)
          {
            goto LABEL_35;
          }
        }

        else if (v10 != 6)
        {
          if (v10 == 7)
          {
            goto LABEL_32;
          }

          if (v10 != 8)
          {
            goto LABEL_37;
          }
        }

        if (v19 <= 2u)
        {
          goto LABEL_35;
        }

        v12 = 8;
        v11 = 12;
LABEL_33:
        BlueFin::GlSysLogEntry::PutF32(&v17, *(v9 + v12));
        goto LABEL_34;
      }

      v15 = "otData.sSensNum >= 0 && otData.sSensNum <= GL_MAX_SENS_RAW_DATA";
      DeviceFaultNotify("glpe_sensmgr.cpp", 906, "SerializeImpl", "otData.sSensNum >= 0 && otData.sSensNum <= GL_MAX_SENS_RAW_DATA");
      v16 = 906;
    }

    else
    {
      v15 = "m_potData != nullptr";
      DeviceFaultNotify("glpe_sensmgr.cpp", 902, "SerializeImpl", "m_potData != nullptr");
      v16 = 902;
    }

LABEL_45:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.cpp", v16, v15);
  }

LABEL_41:
  v13 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeSensorsData::Deserialize(BlueFin::GlPeSensorsData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 48)
  {
    v12 = "otEntry.eType == GLPE_LOG_ENTRY_RAWSENS";
    DeviceFaultNotify("glpe_sensmgr.cpp", 1003, "Deserialize", "otEntry.eType == GLPE_LOG_ENTRY_RAWSENS");
    v13 = 1003;
    goto LABEL_37;
  }

  v3 = *(a2 + 12);
  if (v3 > 4)
  {
    return 0;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v12 = "m_potData != nullptr";
    DeviceFaultNotify("glpe_sensmgr.cpp", 1011, "Deserialize", "m_potData != nullptr");
    v13 = 1011;
LABEL_37:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.cpp", v13, v12);
  }

  if (v3 == 4)
  {
    S16 = BlueFin::GlSysLogEntry::GetS16(a2);
    *v5 = S16;
    if (S16 >= 301)
    {
      GlCustomLog(11, " OVERFLOW\n");
      return 0;
    }
  }

  else
  {
    S16 = BlueFin::GlSysLogEntry::GetU8(a2);
    *v5 = S16;
  }

  if (S16 >= 1)
  {
    v7 = 0;
    v8 = *(v5 + 1);
    do
    {
      *v8 = BlueFin::GlSysLogEntry::GetU8(a2);
      *(v8 + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
      v9 = *v8;
      if (*v8 <= 5)
      {
        if (v9 > 2)
        {
          if (v9 != 3 && (v9 != 4 && v9 != 5 || *(a2 + 12) <= 1u))
          {
            goto LABEL_27;
          }

          v11 = 8;
        }

        else
        {
          if (v9 >= 3)
          {
            goto LABEL_27;
          }

LABEL_24:
          *(v8 + 8) = BlueFin::GlSysLogEntry::GetF32(a2);
          v10 = 12;
          v11 = 16;
LABEL_25:
          *(v8 + v10) = BlueFin::GlSysLogEntry::GetF32(a2);
        }

        *(v8 + v11) = BlueFin::GlSysLogEntry::GetF32(a2);
        goto LABEL_27;
      }

      if (v9 <= 9)
      {
        if (v9 != 6)
        {
          if (v9 == 7)
          {
            goto LABEL_24;
          }

          if (v9 != 8)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        if ((v9 - 11) < 3)
        {
          goto LABEL_24;
        }

        if (v9 != 10)
        {
          goto LABEL_27;
        }
      }

      if (*(a2 + 12) > 2u)
      {
        v10 = 8;
        v11 = 12;
        goto LABEL_25;
      }

LABEL_27:
      ++v7;
      v8 += 20;
    }

    while (v7 < *v5);
  }

  return 1;
}

uint64_t BlueFin::SensorWheelInfo::update(uint64_t this, unsigned int a2, float a3, float a4, float a5)
{
  v5 = a2 * 0.001;
  if (*(this + 16))
  {
    v6 = *(this + 20);
    if (v5 > v6)
    {
      *(this + 28) = 2.14 / (v5 - v6);
      *(this + 24) = 1;
    }
  }

  *(this + 16) = a2;
  *(this + 20) = v5;
  return this;
}

uint64_t BlueFin::SensorsData::addpressure(uint64_t this, int a2, double a3)
{
  if (fabs(a3 + -1013.25) <= 100.0)
  {
    v3 = *(this + 1952);
    if (v3 <= 8)
    {
      *(this + 8 * v3 + 1832) = a3;
      *(this + 4 * v3 + 1912) = a2;
      ++*(this + 1952);
    }
  }

  return this;
}

uint64_t BlueFin::SensorsData::addtemp(uint64_t result, _OWORD *a2)
{
  v2 = (result + 1816);
  if (*(result + 1828))
  {
    *(result + 1828) = 0;
    *(result + 1960) = 1;
LABEL_3:
    *v2 = *a2;
    *(result + 1828) = 0;
    return result;
  }

  v3 = *(result + 1960);
  v4 = v3 + 1;
  *(result + 1960) = v3 + 1;
  if (!v3)
  {
    goto LABEL_3;
  }

  for (i = 0; i != 12; i += 4)
  {
    *(v2 + i) = *(v2 + i) + ((*(a2 + i) - *(v2 + i)) / v4);
  }

  return result;
}

double BlueFin::SensorsData::getPressure(BlueFin::SensorsData *this, unsigned int a2)
{
  if (*(this + 488) < a2)
  {
    DeviceFaultNotify("glpe_sensors_mgr.h", 142, "getPressure", "i <= m_ulPressureIdx");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensors_mgr.h", 142, "i <= m_ulPressureIdx");
  }

  return *(this + a2 + 229);
}

uint64_t BlueFin::SensorsData::getPressureTimeMs(BlueFin::SensorsData *this, unsigned int a2)
{
  if (*(this + 488) < a2)
  {
    DeviceFaultNotify("glpe_sensors_mgr.h", 145, "getPressureTimeMs", "i <= m_ulPressureIdx");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensors_mgr.h", 145, "i <= m_ulPressureIdx");
  }

  return *(this + a2 + 478);
}

uint64_t BlueFin::GlSettingsImpl::SetFarStart(uint64_t this, char a2, int a3, int a4, int a5, int a6, int a7)
{
  *(this + 796) = a2;
  *(this + 800) = a3;
  *(this + 804) = a4;
  *(this + 808) = a5;
  *(this + 812) = a6;
  *(this + 816) = a7;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetSvIdSupported(BlueFin::GlSettingsImpl *this, const BlueFin::GlSvIdSet *a2)
{
  BlueFin::GlSetBase::operator=(this + 208, a2);
  v4 = 0;
  v5 = *(a2 + 12);
  *(this + 236) = *(a2 + 28);
  *(this + 220) = v5;
  v22 = *(this + 263);
  v23 = *(this + 268);
  v24 = *(this + 267);
  v25 = *(this + 269);
  do
  {
    v6 = &BlueFin::GlSvIdSet::csm_aulGlSvIdSet[2 * v4];
    if (*(&v22 + v4) == 1)
    {
      v18 = &v20;
      v19 = 8;
      v7 = v6[1];
      v20 = *v6;
      v21 = v7;
      BlueFin::GlSvIdSet::operator~(&v18, &v26);
      BlueFin::GlSetBase::operator&=(this + 208, &v26);
    }

    v15 = v17;
    v16 = 8;
    v8 = v6[1];
    v17[0] = *v6;
    v17[1] = v8;
    BlueFin::GlSetBase::GlSetBase(&v18, &v20, 8u, this + 26);
    v26 = &v28;
    v27 = 8;
    v28 = 0u;
    v29 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v18, &v26, &v15);
    result = BlueFin::GlSetBase::operator=(&v18, &v26);
    v20 = v28;
    v21 = v29;
    if (*v18)
    {
      v10 = 1;
    }

    else
    {
      v11 = v19 - 2;
      if (v19 < 2uLL)
      {
        v10 = 0;
      }

      else
      {
        v12 = v18 + 1;
        do
        {
          v13 = *v12++;
          v10 = v13 != 0;
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = v11 == 0;
          }

          --v11;
        }

        while (!v14);
      }
    }

    *(this + v4++ + 276) = v10;
  }

  while (v4 != 7);
  return result;
}

uint64_t BlueFin::GlSettingsImpl::SetPlatformSpecificFlags(uint64_t this, int a2)
{
  if (!a2)
  {
    *(this + 32) = 0;
    return this;
  }

  if ((~a2 & 3) == 0)
  {
    v2 = "(!otPsfSS) || (otPsfSS == PSF_SIGNAL_STRENGTH_REFERENCE) || (otPsfSS == PSF_SIGNAL_STRENGTH_HIGH) ||(otPsfSS == PSF_SIGNAL_STRENGTH_LOW)";
    DeviceFaultNotify("glsettings.cpp", 1070, "SetPlatformSpecificFlags", "(!otPsfSS) || (otPsfSS == PSF_SIGNAL_STRENGTH_REFERENCE) || (otPsfSS == PSF_SIGNAL_STRENGTH_HIGH) ||(otPsfSS == PSF_SIGNAL_STRENGTH_LOW)");
    v3 = 1070;
    goto LABEL_11;
  }

  if ((a2 & 0x10) != 0 && (a2 & 0x18) != 0x10)
  {
    v2 = "(!otPsfClkVar) || (otPsfClkVar == PSF_CLOCK_VARIATION_REFERENCE) || (otPsfClkVar == PSF_CLOCK_VARIATION_MEDIUM) ||(otPsfClkVar == PSF_CLOCK_VARIATION_HIGH)";
    DeviceFaultNotify("glsettings.cpp", 1073, "SetPlatformSpecificFlags", "(!otPsfClkVar) || (otPsfClkVar == PSF_CLOCK_VARIATION_REFERENCE) || (otPsfClkVar == PSF_CLOCK_VARIATION_MEDIUM) ||(otPsfClkVar == PSF_CLOCK_VARIATION_HIGH)");
    v3 = 1073;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", v3, v2);
  }

  *(this + 32) = a2;
  if ((a2 & 0x18) != 0)
  {
    *(this + 904) = 0x4008000000000000;
  }

  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetL5HardwareDelayInMeters(uint64_t this, float a2)
{
  *(this + 917) = 1;
  *(this + 984) = a2;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetGgtoInNs(uint64_t this, float a2)
{
  *(this + 919) = 1;
  *(this + 992) = a2;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetPrecisePositionMode(uint64_t result, int a2)
{
  *(result + 44) = a2;
  if (a2)
  {
    *(result + 265) = 1;
  }

  return result;
}

uint64_t BlueFin::GlSettingsImplData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 16;
  }

  if (v4 >= 0x11)
  {
    DeviceFaultNotify("glsettings.cpp", 1325, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 16");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1325, "ucVersion >= 1 && ucVersion <= 16");
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v5 = v2;
    v6 = v1;
    v11 = 26;
    v12 = v4;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v4;
    if (v4 < 0xD)
    {
      BlueFin::GlSysLogEntry::PutU32(&v10, *(v1 + 8));
      if (v4 < 2)
      {
LABEL_22:
        if (v12 >= 0xCu)
        {
          BlueFin::GlSysLogEntry::PutS16(&v10, *(v6 + 60));
          if (v12 >= 0xFu)
          {
            BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 64));
            BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 68));
            BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 72));
            if (v12 >= 0x10u)
            {
              BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 76));
            }
          }
        }

        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
        goto LABEL_27;
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU8(&v10, *(v1 + 62));
      BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 8));
    }

    BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 17));
    if (v4 != 2)
    {
      BlueFin::GlSysLogEntry::PutU32(&v10, 0);
      if (v4 >= 4)
      {
        BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 12));
        if (v4 != 4)
        {
          BlueFin::GlSysLogEntry::PutU32(&v10, *(v6 + 20));
          if (v4 >= 6)
          {
            v7 = v4 >= 9 ? *(v6 + 24) : *(v6 + 24) & 0xFFFFFBDF | (((*(v6 + 24) >> 5) & 1) << 10);
            BlueFin::GlSysLogEntry::PutU32(&v10, v7);
            if (v4 != 6)
            {
              BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 28));
              if (v4 >= 8)
              {
                BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 32));
                if (v4 >= 0xA)
                {
                  BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 36));
                  BlueFin::GlSysLogEntry::PutU8(&v10, *(v6 + 40));
                  if (v4 != 10)
                  {
                    BlueFin::GlSysLogEntry::PutF32(&v10, *(v6 + 44));
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_27:
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlSettingsImplData::Deserialize(BlueFin::GlSettingsImplData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 26)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 17 < 0xFFFFFFF0)
  {
    return 0;
  }

  if (v3 < 0xD)
  {
    U8 = 0;
  }

  else
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  *(this + 62) = U8;
  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) < 2u || (*(this + 16) = BlueFin::GlSysLogEntry::GetU32(a2) != 0, *(this + 17) = BlueFin::GlSysLogEntry::GetU32(a2) != 0, *(a2 + 12) < 3u) || (BlueFin::GlSysLogEntry::GetU32(a2), *(a2 + 12) < 4u) || (*(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2), *(a2 + 12) <= 4u))
  {
    *(this + 5) = 0;
    goto LABEL_24;
  }

  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) < 6u)
  {
LABEL_24:
    *(this + 6) = 0;
LABEL_25:
    *(this + 7) = 1;
    goto LABEL_26;
  }

  U32 = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = U32;
  v8 = *(a2 + 12);
  if (v8 < 9)
  {
    *(this + 6) = (U32 >> 5) & 0x20 | U32 & 0xFFFFFBDF;
    if (v8 <= 6)
    {
      goto LABEL_25;
    }
  }

  *(this + 7) = BlueFin::GlSysLogEntry::GetU8(a2);
  if (*(a2 + 12) <= 7u)
  {
LABEL_26:
    *(this + 8) = 1082130432;
    goto LABEL_27;
  }

  *(this + 8) = BlueFin::GlSysLogEntry::GetF32(a2);
  if (*(a2 + 12) <= 9u)
  {
LABEL_27:
    *(this + 9) = 0;
    *(this + 10) = 0;
    goto LABEL_28;
  }

  *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetU8(a2);
  if (*(a2 + 12) <= 0xAu)
  {
LABEL_28:
    *(this + 11) = 0;
    goto LABEL_29;
  }

  *(this + 11) = BlueFin::GlSysLogEntry::GetF32(a2);
  if (*(a2 + 12) < 0xCu)
  {
LABEL_29:
    v11 = 1200;
LABEL_30:
    *(this + 30) = v11;
LABEL_31:
    v12 = 0;
    *(this + 8) = 0;
    *(this + 18) = 0;
    goto LABEL_32;
  }

  S16 = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 30) = S16;
  v10 = *(a2 + 12);
  if (v10 <= 0xD && S16 == -1)
  {
    if (v10 == 12)
    {
      v11 = 1200;
    }

    else
    {
      v11 = 1203;
    }

    goto LABEL_30;
  }

  if (v10 <= 0xE)
  {
    goto LABEL_31;
  }

  *(this + 16) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 17) = BlueFin::GlSysLogEntry::GetU32(a2);
  v13 = BlueFin::GlSysLogEntry::GetU32(a2);
  v14 = *(a2 + 12);
  *(this + 18) = v13;
  if (v14 < 0x10)
  {
    v12 = 0;
  }

  else
  {
    v12 = BlueFin::GlSysLogEntry::GetU32(a2);
  }

LABEL_32:
  *(this + 19) = v12;
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glsettings.cpp", 1553, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1553, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlSettingsImpl::SetAGCForceValue(uint64_t this, char a2, int a3)
{
  *(this + 1306) = a2;
  *(this + 1308) = a3;
  return this;
}

size_t BlueFin::GlSettingsImpl::SetDbgParam(BlueFin::GlSettingsImpl *this, const char (*a2)[64], const char (*a3)[256])
{
  v3 = *(this + 2890);
  if (v3 >= 32)
  {
    DeviceFaultNotify("glsettings.cpp", 1760, "SetDbgParam", "m_iDbgParam < GL_MAX_DBG_NAME_VALUE_PAIRS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1760, "m_iDbgParam < GL_MAX_DBG_NAME_VALUE_PAIRS");
  }

  strlcpy(this + 64 * v3 + 1319, a2, 0x40uLL);
  result = strlcpy(this + 256 * *(this + 2890) + 3367, a3, 0x100uLL);
  ++*(this + 2890);
  return result;
}

size_t BlueFin::GlSettingsImpl::GetDbgParam(BlueFin::GlSettingsImpl *this, int a2, char (*__dst)[64], char (*a4)[256])
{
  if (*(this + 2890) <= a2)
  {
    DeviceFaultNotify("glsettings.cpp", 1769, "GetDbgParam", "iDbgParam < m_iDbgParam");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1769, "iDbgParam < m_iDbgParam");
  }

  v6 = a2;
  strlcpy(__dst, this + 64 * a2 + 1319, 0x40uLL);

  return strlcpy(a4, this + 256 * v6 + 3367, 0x100uLL);
}

uint64_t BlueFin::GlSettingsImpl::SetDbgMode(uint64_t this, int a2)
{
  if ((a2 - 1) >= 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *(this + 36) = v2;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetOnChipBdsSignalType(uint64_t this, const unsigned __int8 (*a2)[63])
{
  v2 = 0;
  *(this + 26164) = 1;
  do
  {
    *(this + 26097 + v2) = (*a2)[v2];
    ++v2;
  }

  while (v2 != 63);
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetOnChipGpsSignalType(uint64_t this, const unsigned __int8 (*a2)[32])
{
  v2 = 0;
  *(this + 26163) = 1;
  do
  {
    *(this + 26065 + v2) = (*a2)[v2];
    ++v2;
  }

  while (v2 != 32);
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetSearch3G(uint64_t this, const unsigned __int8 (*a2)[3])
{
  for (i = 0; i != 3; ++i)
  {
    *(this + 26160 + i) = (*a2)[i];
  }

  return this;
}

uint64_t BlueFin::GlSettingsImpl::GetOnChipBdsSignalType(uint64_t this, unsigned __int8 (*a2)[63])
{
  for (i = 0; i != 63; ++i)
  {
    (*a2)[i] = *(this + 26097 + i);
  }

  return this;
}

uint64_t BlueFin::GlSettingsImpl::GetOnChipGpsSignalType(uint64_t this, unsigned __int8 (*a2)[32])
{
  for (i = 0; i != 32; ++i)
  {
    (*a2)[i] = *(this + 26065 + i);
  }

  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetForcedSvList(BlueFin::GlSettingsImpl *this, char *__s1)
{
  v62 = *MEMORY[0x29EDCA608];
  memset(v61, 0, sizeof(v61));
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  if (!strcmp(__s1, "all"))
  {
    v35 = *(this + 26);
    v34 = this + 208;
    memset(v35, 255, 4 * v34[8]);
    ULong = BlueFin::GlSetBase::GetULong(v34, 0);
    BlueFin::GlSetBase::SetULong(v34, 0, ULong & 0xFFFFFFFE);
    v37 = (32 * (v34[8] & 0x3F) - 1);
    if (v37 >= 0xBE)
    {
      v38 = 189;
      v39 = -67;
      do
      {
        v40 = v39 & 0x1F;
        if ((v39 & 0x1F) != 0)
        {
          v41 = BlueFin::GlSetBase::GetULong(v34, (v38 >> 5));
          BlueFin::GlSetBase::SetULong(v34, (v38 >> 5), v41 & ~(-1 << v40));
          LOWORD(v38) = v38 - v40;
        }

        else
        {
          BlueFin::GlSetBase::SetULong(v34, (v38 >> 5), 0);
        }

        v39 = v38 + 32;
        v38 = (v38 + 32);
      }

      while (v38 < v37);
    }

    result = 1;
  }

  else
  {
    v4 = strchr(__s1, 91);
    v5 = strchr(__s1, 93);
    result = 0;
    if (v4 && v5)
    {
      v7 = v4 + 1;
      v46 = 91;
      if (v7 >= v5)
      {
        v8 = 1;
LABEL_69:
        *(&v46 + v8) = 93;
        *(this + 26321) = 1;
        result = BlueFin::GlSvIdSet::SetStr(this + 26, &v46);
      }

      else
      {
        v8 = 1;
        do
        {
          v9 = v7;
          do
          {
            v10 = *v9;
            if (v10 != 44 && v10 != 32)
            {
              break;
            }

            ++v9;
          }

          while (v9 < v5);
          v11 = 0;
          do
          {
            v12 = v11;
            v13 = &v9[v11];
            v7 = &v9[v11 + 1];
            if (v7 >= v5)
            {
              break;
            }

            v14 = *v7;
            ++v11;
            v15 = v14 > 0x3A;
            v16 = (1 << v14) & 0x400100100000000;
          }

          while (v15 || v16 == 0);
          v45 = 0;
          *__dst = 0;
          strlcpy(__dst, v9, v12 + 1);
          v18 = __dst[0];
          if (__dst[0] - 65 >= 0x1A)
          {
            if (v9 >= v7)
            {
              v7 = v9;
            }

            else
            {
              do
              {
                v26 = v8;
                v7 = v9 + 1;
                *(&v46 + v8++) = *v9;
                if (v26 > 253)
                {
                  break;
                }
              }

              while (v9++ < v13);
            }
          }

          else
          {
            if (__dst[1] - 65 >= 0x1A)
            {
              v28 = 0;
              while (v18 != BlueFin::GlGnss::GetGnssCharCode(v28))
              {
                if (++v28 == 7)
                {
                  goto LABEL_60;
                }
              }

              v29 = atoi(&__dst[1]);
              if (v28 == 2)
              {
                if (v29 - 1 > 0x17 || *v7 == 58)
                {
                  goto LABEL_60;
                }

                v29 = BlueFin::GlPeGloFcnOsnMgr::GetHardcodedFcn(v29) + 8;
              }

              else if (!v29 || v28 > 6 || v29 > *&asc_298A45A60[4 * v28])
              {
                goto LABEL_60;
              }

              BlueFin::GlFormat::glsprintf(v43, "%d", v30, BlueFin::GlSvId::s_aucGnss2minSvId[v28] + v29 - 1);
            }

            else
            {
              if (v7 != v5)
              {
                v19 = *v7;
                if (v19 != 44 && v19 != 32)
                {
                  goto LABEL_60;
                }
              }

              v20 = 0u;
              v21 = 7;
              do
              {
                AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v20);
                if (!strcmp(__dst, AbbrevGnssName))
                {
                  v21 = v20;
                  goto LABEL_43;
                }

                GnssName = BlueFin::GlGnss::GetGnssName(v20);
                v25 = strcmp(__dst, GnssName);
                if (!v25)
                {
                  v21 = v20;
                }

                if (v20 > 5)
                {
                  break;
                }

                ++v20;
              }

              while (v25);
              if (v21 == 7)
              {
                goto LABEL_60;
              }

LABEL_43:
              BlueFin::GlFormat::glsnprintf(v43, 0xA, "%d:%d", v23, BlueFin::GlSvId::s_aucGnss2minSvId[v21], BlueFin::GlSvId::s_aucGnss2maxSvId[v21]);
            }

            v32 = v43;
            while (1)
            {
              v33 = *v32;
              if (!*v32)
              {
                break;
              }

              ++v32;
              *(&v46 + v8++) = v33;
              if (v8 == 255)
              {
                if (*v32)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }
          }

          if (v7 < v5 && v8 <= 254)
          {
            v31 = *v7++;
            *(&v46 + v8++) = v31;
          }
        }

        while (v7 < v5 && v8 < 255);
LABEL_59:
        if (v8 != 255)
        {
          goto LABEL_69;
        }

LABEL_60:
        result = 0;
      }
    }
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 BlueFin::GlSettingsImpl::SetSpoofCarrierThresh(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  result = *(a2 + 4);
  *(a1 + 26264) = result;
  *(a1 + 26280) = v2;
  *(a1 + 26260) = *a2;
  return result;
}

double BlueFin::GlSettingsImpl::SetAdcCapture(uint64_t a1, uint64_t a2)
{
  *(a1 + 26324) = *a2;
  result = *(a2 + 4);
  *(a1 + 26328) = result;
  return result;
}

uint64_t BlueFin::GlSettingsImpl::SetUartFlowControlSettings(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 >= 3)
  {
    v4 = "eFlowControl == UART_FLOW_CONTROL_DISABLED || eFlowControl == UART_HW_FLOW_CONTROL || eFlowControl == UART_SW_FLOW_CONTROL";
    DeviceFaultNotify("glsettings.h", 147, "SetUartFlowControlSettings", "eFlowControl == UART_FLOW_CONTROL_DISABLED || eFlowControl == UART_HW_FLOW_CONTROL || eFlowControl == UART_SW_FLOW_CONTROL");
    v5 = 147;
    goto LABEL_7;
  }

  if (a2 == 2 && a3 == a4)
  {
    v4 = "eFlowControl != UART_SW_FLOW_CONTROL || (ucXonChar != ucXoffChar)";
    DeviceFaultNotify("glsettings.h", 148, "SetUartFlowControlSettings", "eFlowControl != UART_SW_FLOW_CONTROL || (ucXonChar != ucXoffChar)");
    v5 = 148;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.h", v5, v4);
  }

  *(result + 1312) = a2;
  *(result + 1316) = a3;
  *(result + 1317) = a4;
  return result;
}

_BYTE *BlueFin::GlSettingsImpl::SetBurstMode(_BYTE *this, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  this[834] = a2;
  this[835] = a3;
  this[836] = a4;
  this[837] = a5;
  this[838] = a6;
  this[839] = a7;
  this[840] = a8;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetWarmStandbyTimeoutsMs(uint64_t this, int a2, int a3)
{
  *(this + 848) = a2;
  *(this + 852) = a3;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetBlankingMonitorParams(uint64_t this, int a2, int a3, int a4, __int16 a5, __int16 a6)
{
  *(this + 25996) = a2;
  *(this + 26000) = a3;
  *(this + 26004) = a4;
  *(this + 26008) = a5;
  *(this + 26010) = a6;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetBreadcrumbWakeupDistance(BlueFin::GlSettingsImpl *this, int a2)
{
  *(this + 6494) = a2;
  if (a2)
  {
    return GlCustomLog(14, "BatchOptions WAKE_UP_ON_DISTANCE %u\n", a2);
  }

  return GlCustomLog(14, "BatchOptions DO_NOT_WAKE_UP_ON_DISTANCE\n");
}

uint64_t BlueFin::GlSettingsImpl::SetPowerMode(uint64_t this, char a2, char a3)
{
  *(this + 26222) = a2;
  *(this + 26224) = a3;
  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetEnableCoex(uint64_t this, char a2)
{
  v2 = *(this + 88);
  v3 = v2 > 0x28;
  v4 = (1 << v2) & 0x16000000000;
  if (!v3 && v4 != 0)
  {
    *(this + 26336) = a2;
  }

  return this;
}

uint64_t BlueFin::GlPeBdsUtcModelData::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v13 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 3;
  }

  if ((v3 & 0xFE) != 2)
  {
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 70, "SerializeImpl", "ucVersion == 2 || ucVersion == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 70, "ucVersion == 2 || ucVersion == 3");
  }

  v4 = v1;
  v5 = v0;
  if (v1 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 32;
    v10 = v3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = v3;
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v0 + 8));
    if (v3 >= 3)
    {
      BlueFin::GlSysLogEntry::PutU8(&v8, *(v5 + 12));
    }

    BlueFin::GlSysLogEntry::PutS32(&v8, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutS32(&v8, *(v5 + 20));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v5 + 24));
    BlueFin::GlSysLogEntry::PutU8(&v8, *(v5 + 25));
    BlueFin::GlSysLogEntry::PutU8(&v8, *(v5 + 26));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v5 + 27));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeBdsSysOffsetsData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v13 = *MEMORY[0x29EDCA608];
  if (v3 && v3 != 3)
  {
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 188, "SerializeImpl", "ucVersion == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 188, "ucVersion == 3");
  }

  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 33;
    v10 = 3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = 3;
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU32(&v8, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutU8(&v8, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 20));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 22));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 24));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 26));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 28));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 30));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeBdsSysOffsetsData::Deserialize(BlueFin::GlPeBdsSysOffsetsData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 33)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  if (v3 == 1 || (*(this + 4) = BlueFin::GlSysLogEntry::GetU16(a2), *(a2 + 12) < 3u))
  {
    *(this + 3) = 0;
    U8 = 3;
  }

  else
  {
    *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  *(this + 4) = U8;
  *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 11) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 12) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 13) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 14) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 15) = BlueFin::GlSysLogEntry::GetS16(a2);
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 249);
  return 1;
}

uint64_t BlueFin::GlPeBdsSingleSysOffsetData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
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
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 380, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 380, "ucVersion == 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 34;
    v11 = v4;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v4;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v6 + 32));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

double BlueFin::GlPeBdsTimeMgr::ResetMgr(BlueFin::GlPeBdsTimeMgr *this)
{
  *&result = *(this + 1) & 0xFFFFFFFCFFFFFFFCLL;
  *(this + 1) = result;
  *(this + 9) = 0;
  *(this + 5) = 0;
  return result;
}

double BlueFin::GlPeBdsTimeMgr::ResetModels(BlueFin::GlPeBdsTimeMgr *this)
{
  *&result = *(this + 1) & 0xFFFFFF83FFFFFF83;
  *(this + 1) = result;
  *(this + 10) = 2;
  *(this + 22) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 20) = 2;
  *(this + 42) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 30) = 2;
  *(this + 62) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 40) = 2;
  *(this + 82) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  return result;
}

uint64_t BlueFin::GlPeBdsTimeMgr::OnSystemModeDetermined(uint64_t this, char a2)
{
  *(this + 16) = 1;
  *(this + 17) = a2;
  return this;
}

uint64_t BlueFin::GlPeBdsTimeMgr::Serialize(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if ((v4 & 0x60) != 0)
  {
    if ((v4 & 0x20) != 0)
    {
      v5 = *(result + 44);
      v6 = vrev64_s32(vmovn_s64(vcvtq_s64_f64(vmulq_f64(*(result + 56), xmmword_298A45A80))));
    }

    if ((v4 & 0x40) != 0)
    {
      v7 = *(result + 24);
    }

    result = BlueFin::GlPeBdsUtcModelData::SerializeImpl();
    v4 = *(v3 + 8);
  }

  if ((v4 & 4) != 0)
  {
    result = (*(*(v3 + 72) + 24))(v3 + 72, a2, 0);
    v4 = *(v3 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        return result;
      }

      return (*(*(v3 + 152) + 24))(v3 + 152, a2, 0);
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

  result = (*(*(v3 + 112) + 24))(v3 + 112, a2, 0);
  if ((*(v3 + 8) & 0x10) == 0)
  {
    return result;
  }

  return (*(*(v3 + 152) + 24))(v3 + 152, a2, 0);
}

uint64_t BlueFin::GlPeBdsTimeMgr::SetTime(uint64_t this, int a2, int a3)
{
  v3 = *(this + 8);
  if ((v3 & 2) == 0 || *(this + 20) != a3)
  {
    *(this + 20) = a3;
    v3 |= 2u;
    v4 = *(this + 12) | 2;
    *(this + 8) = v3;
    *(this + 12) = v4;
  }

  if ((v3 & 1) == 0 || *(this + 18) != a2)
  {
    *(this + 18) = a2;
    v5 = *(this + 12) | 1;
    *(this + 8) = v3 | 1;
    *(this + 12) = v5;
  }

  return this;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2GloSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 8) != 0)
  {
    v3 = this;
    v4 = -*(this + 136);
    if (a2)
    {
      if (*(this + 124))
      {
        this = (*(*a2 + 32))(a2);
        LODWORD(v5) = *(a2 + 2);
        *&v6 = v5 * 2.32830644e-10;
        v7 = *&v6 + this;
        LOWORD(v6) = *(v3 + 124);
        v8 = v4 - *(v3 + 144) * (v7 + v6 * -604800.0);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetFctOfFutureLS(BlueFin::GlPeBdsTimeMgr *this, const BlueFin::GlBdsTime *a2, unsigned int *a3)
{
  *a3 = 0;
  if ((*(this + 8) & 0x40) == 0)
  {
    return 0;
  }

  v7 = *(this + 14) - (*(*a2 + 32))(a2) / 0x93A80;
  if (v7 < 0)
  {
    v7 = -v7;
  }

  if ((604800 * v7) > 0x24EA00)
  {
    return 0;
  }

  v8 = (*(*a2 + 32))(a2) / 0x93A80;
  v9 = v8 - *(this + 25);
  if (v9 >= 0)
  {
    v10 = v8 - *(this + 25);
  }

  else
  {
    v10 = *(this + 25) - v8;
  }

  v11 = v9 + 256;
  if (v9 >= -127)
  {
    v11 = v8 - *(this + 25);
  }

  if (v9 >= 128)
  {
    v12 = v9 - 256;
  }

  else
  {
    v12 = v11;
  }

  if (v10 == 128)
  {
    v12 = 0;
  }

  *a3 = *(this + 27) + 86400 * *(this + 26) + 604800 * (v8 - v12) + 86400;
  return 1;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetFutureLS(BlueFin::GlPeBdsTimeMgr *this, const BlueFin::GlBdsTime *a2, signed __int8 *a3)
{
  if ((*(this + 8) & 0x40) == 0)
  {
    return 0;
  }

  v21 = v3;
  v22 = v4;
  v9 = *(this + 14) - (*(*a2 + 32))(a2) / 0x93A80;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  if ((604800 * v9) > 0x24EA00)
  {
    return 0;
  }

  v20 = 0;
  result = BlueFin::GlPeBdsTimeMgr::GetFctOfFutureLS(this, a2, &v20);
  if (result)
  {
    v10 = v20;
    v14 = (*(*a2 + 32))(a2);
    LODWORD(v13) = *(a2 + 2);
    *v14.i64 = v13 * 2.32830644e-10 + v12;
    *v15.i64 = *v14.i64 + trunc(*v14.i64 * 2.32830644e-10) * -4294967300.0;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v17 = vnegq_f64(v16);
    *&v18 = vbslq_s8(v17, v15, v14).u64[0];
    if (*v14.i64 > 4294967300.0)
    {
      *v14.i64 = v18;
    }

    if (*v14.i64 < -4294967300.0)
    {
      *v11.i64 = -*v14.i64;
      *v14.i64 = -(*v14.i64 - trunc(*v14.i64 * -2.32830644e-10) * -4294967300.0);
      *v14.i64 = -*vbslq_s8(v17, v14, v11).i64;
    }

    if (*v14.i64 < 0.0)
    {
      v19 = --*v14.i64;
    }

    else
    {
      v19 = *v14.i64;
    }

    if (v10 < v19)
    {
      return 0;
    }

    *a3 = *(this + 27);
    return 1;
  }

  return result;
}

BlueFin::GlUtcTime *BlueFin::GlDateTime::GlDateTime(BlueFin::GlUtcTime *this, void *a2, int a3)
{
  *this = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        *(this + 1) = *a2;
        v4 = &off_2A1F0E480;
        break;
      case 4:
        *(this + 1) = *a2;
        v4 = &off_2A1F0E4D0;
        break;
      case 5:
        *(this + 1) = *a2;
        v4 = &off_2A1F0DFC8;
        break;
      default:
LABEL_16:
        DeviceFaultNotify("glpe_datetime.cpp", 65, "GlDateTime", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_datetime.cpp", 65, "false");
    }

LABEL_14:
    *this = v4;
    return this;
  }

  if (!a3)
  {
    *(this + 1) = *a2;
    v4 = &off_2A1F0B5F0;
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    *(this + 1) = *a2;
    v4 = &off_2A1F0E430;
    goto LABEL_14;
  }

  if (a3 != 2)
  {
    goto LABEL_16;
  }

  *(this + 1) = *a2;
  *this = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(this);
  return this;
}

double BlueFin::GlDateTime::getByTimeSys@<D0>(double *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 >= 6)
  {
    DeviceFaultNotify("glpe_datetime.cpp", 82, "getByTimeSys", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_datetime.cpp", 82, "false");
  }

  result = *a1;
  *a3 = *a1;
  return result;
}

uint64_t BlueFin::GlPeGalUtcModelData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
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
    DeviceFaultNotify("glpe_galtimemgr.cpp", 143, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galtimemgr.cpp", 143, "ucVersion == 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 95;
    v11 = v4;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v4;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v6 + 30));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 28));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 29));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 31));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 32));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v6 + 33));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGalGpsOffsetData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
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
    DeviceFaultNotify("glpe_galtimemgr.cpp", 272, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galtimemgr.cpp", 272, "ucVersion == 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 96;
    v11 = v4;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v4;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v6 + 22));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 25));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGalTimeMgr::ResetMgr(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  return this;
}

__n128 BlueFin::GlPeGalTimeMgr::ResetModels(BlueFin::GlPeGalTimeMgr *this)
{
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  result = 0u;
  *(this + 36) = 0u;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 44) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 56) = 0;
  *(this + 96) = 0;
  return result;
}

uint64_t BlueFin::GlPeGalTimeMgr::SetGalileoDataPage(uint64_t this, const BlueFin::GlGalileoINavPage *a2)
{
  v2 = this;
  v3 = 0;
  v29 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 5);
  do
  {
    v5 = *(a2 + v3 + 24);
    *(&v26 + v3) = __PAIR64__(v4, v5) >> 30;
    v3 += 4;
    v4 = v5;
  }

  while (v3 != 12);
  v6 = *(a2 + 9);
  HIDWORD(v8) = *(a2 + 8);
  LODWORD(v8) = v6;
  v7 = v8 >> 30;
  v9 = (v6 >> 22) | ((v8 >> 30) << 8);
  v10 = *(a2 + 10);
  if (v10 > 5)
  {
    if (v10 == 6)
    {
      v15 = &unk_2A1F18420;
      v16 = 1;
      v17 = *(this + 10);
      v13 = 1000 * *(this + 12);
      v20 = __PAIR64__(v26, v27) >> 26;
      v18 = v13;
      v19 = (v27 >> 2);
      v23 = (__PAIR64__(v27, v28) >> 2) >> 24;
      v21 = v28 >> 18;
      v22 = v28 >> 10;
      v24 = v28 >> 2;
      v25 = (__PAIR64__(v28, v7) >> 2) >> 29;
      *(&v25 + 1) = (v7 >> 23);
      this = BlueFin::GlPeGalTimeMgr::SetUtcModel(this, &v15);
      if (this && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        this = (*(*(v2 + 16) + 24))(v2 + 16, 0, 0);
      }
    }

    else if (v10 == 10)
    {
      v15 = &unk_2A1F18450;
      v16 = 1;
      v17 = *(this + 10);
      v18 = 1000 * *(this + 12);
      LOWORD(v19) = (__PAIR64__(v28, v7) >> 10) >> 16;
      HIWORD(v19) = ((v9 | v7 & 0xFFFF0000) >> 10) >> 4;
      LOBYTE(v20) = v9 >> 6;
      BYTE1(v20) = (v6 >> 22) & 0x3F;
      this = BlueFin::GlPeGalTimeMgr::SetGpsOffset(this, &v15);
      if (this)
      {
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          this = BlueFin::GlPeGalGpsOffsetData::SerializeImpl(&v15);
        }
      }
    }
  }

  else
  {
    if (*(a2 + 10))
    {
      if (v10 != 5 || (v28 & 0x6800000) != 0)
      {
        goto LABEL_22;
      }

      v11 = (v28 >> 11) & 0xFFF;
      v12 = (__PAIR64__(v28, v7) >> 11) >> 12;
    }

    else
    {
      if ((v26 & 0x3000000) != 0x2000000)
      {
        goto LABEL_22;
      }

      v11 = v7 >> 20;
      v12 = v9 & 0xFFFFF | v7 & 0xF0000;
    }

    if (v12 <= 0x93A7F)
    {
      *(this + 10) = v11;
      *(this + 12) = v12;
      *(this + 8) = 1;
    }
  }

LABEL_22:
  v14 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeGalTimeMgr::Serialize(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  if ((*(this + 24) | 4) != 4)
  {
    this = (*(*(this + 16) + 24))();
  }

  if ((*(v3 + 72) | 4) != 4)
  {
    v4 = *(*(v3 + 64) + 24);

    return v4(v3 + 64, a2, 0);
  }

  return this;
}

uint64_t BlueFin::GlPeGalTimeMgr::GetFctOfFutureLS(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, unsigned int *a3, int8x16_t a4, int8x16_t a5)
{
  *a3 = 0;
  if (!*(this + 6))
  {
    return 0;
  }

  if (BlueFin::GlPeGalTimeMgr::isExpired(this, a2, a4, a5) || *(this + 48) < 1)
  {
    return 0;
  }

  v8 = (*(*a2 + 32))(a2) / 0x93A80;
  v9 = v8 - *(this + 47);
  if (v9 >= 0)
  {
    v10 = v8 - *(this + 47);
  }

  else
  {
    v10 = *(this + 47) - v8;
  }

  v11 = v9 + 256;
  if (v9 >= -127)
  {
    v11 = v8 - *(this + 47);
  }

  if (v9 >= 128)
  {
    v12 = v9 - 256;
  }

  else
  {
    v12 = v11;
  }

  if (v10 == 128)
  {
    v12 = 0;
  }

  *a3 = *(this + 49) + 86400 * *(this + 48) + 604800 * (v8 - v12);
  return 1;
}

BOOL BlueFin::GlPeGalTimeMgr::isExpired(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *(this + 6);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 4)
  {
    return 0;
  }

  v7 = *(this + 14);
  a3.i32[0] = *(this + 8);
  *a3.i64 = a3.u64[0] * 0.001;
  v30 = &off_2A1F0E480;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v8), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
LABEL_32:
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v11 = *a4.i64 * 4294967300.0 + 0.5;
  v12 = v11;
  if (v11 >= 4294967300.0)
  {
    v12 = -1;
  }

  v13 = *a3.i64 + 604800 * v7;
  v31 = v12;
  v32 = v13 + 619315200;
  v30 = &off_2A1F0E480;
  if (v13 < 0x93A80)
  {
    v14 = (*(*a2 + 32))(a2);
    v17 = (v14 / 0x93A80) - *(this + 45);
    if (v17 >= 0)
    {
      v18 = (v14 / 0x93A80) - *(this + 45);
    }

    else
    {
      v18 = *(this + 45) - (v14 / 0x93A80);
    }

    v19 = v17 + 256;
    if (v17 >= -127)
    {
      v19 = (v14 / 0x93A80) - *(this + 45);
    }

    if (v17 >= 128)
    {
      v20 = v17 - 256;
    }

    else
    {
      v20 = v19;
    }

    if (v18 == 128)
    {
      v20 = 0;
    }

    if (*(this + 6))
    {
      *v15.i64 = (*(this + 44) << 12);
    }

    else
    {
      v15.i64[0] = 0;
    }

    *v16.i64 = *v15.i64 - trunc(*v15.i64);
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v16.i64[0] = vbslq_s8(vnegq_f64(v21), v16, v15).i64[0];
    if (*v16.i64 >= 1.0)
    {
      goto LABEL_32;
    }

    v22 = v14 / 0x93A80 - v20;
    v23 = *v16.i64 * 4294967300.0 + 0.5;
    v24 = v23;
    if (v23 >= 4294967300.0)
    {
      v24 = -1;
    }

    v31 = v24;
    v32 = *v15.i64 + 604800 * v22 + 619315200;
  }

  v25 = (*(*a2 + 32))(a2);
  LODWORD(v26) = *(a2 + 2);
  v27 = v26 * 2.32830644e-10 + v25;
  v28 = (v30[4])(&v30);
  LODWORD(v29) = v31;
  return vabdd_f64(v27, v29 * 2.32830644e-10 + v28) > 4838400.0;
}

uint64_t BlueFin::GlPeGalTimeMgr::GetFutureLS(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, signed __int8 *a3, int8x16_t a4, int8x16_t a5)
{
  if (!*(this + 6))
  {
    return 0;
  }

  if (BlueFin::GlPeGalTimeMgr::isExpired(this, a2, a4, a5))
  {
    return 0;
  }

  v21 = 0;
  result = BlueFin::GlPeGalTimeMgr::GetFctOfFutureLS(this, a2, &v21, v8, v9);
  if (result)
  {
    v11 = v21;
    v15 = (*(*a2 + 32))(a2);
    LODWORD(v14) = *(a2 + 2);
    *v15.i64 = v14 * 2.32830644e-10 + v13;
    *v16.i64 = *v15.i64 + trunc(*v15.i64 * 2.32830644e-10) * -4294967300.0;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v18 = vnegq_f64(v17);
    *&v19 = vbslq_s8(v18, v16, v15).u64[0];
    if (*v15.i64 > 4294967300.0)
    {
      *v15.i64 = v19;
    }

    if (*v15.i64 < -4294967300.0)
    {
      *v12.i64 = -*v15.i64;
      *v15.i64 = -(*v15.i64 - trunc(*v15.i64 * -2.32830644e-10) * -4294967300.0);
      *v15.i64 = -*vbslq_s8(v18, v15, v12).i64;
    }

    if (*v15.i64 < 0.0)
    {
      v20 = --*v15.i64;
    }

    else
    {
      v20 = *v15.i64;
    }

    if (v11 < v20)
    {
      return 0;
    }

    *a3 = *(this + 49);
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeGlnTimeData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (v4 >= 4)
  {
    DeviceFaultNotify("glpe_glntimemgr.cpp", 164, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glntimemgr.cpp", 164, "ucVersion >= 1 && ucVersion <= 3");
  }

  v5 = v2;
  if (v4 == 1)
  {
    v10 = 31;
    v11 = 1;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = 1;
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v2, 4);
  }

  else
  {
    v6 = v1;
    v10 = 31;
    v11 = v4;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v4;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 10));
    if (v4 == 3)
    {
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 12));
    }

    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 32));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v6 + 40));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 48));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v6 + 49));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 50));
    BlueFin::GlSysLogEntry::PutF32(&v9, *(v6 + 52));
    BlueFin::GlSysLogEntry::PutF32(&v9, *(v6 + 56));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGlnTimeMgr::CheckGlonassStringTime(BlueFin::GlPeGlnTimeMgr *this, unsigned int a2, int a3)
{
  v6 = *(this + 228);
  v8 = v6 + 112 * a2;
  v9 = (v8 + 96);
  v10 = (v8 + 8 * a3 + 48);
  if (a3 == 14)
  {
    v10 = v9;
  }

  v11 = *v10 * 1000.0;
  v12 = a2 >> 5;
  v13 = 1 << (a2 & 0x1F);
  if ((v13 & *(*(this + 232) + 4 * (a2 >> 5))) != 0)
  {
    v14 = *(v6 + 112 * a2 + 64);
    v15 = v11 + v14 * -1000.0;
    if (v15 <= 0.0)
    {
      v16 = 0.0;
      if (v15 < 0.0)
      {
        v16 = ceil(v15 + -0.5);
      }
    }

    else
    {
      v16 = floor(v15 + 0.5);
    }

    v17 = fmod(v16 + (a3 - 2) * -2000.0, 30000.0);
    v18 = -v17;
    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    if (v18 < 100.0)
    {
      v19 = 1;
      goto LABEL_16;
    }

    v20 = a2 + 52;
    if (a2 >= 0xE)
    {
      v20 = 0;
    }

    GlCustomLog(14, "GlPeGlnTimeMgr(%u)[%u]:  string%d LMS%.f does not match string2 LMS %.f, dDiffModMs %.f\n", v20, **(this + 1), a3, v11, v14 * 1000.0, v17);
  }

  v19 = 0;
LABEL_16:
  if ((v13 & *(*(this + 235) + 4 * v12)) != 0)
  {
    v21 = *(*(this + 228) + 112 * a2 + 72);
    v22 = v11 + v21 * -1000.0;
    if (v22 <= 0.0)
    {
      v23 = 0.0;
      if (v22 < 0.0)
      {
        v23 = ceil(v22 + -0.5);
      }
    }

    else
    {
      v23 = floor(v22 + 0.5);
    }

    v24 = fmod(v23 + (a3 - 3) * -2000.0, 30000.0);
    v25 = -v24;
    if (v24 >= 0.0)
    {
      v25 = v24;
    }

    if (v25 < 100.0)
    {
      return 1;
    }

    v26 = a2 + 52;
    if (a2 >= 0xE)
    {
      v26 = 0;
    }

    GlCustomLog(14, "GlPeGlnTimeMgr(%u)[%u]:  string%d LMS%.f does not match string2 LMS %.f, dDiffModMs %.f\n", v26, **(this + 1), a3, v11, v21 * 1000.0, v24);
  }

  if (a3 > 5)
  {
    v27 = 1;
  }

  else
  {
    v27 = v19;
  }

  if ((v27 & 1) == 0)
  {
    v19 = 0;
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v28 = this + 1832;
      }

      else
      {
        if (a3 != 2)
        {
          return v19;
        }

        v28 = this + 1856;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          v28 = this + 1880;
          break;
        case 4:
          v28 = this + 1904;
          break;
        case 5:
          v28 = this + 1928;
          break;
        default:
          return v19;
      }
    }

    BlueFin::GlSetBase::Remove(v28, a2);
    return 0;
  }

  return v19;
}

uint64_t BlueFin::GlTimeDelta::GlTimeDelta(uint64_t this, double a2)
{
  v2 = fabs(a2);
  v3 = v2 - trunc(v2);
  v4 = v3 * 4294967300.0 + 0.5;
  v5 = v4;
  if (v4 >= 4294967300.0)
  {
    v5 = -1;
  }

  *this = v5;
  if (v3 < 0.0 || v3 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  *(this + 4) = v2;
  *(this + 8) = a2 < 0.0;
  return this;
}

{
  v2 = fabs(a2);
  v3 = v2 - trunc(v2);
  v4 = v3 * 4294967300.0 + 0.5;
  v5 = v4;
  if (v4 >= 4294967300.0)
  {
    v5 = -1;
  }

  *this = v5;
  if (v3 < 0.0 || v3 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  *(this + 4) = v2;
  *(this + 8) = a2 < 0.0;
  return this;
}

uint64_t BlueFin::GlWeekTowTime::operator+=(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = a2[1];
  if (a2[2])
  {
    v5 = *a2;
    v6 = v3 - v4;
    if (v3 > v4 || (v3 == v4 ? (v7 = v2 >= v5) : (v7 = 0), v7))
    {
      v7 = v2 >= v5;
      LODWORD(v2) = v2 - v5;
      v10 = !v7;
      v9 = v6 - v10;
    }

    else
    {
      if (v4 - v3 != v2 > v5 || v5 != v2)
      {
        DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_datetime.h", 425, "!tDelta.isNegative()");
      }

      v9 = 0;
      LODWORD(v2) = 0;
    }
  }

  else
  {
    v2 += *a2;
    v9 = v4 + v3 + HIDWORD(v2);
  }

  *(result + 8) = v2;
  *(result + 12) = v9;
  return result;
}

double BlueFin::GlPeGlnTimeMgr::serialize(BlueFin::GlPeGlnTimeMgr *this, BlueFin::GlPeEngineCallBacks *a2, const BlueFin::GlGlnsTime *a3, int a4)
{
  v21 = &unk_2A1F18508;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0.0;
  v27 = 0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  if (a3)
  {
    v8 = 0;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      if (*(a3 + 3) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
      }
    }

    v9 = 0;
    v22 = ((*(*a3 + 32))(a3) + v8) / 0x7861F80 + 1;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      if (*(a3 + 3) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v9 = -1;
      }

      else
      {
        v9 = 0;
      }
    }

    v10 = (((203613265 * (((*(*a3 + 32))(a3) + v9) % 0x7861F80)) >> 32) >> 12) + 1;
  }

  else
  {
    v22 = *(this + 57);
    v10 = *(this + 29);
  }

  v23 = v10;
  v12 = *(this + 32);
  v24 = v12;
  v13 = *(this + 208);
  v25 = *(this + 208);
  v14 = *(this + 27);
  v26 = v14;
  v15 = *(this + 152);
  v27 = *(this + 152);
  v16 = *(this + 20);
  *v28 = v16;
  v17 = *(this + 240);
  v28[8] = *(this + 240);
  v18 = *(this + 241);
  v28[9] = *(this + 241);
  v19 = *(this + 244);
  v28[10] = *(this + 244);
  v20 = *(this + 62);
  LODWORD(result) = *(this + 63);
  v29 = __PAIR64__(LODWORD(result), LODWORD(v20));
  if (a2 || !a4)
  {
    if (a2)
    {
LABEL_32:
      v21[3](&v21, a2, 0);
      goto LABEL_33;
    }
  }

  else if (v22 == *(this + 72) && v10 == *(this + 37) && v12 == *(this + 19) && v13 == *(this + 80) && v14 == *(this + 11) && v15 == *(this + 96) && v16 == *(this + 13) && v17 == *(this + 112) && v18 == *(this + 113) && v19 == *(this + 114) && v20 == *(this + 29) && *&result == *(this + 30))
  {
    return result;
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (!a2 && (this + 64) != &v21)
  {
    *(this + 72) = v22;
    *(this + 37) = v23;
    *(this + 19) = v24;
    *(this + 80) = v25;
    *(this + 11) = v26;
    *(this + 96) = v27;
    *(this + 13) = *v28;
    *(this + 56) = *&v28[8];
    *(this + 114) = v28[10];
    *&result = v29;
    *(this + 116) = v29;
  }

  return result;
}

uint64_t BlueFin::GlPeGlnTimeMgr::computeLocalTimeStampMs(BlueFin::GlPeGlnTimeMgr *this, const BlueFin::GlGlonassDataString *a2)
{
  v24[0] = *(a2 + 8);
  v25 = 0;
  v4 = 575;
  v26 = 575;
  if (v24[0] - 189 >= 0xFFFFFF44)
  {
    v5 = BlueFin::GlSvId::s_aucSvId2gnss[v24[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5] == 255)
    {
      v25 = -1;
      v4 = 575;
    }

    else
    {
      v26 = BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v24[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v5];
      v4 = v26;
    }
  }

  v6 = *(this + 1);
  if (((*(*(v6 + 8) + 4 * (v4 >> 5)) >> (v4 & 0x1F)) & 1) == 0)
  {
    return 0;
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v6, v24, 0, 0);
  v8 = 0;
  if ((*(a2 + 5) & 1) != 0 && (*(MeMeas + 3) & 0x20) != 0)
  {
    v9 = *(a2 + 3);
    v10 = *(a2 + 8);
    v11 = *(MeMeas + 8) * 1000.0;
    v12 = 0.5;
    if (v11 > 0.0 || (v12 = -0.5, v11 < 0.0))
    {
      v15 = (v11 + v12);
      v16 = *(MeMeas + 26);
      v14 = v9 < v15;
      if (v9 < v15 && v16 < v10)
      {
        v16 |= 0x10000u;
        v14 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = *(MeMeas + 26);
    }

    if (v16 > v10 && v9 > v15)
    {
      v10 |= 0x10000u;
    }

LABEL_21:
    v18 = v9 - v15;
    if (v9 > v15 || v10 > v16)
    {
      v20 = v16 > v10 || v14;
      if (v20)
      {
        return 0;
      }

      v21 = v10 - v16;
      v22 = -v18;
    }

    else
    {
      v18 = v15 - v9;
      v21 = v16 - v10;
      v22 = v15 - v9;
    }

    if (v18 == v21)
    {
      return (**(this + 1) - v22);
    }

    return 0;
  }

  return v8;
}

uint64_t BlueFin::GlPeGlnTimeMgr::ProcessSystemTime(uint64_t this, int a2, int a3)
{
  v3 = *(this + 24);
  if (!v3)
  {
    *(this + 32) = a2;
    *(this + 36) = a3;
    v8 = 4;
    goto LABEL_12;
  }

  v4 = *(this + 36);
  v5 = a3 - v4 + 86400000;
  if (a3 - v4 >= -43199999)
  {
    v5 = a3 - v4;
  }

  if (a3 - v4 <= 43200000)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3 - v4 - 86400000;
  }

  v7 = a2 - *(this + 32) - v6;
  if (v7 < 0)
  {
    v7 = v6 - (a2 - *(this + 32));
  }

  if (v7 < 0x3E9)
  {
    v8 = v3 | 8;
LABEL_12:
    *(this + 24) = v8;
    return this;
  }

  *(this + 24) = v3 & 0xFB;
  return GlCustomLog(12, "GlPeGlnTimeMgr[%u]:  Tod mismatch detected!  %u!=%u\n", **(this + 8), v4, a3);
}

uint64_t BlueFin::GlPeGlnTimeMgr::ProcessString4(BlueFin::GlPeGlnTimeMgr *this, char a2, unsigned int a3, int a4)
{
  v5 = a2 + 7;
  if ((*(*(this + 238) + 4 * ((a2 + 7) >> 5)) >> ((a2 + 7) & 0x1F)))
  {
    if (BlueFin::GlPeGlnTimeMgr::CheckGlonassStringTime(this, (a2 + 7), 4))
    {
      if (*(this + 24))
      {
        v8 = *(this + 25);
        if ((v8 & 8) == 0)
        {
          v9 = *(this + 228);
          v10 = *(v9 + 112 * v5 + 40);
          v11 = v10 >= a3;
          v12 = v10 - a3;
          if (v12 == 0 || !v11)
          {
            v13 = v9 + 112 * v5;
            HIDWORD(v15) = *(v13 + 16);
            LODWORD(v15) = *(v13 + 20);
            v14 = v15 >> 5;
            if ((v14 >> 21) - 1462 < 0xFFFFFA4B)
            {
              goto LABEL_10;
            }

            v16 = v12 + a4 + ((v12 + a4) < 0 ? 0x5265C00 : 0) - *(this + 9);
            if (v16 < 0)
            {
              v16 = -v16;
            }

            if (v16 >= 0x2932E01)
            {
LABEL_10:
              GlCustomLog(12, "GlPeGlnTimeMgr(%u)[%u]:  Nt out of range from saved string4:%hu\n");
              goto LABEL_11;
            }

            if (!*(this + 25))
            {
              *(this + 20) = v14 >> 21;
              *(this + 11) = a4;
              v18 = 4;
              goto LABEL_18;
            }

            if (*(this + 20) == v14 >> 21)
            {
              v18 = v8 | 8;
LABEL_18:
              *(this + 25) = v18;
              goto LABEL_11;
            }

            *(this + 25) = v8 & 0xF3;
            GlCustomLog(12, "GlPeGlnTimeMgr(%u)[%u]:  Nt mismatch in saved string4:%hu %hu\n");
          }
        }
      }
    }
  }

LABEL_11:

  return BlueFin::GlSetBase::Remove(this + 1904, v5);
}

uint64_t BlueFin::GlPeGlnTimeMgr::ProcessString5(BlueFin::GlPeGlnTimeMgr *this, char a2, unsigned int a3, int a4)
{
  v5 = a2 + 7;
  if ((*(*(this + 241) + 4 * ((a2 + 7) >> 5)) >> ((a2 + 7) & 0x1F)))
  {
    if (BlueFin::GlPeGlnTimeMgr::CheckGlonassStringTime(this, (a2 + 7), 5))
    {
      if (*(this + 24))
      {
        v8 = *(this + 26);
        if ((v8 & 8) == 0)
        {
          v9 = *(this + 228);
          v10 = *(v9 + 112 * v5 + 44);
          v11 = v10 >= a3;
          v12 = v10 - a3;
          if (v12 == 0 || !v11)
          {
            v13 = (*(v9 + 112 * v5 + 28) >> 10) & 0x1F;
            if (!v13)
            {
              goto LABEL_10;
            }

            v14 = v12 + a4 + ((v12 + a4) < 0 ? 0x5265C00 : 0) - *(this + 9);
            if (v14 < 0)
            {
              v14 = -v14;
            }

            if (v14 >= 0x2932E01)
            {
LABEL_10:
              GlCustomLog(12, "GlPeGlnTimeMgr(%u)[%u]:  N4 out of range in saved string5:%hu\n");
              goto LABEL_16;
            }

            if (!*(this + 26))
            {
              *(this + 48) = v13;
              *(this + 13) = a4;
              v15 = 4;
              goto LABEL_15;
            }

            if (*(this + 48) == v13)
            {
              v15 = v8 | 8;
LABEL_15:
              *(this + 26) = v15;
              goto LABEL_16;
            }

            *(this + 26) = v8 & 0xF3;
            GlCustomLog(12, "GlPeGlnTimeMgr(%u)[%u]:  N4 mismatch in saved string4: %hu!=%hu\n");
          }
        }
      }
    }
  }

LABEL_16:

  return BlueFin::GlSetBase::Remove(this + 1928, v5);
}

uint64_t BlueFin::GlPeGlnTimeMgr::ProcessString1(BlueFin::GlPeGlnTimeMgr *this, char a2, int a3, int a4)
{
  v5 = a2 + 7;
  if (*(*(this + 228) + 112 * (a2 + 7) + 104) >= 1 && ((*(*(this + 229) + 4 * (v5 >> 5)) >> (v5 & 0x1F)) & 1) != 0 && (*(this + 24) & 8) == 0)
  {
    BlueFin::GlPeGlnTimeMgr::ProcessSystemTime(this, a3, a4);
  }

  return BlueFin::GlSetBase::Remove(this + 1832, v5);
}

void BlueFin::GlPeGlnTimeMgr::SetAsst(BlueFin::GlPeGlnTimeMgr *this, const BlueFin::GlPeGlnTimeData *a2)
{
  v3.n128_f64[0] = BlueFin::GlPeGlnTimeMgr::initializeTimeData(this, a2, 0);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v4 = *(*a2 + 24);

    v4(a2, 0, 0, v3);
  }
}

uint64_t BlueFin::GlPeGpsUtcModel::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v24 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (v4 >= 4)
  {
    DeviceFaultNotify("glpe_gpstimemgr.cpp", 169, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_gpstimemgr.cpp", 169, "ucVersion >= 1 && ucVersion <= 3");
  }

  v5 = v2;
  v6 = v1;
  v20 = 43;
  v21 = v4;
  v22 = 0x1000000000000;
  v19 = &unk_2A1F092C0;
  v23 = v4;
  if (v4 == 3)
  {
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutS32(&v19, *(v6 + 36));
    BlueFin::GlSysLogEntry::PutS32(&v19, *(v6 + 32));
    BlueFin::GlSysLogEntry::PutS8(&v19, *(v6 + 42));
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 40));
  }

  else
  {
    BlueFin::GlSysLogEntry::PutD64(&v19, vcvtd_n_f64_s32(*(v1 + 36), 0x1EuLL));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 32) * 8.8817842e-16);
    BlueFin::GlSysLogEntry::PutS8(&v19, *(v6 + 42));
    BlueFin::GlSysLogEntry::PutS32(&v19, *(v6 + 40) << 12);
  }

  BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 41));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 43));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 44));
  BlueFin::GlSysLogEntry::PutS8(&v19, *(v6 + 45));
  if (v4 >= 2)
  {
    v7 = (*(*(v6 + 16) + 32))(v6 + 16);
    BlueFin::GlSysLogEntry::PutU16(&v19, v7 / 0x93A80);
    v11 = (*(*(v6 + 16) + 32))(v6 + 16);
    LODWORD(v10) = *(v6 + 24);
    *v11.i64 = (v10 * 2.32830644e-10 + (v9 % 0x93A80)) * 1000.0;
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
      *v8.i64 = -*v11.i64;
      *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
      *v11.i64 = -*vbslq_s8(v14, v11, v8).i64;
    }

    if (*v11.i64 < 0.0)
    {
      v16 = --*v11.i64;
    }

    else
    {
      v16 = *v11.i64;
    }

    BlueFin::GlSysLogEntry::PutU32(&v19, v16);
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v5, 4);
  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGpsTimeMgr::OnInitialTime(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  if (*(this + 18) && (*(*(this + 10) + 32))() <= 0x93A7F)
  {
    v6 = &off_2A1F0B5F0;
    v7 = 0;
    BlueFin::GlPeGnssTime::GetGps(a2, &v6);
    *(this + 11) = v7;
  }

  v6 = &off_2A1F0B5F0;
  v7 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(a2, &v6);
  result = (v6[4])(&v6, Gps);
  *(this + 57) = result / 0x93A80;
  return result;
}

void BlueFin::GlPeGpsTimeMgr::SetDataSubFrmMeas(int8x16_t *this, const BlueFin::GlDataSubFrmMeas *a2, const BlueFin::GlGpsTime *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 8);
  if (!*(a2 + 8) || (v3 >= 0x21 ? (v4 = (v3 - 76) > 0xFFFFFFF5) : (v4 = 1), !v4))
  {
    DeviceFaultNotify("glpe_gpstimemgr.cpp", 292, "SetDataSubFrmMeas", "IS_GPS_SVID(*rotDataSubFrmMeas.otSvId) INC_QZS(|| IS_QZSS_SVID(*rotDataSubFrmMeas.otSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_gpstimemgr.cpp", 292, "IS_GPS_SVID(*rotDataSubFrmMeas.otSvId) INC_QZS(|| IS_QZSS_SVID(*rotDataSubFrmMeas.otSvId))");
  }

  v7 = *(a2 + 9);
  if (v7 == 5)
  {
    v8 = this[1].i64[0];
    v9 = *MEMORY[0x29EDCA608];
    v10 = ((4 * this[1].u8[8] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

    bzero(v8, v10);
  }

  else
  {
    if (v7 == 1)
    {
      if ((*(a2 + 7) & 0xC0003F00) == 0)
      {
        *(this[1].i64[0] + ((v3 >> 3) & 0x1C)) |= 1 << v3;
      }
    }

    else if (v7 == 4 && ((1 << (v3 & 0x1F)) & *(this[1].i64[0] + ((v3 >> 3) & 0x1C))) != 0)
    {
      v11 = *(a2 + 7);
      if ((v11 & 0x30000000) == 0x10000000 && (v11 & 0xCFC00000) == 0xE000000)
      {
        v12.i64[0] = 0xC0000000C0000000;
        v12.i64[1] = 0xC0000000C0000000;
        if ((vaddvq_s32(vandq_s8(vcgtq_u32(*(a2 + 40), v12), xmmword_298A34030)) & 0xF) == 0 && *(a2 + 14) >> 30 == 0)
        {
          v15 = 0;
          v39[0] = &v45;
          v39[1] = 0;
          v40 = 0;
          v43 = 0;
          v42 = 0;
          v41 = 0x8000000080;
          v44 = 0;
          do
          {
            BlueFin::GlBitBuffer::PutU(v39, *(a2 + v15 + 40) >> 6, 0x18u);
            v15 += 4;
          }

          while (v15 != 20);
          BlueFin::GlBitBuffer::Position(v39, 0);
          v16 = BlueFin::GlBitBuffer::GetU(v39, 0x18u);
          v17 = (v16 & 0xFF800000) == 0x800000 ? -16777216 : 0;
          v27 = BlueFin::GlBitBuffer::GetU(v39, 0x20u);
          v18 = BlueFin::GlBitBuffer::GetU(v39, 8u);
          v19 = BlueFin::GlBitBuffer::GetU(v39, 8u);
          v20 = BlueFin::GlBitBuffer::GetU(v39, 8u);
          v21 = BlueFin::GlBitBuffer::GetU(v39, 8u);
          v22 = BlueFin::GlBitBuffer::GetU(v39, 8u);
          v23 = BlueFin::GlBitBuffer::GetU(v39, 8u);
          if (*(a2 + 8) - 1 >= 0x20 || v22 >= 1 && (v18 & 0xFCu) <= 0x93 && v22 <= 7u)
          {
            v28.i64[0] = &unk_2A1F185A8;
            v28.i32[2] = 1;
            v28.i8[12] = 0;
            v29 = &off_2A1F0B5F0;
            v30 = 0;
            v31 = v17 + v16;
            v32 = v27;
            v33 = v18;
            v34 = v19;
            v35 = v20;
            v36 = v21;
            v37 = v22;
            v38 = v23;
            BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(this, &v28, a3, v24, v25);
          }
        }
      }
    }

    v26 = *MEMORY[0x29EDCA608];
  }
}

uint64_t BlueFin::GlPeGpsTimeMgr::Serialize(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  if (*(this + 72))
  {
    v3 = this;
    this = (*(*(this + 80) + 32))();
    if (this >= 0x93A80)
    {
      v4 = *(*(v3 + 64) + 24);

      return v4(v3 + 64, a2, 0);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeGpsTimeMgr::ResetMgr(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 114) = 0;
  return this;
}

uint64_t BlueFin::GlPeGpsTimeMgr::ResetModels(uint64_t this)
{
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 88) = 0;
  *(this + 112) = 0;
  return this;
}

int8x16_t *BlueFin::GlPeGpsTimeMgr::OnSystemModeDetermined(int8x16_t *this, int a2, double a3, int8x16_t a4)
{
  this->i8[8] = 1;
  this->i8[9] = a2;
  if (a2)
  {
    v4.i64[0] = &unk_2A1F185A8;
    v4.i8[12] = 0;
    v7 = 0;
    v8 = 0;
    v5 = &off_2A1F0B5F0;
    v6 = 0;
    v4.i32[2] = 4;
    return BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(this, &v4, 0, a3, a4);
  }

  return this;
}

long double BlueFin::GlPeGnssTime::GetTodS(BlueFin::GlPeGnssTime *this)
{
  v1 = *(this + 2);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v14 = &off_2A1F0E480;
        v15 = 0;
        v5.n128_f64[0] = BlueFin::GlPeGnssTime::GetGal(this, &v14);
        break;
      case 4:
        v14 = &off_2A1F0E4D0;
        v15 = 0;
        v5.n128_f64[0] = BlueFin::GlPeGnssTime::GetBds(this, &v14);
        break;
      case 5:
        v14 = &off_2A1F0DFC8;
        v15 = 0;
        v5.n128_f64[0] = BlueFin::GlPeGnssTime::GetNic(this, &v14);
        break;
      default:
        goto LABEL_27;
    }

LABEL_20:
    v4 = (v14[4])(&v14, v5) % 0x93A80;
    goto LABEL_21;
  }

  if (!v1)
  {
    v14 = &off_2A1F0B5F0;
    v15 = 0;
    v5.n128_f64[0] = BlueFin::GlPeGnssTime::GetGps(this, &v14);
    goto LABEL_20;
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v14 = &unk_2A1F11310;
      v15 = 0;
      v2 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
      v16 = 1980;
      v17 = v2 / 0x15180 + 1;
      v18 = 1;
      v19 = v2 / 0x15180 + 1;
      v20 = v2 % 0x15180 / 0xE10;
      v21 = (2185 * (v2 - 3600 * ((1193047 * v2) >> 32))) >> 17;
      v22 = v2 - 60 * ((71582789 * v2) >> 32);
      BlueFin::GlPeGnssTime::GetUtc(this, &v14);
      v4 = 3600 * v20 + 60 * v21 + v22;
LABEL_21:
      LODWORD(v3) = v15;
      v12 = v3 * 2.32830644e-10 + v4;
      goto LABEL_22;
    }

LABEL_27:
    DeviceFaultNotify("glpe_timemgr.cpp", 401, "GetTodS", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 401, "0");
  }

  v14 = &off_2A1F0E430;
  v15 = 0;
  v6.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(this, &v14);
  v7 = 0;
  if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0)
  {
    v7 = HIDWORD(v15) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  v9 = (v14[4])(&v14, v6);
  if (v7)
  {
    v11 = 10799.0;
  }

  else
  {
    v11 = (v9 % 0x15180);
  }

  LODWORD(v10) = v15;
  v12 = v11 + v10 * 2.32830644e-10;
LABEL_22:

  return fmod(v12, 86400.0);
}

uint64_t BlueFin::GlPeTimeManagerData::SerializeImpl(uint64_t a1)
{
  v4 = MEMORY[0x2A1C7C4A8](a1);
  v197 = *MEMORY[0x29EDCA608];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= 0xB)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 1093, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 10");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 1093, "ucVersion >= 1 && ucVersion <= 10");
  }

  v10 = v4;
  if (v5 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v9 > 7)
    {
      v178 = v5;
      v193 = 30;
      v194 = v9;
      v195 = 0x1000000000000;
      v192 = &unk_2A1F092C0;
      v196 = v9;
      BlueFin::GlSysLogEntry::PutU16(&v192, *(v4 + 8));
      if (*(v10 + 8))
      {
        BlueFin::GlSysLogEntry::PutU8(&v192, *(v10 + 16));
        if (*(v10 + 32) && BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 0) > 5.0)
        {
          BlueFin::GlSysLogEntry::PutU8(&v192, *(v10 + 32));
          BlueFin::GlSysLogEntry::PutD64(&v192, *(v10 + 40));
          v14 = *(v10 + 32);
          if (v14 > 2)
          {
            switch(v14)
            {
              case 3:
                v181 = &off_2A1F0E480;
                v182 = 0;
                Gal = BlueFin::GlPeGnssTime::GetGal((v10 + 24), &v181);
                v155 = (v181[4])(&v181, Gal);
                BlueFin::GlSysLogEntry::PutU16(&v192, v155 / 0x93A80);
                v156 = (v181[4])(&v181);
                LODWORD(v157) = v182;
                BlueFin::GlSysLogEntry::PutD64(&v192, v157 * 2.32830644e-10 + (v156 % 0x93A80));
                break;
              case 4:
                v181 = &off_2A1F0E4D0;
                v182 = 0;
                Bds = BlueFin::GlPeGnssTime::GetBds((v10 + 24), &v181);
                v160 = (v181[4])(&v181, Bds);
                BlueFin::GlSysLogEntry::PutU16(&v192, v160 / 0x93A80);
                v161 = (v181[4])(&v181);
                LODWORD(v162) = v182;
                BlueFin::GlSysLogEntry::PutD64(&v192, v162 * 2.32830644e-10 + (v161 % 0x93A80));
                break;
              case 5:
                v181 = &off_2A1F0DFC8;
                v182 = 0;
                Nic = BlueFin::GlPeGnssTime::GetNic((v10 + 24), &v181);
                v118 = (v181[4])(&v181, Nic);
                BlueFin::GlSysLogEntry::PutU16(&v192, v118 / 0x93A80);
                v119 = (v181[4])(&v181);
                LODWORD(v120) = v182;
                BlueFin::GlSysLogEntry::PutD64(&v192, v120 * 2.32830644e-10 + (v119 % 0x93A80));
                break;
            }
          }

          else if (v14)
          {
            if (v14 == 1)
            {
              v181 = &off_2A1F0E430;
              v182 = 0;
              BlueFin::GlPeGnssTime::GetGlns((v10 + 24), &v181);
              v190[0] = 0;
              BlueFin::GlGlnsTime::ctFct2AdjustedFctS(&v181, v190);
              BlueFin::GlSysLogEntry::PutU8(&v192, v190[0] / 0x7861F80 + 1);
              v190[0] = 0;
              BlueFin::GlGlnsTime::ctFct2AdjustedFctS(&v181, v190);
              BlueFin::GlSysLogEntry::PutU16(&v192, (((203613265 * (v190[0] % 0x7861F80)) >> 32) >> 12) + 1);
              TodS = BlueFin::GlGlnsTime::getTodS(&v181);
              BlueFin::GlSysLogEntry::PutD64(&v192, TodS);
            }

            else if (v14 == 2)
            {
              BlueFin::GlPeGnssTime::GetUtc((v10 + 24), &v181);
              BlueFin::GlSysLogEntry::PutU16(&v192, v183);
              BlueFin::GlSysLogEntry::PutU8(&v192, v185);
              BlueFin::GlSysLogEntry::PutU8(&v192, v186);
              BlueFin::GlSysLogEntry::PutU8(&v192, v187);
              BlueFin::GlSysLogEntry::PutU8(&v192, v188);
              LOBYTE(v15) = v189;
              LODWORD(v16) = v182;
              BlueFin::GlSysLogEntry::PutD64(&v192, v16 * 2.32830644e-10 + v15);
            }
          }

          else
          {
            v181 = &off_2A1F0B5F0;
            v182 = 0;
            Gps = BlueFin::GlPeGnssTime::GetGps((v10 + 24), &v181);
            v151 = (v181[4])(&v181, Gps);
            BlueFin::GlSysLogEntry::PutU16(&v192, v151 / 0x93A80);
            v152 = (v181[4])(&v181);
            LODWORD(v153) = v182;
            BlueFin::GlSysLogEntry::PutD64(&v192, v153 * 2.32830644e-10 + (v152 % 0x93A80));
          }
        }

        else
        {
          v181 = &off_2A1F0B5F0;
          v182 = 0;
          BlueFin::GlPeGnssTime::GetGps((v10 + 24), &v181);
          BlueFin::GlSysLogEntry::PutU8(&v192, 0);
          BlueFin::GlSysLogEntry::PutD64(&v192, *(v10 + 40));
          v17 = (v181[4])(&v181);
          BlueFin::GlSysLogEntry::PutU16(&v192, v17 / 0x93A80);
          v18 = (v181[4])(&v181);
          LODWORD(v19) = v182;
          BlueFin::GlSysLogEntry::PutD64(&v192, v19 * 2.32830644e-10 + (v18 % 0x93A80));
        }

        BlueFin::GlSysLogEntry::PutD64(&v192, *(v10 + 48));
        if (v9 == 10)
        {
          BlueFin::GlSysLogEntry::PutU32(&v192, *(v10 + 56));
        }
      }

      v20 = *(v10 + 8);
      if ((v20 & 0x40) != 0)
      {
        v177 = *(v10 + 40);
        if (*(v10 + 32) == -1)
        {
          LOWORD(v28) = 0;
          LOWORD(v168) = 0;
          v29 = 0;
          LOWORD(v172) = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          LOWORD(v24) = 0;
          v174 = 0;
          LOBYTE(v25) = 0;
          LOWORD(v33) = 0;
          v169 = 0.0;
          v170 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
          v36 = 0.0;
          v167 = 0.0;
          v37 = 0.0;
          v38 = 0.0;
          v27 = 0.0;
          v39 = 0.0;
          UncUs = 0.0;
          v40 = 0.0;
        }

        else
        {
          *v190 = &off_2A1F0B5F0;
          v191 = 0;
          v21 = BlueFin::GlPeGnssTime::GetGps((v10 + 24), v190);
          v22 = (*(*v190 + 32))(v190, v21);
          v23 = (*(*v190 + 32))(v190);
          LODWORD(v1) = v191;
          UncUs = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 0);
          if ((*(*v190 + 32))(v190) >= 0x1E11BC50)
          {
            *v175 = v23;
            v181 = &off_2A1F0E430;
            v182 = 0;
            Glns = BlueFin::GlPeGnssTime::GetGlns((v10 + 24), &v181);
            v42 = BlueFin::GlWeekTowTime::m_ucNextLs;
            v43 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
            v44 = BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
            v45 = HIDWORD(v182);
            v173 = (v181[4])(&v181, Glns);
            v48 = v42 >= v43 && v44 != 0 && v45 == v44;
            v171 = v48;
            v49 = BlueFin::GlWeekTowTime::m_ucNextLs;
            v50 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
            v51 = BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
            v52 = HIDWORD(v182);
            v53 = (v181[4])(&v181);
            v54 = 0;
            v57 = v49 >= v50 && v51 != 0 && v52 == v51;
            if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
            {
              v54 = HIDWORD(v182) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
            }

            v58 = (v181[4])(&v181);
            if (v54)
            {
              v59 = 10799.0;
            }

            else
            {
              v59 = (v58 % 0x15180);
            }

            v121 = v182;
            v27 = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 1);
            v25 = (v173 - v171) / 0x7861F80u + 1;
            v24 = (((203613265 * ((v53 - v57) % 0x7861F80u)) >> 32) >> 12) + 1;
            v26 = v59 + v121 * 2.32830644e-10;
            v23 = *v175;
          }

          else
          {
            LOWORD(v24) = 0;
            LOBYTE(v25) = 0;
            v26 = 0.0;
            v27 = 4294967300.0;
          }

          v166 = v1;
          v181 = &unk_2A1F11310;
          v182 = 0;
          v122 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
          v183 = 1980;
          v184 = v122 / 0x15180 + 1;
          v185 = 1;
          v186 = v122 / 0x15180 + 1;
          v187 = v122 % 0x15180 / 0xE10;
          v188 = (2185 * (v122 - 3600 * ((1193047 * v122) >> 32))) >> 17;
          v189 = v122 - 60 * ((71582789 * v122) >> 32);
          BlueFin::GlPeGnssTime::GetUtc((v10 + 24), &v181);
          v174 = v183;
          v163 = v185;
          v164 = v186;
          v165 = v187;
          v31 = v188;
          LOBYTE(v2) = v189;
          LODWORD(v3) = v182;
          v37 = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 2);
          v123 = (*(*v190 + 32))(v190);
          LODWORD(v124) = v191;
          if (v124 * 2.32830644e-10 + v123 >= 619315200.0)
          {
            v125 = v31;
            v179 = &off_2A1F0E480;
            v180 = 0;
            v126 = BlueFin::GlPeGnssTime::GetGal((v10 + 24), &v179);
            v127 = (v179[4])(&v179, v126);
            v128 = (v179[4])(&v179);
            v129 = v180;
            v169 = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 3);
            v172 = v127 / 0x93A80;
            v170 = v129 * 2.32830644e-10 + (v128 % 0x93A80);
            v31 = v125;
          }

          else
          {
            LOWORD(v172) = 0;
            v170 = 0.0;
            v169 = 4294967300.0;
          }

          v130 = (*(*v190 + 32))(v190);
          LODWORD(v131) = v191;
          if (v131 * 2.32830644e-10 + v130 >= 820108814.0)
          {
            v179 = &off_2A1F0E4D0;
            v180 = 0;
            v132 = BlueFin::GlPeGnssTime::GetBds((v10 + 24), &v179);
            v133 = (v179[4])(&v179, v132);
            v134 = (v179[4])(&v179);
            v135 = v180;
            v35 = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 4);
            v168 = v133 / 0x93A80;
            v34 = v135 * 2.32830644e-10 + (v134 % 0x93A80);
          }

          else
          {
            LOWORD(v168) = 0;
            v34 = 0.0;
            v35 = 4294967300.0;
          }

          v136 = (*(*v190 + 32))(v190);
          LODWORD(v137) = v191;
          if (v137 * 2.32830644e-10 + v136 >= 619315200.0)
          {
            v138 = v31;
            v139 = v25;
            LOWORD(v25) = v24;
            v24 = v23;
            v140 = v22;
            v179 = &off_2A1F0DFC8;
            v180 = 0;
            v141 = BlueFin::GlPeGnssTime::GetNic((v10 + 24), &v179);
            v39 = v26;
            v142 = (v179[4])(&v179, v141);
            v143 = (v179[4])(&v179);
            v144 = v180;
            v167 = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 5);
            v28 = v142 / 0x93A80;
            v36 = v144 * 2.32830644e-10 + (v143 % 0x93A80);
            v22 = v140;
            v23 = v24;
            LOWORD(v24) = v25;
            LOBYTE(v25) = v139;
            v31 = v138;
          }

          else
          {
            v39 = v26;
            LOWORD(v28) = 0;
            v36 = 0.0;
            v167 = 4294967300.0;
          }

          v145 = v3;
          v33 = v22 / 0x93A80;
          v40 = v166 * 2.32830644e-10 + (v23 % 0x93A80);
          v38 = v145 * 2.32830644e-10 + v2;
          v30 = v164;
          v29 = v165;
          v32 = v163;
        }

        BlueFin::GlSysLogEntry::PutU16(&v192, 32831);
        BlueFin::GlSysLogEntry::PutD64(&v192, v177);
        BlueFin::GlSysLogEntry::PutU16(&v192, v33);
        BlueFin::GlSysLogEntry::PutD64(&v192, v40);
        BlueFin::GlSysLogEntry::PutD64(&v192, UncUs);
        BlueFin::GlSysLogEntry::PutU8(&v192, v25);
        BlueFin::GlSysLogEntry::PutU16(&v192, v24);
        BlueFin::GlSysLogEntry::PutD64(&v192, v39);
        BlueFin::GlSysLogEntry::PutD64(&v192, v27);
        BlueFin::GlSysLogEntry::PutU16(&v192, v174);
        BlueFin::GlSysLogEntry::PutU8(&v192, v32);
        BlueFin::GlSysLogEntry::PutU8(&v192, v30);
        BlueFin::GlSysLogEntry::PutU8(&v192, v29);
        BlueFin::GlSysLogEntry::PutU8(&v192, v31);
        BlueFin::GlSysLogEntry::PutD64(&v192, v38);
        BlueFin::GlSysLogEntry::PutD64(&v192, v37);
        BlueFin::GlSysLogEntry::PutU16(&v192, v172);
        BlueFin::GlSysLogEntry::PutD64(&v192, v170);
        BlueFin::GlSysLogEntry::PutD64(&v192, v169);
        BlueFin::GlSysLogEntry::PutU16(&v192, v168);
        BlueFin::GlSysLogEntry::PutD64(&v192, v34);
        BlueFin::GlSysLogEntry::PutD64(&v192, v35);
        if (v9 != 8)
        {
          BlueFin::GlSysLogEntry::PutU16(&v192, v28);
          BlueFin::GlSysLogEntry::PutD64(&v192, v36);
          BlueFin::GlSysLogEntry::PutD64(&v192, v167);
        }

        v20 = *(v10 + 8);
      }

      if ((v20 & 2) != 0)
      {
        BlueFin::GlSysLogEntry::PutU8(&v192, 6);
        v146 = 0;
        v147 = v10 + 112;
        do
        {
          BlueFin::GlSysLogEntry::PutD64(&v192, *(v147 + 8 * v146 - 48));
          BlueFin::GlSysLogEntry::PutD64(&v192, *(v147 + 4 * v146++));
        }

        while (v146 != 6);
        v20 = *(v10 + 8);
      }

      if ((v20 & 4) != 0)
      {
        BlueFin::GlSysLogEntry::PutU8(&v192, *(v10 + 136));
        v20 = *(v10 + 8);
      }

      if ((v20 & 8) != 0)
      {
        BlueFin::GlSysLogEntry::PutD64(&v192, *(v10 + 144));
        v20 = *(v10 + 8);
      }

      if ((v20 & 0x10) != 0)
      {
        BlueFin::GlSysLogEntry::PutS8(&v192, *(v10 + 152));
      }

      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v192, v178, 4);
      goto LABEL_157;
    }

    v193 = 30;
    v194 = v9;
    v195 = 0x1000000000000;
    v192 = &unk_2A1F092C0;
    v196 = v9;
    if (*(v4 + 8))
    {
      v13 = *(v4 + 40);
      v7.i64[0] = *(v4 + 48);
      v11 = v5;
      if (*v7.i64 == 4294967300.0)
      {
        v12 = -1;
      }

      else if (*v7.i64 >= 0.5)
      {
        *v7.i64 = *v7.i64 + 0.5;
        *v8.i64 = *v7.i64 - trunc(*v7.i64 * 2.32830644e-10) * 4294967300.0;
        v60.f64[0] = NAN;
        v60.f64[1] = NAN;
        v8.i64[0] = vbslq_s8(vnegq_f64(v60), v8, v7).u64[0];
        if (*v7.i64 > 4294967300.0)
        {
          v7.i64[0] = v8.i64[0];
        }

        v12 = *v7.i64;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v11 = v5;
      v12 = -1;
      v13 = 0xC15B773FC0000000;
    }

    v61 = BlueFin::GlSysLogEntry::PutU32(&v192, v12);
    if (v9 <= 2)
    {
      v61 = BlueFin::GlSysLogEntry::PutS32(&v192, 0);
    }

    v62.i64[0] = v13;
    v67 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v61, v62, v63, v64, v65, v66);
    v73 = *(v10 + 8);
    if ((v73 & 4) != 0)
    {
      *v68.i64 = -(*(v10 + 136) + 1);
      v75 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v67, v68, v69, v70, v71, v72);
    }

    else
    {
      if ((v73 & 0x20) != 0)
      {
        v74 = 1;
      }

      else
      {
        v74 = v67;
      }

      if ((v73 & 8) != 0)
      {
        v75 = 0;
      }

      else
      {
        v75 = v74;
      }
    }

    BlueFin::GlSysLogEntry::PutU32(&v192, v75);
    v181 = &off_2A1F0B5F0;
    v182 = 0;
    if (*(v10 + 32) != -1 && *(v10 + 48) != 4294967300.0 && BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 0) <= 2100000.0)
    {
      *v190 = &off_2A1F0B5F0;
      v191 = 0;
      BlueFin::GlPeGnssTime::GetGps((v10 + 24), v190);
      v182 = v191;
    }

    v76 = (v181[4])(&v181);
    LODWORD(v77) = v182;
    v78.i64[0] = 0x3DEFFFFFFFFFFFFFLL;
    v79 = v77 * 2.32830644e-10;
    *v80.i64 = (v79 + (v76 % 0x93A80)) * 1000.0;
    v82 = BlueFin::GlPeTimeMgrUtil::towMsToUlong(v76, v80, v79, v78, v81);
    BlueFin::GlSysLogEntry::PutU32(&v192, v82);
    v83 = (v181[4])(&v181);
    BlueFin::GlSysLogEntry::PutU16(&v192, v83 / 0x93A80);
    if (v9 != 1)
    {
      BlueFin::GlSysLogEntry::PutU32(&v192, -1);
      BlueFin::GlSysLogEntry::PutU16(&v192, 0xFFFF);
      if (v9 >= 4)
      {
        *v190 = &off_2A1F0E430;
        v191 = 0;
        if (*(v10 + 32) != -1 && *(v10 + 48) != 4294967300.0 && BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 1) <= 2100000.0)
        {
          v179 = &off_2A1F0E430;
          v180 = 0;
          BlueFin::GlPeGnssTime::GetGlns((v10 + 24), &v179);
          v191 = v180;
        }

        v84 = 0;
        if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
        {
          v84 = HIDWORD(v191) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        }

        v85 = (*(*v190 + 32))(v190);
        if (v84)
        {
          v86.i64[0] = 0x40C5178000000000;
        }

        else
        {
          *v86.i64 = (v85 % 0x15180);
        }

        LODWORD(v87) = v191;
        v88.i64[0] = 0x3DEFFFFFFFFFFFFFLL;
        v90 = v87 * 2.32830644e-10;
        *v86.i64 = (*v86.i64 + v90) * 1000.0;
        v91 = BlueFin::GlPeTimeMgrUtil::todMsToUlong(v85, v86, v90, v88, v89);
        BlueFin::GlSysLogEntry::PutU32(&v192, v91);
        *v92.i64 = -*(BlueFin::GlPeGnssTime::GetConversionTable((v10 + 24)) + 8);
        *v93.i64 = *v92.i64 - trunc(*v92.i64);
        v94.f64[0] = NAN;
        v94.f64[1] = NAN;
        v95 = *vbslq_s8(vnegq_f64(v94), v93, v92).i64 + -1.0;
        *v93.i64 = fabs(v95);
        v96 = *v93.i64 > 1.0e-10;
        v97 = *v93.i64 < 0.0005;
        v98 = v96 && v97;
        if (!v96 || !v97)
        {
          v95 = 0.0;
        }

        BlueFin::GlSysLogEntry::PutD64(&v192, v95);
        v101 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v191) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        v102 = (*(*v190 + 32))(v190);
        BlueFin::GlSysLogEntry::PutU16(&v192, (v102 + (v101 << 31 >> 31)) / 0x7861F80u + 1);
        v105 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v191) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        v106 = (*(*v190 + 32))(v190);
        BlueFin::GlSysLogEntry::PutU16(&v192, (((203613265 * ((v106 + (v105 << 31 >> 31)) % 0x7861F80u)) >> 32) >> 12) + 1);
        BlueFin::GlSysLogEntry::PutU8(&v192, v98);
      }
    }

    if (v194 < 5u)
    {
LABEL_126:
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v192, v11, 4);
      goto LABEL_157;
    }

    v107 = *(v10 + 32) != -1 && *(v10 + 48) != 4294967300.0 && BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 0) <= 2100000.0;
    BlueFin::GlSysLogEntry::PutU8(&v192, v107);
    if (*(v10 + 32) == -1 || *(v10 + 48) == 4294967300.0)
    {
      BlueFin::GlSysLogEntry::PutU8(&v192, 0);
    }

    else
    {
      v108 = BlueFin::GlPeGnssTime::GetUncUs(v10 + 24, 1);
      v109 = v108 <= 2100000.0;
      BlueFin::GlSysLogEntry::PutU8(&v192, v108 <= 2100000.0);
      if (v107 && v109)
      {
        BlueFin::GlSysLogEntry::PutU8(&v192, 1);
        v110 = 1000 * *(v10 + 152);
        goto LABEL_116;
      }
    }

    BlueFin::GlSysLogEntry::PutU8(&v192, 0);
    v110 = 0;
LABEL_116:
    BlueFin::GlSysLogEntry::PutS32(&v192, v110);
    if (v194 >= 6u)
    {
      *v111.i64 = *(v10 + 144) * 0.001 + 0.5;
      *v113.i64 = *v111.i64 + trunc(*v111.i64 * 2.32830644e-10) * -4294967300.0;
      v114.f64[0] = NAN;
      v114.f64[1] = NAN;
      v115 = vnegq_f64(v114);
      v113.i64[0] = vbslq_s8(v115, v113, v111).u64[0];
      if (*v111.i64 > 4294967300.0)
      {
        v111.i64[0] = v113.i64[0];
      }

      if (*v111.i64 < -4294967300.0)
      {
        *v112.i64 = -*v111.i64;
        *v111.i64 = -(*v111.i64 - trunc(*v111.i64 * -2.32830644e-10) * -4294967300.0);
        *v111.i64 = -*vbslq_s8(v115, v111, v112).i64;
      }

      if (*v111.i64 < 0.0)
      {
        v116 = --*v111.i64;
      }

      else
      {
        v116 = *v111.i64;
      }

      BlueFin::GlSysLogEntry::PutU32(&v192, v116);
      if (v194 >= 7u)
      {
        BlueFin::GlSysLogEntry::PutU8(&v192, 0);
      }
    }

    goto LABEL_126;
  }

LABEL_157:
  v148 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGnssTimeModelData::Deserialize(BlueFin::GlPeGnssTimeModelData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 98 || *(a2 + 12) - 1 > 1)
  {
    return 0;
  }

  U16 = BlueFin::GlSysLogEntry::GetU16(a2);
  *v5.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
  *v6.i64 = *v5.i64 - trunc(*v5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = *vbslq_s8(vnegq_f64(v7), v6, v5).i64;
  if (v8 < 0.0 || v8 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v10 = v8 * 4294967300.0 + 0.5;
  v11 = v10;
  if (v10 >= 4294967300.0)
  {
    v11 = -1;
  }

  *(this + 4) = v11;
  *(this + 5) = *v5.i64 + 604800 * U16;
  *(this + 24) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 13) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 16) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 34) = BlueFin::GlSysLogEntry::GetS8(a2);
  *(this + 35) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 38) = BlueFin::GlSysLogEntry::GetS8(a2);
  if (*(a2 + 12) < 2u)
  {
    F32 = 4295000000.0;
  }

  else
  {
    F32 = BlueFin::GlSysLogEntry::GetF32(a2);
  }

  *(this + 10) = F32;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 1568);
  return 1;
}

uint64_t BlueFin::GlPeGnssTimeModelData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v18 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 2;
  }

  v14 = 98;
  v15 = v6;
  v16 = 0x1000000000000;
  v13 = &unk_2A1F092C0;
  v17 = v6;
  v7 = v1 + 8;
  v8 = (*(*(v1 + 8) + 32))(v1 + 8);
  BlueFin::GlSysLogEntry::PutU16(&v13, v8 / 0x93A80);
  v9 = (*(*v7 + 32))(v7);
  LODWORD(v10) = *(v5 + 16);
  BlueFin::GlSysLogEntry::PutD64(&v13, v10 * 2.32830644e-10 + (v9 % 0x93A80));
  BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 24));
  BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 26));
  BlueFin::GlSysLogEntry::PutS32(&v13, *(v5 + 28));
  BlueFin::GlSysLogEntry::PutS16(&v13, *(v5 + 32));
  BlueFin::GlSysLogEntry::PutS8(&v13, *(v5 + 34));
  BlueFin::GlSysLogEntry::PutU8(&v13, *(v5 + 35));
  BlueFin::GlSysLogEntry::PutU16(&v13, *(v5 + 36));
  BlueFin::GlSysLogEntry::PutS8(&v13, *(v5 + 38));
  BlueFin::GlSysLogEntry::PutF32(&v13, *(v5 + 40));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v4, 4);
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

char *BlueFin::GlPeSpecialTimeEvents::GetKnownLeapSeconds(BlueFin::GlPeSpecialTimeEvents *this)
{
  if (this >= 6)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 1805, "GetKnownLeapSeconds", "ucIdx < _DIM(m_aotKnownLeapSeconds)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 1805, "ucIdx < _DIM(m_aotKnownLeapSeconds)");
  }

  return &BlueFin::GlPeSpecialTimeEvents::m_aotKnownLeapSeconds[120 * this];
}

uint64_t BlueFin::GlPeRtcModel::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v17 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (v4 >= 4)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 1905, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 1905, "ucVersion >= 1 && ucVersion <= 3");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v13 = 103;
    v14 = v4;
    v15 = 0x1000000000000;
    v12 = &unk_2A1F092C0;
    v16 = v4;
    if (v4 == 1)
    {
      BlueFin::GlSysLogEntry::PutD64(&v12, *(v1 + 32));
      v7 = (*(*(v6 + 16) + 32))(v6 + 16);
      BlueFin::GlSysLogEntry::PutU16(&v12, v7 / 0x93A80);
      v8 = (*(*(v6 + 16) + 32))(v6 + 16);
      v8.n128_u32[0] = *(v6 + 24);
      BlueFin::GlSysLogEntry::PutU32(&v12, (v8.n128_u64[0] * 2.32830644e-10 * 1000.0) + 1000 * (v9 % 0x93A80));
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU32(&v12, *(v1 + 12));
      BlueFin::GlSysLogEntry::PutD64(&v12, *(v6 + 32));
      BlueFin::GlSysLogEntry::PutD64(&v12, *(v6 + 40));
      if (v4 == 3)
      {
        BlueFin::GlSysLogEntry::PutD64(&v12, *(v6 + 48));
        BlueFin::GlSysLogEntry::PutD64(&v12, *(v6 + 56));
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v12, v5, 4);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 1;
}

unsigned __int8 *BlueFin::GlPeTimeManager::getFlightTimeMs(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, int *a4)
{
  result = BlueFin::GlPeSatAidInfo::GetAidBySvId(*(a1 + 16) + 32, a2);
  if (result && (result[24] & 8) != 0)
  {
    *a3 = *(result + 4) * -1000.0;
    *v9.i64 = *(result + 10) * 1000000.0;
    if (*v9.i64 == 4294967300.0)
    {
      v11 = -1;
    }

    else if (*v9.i64 >= 0.5)
    {
      *v9.i64 = *v9.i64 + 0.5;
      *v10.i64 = *v9.i64 - trunc(*v9.i64 * 2.32830644e-10) * 4294967300.0;
      v12.f64[0] = NAN;
      v12.f64[1] = NAN;
      v10.i64[0] = vbslq_s8(vnegq_f64(v12), v10, v9).u64[0];
      if (*v9.i64 > 4294967300.0)
      {
        v9.i64[0] = v10.i64[0];
      }

      v11 = *v9.i64;
    }

    else
    {
      v11 = 1;
    }

    *a4 = v11;
  }

  else
  {

    return BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(a1, a2, a3, a4);
  }

  return result;
}

uint64_t BlueFin::GlPeVerifySubframeTime::GetVerifiedWeek(BlueFin::GlPeVerifySubframeTime *this, double a2, _DWORD *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 8089, "GetVerifiedWeek", "m_iCorrectWeekNode != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 8089, "m_iCorrectWeekNode != 0");
  }

  *this = 0xC15B773FC0000000;
  *(this + 1) = &off_2A1F0B5F0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (v3 != 1)
  {
    v6 = (a3 + 10);
    if (a3 + 10 != this)
    {
      v7 = 16;
      v8 = 15;
      v9 = 14;
      goto LABEL_7;
    }

LABEL_8:
    v10 = -7199999.0;
    goto LABEL_9;
  }

  v6 = (a3 + 2);
  if (a3 + 2 == this)
  {
    goto LABEL_8;
  }

  v7 = 8;
  v8 = 7;
  v9 = 6;
LABEL_7:
  v10 = *v6;
  v11 = a3[v9];
  v12 = a3[v8];
  *this = v10;
  *(this + 4) = v11;
  *(this + 5) = v12;
  *(this + 6) = a3[v7];
LABEL_9:
  result = BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(this, (a2 - v10) * 0.001);
  *this = a2;
  return result;
}

uint64_t BlueFin::GlPeVerifySubframeTime::GetVerifiedTow(BlueFin::GlPeVerifySubframeTime *this, double a2, const BlueFin::GlGpsTime *a3, BlueFin::GlWeekTowTime *a4)
{
  v4 = *(a3 + 19);
  if (!v4)
  {
    v30 = "m_iCorrectTowNode != 0";
    DeviceFaultNotify("glpe_timemgr.cpp", 8119, "GetVerifiedTow", "m_iCorrectTowNode != 0");
    v31 = "glpe_timemgr.cpp";
    v32 = 8119;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v31, v32, v30);
  }

  v8 = this + 8;
  *(this + 2) = 0;
  *this = 0xC15B773FC0000000;
  *(this + 1) = &off_2A1F0B5F0;
  *(this + 6) = 0;
  if (v4 == 1)
  {
    v9 = (a3 + 80);
    if ((a3 + 80) != this)
    {
      v10 = 104;
      v11 = 100;
      v12 = 96;
LABEL_7:
      v13 = *v9;
      v14 = *(a3 + v12);
      v15 = *(a3 + v11);
      *this = v13;
      *(this + 4) = v14;
      *(this + 5) = v15;
      *(this + 6) = *(a3 + v10);
      goto LABEL_9;
    }
  }

  else
  {
    v9 = (a3 + 112);
    if ((a3 + 112) != this)
    {
      v10 = 136;
      v11 = 132;
      v12 = 128;
      goto LABEL_7;
    }
  }

  v13 = -7199999.0;
LABEL_9:
  BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(this, (a2 - v13) * 0.001);
  *this = a2;
  v16 = (*(*(this + 1) + 32))(v8);
  LODWORD(v18) = *(this + 4);
  *v19.i64 = v18 * 2.32830644e-10;
  *v16.i64 = *v19.i64 + (v17 % 0x93A80);
  result = BlueFin::GlWeekTowTime::resolveTowAmbiguity(a4, v16, v33, v19);
  v33[3] = v33[0];
  v33[2] = &off_2A1F0B5F0;
  v21 = HIDWORD(v33[0]) / 0x93A80;
  *v22.i64 = LODWORD(v33[0]) * 2.32830644e-10 + (HIDWORD(v33[0]) % 0x93A80);
  v33[0] = &off_2A1F0B5F0;
  *v23.i64 = *v22.i64 - trunc(*v22.i64);
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v25 = *vbslq_s8(vnegq_f64(v24), v23, v22).i64;
  if (v25 < 0.0 || v25 >= 1.0)
  {
    v30 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v31 = "glpe_timepoint.h";
    v32 = 173;
    goto LABEL_18;
  }

  v27 = v21 & 0x3FF;
  v28 = v25 * 4294967300.0 + 0.5;
  v29 = v28;
  if (v28 >= 4294967300.0)
  {
    v29 = -1;
  }

  *(this + 4) = v29;
  *(this + 5) = *v22.i64 + 604800 * v27;
  return result;
}

void BlueFin::GlPeTimeManager::SetGalileoDataPage(__int32 **this, const BlueFin::GlGalileoINavPage *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *(a2 + 10);
  v5 = v4 > 0xA;
  v6 = (1 << v4) & 0x461;
  if (!v5 && v6 != 0)
  {
    v71[0] = *(a2 + 8);
    v72 = 0;
    v10 = 575;
    v73 = 575;
    if (v71[0] - 189 >= 0xFFFFFF44)
    {
      v11 = BlueFin::GlSvId::s_aucSvId2gnss[v71[0]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v11] == 255)
      {
        v72 = -1;
      }

      else
      {
        v73 = BlueFin::GlSignalId::s_ausGnss2signalId[v11] + v71[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v11];
        v10 = v73;
      }
    }

    v12 = this[5];
    v69 = 7;
    v70 = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss(v12, v71, &v69, a3, a4);
    if (BlueFin::GlPeSvHealthHelper::IsUsable((this[3] + 8), &v69))
    {
      BlueFin::GlPeGalTimeMgr::SetGalileoDataPage((this + 292), a2);
      if (*(this + 2344) != 1 || *(a2 + 11) != 1)
      {
LABEL_50:
        v51 = *(this + 2432);
        *(this + 2432) = 0;
        v52 = *(this + 2392);
        *(this + 2392) = 0;
        if (v51 & 1) != 0 || (v52)
        {
          BlueFin::GlPeTimeManager::updateConversionTable(this);
        }

        return;
      }

      v16 = *(this + 587);
      *v13.i64 = v16;
      v17 = *(this + 1173);
      v66 = &off_2A1F0E480;
      *v14.i64 = v16 - trunc(v16);
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      v19 = vnegq_f64(v18);
      v20 = vbslq_s8(v19, v14, v13);
      if (*v20.i64 >= 1.0)
      {
        goto LABEL_54;
      }

      v21 = *v20.i64 * 4294967300.0 + 0.5;
      v22 = v21 >= 4294967300.0 ? -1 : v21;
      v23 = 604800 * v17;
      v67 = v22;
      v68 = v16 + 619315200 + v23;
      v66 = &off_2A1F0E480;
      v24 = *(a2 + 4);
      *v20.i64 = v24;
      v64 = &off_2A1F0E480;
      *v15.i64 = v24 - trunc(v24);
      v25 = *vbslq_s8(v19, v15, v20).i64;
      if (v25 >= 1.0)
      {
        goto LABEL_54;
      }

      v26 = v25 * 4294967300.0 + 0.5;
      v27 = v26;
      if (v26 >= 4294967300.0)
      {
        v27 = -1;
      }

      LODWORD(v65) = v27;
      HIDWORD(v65) = v23 + v24 + 619315200;
      v64 = &off_2A1F0E480;
      v28 = 0.0;
      if (((*(*(*this + 1) + 4 * (v10 >> 5)) >> (v10 & 0x1F)) & 1) != 0 && (MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*this, v71, 0, 0)) != 0 && (MeMeas[12] & 0x20) != 0)
      {
        v30.i32[0] = **this;
        v28 = v30.u64[0];
        v30.i64[0] = *(MeMeas + 8);
        BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v64, v30, &v58, v31);
        v65 = v58;
        v32 = 1;
      }

      else
      {
        v32 = 0;
      }

      v33 = *(a2 + 13);
      v34 = v33;
      if (!v33)
      {
        v34 = v28;
      }

      if (v28 == 0.0)
      {
        v28 = v34;
      }

      if (v28 != 0.0)
      {
        v63 = 0.0;
        v62 = 0;
        BlueFin::GlPeTimeManager::getFlightTimeMs(this, v71, &v63, &v62);
        if ((v32 & 1) == 0)
        {
          v62 += 1000;
        }

        v35 = fabs(v63 * 0.001);
        v36 = v35 - trunc(v35);
        v37 = v36 * 4294967300.0 + 0.5;
        v38 = v37;
        if (v37 >= 4294967300.0)
        {
          v38 = -1;
        }

        if (v36 >= 0.0 && v36 < 1.0)
        {
          v39 = v35;
          if (v63 * 0.001 >= 0.0)
          {
            v40 = v65 + v38;
            v41 = HIDWORD(v65) + v39 + HIDWORD(v40);
            goto LABEL_48;
          }

          if (v65 >= __PAIR64__(v39, v38))
          {
            v42 = v65 >= v38;
            LODWORD(v40) = v65 - v38;
            v43 = !v42;
            v41 = HIDWORD(v65) - v39 - v43;
LABEL_48:
            v65 = __PAIR64__(v41, v40);
            if (!*(this + 644))
            {
              v45 = (v64[4])(&v64) / 0x93A80;
              v46 = (v64[4])(&v64);
              LODWORD(v48) = v65;
              *v49.i64 = v48 * 2.32830644e-10;
              *v46.i64 = *v49.i64 + (v47 % 0x93A80);
              BlueFin::GlGpsTime::GlGpsTime(v56, v45 + 1024, v46, v49);
              LODWORD(v50) = v62;
              v58 = v57;
              v59 = 0;
              v60 = v28;
              v61 = v50;
              BlueFin::GlPeTimeManager::SetTime(this, &v58, 4u, v71);
            }

            goto LABEL_50;
          }

          if (v39 - HIDWORD(v65) == v65 > v38 && v38 == v65)
          {
            v41 = 0;
            LODWORD(v40) = 0;
            goto LABEL_48;
          }

          v53 = "!tDelta.isNegative()";
          DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
          v54 = "glpe_datetime.h";
          v55 = 425;
LABEL_55:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v54, v55, v53);
        }

LABEL_54:
        v53 = "dFracSec >= 0.0 && dFracSec < 1.0";
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        v54 = "glpe_timepoint.h";
        v55 = 173;
        goto LABEL_55;
      }
    }
  }
}

BOOL BlueFin::GlPeTimeManager::SetBdsTime(BlueFin::GlPeTimeManager *this, char a2, int a3)
{
  v5 = *(this + 3);
  v8 = 4;
  v9 = a2;
  result = BlueFin::GlPeSvHealthHelper::IsUsable(v5 + 32, &v8);
  if (result)
  {
    v7 = *(this + 538);
    if ((v7 & 2) == 0 || *(this + 541) != a3)
    {
      *(this + 541) = a3;
      *(this + 538) = v7 | 2;
      *(this + 539) |= 2u;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::SetBdsTime(__int32 **this, int a2, int a3, unsigned int a4)
{
  v8 = this[3];
  LODWORD(v43) = 4;
  BYTE4(v43) = a2;
  result = BlueFin::GlPeSvHealthHelper::IsUsable((v8 + 8), &v43);
  if (result)
  {
    result = BlueFin::GlPeBdsTimeMgr::SetTime((this + 268), a3, a4);
    if (!*(this + 644))
    {
      v54[0] = a2 + 75;
      v55 = 0;
      v10 = 575;
      v56 = 575;
      if ((a2 - 114) >= 0x44)
      {
        v11 = BlueFin::GlSvId::s_aucSvId2gnss[(a2 + 75)];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v11] == 255)
        {
          v55 = -1;
          v10 = 575;
        }

        else
        {
          v56 = BlueFin::GlSignalId::s_ausGnss2signalId[v11] + (a2 + 75) - BlueFin::GlSvId::s_aucGnss2minSvId[v11];
          v10 = v56;
        }
      }

      result = *this;
      if ((*(*(*this + 1) + 4 * (v10 >> 5)) >> (v10 & 0x1F)))
      {
        result = BlueFin::GlPeMsmtMgr::GetMeMeas(result, v54, 0, 0);
        if (result)
        {
          if ((*(result + 12) & 0x20) != 0)
          {
            *v12.i64 = a4;
            v52 = &off_2A1F0E4D0;
            *v13.i64 = a4 - trunc(a4);
            v14.f64[0] = NAN;
            v14.f64[1] = NAN;
            v15 = vbslq_s8(vnegq_f64(v14), v13, v12);
            if (*v15.i64 >= 1.0)
            {
              goto LABEL_45;
            }

            v16 = *v15.i64 * 4294967300.0 + 0.5;
            v17 = v16;
            if (v16 >= 4294967300.0)
            {
              v17 = -1;
            }

            LODWORD(v53) = v17;
            HIDWORD(v53) = a4 + 604800 * a3 + 820108814;
            v52 = &off_2A1F0E4D0;
            v15.i64[0] = *(result + 64);
            BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v52, v15, &v43, v13);
            v53 = v43;
            v51 = 0.0;
            v50 = 0;
            BlueFin::GlPeTimeManager::getFlightTimeMs(this, v54, &v51, &v50);
            if (v50 <= 0x7D0)
            {
              v18 = 2000;
            }

            else
            {
              v18 = v50;
            }

            v19 = fabs(v51 * 0.001);
            v20 = v19 - trunc(v19);
            v21 = v20 * 4294967300.0 + 0.5;
            v22 = v21;
            if (v21 >= 4294967300.0)
            {
              v22 = -1;
            }

            if (v20 < 0.0 || v20 >= 1.0)
            {
              goto LABEL_45;
            }

            v24 = v19;
            if (v51 * 0.001 < 0.0)
            {
              if (v53 < __PAIR64__(v24, v22))
              {
                if (v24 - HIDWORD(v53) != v53 > v22 || v22 != v53)
                {
                  v40 = "!tDelta.isNegative()";
                  DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
                  v41 = "glpe_datetime.h";
                  v42 = 425;
                  goto LABEL_46;
                }

                v26 = 0;
                LODWORD(v25) = 0;
              }

              else
              {
                v27 = v53 >= v22;
                LODWORD(v25) = v53 - v22;
                v28 = !v27;
                v26 = HIDWORD(v53) - v24 - v28;
              }
            }

            else
            {
              v25 = v53 + v22;
              v26 = HIDWORD(v53) + v24 + HIDWORD(v25);
            }

            v53 = __PAIR64__(v26, v25);
            v30 = (v52[4])(&v52);
            v33 = (v52[4])(&v52);
            LODWORD(v32) = v53;
            *v33.i64 = v32 * 2.32830644e-10 + (v31 % 0x93A80) + 14.0;
            v47 = &off_2A1F0B5F0;
            *v34.i64 = *v33.i64 - trunc(*v33.i64);
            v35.f64[0] = NAN;
            v35.f64[1] = NAN;
            v36 = *vbslq_s8(vnegq_f64(v35), v34, v33).i64;
            if (v36 < 0.0 || v36 >= 1.0)
            {
LABEL_45:
              v40 = "dFracSec >= 0.0 && dFracSec < 1.0";
              DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
              v41 = "glpe_timepoint.h";
              v42 = 173;
LABEL_46:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v41, v42, v40);
            }

            v38 = v36 * 4294967300.0 + 0.5;
            v39 = v38;
            if (v38 >= 4294967300.0)
            {
              v39 = -1;
            }

            v48 = v39;
            v49 = 604800 * (v30 / 0x93A80) + 820108800 + *v33.i64;
            v47 = &off_2A1F0B5F0;
            v33.i32[0] = **this;
            v43 = __PAIR64__(v49, v39);
            v44 = 0;
            v45 = v33.u64[0];
            v46 = v18;
            return BlueFin::GlPeTimeManager::SetTime(this, &v43, 4u, v54);
          }
        }
      }
    }
  }

  return result;
}

BlueFin::GlPeTimeManagerData *BlueFin::GlPeTimeManager::AddErrorToRtc(BlueFin::GlPeTimeManagerData *this, int a2)
{
  if (a2)
  {
    v2 = this;
    *(this + 319) = *(this + 319) - a2;
    GlCustomLog(14, "GlPeTimeManager::AddErrorToRtc: RTC ERROR of %+d ms introduced\n", a2);
    this = BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v3);
    v4 |= 8u;
    v5 = *(v2 + 319);
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

uint64_t BlueFin::GlPeTimeManager::saveNvRamAndRtc(BlueFin::GlPeTimeManager *this, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  GlCustomLog(14, "GlPeTimeManager::saveNvRamAndRtc(%u):  ", *(this + 642));
  if (*(this + 1))
  {
    v4 = 0;
    v37 = 0;
    if (*(this + 2565) == 1)
    {
      v4 = *(this + 2566) << 16;
    }

    v38 = v4;
    v40 = 0;
    v5 = 0.0;
    if (a2)
    {
      v6 = 84;
    }

    else
    {
      if (BlueFin::GlPeTimeManager::GenerateTimeForNextSession(this))
      {
        *v9.i64 = BlueFin::GlPeGnssTime::GetUncUs(this + 2880, 0) + 0.5;
        *v11.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
        v12.f64[0] = NAN;
        v12.f64[1] = NAN;
        v13 = vnegq_f64(v12);
        *&v14 = vbslq_s8(v13, v11, v9).u64[0];
        if (*v9.i64 > 4294967300.0)
        {
          *v9.i64 = v14;
        }

        if (*v9.i64 < -4294967300.0)
        {
          *v10.i64 = -*v9.i64;
          *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
          *v9.i64 = -*vbslq_s8(v13, v9, v10).i64;
        }

        if (*v9.i64 < 0.0)
        {
          v15 = --*v9.i64;
        }

        else
        {
          v15 = *v9.i64;
        }

        v35 = &off_2A1F0B5F0;
        v36 = 0;
        Gps = BlueFin::GlPeGnssTime::GetGps((this + 2880), &v35);
        v17 = (v35[4])(&v35, Gps);
        v18 = (v35[4])(&v35);
        v20 = v17 / 0x93A80;
        v22.i32[0] = v36;
        v21 = v22.u64[0] * 2.32830644e-10 + (v18 % 0x93A80);
        *v22.i64 = v21 * 7101.46709 + 0.5;
        *v23.i64 = *v22.i64 + trunc(*v22.i64 * 2.32830644e-10) * -4294967300.0;
        v24.f64[0] = NAN;
        v24.f64[1] = NAN;
        v25 = vnegq_f64(v24);
        *&v26 = vbslq_s8(v25, v23, v22).u64[0];
        if (*v22.i64 > 4294967300.0)
        {
          *v22.i64 = v26;
        }

        if (*v22.i64 < -4294967300.0)
        {
          *v19.i64 = -*v22.i64;
          *v22.i64 = -(*v22.i64 - trunc(*v22.i64 * -2.32830644e-10) * -4294967300.0);
          *v22.i64 = -*vbslq_s8(v25, v22, v19).i64;
        }

        if (*v22.i64 < 0.0)
        {
          v27 = --*v22.i64;
        }

        else
        {
          v27 = *v22.i64;
        }

        if (v21 > 604799.0 && v27 == 0)
        {
          ++v20;
        }

        if (v15 >= 2)
        {
          v29 = 0x8000;
        }

        else
        {
          v29 = 49152;
        }

        v30 = v29 | v4;
        LOWORD(v4) = v20 | v30;
        v37 = v27;
        v38 = v20 | v30;
        v5 = v27 * 0.000140815973;
      }

      v6 = 70;
    }

    v39 = *(this + 1169);
    v31 = 89;
    if ((v4 & 0x8000) == 0)
    {
      v31 = 78;
    }

    v32 = 70;
    if (*(this + 2565))
    {
      v32 = 84;
    }

    GlCustomLog(14, "Invalidate:%c  UnitIdValid:%c  UnitId:%02x  GpsValid:%c  ", v6, v32, *(this + 2566), v31);
    if ((v4 & 0x8000) != 0)
    {
      v33 = 89;
      if ((v4 & 0x4000) == 0)
      {
        v33 = 78;
      }

      GlCustomLog(14, "GpsPrecise:%c  GpsWeek:%u  GpsTowS:%.6lf", v33, v4 & 0x3FFF, v5);
    }

    GlCustomLog(14, "\n");
    result = (*(**(this + 1) + 328))(*(this + 1), *(this + 642), &v37, a2);
    v34 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];

    return GlCustomLog(14, "MeasEng does not exist! No data daved to NVRAM.\n");
  }

  return result;
}

BOOL BlueFin::GlPeTimeManager::GenerateTimeForNextSession(BlueFin::GlPeTimeManager *this)
{
  if (*(this + 2768))
  {
    return 0;
  }

  if (*(this + 722) == -1 || (v3 = *(this + 363), v3 == 4294967300.0))
  {
    result = BlueFin::GlPeTimeManager::getTimeForSave(this, (this + 2880));
    if (!result)
    {
      return result;
    }

    if (*(this + 722) == -1)
    {
      return 0;
    }

    v3 = *(this + 363);
  }

  if (v3 != 4294967300.0)
  {
    return BlueFin::GlPeGnssTime::GetUncUs(this + 2880, 0) < 15000000.0;
  }

  return 0;
}

BOOL BlueFin::GlPeTimeManager::getTimeForSave(BlueFin::GlPeTimeManager *this, BlueFin::GlPeGnssTime *a2)
{
  v4 = *(this + 642);
  if (v4 <= 0xFF9222FE)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4;
  }

  BlueFin::GlPeTimeManager::GetTime(this, v5, 1, &v44);
  if (*(this + 4875) == 1)
  {
    IsTimeUncVerified = *(this + 644) != 0;
  }

  else
  {
    IsTimeUncVerified = BlueFin::GlPeTimeManager::IsTimeUncVerified(this);
  }

  v7 = *(this + 704);
  v8 = *(this + 354);
  v9 = -1;
  if (v7 != -1 && v8 != 4294967300.0)
  {
    v10 = *(this + 718);
    v11 = v10 + v5;
    if (__CFADD__(v10, v5))
    {
      v11 = -1;
    }

    if (v5 >= 4294967300.0 || v10 == -1)
    {
      v9 = -1;
    }

    else
    {
      v9 = v11;
    }
  }

  v40 = *(this + 351);
  v41 = v7;
  v42 = *(this + 353);
  v43 = v8;
  BlueFin::GlPeGnssTime::operator+=(&v40, (v5 - v42) * 0.001);
  v13 = *(this + 357) + *(this + 358) * (v5 * 0.001);
  v42 = v5;
  v43 = v13;
  if (BlueFin::GlUtils::m_ucEnabled && BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF))
  {
    BlueFin::GlPeTimeManager::IsTimeUncVerified(this);
  }

  if (v9 >= 0x5265C00)
  {
    v14 = 86400000;
  }

  else
  {
    v14 = v9;
  }

  v15 = (68719477 * v14) >> 36;
  v16 = *(this + 4875);
  v17 = BlueFin::GlPeTimeManager::IsTimeUncVerified(this);
  v18 = 78;
  if (*(this + 645) == 5)
  {
    v19 = 89;
  }

  else
  {
    v19 = 78;
  }

  if (v17)
  {
    v20 = 89;
  }

  else
  {
    v20 = 78;
  }

  v38 = v20;
  v39 = v19;
  if (IsTimeUncVerified)
  {
    v21 = 89;
  }

  else
  {
    v21 = 78;
  }

  if (v9 <= 0x5265BFF)
  {
    v22 = 89;
  }

  else
  {
    v22 = 78;
  }

  if (v16)
  {
    v18 = 89;
  }

  GlCustomLog(14, "GlPeTimeManager::SaveTimetoNvmem(%.0lf): VerNvMemAgeS:%lu  AllowUnver:%c  NvMemTimeUsable:%c  TimeMgrUsable:%c  TimeUncVerified():%c  TimeMgrFullSatVer:%c  ", v5, v15, v18, v22, v21, v38, v39);
  if (IsTimeUncVerified)
  {
    v23 = *(this + 645);
    if (v23 == 5 || v9 > 0x5265BFF || (v24 = v43, v43 >= *(&v46 + 1)))
    {
      if (&v44 != a2)
      {
        *a2 = v44;
        *(a2 + 2) = v45;
        *(a2 + 1) = v46;
      }

      if (v23 == 5)
      {
        v25 = 4;
      }

      else
      {
        v25 = 3;
      }

      v24 = v43;
LABEL_61:
      if (v41 == -1 || v24 == 4294967300.0)
      {
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
        }

        v29 = BlueFin::GlPeTimeManager::getTimeForSave(BlueFin::GlPeGnssTime &)const::acSaveTmSrc[v25];
        v30 = *(a2 + 3);
        GlCustomLog(14, "NvMemUncUs:---  TmUncUs:%.3lf  Tm-Nv(s):---  SaveTmSrc:%s  SaveTmUncUs:%.3lf\n");
      }

      else
      {
        BlueFin::GlPeGnssTime::operator-(&v44, &v40);
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
        }

        v27 = BlueFin::GlPeTimeManager::getTimeForSave(BlueFin::GlPeGnssTime &)const::acSaveTmSrc[v25];
        v28 = *(a2 + 3);
        GlCustomLog(14, "NvMemUncUs:%.3lf  TmMgrUncUs:%.3lf  Tm-Nv(s):%+.6lf  SaveTmSrc:%s  SaveTmUncUs:%.3lf\n");
      }

      goto LABEL_69;
    }

LABEL_58:
    if (&v40 != a2)
    {
      *a2 = v40;
      *(a2 + 2) = v41;
      *(a2 + 2) = v42;
      *(a2 + 3) = v24;
    }

    v25 = 1;
    goto LABEL_61;
  }

  if (v9 <= 0x5265BFF)
  {
    if (*(&v46 + 1) >= 1.0)
    {
      v24 = v43;
    }

    else
    {
      v26 = fabs(BlueFin::GlPeGnssTime::operator-(&v44, &v40));
      v24 = v43;
      if (v26 < v43)
      {
        if (&v44 != a2)
        {
          *a2 = v44;
          *(a2 + 2) = v45;
          *(a2 + 1) = v46;
        }

        v25 = 2;
        goto LABEL_61;
      }
    }

    goto LABEL_58;
  }

  *(a2 + 2) = v5;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
  }

  GlCustomLog(14, "Time not saved to NVMEM\n", v33, v34, v35, v36, v37);
LABEL_69:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
  }

  return *(a2 + 3) != 4294967300.0 && *(a2 + 2) != -1;
}

uint64_t BlueFin::GlPeTimeManager::getLeapSecFromHardcodedSchedule(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeGnssTime *a2, signed __int8 *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(this + 2);
    if (v8 <= 5)
    {
      v9 = qword_298A45EF0[v8];
      v10 = qword_298A45F20[v8];
      KnownLeapSeconds = BlueFin::GlPeSpecialTimeEvents::GetKnownLeapSeconds(v5);
      v7 = *&KnownLeapSeconds[v9];
      v6 = *&KnownLeapSeconds[v10];
    }

    v12 = *(this + 1);
    if (v12 < v6 || (v12 == v6 ? (v13 = *this >= v7) : (v13 = 1), !v13))
    {
      v22 = BlueFin::GlPeSpecialTimeEvents::GetKnownLeapSeconds(v5);
      LOBYTE(v23) = 0;
      *a2 = *v22 - 1;
      return v23;
    }

    v14 = v5++;
  }

  while (v14 < 5);
  *a2 = byte_2A18BAB18 - 1;
  v15 = *(this + 2);
  v27 = 0;
  BlueFin::GlPeGnssTime::getDateTime(this, v15, &v27);
  v19 = v27;
  v20 = HIDWORD(v27);
  v21 = v6 | v7;
  if (v6 | v7)
  {
    if (v27 < __PAIR64__(v6, v7))
    {
      v20 = (__PAIR64__(v6, v7) - v27) >> 32;
      v19 = v7 - v27;
      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = (v27 - __PAIR64__(v6, v7)) >> 32;
      v19 = v27 - v7;
    }
  }

  *v16.i64 = v19 * 2.32830644e-10 + v20;
  if ((v21 & ((v20 | v19) != 0)) != 0)
  {
    *v16.i64 = -*v16.i64;
  }

  *v16.i64 = ceil(*v16.i64 / 63115200.0);
  *v18.i64 = *v16.i64 + trunc(*v16.i64 * 2.32830644e-10) * -4294967300.0;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v25 = vnegq_f64(v24);
  v18.i64[0] = vbslq_s8(v25, v18, v16).u64[0];
  if (*v16.i64 > 4294967300.0)
  {
    v16.i64[0] = v18.i64[0];
  }

  if (*v16.i64 < -4294967300.0)
  {
    *v17.i64 = -*v16.i64;
    *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
    *v16.i64 = -*vbslq_s8(v25, v16, v17).i64;
  }

  if (*v16.i64 < 0.0)
  {
    return --*v16.i64;
  }

  else
  {
    LOBYTE(v23) = *v16.i64;
  }

  return v23;
}

BlueFin::GlPeTimeManager *BlueFin::GlPeTimeManager::Reset(BlueFin::GlPeTimeManager *this, int a2)
{
  v3 = this;
  if (a2 == 4 && *(this + 4873) == 1 && *(this + 2561) == 1)
  {
    v4 = *(this + 2562);
  }

  else
  {
    v4 = 1;
  }

  v5 = (a2 != 6) & v4;
  if (a2 == 1 || (v4 & 1) == 0)
  {
    if (((a2 != 6) & v4) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

  BlueFin::GlPeTimeManager::resetTimeModels(this);
  if (v5)
  {
LABEL_11:
    BlueFin::GlPeTimeManager::resetMgr(v3);
    if ((a2 | 4) != 5)
    {
      *(v3 + 2808) = 0;
      *(v3 + 2816) = -1;
      *(v3 + 2824) = 0xC15B773FC0000000;
      *(v3 + 2832) = 0x41EFFFFFFFE00000;
      *(v3 + 2840) = 0x80;
    }

    if (*(v3 + 2560) == 1)
    {
      BlueFin::GlPeTimeManager::saveNvRamAndRtc(v3, 1);
    }
  }

  v6 = BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v7);
  v8 |= 4u;
  v9 = a2;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      v6 = (*(v7 + 24))(&v7, 0, 0);
    }
  }

  return BlueFin::GlPeTimeManager::outputDebugResetReason(v6, a2);
}

uint64_t BlueFin::GlPeTimeManager::outputDebugResetReason(uint64_t a1, int a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) > 5)
  {
    v4 = "<unknown>";
    LOBYTE(v3) = 11;
  }

  else
  {
    v3 = 0xE0E0E0C0B0EuLL >> (8 * v2);
    v4 = off_29EEB44A8[v2];
  }

  return GlCustomLog(v3, "GlPeTimeManager::Reset:  Resetting Time Manager.  Reason:%s\n", v4);
}

uint64_t BlueFin::GlPeTimeManager::SerializeTime(BlueFin::GlPeTimeManager *this, BlueFin::GlPeEngineCallBacks *a2)
{
  if (*(this + 3648))
  {
    v4 = *(this + 642);
    *(this + 913) = v4;
    *(this + 3648) = 0;
  }

  else
  {
    v4 = *(this + 913);
  }

  if ((v4 != -7200001 || (*(*(this + 457) + 32))()) && *(this + 460) != 1.79769313e308)
  {
    (*(*(this + 455) + 24))(this + 3640, a2, 0);
  }

  BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v10);
  if (BlueFin::GlPeTimeManager::GenerateTimeForNextSession(this))
  {
    v11 |= 1u;
    v12 = 1;
    if (&v13 != (this + 2880))
    {
      v13 = *(this + 360);
      v14 = *(this + 722);
      v15 = *(this + 181);
    }

    if (*(this + 645) == 5)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(this + 704);
      if (v5 != -1)
      {
        if (*(this + 354) == 4294967300.0)
        {
          v5 = -1;
        }

        else
        {
          v6 = *(this + 362);
          v5 = -1;
          if (v6 < 4294967300.0)
          {
            v7 = *(this + 718);
            if (v7 != -1)
            {
              v5 = v7 + v6;
              if (__CFADD__(v7, v6))
              {
                v5 = -1;
              }
            }
          }
        }
      }
    }

    v16 = v5;
  }

  if ((*(this + 2912) & 1) == 0)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
    }

    GlCustomLog(14, "GlPeTimeManager::RtcSummary(%u): SleepTime:%.6lf(s)  Precise Time not achieved in this session  TimeMgrUnc:%.1lf(us)\n", *(this + 642), *(this + 319) * 0.001, *(this + 342));
    *(this + 2912) = 1;
  }

  if (*(this + 646))
  {
    v11 |= 0x10u;
    LOBYTE(v8) = *(this + 2588);
LABEL_30:
    v17 = v8;
    return (*(v10 + 24))(&v10, a2, 0);
  }

  v8 = *(this + 2840);
  if (v8 != 128)
  {
    v11 |= 0x10u;
    goto LABEL_30;
  }

  return (*(v10 + 24))(&v10, a2, 0);
}

uint64_t BlueFin::GlPeTimeManager::SerializeModels(BlueFin::GlPeTimeManager *this, BlueFin::GlPeEngineCallBacks *a2)
{
  BlueFin::GlPeGpsTimeMgr::Serialize(this + 64, a2);
  if (BlueFin::GlPeTimeManager::TimeKnown(this, 1, 0x3938700u))
  {
    BlueFin::GlPeTimeManager::GetTime(this, 1, v8);
    v9[0] = &off_2A1F0E430;
    v9[1] = 0;
    BlueFin::GlPeGnssTime::GetGlns(v8, v9);
    if ((*(this + 400) & 1) != 0 || (*(this + 344) & 1) != 0 || (*(this + 432) & 1) != 0 || *(this + 436) == 1)
    {
      v4 = (this + 192);
      v5 = v9;
      v6 = a2;
LABEL_12:
      BlueFin::GlPeGlnTimeMgr::serialize(v4, v6, v5, 0);
    }
  }

  else if ((*(this + 400) & 1) != 0 || (*(this + 344) & 1) != 0 || (*(this + 432) & 1) != 0 || *(this + 436) == 1)
  {
    v4 = (this + 192);
    v6 = a2;
    v5 = 0;
    goto LABEL_12;
  }

  BlueFin::GlPeBdsTimeMgr::Serialize(this + 2144, a2);
  BlueFin::GlPeGalTimeMgr::Serialize(this + 2336, a2);
  return BlueFin::GlPeNicTimeMgr::Serialize(this + 2440, a2);
}

uint64_t BlueFin::GlPeTimeManager::recoverFromSleep(double *a1, uint64_t a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  v7 = a1[319];
  if (v7 <= 0.0)
  {
    GlCustomLog(14, "GlPeTimeManager::recoverFromSleep: could not recover due to sleep time could not be determined\n");
    v12 = 0;
    return v12 & 1;
  }

  LODWORD(v10) = 604800;
  if (*(a1 + 913) != -7200001 || (a1[456] & 1) == 0 && (*(*(a1 + 457) + 32))())
  {
    HIDWORD(v11) = 2146435071;
    if (a1[460] != 1.79769313e308)
    {
      if (*(a1 + 3648) == 1)
      {
        LODWORD(v11) = *(a1 + 913);
        *a3.i64 = v7 + *(a2 + 24) - v11;
      }

      else
      {
        v54 = &off_2A1F0B5F0;
        v55 = 0;
        Gps = BlueFin::GlPeGnssTime::GetGps((a2 + 8), &v54);
        v14 = (v54[4])(&v54, Gps);
        LODWORD(v15) = v55;
        v16 = v15 * 2.32830644e-10 + v14;
        v17 = (*(*(a1 + 457) + 32))();
        LODWORD(v18) = *(a1 + 916);
        *a3.i64 = v7 + (v16 - (v18 * 2.32830644e-10 + v17)) * 1000.0;
      }

      *a3.i64 = *a3.i64 + 0.5;
      *a6.i64 = *a3.i64 + trunc(*a3.i64 * 2.32830644e-10) * -4294967300.0;
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v20 = vnegq_f64(v19);
      a6.i64[0] = vbslq_s8(v20, a6, a3).u64[0];
      if (*a3.i64 > 4294967300.0)
      {
        a3.i64[0] = a6.i64[0];
      }

      if (*a3.i64 < -4294967300.0)
      {
        *a5.i64 = -*a3.i64;
        *a3.i64 = -(*a3.i64 - trunc(*a3.i64 * -2.32830644e-10) * -4294967300.0);
        *a3.i64 = -*vbslq_s8(v20, a3, a5).i64;
      }

      if (*a3.i64 < 0.0)
      {
        v21 = --*a3.i64;
      }

      else
      {
        v21 = *a3.i64;
      }

      v10 = ((v21 + 999) * 0x4189374BC6A7F0uLL) >> 64;
    }
  }

  v22 = a1[460];
  v23 = v22;
  if (*(a1 + 913) == -7200001)
  {
    v24 = 0.0;
    v25 = 200000.0;
    if ((a1[456] & 1) != 0 || !(*(*(a1 + 457) + 32))(v22))
    {
LABEL_25:
      v26 = 0;
      *&v30 = 100.0;
LABEL_26:
      v27 = *&v30;
      goto LABEL_27;
    }

    v23 = a1[460];
  }

  v26 = 0;
  v24 = 0.0;
  v25 = 200000.0;
  v27 = 100.0;
  if (v23 == 1.79769313e308)
  {
    goto LABEL_27;
  }

  v28 = v22 * 0.001;
  HIDWORD(v29) = 1079590912;
  if (v22 * 0.001 >= 101.0)
  {
    goto LABEL_27;
  }

  if (*(a1 + 906) < v10)
  {
    goto LABEL_25;
  }

  v24 = a1[459];
  LODWORD(v29) = *(a1 + 908);
  v25 = v29;
  HIDWORD(v40) = 1079574528;
  if (v28 >= 100.0)
  {
    if (v25 < 1001.0)
    {
      v25 = 1001.0;
    }

    v26 = 1;
    *&v30 = 50.0;
    goto LABEL_26;
  }

  LODWORD(v40) = *(a1 + 907);
  v41 = v40;
  if (v28 >= v41)
  {
    v27 = v22 * 0.001;
  }

  else
  {
    v27 = v41;
  }

  v26 = 1;
LABEL_27:
  *a7.i64 = (1.0 - v24) * a1[319];
  v31 = *(a2 + 32);
  v53 = a7;
  v32 = v31 + v27 * *a7.i64 * 0.001;
  v33 = *(a2 + 16);
  if (v32 >= v25)
  {
    v34 = v31 + v27 * *a7.i64 * 0.001;
  }

  else
  {
    v34 = v25;
  }

  v60 = *(a2 + 8);
  v61 = v33;
  *&v62 = -*a7.i64;
  *(&v62 + 1) = v34;
  BlueFin::GlPeGnssTime::operator+=(&v60, (*a7.i64 + 0.0) * 0.001);
  *&v62 = 0;
  *(a1 + 2841) = 0;
  v36.i64[1] = v53.i64[1];
  if (*v53.i64 >= 604800000.0)
  {
    goto LABEL_61;
  }

  v37 = *(&v62 + 1);
  if (*(&v62 + 1) > 0.0 && *(&v62 + 1) < 15000000.0)
  {
    v38 = *(a2 + 40) + *v53.i64;
    *(a1 + 718) = v38;
    if (a1 + 351 != &v60)
    {
      *(a1 + 351) = v60;
      *(a1 + 704) = v61;
      a1[353] = 0.0;
      *(a1 + 354) = v37;
    }

    if (*(a1 + 644))
    {
      v39 = v26;
    }

    else
    {
      v39 = 1;
    }

    if ((v39 & 1) != 0 || *(a1 + 4875) == 1)
    {
      *(a1 + 2841) = 1;
      a1[356] = v24;
      a1[357] = v32;
      a1[358] = v27;
LABEL_41:
      LOBYTE(v54) = 0;
      BlueFin::GlPeTimeManager::SetTime(a1, &v60, 1u, &v54);
      BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v54);
      v57 = v60;
      v58 = v61;
      v36.i64[1] = *(&v62 + 1);
      v59 = v62;
      v56 = 1;
      LODWORD(v55) = v55 | 0x40;
      if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (v54[3])(&v54, 0, 0);
      }

      goto LABEL_53;
    }

    *(a1 + 2841) = v38 < 0x5265C00;
    a1[356] = v24;
    a1[357] = v32;
    a1[358] = v27;
    if (v38 <= 0x5265BFF)
    {
      goto LABEL_41;
    }
  }

LABEL_53:
  v42 = *a1;
  *(*a1 + 18816) = *v53.i64 < 300000.0;
  *v36.i64 = *v53.i64 + trunc(*v53.i64 * 2.32830644e-10) * -4294967300.0;
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v44 = vnegq_f64(v43);
  v45 = vbslq_s8(v44, v36, v53);
  if (*v53.i64 <= 4294967300.0)
  {
    v45.i64[0] = v53.i64[0];
  }

  if (*v45.i64 < -4294967300.0)
  {
    *v35.i64 = -*v45.i64;
    *v45.i64 = -(*v45.i64 - trunc(*v45.i64 * -2.32830644e-10) * -4294967300.0);
    *v45.i64 = -*vbslq_s8(v44, v45, v35).i64;
  }

  if (*v45.i64 < 0.0)
  {
    v46 = --*v45.i64;
  }

  else
  {
    v46 = *v45.i64;
  }

  *(*&v42 + 37408) = v46;
LABEL_61:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
  }

  v47 = 78;
  if (*(a1 + 2841))
  {
    v47 = 89;
  }

  GlCustomLog(14, "GlPeTimeManager::recoverFromSleep: SleepTimeMs:%.3lf  TimeUncUs:%.3lf  TimeRecovered:%c\n", a1[319], *(&v62 + 1), v47);
  if (*(a1 + 2841) != 1)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
    }

    GlCustomLog(14, "GlPeTimeManager::recoverFromSleep(%u): could not recover due to ", *(a1 + 642));
    if (*v53.i64 >= 604800000.0)
    {
      GlCustomLog(14, "sleep time too long (%.2lf days)\n");
    }

    else if (*(&v62 + 1) <= 0.0)
    {
      GlCustomLog(14, "invalid time unc (%.1g us)\n");
    }

    else if (*(&v62 + 1) >= 15000000.0)
    {
      GlCustomLog(14, "time unc too big (%.1f sec)\n");
    }

    else
    {
      GlCustomLog(14, "unknown reason\n", v50, v51, v52);
    }

    goto LABEL_89;
  }

  if (v26)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
    }

    v48 = *v53.i64 - a1[319];
    GlCustomLog(14, "GlPeTimeManager::recoverFromSleep: PreciseRtcUsed:Y  RtcModelAgeS:%u  RtcFreqOffsetPpb:%+.3lf  AdjustedSleepMs:%.3lf  AdjustedRtcOffsetMs:%+.3lf\n");
    goto LABEL_89;
  }

  if (!BlueFin::GlUtils::m_ucEnabled || !BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF))
  {
LABEL_81:
    if (*(a1 + 913) == -7200001 && ((a1[456] & 1) != 0 || !(*(*(a1 + 457) + 32))()))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (*(a1 + 913) == -7200001)
  {
    if ((a1[456] & 1) == 0)
    {
      (*(*(a1 + 457) + 32))();
    }

    goto LABEL_81;
  }

LABEL_84:
  a1[460];
LABEL_85:
  GlCustomLog(14, "GlPeTimeManager::recoverFromSleep: PreciseRtcUsed:N  RtcModelAgeS:%lu  RtcFreqOffsetPpb:---  AdjustedSleepMs:---  AdjustedRtcOffsetMs:---\n");
LABEL_89:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
  }

  *(a1 + 2913) = 1;
  v12 = *(a1 + 2841);
  return v12 & 1;
}

void BlueFin::GlPeTimeManager::updateLeapSecFromNvMem(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeGnssTime *a2, unsigned __int8 a3)
{
  if (*(this + 644))
  {
    BlueFin::GlPeTimeManager::GetUtcTime(v18, this);
    v15 = *a2;
    v16 = *(a2 + 2);
    v17 = *(a2 + 1);
    v7[0] = &unk_2A1F11310;
    v7[1] = 0;
    v6 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
    v8 = 1980;
    v9 = v6 / 0x15180 + 1;
    v10 = 1;
    v11 = v6 / 0x15180 + 1;
    v12 = v6 % 0x15180 / 0xE10;
    v13 = (2185 * (v6 - 3600 * ((1193047 * v6) >> 32))) >> 17;
    v14 = v6 - 60 * ((71582789 * v6) >> 32);
    BlueFin::GlPeGnssTime::GetUtc(&v15, v7);
    if (v19 == v8 && v20 / 3 == v10 / 3)
    {
      BlueFin::GlPeTimeManager::updateLeapSeconds(this, a3, 7, 0, -128);
    }
  }
}

BlueFin::GlPeTimeManagerData *BlueFin::GlPeTimeManager::AsicStarted(BlueFin::GlPeTimeManager *this, unsigned int a2, int a3, double a4, int a5, int a6)
{
  GlCustomLog(14, "GlPeTimeManager::AsicStarted(%u):", a2);
  GlCustomLog(14, "  SleepTime(sec):");
  if (a3)
  {
    *(this + 319) = a4 - a2;
    GlCustomLog(14, "%.3lf");
  }

  else
  {
    *(this + 319) = 0;
    GlCustomLog(14, "<unknown>");
  }

  GlCustomLog(14, "  UnitId:");
  if (a5)
  {
    GlCustomLog(14, "%02x", a6);
    *(this + 2566) = a6;
    v12 = 1;
  }

  else
  {
    GlCustomLog(14, "<unknown>");
    v12 = 0;
  }

  *(this + 2565) = v12;
  GlCustomLog(14, "\n");
  BlueFin::GlPeTimeManager::SetCurrentAsicLms(this, a2);
  *(this + 2560) = 1;
  result = BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v14);
  v15 |= 8u;
  v16 = *(this + 319);
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return (*(v14 + 24))(&v14, 0, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::RecoverTimeFromNvRam(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 2552);
  if (v6 > 0.0)
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v22 = v3;
    v8 = (a1 + 2776);
    if (a1 + 2776 != a2)
    {
      *(a1 + 2776) = *a2;
      *(a1 + 2784) = *(a2 + 8);
      *(a1 + 2800) = *(a2 + 24);
    }

    v9 = -v6;
    *(a1 + 2792) = -v6;
    BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v12);
    v13 |= 1u;
    v14 = 1;
    if (&v15 != v8)
    {
      v15 = *(a1 + 2776);
      v16 = *(a1 + 2784);
      v10 = *(a1 + 2800);
      v17 = v9;
      v18 = v10;
    }

    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v12 + 24))(&v12, 0, 0);
    }
  }

  return 0;
}

__n128 BlueFin::GlPeTimeManager::ClearSystemOffsets(BlueFin::GlPeTimeManager *this)
{
  *(this + 34) = 0;
  *(this + 140) = 0;
  *(this + 19) = 0;
  *(this + 10) = 0u;
  *(this + 176) = 0;
  BlueFin::GlPeGlnTimeMgr::ResetModels((this + 192));
  *(this + 269) &= 0xFFFFFF83FFFFFF83;
  *(this + 546) = 2;
  *(this + 1094) = 0;
  *(this + 274) = 0;
  *(this + 2200) = 0u;
  *(this + 556) = 2;
  *(this + 1114) = 0;
  *(this + 279) = 0;
  *(this + 140) = 0u;
  *(this + 566) = 2;
  *(this + 1134) = 0;
  *(this + 284) = 0;
  *(this + 2280) = 0u;
  *(this + 576) = 2;
  *(this + 1154) = 0;
  *(this + 2312) = 0u;
  *(this + 291) = 0;
  *(this + 1086) = 0;
  *(this + 542) = 0;
  *(this + 590) = 0;
  *(this + 1182) = 0;
  *(this + 592) = 0;
  result = 0u;
  *(this + 2372) = 0u;
  *(this + 602) = 0;
  *(this + 1206) = 0;
  *(this + 604) = 0;
  *(this + 1212) = 0;
  *(this + 605) = 0;
  *(this + 2392) = 0;
  *(this + 2432) = 0;
  *(this + 618) = 0;
  *(this + 1238) = 0;
  *(this + 620) = 0;
  *(this + 2484) = 0;
  *(this + 2490) = 0;
  *(this + 630) = 0;
  *(this + 1262) = 0;
  *(this + 632) = 0;
  *(this + 2532) = 0;
  *(this + 635) = 0;
  *(this + 2504) = 0;
  *(this + 2544) = 0;
  return result;
}

uint64_t BlueFin::GlPeTimeManager::DelayedReset(BlueFin::GlPeTimeManager *this)
{
  v1 = *(this + 4672);
  if (v1 == 1)
  {
    GlCustomLog(14, "GlPeTimeManager::Reset:  Resetting Time Manager.  Reason:%s\n", "Ignore Time");
    BlueFin::GlPeTimeManager::resetMgr(this);
    *(this + 4672) = 0;
  }

  return v1;
}

uint64_t BlueFin::GlPeTimeManager::GetRtcAnalyticsInfo(BlueFin::GlPeTimeManager *this, uint64_t a2)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 4) = *(this + 642);
  if (*(this + 704) != -1 && *(this + 354) != 4294967300.0)
  {
    *(a2 + 8) = *(this + 319);
    *(a2 + 16) = *(this + 357);
    v4.f64[0] = *(this + 356);
    v4.f64[1] = *(this + 358);
    v5 = vmulq_f64(v4, xmmword_298A44A70);
    *(a2 + 24) = v5;
    LODWORD(v5.f64[0]) = *(this + 718);
    *(a2 + 40) = (*&v5.f64[0] * 0.001);
    *a2 = 1;
    if (*(this + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(this, *(this + 353), 1, v11);
      BlueFin::GlPeTimeManager::GetTime(this, *(this + 353), 1, v10);
      v6 = BlueFin::GlPeGnssTime::operator-(v10, this + 2808);
      v7 = v12;
      *(a2 + 48) = v6 * 1000.0;
      *(a2 + 56) = v7;
      *a2 |= 2u;
    }
  }

  if (*(this + 913) != -7200001 || (*(this + 3648) & 1) == 0 && (*(*(this + 457) + 32))())
  {
    v8 = *(this + 460);
    if (v8 != 1.79769313e308 && (*(this + 3648) & 1) == 0)
    {
      *(a2 + 64) = *(this + 459) * 1000000000.0;
      *(a2 + 72) = v8;
      *a2 |= 4u;
    }
  }

  return 1;
}

double BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a4 | a3;
  if (a4 | a3)
  {
    if (a2 > a4 || a2 == a4 && a1 >= a3)
    {
      v4 = 0;
      v5 = a1 >= a3;
      a1 -= a3;
      v6 = !v5;
      a2 = a2 - a4 - v6;
    }

    else
    {
      v5 = a3 >= a1;
      a1 = a3 - a1;
      v7 = !v5;
      a2 = a4 - a2 - v7;
      v4 = 1;
    }
  }

  result = a1 * 2.32830644e-10 + a2;
  if ((v4 & ((a2 | a1) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

uint64_t BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(uint64_t result, double a2)
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
    goto LABEL_22;
  }

  v7 = v2;
  v8 = *(result + 16);
  v9 = *(result + 20);
  if (a2 < 0.0)
  {
    if (__PAIR64__(v9, v8) < __PAIR64__(v7, v5))
    {
      if (v7 - v9 != v8 > v5 || v5 != v8)
      {
        v15 = "!tDelta.isNegative()";
        DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
        v16 = "glpe_datetime.h";
        v17 = 425;
LABEL_22:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
      }

      v11 = 0;
      LODWORD(v10) = 0;
    }

    else
    {
      v12 = v8 >= v5;
      LODWORD(v10) = v8 - v5;
      v13 = !v12;
      v11 = v9 - v7 - v13;
    }
  }

  else
  {
    v10 = v8 + v5;
    v11 = v9 + v7 + HIDWORD(v10);
  }

  *(result + 16) = v10;
  *(result + 20) = v11;
  return result;
}

uint64_t BlueFin::GlGalTime::GlGalTime(uint64_t this, int a2, int8x16_t a3, int8x16_t a4)
{
  *this = &off_2A1F0E480;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  *(this + 8) = v7;
  *(this + 12) = *a3.i64 + 604800 * a2 + 619315200;
  *this = &off_2A1F0E480;
  return this;
}

uint64_t BlueFin::GlBdsTime::GlBdsTime(uint64_t this, int a2, int8x16_t a3, int8x16_t a4)
{
  *this = &off_2A1F0E4D0;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  *(this + 8) = v7;
  *(this + 12) = *a3.i64 + 604800 * a2 + 820108814;
  *this = &off_2A1F0E4D0;
  return this;
}

uint64_t BlueFin::GlNicTime::GlNicTime(uint64_t this, int a2, int8x16_t a3, int8x16_t a4)
{
  *this = &off_2A1F0DFC8;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  *(this + 8) = v7;
  *(this + 12) = *a3.i64 + 604800 * a2 + 619315200;
  *this = &off_2A1F0DFC8;
  return this;
}

uint64_t BlueFin::GlGlnsTime::ctFct2AdjustedFctS(BlueFin::GlGlnsTime *this, unsigned int *a2)
{
  if (BlueFin::GlWeekTowTime::m_ucNextLs < BlueFin::GlWeekTowTime::m_ucCurrentLs || BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent == 0)
  {
    v4 = 0;
  }

  else if (*(this + 3) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  result = (*(*this + 32))(this);
  *a2 = result + v4;
  return result;
}

uint64_t _GLOBAL__sub_I_glpe_timemgr_cpp()
{
  BlueFin::GlPeSpecialTimeEvents::m_aotKnownLeapSeconds[0] = 14;
  qword_2A18BA8D0 = 0x30E1DE0D00000000;
  qword_2A18BA8C8 = &off_2A1F0B5F0;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= (BlueFin::GlWeekTowTime::m_ucCurrentLs | 0x30E1DE00u))
  {
    v0 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v0 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BA8E0 = 0;
  unk_2A18BA8E4 = v0 | 0x30E1DE00;
  qword_2A18BA8D8 = &off_2A1F0E430;
  dword_2A18BA8F0 = 0;
  unk_2A18BA8F4 = v0 | 0x30E1DE00;
  qword_2A18BA8E8 = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BA8E8);
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BA8E8);
  qword_2A18BA910 = 0x30E1DE0D00000000;
  qword_2A18BA908 = &off_2A1F0E480;
  qword_2A18BA920 = 0x30E1DE0E00000000;
  qword_2A18BA918 = &off_2A1F0E4D0;
  qword_2A18BA930 = 0x30E1DE0D00000000;
  qword_2A18BA928 = &off_2A1F0DFC8;
  byte_2A18BA938 = 15;
  qword_2A18BA948 = 0x3686CA0E00000000;
  qword_2A18BA940 = &off_2A1F0B5F0;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= (BlueFin::GlWeekTowTime::m_ucCurrentLs | 0x3686CA00u))
  {
    v1 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v1 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BA958 = 0;
  unk_2A18BA95C = v1 | 0x3686CA00;
  qword_2A18BA950 = &off_2A1F0E430;
  dword_2A18BA968 = 0;
  unk_2A18BA96C = v1 | 0x3686CA00;
  qword_2A18BA960 = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BA960);
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BA960);
  qword_2A18BA988 = 0x3686CA0E00000000;
  qword_2A18BA980 = &off_2A1F0E480;
  qword_2A18BA998 = 0x3686CA0E00000000;
  qword_2A18BA990 = &off_2A1F0E4D0;
  qword_2A18BA9A8 = 0x3686CA0E00000000;
  qword_2A18BA9A0 = &off_2A1F0DFC8;
  byte_2A18BA9B0 = 16;
  qword_2A18BA9C0 = 0x3D1A558F00000000;
  qword_2A18BA9B8 = &off_2A1F0B5F0;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= BlueFin::GlWeekTowTime::m_ucCurrentLs + 1025136000)
  {
    v2 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v2 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BA9D0 = 0;
  dword_2A18BA9D4 = v2 + 1025136000;
  qword_2A18BA9C8 = &off_2A1F0E430;
  dword_2A18BA9E0 = 0;
  dword_2A18BA9E4 = v2 + 1025136000;
  qword_2A18BA9D8 = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BA9D8);
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BA9D8);
  qword_2A18BAA00 = 0x3D1A558F00000000;
  qword_2A18BA9F8 = &off_2A1F0E480;
  qword_2A18BAA10 = 0x3D1A558F00000000;
  qword_2A18BAA08 = &off_2A1F0E4D0;
  qword_2A18BAA20 = 0x3D1A558F00000000;
  qword_2A18BAA18 = &off_2A1F0DFC8;
  byte_2A18BAA28 = 17;
  qword_2A18BAA38 = 0x42BDF01000000000;
  qword_2A18BAA30 = &off_2A1F0B5F0;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= (BlueFin::GlWeekTowTime::m_ucCurrentLs | 0x42BDF000u))
  {
    v3 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v3 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BAA48 = 0;
  dword_2A18BAA4C = v3 | 0x42BDF000;
  qword_2A18BAA40 = &off_2A1F0E430;
  dword_2A18BAA58 = 0;
  dword_2A18BAA5C = v3 | 0x42BDF000;
  qword_2A18BAA50 = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BAA50);
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BAA50);
  qword_2A18BAA78 = 0x42BDF01000000000;
  qword_2A18BAA70 = &off_2A1F0E480;
  qword_2A18BAA88 = 0x42BDF01000000000;
  qword_2A18BAA80 = &off_2A1F0E4D0;
  qword_2A18BAA98 = 0x42BDF01000000000;
  qword_2A18BAA90 = &off_2A1F0DFC8;
  byte_2A18BAAA0 = 18;
  qword_2A18BAAB0 = 0x4593091100000000;
  qword_2A18BAAA8 = &off_2A1F0B5F0;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= (BlueFin::GlWeekTowTime::m_ucCurrentLs | 0x45930900u))
  {
    v4 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v4 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BAAC0 = 0;
  dword_2A18BAAC4 = v4 | 0x45930900;
  qword_2A18BAAB8 = &off_2A1F0E430;
  dword_2A18BAAD0 = 0;
  dword_2A18BAAD4 = v4 | 0x45930900;
  qword_2A18BAAC8 = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BAAC8);
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BAAC8);
  qword_2A18BAAF0 = 0x4593091100000000;
  qword_2A18BAAE8 = &off_2A1F0E480;
  qword_2A18BAB00 = 0x4593091100000000;
  qword_2A18BAAF8 = &off_2A1F0E4D0;
  qword_2A18BAB10 = 0x4593091100000000;
  qword_2A18BAB08 = &off_2A1F0DFC8;
  byte_2A18BAB18 = 19;
  qword_2A18BAB28 = 0x4E07C81100000000;
  qword_2A18BAB20 = &off_2A1F0B5F0;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= BlueFin::GlWeekTowTime::m_ucCurrentLs + 1309132799)
  {
    v5 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v5 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BAB38 = 0;
  dword_2A18BAB3C = v5 + 1309132799;
  qword_2A18BAB30 = &off_2A1F0E430;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= (BlueFin::GlWeekTowTime::m_ucCurrentLs | 0x4E07C800u))
  {
    v6 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v6 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  dword_2A18BAB48 = 0;
  dword_2A18BAB4C = v6 | 0x4E07C800;
  qword_2A18BAB40 = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BAB40);
  BlueFin::GlUtcTime::breakdownFct(&qword_2A18BAB40);
  qword_2A18BAB68 = 0x4E07C81100000000;
  qword_2A18BAB60 = &off_2A1F0E480;
  qword_2A18BAB78 = 0x4E07C81100000000;
  qword_2A18BAB70 = &off_2A1F0E4D0;
  qword_2A18BAB88 = 0x4E07C81100000000;
  qword_2A18BAB80 = &off_2A1F0DFC8;

  return __cxa_atexit(__cxx_global_array_dtor, 0, &dword_29879A000);
}

uint64_t BlueFin::GlPeTimeMgrUtil::towMsToUlong(BlueFin::GlPeTimeMgrUtil *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  if (*a2.i64 >= 604800000.0)
  {
    return 604799999;
  }

  *a2.i64 = *a2.i64 + 0.5;
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
    return --*a2.i64;
  }

  else
  {
    return *a2.i64;
  }
}

uint64_t BlueFin::GlPeTimeMgrUtil::todMsToUlong(BlueFin::GlPeTimeMgrUtil *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  if (*a2.i64 >= 86399999.5)
  {
    return 86399999;
  }

  *a2.i64 = *a2.i64 + 0.5;
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
    return --*a2.i64;
  }

  else
  {
    return *a2.i64;
  }
}

BOOL BlueFin::GetPatchInfoMinnow(BlueFin *this, const char *a2, int *a3, unsigned int *a4, const char **a5)
{
  v7 = BlueFin::pcMNW_B0_patch_signature;
  if (!BlueFin::pcMNW_B0_patch_signature)
  {
    v7 = "make-minnow:://depot/client/core/rel/Olympic/OSX_20.24.559185.v8.0/proprietary/deliverables/esw4_dev:MNW_B0@607776_MNW_B0";
    BlueFin::pcMNW_B0_patch_signature = "make-minnow:://depot/client/core/rel/Olympic/OSX_20.24.559185.v8.0/proprietary/deliverables/esw4_dev:MNW_B0@607776_MNW_B0";
  }

  v8 = strncmp(this, "MNW_B0", 7uLL) == 0;
  result = v8;
  if (v8)
  {
    v10 = BlueFin::uiMNW_B0_NumSegments + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v10;
  *a4 = v11;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2A1C76650](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2A1C76658](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}