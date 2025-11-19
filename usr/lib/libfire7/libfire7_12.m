void sub_29887F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

unint64_t BlueFin::GlMeSrdSharedSatSearchMgr::ProcessPending(BlueFin::GlMeSrdSharedSatSearchMgr *this)
{
  BlueFin::GlSvIdSet::operator~(this + 32, &v57);
  BlueFin::GlSetBase::GlSetBase(&v50, v52, 8u, this + 10);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v50, &v53, &v57);
  BlueFin::GlSetBase::operator=(&v50, &v53);
  v52[0] = v55;
  v52[1] = v56;
  v2 = v50;
  v3 = *v50;
  if (!*v50)
  {
    if (v51 < 2uLL)
    {
      goto LABEL_23;
    }

    v13 = v51 - 1;
    v14 = v50 + 1;
    while (!*v14++)
    {
      if (!--v13)
      {
        goto LABEL_23;
      }
    }
  }

  LOBYTE(v53) = *(this + 136);
  memcpy(&v54, *(this + 16), 4 * v53);
  WORD1(v53) = 0;
  BYTE1(v53) = 0;
  HIDWORD(v53) = v54;
  BlueFin::GlSetIterator::operator++(&v53);
  if (BYTE1(v53) == v53)
  {
    if (v3)
    {
LABEL_4:
      v4 = "otSvidStopScan.IsEmpty()";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 257, "RemoveSvidFromScan", "otSvidStopScan.IsEmpty()");
      v5 = 257;
      goto LABEL_73;
    }
  }

  else
  {
    do
    {
      v2 = v50;
      if (!*v50)
      {
        if (v51 < 2uLL)
        {
          goto LABEL_14;
        }

        v7 = v51 - 1;
        v8 = v50 + 1;
        while (!*v8++)
        {
          if (!--v7)
          {
            goto LABEL_14;
          }
        }
      }

      v6 = BYTE2(v53);
      BlueFin::GlMeSrdSatMgr::GetSvid(*(this + 2), BYTE2(v53), &v57);
      if ((*(v50 + ((v57 >> 3) & 0x1C)) >> (v57 & 0x1F)))
      {
        BlueFin::GlSetBase::Remove(&v50, v57);
        BlueFin::GlMeSrdSearchMgrBase::StopSat(this, v6);
      }

      BlueFin::GlSetIterator::operator++(&v53);
    }

    while (BYTE1(v53) != v53);
    v2 = v50;
    if (*v50)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  if (v51 >= 2uLL)
  {
    v10 = v51 - 1;
    v11 = v2 + 1;
    do
    {
      if (*v11++)
      {
        goto LABEL_4;
      }
    }

    while (--v10);
  }

LABEL_23:
  if (*(this + 416) == 1)
  {
    BlueFin::GlSvIdSet::operator~(this + 40, &v47);
    v16 = BlueFin::GlSetBase::GlSetBase(&v57, &v59, 8u, this + 32);
    v53 = &v55;
    LOBYTE(v54) = 8;
    v55 = 0u;
    v56 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v16, &v53, &v47);
    BlueFin::GlSetBase::operator=(&v57, &v53);
    v59 = v55;
    v60 = v56;
    BlueFin::GlSetBase::operator|=(this + 368, &v57);
  }

  BlueFin::GlSetBase::operator=(this + 320, this + 256);
  v17 = *(this + 284);
  *(this + 332) = *(this + 268);
  *(this + 348) = v17;
  BlueFin::GlSetBase::operator&=(this + 368, this + 320);
  BlueFin::GlSetBase::operator&=(this + 424, this + 320);
  BlueFin::GlMeSrdSharedSatSearchMgr::StopSats(this, *(this + 20), *(this + 168), 1);
  v18 = *(this + 24);
  if (!*v18)
  {
    v19 = *(this + 200);
    if (v19 < 2)
    {
      goto LABEL_39;
    }

    v20 = v19 - 1;
    v21 = v18 + 1;
    while (!*v21++)
    {
      if (!--v20)
      {
        goto LABEL_39;
      }
    }
  }

  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 2), this + 192, &v57);
  BlueFin::GlMeSrdSharedSatSearchMgr::StopSats(this, *(this + 24), *(this + 200), 0);
  BlueFin::GlMeSrdSharedSatSearchMgr::AddSvidToScan(this, &v57);
  if (*v57)
  {
LABEL_27:
    LOBYTE(v53) = v58;
    memcpy(&v54, v57, 4 * v58);
    WORD1(v53) = 0;
    BYTE1(v53) = 0;
    HIDWORD(v53) = v54;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&v53);
      if (BYTE1(v53) == v53)
      {
        break;
      }

      BlueFin::GlMeSrdSharedSatSearchMgr::MarkSvidAsScanned(this, BYTE2(v53));
    }

    goto LABEL_39;
  }

  if (v58 >= 2u)
  {
    v23 = v58 - 1;
    v24 = v57 + 1;
    do
    {
      if (*v24++)
      {
        goto LABEL_27;
      }
    }

    while (--v23);
  }

LABEL_39:
  if (*(this + 416) == 1)
  {
    goto LABEL_76;
  }

  v26 = *(this + 40);
  if (!*v26)
  {
    v33 = *(this + 328);
    v34 = v33 > 1;
    v35 = v33 - 1;
    if (!v34)
    {
      goto LABEL_57;
    }

    v36 = v26 + 1;
    do
    {
      if (*v36++)
      {
        break;
      }

      --v35;
    }

    while (v35);
  }

  v27 = BlueFin::GlSetBase::GlSetBase(&v57, &v59, 8u, this + 46);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(v27, &v53, this + 10);
  BlueFin::GlSetBase::operator=(&v57, &v53);
  v59 = v55;
  v60 = v56;
  if (BlueFin::GlSetBase::operator==(this + 320, &v57))
  {
    v28 = *(this + 53);
    if (!*v28)
    {
      v29 = *(this + 432);
      if (v29 < 2)
      {
LABEL_49:
        *(this + 416) = 1;
        (*(**(this + 38) + 16))(*(this + 38), this);
        goto LABEL_57;
      }

      v30 = v29 - 1;
      v31 = v28 + 1;
      while (!*v31++)
      {
        if (!--v30)
        {
          goto LABEL_49;
        }
      }
    }

    v4 = "m_otSvidNextRotationScanned.IsEmpty()";
    DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 139, "UpdateRotationStatus", "m_otSvidNextRotationScanned.IsEmpty()");
    v5 = 139;
LABEL_73:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_shared_sat_search_mgr.cpp", v5, v4);
  }

  if (*(this + 416))
  {
LABEL_76:
    if (BlueFin::GlSetBase::operator==(this + 320, this + 368))
    {
      *(this + 416) = 0;
      bzero(*(this + 46), ((4 * *(this + 376) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      BlueFin::GlSetBase::Add(this + 368, this + 53);
      bzero(*(this + 53), ((4 * *(this + 432) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      ++*(this + 118);
      (*(**(this + 38) + 24))(*(this + 38), this);
    }
  }

LABEL_57:
  if (!BlueFin::GlSetBase::operator==(this + 320, this + 256))
  {
    BlueFin::GlSetBase::operator&=(this + 320, this + 256);
    BlueFin::GlSetBase::operator&=(this + 368, this + 320);
    BlueFin::GlSetBase::operator&=(this + 424, this + 320);
  }

  BlueFin::GlSvIdSet::operator~(this + 46, &v45);
  BlueFin::GlSetBase::GlSetBase(&v47, &v48, 8u, this + 40);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v47, &v53, &v45);
  BlueFin::GlSetBase::operator=(&v47, &v53);
  v48 = v55;
  v49 = v56;
  BlueFin::GlSvIdSet::operator~(this + 10, v44);
  v38 = BlueFin::GlSetBase::GlSetBase(&v57, &v59, 8u, &v47);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v38, &v53, v44);
  BlueFin::GlSetBase::operator=(&v57, &v53);
  v59 = v55;
  v60 = v56;
  if (*(this + 416) == 1)
  {
    if (*v57)
    {
LABEL_71:
      v4 = "otSvidToStart.IsEmpty()";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 104, "ProcessPending", "otSvidToStart.IsEmpty()");
      v5 = 104;
      goto LABEL_73;
    }

    if (v58 >= 2uLL)
    {
      v39 = v58 - 1;
      v40 = v57 + 1;
      do
      {
        if (*v40++)
        {
          goto LABEL_71;
        }
      }

      while (--v39);
    }

    BlueFin::GlSvIdSet::operator~(this + 53, v44);
    BlueFin::GlSetBase::GlSetBase(&v45, v46, 8u, this + 40);
    v53 = &v55;
    LOBYTE(v54) = 8;
    v55 = 0u;
    v56 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v45, &v53, v44);
    BlueFin::GlSetBase::operator=(&v45, &v53);
    v46[0] = v55;
    v46[1] = v56;
    BlueFin::GlSvIdSet::operator~(this + 10, v43);
    BlueFin::GlSetBase::GlSetBase(&v47, &v48, 8u, &v45);
    v53 = &v55;
    LOBYTE(v54) = 8;
    v55 = 0u;
    v56 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v47, &v53, v43);
    BlueFin::GlSetBase::operator=(&v47, &v53);
    v48 = v55;
    v49 = v56;
    BlueFin::GlSetBase::operator=(&v57, &v47);
    v59 = v48;
    v60 = v49;
  }

  result = BlueFin::GlMeSrdSharedSatSearchMgr::AddSvidToScan(this, &v57);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  return result;
}

unsigned int *BlueFin::GlStream::CarpPutBits(unsigned int *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!a3)
  {
    v11 = "ulNumBits > 0";
    DeviceFaultNotify("glutl_stream.cpp", 433, "CarpPutBits", "ulNumBits > 0");
    v12 = 433;
    goto LABEL_28;
  }

  if (a3 > a4)
  {
    v11 = "ulNumBits <= ulNumBitsInWord";
    DeviceFaultNotify("glutl_stream.cpp", 434, "CarpPutBits", "ulNumBits <= ulNumBitsInWord");
    v12 = 434;
    goto LABEL_28;
  }

  if (a4 > 0x20 || ((1 << a4) & 0x100010100) == 0)
  {
    v11 = "ulNumBitsInWord==NUM_BITS_PER_BYTE*2 || ulNumBitsInWord==NUM_BITS_PER_BYTE*4 || ulNumBitsInWord==NUM_BITS_PER_BYTE";
    DeviceFaultNotify("glutl_stream.cpp", 435, "CarpPutBits", "ulNumBitsInWord==NUM_BITS_PER_BYTE*2 || ulNumBitsInWord==NUM_BITS_PER_BYTE*4 || ulNumBitsInWord==NUM_BITS_PER_BYTE");
    v12 = 435;
    goto LABEL_28;
  }

  if (this[6] || this[7])
  {
    goto LABEL_16;
  }

  this[6] = 7;
  this[7] = a4;
  v4 = *this;
  if (a4 == 16)
  {
    if (v4 + 1 < this[4])
    {
      v5 = this + 2;
      *(*(this + 1) + v4) = 0;
      v4 = *this + 1;
      goto LABEL_15;
    }

    v11 = "m_uiOffset+1 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 461, "CarpPutBits", "m_uiOffset+1 < m_uiMaxOffset");
    v12 = 461;
LABEL_28:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v12, v11);
  }

  if (a4 != 8)
  {
    if (v4 + 3 < this[4])
    {
      v5 = this + 2;
      *(*(this + 1) + v4) = 0;
      *(*(this + 1) + *this + 1) = 0;
      *(*(this + 1) + *this + 2) = 0;
      v4 = *this + 3;
      goto LABEL_15;
    }

    v11 = "m_uiOffset+3 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 467, "CarpPutBits", "m_uiOffset+3 < m_uiMaxOffset");
    v12 = 467;
    goto LABEL_28;
  }

  if (v4 >= this[4])
  {
    v11 = "m_uiOffset+0 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 456, "CarpPutBits", "m_uiOffset+0 < m_uiMaxOffset");
    v12 = 456;
    goto LABEL_28;
  }

  v5 = this + 2;
LABEL_15:
  *(*v5 + v4) = 0;
LABEL_16:
  v6 = a3 - 1;
  do
  {
    if ((v6 & 0x80000000) != 0)
    {
      v11 = "slShiftVal >= 0";
      DeviceFaultNotify("glutl_stream.cpp", 479, "CarpPutBits", "slShiftVal >= 0");
      v12 = 479;
      goto LABEL_28;
    }

    v7 = *this;
    if (v7 >= this[4])
    {
      v11 = "m_uiOffset < m_uiMaxOffset";
      DeviceFaultNotify("glutl_stream.cpp", 484, "CarpPutBits", "m_uiOffset < m_uiMaxOffset");
      v12 = 484;
      goto LABEL_28;
    }

    *(*(this + 1) + v7) |= ((a2 >> v6) & 1) << this[6];
    v8 = this[6];
    if (v8)
    {
      v9 = v8 - 1;
    }

    else
    {
      ++*this;
      v9 = 7;
    }

    v10 = this[7] - 1;
    this[6] = v9;
    this[7] = v10;
    --v6;
  }

  while (v6 != -1);
  if (!v10)
  {
    this[6] = 0;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdPacketManager::StartPacket(uint64_t this)
{
  if (*(this + 13872) == 1)
  {
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 564, "StartPacket", "!m_bPacketStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", 564, "!m_bPacketStarted");
  }

  *(this + 13872) = 1;
  *(this + 6515) = BlueFin::GlUtlCrc::ucCrcTable[*(this + 6515)];
  if (*(this + 6517) == 1)
  {
    if (!*(this + 6518))
    {
      v2 = (this + 6504);
      v3 = *(this + 6504);
      *(this + 6504) = v3 + 1;
      *v3 = -32;
      v1 = 3;
      goto LABEL_8;
    }

    if (!*(this + 6519))
    {
      v2 = (this + 6504);
      v4 = *(this + 6504);
      *(this + 6504) = v4 + 1;
      *v4 = -32;
      v1 = 4;
      goto LABEL_8;
    }
  }

  v1 = 0;
  v2 = (this + 6504);
LABEL_8:
  v5 = (*v2)++;
  *v5 = v1;
  return this;
}

uint64_t BlueFin::EswRpcEnc::GetEswJdRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_sm_set_limits(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v20 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v18, v19, 1800, v8);
  BlueFin::GlStream::PutU08(v18, v5);
  if (v5)
  {
    v5 = v5;
    v9 = (a4 + 3);
    while (1)
    {
      v10 = *(v9 - 3);
      if (v10 >= (*(**(a1 + 8) + 448))(*(a1 + 8)))
      {
        break;
      }

      BlueFin::GlStream::PutU08(v18, *(v9 - 3));
      BlueFin::GlStream::PutU08(v18, *(v9 - 2));
      BlueFin::GlStream::PutU08(v18, *(v9 - 1));
      BlueFin::GlStream::CarpPutBits(v18, *v9 & 0xF, 4u, 8u);
      v11 = *v9;
      v9 += 4;
      BlueFin::GlStream::CarpPutBits(v18, v11 >> 4, 4u, 8u);
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v16 = "array_sm_limits_ptr[i].sm_id < m_rAsicConfigIfc.GetMaxSearchManagerIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 868, "esw_jd_rpc_sm_set_limits", "array_sm_limits_ptr[i].sm_id < m_rAsicConfigIfc.GetMaxSearchManagerIndex()");
    v17 = 868;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v17, v16);
  }

LABEL_5:
  Offset = BlueFin::GlStream::GetOffset(v18);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0xAu, v19, Offset);
  v13 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v13)
  {
    v16 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 878, "esw_jd_rpc_sm_set_limits", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v17 = 878;
    goto LABEL_8;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeAlmMgr::ChooseInitialOppPairs(BlueFin::GlPeAlmMgr *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x29EDCA608];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  BlueFin::GlPeAlmMgr::Alm2Plane(a1, a2, a3, a4, a5, a6, a7, a8, v50, v51, v52, SHIDWORD(v52), v54, HIDWORD(v54), a2);
  v10 = 20;
  for (i = 1; i != 7; ++i)
  {
    if (((**a3 >> i) & 1) == 0)
    {
      v53 = i;
      v55 = v10;
      v12 = i - 1;
      *v59 = v61;
      v60 = 8;
      memset(v61, 0, 32);
      v13 = *(a1 + 4588);
      v14 = v13 + (v12 << 6);
      v15 = *(v14 + 40);
      if (*(v14 + 40))
      {
        v16 = 0;
        v17 = 0;
        v18 = (v13 + v10);
        v19 = -1;
        v20 = 1;
        v21 = -1;
        do
        {
          v22 = v16 + 1;
          if (v16 + 1 < v15)
          {
            v23 = v18;
            v24 = v20;
            do
            {
              v25 = *v23++;
              v26 = (*(v14 + 16 + 4 * v16) - v25);
              v27 = v26 / 360.0;
              if (v26 / 360.0 <= 0.0)
              {
                v28 = 0.0;
                if (v26 / 360.0 < 0.0)
                {
                  v28 = ceil(v27 + -0.5);
                }
              }

              else
              {
                v28 = floor(v27 + 0.5);
              }

              v29 = fabs(v26 + v28 * -360.0);
              if (v21 == -1 || v17 < v29)
              {
                v21 = v16;
                v19 = v24;
                v17 = v29;
              }

              ++v24;
            }

            while (v15 != v24);
          }

          ++v20;
          ++v18;
          ++v16;
        }

        while (v22 != v15);
        if (v21 == -1)
        {
          v33 = 0;
        }

        else
        {
          v32 = *(*(v14 + 8) + v21);
          *(v62 + 6 * v12) = v32;
          v33 = 1;
          *&v61[(v32 >> 3) & 0x1C] |= 1 << v32;
        }

        if (v19 == -1)
        {
          v34 = 0;
        }

        else
        {
          v35 = *(*(v14 + 8) + v19);
          *((v62 + 6 * v12) | v33) = v35;
          *&v61[(v35 >> 3) & 0x1C] |= 1 << v35;
          ++v33;
          v34 = v19 + 1;
        }
      }

      else
      {
        v34 = 0;
        v33 = 0;
        v21 = -1;
      }

      if (v33 < v15)
      {
        v36 = v21 + 1;
        do
        {
          BlueFin::GlPeAlmMgr::GetNextSvId(&v58, a1, *v59, v12, (v36 + v15) % v15);
          v15 = v58;
          *(v62 + 6 * v12 + v33) = v58;
          *(*v59 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
          v37 = v33 + 1;
          LODWORD(v15) = *(*(a1 + 4588) + (v12 << 6) + 40);
          if (v33 + 1 < v15)
          {
            BlueFin::GlPeAlmMgr::GetNextSvId(&v57, a1, *v59, v12, (v34 + v15) % v15);
            v15 = v57;
            *(v62 + 6 * v12 + v37) = v57;
            *(*v59 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
            v37 = v33 + 2;
            LODWORD(v15) = *(*(a1 + 4588) + (v12 << 6) + 40);
          }

          v33 = v37;
        }

        while (v37 < v15);
      }

      i = v53;
      v10 = v55;
    }

    v10 += 64;
  }

  v38 = 1;
  while (2)
  {
    for (j = 0; ; ++j)
    {
      v40 = j + 1;
      v41 = byte_298A3B380[j];
      if (((*(*a3 + ((v41 >> 3) & 0x1C)) >> (v41 & 0x1F)) & 1) == 0)
      {
        v42 = v41 - 1;
        v43 = *(*(a1 + 4588) + ((v41 - 1) << 6) + 40);
        if (v38 <= v43)
        {
          v44 = *(v62 + 6 * v42 + v38 - 1);
          if ((v44 - 33) >= 0xE0u)
          {
            BlueFin::GlPeAlmSvIdList::Add(v56, v44);
            if (BlueFin::GlSetBase::Cnt((v56 + 200)) == 188)
            {
              goto LABEL_48;
            }

            v43 = *(*(a1 + 4588) + (v42 << 6) + 40);
          }
        }

        if (v38 < v43)
        {
          v45 = *(v62 + 6 * v42 + v38);
          if ((v45 - 33) >= 0xE0u)
          {
            break;
          }
        }
      }

      if (v40 > 5)
      {
        goto LABEL_48;
      }

LABEL_45:
      ;
    }

    BlueFin::GlPeAlmSvIdList::Add(v56, v45);
    v46 = BlueFin::GlSetBase::Cnt((v56 + 200));
    if (v40 <= 5 && v46 != 188)
    {
      goto LABEL_45;
    }

LABEL_48:
    result = BlueFin::GlSetBase::Cnt((v56 + 200));
    if (result != 188)
    {
      v48 = v38 >= 5;
      v38 += 2;
      if (!v48)
      {
        continue;
      }
    }

    break;
  }

  v49 = *MEMORY[0x29EDCA608];
  return result;
}

char *BlueFin::GlStdLib::QsortImpl(char *this, void *a2, unsigned int a3, uint64_t (*a4)(char *, char *), int (*a5)(const void *, const void *), unsigned __int8 *a6)
{
  if (a2 >= 2)
  {
    v9 = a2;
    v10 = this;
    v11 = a3;
    v12 = -a3;
    do
    {
      v13 = &v10[v11];
      if ((a4(v10, &v10[v11]) & 0x80000000) != 0)
      {
        memcpy(a5, &v10[v11], v11);
        memcpy(&v10[v11], v10, v11);
        memcpy(v10, a5, v11);
      }

      v14 = (v9 - 1) * a3;
      v15 = &v10[v14];
      if (v14 <= a3)
      {
        v9 = 0;
        v16 = 1;
      }

      else
      {
        v9 = 0;
        v16 = 1;
        do
        {
          do
          {
            if (a4(v10, v15) > 0)
            {
              break;
            }

            v15 += v12;
            ++v9;
          }

          while (v13 < v15);
          while (v13 < v15)
          {
            if (a4(v13, v10) > 0)
            {
              memcpy(a5, v13, v11);
              memcpy(v13, v15, v11);
              memcpy(v15, a5, v11);
              break;
            }

            v13 += v11;
            v16 = (v16 + 1);
          }
        }

        while (v13 < v15);
      }

      memcpy(a5, v13, v11);
      memcpy(v13, v10, v11);
      memcpy(v10, a5, v11);
      this = BlueFin::GlStdLib::QsortImpl(v10, v16, a3, a4, a5, v17);
      v10 = &v15[v11];
    }

    while (v9 > 1);
  }

  return this;
}

uint64_t BlueFin::GlMeMsmtMgr::GetGlnsStrPhsInSym(BlueFin::GlMeMsmtMgr *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v14[0] = *a2;
  v15 = 0;
  v16 = 575;
  if (v14[0] - 189 >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[v14[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7] == 255)
    {
      v15 = -1;
    }

    else
    {
      v16 = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v14[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v7];
    }
  }

  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(a1, v14, 1, 0);
  if (result)
  {
    if ((~*(result + 84) & 0x570) != 0)
    {
      return 0;
    }

    v9 = (*(a3 + 56) - *(result + 24)) * 1000.0 * (*(a3 + 40) + 1.0);
    v10 = *(result + 48);
    if (v9 <= 0.0)
    {
      if (v9 >= 0.0)
      {
        v12 = 0;
LABEL_14:
        v13 = BlueFin::GlMeSlots::GlonassFrameMgr(result, a2);
        return BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(v13, v12 + v10, a4);
      }

      v11 = -0.5;
    }

    else
    {
      v11 = 0.5;
    }

    v12 = (v9 + v11);
    goto LABEL_14;
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::GetB1cL1cSecCodePhsInSym(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, const BlueFin::GlMeAcqWin *a3, unsigned __int16 *a4)
{
  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, a2, 1, 1);
  if (result)
  {
    if ((~*(result + 84) & 0x150) != 0)
    {
      return 0;
    }

    v9 = (*(a3 + 7) - *(result + 24)) * 1000.0 * (*(a3 + 10) + 1.0);
    if (v9 <= 0.0)
    {
      if (v9 >= 0.0)
      {
        v11 = 0;
LABEL_9:
        v12 = *a2;
        if (*a2)
        {
          v13 = *(result + 48);
          if (v12 <= 0x20)
          {
            v14 = *(this + 24);
            v15 = v12 - 1;
            if (*(v14 + v15 + 9868))
            {
              v16 = v14 + 4 * v15;
              v17 = 9900;
              goto LABEL_13;
            }

            return 0;
          }

          v25 = v12 - 66;
          if (v12 >= 0x42)
          {
            if (v12 > 0x4B)
            {
              if (v12 <= 0x8A)
              {
                v28 = *(this + 24);
                v29 = v12 - 76;
                if (*(v28 + v29 + 10080) == 1)
                {
                  v16 = v28 + 4 * v29;
                  v17 = 10144;
LABEL_13:
                  v18 = v11 + v13;
                  v19 = *(v16 + v17);
                  v20 = v11 + v13 - v19;
                  if (v11 + v13 >= v19)
                  {
                    MsPerSecFrame = BlueFin::GlSignalId::GetMsPerSecFrame(a2);
                    if (*(a2 + 4) < 0x23Fu)
                    {
                      v23 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
                      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
                      {
                        v24 = (v20 % MsPerSecFrame);
                        goto LABEL_24;
                      }

                      goto LABEL_31;
                    }
                  }

                  else
                  {
                    v21 = BlueFin::GlSignalId::GetMsPerSecFrame(a2);
                    v22 = BlueFin::GlSignalId::GetMsPerSecFrame(a2);
                    if (*(a2 + 4) < 0x23Fu)
                    {
                      v23 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
                      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
                      {
                        v24 = v21 + v18 - v19 + (v19 - v18) / v22 * v22;
LABEL_24:
                        *a4 = v24 / v23;
                        return 1;
                      }

LABEL_31:
                      v30 = "ucMsPerEpoch != 0";
                      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
                      v31 = 686;
LABEL_32:
                      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v31, v30);
                    }
                  }

                  v30 = "IsValid()";
                  DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
                  v31 = 679;
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v26 = *(this + 24);
              if (*(v26 + v25 + 10028))
              {
                v16 = v26 + 4 * v25;
                v17 = 10040;
                goto LABEL_13;
              }
            }
          }
        }

        return 0;
      }

      v10 = -0.5;
    }

    else
    {
      v10 = 0.5;
    }

    v11 = (v9 + v10);
    goto LABEL_9;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::StopSat(BlueFin::GlMeSrdSearchMgrBase *this, unsigned int a2)
{
  BlueFin::GlMeSrdSatMgr::GetSvid(*(this + 2), a2, &v6);
  if (((*(*(this + 10) + ((v6 >> 3) & 0x1C)) >> (v6 & 0x1F)) & 1) == 0 || ((*(*(this + 16) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 523, "StopSat", "m_otSetSvidInUse.Has(otSvid) && m_otSetSatIdInUse.Has(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 523, "m_otSetSvidInUse.Has(otSvid) && m_otSetSatIdInUse.Has(ucSatid)");
  }

  BlueFin::GlSetBase::Remove(this + 80, v6);
  BlueFin::GlSetBase::Remove(this + 128, a2);
  BlueFin::GlSetBase::Remove(this + 160, a2);
  BlueFin::GlSetBase::Remove(this + 192, a2);
  BlueFin::GlSetBase::Remove(this + 224, a2);
  v4 = *(this + 2);

  return BlueFin::GlMeSrdSatMgr::KillSat(v4, a2);
}

uint64_t BlueFin::GlMeSrdSatMgr::KillSat(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = 1 << (a2 & 0x1F);
  v3 = v2 & *(*(this + 15) + 4 * (a2 >> 5));
  v4 = v2 & *(*(this + 11) + 4 * (a2 >> 5));
  if (!(v3 | v4))
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 820, "KillSat", "IsSatAllocated(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 820, "IsSatAllocated(ucSatid)");
  }

  v7 = v4 == 0;
  v8 = 56;
  if (v7)
  {
    v8 = 152;
    v9 = this + 120;
  }

  else
  {
    v9 = this + 88;
  }

  *(*(this + v8) + 4 * (a2 >> 5)) |= 1 << (a2 & 0x1F);
  BlueFin::GlSetBase::Remove(v9, a2);
  *(this + 49) -= *(*(this + 786) + 52 * a2 + 5);
  BlueFin::GlSetBase::Remove(this + 360, a2);

  return BlueFin::GlSatCarrIdSet::RemoveAllCarr((this + 280), a2);
}

uint64_t BlueFin::GlMeSrdSharedSatSearchMgr::MarkSvidAsScanned(uint64_t result, unsigned __int8 a2)
{
  v2 = (*(result + 368) + 4 * (a2 >> 5));
  v3 = *v2;
  v4 = 1 << (a2 & 0x1F);
  if ((v4 & v3) != 0)
  {
    if (*(result + 416))
    {
      v2 = (*(result + 424) + 4 * (a2 >> 5));
      v3 = *v2;
      if ((v4 & v3) == 0)
      {
        goto LABEL_4;
      }

      v5 = "m_otSvidNextRotationScanned.Missing(rotSvid)";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 283, "MarkSvidAsScanned", "m_otSvidNextRotationScanned.Missing(rotSvid)");
      v6 = 283;
    }

    else
    {
      v5 = "m_bNextRotationStarted";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 282, "MarkSvidAsScanned", "m_bNextRotationStarted");
      v6 = 282;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_shared_sat_search_mgr.cpp", v6, v5);
  }

LABEL_4:
  *v2 = v3 | (1 << (a2 & 0x1F));
  return result;
}

uint64_t BlueFin::GlSatCarrIdSet::RemoveAllCarr(BlueFin::GlSatCarrIdSet *this, unsigned int a2)
{
  for (i = 0; i != 4; ++i)
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v6, a2, i);
    result = BlueFin::GlSetBase::Remove(this, (v6[0] + 100 * v6[4]));
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::CreateSatAndStartSat(uint64_t a1, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  v8 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v43 = 0;
  LOBYTE(v41) = *a4;
  for (i = 1; i != 4; ++i)
  {
    if ((*(**(a1 + 32) + 352))(*(a1 + 32)))
    {
      v11 = a4[i];
    }

    else
    {
      v11 = 0;
    }

    v42[i - 4] = v11;
  }

  v10.i32[0] = v41;
  v12 = vaddv_s16(*&vmovl_u8(v10));
  result = BlueFin::GlMeSrdSatMgr::GetNumSatTrkChnAvailable(*(a1 + 16));
  if (result >= v12)
  {
    v38[0] = *a2;
    v39 = 0;
    v40 = 575;
    if (v38[0] - 189 >= 0xFFFFFF44)
    {
      v14 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
      {
        v39 = -1;
      }

      else
      {
        v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
      }
    }

    StrategyId = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
    v16 = HIBYTE(v41);
    v37 = StrategyId;
    if (HIBYTE(v41) == 1)
    {
      v38[0] = *a2;
      v39 = 3;
      v40 = 575;
      if (v38[0] - 189 >= 0xFFFFFF44)
      {
        v17 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v17 + 21] == 255)
        {
          v39 = -1;
        }

        else
        {
          v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v17] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v17] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v17];
        }
      }

      v36 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
      LOBYTE(StrategyId) = v37;
    }

    else
    {
      v36 = 250;
    }

    v18 = BYTE2(v41);
    if (BYTE2(v41) == 1)
    {
      v38[0] = *a2;
      v39 = 2;
      v40 = 575;
      if (v38[0] - 189 >= 0xFFFFFF44)
      {
        v19 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v19 + 14] == 255)
        {
          v39 = -1;
        }

        else
        {
          v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v19] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v19] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v19];
        }
      }

      v35 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
      LOBYTE(StrategyId) = v37;
    }

    else
    {
      v35 = 250;
    }

    v42[0] = StrategyId;
    if (!v16)
    {
      goto LABEL_31;
    }

    if (v8)
    {
      if (v8 == 4)
      {
        if (!(*(**(a1 + 32) + 832))(*(a1 + 32), 9))
        {
LABEL_31:
          if (v18 && (*(**(a1 + 32) + 1200))(*(a1 + 32)))
          {
            LOBYTE(v41) = 0;
          }

          v20 = 0;
          v21 = &v43 + 1;
          v22 = 1;
          v23 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
          while (1)
          {
            v38[0] = *a2;
            v39 = v20;
            v40 = 575;
            if (v38[0] - 189 >= 0xFFFFFF44)
            {
              v24 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
              if (v23[v24] == 255)
              {
                v39 = -1;
              }

              else
              {
                v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v24] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v24] + BlueFin::GlSvId::s_aucGnss2numSvId[v24] * v20;
              }
            }

            if (v42[v20 - 4] == 1)
            {
              break;
            }

            v42[v20] = -6;
            *(v21 - 1) = 0;
LABEL_48:
            ++v20;
            v21 += 2;
            v23 += 7;
            if (v20 == 4)
            {
              if ((v22 & 1) == 0)
              {
                v29 = v37;
                if (a3 == 2)
                {
                  v29 = v35;
                }

                else if (a3 == 3)
                {
                  v29 = v36;
                }

                v30 = 0;
                switch(v29)
                {
                  case 0u:
                  case 1u:
                  case 2u:
                  case 3u:
                  case 4u:
                  case 5u:
                  case 6u:
                  case 7u:
                  case 8u:
                  case 9u:
                  case 0xDu:
                  case 0xEu:
                  case 0x10u:
                  case 0x11u:
                  case 0x12u:
                  case 0x1Au:
                  case 0x1Bu:
                  case 0x1Cu:
                  case 0x1Du:
                  case 0x1Eu:
                  case 0x1Fu:
                  case 0x20u:
                  case 0x21u:
                  case 0x22u:
                  case 0x23u:
                  case 0x26u:
                  case 0x29u:
                  case 0x2Au:
                  case 0x2Bu:
                  case 0x2Fu:
                  case 0x32u:
                  case 0x33u:
                  case 0x34u:
                  case 0x37u:
                  case 0x38u:
                  case 0x39u:
                  case 0x3Au:
                  case 0x3Du:
                  case 0x3Eu:
                  case 0x3Fu:
                  case 0x40u:
                  case 0x42u:
                  case 0x43u:
                  case 0x45u:
                  case 0x46u:
                  case 0x48u:
                  case 0x49u:
                  case 0x4Au:
                  case 0x4Bu:
                  case 0x4Cu:
                  case 0x4Du:
                  case 0x4Eu:
                  case 0x55u:
                  case 0x56u:
                  case 0x57u:
                  case 0x58u:
                  case 0x59u:
                  case 0x5Au:
                  case 0x5Cu:
                  case 0x5Du:
                  case 0x5Eu:
                  case 0x5Fu:
                  case 0x60u:
                  case 0x61u:
                    goto LABEL_58;
                  case 0xAu:
                  case 0xBu:
                  case 0xCu:
                  case 0xFu:
                  case 0x13u:
                  case 0x14u:
                  case 0x15u:
                  case 0x16u:
                  case 0x17u:
                  case 0x18u:
                  case 0x19u:
                  case 0x24u:
                  case 0x25u:
                  case 0x27u:
                  case 0x28u:
                  case 0x2Cu:
                  case 0x2Du:
                  case 0x2Eu:
                  case 0x35u:
                  case 0x36u:
                  case 0x3Bu:
                  case 0x3Cu:
                  case 0x41u:
                  case 0x44u:
                  case 0x47u:
                  case 0x51u:
                  case 0x52u:
                  case 0x53u:
                  case 0x5Bu:
                    v30 = 1;
LABEL_58:
                    v31 = BlueFin::GlMeSrdSatMgr::CreateSat(*(a1 + 16), a2, v42, &v43, a3, v30, 1, &v41);
                    *(*(a1 + 80) + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
                    *(*(a1 + 128) + 4 * (v31 >> 5)) |= 1 << v31;
                    BlueFin::GlSetBase::Remove(a1 + 160, v31);
                    BlueFin::GlSetBase::Remove(a1 + 192, v31);
                    return BlueFin::GlSetBase::Remove(a1 + 224, v31);
                  default:
                    v33 = "0";
                    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 921, "IsAlignedSearch", "0");
                    v34 = 921;
                    goto LABEL_63;
                }
              }

              Name = BlueFin::GlMeSrdSearchMgrBase::GetName(*(a1 + 72));
              GlCustomLog(14, "%s::CreateSatAndStartSat(svid %u) All Invalid Strategies!\n", Name, *a2);
              v33 = "!bNoValidStrategies";
              DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 450, "CreateSatAndStartSat", "!bNoValidStrategies");
              v34 = 450;
LABEL_63:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", v34, v33);
            }
          }

          v25 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
          v42[v20] = v25;
          v26 = v37;
          v27 = v37;
          if (v20)
          {
            if (v20 == 2)
            {
              v28 = (*(**(a1 + 32) + 1200))(*(a1 + 32), v37);
              v27 = v35;
              if (!v28)
              {
                v26 = v37;
                goto LABEL_47;
              }
            }

            else
            {
              v27 = v36;
              if (v20 != 3)
              {
                goto LABEL_47;
              }
            }
          }

          v26 = (*(*a1 + 72))(a1, v27, v38);
