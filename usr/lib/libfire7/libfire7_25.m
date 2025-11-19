void BlueFin::GlMeSrdEstLowTow::Run(uint64_t a1, int a2, int a3, int a4, BlueFin::GlSignalId *this, uint64_t a6, int a7, BlueFin::GlMeSrdLowTowMgr *a8, double a9, uint64_t a10)
{
  v10 = a10;
  v67 = *MEMORY[0x29EDCA608];
  *a10 = 0;
  if (*(a8 + 94) == 0x7FFFFFFF || (*(a8 + 95) - 14) > 0x7C2 || *a6 != 1)
  {
    goto LABEL_57;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*this] != 2)
  {
    if (BlueFin::GlSvId::s_aucSvId2gnss[*this])
    {
      v59 = "0";
      DeviceFaultNotify("glmesrd_estlowtow.cpp", 114, "Run", "0");
      v60 = "glmesrd_estlowtow.cpp";
      v61 = 114;
LABEL_61:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v60, v61, v59);
    }

    EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(this);
    if (*(this + 4) < 0x23Fu)
    {
      v23 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]];
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
      {
        v24 = 6000;
        goto LABEL_12;
      }

LABEL_59:
      v59 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v60 = "glsignalid.h";
      v61 = 686;
      goto LABEL_61;
    }

LABEL_58:
    v59 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v60 = "glsignalid.h";
    v61 = 679;
    goto LABEL_61;
  }

  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(this);
  if (*(this + 4) >= 0x23Fu)
  {
    goto LABEL_58;
  }

  v23 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
  {
    goto LABEL_59;
  }

  v24 = 2000;
LABEL_12:
  if (!EpochPerSymbol)
  {
    v59 = "usBitInMs != 0";
    DeviceFaultNotify("glmesrd_estlowtow.cpp", 117, "Run", "usBitInMs != 0");
    v60 = "glmesrd_estlowtow.cpp";
    v61 = 117;
    goto LABEL_61;
  }

  v25 = v23 * EpochPerSymbol;
  v26 = *(a6 + 400);
  v64 = v25 * v26;
  v27 = v25 * v26 - a7;
  if (v27)
  {
    a9 = v27 + a9;
  }

  *(a10 + 16) = *(a8 + 94) % v24;
  *(a10 + 8) = a9;
  *a10 = 1;
  v65[0] = v26 - *(a6 + 2);
  if (*(a6 + 392) == 1)
  {
    v28 = (*(a1 + 1312) + 320 * *(a1 + 16));
    *v18.i64 = a9 * 1000.0;
    *v21.i64 = a9 * 1000.0 + trunc(a9 * 1000.0 * 2.32830644e-10) * -4294967300.0;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v30 = vnegq_f64(v29);
    v21.i64[0] = vbslq_s8(v30, v21, v18).u64[0];
    if (a9 * 1000.0 > 4294967300.0)
    {
      v18.i64[0] = v21.i64[0];
    }

    if (*v18.i64 < -4294967300.0)
    {
      *v20.i64 = -*v18.i64;
      *v18.i64 = -(*v18.i64 - trunc(*v18.i64 * -2.32830644e-10) * -4294967300.0);
      *v18.i64 = -*vbslq_s8(v30, v18, v20).i64;
    }

    if (*v18.i64 < 0.0)
    {
      v31 = --*v18.i64;
    }

    else
    {
      v31 = *v18.i64;
    }

    BlueFin::GlMeSrdEstLowTow::UpdateLms(*(a1 + 1312) + 320 * *(a1 + 16), v31, v64);
    *(a1 + 8) = 1;
    if (*(a1 + 12) >= 2u)
    {
      BlueFin::GlMeSrdLowTowMgr::Initialize(v28);
    }

    if (v28 != this)
    {
      *v28 = *this;
      *(v28 + 1) = *(this + 1);
      *(v28 + 4) = *(this + 4);
    }

    BlueFin::GlMeSrdEstLowTow::StoreBitsInBuffer(v28, *(a6 + 2), (a6 + 8), v65[0]);
    BlueFin::GlMeSrdEstLowTow::SearchPattern(v28, a8, v32);
    if (*(v28 + 13) != 1)
    {
      *(a1 + 12) = 1;
      goto LABEL_57;
    }

    *(v28 + 13) = 0;
    v33 = *(v28 + 4);
    v34 = *(v28 + 6);
    *(a1 + 12) = 1;
    goto LABEL_29;
  }

  if (*(a6 + 394) != 1)
  {
    goto LABEL_57;
  }

  v62 = v24;
  v37.i64[1] = 0;
  memset(&v65[1], 0, 32);
  *(a1 + 8) = 0;
  v38 = *(a6 + 396);
  *(a1 + 16) = v38;
  if (v38 > 3)
  {
    v59 = "m_ucPrebitFllBestPhase < GlMeSrdEstLowTow::GLMESRD_ESTLOWTOW_LT_MAX_PHASES";
    DeviceFaultNotify("glmesrd_estlowtow.cpp", 199, "Run", "m_ucPrebitFllBestPhase < GlMeSrdEstLowTow::GLMESRD_ESTLOWTOW_LT_MAX_PHASES");
    v60 = "glmesrd_estlowtow.cpp";
    v61 = 199;
    goto LABEL_61;
  }

  if (!*(a6 + 395))
  {
    goto LABEL_56;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  *v37.i64 = a9 * 1000.0;
  *v19.i64 = a9 * 1000.0 + trunc(a9 * 1000.0 * 2.32830644e-10) * -4294967300.0;
  v42.f64[0] = NAN;
  v42.f64[1] = NAN;
  v43 = vnegq_f64(v42);
  v44 = vbslq_s8(v43, v19, v37);
  if (a9 * 1000.0 > 4294967300.0)
  {
    v37.i64[0] = v44.i64[0];
  }

  *v44.i64 = -*v37.i64;
  *v22.i64 = -(*v37.i64 - trunc(*v37.i64 * -2.32830644e-10) * -4294967300.0);
  *v44.i64 = -*vbslq_s8(v43, v22, v44).i64;
  if (*v37.i64 < -4294967300.0)
  {
    v37.i64[0] = v44.i64[0];
  }

  v45 = (a6 + 264);
  v46 = *v37.i64 < 0.0 ? --*v37.i64 : *v37.i64;
  v63 = v46;
  do
  {
    v47 = *(a1 + 1312);
    BlueFin::GlMeSrdEstLowTow::UpdateLms(v47 + v39, v63, v64);
    if (*(a1 + 8) != *(a1 + 12))
    {
      BlueFin::GlMeSrdLowTowMgr::Initialize((v47 + v39));
    }

    if ((v47 + v39) != this)
    {
      v48 = v47 + v39;
      *v48 = *this;
      *(v48 + 4) = *(this + 1);
      *(v48 + 8) = *(this + 4);
    }

    BlueFin::GlMeSrdEstLowTow::StoreBitsInBuffer(v47 + v39, *(a6 + 2), v45, v65[0]);
    BlueFin::GlMeSrdEstLowTow::SearchPattern((v47 + v39), a8, v49);
    if (*(v47 + v39 + 13) == 1)
    {
      v51 = &v65[2 * v41 + 1];
      *v51 = v40;
      v51[1] = *(v47 + v39 + 16);
      v41 = (v41 + 1);
    }

    ++v40;
    v45 += 8;
    v39 += 320;
  }

  while (v40 < *(a6 + 395));
  if (v41 <= 0 || (BlueFin::GlStdLib::QsortImpl(&v65[1], v41, 8u, GlMeSrdSortPhase_Id, v66, v50), v52 = *(a1 + 1312), v53 = &v65[2 * (v41 - 1) + 1], v54 = *v53, v55 = v52 + 320 * *v53, v57 = *(v55 + 13), v56 = (v55 + 13), (v57 & 1) == 0))
  {
LABEL_56:
    *(a1 + 12) = 0;
    goto LABEL_57;
  }

  *v56 = 0;
  v33 = *(v53 + 1);
  v34 = *(v52 + 320 * v54 + 24);
  *(a1 + 12) = 0;
  v10 = a10;
  v24 = v62;
LABEL_29:
  v35 = *(v10 + 8) * 1000.0;
  v36 = (v35 + -0.5);
  if (v35 >= 0.0)
  {
    v36 = 0;
  }

  if (v35 > 0.0)
  {
    v36 = (v35 + 0.5);
  }

  *(v10 + 16) = (v36 - v34) % v24;
  *(v10 + 1) = 1;
  *(v10 + 20) = v33;
  *(a1 + 17) = 1;
LABEL_57:
  v58 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlMeSrdEstLowTow::UpdateLms(uint64_t this, BlueFin::GlMeSrdLowTowMgr *a2, int a3)
{
  if (!this)
  {
    DeviceFaultNotify("glmesrd_estlowtow.cpp", 870, "UpdateLms", "potLtm != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estlowtow.cpp", 870, "potLtm != nullptr");
  }

  *(this + 316) = 1;
  *(this + 308) = a2;
  *(this + 312) = a3;
  return this;
}

int32x2_t BlueFin::GlMeSrdLowTowMgr::Initialize(BlueFin::GlMeSrdLowTowMgr *this)
{
  *(this + 14) = 0u;
  v1 = this + 224;
  *(v1 - 211) = 0;
  *(v1 - 24) = 0;
  *(v1 - 23) = 0;
  *(v1 - 52) = -8388611;
  *(v1 - 204) = 0;
  *(v1 - 25) = 0;
  *(v1 - 4) = 0u;
  *(v1 - 3) = 0u;
  *(v1 - 2) = 0u;
  *(v1 - 1) = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 - 5) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 - 16) = v1;
  *(v1 - 15) = 0;
  *(v1 - 112) = 0;
  *(v1 - 23) = 0;
  *(v1 - 25) = 0;
  result = vdup_n_s32(0x280u);
  *(v1 - 108) = result;
  *(v1 - 88) = 0;
  *(v1 - 22) = v1 - 80;
  *(v1 - 21) = 0;
  *(v1 - 160) = 0;
  *(v1 - 35) = 0;
  *(v1 - 37) = 0;
  *(v1 - 156) = result;
  *(v1 - 136) = 0;
  v1[80] = 0;
  *(v1 + 41) = 0;
  *(v1 - 212) = -1;
  *(v1 + 84) = 0;
  v1[92] = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdEstLowTow::StoreBitsInBuffer(uint64_t this, BlueFin::GlMeSrdLowTowMgr *a2, unsigned int *a3, unsigned int *a4)
{
  if (this)
  {
    v4 = a4;
    v6 = a2;
    v7 = this;
    if (*(this + 124) + *(this + 40) + *(this + 306) > a4)
    {
      BlueFin::GlMeSrdLowTowMgr::Initialize(this);
    }

    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v25[0] = 0;
    v24 = 0;
    *(v25 + 5) = 0;
    BlueFin::GlBitBuffer::Initialize(v22, a3, ((v6 + 31) >> 3) & 0x3FC);
    this = BlueFin::GlBitBuffer::Limit(v22, v6);
    v8 = *(v7 + 124);
    if (v8)
    {
      v9 = *(v7 + 40) + v8 + *(v7 + 306);
      v10 = v4 >= v9;
      v11 = v4 - v9;
      if (!v10)
      {
        v12 = "ulBitWrdEpochCntInBits >= TruePosition(potLtm)";
        DeviceFaultNotify("glmesrd_estlowtow.cpp", 373, "StoreBitsInBuffer", "ulBitWrdEpochCntInBits >= TruePosition(potLtm)");
        v13 = 373;
        goto LABEL_21;
      }
    }

    else
    {
      v11 = 0;
      *(v7 + 40) = v4;
      *(v7 + 44) = v4;
    }

    v14 = (v11 & ~(v11 >> 31)) + HIDWORD(v24) - LODWORD(v25[0]);
    if ((*(v7 + 120) - (v8 + v14)) < 0)
    {
      if (v8 <= 0x3F)
      {
        v12 = "potLtm->m_otBitValBuf.Position() >= 64";
        DeviceFaultNotify("glmesrd_estlowtow.cpp", 416, "UpdateBuffers", "potLtm->m_otBitValBuf.Position() >= 64");
        v13 = 416;
LABEL_21:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estlowtow.cpp", v13, v12);
      }

      *(v7 + 306) = v8 + *(v7 + 306) - 64;
      BlueFin::GlBitBuffer::Position(v7 + 96, v8 - 64);
      v15 = BlueFin::GlBitBuffer::GetU((v7 + 96), 0x20u);
      v16 = BlueFin::GlBitBuffer::GetU((v7 + 96), 0x20u);
      BlueFin::GlBitBuffer::Position(v7 + 48, *(v7 + 76) - 64);
      v17 = BlueFin::GlBitBuffer::GetU((v7 + 48), 0x20u);
      v18 = BlueFin::GlBitBuffer::GetU((v7 + 48), 0x20u);
      *(v7 + 124) = 0;
      *(v7 + 136) = 0;
      *(v7 + 76) = 0;
      *(v7 + 88) = 0;
      BlueFin::GlBitBuffer::PutU((v7 + 96), v15, 0x20u);
      BlueFin::GlBitBuffer::PutU((v7 + 96), v16, 0x20u);
      BlueFin::GlBitBuffer::PutU((v7 + 48), v17, 0x20u);
      this = BlueFin::GlBitBuffer::PutU((v7 + 48), v18, 0x20u);
      *(v7 + 304) = 1;
    }

    for (; v14; LOWORD(v14) = v14 - v19)
    {
      if ((v14 & 0xFFE0) != 0)
      {
        v19 = 32;
      }

      else
      {
        v19 = v14;
      }

      if (HIDWORD(v24) - LODWORD(v25[0]) >= v14)
      {
        v20 = BlueFin::GlBitBuffer::GetU(v22, v19);
        v21 = -1;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      BlueFin::GlBitBuffer::PutU((v7 + 96), v20, v19);
      this = BlueFin::GlBitBuffer::PutU((v7 + 48), v21, v19);
    }
  }

  return this;
}

void BlueFin::GlMeSrdEstLowTow::SearchPattern(BlueFin::GlMeSrdEstLowTow *this, BlueFin::GlMeSrdLowTowMgr *a2, const BlueFin::GlMeSrdTowAssistHolder *a3)
{
  v85[1] = *MEMORY[0x29EDCA608];
  if (*(this + 316) == 1)
  {
    v4 = *(this + 11) - *(this + 10);
    v5 = *(this + 31);
    if (v4 + 65 <= v5)
    {
      v7 = *(this + 60);
      BlueFin::GlBitBuffer::Limit(this + 96, *(this + 31));
      BlueFin::GlBitBuffer::Position(this + 96, v4);
      BlueFin::GlBitBuffer::Limit(this + 48, v5);
      BlueFin::GlBitBuffer::Position(this + 48, v4);
      v80 = BlueFin::GlMeSrdEstLowTow::Bits2Epochs((*(this + 31) + *(this + 10) + *(this + 153)), this, v8);
      v78 = *(this + 77);
      v76 = *(this + 78);
      v9 = *(a2 + 94);
      v10 = *(a2 + 96);
      v83 = 0;
      v82 = 0u;
      memset(v81, 0, sizeof(v81));
      v11 = BlueFin::GlArray::Get((a2 + 16), *this);
      if (v11)
      {
        v12 = *(v11 + 2);
      }

      else
      {
        v12 = 0x4000;
      }

      v13 = BlueFin::GlArray::Get((a2 + 16), *this);
      if (v13)
      {
        v14 = *(v13 + 6);
      }

      else
      {
        v14 = 4;
      }

      v15 = BlueFin::GlArray::Get((a2 + 16), *this);
      if (v15)
      {
        v16 = *(v15 + 5);
      }

      else
      {
        v16 = 2;
      }

      v17 = BlueFin::GlArray::Get((a2 + 16), *this);
      v74 = v7;
      v75 = v5;
      if (v17)
      {
        v18 = *(v17 + 4);
      }

      else
      {
        v18 = 2;
      }

      if (BlueFin::ctXps::BuildXP(v81, v9, v12, v14, v16, v18))
      {
        v19 = 0.8;
      }

      else
      {
        v19 = 0.89;
      }

      v20 = BlueFin::GlBitBuffer::GetU((this + 96), 0x20u);
      v85[0].i32[0] = v20;
      v21 = BlueFin::GlBitBuffer::GetU((this + 96), 0x20u);
      v85[0].i32[1] = v21;
      v22 = BlueFin::GlBitBuffer::GetU((this + 48), 0x20u);
      v84.i32[0] = v22;
      v23 = BlueFin::GlBitBuffer::GetU((this + 48), 0x20u);
      v84.i32[1] = v23;
      v24 = *(this + 31);
      if (*(this + 30) != v24)
      {
        v29 = v23;
        v30 = v78 + v80 - v76;
        v31 = 6000 * ((v9 + v30 - v10 + 3000) / 0x1770);
        if (v31 <= 0x240C83FF)
        {
          v32 = 6000 * ((v9 + v30 - v10 + 3000) / 0x1770);
        }

        else
        {
          v32 = v31 - 604800000;
        }

        do
        {
          v33 = (v32 + 3000) / 0x1770;
          if (v32 + 3000 <= 0x240C6C8F)
          {
            v34 = 1;
          }

          else
          {
            v34 = -100799;
          }

          v35 = v34 + v33;
          if (v34 + v33 == DWORD2(v82))
          {
            v36 = 0;
          }

          else if (v35 == HIDWORD(v82))
          {
            v36 = 1;
          }

          else
          {
            if (v35 != v83)
            {
              GlCustomLog(12, "<LtsMgr%i::Search> Reset search (ulNearestTow 0x%x tow(0) 0x%x)\n", *this, v35, DWORD2(v82));
              BlueFin::GlMeSrdLowTowMgr::Initialize(this);
              goto LABEL_20;
            }

            v36 = 2;
          }

          v38 = BlueFin::ctXps::Xorr(v23, v85, &v84, v81 + v36 + 1, &v82);
          if (v38 > 0.71)
          {
            v39 = *(this + 4);
            if (v39 == -3.4028e38)
            {
              *(this + 20) = 1;
              v77 = (*(this + 78) + v30 + 40 - *(this + 77));
              *(this + 13) = v38 > v19;
              *(this + 6) = v30 + 40;
              *(this + 7) = v35 - 1;
              *(this + 8) = v21;
              *(this + 9) = v20;
              *(this + 4) = v38;
              v79 = *this;
              BlueFin::GlMeSrdEstLowTow::Bits2Epochs((v24 + *(this + 10) + *(this + 153)), this, v37);
              v40 = *(this + 4);
              v41 = *(this + 8);
              *(this + 7);
              v71 = *(this + 9);
              GlCustomLog(15, "<LtsMgr%i::Match#%i> (DblChk=%c) (Tow=%u) (Lms=%u) (EpCnt=%u,%u) (MatCnt=%f) (FrmId=%i) (DcdTLM=%08x) (DcdHOW=%08x)\n", v79, 1);
            }

            else if (v39 > -3.4028e38)
            {
              v53 = v30 + 40;
              v55 = *(this + 6);
              v54 = *(this + 7);
              v56 = 6000 * (v35 - 1 - v54);
              v57 = (v30 + 40 - v55) % 6000;
              if (v57 < 0)
              {
                v57 = -v57;
              }

              if (v57 > 1 || v56 < 6000 || v56 - (v30 + 40 - v55) > 1 || v38 <= (v19 + -0.1))
              {
                if (v38 <= v39)
                {
                  v67 = (*(this + 78) + v53 - *(this + 77));
                  GlCustomLog(15, "<LtsMgr%i::Match#REJECTED!> (Tow=%u) (Lms=%u) (EpCnt=%u) (Cnt=%f) (FrmId=%i) (DcdTLM=%08x) (DcdHOW=%08x)\n", *this);
                }

                else
                {
                  v61 = *(this + 20) + 1;
                  *(this + 20) = v61;
                  v62 = (*(this + 78) + v53 - *(this + 77));
                  *(this + 13) = v38 > v19;
                  *(this + 6) = v53;
                  *(this + 7) = v35 - 1;
                  *(this + 8) = v21;
                  *(this + 9) = v20;
                  *(this + 4) = v38;
                  v63 = 84;
                  if (v38 > v19)
                  {
                    v63 = 70;
                  }

                  GlCustomLog(15, "<LtsMgr%i::Match#%i> (DblChk=%c) (Tow=%u,%u) (Lms=%u,%u) (EpCnt=%u,%u) (Cnt=%f,%f) (FrmId=%i,%i) (DcdTLM=%08x,%08x) (DcdHOW=%08x,%08x)\n", *this, v61, v63, v35 - 1, v35 - 1);
                }
              }

              else
              {
                v64 = *(this + 20) + 1;
                *(this + 20) = v64;
                *(this + 13) = 1;
                v65 = *(this + 78);
                v66 = *(this + 77);
                v73 = *(this + 8);
                v72 = *(this + 9);
                GlCustomLog(15, "<LtsMgr%i::Match#%i> (Tow=%u,%u) (Lms=%u,%u) (EpCnt=%u,%u) (Cnt=%f,%f) (FrmId=%i,%i) (DcdTLM=%08x,%08x) (DcdHOW=%08x,%08x)\n", *this, v64, v54, v35 - 1);
              }
            }
          }

          v20 = __PAIR64__(v20, v21) >> 31;
          v85[0].i32[0] = v20;
          v42 = BlueFin::GlBitBuffer::GetU((this + 96), 1u) & 1 | (2 * v21);
          v85[0].i32[1] = v42;
          v22 = __PAIR64__(v22, v29) >> 31;
          v84.i32[0] = v22;
          v43 = BlueFin::GlBitBuffer::GetU((this + 48), 1u) & 1 | (2 * v29);
          v84.i32[1] = v43;
          EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(this);
          if (*(this + 4) >= 0x23Fu)
          {
            goto LABEL_65;
          }

          v45 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
          v46 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1)];
          v47 = v46[v45];
          if (!v46[v45])
          {
            goto LABEL_66;
          }

          v48 = EpochPerBit;
          ++*(this + 11);
          v23 = BlueFin::GlSignalId::GetEpochPerBit(this);
          if (*(this + 4) >= 0x23Fu)
          {
LABEL_65:
            v68 = "IsValid()";
            DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
            v69 = "glsignalid.h";
            v70 = 679;
            goto LABEL_67;
          }

          if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
          {
LABEL_66:
            v68 = "ucMsPerEpoch != 0";
            DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
            v69 = "glsignalid.h";
            v70 = 686;
            goto LABEL_67;
          }

          v30 += v47 * v48;
          v49 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * v23;
          v50 = v49 + v32;
          v51 = v32 + 604799999 + v49;
          if (v50 >= 0x240C83FF)
          {
            v52 = 604799999;
          }

          else
          {
            v52 = v50;
          }

          v32 = v50 - 604800000 * ((v51 - v52) / 0x240C8400);
          v24 = *(this + 31);
          v29 = v43;
          v21 = v42;
        }

        while (*(this + 30) != v24);
      }

      BlueFin::GlBitBuffer::Limit(this + 96, v74);
      BlueFin::GlBitBuffer::Position(this + 96, v75);
      BlueFin::GlBitBuffer::Limit(this + 48, v74);
      BlueFin::GlBitBuffer::Position(this + 48, v75);
      v26 = BlueFin::GlMeSrdEstLowTow::Bits2Epochs(*(this + 11), this, v25);
      if (v26 > BlueFin::GlMeSrdEstLowTow::Bits2Epochs((*(this + 31) + *(this + 10) + *(this + 153)), this, v27))
      {
        v68 = "Bits2Epochs(potLtm->m_ulBitBufRdEpCntInBits, potLtm->m_otSignalId) <= TimeOfPosition(potLtm)";
        DeviceFaultNotify("glmesrd_estlowtow.cpp", 787, "SearchPattern", "Bits2Epochs(potLtm->m_ulBitBufRdEpCntInBits, potLtm->m_otSignalId) <= TimeOfPosition(potLtm)");
        v69 = "glmesrd_estlowtow.cpp";
        v70 = 787;
LABEL_67:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v69, v70, v68);
      }
    }
  }

LABEL_20:
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlMeSrdEstLowTow::Bits2Epochs(BlueFin::GlMeSrdEstLowTow *this, BlueFin::GlSignalId *a2, const BlueFin::GlSignalId *a3)
{
  v4 = this;
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(a2);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v7 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v8 = 679;
    goto LABEL_6;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
  {
    v7 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v8 = 686;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v8, v7);
  }

  return EpochPerBit * v4 * BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
}

float *BlueFin::Sinc2NonlinearFit::GetSinc2Model(float *this, int *a2, double a3, double a4, double a5)
{
  v5 = this[1] * 64.0;
  if (v5 > 0.0)
  {
    v6 = v5;
    v7 = 0.5;
LABEL_6:
    v8 = (v6 + v7);
    goto LABEL_7;
  }

  if (v5 < 0.0)
  {
    v6 = v5;
    v7 = -0.5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:
  v9 = 0;
  v10 = -v8;
  do
  {
    if (v10 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (v11 > 0x1C0)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_18;
    }

    LOWORD(a5) = BlueFin::Sinc2NonlinearFit::m_ausSinc2LUT[v11];
    *&a5 = (*this * LODWORD(a5)) * 0.000015259;
    if (*&a5 <= 0.0)
    {
      if (*&a5 >= 0.0)
      {
        goto LABEL_12;
      }

      a5 = *&a5 + -0.5;
    }

    else
    {
      a5 = *&a5 + 0.5;
    }

    v12 = a5;
LABEL_18:
    a2[v9] = v12;
    v10 += 64;
    ++v9;
  }

  while (v9 != 8);
  return this;
}

uint64_t BlueFin::Sinc2NonlinearFit::Fit(BlueFin::Sinc2NonlinearFit *this, const int *a2)
{
  v2 = 0;
  LODWORD(v3) = *a2;
  for (i = 1; i != 8; ++i)
  {
    v5 = a2[i];
    v6 = v5 <= v3;
    if (v5 <= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v5;
    }

    if (!v6)
    {
      v2 = i;
    }
  }

  *this = v3;
  if (v2)
  {
    if (v2 == 7)
    {
      v7 = 6.5;
    }

    else
    {
      v8 = a2[v2];
      v9 = a2[v2 - 1];
      v10 = v8 - v9;
      v11 = a2[v2 + 1];
      v12 = v8 - v11;
      if (v11 >= v9)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      if (v11 < v9)
      {
        v12 = v10;
      }

      v14 = fminf((v13 - v12) / (((v13 + (v12 * 0.225)) + 0.000001) + ((v13 + (v12 * 0.225)) + 0.000001)), 0.5);
      v15 = v14 * v14;
      if (v11 < v9)
      {
        v14 = -v14;
      }

      *this = v3 + ((v15 * ((v15 * -0.4033) + 1.1028)) * v13);
      v7 = v14 + v2;
    }
  }

  else
  {
    v7 = 0.5;
  }

  *(this + 1) = v7;
  return v3;
}

float BlueFin::Sinc2NonlinearFit::CalculateNorm(BlueFin::Sinc2NonlinearFit *this, const int *a2, double a3, double a4, double a5)
{
  v13 = *MEMORY[0x29EDCA608];
  BlueFin::Sinc2NonlinearFit::GetSinc2Model(this, v12, a3, a4, a5);
  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = vmulq_f32(BlueFin::Sinc2NonlinearFit::METRIC_WEIGHTS[v6 / 4], vcvtq_f32_s32(vsubq_s32(*&a2[v6], *&v12[v6])));
    v9 = vmulq_f32(v8, v8);
    v7 = (((v7 + v9.f32[0]) + v9.f32[1]) + v9.f32[2]) + v9.f32[3];
    v6 += 4;
  }

  while (v6 != 8);
  v10 = *MEMORY[0x29EDCA608];
  return sqrtf(v7);
}

void BlueFin::GlMeSrdEstMPF::PrepareResults(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v20 = 0;
  v5 = (a2 + 28);
  v6 = (a2 + 8);
  v7 = a2;
  do
  {
    v8 = *(a1 + 104);
    v9 = *v7++;
    *(v8 + v4) = v9;
    if (v9 == 1)
    {
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xCF);
      }

      v10 = BlueFin::Sinc2NonlinearFit::Fit(&v20, v5);
      if (v10 < 1)
      {
        goto LABEL_9;
      }

      v14 = v10;
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xCF);
      }

      v15 = BlueFin::Sinc2NonlinearFit::CalculateNorm(&v20, v5, v11, v12, v13);
      v16 = v8 + v4;
      *(v16 + 4) = v15 / v14;
      v17 = *v6;
      v18 = *&v20;
      *(v16 + 8) = (*(&v20 + 1) + -4.0) * 25.0;
      *(v16 + 12) = v17;
      v19 = (v18 * 50.0) / *(a2 + 82);
      *(v16 + 16) = v19;
      if (v19 <= 1.0)
      {
LABEL_9:
        *(v8 + v4) = 0;
      }
    }

    v4 += 20;
    ++v6;
    v5 += 15;
  }

  while (v4 != 100);
}

void BlueFin::GlMeSrdEstMPF::MPFLogic(BlueFin::GlMeSrdEstMPF *this, BlueFin::GlMeSrdMPFResults *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  *(a2 + 5) = 1;
  *(a2 + 16) = -1;
  v3 = *(this + 13);
  v4 = v3 + 8;
  v5 = -20;
  do
  {
    v6 = (a2 + v5);
    if (*(v4 - 8))
    {
      v6[16] = *v4 + *(v4 + 4);
      v6[11] = *(v4 - 4);
      v7 = *(v4 + 8);
    }

    else
    {
      v6[16] = 0.0;
      v6[11] = -1.0;
      v7 = 0;
    }

    *(a2 + v5 + 84) = v7;
    v4 += 20;
    v5 += 4;
  }

  while (v5);
  v8 = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v9 = 0.0;
  v10 = 5;
  v11 = v3;
  v12 = 0.0;
  do
  {
    if (*v11 == 1)
    {
      v13 = *(v11 + 16);
      if (v13 >= 100.0)
      {
        v14 = v5;
        LOBYTE(v5) = v5 + 1;
        *(v44 + v14) = v11;
        v12 = v12 + *(v11 + 4);
      }

      ++v8;
      v9 = v9 + v13;
    }

    v11 += 20;
    --v10;
  }

  while (v10);
  v15 = v5;
  if (v5 >= 3u)
  {
    v17 = 0;
    v18 = v12 / v5;
    *(a2 + 3) = v18;
    v19 = v5;
    v20 = 1;
    do
    {
      if (*(*(v44 + v20) + 4) < *(*(v44 + v17) + 4))
      {
        v17 = v20;
      }

      ++v20;
    }

    while (v19 != v20);
    *(a2 + 16) = -51 * ((*(v44 + v17) - v3) >> 2);
    if (v18 <= 0.4)
    {
      v21 = v9 / v8;
      if (v21 <= 1584.9)
      {
        v24 = 0.6;
      }

      else
      {
        v22 = log10f(v21 / 1584.9) * 10.0;
        v23 = (v22 * -0.05) + 0.4;
        if (v23 < 0.15)
        {
          v23 = 0.15;
        }

        if (v18 > v23)
        {
          *(a2 + 5) = 3;
          v16 = "Too high average metric for strong signal";
          goto LABEL_46;
        }

        v24 = (v22 * -0.05) + 0.6;
        if (v24 < 0.3)
        {
          v24 = 0.3;
        }
      }

      v25 = 0;
      v26 = 0.0;
      v27 = *&v44[0];
      do
      {
        v28 = *(v44 + v25);
        if (v28[1] > v24)
        {
          *(a2 + 5) = 3;
          v16 = "Too high metric value";
          goto LABEL_46;
        }

        v29 = v28[2] + (v28[3] - *(v27 + 12));
        v43[v25] = v29;
        v26 = v26 + v29;
        ++v25;
      }

      while (v19 != v25);
      if (v21 > 1584.9)
      {
        *(a2 + 5) = 1;
        v16 = "High signal level";
        goto LABEL_46;
      }

      v30 = 0;
      v31 = 0.0;
      v32 = v43;
      v33 = v44;
      v34 = v26 / v15;
      do
      {
        v35 = *(*v33 + 8) - v34;
        if (v35 >= 0.0)
        {
          v36 = *(*v33 + 8) - v34;
        }

        else
        {
          v36 = -v35;
        }

        v37 = 1.0;
        if (v36 >= 10.0)
        {
          v37 = (v35 * v35) / 100.0;
        }

        v38 = (v37 * *(*v33 + 4)) <= 0.45;
        v39 = *v32++;
        v40 = v39;
        if (!v38)
        {
          ++v30;
        }

        v31 = v31 + ((v40 - v34) * (v40 - v34));
        v33 = (v33 + 8);
        --v19;
      }

      while (v19);
      if (v30 <= 2u)
      {
        v42 = sqrtf(v31 / (v15 - 1));
        if (v42 <= 3.0)
        {
          goto LABEL_47;
        }

        if (v42 <= 7.0)
        {
          *(a2 + 5) = 2;
          *a2 = "std(freq_delta) exceeds threshold";
          *(a2 + 2) = v42;
          goto LABEL_47;
        }

        *(a2 + 5) = 3;
        v16 = "Too big std(freq_delta)";
      }

      else
      {
        *(a2 + 5) = 3;
        v16 = "Too many gained metric exceed threshold";
      }
    }

    else
    {
      *(a2 + 5) = 3;
      v16 = "Too high average metric";
    }
  }

  else
  {
    *(a2 + 5) = 0;
    v16 = "Too few strongs";
  }

LABEL_46:
  *a2 = v16;
  *(a2 + 2) = 0;
LABEL_47:
  v41 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlMeSrdEstMPF::Run(BlueFin::GlMeSrdEstMPF *a1, uint64_t a2, BlueFin::GlMeSrdMPFResults *a3)
{
  if ((*(a2 + 332) & 0xFFE0F8) != 0x650028)
  {
    DeviceFaultNotify("glmesrd_mpf.cpp", 502, "Run", "meas.m_settings.bits.points == MPF_POINTS && meas.m_settings.bits.fstep_hz == 25 && meas.m_settings.bits.cpoint == 5");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_mpf.cpp", 502, "meas.m_settings.bits.points == MPF_POINTS && meas.m_settings.bits.fstep_hz == 25 && meas.m_settings.bits.cpoint == 5");
  }

  BlueFin::GlMeSrdEstMPF::PrepareResults(a1, a2);

  BlueFin::GlMeSrdEstMPF::MPFLogic(a1, a3);
}

void BlueFin::GlMeSrdEstMultipath::~GlMeSrdEstMultipath(BlueFin::GlMeSrdEstMultipath *this)
{
  *this = &unk_2A1F0C178;
}

{
  *this = &unk_2A1F0C178;
  JUMPOUT(0x29C292F70);
}

void BlueFin::GlMeSrdEstMultipath::Run(uint64_t a1, int a2, int a3, int a4, uint64_t a5, BlueFin::GlMeSrdCNoResults *this, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = BlueFin::GlMeSrdCNoResults::isGarbage(this);
  if (v15)
  {
    v50 = "!stCNoResults.isGarbage()";
    DeviceFaultNotify("glmesrd_multipath.cpp", 268, "Run", "!stCNoResults.isGarbage()");
    v51 = 268;
    goto LABEL_51;
  }

  v16 = *(a5 + 8);
  if (v16 >= 0x23F)
  {
    v50 = "otSignalId.IsValid()";
    DeviceFaultNotify("glmesrd_multipath.cpp", 269, "Run", "otSignalId.IsValid()");
    v51 = 269;
    goto LABEL_51;
  }

  if (a1 + 12 != a5)
  {
    *(a1 + 12) = *a5;
    *(a1 + 16) = *(a5 + 4);
    *(a1 + 20) = v16;
  }

  *(a9 + 4) = 0;
  if (*this != 1)
  {
    return;
  }

  if (*a8 != 1 || *(a1 + 12) - 33 < 0x13)
  {
    goto LABEL_40;
  }

  v17 = *(a8 + 1);
  if (v17 >= 9)
  {
    v50 = "stAltPkSrchMsmt.m_ucNumPeaks <= MAX_NUM_ALT_PEAKS";
    DeviceFaultNotify("glmesrd_multipath.cpp", 287, "Run", "stAltPkSrchMsmt.m_ucNumPeaks <= MAX_NUM_ALT_PEAKS");
    v51 = 287;
LABEL_51:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_multipath.cpp", v51, v50);
  }

  if (v17 < 2)
  {
    goto LABEL_40;
  }

  LOBYTE(v14) = *(a8 + 68);
  v18 = a8 + 36;
  v19 = *(a8 + 36);
  v20 = (a8 + 40);
  v21 = 1;
  v22 = 1.0 / LODWORD(v14);
  while ((vabds_f32(v19, *v20) - v22) >= 0.00000011921)
  {
    ++v21;
    ++v20;
    if (v17 == v21)
    {
      LODWORD(v21) = 0;
      goto LABEL_15;
    }
  }

  LODWORD(v21) = v21;
LABEL_15:
  v23 = a8 + 4;
  v24 = *(a8 + 4);
  v25 = (a8 + 44);
  v26 = 1;
  v27 = v24;
  while (1)
  {
    v28 = v27;
    v27 = *(v23 + 4 * v26);
    if (v27 > v28)
    {
      v50 = "stAltPkSrchMsmt.m_afPeakMag[ucPeakIdx] <= stAltPkSrchMsmt.m_afPeakMag[ucPeakIdx-1]";
      DeviceFaultNotify("glmesrd_multipath.cpp", 311, "Run", "stAltPkSrchMsmt.m_afPeakMag[ucPeakIdx] <= stAltPkSrchMsmt.m_afPeakMag[ucPeakIdx-1]");
      v51 = 311;
      goto LABEL_51;
    }

    v29 = *(v18 + 4 * v26);
    if ((v19 - v29) > 0.5)
    {
      break;
    }

LABEL_22:
    ++v26;
    ++v25;
    if (v26 == v17)
    {
      goto LABEL_40;
    }
  }

  v30 = v25;
  v31 = v26;
  do
  {
    if ((v17 - 1) == v31)
    {
      goto LABEL_22;
    }

    ++v31;
    v32 = *v30++;
  }

  while ((vabds_f32(v29, v32) - v22) >= 0.00000011921);
  if (v21)
  {
    v33 = *(v23 + 4 * v21);
    v34 = (v24 + v33) / (2.0 - v22);
    v35 = v24 - v33;
    if ((v24 - v33) >= (v22 * v34))
    {
      v36 = v24 - v33;
    }

    else
    {
      v36 = v22 * v34;
    }

    if (v19 <= *(v18 + 4 * v21))
    {
      v37 = v22;
    }

    else
    {
      v37 = -v22;
    }

    v54 = v37;
    v55 = v36;
    v38 = *(v23 + 4 * v26);
    v39 = *(v23 + 4 * v31);
    v40 = (v38 + v39) / (2.0 - v22);
    v41 = v38 - v39;
    if ((v38 - v39) >= (v22 * v40))
    {
      v42 = v38 - v39;
    }

    else
    {
      v42 = v22 * v40;
    }

    v43 = *(v18 + 4 * v26);
    if (v43 <= *(v18 + 4 * v31))
    {
      v44 = v22;
    }

    else
    {
      v44 = -v22;
    }

    v52 = v44;
    v53 = v42;
    v45 = log10f(v34) * 20.0;
    v46 = (log10f(v40) * 20.0) - v45;
    if (v46 > -8.0)
    {
      v47 = (v43 + ((v52 * 0.5) * (1.0 - (v41 / v53)))) - (v19 + ((v54 * 0.5) * (1.0 - (v35 / v55))));
      if (fabsf(v47 + 2.0) < (v22 + v22))
      {
        *(a9 + 24) = v47;
        *(a9 + 28) = v22;
        *(a9 + 32) = v46 + *(this + 2);
        GlCustomLog(14, "AltPk Found: SvId %u CarrType %s AltPkOffsetFromPromptInChips %lf fAltPeakSigMagDiffInDb %lf\n", *(a8 + 72), BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a8 + 76) - *(a8 + 76) + BlueFin::GlSvId::s_aucSvId2gnss[*(a8 + 72)]]], v47, v46);
      }
    }
  }