LABEL_47:
          *(v21 - 1) = v26;
          *v21 = 1;
          v22 &= v25 == 250;
          goto LABEL_48;
        }

LABEL_30:
        LOBYTE(v41) = 0;
        goto LABEL_31;
      }

      if (v8 != 3)
      {
        goto LABEL_31;
      }
    }

    if (((*(**(a1 + 32) + 832))(*(a1 + 32), 10) & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetNumSatTrkChnAvailable(BlueFin::GlMeSrdSatMgr *this)
{
  v1 = *(this + 48);
  v2 = *(this + 49);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (!v3)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 272, "GetNumSatTrkChnAvailable", "m_ucMaxNumSatChn >= m_ucNumSatChnUsed");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 272, "m_ucMaxNumSatChn >= m_ucNumSatChnUsed");
  }

  return v4;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::GetAidId(uint64_t a1, int a2, BlueFin::GlSignalId *a3)
{
  result = 0;
  switch(a2)
  {
    case 0:
    case 1:
      return result;
    case 2:
    case 3:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 43:
    case 44:
    case 45:
    case 46:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 83:
    case 86:
    case 87:
    case 90:
    case 91:
    case 92:
    case 97:
      v6 = *(a1 + 24);

      return BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(v6, a3);
    case 4:
    case 5:
    case 6:
    case 7:
    case 13:
    case 16:
    case 17:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 38:
    case 41:
    case 42:
    case 47:
    case 50:
    case 51:
    case 52:
    case 61:
    case 62:
    case 63:
    case 72:
    case 73:
    case 74:
    case 85:
    case 88:
    case 89:
    case 93:
    case 94:
    case 95:
    case 96:
      v7 = *a3;
      if (v7 < 0x34)
      {
        return 0;
      }

      if (v7 < 0x42)
      {
        return 1;
      }

      if (v7 - 76 >= 0x3F)
      {
        return 0;
      }

      return 2;
    default:
      DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 774, "GetAidId", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 774, "0");
  }
}

uint64_t BlueFin::GlMeSrdSatMgr::CreateSat(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, void *a4, int a5, char a6, char a7, unsigned __int8 *a8)
{
  v8 = *a2;
  if (((*(*a1 + ((v8 >> 3) & 0x1C)) >> (v8 & 0x1F)) & 1) == 0)
  {
    v23 = "m_otSvidSupported.Has(rotSvid)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 292, "CreateSat", "m_otSvidSupported.Has(rotSvid)");
    v24 = 292;
    goto LABEL_13;
  }

  v15 = a1 + 56;
  v14 = *(a1 + 56);
  v16 = *(a1 + 64);
  if (!*v14)
  {
    if (v16 < 2)
    {
LABEL_12:
      v23 = "HasSatAvailable()";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 293, "CreateSat", "HasSatAvailable()");
      v24 = 293;
      goto LABEL_13;
    }

    v20 = v16 - 1;
    v21 = v14 + 1;
    while (!*v21++)
    {
      if (!--v20)
      {
        goto LABEL_12;
      }
    }
  }

  v48 = *(a1 + 64);
  memcpy(v52, v14, 4 * v16);
  v50 = 0;
  v49 = 0;
  v51 = v52[0];
  BlueFin::GlSetIterator::operator++(&v48);
  if (v49 == v48)
  {
LABEL_7:
    v50 = 0;
    v49 = 0;
    v51 = v52[0];
    BlueFin::GlSetIterator::operator++(&v48);
    v19 = v50;
  }

  else
  {
    v18 = *(a1 + 6288);
    while (*(v18 + 52 * v50) == v8)
    {
      BlueFin::GlSetIterator::operator++(&v48);
      if (v49 == v48)
      {
        goto LABEL_7;
      }
    }

    v19 = v50;
  }

  v25 = v19;
  if (v19 != 255)
  {
    BlueFin::GlSetBase::Remove(v15, v19);
    *(*(a1 + 88) + 4 * (v19 >> 5)) |= 1 << v19;
    v26 = 52 * v19;
    *(*(a1 + 6288) + v26) = *a2;
    v27 = v26 + 24;
    v28 = 4;
    do
    {
      *(*(a1 + 6288) + v27++) = 0;
      --v28;
    }

    while (v28);
    if (v19 >= 0x64u)
    {
      v23 = "ucSatId < _DIM(m_aotSatData)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 487, "AssignCarriers", "ucSatId < _DIM(m_aotSatData)");
      v24 = 487;
      goto LABEL_13;
    }

    v29 = (*(a1 + 6288) + 52 * v19);
    v30 = *a8;
    v31 = a8[1];
    v32 = a8[2];
    v33 = a8[3];
    v29[5] = 0;
    if (v30 == 1)
    {
      v29[1] = *a3;
      v29[5] = 1;
      *(v29 + 2) = 0;
    }

    if (((v31 & 1) != 0 || (v32 & 1) != 0 || v33) && ((*(**(a1 + 6552) + 352))(*(a1 + 6552)) & 1) == 0)
    {
      v23 = "m_rAsicConfigIfc.IsMultiCarrSatSupported()";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 506, "AssignCarriers", "m_rAsicConfigIfc.IsMultiCarrSatSupported()");
      v24 = 506;
      goto LABEL_13;
    }

    LODWORD(v34) = *v29;
    if (v33)
    {
      if ((v34 - 66) < 0x49 || (v34 - 1) <= 0x1F)
      {
        if (((*(**(a1 + 6552) + 832))(*(a1 + 6552), 9) & 1) == 0 && ((*(**(a1 + 6552) + 832))(*(a1 + 6552), 10) & 1) == 0)
        {
          v23 = "m_rAsicConfigIfc.IsFeatureSupported(GLME_B1C_SUPPORTED) || m_rAsicConfigIfc.IsFeatureSupported(GLME_L1C_SUPPORTED)";
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 517, "AssignCarriers", "m_rAsicConfigIfc.IsFeatureSupported(GLME_B1C_SUPPORTED) || m_rAsicConfigIfc.IsFeatureSupported(GLME_L1C_SUPPORTED)");
          v24 = 517;
          goto LABEL_13;
        }

        v34 = *v29;
        v36 = 1 << (v34 & 0x1F);
        if ((v36 & *(*(a1 + 792) + 4 * (v34 >> 5))) == 0 && (v36 & *(*(a1 + 840) + 4 * (v34 >> 5))) == 0)
        {
          v23 = "m_otSetSvidB1CEnabled.Has(otSvId) || m_otSetSvidL1CEnabled.Has(otSvId)";
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 518, "AssignCarriers", "m_otSetSvidB1CEnabled.Has(otSvId) || m_otSetSvidL1CEnabled.Has(otSvId)");
          v24 = 518;
          goto LABEL_13;
        }

        v29[5] = 0;
        v29[1] = a3[3];
        v29[5] = 1;
        *(v29 + 2) = 3;
      }
    }

    v37 = 1 << (v34 & 0x1F);
    v38 = v37 & *(*(a1 + 696) + 4 * (v34 >> 5));
    if (v31)
    {
      if ((v37 & *(*(a1 + 696) + 4 * (v34 >> 5))) == 0)
      {
        v23 = "m_otSetSvidL2Enabled.Has(otSvId)";
        DeviceFaultNotify("glmesrd_sat_mgr.cpp", 530, "AssignCarriers", "m_otSetSvidL2Enabled.Has(otSvId)");
        v24 = 530;
        goto LABEL_13;
      }

      v29[v29[5] + 1] = a3[1];
      v39 = v29[5];
      v29[5] = v39 + 1;
      *&v29[4 * v39 + 8] = 1;
    }

    else if ((v37 & *(*(a1 + 696) + 4 * (v34 >> 5))) != 0)
    {
      v23 = "m_otSetSvidL2Enabled.Missing(otSvId)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 537, "AssignCarriers", "m_otSetSvidL2Enabled.Missing(otSvId)");
      v24 = 537;
      goto LABEL_13;
    }

    v40 = v37 & *(*(a1 + 744) + 4 * (v34 >> 5));
    if (v32)
    {
      if ((v37 & *(*(a1 + 744) + 4 * (v34 >> 5))) != 0)
      {
        if ((v34 - 76) > 0x3E || (*(**(a1 + 6552) + 832))(*(a1 + 6552), 7))
        {
          v29[v29[5] + 1] = a3[2];
          v41 = v29[5];
          v42 = v41 + 1;
          v29[5] = v41 + 1;
          *&v29[4 * v41 + 8] = 2;
LABEL_46:
          v29[28] = 0;
          if (v42)
          {
            for (i = 0; i != v42; ++i)
            {
              if (*&v29[4 * i + 8] == a5)
              {
                v29[28] = i;
              }
            }
          }

          *(*(a1 + 6288) + 52 * v25 + 33) = *a4;
          *(*(a1 + 6288) + 52 * v25 + 44) = a6;
          v44 = *(a1 + 6288) + 52 * v25;
          *(v44 + 29) = a7;
          *(a1 + 49) += *(v44 + 5);
          return v25;
        }

LABEL_45:
        v42 = v29[5];
        goto LABEL_46;
      }

      v23 = "m_otSetSvidL5Enabled.Has(otSvId)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 543, "AssignCarriers", "m_otSetSvidL5Enabled.Has(otSvId)");
      v24 = 543;
    }

    else
    {
      if ((v37 & *(*(a1 + 744) + 4 * (v34 >> 5))) == 0)
      {
        goto LABEL_45;
      }

      v23 = "m_otSetSvidL5Enabled.Missing(otSvId)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 553, "AssignCarriers", "m_otSetSvidL5Enabled.Missing(otSvId)");
      v24 = 553;
    }

LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v24, v23);
  }

  return v25;
}

BOOL BlueFin::GlPeAlmMgr::Alm2Plane(BlueFin::GlPeAlmMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(BlueFin::GlGpsTime *__hidden this), uint64_t a10, unsigned int a11, int a12, unsigned int a13, unsigned int a14, char a15)
{
  STACK[0xAB8] = *MEMORY[0x29EDCA608];
  v109 = this + 0x8000;
  if (*(this + 36712))
  {
    v15 = 1;
    goto LABEL_98;
  }

  bzero(&a15, 0x400uLL);
  for (i = 0; i != 1024; i += 32)
  {
    v18 = &a15 + i;
    *v18 = 0;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
  }

  v19 = 0;
  v20 = *(v109 + 492);
  v21 = v20 + 16;
  do
  {
    v22 = 0;
    v23 = v20 + (v19 << 6);
    v24 = *(v23 + 8);
    do
    {
      *(v21 + 4 * v22) = 0;
      *(v24 + v22++) = 0;
    }

    while (v22 != 6);
    *(v23 + 40) = 0;
    ++v19;
    v21 += 64;
  }

  while (v19 != 6);
  v25 = 0;
  a9 = &off_2A1F0B5F0;
  a10 = 0;
  vars8 = 7;
  vars8_4 = 0;
  LODWORD(v110[0]) = -65536;
  v110[1] = 0;
  LODWORD(v111) = 0;
  v26 = 1;
  v112 = 0u;
  v113 = 0u;
  v27.f64[0] = NAN;
  v27.f64[1] = NAN;
  v107 = vnegq_f64(v27);
  v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v117 = -1;
  LOBYTE(vars0) = 0;
  do
  {
    if (!BlueFin::GlPeAlmMgr::GetAlm(this, 0, v26, v110, 1, 0))
    {
      goto LABEL_38;
    }

    v116 = v116;
    v28 = *(this + 56);
    if (*(v28 + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(v28, 1, &STACK[0xA20]);
      STACK[0xAA0] = 0;
      STACK[0xA98] = &off_2A1F0B5F0;
      *v29.i64 = BlueFin::GlPeGnssTime::GetGps(&STACK[0xA20], &STACK[0xA98]);
      BlueFin::GlPeAlmanac::GetToa(v110, &STACK[0xA98], &STACK[0xA20], v29, v30);
      v31 = (a9[4])(&a9);
      a13 = a10;
      a14 = v31;
      v32 = (*(STACK[0xA98] + 32))(&STACK[0xA98]);
      a11 = STACK[0xAA0];
      a12 = v32;
      BlueFin::GlTimePoint::resolveAmbiguity(&a13, &a11, 0x93A8000u);
      v33 = (*(STACK[0xA98] + 24))(&STACK[0xA98], a14);
      v36 = a13;
      v37 = STACK[0xA28];
      v38 = STACK[0xA2C];
      if (LODWORD(STACK[0xA2C]) | LODWORD(STACK[0xA28]))
      {
        v47 = v33 - v38;
        if (v33 > v38 || v33 == v38 && a13 >= v37)
        {
          v39 = 0;
          v33 = (__PAIR64__(v47, a13) - v37) >> 32;
          v36 = a13 - v37;
        }

        else
        {
          v48 = __PAIR64__(v38 - v33, v37) - a13;
          v33 = HIDWORD(v48);
          v36 = v48;
          v39 = 1;
        }
      }

      else
      {
        v39 = 0;
      }

      v49 = v36 * 2.32830644e-10 + v33;
      if ((v39 & ((v33 | v36) != 0)) != 0)
      {
        v49 = -v49;
      }

      if ((v25 & (v49 >= 0)) == 0)
      {
        v45 = v116;
LABEL_33:
        v50 = v111;
        *v34.i64 = v111;
        STACK[0xA20] = &off_2A1F0B5F0;
        *v35.i64 = *v34.i64 - trunc(*v34.i64);
        v34.i64[0] = vbslq_s8(v107, v35, v34).i64[0];
        if (*v34.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v51 = *v34.i64 * 4294967300.0 + 0.5;
        v52 = v51;
        if (v51 >= 4294967300.0)
        {
          v52 = -1;
        }

        LODWORD(a10) = v52;
        HIDWORD(a10) = v50 + 604800 * v45;
      }

      v25 = 1;
      goto LABEL_38;
    }

    v40 = (a9[4])(&a9);
    v34 = (a9[4])(&a9);
    LODWORD(v42) = a10;
    *v34.i64 = v42 * 2.32830644e-10 + (v41 % 0x93A80);
    *v43.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
    v35 = vbslq_s8(v107, v43, v34);
    if (*v34.i64 > 4294967300.0)
    {
      v34.i64[0] = v35.i64[0];
    }

    if (*v34.i64 < -4294967300.0)
    {
      *v35.i64 = -*v34.i64;
      *v34.i64 = -(*v34.i64 - trunc(*v34.i64 * -2.32830644e-10) * -4294967300.0);
      v34 = vbslq_s8(v107, v34, v35);
      *v34.i64 = -*v34.i64;
    }

    v44 = *v34.i64;
    if (*v34.i64 < 0.0)
    {
      v44 = --*v34.i64;
    }

    v45 = v116;
    if ((v25 & 1) == 0)
    {
      goto LABEL_33;
    }

    v46 = v40 / 0x93A80 - v116;
    if ((v46 & 0x80000000) != 0)
    {
      if (v46 + 127 < 0x80)
      {
        goto LABEL_33;
      }
    }

    else if (v46 > 0x80)
    {
      goto LABEL_33;
    }

    v25 = 1;
    if (v116 == v40 / 0x93A80)
    {
      v45 = v40 / 0x93A80;
      if (v44 < v111)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    ++v26;
  }

  while (v26 != 33);
  v53 = (&a15 | 0x10);
  v54 = 3.14159265;
  v55 = 1;
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v108 = vnegq_f64(v56);
  do
  {
    if (BlueFin::GlPeAlmMgr::GetAlm(this, 0, v55, v110, 1, 0))
    {
      v116 = v116;
      v57 = (a9[4])(&a9);
      v58 = v116;
      v61 = (a9[4])(&a9);
      LODWORD(v60) = a10;
      *v61.i64 = v60 * 2.32830644e-10 + (v59 % 0x93A80);
      *v62.i64 = *v61.i64 + trunc(*v61.i64 * 2.32830644e-10) * -4294967300.0;
      v63 = vbslq_s8(v108, v62, v61);
      if (*v61.i64 > 4294967300.0)
      {
        v61.i64[0] = v63.i64[0];
      }

      if (*v61.i64 < -4294967300.0)
      {
        *v63.i64 = -*v61.i64;
        *v61.i64 = -(*v61.i64 - trunc(*v61.i64 * -2.32830644e-10) * -4294967300.0);
        *v61.i64 = -*vbslq_s8(v108, v61, v63).i64;
      }

      v64 = v57 / 0x93A80 - v58;
      v65 = v111;
      LODWORD(STACK[0xA88]) = 7;
      if (*v61.i64 < 0.0)
      {
        v66 = --*v61.i64;
      }

      else
      {
        v66 = *v61.i64;
      }

      LOBYTE(STACK[0xA8C]) = 0;
      v67 = v64 + 256;
      LODWORD(STACK[0xA20]) = -65536;
      if (v64 >= -128)
      {
        v67 = v64;
      }

      STACK[0xA28] = 0;
      if (v64 <= 128)
      {
        v68 = v67;
      }

      else
      {
        v68 = v64 - 256;
      }

      *&STACK[0xA38] = 0u;
      *&STACK[0xA48] = 0u;
      *&STACK[0xA58] = 0u;
      *&STACK[0xA68] = 0u;
      LOWORD(STACK[0xA78]) = 0;
      LODWORD(STACK[0xA30]) = 0;
      LODWORD(STACK[0xA7C]) = -1;
      LOBYTE(STACK[0xA80]) = 0;
      if (BlueFin::GlPeAlmMgr::GetAlm(this, 0, v55, &STACK[0xA20], 1, 0))
      {
        *(v53 - 16) = v55;
        v69 = *&STACK[0xA60];
        *(v53 - 1) = STACK[0xA60];
        v70 = *&STACK[0xA50];
        *v53 = *&STACK[0xA50];
        v71 = 604800 * v68 - v65 + v66;
        if (v71)
        {
          v72 = v71;
          v73 = *&v70 + *&STACK[0xA40] * v72 + v72 * -0.0000729211515 + (v71 + LODWORD(STACK[0xA30]) - (604800 * ((v71 + LODWORD(STACK[0xA30])) / 604800.0) - LODWORD(STACK[0xA30]))) * 0.0000729211515;
          v74 = v73 / 6.28318531;
          if (v73 / 6.28318531 <= 0.0)
          {
            v75 = 0.0;
            if (v73 / 6.28318531 < 0.0)
            {
              v75 = ceil(v74 + -0.5);
            }
          }

          else
          {
            v75 = floor(v74 + 0.5);
          }

          *&v70 = v73 - v75 * 6.28318531;
          v76 = v69 + sqrt(3.986005e14 / (*&STACK[0xA48] * *&STACK[0xA48] * (*&STACK[0xA48] * *&STACK[0xA48] * (*&STACK[0xA48] * *&STACK[0xA48])))) * v72;
          v77 = v76 / 6.28318531;
          v78 = ceil(v76 / 6.28318531 + -0.5);
          if (v76 / 6.28318531 >= 0.0)
          {
            v78 = 0.0;
          }

          v79 = floor(v77 + 0.5);
          if (v77 > 0.0)
          {
            v80 = v79;
          }

          else
          {
            v80 = v78;
          }

          *(v53 - 1) = v76 + v80 * -6.28318531;
          *v53 = v70;
        }
      }

      else
      {
        *&v70 = *v53;
      }

      if (*&v70 < v54)
      {
        v54 = *&v70;
      }
    }

    ++v55;
    v53 += 2;
  }

  while (v55 != 33);
  v15 = v54 < 3.14159265;
  if (v54 < 3.14159265)
  {
    v81 = (&a15 | 0x10);
    v82 = 1;
    while (1)
    {
      if (BlueFin::GlPeAlmMgr::GetAlm(this, 0, v82, v110, 1, 0))
      {
        v84 = (*v81 - v54) / 3.14159265 * 3.0;
        v85 = 0.5;
        if (v84 <= 0.0 && (v85 = -0.5, v84 >= 0.0))
        {
          LOBYTE(v86) = 6;
        }

        else
        {
          v86 = (v84 + v85);
          if (!v86)
          {
            LOBYTE(v86) = 6;
          }

          if ((v86 - 1) > 5u)
          {
            goto LABEL_84;
          }
        }

        *(v81 - 15) = v86;
      }

LABEL_84:
      ++v82;
      v81 += 4;
      if (v82 == 33)
      {
        v87 = 1;
        v88 = 16;
        do
        {
          v89 = 0;
          *&STACK[0xA40] = 0u;
          *&STACK[0xA30] = 0u;
          *&STACK[0xA20] = 0u;
          do
          {
            v90 = &STACK[0xA20] + v89;
            *v90 = 0;
            *(v90 + 1) = 0;
            v89 += 8;
          }

          while (v89 != 48);
          v91 = 0;
          v92 = &a15;
          v93 = 32;
          do
          {
            v94 = *v92;
            if ((v94 - 33) >= 0xFFFFFFE0 && v87 == *(v92 + 1))
            {
              v95 = &STACK[0xA20] + v91;
              *v95 = v94;
              v96 = (v92[3] + v92[1]) * 57.2957795;
              *(v95 + 1) = (v96 - floor(v96 / 360.0) * 360.0);
              if (++v91 > 5u)
              {
                break;
              }
            }

            v92 += 4;
            --v93;
          }

          while (v93);
          BlueFin::GlStdLib::QsortImpl(&STACK[0xA20], v91, 8u, AlmMgr_SortSvIds, &STACK[0xA98], v83);
          v97 = *(v109 + 492);
          v98 = v97 + ((v87 - 1) << 6);
          if (v91)
          {
            v99 = *(v98 + 8);
            v100 = v91;
            v101 = (v97 + v88);
            v102 = &STACK[0xA24];
            do
            {
              *v99++ = *(v102 - 4);
              v103 = *v102++;
              *v101++ = v103;
              --v100;
            }

            while (v100);
          }

          *(v98 + 40) = v91;
          ++v87;
          v88 += 64;
        }

        while (v87 != 7);
        v109[3944] = 1;
        break;
      }
    }
  }

LABEL_98:
  v104 = STACK[0xAB8];
  v105 = *MEMORY[0x29EDCA608];
  return v15;
}

_BYTE *BlueFin::GlPeAlmMgr::GetNextSvId(_BYTE *this, const BlueFin::GlSvIdSet *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a4 >= 6)
  {
    v10 = "iPlaneIndex >= GLPE_ALM_MIN_PRN_PLANE-1 && iPlaneIndex < GLPE_ALM_MAX_PRN_PLANE";
    DeviceFaultNotify("glpe_almmgr.cpp", 4375, "GetNextSvId", "iPlaneIndex >= GLPE_ALM_MIN_PRN_PLANE-1 && iPlaneIndex < GLPE_ALM_MAX_PRN_PLANE");
    v11 = 4375;
    goto LABEL_13;
  }

  if (a5 >= 6)
  {
    v10 = "i0 >= GLPE_ALM_MIN_PRN_POS-1 && i0 < GLPE_ALM_MAX_PRN_POS";
    DeviceFaultNotify("glpe_almmgr.cpp", 4376, "GetNextSvId", "i0 >= GLPE_ALM_MIN_PRN_POS-1 && i0 < GLPE_ALM_MAX_PRN_POS");
    v11 = 4376;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", v11, v10);
  }

  v5 = 0;
  v6 = *(a2 + 4588) + (a4 << 6);
  v7 = *(v6 + 40);
  v8 = *(v6 + 8);
  while (1)
  {
    v9 = *(v8 + a5);
    if (((*(a3 + ((v9 >> 3) & 0x1C)) >> (v9 & 0x1F)) & 1) == 0)
    {
      break;
    }

    if ((a5 + 1) < v7)
    {
      ++a5;
    }

    else
    {
      a5 = 0;
    }

    if (v7 < ++v5)
    {
      LOBYTE(v9) = 0;
      break;
    }
  }

  *this = v9;
  return this;
}

uint64_t BlueFin::GlPeAlmSvIdList::Add(uint64_t this, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 - 33 >= 0xFFFFFFE0)
  {
    v3 = *(this + 200);
    v4 = *(v3 + 4 * (a2 >> 5));
    if (((v4 >> (a2 & 0x1F)) & 1) == 0)
    {
      v5 = *(this + 192);
      this = BlueFin::GlSetBase::Cnt((this + 200));
      *(v5 + this) = v2;
      *(v3 + 4 * (v2 >> 5)) = v4 | (1 << (v2 & 0x1F));
    }
  }

  return this;
}

uint64_t BlueFin::GlPeAlmSvIdList::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    BlueFin::GlSetBase::operator=(a1 + 200, a2 + 200);
    v4 = *(a2 + 212);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 212) = v4;
    v5 = BlueFin::GlSetBase::Cnt((a2 + 200));
    v6 = v5;
    if (v5)
    {
      v7 = *(a2 + 192);
      v8 = *(a1 + 192);
      do
      {
        v9 = *v7++;
        *v8++ = v9;
        --v6;
      }

      while (v6);
    }
  }

  return a1;
}

uint64_t BlueFin::EswRpcEnc::GetEswSatRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 64);

  return v3();
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_kill(BlueFin::CarpEswRpcSatEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3)
{
  v3 = a3;
  if ((*(**(this + 1) + 384))(*(this + 1)) <= a3)
  {
    v8 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1106, "esw_sat_rpc_kill", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v9 = 1106;
    goto LABEL_6;
  }

  v10 = v3;
  *v11 = 1537;
  v12 = 5;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v11, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, &v10, 1u);
  v6 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v6)
  {
    v8 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1111, "esw_sat_rpc_kill", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v9 = 1111;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v9, v8);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetSatControl(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = *a4 & 0xFFF8 | *(*(a1 + 6288) + 52 * a2 + 30) & 1 | 6;
  *a4 = v7;
  v8 = v7 & 0xFFF7 | (8 * (*(*(a1 + 6288) + 52 * a2 + 31) & 1));
  *a4 = v8;
  *a4 = v8 & 0xF34F | (16 * (*(*(a1 + 6288) + 52 * a2 + 29) & 1)) | 0x800;
  if ((*(**(a1 + 6552) + 704))())
  {
    v9 = *a4 & 0xFEFF | (*(*(a1 + 6288) + 52 * a2 + 32) << 8);
    *a4 = v9;
    v10 = v9 & 0xFDFF | (*(*(a1 + 6288) + 52 * a2 + 32) << 9);
    *a4 = v10;
    *a4 = v10 & 0xFFBF | ((*(*(a1 + 6288) + 52 * a2 + 32) & 1) << 6);
    result = (*(**(a1 + 6552) + 704))();
    v12 = *a4 & 0xCFFF | ((result & 3) << 12);
  }

  else
  {
    *a4 = *a4 & 0xCFFF | (((*(**(a1 + 6552) + 688))(*(a1 + 6552)) & 3) << 12);
    if ((*(**(a1 + 6552) + 680))())
    {
      v13 = 64;
    }

    else
    {
      v13 = 0;
    }

    *a4 = *a4 & 0xFFBF | v13;
    if ((*(**(a1 + 6552) + 744))())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *a4 = *a4 & 0xFEFF | v14;
    result = (*(**(a1 + 6552) + 752))();
    if (result)
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    v12 = *a4 & 0xFDFF | v15;
  }

  *a4 = v12 & 0x3FFF;
  *(a4 + 2) = 7;
  return result;
}

char *BlueFin::GlMeSrdAsicUnitConverter::Svid2SvParamType(unsigned __int8 *a1)
{
  if (*a1 - 189 <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 861, "Svid2SvParamType", "*otSvid >= MIN_SVID && *otSvid <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 861, "*otSvid >= MIN_SVID && *otSvid <= MAX_SVID");
  }

  return &BlueFin::GlMeSrdAsicUnitConverter::m_stLookUpSvid2SvParam + 12 * *a1;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::SignalId2MultiCarrType(BlueFin::GlMeSrdAsicUnitConverter *this, const BlueFin::GlSignalId *a2)
{
  v2 = *this;
  v3 = BlueFin::GlSvId::s_aucSvId2gnss[v2];
  v4 = 0;
  switch(BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v3])
  {
    case 0:
    case 6:
    case 11:
      return BlueFin::GlMeSrdAsicUnitConverter::m_stLookUpSvid2SvParam[6 * *this + 4];
    case 1:
      if (v3 == 3)
      {

        return BlueFin::GlMeSrdAsicUnitConverter::GetQzssL2CInitShiftRegisterState(this);
      }

      else
      {
        if (BlueFin::GlSvId::s_aucSvId2gnss[v2])
        {
          return 0;
        }

        return BlueFin::GlMeSrdAsicUnitConverter::GetGpsL2CInitShiftRegisterState(this);
      }

    case 2:
      if (v3 == 3)
      {
        return BlueFin::GlMeSrdAsicUnitConverter::GetQzssL5XbCodeAdvance(this);
      }

      if (BlueFin::GlSvId::s_aucSvId2gnss[v2])
      {
        return 0;
      }

      return BlueFin::GlMeSrdAsicUnitConverter::GetGpsL5XbCodeAdvance(this);
    case 3:
      return BlueFin::GlMeSrdAsicUnitConverter::m_stLookUpSvid2SvParam[6 * *this + 4];
    case 4:
      return BlueFin::GlMeSrdAsicUnitConverter::GetGalE5bQCodeOffset(this);
    case 5:
      return BlueFin::GlMeSrdAsicUnitConverter::GetGalE5aQCodeOffset(this);
    case 7:
      return v4;
    case 8:
      return BlueFin::GlMeSrdAsicUnitConverter::GetBdsB2aPCodeOffset(this);
    case 12:

      return BlueFin::GlMeSrdAsicUnitConverter::GetNavicL5CodeOffset(this);
    case 13:
      return BlueFin::GlMeSrdAsicUnitConverter::GetBdsPrnIndex(this);
    case 14:
      if (v3 == 3)
      {
        return BlueFin::GlMeSrdAsicUnitConverter::GetQzssPrnIndex(this);
      }

      if (BlueFin::GlSvId::s_aucSvId2gnss[v2])
      {
        return 0;
      }

      return BlueFin::GlMeSrdAsicUnitConverter::GetGpsPrnIndex(this);
    default:
      DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 957, "SignalId2MultiCarrType", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 957, "0");
  }
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(unsigned int a1)
{
  if (a1 >= 4)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1631, "GetEswSignalIndex", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1631, "0");
  }

  return a1 + 1;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGpsL5XbCodeAdvance(unsigned __int8 *a1)
{
  if (*a1 - 1 >= 0x20)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1435, "GetGpsL5XbCodeAdvance", "otSvId.IsGps()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1435, "otSvId.IsGps()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_ausGpsL5XbCodeAdvance[*a1];
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::IsSearchWithinSystemLimits(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  if (a5 > 1)
  {
    return 1;
  }

  v5 = a5;
  if (*((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2) == 255 || *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2) == 7 || *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2) == 8)
  {
    return 1;
  }

  v11 = (*(*a1 + 48))(a1, a2, a3, a4);
  v12 = (*(*a1 + 64))(a1, a2, a3, a4);
  if ((*(a1 + 24) & 1) == 0)
  {
    v44 = "m_bRmLimitsProgrammed";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1483, "GetMaxNumParallelSsbs", "m_bRmLimitsProgrammed");
    v45 = 1483;
    goto LABEL_70;
  }

  if ((*(a1 + 38) & 1) == 0)
  {
    v44 = "m_bSmLimitsProgrammed";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1484, "GetMaxNumParallelSsbs", "m_bSmLimitsProgrammed");
    v45 = 1484;
    goto LABEL_70;
  }

  v13 = v12;
  v14 = *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2);
  if (v14 >= 9)
  {
    v44 = "ucJmId < NUM_OF_SM_PARAMS";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1489, "GetMaxNumParallelSsbs", "ucJmId < NUM_OF_SM_PARAMS");
    v45 = 1489;
    goto LABEL_70;
  }

  v15 = a1 - v14 + 8 * v14;
  v16 = *(v15 + 40);
  if (v16 >= 4)
  {
    v44 = "ucGroupId < NUM_SEARCH_MANAGER_GROUPS";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1494, "GetMaxNumParallelSsbs", "ucGroupId < NUM_SEARCH_MANAGER_GROUPS");
    v45 = 1494;
LABEL_70:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v45, v44);
  }

  v17 = *(v15 + 43);
  v18 = *(a1 + v16 + 28);
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = (*(**(a1 + 8) + 248))(*(a1 + 8), a3);
  v21 = *a4;
  v22 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]];
  v23 = 1;
  if (v22 == 11 || (v24 = 1, v22 != 14) && ((v23 = v22 == 13, v22 > 0xD) || ((1 << v22) & 0x2124) == 0))
  {
    v24 = v22 == 4;
  }

  v25 = vcvts_n_f32_u32(v11, 5uLL);
  v26 = *(v20 + 26);
  if ((v21 - 52) < 0xE)
  {
    if (v26 == 2)
    {
      v27 = 1;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v28 = (v21 - 139) < 0xFFFFFFC1 || v23;
  v27 = 1;
  if ((v28 & 1) == 0 && v26 != 2)
  {
LABEL_27:
    v27 = 0;
  }

LABEL_28:
  v29 = ceilf(v25);
  v30 = *(v20 + 10);
  v31 = 1;
  if (v30 > 0xFFB)
  {
    if (v30 == 4092 || v30 == 10230)
    {
      goto LABEL_35;
    }
  }

  else if (v30 == 1023 || v30 == 2046)
  {
    goto LABEL_35;
  }

  v31 = 0;
LABEL_35:
  v32 = v21 - 76;
  if (v30 == 372)
  {
    v33 = 1;
  }

  else
  {
    v33 = v31;
  }

  if (v23)
  {
    v34 = v33;
  }

  else
  {
    v34 = v30 != 372;
  }

  if (v32 >= 0x3F)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  if (v30 == 310)
  {
    v36 = 1;
  }

  else
  {
    v36 = v31;
  }

  if (v24)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  v46 = *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2);
  v38 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]];
  v39.n128_f32[0] = v19;
  v41 = v13 <= v19 && v29 <= v39.n128_f32[0];
  if ((v27 & v37 & v41 & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1644, "IsSearchWithinSystemLimits", "IsSearchWithinSystemLimits1");
    goto LABEL_64;
  }

  v42 = *((*(**(a1 + 8) + 256))(*(a1 + 8), a3, v39) + 4);
  v43 = *((*(**(a1 + 8) + 256))() + 5);
  if (v42 != a3 && ((*(*a1 + 72))(a1, a2, v42, a4, (v5 + 1)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1664, "IsSearchWithinSystemLimits", "IsSearchWithinSystemLimits2");
    goto LABEL_64;
  }

  result = 1;
  if (v43 != a3 && v43 != v42)
  {
    if ((*(*a1 + 72))(a1, a2, v43, a4, (v5 + 1)))
    {
      return 1;
    }

    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1676, "IsSearchWithinSystemLimits", "IsSearchWithinSystemLimits3");
LABEL_64:
    CrashData();
    return 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetEswBinningStepParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 256);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetEswBinningStepParams(int **this, unsigned int a2)
{
  v3 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v3 + 1) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 686, "GetEswBinningStepParams", "ucBsid < *rMp.m_pucBsNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 686, "ucBsid < *rMp.m_pucBsNum");
  }

  return *(*(v3 + 3) + 24) + 6 * a2;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetMinFFTResourceForBsId(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((*(*a1[1] + 248))(a1[1], a3) + 13);
  v9 = (*a1)[2];

  return v9(a1, a2, a3, v8, a4);
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetMinMemBinResourceForBsId(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*(*a1[1] + 248))(a1[1], a3) + 13);
  v8 = (*a1)[3];

  return v8(a1, a3, v7, a4);
}

uint64_t BlueFin::MinnowEswRpcSatEncImp::esw_sat_rpc_init_multi_carr(void **a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, char *a5, char a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, char a10)
{
  v15 = a3;
  v39 = *MEMORY[0x29EDCA608];
  if ((*(*a1[1] + 384))(a1[1]) <= a3)
  {
    v35 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 47, "esw_sat_rpc_init_multi_carr", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v36 = 47;
    goto LABEL_23;
  }

  if ((a7 - 4) <= 0xFCu)
  {
    v35 = "bIsNumSignals";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 50, "esw_sat_rpc_init_multi_carr", "bIsNumSignals");
    v36 = 50;
    goto LABEL_23;
  }

  v18 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v37, v38, 1800, v18);
  BlueFin::GlStream::PutU08(v37, v15);
  BlueFin::GlStream::PutU08(v37, a7);
  v19 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *a4);
  if (!v19)
  {
    v35 = "ucImplSvId != INVALID_SVID";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 60, "esw_sat_rpc_init_multi_carr", "ucImplSvId != INVALID_SVID");
    v36 = 60;
    goto LABEL_23;
  }

  BlueFin::GlStream::PutU08(v37, v19);
  BlueFin::GlStream::PutU08(v37, a4[4]);
  BlueFin::GlStream::PutU08(v37, 0);
  BlueFin::GlStream::PutU08(v37, 0);
  v20 = (a4 + 8);
  v21 = a7;
  v22 = a7;
  do
  {
    v23 = *v20++;
    BlueFin::GlStream::PutU32(v37, v23);
    --v22;
  }

  while (v22);
  v24 = a7;
  do
  {
    v25 = *a5++;
    BlueFin::GlStream::PutU08(v37, v25);
    --v24;
  }

  while (v24);
  BlueFin::GlStream::PutU08(v37, a6);
  v26 = a7;
  do
  {
    BlueFin::GlStream::CarpPutBits(v37, *a8 & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 1) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 2) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 3) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 4) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 5) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 6) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 7) & 1, 1u, 8u);
    *a8 &= 0x3FFFu;
    if ((*(*a1[1] + 736))())
    {
      BlueFin::GlStream::CarpPutBits(v37, 1u, 1u, 8u);
      v27 = 0;
    }

    else
    {
      BlueFin::GlStream::CarpPutBits(v37, HIBYTE(*a8) & 1, 1u, 8u);
      v27 = (*a8 >> 9) & 1;
    }

    BlueFin::GlStream::CarpPutBits(v37, v27, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 10) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 11) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, (*a8 >> 12) & 3, 2u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, *a8 >> 14, 2u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, a8[1] & 0x1F, 5u, 8u);
    BlueFin::GlStream::CarpPutBits(v37, *(a8 + 2) >> 5, 3u, 8u);
    BlueFin::GlStream::PutU08(v37, 0);
    a8 = (a8 + 3);
    --v26;
  }

  while (v26);
  v28 = (a9 + 5);
  do
  {
    BlueFin::GlStream::PutU08(v37, *(v28 - 5));
    BlueFin::GlStream::PutU08(v37, *(v28 - 1));
    v29 = *v28;
    v28 += 8;
    BlueFin::GlStream::PutU08(v37, v29);
    BlueFin::GlStream::PutU08(v37, 0);
    --v21;
  }

  while (v21);
  BlueFin::GlStream::PutU08(v37, a10);
  Offset = BlueFin::GlStream::GetOffset(v37);
  if (Offset != ((*a1)[7])(a1, a7))
  {
    v35 = "otStream.GetOffset() == esw_sat_rpc_init_multi_carr_msg_length(num_signals)";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 133, "esw_sat_rpc_init_multi_carr", "otStream.GetOffset() == esw_sat_rpc_init_multi_carr_msg_length(num_signals)");
    v36 = 133;
    goto LABEL_23;
  }

  v31 = BlueFin::GlStream::GetOffset(v37);
  BlueFin::GlMeSrdTransaction::Add(a2, 6, 6u, v38, v31);
  v32 = *(a2 + 32);
  result = (*(*a1[1] + 416))();
  if (result < v32)
  {
    v35 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 135, "esw_sat_rpc_init_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v36 = 135;
LABEL_23:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v36, v35);
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::OnReliableTransactionAck(uint64_t this, void *a2)
{
  v2 = *(this + 6548);
  if (!*(this + 6548))
  {
    goto LABEL_21;
  }

  v3 = this;
  v5 = this + 184;
  v4 = *(this + 184);
  if (*v4)
  {
    goto LABEL_3;
  }

  v10 = *(this + 192);
  if (v10 < 2)
  {
LABEL_21:
    v14 = "m_ucAckNum > 0 && !m_otSetSatidKilledWaiting4Ack.IsEmpty()";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 131, "OnReliableTransactionAck", "m_ucAckNum > 0 && !m_otSetSatidKilledWaiting4Ack.IsEmpty()");
    v15 = 131;
    goto LABEL_22;
  }

  v11 = v10 - 1;
  v12 = v4 + 1;
  while (!*v12++)
  {
    if (!--v11)
    {
      goto LABEL_21;
    }
  }

LABEL_3:
  if (v2 < a2)
  {
    v14 = "ucParam <= m_ucAckNum";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 132, "OnReliableTransactionAck", "ucParam <= m_ucAckNum");
    v15 = 132;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v15, v14);
  }

  if (v2 == a2)
  {
    *(this + 6548) = 0;
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }

    BlueFin::GlSetBase::operator|=(v3 + 216, v5);
    bzero(*(v3 + 184), ((4 * *(v3 + 192) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }

    v22 = &v24;
    v23 = 4;
    v24 = 0uLL;
    v16 = v18;
    v17 = 4;
    v18[1] = 0;
    v18[0] = 0;
    BlueFin::GlSetBase::OperatorBinaryOr(v3 + 56, &v16, (v3 + 216));
    v19 = &v21;
    v20 = 4;
    v21 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryOr(&v16, &v19, (v3 + 248));
    BlueFin::GlSetBase::operator=(&v22, &v19);
    v6 = 0;
    v7 = (&v22[v23 / 4u - 1] + 12);
    v24 = v21;
    do
    {
      if (*v7)
      {
        v8 = *v7 - (((*v7 >> 1) & 0x5B6DB6DB) + ((*v7 >> 2) & 0x9249249));
        v6 = ((v8 + (v8 >> 3)) & 0xC71C71C7) + v6 - 63 * (((v8 + (v8 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      v7 = (v7 - 4);
    }

    while (v7 >= v22);
    this = (*(**(v3 + 6552) + 384))(*(v3 + 6552));
    if (this == v6)
    {
      v9 = *(v3 + 6568);
      if (v9)
      {
        return v9(*(v3 + 6576));
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_satrpt_rpc_noise(uint64_t result)
{
  if (*(*(result + 16) + 360) == 5)
  {
    return (*(**(*(result + 8) + 112) + 72))();
  }

  return result;
}

void BlueFin::GlMeSrdSatRptRpcListener::gll_satrpt_rpc_noise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (*a6 >= 0xEu)
  {
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 526, "gll_satrpt_rpc_noise", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr.cpp", 526, "0");
  }
}

uint64_t BlueFin::stPeSigEnv::Deserialize(BlueFin::stPeSigEnv *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 12) - 1 < 2 && *(a2 + 2) == 58;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetF32(a2);
    v6 = *(a2 + 12);
    F32 = BlueFin::GlSysLogEntry::GetF32(a2);
    if (v6 == 1)
    {
      F32 = F32 + 174.0;
    }

    *(this + 3) = F32;
    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glpe_msmtmgr.cpp", 342, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 342, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v3;
}

uint64_t BlueFin::GlPeMsmtMgr::SetStrdDopps(BlueFin::GlPeMsmtMgr *this, const BlueFin::stPeStoredDoppler *a2)
{
  BlueFin::stPeStoredDoppler::operator=(this + 18848, a2);
  result = BlueFin::GlSetBase::Cnt((this + 37288));
  if (!result)
  {
    *(this + 18816) = 0;
  }

  return result;
}

uint64_t BlueFin::stPeStoredDoppler::Deserialize(void **this, BlueFin::GlSysLogEntry *a2)
{
  v3 = *(a2 + 12);
  v4 = (v3 - 1) < 2 && *(a2 + 2) == 54;
  result = v4;
  if (v4)
  {
    v20 = result;
    if (v3 == 1)
    {
      U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    }

    else
    {
      U8 = BlueFin::GlSysLogEntry::GetU16(a2);
    }

    v8 = U8;
    bzero(this[2305], ((4 * *(this + 18448) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    if (!v8)
    {
LABEL_34:
      BlueFin::GlSysLogEntry::CheckConsumed(a2, 285);
      return v20;
    }

    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 12);
      if (v10 == 2)
      {
        v12 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
        v11 = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      else if (v10 == 1)
      {
        v11 = 0;
        v12 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
      }

      else
      {
        v12 = 0u;
        v11 = 0;
      }

      D64 = BlueFin::GlSysLogEntry::GetD64(a2);
      if (v12)
      {
        if (v9 != 575)
        {
          break;
        }
      }

LABEL_31:
      if (!--v8)
      {
        goto LABEL_34;
      }
    }

    if ((v12 - 189) >= 0xFFFFFF44)
    {
      v15 = BlueFin::GlSvId::s_aucSvId2gnss[v12];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v11 - v11 + v15] == 255)
      {
        v14 = 575;
        v16 = -1;
LABEL_26:
        v17 = this[2304] + 32 * v9;
        *v17 = v12;
        *(v17 + 4) = v16;
        *(v17 + 8) = v14;
        *(v17 + 16) = D64;
        if ((v12 - 189) < 0xFFFFFF44 || (v18 = BlueFin::GlSvId::s_aucSvId2gnss[v12], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v11 - v11 + v18] == 255))
        {
          v19 = 575;
        }

        else
        {
          v19 = (BlueFin::GlSignalId::s_ausGnss2signalId[v18] + v12 - BlueFin::GlSvId::s_aucGnss2minSvId[v18] + v11 * BlueFin::GlSvId::s_aucGnss2numSvId[v18]);
        }

        ++v9;
        *(this[2305] + (v19 >> 5)) |= 1 << v19;
        goto LABEL_31;
      }

      v14 = BlueFin::GlSignalId::s_ausGnss2signalId[v15] + v12 - BlueFin::GlSvId::s_aucGnss2minSvId[v15] + v11 * BlueFin::GlSvId::s_aucGnss2numSvId[v15];
    }

    else
    {
      v14 = 575;
    }

    v16 = v11;
    goto LABEL_26;
  }

  return result;
}

uint64_t BlueFin::GlPeEnvMonitorData::Deserialize(BlueFin::GlPeEnvMonitorData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 68)
  {
    return 0;
  }

  if (*(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) >= 2u)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 530);
  return 1;
}

double BlueFin::GlPeEnvironmentMonitor::Deserialize(BlueFin::GlPeEnvironmentMonitor *this, BlueFin::GlSysLogEntry *a2)
{
  memset(&v5[1], 0, 20);
  v5[0] = &unk_2A1F112C8;
  v6 = 0uLL;
  if (BlueFin::GlPeEnvMonitorData::Deserialize(v5, a2))
  {
    *(this + 330) = v5[1];
    result = *(&v5[1] + 4);
    v4 = v6;
    *(this + 1288) = *(&v5[1] + 4);
    *(this + 1304) = v4;
  }

  return result;
}

uint64_t BlueFin::GlPeRtiRequestor::OnRtiFromNvMem(BlueFin::GlPeRtiRequestor *this, const BlueFin::GlPeRtiData *a2, int a3)
{
  v4 = BlueFin::GlPeRtiRequestHelper::OnRtiFromNvMem(this + 32, a2, a3);
  if (v4 && *(this + 56) == 1)
  {
    BlueFin::GlPeRtiRequestor::onRtiAccepted(this);
  }

  return v4;
}

uint64_t BlueFin::GlSysLogEntry::GetU64(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 8 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 529, "GetU64", "m_sReadIdx + sizeof(GlIntU64) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 529, "m_sReadIdx + sizeof(GlIntU64) <= m_sDataSize");
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

  while (v2 != 8);
  return v6;
}

uint64_t *BlueFin::GlPeSvHealthData::SetState(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  Index = BlueFin::GlPeSvHealthData::getIndex(a1, a2);
  if (Index < 0)
  {
    DeviceFaultNotify("glpe_svhealthmgr.cpp", 158, "SetState", "iIndex >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 158, "iIndex >= 0");
  }

  v7[0] = a1 + 8;
  v7[1] = 0;
  v8 = 0;
  v11 = 0;
  v10 = 0;
  v9 = vdup_n_s32(0xB80u);
  v12 = 0;
  BlueFin::GlBitBuffer::Position(v7, 3 * Index);
  return BlueFin::GlBitBuffer::PutU(v7, a3, 3u);
}

uint64_t BlueFin::GlPeSvHealthHelper::SetState(_BYTE *a1, unsigned int *a2, unsigned int a3)
{
  v6 = (*(*a1 + 40))(a1);
  BlueFin::GlPeSvHealthData::SetState(a1, a2, a3);
  a1[2272] = v6 != a3;

  return BlueFin::GlPeSvHealthHelper::LogState(a1, a2);
}

uint64_t BlueFin::GlPeSvHealthData::Deserialize(BlueFin::GlPeSvHealthData *this, BlueFin::GlSysLogEntry *a2)
{
  v27[10] = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) == 63 && (v3 = *(a2 + 12), v3 - 1 <= 5))
  {
    if (v3 == 1)
    {
      BlueFin::GlSysLogEntry::GetU8(a2);
      v3 = *(a2 + 12);
    }

    if (v3 < 3)
    {
      U8 = 29;
    }

    else
    {
      U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    }

    v7 = (this + 8);
    bzero(this + 8, 0x8B8uLL);
    *(this + 140) = 0u;
    *(this + 564) = 0;
    if (U8)
    {
      if (U8 >= 0x5C)
      {
        v8 = 92;
      }

      else
      {
        v8 = U8;
      }

      do
      {
        *v7++ = BlueFin::GlSysLogEntry::GetU32(a2);
        --v8;
      }

      while (v8);
    }

    if (*(a2 + 12) == 1)
    {
      BlueFin::GlSysLogEntry::GetU32(a2);
    }

    *(this + 94) = BlueFin::GlSysLogEntry::GetU32(a2);
    if (*(a2 + 12) >= 5u)
    {
      v9 = 0;
      v27[1] = 32;
      v27[2] = this + 764;
      v27[3] = 0x30000000ALL;
      v27[4] = this + 884;
      v27[5] = 0x40000003FLL;
      v27[6] = this + 1640;
      v27[7] = 0x500000024;
      v26 = this;
      v27[0] = this + 380;
      v27[8] = this + 2072;
      v27[9] = 0x60000000ELL;
      do
      {
        v10 = &v27[2 * v9];
        v11 = *(v10 + 2);
        if (v11 >= 1)
        {
          v12 = 0;
          do
          {
            U32 = BlueFin::GlSysLogEntry::GetU32(a2);
            v14 = (*v10 + 12 * v12);
            *v14 = U32;
            v14[2] = BlueFin::GlSysLogEntry::GetU32(a2);
            v14[1] = BlueFin::GlSysLogEntry::GetU32(a2);
            if (v14[2])
            {
              v15 = BlueFin::GNSS2STR(*(v10 + 3));
              ++v12;
              v16 = "LTO";
              if (v14[1] == 1)
              {
                v16 = "RTO";
              }

              if (v14[2] == 1)
              {
                v17 = 72;
              }

              else
              {
                v17 = 85;
              }

              GlCustomLog(15, "Deserial L5Health (%s %d) Health: %c Src: %s\n", v15, v12, v17, v16);
            }

            else
            {
              ++v12;
            }
          }

          while (v12 != v11);
        }

        ++v9;
      }

      while (v9 != 5);
      BlueFin::GlSysLogEntry::GetBuffer(a2, v26 + 2240, 0x10u);
      v18 = BlueFin::GlSysLogEntry::GetU32(a2);
      *(v26 + 564) = v18;
      if (*(a2 + 12) <= 5u)
      {
        v19 = 0;
        while (1)
        {
          v20 = &v27[2 * v19];
          v21 = *(v20 + 2);
          if (v21 >= 1)
          {
            break;
          }

LABEL_40:
          if (++v19 == 5)
          {
            goto LABEL_41;
          }
        }

        v22 = *v20;
        while (1)
        {
          if (*v22)
          {
            v23 = v22[1];
            v24 = v18;
            if (v23 == 2)
            {
              goto LABEL_38;
            }

            if (v23 == 1)
            {
              break;
            }
          }

LABEL_39:
          v22 += 3;
          if (!--v21)
          {
            goto LABEL_40;
          }
        }

        v24 = *v22 + 14400;
LABEL_38:
        *v22 = v24;
        goto LABEL_39;
      }
    }

LABEL_41:
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 269);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlSysLogEntry::GetBuffer(BlueFin::GlSysLogEntry *this, unsigned __int8 *a2, unsigned int a3)
{
  U16 = BlueFin::GlSysLogEntry::GetU16(this);
  if (U16 > a3 || (v7 = U16, *(this + 11) - *(this + 10) < U16))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 314, "GetBuffer", "(usLength <= usSize) && (usLength <= (m_sDataSize - m_sReadIdx))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 314, "(usLength <= usSize) && (usLength <= (m_sDataSize - m_sReadIdx))");
  }

  if (U16)
  {
    v8 = 0;
    do
    {
      v9 = (*(*this + 24))(this);
      v10 = *(this + 10);
      *(this + 10) = v10 + 1;
      a2[v8++] = *(v9 + v10);
    }

    while (v7 > v8);
  }

  return v7;
}

double BlueFin::GlPeGalTimeMgr::GetGal2GpsSysOffsetS(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = 0.0;
  if (*(this + 18))
  {
    v7 = *(this + 42);
    if (__PAIR64__(*(this + 43), v7) != 0xFFFFFFFF0000FFFFLL || *(this + 88) != 255 || *(this + 89) != 63)
    {
      *a3.i64 = v7;
      v4 = *a3.i64 * -2.91038305e-11;
      if (a2)
      {
        if (*(this + 43))
        {
          v8 = *(this + 89);
          a3.i8[0] = *(this + 88);
          *a3.i64 = a3.u64[0] * 3600.0;
          *a4.i64 = *a3.i64 - trunc(*a3.i64);
          v9.f64[0] = NAN;
          v9.f64[1] = NAN;
          a4.i64[0] = vbslq_s8(vnegq_f64(v9), a4, a3).i64[0];
          if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v11 = *a4.i64 * 4294967300.0 + 0.5;
          v12 = v11;
          if (v11 >= 4294967300.0)
          {
            v12 = -1;
          }

          v26 = v12;
          v27 = *a3.i64 + 604800 * v8;
          v13 = (*(*a2 + 32))(a2);
          v25[0] = *(a2 + 2);
          v25[1] = v13;
          BlueFin::GlTimePoint::resolveAmbiguity(&v26, v25, 0x24EA000u);
          v14 = (*(*a2 + 24))(a2, v27);
          v15 = *(a2 + 2);
          v16 = *(a2 + 3);
          v17 = v14 | v26;
          if (v14 | v26)
          {
            v18 = v16 - v14;
            if (__PAIR64__(v16, v15) < __PAIR64__(v14, v26))
            {
              v21 = v14 - v16;
              v19 = v26 >= v15;
              v15 = v26 - v15;
              v22 = !v19;
              v16 = v21 - v22;
              v17 = 1;
            }

            else
            {
              v17 = 0;
              v19 = v15 >= v26;
              v15 -= v26;
              v20 = !v19;
              v16 = v18 - v20;
            }
          }

          v23 = v15 * 2.32830644e-10 + v16;
          if ((v17 & ((v16 | v15) != 0)) != 0)
          {
            v23 = -v23;
          }

          return v4 + *(this + 43) * -4.4408921e-16 * v23;
        }
      }
    }
  }

  return v4;
}

uint64_t BlueFin::GlPeGalGpsOffsetData::Deserialize(BlueFin::GlPeGalGpsOffsetData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 96 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 24) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 25) = BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 311);
  }

  return v3;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2UtcSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 0x40) != 0)
  {
    v3 = this;
    v4 = -*(this + 56);
    if (a2)
    {
      if (*(this + 44))
      {
        this = (*(*a2 + 32))(a2);
        LODWORD(v5) = *(a2 + 2);
        *&v6 = v5 * 2.32830644e-10;
        v7 = *&v6 + this;
        LOWORD(v6) = *(v3 + 44);
        v8 = v4 - *(v3 + 64) * (v7 + v6 * -604800.0);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeTimeManager::SetGalUtcModel(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeGalUtcModelData *a2, int a3)
{
  BlueFin::GlPeGalTimeMgr::SetUtcModel((this + 2336), a2);
  v6 = *(this + 2392);
  *(this + 2392) = 0;
  if (v6 == 1)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(this);
    if ((a3 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(*a2 + 24))(a2, 0, 0);
    }

    v7 = 89;
  }

  else
  {
    v7 = 78;
  }

  v8 = *(this + 642);
  if (v8 == -7200001)
  {
    v8 = 0;
  }

  v9 = *(a2 + 5) * 8.8817842e-16;
  v10 = v9 * 1000000000.0;
  v13 = vcvtd_n_f64_s32(*(a2 + 6), 0x1EuLL) * 1000000000.0;
  v11 = 78;
  if (a3)
  {
    v11 = 89;
  }

  LOBYTE(v9) = *(a2 + 28);
  return GlCustomLog(15, "GlPeTimeManager::SetGalUtcModel(%u): Updated:%c  FromNvMem:%c  Source:%s  GalWeek:%d  GalTowS:%u  Model{A0(ns):%.1lf  A1(ns/s):%.1lf  WNt:%d  Tot(s):%.0lf  Tls:%d}\n", v8, v7, v11, BlueFin::GlPeTimeManager::m_acNavDataSourceImage[*(a2 + 2)], *(a2 + 6), *(a2 + 4) / 0x3E8u, v13, v10, *(a2 + 29), *&v9 * 3600.0, *(a2 + 30));
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2GalSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 0x10) != 0)
  {
    v3 = this;
    v4 = -*(this + 176);
    if (a2)
    {
      if (*(this + 164))
      {
        this = (*(*a2 + 32))(a2);
        LODWORD(v5) = *(a2 + 2);
        *&v6 = v5 * 2.32830644e-10;
        v7 = *&v6 + this;
        LOWORD(v6) = *(v3 + 164);
        v8 = v4 - *(v3 + 184) * (v7 + v6 * -604800.0);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2GpsSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 4) != 0)
  {
    v3 = this;
    v4 = -*(this + 96);
    if (a2)
    {
      if (*(this + 84))
      {
        this = (*(*a2 + 32))(a2);
        LODWORD(v5) = *(a2 + 2);
        *&v6 = v5 * 2.32830644e-10;
        v7 = *&v6 + this;
        LOWORD(v6) = *(v3 + 84);
        v8 = v4 - *(v3 + 104) * (v7 + v6 * -604800.0);
      }
    }
  }

  return this;
}

void BlueFin::GlPeTimeManager::SetBdsSystemOffset(int8x8_t *this, int8x8_t *a2)
{
  v4 = BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this + 268, a2);
  v5 = BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(v4, a2[1].i32[0]);
  v6 = this[269].u32[1];
  this[269].i32[1] = v6 & ~(1 << v5);
  if (((1 << v5) & v6) != 0)
  {

    BlueFin::GlPeTimeManager::updateConversionTable(this);
  }
}