LABEL_40:
  if (*a7 == 1)
  {
    v48 = *(a7 + 8);
    if (*(this + 2) >= 42.5 || fabsf(*(a7 + 28)) <= 0.4 && v48 <= 0.08)
    {
      v49 = 2;
      goto LABEL_47;
    }
  }

  else
  {
    v48 = 1.0;
  }

  v49 = 4;
LABEL_47:
  *(a9 + 4) = v49;
  *(a9 + 8) = v48;
  *(a9 + 12) = v48;
}

char *BlueFin::GlMeSrdEstMultipath::GetStr(unsigned int a1)
{
  if (a1 >= 6)
  {
    DeviceFaultNotify("glmesrd_multipath.cpp", 706, "GetStr", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_multipath.cpp", 706, "0");
  }

  return off_29EEAC410[a1];
}

void BlueFin::GlMeSrdMultipathProbationMgr::~GlMeSrdMultipathProbationMgr(BlueFin::GlMeSrdMultipathProbationMgr *this)
{
  *this = &unk_2A1F0C198;
}

{
  *this = &unk_2A1F0C198;
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlComStressTestMgr::StartRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    DeviceFaultNotify("gl_comstress_test_mgr.cpp", 35, "StartRequest", "pReq");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_test_mgr.cpp", 35, "pReq");
  }

  if (*(a2 + 16) != 16)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    if (*(a3 + 136408) || (v5 = *(a3 + 137648), *v5))
    {
LABEL_6:
      GlCustomLog(11, "Error - ComStressTest should be the only request\n");
      v6 = 2;
LABEL_16:
      v12 = *(a2 + 40);
      if (v12)
      {
        v12(a2, v6);
      }

      v13 = *(a2 + 56);
      if (v13)
      {
        v13(a2, v6);
      }

      BlueFin::GlRequestBase::Destroy(a2);
      BlueFin::GlComStressTestMgr::DisposeComponents(a1);
      return 0;
    }

    v7 = *(a3 + 137656);
    if (v7 >= 2)
    {
      v8 = v7 - 1;
      v9 = v5 + 1;
      do
      {
        if (*v9++)
        {
          goto LABEL_6;
        }
      }

      while (--v8);
    }
  }

  if ((*(a1 + 3689) & 1) == 0)
  {
    v11 = *(a1 + 8);
    BlueFin::GlPeObjFactory::m_potGlPeObjFactory = *(a1 + 8);
    if (*(a1 + 3680))
    {
LABEL_15:
      v6 = 5;
      goto LABEL_16;
    }

    GlSettingImpl = BlueFin::GlPeObjFactory::MakeGlSettingImpl(v11);
    *(a1 + 3680) = GlSettingImpl;
    if (BlueFin::GlUtils::m_pInstance)
    {
      if ((*(a1 + 3689) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = GlSettingImpl;
      v19 = *(a1 + 16);
      v20 = *(v19 + 2);
      if (v20)
      {
        v20(*(v19 + 1), GlSettingImpl);
        v18 = *(a1 + 3680);
        v19 = *(a1 + 16);
      }

      BlueFin::GlUtils::m_pInstance = BlueFin::GlPeObjFactory::MakeGlUtils(*(a1 + 8), v18, v19);
      *(a1 + 3689) = 1;
    }
  }

  if (*(a1 + 3672))
  {
    GlCustomLog(11, "Error - ComStressTest is already running\n");
    v6 = 4;
    goto LABEL_16;
  }

  v15 = *(a1 + 16);
  v16 = *(v15 + 72);
  if (v16 && (*(v15 + 296) & 1) == 0)
  {
    if (v16(*(v15 + 8), 0))
    {
      GlCustomLog(11, "Error - Cannot turn ASIC on\n");
      goto LABEL_15;
    }

    *(v15 + 296) = 1;
  }

  v21 = BlueFin::GlUtils::m_pInstance;
  ++*(BlueFin::GlUtils::m_pInstance + 1088);
  v21[273] = (*(**v21 + 48))();
  *(a1 + 3696) = 0;
  v22 = *(a2 + 88);
  if (!v22)
  {
    v22 = *(a1 + 3704);
  }

  *(a2 + 88) = v22;
  v23 = *(a2 + 92);
  if (!v23)
  {
    v23 = *(a1 + 3708);
  }

  *(a2 + 92) = v23;
  v24 = *(a2 + 22);
  *(a1 + 3692) = (*(*a1 + 24))(a1) + 1000 * v24;
  if ((BlueFin::GlComStressImpl::StartTest((a1 + 24), *(a2 + 88), *(a2 + 92), *(a2 + 100)) & 1) == 0)
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 80);
    if (v27)
    {
      v27(*(v26 + 8), 0);
      *(v26 + 296) = 0;
    }

    goto LABEL_15;
  }

  *(a1 + 3700) = 0;
  *(a1 + 3672) = a2;
  v25 = *(a2 + 40);
  if (v25)
  {
    v25(a2, 0);
  }

  return 1;
}

uint64_t BlueFin::GlComStressTestMgr::DisposeComponents(BlueFin::GlComStressTestMgr *this)
{
  if (*(this + 460))
  {
    v2 = *(*(this + 1) + 8);
    if (v2)
    {
      v2();
    }

    *(this + 460) = 0;
  }

  if (BlueFin::GlUtils::m_pInstance)
  {
    BlueFin::GlPeObjFactory::DisposeGlUtils(*(this + 1));
  }

  result = (*(**(this + 2) + 80))(*(this + 2), 0, &str_5_14);
  BlueFin::GlPeObjFactory::m_potGlPeObjFactory = 0;
  *(this + 3689) = 0;
  return result;
}

uint64_t BlueFin::GlComStressTestMgr::StopRequest(void *a1, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("gl_comstress_test_mgr.cpp", 100, "StopRequest", "pReq");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_test_mgr.cpp", 100, "pReq");
  }

  if (*(a2 + 16) != 16 || a1[459] != a2)
  {
    return 0;
  }

  BlueFin::GlComStressImpl::StopTest((a1 + 3));
  v5 = a1[2];
  v6 = *(v5 + 80);
  if (v6)
  {
    v6(*(v5 + 8), 0);
    *(v5 + 296) = 0;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    v7(a2);
  }

  BlueFin::GlRequestBase::Destroy(a2);
  BlueFin::GlComStressTestMgr::DisposeComponents(a1);
  a1[459] = 0;
  return 1;
}

uint64_t BlueFin::GlComStressTestMgr::CheckRequestStop(BlueFin::GlComStressTestMgr *this)
{
  if (*(*(this + 459) + 22) < 0)
  {
    if (!*(this + 924))
    {
      goto LABEL_9;
    }

    v4 = 0;
    goto LABEL_7;
  }

  v2 = (*(*this + 24))(this);
  v3 = *(this + 923);
  v4 = v2 > v3;
  if (*(this + 924))
  {
LABEL_7:
    if ((*(this + 3688) & 1) != 0 || v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v2 > v3)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (*(this + 3700) == 1)
  {
LABEL_10:
    BlueFin::GlComStressTestMgr::StopRequest(this, *(this + 459));
    *(this + 459) = 0;
    (*(*this + 16))(this, 0xFFFFFFFFLL);
    return 1;
  }

  return 0;
}

uint64_t BlueFin::GlComStressTestMgr::Tick(uint64_t this)
{
  if (*(this + 3672))
  {
    v1 = this;
    this = BlueFin::GlComStressTestMgr::CheckRequestStop(this);
    if ((this & 1) == 0)
    {
      BlueFin::GlComStressImpl::Tick((v1 + 24));

      return BlueFin::GlComStressTestMgr::CheckRequestStop(v1);
    }
  }

  return this;
}

uint64_t BlueFin::GlComStressTestMgr::ChipData_GRABSNQ_643487(uint64_t this, unsigned __int8 *a2, unsigned __int16 a3)
{
  if (*(this + 3672))
  {
    v5 = this;
    this = BlueFin::GlComStressTestMgr::CheckRequestStop(this);
    if ((this & 1) == 0)
    {
      BlueFin::GlComStressTestMgr::SerializeAsic2HostIO(this, a2);
      BlueFin::GlComStressImpl::ProcessBriPacket((v5 + 24), a2, a3);

      return BlueFin::GlComStressTestMgr::CheckRequestStop(v5);
    }
  }

  return this;
}

uint64_t BlueFin::GlComStressTestMgr::SerializeAsic2HostIO(BlueFin::GlComStressTestMgr *this, unsigned __int8 *a2)
{
  result = MEMORY[0x2A1C7C4A8](this);
  v13 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    LODWORD(v5) = v4;
    v6 = v3;
    v9 = 75;
    v10 = 1;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = 1;
    BlueFin::GlSysLogEntry::PutU16(&v8, v4);
    if (v5)
    {
      v5 = v5;
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v8, *v6++);
        --v5;
      }

      while (v5);
    }

    result = BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, 0, 4);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlComStressTestMgr::OnTimerSet(uint64_t this, int a2)
{
  if (a2 < 0)
  {
    *(this + 3690) = 0;
  }

  else
  {
    *(this + 3690) = 1;
    return (*(**(this + 16) + 48))();
  }

  return this;
}

uint64_t BlueFin::GlComStressTestMgr::OnDataToAsic(BlueFin::GlComStressTestMgr *this, unsigned __int8 *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v18 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v14 = 74;
    v15 = 1;
    v16 = 0x1000000000000;
    v13 = &unk_2A1F092C0;
    v17 = 1;
    BlueFin::GlSysLogEntry::PutU16(&v13, v3);
    if (v4)
    {
      v8 = v4;
      v9 = v6;
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v13, *v9++);
        --v8;
      }

      while (v8);
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, 0, 4);
  }

  v10 = *(**(v7 + 16) + 16);
  v11 = *MEMORY[0x29EDCA608];

  return v10();
}

uint64_t BlueFin::GlComStressTestMgr::OnTestResults(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 3672);
  v5 = *(result + 80);
  if (v5)
  {
    v5();
    result = *(a1 + 3672);
  }

  v6 = *(result + 96);
  if (v6)
  {
    if (v6 - 1 <= (*(a2 + 4) - *(result + 92)))
    {
      *(a1 + 3700) = 1;
    }
  }

  return result;
}

void BlueFin::GlComStressTestMgr::~GlComStressTestMgr(BlueFin::GlComStressTestMgr *this)
{
  *this = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 24));
}

{
  *this = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 24));

  JUMPOUT(0x29C292F70);
}

void BlueFin::GlMeSrdEstNavBit::~GlMeSrdEstNavBit(BlueFin::GlMeSrdEstNavBit *this)
{
  *this = &unk_2A1F0C250;
}

{
  *this = &unk_2A1F0C250;
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeSrdEstPkFit::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, float *a19, float a20, int a21, __int128 a22)
{
  MEMORY[0x2A1C7C4A8](a1);
  STACK[0x13B8] = *MEMORY[0x29EDCA608];
  if ((*v14 & 1) == 0)
  {
    v52 = "stAsicCorrVecMsmt.m_bValid";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 192, "Run", "stAsicCorrVecMsmt.m_bValid");
    v53 = "glmesrd_pkfit.cpp";
    v54 = 192;
    goto LABEL_49;
  }

  v19 = v14;
  if (!v14[36])
  {
    v52 = "stAsicCorrVecMsmt.m_ucDelaysPerChip > 0";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 193, "Run", "stAsicCorrVecMsmt.m_ucDelaysPerChip > 0");
    v53 = "glmesrd_pkfit.cpp";
    v54 = 193;
    goto LABEL_49;
  }

  v20 = v14[1];
  if (v20 >= 9)
  {
    v52 = "stAsicCorrVecMsmt.m_ucCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 194, "Run", "stAsicCorrVecMsmt.m_ucCvecLen <= MAX_CVEC_LEN");
    v53 = "glmesrd_pkfit.cpp";
    v54 = 194;
    goto LABEL_49;
  }

  v21 = v15;
  if (*v15 - 1 >= 0xBC)
  {
    v52 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 195, "Run", "otSignalId.GetSvId().isValid()");
    v53 = "glmesrd_pkfit.cpp";
    v54 = 195;
    goto LABEL_49;
  }

  v22 = v18;
  v23 = v17;
  v24 = v16;
  LOBYTE(v55) = 0;
  result = BlueFin::GlMeSrdEstPkFit::CheckForUsableCorrvec((v14 + 4), v20, 0, 0, 0, (v18 + 46), 0, 0, v55, v57);
  *v22 = result;
  if (result != 1)
  {
    goto LABEL_30;
  }

  a17 = 0;
  a18 = 0;
  vars8[1] = 0.0;
  v26 = v19[1];
  if (v26 != 8)
  {
    v52 = "usVecLen == 8";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 1239, "GetSearchCvecDelayOffsetArray", "usVecLen == 8");
    v53 = "glmesrd_pkfit.cpp";
    v54 = 1239;
    goto LABEL_49;
  }

  v27 = v19[36];
  v28 = *v21;
  if (v27 != 2 || !v24)
  {
    if (v27 == 1)
    {
      v29 = xmmword_298A368B0;
      v30 = 0xC0000000C0400000;
      v31 = -1.0;
      goto LABEL_22;
    }

    if (v27 == 4)
    {
      v29 = xmmword_298A368C0;
      v30 = 0xBF000000BF400000;
      goto LABEL_19;
    }

    if (v27 != 2)
    {
      v52 = "0";
      DeviceFaultNotify("glmesrd_pkfit.cpp", 1310, "GetSearchCvecDelayOffsetArray", "0");
      v53 = "glmesrd_pkfit.cpp";
      v54 = 1310;
      goto LABEL_49;
    }

LABEL_17:
    v29 = xmmword_298A368D0;
    v30 = 0xBF800000BFC00000;
    v31 = -0.5;
    goto LABEL_22;
  }

  if ((v28 - 1) >= 0x20u && (v28 + 117) > 0x23u)
  {
    goto LABEL_17;
  }

  if (v19[37])
  {
    if (v19[37] == 1)
    {
      v29 = xmmword_298A368F0;
      v30 = 0xBF800000BFA00000;
LABEL_19:
      v31 = -0.25;
      goto LABEL_22;
    }

    v52 = "0";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 1271, "GetSearchCvecDelayOffsetArray", "0");
    v53 = "glmesrd_pkfit.cpp";
    v54 = 1271;
LABEL_49:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v53, v54, v52);
  }

  v29 = xmmword_298A368E0;
  v30 = 0xBF800000BFE00000;
  v31 = -0.75;
LABEL_22:
  a19 = v30;
  a20 = v31;
  a21 = 0;
  a22 = v29;
  WORD2(v56) = 0;
  LODWORD(v56) = *(v21 + 1);
  result = BlueFin::GlMeSrdEstPkFit::LeastSquaresPeakFit((v19 + 4), &a19, v26, v27, 0, 0, 3u, v28, *&v29, v56, &a18 + 1, &a18, &a17 + 1, &a17, &vars8[1], v30);
  if (*(v21 + 4) >= 0x23Fu)
  {
    v52 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v53 = "glsignalid.h";
    v54 = 807;
    goto LABEL_49;
  }

  v32 = BlueFin::GlSvId::s_aucSvId2gnss[*v21];
  v33 = *(v21 + 1);
  v34 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v33 + v32];
  if (!v34 || (v35 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v33 - v33 + v32]) == 0)
  {
    v52 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v53 = "glsignalid.h";
    v54 = 815;
    goto LABEL_49;
  }

  v36 = (1000 * v34 / v35);
  *(v22 + 12) = v36 * 0.00000033333;
  if (*v23 == 1 && v19[36] >= 3u)
  {
    v37 = 0.75 / *(v23 + 16);
    *(v22 + 12) = v37;
    v38 = v36 * 0.0000000066713;
    if (v37 < v38)
    {
      *(v22 + 12) = v38;
    }
  }

  v39 = *(&a17 + 1);
  v40 = a18;
  *(v22 + 24) = a17;
  *(v22 + 28) = HIDWORD(v40);
  *(v22 + 16) = 0;
  *(v22 + 32) = (0.0 - v58) + *(&v40 + 1);
  *(v22 + 36) = v40;
  *(v22 + 40) = v39;
  v41 = vars8[1];
  *(v22 + 4) = *&v40 + v39;
  *(v22 + 8) = v41;
LABEL_30:
  if (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1)
  {
    goto LABEL_41;
  }

  BlueFin::GlMeCorrVecContainer::GlMeCorrVecContainer(&a19, (v19 + 40), v19[38], *(v19 + 13), *(v19 + 7));
  v42 = STACK[0x348];
  v43 = v19[1];
  SrchCvecType = BlueFin::GlMeCorrVecAndParams::GetSrchCvecType(v19[36]);
  BlueFin::GlMeCorrVecAndParams::SetCorrVec(v42, v43, SrchCvecType, 1, 0, 0, v19 + 1);
  v45 = STACK[0x348];
  result = BlueFin::GlMePkFitParams::SetParams(STACK[0x348] + 48, *(v22 + 4), *(v22 + 32), *(v22 + 24), *v22);
  *(v45 + 1) = 1;
  v46 = *(v22 + 8) * 10000.0;
  if (v46 > 0.0)
  {
    v47 = v46;
    v48 = 0.5;
LABEL_37:
    v49 = (v47 + v48);
    goto LABEL_38;
  }

  if (v46 < 0.0)
  {
    v47 = v46;
    v48 = -0.5;
    goto LABEL_37;
  }

  LOWORD(v49) = 0;
LABEL_38:
  v50 = STACK[0x348];
  *(v50 + 64) = v49;
  *(v50 + 2) = 1;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = (*(a19 + 3))(&a19, 0, 0);
  }

LABEL_41:
  v51 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x13B8]);
  return result;
}

void BlueFin::GlMeSrdRptCtrl::~GlMeSrdRptCtrl(BlueFin::GlMeSrdRptCtrl *this)
{
  *this = &unk_2A1F0C280;
}

{
  *this = &unk_2A1F0C280;
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeSrdRptCtrl::RunSubTrk(uint64_t a1, double a2, double a3, double a4, double a5, float a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, double *a12, uint64_t a13, int a14, int a15, unsigned __int8 *a16, char a17, int a18, char a19, __int16 a20, char a21, char a22, char a23, char a24, __int16 a25, char a26, uint64_t a27, uint64_t a28)
{
  BlueFin::GlMeDSPMeas::init(a27, a16);
  if ((a27 + 100) != a16)
  {
    *(a27 + 100) = *a16;
    *(a27 + 104) = *(a16 + 1);
    *(a27 + 108) = *(a16 + 4);
  }

  *(a27 + 112) = a17;
  if (a15 != 1)
  {
    v109 = "0";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1300, "RunSubTrk", "0");
    v110 = "glmesrd_rptctrl.cpp";
    v111 = 1300;
    goto LABEL_114;
  }

  if (a18 <= 2)
  {
    switch(a18)
    {
      case 0:
        v40 = 10;
        goto LABEL_20;
      case 1:
        v40 = 11;
        goto LABEL_20;
      case 2:
        v40 = 12;
LABEL_20:
        *(a27 + 140) = v40;
        *(a27 + 144) = a24;
        *(a27 + 84) |= 0x100u;
        *(a27 + 48) = a14;
        *(a27 + 52) = a14;
        goto LABEL_21;
    }

LABEL_116:
    v109 = "0";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1292, "RunSubTrk", "0");
    v110 = "glmesrd_rptctrl.cpp";
    v111 = 1292;
LABEL_114:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v110, v111, v109);
  }

  if (a18 == 3)
  {
    v40 = 13;
    goto LABEL_20;
  }

  if (a18 != 5)
  {
    if (a18 == 6)
    {
      v40 = 17;
      goto LABEL_20;
    }

    goto LABEL_116;
  }

  if (a19)
  {
    v41 = 16;
  }

  else
  {
    v41 = 14;
  }

  *(a27 + 140) = v41;
  *(a27 + 144) = a24;
  *(a27 + 48) = 0;
LABEL_21:
  if (*a11 == 1)
  {
    *(a27 + 40) = *(a11 + 8);
    *(a27 + 84) |= 0x40000u;
  }

  if (*(a16 + 4) >= 0x23Fu)
  {
    v109 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v110 = "glsignalid.h";
    v111 = 807;
    goto LABEL_114;
  }

  v42 = BlueFin::GlSvId::s_aucSvId2gnss[*a16];
  v43 = *(a16 + 1);
  v44 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v43 + v42];
  v45 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v43 - v43 + v42];
  if (v44)
  {
    v46 = v45 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (v46)
  {
    v109 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v110 = "glsignalid.h";
    v111 = 815;
    goto LABEL_114;
  }

  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a16);
  if (*(a16 + 4) >= 0x23Fu)
  {
    goto LABEL_107;
  }

  v49 = BlueFin::GlSvId::s_aucSvId2gnss[*a16];
  v50 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a16 + 1) - *(a16 + 1)];
  v51 = v50[v49];
  if (!v50[v49])
  {
LABEL_106:
    v109 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v110 = "glsignalid.h";
    v111 = 686;
    goto LABEL_114;
  }

  v112 = EpochPerSymbol;
  if (*(a13 + 1) == 1)
  {
    *(a27 + 84) |= 0x40u;
    v52 = *(a13 + 8);
    *(a27 + 32) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a27 + 100), v52, v48);
    v54 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a27 + 100), *(a13 + 16), v53);
    v55 = *(a27 + 32);
  }

  else
  {
    v56 = *(a13 + 8);
    v55 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a27 + 100), v56, v48);
    *(a27 + 32) = v55;
    v54 = 0.000001;
  }

  *(a27 + 56) = v54;
  v57 = *(a12 + 1);
  if (*(a13 + 34))
  {
    v58 = *(a27 + 84) | 0x80;
    *(a27 + 84) = v58;
    if ((*(a13 + 35) & 1) == 0)
    {
LABEL_39:
      if (*(a16 + 4) < 0x23Fu)
      {
        v59 = *a16;
        v60 = BlueFin::GlSvId::s_aucSvId2gnss[v59];
        v61 = *(a16 + 1);
        v62 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v61 - v61 + v60]];
        if (v60 == 2)
        {
          v63 = (v59 - 59);
          if ((v59 - 52) >= 0xE)
          {
            v63 = -8.0;
          }

          v62 = v62 + v63 * 562500.0;
        }

        v64 = 299792458.0 / v62;
        *(a27 + 8) = v64 * -*(a13 + 40);
        v65 = v64 * *(a13 + 56);
        *(a27 + 60) = v65;
        if (*(a27 + 48) <= 0x3E8u)
        {
          *(a27 + 60) = 2139095039;
          *(a27 + 84) = v58 & 0xFF7DFF7F | 0x20000;
          *(a28 + 100) |= 0x20u;
        }

        goto LABEL_52;
      }

LABEL_110:
      v109 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      v110 = "glsignalid.h";
      v111 = 651;
      goto LABEL_114;
    }

LABEL_38:
    v58 |= 0x800000u;
    *(a27 + 84) = v58;
    goto LABEL_39;
  }

  if (*(a13 + 35) == 1)
  {
    v58 = *(a27 + 84);
    goto LABEL_38;
  }

  if (*(a16 + 4) >= 0x23Fu)
  {
    goto LABEL_110;
  }

  v66 = *a16;
  v67 = BlueFin::GlSvId::s_aucSvId2gnss[v66];
  v61 = *(a16 + 1);
  v68 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v61 - v61 + v67]];
  if (v67 == 2)
  {
    v69 = (v66 - 59);
    if ((v66 - 52) >= 0xE)
    {
      v69 = -8.0;
    }

    v68 = v68 + v69 * 562500.0;
  }

  *(a27 + 8) = 299792458.0 / v68 * -*(a13 + 40);
  *(a27 + 60) = 2139095039;
  *(a27 + 84) = *(a27 + 84) & 0xFF7DFF7F | 0x20000;
LABEL_52:
  v70 = v55 + 1.0;
  v71 = v51 * 0.001 / v70;
  if (*(a13 + 36) != 1)
  {
    v81 = *a16;
    v82 = BlueFin::GlSvId::s_aucSvId2gnss[v81];
    v61 = v61;
    v83 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v61 - v61 + v82]];
    if (v82 == 2)
    {
      v84 = (v81 - 59);
      if ((v81 - 52) >= 0xE)
      {
        v84 = -8.0;
      }

      v83 = v83 + v84 * 562500.0;
    }

    v72 = (a27 + 84);
    v73 = *(a27 + 84);
    *(a27 + 120) = 299792458.0 / v83 * -*(a13 + 48);
    *(a27 + 128) = 2139095039;
    goto LABEL_64;
  }

  v72 = (a27 + 84);
  v73 = *(a27 + 84);
  v74 = v73 | 0x1000000;
  *(a27 + 84) = v73 | 0x1000000;
  v75 = *a16;
  v76 = BlueFin::GlSvId::s_aucSvId2gnss[v75];
  v61 = v61;
  v77 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v61 - v61 + v76]];
  if (v76 == 2)
  {
    v78 = (v75 - 59);
    if ((v75 - 52) >= 0xE)
    {
      v78 = -8.0;
    }

    v77 = v77 + v78 * 562500.0;
  }

  v79 = 299792458.0 / v77;
  *(a27 + 120) = v79 * -*(a13 + 48);
  v80 = v79 * *(a13 + 60);
  *(a27 + 128) = v80;
  if (*(a27 + 48) <= 0x3E8u)
  {
    *(a27 + 128) = 2139095039;
LABEL_64:
    v74 = v73 & 0xFEFFFFFF;
    *v72 = v73 & 0xFEFFFFFF;
  }

  v85 = a2 - v71 * v57 + -v71 * v57;
  v86 = v85 - a3;
  *(a27 + 24) = v85 - a3;
  v87 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v61 - v61];
  v88 = v87[BlueFin::GlSvId::s_aucSvId2gnss[*a16]];
  if (!v87[BlueFin::GlSvId::s_aucSvId2gnss[*a16]])
  {
    goto LABEL_106;
  }

  *(a27 + 64) = 0;
  v89 = *a12;
  if (v89 == 1)
  {
    v90 = 1.0 / (1000 * v44 / v45) / v70;
    v91 = (v51 * v112) * 0.001 / v70;
    v92 = v90 * a12[1];
    v93 = v90 * *(a12 + 4);
    v94 = v92 > -v91 && v92 < v91;
    v95 = v91 + v85;
    if (v94)
    {
      v95 = a2 - v71 * v57 + -v71 * v57;
    }

    v86 = v95 - v92;
    *(a27 + 84) = v74 | 0x20;
  }

  else
  {
    v93 = v88 * 0.001;
  }

  v96 = v93;
  *(a27 + 24) = v86;
  *(a27 + 68) = v96;
  result = GlCustomLog(14, "Chi debug GLL RptCtrl: Sub 1 SvId %u CarrType %s SatId %u dTimeStampLs %lf dTmTagInRxSec %lf dAcqWinCodePhsInRxSec %lf m_ucBitPhaseInMs %d codePhaseValid %d dObsCaEpchIntInRxSec %lf\n", *(a27 + 100), BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a27 + 104) - *(a27 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a27 + 100)]]], *(a27 + 112), v86, v85, a3, v57, v89, v71);
  *(a27 + 8) = *(a27 + 8) + (a8 + a9) * *(a27 + 24);
  v98 = *(a27 + 84);
  *(a27 + 84) = v98 | 0x10;
  *(a27 + 64) = 0;
  if (*a16 - 139 <= 0x23)
  {
    *(a27 + 84) = v98 | 0x618;
    v99 = a1;
    goto LABEL_82;
  }

  result = BlueFin::GlSignalId::GetEpochPerSymbol((a27 + 100));
  if (*(a27 + 108) >= 0x23Fu)
  {
LABEL_107:
    v109 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v110 = "glsignalid.h";
    v111 = 679;
    goto LABEL_114;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a27 + 104) - *(a27 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a27 + 100)]])
  {
    goto LABEL_106;
  }

  v99 = a1;
  if (*(a1 + 20))
  {
    v100 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a27 + 104) - *(a27 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a27 + 100)]] * result);
    v101 = v71 * *(a1 + 24);
    if (v101 >= vcvtd_n_f64_u32(v100, 1uLL) * 0.001)
    {
      v101 = v101 + (1.0 - *(a27 + 32)) * (v100 * -0.001);
    }

    *(a27 + 16) = vaddq_f64(vdupq_lane_s64(*&v101, 0), *(a27 + 16));
  }

LABEL_82:
  v102 = *a16;
  if (v102 >= 0x4C && a18 && v102 <= 0x8A)
  {
    *(a27 + 84) |= 0x608u;
  }

  v103 = *(a27 + 24);
  *(a27 + 8) = *(a27 + 8) + *(a27 + 32) * -299792458.0 * (v103 - a2);
  *(a27 + 24) = v103 + v103 * a9 / 299792458.0;
  *(a27 + 88) = *(v99 + 28);
  *(a27 + 136) = *(a13 + 96);
  *(a27 + 132) = *(a13 + 92);
  if (a21)
  {
    v109 = "!bCorrvecIsSaturated";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1551, "RunSubTrk", "!bCorrvecIsSaturated");
    v110 = "glmesrd_rptctrl.cpp";
    v111 = 1551;
    goto LABEL_114;
  }

  if (a22)
  {
    v109 = "!bIsCcmIntermediateReport";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1552, "RunSubTrk", "!bIsCcmIntermediateReport");
    v110 = "glmesrd_rptctrl.cpp";
    v111 = 1552;
    goto LABEL_114;
  }

  if (a23)
  {
    v109 = "!bXcorrDetected";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1553, "RunSubTrk", "!bXcorrDetected");
    v110 = "glmesrd_rptctrl.cpp";
    v111 = 1553;
    goto LABEL_114;
  }

  if ((a26 & 1) == 0)
  {
    v104 = *(a27 + 100);
    if (v104 >= 0x21 && v104 <= 0x33 && *(a27 + 140) == 10)
    {
      v105 = a28;
      v106 = *(a28 + 100) | 0x200;
      *(a28 + 100) = v106;
      v107 = *(a27 + 84);
      if ((v107 & 0x40000) == 0 || *(a27 + 40) >= a6)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }
  }

  v108 = *(a27 + 84);
  if ((v108 & 0x40000) != 0 && *(a27 + 40) < a6)
  {
    v105 = a28;
    v106 = *(a28 + 100);
LABEL_99:
    *(v105 + 100) = v106 | 4;
    v107 = *(a27 + 84);
LABEL_100:
    v108 = v107 & 0xFE7FFF1F;
    *(a27 + 84) = v108;
    *(a27 + 56) = 897988541;
  }

  if ((v108 & 0x40) != 0 && *(a13 + 28) == 1 && (*(a13 + 29) & 1) == 0)
  {
    *(a27 + 84) = v108 | 0x1000;
  }

  return result;
}