BOOL BlueFin::GlPeBdsTimeMgr::acceptSystemOffsetUpdate(BlueFin::GlPeBdsTimeMgr *this, const BlueFin::GlPeBdsSingleSysOffsetData *a2)
{
  v2 = *(a2 + 5);
  if (!v2)
  {
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 542, "acceptSystemOffsetUpdate", "rotCandidateSysOffset.etSrc != GLPE_NAV_DATA_FROM_NONE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 542, "rotCandidateSysOffset.etSrc != GLPE_NAV_DATA_FROM_NONE");
  }

  if (*(this + 16) == 1)
  {
    v5 = *(this + 17) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  result = 0;
  v7 = v5 & (*(a2 + 3) == 0.0);
  if (*(a2 + 4) != 0.0)
  {
    v7 = 0;
  }

  if (((v2 == 1) & v5) == 0 && (v7 & 1) == 0)
  {
    v8 = BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(0, *(a2 + 2));
    if (((*(this + 2) >> v8) & 1) != 0 && (v9 = this + *&aH_1[8 * v8 - 16], v10 = *(a2 + 5), v11 = *(v9 + 5), v10 >= v11))
    {
      return v10 == v11 && *(a2 + 4) >= *(v9 + 4);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdsSingleSysOffsetData::Deserialize(BlueFin::GlPeBdsSingleSysOffsetData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 34 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 418);
  }

  return v3;
}

uint64_t BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(BlueFin::GlPeTimeManager *this)
{
  if (*(this + 432) == 1 && (*(this + 435) = 0, *(this + 646)) && (v1 = *(this + 433), v1 != 254))
  {
    return BlueFin::GlPeTimeManager::updateLeapSeconds(this, *(this + 2588), 3, 0, (*(this + 2588) + v1));
  }

  else
  {
    return 0;
  }
}

double BlueFin::GlPeGlnTimeMgr::initializeTimeData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8))
  {
    v6 = *(a2 + 10);
    if (v6)
    {
      *(a1 + 57) = *(a2 + 8);
      *(a1 + 58) = v6;
      *(a1 + 56) = 1;
    }
  }

  *(a1 + 128) = *(a2 + 12);
  if (*(a2 + 16) == 1)
  {
    BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(a1 + 192, a3, **(a1 + 8), *(a2 + 24));
    *(a1 + 28) |= 2u;
  }

  if (*(a2 + 32) == 1)
  {
    BlueFin::GlPeGlnTimeMgr::TauGpsMgr::Update(a1 + 136, a3, **(a1 + 8), *(a2 + 40));
  }

  if (*(a2 + 48) == 1)
  {
    if (*(a1 + 240))
    {
      v8 = *(a1 + 241);
      v9 = *(a2 + 49);
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v9) = *(a2 + 49);
    }

    *(a1 + 243) = 1;
    LOBYTE(v8) = v9;
LABEL_14:
    *(a1 + 240) = 1;
    *(a1 + 241) = v8;
    *(a1 + 29) |= 2u;
  }

  if (*(a2 + 50) == 1)
  {
    *(a1 + 244) = 1;
    result = *(a2 + 52);
    *(a1 + 248) = result;
  }

  return result;
}

int8x16_t *BlueFin::GlPeGpsTimeMgr::RecoverFromNvMem(int8x16_t *this, const BlueFin::GlPeGpsUtcModel *a2, double a3, int8x16_t a4)
{
  if (*(a2 + 42))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 44) == 0;
  }

  if (!v6 || *(a2 + 40) != 0 || *(a2 + 41) != 0)
  {
    v13 = v4;
    v14 = v5;
    v9.i64[0] = &unk_2A1F185A8;
    v9.i32[2] = *(a2 + 2);
    v11 = *(a2 + 3);
    v10 = &off_2A1F0B5F0;
    v12 = *(a2 + 2);
    v9.i8[12] = 1;
    return BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(this, &v9, 0, *&v12, a4);
  }

  return this;
}

uint64_t BlueFin::GlPeLtoMgr::Deserialize(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2, char a3, int a4, int a5)
{
  if (a5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  *(this + 409) = *(this + 409) & 0xFFFFFFFB | v8;
  BlueFin::GlPeLtoData::Deserialize((this + 128), a2);
  if (a3)
  {
    v9 = 3;
  }

  else
  {
    if ((a4 - 1) > 0x26)
    {
      goto LABEL_9;
    }

    v9 = 2;
  }

  *(this + 409) |= v9;
LABEL_9:

  return BlueFin::GlPeLtoMgr::MakeNvMemDataActive(this, 0);
}

uint64_t BlueFin::GlPeGalTimeMgr::SetUtcModel(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlPeGalUtcModelData *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 4);
  v4 = *(this + 6);
  v5 = *(a2 + 2);
  if (v4)
  {
    v6 = v5 < v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v3 / 0x3E8 + 604800 * v2 <= *(this + 8) / 0x3E8u + 604800 * *(this + 14))
  {
    return 0;
  }

  v10 = (this + 16);
  if (BlueFin::GlPeGalUtcModelData::operator==(this + 16, a2))
  {
    return 0;
  }

  if (v10 != a2)
  {
    *(this + 6) = v5;
    *(this + 14) = v2;
    *(this + 8) = v3;
    *(this + 36) = *(a2 + 20);
  }

  result = 1;
  *(this + 56) = 1;
  return result;
}

double BlueFin::GlPeGpsTimeMgr::GetGps2UtcSysOffsetS(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2)
{
  v2 = 0.0;
  if (*(this + 18) && (!a2 || !BlueFin::GlPeGpsTimeMgr::isExpired(this, a2)))
  {
    BlueFin::GlPeGpsUtcModel::computeUtcSysOffsetS(this + 64, a2);
    return -v5;
  }

  return v2;
}

uint64_t BlueFin::stPeStoredDoppler::operator=(uint64_t a1, uint64_t a2)
{
  BlueFin::GlSetBase::operator=(a1 + 18440, a2 + 18440);
  v4 = 0;
  *(a1 + 18452) = *(a2 + 18452);
  v5 = *(a2 + 18468);
  v6 = *(a2 + 18484);
  v7 = *(a2 + 18500);
  *(a1 + 18512) = *(a2 + 18512);
  *(a1 + 18484) = v6;
  *(a1 + 18500) = v7;
  *(a1 + 18468) = v5;
  *(a1 + 18528) = *(a2 + 18528);
  v8 = *(a2 + 18432);
  v9 = *(a1 + 18432);
  v10 = 575;
  do
  {
    if (v9 != v8)
    {
      v11 = v9 + v4;
      *v11 = *(v8 + v4);
      *(v11 + 4) = *(v8 + v4 + 4);
      *(v11 + 8) = *(v8 + v4 + 8);
    }

    v12 = v9 + v4;
    *(v12 + 12) = *(v8 + v4 + 12);
    *(v12 + 16) = *(v8 + v4 + 16);
    *(v12 + 24) = *(v8 + v4 + 24);
    v4 += 32;
    --v10;
  }

  while (v10);
  return a1;
}

uint64_t BlueFin::GlPeGloEphMgr::SetLtoEph(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeLtoEphemeris *a2)
{
  if (!(*(*a2 + 192))(a2, 35))
  {
    (*(*a2 + 136))(&v5, a2);
    GlCustomLog(12, "GlPeGloEphMgr::SetLtoEph: LTO ephemeris for OSN:%d cannot be used until its FCN is known.\n", v5);
  }

  return (*(*this + 376))(this, a2, 0);
}

__n128 BlueFin::GlPeLtoMgr::UpdateUtcModel(uint64_t a1, __n128 *a2, uint64_t a3, int a4, double a5, int8x16_t a6)
{
  v6 = a4;
  if (a4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v10 = *(a1 + 88);
  v12.i64[0] = &unk_2A1F185A8;
  v12.i32[2] = v9;
  v12.i8[12] = 0;
  v13 = &off_2A1F0B5F0;
  v14 = *(a3 + 8);
  v15 = *a2;
  BlueFin::GlPeTimeManager::SetGpsUtcModel(v10, &v12, v15.n128_f64[0], a6);
  if ((v6 & 1) == 0)
  {
    *(a1 + 26464) |= 1u;
    result = *a2;
    *(a1 + 19968) = *a2;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoReader::GlPeLtoReader(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *&v138 = a2;
  *(&v138 + 1) = a3;
  *a1 = &unk_2A1F107A8;
  *(a1 + 9740) = 0u;
  *(a1 + 9756) = 0u;
  *(a1 + 9772) = 0u;
  *(a1 + 9784) = 0u;
  *(a1 + 9808) = -1;
  *(a1 + 9960) = 0u;
  *(a1 + 9816) = 0u;
  *(a1 + 9832) = 0u;
  *(a1 + 9848) = 0u;
  *(a1 + 9864) = 0u;
  v17 = (a1 + 96800);
  *(a1 + 9880) = 0u;
  *(a1 + 9896) = 0u;
  v18 = a1 + 39344;
  v19 = a1 + 26960;
  *(a1 + 9912) = 0u;
  *(a1 + 9928) = 0u;
  v20 = a1 + 9716;
  *(a1 + 9941) = 0u;
  *(a1 + 10184) = 0u;
  *(a1 + 10208) = a1 + 16040;
  *(a1 + 10240) = a1 + 21864;
  *(a1 + 10248) = a1 + 22632;
  v21 = (a1 + 11432);
  *(a1 + 10272) = a1 + 10284;
  *(a1 + 10280) = 2;
  v22 = (a1 + 18408);
  *(a1 + 10328) = a1 + 10340;
  v23 = (a1 + 24744);
  *(a1 + 10336) = 2;
  *(a1 + 10408) = a1 + 48556;
  *(a1 + 10416) = a1 + 48632;
  *(a1 + 10424) = a1 + 11104;
  *(a1 + 10472) = a1 + 11168;
  *(a1 + 10480) = a1 + 47480;
  v24 = a1 + 26184;
  *(a1 + 10504) = xmmword_298A407D0;
  *(a1 + 10496) = a1 + 11176;
  *(a1 + 10552) = a1 + 96832;
  v25 = (a1 + 26972);
  *(a1 + 10560) = a1 + 97088;
  *(a1 + 10568) = a1 + 97344;
  v26 = a1 + 36044;
  *(a1 + 10576) = a1 + 97600;
  *(a1 + 10584) = a1 + 97856;
  v137 = (a1 + 40388);
  *(a1 + 10592) = a1 + 98048;
  *(a1 + 10600) = a1 + 98240;
  v27 = a1 + 45572;
  *(a1 + 10608) = a1 + 98368;
  *(a1 + 10616) = a1 + 98496;
  v136 = (a1 + 47492);
  *(a1 + 10624) = a1 + 98624;
  *(a1 + 10632) = a1 + 99072;
  v135 = a1 + 11084;
  *(a1 + 10640) = a1 + 99520;
  *(a1 + 10648) = a1 + 99968;
  v133 = (a1 + 11120);
  *(a1 + 10656) = a1 + 100224;
  *(a1 + 10720) = a1 + 102492;
  *(a1 + 10736) = a1 + 11404;
  *(a1 + 10744) = a1 + 50660;
  *(a1 + 10752) = a1 + 11280;
  *(a1 + 10760) = a1 + 11312;
  *(a1 + 10768) = a1 + 50680;
  v28 = (a1 + 11136);
  *(a1 + 10784) = 1;
  v29 = (a1 + 11152);
  *(a1 + 10816) = a6;
  v30 = a1 + 11376;
  *(a1 + 10848) = a1 + 22632;
  v31 = a1 + 17216;
  *(a1 + 10880) = a1 + 48632;
  v32 = a1 + 18272;
  *(a1 + 10888) = a1 + 11104;
  v33 = a1 + 46464;
  *(a1 + 10904) = a1 + 47480;
  *(a1 + 10456) = a1 + 40376;
  *(a1 + 10920) = a1 + 40376;
  *(a1 + 11032) = 0u;
  v120 = a1 + 47472;
  *(a1 + 10488) = a1 + 50648;
  *(a1 + 10928) = a1 + 50648;
  v34 = a1 + 26560;
  v35 = a1 + 26912;
  v36 = a1 + 38336;
  *(a1 + 12) = -1;
  *v20 = 0;
  *(a1 + 10200) = v21;
  *(a1 + 10216) = v31;
  *(a1 + 10224) = v32;
  v129 = v22;
  *(a1 + 10232) = v22;
  *(a1 + 10256) = v23;
  *(a1 + 10264) = v24;
  *(v20 + 568) = 0;
  *(a1 + 10296) = v34;
  *(a1 + 10304) = v35;
  *(a1 + 10312) = v19;
  *(a1 + 10320) = v25;
  *(v20 + 624) = 0;
  *(a1 + 10352) = v26;
  *(a1 + 10360) = v36;
  *(a1 + 10368) = a1 + 39360;
  *(a1 + 10376) = v137;
  v122 = v27;
  *(a1 + 10384) = v27;
  *(a1 + 10392) = v33;
  *(a1 + 10400) = v136;
  *(a1 + 10432) = v135;
  *(a1 + 10440) = v133;
  v125 = v28;
  *(a1 + 10448) = v28;
  v131 = v29;
  *(a1 + 10464) = v29;
  *(a1 + 10520) = vdup_n_s32(0xFEEDBEEF);
  *(v20 + 812) = 0;
  *(v20 + 814) = 0;
  v37 = v20;
  *(a1 + 10536) = a1 + 50720;
  *(a1 + 10544) = -1;
  v132 = v30;
  *(a1 + 10664) = a1 + 100480;
  *(a1 + 10672) = a1 + 100544;
  *(a1 + 10680) = a1 + 100960;
  *(a1 + 10688) = a1 + 101088;
  *(a1 + 10696) = a1 + 101856;
  *(a1 + 10704) = a1 + 102304;
  *(a1 + 10712) = a1 + 102480;
  *(a1 + 10728) = v30;
  *(a1 + 10776) = a2;
  *(a1 + 10792) = a5;
  *(a1 + 10800) = 0;
  *(a1 + 10808) = 0;
  *(a1 + 10824) = 0;
  *(a1 + 10832) = 0xFFFFFFFF00000000;
  v130 = v21;
  *(a1 + 10840) = v21;
  *(a1 + 10856) = v23;
  *(a1 + 10864) = v25;
  *(a1 + 10872) = v137;
  *(a1 + 10896) = v135;
  v38 = v19;
  v39 = v34;
  v126 = v38;
  *(a1 + 10912) = v38;
  v123 = v32;
  v124 = v31;
  *(a1 + 10936) = v31;
  *(a1 + 10944) = v32;
  *(a1 + 10952) = v34;
  v121 = v35;
  *(a1 + 10960) = v35;
  v119 = v36;
  *(a1 + 10968) = v36;
  *(a1 + 10976) = a1 + 39360;
  *(a1 + 10984) = a1 + 100544;
  *(a1 + 10992) = a1 + 100960;
  *(a1 + 11000) = a1 + 101088;
  *(a1 + 11008) = a1 + 101856;
  *(a1 + 11016) = a1 + 102304;
  *(a1 + 11024) = a1 + 102480;
  *(a1 + 11048) = 0;
  *(a1 + 11064) = a2;
  *(v20 + 1356) = 0;
  *(a1 + 11052) = a4;
  *(a1 + 11056) = -1;
  *(v20 + 1364) = 0;
  bzero((a1 + 16), 0x25E4uLL);
  *(a1 + 8) = 0;
  *(a1 + 9717) = 0u;
  *(a1 + 9976) = 0u;
  *(a1 + 9992) = 0u;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0u;
  *(a1 + 10040) = 0u;
  *(a1 + 10056) = 0u;
  *(a1 + 10072) = 0u;
  *(a1 + 10088) = 0u;
  *(a1 + 10104) = 0u;
  *(a1 + 10120) = 0u;
  *(a1 + 10136) = 0u;
  *(a1 + 10152) = 0u;
  *(a1 + 10164) = 0u;
  *(a1 + 9800) = a4;
  *(a1 + 9804) = -1;
  *(a1 + 9736) = 9700;
  *(v37 + 152) = xmmword_298A32900;
  *(a1 + 9884) = 0;
  *(v37 + 240) = 0;
  v40 = *(a1 + 10192);
  if (v40)
  {
    *(v40 + 4) = 0;
  }

  v41 = (a1 + 100928);
  v42 = (a1 + 22692);
  if (a5)
  {
    *a5 = 0;
  }

  *(a1 + 10808) = 0;
  *a1 = &unk_2A1F107E8;
  *v133 = 0;
  *(v133 + 6) = 0;
  *v125 = 0;
  *(v125 + 6) = 0;
  *(a1 + 11176) = 0xFFFFFFFFLL;
  *(a1 + 11184) = 0;
  *(a1 + 11192) = *(&v138 + 1);
  *(a1 + 11200) = a7;
  *(a1 + 11208) = a8;
  *(a1 + 11216) = a9;
  *(a1 + 11224) = a10;
  *(a1 + 11232) = a11;
  *(a1 + 11240) = a12;
  *(a1 + 11248) = a13;
  *(a1 + 11256) = a14;
  *(a1 + 11264) = a15;
  *(a1 + 11272) = a16;
  *(a1 + 18240) = v124;
  *(a1 + 18400) = v123;
  *(a1 + 26880) = v39;
  *(a1 + 26952) = v121;
  *v126 = 0;
  *(v126 + 4) = 0;
  *v18 = v119;
  *(v18 + 1024) = a1 + 39360;
  *(v18 + 1032) = 0;
  *(v18 + 1036) = 0;
  *v120 = v33;
  *(v120 + 8) = 0;
  *(v120 + 12) = 0;
  *(v120 + 3176) = 0;
  *(v120 + 3180) = 0;
  *(v120 + 3208) = v120 + 3220;
  *(v120 + 3216) = 3;
  *(v120 + 3224) = 0;
  *(v120 + 3220) = 2048;
  *(v120 + 3232) = 3;
  *v17 = a1 + 50720;
  v17[4] = 0xFFFFFFFF00000000;
  v43 = v17 + 34;
  v44 = 32;
  v17[32] = a1 + 96864;
  do
  {
    *(v43 - 2) = 0;
    *(v43 - 2) = 0;
    *v43 = 0;
    v43 += 3;
    --v44;
  }

  while (v44);
  v17[36] = 0xFFFFFFFF00000000;
  v17[64] = a1 + 97120;
  v45 = v17 + 162;
  v46 = 32;
  do
  {
    *(v45 - 2) = 0;
    *(v45 - 2) = 0;
    *v45 = 0;
    v45 += 3;
    --v46;
  }

  while (v46);
  v17[68] = 0xFFFFFFFF00000000;
  v17[96] = a1 + 97376;
  v47 = v17 + 290;
  v48 = 32;
  do
  {
    *(v47 - 2) = 0;
    *(v47 - 2) = 0;
    *v47 = 0;
    v47 += 3;
    --v48;
  }

  while (v48);
  v17[100] = 0xFFFFFFFF00000000;
  v17[128] = a1 + 97632;
  v49 = v17 + 418;
  v50 = 32;
  do
  {
    *(v49 - 2) = 0;
    *(v49 - 2) = 0;
    *v49 = 0;
    v49 += 3;
    --v50;
  }

  while (v50);
  v17[132] = 0xFFFFFFFF00000000;
  v17[154] = a1 + 97888;
  v51 = v17 + 546;
  v52 = 24;
  do
  {
    *(v51 - 2) = 0;
    *(v51 - 2) = 0;
    *v51 = 0;
    v51 += 3;
    --v52;
  }

  while (v52);
  v17[156] = 0xFFFFFFFF00000000;
  v17[178] = a1 + 98080;
  v53 = v17 + 642;
  v54 = 24;
  do
  {
    *(v53 - 2) = 0;
    *(v53 - 2) = 0;
    *v53 = 0;
    v53 += 3;
    --v54;
  }

  while (v54);
  v17[180] = 0xFFFFFFFF00000000;
  v17[192] = a1 + 98272;
  v55 = v17 + 738;
  v56 = 10;
  do
  {
    *(v55 - 2) = 0;
    *(v55 - 2) = 0;
    *v55 = 0;
    v55 += 3;
    --v56;
  }

  while (v56);
  v17[196] = 0xFFFFFFFF00000000;
  v17[208] = a1 + 98400;
  v57 = v17 + 802;
  v58 = 10;
  do
  {
    *(v57 - 2) = 0;
    *(v57 - 2) = 0;
    *v57 = 0;
    v57 += 3;
    --v58;
  }

  while (v58);
  v17[212] = 0xFFFFFFFF00000000;
  v17[224] = a1 + 98528;
  v59 = v17 + 866;
  v60 = 10;
  do
  {
    *(v59 - 2) = 0;
    *(v59 - 2) = 0;
    *v59 = 0;
    v59 += 3;
    --v60;
  }

  while (v60);
  v17[228] = 0xFFFFFFFF00000000;
  v17[280] = a1 + 98656;
  v61 = v17 + 930;
  v62 = 63;
  do
  {
    *(v61 - 2) = 0;
    *(v61 - 2) = 0;
    *v61 = 0;
    v61 += 3;
    --v62;
  }

  while (v62);
  v17[284] = 0xFFFFFFFF00000000;
  v17[336] = a1 + 99104;
  v63 = v17 + 1154;
  v64 = 63;
  do
  {
    *(v63 - 2) = 0;
    *(v63 - 2) = 0;
    *v63 = 0;
    v63 += 3;
    --v64;
  }

  while (v64);
  v17[340] = 0xFFFFFFFF00000000;
  v17[392] = a1 + 99552;
  v65 = v17 + 1378;
  v66 = 63;
  do
  {
    *(v65 - 2) = 0;
    *(v65 - 2) = 0;
    *v65 = 0;
    v65 += 3;
    --v66;
  }

  while (v66);
  v17[396] = 0xFFFFFFFF00000000;
  v17[427] = a1 + 100000;
  v67 = v17 + 1602;
  v68 = 36;
  do
  {
    *(v67 - 2) = 0;
    *(v67 - 2) = 0;
    *v67 = 0;
    v67 += 3;
    --v68;
  }

  while (v68);
  v17[428] = 0xFFFFFFFF00000000;
  v17[459] = a1 + 100256;
  v69 = v17 + 1730;
  v70 = 36;
  do
  {
    *(v69 - 2) = 0;
    *(v69 - 2) = 0;
    *v69 = 0;
    v69 += 3;
    --v70;
  }

  while (v70);
  *v41 = a1 + 100544;
  *(a1 + 101080) = a1 + 100960;
  *(a1 + 101848) = a1 + 101088;
  *(a1 + 102288) = a1 + 101856;
  *(a1 + 102472) = a1 + 102304;
  GlCustomLog(15, "LTO under license to '%s', license #%u\n", "ice", 10);
  GlCustomLog(15, "%s\n", "LTO_LICENSEE=ice");
  bzero(v23, 0x5A0uLL);
  *(v135 + 32) = 0;
  *v135 = 0u;
  *(v135 + 16) = 0u;
  bzero(v130, 0x1680uLL);
  bzero(v129, 0x1080uLL);
  bzero(v25, 0x2C4CuLL);
  bzero(v137, 0x17A0uLL);
  bzero(v136, 0xC54uLL);
  for (i = 0; i != 1024; i += 32)
  {
    v72 = *(a1 + 18240) + i;
    *v72 = -1;
    *(v72 + 4) = -1;
    *(v72 + 28) = 0;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;
    *(v72 + 23) = 0;
  }

  v73 = (*(a1 + 18400) + 2);
  v74 = 32;
  do
  {
    *(v73 - 2) = -1;
    *v73 = 0;
    v73 += 2;
    --v74;
  }

  while (v74);
  for (j = 0; j != 1008; j += 28)
  {
    v76 = *v120 + j;
    *v76 = -1;
    *(v76 + 4) = -1;
    *(v76 + 8) = 0;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
  }

  for (k = 0; k != 320; k += 32)
  {
    v78 = *(a1 + 26880) + k;
    *v78 = -1;
    *(v78 + 4) = -1;
    *(v78 + 28) = 0;
    *(v78 + 8) = 0;
    *(v78 + 16) = 0;
    *(v78 + 23) = 0;
  }

  v79 = (*(a1 + 26952) + 2);
  v80 = 10;
  do
  {
    *(v79 - 2) = -1;
    *v79 = 0;
    v79 += 2;
    --v80;
  }

  while (v80);
  for (m = 0; m != 1008; m += 16)
  {
    v82 = *v18 + m;
    *v82 = -1;
    *(v82 + 4) = 0;
    *(v82 + 12) = 0;
  }

  for (n = 0; n != 1008; n += 16)
  {
    v84 = *(v18 + 1024) + n;
    *v84 = -1;
    *(v84 + 4) = 0;
    *(v84 + 12) = 0;
  }

  for (ii = 0; ii != 4; ++ii)
  {
    v86 = *v17 + 11520 * ii;
    *v86 = 0;
    *(v86 + 8) = 0uLL;
    *(v86 + 24) = 0uLL;
    *(v86 + 40) = 0uLL;
    *(v86 + 56) = 0;
    *(v86 + 64) = 0xFFFFFFFFLL;
    *(v86 + 11496) = v86 + 96;
    v87 = -11400;
    do
    {
      v88 = *(v86 + 11496) + v87;
      *(v88 + 11592) = 0;
      *(v88 + 11560) = 0uLL;
      *(v88 + 11576) = 0uLL;
      *(v88 + 11528) = 0uLL;
      *(v88 + 11544) = 0uLL;
      *(v88 + 11496) = 0uLL;
      *(v88 + 11512) = 0uLL;
      *(v88 + 11464) = 0uLL;
      *(v88 + 11480) = 0uLL;
      *(v88 + 11432) = 0uLL;
      *(v88 + 11448) = 0uLL;
      *(v88 + 11400) = 0uLL;
      *(v88 + 11416) = 0uLL;
      v87 += 200;
    }

    while (v87);
  }

  v89 = *v41 + 8;
  v90 = 32;
  do
  {
    *(v89 - 8) = -1;
    *(v89 - 4) = 0xFFFFFFFFLL;
    v89 += 12;
    --v90;
  }

  while (v90);
  v91 = *(a1 + 101080) + 8;
  v92 = 10;
  do
  {
    *(v91 - 8) = -1;
    *(v91 - 4) = 0xFFFFFFFFLL;
    v91 += 12;
    --v92;
  }

  while (v92);
  v93 = *(a1 + 101848) + 8;
  v94 = 63;
  do
  {
    *(v93 - 8) = -1;
    *(v93 - 4) = 0xFFFFFFFFLL;
    v93 += 12;
    --v94;
  }

  while (v94);
  v95 = *(a1 + 102288) + 8;
  v96 = 36;
  do
  {
    *(v95 - 8) = -1;
    *(v95 - 4) = 0xFFFFFFFFLL;
    v95 += 12;
    --v96;
  }

  while (v96);
  v97 = *(a1 + 102472) + 8;
  v98 = 14;
  do
  {
    *(v97 - 8) = -1;
    *(v97 - 4) = 0xFFFFFFFFLL;
    v97 += 12;
    --v98;
  }

  while (v98);
  if (v138 == 0)
  {
    GlCustomLog(14, "LTO error in initialization\n");
    v99 = 65;
  }

  else
  {
    v99 = 0;
  }

  *(a1 + 8) = v99;
  v100 = -4608;
  v101 = 16040;
  do
  {
    *(a1 + v100 + 16040) = 255;
    *(a1 + v101) = -1;
    v101 += 36;
    v100 += 144;
  }

  while (v100);
  v102 = 18408;
  do
  {
    *(a1 + v102) = 255;
    *(a1 + 21866 + v100) = 0;
    *v42 = -1;
    v42 += 88;
    v100 += 32;
    v102 += 144;
  }

  while (v100 != 768);
  for (jj = 0; jj != 360; jj += 36)
  {
    *(v24 + 4 * jj - 1440) = 255;
    v104 = v24 + jj;
    *(v104 + 32) = 0;
    *v104 = 0uLL;
    *(v104 + 16) = 0uLL;
    *v104 = -1;
  }

  for (kk = 0; kk != 2268; kk += 36)
  {
    *(v25 + kk) = 255;
    *(v26 + kk) = -1;
  }

  v106 = 0;
  v107 = 40388;
  do
  {
    *(a1 + v107) = 255;
    *(v122 + v106) = -1;
    v106 += 24;
    v107 += 144;
  }

  while (v106 != 864);
  *v131 = 0;
  v131[1] = 0;
  *(v131 + 14) = 0;
  v108 = xmmword_298A319C0;
  v109 = xmmword_298A319D0;
  v110 = (v120 + 188);
  v111 = 20;
  v112 = vdupq_n_s64(0x13uLL);
  v113 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v112, v109)), *v108.i8).u8[0])
    {
      *(v110 - 168) = -1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v109)), *&v108).i8[2])
    {
      *(v110 - 112) = -1;
    }

    if (vuzp1_s16(*&v108, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v108))).i32[1])
    {
      *(v110 - 56) = -1;
      *v110 = -1;
    }

    v108 = vaddq_s64(v108, v113);
    v109 = vaddq_s64(v109, v113);
    v110 += 224;
    v111 -= 4;
  }

  while (v111);
  *(a1 + 9844) = a4;
  *(a1 + 9848) = -1;
  v114 = xmmword_298A319D0;
  v115 = (v120 + 1304);
  v116 = vdupq_n_s64(2uLL);
  v117 = 14;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v114)).u8[0])
    {
      *(v115 - 36) = 255;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), *&v114)).i32[1])
    {
      *v115 = 255;
    }

    v114 = vaddq_s64(v114, v116);
    v115 += 72;
    v117 -= 2;
  }

  while (v117);
  *(a1 + 100512) = 0u;
  *(a1 + 100528) = 0u;
  *(a1 + 100480) = 0u;
  *(a1 + 100496) = 0u;
  *v132 = 0u;
  *(v132 + 16) = 0u;
  *(v132 + 32) = 0u;
  *(v132 + 48) = 0;
  *(a1 + 102480) = 0u;
  *(a1 + 102496) = 0u;
  *(a1 + 102512) = 0u;
  *(a1 + 102528) = 0;
  return a1;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateL1CaIsc(uint64_t result, unsigned __int8 *a2, unsigned __int8 a3, int a4)
{
  v21[2] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = result + 22836;
    if (a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 32;
    }

    v9 = off_2A1F10790;
    do
    {
      if (*v5 <= 0x1Fu)
      {
        v16 = &unk_2A1F10778;
        v17 = 2;
        v20 = 0;
        v21[0] = 0;
        *&v19[3] = 0;
        *(v21 + 5) = 0;
        *v19 = *v5;
        v18 = a3;
        v10 = v19[0];
        v11 = *&v19[2];
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = v9(&v16);
          v10 = *v5;
          v11 = *(v5 + 1);
        }

        if (v10 <= 0x1F)
        {
          v12 = (*(v6 + 80) + 6 * v10 + 7168);
          if (*v12 == 255 || (a3 & 1) != 0 || (*(*(v6 + 80) + 6 * v10 + 7172) & 1) == 0)
          {
            *v12 = v10;
            *(v12 + 1) = v11;
            v12[4] = a3;
            v12[5] = 0;
          }
        }

        if ((a3 & 1) == 0)
        {
          v13 = *v5;
          if (v13 <= 0x3E)
          {
            v14 = v7 + 4 * v13;
            *(v6 + 26464) |= 0x40000u;
            if (v5 != v14)
            {
              *v14 = v13;
              *(v14 + 2) = *(v5 + 1);
            }
          }
        }
      }

      v5 += 4;
      --v8;
    }

    while (v8);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