char *BlueFin::GlSatCarrId::GetSignalIndexStr(BlueFin::GlSatCarrId *this)
{
  v1 = *(this + 1);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glmesrd_sat_carr_id.cpp", 59, "GetSignalIndexStr", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_carr_id.cpp", 59, "0");
  }

  return off_29EEAC440[v1];
}

unsigned __int8 *BlueFin::GlSatCarrIdSet::GetSatIdSetSignalIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0;
  *a3 = a3 + 12;
  *(a3 + 8) = 4;
  *(a3 + 20) = 0;
  v8 = *(a1 + 8);
  memcpy(v12, *a1, 4 * v8);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  for (result = BlueFin::GlSetIterator::operator++(&v8); v9 != v8; result = BlueFin::GlSetIterator::operator++(&v8))
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v6, v10);
    if (v7 == a2)
    {
      *(*a3 + ((v6[0] >> 3) & 0x1C)) |= 1 << v6[0];
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSatIdProbationMgr::Ignore(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if (a2 >= 0x64)
  {
    DeviceFaultNotify("glmesrd_sat_probation_mgr.cpp", 44, "Ignore", "ucSatId < _DIM(m_astIgnore)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_probation_mgr.cpp", 44, "ucSatId < _DIM(m_astIgnore)");
  }

  v3 = (*(result + 200) + 2 * a2);
  *v3 = 1;
  v3[1] = *a3;
  return result;
}

double BlueFin::GlMeSrdSatRptSniffState::EstAidingCodeAdjInRxSec(BlueFin::GlMeSrdSatRptSniffState *this, double a2, double a3)
{
  v3 = 0.0;
  if (*(this + 20) == 1)
  {
    v4 = *(this + 6);
    v5 = 0.5;
    v6 = (*(this + 5) + a2) * 0.5;
    v7 = (a3 - v4) * 1000.0;
    if (v7 <= 0.0)
    {
      if (v7 >= 0.0)
      {
        v8 = 0;
        return a3 - (v4 + (v6 + 1.0) * (v8 / 1000.0));
      }

      v5 = -0.5;
    }

    v8 = (v7 + v5);
    return a3 - (v4 + (v6 + 1.0) * (v8 / 1000.0));
  }

  return v3;
}

uint64_t BlueFin::GlMeSrdSatReport::GlMeSrdSatReport(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  *a1 = a5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 160) = 256;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 488) = 0;
  *(a1 + 162) = 0u;
  *(a1 + 178) = 0u;
  *(a1 + 194) = 0u;
  *(a1 + 210) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 452) = 0u;
  *(a1 + 468) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 436) = 0u;
  *(a1 + 388) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 372) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 496) = a3;
  *(a1 + 500) = *a4;
  v8 = *(a4 + 4);
  *(a1 + 508) = *(a4 + 8);
  *(a1 + 504) = v8;
  *(a1 + 512) = 0x100000000;
  *(a1 + 524) = 10;
  do
  {
    v9 = (a1 + v7 + 536);
    *v9 = 0uLL;
    v9[1] = 0uLL;
    *(a1 + v7 + 528) = 0;
    *(a1 + v7 + 531) = 0;
    v7 += 40;
  }

  while (v7 != 400);
  v10 = 0;
  *(a1 + 525) = 0;
  *(a1 + 520) = 0;
  do
  {
    v11 = (a1 + v10 + 536);
    *v11 = 0uLL;
    v11[1] = 0uLL;
    *(a1 + v10 + 528) = 0;
    *(a1 + v10 + 531) = 0;
    v10 += 40;
  }

  while (v10 != 400);
  v12 = 0;
  *(a1 + 526) = 0;
  *(a1 + 928) = 0x100000001;
  *(a1 + 940) = 10;
  do
  {
    v13 = (a1 + v12 + 952);
    *v13 = 0uLL;
    v13[1] = 0uLL;
    *(a1 + v12 + 944) = 0;
    *(a1 + v12 + 947) = 0;
    v12 += 40;
  }

  while (v12 != 400);
  v14 = 0;
  *(a1 + 941) = 0;
  *(a1 + 936) = 0;
  do
  {
    v15 = (a1 + v14 + 952);
    *v15 = 0uLL;
    v15[1] = 0uLL;
    *(a1 + v14 + 944) = 0;
    *(a1 + v14 + 947) = 0;
    v14 += 40;
  }

  while (v14 != 400);
  *(a1 + 942) = 0;
  *(a1 + 1344) = &unk_2A1F0C108;
  *(a1 + 1352) = 0;
  *(a1 + 1357) = 0;
  *(a1 + 1368) = -1;
  *(a1 + 1372) = 575;
  *(a1 + 1512) = a1 + 1408;
  *(a1 + 1408) = 0;
  *(a1 + 1428) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1468) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1536) = &unk_2A1F0C090;
  *(a1 + 1544) = &unk_2A1F0C178;
  *(a1 + 1552) = 0;
  *(a1 + 1556) = 0;
  *(a1 + 1560) = -1;
  *(a1 + 1564) = 575;
  *(a1 + 1568) = &unk_2A1F0C178;
  *(a1 + 1576) = 1;
  *(a1 + 1580) = 0;
  *(a1 + 1584) = -1;
  *(a1 + 1588) = 575;
  *(a1 + 1592) = &unk_2A1F0C198;
  *(a1 + 1600) = 0;
  *(a1 + 1632) = &unk_2A1F0BF70;
  BlueFin::GlMeSrdEstBitPhsDeltaHistObsBuf::GlMeSrdEstBitPhsDeltaHistObsBuf(a1 + 1664);
  *(a1 + 2464) = 0;
  *(a1 + 2468) = 0;
  BlueFin::GlMeSrdEstCarrPrm::GlMeSrdEstCarrPrm((a1 + 2496));
  *(a1 + 2896) = &unk_2A1F0C018;
  *(a1 + 2904) = 0;
  *(a1 + 2908) = -1;
  *(a1 + 2912) = 575;
  *(a1 + 2916) = 0;
  *(a1 + 2918) = 0;
  *(a1 + 2924) = 0;
  BlueFin::GlMeSrdCodePhsValidity::GlMeSrdCodePhsValidity(a1 + 2936);
  *(a1 + 2936) = 0;
  *(a1 + 3112) = &unk_2A1F0C250;
  *(a1 + 3120) = 0;
  *(a1 + 3121) = 0;
  *(a1 + 3128) = 0u;
  *(a1 + 3144) = &unk_2A1F0C280;
  *(a1 + 3152) = 0;
  *(a1 + 3160) = 0;
  *(a1 + 3164) = 0;
  *(a1 + 3168) = 0;
  *(a1 + 3172) = 0;
  *(a1 + 3208) = 0u;
  *(a1 + 3188) = 0u;
  *(a1 + 3204) = 0;
  BlueFin::GlMeSrdSatRptNonL1VetSm::GlMeSrdSatRptNonL1VetSm((a1 + 3224));
  return a1;
}

void sub_298978ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18)
{
  *v22 = v18;
  *v20 = v26;
  *v21 = v25;
  *v24 = &unk_2A1F0BFE8;
  *v19 = v23;
  *a10 = a9;
  *a12 = a11;
  *a14 = a13;
  *a16 = a15;
  *a18 = a17;
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdSatReport::~GlMeSrdSatReport(BlueFin::GlMeSrdSatReport *this)
{
  v2 = *(this + 797);
  if (v2 > 0.0)
  {
    GlCustomLog(11, "DeferredAssert: Block margin violation, SvId %u SatId %u TimeTagRxSec %.9f - Please update this JIRA: FW4752-589. DO NOT CREATE A NEW JIRA.\n", *(this + 500), *(this + 496), v2);
  }

  *(this + 393) = &unk_2A1F0C280;
  *(this + 389) = &unk_2A1F0C250;
  *(this + 362) = &unk_2A1F0C018;
  *(this + 312) = &unk_2A1F0BFE8;
  *(this + 204) = &unk_2A1F0BF70;
  *(this + 199) = &unk_2A1F0C198;
  *(this + 196) = &unk_2A1F0C178;
  *(this + 193) = &unk_2A1F0C178;
  *(this + 192) = &unk_2A1F0C090;
  *(this + 168) = &unk_2A1F0C108;
}

unint64_t BlueFin::GlMeSrdSatReport::ProcessSubTrkMsmt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  BlueFin::GlMeSrdSatRptTrkMsmtMI::GlMeSrdSatRptTrkMsmtMI(v23, a2, a3, a1 + 24, **(a1 + 8), *a1, a4, 200, a5);
  v10 = **(a1 + 8);
  v11 = (*(**a1 + 16))();
  v19[0] = *a3;
  v20 = *(a3 + 4);
  v21 = *(a3 + 8);
  BlueFin::GlMeSrdSatRptNoiseStats::GlMeSrdSatRptNoiseStats(&v22, v10, v11, v19);
  v12 = v24;
  v13 = (*(***(a1 + 8) + 32))(**(a1 + 8));
  v14 = (*(***(a1 + 8) + 136))(**(a1 + 8));
  v15 = (*(***(a1 + 8) + 144))(**(a1 + 8), v12);
  v16 = (*(***(a1 + 8) + 168))(**(a1 + 8), v12);
  v17 = (*(***(a1 + 8) + 184))(**(a1 + 8), v12);
  return BlueFin::GlMeSrdSatReport::RunSubTrkEstimatorAlgorithms(a1, v13, v14, v15, v16, v17, &v22, v23, a5, a6);
}

void *BlueFin::GlMeSrdSatReport::ProcessSrchMsmt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = BlueFin::GlMeSrdSatRptSearchMsmtMI::GlMeSrdSatRptSearchMsmtMI(v12, a2, a3, **(a1 + 8), *a1, a4);
  if ((*(v13 + 28) & 8) == 0)
  {
    v8 = *(v13 + 24);
    v9 = (*(***(a1 + 8) + 224))(**(a1 + 8));
    v10 = (*(***(a1 + 8) + 232))(**(a1 + 8));
    v11 = (*(***(a1 + 8) + 248))(**(a1 + 8), v8);
    return BlueFin::GlMeSrdSatReport::RunSrchEstimatorAlgorithms(a1, v9, v10 + 1, v11, v12, a5, 0.24);
  }

  return result;
}

void BlueFin::GlMeSrdSatReport::ProcessSniffMsmt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  BlueFin::GlMeSrdSatRptSniffMsmtMI::GlMeSrdSatRptSniffMsmtMI(v27, a2, a3, **(a1 + 8), *a1, a4);
  v10 = **(a1 + 8);
  v11 = (*(**a1 + 16))();
  v19[0] = *a3;
  *(&v20 + 2) = *(a3 + 4);
  HIWORD(v20) = *(a3 + 8);
  BlueFin::GlMeSrdSatRptNoiseStats::GlMeSrdSatRptNoiseStats(&v26, v10, v11, v19);
  if (a6)
  {
    v12 = (*(***(a1 + 8) + 160))(**(a1 + 8), a3);
    v13 = (*(***(a1 + 8) + 136))(**(a1 + 8));
    v14 = a1;
    v15 = v12;
    v16 = a5;
    v17 = a6;
  }

  else
  {
    v19[0] = 0;
    memset(v21, 0, 11);
    v20 = 0;
    v21[14] = *(a1 + 500);
    v22 = *(a1 + 504);
    v23 = *(a1 + 508);
    v24 = 0;
    v25 = 0;
    v18 = (*(***(a1 + 8) + 160))(**(a1 + 8), a3);
    v13 = (*(***(a1 + 8) + 136))(**(a1 + 8));
    v17 = v19;
    v14 = a1;
    v15 = v18;
    v16 = a5;
  }

  BlueFin::GlMeSrdSatReport::RunSniffEstimatorAlgorithms(v14, v15, v13, &v26, v27, v16, v17, 0.24);
}

void BlueFin::GlMeSrdSatReportMgr::~GlMeSrdSatReportMgr(BlueFin::GlMeSrdSatReportMgr *this)
{
  *this = &unk_2A1F0C2B0;
  v2 = *(this + 456);
  v3 = *(v2 + 32);
  v4 = *(v2 + 34) + 1;
  if (v4 != v3 && v3 > v4)
  {
    v5 = (*(v2 + 34) + 1);
    while (1)
    {
      v6 = (*(v2 + 28) + *(*(v2 + 16) + 2 * v5));
      if (!BlueFin::GlBigArray::Has(v2, v6))
      {
        v9 = "m_potArray->Has(handle)";
        v10 = 362;
        DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
        goto LABEL_16;
      }

      v7 = *(this + 456);
      if (v6 - *(v7 + 28) >= *(v7 + 30))
      {
        break;
      }

      v8 = *(*(v7 + 8) + 2 * (v6 - *(v7 + 28)));
      if (v8 != 0xFFFF)
      {
        if (*(v7 + 32) <= v8)
        {
          v9 = "slot < m_usNumSlots";
          v10 = 319;
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
LABEL_16:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v10, v9);
        }

        if (*v7)
        {
          BlueFin::GlMeSrdSatReport::~GlMeSrdSatReport((*v7 + *(v7 + 24) * v8));
        }
      }

      if (++v5 >= *(v2 + 32))
      {
        v2 = *(this + 456);
        goto LABEL_12;
      }
    }

    v9 = "handle - m_usMinHandle < m_usNumHandles";
    v10 = 313;
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    goto LABEL_16;
  }

LABEL_12:
  BlueFin::GlBigArray::Clear(v2);
  *(this + 60) = &unk_2A1F0C3B0;
}

{
  BlueFin::GlMeSrdSatReportMgr::~GlMeSrdSatReportMgr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeSrdSatReportMgr::DestroySatReportByHandle(BlueFin::GlMeSrdSatReportMgr *this, int a2)
{
  BlueFin::GlSatCarrId::GlSatCarrId(v5, a2);
  if (v5[0] + 100 * v5[4] != a2)
  {
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 277, "DestroySatReportByHandle", "otSatCarrId.GetIndex() == handle");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr.cpp", 277, "otSatCarrId.GetIndex() == handle");
  }

  return BlueFin::GlMeSrdSatReportMgr::DestroySatReport(this, v5);
}

uint64_t BlueFin::GlMeSrdSatReportMgr::ReportSubHeartbeat(BlueFin::GlMeSrdSatReportMgr *this, int a2)
{
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

uint64_t BlueFin::GlMeSrdSatReportMgr::DestroySatReport(uint64_t this, const BlueFin::GlSatCarrId *a2)
{
  v2 = *(this + 3648);
  if (*a2 + 100 * *(a2 + 4) - *(v2 + 28) >= *(v2 + 30))
  {
    v8 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v9 = 313;
    goto LABEL_14;
  }

  v3 = *(*(v2 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v2 + 28)));
  if (v3 == 0xFFFF)
  {
    return this;
  }

  if (*(v2 + 32) <= v3)
  {
    v8 = "slot < m_usNumSlots";
    DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
    v9 = 319;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v9, v8);
  }

  if (*v2)
  {
    v5 = this;
    BlueFin::GlMeSrdSatReport::~GlMeSrdSatReport((*v2 + *(v2 + 24) * v3));
    BlueFin::GlBigArray::Remove(*(v5 + 3648), *a2 + 100 * *(a2 + 4));
    if ((*(**(v5 + 3664) + 16))(*(v5 + 3664), *a2))
    {
      (*(**(v5 + 3664) + 32))(*(v5 + 3664), *a2);
    }

    this = (*(**(v5 + 3672) + 16))(*(v5 + 3672), *a2);
    if (this)
    {
      (**this)(this);
      v6 = *a2;
      v7 = *(**(v5 + 3672) + 32);

      return v7();
    }
  }

  return this;
}

unint64_t BlueFin::GlMeSrdSatRptRpcListener::gll_satrpt_rpc_sub_trk_msmt(unint64_t result, unsigned int a2, uint64_t a3, char a4, unsigned __int8 *a5)
{
  if ((a4 & 1) == 0)
  {
    v8 = result;
    GlSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(*a5, a5[14] & 0xF);
    v24[0] = *a5;
    v25 = GlSignalIndex;
    if (v24[0] - 189 < 0xFFFFFF44 || (v10 = BlueFin::GlSvId::s_aucSvId2gnss[v24[0]], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * GlSignalIndex - GlSignalIndex + v10] == 255) || (v26 = BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v24[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v10] + GlSignalIndex * BlueFin::GlSvId::s_aucGnss2numSvId[v10], v26 >= 0x23Fu))
    {
      DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 384, "gll_satrpt_rpc_sub_trk_msmt", "otSignalId.IsValid()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr.cpp", 384, "otSignalId.IsValid()");
    }

    BlueFin::GlSatCarrId::GlSatCarrId(v23, a2, GlSignalIndex);
    v13[0] = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 575;
    v18 = 0;
    v19 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = BlueFin::GlMeSrdSatReportMgr::CheckForTrackReset(*(v8 + 8), v23, v24);
    result = BlueFin::GlMeSrdSatReportMgr::GetSatReportPtr(*(v8 + 8), v23, v24, v11);
    v12 = *(v8 + 8);
    if ((*(v12 + 490) & 2) != 0)
    {
      return BlueFin::GlMeSrdSatReport::ProcessSubTrkMsmt(result, v12 + 480, v24, *(v12 + 60), a4 & 0xFE, v13);
    }
  }

  return result;
}

__n128 BlueFin::GlMeSrdSatRptRpcListener::gll_satrpt_rpc_eram_dump(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  if (*(*(a1 + 8) + 3640))
  {
    v8 = a3;
    GlSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(a3, a4);
    v16[0] = v8;
    v17 = GlSignalIndex;
    v18 = 575;
    if ((v8 + 67) >= 0x44u)
    {
      v12 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * GlSignalIndex - GlSignalIndex + v12] == 255)
      {
        v17 = -1;
        if (a5)
        {
LABEL_6:
          if (!*(a6 + 4))
          {
            BlueFin::GlMeSrdStats::ReportLegacyIqData(*(*(a1 + 8) + 3640));
          }
        }

LABEL_9:
        LOBYTE(v11) = *(a6 + 1);
        v13 = *(*(a1 + 8) + 3640);
        v15 = 200.0 / v11 * 0.001;
        BlueFin::GlIQSnrStatsMgr::SetIQData((v13 + 1568), v16, &v15, a6);
        return result;
      }

      v18 = BlueFin::GlSignalId::s_ausGnss2signalId[v12] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v12] + GlSignalIndex * BlueFin::GlSvId::s_aucGnss2numSvId[v12];
    }

    if (a5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  return result;
}

void BlueFin::GlMeSrdSatRptRpcBuffer::~GlMeSrdSatRptRpcBuffer(BlueFin::GlMeSrdSatRptRpcBuffer *this)
{
  *this = &unk_2A1F0C3B0;
}

{
  *this = &unk_2A1F0C3B0;
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_search(BlueFin::GlMeSrdSatRptRpcBuffer *this, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = *a3;
  if (v7 >= 3)
  {
    if (v7 == 3)
    {
      GlCustomLog(14, "GlMeSrdSatRptRpcBuffer::gll_satrpt_nsearch ignoring 2dbit grid!\n");
      goto LABEL_21;
    }

    v22 = "0";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 216, "gll_satrpt_rpc_search", "0");
    v23 = 216;
LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", v23, v22);
  }

  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(this, a2);
  v8 = *(this + 2);
  if ((v8 & 8) != 0)
  {
    v22 = "m_otFlags.Missing(FLGS_RECEIVED_SEARCH)";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 173, "gll_satrpt_rpc_search", "m_otFlags.Missing(FLGS_RECEIVED_SEARCH)");
    v23 = 173;
    goto LABEL_27;
  }

  *(this + 2) = v8 | 8;
  if (a3[9])
  {
    *(this + 2) = v8 | 0x200008;
  }

  v9 = *(a3 + 4);
  *(this + 105) = *a3;
  *(this + 113) = v9;
  v10 = *(this + 108) + *(this + 109) - 1;
  if (v10 >= 0x11)
  {
    v22 = "uiNsearchReportCnt <= _DIM(m_otRawdata.u.sSearch.satrpt_search)";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 186, "gll_satrpt_rpc_search", "uiNsearchReportCnt <= _DIM(m_otRawdata.u.sSearch.satrpt_search)");
    v23 = 186;
    goto LABEL_27;
  }

  *(this + 104) = 0;
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = 0;
  v12 = 0;
  v13 = -v10;
LABEL_8:
  v14 = 108 * v11++;
  v15 = (this + v14 + 116);
  v16 = (a4 + 4 + v14);
  do
  {
    v17 = *(v16 - 4);
    v18 = *(v16 + 28);
    v15[1] = *(v16 + 12);
    v15[2] = v18;
    *v15 = v17;
    v19 = *(v16 + 44);
    v20 = *(v16 + 60);
    v21 = *(v16 + 76);
    *(v15 + 92) = *(v16 + 88);
    v15[4] = v20;
    v15[5] = v21;
    v15[3] = v19;
    if (*v16 == a3[5] && v16[1] == a3[6])
    {
      *(this + 104) = v11 - 1;
      if (v12)
      {
        v22 = "!bMaxFound";
        DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 198, "gll_satrpt_rpc_search", "!bMaxFound");
        v23 = 198;
        goto LABEL_27;
      }

      v12 = 1;
      if (!(v13 + v11))
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v16 += 108;
    ++v11;
    v15 = (v15 + 108);
  }

  while (v13 + v11 != 1);
  if ((v12 & 1) == 0)
  {
LABEL_17:
    v22 = "bMaxFound";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 203, "gll_satrpt_rpc_search", "bMaxFound");
    v23 = 203;
    goto LABEL_27;
  }

LABEL_21:
  v24 = *(**(this + 394) + 24);

  return v24();
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_grid_msmt(uint64_t a1, int a2, _OWORD *a3)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v5 = *(a1 + 8);
  if ((v5 & 0x80000) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 245, "gll_satrpt_rpc_trk_grid_msmt", "m_otFlags.Missing(FLGS_RECEIVED_GRID_MSMT)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 245, "m_otFlags.Missing(FLGS_RECEIVED_GRID_MSMT)");
  }

  *(a1 + 8) = v5 | 0x80000;
  *(a1 + 2912) = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  *(a1 + 2976) = a3[4];
  *(a1 + 2960) = v8;
  *(a1 + 2944) = v7;
  *(a1 + 2928) = v6;
  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[7];
  *(a1 + 3040) = a3[8];
  *(a1 + 3024) = v11;
  *(a1 + 3008) = v10;
  *(a1 + 2992) = v9;
  v12 = a3[9];
  v13 = a3[10];
  v14 = a3[11];
  *(a1 + 3100) = *(a3 + 188);
  *(a1 + 3088) = v14;
  *(a1 + 3072) = v13;
  *(a1 + 3056) = v12;
  v15 = *(**(a1 + 3152) + 88);

  return v15();
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_sub_trk_msmt(uint64_t a1, unsigned int a2, uint64_t a3, unsigned __int8 a4, __int128 *a5, __int128 *a6, _OWORD *a7, uint64_t *a8, _OWORD *a9, void *a10, __int128 *a11, __int128 *a12, uint64_t *a13)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v19 = *(a1 + 8);
  v20 = v19 | 0x20000;
  *(a1 + 8) = v19 | 0x20000;
  *(a1 + 104) = a4;
  *(a1 + 105) = a3;
  if (a6)
  {
    v21 = *a6;
    *(a1 + 124) = a6[1];
    *(a1 + 108) = v21;
    v22 = a6[2];
    v23 = a6[3];
    v24 = a6[4];
    *(a1 + 188) = a6[5];
    *(a1 + 172) = v24;
    *(a1 + 156) = v23;
    *(a1 + 140) = v22;
    v25 = a6[6];
    v26 = a6[7];
    v27 = a6[8];
    *(a1 + 252) = a6[9];
    *(a1 + 236) = v27;
    *(a1 + 220) = v26;
    *(a1 + 204) = v25;
    v28 = a6[10];
    v29 = a6[11];
    v30 = a6[12];
    *(a1 + 312) = *(a6 + 204);
    *(a1 + 284) = v29;
    *(a1 + 300) = v30;
    *(a1 + 268) = v28;
  }

  if (a7)
  {
    *(a1 + 328) = *a7;
  }

  if (a8)
  {
    v31 = *a8;
    *(a1 + 352) = *(a8 + 2);
    *(a1 + 344) = v31;
  }

  if (a9)
  {
    v20 = v19 | 0x20100;
    *(a1 + 8) = v19 | 0x20100;
    v32 = a9[1];
    *(a1 + 912) = *a9;
    *(a1 + 928) = v32;
  }

  v33 = *a5;
  *(a1 + 32) = *(a5 + 4);
  *(a1 + 16) = v33;
  *(a1 + 36) = *a10;
  v34 = *a11;
  *(a1 + 60) = *(a11 + 4);
  *(a1 + 44) = v34;
  v35 = *a12;
  *(a1 + 76) = *(a12 + 12);
  *(a1 + 64) = v35;
  if (a13)
  {
    *(a1 + 8) = v20 | 4;
    v36 = *a13;
    *(a1 + 100) = *(a13 + 2);
    *(a1 + 92) = v36;
  }

  v37 = *(a1 + 3152);
  v38 = *(*v37 + 64);

  return v38(v37, a2, a3, a4, a5);
}

void BlueFin::GlMeSrdSatReport::RunSniffEstimatorAlgorithms(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom(a6, a5);
  v15 = *(a5 + 56);
  v16 = *(a5 + 64) - *(a5 + 72);
  if (*(a7 + 20))
  {
    v17 = v15 - *(a7 + 40);
  }

  else
  {
    v17 = 0.0;
  }

  BlueFin::GlMeSrdSatRptSniffState::EstAidingCodeAdjInRxSec(a7, *(a5 + 56), *(a5 + 64) - *(a5 + 72));
  *(a7 + 20) = 1;
  *(a7 + 40) = v15;
  *(a7 + 48) = v16;
  v120[0] = 0;
  v121 = 0;
  v18.i64[0] = 0x80000000800000;
  v18.i64[1] = 0x80000000800000;
  v19 = vnegq_f32(v18);
  v122 = v19;
  v19.n128_u64[0] = 2139095039;
  v123 = 2139095039;
  BlueFin::GlMeSrdEstCNo::Run(a1 + 1344, BlueFin::GlMeSrdConstants::m_stPhysConst, a2, (a1 + 500), a5 + 80, a4, v120, v19);
  BlueFin::GlMeSrdCNoResults::isGarbage(v120);
  if (v20)
  {
    v27 = "!stCNoSniffRslt.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_sniff.cpp", 102, "RunSniffEstimatorAlgorithms", "!stCNoSniffRslt.isGarbage()");
    v28 = 102;
    goto LABEL_28;
  }

  if (v120[0] == 1 && v121 != 3)
  {
    v27 = "stCNoSniffRslt.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SNIFF";
    DeviceFaultNotify("glmesrd_sat_report_sniff.cpp", 106, "RunSniffEstimatorAlgorithms", "stCNoSniffRslt.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SNIFF");
    v28 = 106;
    goto LABEL_28;
  }

  v107 = 0;
  v108 = 0x7FEFFFFFFFFFFFFFLL;
  v109 = 2139095039;
  v111 = 0;
  v110 = 0;
  v112 = 0;
  v113 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v114 = vneg_f32(0x80000000800000);
  v115 = 0xFFFFFFFFLL;
  v116 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0x7FEFFFFFFFFFFFFFLL;
  if ((*(a5 + 96) & 1) == 0)
  {
    v27 = "stCarrPrmSniffMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_sniff.cpp", 126, "RunSniffEstimatorAlgorithms", "stCarrPrmSniffMsmt.bValid");
    v28 = 126;
    goto LABEL_28;
  }

  v21 = *(a5 + 152) + *(a5 + 144);
  BlueFin::GlMeSrdEstCarrPrm::Run(a1 + 2496, (a1 + 500), *(a1 + 496), v17, v21, BlueFin::GlMeSrdConstants::m_stPhysConst, a3, a2, (a7 + 16), (a5 + 96), &v107);
  if (BlueFin::GlMeSrdCarrPrmResults::isGarbage(&v107))
  {
    v27 = "!stCarrPrmSniffRslt.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_sniff.cpp", 146, "RunSniffEstimatorAlgorithms", "!stCarrPrmSniffRslt.isGarbage()");
    v28 = 146;
    goto LABEL_28;
  }

  v100 = 0;
  v101 = 0;
  v102 = 1.79769313e308;
  v103 = 3.4028e38;
  v104 = 0;
  v105 = 0;
  v106 = 2139095039;
  if ((*(a5 + 128) & 1) == 0)
  {
    v27 = "stCodePrmSniffMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_sniff.cpp", 156, "RunSniffEstimatorAlgorithms", "stCodePrmSniffMsmt.bValid");
    v28 = 156;
    goto LABEL_28;
  }

  BlueFin::GlMeSrdEstCodePrm::Run(a1 + 2896, BlueFin::GlMeSrdConstants::m_stPhysConst, a3, (a1 + 500), a7, a5 + 80, a5 + 128, &v100);
  if (v100 == 1)
  {
    if (v102 == 1.79769313e308 || v103 == 3.4028e38 || !v104)
    {
LABEL_29:
      v27 = "!stCodePrmSniffRslt.isGarbage()";
      DeviceFaultNotify("glmesrd_sat_report_sniff.cpp", 174, "RunSniffEstimatorAlgorithms", "!stCodePrmSniffRslt.isGarbage()");
      v28 = 174;
LABEL_28:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_sniff.cpp", v28, v27);
    }
  }

  else if (v102 != 0.0 || v103 != 0.0 || v104)
  {
    goto LABEL_29;
  }

  v22 = 0;
  v96[0] = 0;
  v97 = -1082130432;
  v98 = 0;
  v99 = 127;
  v88[0] = 0;
  v89 = 0;
  v91 = 0;
  v90 = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = 1149222912;
  v95 = 0;
  v85 = 0;
  v86 = 0x7FEFFFFFFFFFFFFFLL;
  v87 = 0x7F7FFFFFFFFFFFFFLL;
  v84[0] = 0;
  do
  {
    v23 = &v84[v22];
    *(v23 + 3) = 0;
    *(v23 + 1) = 0;
    v23[5] = 1176492032;
    v22 += 5;
  }

  while (v22 != 20);
  v24 = *(a5 + 129);
  v25 = (*(**(*(a1 + 8) + 24) + 40))(*(*(a1 + 8) + 24));
  LOBYTE(v54) = -1;
  HIDWORD(v54) = 0;
  v55 = 575;
  *&v77[0] = &unk_2A1F0DBF0;
  v79 = 0;
  v80[0] = 0;
  v81 = -1;
  v82 = 575;
  BlueFin::GlMeDSPMeas::init(v77, &v54);
  v54 = &unk_2A1F0DC20;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v75 = 0u;
  v76 = 0u;
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
  v55 = 0;
  v31 = &unk_2A1F0DC20;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v52 = 0u;
  v53 = 0u;
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
  v32 = 0;
  BlueFin::GlMeSrdRptCtrl::Run(a1 + 3144, *(a5 + 64), *(a5 + 72), 0.0, 0.0, 0.0, a8, 0.0, 0.0, BlueFin::GlMeSrdConstants::m_stPhysConst, v120, &v100, &v107, v96, 0, v88, v88, &v85, v84, *(a5 + 20), 1, (a1 + 500), *(a1 + 496), 5, v24, 0, 0, 0, 0, 0, 0, 255, 0, v25, *(*(a1 + 8) + 40), HIBYTE(*(*(a1 + 8) + 40)), 0, 0, v77, &v54, &v31, &v107);
  v26 = v79;
  v79 &= 0xFFFFFF9F;
  v78 = 897988541;
  if ((v26 & 0x10) != 0)
  {
    v29 = 3;
    BlueFin::GlMeSrdDspMeasAux::GlMeSrdDspMeasAux(v30, v80, v83, &v29, v77[3]);
    (*(**(*(a1 + 8) + 8) + 16))(*(*(a1 + 8) + 8), v77, v30, 0);
  }
}

uint64_t BlueFin::GlMeSrdSatRptSniffMsmtMI::GlMeSrdSatRptSniffMsmtMI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 575;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 127) = 0;
  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = a4;
  *(a1 + 176) = a6;
  *(a1 + 184) = a3;
  v9 = (*(*a5 + 16))(a5);
  *(a1 + 192) = (*(*a4 + 48))(a4, v9, *(a1 + 184));
  *(a1 + 200) = a5;
  BlueFin::GlMeSrdSatRptSniffMsmtMI::CheckRpcBuffer(a1);
  BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildAcqWindowMsmtInfo(a1);
  BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildCNoMsmt(a1);
  BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildCarrMsmt(a1);
  BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildCodePrmMsmt(a1);
  return a1;
}

uint64_t BlueFin::GlMeSrdSatRptSniffMsmtMI::CheckRpcBuffer(uint64_t this)
{
  if ((~*(*(this + 160) + 8) & 0x10002) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_sniff_msmt.cpp", 59, "CheckRpcBuffer", "otFlags.Has(FLGS_RECEIVED_ACQ_WIN) && otFlags.Has(FLGS_RECEIVED_SNIFF)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_sniff_msmt.cpp", 59, "otFlags.Has(FLGS_RECEIVED_ACQ_WIN) && otFlags.Has(FLGS_RECEIVED_SNIFF)");
  }

  return this;
}

double BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildAcqWindowMsmtInfo(BlueFin::GlMeSrdSatRptSniffMsmtMI *this)
{
  v2 = *(this + 20);
  *this = 1;
  *(this + 1) = 3;
  v3 = *(this + 23);
  if ((this + 8) != v3)
  {
    *(this + 8) = *v3;
    *(this + 3) = *(v3 + 4);
    *(this + 8) = *(v3 + 8);
  }

  *(this + 8) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v2 + 36), v3, *(this + 44)) * 0.001;
  *(this + 8) = *(this + 8) - (*(**(this + 21) + 56))(*(this + 21), *(this + 23));
  *(this + 8) = *(this + 8) - BlueFin::GlSignalId::GetInterSignalBiasInMs(*(this + 23), *(this + 25)) * 0.001;
  v7 = *(this + 23);
  if (*(v7 + 4) >= 0x23Fu)
  {
    v20 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v21 = 679;
    goto LABEL_17;
  }

  v8 = *(v7 + 1);
  v9 = BlueFin::GlSvId::s_aucSvId2gnss[*v7];
  v10 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v8 - v8 + v9];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v8 - v8 + v9])
  {
    v20 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v21 = 686;
    goto LABEL_17;
  }

  v11 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v8 + v9];
  if (!v11)
  {
    v20 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v21 = 785;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v21, v20);
  }

  v12 = *(v2 + 48);
  LOWORD(v5) = *(v2 + 58);
  LODWORD(v6) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v13 = v5 / v6;
  v14 = *&v13 + (v12 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v13) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(this + 9) = (v14 / v13 + (v12 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v10 * 0.001) / v11;
  if (*(v2 + 20) == 1)
  {
    v15 = 0;
    LOBYTE(v16) = 4;
    do
    {
      if (*(v2 + 25 + v15) != 0xFF)
      {
        LOBYTE(v16) = v15;
      }

      ++v15;
    }

    while (v15 != 5);
    v16 = v16;
  }

  else
  {
    v16 = 4;
  }

  v17 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v2 + 4 * v16 + 72), v7, v4);
  result = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(*(this + 23), v17, v18);
  *(this + 7) = result;
  *(this + 5) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildCNoMsmt(BlueFin::GlMeSrdSatRptSniffMsmtMI *this)
{
  *(this + 80) = 1;
  v2 = *(this + 20);
  v3 = (*(**(this + 21) + 136))(*(this + 21));
  v4 = *v3;
  result = (*(**(this + 21) + 160))(*(this + 21), *(this + 23));
  v9 = *(result + 4);
  if (v2[30])
  {
    v10 = v2[29] == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    LODWORD(v6) = v2[27];
    v11 = v6 / (v4 / v9);
    *(this + 22) = v11;
    v12 = v9 * 1000.0;
    if (v12 <= 0.0)
    {
      if (v12 >= 0.0)
      {
        v27 = 0;
LABEL_27:
        v28 = *(this + 21) - v27 * *(this + 24);
        *(this + 21) = v28;
        return result;
      }

      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v27 = (v12 + v13);
    goto LABEL_27;
  }

  LODWORD(v7) = v2[27];
  v15 = v4 / v9;
  v16 = v7 / (v4 / v9);
  v17 = v9 * 1000.0;
  v18 = (v17 + -0.5);
  if (v17 < 0.0)
  {
    v19 = (v17 + -0.5);
  }

  else
  {
    v19 = 0;
  }

  if (v17 > 0.0)
  {
    v19 = (v17 + 0.5);
  }

  v20 = *(this + 24);
  v21 = fmax(v16 - v19 * v20, 0.0);
  LODWORD(v8) = v2[28];
  v22 = v8 / v15;
  if (v17 < 0.0)
  {
    v23 = (v17 + -0.5);
  }

  else
  {
    v23 = 0;
  }

  if (v17 > 0.0)
  {
    v23 = (v17 + 0.5);
  }

  v24 = sqrt(v21) + sqrt(fmax(v22 - v23 * v20, 0.0));
  v14 = 1.0 - (1.0 / (2 * *(v3 + 44)));
  v25 = ((1.0 / v14) * (v24 * 0.5)) * ((1.0 / v14) * (v24 * 0.5));
  if (v17 >= 0.0)
  {
    v18 = 0;
  }

  if (v17 > 0.0)
  {
    v18 = (v17 + 0.5);
  }

  v26 = v25 + v18 * v20;
  *(this + 21) = v25;
  *(this + 22) = v26;
  return result;
}

void BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildCarrMsmt(BlueFin::GlMeSrdSatRptSniffMsmtMI *this)
{
  *(this + 96) = 1;
  v2 = *(this + 20);
  v3 = *(*(**(this + 21) + 136))(*(this + 21));
  v4 = (*(**(this + 21) + 160))(*(this + 21), *(this + 23));
  v6 = 129;
  if (v2[30] != 0 && v2[29] != 0)
  {
    v6 = 97;
  }

  *(this + v6) = v2[30] != 0 && v2[29] != 0;
  v7 = *(v4 + 4);
  v8 = v3;
  if (v2[5] == 1)
  {
    v9 = 0;
    LOBYTE(v10) = 4;
    do
    {
      if (*(v2 + v9 + 25) != 0xFF)
      {
        LOBYTE(v10) = v9;
      }

      ++v9;
    }

    while (v9 != 5);
    v10 = v10;
  }

  else
  {
    v10 = 4;
  }

  *&v11 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(v2[v10 + 18], *(this + 23), v5);
  *(this + 15) = *&v11;
  LODWORD(v11) = v2[30];
  v12 = v11 / (v8 / v7);
  v13 = v7 * 1000.0;
  v14 = (v7 * 1000.0 + -0.5);
  if (v7 * 1000.0 < 0.0)
  {
    v15 = (v7 * 1000.0 + -0.5);
  }

  else
  {
    v15 = 0;
  }

  if (v13 > 0.0)
  {
    v15 = (v13 + 0.5);
  }

  v16 = *(this + 24);
  v17 = v12 - v15 * v16;
  v18 = v2[29];
  if (v13 >= 0.0)
  {
    v14 = 0;
  }

  if (v13 > 0.0)
  {
    v14 = (v13 + 0.5);
  }

  *(this + 13) = v17;
  *(this + 14) = v18 / (v8 / v7) - v14 * v16;
}

uint64_t BlueFin::GlMeSrdSatRptSniffMsmtMI::BuildCodePrmMsmt(BlueFin::GlMeSrdSatRptSniffMsmtMI *this)
{
  *(this + 128) = 1;
  v2 = *(this + 20);
  v3 = *(*(**(this + 21) + 136))(*(this + 21));
  result = (*(**(this + 21) + 160))(*(this + 21), *(this + 23));
  v5 = *(result + 4);
  v6 = *(v2 + 112);
  *(this + 130) = *(v2 + 61);
  v7 = *(v2 + 48);
  LOWORD(v8) = *(v2 + 58);
  LODWORD(v9) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v10 = v8 / v9;
  v11 = *&v10 + (v7 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v10) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  v12 = v11 / v10 + (v7 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft);
  *(this + 17) = v12;
  LODWORD(v12) = *(v2 + 108);
  v13 = *&v12;
  v14 = v3 / v5;
  v15 = v13 / (v3 / v5);
  v16 = v5 * 1000.0;
  if (v5 * 1000.0 <= 0.0)
  {
    v17 = (v16 + -0.5);
    v18 = *(this + 24);
    v20 = v16 < 0.0;
    v21 = -0.0;
    if (v20)
    {
      v21 = -v17;
    }

    v19 = v15 + v21 * v18;
    *(this + 18) = v19;
    if (!v20)
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = (v16 + 0.5);
    v18 = *(this + 24);
    v19 = v15 - v17 * v18;
    *(this + 18) = v19;
  }

  v22 = v6 / v14 - v17 * v18;
  v23 = v22 > 0.0;
  if (v19 <= 0.0)
  {
    v23 = 0;
  }

  *(this + 19) = v22;
  if (v6)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(this + 129) = v24;
  return result;
}

uint64_t BlueFin::GlMeSrdSatReport::RunSrchEstimatorAlgorithms(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, BlueFin::GlMeSrdSatRptSearchMsmtMI *this, uint64_t a6, float a7)
{
  v14 = *(*(this + 52) + 28);
  IsDebugIntermediaryReport = BlueFin::GlMeSrdSatRptSearchMsmtMI::IsDebugIntermediaryReport(this);
  v16 = *(this + 52);
  v17 = (*(v16 + 28) & 0x10) != 0 && *(v16 + 108 * *(v16 + 104) + 126) > 9u;
  result = BlueFin::GlMeSrdSatRptSearchMsmtMI::IsFailedSrch(this);
  if ((*(this + 8) & 1) == 0)
  {
    v51 = "stAcqWindowMsmtInfo.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 59, "RunSrchEstimatorAlgorithms", "stAcqWindowMsmtInfo.m_bValid");
    v52 = 59;
    goto LABEL_65;
  }

  if (result)
  {
    return result;
  }

  if ((v14 & 2) != 0)
  {
    result = (*(**a1 + 528))(*a1);
    if (!result)
    {
      return result;
    }
  }

  if (IsDebugIntermediaryReport)
  {
    result = (*(**a1 + 536))(*a1);
    if (!result)
    {
      return result;
    }
  }

  v73 = v17;
  BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom(a6, this + 8);
  v19 = *(this + 88);
  v20 = *(this + 7);
  v21 = *(this + 9) * 1000.0;
  v183[0] = *(a1 + 496);
  v183[1] = *(a1 + 500);
  v184 = v20;
  v185 = v21;
  if ((v19 & 1) == 0)
  {
    v51 = "stCNoSrchMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 114, "RunSrchEstimatorAlgorithms", "stCNoSrchMsmt.bValid");
    v52 = 114;
    goto LABEL_65;
  }

  v179[0] = 0;
  v180 = 0;
  v22.i64[0] = 0x80000000800000;
  v22.i64[1] = 0x80000000800000;
  v181 = vnegq_f32(v22);
  v182 = 2139095039;
  v23 = (*(**this + 840))(*this, a1 + 500);
  BlueFin::GlMeSrdEstCNo::Run((a1 + 168), v23, &BlueFin::GlMeSrdConstants::m_stPhysConst, a2, a4, v188, a1 + 500, this + 88, v179);
  BlueFin::GlMeSrdCNoResults::isGarbage(v179);
  if (v24)
  {
    v51 = "!stCNoSrchRslt.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 134, "RunSrchEstimatorAlgorithms", "!stCNoSrchRslt.isGarbage()");
    v52 = 134;
    goto LABEL_65;
  }

  if (v179[0] == 1 && v180 != 1)
  {
    v51 = "stCNoSrchRslt.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SEARCH";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 138, "RunSrchEstimatorAlgorithms", "stCNoSrchRslt.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SEARCH");
    v52 = 138;
    goto LABEL_65;
  }

  if ((*(this + 136) & 1) == 0)
  {
    v51 = "stCorrVecSrchMsmt.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 154, "RunSrchEstimatorAlgorithms", "stCorrVecSrchMsmt.m_bValid");
    v52 = 154;
    goto LABEL_65;
  }

  HIDWORD(v72) = IsDebugIntermediaryReport;
  memset(v178, 0, 47);
  v25 = *(a1 + 496);
  v26 = (*(**this + 544))(*this);
  BlueFin::GlMeSrdEstPkFit::Run((a1 + 172), &BlueFin::GlMeSrdConstants::m_stPhysConst, this + 136, a1 + 500, v25, v26, v179, v178, v27, v28, v29, v30, v31, v32, v33, v34, v53, v54, v56, *&v58, SHIDWORD(v58), v60);
  v177[0] = 0;
  v177[1] = 0;
  if ((*(this + 320) & 1) == 0)
  {
    v51 = "stAltPkSrchMsmt.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 181, "RunSrchEstimatorAlgorithms", "stAltPkSrchMsmt.m_bValid");
    v52 = 181;
    goto LABEL_65;
  }

  BlueFin::GlMeSrdEstCrossCorr::Run(a1 + 1536, &BlueFin::GlMeSrdConstants::m_stPhysConst, a2, a4, v179, this + 320, v177);
  LOBYTE(v169) = 0;
  v171 = 0;
  v172 = 0;
  v170 = 0;
  v173 = 1149222912;
  v174 = 0u;
  v175 = 0u;
  v176 = 0;
  BlueFin::GlMeSrdEstMultipath::Run((a1 + 193), &BlueFin::GlMeSrdConstants::m_stPhysConst, a2, a4, a1 + 500, v179, v178, this + 320, &v169);
  if ((*(this + 200) & 1) == 0)
  {
    v51 = "stCarrPrmSrchMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 219, "RunSrchEstimatorAlgorithms", "stCarrPrmSrchMsmt.bValid");
    v52 = 219;
    goto LABEL_65;
  }

  v156 = 0;
  v157 = 0x7FEFFFFFFFFFFFFFLL;
  v158 = 2139095039;
  v160 = 0;
  v159 = 0;
  v161 = 0;
  v162 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v163 = vneg_f32(0x80000000800000);
  v164 = 0xFFFFFFFFLL;
  v165 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0x7FEFFFFFFFFFFFFFLL;
  if (*(this + 51) != 2)
  {
    v51 = "0";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 231, "RunSrchEstimatorAlgorithms", "0");
    v52 = 231;
    goto LABEL_65;
  }

  BlueFin::GlMeSrdEstCarrPrm::Run((a1 + 312), &BlueFin::GlMeSrdConstants::m_stPhysConst, a2, a4, &v186, this + 200, a1 + 500, *(a1 + 496), *(this + 9) * 1000.0, &v156);
  if (BlueFin::GlMeSrdCarrPrmResults::isGarbage(&v156))
  {
    v51 = "!stCarrPrmSrchRslt.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 247, "RunSrchEstimatorAlgorithms", "!stCarrPrmSrchRslt.isGarbage()");
    v52 = 247;
    goto LABEL_65;
  }

  v40 = *(this + 212);
  v152[0] = 0;
  v153 = -1.0;
  v154 = 0;
  v155 = 127;
  if (v40 == 1)
  {
    BlueFin::GlMeSrdEstBitPhs::Run(v35, v36, v37, v38, v39, (a1 + 204), &BlueFin::GlMeSrdConstants::m_stPhysConst, a2, a4, &v187, v183, this + 212, v179, v152, v55, v57, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, *v70, v70[2], v70[3], v70[4], v72, v73, v74, v75[0], v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    if (v152[0] == 1 && v154 == 1 && (v153 < 0.0 || v155 == 127))
    {
      v51 = "!stBitPhsSrchRslt.isGarbage()";
      DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 304, "RunSrchEstimatorAlgorithms", "!stBitPhsSrchRslt.isGarbage()");
      v52 = 304;
LABEL_65:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_srch.cpp", v52, v51);
    }
  }

  if ((*(this + 304) & 1) == 0)
  {
    v51 = "stCodePrmSrchMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 312, "RunSrchEstimatorAlgorithms", "stCodePrmSrchMsmt.bValid");
    v52 = 312;
    goto LABEL_65;
  }

  v145 = 0;
  v146 = 0;
  v147 = 1.79769313e308;
  v148 = 3.4028e38;
  v149 = 0;
  v150 = 0;
  v151 = 2139095039;
  BlueFin::GlMeSrdEstCodePrm::Run((a1 + 362), &BlueFin::GlMeSrdConstants::m_stPhysConst, a2, a4, a3, a1 + 500, this + 304, v179, v178, &v169, &v145);
  v41.n128_f32[0] = v148;
  if (v145 == 1)
  {
    if (v147 == 1.79769313e308 || v148 == 3.4028e38 || !v149)
    {
LABEL_67:
      v51 = "!stCodePrmSrchRslt.isGarbage()";
      DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 333, "RunSrchEstimatorAlgorithms", "!stCodePrmSrchRslt.isGarbage()");
      v52 = 333;
      goto LABEL_65;
    }
  }

  else if (v147 != 0.0 || v148 != 0.0 || v149)
  {
    goto LABEL_67;
  }

  v71 = a4;
  v42 = 0;
  v142 = 0;
  v143 = 0x7FEFFFFFFFFFFFFFLL;
  v144 = 0x7F7FFFFFFFFFFFFFLL;
  v141[0] = 0;
  do
  {
    v43 = &v141[v42];
    *(v43 + 3) = 0;
    *(v43 + 1) = 0;
    v43[5] = 1176492032;
    v42 += 5;
  }

  while (v42 != 20);
  LODWORD(v72) = (v14 >> 1) & 1;
  v44 = *(this + 124) == 4;
  v45 = *(this + 52);
  v46 = *(v45 + 24);
  v47 = *(v45 + 105) == 2;
  v48 = (*(**(a1[1] + 24) + 40))(*(a1[1] + 24), v41);
  LOBYTE(v111) = -1;
  HIDWORD(v111) = 0;
  v112 = 575;
  *&v134[0] = &unk_2A1F0DBF0;
  v135 = 0;
  v136[0] = 0;
  v137 = -1;
  v138 = 575;
  BlueFin::GlMeDSPMeas::init(v134, &v111);
  v111 = &unk_2A1F0DC20;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v132 = 0u;
  v133 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v112 = 0;
  v88 = &unk_2A1F0DC20;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v109 = 0u;
  v110 = 0u;
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
  v89 = 0;
  BlueFin::GlMeSrdRptCtrl::Run((a1 + 393), *(this + 9), *(this + 10), 0.0, 0.0, 0.0, a7, 0.0, 0.0, &BlueFin::GlMeSrdConstants::m_stPhysConst, v179, &v145, &v156, v152, 0, &v169, &v169, &v142, v141, *(this + 7), 0, a1 + 500, *(a1 + 496), 7, 0, 0, v44, v47, v72, SBYTE4(v72), v73, v46, 0, v48, *(a1[1] + 40), HIBYTE(*(a1[1] + 40)), 0, 0, v134, &v111, &v88, &v156);
  v74 = 1;
  BlueFin::GlMeSrdDspMeasAux::GlMeSrdDspMeasAux(v75, v136, v139, &v74, v134[3]);
  if (v179[0] == 1)
  {
    if (v180 != 1)
    {
      v51 = "stCNoSrchRslt.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SEARCH";
      DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 431, "RunSrchEstimatorAlgorithms", "stCNoSrchRslt.m_otMsmtSrc.GetEnum() == GLMESRD_MSMT_SRC_SEARCH");
      v52 = 431;
      goto LABEL_65;
    }

    *(&v81 + 4) = __PAIR64__(*(v71 + 20), v181.u32[2]);
    LOBYTE(v81) = 1;
  }

  if (v149 == 4)
  {
    LODWORD(v82) = HIDWORD(v172);
  }

  if (v140 == 15)
  {
    v49 = *((*(**a1[1] + 248))(*a1[1], v46) + 24);
    BYTE13(v81) = (v49 & 0x40) != 0;
    if (v140 == 15)
    {
      if ((v49 & 0x40) == 0)
      {
        v50 = (v135 >> 3) & 1;
        if ((v48 | BYTE4(v72)))
        {
          LOBYTE(v50) = 1;
        }

        goto LABEL_49;
      }

      if ((~v135 & 0x418) == 0)
      {
        LOBYTE(v50) = 1;
LABEL_49:
        BYTE12(v81) = v50;
      }
    }
  }

  else
  {
    BYTE13(v81) = 0;
  }

  result = BlueFin::GlMeSrdDspMeasAux::isGarbage(v75);
  if (result)
  {
    v51 = "!otDspMeasAux.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_srch.cpp", 471, "RunSrchEstimatorAlgorithms", "!otDspMeasAux.isGarbage()");
    v52 = 471;
    goto LABEL_65;
  }

  if ((v135 & 0x10) != 0)
  {
    return (*(**(a1[1] + 8) + 16))(*(a1[1] + 8), v134, v75, 0);
  }

  return result;
}

void *BlueFin::GlMeSrdSatRptSearchMsmtMI::GlMeSrdSatRptSearchMsmtMI(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v160 = *MEMORY[0x29EDCA608];
  *a1 = a5;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 3) = 0;
  *(a1 + 5) = 0;
  *(a1 + 12) = 575;
  *(a1 + 7) = 0;
  *(a1 + 16) = 0;
  *(a1 + 5) = 0u;
  v6 = a1 + 5;
  *(a1 + 32) = 0;
  *(a1 + 66) = 0;
  *(a1 + 92) = 0u;
  v7 = a1 + 23;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0;
  *(a1 + 136) = 0;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 176) = 0;
  v8 = a1 + 22;
  *(a1 + 137) = -1;
  *(a1 + 86) = -1;
  *(a1 + 174) = 0;
  *(a1 + 45) = 0;
  *(a1 + 92) = 575;
  *(a1 + 47) = 0;
  a1[24] = 0;
  *(a1 + 140) = 0u;
  v9 = a1 + 35;
  *(a1 + 156) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0x7F7FFFFF00000000;
  *(a1 + 212) = 0;
  *(a1 + 54) = -1;
  *(a1 + 110) = -1;
  *(a1 + 14) = 0u;
  v10 = a1 + 28;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 152) = 0;
  a1[39] = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 194) = 255;
  *(a1 + 392) = 0;
  *(a1 + 99) = 0;
  *(a1 + 200) = 575;
  *(a1 + 372) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 324) = 0u;
  a1[51] = 0;
  a1[52] = a2;
  a1[53] = a4;
  *(a1 + 108) = a6;
  *(a1 + 436) = 0;
  a1[55] = a3;
  if ((*(a2 + 8) & 0x1001A) != 0xA)
  {
    v126 = "otFlags.Has(FLGS_RECEIVED_ACQ_WIN) && otFlags.Has(FLGS_RECEIVED_SEARCH) && otFlags.Missing(FLGS_RECEIVED_TRACK) && otFlags.Missing(FLGS_RECEIVED_SNIFF)";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 172, "CheckRpcBuffer", "otFlags.Has(FLGS_RECEIVED_ACQ_WIN) && otFlags.Has(FLGS_RECEIVED_SEARCH) && otFlags.Missing(FLGS_RECEIVED_TRACK) && otFlags.Missing(FLGS_RECEIVED_SNIFF)");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 172;
    goto LABEL_129;
  }

  if (*(a2 + 20))
  {
    v126 = "sAcqWin.id.eng_type == SEARCH_ENGINE_TYPE";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 178, "CheckRpcBuffer", "sAcqWin.id.eng_type == SEARCH_ENGINE_TYPE");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 178;
    goto LABEL_129;
  }

  v12 = a2 + 108 * *(a2 + 104);
  if (*(v12 + 120) != *(a2 + 110) || *(v12 + 121) != *(a2 + 111))
  {
    v126 = "rSearch_max_bin.bin_id == rSearch_info.peak_bin_id && rSearch_max_bin.bit_phase_id == rSearch_info.peak_bit_phase_id";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 182, "CheckRpcBuffer", "rSearch_max_bin.bin_id == rSearch_info.peak_bin_id && rSearch_max_bin.bit_phase_id == rSearch_info.peak_bit_phase_id");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 182;
    goto LABEL_129;
  }

  *(a1 + 8) = 1;
  *(a1 + 3) = 1;
  if (a1 + 2 != a3)
  {
    *(a1 + 16) = *a3;
    *(a1 + 5) = *(a3 + 4);
    *(a1 + 12) = *(a3 + 8);
  }

  v14 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(a2 + 88), a3, a3);
  *(a1 + 8) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a1[55], v14, v15);
  *(a1 + 9) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((a2 + 36), a1[55], *(a1 + 108)) * 0.001;
  *(a1 + 9) = *(a1 + 9) - (*(*a1[53] + 56))(a1[53], a1[55]);
  InterSignalBiasInMs = BlueFin::GlSignalId::GetInterSignalBiasInMs(a1[55], *a1);
  v17 = *(a1 + 9);
  v18 = v17 - InterSignalBiasInMs * 0.001;
  *(a1 + 9) = v18;
  *(a1 + 9) = BlueFin::GlMeSrdAsicUnitConverter::Esw16thOr20thChipsToSecs(*(a2 + 113), a1[55], v19, v18, v17, v20) + *(a1 + 9);
  v21 = (*(*a1[53] + 248))(a1[53], *(a2 + 24));
  LOWORD(v22) = *(a2 + 32);
  *(a1 + 9) = *(a1 + 9) + (1.0 - *(a1 + 8)) * (*(v21 + 4) * v22);
  v23 = a1[55];
  if (*(v23 + 4) >= 0x23Fu)
  {
    v126 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v127 = "glsignalid.h";
    v128 = 679;
    goto LABEL_129;
  }

  v24 = *(v23 + 1);
  v25 = BlueFin::GlSvId::s_aucSvId2gnss[*v23];
  v26 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v24 - v24 + v25];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v24 - v24 + v25])
  {
    v126 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v127 = "glsignalid.h";
    v128 = 686;
    goto LABEL_129;
  }

  v27 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v24 + v25];
  if (!v27)
  {
    v126 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v127 = "glsignalid.h";
    v128 = 785;
    goto LABEL_129;
  }

  *(a1 + 10) = ((vcvtd_n_f64_u32(*(a2 + 58), 0x10uLL) + (*(a2 + 48) & 0xF)) * 0.0625 + (*(a2 + 48) >> 4)) * (v26 * 0.001) / v27;
  *(a1 + 7) = 0;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v28 = a1[52];
  v29 = *(v28 + 104);
  v30 = v28 + 108 * *(v28 + 104);
  v31 = v30 + 116;
  v155 = (*(*a1[53] + 248))(a1[53], *(v28 + 24));
  *(a1 + 89) = 8;
  v157 = (*(v30 + 204) >> 5) & 3;
  FftPhaseFromCvecSampleIdx = BlueFin::GlMeSrdSatRptSearchMsmtMI::GetFftPhaseFromCvecSampleIdx(0, v157, 3, *(v30 + 117));
  v34 = *(a1 + 89);
  if (*(a1 + 89))
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = FftPhaseFromCvecSampleIdx;
    v39 = (v28 + 108 * v29 + 206);
    do
    {
      v40 = *(v39 - 1) << *v39;
      v7[v35] = v40;
      v41 = *(v31 + 32 + 4 * v38);
      v159[v35] = v41;
      v42 = __CFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        v126 = "ulCvecVal >= m_stCNoMsmt.aulCvec[i]";
        DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 297, "BuildCNoMsmt", "ulCvecVal >= m_stCNoMsmt.aulCvec[i]");
        v127 = "glmesrd_sat_report_srch_msmt.cpp";
        v128 = 297;
        goto LABEL_129;
      }

      v39 += 2;
      v7[v35] = v43;
      if (v37 != 3 && v43 == v36 || v43 > v36)
      {
        v37 = v35;
      }

      if (v43 > v36)
      {
        v36 = v43;
      }

      v46 = *(v31 + 1);
      v38 = (v38 + 1) % v46;
      ++v35;
    }

    while (v34 != v35);
    if (v37 == 3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v46 = *(v31 + 1);
  }

  v47 = *(v31 + 4 * BlueFin::GlMeSrdSatRptSearchMsmtMI::GetFftPhaseFromCvecSampleIdx(3, v157, 3, v46) + 32);
  if (v47 >= 0x801)
  {
    v48 = *(a1 + 26) + ~(-2 << -__clz(v47 >> 12));
    *(a1 + 26) = v48;
    if (v48 >= v36)
    {
LABEL_33:
      v56 = 1;
      goto LABEL_34;
    }
  }

  v49 = v31 + 2 * v37;
  v50 = *(v49 + 89);
  LOBYTE(v49) = *(v49 + 90);
  v51 = *(v31 + 95);
  v52 = *(v31 + 96);
  v53 = (v50 << v49) + v159[v37] - (v159[3] + (v51 << v52));
  v54 = 1 << v49;
  if (v51 == 255)
  {
    v55 = 2;
  }

  else
  {
    v55 = 1;
  }

  v56 = (v55 << v52) + v54 > 2 * v53;
LABEL_34:
  v57 = a1[52];
  if ((*(v57 + 28) & 0xA) == 0 && ((v56 | ((*(v57 + 10) & 0x20) >> 5)) & 1) == 0)
  {
    v126 = "uiCvecPeakIdx == GlMeSrdAsicCorrVecSrchMsmt::CVEC_PROMPT_IDX";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 408, "BuildCNoMsmt", "uiCvecPeakIdx == GlMeSrdAsicCorrVecSrchMsmt::CVEC_PROMPT_IDX");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 408;
    goto LABEL_129;
  }

  v58 = *(v31 + 1);
  *(a1 + 124) = v58;
  if (!*(v31 + 8))
  {
    v126 = "0 != rSearch_max_bin.smet.scv_actual_noncoh_count";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 415, "BuildCNoMsmt", "0 != rSearch_max_bin.smet.scv_actual_noncoh_count");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 415;
    goto LABEL_129;
  }

  *(a1 + 66) = *(v31 + 8);
  v59 = *(v31 + 16);
  *(a1 + 32) = v59;
  if (v58)
  {
    v60 = (v31 + 32);
    v61 = *(v155 + 10);
    v62 = v58;
    v63 = v59;
    do
    {
      v64 = *v60++;
      v63 += v64 * v61;
      *(a1 + 32) = v63;
      --v62;
    }

    while (v62);
    if (v63 < v59)
    {
      v126 = "m_stCNoMsmt.ulMagSum >= rSearch_max_bin.smet.scv_mag_sum";
      DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 427, "BuildCNoMsmt", "m_stCNoMsmt.ulMagSum >= rSearch_max_bin.smet.scv_mag_sum");
      v127 = "glmesrd_sat_report_srch_msmt.cpp";
      v128 = 427;
      goto LABEL_129;
    }
  }

  *(a1 + 88) = 1;
  if ((a1[1] & 1) == 0)
  {
    v126 = "m_stAcqWindowMsmtInfo.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 436, "BuildCorrVecMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 436;
    goto LABEL_129;
  }

  v65 = *(a1 + 89);
  *(a1 + 137) = v65;
  if (v65 >= 9)
  {
    v126 = "m_stCorrVecMsmt.m_ucCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 439, "BuildCorrVecMsmt", "m_stCorrVecMsmt.m_ucCvecLen <= MAX_CVEC_LEN");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 439;
    goto LABEL_129;
  }

  v66 = *(v57 + 104);
  if (v65)
  {
    do
    {
      *v9 = *(v9 - 12);
      ++v9;
      --v65;
    }

    while (v65);
  }

  *(a1 + 172) = v58;
  *(a1 + 173) = (*(v57 + 116 + 108 * v66 + 88) >> 5) & 3;
  *(a1 + 174) = *(v57 + 12);
  v67 = a1[55];
  if (v8 != v67)
  {
    *(a1 + 176) = *v67;
    *(a1 + 45) = *(v67 + 4);
    *(a1 + 92) = *(v67 + 8);
  }

  *(a1 + 47) = 0;
  a1[24] = a1[9];
  *(a1 + 136) = 1;
  *(a1 + 200) = 1;
  *(a1 + 51) = 2;
  if (*(v57 + 20) == 1)
  {
    v68 = 0;
    LOBYTE(v69) = 4;
    do
    {
      if (*(v57 + 25 + v68) != 0xFF)
      {
        LOBYTE(v69) = v68;
      }

      ++v68;
    }

    while (v68 != 5);
    v69 = v69;
  }

  else
  {
    v69 = 4;
  }

  *(a1 + 52) = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v57 + 4 * v69 + 72), v67, v33);
  if ((a1[11] & 1) == 0)
  {
    v126 = "m_stCNoMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 563, "BuildCodePrmMsmt", "m_stCNoMsmt.bValid");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 563;
    goto LABEL_129;
  }

  v71 = a1[52];
  v70 = a1[53];
  v72 = v71 + 108 * *(v71 + 104);
  v73 = v72 + 2 * ((*(v72 + 204) >> 5) & 3);
  *(a1 + 304) = 1;
  v74 = *(v73 + 140);
  v75 = *(v72 + 124);
  v76 = *((*(*v70 + 248))(v70, *(v71 + 24)) + 4) * 1000.0;
  if (v76 <= 0.0)
  {
    if (v76 < 0.0)
    {
      v77 = (v76 + -0.5);
    }

    else
    {
      v77 = 0;
    }
  }

  else
  {
    v77 = (v76 + 0.5);
  }

  v78 = a1[55];
  if (*(v78 + 4) >= 0x23Fu)
  {
    v126 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v127 = "glsignalid.h";
    v128 = 807;
    goto LABEL_129;
  }

  v79 = BlueFin::GlSvId::s_aucSvId2gnss[*v78];
  v80 = *(v78 + 1);
  v81 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v80 + v79];
  v82 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v80 - v80 + v79];
  if (v81)
  {
    v83 = v82 == 0;
  }

  else
  {
    v83 = 1;
  }

  if (v83)
  {
    v126 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v127 = "glsignalid.h";
    v128 = 815;
    goto LABEL_129;
  }

  *(a1 + 39) = v77 * 0.001 * *(v71 + 32) * (1000 * v81 / v82) + v74 / (v75 * 64.0) + (vcvtd_n_f64_u32(*(v71 + 58), 0x10uLL) + (*(v71 + 48) & 0xF)) * 0.0625 + (*(v71 + 48) >> 4);
  *(a1 + 305) = *(v71 + 61);
  if ((a1[17] & 1) == 0)
  {
    v126 = "m_stCorrVecMsmt.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 482, "BuildBitPhsMsmt", "m_stCorrVecMsmt.m_bValid");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 482;
    goto LABEL_129;
  }

  if ((a1[1] & 1) == 0)
  {
    v126 = "m_stAcqWindowMsmtInfo.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 483, "BuildBitPhsMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 483;
    goto LABEL_129;
  }

  v84 = a1[52];
  if ((~*(v84 + 8) & 0xA) != 0 || *(v84 + 105) != 2)
  {
    *(a1 + 212) = 0;
  }

  else
  {
    v85 = *(v84 + 108 * *(v84 + 104) + 124);
    v86 = a1[53];
    LOBYTE(v159[0]) = *(v84 + 16);
    v87 = *((*(*v86 + 160))(v86, v159) + 8);
    v84 = a1[52];
    v88 = *(v84 + 109);
    if (v88 > v87)
    {
      v126 = "m_rRpcBuffer.GetBitHistLen() <= ucBitHistLenInCaEpoch";
      DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 499, "BuildBitPhsMsmt", "m_rRpcBuffer.GetBitHistLen() <= ucBitHistLenInCaEpoch");
      v127 = "glmesrd_sat_report_srch_msmt.cpp";
      v128 = 499;
      goto LABEL_129;
    }

    v89 = v87 / v88;
    if (v87 / v88 * v88 != v87)
    {
      v126 = "ucBitHistSpacingInCaEpoch * m_rRpcBuffer.GetBitHistLen() == ucBitHistLenInCaEpoch";
      DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 504, "BuildBitPhsMsmt", "ucBitHistSpacingInCaEpoch * m_rRpcBuffer.GetBitHistLen() == ucBitHistLenInCaEpoch");
      v127 = "glmesrd_sat_report_srch_msmt.cpp";
      v128 = 504;
      goto LABEL_129;
    }

    *(a1 + 212) = 1;
    *(a1 + 54) = v85;
    *(a1 + 220) = v87;
    *(a1 + 221) = v89;
    v90 = *(v84 + 108) + *(v84 + 109) - 1;
    if (*(v84 + 108) + *(v84 + 109) != 1)
    {
      v91 = 0;
      v92 = *(v84 + 110);
      v93 = *(v84 + 104);
      v94 = v84 + 116;
      v95 = 1;
      while (1)
      {
        v96 = v90 <= (v91 + v93) ? v90 : 0;
        v97 = v91 + v93 - v96;
        if (v93 == v97)
        {
          break;
        }

        if (v92 == *(v94 + 108 * v97 + 4))
        {
          if (*(v84 + 108) + *(v84 + 109) - 1 <= v97)
          {
            v126 = "i<GetNbOfSrchBin()";
            DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.h", 211, "GetSrchBinData", "i<GetNbOfSrchBin()");
            v127 = "glmesrd_sat_report_rpc_buffer.h";
            v128 = 211;
            goto LABEL_129;
          }

          v103 = v94 + 108 * v97;
          v104 = *(v103 + 89) << *(v103 + 90);
          *(v10 + v95) = v104;
          *(v10 + v95) = v104 + *(v103 + 32);
          goto LABEL_86;
        }

LABEL_87:
        if (v87 <= v95)
        {
          v95 = 0;
        }

        if (++v91 >= v90)
        {
          goto LABEL_92;
        }
      }

      v98 = *(a1 + 137);
      if (*(a1 + 137))
      {
        v99 = *(v10 + v95);
        v100 = v7;
        do
        {
          v102 = *v100++;
          v101 = v102;
          if (v102 > v99)
          {
            *(v10 + v95) = v101;
            v99 = v101;
          }

          --v98;
        }

        while (v98);
      }

LABEL_86:
      v95 += v89;
      goto LABEL_87;
    }
  }

LABEL_92:
  if ((a1[11] & 1) == 0)
  {
    v126 = "m_stCNoMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 608, "BuildAltPkMsmt", "m_stCNoMsmt.bValid");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 608;
    goto LABEL_129;
  }

  if ((a1[1] & 1) == 0)
  {
    v126 = "m_stAcqWindowMsmtInfo.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 609, "BuildAltPkMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    v127 = "glmesrd_sat_report_srch_msmt.cpp";
    v128 = 609;
    goto LABEL_129;
  }

  v105 = v84 + 108 * *(v84 + 104);
  v106 = (*(*a1[53] + 248))(a1[53], *(v84 + 24));
  v108 = *(v105 + 116);
  v107 = v105 + 116;
  *(a1 + 320) = 1;
  if (v108)
  {
    v109 = *(v107 + 48);
    *(a1 + 321) = v109;
    if (v109)
    {
LABEL_96:
      *v158 = v8;
      v110 = 0;
      v111 = 0;
      v112 = (v107 + 52);
      v113 = a1 + 89;
      v114 = v107 + 32;
      v115 = *(v107 + 84);
      v116 = *(v106 + 10);
      v156 = *(a1 + 124);
      v154 = v109;
      v117 = 2 * v109;
      do
      {
        v118 = *v112++;
        v119 = (v115 >> v110) & 3;
        *v113 = (v119 / v156) + BlueFin::GlMeSrdAsicUnitConverter::FftIdxToWholeChip((v118 & 0x3FFF), v116);
        *v120.i32 = (v118 >> 14) + *(v114 + 4 * v119);
        *(v113 - 8) = *v120.i32;
        *v121.i32 = *v120.i32 - (truncf(*v120.i32 * 2.3283e-10) * 4295000000.0);
        v122.i64[0] = 0x8000000080000000;
        v122.i64[1] = 0x8000000080000000;
        LODWORD(v123) = vbslq_s8(v122, v121, v120).u32[0];
        if (*v120.i32 > 4295000000.0)
        {
          *v120.i32 = v123;
        }

        v111 += *v120.i32;
        v110 += 2;
        ++v113;
      }

      while (v117 != v110);
      v124 = *(a1 + 32);
      v8 = *v158;
      v125 = v156;
      v109 = v154;
      if (v124 < v111)
      {
        v126 = "ulTotalMagSum >= ulSumPeakVec";
        DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 644, "BuildAltPkMsmt", "ulTotalMagSum >= ulSumPeakVec");
        v127 = "glmesrd_sat_report_srch_msmt.cpp";
        v128 = 644;
        goto LABEL_129;
      }

      goto LABEL_104;
    }
  }

  else
  {
    v109 = *(a1 + 321);
    if (*(a1 + 321))
    {
      goto LABEL_96;
    }
  }

  v111 = 0;
  v124 = *(a1 + 32);
  v125 = *(a1 + 124);
  LOWORD(v116) = *(v106 + 10);
LABEL_104:
  if (v109)
  {
    v129 = (v124 - v111);
    v130 = v8 + 148;
    v131 = v129 / (v116 * v125 - v109);
    v132 = v109;
    v133 = v8 + 37;
    v134 = v109;
    do
    {
      if (*v133 <= v131)
      {
        v135 = 0.0;
      }

      else
      {
        v135 = *v133 - v131;
      }

      *v133++ = v135;
      --v134;
    }

    while (v134);
    if (v109 != 1)
    {
      v136 = a1 + 356;
      v137 = (a1 + 45);
      v138 = 1;
      v139 = 82;
      do
      {
        v140 = v137;
        v141 = v139;
        do
        {
          v142 = (v141 - 82);
          v143 = *&v130[4 * v142];
          v144 = *(v140 - 8);
          if (v143 >= v144)
          {
            break;
          }

          *&v130[4 * v142] = v144;
          *(v140 - 8) = v143;
          v145 = *&v136[4 * v142];
          *&v136[4 * v142] = *v140;
          *v140-- = v145;
          v146 = v141 - 81;
          --v141;
        }

        while (v146 > 1);
        ++v138;
        ++v139;
        ++v137;
      }

      while (v138 != v132);
    }
  }

  *(a1 + 388) = v125;
  v147 = a1[55];
  if (v8 + 27 != v147)
  {
    *(a1 + 392) = *v147;
    *(a1 + 99) = *(v147 + 4);
    *(a1 + 200) = *(v147 + 8);
  }

  v148 = a1[52];
  *(a1 + 389) = v148[12];
  a1[51] = a1[9];
  if ((v148[28] & 0x10) != 0 && *&v148[108 * v148[104] + 126] >= 0xAu)
  {
    if (((*(**a1 + 520))(*a1) & 1) == 0)
    {
      v126 = "m_rAsicConfigIfc.EnableSearchXcorrTest()";
      DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 53, "GlMeSrdSatRptSearchMsmtMI", "m_rAsicConfigIfc.EnableSearchXcorrTest()");
      v127 = "glmesrd_sat_report_srch_msmt.cpp";
      v128 = 53;
      goto LABEL_129;
    }

    if ((*(a1 + 436) & 1) == 0)
    {
      v149 = a1[52];
      v150 = *(v149 + 28);
      if (v150)
      {
        if ((v150 & 0x20) != 0)
        {
          v126 = "!(m_rRpcBuffer.GetAcqWindowRawData().id.flags.se.search_result & SRCH_FAILURE)";
          DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 159, "IsSuccessfulSrch", "!(m_rRpcBuffer.GetAcqWindowRawData().id.flags.se.search_result & SRCH_FAILURE)");
          v127 = "glmesrd_sat_report_srch_msmt.cpp";
          v128 = 159;
        }

        else
        {
          v151 = (*(*a1[53] + 248))(a1[53], *(v149 + 24));
          if (*(a1[52] + 105) == 2 && (*(v151 + 24) & 0x100) != 0)
          {
            *(a1 + 436) = 1;
            goto LABEL_127;
          }

          v126 = "bIs2dBitSrch && bReportOnFailure";
          DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 66, "GlMeSrdSatRptSearchMsmtMI", "bIs2dBitSrch && bReportOnFailure");
          v127 = "glmesrd_sat_report_srch_msmt.cpp";
          v128 = 66;
        }

LABEL_129:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v127, v128, v126);
      }
    }
  }

LABEL_127:
  v152 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t BlueFin::GlMeSrdSatRptSearchMsmtMI::IsDebugIntermediaryReport(BlueFin::GlMeSrdSatRptSearchMsmtMI *this)
{
  v1 = *(this + 52);
  if ((*(v1 + 28) & 5) == 4)
  {
    return (*((*(**(this + 53) + 248))(*(this + 53), *(v1 + 24)) + 24) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlMeSrdSatRptSearchMsmtMI::IsFailedSrch(BlueFin::GlMeSrdSatRptSearchMsmtMI *this)
{
  if ((*(this + 436) & 1) == 0)
  {
    v1 = *(*(this + 52) + 28);
    if ((v1 & 0x20) == 0)
    {
      return 0;
    }

    if (v1)
    {
      DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 141, "IsFailedSrch", "!(m_rRpcBuffer.GetAcqWindowRawData().id.flags.se.search_result & SRCH_DETECT)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_srch_msmt.cpp", 141, "!(m_rRpcBuffer.GetAcqWindowRawData().id.flags.se.search_result & SRCH_DETECT)");
    }
  }

  return 1;
}

uint64_t BlueFin::GlMeSrdSatRptSearchMsmtMI::GetFftPhaseFromCvecSampleIdx(BlueFin::GlMeSrdSatRptSearchMsmtMI *this, char a2, char a3, unsigned int a4)
{
  if (((a2 + this - a3 + 4 * a4) & 0x80) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_srch_msmt.cpp", 214, "GetFftPhaseFromCvecSampleIdx", "k >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_srch_msmt.cpp", 214, "k >= 0");
  }

  return (a2 + this - a3 + 4 * a4) % a4;
}

unint64_t BlueFin::GlMeSrdSatReport::RunSubTrkEstimatorAlgorithms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, float *a7, uint64_t *a8, char a9, uint64_t a10)
{
  v163 = a2;
  v164 = a3;
  v165 = a4;
  v166 = a5;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  if ((a8[7] & 1) == 0)
  {
    v66 = "stAcqWindowMsmtInfo.m_bValid";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1608, "RunSubTrkEstimatorAlgorithms", "stAcqWindowMsmtInfo.m_bValid");
    v67 = 1608;
    goto LABEL_68;
  }

  v78 = a5;
  v15 = (*(**a1 + 16))();
  v16.n128_f64[0] = BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom(a10, (a8 + 7));
  v17 = *(a8 + 15);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  v161 = 1280;
  v18 = *a8;
  v19 = *(*a8 + 25);
  if (v19 != 255)
  {
    LOBYTE(v161) = 1;
  }

  v162 = v19 == 255;
  v20 = *(*&v18 + 24);
  v76 = (*(***(a1 + 8) + 112))(**(a1 + 8), v19, v16);
  v21 = *(a8 + 136);
  LOBYTE(v157) = 0;
  v22.i64[0] = 0x80000000800000;
  v22.i64[1] = 0x80000000800000;
  v23 = vnegq_f32(v22);
  v159 = v23;
  v23.n128_u64[0] = 2139095039;
  v160 = 2139095039;
  v158 = 4;
  if ((v21 & 1) == 0)
  {
    v66 = "stCNoTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1691, "RunSubTrkEstimatorAlgorithms", "stCNoTrkMsmt.bValid");
    v67 = 1691;
    goto LABEL_68;
  }

  v79 = (a1 + 500);
  BlueFin::GlMeSrdEstCNo::Run(a1 + 1344, BlueFin::GlMeSrdConstants::m_stPhysConst, v23, &v163, v78, a6, (a6 + 96), (a1 + 500), (a8 + 17), a7, &v157);
  v158 = 4;
  v24 = BlueFin::GlMeSrdCNoResults::isGarbage(&v157);
  if (v25)
  {
    v66 = "!stCNoTrkRslt.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1717, "RunSubTrkEstimatorAlgorithms", "!stCNoTrkRslt.isGarbage()");
    v67 = 1717;
    goto LABEL_68;
  }

  v26 = (*(**(*(a1 + 8) + 24) + 48))(*(*(a1 + 8) + 24), v24);
  v27 = (*(**(*(a1 + 8) + 24) + 40))(*(*(a1 + 8) + 24));
  v144 = 0;
  v145 = 0x7FEFFFFFFFFFFFFFLL;
  v146 = 2139095039;
  v148 = 0;
  v147 = 0;
  v149 = 0;
  v150 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v151 = vneg_f32(0x80000000800000);
  v152 = 0xFFFFFFFFLL;
  v153 = 0;
  v155 = 0;
  v156 = 0;
  v154 = 0x7FEFFFFFFFFFFFFFLL;
  v115[0] = 0;
  v116 = 0x7FEFFFFFFFFFFFFFLL;
  v117 = 2139095039;
  v118 = 0;
  v119 = 0x7FEFFFFFFFFFFFFFLL;
  v121 = v150;
  v122 = 0x7FEFFFFFFFFFFFFFLL;
  v123 = v151;
  v120 = 2139095039;
  v124 = 0;
  v125 = v150;
  v126 = 0x7FEFFFFFFFFFFFFFLL;
  v127 = v151;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0x7FEFFFFFFFFFFFFFLL;
  v133 = 2139095039;
  v134 = 0x7FEFFFFFFFFFFFFFLL;
  v135 = 2139095039;
  v136 = 0;
  v137 = 0x7FEFFFFFFFFFFFFFLL;
  v138 = -2155872257;
  v139 = 0x7FEFFFFFFFFFFFFFLL;
  v140 = 2139095039;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  if ((a8[67] & 1) == 0)
  {
    v66 = "stCarrPrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1741, "RunSubTrkEstimatorAlgorithms", "stCarrPrmTrkMsmt.bValid");
    v67 = 1741;
    goto LABEL_68;
  }

  v77 = v27;
  v75 = v26 | v27;
  GlCustomLog(199, "HWDEBUG: LMS = %.0f, SvId:%u, CNo:%.2f, FLL:%d, PLL:%d\n", v17 * 1000.0, *(a1 + 500), v159.n128_f32[0], *(a8 + 624), *(a8 + 680));
  v69 = a4;
  v71 = v19;
  v74 = a8 + 1820;
  v73 = (*(**a1 + 224))();
  if (*(*a8 + 105) == 8 && (*(*a8 + 24) & 0xF) == 1)
  {
    IsBeidouPrebitWithHssSec = 1;
  }

  else
  {
    IsBeidouPrebitWithHssSec = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a8);
  }

  v28 = (v15 & 0xF000FFFE) - 805306384 < 5;
  v70 = v20 & 0xF;
  v29 = *(a8 + 80);
  v30 = *((*(***(a1 + 8) + 136))(**(a1 + 8)) + 26);
  v31 = *((*(***(a1 + 8) + 136))(**(a1 + 8)) + 24);
  v32 = *(a1 + 496);
  v33 = *(a8 + 15) * 1000.0;
  v34 = *(a8 + 19);
  v35 = (*(**a1 + 1024))();
  BlueFin::GlMeSrdEstCarrPrm::RunSubTrk(a1 + 2496, BlueFin::GlMeSrdConstants::m_stPhysConst, &v163, v78, a6, a6 + 156, v33, &v161, a7, v74, IsBeidouPrebitWithHssSec, v70 == 0, v29, v75 & 1, v73, v30, v31, v28, (a8 + 67), (a8 + 143), v79, v32, v34, v35, &v157, &v144, v115);
  if (BlueFin::GlMeSrdCarrPrmResults::isGarbage(&v144))
  {
    v66 = "!stCarrPrmTrkRslt.isGarbage()";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1852, "RunSubTrkEstimatorAlgorithms", "!stCarrPrmTrkRslt.isGarbage()");
    v67 = 1852;
    goto LABEL_68;
  }

  LOWORD(v109) = 0;
  BYTE2(v109) = 0;
  v110 = 1.79769313e308;
  v111 = 3.4028e38;
  v112 = 0;
  v113 = 0;
  v114 = 2139095039;
  if ((a9 & 1) == 0)
  {
    if ((a8[125] & 1) == 0)
    {
      v66 = "stCodePrmTrkMsmt.bValid";
      DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1884, "RunSubTrkEstimatorAlgorithms", "stCodePrmTrkMsmt.bValid");
      v67 = 1884;
      goto LABEL_68;
    }

    BlueFin::GlMeSrdEstCodePrm::Run(a1 + 2896, BlueFin::GlMeSrdConstants::m_stPhysConst, &v163, (v78 + 37), a6, (a6 + 100), v79, &v161, a7, v74, (v76 - 1) < 2, v75 & 1, v77 & 1, (a8 + 125), &v157, &v109);
    if (LOBYTE(v109) == 1)
    {
      if (v110 == 1.79769313e308 || v111 == 3.4028e38 || !v112)
      {
LABEL_69:
        v66 = "!stCodePrmTrkRslt.isGarbage()";
        DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 1912, "RunSubTrkEstimatorAlgorithms", "!stCodePrmTrkRslt.isGarbage()");
        v67 = 1912;
LABEL_68:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_trk.cpp", v67, v66);
      }
    }

    else if (v110 != 0.0 || v111 != 0.0 || v112)
    {
      goto LABEL_69;
    }
  }

  v82[0] = -1;
  v83 = 0;
  v84 = 575;
  *&v102[0] = &unk_2A1F0DBF0;
  v103 = 0;
  v104[0] = 0;
  v105 = -1;
  v106 = 575;
  BlueFin::GlMeDSPMeas::init(v102, v82);
  v36 = *(v78 + 3);
  if (v75)
  {
    v37 = 7.5;
  }

  else
  {
    v37 = v78[3];
  }

  v38 = *(a8 + 15);
  v39 = *(a8 + 16);
  v40 = *(a8 + 19);
  v41 = *(a1 + 496);
  v42 = *(v166 + 11);
  v43 = *(v164 + 28);
  v44 = *(*(a1 + 8) + 40);
  v45 = *(a6 + 148);
  v46 = (*(**a1 + 280))();
  v47 = (*(**a1 + 848))();
  HIBYTE(v68) = v77 & 1;
  LOBYTE(v68) = (v76 != 1) | v77 & 1;
  LODWORD(v48) = v42;
  LODWORD(v49) = v43;
  LODWORD(v50) = v45;
  result = BlueFin::GlMeSrdRptCtrl::RunSubTrk(a1 + 3144, v38, v39, v48, v49, v37, v50, v46, v47, BlueFin::GlMeSrdConstants::m_stPhysConst, &v157, &v109, &v144, v40, 1, v79, v41, v70, 0, 0, 0, 0, 0, v71, v68, v44, v102, &v144);
  if ((v103 & 0x10) != 0)
  {
    v81 = 4;
    BlueFin::GlMeSrdDspMeasAux::GlMeSrdDspMeasAux(v82, v104, v107, &v81, v102[3]);
    if (v88 != 4)
    {
      v66 = "otDspMeasAux.GetMsmtSrc().GetEnum() == GLMESRD_MSMT_SRC_SUB_TRACK";
      DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2463, "PopulateDspMeasAuxSubTrackRslts", "otDspMeasAux.GetMsmtSrc().GetEnum() == GLMESRD_MSMT_SRC_SUB_TRACK");
      v67 = 2463;
      goto LABEL_68;
    }

    v52 = *(v164 + 32);
    v89 = 1;
    v90 = BYTE4(v147);
    if (BYTE5(v147))
    {
      v53 = 4;
    }

    else
    {
      v53 = 0;
    }

    v54 = v100 & 0xFFFFE713 | v53;
    if (BYTE6(v147))
    {
      v55 = 8;
    }

    else
    {
      v55 = 0;
    }

    if (HIBYTE(v147))
    {
      v56 = 2048;
    }

    else
    {
      v56 = 0;
    }

    v57 = v54 | v55 | v56;
    if (BYTE1(v148))
    {
      v58 = 32;
    }

    else
    {
      v58 = 0;
    }

    if (BYTE2(v148))
    {
      v59 = 4096;
    }

    else
    {
      v59 = 0;
    }

    if (BYTE4(v148))
    {
      v60 = 64;
    }

    else
    {
      v60 = 0;
    }

    v61 = v57 | v58 | v59 | v60;
    if (BYTE5(v148))
    {
      v62 = 128;
    }

    else
    {
      v62 = 0;
    }

    v91 = v147;
    v92 = HIDWORD(v152);
    v100 = v61 | v62;
    v97 = v52;
    v101 = v101 & 0xFFFFF001 | (2 * (WORD2(v156) & 0x7FF));
    if ((v144 & 0x100) == 0)
    {
      v98 = 0;
    }

    v99 = 0;
    v93 = (*(***(a1 + 8) + 112))(**(a1 + 8), *(*a8 + 25));
    v94 = *(a8 + 1821);
    v95 = *(a8 + 1823);
    v96 = *(v69 + 9);
    v85 = (*(*a8 + 105) & 0xF) == 8;
    v86 = *(a8 + 1822) >> 7;
    BlueFin::GlMeSrdSatReport::PerformFinalValidityChecks(a1, v102, v82);
    LOBYTE(v63) = 0;
    *(a1 + 3203) |= *(a8 + 1821);
    *(a1 + 3204) |= *(a8 + 1822);
    v64 = *(a1 + 3205) | *(a8 + 1823);
    *(a1 + 3205) = v64;
    if (v64 >= 0xC0u && (v64 & 0x10) != 0)
    {
      v63 = (v64 >> 3) & 1;
    }

    v65 = v63 | *(a1 + 3201);
    *(a1 + 3201) = v65;
    v87 = v65;
    v108 = 1;
    result = (*(**(*(a1 + 8) + 8) + 16))(*(*(a1 + 8) + 8), v102, v82, 0);
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatReport::AddCorrVecAndParamsToContainer(uint64_t result, unsigned int a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  if (*a3)
  {
    v7 = result;
    BlueFin::GlMeSrdSatReport::AddCorrVecToContainer(result, a2, a3, a4);
    v8 = *(a5 + 8) * 10000.0;
    if (v8 <= 0.0)
    {
      if (v8 >= 0.0)
      {
        LOWORD(v11) = 0;
LABEL_8:
        WritableCorrVecAndParams = BlueFin::GlMeCorrVecContainer::GetWritableCorrVecAndParams(v7, a2);
        BlueFin::GlMePkFitParams::SetParams(WritableCorrVecAndParams + 48, *(a5 + 4), *(a5 + 32), *(a5 + 24), *a5);
        *(WritableCorrVecAndParams + 1) = 1;
        result = BlueFin::GlMeCorrVecContainer::GetWritableCorrVecAndParams(v7, a2);
        *(result + 64) = v11;
        *(result + 2) = 1;
        return result;
      }

      v9 = v8;
      v10 = -0.5;
    }

    else
    {
      v9 = v8;
      v10 = 0.5;
    }

    v11 = (v9 + v10);
    goto LABEL_8;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatReport::AddCorrVecToContainer(BlueFin::GlMeCorrVecContainer *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  if (a4 > 7)
  {
    if (a4 <= 16)
    {
      if (a4 == 8)
      {
        if (*(a3 + 1))
        {
          v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2770, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL");
          v7 = 2770;
        }

        else
        {
          if (*(a3 + 2) == 2)
          {
            goto LABEL_40;
          }

          v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_DSUM";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2771, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_DSUM");
          v7 = 2771;
        }

        goto LABEL_52;
      }

      if (a4 == 9)
      {
        if (*(a3 + 1))
        {
          v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2774, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL");
          v7 = 2774;
        }

        else
        {
          if (*(a3 + 2) == 3)
          {
            goto LABEL_40;
          }

          v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_XSUM";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2775, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_XSUM");
          v7 = 2775;
        }

        goto LABEL_52;
      }

      if (a4 != 16)
      {
        goto LABEL_53;
      }

LABEL_29:
      if (*(a3 + 1))
      {
        v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL";
        DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2757, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL");
        v7 = 2757;
      }

      else
      {
        if (*(a3 + 2) == 1)
        {
          goto LABEL_40;
        }

        v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ";
        DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2758, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ");
        v7 = 2758;
      }

      goto LABEL_52;
    }

    if (a4 != 17)
    {
      if (a4 == 18)
      {
        goto LABEL_29;
      }

      if (a4 != 19)
      {
        goto LABEL_53;
      }
    }

    if (*(a3 + 1) == 1)
    {
      if (*(a3 + 2) == 1)
      {
        goto LABEL_40;
      }

      v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ";
      DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2763, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ");
      v7 = 2763;
    }

    else
    {
      v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_EXTENDED";
      DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2762, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_EXTENDED");
      v7 = 2762;
    }

    goto LABEL_52;
  }

  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
LABEL_26:
        if (*(a3 + 1) == 1)
        {
          if (!*(a3 + 2))
          {
            goto LABEL_40;
          }

          v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAG";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2753, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAG");
          v7 = 2753;
        }

        else
        {
          v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_EXTENDED";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2752, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_EXTENDED");
          v7 = 2752;
        }

        break;
      case 4:
        if (*(a3 + 1))
        {
          v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2747, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL");
          v7 = 2747;
        }

        else
        {
          if (*(a3 + 2) == 1)
          {
            goto LABEL_40;
          }

          v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2748, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ");
          v7 = 2748;
        }

        break;
      case 5:
        if (*(a3 + 1) == 1)
        {
          if (*(a3 + 2) == 1)
          {
            goto LABEL_40;
          }

          v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2767, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAGSQ");
          v7 = 2767;
        }

        else
        {
          v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_EXTENDED";
          DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2766, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_EXTENDED");
          v7 = 2766;
        }

        break;
      default:
        goto LABEL_53;
    }

LABEL_52:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_trk.cpp", v7, v6);
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  if (a4 == 1)
  {
    goto LABEL_26;
  }

  if (a4 != 2)
  {
LABEL_53:
    v6 = "0";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2778, "AddCorrVecToContainer", "0");
    v7 = 2778;
    goto LABEL_52;
  }

LABEL_6:
  if (*(a3 + 1))
  {
    v6 = "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2743, "AddCorrVecToContainer", "stTrkCvec.m_etNominalOrExtendedCvec == GLMESRD_CVEC_TYPE_NOMINAL");
    v7 = 2743;
    goto LABEL_52;
  }

  if (*(a3 + 2))
  {
    v6 = "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAG";
    DeviceFaultNotify("glmesrd_sat_report_trk.cpp", 2744, "AddCorrVecToContainer", "stTrkCvec.m_etCvecNonlinearityType == GLMESRD_NL_CVEC_TYPE_MAG");
    v7 = 2744;
    goto LABEL_52;
  }

LABEL_40:
  WritableCorrVecAndParams = BlueFin::GlMeCorrVecContainer::GetWritableCorrVecAndParams(a1, a2);
  v9 = *a3;
  v10 = a3[12];
  v11 = a3[1];
  v12 = a3[2];

  return BlueFin::GlMeCorrVecAndParams::SetCorrVec(WritableCorrVecAndParams, v9, a4, v10, v11, v12, a3 + 4);
}

uint64_t *BlueFin::GlMeSrdSatRptTrkMsmtMI::GlMeSrdSatRptTrkMsmtMI(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9)
{
  v15 = 0;
  v16 = 0;
  *a1 = a2;
  a1[1] = a4;
  a1[2] = a5;
  *(a1 + 6) = a7;
  a1[4] = a3;
  *(a1 + 20) = -1;
  v17 = (a2 + 25);
  v18 = 255;
  *(a1 + 42) = 0;
  do
  {
    if (v17[v16] != 255)
    {
      *(a1 + 42) = ++v15;
      v19 = v17[v16];
      *(a1 + 41) = v19;
      if (v18 == 255)
      {
        *(a1 + 40) = v19;
        v18 = v19;
      }
    }

    ++v16;
  }

  while (v16 != 5);
  *(a1 + 56) = 0;
  v20 = a1 + 7;
  a1[6] = a6;
  *(a1 + 64) = 0;
  v21 = a1 + 8;
  *(a1 + 15) = 0;
  *(a1 + 17) = 0;
  *(a1 + 36) = 575;
  *(a1 + 19) = 0;
  *(a1 + 40) = 0;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = vneg_f32(0x80000000800000);
  BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt((a1 + 19), 0);
  BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt((a1 + 43), 1);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0x7F7FFFFF7F7FFFFFLL;
  *(a1 + 35) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 144) = -1;
  *(a1 + 580) = -1;
  *(a1 + 584) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 680) = 0;
  *(a1 + 732) = 0;
  *(a1 + 740) = -1;
  *(a1 + 184) = -1;
  *(a1 + 422) = 0;
  *(a1 + 852) = -1;
  *(a1 + 212) = -1;
  *(a1 + 93) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 99) = 0u;
  *(a1 + 101) = 0u;
  *(a1 + 103) = 0u;
  *(a1 + 210) = 0;
  *(a1 + 238) = 0;
  *(a1 + 115) = 0u;
  *(a1 + 117) = 0u;
  *(a1 + 111) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 107) = 0u;
  *(a1 + 109) = 0u;
  *(a1 + 364) = 0;
  a1[120] = 0;
  a1[121] = 0xFF7FFFFD00000000;
  a1[122] = 4286578685;
  a1[123] = 0x47EFFFFFA0000000;
  a1[124] = 0x47EFFFFFA0000000;
  *(a1 + 1000) = 0;
  *(a1 + 251) = 0;
  *(a1 + 1008) = 0;
  a1[127] = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 1024) = 0;
  *(a1 + 1042) = 0;
  *(a1 + 1028) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 265) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 267) = 0;
  *(a1 + 536) = 575;
  *(a1 + 269) = 0;
  *(a1 + 540) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 70) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 1144) = 0;
  *(a1 + 768) = 0;
  *(a1 + 1538) = 0;
  *(a1 + 903) = 0;
  *(a1 + 908) = -1;
  *(a1 + 1146) = -1;
  *(a1 + 1539) = -1;
  *(a1 + 386) = -1;
  *(a1 + 902) = -1;
  a1[226] = -1;
  *(a1 + 87) = 0u;
  *(a1 + 86) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 83) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 78) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 74) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 1772) = 0u;
  *(a1 + 1788) = 0u;
  *(a1 + 1740) = 0u;
  *(a1 + 1756) = 0u;
  *(a1 + 1708) = 0u;
  *(a1 + 1724) = 0u;
  *(a1 + 1676) = 0u;
  *(a1 + 1692) = 0u;
  *(a1 + 1644) = 0u;
  *(a1 + 1660) = 0u;
  *(a1 + 1612) = 0u;
  *(a1 + 1628) = 0u;
  *(a1 + 1580) = 0u;
  *(a1 + 1596) = 0u;
  *(a1 + 1548) = 0u;
  *(a1 + 1564) = 0u;
  *(a1 + 539) = 0;
  *(a1 + 2124) = 0u;
  *(a1 + 2140) = 0u;
  *(a1 + 2092) = 0u;
  *(a1 + 2108) = 0u;
  *(a1 + 2060) = 0u;
  *(a1 + 2076) = 0u;
  *(a1 + 2028) = 0u;
  *(a1 + 2044) = 0u;
  *(a1 + 1996) = 0u;
  *(a1 + 2012) = 0u;
  *(a1 + 1964) = 0u;
  *(a1 + 1980) = 0u;
  *(a1 + 1932) = 0u;
  *(a1 + 1948) = 0u;
  *(a1 + 1900) = 0u;
  *(a1 + 1916) = 0u;
  *(a1 + 1868) = 0u;
  *(a1 + 1884) = 0u;
  *(a1 + 1836) = 0u;
  *(a1 + 1852) = 0u;
  *(a1 + 1820) = 0u;
  BlueFin::GlMeSrdGridResults::GlMeSrdGridResults((a1 + 270));
  *(a1 + 868) = a7;
  *(a1 + 1738) = a8;
  v22 = a1[2];
  v23 = (*(*a6 + 16))(a6);
  *(a1 + 435) = (*(*v22 + 48))(v22, v23, a3);
  if (a8 != 200)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 149, "GlMeSrdSatRptTrkMsmtMI", "usMsmtReportingIntervalMs == 200");
    CrashData();
    goto LABEL_35;
  }

  v24 = *v17;
  *(a1 + 41) = *v17;
  *(a1 + 40) = v24;
  v25 = *a1;
  *(a1 + 56) = 1;
  *(a1 + 15) = 4;
  v26 = a1[4];
  if (v21 != v26)
  {
    *(a1 + 64) = *v26;
    *(a1 + 17) = *(v26 + 4);
    *(a1 + 36) = *(v26 + 8);
  }

  *(a1 + 15) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v25 + 36), v26, *(a1 + 868)) * 0.001;
  *(a1 + 15) = *(a1 + 15) - (*(*a1[2] + 56))(a1[2], a1[4]);
  *(a1 + 15) = *(a1 + 15) - BlueFin::GlSignalId::GetInterSignalBiasInMs(a1[4], a1[6]) * 0.001;
  v29 = a1[4];
  if (*(v29 + 4) >= 0x23Fu)
  {
    v66 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v67 = 679;
    goto LABEL_40;
  }

  v30 = *(v29 + 1);
  v31 = BlueFin::GlSvId::s_aucSvId2gnss[*v29];
  v32 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v30 - v30 + v31];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v30 - v30 + v31])
  {
    v66 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v67 = 686;
    goto LABEL_40;
  }

  v33 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v30 + v31];
  if (!v33)
  {
    v66 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v67 = 785;
LABEL_40:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v67, v66);
  }

  v34 = *(v25 + 48);
  LOWORD(v27) = *(v25 + 58);
  LODWORD(v28) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v35 = v27 / v28;
  v36 = *&v35 + (v34 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v35) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a1 + 16) = (v36 / v35 + (v34 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v32 * 0.001) / v33;
  *(a1 + 19) = BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(a1);
  *(a1 + 80) = *(v25 + 25) != 255;
  *(a1 + 81) = (*(v25 + 30) & 0x10) != 0;
  if (*(v25 + 20) == 1)
  {
    v38 = 0;
    v39 = 4;
    do
    {
      if (*(v25 + 25 + v38) != 0xFF)
      {
        v39 = v38;
      }

      ++v38;
    }

    while (v38 != 5);
    v40 = v39;
  }

  else
  {
    v40 = 4;
  }

  v41 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v25 + 4 * v40 + 72), a1[4], v37);
  *(a1 + 11) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a1[4], v41, v42);
  *(a1 + 14) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a1[4], v41, v43);
  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCNoMsmt(a1, *(a4 + 24));
  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCarrMsmt(a1);
  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildNavBitMsmt(a1);
  if ((a9 & 1) == 0)
  {
    if ((*v20 & 1) == 0)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1701, "BuildCodePrmSubMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
      CrashData();
    }

    v44 = (*(*a1[2] + 168))(a1[2], *(a1 + 41));
    v45 = (*(*a1[2] + 184))(a1[2], *(a1 + 41));
    v46 = *a1;
    v47 = (*(*a1[2] + 72))(a1[2], *(a1 + 41));
    v48 = (*(*a1[2] + 80))(a1[2], *(a1 + 41));
    if (v47)
    {
      v51 = 0;
    }

    else
    {
      v51 = v48 == 3;
    }

    if (v51)
    {
      v52 = *(v46 + 376);
      *(v46 + 392) = *(v46 + 360);
      *(v46 + 408) = v52;
    }

    v53 = *v44;
    v54 = *(v45 + 20);
    v55 = *(v45 + 92);
    v56 = *(v44 + 156);
    *(a1 + 1000) = 1;
    *(a1 + 1008) = *(v46 + 61);
    *(a1 + 1024) = 1;
    v57 = *(v46 + 12);
    LOWORD(v49) = *(v46 + 29);
    LODWORD(v50) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
    *&v58 = v49 / v50;
    v59 = *&v58 + (v57 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
    LOBYTE(v58) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
    *(a1 + 127) = v59 / v58 + (v57 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft);
    *(a1 + 251) = *(a1 + 19);
    v60 = *(v46 + 162);
    v61 = (v55 * v56) * 0.5;
    v62 = v61;
    if (v61 <= 0.0)
    {
      if (v61 >= 0.0)
      {
        LOBYTE(v64) = 0;
LABEL_34:
        *(a1 + 261) = v55 * 0.5;
        *(a1 + 1048) = v64;
        *(a1 + 1049) = v56;
        *(a1 + 260) = (v53 * v60) / v54;
        *(a1 + 1136) = BlueFin::GlMeSrdSatRptTrkMsmtMI::AidApplied(a1);
        BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom((a1 + 132), (a1 + 7));
        goto LABEL_35;
      }

      v63 = -0.5;
    }

    else
    {
      v63 = 0.5;
    }

    v64 = (v62 + v63);
    goto LABEL_34;
  }

LABEL_35:
  a1[448] = 0;
  *(a1 + 223) = 0u;
  *(a1 + 222) = 0u;
  *(a1 + 221) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 219) = 0u;
  *(a1 + 218) = 0u;
  return a1;
}

BlueFin::GlMeSrdSatRptNonL1VetSm *BlueFin::GlMeSrdSatRptNonL1VetSm::GlMeSrdSatRptNonL1VetSm(BlueFin::GlMeSrdSatRptNonL1VetSm *this)
{
  *(this + 1) = 0;
  *(this + 2) = "STARTING";
  *(this + 3) = "OFF";
  *(this + 4) = 0;
  *this = &unk_2A1F0C440;
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 12) = 1065353216;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 6) = _Q0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 20) = 1;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 11) = 0xBF80000000000000;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  BlueFin::QHsm::ctor(this, BlueFin::GlMeSrdSatRptNonL1VetSm::initial);
  BlueFin::QHsm::init(this, 0);
  return this;
}