double BlueFin::GlPeGalTimeMgr::GetGal2UtcSysOffsetS(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(this + 6))
  {
    return 0.0;
  }

  *a3.i64 = *(this + 10);
  v6 = *a3.i64 * -9.31322575e-10;
  if (a2 && *(this + 9))
  {
    a3.i8[0] = *(this + 44);
    *a3.i64 = a3.u64[0] * 3600.0;
    *a4.i64 = *a3.i64 - trunc(*a3.i64);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    a4.i64[0] = vbslq_s8(vnegq_f64(v7), a4, a3).i64[0];
    if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v9 = *a4.i64 * 4294967300.0 + 0.5;
    v10 = v9;
    if (v9 >= 4294967300.0)
    {
      v10 = -1;
    }

    v11 = *a3.i64 + 604800 * *(this + 45);
    v25 = v10;
    v26 = v11;
    v12 = (*(*a2 + 32))(a2);
    v24[0] = *(a2 + 2);
    v24[1] = v12;
    BlueFin::GlTimePoint::resolveAmbiguity(&v25, v24, 0x93A8000u);
    v13 = (*(*a2 + 24))(a2, v26);
    v14 = *(a2 + 2);
    v15 = *(a2 + 3);
    v16 = v13 | v25;
    if (v13 | v25)
    {
      v17 = v15 - v13;
      if (__PAIR64__(v15, v14) < __PAIR64__(v13, v25))
      {
        v20 = v13 - v15;
        v18 = v25 >= v14;
        v14 = v25 - v14;
        v21 = !v18;
        v15 = v20 - v21;
        v16 = 1;
      }

      else
      {
        v16 = 0;
        v18 = v14 >= v25;
        v14 -= v25;
        v19 = !v18;
        v15 = v17 - v19;
      }
    }

    v22 = v14 * 2.32830644e-10 + v15;
    if ((v16 & ((v15 | v14) != 0)) != 0)
    {
      v22 = -v22;
    }

    return v6 + *(this + 9) * -8.8817842e-16 * v22;
  }

  return v6;
}

uint64_t BlueFin::GlPeGalAltNavData::IsBetterThan(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == 255)
  {
    goto LABEL_14;
  }

  if (*a2 != 255)
  {
    v2 = *(a2 + 13);
    v3 = *(a1 + 13);
    v4 = v2 > v3 || v2 == v3 && *(a2 + 10) > *(a1 + 10);
    if (v2 == v3)
    {
      v5 = *(a2 + 10) != *(a1 + 10);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
LABEL_10:
        if ((a1[28] & 1) == 0)
        {
          v6 = a2[28] ^ 1 | v5;
          return v6 & 1;
        }

        goto LABEL_11;
      }
    }

    if ((a2[28] & 1) == 0)
    {
      v6 = a1[28];
      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

LABEL_11:
  v6 = 1;
  return v6 & 1;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateQzsL1CaIsc(uint64_t result, unsigned __int8 *a2, char a3, int a4)
{
  v21[2] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = result + 23284;
    if (a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 10;
    }

    v9 = off_2A1F10790;
    do
    {
      if (*v5 <= 9u)
      {
        v16 = &unk_2A1F10778;
        v17 = 4;
        v20 = 0;
        v21[0] = 0;
        *&v19[3] = 0;
        *(v21 + 5) = 0;
        *v19 = *v5;
        v18 = a3;
        v10 = v19[0];
        v11 = *&v19[2];
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = v9(&v16);
          v10 = *v5;
          v11 = *(v5 + 1);
        }

        if (v10 <= 9)
        {
          v12 = *(*(v6 + 80) + 7376) + 6 * v10;
          if (*(v12 + 2432) == 255 || (a3 & 1) != 0 || (*(v12 + 2436) & 1) == 0)
          {
            *(v12 + 2432) = v10;
            *(v12 + 2434) = v11;
            *(v12 + 2436) = a3;
            *(v12 + 2437) = 1;
          }
        }

        if ((a3 & 1) == 0)
        {
          v13 = *v5;
          if (v13 <= 0x3E)
          {
            v14 = v7 + 4 * v13;
            *(v6 + 26464) |= 0x200000u;
            if (v5 != v14)
            {
              *v14 = v13;
              *(v14 + 2) = *(v5 + 1);
            }
          }
        }
      }

      v5 += 4;
      --v8;
    }

    while (v8);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 872);
  if (*(this + 856))
  {
    if (*v3)
    {
      return this;
    }

    srand(a2);
    v4 = &BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData::astSvIdPairs + 4 * (rand() / 2147483650.0 * 6.0);
    v5 = *(v2 + 872);
    *v5 = *v4;
    v5[1] = v4[2];
    v6 = (rand() / 2147483650.0 * 3.0);
    this = rand();
    v7 = &BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData::astErrRangeIn100M[2 * v6];
    LOWORD(v8) = v7[1];
    v9.i16[0] = *v7;
    *v10.i64 = (v9.u64[0] + this / 2147483650.0 * v8) * 100.0;
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
      *v9.i64 = -*v10.i64;
      *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
      *v10.i64 = -*vbslq_s8(v13, v10, v9).i64;
    }

    if (*v10.i64 < 0.0)
    {
      v15 = --*v10.i64;
    }

    else
    {
      v15 = *v10.i64;
    }
  }

  else
  {
    v15 = 0;
    *v3 = 0;
  }

  *(v2 + 880) = v15;
  return this;
}

uint64_t BlueFin::GlPosEng::SendNvMem2MicroNav(uint64_t this, int8x16_t a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  if (*(this + 48))
  {
    v7 = this;
    if (*(this + 324) != -1)
    {
      v8 = *(this + 280);
      v9 = *(this + 288);
      v10 = *(this + 162);
      v11 = *(this + 296);
      v12 = *(this + 304);
      v13 = *(this + 170);
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }

      v14 = v13;
      v15 = v10 * 0.000000001;
      if (*(v7 + 123792))
      {
        BlueFin::GlPeTimeManager::GetTime((v7 + 121216), 1, v30);
        v31 = &off_2A1F0B5F0;
        v32 = 0;
        Gps = BlueFin::GlPeGnssTime::GetGps(v30, &v31);
        v17 = (v31[4])(&v31, Gps) / 0x93A80uLL;
        a2 = (v31[4])(&v31);
        LODWORD(v20) = v32;
        *a2.i64 = (v20 * 2.32830644e-10 + (v19 % 0x93A80)) * 1000.0;
        *v21.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
        v22.f64[0] = NAN;
        v22.f64[1] = NAN;
        a3 = vnegq_f64(v22);
        a5 = vbslq_s8(a3, v21, a2);
        if (*a2.i64 > 4294967300.0)
        {
          a2.i64[0] = a5.i64[0];
        }

        if (*a2.i64 < -4294967300.0)
        {
          *v18.i64 = -*a2.i64;
          *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
          a2 = vbslq_s8(a3, a2, v18);
          *a2.i64 = -*a2.i64;
        }

        if (*a2.i64 < 0.0)
        {
          v23 = --*a2.i64;
        }

        else
        {
          v23 = *a2.i64;
        }
      }

      else
      {
        v23 = 0;
        v17 = 0;
      }

      *a5.i64 = v15 * 1000000000.0;
      *a7.i64 = v15 * 1000000000.0 + trunc(v15 * 1000000000.0 * 2.32830644e-10) * -4294967300.0;
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      v25 = vnegq_f64(v24);
      a7.i64[0] = vbslq_s8(v25, a7, a5).u64[0];
      if (v15 * 1000000000.0 > 4294967300.0)
      {
        a5.i64[0] = a7.i64[0];
      }

      if (*a5.i64 < -4294967300.0)
      {
        *a6.i64 = -*a5.i64;
        *a5.i64 = -(*a5.i64 - trunc(*a5.i64 * -2.32830644e-10) * -4294967300.0);
        *a5.i64 = -*vbslq_s8(v25, a5, a6).i64;
      }

      if (*a5.i64 < 0.0)
      {
        v26 = --*a5.i64;
      }

      else
      {
        v26 = *a5.i64;
      }

      *a2.i64 = v14 * 0.000000001 * 1000000000.0;
      *a3.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
      v27 = vbslq_s8(v25, a3, a2);
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = v27.i64[0];
      }

      if (*a2.i64 < -4294967300.0)
      {
        *v27.i64 = -*a2.i64;
        *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
        v28.f64[0] = NAN;
        v28.f64[1] = NAN;
        *a2.i64 = -*vbslq_s8(vnegq_f64(v28), a2, v27).i64;
      }

      if (*a2.i64 < 0.0)
      {
        v29 = --*a2.i64;
      }

      else
      {
        LOWORD(v29) = *a2.i64;
      }

      return (*(**(v7 + 48) + 40))(*(v7 + 48), v26, v29, v17, v23, v8, v9, v11, v12);
    }
  }

  return this;
}

BOOL BlueFin::GlPeAlmMgr::IsAlmInitialized(BlueFin::GlPeAlmMgr *this)
{
  v1 = 0;
  v2 = 1;
  do
  {
    v3 = *(this + 54) + 48 * v1;
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (*v6)
    {
      break;
    }

    v7 = *(v4 + 8);
    if (v7 >= 2)
    {
      v8 = v7 - 1;
      v9 = v5 + 1;
      do
      {
        if (*v9++)
        {
          return v2;
        }
      }

      while (--v8);
    }

    v2 = v1++ < 6;
  }

  while (v1 != 7);
  return v2;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(uint64_t result, int a2, char *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = 26;
  v11[4] = 27;
  if (a2)
  {
    if (a2 != 4)
    {
      goto LABEL_8;
    }

    v3 = v11;
    v4 = 63;
    v5 = 24732;
  }

  else
  {
    v3 = &v9;
    v4 = 32;
    v5 = 24700;
  }

  v6 = (result + v5);
  do
  {
    v7 = *a3++;
    *v6++ = v7;
    --v4;
  }

  while (v4);
  *(result + 24816) |= 1 << *(v3 + 8);
LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlSettingsImpl::SetGpsSignalType(uint64_t this, const unsigned __int8 *a2, int a3)
{
  if (a3 != 32)
  {
    DeviceFaultNotify("glsettings.cpp", 1156, "SetGpsSignalType", "ucNumPrns == NUM_GPS_PRNS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1156, "ucNumPrns == NUM_GPS_PRNS");
  }

  v3 = 0;
  *(this + 924) = 1;
  do
  {
    *(this + 1008 + v3) = a2[v3];
    ++v3;
  }

  while (v3 != 32);
  return this;
}

const char *BlueFin::GlGnss::GetAbbrevGnssName(unsigned int a1)
{
  if (a1 > 6)
  {
    return "INV";
  }

  else
  {
    return off_29EEAC1B0[a1];
  }
}

uint64_t BlueFin::GlPeBdsAltNavData::IsBetterThan(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == 255)
  {
    goto LABEL_14;
  }

  if (*a2 != 255)
  {
    v2 = *(a2 + 7);
    v3 = *(a1 + 7);
    v4 = v2 > v3 || v2 == v3 && *(a2 + 4) > *(a1 + 4);
    if (v2 == v3)
    {
      v5 = *(a2 + 4) != *(a1 + 4);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
LABEL_10:
        if ((a1[16] & 1) == 0)
        {
          v6 = a2[16] ^ 1 | v5;
          return v6 & 1;
        }

        goto LABEL_11;
      }
    }

    if ((a2[16] & 1) == 0)
    {
      v6 = a1[16];
      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

LABEL_11:
  v6 = 1;
  return v6 & 1;
}

uint64_t BlueFin::GlPeIonoModel::operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60))
  {
    v2 = 40;
    v3 = 8;
    while (*(a1 + v3) == *(a2 + v3) && *(a1 + v2) == *(a2 + v2))
    {
      v2 += 4;
      v3 += 8;
      if (v3 == 40)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(int8x16_t *this, int8x16_t *a2, const BlueFin::GlGpsTime *a3, double a4, int8x16_t a5)
{
  v35 = &unk_2A1F185A8;
  v6 = a2->i32[2];
  v36 = v6;
  v37 = a2->i8[12];
  v7 = a2[1].u32[3];
  LODWORD(v39) = a2[1].i32[2];
  HIDWORD(v39) = v7;
  v38 = &off_2A1F0B5F0;
  v8 = a2[2];
  v40 = v8;
  if (v7 < 0x93A80)
  {
    if (a3)
    {
      v39 = *(a3 + 1);
    }

    else
    {
      v9 = this[7].i16[1];
      if (v9)
      {
        v10 = v9 - v40.u8[9];
        if (v10 >= 0)
        {
          v11 = v9 - v40.u8[9];
        }

        else
        {
          v11 = v40.u8[9] - v9;
        }

        v12 = v10 + 256;
        if (v10 >= -127)
        {
          v12 = v9 - v40.u8[9];
        }

        if (v10 >= 128)
        {
          v12 = v10 - 256;
        }

        v13 = v40.u8[8] << 12;
        *v8.i64 = v13;
        if (v11 == 128)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        *a5.i64 = *v8.i64 - trunc(*v8.i64);
        v15.f64[0] = NAN;
        v15.f64[1] = NAN;
        v16 = *vbslq_s8(vnegq_f64(v15), a5, v8).i64;
        if (v16 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v17 = v14 + v9;
        v18 = v16 * 4294967300.0 + 0.5;
        v19 = v18;
        if (v18 >= 4294967300.0)
        {
          v19 = -1;
        }

        LODWORD(v39) = v19;
        HIDWORD(v39) = v13 + 604800 * v17;
      }
    }
  }

  v20 = this[4].i32[2];
  if (!v20 || (this[4].i8[12] & 1) != 0 || v6 < v20)
  {
    goto LABEL_56;
  }

  if (v6 != v20 || v40.i64[0] == this[6].i64[0] && v40.u8[10] == this[6].u8[10] && __PAIR64__(v40.u8[9], v40.u8[8]) == __PAIR64__(this[6].u8[9], this[6].u8[8]) && __PAIR64__(v40.u8[12], v40.u8[11]) == __PAIR64__(this[6].u8[12], this[6].u8[11]) && v40.u8[13] == this[6].u8[13])
  {
    return 0;
  }

  v21 = (*(this[5].i64[0] + 32))(this + 5);
  v22 = (v38[4])(&v38);
  if (v21 < 0x93A80 && v22 < 0x93A80)
  {
    goto LABEL_56;
  }

  if (v21 >= 0x93A80)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  v25 = (v24 / 0x93A80);
  v26 = v25 - v40.u8[9];
  if (v26 >= 0)
  {
    v27 = v25 - v40.u8[9];
  }

  else
  {
    v27 = v40.u8[9] - v25;
  }

  v28 = v26 + 256;
  if (v26 >= -127)
  {
    v28 = v25 - v40.u8[9];
  }

  if (v26 >= 128)
  {
    v29 = v26 - 256;
  }

  else
  {
    v29 = v28;
  }

  if (v27 == 128)
  {
    v29 = 0;
  }

  v30 = v25 - this[6].u8[9];
  v31 = v30 >= 0 ? v30 : -v30;
  if (v31 == 128)
  {
    LOWORD(v30) = 0;
  }

  else if (v30 < 128)
  {
    if (v30 < -127)
    {
      LOWORD(v30) = v30 + 256;
    }
  }

  else
  {
    LOWORD(v30) = v30 - 256;
  }

  if ((v40.u8[8] << 12) + 604800 * v29 <= 604800 * v30 + (this[6].u8[8] << 12))
  {
    return 0;
  }

LABEL_56:
  if (&this[4] == &v35)
  {
    v32 = this[4].i8[12];
  }

  else
  {
    this[4].i32[2] = v36;
    v32 = v37;
    this[4].i8[12] = v37;
    this[5].i64[1] = v39;
    this[6] = v40;
  }

  v33 = 1;
  this[7].i8[0] = 1;
  if ((v32 & 1) == 0)
  {
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(this[4].i64[0] + 24))(this + 4, 0, 0);
    }

    return 1;
  }

  return v33;
}

double BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(BlueFin::GlPeAlmanac *this, double a2)
{
  v2 = *(this + 26);
  v3 = 0.0;
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 2)
      {
        v3 = 0.35;
      }
    }

    else
    {
      v3 = 0.3;
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = *(this + 108) - 6 >= 5;
      v3 = 0.25;
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 == 5)
        {
          v3 = 0.311111111;
        }

        return (v3 + a2) * 3.14159265;
      }

      v5 = *(this + 108);
      v4 = (v5 - 59) >= 5 && (v5 - 1) >= 5;
      v3 = 0.3;
    }

    if (!v4)
    {
      v3 = 0.0;
    }
  }

  return (v3 + a2) * 3.14159265;
}

uint64_t BlueFin::GlPeLtoSliceInterface::ExpectedSize(int a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 328, "ExpectedSize", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 328, "ucVersion == 1");
  }

  if (a1 == 1)
  {
    v2 = 77;
  }

  else
  {
    v2 = 0;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 7;
  }
}

uint64_t BlueFin::GlPeRtiRequestHelper::OnRtiFromNvMem(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 10))
  {
    goto LABEL_14;
  }

  *(a1 + 10) = 1;
  if (a3 == -1 || (v3 = *(a2 + 144), __CFADD__(v3, a3)) || (v5 = v3 + a3, *(a1 + 24) == 1) && v5 >= *(a1 + 176))
  {
    v4 = 0;
  }

  else
  {
    *(a1 + 40) = *(a2 + 8);
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    *(a1 + 104) = *(a2 + 72);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    v9 = *(a2 + 88);
    v10 = *(a2 + 104);
    v11 = *(a2 + 120);
    *(a1 + 168) = *(a2 + 136);
    *(a1 + 152) = v11;
    *(a1 + 136) = v10;
    *(a1 + 120) = v9;
    *(a1 + 176) = v5;
    v4 = 1;
    *(a1 + 24) = 1;
  }

  *(a1 + 9) = 1;
  if (*(a1 + 24) != 1 || *(a1 + 176) >= *(a1 + 184))
  {
    *(a1 + 8) = 1;
  }

  if (!v4)
  {
LABEL_14:
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 8) ^ 1;
  }

  return v12 & 1;
}

__n128 BlueFin::GlPeGnssL5HealthData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 8);
    v3 = (a2 + 8);
    v4 = 32;
    do
    {
      *(v2 - 1) = *(v3 - 1);
      v5 = *v3;
      v3 += 3;
      *v2 = v5;
      v2 += 3;
      --v4;
    }

    while (v4);
    v6 = (a1 + 392);
    v7 = (a2 + 392);
    v8 = 10;
    do
    {
      *(v6 - 1) = *(v7 - 1);
      v9 = *v7;
      v7 += 3;
      *v6 = v9;
      v6 += 3;
      --v8;
    }

    while (v8);
    v10 = (a1 + 512);
    v11 = (a2 + 512);
    v12 = 63;
    do
    {
      *(v10 - 1) = *(v11 - 1);
      v13 = *v11;
      v11 += 3;
      *v10 = v13;
      v10 += 3;
      --v12;
    }

    while (v12);
    v14 = 36;
    v15 = a2 + 1260;
    v16 = a1 + 1260;
    do
    {
      *v16 = *v15;
      *(v16 + 8) = *(v15 + 8);
      v16 += 12;
      v15 += 12;
      --v14;
    }

    while (v14);
    v17 = a2 + 1692;
    v18 = a1 + 1692;
    v19 = 14;
    do
    {
      *v18 = *v17;
      *(v18 + 8) = *(v17 + 8);
      v18 += 12;
      v17 += 12;
      --v19;
    }

    while (v19);
    result = *(a2 + 1860);
    *(a1 + 1860) = result;
    *(a1 + 1876) = *(a2 + 1876);
  }

  return result;
}

uint64_t BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 4)
  {
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 1134, "timeSystemToDataType", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 1134, "false");
  }

  return dword_298A45A90[a2 - 1];
}

uint64_t BlueFin::GlPeBdsTimeMgr::SetUtcModel(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_298A44D00);
  v5 = *(result + 8);
  if ((v5 & 0x20) == 0 || *&v4.i64[1] != *(result + 56) || *v4.i64 != *(result + 64))
  {
    *(result + 52) = *(a2 + 12);
    *(result + 44) = *(a2 + 8);
    *(result + 56) = vextq_s8(v4, v4, 8uLL);
    v5 |= 0x20u;
    v6 = *(result + 12) | 0x20;
    *(result + 8) = v5;
    *(result + 12) = v6;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 27);
  v9 = v7 != *(result + 24) || v8 != *(result + 27) || *(a2 + 26) != *(result + 26) || *(a2 + 25) != *(result + 25);
  if (*(a2 + 24))
  {
    if (*(a2 + 27))
    {
      v10 = *(a2 + 26);
      if (v10)
      {
        if ((v5 & 0x40) == 0 || v9)
        {
          v11 = *(a2 + 25);
          if (v11)
          {
            *(result + 24) = v7;
            *(result + 27) = v8;
            *(result + 26) = v10;
            *(result + 25) = v11;
            *(result + 28) = *(a2 + 8);
            v12 = *(result + 12) | 0x40;
            *(result + 8) = v5 | 0x40;
            *(result + 12) = v12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlWeekTowTime::operator-@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (*(a2 + 8))
  {
    v8 = v4 - v5;
    if (v4 > v5 || (v4 == v5 ? (v9 = v3 >= v6) : (v9 = 0), v9))
    {
      v7 = 0;
      v9 = v3 >= v6;
      v3 -= v6;
      v12 = !v9;
      v4 = v8 - v12;
    }

    else
    {
      v10 = v5 - v4;
      v9 = v6 >= v3;
      v3 = v6 - v3;
      v11 = !v9;
      v4 = v10 - v11;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *a3 = v3;
  *(a3 + 4) = v4;
  if (v4 | v3)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  *(a3 + 8) = v13;
  return result;
}

uint64_t BlueFin::GlGlnsTime::GlGlnsTime(uint64_t this, int a2, unsigned int a3, double a4)
{
  *this = &off_2A1F0E430;
  v4 = a4 - floor(a4);
  if (v4 < 0.0 || v4 >= 1.0)
  {
    v10 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v11 = "glpe_timepoint.h";
    v12 = 173;
    goto LABEL_22;
  }

  v6 = v4 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  v8 = 86400 * a3 + 126230400 * a2 + a4 + 378162000;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v8 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v9 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v9 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  *(this + 8) = v7;
  *(this + 12) = v8 + v9;
  *this = &off_2A1F0E430;
  if (!a2)
  {
    v10 = "ucN4 >= 1";
    DeviceFaultNotify("glpe_datetime.h", 676, "GlGlnsTime", "ucN4 >= 1");
    v11 = "glpe_datetime.h";
    v12 = 676;
    goto LABEL_22;
  }

  if (!a3)
  {
    v10 = "usNt >= 1";
    DeviceFaultNotify("glpe_datetime.h", 677, "GlGlnsTime", "usNt >= 1");
    v11 = "glpe_datetime.h";
    v12 = 677;
    goto LABEL_22;
  }

  if (a3 >= 0x5B6)
  {
    v10 = "usNt <= 1461";
    DeviceFaultNotify("glpe_datetime.h", 678, "GlGlnsTime", "usNt <= 1461");
    v11 = "glpe_datetime.h";
    v12 = 678;
    goto LABEL_22;
  }

  if (a4 < 0.0)
  {
    v10 = "dTodS >= 0.0";
    DeviceFaultNotify("glpe_datetime.h", 679, "GlGlnsTime", "dTodS >= 0.0");
    v11 = "glpe_datetime.h";
    v12 = 679;
    goto LABEL_22;
  }

  if (a4 >= 86400.0)
  {
    v10 = "dTodS < 86400.0";
    DeviceFaultNotify("glpe_datetime.h", 680, "GlGlnsTime", "dTodS < 86400.0");
    v11 = "glpe_datetime.h";
    v12 = 680;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v11, v12, v10);
  }

  return this;
}

uint64_t BlueFin::GlPeGloEphMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = &unk_2A1F0FED0;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 8) = 33;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
    *(a2 + 72) = a1 + 5856;
    v5 = 10;
  }

  else
  {
    v6 = *(a1 + 12);
    v3 = &unk_2A1F0F470;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 8) = (16 * v6) | 2;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 92) = 0u;
    v5 = 19;
  }

  *(a2 + 9) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = vdup_n_s32(0xFF9222FF);
  *a2 = v3;
  return a2;
}