void *BlueFin::GlMeSrdSatRptNonL1VetSm::initial(void *result)
{
  result[1] = BlueFin::GlMeSrdSatRptNonL1VetSm::wait_for_aided_track;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlMeSrdSatRptNonL1VetSm::wait_for_aided_track";
  return result;
}

const char *BlueFin::GlMeSrdSatRptNonL1VetContainer::ToStateString(BlueFin::GlMeSrdSatRptNonL1VetContainer *this)
{
  if ((this - 1) > 9)
  {
    return "invalid_state!";
  }

  else
  {
    return off_29EEAC460[(this - 1)];
  }
}

uint64_t BlueFin::GlMeSrdSatRptNonL1VetContainer::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v20 = *MEMORY[0x29EDCA608];
  if (!v3 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 2;
  }

  if (!*(v1 + 192))
  {
    v10 = "m_potNonL1VetSm != NULL_PTR";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1151, "SerializeImpl", "m_potNonL1VetSm != NULL_PTR");
    v11 = 1151;
    goto LABEL_16;
  }

  if (v6 >= 3)
  {
    v10 = "ucVersion >= 1 && ucVersion <= 2";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1152, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
    v11 = 1152;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_vetting.cpp", v11, v10);
  }

  v16 = 104;
  v17 = v6;
  v18 = 0x1000000000000;
  v15 = &unk_2A1F09520;
  v19 = v6;
  v7 = v1 + 16;
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*(v1 + 16) + 4));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 8));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*(*(v5 + 192) + 112) + 112));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 16));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 18));
  BlueFin::GlSysLogEntry::PutD64(&v15, *(*v7 + 48));
  BlueFin::GlSysLogEntry::PutD64(&v15, *(*v7 + 40));
  BlueFin::GlSysLogEntry::PutD64(&v15, *(*v7 + 56));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 68));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 72));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 76));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 80));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 81));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 82));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 83));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 84));
  v14 = *(*v7 + 96);
  v12 = &v14;
  v13 = 1;
  BlueFin::GlSysLogEntry::PutGlSet(&v15, &v12);
  BlueFin::GlSysLogEntry::PutS8(&v15, *(*v7 + 100));
  BlueFin::GlSysLogEntry::PutU8(&v15, *(*v7 + 104));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 128));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 132));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 140));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 144));
  BlueFin::GlSysLogEntry::PutF32(&v15, *(*v7 + 148));
  if (v6 == 2)
  {
    BlueFin::GlSysLogEntry::PutF32(&v15, *(*(v5 + 16) + 152));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, v4, 4);
  result = 1;
LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdSatRptNonL1VetContainer::Deserialize(BlueFin::GlMeSrdSatRptNonL1VetContainer *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 104)
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  if (*(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if ((U8 - 189) >= 0xFFFFFF44)
  {
    v10 = BlueFin::GlSvId::s_aucSvId2gnss[U8];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v8 - v8 + v10] == 255)
    {
      v9 = 575;
      v8 = -1;
    }

    else
    {
      v9 = BlueFin::GlSignalId::s_ausGnss2signalId[v10] + U8 - BlueFin::GlSvId::s_aucGnss2minSvId[v10] + BlueFin::GlSvId::s_aucGnss2numSvId[v10] * v8;
    }
  }

  else
  {
    v9 = 575;
  }

  *(this + 32) = -1;
  *(this + 36) = U8;
  *(this + 10) = v8;
  *(this + 22) = v9;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 15) = 0;
  *(this + 132) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 116) = -1;
  *(this + 28) = -1;
  *(this + 32) = 0;
  *(this + 2) = this + 32;
  **(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
  v11 = BlueFin::GlSysLogEntry::GetU8(a2);
  v12 = *(this + 2);
  v13 = "invalid_event!";
  *(v12 + 16) = v11;
  if (v11 == 6)
  {
    v13 = "EVT(MSMT)";
  }

  *(v12 + 24) = v13;
  v14 = BlueFin::GlSysLogEntry::GetU8(a2);
  v15 = *(this + 2);
  *(v15 + 18) = v14;
  *(v15 + 32) = BlueFin::GlMeSrdSatRptNonL1VetContainer::ToStateString(v14);
  *(*(this + 2) + 48) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(*(this + 2) + 40) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(*(this + 2) + 56) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(*(this + 2) + 68) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(*(this + 2) + 72) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(*(this + 2) + 76) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(*(this + 2) + 80) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 2) + 81) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 2) + 82) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 2) + 83) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 2) + 84) = BlueFin::GlSysLogEntry::GetU8(a2);
  v20 = (*(this + 2) + 96);
  v21 = 1;
  BlueFin::GlSysLogEntry::GetGlSet(a2, &v20);
  *(*(this + 2) + 100) = BlueFin::GlSysLogEntry::GetS8(a2);
  v16 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(*(this + 2) + 104) = v16;
  *(*(this + 2) + 112) = BlueFin::GlMeSrdEstMultipath::GetStr(v16);
  *(*(this + 2) + 128) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(*(this + 2) + 132) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(*(this + 2) + 140) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(*(this + 2) + 144) = BlueFin::GlSysLogEntry::GetF32(a2);
  F32 = BlueFin::GlSysLogEntry::GetF32(a2);
  v18 = *(this + 2);
  *(v18 + 148) = F32;
  if (*(a2 + 12) < 2u)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = BlueFin::GlSysLogEntry::GetF32(a2);
    v18 = *(this + 2);
  }

  *(v18 + 152) = v19;
  *(v18 + 120) = -1;
  *(v18 + 124) = 0;
  *(v18 + 136) = 0;
  *(v18 + 64) = -1082130432;
  result = 1;
  *(v18 + 88) = 0xBFF0000000000000;
  return result;
}

uint64_t BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::MsmtHistoryGarbageCollector(BlueFin::GlMeSrdSvIdMsmtHistoryBuffer *this)
{
  v17[0] = 0;
  v18 = -1;
  LOWORD(v19) = 575;
  if (*(this + 1497) != -1)
  {
    v11 = "m_otMsmtHistoryArray.IsFull()";
    DeviceFaultNotify("glmesrd_svid_msmt_history.cpp", 186, "MsmtHistoryGarbageCollector", "m_otMsmtHistoryArray.IsFull()");
    v12 = "glmesrd_svid_msmt_history.cpp";
    v13 = 186;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v12, v13, v11);
  }

  if (!*(this + 1496))
  {
    goto LABEL_17;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0.0;
LABEL_4:
  v5 = v2;
  do
  {
    v6 = *(this + 1494) + *(*(this + 372) + 2 * v5);
    if (!BlueFin::GlBigArray::Has((this + 2960), v6))
    {
      v11 = "m_potArray->Has(handle)";
      DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
      v12 = "glinc_array.h";
      v13 = 362;
      goto LABEL_16;
    }

    if (v6 >= 0x23Fu)
    {
      v11 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v12 = "glsignalid.h";
      v13 = 578;
      goto LABEL_16;
    }

    v7 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v6;
    v8 = *v7;
    LODWORD(v7) = v7[1];
    v14[0] = v8;
    v15 = v7;
    v16 = v6;
    v9 = *(BlueFin::GlSignalIdArray::Get((this + 1808), v14) + 8);
    if (v9 >= v4)
    {
      v2 = v5 + 1;
      v17[0] = v14[0];
      v18 = v15;
      LOWORD(v19) = v16;
      v3 = 1;
      v4 = v9;
      if (*(this + 1496) <= (v5 + 1))
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }

    ++v5;
  }

  while (v5 < *(this + 1496));
  if ((v3 & 1) == 0)
  {
LABEL_17:
    v11 = "bHaveSignalIdToRemove";
    DeviceFaultNotify("glmesrd_svid_msmt_history.cpp", 209, "MsmtHistoryGarbageCollector", "bHaveSignalIdToRemove");
    v12 = "glmesrd_svid_msmt_history.cpp";
    v13 = 209;
    goto LABEL_16;
  }

LABEL_13:
  BlueFin::GlSignalIdArray::Get((this + 1808), v17);
  return BlueFin::GlBigArray::Remove(this + 2960, v19);
}

uint64_t BlueFin::GlMeSrdSvIdMsmtHistorySlot::Verify2dBitOkToPublish(BlueFin::GlMeSrdSvIdMsmtHistorySlot *this, const BlueFin::GlMeDSPMeas *a2, char a3)
{
  if (*(a2 + 35) != 15)
  {
    DeviceFaultNotify("glmesrd_svid_msmt_history.cpp", 115, "Verify2dBitOkToPublish", "otDspMeas.etMode == GlMeDSPMeas::SRCH_2DBIT");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_msmt_history.cpp", 115, "otDspMeas.etMode == GlMeDSPMeas::SRCH_2DBIT");
  }

  if ((~*(a2 + 21) & 0x70) != 0)
  {
    return 0;
  }

  v3 = 1;
  if (*this == 1 && (a3 & 1) == 0)
  {
    v4 = *(this + 1) * 1000.0;
    v5 = *(a2 + 3) * 1000.0;
    v6 = (v5 - v4);
    if (v6 >= 0)
    {
      v7 = (v5 - v4);
    }

    else
    {
      v7 = -v6;
    }

    if (v7 <= 0x7530)
    {
      if ((v8 = *(this + 1), v9 = vabds_f32(*(a2 + 8), v8), v10 = *(a2 + 100), (v10 - 76) <= 0x3E) && ((1 << (v10 - 76)) & 0x7C0000000000001FLL) != 0 || (v10 - 33) <= 0x12)
      {
        v11 = 0.0000003;
      }

      else
      {
        v11 = 0.0000001;
      }

      if (v9 > v11)
      {
        return 0;
      }

      v12 = vabdd_f64(v4 + v6 * (1.0 - v8), v5);
      v13 = fabs(v12 + -1.0);
      if (v12 > 0.5)
      {
        v12 = v13;
      }

      if (v12 > 0.005)
      {
        return 0;
      }
    }

    return 1;
  }

  return v3;
}

void BlueFin::GlMeSrdSvIdReportMgr::~GlMeSrdSvIdReportMgr(BlueFin::GlMeSrdSvIdReportMgr *this)
{
  *this = &unk_2A1F0C4C0;
}

{
  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(BlueFin::GlMeSrdDspMeasAux *this)
{
  if (*(this + 9) != 1)
  {
    DeviceFaultNotify("glmesrd_dsp_meas_aux.h", 400, "GetSrchRslts", "m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_SEARCH");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.h", 400, "m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_SEARCH");
  }

  return this + 40;
}

uint64_t BlueFin::GlMeSrdTowAssistHolder::SetTowAssist(BlueFin::GlMeSrdTowAssistHolder *this, const BlueFin::GlTowAsstData *a2)
{
  result = BlueFin::GlTowAsstData::operator=(this + 8, a2);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v4 = *(*a2 + 24);

    return v4(a2, 0, 0);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdViterbiDecoder::RunViterbi(BlueFin::GlMeSrdViterbiDecoder *this, unsigned int a2, unsigned int *a3, unsigned int *a4, int a5)
{
  v8 = a2;
  v103 = *MEMORY[0x29EDCA608];
  if (a2 < 0x249)
  {
    v10 = 0;
  }

  else
  {
    GlCustomLog(63, "ViterbiDBG: Bit Length curtailed from %d to %d\n", a2, 584);
    v10 = v8 & 1;
    v8 = 584;
  }

  if (*(this + 415))
  {
    v11 = a5 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    if (a5)
    {
      v12 = -64;
    }

    else
    {
      v12 = 0;
    }

    v13 = vdupq_n_s8(v12);
    *(this + 2) = v13;
    *(this + 3) = v13;
    *this = v13;
    *(this + 1) = v13;
    *(this + 4) = 0u;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 9) = 0u;
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
    *(this + 21) = 0u;
    *(this + 22) = 0u;
    *(this + 23) = 0u;
    *(this + 24) = 0u;
    *(this + 398) = 0u;
    *(this + 417) = -1;
    *(this + 414) = 0;
    if (a5)
    {
      v14 = 0;
      *this = 0;
    }

    else
    {
      v14 = 84;
    }
  }

  v15 = *(this + 418);
  v16 = &v97;
  if (v15 == 1)
  {
    v16 = v98;
    v97 = *(this + 417);
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 >= v8)
  {
    LOBYTE(v27) = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = (v8 + ~v17) + 1;
    v22 = a3;
    do
    {
      if (!v18)
      {
        v23 = *v22++;
        v20 = v23;
        v24 = *a4++;
        v19 = v24;
        v18 = 32;
      }

      v25 = (v20 >> 31) | 1;
      if (a5)
      {
        v26 = v20 >= 0 ? 2 : -2;
        if (v19 >= 0)
        {
          LOBYTE(v25) = v26;
        }
      }

      --v18;
      *v16++ = v25;
      v20 *= 2;
      v19 *= 2;
      --v21;
    }

    while (v21);
    v27 = (v20 >> 31) | 1;
  }

  v28 = v8 >> 1;
  if (v15 == 1)
  {
    *(this + 417) = v27;
  }

  memcpy(__dst, this + 64, sizeof(__dst));
  v29 = &v101;
  if (v8 >= 2)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = &v97;
    do
    {
      v34 = 0;
      if (v30)
      {
        v35 = v102;
      }

      else
      {
        v35 = this;
      }

      v36 = v33[1];
      v37 = *v33;
      v38 = v37 + v36;
      v39 = v36 - v37;
      if (v30)
      {
        v40 = this;
      }

      else
      {
        v40 = v102;
      }

      v99[0] = v38;
      v99[1] = v39;
      v99[2] = -v39;
      v99[3] = -v38;
      v41 = -128;
      do
      {
        v42 = v99[BlueFin::GlMeSrdViterbiDecoder::m_scMIndex[v34]];
        v43 = *(v35 + v34 + 32);
        v44 = *(v35 + v34);
        if (v42 + v44 >= v43 - v42)
        {
          v32 >>= 2;
        }

        else
        {
          v32 = (v32 >> 2) | 0x40;
        }

        if (v42 + v44 <= v43 - v42)
        {
          v45 = v43 - v42;
        }

        else
        {
          v45 = v42 + v44;
        }

        v46 = v45 - v31;
        *v40 = v46;
        if (v46 > v41)
        {
          v41 = v46;
        }

        v47 = v44 - v42;
        if (v47 < v42 + v43)
        {
          v32 |= 0x80u;
        }

        if (v47 <= v42 + v43)
        {
          v47 = v42 + v43;
        }

        v48 = v47 - v31;
        *(v40 + 1) = v48;
        if (v48 > v41)
        {
          v41 = v48;
        }

        if ((~v34 & 3) == 0)
        {
          *v29++ = v32;
        }

        ++v34;
        v40 = (v40 + 2);
      }

      while (v34 != 32);
      v33 += 2;
      v31 = v41 - 107;
      if (v41 <= 107)
      {
        v31 = 0;
      }

      ++v30;
    }

    while (v30 != v28);
  }

  if ((v8 & 2) != 0)
  {
    v49 = v102;
  }

  else
  {
    v49 = this;
  }

  v50 = 0;
  if ((a5 & 1) == 0)
  {
    v51 = -128;
    for (i = 63; i != -1; --i)
    {
      v53 = *(v49 + i);
      if (v51 < v53)
      {
        v50 = i;
      }

      if (v51 <= v53)
      {
        v51 = *(v49 + i);
      }
    }

    v54 = v29 - 8;
    v55 = 35;
    do
    {
      v50 = (32 * ((BlueFin::GlMeSrdViterbiDecoder::m_ucSbasBitAccess[v50 & 7] & v54[v50 >> 3]) != 0)) | (v50 >> 1);
      v54 -= 8;
      --v55;
    }

    while (v55);
    v29 -= 280;
  }

  if (v8 >= 2)
  {
    v56 = v29 - 8;
    v57 = v8 >> 1;
    do
    {
      v98[v57 + 582] = v50 & 1;
      v50 = (32 * ((BlueFin::GlMeSrdViterbiDecoder::m_ucSbasBitAccess[v50 & 7] & v56[v50 >> 3]) != 0)) | (v50 >> 1);
      v56 -= 8;
      --v57;
    }

    while (v57);
  }

  memcpy(this + 64, &__dst[(8 * v28)], 0x118uLL);
  if ((v8 & 2) != 0)
  {
    v58 = v102[1];
    *this = v102[0];
    *(this + 1) = v58;
    v59 = v102[3];
    *(this + 2) = v102[2];
    *(this + 3) = v59;
  }

  if (v8 >= 2)
  {
    v60 = 0;
    v61 = *(this + 414);
    v62 = (v28 - 1) + 1;
    v63 = v99;
    v64 = __dst;
    v65 = 32;
    v66 = a3;
    do
    {
      v67 = *v63++;
      v68 = v67 > 0;
      v60 = v68 | (2 * v60);
      if (!--v65)
      {
        *v66++ = v60;
        v65 = 32;
        v60 = 0;
      }

      v61 = v68 | (2 * v61);
      v69 = vand_s8(vdup_n_s32(v61), 0x4F0000006DLL);
      v70 = veor_s8(vshr_n_u32(v69, 4uLL), v69);
      v71 = veor_s8(vshr_n_u32(v70, 2uLL), v70);
      v72 = vceqz_s32(vand_s8(veor_s8(vshr_n_u32(v71, 1uLL), v71), 0x100000001));
      if (v72.i8[4])
      {
        v73 = 1;
      }

      else
      {
        v73 = -1;
      }

      *v64 = v73;
      if (v72.i8[0])
      {
        v74 = 1;
      }

      else
      {
        v74 = -1;
      }

      v64[1] = v74;
      v64 += 2;
      --v62;
    }

    while (v62);
    *(this + 414) = v61;
    if (v65 != 32)
    {
      *v66 = v60;
    }
  }

  if (v14 >= v8)
  {
    LOWORD(v75) = 0;
    v77 = v8;
  }

  else
  {
    v75 = 0;
    v76 = v14;
    v77 = v8;
    v78 = this + v14 + 344;
    v79 = v14 - 70;
    do
    {
      if (a5)
      {
        v80 = &v98[v76 - 1];
      }

      else
      {
        v80 = &v98[v79 - 1];
        if (v76 < 0x46)
        {
          v80 = v78;
        }
      }

      v75 += ((__dst[v76++] ^ *v80) & 0x80) >> 7;
      ++v79;
      ++v78;
    }

    while (v8 != v76);
  }

  v81 = 0;
  LODWORD(v82) = 0;
  v83 = &v98[v77 - 1];
  v84 = *(v83 - 22);
  *(this + 376) = *(v83 - 38);
  *(this + 392) = v84;
  *(this + 406) = *(v83 - 1);
  v85 = *(v83 - 54);
  *(this + 344) = *(v83 - 70);
  *(this + 360) = v85;
  do
  {
    v86 = 0;
    v87 = 0;
    v82 = v82;
    v88 = 31;
    do
    {
      v89 = v82;
      v86 |= *(v99 + v82++) << v88;
      if (v89 >= v28 - 1)
      {
        break;
      }

      --v88;
    }

    while (v87++ < 0x1F);
    a3[v81++] = v86;
  }

  while (v81 != (v8 >> 6) + 1);
  v91 = *(this + 415);
  if (((v91 + 1) & 0x100) != 0)
  {
    v92 = -1;
  }

  else
  {
    v92 = v91 + 1;
  }

  *(this + 415) = v92;
  if (v75 <= 0xAu)
  {
    v93 = 0;
  }

  else
  {
    v93 = *(this + 416) + 1;
  }

  *(this + 416) = v93;
  if (v93 > 5u)
  {
    v94 = 1;
  }

  else
  {
    v94 = v10;
  }

  if (v94)
  {
    *(this + 415) = 0;
    *(this + 418) = *(this + 418) == 0;
    GlCustomLog(63, "ViterbiDBG: Bit alignment changed\n");
    v92 = *(this + 415);
  }

  GlCustomLog(63, "ViterbiDBG: BitErrors %d, BlkCnt %d\n", v75, v92);
  v95 = *MEMORY[0x29EDCA608];
  return v75;
}

uint64_t BlueFin::ctXps::GenIcdTxWrd(BlueFin::ctXps *this, int a2)
{
  v2 = this ^ 0x3FFFFFC0;
  if ((this & 0x40000000) == 0)
  {
    v2 = this;
  }

  if (a2)
  {
    v3 = 0;
    v4 = v2 & 0x2BB1F342 ^ ((v2 & 0x2BB1F342) >> 16) ^ ((v2 & 0x2BB1F342 ^ ((v2 & 0x2BB1F342) >> 16)) >> 8);
    v5 = v4 ^ (v4 >> 4) ^ ((v4 ^ (v4 >> 4)) >> 2);
    v6 = (((v5 ^ (v5 >> 1)) & 1) << 6) ^ v2;
    v7 = v6 & 0xCB7A89C1 ^ ((v6 & 0xCB7A89C1) >> 16) ^ ((v6 & 0xCB7A89C1 ^ ((v6 & 0xCB7A89C1) >> 16)) >> 8);
    v8 = v7 ^ (v7 >> 4) ^ ((v7 ^ (v7 >> 4)) >> 2);
    v2 = (((v8 ^ (v8 >> 1)) & 1) << 7) ^ v6;
  }

  else
  {
    v9 = vand_s8(vdup_n_s32(v2), 0x2BB1F342CB7A89C1);
    v10 = veor_s8(vshr_n_u32(v9, 0x10uLL), v9);
    v11 = veor_s8(vshr_n_u32(v10, 8uLL), v10);
    v12 = veor_s8(vshr_n_u32(v11, 4uLL), v11);
    v13 = veor_s8(vshr_n_u32(v12, 2uLL), v12);
    v14.i32[0] = vshr_n_u32(v13, 1uLL).u32[0];
    v14.i32[1] = vadd_s32(v13, v13).i32[1];
    v15 = vand_s8(veor_s8(v14, v13), 0x200000001);
    v3 = vorr_s8(v15, vdup_lane_s32(v15, 1)).u32[0];
  }

  v16 = vandq_s8(vdupq_n_s32(v2), xmmword_298A36CD0);
  v17 = veorq_s8(vshrq_n_u32(v16, 0x10uLL), v16);
  v18 = veorq_s8(vshrq_n_u32(v17, 8uLL), v17);
  v19 = veorq_s8(vshrq_n_u32(v18, 4uLL), v18);
  v20 = veorq_s8(vshrq_n_u32(v19, 2uLL), v19);
  return vaddvq_s32(vandq_s8(vshlq_u32(veorq_s8(vshrq_n_u32(v20, 1uLL), v20), xmmword_298A36CE0), xmmword_298A36CF0)) + v2 + v3;
}

uint64_t BlueFin::ctXps::BuildXP(BlueFin::ctXps *this, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v9 = 0;
  *this = a2;
  v10 = this + 40;
  v11 = 6000 * (a2 / 0x1770) + 6000;
  v12 = v11 / 0x1770;
  v13 = v11 > 0x240C83FF;
  v14 = v11 / 0x1770 - 100800;
  if (v13)
  {
    v12 = v14;
  }

  do
  {
    v15 = v12 - 100800;
    if (v12 <= 0x189BF)
    {
      v15 = v12;
    }

    *&v10[v9] = v15;
    v9 += 4;
    ++v12;
  }

  while (v9 != 12);
  *(this + 1) = 0;
  v16 = BlueFin::ctXps::GenIcdTxWrd((((a4 & 3) << 6) | (a3 << 8) | 0x22C00000u), 0);
  v17 = 0;
  if (a3 == 0x4000)
  {
    v18 = -4194304;
  }

  else
  {
    v18 = -256;
  }

  if (a3 == 0x4000)
  {
    v19 = -4194112;
  }

  else
  {
    v19 = -1;
  }

  if (a4 == 4)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = a4 != 4 && a3 != 0x4000;
  v22 = ((a5 & 1) << 6) | (32 * (a6 & 1)) | ((v16 & 3) << 24);
  v36 = v21;
  v23 = v16 & 0xFFFFFFFE ^ (2 * v16);
  v24 = v16 & 1;
  v25 = (this + 12);
  do
  {
    v26 = *&v10[v17];
    if (v26 <= 0x189BF)
    {
      if (v26 < 2)
      {
        v30 = v26 + 100799;
      }

      else
      {
        v30 = v26 - 1;
      }

      v27 = v30 % 5 + 1;
      v29 = 0x3FFFFFFF;
      v28 = v36;
    }

    else
    {
      LOBYTE(v27) = 0;
      v28 = 0;
      v29 = 6399;
    }

    if (a5 == 2)
    {
      v29 &= ~0x1000u;
      if (a6 == 2)
      {
LABEL_29:
        v29 ^= 0x800u;
      }

LABEL_30:
      v31 = 0;
      v29 ^= 0xFCu;
      goto LABEL_31;
    }

    if (a6 == 2)
    {
      goto LABEL_29;
    }

    if (!v28)
    {
      goto LABEL_30;
    }

    v31 = 1;
LABEL_31:
    v32 = BlueFin::ctXps::GenIcdTxWrd(((v22 | (4 * (v27 & 7)) | ((v26 & 0x1FFFF) << 7)) << 6), 1);
    *(this + 8) = ((2 * v20) | (v29 >> 29)) & v20;
    *(this + 9) = (8 * v29) & (4 * v29);
    v33 = (4 * v32) ^ (8 * v32);
    v34 = v24 ^ ((4 * v32) >> 31) | v23;
    *(v25 - 1) = v34;
    *v25 = v33;
    *(v25 - 1) = *(this + 8) & v34;
    *v25 = *(this + 9) & v33;
    v25 += 2;
    v17 += 4;
  }

  while (v17 != 12);
  return v31;
}

float BlueFin::ctXps::Xorr(BlueFin::ctXps *this, int8x8_t *a2, int8x8_t *a3, int8x8_t *a4, int8x8_t *a5)
{
  v5 = vand_s8(*a5, *a3);
  v6 = vsub_s32(v5, vand_s8(vshr_n_u32(v5, 1uLL), 0x5555555555555555));
  v7 = vadd_s32(vand_s8(vshr_n_u32(v6, 2uLL), 0x3333333333333333), vand_s8(v6, 0x3333333333333333));
  v8 = vand_s8(vsra_n_u32(v7, v7, 4uLL), 0xF0F0F0F0F0F0F0FLL);
  v9 = vsra_n_u32(v8, v8, 8uLL);
  v10 = vand_s8(vsra_n_u32(v9, v9, 0x10uLL), 0x3F0000003FLL);
  v11 = vsub_s32(*a5, vand_s8(vshr_n_u32(*a5, 1uLL), 0x5555555555555555));
  v12 = vadd_s32(vand_s8(vshr_n_u32(v11, 2uLL), 0x3333333333333333), vand_s8(v11, 0x3333333333333333));
  v13 = vand_s8(vsra_n_u32(v12, v12, 4uLL), 0xF0F0F0F0F0F0F0FLL);
  v14 = vsra_n_u32(v13, v13, 8uLL);
  v15 = vand_s8(vsra_n_u32(v14, v14, 0x10uLL), 0x3F0000003FLL);
  v16 = vadd_s32(vzip2_s32(v10, v15), vzip1_s32(v10, v15));
  v17 = v16.i32[0];
  result = 0.0;
  if (v17 >= v16.i32[1])
  {
    v19 = vbic_s8(v5, veor_s8(*a2, *a4));
    v20 = vsub_s32(v19, vand_s8(vshr_n_u32(v19, 1uLL), 0x5555555555555555));
    v21 = vadd_s32(vand_s8(vshr_n_u32(v20, 2uLL), 0x3333333333333333), vand_s8(v20, 0x3333333333333333));
    v22 = vand_s8(vsra_n_u32(v21, v21, 4uLL), 0xF0F0F0F0F0F0F0FLL);
    v23 = vsra_n_u32(v22, v22, 8uLL);
    v24 = vand_s8(vsra_n_u32(v23, v23, 0x10uLL), 0x3F0000003FLL);
    return vadd_s32(v24, vdup_lane_s32(v24, 1)).u32[0] / v17;
  }

  return result;
}