uint64_t BlueFin::GlSettingsImpl::SetBdsSignalType(uint64_t this, const unsigned __int8 *a2, int a3)
{
  if (a3 != 63)
  {
    DeviceFaultNotify("glsettings.cpp", 1146, "SetBdsSignalType", "ucNumPrns == NUM_BEIDOU_PRNS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1146, "ucNumPrns == NUM_BEIDOU_PRNS");
  }

  v3 = 0;
  *(this + 925) = 1;
  do
  {
    *(this + 1040 + v3) = a2[v3];
    ++v3;
  }

  while (v3 != 63);
  return this;
}

uint64_t BlueFin::GlPeGpsQzssAltNavData::IsBetterThan(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == 255)
  {
    goto LABEL_14;
  }

  if (*a2 != 255)
  {
    v2 = *(a2 + 15);
    v3 = *(a1 + 15);
    v4 = v2 > v3 || v2 == v3 && *(a2 + 10) > *(a1 + 10);
    if (v2 == v3)
    {
      v5 = *(a2 + 10) != *(a1 + 10);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
LABEL_10:
        if ((a1[32] & 1) == 0)
        {
          v6 = a2[32] ^ 1 | v5;
          return v6 & 1;
        }

        goto LABEL_11;
      }
    }

    if ((a2[32] & 1) == 0)
    {
      v6 = a1[32];
      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

LABEL_11:
  v6 = 1;
  return v6 & 1;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(uint64_t result, int a2, unsigned __int8 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  if (v3 <= 0x3E)
  {
    v11[0] = result + 20164;
    v11[1] = 0x1000000000;
    v4 = 1;
    v12 = 1;
    v13[0] = result + 21316;
    v13[1] = 0x1300000003;
    v14 = 1;
    v5 = v11;
    while (1)
    {
      v6 = v4;
      if (*(v5 + 2) == a2 && *(v5 + 4) == *(a3 + 1))
      {
        break;
      }

      v4 = 0;
      v5 = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v7 = *v5;
    *(result + 24816) |= 1 << *(v5 + 6);
    if (v7)
    {
      v8 = *(a3 + 1);
      v9 = (v7 + 32 * v3);
      *v9 = *a3;
      v9[1] = v8;
    }
  }

LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeLtoMgr::SetLtoDigest(BlueFin::GlPeLtoMgr *this, void *a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = (this + 1600);
  v7 = *(this + 200) | *(this + 201);
  if (*(this + 100) != 0)
  {
    if (*v6 == *a2 && *(this + 201) == a2[1])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      BlueFin::GlPeLtoMgr::Clear(this, 0);
      LOBYTE(v7) = 1;
    }
  }

  *(this + 1616) = v7;
  if (v6 != a2)
  {
    *v6 = *a2;
  }

  if (a3 && (this + 26443) != a2)
  {
    *(this + 26443) = *a2;
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeTimeManager::CheckForElapsedTimeConsistency(uint64_t this, double a2, double a3, double a4)
{
  v4 = *(this + 4680);
  if (v4)
  {
    LODWORD(a2) = *(this + 4676);
    LODWORD(a4) = *(this + 2568);
    v5 = *&a2 - (v4 + *&a4 * 0.001);
    v6 = *(this + 2552) * 0.001;
    if (vabdd_f64(v5, v6) > 100.0)
    {
      return GlCustomLog(11, "GlPeTimeManager::CheckForElapsedTimeConsistency: Discrepancy in elapsed time recovered from NVRAM. Delta of elapsed time from Machtime Vs RTC is %.0lf sec ElapsedTimeBasedOnMachTimeInfo %.0lf sec RTC Sleep time %.0lf sec\n", v5 - v6, v5, v6);
    }
  }

  return this;
}

uint64_t BlueFin::GlGlnsTime::fct2CtFctS(BlueFin::GlGlnsTime *this, int a2)
{
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= a2 + 504478800 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v2 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v2 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  return a2 + 504478800 + v2;
}

uint64_t BlueFin::GlPeLtoReaderBase::processBlock(uint64_t this, uint64_t a2, uint64_t a3, char *a4)
{
  j = this;
  v481 = this + 0x2000;
  v540 = *MEMORY[0x29EDCA608];
  v496 = (this + 9740);
  v497 = (this + 10120);
  __dst = (this + 16);
  v491 = (this + 9976);
  v479 = this + 10272;
  v480 = this + 10328;
  v499 = this;
  while (2)
  {
    v5 = *(j + 8);
    switch(v5)
    {
      case 0:
        if (*v496 < 0x1Cu)
        {
          goto LABEL_881;
        }

        *v503 = *(j + 28);
        if (*__dst == 14600959 && *(j + 24) == 1)
        {
          *(j + 9752) = *(j + 20);
          *(j + 9960) = *(j + 28);
          v201 = *(j + 10184);
          if (v201)
          {
            *v201 = 1;
            *(v201 + 4) = *v503;
            ***(j + 10768) |= 0x1000u;
          }

          *(j + 9744) = 28;
          v202 = 8;
        }

        else
        {
          GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", 0, 2225, "header");
          BlueFin::GlSetBase::Remove(*(j + 10768), 11);
          *(j + 8) = 65;
          v324 = *(j + 10792);
          if (v324)
          {
            *v324 = 1;
          }

          v202 = 10808;
        }

        *(j + v202) = 1;
        v524 = 0u;
        v525 = 0u;
        v522 = 0u;
        v523 = 0u;
        memset(v521, 0, sizeof(v521));
        v326 = BlueFin::GlFormat::glsnprintf(v521, 0x80, "LTO file id=0x", a4);
        if (v326 <= 0x7E)
        {
          v358 = 0;
          do
          {
            v359 = BlueFin::GlFormat::glsnprintf((v521 + v326), (128 - v326), "%02x", v325, *(v503 + v358));
            if (v358 > 0xE)
            {
              break;
            }

            v326 += v359;
            ++v358;
          }

          while (v326 < 0x7F);
        }

        this = GlCustomLog(14, "%s\n", v521);
        j = v499;
        continue;
      case 1:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 7)
        {
          goto LABEL_878;
        }

        *(j + 9756) = *&__dst[(v6 + 4)];
        v200 = *&__dst[v6];
        if (v200 > 12320511)
        {
          if (v200 > 286357366)
          {
            if (v200 > 806727328)
            {
              if (v200 > 1343598240)
              {
                switch(v200)
                {
                  case 1343598241:
                    *(j + 12) = 7;
                    v456 = *(j + 10704);
LABEL_827:
                    v369 = v456 == 0;
                    v370 = 50;
LABEL_828:
                    if (v369)
                    {
                      v337 = 64;
                    }

                    else
                    {
                      v337 = v370;
                    }

                    goto LABEL_831;
                  case 1438362197:
                    v369 = *(j + 10408) == 0;
                    v370 = 10;
                    goto LABEL_828;
                  case 1537563557:
                    v369 = *(j + 10400) == 0;
                    v370 = 12;
                    goto LABEL_828;
                }
              }

              else
              {
                switch(v200)
                {
                  case 806727329:
                    *(j + 12) = 5;
                    v456 = *(j + 10688);
                    goto LABEL_827;
                  case 1075162785:
                    *(j + 12) = 6;
                    v456 = *(j + 10696);
                    goto LABEL_827;
                  case 1128756537:
                    v369 = *(j + 10664) == 0;
                    v370 = 49;
                    goto LABEL_828;
                }
              }
            }

            else if (v200 > 447584623)
            {
              switch(v200)
              {
                case 447584624:
                  v369 = *(j + 10480) == 0;
                  v370 = 43;
                  goto LABEL_828;
                case 447592816:
                  v369 = *(j + 10456) == 0;
                  v370 = 45;
                  goto LABEL_828;
                case 538291873:
                  *(j + 12) = 3;
                  v456 = *(j + 10680);
                  goto LABEL_827;
              }
            }

            else
            {
              switch(v200)
              {
                case 286357367:
                  v369 = *(j + 10464) == 0;
                  v370 = 28;
                  goto LABEL_828;
                case 286361736:
                  v369 = *(j + 10472) == 0;
                  v370 = 29;
                  goto LABEL_828;
                case 447547760:
                  v369 = *(j + 10312) == 0;
                  v370 = 44;
                  goto LABEL_828;
              }
            }

            goto LABEL_832;
          }

          if (v200 > 269592555)
          {
            if (v200 > 286344259)
            {
              switch(v200)
              {
                case 286344260:
                  v369 = *(j + 10432) == 0;
                  v370 = 18;
                  goto LABEL_828;
                case 286348629:
                  v369 = *(j + 10440) == 0;
                  v370 = 23;
                  goto LABEL_828;
                case 286352998:
                  v369 = *(j + 10448) == 0;
                  v370 = 24;
                  goto LABEL_828;
              }
            }

            else
            {
              switch(v200)
              {
                case 269592556:
                  goto LABEL_776;
                case 269856417:
                  *(j + 12) = 0;
                  v456 = *(j + 10672);
                  goto LABEL_827;
                case 286339891:
                  v369 = *(j + 10424) == 0;
                  v370 = 19;
                  goto LABEL_828;
              }
            }

            goto LABEL_832;
          }

          if (v200 > 269549935)
          {
            switch(v200)
            {
              case 269549936:
                v369 = *(j + 10712) == 0;
                v370 = 51;
                goto LABEL_828;
              case 269551596:
LABEL_776:
                *(j + 10504) = 0;
                *(v481 + 2336) = v200 == 269592556;
                v369 = *(j + 10536) == 0;
                v370 = 46;
                goto LABEL_828;
              case 269552033:
                v369 = *(j + 10720) == 0;
                v370 = 53;
                goto LABEL_828;
            }

            goto LABEL_832;
          }

          if (v200 != 12320512 && v200 != 12320546)
          {
            if (v200 == 123342309)
            {
              v337 = 15;
              goto LABEL_831;
            }

LABEL_832:
            this = BlueFin::GlPeLtoReaderBase::isDcb(j, v200, (j + 10544));
            if (this)
            {
              v337 = 52;
              goto LABEL_831;
            }

            if (BlueFin::GlPeRtoReader::IsRtoEphSection((j + 10832), v200))
            {
              this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
              v469 = this == 0;
              v470 = 54;
              goto LABEL_875;
            }

            this = BlueFin::GlPeRtoReader::IsRtoSystSection((j + 10832), v200);
            if (this)
            {
              this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
              v469 = this == 0;
              v470 = 57;
              goto LABEL_875;
            }

            v337 = 64;
            if (v200 > 352366240)
            {
              if (v200 <= 355708576)
              {
                if (v200 != 352366241)
                {
                  v471 = 354594465;
                  goto LABEL_873;
                }
              }

              else if (v200 != 355708577 && v200 != 356822689)
              {
                v471 = 357936801;
LABEL_873:
                if (v200 != v471)
                {
                  goto LABEL_831;
                }
              }

              this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
              v469 = this == 0;
              v470 = 62;
LABEL_875:
              if (v469)
              {
                v337 = 64;
              }

              else
              {
                v337 = v470;
              }

              goto LABEL_831;
            }

            if (v200 <= 13417243)
            {
              if (v200 == 13406805 || v200 == 13417146)
              {
LABEL_870:
                this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
                v469 = this == 0;
                v470 = 61;
                goto LABEL_875;
              }
            }

            else
            {
              if (v200 == 13417244 || v200 == 13417258)
              {
                goto LABEL_870;
              }

              if (v200 == 269552240)
              {
                this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), 269552240);
                if (this)
                {
                  v337 = 63;
                }

                else
                {
                  v337 = 64;
                }
              }
            }

            goto LABEL_831;
          }

          v337 = 5;
          *(j + 12) = 5;
          this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
          if ((this & 1) == 0)
          {
            v338 = *(j + 10192);
            v337 = 64;
            if (v338)
            {
              v339 = *v338 == 4;
              goto LABEL_848;
            }
          }
        }

        else
        {
          if (v200 <= -1144210661)
          {
            if (v200 > -1441682741)
            {
              if (v200 > -1144221100)
              {
                switch(v200)
                {
                  case -1144221099:
                    v369 = *(j + 10296) == 0;
                    v370 = 38;
                    goto LABEL_828;
                  case -1144214356:
                    v369 = *(j + 10760) == 0;
                    v370 = 35;
                    goto LABEL_828;
                  case -1144210758:
                    v369 = *(j + 10216) == 0;
                    v370 = 36;
                    goto LABEL_828;
                }
              }

              else
              {
                switch(v200)
                {
                  case -1441682740:
                    v369 = *(j + 10208) == 0;
                    v370 = 3;
                    goto LABEL_828;
                  case -1440568645:
                    goto LABEL_734;
                  case -1160651099:
                    v369 = *(j + 10744) == 0;
                    v370 = 33;
                    goto LABEL_828;
                }
              }
            }

            else if (v200 > -1581604423)
            {
              switch(v200)
              {
                case -1581604422:
                  v369 = *(j + 10384) == 0;
                  v370 = 26;
                  goto LABEL_828;
                case -1581407811:
LABEL_777:
                  v369 = *(j + 10352) == 0;
                  v370 = 21;
                  goto LABEL_828;
                case -1441682757:
LABEL_734:
                  v369 = *(j + 10264) == 0;
                  v370 = 25;
                  goto LABEL_828;
              }
            }

            else
            {
              switch(v200)
              {
                case -1860394660:
                  v369 = *(j + 10304) == 0;
                  v370 = 42;
                  goto LABEL_828;
                case -1582521940:
                  v369 = *(j + 10240) == 0;
                  v370 = 20;
                  goto LABEL_828;
                case -1582128718:
                  goto LABEL_777;
              }
            }

            goto LABEL_832;
          }

          if (v200 <= -3342389)
          {
            if (v200 > -1144200732)
            {
              switch(v200)
              {
                case -1144200731:
                  v369 = *(j + 10392) == 0;
                  v370 = 37;
                  goto LABEL_828;
                case -569374191:
                  v369 = *(j + 10496) == 0;
                  v370 = 32;
                  goto LABEL_828;
                case -245624374:
                  v369 = *(j + 10224) == 0;
                  v370 = 41;
                  goto LABEL_828;
              }
            }

            else
            {
              switch(v200)
              {
                case -1144210660:
                  v369 = *(j + 10368) == 0;
                  v370 = 40;
                  goto LABEL_828;
                case -1144210646:
                  v369 = *(j + 10360) == 0;
                  v370 = 39;
                  goto LABEL_828;
                case -1144206646:
                  v369 = *(j + 10752) == 0;
                  v370 = 34;
                  goto LABEL_828;
              }
            }

            goto LABEL_832;
          }

          if (v200 <= 12311807)
          {
            switch(v200)
            {
              case -3342388:
                v337 = 4;
                goto LABEL_831;
              case 12298752:
                *(j + 12) = 6;
                this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
                if (this)
                {
                  goto LABEL_825;
                }

                v463 = *(j + 10192);
                v337 = 64;
                if (!v463)
                {
                  goto LABEL_831;
                }

                v464 = *v463;
                v339 = v464 == 5;
                goto LABEL_849;
              case 12307456:
                *(j + 12) = 0;
                this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
                if (this)
                {
                  goto LABEL_825;
                }

                v418 = *(j + 10192);
                v337 = 64;
                if (!v418)
                {
                  goto LABEL_831;
                }

                v339 = *v418 == 0;
LABEL_848:
                v464 = 5;
LABEL_849:
                if (v339)
                {
                  v337 = v464;
                }

                else
                {
                  v337 = 64;
                }

                goto LABEL_831;
            }

            goto LABEL_832;
          }

          if (v200 != 12311808)
          {
            if (v200 == 12316160 || v200 == 12316194)
            {
              *(j + 12) = 3;
              this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
              if (this)
              {
                goto LABEL_825;
              }

              v458 = *(j + 10192);
              v337 = 64;
              if (!v458)
              {
                goto LABEL_831;
              }

              v339 = *v458 == 3;
              goto LABEL_848;
            }

            goto LABEL_832;
          }

          *(j + 12) = 2;
          this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
          if (this)
          {
LABEL_825:
            v337 = 5;
            goto LABEL_831;
          }

          v468 = *(j + 10192);
          v337 = 64;
          if (v468)
          {
            v339 = *v468 == 2;
            goto LABEL_848;
          }
        }

LABEL_831:
        *(j + 8) = v337;
        *(j + 9744) += 8;
        continue;
      case 3:
      case 25:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 < 4)
        {
          goto LABEL_878;
        }

        v8 = &__dst[v6];
        v9 = bswap32(*&__dst[v6]) + 4;
        if (v7 < v9)
        {
          goto LABEL_878;
        }

        *&v503[2] = &__dst[v6];
        *&v504 = 0;
        v503[0] = 0;
        if (v5 == 25)
        {
          v10 = 10264;
        }

        else
        {
          v10 = 10208;
        }

        if (!*(j + v10))
        {
          goto LABEL_35;
        }

        LODWORD(v504) = BlueFin::GlPeBitReader::getword(v503);
        *&v503[2] = v8 + 4;
        v11 = BlueFin::GlPeBitReader::uint(v503, 0x10u);
        DWORD1(v504) = 32 * (DWORD1(v504) == 32);
        v12 = BlueFin::GlPeBitReader::uint(v503, 8u);
        this = BlueFin::GlPeBitReader::uint(v503, 6u);
        v13 = this;
        DWORD1(v504) = 32 * (DWORD1(v504) == 32);
        v14 = this + 1 > 32 && v5 != 25;
        v15 = this + 1 > 10 && v5 == 25;
        j = v499;
        if (v11 != 4 || v14 || v15)
        {
          goto LABEL_35;
        }

        if (this > 0x7FFFFFFE)
        {
          goto LABEL_31;
        }

        v16 = 0;
        if (v5 == 25)
        {
          v17 = 10;
        }

        else
        {
          v17 = 32;
        }

        while (1)
        {
          for (i = 0; i != 12; ++i)
          {
            v19 = BlueFin::GlPeLtoReaderBase::almanac_elements[i * 4];
            v20 = (v19 & 1) == 0;
            v21 = v19 >> 1;
            this = BlueFin::GlPeBitReader::uint(v503, v19 >> 1);
            v22 = (this << -v21) >> -v21;
            if (v20)
            {
              v22 = this;
            }

            v521[i] = v22;
          }

          v23 = v521[1];
          v24 = v521[2];
          v25 = v521[3];
          v26 = v521[4];
          v27 = v521[5];
          v28 = *&v521[6];
          v29 = v521[10];
          v30 = v521[11];
          DWORD1(v504) = 32 * (DWORD1(v504) == 32);
          j = v499;
          if (v17 <= LOBYTE(v521[0]))
          {
            break;
          }

          v31 = *(v499 + v10);
          if (v31)
          {
            v32 = v31 + 36 * LOBYTE(v521[0]);
            *v32 = v521[0];
            *(v32 + 2) = v23;
            *(v32 + 4) = v24;
            *(v32 + 6) = v25;
            *(v32 + 8) = v26;
            *(v32 + 12) = v28;
            *(v32 + 28) = v30;
            *(v32 + 30) = v29;
            *(v32 + 32) = v12;
            *(v32 + 34) = v27;
          }

          v75 = v16++ == v13;
          if (v75)
          {
LABEL_31:
            if (v5 == 25)
            {
              v33 = 0x40000;
            }

            else
            {
              v33 = 0x4000;
            }

            ***(j + 10768) |= v33;
            break;
          }
        }

LABEL_35:
        *(j + 9744) += v9;
        v34 = *(j + 9760) + v9;
        goto LABEL_454;
      case 4:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        v175 = *&__dst[v6];
        *(j + 9812) = v175;
        v176 = *(j + 9800);
        v177 = v176 - v175;
        v269 = v175 >= v176;
        v178 = v175 - v176;
        if (!v269)
        {
          v178 = v177;
        }

        *(j + 9808) = v178;
        v121 = v6 + 4;
        v122 = 1;
        goto LABEL_237;
      case 5:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 0xF)
        {
          goto LABEL_878;
        }

        *(j + 9764) = *&__dst[v6];
        v203 = *&__dst[(v6 + 4)];
        *(j + 9768) = v203;
        if (v203)
        {
          v204 = v6 + 8;
          v205 = 9772;
          if (*(j + 12))
          {
            v205 = 9788;
          }

          v206 = 9776;
          if (*(j + 12))
          {
            v206 = 9792;
            v207 = 7;
          }

          else
          {
            v207 = 6;
          }

          v208 = 12;
        }

        else
        {
          v204 = v6 + 12;
          v208 = 16;
          v207 = 7;
          v206 = 9792;
          v205 = 9788;
        }

        *(j + v205) = *&__dst[v204];
        *(j + v206) = 0;
        *(j + 8) = v207;
        *(j + 9744) = v208 + v6;
        *(j + 9760) += v208;
        BlueFin::GlSetBase::Remove(*(j + 10768), 7);
        *(j + 9804) = -1;
        goto LABEL_559;
      case 6:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 < 0xC)
        {
          goto LABEL_878;
        }

        if (*&__dst[v6] == 10)
        {
          *(j + 9780) = *&__dst[(v6 + 4)];
        }

        *(j + 9744) = v6 + 8;
        v130 = *(j + 9760);
        *(j + 9760) = v130 + 8;
        v131 = *(j + 9772);
        v132 = *(j + 9776) + 1;
        *(j + 9776) = v132;
        if (v131 != v132)
        {
          continue;
        }

        *(j + 9776) = 0;
        *(j + 9788) = *&__dst[(v6 + 8)];
        *(j + 9744) = v6 + 12;
        *(j + 9760) = v130 + 12;
        v108 = 7;
        goto LABEL_461;
      case 7:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 < 8)
        {
          goto LABEL_878;
        }

        v153 = *&__dst[v6];
        v154 = *(j + 9800);
        if (v154 <= v153)
        {
          v155 = v153;
        }

        else
        {
          v155 = *(j + 9800);
        }

        if (v153 < v154)
        {
          v154 = v153;
        }

        v156 = v155 - v154;
        v157 = (v154 ^ 0x80000000) - (v155 ^ 0x80000000);
        if (v156 >= v157)
        {
          v158 = v157;
        }

        else
        {
          v158 = v156;
        }

        this = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(j + 12));
        v159 = this;
        v160 = *(j + 10192);
        if (v160)
        {
          if (*v160 == this)
          {
            v161 = *(v160 + 4);
            if (v161 <= 0x95)
            {
              *(v160 + 4 * v161 + 8) = v153;
              *(v160 + 4) = v161 + 1;
            }
          }
        }

        v162 = **(j + 10768);
        v163 = *v162;
        if ((*v162 & 0x400) == 0)
        {
          *v162 = v163 | 0x400;
          v164 = BlueFin::GNSS2STR(this);
          this = GlCustomLog(12, "%s LTO age %d.%dd (%us)\n", v164, (v158 + 4320) / 0x15180, (v158 + 4320) / 0x21C0 - 10 * ((429496730 * ((v158 + 4320) / 0x21C0)) >> 32), v158);
          v162 = **(j + 10768);
          v163 = *v162;
        }

        if ((v163 & 0x80) != 0 || v159 == 7)
        {
          if (v159 == 7)
          {
            goto LABEL_493;
          }

          v165 = *(j + 10776);
          if (v165)
          {
LABEL_489:
            if (*(v165 + 988 + 4 * v159) < v153)
            {
              *(v165 + 988 + 4 * v159) = v153;
            }
          }
        }

        else
        {
          v165 = *(j + 10776);
          if (v165)
          {
            *(v165 + 4 * v159 + 960) = v153;
            v163 = *v162;
          }

          *v162 = v163 | 0x80;
          v166 = *(j + 10728);
          if (v166)
          {
            *(v166 + 4 * v159) = v153;
          }

          if (v165)
          {
            goto LABEL_489;
          }
        }

        v329 = *(j + 10736);
        if (v329)
        {
          *(v329 + 4 * v159) = v153;
        }

LABEL_493:
        v330 = *(j + 9804);
        v331 = *(j + 9744);
        if (v158 < v330)
        {
          *(j + 9804) = v158;
          *(j + 9796) = *&__dst[v331 + 4];
          v330 = v158;
        }

        *(j + 9744) = v331 + 8;
        *(j + 9760) += 8;
        v332 = *(j + 9788);
        v333 = *(j + 9792) + 1;
        *(j + 9792) = v333;
        if (v332 == v333)
        {
          *(j + 9792) = 0;
          if (v330 < 0x2A31)
          {
            if (*(j + 9768) == 1 && !*(j + 12))
            {
              v367 = 8;
            }

            else
            {
              v367 = 9;
            }

            *(j + 8) = v367;
          }

          else
          {
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(j + 8), 3139, "expired");
            BlueFin::GlSetBase::Remove(*(j + 10768), 11);
            v334 = *(j + 10792);
            if (v334)
            {
              *v334 = 2;
            }

            *(j + 10808) = 2;
            *(j + 8) = 64;
            v335 = BlueFin::GNSS2STR(v159);
            this = GlCustomLog(12, "%s LTO expired (required %ds, min delta %ds)\n", v335, 10800, *(j + 9804));
          }

          v368 = *(j + 10192);
          if (v368 && *(v368 + 4))
          {
            ***(j + 10768) |= 0x800000u;
          }
        }

        continue;
      case 8:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        this = __dst;
        if (v7 < 4)
        {
          goto LABEL_879;
        }

        v241 = *&__dst[v6];
        v242 = v241 + 4;
        if (v7 < v241 + 4)
        {
          goto LABEL_879;
        }

        v243 = *(j + 9760);
        if ((*(v481 + 1524) & 1) != 0 || *(j + 9780) != v243)
        {
          goto LABEL_331;
        }

        v500 = 0;
        BlueFin::GlCryptoDes::des_set_key(qword_298A3B0CC, &v535, v7, a4);
        v538 = 0x5B61B6B36832FBFBLL;
        v539 = 0;
        BlueFin::GlCryptoDes::decrypt_update(&v535, v503, &v500, &qword_298A3B0CC[2] + 4, 0x118u);
        v500 -= *(v503 + v500 - 1);
        BlueFin::GlCryptoRsa::bin2key(v521, v503, 0x118u);
        this = BlueFin::GlCryptoRsa::decrypt(v521, v501, &v500, &__dst[*(v499 + 2436) + 4], v241);
        v520 = 0;
        v518 = 0u;
        v519 = 0u;
        v516 = 0u;
        v517 = 0u;
        v514 = 0u;
        v515 = 0u;
        v512 = 0u;
        v513 = 0u;
        v510 = 0u;
        v511 = 0u;
        v508 = 0u;
        v509 = 0u;
        v506 = 0u;
        v507 = 0u;
        v504 = 0u;
        v505 = 0u;
        *v503 = 0u;
        v533 = 0u;
        memset(v534, 0, sizeof(v534));
        v531 = 0u;
        v532 = 0u;
        v529 = 0u;
        v530 = 0u;
        v527 = 0u;
        v528 = 0u;
        v525 = 0u;
        v526 = 0u;
        v523 = 0u;
        v524 = 0u;
        v522 = 0u;
        memset(v521, 0, sizeof(v521));
        if (v500 != 16)
        {
          GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(v499 + 2), 3215, "license");
          this = BlueFin::GlSetBase::Remove(*(v499 + 1346), 11);
          goto LABEL_680;
        }

        j = v499;
        *(v499 + 9717) = *v501;
        *(v481 + 1524) = 1;
        LODWORD(v6) = *(v499 + 2436);
        v243 = *(v499 + 2440);
LABEL_331:
        *(j + 9744) = v6 + v242;
        *(j + 9760) = v243 + v242;
        v244 = *(j + 9772);
        v245 = *(j + 9776) + 1;
        *(j + 9776) = v245;
        if (v244 == v245)
        {
          v108 = 9;
          goto LABEL_461;
        }

        continue;
      case 9:
        v258 = *(j + 9744);
        v7 = (*v496 - v258);
        v259 = __dst;
        if (v7 < 4)
        {
          goto LABEL_883;
        }

        v260 = *&__dst[v258];
        v261 = v260 + 4;
        if (v7 < v260 + 4)
        {
          goto LABEL_883;
        }

        v262 = *(j + 9764);
        if (v262 == 2)
        {
          goto LABEL_587;
        }

        if (v262 == 3)
        {
          if (*(j + 12) != 5)
          {
            goto LABEL_588;
          }
        }

        else if (v262 != 4 || *(j + 12) != 6)
        {
          goto LABEL_588;
        }

LABEL_587:
        if (!*(j + 9792))
        {
          goto LABEL_589;
        }

LABEL_588:
        v371 = *(j + 9760);
        if (*(j + 9796) != v371)
        {
          goto LABEL_843;
        }

LABEL_589:
        v500 = 0;
        if (*(j + 9768) == 1)
        {
          BlueFin::GlCryptoDes::des_set_key((j + 9717), v521, v7, a4);
          *&v526 = *(j + 9725);
          LOBYTE(v527) = 0;
          v372 = &__dst[(v258 + 4)];
          BlueFin::GlCryptoDes::decrypt_update(v521, v372, &v500, v372, v260);
          v500 -= v372[v500 - 1];
          if (v260 < v500 || v260 - v500 >= 9)
          {
            v270 = *(j + 8);
            v271 = 3305;
            goto LABEL_596;
          }

          LODWORD(v258) = *(j + 9744);
          v262 = *(j + 9764);
        }

        else
        {
          v500 = v260;
        }

        v536 = &__dst[(v258 + 4)];
        v537 = 0;
        v535 = 1;
        if (v262 == 2)
        {
          goto LABEL_685;
        }

        if (v262 == 3)
        {
          if (*(j + 12) != 5)
          {
            goto LABEL_715;
          }
        }

        else if (v262 != 4 || *(j + 12) != 6)
        {
          goto LABEL_715;
        }

LABEL_685:
        if (*(j + 9792))
        {
          if (!BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j))
          {
            v454 = j;
            v455 = 3320;
            goto LABEL_796;
          }

          v421 = BlueFin::GlPeBitReader::uint(&v535, 5u);
          v422 = BlueFin::GlPeBitReader::uint(&v535, 0x1Bu);
          j = v499;
          this = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(v499 + 3));
          if (this == 7)
          {
            goto LABEL_840;
          }

          v423 = this;
          v424 = v421 + v422;
          *v501 = &v501[12];
          v501[8] = 2;
          *&v501[12] = 0;
          if (v424 < 0)
          {
LABEL_712:
            if (v423 == 3)
            {
              BlueFin::GlSetBase::operator|=(v501, v479);
              LOBYTE(v448) = 10;
            }

            else if (v423 == 4)
            {
              BlueFin::GlSetBase::operator|=(v501, v480);
              LOBYTE(v448) = 63;
            }

            else
            {
              v448 = qword_298A40A68[v423];
            }

            ULong = BlueFin::GlSetBase::GetULong(v501, 1u);
            v466 = (2 * ~(-1 << v448)) & ~((ULong << 32) | BlueFin::GlSetBase::GetULong(v501, 0));
            BlueFin::GlGnssIdSet::GlGnssIdSet(v503, SBYTE4(v466), v466);
            LOBYTE(v521[0]) = v503[2];
            memcpy(&v521[2], *v503, 4 * LOBYTE(v503[2]));
            HIWORD(v521[0]) = 0;
            BYTE1(v521[0]) = 0;
            v521[1] = v521[2];
            this = BlueFin::GlSetIterator::operator++(v521);
            for (j = v499; BYTE1(v521[0]) != LOBYTE(v521[0]); this = BlueFin::GlSetIterator::operator++(v521))
            {
              LtoUncmprsdEphBuffer = BlueFin::GlPeLtoReaderBase::getLtoUncmprsdEphBuffer(v499, v423, BYTE2(v521[0]));
              if (LtoUncmprsdEphBuffer)
              {
                *LtoUncmprsdEphBuffer = 255;
              }
            }

            goto LABEL_840;
          }

          v425 = 0;
          while (2)
          {
            for (k = 0; k != 144; k += 4)
            {
              BlueFin::GlPeLtoReaderBase::uncompress_field(v491[k / 2], &v535, &v521[k / 4]);
            }

            v487 = *&v521[8];
            v490 = *&v521[4];
            v484 = *&v521[12];
            v477 = v523;
            v478 = v522;
            v475 = v525;
            v476 = v524;
            v427 = v526;
            v428 = DWORD2(v526);
            v429 = WORD6(v526);
            v495 = *v521;
            v430 = v521[0];
            v431 = LOBYTE(v521[0]) + 1;
            v432 = v499;
            v433 = *(v499 + 1347);
            if (!v433 || (v434 = BlueFin::GlGnssSet::operator()(v433 + 1024, v423), BlueFin::GlSetBase::GlSetBase(v521, &v521[3], 2u, v434), v435 = 1 << (v431 & 0x1F), (v435 & *(*v521 + 4 * (v431 >> 5))) == 0) && (BlueFin::GlPeLtoMgr::GetBadSvSet(*(v499 + 1347), v423, 0, v503), (v435 & *(*v503 + 4 * (v431 >> 5))) == 0) && (v436 = BlueFin::GlAidMask::AllowSV(*(v499 + 1347), v423, v431), v432 = v499, v436))
            {
              v437 = BlueFin::GlPeLtoReaderBase::getLtoUncmprsdEphBuffer(v432, v423, v431);
              if (v437)
              {
                if (*v437 != 255)
                {
                  if (v430 >= 0x3Fu)
                  {
                    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
                  }

                  *(*v501 + 4 * (v431 >> 5)) |= 1 << v431;
                  v438 = v480;
                  if (v423 == 4)
                  {
LABEL_702:
                    *(*v438 + 4 * (v431 >> 5)) |= 1 << v431;
                  }

                  else if (v423 == 3)
                  {
                    v438 = v479;
                    goto LABEL_702;
                  }

                  v439 = 0;
                  v440 = *(v437 + 16);
                  *v521 = *v437;
                  *&v521[4] = v440;
                  v441 = *(v437 + 48);
                  *&v521[8] = *(v437 + 32);
                  *&v521[12] = v441;
                  v442 = *(v437 + 80);
                  v522 = *(v437 + 64);
                  v523 = v442;
                  v443 = *(v437 + 112);
                  v524 = *(v437 + 96);
                  v525 = v443;
                  v444 = *(v437 + 128);
                  v445 = *(v437 + 140);
                  DWORD2(v526) = *(v437 + 136);
                  HIDWORD(v526) = v445;
                  *&v526 = v444;
                  *v503 = v495;
                  v504 = v490;
                  v505 = v487;
                  v506 = v484;
                  v507 = v478;
                  v508 = v477;
                  v509 = v476;
                  v510 = v475;
                  *&v511 = v427;
                  *(&v511 + 1) = __PAIR64__(v429, v428);
                  do
                  {
                    v446 = v491[v439 / 2];
                    if (v446)
                    {
                      v447 = v503[v439 / 4];
                      if ((v446 & 2) != 0)
                      {
                        v447 += v521[v439 / 4];
                      }

                      v521[v439 / 4] = v447;
                    }

                    v439 += 4;
                  }

                  while (v439 != 144);
                  BlueFin::GlPeLtoReaderBase::eph_element_array_to_structure(v521, v437);
                }
              }
            }

            v75 = v425++ == v424;
            if (v75)
            {
              goto LABEL_712;
            }

            continue;
          }
        }