double BlueFin::GlMeSrdAsicUnitConverter::Esw16thOr20thChipsToSecs(BlueFin::GlMeSrdAsicUnitConverter *this, unsigned __int8 *a2, const BlueFin::GlSignalId *a3, double a4, double a5, double a6)
{
  if (*(a2 + 4) >= 0x23Fu)
  {
    v12 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v13 = 807;
    goto LABEL_9;
  }

  v6 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v7 = *(a2 + 1);
  v8 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v7 + v6];
  v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v7 - v7 + v6];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v12 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v13 = 815;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v13, v12);
  }

  LOBYTE(a6) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  return this / *&a6 / (1000 * v8 / v9);
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetBdsB2aPCodeOffset(_BYTE *a1)
{
  if (*a1 - 76 >= 0x3F)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1492, "GetBdsB2aPCodeOffset", "otSvId.IsBeidou()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1492, "otSvId.IsBeidou()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_ausBdsB2aPCodeOffset[(*a1 - 76)];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGalE5bQCodeOffset(_BYTE *a1)
{
  if ((*a1 + 117) >= 0x24u)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1481, "GetGalE5bQCodeOffset", "otSvId.IsGalileo()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1481, "otSvId.IsGalileo()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_ausGalE5bQCodeOffset[(*a1 + 117)];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGalE5aQCodeOffset(_BYTE *a1)
{
  if ((*a1 + 117) >= 0x24u)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1463, "GetGalE5aQCodeOffset", "otSvId.IsGalileo()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1463, "otSvId.IsGalileo()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_ausGalE5aQCodeOffset[(*a1 + 117)];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetNavicL5CodeOffset(_BYTE *a1)
{
  if ((*a1 + 81) >= 0xEu)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1529, "GetNavicL5CodeOffset", "otSvId.IsNavic()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1529, "otSvId.IsNavic()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_aulNavicL5CodeOffset[(*a1 + 81)];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetBdsPrnIndex(_BYTE *a1)
{
  if (*a1 - 76 >= 0x3F)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1501, "GetBdsPrnIndex", "otSvId.IsBeidou()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1501, "otSvId.IsBeidou()");
  }

  return (*a1 - 76);
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGpsPrnIndex(_BYTE *a1)
{
  result = (*a1 - 1);
  if (result >= 0x20)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1511, "GetGpsPrnIndex", "otSvId.IsGps()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1511, "otSvId.IsGps()");
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetQzssPrnIndex(_BYTE *a1)
{
  if (*a1 - 66 >= 0xA)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1519, "GetQzssPrnIndex", "otSvId.IsQzss()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1519, "otSvId.IsQzss()");
  }

  return (*a1 - 66);
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGpsL2CInitShiftRegisterState(unsigned __int8 *a1)
{
  if (*a1 - 1 >= 0x20)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1028, "GetGpsL2CInitShiftRegisterState", "otSvId.IsGps()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1028, "otSvId.IsGps()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_aulGpsL2CInitShiftRegisterState[*a1];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetQzssL2CInitShiftRegisterState(_BYTE *a1)
{
  if (*a1 - 66 >= 0xA)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1037, "GetQzssL2CInitShiftRegisterState", "otSvId.IsQzss()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1037, "otSvId.IsQzss()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_aulQzssL2CInitShiftRegisterState[(*a1 - 66)];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::FftIdxToWholeChip(BlueFin::GlMeSrdAsicUnitConverter *this, int a2)
{
  if (a2 == 4092)
  {
    v5 = 109 * this + (387 * (this % 0x21u));
    return (v5 - 4092 * (((16793617 * v5) >> 32) >> 4));
  }

  else
  {
    v2 = (543 * this - 47 * (this % 0x21u)) % 2046;
    v3 = 496 * this + 16 * (33 * (this / 0x21u));
    v4 = v3 - 1023 * (((67174465 * v3) >> 32) >> 4);
    if (a2 != 1023)
    {
      v4 = 31 * this % (a2 - 1) + this / (a2 - 1) * (a2 - 1);
    }

    if (a2 != 2046)
    {
      LOWORD(v2) = v4;
    }
  }

  return v2;
}

uint64_t BlueFin::GlMeRxParamStd::GetModeTrkParamsFromCnstlAndMode(int **a1, int a2, int a3)
{
  if (a3 >= 6)
  {
    v7 = "eMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 616, "GetModeTrkParamsFromCnstlAndMode", "eMode < GetMaxAllowedModes()");
    v8 = 616;
    goto LABEL_8;
  }

  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    v7 = "eCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 617, "GetModeTrkParamsFromCnstlAndMode", "eCnstl < GetMaxAllowedCnstls()");
    v8 = 617;
    goto LABEL_8;
  }

  result = *(*(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 8 * a3 + 232);
  if (!result)
  {
    v7 = "rMp.m_pstTrkParams->astCnstlParams[eCnstl].pastModeParams[eMode] != nullptr";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 620, "GetModeTrkParamsFromCnstlAndMode", "rMp.m_pstTrkParams->astCnstlParams[eCnstl].pastModeParams[eMode] != nullptr");
    v8 = 620;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  return result;
}

void BlueFin::GlMeSrdReceiverParametersProgrammer::ProgramResourceManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 80))(a2);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v23 = 1;
  v24 = v5;
  v25 = 0;
  v26 = 0;
  (*(*v5 + 16))(v5, 1);
  if (*(a1 + 103))
  {
    goto LABEL_30;
  }

  if ((*(*a3 + 16))(a3) != 872480775 && (*(*a3 + 16))(a3) != 872611847 && (*(*a3 + 16))(a3) != 889126919 && (*(*a3 + 16))(a3) != 939589639 && (*(*a3 + 16))(a3) != 939720711 && (*(*a3 + 16))(a3) != 956235783 && (*(*a3 + 16))(a3) != 805371913 && (*(*a3 + 16))(a3) != 1006829577 && (*(*a3 + 16))(a3) != 805502985 && ((*(*a3 + 16))(a3) & 0xF000FFFF) != 0x3000000F && ((*(*a3 + 16))(a3) & 0xF000FFFF) != 0x30000011 && ((*(*a3 + 16))(a3) & 0xF000FFFF) != 0x30000013 && ((*(*a3 + 16))(a3) & 0xF000FFFF) != 0x30000015)
  {
    if ((*(a1 + 103) & 1) == 0 && !(*(*a3 + 32))(a3))
    {
      *(a1 + 30) = 0x1204120F6E6ELL;
      *(a1 + 25) = 0xF6E6E6E6E013903;
      goto LABEL_22;
    }

LABEL_30:
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1765, "ProgramResourceManager", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", 1765, "0");
  }

  if ((*(**(a1 + 16) + 808))(*(a1 + 16)))
  {
    v6 = 5;
  }

  else
  {
    v6 = 3;
  }

  v7 = (*(**(a1 + 16) + 1096))(*(a1 + 16));
  v8 = (*(**(a1 + 16) + 1104))(*(a1 + 16));
  v9 = (*(**(a1 + 16) + 1112))(*(a1 + 16));
  v10 = (*(**(a1 + 16) + 1120))(*(a1 + 16));
  v11 = (*(**(a1 + 16) + 1128))(*(a1 + 16));
  v12 = (*(**(a1 + 16) + 1136))(*(a1 + 16));
  if ((*(**(a1 + 16) + 1088))(*(a1 + 16)))
  {
    v13 = 0x4000;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 25) = v6;
  *(a1 + 26) = 270;
  *(a1 + 28) = 1819044972;
  *(a1 + 32) = 134744079;
  *(a1 + 36) = v7 & 3 | (4 * (v8 & 3)) & 0xCF | (16 * (v9 & 3)) | ((v10 & 7) << 8) & 0xC7FF | ((v11 & 7) << 11) | ((v12 & 3) << 6) | v13;
LABEL_22:
  *(a1 + 24) = 1;
  v14 = (*(*v24 + 48))(v24);
  v15 = (*(*v14 + 56))(v14);
  (*(*v15 + 24))(v15, v21, a1 + 25);
  RmPivot = BlueFin::GlMeSrdReceiverParametersProgrammer::GetRmPivot(a1, a3);
  v17 = (*(*v24 + 48))(v24);
  v18 = (*(*v17 + 56))(v17);
  (*(*v18 + 48))(v18, v21, RmPivot);
  if ((((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) == 0x30000012 || ((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) == 0x30000014) && ((*(**(a1 + 16) + 48))(*(a1 + 16)) & 1) == 0)
  {
    v27 = 84215085;
    v28 = 1290;
    v29 = 10;
    v30 = 0;
    v31 = 0;
    v19 = (*(*v24 + 48))(v24);
    v20 = (*(*v19 + 48))(v19);
    (*(*v20 + 160))(v20, v21, &v27);
  }

  BlueFin::GlMeSrdTransaction::Complete(v21);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v21);
}

void sub_298981B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdReceiverParametersProgrammer::ProgramReceiverParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v372 = *MEMORY[0x29EDCA608];
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 120) = a2;
  *(a1 + 102) = 0;
  v8 = (*(*a2 + 80))(a2);
  v9 = *(a1 + 102);
  *(a1 + 102) = v9 + 1;
  v285[0] = BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck;
  v285[1] = a1;
  v286 = v9;
  v287 = 1;
  v288 = v8;
  v289 = 0;
  v290 = 0;
  (*(*v8 + 16))(v8, 1);
  (*(*a1 + 88))(a1, v285, a3);
  v10 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  LOWORD(v5) = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  bzero(__dst, 0x380uLL);
  LOWORD(__dst[0]) = 1000;
  WORD2(__dst[0]) = 200;
  BYTE2(__dst[1]) = 15;
  if ((*(**(a1 + 16) + 328))())
  {
    v11 = 390;
  }

  else
  {
    v11 = 480;
  }

  WORD2(__dst[1]) = v11;
  LOWORD(__dst[2]) = 0;
  BYTE2(__dst[2]) = 0;
  WORD2(__dst[17]) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetSniffDFThreshold(a1, 0, 200.0);
  BYTE3(__dst[2]) = 0;
  v12 = (*(**(a1 + 8) + 96))(*(a1 + 8), 0, 0);
  v13 = (*(**(a1 + 8) + 96))(*(a1 + 8), 0, 1);
  v14 = *((*(**(a1 + 8) + 184))(*(a1 + 8), v12) + 8);
  v15 = *((*(**(a1 + 8) + 184))(*(a1 + 8), v13) + 8);
  v16 = (*(**(a1 + 8) + 184))(*(a1 + 8), v12);
  EramToCopReQuantScaleFactor = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v16 + 4));
  v18 = (*(**(a1 + 8) + 184))(*(a1 + 8), v13);
  v19 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v18 + 4));
  if ((*(**(a1 + 16) + 888))(*(a1 + 16)) >= 0.0)
  {
    v20 = (*(**(a1 + 16) + 888))(*(a1 + 16));
  }

  else
  {
    v20 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 12);
  }

  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(a1, 0, 1, v20, v14, EramToCopReQuantScaleFactor);
  v22 = v21;
  if ((*(**(a1 + 16) + 888))(*(a1 + 16)) >= 0.0)
  {
    v23 = (*(**(a1 + 16) + 888))(*(a1 + 16));
  }

  else
  {
    v23 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 12);
  }

  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(a1, 0, 1, v23, v15, v19);
  v25 = v24;
  if ((*(**(a1 + 16) + 904))(*(a1 + 16)) >= 0.0)
  {
    v26 = (*(**(a1 + 16) + 904))(*(a1 + 16));
  }

  else
  {
    v26 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 16);
  }

  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(a1, 0, 1, v26, v14, EramToCopReQuantScaleFactor);
  v28 = v27;
  if ((*(**(a1 + 16) + 904))(*(a1 + 16)) >= 0.0)
  {
    v29 = (*(**(a1 + 16) + 904))(*(a1 + 16));
  }

  else
  {
    v29 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 16);
  }

  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(a1, 0, 1, v29, v15, v19);
  v31 = v30;
  v32 = (*(**(a1 + 16) + 240))(*(a1 + 16));
  v33 = 0.00000011921;
  if (!v32)
  {
    v33 = 0.00000095367;
  }

  v34 = v22 * v33;
  if (vabds_f32(v22 * v33, v25 * v33) >= 0.5)
  {
    v280 = "FABS_F(fXcorStrongThreshGpsPrebit - fXcorStrongThreshGpsPostbit) < 0.5";
    v281 = 2082;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2082, "ProgramCommonParameters", "FABS_F(fXcorStrongThreshGpsPrebit - fXcorStrongThreshGpsPostbit) < 0.5");
    goto LABEL_464;
  }

  v35 = v28 * v33;
  if (vabds_f32(v28 * v33, v31 * v33) >= 0.5)
  {
    v280 = "FABS_F(fXcorWeakThreshGpsPrebit - fXcorWeakThreshGpsPostbit) < 0.5";
    v281 = 2083;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2083, "ProgramCommonParameters", "FABS_F(fXcorWeakThreshGpsPrebit - fXcorWeakThreshGpsPostbit) < 0.5");
    goto LABEL_464;
  }

  if (v34 < 0.0)
  {
    v280 = "fXcorStrongThresh >= 0";
    v281 = 2089;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2089, "ProgramCommonParameters", "fXcorStrongThresh >= 0");
    goto LABEL_464;
  }

  if (v34 <= 254.0)
  {
    v36 = v22 * v33;
  }

  else
  {
    v36 = 254.0;
  }

  if (v35 < 0.0)
  {
    v280 = "fXcorWeakThresh >= 0";
    v281 = 2095;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2095, "ProgramCommonParameters", "fXcorWeakThresh >= 0");
    goto LABEL_464;
  }

  if ((*(**(a1 + 16) + 544))(*(a1 + 16)))
  {
    LOBYTE(v37) = 0;
    LOBYTE(v38) = -1;
  }

  else
  {
    v39 = 254.0;
    if (v35 <= 254.0)
    {
      v39 = v35;
    }

    v38 = (v36 + 0.5);
    if (v36 <= 0.0)
    {
      LOBYTE(v38) = 0;
    }

    v37 = (v39 + 0.5);
    if (v39 <= 0.0)
    {
      LOBYTE(v37) = 0;
    }
  }

  BYTE4(__dst[2]) = v38;
  BYTE5(__dst[2]) = v37;
  v40 = (*(**(a1 + 8) + 176))(*(a1 + 8), 0, 0);
  v41 = (*(**(a1 + 8) + 176))(*(a1 + 8), 0, 1);
  if (!BlueFin::GlMeTrkCvecTapConfig::operator==(v40 + 148, v41 + 148))
  {
    v280 = "m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GPS, PREBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GPS, POSTBIT_MODE).stCvecTapConfig";
    v281 = 2115;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2115, "ProgramCommonParameters", "m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GPS, PREBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GPS, POSTBIT_MODE).stCvecTapConfig");
    goto LABEL_464;
  }

  v42 = (*(**(a1 + 16) + 816))(*(a1 + 16));
  *(&__dst[2] + 6) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 0, 0);
  *(&__dst[3] + 6) = v43;
  if (v42)
  {
    *(&__dst[4] + 6) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 0, 1);
    *(&__dst[5] + 6) = v44;
    *(&__dst[6] + 6) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 0, 2);
    *(&__dst[7] + 6) = v45;
  }

  LODWORD(__dst[17]) = 1677720;
  LOBYTE(__dst[18]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 20);
  if (*(**(a1 + 16) + 672))(*(a1 + 16)) && ((*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v46 = 3;
  }

  else
  {
    v46 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 21);
  }

  BYTE1(__dst[18]) = v46;
  BYTE2(__dst[18]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 22);
  BYTE3(__dst[18]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 20);
  if (*(**(a1 + 16) + 672))(*(a1 + 16)) && ((*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v47 = 3;
  }

  else
  {
    v47 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 21);
  }

  BYTE4(__dst[18]) = v47;
  BYTE5(__dst[18]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 22);
  BYTE6(__dst[18]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 20);
  v48 = v10 & 0xF000FFFE;
  if ((v10 & 0xF000FFFE) == 0x30000010)
  {
    if ((*(**(a1 + 16) + 672))(*(a1 + 16)))
    {
      if ((*(**(a1 + 16) + 328))(*(a1 + 16)))
      {
        v52 = 2;
      }

      else
      {
        v52 = 80;
      }
    }

    else
    {
      v52 = 80;
    }

    goto LABEL_62;
  }

  if (v48 != 805306388)
  {
    if (v48 == 805306386)
    {
      v49 = (*(**(a1 + 16) + 1064))(*(a1 + 16));
      v50 = (*(**(a1 + 16) + 672))(*(a1 + 16));
      if (v49)
      {
        v51 = 32;
      }

      else
      {
        v51 = -26;
      }

      if (v50 && (*(**(a1 + 16) + 328))(*(a1 + 16)))
      {
        v51 = 2;
      }

      goto LABEL_55;
    }

    v52 = 2;
LABEL_62:
    HIBYTE(__dst[18]) = v52;
    goto LABEL_63;
  }

  v51 = 0;
LABEL_55:
  HIBYTE(__dst[18]) = v51;
  BYTE6(__dst[18]) = 6;
LABEL_63:
  LOBYTE(__dst[19]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 0) + 22);
  LODWORD(__dst[20]) = 1024;
  BYTE4(__dst[20]) = (*(**(a1 + 8) + 96))(*(a1 + 8), 0, 0);
  *(&__dst[20] + 6) = 1024;
  BYTE2(__dst[21]) = (*(**(a1 + 8) + 96))(*(a1 + 8), 0, 1);
  BYTE5(__dst[21]) = 4;
  HIWORD(__dst[21]) = 0;
  if (((*(**(a1 + 16) + 256))(*(a1 + 16)) & 1) != 0 || (v53 = (*(**(a1 + 16) + 264))(*(a1 + 16))) != 0)
  {
    v54 = (*(**(a1 + 8) + 96))(*(a1 + 8), 0, 2);
    LOBYTE(__dst[22]) = v54;
    v55 = *(*(**(a1 + 8) + 168))(*(a1 + 8), v54);
    v56 = (*(**(a1 + 8) + 168))(*(a1 + 8), v54);
    LOBYTE(v53) = 0;
    if (v48 - 805306384 <= 4 && ((1 << (v48 - 16)) & 0x15) != 0)
    {
      v57.i32[0] = *(v56 + 48);
      LOBYTE(v53) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(0, v57, v55, v58, v59);
    }
  }

  else
  {
    LOBYTE(__dst[22]) = -1;
  }

  BYTE4(__dst[21]) = v53;
  *(&__dst[22] + 2) = 1024;
  if (((*(**(a1 + 16) + 256))(*(a1 + 16)) & 1) != 0 || (*(**(a1 + 16) + 264))(*(a1 + 16)))
  {
    if ((*(**(a1 + 16) + 920))(*(a1 + 16)))
    {
      LOWORD(__dst[1]) |= 0x800u;
    }
  }

  else
  {
    BYTE6(__dst[22]) = -1;
  }

  v64 = v5;
  if ((*(**(a1 + 16) + 264))(*(a1 + 16)))
  {
    *v60.i64 = (v64 * 3.598) + 0.5;
    *v62.i64 = *v60.i64 + trunc(*v60.i64 * 2.32830644e-10) * -4294967300.0;
    v65.f64[0] = NAN;
    v65.f64[1] = NAN;
    v66 = vnegq_f64(v65);
    v67 = vbslq_s8(v66, v62, v60);
    if (*v60.i64 > 4294967300.0)
    {
      v60.i64[0] = v67.i64[0];
    }

    if (*v60.i64 >= -4294967300.0)
    {
      v68 = *v60.i64;
    }

    else
    {
      *v61.i64 = -*v60.i64;
      *v60.i64 = -(*v60.i64 - trunc(*v60.i64 * -2.32830644e-10) * -4294967300.0);
      v66 = vbslq_s8(v66, v60, v61);
      if (*v66.i64 > 0.0)
      {
        v68 = -*v66.i64;
      }

      else
      {
        v68 = 0;
      }
    }

    HIDWORD(__dst[19]) = v68;
    HIDWORD(__dst[39]) = v68;
    *v66.i64 = (v64 * 3.5809) + 0.5;
    *v67.i64 = *v66.i64 + trunc(*v66.i64 * 2.32830644e-10) * -4294967300.0;
    v69.f64[0] = NAN;
    v69.f64[1] = NAN;
    v70 = vnegq_f64(v69);
    v71 = vbslq_s8(v70, v67, v66);
    if (*v66.i64 > 4294967300.0)
    {
      v66.i64[0] = v71.i64[0];
    }

    if (*v66.i64 < -4294967300.0)
    {
      *v61.i64 = -*v66.i64;
      *v66.i64 = -(*v66.i64 - trunc(*v66.i64 * -2.32830644e-10) * -4294967300.0);
      *v66.i64 = -*vbslq_s8(v70, v66, v61).i64;
    }

    if (*v66.i64 < 0.0)
    {
      v72 = --*v66.i64;
    }

    else
    {
      v72 = *v66.i64;
    }

    v73 = xmmword_298A319D0;
    v74 = v301;
    v75 = vdupq_n_s64(2uLL);
    v76 = 14;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v73)).u8[0])
      {
        *(v74 - 1) = v72;
      }

      v77 = vcgtq_u64(vdupq_n_s64(0xEuLL), v73);
      if (vmovn_s64(*&v77).i32[1])
      {
        *v74 = v72;
      }

      v73 = vaddq_s64(v73, v75);
      v74 += 2;
      v76 -= 2;
    }

    while (v76);
    *v77.i64 = (v64 * 3.8152) + 0.5;
    *v63.i64 = *v77.i64 + trunc(*v77.i64 * 2.32830644e-10) * -4294967300.0;
    v78.f64[0] = NAN;
    v78.f64[1] = NAN;
    v79 = vnegq_f64(v78);
    v63.i64[0] = vbslq_s8(v79, v63, v77).u64[0];
    if (*v77.i64 > 4294967300.0)
    {
      v77.i64[0] = v63.i64[0];
    }

    if (*v77.i64 < -4294967300.0)
    {
      *v71.i64 = -*v77.i64;
      *v77.i64 = -(*v77.i64 - trunc(*v77.i64 * -2.32830644e-10) * -4294967300.0);
      v77 = vbslq_s8(v79, v77, v71);
      *v77.i64 = -*v77.i64;
    }

    if (*v77.i64 < 0.0)
    {
      v80 = --*v77.i64;
    }

    else
    {
      v80 = *v77.i64;
    }

    v327 = v80;
    *v73.i64 = ((*&BlueFin::GlMeSrdConstants::_4777_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT * v64) * 0.25) + 0.5;
    *v77.i64 = *v73.i64 + trunc(*v73.i64 * 2.32830644e-10) * -4294967300.0;
    v81 = vbslq_s8(v79, v77, v73);
    if (*v73.i64 > 4294967300.0)
    {
      v73.i64[0] = v81.i64[0];
    }

    if (*v73.i64 < -4294967300.0)
    {
      *v81.i64 = -*v73.i64;
      *v73.i64 = -(*v73.i64 - trunc(*v73.i64 * -2.32830644e-10) * -4294967300.0);
      v82.f64[0] = NAN;
      v82.f64[1] = NAN;
      *v73.i64 = -*vbslq_s8(vnegq_f64(v82), v73, v81).i64;
    }

    if (*v73.i64 < 0.0)
    {
      v83 = --*v73.i64;
    }

    else
    {
      v83 = *v73.i64;
    }

    v353 = v83;
  }

  if ((*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v309 = 0;
    v310 = 0;
    LOWORD(v84) = WORD2(__dst[0]);
    SniffDFThreshold = BlueFin::GlMeSrdReceiverParametersProgrammer::GetSniffDFThreshold(a1, 3, v84);
    v311 = -256;
    v312 = 0;
    if ((*(**(a1 + 16) + 816))(*(a1 + 16)))
    {
      EswTrackDelayType = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 3, 0);
      v314 = v85;
      v315 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 3, 1);
      v316 = v86;
      if (((*(**(a1 + 16) + 256))(*(a1 + 16)) & 1) != 0 || (*(**(a1 + 16) + 264))(*(a1 + 16)))
      {
        v317 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 3, 3);
        v318 = v87;
      }
    }

    else
    {
      EswTrackDelayType = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 3, 1);
      v314 = v88;
    }

    v319 = 1677720;
    v321 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 20);
    if (v48 - 805306384 <= 4 && ((1 << (v48 - 16)) & 0x15) != 0)
    {
      v89 = 40;
    }

    else
    {
      v89 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 21);
    }

    v322 = v89;
    v323 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 22);
    v324 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 20);
    v325[1] = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 22);
    v90 = v325;
    v325[2] = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 20);
    if (v48 == 805306384)
    {
      if ((*(**(a1 + 16) + 672))(*(a1 + 16)))
      {
        if ((*(**(a1 + 16) + 328))(*(a1 + 16)))
        {
          v95 = 2;
        }

        else
        {
          v95 = 80;
        }
      }

      else
      {
        v95 = 80;
      }

      v326[0] = v95;
      if ((*(**(a1 + 16) + 672))(*(a1 + 16)))
      {
        if ((*(**(a1 + 16) + 328))(*(a1 + 16)))
        {
          v94 = 2;
        }

        else
        {
          v94 = 80;
        }
      }

      else
      {
        v94 = 80;
      }
    }

    else if (v48 == 805306388 || v48 == 805306386)
    {
      v91 = (*(**(a1 + 16) + 1064))(*(a1 + 16));
      v92 = (*(**(a1 + 16) + 672))(*(a1 + 16));
      if (v91)
      {
        v93 = 32;
      }

      else
      {
        v93 = -26;
      }

      if (v92 && (*(**(a1 + 16) + 328))(*(a1 + 16)))
      {
        v93 = 2;
      }

      v326[0] = v93;
      v94 = 20;
    }

    else
    {
      v90 = v326;
      if (*(**(a1 + 16) + 672))(*(a1 + 16)) && ((*(**(a1 + 16) + 328))(*(a1 + 16)))
      {
        v94 = 2;
      }

      else
      {
        v94 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 21);
      }
    }

    *v90 = v94;
    v326[1] = *((*(**(a1 + 8) + 152))(*(a1 + 8), 3) + 22);
    v328 = 44;
    v329 = 9;
    v330 = (*(**(a1 + 8) + 96))(*(a1 + 8), 3, 0);
    v331 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 3, 0);
    v332 = v96;
    v333 = 1024;
    v334 = (*(**(a1 + 8) + 96))(*(a1 + 8), 3, 1);
    if (((*(**(a1 + 16) + 256))(*(a1 + 16)) & 1) != 0 || (*(**(a1 + 16) + 264))(*(a1 + 16)))
    {
      if (v48 == 805306388 || v48 == 805306386)
      {
        v307 = 512;
        v308 = (*(**(a1 + 8) + 96))(*(a1 + 8), 3, 5);
      }

      v335 = 256;
      v97 = (*(**(a1 + 8) + 96))(*(a1 + 8), 3, 3);
      v336 = v97;
      v98 = *(*(**(a1 + 8) + 168))(*(a1 + 8), v97);
      v99 = (*(**(a1 + 8) + 168))(*(a1 + 8), v97);
      EswCoherentTableIndex = 0;
      if (v48 - 805306384 <= 4 && ((1 << (v48 - 16)) & 0x15) != 0)
      {
        v100.i32[0] = *(v99 + 48);
        EswCoherentTableIndex = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(0, v100, v98, v101, v102);
      }

      LOBYTE(v335) = EswCoherentTableIndex;
    }
  }

  if ((*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v104 = (*(**(a1 + 8) + 176))(*(a1 + 8), 4, 1);
    v105 = (*(**(a1 + 8) + 176))(*(a1 + 8), 4, 2);
    if (!BlueFin::GlMeTrkCvecTapConfig::operator==(v104 + 148, v105 + 148))
    {
      v280 = "(m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GALILEO, POSTBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GALILEO, POSTFRAME_MODE).stCvecTapConfig)";
      v281 = 2405;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2405, "ProgramCommonParameters", "(m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GALILEO, POSTBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GALILEO, POSTFRAME_MODE).stCvecTapConfig)");
      goto LABEL_464;
    }

    v337 = 4;
    v338 = 0;
    LOWORD(v106) = WORD2(__dst[0]);
    v346 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetSniffDFThreshold(a1, 4, v106);
    v339 = -255;
    v340 = 0;
    v107 = (*(**(a1 + 16) + 816))(*(a1 + 16));
    v108 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 4, 3);
    if (v107)
    {
      v342[1] = v108;
      v342[2] = v109;
      v342[3] = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 4, 3);
      v342[4] = v110;
      v344[5] = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 4, 3);
      v344[6] = v111;
      v108 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 4, 3);
      v112 = &v343;
      v113 = v344;
    }

    else
    {
      v112 = &v341;
      v113 = v342;
    }

    *v112 = v108;
    *v113 = v109;
    v345 = 3355440;
    v347 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 20);
    v348 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 21);
    v349 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 22);
    v350 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 20);
    v351[1] = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 22);
    v114 = v352;
    v351[2] = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 20);
    v115 = 2;
    if (v48 == 805306384)
    {
      v351[0] = 2;
      if ((*(**(a1 + 16) + 672))(*(a1 + 16)))
      {
        if ((*(**(a1 + 16) + 328))(*(a1 + 16)))
        {
          v115 = 2;
        }

        else
        {
          v115 = 80;
        }
      }

      else
      {
        v115 = 80;
      }
    }

    else if (v48 == 805306388 || v48 == 805306386)
    {
      v116 = (*(**(a1 + 16) + 1064))(*(a1 + 16));
      v117 = (*(**(a1 + 16) + 672))(*(a1 + 16));
      if (v116)
      {
        v115 = 32;
      }

      else
      {
        v115 = -26;
      }

      if (v117 && (*(**(a1 + 16) + 328))(*(a1 + 16)))
      {
        v115 = 2;
      }

      v114 = v351;
      v352[0] = v115;
    }

    *v114 = v115;
    v352[1] = *((*(**(a1 + 8) + 152))(*(a1 + 8), 4) + 22);
    v354 = 256;
    v355 = (*(**(a1 + 8) + 96))(*(a1 + 8), 4, 1);
    v357 = 1;
    v358 = 0;
    v118 = (*(**(a1 + 8) + 96))(*(a1 + 8), 4, 2);
    v359 = v118;
    v119 = *(*(**(a1 + 8) + 168))(*(a1 + 8), v118);
    v120 = (*(**(a1 + 8) + 168))(*(a1 + 8), v118);
    v124 = 0;
    if (v48 - 805306384 <= 4 && ((1 << (v48 - 16)) & 0x15) != 0)
    {
      v121.i32[0] = *(v120 + 12);
      v124 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v120, v121, v119, v122, v123);
    }

    v356 = v124;
    v360 = v124;
    v361 = 1;
    v362 = 0;
    v363 = (*(**(a1 + 8) + 96))(*(a1 + 8), 4, 3);
    v364 = v124;
    v365 = 1;
    v366 = 0;
    v367 = -1;
  }

  WORD2(__dst[38]) = 0;
  LODWORD(__dst[23]) = 0;
  WORD2(__dst[23]) = 255;
  v125 = (*(**(a1 + 8) + 176))(*(a1 + 8), 2, 0);
  v126 = (*(**(a1 + 8) + 176))(*(a1 + 8), 2, 1);
  if (!BlueFin::GlMeTrkCvecTapConfig::operator==(v125 + 148, v126 + 148))
  {
    v280 = "m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_SBAS, PREBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_SBAS, POSTBIT_MODE).stCvecTapConfig";
    v281 = 2523;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2523, "ProgramCommonParameters", "m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_SBAS, PREBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_SBAS, POSTBIT_MODE).stCvecTapConfig");
    goto LABEL_464;
  }

  v127 = (*(**(a1 + 16) + 816))(*(a1 + 16));
  *(&__dst[23] + 6) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 2, 0);
  *(&__dst[24] + 6) = v128;
  if (v127)
  {
    *(&__dst[25] + 6) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 2, 1);
    *(&__dst[26] + 6) = v129;
  }

  LODWORD(__dst[38]) = 3355440;
  LOBYTE(__dst[39]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 2) + 20);
  if (*(**(a1 + 16) + 672))(*(a1 + 16)) && ((*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v130 = 3;
  }

  else
  {
    v130 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 2) + 21);
  }

  BYTE1(__dst[39]) = v130;
  BYTE2(__dst[39]) = *((*(**(a1 + 8) + 152))(*(a1 + 8), 2) + 22);
  LODWORD(__dst[40]) = 512;
  BYTE4(__dst[40]) = (*(**(a1 + 8) + 96))(*(a1 + 8), 2, 0);
  *(&__dst[40] + 6) = 512;
  BYTE2(__dst[41]) = (*(**(a1 + 8) + 96))(*(a1 + 8), 2, 1);
  v297 = 0;
  HIDWORD(__dst[41]) = 0;
  LOWORD(__dst[42]) = 255;
  v131 = (*(**(a1 + 8) + 176))(*(a1 + 8), 1, 0);
  v132 = (*(**(a1 + 8) + 176))(*(a1 + 8), 1, 1);
  if (!BlueFin::GlMeTrkCvecTapConfig::operator==(v131 + 148, v132 + 148) || (v133 = (*(**(a1 + 8) + 176))(*(a1 + 8), 1, 1), v134 = (*(**(a1 + 8) + 176))(*(a1 + 8), 1, 2), !BlueFin::GlMeTrkCvecTapConfig::operator==(v133 + 148, v134 + 148)))
  {
    v280 = "(m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, PREBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, POSTBIT_MODE).stCvecTapConfig) && (m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, POSTBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, POSTFRAME_MODE).stCvecTapConfig)";
    v281 = 2576;
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2576, "ProgramCommonParameters", "(m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, PREBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, POSTBIT_MODE).stCvecTapConfig) && (m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, POSTBIT_MODE).stCvecTapConfig == m_rRxParams.GetAllGearsTrkParamsFromCnstlAndMode(CNSTL_TYPE_GLN, POSTFRAME_MODE).stCvecTapConfig)");
    goto LABEL_464;
  }

  v135 = (*(**(a1 + 16) + 816))(*(a1 + 16));
  *(&__dst[42] + 2) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 1, 0);
  *(&__dst[43] + 2) = v136;
  if (v135)
  {
    *(&__dst[44] + 2) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 1, 1);
    *(&__dst[45] + 2) = v137;
    *(&__dst[46] + 2) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(a1, 1, 2);
    *(&__dst[47] + 2) = v138;
  }

  v296 = 1677720;
  v298 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 1) + 20);
  if (*(**(a1 + 16) + 672))(*(a1 + 16)) && ((*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v139 = 10;
  }

  else
  {
    v139 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 1) + 21);
  }

  v299 = v139;
  v300 = *((*(**(a1 + 8) + 152))(*(a1 + 8), 1) + 22);
  v301[13] = 512;
  v302 = (*(**(a1 + 8) + 96))(*(a1 + 8), 1, 0);
  v303 = 512;
  v304 = (*(**(a1 + 8) + 96))(*(a1 + 8), 1, 1);
  v305 = 1024;
  v306 = (*(**(a1 + 8) + 96))(*(a1 + 8), 1, 2);
  if (v48 != 805306386 && v48 != 805306388)
  {
    v307 = 512;
    v308 = -1;
  }

  v368 = 8;
  if (((*(**(a1 + 16) + 256))(*(a1 + 16)) & 1) != 0 || (*(**(a1 + 16) + 264))(*(a1 + 16)))
  {
    v140 = (*(**(a1 + 16) + 856))(*(a1 + 16));
    v141 = v140 / 29.3052256 * (*(**(a1 + 16) + 320))(*(a1 + 16)) + 0.5;
    v370 = -v141 - ((((-v141 >> 27) & 0xF) - v141) & 0xFFF0);
    LOBYTE(v291) = 1;
    HIDWORD(v291) = 2;
    LOWORD(v292) = 64;
    v371 = ((((-v141 >> 27) & 0xF) - v141) >> 4) - (BlueFin::GlSignalId::GetInterSignalBiasInMs(&v291, *(a1 + 16)) * 10230.0);
    InterSignalBiasInMs = BlueFin::GlSignalId::GetInterSignalBiasInMs(&v291, *(a1 + 16));
    v143 = (*(**(a1 + 16) + 320))(*(a1 + 16));
    *v143.i64 = InterSignalBiasInMs * 10230.0;
    *v144.i64 = InterSignalBiasInMs * 10230.0 - trunc(InterSignalBiasInMs * 10230.0);
    v145.f64[0] = NAN;
    v145.f64[1] = NAN;
    v369 = -(*vbslq_s8(vnegq_f64(v145), v144, v143).i64 * v146 + 0.5);
  }

  v147 = (*(*v288 + 48))(v288);
  v148 = (*(*v147 + 48))(v147);
  (*(*v148 + 96))(v148, v285, __dst);
  if (((*(**(a1 + 16) + 256))(*(a1 + 16)) & 1) != 0 || (*(**(a1 + 16) + 264))(*(a1 + 16)))
  {
    v152.i64[1] = 0;
    v293 = 0u;
    v294 = 0u;
    v292 = 0u;
    *v149.i64 = (*&BlueFin::GlMeSrdConstants::_4755_GPS_L1_COH_NOI_PWR_AT_CA_EPOCH_INT * v64) + 0.5;
    *v151.i64 = *v149.i64 + trunc(*v149.i64 * 2.32830644e-10) * -4294967300.0;
    v153.f64[0] = NAN;
    v153.f64[1] = NAN;
    v154 = vnegq_f64(v153);
    v155 = vbslq_s8(v154, v151, v149);
    if (*v149.i64 > 4294967300.0)
    {
      v149.i64[0] = v155.i64[0];
    }

    if (*v149.i64 < -4294967300.0)
    {
      *v150.i64 = -*v149.i64;
      *v149.i64 = -(*v149.i64 - trunc(*v149.i64 * -2.32830644e-10) * -4294967300.0);
      v149 = vbslq_s8(v154, v149, v150);
      *v149.i64 = -*v149.i64;
    }

    if (*v149.i64 < 0.0)
    {
      v156 = --*v149.i64;
    }

    else
    {
      v156 = *v149.i64;
    }

    LODWORD(v291) = v156;
    *v152.i64 = (v64 * 1.915) + 0.5;
    *v149.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
    v157 = vbslq_s8(v154, v149, v152);
    if (*v152.i64 > 4294967300.0)
    {
      v152.i64[0] = v157.i64[0];
    }

    if (*v152.i64 < -4294967300.0)
    {
      *v157.i64 = -*v152.i64;
      *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
      v158.f64[0] = NAN;
      v158.f64[1] = NAN;
      v149 = vnegq_f64(v158);
      v152 = vbslq_s8(v149, v152, v157);
      *v152.i64 = -*v152.i64;
    }

    if (*v152.i64 < 0.0)
    {
      v159 = --*v152.i64;
    }

    else
    {
      v159 = *v152.i64;
    }

    HIDWORD(v291) = v159;
    v160 = v10 & 0xF000FFFF;
    if ((v10 & 0xF000FFFF) == 0x3000000F)
    {
      v152.i32[0] = 1080846975;
      goto LABEL_231;
    }

    if (v160 <= 805306385)
    {
      switch(v160)
      {
        case 805306382:
          v152.i32[0] = 1082140918;
          break;
        case 805306384:
          v152.i32[0] = 1065646817;
          break;
        case 805306385:
          v152.i32[0] = 1065772646;
          break;
        default:
          goto LABEL_466;
      }
    }

    else
    {
      if (v160 > 805306387)
      {
        if (v160 != 805306388)
        {
          v161 = 21;
LABEL_226:
          if (v160 == (v161 | 0x30000000))
          {
            v152.i32[0] = 1077487337;
            goto LABEL_231;
          }

LABEL_466:
          v280 = "0";
          v281 = 2690;
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2690, "ProgramCommonParameters", "0");
          goto LABEL_464;
        }
      }

      else if (v160 != 805306386)
      {
        v161 = 19;
        goto LABEL_226;
      }

      v152.i32[0] = 1077348925;
    }

LABEL_231:
    *v152.i64 = (v64 * *v152.i32) + 0.5;
    *v150.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
    v162.f64[0] = NAN;
    v162.f64[1] = NAN;
    v163 = vnegq_f64(v162);
    v164 = vbslq_s8(v163, v150, v152);
    if (*v152.i64 > 4294967300.0)
    {
      v152.i64[0] = v164.i64[0];
    }

    if (*v152.i64 < -4294967300.0)
    {
      *v149.i64 = -*v152.i64;
      *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
      v152 = vbslq_s8(v163, v152, v149);
      *v152.i64 = -*v152.i64;
    }

    if (*v152.i64 < 0.0)
    {
      v165 = --*v152.i64;
    }

    else
    {
      v165 = *v152.i64;
    }

    LODWORD(v292) = v165;
    *v149.i64 = (v64 * 3.5809) + 0.5;
    *v155.i64 = *v149.i64 + trunc(*v149.i64 * 2.32830644e-10) * -4294967300.0;
    v166.f64[0] = NAN;
    v166.f64[1] = NAN;
    v167 = vnegq_f64(v166);
    v168 = vbslq_s8(v167, v155, v149);
    if (*v149.i64 > 4294967300.0)
    {
      v149.i64[0] = v168.i64[0];
    }

    if (*v149.i64 < -4294967300.0)
    {
      *v164.i64 = -*v149.i64;
      *v149.i64 = -(*v149.i64 - trunc(*v149.i64 * -2.32830644e-10) * -4294967300.0);
      v149 = vbslq_s8(v167, v149, v164);
      *v149.i64 = -*v149.i64;
    }

    if (*v149.i64 < 0.0)
    {
      v169 = --*v149.i64;
    }

    else
    {
      v169 = *v149.i64;
    }

    DWORD1(v292) = v169;
    *v152.i64 = (v64 * 3.8152) + 0.5;
    *v149.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
    v170 = vbslq_s8(v167, v149, v152);
    if (*v152.i64 > 4294967300.0)
    {
      v152.i64[0] = v170.i64[0];
    }

    if (*v152.i64 < -4294967300.0)
    {
      *v170.i64 = -*v152.i64;
      *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
      v171.f64[0] = NAN;
      v171.f64[1] = NAN;
      v149 = vnegq_f64(v171);
      v152 = vbslq_s8(v149, v152, v170);
      *v152.i64 = -*v152.i64;
    }

    if (*v152.i64 < 0.0)
    {
      v172 = --*v152.i64;
    }

    else
    {
      v172 = *v152.i64;
    }

    LODWORD(v293) = v172;
    *v152.i64 = (v64 * 4.244) + 0.5;
    *v164.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
    v173.f64[0] = NAN;
    v173.f64[1] = NAN;
    v174 = vnegq_f64(v173);
    v175 = vbslq_s8(v174, v164, v152);
    if (*v152.i64 > 4294967300.0)
    {
      v152.i64[0] = v175.i64[0];
    }

    v176 = *v152.i64;
    if (*v152.i64 < -4294967300.0)
    {
      *v149.i64 = -*v152.i64;
      *v175.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
      v174 = vbslq_s8(v174, v175, v149);
      v176 = -*v174.i64;
    }

    if (v176 < 0.0)
    {
      v177 = --v176;
    }

    else
    {
      v177 = v176;
    }

    DWORD1(v293) = v177;
    switch(v160)
    {
      case 805306385:
        goto LABEL_260;
      case 805306384:
        v174.i32[0] = 1065646817;
        break;
      case 805306389:
      case 805306387:
        v174.i32[0] = 1077487337;
        break;
      default:
LABEL_260:
        v174.i32[0] = 1081358680;
        break;
    }

    *v174.i64 = (v64 * *v174.i32) + 0.5;
    *v168.i64 = *v174.i64 + trunc(*v174.i64 * 2.32830644e-10) * -4294967300.0;
    v178.f64[0] = NAN;
    v178.f64[1] = NAN;
    v179 = vnegq_f64(v178);
    v180 = vbslq_s8(v179, v168, v174);
    if (*v174.i64 > 4294967300.0)
    {
      v174.i64[0] = v180.i64[0];
    }

    if (*v174.i64 < -4294967300.0)
    {
      *v175.i64 = -*v174.i64;
      *v174.i64 = -(*v174.i64 - trunc(*v174.i64 * -2.32830644e-10) * -4294967300.0);
      v174 = vbslq_s8(v179, v174, v175);
      *v174.i64 = -*v174.i64;
    }

    if (*v174.i64 < 0.0)
    {
      v181 = --*v174.i64;
    }

    else
    {
      v181 = *v174.i64;
    }

    DWORD2(v293) = v181;
    *v174.i64 = ((*&BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT * v64) * 0.25) + 0.5;
    *v180.i64 = *v174.i64 + trunc(*v174.i64 * 2.32830644e-10) * -4294967300.0;
    v182.f64[0] = NAN;
    v182.f64[1] = NAN;
    v183 = vnegq_f64(v182);
    v184 = vbslq_s8(v183, v180, v174);
    if (*v174.i64 > 4294967300.0)
    {
      v174.i64[0] = v184.i64[0];
    }

    if (*v174.i64 < -4294967300.0)
    {
      *v175.i64 = -*v174.i64;
      *v174.i64 = -(*v174.i64 - trunc(*v174.i64 * -2.32830644e-10) * -4294967300.0);
      v174 = vbslq_s8(v183, v174, v175);
      *v174.i64 = -*v174.i64;
    }

    if (*v174.i64 < 0.0)
    {
      v185 = --*v174.i64;
    }

    else
    {
      v185 = *v174.i64;
    }

    DWORD1(v294) = v185;
    if (v160 > 805306385)
    {
      if (v160 > 805306387)
      {
        v187 = 20;
      }

      else
      {
        v187 = 18;
      }

      if (v160 == (v187 | 0x30000000))
      {
        v152.i32[0] = 1064086201;
      }

      else
      {
        v152.i32[0] = 1077487337;
      }

      *v152.i64 = (v64 * *v152.i32) + 0.5;
      *v175.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
      v192.f64[0] = NAN;
      v192.f64[1] = NAN;
      v193 = vnegq_f64(v192);
      v175 = vbslq_s8(v193, v175, v152);
      if (*v152.i64 > 4294967300.0)
      {
        v152.i64[0] = v175.i64[0];
      }

      if (*v152.i64 < -4294967300.0)
      {
        *v183.i64 = -*v152.i64;
        *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
        v152 = vbslq_s8(v193, v152, v183);
        *v152.i64 = -*v152.i64;
      }

      if (*v152.i64 < 0.0)
      {
        v194 = --*v152.i64;
      }

      else
      {
        v194 = *v152.i64;
      }

      DWORD2(v292) = v194;
LABEL_311:
      v195 = v160 - 805306382;
      if (v195 <= 7)
      {
        if (((1 << v195) & 5) != 0)
        {
          v152.i32[0] = 1081358680;
          goto LABEL_320;
        }

        if (((1 << v195) & 0x50) != 0)
        {
          v152.i32[0] = 1077348925;
          goto LABEL_320;
        }

        if (((1 << v195) & 0xA0) != 0)
        {
          v152.i32[0] = 1077487337;
          goto LABEL_320;
        }
      }

      v280 = "0";
      v281 = 2788;
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 2788, "ProgramCommonParameters", "0");
LABEL_464:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v281, v280);
    }

    if (v160 > 805306383)
    {
      v186 = 16;
    }

    else
    {
      v186 = 14;
    }

    if (v160 == (v186 | 0x30000000))
    {
      if (*v152.i64 >= -4294967300.0)
      {
LABEL_297:
        if (*v152.i64 < 0.0)
        {
          v191 = --*v152.i64;
        }

        else
        {
          v191 = *v152.i64;
        }

        DWORD2(v292) = v191;
        if (v160 == 805306383)
        {
          v152.i32[0] = 1080779866;
LABEL_320:
          *v152.i64 = (v64 * *v152.i32) + 0.5;
          *v175.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
          v196.f64[0] = NAN;
          v196.f64[1] = NAN;
          v197 = vnegq_f64(v196);
          v198 = vbslq_s8(v197, v175, v152);
          if (*v152.i64 > 4294967300.0)
          {
            v152.i64[0] = v198.i64[0];
          }

          if (*v152.i64 < -4294967300.0)
          {
            *v183.i64 = -*v152.i64;
            *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
            v152 = vbslq_s8(v197, v152, v183);
            *v152.i64 = -*v152.i64;
          }

          if (*v152.i64 < 0.0)
          {
            v199 = --*v152.i64;
          }

          else
          {
            v199 = *v152.i64;
          }

          HIDWORD(v292) = v199;
          *v183.i64 = (v64 * 3.062) + 0.5;
          *v184.i64 = *v183.i64 + trunc(*v183.i64 * 2.32830644e-10) * -4294967300.0;
          v200.f64[0] = NAN;
          v200.f64[1] = NAN;
          v201 = vnegq_f64(v200);
          v184.i64[0] = vbslq_s8(v201, v184, v183).u64[0];
          if (*v183.i64 > 4294967300.0)
          {
            v183.i64[0] = v184.i64[0];
          }

          if (*v183.i64 < -4294967300.0)
          {
            *v198.i64 = -*v183.i64;
            *v183.i64 = -(*v183.i64 - trunc(*v183.i64 * -2.32830644e-10) * -4294967300.0);
            v183 = vbslq_s8(v201, v183, v198);
            *v183.i64 = -*v183.i64;
          }

          if (*v183.i64 < 0.0)
          {
            v202 = --*v183.i64;
          }

          else
          {
            v202 = *v183.i64;
          }

          DWORD2(v294) = v202;
          *v152.i64 = ((*&BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT * v64) / 10.0) + 0.5;
          *v183.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
          v203 = vbslq_s8(v201, v183, v152);
          if (*v152.i64 > 4294967300.0)
          {
            v152.i64[0] = v203.i64[0];
          }

          if (*v152.i64 < -4294967300.0)
          {
            *v203.i64 = -*v152.i64;
            *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
            v204.f64[0] = NAN;
            v204.f64[1] = NAN;
            *v152.i64 = -*vbslq_s8(vnegq_f64(v204), v152, v203).i64;
          }

          if (*v152.i64 < 0.0)
          {
            v205 = --*v152.i64;
          }

          else
          {
            v205 = *v152.i64;
          }

          HIDWORD(v294) = v205;
          v206 = (*(*v288 + 48))(v288);
          v207 = (*(*v206 + 48))(v206);
          (*(*v207 + 104))(v207, v285, &v291);
          goto LABEL_342;
        }

        if (v160 == 805306385)
        {
          v152.i32[0] = 1065915253;
          goto LABEL_320;
        }

        goto LABEL_311;
      }

      *v174.i64 = -*v152.i64;
      *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
      v188.f64[0] = NAN;
      v188.f64[1] = NAN;
      v183 = vnegq_f64(v188);
      v152 = vbslq_s8(v183, v152, v174);
    }

    else
    {
      *v152.i64 = (v64 * 3.59) + 0.5;
      *v175.i64 = *v152.i64 + trunc(*v152.i64 * 2.32830644e-10) * -4294967300.0;
      v189.f64[0] = NAN;
      v189.f64[1] = NAN;
      v190 = vnegq_f64(v189);
      v175 = vbslq_s8(v190, v175, v152);
      if (*v152.i64 > 4294967300.0)
      {
        v152.i64[0] = v175.i64[0];
      }

      if (*v152.i64 >= -4294967300.0)
      {
        goto LABEL_297;
      }

      *v183.i64 = -*v152.i64;
      *v152.i64 = -(*v152.i64 - trunc(*v152.i64 * -2.32830644e-10) * -4294967300.0);
      v152 = vbslq_s8(v190, v152, v183);
    }

    *v152.i64 = -*v152.i64;
    goto LABEL_297;
  }

LABEL_342:
  BlueFin::GlMeSrdTransaction::Complete(v285);
  if ((((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) == 0x30000012 || ((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) == 0x30000014) && ((*(**(a1 + 16) + 48))(*(a1 + 16)) & 1) == 0)
  {
    v208 = (*(*a2 + 80))(a2);
    v209 = *(a1 + 102);
    *(a1 + 102) = v209 + 1;
    v291 = BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck;
    *&v292 = a1;
    BYTE8(v292) = v209;
    *(&v292 + 9) = 1;
    *&v293 = v208;
    DWORD2(v293) = 0;
    WORD6(v293) = 0;
    (*(*v208 + 16))(v208, 1);
    v210 = (*(**(a1 + 8) + 136))(*(a1 + 8));
    memcpy(__dst, *(v210 + 64), 0x18CuLL);
    v211 = (*(*v293 + 48))(v293);
    v212 = (*(*v211 + 48))(v211);
    (*(*v212 + 152))(v212, &v291, __dst);
    BlueFin::GlMeSrdTransaction::Complete(&v291);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v291);
  }

  v213 = (*(**(a1 + 8) + 200))(*(a1 + 8));
  v282 = v213 - 1;
  if (v213 != 1)
  {
    v214 = 0;
    v215.f64[0] = NAN;
    v215.f64[1] = NAN;
    v284 = vnegq_f64(v215);
    while (1)
    {
      v216 = v282 - v214 >= 28 ? 28 : v282 - v214;
      v217 = (*(*a2 + 80))(a2);
      v218 = *(a1 + 102);
      *(a1 + 102) = v218 + 1;
      __dst[0] = BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck;
      __dst[1] = a1;
      LOBYTE(__dst[2]) = v218;
      *(&__dst[2] + 1) = 1;
      __dst[3] = v217;
      LODWORD(__dst[4]) = 0;
      WORD2(__dst[4]) = 0;
      (*(*v217 + 16))(v217, 1);
      v219 = v214 + v216;
      if (((v214 + v216) & 0x100) == 0)
      {
        break;
      }

LABEL_433:
      BlueFin::GlMeSrdTransaction::Complete(__dst);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(__dst);
      v214 = v219;
      if (v282 <= v219)
      {
        goto LABEL_434;
      }
    }

    while (1)
    {
      v220 = (*(**(a1 + 8) + 240))(*(a1 + 8), v214);
      v221 = v220;
      v222 = *(v220 + 5);
      if (v222 == 4092 || v222 == 2046 || v222 == 10230)
      {
        v222 = 1023;
      }

      if (v222 == 310)
      {
        v225 = 31;
      }

      else
      {
        v225 = v222;
      }

      if (v222 == 372)
      {
        v226 = 93;
      }

      else
      {
        v226 = v225;
      }

      v227 = (((v226 - ((2115 * v226) >> 16)) >> 1) + ((2115 * v226) >> 16)) >> 4;
      v228 = v226 == 16 || v226 == 32;
      v229 = v226 >> 3;
      if (v228)
      {
        v230 = v229;
      }

      else
      {
        v230 = v227;
      }

      LOWORD(v291) = *v220;
      if ((*(**(a1 + 16) + 1184))(*(a1 + 16)) == *v220)
      {
        BYTE1(v291) |= 7u;
      }

      v233 = *(v221 + 12);
      if ((v233 & 0x100) != 0)
      {
        BYTE1(v291) |= 4u;
        if ((v233 & 2) == 0)
        {
LABEL_376:
          if ((v233 & 0x80) == 0)
          {
            goto LABEL_377;
          }

          goto LABEL_421;
        }
      }

      else if ((v233 & 2) == 0)
      {
        goto LABEL_376;
      }

      BYTE1(v291) |= 1u;
      if ((v233 & 0x80) == 0)
      {
LABEL_377:
        if ((v233 & 0x400) == 0)
        {
          goto LABEL_379;
        }

LABEL_378:
        BYTE1(v291) |= 8u;
        goto LABEL_379;
      }

LABEL_421:
      BYTE1(v291) |= 2u;
      if ((v233 & 0x400) != 0)
      {
        goto LABEL_378;
      }

LABEL_379:
      v234 = *(v221 + 4);
      if (v234 >= 0x1000)
      {
        v278 = "rSpParam.usNumNonCohSum <= 4095";
        v279 = 244;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 244, "ProgramSearchParameters", "rSpParam.usNumNonCohSum <= 4095");
        goto LABEL_455;
      }

      *v231.i64 = (v221[1] * 1000.0) + 0.5;
      *v232.i64 = *v231.i64 + trunc(*v231.i64 * 2.32830644e-10) * -4294967300.0;
      v235 = vbslq_s8(v284, v232, v231);
      if (*v231.i64 > 4294967300.0)
      {
        v231.i64[0] = v235.i64[0];
      }

      if (*v231.i64 < -4294967300.0)
      {
        *v235.i64 = -*v231.i64;
        *v231.i64 = -(*v231.i64 - trunc(*v231.i64 * -2.32830644e-10) * -4294967300.0);
        v231 = vbslq_s8(v284, v231, v235);
        *v231.i64 = -*v231.i64;
      }

      v236 = 0;
      if (*v231.i64 < 0.0)
      {
        v237 = --*v231.i64;
      }

      else
      {
        LOBYTE(v237) = *v231.i64;
      }

      v238 = v237 & 0x1F;
      BYTE2(v291) = BYTE2(v291) & 0xE0 | v237 & 0x1F;
      v239 = *(v221 + 28);
      while (byte_298A37A18[v236] != v239)
      {
        if (++v236 == 6)
        {
          v278 = "0";
          v279 = 335;
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 335, "GetEswFocalPhaseStepIndex", "0");
          goto LABEL_455;
        }
      }

      BYTE2(v291) = v238 | (32 * v236);
      WORD2(v291) = v234;
      BYTE6(v291) = *(v221 + 12);
      *v231.i64 = v221[4] + 0.5;
      *v235.i64 = *v231.i64 + trunc(*v231.i64 * 2.32830644e-10) * -4294967300.0;
      v240 = vbslq_s8(v284, v235, v231);
      if (*v231.i64 > 4294967300.0)
      {
        v231.i64[0] = v240.i64[0];
      }

      if (*v231.i64 < -4294967300.0)
      {
        *v240.i64 = -*v231.i64;
        *v231.i64 = -(*v231.i64 - trunc(*v231.i64 * -2.32830644e-10) * -4294967300.0);
        v231 = vbslq_s8(v284, v231, v240);
        *v231.i64 = -*v231.i64;
      }

      *v240.i64 = -*v231.i64;
      if (*v231.i64 < 0.0)
      {
        v241 = --*v231.i64;
      }

      else
      {
        LOWORD(v241) = *v231.i64;
      }

      LOWORD(v292) = v241;
      if (v230 == 33)
      {
        v242 = 0;
      }

      else
      {
        v242 = v230 & 0xF;
      }

      v243 = v239 == 0;
      v244 = (8 * v233) & 0x20;
      if (!v243)
      {
        v244 = 64;
      }

      BYTE2(v292) = v242 | (v243 << 7) | v244 | (16 * (*(v221 + 13) == 4));
      *v231.i32 = v221[5] * 256.0;
      *v240.i32 = *v231.i32 + (truncf(*v231.i32 * 2.3283e-10) * -4295000000.0);
      v245.i64[0] = 0x8000000080000000;
      v245.i64[1] = 0x8000000080000000;
      v246 = vbslq_s8(v245, v240, v231);
      if (*v231.i32 > 4295000000.0)
      {
        v231.i32[0] = v246.i32[0];
      }

      if (*v231.i32 < -4295000000.0)
      {
        *v246.i32 = -*v231.i32;
        *v231.i32 = -(*v231.i32 - (truncf(*v231.i32 * -2.3283e-10) * -4295000000.0));
        *v231.i32 = -*vbslq_s8(v245, v231, v246).i32;
      }

      if (*v231.i32 < 0.0)
      {
        v247 = --*v231.i32;
      }

      else
      {
        v247 = *v231.i32;
      }

      WORD2(v292) = v247;
      v248 = (v247 & 0xFFFFFFF8) + 8;
      v249 = (v233 << 31 >> 31) & v248;
      if ((v233 & 8) != 0)
      {
        LOWORD(v249) = 0;
      }

      WORD3(v292) = v249 & 0xFFFE | v233 & 1;
      if ((v233 & 0x40) != 0)
      {
        WORD2(v292) = -1;
        WORD3(v292) = v248 | 1;
      }

      BYTE8(v292) = *(v221 + 13);
      BYTE9(v292) = BYTE9(v292) & 0xF0 | v221[9] & 0xF;
      if ((*(**(a1 + 16) + 520))(*(a1 + 16)))
      {
        v250 = v221[8] * 256.0;
        v251 = 0.5;
        if (v250 <= 0.0 && (v251 = -0.5, v250 >= 0.0))
        {
          v252 = 0;
        }

        else
        {
          v252 = (v250 + v251);
          if ((v252 & 0x80000000) != 0)
          {
            v278 = "slXcorrRatio >= 0";
            v279 = 277;
            DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 277, "ProgramSearchParameters", "slXcorrRatio >= 0");
            goto LABEL_455;
          }
        }

        v254 = *(v221 + 12);
        if ((v254 & 0x200) != 0)
        {
          v253 = WORD5(v292) | 0x3FF;
        }

        else
        {
          if (v252 >= 0x3FF)
          {
            LOWORD(v252) = 1023;
          }

          v253 = WORD5(v292) & 0xFC00 | v252;
        }
      }

      else
      {
        v253 = WORD5(v292) | 0x3FF;
        v254 = *(v221 + 12);
      }

      WORD5(v292) = (v254 << 6) & 0xC00 | v253 & 0xF3FF;
      if ((BYTE9(v292) & 0xF) != 0)
      {
        v278 = "otSpParam.xcorr_check_threshold == 0";
        v279 = 309;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 309, "ProgramSearchParameters", "otSpParam.xcorr_check_threshold == 0");
        goto LABEL_455;
      }

      v255 = v291;
      if (v255 >= (*(**(a1 + 16) + 432))(*(a1 + 16)))
      {
        v278 = "otSpParam.sp_id < m_rAsicConfigIfc.GetMaxSearchParamIndex()";
        v279 = 311;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 311, "ProgramSearchParameters", "otSpParam.sp_id < m_rAsicConfigIfc.GetMaxSearchParamIndex()");
LABEL_455:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v279, v278);
      }

      v256 = (*(*__dst[3] + 48))(__dst[3]);
      v257 = (*(*v256 + 48))(v256);
      (*(*v257 + 16))(v257, __dst, &v291);
      if (++v214 > v219)
      {
        goto LABEL_433;
      }
    }
  }

LABEL_434:
  v258 = (*(**(a1 + 8) + 208))(*(a1 + 8));
  v259 = v258 - 1;
  if (v258 != 1)
  {
    v260 = 0;
    do
    {
      if (v259 - v260 >= 100)
      {
        v261 = 100;
      }

      else
      {
        v261 = v259 - v260;
      }

      v262 = (*(*a2 + 80))(a2);
      v263 = *(a1 + 102);
      *(a1 + 102) = v263 + 1;
      __dst[0] = BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck;
      __dst[1] = a1;
      LOBYTE(__dst[2]) = v263;
      *(&__dst[2] + 1) = 1;
      __dst[3] = v262;
      LODWORD(__dst[4]) = 0;
      WORD2(__dst[4]) = 0;
      (*(*v262 + 16))(v262, 1);
      v264 = v260;
      v260 += v261;
      if (v264 <= (v264 + v261))
      {
        while (1)
        {
          v265 = (*(**(a1 + 8) + 256))(*(a1 + 8), v264);
          LOWORD(v291) = *v265;
          v266 = v291;
          v267.i32[0] = *(v265 + 2);
          v268 = vmovl_u8(v267).u64[0];
          v269 = vuzp1_s16(v268, vext_s8(v268, v268, 6uLL));
          *(&v291 + 2) = vuzp1_s8(v269, v269).u32[0];
          if (v266 >= (*(**(a1 + 16) + 440))(*(a1 + 16)))
          {
            v276 = "otBsParam.bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()";
            v277 = 1179;
            DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1179, "ProgramBinningSteps", "otBsParam.bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()");
            goto LABEL_454;
          }

          v270 = BYTE1(v291);
          if (v270 >= (*(**(a1 + 16) + 432))(*(a1 + 16)))
          {
            v276 = "otBsParam.sp_id < m_rAsicConfigIfc.GetMaxSearchParamIndex()";
            v277 = 1180;
            DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1180, "ProgramBinningSteps", "otBsParam.sp_id < m_rAsicConfigIfc.GetMaxSearchParamIndex()");
            goto LABEL_454;
          }

          v271 = BYTE3(v291);
          if (v271 >= (*(**(a1 + 16) + 440))(*(a1 + 16)))
          {
            break;
          }

          v272 = BYTE4(v291);
          if (v272 >= (*(**(a1 + 16) + 440))(*(a1 + 16)))
          {
            v276 = "otBsParam.fail_bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()";
            v277 = 1182;
            DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1182, "ProgramBinningSteps", "otBsParam.fail_bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()");
LABEL_454:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v277, v276);
          }

          v273 = (*(*__dst[3] + 48))(__dst[3]);
          v274 = (*(*v273 + 48))(v273);
          (*(*v274 + 24))(v274, __dst, &v291);
          if (v260 + 1 == ++v264)
          {
            goto LABEL_445;
          }
        }

        v276 = "otBsParam.det_bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()";
        v277 = 1181;
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1181, "ProgramBinningSteps", "otBsParam.det_bs_id < m_rAsicConfigIfc.GetMaxBinningStepIndex()");
        goto LABEL_454;
      }

LABEL_445:
      BlueFin::GlMeSrdTransaction::Complete(__dst);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(__dst);
    }

    while (v259 > v260);
  }

  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v285);
  v275 = *MEMORY[0x29EDCA608];
}

void sub_298985D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdReceiverParametersProgrammer::GetDutyCycleEswPowerThreshold(BlueFin::GlMeSrdReceiverParametersProgrammer *this, float a2, unsigned int *a3, unsigned __int16 *a4, unsigned __int8 *a5)
{
  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(this, 0, 1, a2, 0.005, 0.0625);
  *v11.i32 = *v10.i32 + (truncf(*v10.i32 * 2.3283e-10) * -4295000000.0);
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v13 = vbslq_s8(v12, v11, v10);
  if (*v10.i32 > 4295000000.0)
  {
    v10.i32[0] = v13.i32[0];
  }

  if (*v10.i32 < -4295000000.0)
  {
    *v13.i32 = -*v10.i32;
    *v10.i32 = -(*v10.i32 - (truncf(*v10.i32 * -2.3283e-10) * -4295000000.0));
    *v10.i32 = -*vbslq_s8(v12, v10, v13).i32;
  }

  if (*v10.i32 < 0.0)
  {
    v14 = --*v10.i32;
  }

  else
  {
    v14 = *v10.i32;
  }

  *a3 = v14;
  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(this, 0, 1, a2, 0.01, 0.0625);
  *v16.i32 = *v15.i32 + (truncf(*v15.i32 * 2.3283e-10) * -4295000000.0);
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = vbslq_s8(v17, v16, v15);
  if (*v15.i32 > 4295000000.0)
  {
    v15.i32[0] = v18.i32[0];
  }

  if (*v15.i32 < -4295000000.0)
  {
    *v18.i32 = -*v15.i32;
    *v15.i32 = -(*v15.i32 - (truncf(*v15.i32 * -2.3283e-10) * -4295000000.0));
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    *v15.i32 = -*vbslq_s8(v19, v15, v18).i32;
  }

  if (*v15.i32 < 0.0)
  {
    v20 = --*v15.i32;
  }

  else
  {
    v20 = *v15.i32;
  }

  a3[1] = v20;
  BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(this, 0, 1, a2, 0.02, 0.0625);
  *v23.i32 = *v21.i32 + (truncf(*v21.i32 * 2.3283e-10) * -4295000000.0);
  v24.i64[0] = 0x8000000080000000;
  v24.i64[1] = 0x8000000080000000;
  LODWORD(v25) = vbslq_s8(v24, v23, v21).u32[0];
  if (*v21.i32 > 4295000000.0)
  {
    *v21.i32 = v25;
  }

  if (*v21.i32 < -4295000000.0)
  {
    *v22.i32 = -*v21.i32;
    *v21.i32 = -(*v21.i32 - (truncf(*v21.i32 * -2.3283e-10) * -4295000000.0));
    *v21.i32 = -*vbslq_s8(v24, v21, v22).i32;
  }

  if (*v21.i32 < 0.0)
  {
    v26 = --*v21.i32;
  }

  else
  {
    v26 = *v21.i32;
  }

  a3[2] = v26;
  if ((*(**(this + 2) + 608))())
  {
    v27 = __exp10f(a2 / 10.0) * 0.001;
    v28 = v27 * 16.0;
    v29 = 0.5;
    if (v28 <= 0.0 && (v29 = -0.5, v28 >= 0.0))
    {
      LOWORD(v30) = 0;
    }

    else
    {
      v30 = (v29 + v28);
      if ((v30 & 0x80000000) != 0)
      {
        v31 = "slSnrAt1MsCohQ4 >= 0";
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 805, "GetDutyCycleEswPowerThreshold", "slSnrAt1MsCohQ4 >= 0");
        v32 = 805;
LABEL_33:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v32, v31);
      }

      if (v30 >= 0x10000)
      {
        v31 = "slSnrAt1MsCohQ4 <= USHRT_MAX";
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 806, "GetDutyCycleEswPowerThreshold", "slSnrAt1MsCohQ4 <= USHRT_MAX");
        v32 = 806;
        goto LABEL_33;
      }
    }

    v33 = 1;
  }

  else
  {
    LOWORD(v30) = 0;
    v33 = 0;
  }

  *a4 = v30;
  *a5 = v33;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::ProgramCommonJobManagers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 16385;
  v17 = (*(*a3 + 72))(a3);
  v18 = (*(*a3 + 80))(a3);
  v19 = (*(*a3 + 72))(a3);
  v6 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
  v20 = v6[76];
  v21 = v6[139];
  v7 = (*(**(a2 + 24) + 48))(*(a2 + 24));
  v8 = (*(*v7 + 48))(v7);
  (*(*v8 + 32))(v8, a2, &v16);
  if ((*(a1 + 103) & 1) != 0 || (*(*a3 + 32))(a3))
  {
    v14 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1849, "ProgramCommonJobManagers", "0");
    v15 = 1849;
    goto LABEL_22;
  }

  *(a1 + 39) = xmmword_298A379B0;
  v9 = (a1 + 39);
  *(a1 + 55) = xmmword_298A379C0;
  *(a1 + 71) = xmmword_298A379D0;
  *(a1 + 87) = 1792;
  *(a1 + 89) = 0;
  *(a1 + 93) = 0;
  *(a1 + 95) = 8;
  *(a1 + 96) = 0;
  *(a1 + 100) = 256;
  if ((*(**(a1 + 16) + 808))())
  {
    *(a1 + 44) = 4;
    *(a1 + 58) = 4;
    *(a1 + 65) = 4;
    *(a1 + 79) = 3;
    *(a1 + 86) = 3;
  }

  if ((*(**(a1 + 16) + 1208))(*(a1 + 16)))
  {
    *(a1 + 63) = 27756;
  }

  v10 = 9;
  do
  {
    if (v16 == 2)
    {
      if (*v9 - 7 >= 2)
      {
        if (v9[2])
        {
          if (v9[2] < 0x1Cu)
          {
            goto LABEL_18;
          }

          v14 = "m_aotSmLimits[i].priority <= 27";
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1915, "ProgramCommonJobManagers", "m_aotSmLimits[i].priority <= 27");
          v15 = 1915;
        }

        else
        {
          v14 = "m_aotSmLimits[i].priority >= 1";
          DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1914, "ProgramCommonJobManagers", "m_aotSmLimits[i].priority >= 1");
          v15 = 1914;
        }
      }

      else
      {
        if (!v9[2])
        {
          goto LABEL_18;
        }

        v14 = "m_aotSmLimits[i].priority == 0";
        DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1919, "ProgramCommonJobManagers", "m_aotSmLimits[i].priority == 0");
        v15 = 1919;
      }

LABEL_22:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v15, v14);
    }

    if (v16 != 1)
    {
      v14 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1923, "ProgramCommonJobManagers", "0");
      v15 = 1923;
      goto LABEL_22;
    }

    if (HIBYTE(v16) >= 3u && v9[2] * HIBYTE(v16) >= 0x200)
    {
      v14 = "(GlIntU32) m_aotSmLimits[i].priority * otTmParam.hysteresis < 512";
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1908, "ProgramCommonJobManagers", "(GlIntU32) m_aotSmLimits[i].priority * otTmParam.hysteresis < 512");
      v15 = 1908;
      goto LABEL_22;
    }

LABEL_18:
    v11 = (*(**(a2 + 24) + 48))(*(a2 + 24));
    v12 = (*(*v11 + 48))(v11);
    result = (*(*v12 + 48))(v12, a2, v9);
    *(a1 + 38) = 1;
    v9 += 7;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetSniffDFThreshold(uint64_t a1, uint64_t a2, float a3)
{
  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v15, a2, 1);
  v6 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if ((*(**(a1 + 16) + 256))())
  {
    if (a2 != 4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = (*(**(a1 + 16) + 264))(*(a1 + 16));
    if (a2 != 4 || (v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
  {
    v8 = *(a1 + 8);
    v9 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v6 = (*(*v8 + 40))(v8, v9, 5, 0);
  }

LABEL_8:
  if (v17 >= 0x23Fu)
  {
    v13 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v14 = 693;
    goto LABEL_19;
  }

  if (v16 == 1)
  {
    v10 = 1500.0;
    if (v15[0] - 1 < 0x20 || v15[0] - 66 < 0xA)
    {
      goto LABEL_14;
    }
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v16 - v16 + BlueFin::GlSvId::s_aucSvId2gnss[v15[0]]])
  {
    v13 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v14 = 686;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v14, v13);
  }

  v10 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v16 - v16 + BlueFin::GlSvId::s_aucSvId2gnss[v15[0]]] * 0.001 * 1000.0;
LABEL_14:
  v11 = (16130 * (((v6 / v10) * 4.1623) * a3)) >> 15;
  if (v11 >= 0xFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return v11;
  }
}

BOOL BlueFin::GlMeTrkCvecTapConfig::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 == *a2 && v2 == *(a2 + 4);
  v4 = v3 && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10);
  if (*(a1 + 4))
  {
    v5 = (a1 + 11);
    v6 = (a2 + 11);
    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      v4 = (v7 == v9) & v4;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswTrackDelayType(uint64_t a1, int a2, int a3)
{
  v6 = *((*(**(a1 + 8) + 176))(*(a1 + 8)) + 148);
  if (v6 >= 9 || ((0x1EFu >> v6) & 1) == 0)
  {
    v19 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 3104, "GetEswTrackDelayType", "0");
    v20 = 3104;
    goto LABEL_47;
  }

  v7 = qword_298A37B30[v6];
  v8 = byte_298A37BC0[v6];
  v21 = qword_298A37B78[v6];
  v22 = byte_298A37BC9[v6];
  v9 = word_298A37BD2[v6];
  v10 = word_298A37BE4[v6];
  if (!(*(**(a1 + 16) + 328))(*(a1 + 16)))
  {
    v19 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 3195, "GetEswTrackDelayType", "0");
    v20 = 3195;
LABEL_47:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v20, v19);
  }

  v11 = (*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (v11 == 805306386)
      {
        if (a3 != 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v14 = (*(**(a1 + 16) + 184))(*(a1 + 16));
        if (a3 != 2 || (v14 & 0xF000FFFE) != 0x30000014)
        {
LABEL_25:
          if (((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) != 0x30000012)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }
      }
    }

    v12 = v8;
    v13 = v22;
    goto LABEL_34;
  }

  if (a2 == 2)
  {
    if (v11 == 805306386)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8;
      if (((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) != 0x30000014)
      {
        v13 = v22;
        if (((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) == 0x3000000E)
        {
          goto LABEL_34;
        }

LABEL_43:
        (*(**(a1 + 16) + 184))(*(a1 + 16));
        goto LABEL_34;
      }
    }

    v13 = v22;
    goto LABEL_34;
  }

  if (a2 != 3)
  {
    if (v11 != 805306386)
    {
LABEL_31:
      v12 = v8;
      if (((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) != 0x30000014)
      {
        v18 = (*(**(a1 + 16) + 184))(*(a1 + 16));
        v13 = v22;
        if ((v18 & 0xF000FFFE) == 0x3000000E)
        {
          goto LABEL_34;
        }

        goto LABEL_43;
      }

LABEL_33:
      v13 = v22;
      goto LABEL_34;
    }

LABEL_26:
    v12 = v8;
    goto LABEL_33;
  }

  if (v11 == 805306386)
  {
    v12 = v8;
LABEL_21:
    v13 = v22;
    goto LABEL_34;
  }

  v12 = v8;
  if (((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) == 0x30000014)
  {
    goto LABEL_21;
  }

  v13 = v22;
  if (((*(**(a1 + 16) + 184))(*(a1 + 16)) & 0xF000FFFE) != 0x3000000E)
  {
    goto LABEL_43;
  }

LABEL_34:
  if ((~v10 & 0xF0) != 0)
  {
    v15 = ((v9 >> 2) & 3) + 1;
  }

  else
  {
    v15 = 0;
  }

  if ((~v10 & 0xF) != 0)
  {
    v16 = (v9 & 3) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (((v9 >> 4) & 3) + v15 + v16 + v13 != v12)
  {
    v19 = "num_taps == (otTrackTap.delay_number+1)";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 3203, "GetEswTrackDelayType", "num_taps == (otTrackTap.delay_number+1)");
    v20 = 3203;
    goto LABEL_47;
  }

  return v21 | (v12 << 48) | (v13 << 40) | (v9 << 16) | v10;
}