LABEL_715:
        if (!BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j))
        {
          goto LABEL_720;
        }

        v449 = BlueFin::GlPeBitReader::uint(&v535, 5u);
        this = BlueFin::GlPeBitReader::uint(&v535, 0x1Bu);
        v450 = this;
        if (v449 < 0)
        {
          j = v499;
        }

        else
        {
          v451 = 0;
          v452 = v449 + 1;
          j = v499;
          do
          {
            this = BlueFin::GlPeLtoReaderBase::parseNavModelSat(j, v521, &v535);
            v451 |= this == 0;
            --v452;
            j = v499;
          }

          while (v452);
          if (v451)
          {
LABEL_720:
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(j + 8), 3331, "internal");
            goto LABEL_721;
          }
        }

        v459 = *(j + 9764);
        if (v459 == 2)
        {
          goto LABEL_788;
        }

        if (v459 == 3)
        {
          if (*(j + 12) != 5)
          {
            goto LABEL_773;
          }
        }

        else if (v459 != 4 || *(j + 12) != 6)
        {
LABEL_773:
          if (!v450)
          {
            goto LABEL_840;
          }

          BlueFin::GlPeLtoReaderBase::readDynamicRange(&v535, v491, 36);
          j = v499;
          goto LABEL_791;
        }

LABEL_788:
        if (*(j + 9796) == *(j + 9760) && !v450)
        {
          goto LABEL_840;
        }

        this = BlueFin::GlPeLtoReaderBase::readDynamicRange(&v535, v491, 36);
        j = v499;
        if (!v450)
        {
          goto LABEL_840;
        }

LABEL_791:
        if (!BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j))
        {
          goto LABEL_795;
        }

        v462 = 0;
        HIDWORD(v537) = 32 * (HIDWORD(v537) == 32);
        v525 = 0u;
        v526 = 0u;
        v523 = 0u;
        v524 = 0u;
        v522 = 0u;
        memset(v521, 0, sizeof(v521));
        do
        {
          this = BlueFin::GlPeLtoReaderBase::parseNavModelSat(j, v521, &v535);
          v462 |= this == 0;
          --v450;
          j = v499;
        }

        while (v450);
        if (v462)
        {
LABEL_795:
          v454 = j;
          v455 = 3345;
LABEL_796:
          this = BlueFin::GlPeLtoReaderBase::reportError(v454, v455, v420);
LABEL_722:
          v453 = *(j + 10792);
          if (v453)
          {
            *v453 = 4;
          }

          v239 = 4;
LABEL_725:
          *(j + 10808) = v239;
LABEL_726:
          v108 = 64;
LABEL_461:
          *(j + 8) = v108;
          continue;
        }

LABEL_840:
        v371 = *(j + 9760);
        if (*(j + 9796) == v371)
        {
          this = BlueFin::GlPeLtoReaderBase::updateGetEphFlags(j, *(j + 12));
          v371 = *(j + 9760);
        }

        LODWORD(v258) = *(j + 9744);
LABEL_843:
        *(j + 9744) = v258 + v261;
        *(j + 9760) = v371 + v261;
        v249 = *(j + 9788);
        v250 = *(j + 9792) + 1;
        *(j + 9792) = v250;
LABEL_844:
        if (v249 == v250)
        {
          goto LABEL_460;
        }

        continue;
      case 10:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        *(v481 + 1632) = *&__dst[v6];
        v121 = v6 + 4;
        v122 = 11;
        goto LABEL_237;
      case 11:
        v6 = *(j + 9744);
        v7 = (*(v481 + 1548) - v6);
        v219 = *(v481 + 1634);
        if (v7 < 4 * v219)
        {
          goto LABEL_878;
        }

        if (!*(v481 + 1634))
        {
          goto LABEL_460;
        }

        v220 = 0;
        v221 = *(j + 10408);
        v222 = v219 - 1;
        v223 = 4 * v219;
        do
        {
          if (v221)
          {
            *(v221 + v220) = *&__dst[(v220 + *(j + 9744))];
          }

          v220 += 4;
        }

        while (v223 != v220);
        v224 = *(j + 9744) + 4 * v222 + 4;
        goto LABEL_459;
      case 12:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 7)
        {
          goto LABEL_878;
        }

        *(j + 9828) = *&__dst[v6];
        *(j + 9832) = *&__dst[(v6 + 4)];
        *(j + 9836) = 0;
        *(j + 8) = 13;
        v253 = v6 + 8;
        v254 = *(j + 9760) + 8;
        goto LABEL_464;
      case 13:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 < 8)
        {
          goto LABEL_878;
        }

        v225 = *&__dst[v6];
        v226 = *(j + 9844);
        if (v226 <= v225)
        {
          v227 = v225;
        }

        else
        {
          v227 = *(j + 9844);
        }

        if (v225 < v226)
        {
          v226 = v225;
        }

        v228 = v227 - v226;
        v229 = (v226 ^ 0x80000000) - (v227 ^ 0x80000000);
        if (v228 < v229)
        {
          v229 = v228;
        }

        v230 = **(j + 10768);
        v231 = *v230;
        v232 = *(j + 10776);
        if ((*v230 & 0x100) == 0)
        {
          if (v232)
          {
            *(v232 + 964) = v225;
            v231 = *v230;
          }

          *v230 = v231 | 0x100;
          if (*(j + 10736))
          {
            *(*(j + 10728) + 4) = v225;
          }
        }

        if (v232 && *(v232 + 992) < v225)
        {
          *(v232 + 992) = v225;
        }

        v233 = *(j + 10736);
        if (v233)
        {
          *(v233 + 4) = v225;
        }

        v234 = *(j + 9848);
        v235 = *(j + 9744);
        if (v229 < v234)
        {
          *(j + 9848) = v229;
          *(j + 9840) = *&__dst[v235 + 4];
          v234 = v229;
        }

        *(j + 9744) = v235 + 8;
        *(j + 9760) += 8;
        v236 = *(j + 9832);
        v237 = *(j + 9836) + 1;
        *(j + 9836) = v237;
        if (v236 != v237)
        {
          continue;
        }

        *(j + 9836) = 0;
        if (v234 < 0xE11)
        {
          v108 = 14;
          goto LABEL_461;
        }

        GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", 13, 3737, "expired");
        this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
        v238 = *(j + 10792);
        if (v238)
        {
          *v238 = 2;
        }

        v239 = 2;
        goto LABEL_725;
      case 14:
        v258 = *(j + 9744);
        v7 = (*v496 - v258);
        v259 = __dst;
        if (v7 < 4 || (v264 = *&__dst[v258], v265 = v264 + 4, v7 < v264 + 4))
        {
LABEL_883:
          v472 = (v259 + v258);
          this = v259;
          goto LABEL_880;
        }

        v266 = *(j + 9828);
        if (v266 != 2 || *(j + 9836))
        {
          v267 = *(j + 9760);
          if (*(j + 9840) != v267)
          {
            goto LABEL_786;
          }
        }

        v500 = 0;
        if (*(j + 9772))
        {
          BlueFin::GlCryptoDes::des_set_key((j + 9717), v521, v7, a4);
          *&v526 = *(j + 9725);
          LOBYTE(v527) = 0;
          v268 = &__dst[(v258 + 4)];
          BlueFin::GlCryptoDes::decrypt_update(v521, v268, &v500, v268, v264);
          v500 -= v268[v500 - 1];
          v269 = v264 < v500 || v264 - v500 >= 9;
          if (v269)
          {
            v270 = *(j + 8);
            v271 = 3783;
LABEL_596:
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", v270, v271, "license");
            this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
LABEL_681:
            v419 = *(j + 10792);
            if (v419)
            {
              *v419 = 3;
            }

            v239 = 3;
            goto LABEL_725;
          }

          LODWORD(v258) = *(j + 9744);
          v266 = *(j + 9828);
        }

        else
        {
          v500 = v264;
        }

        v536 = &__dst[(v258 + 4)];
        v537 = 0;
        v535 = 1;
        if (v266 != 2)
        {
          v383 = *(j + 10400);
LABEL_631:
          if (!v383)
          {
            goto LABEL_650;
          }

          this = BlueFin::GlPeBitReader::uint(&v535, 5u);
          HIDWORD(v537) = 32 * (HIDWORD(v537) == 32);
          if ((this & 0x8000) == 0)
          {
            v400 = 0;
            v401 = this;
            while (1)
            {
              for (m = 0; m != 15; ++m)
              {
                v403 = BlueFin::GlPeLtoReaderBase::sbaseph_elements[m * 4];
                v404 = (v403 & 1) == 0;
                v405 = v403 >> 1;
                this = BlueFin::GlPeBitReader::uint(&v535, v403 >> 1);
                v406 = (this << -v405) >> -v405;
                if (v404)
                {
                  v406 = this;
                }

                v521[m] = v406;
              }

              v407 = LOBYTE(v521[0]) - 33;
              v408 = v521[1];
              v409 = v521[2];
              v410 = *&v521[4];
              v411 = *&v521[8];
              v412 = *&v521[12];
              v413 = v521[3];
              v414 = v521[14];
              j = v499;
              v415 = HIDWORD(v537) == 32 || *(v499 + 2457) == 2;
              v416 = v415 ? HIDWORD(v537) : 0;
              HIDWORD(v537) = v416;
              if (v407 > 0x12)
              {
                break;
              }

              v417 = *(v499 + 1300) + 56 * (LOBYTE(v521[0]) - 33);
              *v417 = v407;
              *(v417 + 2) = v408;
              *(v417 + 4) = v409;
              *(v417 + 8) = v413;
              *(v417 + 12) = v410;
              *(v417 + 28) = v411;
              *(v417 + 44) = v412;
              *(v417 + 52) = v414;
              v75 = v400++ == v401;
              if (v75)
              {
                goto LABEL_647;
              }
            }

LABEL_650:
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(j + 8), 3808, "internal");
            this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
            goto LABEL_726;
          }

LABEL_647:
          j = v499;
          if (*(v499 + 2457) == 2 && *(v499 + 2460) != *(v499 + 2440))
          {
            this = BlueFin::GlPeLtoReaderBase::readDynamicRange(&v535, v497, 15);
            j = v499;
          }

          goto LABEL_785;
        }

        v383 = *(j + 10400);
        if (!*(j + 9836))
        {
          goto LABEL_631;
        }

        if (!v383)
        {
          goto LABEL_784;
        }

        this = BlueFin::GlPeBitReader::uint(&v535, 5u);
        HIDWORD(v537) = 32 * (HIDWORD(v537) == 32);
        *v501 = &v501[12];
        v501[8] = 3;
        *&v501[12] = 0;
        v502 = 0;
        if ((this & 0x8000) != 0)
        {
          v399 = 0;
          v388 = 0;
        }

        else
        {
          v384 = 0;
          v385 = this;
          do
          {
            for (n = 0; n != 60; n += 4)
            {
              this = BlueFin::GlPeLtoReaderBase::uncompress_field(v497[n / 2], &v535, &v521[n / 4]);
            }

            v387 = *v521;
            v388 = (LOBYTE(v521[0]) - 33) > 0x12u;
            if ((LOBYTE(v521[0]) - 33) > 0x12u)
            {
              break;
            }

            v389 = *(v499 + 1300);
            if (*(v389 + 56 * (LOBYTE(v521[0]) - 33)) != 255)
            {
              v390 = 0;
              v391 = v521[2];
              v392 = LOBYTE(v521[3]);
              v393 = *&v521[4];
              v394 = *&v521[8];
              v395 = *&v521[12];
              v396 = v521[14];
              v521[0] = (*(v389 - 56) + 33);
              v521[1] = *(v389 - 54);
              v521[2] = *(v389 - 52);
              v521[3] = *(v389 - 48);
              *&v521[4] = *(v389 - 44);
              *&v521[8] = *(v389 - 28);
              *&v521[12] = *(v389 - 12);
              v521[14] = *(v389 - 4);
              *v503 = vand_s8(v387, 0xFFFF000000FFLL);
              v503[2] = v391;
              v503[3] = v392;
              v504 = v393;
              v505 = v394;
              *&v506 = v395;
              DWORD2(v506) = v396;
              do
              {
                v397 = v497[v390 / 2];
                if (v397)
                {
                  v398 = v503[v390 / 4];
                  if ((v397 & 2) != 0)
                  {
                    v398 += v521[v390 / 4];
                  }

                  v521[v390 / 4] = v398;
                }

                v390 += 4;
              }

              while (v390 != 60);
              *(v389 - 56) = LOBYTE(v521[0]) - 33;
              *(v389 - 54) = v521[1];
              *(v389 - 52) = v521[2];
              *(v389 - 48) = v521[3];
              *(v389 - 44) = *&v521[4];
              *(v389 - 28) = *&v521[8];
              *(v389 - 12) = *&v521[12];
              *(v389 - 4) = v521[14];
              *(*v501 + 0x3FFFFFFFCLL) |= 0x80000000;
            }

            v75 = v384++ == v385;
          }

          while (!v75);
          v399 = **v501;
        }

        j = v499;
        v460 = 0;
        v461 = 0;
        do
        {
          if (((v399 >> v461) & 1) == 0)
          {
            *(*(v499 + 1300) + v460) = -1;
          }

          ++v461;
          v460 += 56;
        }

        while (v460 != 1064);
        if (v388)
        {
LABEL_784:
          this = BlueFin::GlPeLtoReaderBase::reportError(j, 3798, v7);
          j = v499;
          goto LABEL_722;
        }

LABEL_785:
        LODWORD(v258) = *(j + 9744);
        v267 = *(j + 9760);
LABEL_786:
        *(j + 9744) = v258 + v265;
        *(j + 9760) = v267 + v265;
        v249 = *(j + 9832);
        v250 = *(j + 9836) + 1;
        *(j + 9836) = v250;
        goto LABEL_844;
      case 15:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        *(j + 9772) = *&__dst[v6];
        *(j + 9776) = 0;
        *(j + 8) = 16;
        v253 = v6 + 4;
        v254 = *(j + 9760) + 4;
        goto LABEL_464;
      case 16:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 < 0xC)
        {
          goto LABEL_878;
        }

        if (*&__dst[v6] == 10)
        {
          *(j + 9784) = *&__dst[(v6 + 4)];
        }

        *(j + 9744) = v6 + 8;
        *(j + 9760) += 8;
        v106 = *(j + 9772);
        v107 = *(j + 9776) + 1;
        *(j + 9776) = v107;
        if (v106 != v107)
        {
          continue;
        }

        *(j + 9776) = 0;
        v108 = 17;
        goto LABEL_461;
      case 17:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        this = __dst;
        if (v7 < 4)
        {
          goto LABEL_879;
        }

        v246 = *&__dst[v6];
        v247 = v246 + 4;
        if (v7 < v246 + 4)
        {
          goto LABEL_879;
        }

        v248 = *(j + 9760);
        if ((*(v481 + 1524) & 1) != 0 || *(j + 9784) != v248)
        {
          goto LABEL_339;
        }

        v500 = 0;
        BlueFin::GlCryptoDes::des_set_key(qword_298A3B0CC, &v535, v7, a4);
        v538 = 0x5B61B6B36832FBFBLL;
        v539 = 0;
        BlueFin::GlCryptoDes::decrypt_update(&v535, v503, &v500, &qword_298A3B0CC[2] + 4, 0x118u);
        v500 -= *(v503 + v500 - 1);
        BlueFin::GlCryptoRsa::bin2key(v521, v503, 0x118u);
        this = BlueFin::GlCryptoRsa::decrypt(v521, v501, &v500, &__dst[*(v499 + 2436) + 4], v246);
        v520 = 0;
        v518 = 0u;
        v519 = 0u;
        v516 = 0u;
        v517 = 0u;
        v514 = 0u;
        v515 = 0u;
        v512 = 0u;
        v513 = 0u;
        v510 = 0u;
        v511 = 0u;
        v508 = 0u;
        v509 = 0u;
        v506 = 0u;
        v507 = 0u;
        v504 = 0u;
        v505 = 0u;
        *v503 = 0u;
        v533 = 0u;
        memset(v534, 0, sizeof(v534));
        v531 = 0u;
        v532 = 0u;
        v529 = 0u;
        v530 = 0u;
        v527 = 0u;
        v528 = 0u;
        v525 = 0u;
        v526 = 0u;
        v523 = 0u;
        v524 = 0u;
        v522 = 0u;
        memset(v521, 0, sizeof(v521));
        if (v500 == 16)
        {
          j = v499;
          *(v499 + 9717) = *v501;
          *(v481 + 1524) = 1;
          LODWORD(v6) = *(v499 + 2436);
          v248 = *(v499 + 2440);
LABEL_339:
          *(j + 9744) = v6 + v247;
          *(j + 9760) = v248 + v247;
          v249 = *(j + 9772);
          v250 = *(j + 9776) + 1;
          *(j + 9776) = v250;
          goto LABEL_844;
        }

        GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(v499 + 2), 4252, "license");
        this = BlueFin::GlSetBase::Remove(*(v499 + 1346), 11);
LABEL_680:
        j = v499;
        goto LABEL_681;
      case 18:
        v110 = *(j + 9744);
        v7 = (*(j + 9740) - v110);
        v111 = *(j + 9756);
        if (v7 >= v111)
        {
          if (*(j + 10432))
          {
            *&v521[2] = &__dst[v110];
            *&v521[4] = 0;
            v521[0] = 0;
            ***(j + 10768) |= 2u;
            **(v499 + 1304) = BlueFin::GlPeBitReader::uint(v521, 5u);
            *(*(v499 + 1304) + 2) = BlueFin::GlPeBitReader::uint(v521, 0xBu);
            v112 = BlueFin::GlPeBitReader::uint(v521, 0x16u);
            v113 = *(v499 + 1304);
            *(v113 + 8) = v112 << 10 >> 10;
            *(v113 + 12) = 1;
            this = BlueFin::GlPeBitReader::uint(v521, 2u);
            j = v499;
            v110 = *(v499 + 1304);
            *(v110 + 13) = (this << 30) >> 30;
            v111 = *(v499 + 2439);
            if (v111 < 6)
            {
              *(v110 + 4) = 0;
            }

            else
            {
              this = BlueFin::GlPeBitReader::uint(v521, 0x20u);
              j = v499;
              v110 = *(v499 + 1304);
              *(v110 + 4) = this;
              v111 = *(v499 + 2439);
            }

            *(v110 + 14) = 0;
            *(v110 + 16) = 0;
            LODWORD(v110) = *(j + 9744);
          }

          v224 = v111 + v110;
LABEL_459:
          *(j + 9744) = v224;
LABEL_460:
          v108 = 1;
          goto LABEL_461;
        }

        this = __dst;
        v472 = &__dst[v110];
        goto LABEL_880;
      case 19:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 0xC)
        {
          goto LABEL_878;
        }

        if (*(j + 10424))
        {
          *&v521[2] = &__dst[v6];
          *&v521[4] = 0;
          v521[0] = 0;
          ***(j + 10768) |= 4u;
          **(v499 + 1303) = (BlueFin::GlPeBitReader::uint(v521, 0x18u) << 8) >> 8;
          *(*(v499 + 1303) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
          *(*(v499 + 1303) + 10) = BlueFin::GlPeBitReader::uint(v521, 8u);
          *(*(v499 + 1303) + 8) = BlueFin::GlPeBitReader::uint(v521, 8u);
          *(*(v499 + 1303) + 9) = BlueFin::GlPeBitReader::uint(v521, 8u);
          *(*(v499 + 1303) + 11) = BlueFin::GlPeBitReader::uint(v521, 8u);
          *(*(v499 + 1303) + 12) = BlueFin::GlPeBitReader::uint(v521, 8u);
          this = BlueFin::GlPeBitReader::uint(v521, 8u);
          j = v499;
          *(*(v499 + 1303) + 13) = this;
          LODWORD(v6) = *(v499 + 2436);
        }

        v224 = v6 + 13;
        goto LABEL_459;
      case 20:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        *&v503[2] = &__dst[v6];
        *&v504 = 0;
        v503[0] = 0;
        if (!*(j + 10240))
        {
          goto LABEL_453;
        }

        this = BlueFin::GlPeBitReader::uint(v503, 8u);
        v134 = this;
        if (this >= 1)
        {
          v135 = 0;
          do
          {
            for (ii = 0; ii != 14; ++ii)
            {
              v137 = BlueFin::GlPeLtoReaderBase::glns_almanac_elements[ii * 4];
              v138 = (v137 & 1) == 0;
              v139 = v137 >> 1;
              this = BlueFin::GlPeBitReader::uint(v503, v137 >> 1);
              v140 = (this << -v139) >> -v139;
              if (v138)
              {
                v140 = this;
              }

              v521[ii] = v140;
            }

            v141 = v521[1];
            v142 = LOBYTE(v521[1]) - 1;
            if (v142 <= 0x17)
            {
              v143 = v521[2];
              v144 = SLOBYTE(v521[2]);
              if ((v521[2] & 0xF0) != 0)
              {
                v144 = SLOBYTE(v521[2]) - 32;
              }

              if ((v144 + 7) <= 0xD)
              {
                v145 = *&v521[3];
                v146 = v521[7];
                v147 = v521[8];
                v148 = v521[9];
                v149 = v521[10];
                v150 = v521[11];
                v151 = v521[12];
                this = *(v499 + 1280);
                v152 = this + 32 * v142;
                *v152 = v521[0];
                *(v152 + 2) = v141;
                *(v152 + 3) = v143;
                *(v152 + 4) = v145;
                *(v152 + 20) = v146;
                *(v152 + 22) = v147;
                *(v152 + 24) = v148;
                *(v152 + 26) = v150;
                *(v152 + 28) = v151;
                *(v152 + 29) = 1;
                *(v152 + 30) = v149;
              }
            }

            ++v135;
          }

          while (v135 != v134);
        }

        j = v499;
        v47 = **(v499 + 1346);
        v48 = *v47 | 0x10000;
        goto LABEL_424;
      case 21:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        v133 = *&__dst[v6];
        *(v481 + 1624) = v133;
        *(v481 + 1626) = HIWORD(v133) + 1;
        v121 = v6 + 4;
        v122 = 22;
        goto LABEL_237;
      case 22:
        v251 = *(v481 + 1626);
        v6 = *(j + 9744);
        v7 = (*(v481 + 1548) - v6);
        if (v7 < 24 * v251)
        {
          goto LABEL_878;
        }

        v180 = 24 * v251;
        *&v503[2] = &__dst[v6];
        *&v504 = 0;
        v503[0] = 0;
        if (v251 > 0x3F || *(j + 10352) == 0)
        {
          goto LABEL_346;
        }

        if (!v251)
        {
          goto LABEL_519;
        }

        v340 = 0;
        while (1)
        {
          for (jj = 0; jj != 13; ++jj)
          {
            v342 = BlueFin::GlPeLtoReaderBase::bds_almanac_elements[jj * 4];
            v343 = (v342 & 1) == 0;
            v344 = v342 >> 1;
            this = BlueFin::GlPeBitReader::uint(v503, v342 >> 1);
            v345 = (this << -v344) >> -v344;
            if (v343)
            {
              v345 = this;
            }

            v521[jj] = v345;
          }

          v346 = v521[1];
          v347 = v521[2];
          v348 = v521[3];
          v349 = v521[4];
          v350 = *&v521[5];
          DWORD1(v504) = 32 * (DWORD1(v504) == 32);
          j = v499;
          if (LOBYTE(v521[0]) > 0x3Eu)
          {
            goto LABEL_521;
          }

          v351 = vmovn_s32(*&v521[9]);
          v352 = *(v499 + 1294) + 36 * (v521[0] & 0x3F);
          *v352 = v521[0];
          *(v352 + 2) = v346;
          *(v352 + 4) = v347;
          *(v352 + 6) = v348;
          *(v352 + 8) = v349;
          *(v352 + 12) = v350;
          LODWORD(v353) = vrev32_s16(v351).u32[0];
          HIDWORD(v353) = v351.i32[1];
          *(v352 + 28) = v353;
          if (++v340 == v251)
          {
LABEL_519:
            v195 = **(j + 10768);
            v196 = *v195 | 0x100000;
LABEL_520:
            *v195 = v196;
            goto LABEL_521;
          }
        }

      case 23:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10440))
        {
          goto LABEL_430;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        ***(j + 10768) |= 8u;
        **(v499 + 1305) = (BlueFin::GlPeBitReader::uint(v521, 0x18u) << 8) >> 8;
        v273 = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1305) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        *(*(v499 + 1305) + 8) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1305) + 9) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1305) + 10) = BlueFin::GlPeBitReader::uint(v521, 8u);
        this = BlueFin::GlPeBitReader::uint(v521, 8u);
        j = v499;
        *(*(v499 + 1305) + 11) = this;
        if (!v273)
        {
          goto LABEL_429;
        }

        this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
        j = v499;
        v109 = *(v499 + 1305);
LABEL_398:
        *(v109 + 12) = this;
        goto LABEL_429;
      case 24:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10448))
        {
          goto LABEL_430;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        ***(j + 10768) |= 0x10u;
        **(v499 + 1306) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        *(*(v499 + 1306) + 2) = (4 * BlueFin::GlPeBitReader::uint(v521, 0xEu)) >> 2;
        v521[5] = 32 * (v521[5] == 32);
        *(*(v499 + 1306) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        *(*(v499 + 1306) + 6) = (4 * BlueFin::GlPeBitReader::uint(v521, 0xEu)) >> 2;
        v521[5] = 32 * (v521[5] == 32);
        *(*(v499 + 1306) + 8) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        *(*(v499 + 1306) + 10) = (4 * BlueFin::GlPeBitReader::uint(v521, 0xEu)) >> 2;
        v521[5] = 32 * (v521[5] == 32);
        this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
        j = v499;
        v109 = *(v499 + 1306);
        goto LABEL_398;
      case 26:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        v120 = *&__dst[v6];
        *(v481 + 1628) = v120;
        *(v481 + 1630) = HIWORD(v120) + 1;
        v121 = v6 + 4;
        v122 = 27;
LABEL_237:
        *(j + 8) = v122;
        *(j + 9744) = v121;
        continue;
      case 27:
        v179 = *(v481 + 1630);
        v6 = *(j + 9744);
        v7 = (*(v481 + 1548) - v6);
        if (v7 < 20 * v179)
        {
          goto LABEL_878;
        }

        v180 = 20 * v179;
        *&v503[2] = &__dst[v6];
        *&v504 = 0;
        v503[0] = 0;
        if (v179 > 0x24 || *(j + 10384) == 0)
        {
LABEL_346:
          v224 = v6 + v180;
        }

        else
        {
          if (!v179)
          {
LABEL_251:
            v195 = **(j + 10768);
            v196 = *v195 | 0x400000;
            goto LABEL_520;
          }

          v182 = 0;
          while (1)
          {
            for (kk = 0; kk != 13; ++kk)
            {
              v184 = BlueFin::GlPeLtoReaderBase::gal_almanac_elements[kk * 4];
              v185 = (v184 & 1) == 0;
              v186 = v184 >> 1;
              this = BlueFin::GlPeBitReader::uint(v503, v184 >> 1);
              v187 = (this << -v186) >> -v186;
              if (v185)
              {
                v187 = this;
              }

              v521[kk] = v187;
            }

            v188 = v521[9];
            v189 = *&v521[5];
            v190 = *&v521[1];
            v191 = v521[10];
            v192 = v521[11];
            v193 = v521[12];
            DWORD1(v504) = 32 * (DWORD1(v504) == 32);
            j = v499;
            if (LOBYTE(v521[0]) > 0x23u)
            {
              break;
            }

            v194 = *(v499 + 1298) + 24 * (v521[0] & 0x3F);
            *v194 = v521[0];
            *(v194 + 2) = vuzp1q_s16(v190, v189);
            *(v194 + 18) = v191;
            *(v194 + 20) = v188;
            *(v194 + 22) = v192;
            *(v194 + 23) = v193;
            if (++v182 == v179)
            {
              goto LABEL_251;
            }
          }

LABEL_521:
          v224 = *(j + 9744) + v180;
        }

        goto LABEL_459;
      case 28:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10464))
        {
          goto LABEL_430;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        ***(j + 10768) |= 0x20u;
        **(v499 + 1308) = (BlueFin::GlPeBitReader::uint(v521, 0x18u) << 8) >> 8;
        BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1308) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        *(*(v499 + 1308) + 10) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1308) + 11) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1308) + 12) = BlueFin::GlPeBitReader::uint(v521, 3u);
        *(*(v499 + 1308) + 13) = BlueFin::GlPeBitReader::uint(v521, 8u);
        v521[5] = 32 * (v521[5] == 32);
        *(*(v499 + 1308) + 8) = BlueFin::GlPeBitReader::uint(v521, 8u);
        this = BlueFin::GlPeBitReader::uint(v521, 8u);
        j = v499;
        *(*(v499 + 1308) + 9) = this;
        goto LABEL_429;
      case 29:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10472))
        {
          goto LABEL_430;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        ***(j + 10768) |= 0x40u;
        *(*(v499 + 1309) + 2) = (16 * BlueFin::GlPeBitReader::uint(v521, 0xCu)) >> 4;
        **(v499 + 1309) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v521[5] = 32 * (v521[5] == 32);
        *(*(v499 + 1309) + 4) = BlueFin::GlPeBitReader::uint(v521, 8u);
        this = BlueFin::GlPeBitReader::uint(v521, 6u);
        j = v499;
        *(*(v499 + 1309) + 5) = this;
        goto LABEL_429;
      case 32:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10496))
        {
          goto LABEL_430;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        **(v499 + 1312) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        *(*(v499 + 1312) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        j = v499;
        *(*(v499 + 1312) + 8) = this;
        goto LABEL_429;
      case 33:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10744))
        {
          goto LABEL_430;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        ***(j + 10768) |= 0x200u;
        **(v499 + 1343) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        *(*(v499 + 1343) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        *(*(v499 + 1343) + 8) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        j = v499;
        *(*(v499 + 1343) + 12) = this;
LABEL_429:
        v83 = *(j + 9756);
        LODWORD(v6) = *(j + 9744);
LABEL_430:
        v224 = v83 + v6;
        goto LABEL_459;
      case 34:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10752))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v240 = 0;
        v521[5] = 32 * (v521[5] == 32);
        do
        {
          this = BlueFin::GlPeBitReader::uint(v521, 4u);
          *(*(v499 + 1344) + v240++) = this;
        }

        while (v240 != 32);
        j = v499;
        v47 = **(v499 + 1346);
        v48 = *v47 | 0x1000000;
        goto LABEL_424;
      case 35:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10760))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v46 = 0;
        v521[5] = 32 * (v521[5] == 32);
        do
        {
          this = BlueFin::GlPeBitReader::uint(v521, 4u);
          *(*(v499 + 1345) + v46++) = this;
        }

        while (v46 != 63);
        j = v499;
        v47 = **(v499 + 1346);
        v48 = *v47 | 0x2000000;
        goto LABEL_424;
      case 36:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10216))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        v279 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v483 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v280 = 0;
        v489 = 0;
        v486 = v279 & 0xFFFE;
        do
        {
          v281 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v282 = BlueFin::GlPeBitReader::uint(v521, 1u);
          v494 = BlueFin::GlPeBitReader::uint(v521, 0x1Au);
          v283 = BlueFin::GlPeBitReader::uint(v521, 0x14u);
          v284 = BlueFin::GlPeBitReader::uint(v521, 0xAu);
          v285 = BlueFin::GlPeBitReader::uint(v521, 0xBu);
          v286 = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v287 = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          this = BlueFin::GlPeBitReader::uint(v521, 0xAu);
          v288 = this;
          if (v486)
          {
            this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
            v289 = (this << 19) >> 19;
            v290 = 1;
          }

          else
          {
            v290 = 0;
            LOWORD(v289) = 0;
          }

          v521[5] = 32 * (v521[5] == 32);
          v291 = *(v499 + 1277);
          if (v282 != 1)
          {
            v291 = 0;
          }

          if (v281 <= 0x1Fu && v291)
          {
            v292 = v291 + 32 * (v281 & 0x1F);
            *v292 = v281;
            *(v292 + 4) = v282;
            *(v292 + 8) = v494 << 6 >> 6;
            *(v292 + 12) = v283 << 12 >> 12;
            *(v292 + 16) = v284 << 22 >> 22;
            *(v292 + 20) = v285;
            *(v292 + 22) = (8 * v286) >> 3;
            *(v292 + 24) = (8 * v287) >> 3;
            *(v292 + 26) = v290;
            *(v292 + 28) = v289;
            ++v489;
            *(v292 + 30) = v288;
          }

          ++v280;
        }

        while (v280 <= v483);
        j = v499;
        if (!v489)
        {
          goto LABEL_425;
        }

        v47 = **(v499 + 1346);
        v48 = *v47 | 0x4000000;
        goto LABEL_424;
      case 37:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10392))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v84 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v85 = 0;
        v493 = 0;
        do
        {
          v86 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v87 = BlueFin::GlPeBitReader::uint(v521, 1u);
          v88 = BlueFin::GlPeBitReader::uint(v521, 0x1Fu);
          v89 = BlueFin::GlPeBitReader::uint(v521, 0x15u);
          v90 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v91 = BlueFin::GlPeBitReader::uint(v521, 0xEu);
          v92 = BlueFin::GlPeBitReader::uint(v521, 0xAu);
          v93 = BlueFin::GlPeBitReader::uint(v521, 0xAu);
          this = BlueFin::GlPeBitReader::uint(v521, 0xCu);
          v521[5] = 32 * (v521[5] == 32);
          v94 = *(v499 + 1299);
          if (v87 != 1)
          {
            v94 = 0;
          }

          if (v86 <= 0x23u && v94)
          {
            v95 = v94 + 28 * (v86 & 0x3F);
            *v95 = v86;
            *(v95 + 4) = v87;
            *(v95 + 8) = (2 * v88) >> 1;
            *(v95 + 12) = v89 << 11 >> 11;
            *(v95 + 16) = v90 << 26 >> 26;
            *(v95 + 20) = v91;
            *(v95 + 22) = (v92 << 6) >> 6;
            *(v95 + 24) = (v93 << 6) >> 6;
            *(v95 + 26) = this;
            ++v493;
          }

          ++v85;
        }

        while (v85 <= v84);
        j = v499;
        if (!v493)
        {
          goto LABEL_425;
        }

        v47 = **(v499 + 1346);
        v48 = *v47 | 0x8000000;
        goto LABEL_424;
      case 38:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10296))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        v49 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v482 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v50 = 0;
        v488 = 0;
        v485 = v49 & 0xFFFE;
        do
        {
          v51 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v52 = BlueFin::GlPeBitReader::uint(v521, 1u);
          v492 = BlueFin::GlPeBitReader::uint(v521, 0x1Au);
          v53 = BlueFin::GlPeBitReader::uint(v521, 0x14u);
          v54 = BlueFin::GlPeBitReader::uint(v521, 0xAu);
          v55 = BlueFin::GlPeBitReader::uint(v521, 0xBu);
          v56 = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v57 = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          this = BlueFin::GlPeBitReader::uint(v521, 0xAu);
          v58 = this;
          if (v485)
          {
            this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
            v59 = (this << 19) >> 19;
            v60 = 1;
          }

          else
          {
            v60 = 0;
            LOWORD(v59) = 0;
          }

          v521[5] = 32 * (v521[5] == 32);
          v61 = *(v499 + 1287);
          if (v52 != 1)
          {
            v61 = 0;
          }

          if (v51 <= 9u && v61)
          {
            v62 = v61 + 32 * (v51 & 0xF);
            *v62 = v51;
            *(v62 + 4) = v52;
            *(v62 + 8) = v492 << 6 >> 6;
            *(v62 + 12) = v53 << 12 >> 12;
            *(v62 + 16) = v54 << 22 >> 22;
            *(v62 + 20) = v55;
            *(v62 + 22) = (8 * v56) >> 3;
            *(v62 + 24) = (8 * v57) >> 3;
            *(v62 + 26) = v60;
            *(v62 + 28) = v59;
            ++v488;
            *(v62 + 30) = v58;
          }

          ++v50;
        }

        while (v50 <= v482);
        j = v499;
        if (!v488)
        {
          goto LABEL_425;
        }

        v47 = **(v499 + 1346);
        v48 = *v47 | 0x10000000;
        goto LABEL_424;
      case 39:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10360))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v96 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v97 = 0;
        v98 = 0;
        do
        {
          v99 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v100 = BlueFin::GlPeBitReader::uint(v521, 3u);
          v101 = BlueFin::GlPeBitReader::uint(v521, 0xBu);
          v102 = BlueFin::GlPeBitReader::uint(v521, 0xCu);
          v103 = BlueFin::GlPeBitReader::uint(v521, 0xCu);
          this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v521[5] = 32 * (v521[5] == 32);
          if (v100 == 1 && v99 <= 0x3Eu)
          {
            v104 = *(v499 + 1295);
            if (v104)
            {
              v105 = v104 + 16 * (v99 & 0x3F);
              *v105 = v99;
              *(v105 + 4) = 1;
              *(v105 + 8) = v101;
              *(v105 + 10) = (16 * v102) >> 4;
              *(v105 + 12) = (16 * v103) >> 4;
              *(v105 + 14) = this;
              ++v98;
            }
          }

          ++v97;
        }

        while (v97 <= v96);
        j = v499;
        if (!v98)
        {
          goto LABEL_425;
        }

        v47 = **(v499 + 1346);
        v48 = *v47 | 0x20000000;
        goto LABEL_424;
      case 40:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10368))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v209 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v210 = 0;
        v211 = 0;
        do
        {
          v212 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v213 = BlueFin::GlPeBitReader::uint(v521, 3u);
          v214 = BlueFin::GlPeBitReader::uint(v521, 0xBu);
          v215 = BlueFin::GlPeBitReader::uint(v521, 0xCu);
          v216 = BlueFin::GlPeBitReader::uint(v521, 0xCu);
          this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v521[5] = 32 * (v521[5] == 32);
          if (v213 == 2 && v212 <= 0x3Eu)
          {
            v217 = *(v499 + 1296);
            if (v217)
            {
              v218 = v217 + 16 * (v212 & 0x3F);
              *v218 = v212;
              *(v218 + 4) = 2;
              *(v218 + 8) = v214;
              *(v218 + 10) = (16 * v215) >> 4;
              *(v218 + 12) = (16 * v216) >> 4;
              *(v218 + 14) = this;
              ++v211;
            }
          }

          ++v210;
        }

        while (v210 <= v209);
        j = v499;
        if (!v211)
        {
          goto LABEL_425;
        }

        v47 = **(v499 + 1346);
        v48 = *v47 | 0x40000000;
        goto LABEL_424;
      case 41:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10224))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v274 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v275 = 0;
        v276 = 0;
        do
        {
          v277 = BlueFin::GlPeBitReader::uint(v521, 6u);
          this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v521[5] = 32 * (v521[5] == 32);
          if (v277 <= 0x1Fu)
          {
            v278 = *(v499 + 1278) + 4 * (v277 & 0x1F);
            *v278 = v277;
            *(v278 + 2) = (8 * this) >> 3;
            ++v276;
          }

          ++v275;
        }

        while (v275 <= v274);
        j = v499;
        if (!v276)
        {
          goto LABEL_425;
        }

        v47 = **(v499 + 1346);
        v48 = *v47 | 0x80000000;
LABEL_424:
        *v47 = v48;
        goto LABEL_425;
      case 42:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10304))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v123 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v124 = 0;
        v125 = 0;
        do
        {
          v126 = BlueFin::GlPeBitReader::uint(v521, 6u);
          this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v521[5] = 32 * (v521[5] == 32);
          if (v126 <= 9u)
          {
            v127 = *(v499 + 1288) + 4 * (v126 & 0xF);
            *v127 = v126;
            *(v127 + 2) = (8 * this) >> 3;
            ++v125;
          }

          ++v124;
        }

        while (v124 <= v123);
        j = v499;
        if (!v125)
        {
          goto LABEL_425;
        }

        v128 = **(v499 + 1346);
        v129 = *(v128 + 4) | 1;
        goto LABEL_729;
      case 43:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10480))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        **(v499 + 1310) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        *(*(v499 + 1310) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        j = v499;
        v263 = *(v499 + 1310);
        *(v263 + 8) = this;
        if (*(v481 + 2888) == 1)
        {
          *(v263 + 8) = -this;
        }

        v6 = **(v499 + 1346);
        v45 = *(v6 + 4) | 2;
        goto LABEL_452;
      case 44:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10312))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        **(v499 + 1289) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        *(*(v499 + 1289) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        j = v499;
        v272 = *(v499 + 1289);
        *(v272 + 8) = this;
        if (*(v481 + 2888) == 1)
        {
          *(v272 + 8) = -this;
        }

        v6 = **(v499 + 1346);
        v45 = *(v6 + 4) | 4;
        goto LABEL_452;
      case 45:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10456))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        **(v499 + 1307) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        *(*(v499 + 1307) + 4) = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        j = v499;
        v307 = *(v499 + 1307);
        *(v307 + 8) = this;
        if (*(v481 + 2888) == 1)
        {
          *(v307 + 8) = -this;
        }

        v6 = **(v499 + 1346);
        v45 = *(v6 + 4) | 8;
        goto LABEL_452;
      case 46:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 <= 7)
        {
          goto LABEL_878;
        }

        *(j + 10508) = *&__dst[v6];
        *(j + 10512) = *&__dst[(v6 + 4)];
        *(j + 10516) = 0;
        if (!*(j + 10504))
        {
          *(v481 + 2338) = 0;
        }

        *(j + 10520) = vdup_n_s32(0xFEEDBEEF);
        *(j + 8) = 47;
        *(j + 9744) = v6 + 8;
        *(j + 9760) += 8;
        continue;
      case 47:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 < 8)
        {
          goto LABEL_878;
        }

        v294 = *&__dst[(v6 + 4)];
        v295 = *(j + 10524);
        if (*&__dst[v6] <= *(j + 9800))
        {
          if (v295 == -17973521)
          {
            *(j + 10520) = v294;
            v296 = 1;
            goto LABEL_525;
          }

LABEL_524:
          v296 = 0;
          goto LABEL_525;
        }

        if (v295 != -17973521)
        {
          goto LABEL_524;
        }

        if (*(j + 10520) != -17973521)
        {
          v294 = *(j + 10520);
        }

        *(j + 10524) = v294;
        v296 = v294 == -17973521;
LABEL_525:
        *(j + 9744) = v6 + 8;
        *(j + 9760) += 8;
        v354 = *(j + 10512);
        v355 = *(j + 10516) + 1;
        *(j + 10516) = v355;
        if (v354 != v355)
        {
          continue;
        }

        *(j + 10516) = 0;
        if (!v296)
        {
          v108 = 48;
          goto LABEL_461;
        }

        if (*(v481 + 2336))
        {
          v356 = "RTO";
        }

        else
        {
          v356 = "LTO";
        }

        v474 = 5382;
        v357 = 47;
LABEL_556:
        GlCustomLog(11, "%s error code %d.%d (%s)\n", v356, v357, v474, "internal");
        goto LABEL_721;
      case 48:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        this = __dst;
        if (v7 < 4)
        {
          goto LABEL_879;
        }

        v114 = *&__dst[v6] + 4;
        if (v7 < v114)
        {
          goto LABEL_879;
        }

        v115 = *(j + 9760);
        if (v115 < *(j + 10524))
        {
          goto LABEL_146;
        }

        if (*(j + 10504))
        {
          v521[0] = *(v481 + 2336);
LABEL_553:
          v356 = "LTO";
          if (*(v481 + 2336))
          {
            v356 = "RTO";
          }

          j = v499;
          v357 = *(v499 + 2);
          v474 = 5422;
          goto LABEL_556;
        }

        v374 = *(v481 + 2338);
        if (v374 <= 3)
        {
          v375 = *(v481 + 2336);
          *&v521[2] = &__dst[(v6 + 4)];
          *&v521[4] = 0;
          v521[0] = v375;
          v376 = *(j + 10536);
          if (!v376)
          {
            goto LABEL_553;
          }

          v377 = v376 + 11520 * v374;
          *(v377 + 64) = 0;
          *v377 = BlueFin::GlPeBitReader::uint(v521, 0x20u);
          *(v377 + 56) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          *(v377 + 8) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          *(v377 + 16) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          *(v377 + 24) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          *(v377 + 32) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          *(v377 + 40) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          *(v377 + 48) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
          v378 = BlueFin::GlPeBitReader::uint(v521, 0x20u);
          *(v377 + 68) = v378;
          if ((v378 - 57) < 0xFFFFFFC6)
          {
            goto LABEL_553;
          }

          v379 = 0;
          do
          {
            v380 = *(v377 + 11496) + 200 * v379;
            *v380 = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
            *(v380 + 8) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
            *(v380 + 16) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
            *(v380 + 24) = BlueFin::GlPeBitReader::uint(v521, 0x20u) * 0.1;
            *(v380 + 32) = BlueFin::GlPeBitReader::uint(v521, 0x10u);
            v381 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
            *(v380 + 34) = v381;
            if ((v381 & 0xFFF0u) > 0x4F)
            {
              goto LABEL_553;
            }

            v382 = 0;
            do
            {
              this = BlueFin::GlPeBitReader::uint(v521, 0x10u);
              *(v380 + 36 + 2 * v382++) = this;
            }

            while (*(v380 + 34) >= v382);
            v521[5] = 32 * (v521[5] == 32);
            ++v379;
          }

          while (v379 <= *(v377 + 68));
          j = v499;
          if (!*(v499 + 2626))
          {
            ++*(v481 + 2338);
          }

          LODWORD(v6) = *(v499 + 2436);
          v115 = *(v499 + 2440);
        }

LABEL_146:
        *(j + 9744) = v6 + v114;
        *(j + 9760) = v115 + v114;
        v116 = *(j + 10512);
        v117 = *(j + 10516) + 1;
        *(j + 10516) = v117;
        if (v116 != v117)
        {
          continue;
        }

        if (!*(j + 10504) && *(v481 + 2338))
        {
          v118 = 4;
          if (*(v481 + 2336))
          {
            v118 = 8;
            v119 = 0x80000;
          }

          else
          {
            v119 = 16;
          }

          *(**(j + 10768) + v118) |= v119;
        }

        goto LABEL_460;
      case 49:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10664))
        {
          goto LABEL_453;
        }

        v167 = *&__dst[(v6 + 8)];
        v168 = v6 + 12;
        if (!*&__dst[(v6 + 4)])
        {
          goto LABEL_223;
        }

        v503[0] = 0;
        BlueFin::GlCryptoDes::des_set_key((j + 9717), v521, v7, a4);
        *&v526 = *(j + 9725);
        LOBYTE(v527) = 0;
        this = BlueFin::GlCryptoDes::decrypt_update(v521, &__dst[v168], v503, &__dst[v168], v167);
        v169 = &__dst[v168];
        v170 = v503[0] - v169[v503[0] - 1];
        if (v167 < v170 || v167 - v170 > 8)
        {
          goto LABEL_726;
        }

        v167 = v503[0] - v169[v503[0] - 1];
LABEL_223:
        if (v167 >= 0x41)
        {
          goto LABEL_726;
        }

        *&v521[2] = &__dst[v168];
        *&v521[4] = 0;
        v521[0] = 0;
        if (v167)
        {
          v172 = 0;
          v173 = v167;
          do
          {
            this = BlueFin::GlPeBitReader::uint(v521, 8u);
            j = v499;
            *(*(v499 + 1333) + v172++) = this;
          }

          while (v167 != v172);
        }

        else
        {
          v173 = 0;
        }

        *(*(j + 10664) + v173) = 0;
        v128 = **(j + 10768);
        v129 = *(v128 + 4) | 0x40;
LABEL_729:
        *(v128 + 4) = v129;
        goto LABEL_425;
      case 50:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        v297 = *(j + 12);
        if (v297 > 7)
        {
          goto LABEL_453;
        }

        if (((0xE9u >> v297) & 1) == 0)
        {
          goto LABEL_453;
        }

        v298 = *(j + qword_298A40AA0[v297]);
        if (!v298)
        {
          goto LABEL_453;
        }

        v299 = asc_298A40810[v297];
        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v300 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v301 = 0;
        v302 = 0;
        do
        {
          v303 = BlueFin::GlPeBitReader::uint(v521, 6u);
          v304 = BlueFin::GlPeBitReader::uint(v521, 2u);
          v305 = BlueFin::GlPeBitReader::uint(v521, 0xBu);
          this = BlueFin::GlPeBitReader::uint(v521, 0xDu);
          v521[5] = 32 * (v521[5] == 32);
          if (v299 > v303)
          {
            v306 = v298 + 12 * v303;
            *v306 = v303;
            *(v306 + 4) = v304 != 0;
            *(v306 + 8) = v305;
            *(v306 + 10) = this;
            ++v302;
          }

          ++v301;
        }

        while (v301 <= v300);
        j = v499;
        if (!v302)
        {
          goto LABEL_425;
        }

        v128 = **(v499 + 1346);
        v129 = *(v128 + 4) | 0x80;
        goto LABEL_729;
      case 51:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10712))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v42 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v43 = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        **(v499 + 1339) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1339) + 1) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1339) + 2) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1339) + 3) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1339) + 4) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1339) + 5) = BlueFin::GlPeBitReader::uint(v521, 8u);
        *(*(v499 + 1339) + 6) = BlueFin::GlPeBitReader::uint(v521, 8u);
        this = BlueFin::GlPeBitReader::uint(v521, 8u);
        j = v499;
        v44 = *(v499 + 1339);
        *(v44 + 7) = this;
        *(v44 + 8) = v43 + 604800 * v42;
        v6 = **(v499 + 1346);
        v45 = *(v6 + 4) | 0x100;
        goto LABEL_452;
      case 52:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        if (v7 < *(j + 9756))
        {
          goto LABEL_878;
        }

        v63 = *&__dst[(v6 + 4)];
        *&v503[2] = &__dst[(v6 + 8)];
        *&v504 = 0;
        v503[0] = 0;
        v64 = BlueFin::GlPeBitReader::uint(v503, 6u);
        v65 = 0;
        DWORD1(v504) = 32 * (DWORD1(v504) == 32);
        do
        {
          v66 = BlueFin::GlPeBitReader::uint(v503, 6u);
          v67 = BlueFin::GlPeBitReader::uint(v503, 0xCu);
          v68 = BlueFin::GlPeBitReader::uint(v503, 1u);
          v69 = 0;
          v70 = v66 + 1;
          v71 = v67 << 20;
          v72 = BlueFin::GlPeBitReader::uint(v503, 0xCu) << 20;
          DWORD1(v504) = 32 * (DWORD1(v504) == 32);
          v73 = *(v499 + 2636);
          while (1)
          {
            v521[4] = -1;
            v521[6] = 7;
            v74 = v69;
            if (BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(v499, v521, v69) && v521[4] == v73)
            {
              v75 = v521[6] > 6 || v70 == 0;
              if (!v75 && ((0xE243F0A181320uLL >> (8 * LOBYTE(v521[6]))) & 0x3F) >= v70)
              {
                break;
              }
            }

            ++v69;
            if (v74 >= 0xD)
            {
              goto LABEL_74;
            }
          }

          switch(v73)
          {
            case 0:
              v76 = *(v499 + 1319);
              if (v76)
              {
                goto LABEL_94;
              }

              break;
            case 1:
              v76 = *(v499 + 1320);
              if (v76)
              {
                goto LABEL_94;
              }

              break;
            case 2:
              v76 = *(v499 + 1321);
              if (v76)
              {
                goto LABEL_94;
              }

              break;
            case 3:
              v76 = *(v499 + 1322);
              if (v76)
              {
LABEL_94:
                v81 = *(v76 + 224);
                goto LABEL_105;
              }

              break;
            case 4:
              v78 = *(v499 + 1323);
              if (v78)
              {
                goto LABEL_96;
              }

              break;
            case 5:
              v78 = *(v499 + 1324);
              if (v78)
              {
LABEL_96:
                v81 = *(v78 + 176);
                goto LABEL_105;
              }

              break;
            case 6:
              v80 = *(v499 + 1325);
              if (v80)
              {
                goto LABEL_104;
              }

              break;
            case 7:
              v80 = *(v499 + 1326);
              if (v80)
              {
                goto LABEL_104;
              }

              break;
            case 8:
              v80 = *(v499 + 1327);
              if (v80)
              {
LABEL_104:
                v81 = *(v80 + 96);
                goto LABEL_105;
              }

              break;
            case 9:
              v77 = *(v499 + 1328);
              if (v77)
              {
                goto LABEL_102;
              }

              break;
            case 10:
              v77 = *(v499 + 1329);
              if (v77)
              {
                goto LABEL_102;
              }

              break;
            case 11:
              v77 = *(v499 + 1330);
              if (v77)
              {
LABEL_102:
                v81 = *(v77 + 416);
                goto LABEL_105;
              }

              break;
            case 12:
              v79 = *(v499 + 1331);
              if (v79)
              {
                goto LABEL_98;
              }

              break;
            case 13:
              v79 = *(v499 + 1332);
              if (v79)
              {
LABEL_98:
                v81 = *(v79 + 248);
LABEL_105:
                v82 = v81 + 6 * (v70 - 1);
                if (v82)
                {
                  *v82 = v71 >> 20;
                  *(v82 + 2) = v68;
                  *(v82 + 4) = v72 >> 20;
                }
              }

              break;
            default:
              break;
          }

LABEL_74:
          ++v65;
        }

        while (v65 <= v64);
        v322 = 0;
        j = v499;
        while (1)
        {
          *&v521[2] = 0;
          *&v521[4] = 0x54FFFFFFFFLL;
          v323 = v322;
          this = BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(v499, v521, v322);
          if (this)
          {
            if (v521[4] == v73)
            {
              break;
            }
          }

          ++v322;
          if (v323 >= 0xD)
          {
            goto LABEL_425;
          }
        }

        v327 = *&v521[2];
        if (*&v521[2])
        {
          v328 = v521[5];
          **&v521[2] = v63;
          *(v327 + 4) = v73;
          *(**(v499 + 1346) + 4 * (v328 >> 5)) |= 1 << v328;
        }

LABEL_425:
        v293 = *(j + 9756);
        *(j + 9744) += v293;
        v34 = *(j + 9760) + v293;
LABEL_454:
        *(j + 9760) = v34;
        goto LABEL_460;
      case 53:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10720))
        {
          goto LABEL_453;
        }

        *&v521[2] = &__dst[v6];
        *&v521[4] = 0;
        v521[0] = 0;
        BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v197 = BlueFin::GlPeBitReader::uint(v521, 0x10u);
        v198 = BlueFin::GlPeBitReader::uint(v521, 0x20u);
        **(v499 + 1340) = BlueFin::GlPeBitReader::uint(v521, 0xBu);
        *(*(v499 + 1340) + 2) = (32 * BlueFin::GlPeBitReader::uint(v521, 0xBu)) >> 5;
        this = BlueFin::GlPeBitReader::uint(v521, 0xEu);
        j = v499;
        v199 = *(v499 + 1340);
        *(v199 + 4) = (4 * this) >> 2;
        *(v199 + 8) = v198 + 604800 * v197;
        v6 = **(v499 + 1346);
        v45 = *(v6 + 4) | 0x800000;
LABEL_452:
        *(v6 + 4) = v45;
        v41 = *(j + 9756);
        LODWORD(v6) = *(j + 9744);
LABEL_453:
        *(j + 9744) = v41 + v6;
        v34 = *(j + 9760) + v41;
        goto LABEL_454;
      case 54:
        v6 = *(j + 9744);
        v7 = (*v496 - v6);
        if (v7 > 0xB)
        {
          *(j + 11032) = *&__dst[v6];
          *(j + 11036) = *&__dst[(v6 + 4)];
          *(j + 11040) = *&__dst[(v6 + 8)];
          *(j + 11044) = 0;
          *(j + 11056) = -1;
          *(j + 9744) = v6 + 12;
          *(j + 9760) += 12;
          *(j + 8) = 55;
          BlueFin::GlSetBase::Remove(*(j + 10768), 7);
LABEL_559:
          this = BlueFin::GlSetBase::Remove(*(j + 10768), 10);
          continue;
        }

LABEL_878:
        this = __dst;
LABEL_879:
        v472 = (this + v6);
LABEL_880:
        this = memmove(this, v472, v7);
        *v496 -= *(j + 9744);
        *(j + 9744) = 0;
LABEL_881:
        v473 = *MEMORY[0x29EDCA608];
        return this;
      case 55:
        v35 = *(j + 9744);
        v36 = (*v496 - v35);
        if (v36 <= 0xB)
        {
          goto LABEL_882;
        }

        v521[0] = 0;
        v503[0] = 0;
        v501[0] = 0;
        v312 = BlueFin::GlPeRtoReader::ParseEphFctTbl((j + 10832), __dst, v35, v521, v503, v501);
        j = v499;
        this = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(v499 + 2709));
        v313 = this;
        v314 = **(v499 + 1346);
        v315 = *v314;
        if ((*v314 & 0x400) == 0)
        {
          *v314 = v315 | 0x400;
          v316 = v503[0];
          v317 = v503[0] + 4320;
          v318 = (v503[0] + 4320) / 0x21C0;
          v319 = BlueFin::GNSS2STR(this);
          this = GlCustomLog(12, "%s RTO age %d.%dd (%us)\n", v319, v317 / 0x15180, v318 - 10 * ((429496730 * v318) >> 32), v316);
          v314 = **(v499 + 1346);
          v315 = *v314;
        }

        if ((v315 & 0x80) != 0 || v313 == 7)
        {
          if (v313 == 7)
          {
            goto LABEL_541;
          }

          v320 = *(v499 + 1347);
          if (v320)
          {
LABEL_537:
            v360 = v320 + 988;
            if (*(v360 + 4 * v313) < v521[0])
            {
              *(v360 + 4 * v313) = v521[0];
            }
          }
        }

        else
        {
          v320 = *(v499 + 1347);
          if (v320)
          {
            *(v320 + 4 * v313 + 960) = v521[0];
            v315 = *v314;
          }

          *v314 = v315 | 0x80;
          v321 = *(v499 + 1341);
          if (v321)
          {
            *(v321 + 4 * v313) = v521[0];
          }

          if (v320)
          {
            goto LABEL_537;
          }
        }

        v361 = *(v499 + 1342);
        if (v361)
        {
          *(v361 + 4 * v313) = v521[0];
        }

LABEL_541:
        if (v501[0] == 1)
        {
          if (*(v499 + 2709) == 2)
          {
            v362 = 2500;
          }

          else
          {
            v362 = 7200;
          }

          if (v362 >= *(v499 + 2764))
          {
            *(v499 + 2) = 56;
          }

          else
          {
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "RTO", *(v499 + 2), 6280, "expired");
            BlueFin::GlSetBase::Remove(*(v499 + 1346), 11);
            v363 = *(v499 + 1349);
            if (v363)
            {
              *v363 = 2;
            }

            *(v499 + 2702) = 2;
            *(v499 + 2) = 64;
            v364 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(v499 + 2709));
            v365 = BlueFin::GNSS2STR(v364);
            v366 = 7200;
            if (*(v499 + 2709) == 2)
            {
              v366 = 2500;
            }

            this = GlCustomLog(12, "%s RTO expired (required %ds, min delta %ds)\n", v365, v366, *(v499 + 2764));
          }
        }

        *(v499 + 2436) += v312;
        *(v499 + 2440) += v312;
        continue;
      case 56:
        v255 = *(j + 9744);
        v7 = (*v496 - v255);
        if (v7 < 4 || (a4 = *&__dst[v255], v256 = a4 + 8, v7 < a4 + 8))
        {
          v472 = &__dst[v255];
          this = __dst;
          goto LABEL_880;
        }

        v257 = *(j + 9760);
        if (*(j + 11048) != v257)
        {
          goto LABEL_358;
        }

        v521[0] = 0;
        if (!BlueFin::GlPeRtoReader::ParseEph((j + 10832), __dst, v255 + 4, a4, v521))
        {
          j = v499;
          GlCustomLog(11, "%s error code %d.%d (%s)\n", "RTO", *(v499 + 2), 6324, "internal");
LABEL_721:
          this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
          goto LABEL_722;
        }

        j = v499;
        *(**(v499 + 1346) + 4 * (SLOWORD(v521[0]) >> 5)) |= 1 << SLOBYTE(v521[0]);
        this = BlueFin::GlPeLtoReaderBase::updateGetEphFlags(j, *(j + 10836));
        LODWORD(v255) = *(v499 + 2436);
        v257 = *(v499 + 2440);
LABEL_358:
        *(j + 9744) = v255 + v256;
        *(j + 9760) = v257 + v256;
        v249 = *(j + 11040);
        v250 = *(j + 11044) + 1;
        *(j + 11044) = v250;
        goto LABEL_844;
      case 57:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v308 = *(j + 9756);
        if (v36 < v308)
        {
          goto LABEL_882;
        }

        this = BlueFin::GlPeRtoReader::ParseSyst((j + 10832), __dst, v35, v308);
        if (this != 84)
        {
          *(**(j + 10768) + 4 * (this >> 5)) |= 1 << this;
        }

        goto LABEL_458;
      case 58:
      case 59:
      case 60:
        continue;
      case 61:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v37 = *(j + 9756);
        if (v36 < v37)
        {
          goto LABEL_882;
        }

        this = BlueFin::GlPeRtoReader::ParseClkErrTgd((j + 10832), __dst, v35, v37);
        goto LABEL_230;
      case 62:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v174 = *(j + 9756);
        if (v36 < v174)
        {
          goto LABEL_882;
        }

        this = BlueFin::GlPeRtoReader::ParseL5Health((j + 10832), __dst, v35, v174);
LABEL_230:
        if (this == 84)
        {
          goto LABEL_458;
        }

        v39 = *(j + 10768);
        v40 = 1 << this;
        goto LABEL_232;
      case 63:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v38 = *(j + 9756);
        if (v36 < v38)
        {
LABEL_882:
          this = __dst;
          v472 = &__dst[v35];
          v7 = v36;
          goto LABEL_880;
        }

        this = BlueFin::GlPeRtoReader::ParseGpsIonoModel((j + 10832), __dst, v35, v38);
        if (this != 84)
        {
          v39 = *(j + 10768);
          v40 = 1 << (this & 0x17);
LABEL_232:
          *(*v39 + 8) |= v40;
        }

LABEL_458:
        v224 = *(j + 9744) + *(j + 9756);
        goto LABEL_459;
      case 64:
        v309 = *(j + 9744);
        v310 = *(j + 9740) - v309;
        v254 = *(j + 9756);
        v311 = *(j + 9760);
        if (v310 < v254 - v311)
        {
          *(j + 9760) = v311 + v310;
          *v496 = 0;
          goto LABEL_881;
        }

        *(j + 8) = 1;
        v253 = v254 - v311 + v309;
LABEL_464:
        *(j + 9760) = v254;
        *(j + 9744) = v253;
        continue;
      default:
        goto LABEL_881;
    }
  }
}