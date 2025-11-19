void BlueFin::GlPeDnavMgr::CountMeas(BlueFin::GlPeDnavMgr *this, void **a2, void **a3)
{
  bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSetBase::GlSetBase(&v47, v49, 0x13u, (*(this + 93) + 184));
  LODWORD(v43) = v48;
  memcpy(&v44, v47, 4 * v48);
  HIDWORD(v43) = v44;
  BlueFin::GlSetIterator::operator++(&v43);
  while (BYTE1(v43) != v43)
  {
    if (WORD1(v43) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v43);
    v7 = *v6;
    LODWORD(v6) = v6[1];
    LOBYTE(v41) = v7;
    HIDWORD(v41) = v6;
    v42 = WORD1(v43);
    v8 = BlueFin::GlSvId::s_aucSvId2gnss[v7];
    if (v8 != 1)
    {
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(this + 93), &v41, 0);
      if (BlueFin::stPeSigMeasKF::IsPRValid(PeMeas))
      {
        if ((*(PeMeas + 96) & 8) == 0)
        {
          MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 93), &v41, 0, 0);
          if (MeMeas)
          {
            v11 = (~*(MeMeas + 3) & 0x30) != 0 || (*(MeMeas + 3) & 0xC) == 0;
            if (!v11 && BlueFin::GlPeTimeManager::GetSystemConversionS(*(this + 92), v8, v40) < 501.0)
            {
              *(*a2 + (v42 >> 5)) |= 1 << v42;
            }
          }
        }
      }

      if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas) && (*(PeMeas + 96) & 0x40) == 0)
      {
        *(*a3 + (v42 >> 5)) |= 1 << v42;
      }
    }

    BlueFin::GlSetIterator::operator++(&v43);
  }

  v12 = BlueFin::GlSetBase::Cnt(a2);
  BlueFin::GlSignalIdSet::GetSvIdSet(a2, &v43);
  v13 = 0;
  v14 = &v43[v44 - 1];
  do
  {
    if (*v14)
    {
      v15 = *v14 - (((*v14 >> 1) & 0x5B6DB6DB) + ((*v14 >> 2) & 0x9249249));
      v13 = ((v15 + (v15 >> 3)) & 0xC71C71C7) + v13 - 63 * (((v15 + (v15 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v14;
  }

  while (v14 >= v43);
  if (v12 != v13)
  {
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a2, 0, &v41);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a2, 1, v40);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a2, 2, v39);
    BlueFin::GlSetBase::GlSetBase(&v35, &v37, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v35, &v43, v40);
    BlueFin::GlSetBase::operator=(&v35, &v43);
    v37 = v45;
    v38 = v46;
    BlueFin::GlSetBase::GlSetBase(&v28, &v29, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v28, &v43, v40);
    BlueFin::GlSetBase::operator=(&v28, &v43);
    v29 = v45;
    v30 = v46;
    BlueFin::GlSetBase::GlSetBase(&__src, &v33, 8u, &v28);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v43, v39);
    BlueFin::GlSetBase::operator=(&__src, &v43);
    v33 = v45;
    v34 = v46;
    LOBYTE(v43) = v32;
    memcpy(&v44, __src, 4 * v32);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16 + 14] == 255))
      {
        v17 = 575;
      }

      else
      {
        v17 = BlueFin::GlSignalId::s_ausGnss2signalId[v16] + BYTE2(v43) - BlueFin::GlSvId::s_aucGnss2minSvId[v16] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v16];
      }

      BlueFin::GlSetBase::Remove(a2, v17);
      BlueFin::GlSetIterator::operator++(&v43);
    }

    LOBYTE(v43) = v36;
    memcpy(&v44, v35, 4 * v36);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v18 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v18 + 7] == 255))
      {
        v19 = 575;
      }

      else
      {
        v19 = BlueFin::GlSignalId::s_ausGnss2signalId[v18] + BYTE2(v43) + BlueFin::GlSvId::s_aucGnss2numSvId[v18] - BlueFin::GlSvId::s_aucGnss2minSvId[v18];
      }

      BlueFin::GlSetBase::Remove(a2, v19);
      BlueFin::GlSetIterator::operator++(&v43);
    }
  }

  v20 = BlueFin::GlSetBase::Cnt(a3);
  BlueFin::GlSignalIdSet::GetSvIdSet(a3, &v43);
  v21 = 0;
  v22 = &v43[v44 - 1];
  do
  {
    if (*v22)
    {
      v23 = *v22 - (((*v22 >> 1) & 0x5B6DB6DB) + ((*v22 >> 2) & 0x9249249));
      v21 = ((v23 + (v23 >> 3)) & 0xC71C71C7) + v21 - 63 * (((v23 + (v23 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v22;
  }

  while (v22 >= v43);
  if (v20 != v21)
  {
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a3, 0, &v41);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a3, 1, v40);
    BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(a3, 2, v39);
    BlueFin::GlSetBase::GlSetBase(&v35, &v37, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v35, &v43, v40);
    BlueFin::GlSetBase::operator=(&v35, &v43);
    v37 = v45;
    v38 = v46;
    BlueFin::GlSetBase::GlSetBase(&v28, &v29, 8u, &v41);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v28, &v43, v40);
    BlueFin::GlSetBase::operator=(&v28, &v43);
    v29 = v45;
    v30 = v46;
    BlueFin::GlSetBase::GlSetBase(&__src, &v33, 8u, &v28);
    v43 = &v45;
    LOBYTE(v44) = 8;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v43, v39);
    BlueFin::GlSetBase::operator=(&__src, &v43);
    v33 = v45;
    v34 = v46;
    LOBYTE(v43) = v32;
    memcpy(&v44, __src, 4 * v32);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v24 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v24 + 14] == 255))
      {
        v25 = 575;
      }

      else
      {
        v25 = BlueFin::GlSignalId::s_ausGnss2signalId[v24] + BYTE2(v43) - BlueFin::GlSvId::s_aucGnss2minSvId[v24] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v24];
      }

      BlueFin::GlSetBase::Remove(a3, v25);
      BlueFin::GlSetIterator::operator++(&v43);
    }

    LOBYTE(v43) = v36;
    memcpy(&v44, v35, 4 * v36);
    WORD1(v43) = 0;
    BYTE1(v43) = 0;
    HIDWORD(v43) = v44;
    BlueFin::GlSetIterator::operator++(&v43);
    while (BYTE1(v43) != v43)
    {
      if (BYTE2(v43) - 189 < 0xFFFFFF44 || (v26 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v43)], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v26 + 7] == 255))
      {
        v27 = 575;
      }

      else
      {
        v27 = BlueFin::GlSignalId::s_ausGnss2signalId[v26] + BYTE2(v43) + BlueFin::GlSvId::s_aucGnss2numSvId[v26] - BlueFin::GlSvId::s_aucGnss2minSvId[v26];
      }

      BlueFin::GlSetBase::Remove(a3, v27);
      BlueFin::GlSetIterator::operator++(&v43);
    }
  }

  if (BlueFin::GlSetBase::Cnt(a2) == 1)
  {
    bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  if (BlueFin::GlSetBase::Cnt(a3) == 1)
  {
    bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }
}

void BlueFin::GlPeDnavMgr::PackMeasRr()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  STACK[0x1258] = *MEMORY[0x29EDCA608];
  if (!v1 || (v4 = v1, !*v1))
  {
    v33 = "pastDNMeas && *pastDNMeas";
    DeviceFaultNotify("glpe_dnav.cpp", 1258, "PackMeasRr", "pastDNMeas && *pastDNMeas");
    v34 = "glpe_dnav.cpp";
    v35 = 1258;
LABEL_34:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v34, v35, v33);
  }

  v5 = v3;
  v6 = v2;
  v7 = v0;
  v8 = -4512;
  memset(var40, 0, sizeof(var40));
  do
  {
    v9 = var40 + v8;
    *(v9 + 566) = 0;
    *(v9 + 282) = 0uLL;
    *(v9 + 1132) = -1;
    *(v9 + 2266) = 575;
    v8 += 24;
  }

  while (v8);
  v10 = *(v2 + 8);
  LOBYTE(STACK[0x11D0]) = v10;
  memcpy(&STACK[0x11D8], *v2, 4 * v10);
  LOWORD(STACK[0x11D2]) = 0;
  LOBYTE(STACK[0x11D1]) = 0;
  LODWORD(STACK[0x11D4]) = STACK[0x11D8];
  BlueFin::GlSetIterator::operator++(&STACK[0x11D0]);
  v11 = var40;
  if (LOBYTE(STACK[0x11D1]) == LOBYTE(STACK[0x11D0]))
  {
    goto LABEL_10;
  }

  v12 = var40 | 0xC;
  do
  {
    v13 = LOWORD(STACK[0x11D2]);
    if (v13 >= 0x23F)
    {
      v33 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v34 = "glsignalid.h";
      v35 = 578;
      goto LABEL_34;
    }

    v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13;
    v15 = v14[1];
    *v12 = *v14;
    *(v12 + 4) = v15;
    *(v12 + 8) = v13;
    *(v12 - 12) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(v7 + 744), v12, 0, 0) + 27);
    BlueFin::GlSetIterator::operator++(&STACK[0x11D0]);
    v12 += 24;
  }

  while (LOBYTE(STACK[0x11D1]) != LOBYTE(STACK[0x11D0]));
  v11 = (v12 - 12);
LABEL_10:
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - var40) >> 3);
  v17 = v16;
  if (v5 >= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v5;
  }

  if (v18 < v16 && v16 >= 2)
  {
    v19 = v16 & 0x7F;
    v20 = 1;
    do
    {
      v21 = var40 + 24 * v20;
      if (*(v21 - 3) > *v21)
      {
        v22 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          do
          {
            v24 = (v22 + v23) / 2;
            if (*(var40 + 3 * v24) <= *v21)
            {
              v23 = v24 + 1;
            }

            else
            {
              v22 = (v22 + v23) / 2;
            }
          }

          while (v23 != v22);
        }

        *&STACK[0x11D0] = *v21;
        STACK[0x11E0] = *(v21 + 2);
        v25 = var40 + 3 * v22;
        memmove(&var40[1] + 24 * v22 + 8, v25, 24 * (v20 - v22));
        *v25 = *&STACK[0x11D0];
        v25[2] = STACK[0x11E0];
      }

      ++v20;
    }

    while (v20 != v19);
  }

  bzero(*v6, ((4 * *(v6 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v26 = v18;
  if (v17 < v18)
  {
    v26 = v17;
  }

  if (v26 >= 1)
  {
    v27 = v26;
    v28 = *v4;
    v29 = var40 | 0xC;
    v36 = vdupq_n_s64(0x41B1DE784A000000uLL);
    do
    {
      *(*v6 + 4 * (*(v29 + 8) >> 5)) |= 1 << *(v29 + 8);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v7 + 744), v29, 0, 0);
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 20) = 0xFFFFFFFF00000000;
      *(v28 + 28) = -1;
      *(v28 + 49) = 0;
      *(v28 + 32) = 0;
      *(v28 + 36) = -1;
      *(v28 + 40) = 575;
      *(v28 + 44) = 2;
      *(v28 + 16) = **(v7 + 744);
      if (v29 != v28 + 32)
      {
        *(v28 + 32) = *v29;
        *(v28 + 36) = *(v29 + 4);
        *(v28 + 40) = *(v29 + 8);
      }

      v31.f32[0] = -*(MeMeas + 26);
      v31.i32[1] = *(MeMeas + 27);
      *v28 = vmulq_f64(vcvtq_f64_f32(v31), v36);
      *(v28 + 48) = 1;
      v28 = *v4 + 56;
      *v4 = v28;
      v29 += 24;
      --v27;
    }

    while (v27);
  }

  v32 = __OFSUB__(*MEMORY[0x29EDCA608], STACK[0x1258]);
}

__n128 BlueFin::GlPeDnavMgr::Isolate(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, BlueFin::GlSetBase *a6, int a7, void *a8)
{
  memset(v44, 0, sizeof(v44));
  v45 = 6367427;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = v50;
  v49 = 19;
  memset(v50, 0, sizeof(v50));
  v51 = v53;
  v52 = 19;
  memset(v53, 0, sizeof(v53));
  v54 = vdupq_n_s64(0x41584A30AEF9DB23uLL);
  v55 = 0;
  v56 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 6367427;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v35 = v37;
  v36 = 19;
  memset(v37, 0, sizeof(v37));
  v38 = v40;
  v39 = 19;
  memset(v40, 0, sizeof(v40));
  v23 = v54;
  v41 = v54;
  v42 = 0;
  v43 = 0;
  v26 = *(a5 + 8);
  memcpy(v30, *a5, 4 * v26);
  v28 = 0;
  v27 = 0;
  v29 = v30[0];
  BlueFin::GlSetIterator::operator++(&v26);
  if (v27 != v26)
  {
    while (1)
    {
      BlueFin::GlSetBase::GlSetBase(v24, v25, 0x13u, a5);
      if (v28 >= 0x23Fu)
      {
        break;
      }

      BlueFin::GlSetBase::Remove(v24, v28);
      BlueFin::GlPeDnav::Run(a2, a3, a4, v24, a6, a7, a8);
      if ((*(a2 + 268) & 0x20) != 0)
      {
        if (*(a2 + 248) < *v54.i64)
        {
          BlueFin::stDnavState::operator=(v44, a2);
        }

        if (*(a2 + 256) < *&v41.i64[1])
        {
          BlueFin::stDnavState::operator=(v31, a2);
        }
      }

      BlueFin::GlSetIterator::operator++(&v26);
      if (v27 == v26)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
  }

LABEL_9:
  v26 = *(a6 + 8);
  memcpy(v30, *a6, 4 * v26);
  v28 = 0;
  v27 = 0;
  v29 = v30[0];
  BlueFin::GlSetIterator::operator++(&v26);
  while (v27 != v26)
  {
    BlueFin::GlSetBase::GlSetBase(v24, v25, 0x13u, a6);
    if (v28 >= 0x23Fu)
    {
      goto LABEL_31;
    }

    BlueFin::GlSetBase::Remove(v24, v28);
    BlueFin::GlPeDnav::Run(a2, a3, a4, a5, v24, a7, a8);
    if ((*(a2 + 268) & 0x20) != 0)
    {
      if (*(a2 + 248) < *v54.i64)
      {
        BlueFin::stDnavState::operator=(v44, a2);
      }

      if (*(a2 + 256) < *&v41.i64[1])
      {
        BlueFin::stDnavState::operator=(v31, a2);
      }
    }

    BlueFin::GlSetIterator::operator++(&v26);
  }

  v16 = &v48;
  if ((v56 & 0x20) != 0 && (v43 & 0x20) == 0)
  {
    v17 = &v51;
    v18 = v44;
LABEL_28:
    *a1 = *v18;
    *(a1 + 16) = v18[2];
    v19 = *(v18 + 7);
    *(a1 + 24) = *(v18 + 6);
    *(a1 + 28) = v19;
    *(a1 + 32) = v18[4];
    *(a1 + 40) = *(v18 + 5);
    v20 = v18[8];
    *(a1 + 56) = v18[7];
    *(a1 + 64) = v20;
    BlueFin::GlSetBase::GlSetBase((a1 + 72), (a1 + 84), 0x13u, v16);
    BlueFin::GlSetBase::GlSetBase((a1 + 160), (a1 + 172), 0x13u, v17);
    result.n128_u64[0] = v18[31];
    v22 = v18[32];
    *(a1 + 248) = result.n128_u64[0];
    *(a1 + 256) = v22;
    *(a1 + 264) = *(v18 + 264);
    *(a1 + 268) = *(v18 + 67);
    *(a1 + 272) = *(v18 + 68);
    return result;
  }

  v17 = &v38;
  if ((v56 & 0x20) == 0 || (v43 & 0x20) == 0)
  {
    if ((v56 & 0x20) != 0 || (v43 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v18 = v31;
    v16 = &v35;
    goto LABEL_28;
  }

  if (BlueFin::GlSetBase::operator==(&v35, &v48) && BlueFin::GlSetBase::operator==(&v35, &v48))
  {
    goto LABEL_27;
  }

LABEL_29:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 6367427;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 72) = a1 + 84;
  *(a1 + 80) = 19;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 160) = a1 + 172;
  *(a1 + 168) = 19;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 232) = 0u;
  result = v23;
  *(a1 + 248) = v23;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  return result;
}

double BlueFin::GlPeExtLoc::GetDistanceToExtLoc(uint64_t a1, double *a2)
{
  v4 = *(a1 + 136);
  if (!v4 || *(v4 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v4 + 3040), *(v4 + 3040))) >= 160000.0)
  {
    return -1.0;
  }

  v11 = v2;
  v12 = v3;
  v5 = *(v4 + 3032);
  v7 = *(v4 + 3016);
  v8 = v5;
  BlueFin::lla2ned(a2, &v7, 0, &v9);
  return sqrt(v10 * v10 + v9 * v9);
}

unsigned __int8 *BlueFin::GlPeRepeatedIsol::Submit(BlueFin::GlPeRepeatedIsol *this, const BlueFin::GlSignalIdSet *a2, unsigned __int8 a3)
{
  v17 = a3;
  memcpy(v21, a2, 4 * a3);
  v19 = 0;
  v18 = 0;
  v20 = v21[0];
  result = BlueFin::GlSetIterator::operator++(&v17);
  if (v18 != v17)
  {
    v5 = this + 8;
    do
    {
      v6 = v19;
      if (v19 > 0x23Eu)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v7 = 0;
      v8 = -1;
      v9 = -1;
      do
      {
        v10 = *(this + v7 + 1);
        if (v10 == 576 || ((v11 = *(this + 6), v12 = *(this + v7 + 3), v10 != v19) ? (v13 = v11 - v12 >= 0x4E21) : (v13 = 1), v13))
        {
          if (v10 == v19)
          {
            v16 = v5[v7] + 1;
          }

          else
          {
            v16 = 1;
          }

          v5[v7] = v16;
          goto LABEL_25;
        }

        if (v8 == -1 || v12 < v8)
        {
          v9 = v7;
          v8 = *(this + v7 + 3);
        }

        ++v7;
      }

      while (v7 != 3);
      if (v8 >= v11)
      {
        goto LABEL_26;
      }

      v7 = v9;
      v5[v9] = 1;
LABEL_25:
      *(this + v7 + 1) = v6;
      *(this + v7 + 3) = *(this + 6);
LABEL_26:
      result = BlueFin::GlSetIterator::operator++(&v17);
    }

    while (v18 != v17);
  }

  return result;
}

uint64_t BlueFin::GlPeFirstFix::stFirstFixReturn::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  BlueFin::GlSetBase::operator=(a1 + 24, a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 52);
  v5 = *(a2 + 68);
  v6 = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 84) = v6;
  *(a1 + 68) = v5;
  *(a1 + 52) = v4;
  BlueFin::GlSetBase::operator=(a1 + 200, a2 + 200);
  *(a1 + 212) = *(a2 + 212);
  v7 = *(a2 + 228);
  v8 = *(a2 + 244);
  v9 = *(a2 + 260);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 260) = v9;
  *(a1 + 244) = v8;
  *(a1 + 228) = v7;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 492) = *(a2 + 492);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 500) = *(a2 + 500);
  *(a1 + 501) = *(a2 + 501);
  *(a1 + 502) = *(a2 + 502);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 508) = *(a2 + 508);
  return a1;
}

__n128 BlueFin::GlPeCand::Submit(uint64_t a1, uint64_t a2, char a3)
{
  result.n128_u32[0] = *(a2 + 128);
  if (result.n128_f32[0] < *(a1 + 128))
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    BlueFin::GlSetBase::operator=(a1 + 24, a2 + 24);
    *(a1 + 36) = *(a2 + 36);
    v7 = *(a2 + 52);
    v8 = *(a2 + 68);
    v9 = *(a2 + 84);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 84) = v9;
    *(a1 + 68) = v8;
    *(a1 + 52) = v7;
    result = *(a2 + 112);
    v10 = *(a2 + 128);
    v11 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v10;
    *(a1 + 144) = v11;
    *(a1 + 112) = result;
    *(a1 + 161) = a3;
  }

  return result;
}

float BlueFin::GlPeIsolate::RecurseIsolation(uint64_t a1, uint64_t a2, const void **a3, __int128 *a4, int a5)
{
  if (a5)
  {
    v8 = a4[2];
    v9 = a4[4];
    v19[3] = a4[3];
    v19[4] = v9;
    v20 = *(a4 + 20);
    v10 = *a4;
    v11 = a4[1];
    v19[0] = *a4;
    v19[1] = v11;
    v19[2] = v8;
    if (BYTE1(v19[0]) != LOBYTE(v19[0]))
    {
      v12 = a5 - 1;
      do
      {
        BlueFin::GlSetBase::GlSetBase(&v16, &v17, 0x13u, a3);
        if (WORD1(v19[0]) >= 0x23Fu)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        *(*&v16 + ((WORD1(v19[0]) >> 3) & 0x1FFC)) |= 1 << SBYTE2(v19[0]);
        BlueFin::GlSetIterator::operator++(v19);
        BlueFin::GlPeIsolate::RecurseIsolation(a1, a2, &v16, v19, v12);
      }

      while (BYTE1(v19[0]) != LOBYTE(v19[0]));
    }
  }

  else
  {
    (*(*a1 + 24))(&v16, a1, a2, a3);
    if (v18 > *(a1 + 232))
    {
      LODWORD(v10) = LODWORD(v16);
      if (v16 >= *(a1 + 204))
      {
        if (v16 >= *(a1 + 208))
        {
          return *&v10;
        }

        v13 = 1;
      }

      else
      {
        BlueFin::GlSetBase::operator=(a1 + 112, a1 + 24);
        v13 = 0;
        *(a1 + 201) = *(a1 + 200);
        *(a1 + 140) = *(a1 + 52);
        *(a1 + 156) = *(a1 + 68);
        *(a1 + 172) = *(a1 + 84);
        *(a1 + 184) = *(a1 + 96);
        *(a1 + 124) = *(a1 + 36);
        *(a1 + 208) = *(a1 + 204);
        *(a1 + 216) = *(a1 + 212);
      }

      v14 = a1 + 24 + 88 * v13;
      bzero(*v14, ((4 * *(v14 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      BlueFin::GlSetBase::Add(v14, a3);
      *&v10 = v16;
      *(a1 + 204 + 4 * v13) = v10;
      *(a1 + v13 + 200) = v18;
      LODWORD(v10) = v17;
      *(a1 + 4 * v13 + 212) = v17;
    }
  }

  return *&v10;
}

void BlueFin::GlPeBangers::CalcMetric(const BlueFin::GlPeSubsets *a1@<X1>, const BlueFin::GlSignalIdSet *a2@<X2>, uint64_t a3@<X8>)
{
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v30, a1);
  if (*&v31 >= *&v30)
  {
    v6 = 0;
    v25 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
    v15 = 0.0;
    v24 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v27 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = BlueFin::GlPeSubsetIterator::operator->(&v30);
      if (!BlueFin::GlSetBase::HasAny((v16 + 24), a2) && *(BlueFin::GlPeSubsetIterator::operator->(&v30) + 112) < 15.0)
      {
        ++v6;
        v27 = v27 + *(BlueFin::GlPeSubsetIterator::operator->(&v30) + 112);
        v8 = v8 + *(BlueFin::GlPeSubsetIterator::operator->(&v30) + 16);
        v17 = BlueFin::GlPeSubsetIterator::operator->(&v30);
        v15 = *v17;
        if (v7)
        {
          if (v9 < v15)
          {
            v15 = v9;
          }

          v18 = BlueFin::GlPeSubsetIterator::operator->(&v30);
          if (v10 >= *(v18 + 8))
          {
            v10 = *(v18 + 8);
          }

          v19 = BlueFin::GlPeSubsetIterator::operator->(&v30);
          if (v11 >= *(v19 + 16))
          {
            v11 = *(v19 + 16);
          }

          v20 = BlueFin::GlPeSubsetIterator::operator->(&v30);
          if (*v20 >= v12)
          {
            v12 = *v20;
          }

          v21 = BlueFin::GlPeSubsetIterator::operator->(&v30);
          if (*(v21 + 8) >= v13)
          {
            v13 = *(v21 + 8);
          }

          v22 = BlueFin::GlPeSubsetIterator::operator->(&v30);
          if (*(v22 + 16) >= v14)
          {
            v14 = *(v22 + 16);
          }
        }

        else
        {
          v10 = v17[1];
          v11 = v17[2];
          v23 = BlueFin::GlPeSubsetIterator::operator->(&v30);
          v12 = *v23;
          v13 = v23[1];
          v14 = v23[2];
        }

        v7 = 1;
        v9 = v15;
      }

      *&v31 += 168;
    }

    while (*&v31 < *&v30);
    v24 = v8;
    v25 = v27;
  }

  v29[0] = v15;
  v29[1] = v10;
  v29[2] = v11;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 13) = 0;
  if (v6)
  {
    BlueFin::lla2ned(v29, v28, 0, &v30);
    *a3 = sqrt(v31 * v31 + v30 * v30);
    *(a3 + 20) = v6;
    *(a3 + 8) = v25 / v6;
    *(a3 + 12) = v24 / v6;
    v26 = v14 - v11;
    *(a3 + 16) = v26;
  }
}

uint64_t BlueFin::GlPeFirstFix::GetHighestEl(uint64_t a1, BlueFin::GlSetBase *this, uint64_t a3, unsigned int a4)
{
  if (BlueFin::GlSetBase::Cnt(this) <= a4)
  {
    v17 = "rotSigs.Cnt() > usCount";
    DeviceFaultNotify("glpe_firstfix.cpp", 665, "GetHighestEl", "rotSigs.Cnt() > usCount");
    v18 = "glpe_firstfix.cpp";
    v19 = 665;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v18, v19, v17);
  }

  result = BlueFin::GlSetBase::GlSetBase(&__src, v27, 0x13u, this);
  *(a1 + 12) = 0u;
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 72) = 0u;
  if (!a4)
  {
    return result;
  }

  v9 = 0;
  do
  {
    v20 = v26;
    memcpy(v24, __src, 4 * v26);
    v22 = 0;
    v21 = 0;
    v23 = v24[0];
    BlueFin::GlSetIterator::operator++(&v20);
    if (v21 == v20)
    {
LABEL_18:
      v17 = "otHighestElSignalId != GlSignalId()";
      DeviceFaultNotify("glpe_firstfix.cpp", 686, "GetHighestEl", "otHighestElSignalId != GlSignalId()");
      v18 = "glpe_firstfix.cpp";
      v19 = 686;
      goto LABEL_17;
    }

    v10 = 0;
    v11 = -1;
    v12 = 575;
    v13 = -91.0;
    do
    {
      if (v22 >= 0x23FuLL)
      {
        v17 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v18 = "glsignalid.h";
        v19 = 578;
        goto LABEL_17;
      }

      v14 = *(a3 + v22);
      if (v14 == 255)
      {
        v17 = "ucArrIdx != stSvAzEl::INVALID_INDEX";
        DeviceFaultNotify("glpe_firstfix.cpp", 678, "GetHighestEl", "ucArrIdx != stSvAzEl::INVALID_INDEX");
        v18 = "glpe_firstfix.cpp";
        v19 = 678;
        goto LABEL_17;
      }

      v15 = *(a3 + 1088 + 4 * v14);
      if (v15 > v13)
      {
        v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v22;
        v11 = v16[1];
        v10 = *v16;
        v12 = v22;
        v13 = v15;
      }

      BlueFin::GlSetIterator::operator++(&v20);
    }

    while (v21 != v20);
    if (!v10 && v11 == -1)
    {
      goto LABEL_18;
    }

    *(*a1 + 4 * (v12 >> 5)) |= 1 << v12;
    result = BlueFin::GlSetBase::Remove(&__src, v12);
    ++v9;
  }

  while (v9 < a4);
  return result;
}

uint64_t BlueFin::GlPeFirstFix::IsMeasUsable(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 12);
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 & 0x8000) != 0 || *(a2 + 108) * 1000000000.0 > 999.0;
  }

  if (*(a1 + 272) == 1)
  {
    v5 = 0;
    v6 = a1 + 284;
    while (*(v6 + 2 * v5 - 10) != *(a2 + 8) || (*(a1 + 296) - *(v6 + 4 * v5)) >> 5 > 0x270)
    {
      if (++v5 == 3)
      {
        goto LABEL_11;
      }
    }

    v7 = *(v6 + v5 - 4) == 0;
  }

  else
  {
LABEL_11:
    v7 = 1;
  }

  v8 = v4 & ~BlueFin::GlPeFirstFix::m_bReqTimeOutReached;
  v9 = 2;
  if (BlueFin::GlPeFirstFix::m_bReqTimeOutReached)
  {
    v9 = 0x4000;
  }

  v10 = (v9 & v3) == 0;
  v11 = (*(a2 + 96) * 299792458.0 < 600.0) & ~v8;
  if (v10)
  {
    v11 = 0;
  }

  return v11 & v7;
}

unint64_t BlueFin::GlPeFirstFix::SelectBase(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, unsigned __int8 a5, unsigned int a6, int a7)
{
  v66 = v68;
  v12 = 19;
  v67 = 19;
  memset(v68, 0, 76);
  v60 = &v62;
  v61 = 19;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v57 = v59;
  v58 = 19;
  memset(v59, 0, sizeof(v59));
  v54 = v56;
  v55 = 19;
  memset(v56, 0, sizeof(v56));
  *(a1 + 12) = 0u;
  v13 = (a1 + 12);
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  v42 = a5;
  *(a1 + 72) = 0u;
  memcpy(&v46, __src, 4 * a5);
  v44 = 0;
  v43 = 0;
  v45 = v46;
  BlueFin::GlSetIterator::operator++(&v42);
  if (v43 != v42)
  {
    v15 = a2 + 284;
    while (1)
    {
      if (v44 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v44;
      v17 = *v16;
      LODWORD(v16) = v16[1];
      v51[0] = v17;
      v52 = v16;
      v53 = v44;
      v18 = *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(a2 + 8), v51, 0, 0) + 6);
      if (*(a2 + 272) == 1)
      {
        v19 = 0;
        v20 = v53;
        while (*(v15 + 2 * v19 - 10) != v53 || (*(a2 + 296) - *(v15 + 4 * v19)) >> 5 >= 0x271)
        {
          if (++v19 == 3)
          {
            goto LABEL_10;
          }
        }

        if (*(v15 + v19 - 4))
        {
          break;
        }
      }

LABEL_10:
      if (!v18)
      {
        v21 = &v66;
        goto LABEL_18;
      }

      if (v18 <= 2)
      {
        *(v60 + (v53 >> 5)) |= 1 << v53;
      }

      if (v18 == 3)
      {
        v21 = &v57;
LABEL_18:
        v20 = v53;
LABEL_19:
        *(*v21 + 4 * (v20 >> 5)) |= 1 << v20;
        goto LABEL_20;
      }

      if (v18 == 4)
      {
        v21 = &v54;
        goto LABEL_18;
      }

LABEL_20:
      BlueFin::GlSetIterator::operator++(&v42);
      if (v43 == v42)
      {
        v14 = v60;
        v12 = v61;
        goto LABEL_24;
      }
    }

    v21 = &v54;
    goto LABEL_19;
  }

  v14 = &v62;
LABEL_24:
  v22 = 0;
  v23 = (v14 + 4 * v12 - 4);
  do
  {
    if (*v23)
    {
      v24 = *v23 - (((*v23 >> 1) & 0x5B6DB6DB) + ((*v23 >> 2) & 0x9249249));
      v22 = ((v24 + (v24 >> 3)) & 0xC71C71C7) + v22 - 63 * (((v24 + (v24 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v23 = (v23 - 4);
  }

  while (v23 >= v14);
  if (a6 >= v22)
  {
    BlueFin::GlSetBase::operator=(a1, &v60);
    v28 = *v65;
    v13[2] = v64;
    v13[3] = v28;
    *(v13 + 60) = *&v65[12];
    v27 = v62;
    v25 = v63;
  }

  else
  {
    BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v60, a3, a6);
    BlueFin::GlSetBase::operator=(a1, &v42);
    v25 = v48;
    v26 = v50[0];
    v13[2] = v49;
    v13[3] = v26;
    *(v13 + 60) = *(v50 + 12);
    v27 = v47;
  }

  *v13 = v27;
  v13[1] = v25;
  result = BlueFin::GlSetBase::Cnt(a1);
  if (result < a6)
  {
    v30 = 0;
    v31 = &v57[4 * v58 - 4];
    do
    {
      if (*v31)
      {
        v32 = *v31 - (((*v31 >> 1) & 0x5B6DB6DB) + ((*v31 >> 2) & 0x9249249));
        v30 = ((v32 + (v32 >> 3)) & 0xC71C71C7) + v30 - 63 * (((v32 + (v32 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v31;
    }

    while (v31 >= v57);
    if (result + v30 <= a6)
    {
      v33 = &v57;
    }

    else
    {
      BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v57, a3, (a6 - result));
      v33 = &v42;
    }

    BlueFin::GlSetBase::Add(a1, v33);
    result = BlueFin::GlSetBase::Cnt(a1);
  }

  if (result < a6)
  {
    v34 = 0;
    v35 = &v66[4 * v67 - 4];
    do
    {
      if (*v35)
      {
        v36 = *v35 - (((*v35 >> 1) & 0x5B6DB6DB) + ((*v35 >> 2) & 0x9249249));
        v34 = ((v36 + (v36 >> 3)) & 0xC71C71C7) + v34 - 63 * (((v36 + (v36 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v35;
    }

    while (v35 >= v66);
    if (result + v34 <= a6)
    {
      v37 = &v66;
    }

    else
    {
      BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v66, a3, (a6 - result));
      v37 = &v42;
    }

    BlueFin::GlSetBase::Add(a1, v37);
    result = BlueFin::GlSetBase::Cnt(a1);
  }

  if (result < a6 && a7)
  {
    v38 = 0;
    v39 = &v54[4 * v55 - 4];
    do
    {
      if (*v39)
      {
        v40 = *v39 - (((*v39 >> 1) & 0x5B6DB6DB) + ((*v39 >> 2) & 0x9249249));
        v38 = ((v40 + (v40 >> 3)) & 0xC71C71C7) + v38 - 63 * (((v40 + (v40 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v39;
    }

    while (v39 >= v54);
    if (result + v38 <= a6)
    {
      v41 = &v54;
    }

    else
    {
      BlueFin::GlPeFirstFix::GetHighestEl(&v42, &v54, a3, (a6 - result));
      v41 = &v42;
    }

    result = BlueFin::GlSetBase::Add(a1, v41);
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

uint64_t BlueFin::GlPeFirstFix::ComputeNumDof(unsigned __int8 *a1, float *a2, uint64_t a3, BlueFin::GlSignalIdSet *a4)
{
  v8 = 0;
  result = BlueFin::GlPeSubsets::GetIntegrityGeometry(a2, a4, &v8);
  if (v8 == 2)
  {
    return BlueFin::GlPeNavUtil::GetIntegrityGeometry(a1, a4, &v8, 15.0, a3, a1[244]);
  }

  return result;
}

uint64_t BlueFin::GlPeFirstFix::ValidateExtLocWithLs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  v23 = v3;
  v24 = v4;
  v8 = *(a1 + 80);
  v19 = *(a1 + 64);
  v20 = v8;
  BlueFin::lla2ned(a2, &v19, 0, &v21);
  v9 = sqrt(v22 * v22 + v21 * v21);
  v10 = *(a2 + 128);
  v11 = v10;
  v12 = 400.0;
  if (v10 >= 400.0)
  {
    v12 = v10;
  }

  if (v9 <= v12)
  {
    v15 = 75.0;
    if (*(a1 + 244))
    {
      v15 = 50.0;
    }

    v16 = v9 <= 50.0;
    if (v15 <= v11)
    {
      v16 = 1;
    }

    v17 = *(a3 + 32);
    v18 = v9 / sqrt(fmax(vaddvq_f64(vmulq_f64(v17, v17)) * 0.5 + (v10 * v10), 2.22044605e-16));
    if (v17.f64[0] > v11)
    {
      v11 = *(a3 + 32);
    }

    if (v11 < 200.0)
    {
      v11 = 200.0;
    }

    if (v12 >= v11)
    {
      v12 = v11;
    }

    if (v18 < 1.5)
    {
      v16 = 1;
    }

    if (v9 < v12 && v16)
    {
      return 1;
    }

    v13 = (a3 + 72);
  }

  else
  {
    *(a3 + 72) = 2;
    v13 = (*(a1 + 40) + 48);
  }

  result = 0;
  *v13 = 0;
  return result;
}

void BlueFin::GlPeFirstFix::ClassicFix(BlueFin::GlPeFirstFix *this, const BlueFin::GlSignalIdSet *a2, BlueFin::GlPeSubsets *a3, BlueFin::GlPeSubsets *a4, unsigned int a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 36) = 0u;
  v10 = (this + 36);
  *(this + 3) = this + 36;
  v11 = this + 24;
  *(this + 32) = 19;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  v12 = vdupq_n_s32(0x43C80000u);
  *(this + 7) = 0u;
  *(this + 8) = v12;
  *(this + 9) = v12;
  *(this + 160) = 0;
  v13 = BlueFin::GlPeSubsets::Find(a4, a3);
  if (v13)
  {
    v14 = v13;
    v15 = BlueFin::GlPeFirstFix::ComputeNumDof(a2, a4, v13, a3);
    if ((-12483 * ((*(a4 + 2) - *a4) >> 3)) == 1 || v15 == 0)
    {
      v54[0] = 0;
      v54[1] = 0;
      v55 = 0;
      v56 = vdup_n_s32(0x44FA0000u);
      v57 = -1;
      if (BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(a2 + 4), v54, v14, 0x3E8u))
      {
        v17 = 0;
        v18 = *(a2 + 5);
        *(v18 + 48) = 1;
        *(v18 + 8) = *v56.i32;
        *v18 = v55;
        *(v18 + 44) = 3;
        *(a2 + 66) |= 4u;
        *a4 = a4 + 24;
        *(a4 + 1) = a4 + 24;
        *(a4 + 2) = a4 + 29592;
        v19 = vdupq_n_s32(0x43C80000u);
        do
        {
          *(a4 + v17 + 60) = 0uLL;
          v20 = a4 + v17 + 60;
          *(v20 - 28) = 0;
          *(v20 - 36) = 0;
          *(v20 - 20) = 0;
          *(v20 - 12) = v20;
          *(v20 - 4) = 19;
          *(v20 + 1) = 0uLL;
          *(v20 + 2) = 0uLL;
          *(v20 + 3) = 0uLL;
          *(v20 + 4) = 0uLL;
          *(v20 + 76) = 0uLL;
          *(v20 + 92) = v19;
          *(v20 + 108) = v19;
          v17 += 168;
          v20[124] = 0;
        }

        while (v17 != 29568);
        v21 = *(a2 + 5);
        v22 = a2 + *(*a2 - 24);
        v23 = *(v22 + 11);
        v24 = *(a2 + 60);
        v25 = *(a2 + 66);
        v49 = a4;
        v50 = *(a2 + 8);
        *v52 = 0uLL;
        v51 = v21;
        *&v52[16] = v25;
        *&v52[24] = 0;
        *&v52[32] = *(v22 + 8);
        *&v52[48] = *(v22 + 3);
        *&v52[56] = v23;
        *&v52[64] = v24;
        *&v52[72] = &v52[84];
        v52[80] = 8;
        memset(&v52[84], 0, 32);
        BlueFin::GlPeLsqSubsets::RunLsqSubsets(&v49, a3, 3u, *(a2 + 32), 0);
        if ((-12483 * ((*(a4 + 2) - *a4) >> 3)) >= 177)
        {
          DeviceFaultNotify("glpe_firstfix.cpp", 1257, "ClassicFix", "rotSubsets.Count() <= GLPE_LSQ_MAX_NUM_SUBSETS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_firstfix.cpp", 1257, "rotSubsets.Count() <= GLPE_LSQ_MAX_NUM_SUBSETS");
        }

        v26 = BlueFin::GlPeSubsets::Find(a4, a3);
        if (v26)
        {
          v27 = a2 + *(*a2 - 24);
          *(v27 + 8) = *v26;
          *(v27 + 3) = *(v26 + 16);
          if (*(a2 + 264))
          {
            *(a2 + 60) = (*(v26 + 120) * 1000.0);
          }
        }

        else
        {
          BlueFin::GlSignalIdSet::Print(a3, 0x6Fu);
        }
      }

      if ((*(a2 + 265) & 4) != 0)
      {
        v28 = BlueFin::GlPeSubsets::Find(a4, a3);
        if (v28)
        {
          v29 = v28;
          *this = *v28;
          *(this + 2) = *(v28 + 16);
          BlueFin::GlSetBase::operator=(v11, v28 + 24);
          *v10 = *(v29 + 36);
          v30 = *(v29 + 52);
          v31 = *(v29 + 68);
          v32 = *(v29 + 84);
          *(v10 + 60) = *(v29 + 96);
          v10[2] = v31;
          v10[3] = v32;
          v10[1] = v30;
          v33 = *(v29 + 112);
          v34 = *(v29 + 128);
          v35 = *(v29 + 144);
          *(this + 160) = *(v29 + 160);
          *(this + 8) = v34;
          *(this + 9) = v35;
          *(this + 7) = v33;
        }
      }
    }
  }

  v36 = BlueFin::GlPeSubsets::Find(a4, a3);
  if (v36)
  {
    v37 = v36;
    *(a2 + 75) = *(v36 + 120);
    *(a2 + 76) = *(v36 + 148);
    v38 = (-12483 * ((*(a4 + 2) - *a4) >> 3));
    if (v38 > 1 || v38 == 1 && BlueFin::GlSetBase::Cnt(a3) >= a5)
    {
      *this = *v37;
      *(this + 2) = *(v37 + 16);
      BlueFin::GlSetBase::operator=(v11, v37 + 24);
      *v10 = *(v37 + 36);
      v39 = *(v37 + 52);
      v40 = *(v37 + 68);
      v41 = *(v37 + 84);
      *(v10 + 60) = *(v37 + 96);
      v10[2] = v40;
      v10[3] = v41;
      v10[1] = v39;
      v42 = *(v37 + 112);
      v43 = *(v37 + 128);
      v44 = *(v37 + 144);
      *(this + 160) = *(v37 + 160);
      *(this + 8) = v43;
      *(this + 9) = v44;
      *(this + 7) = v42;
      if ((-12483 * ((*(a4 + 2) - *a4) >> 3)) < 2)
      {
        v48 = *(this + 32);
        if ((*(v37 + 152) * *(v37 + 112)) >= v48)
        {
          v48 = *(v37 + 152) * *(v37 + 112);
        }

        *(this + 32) = v48;
      }

      else
      {
        v49 = 0;
        v50 = 0uLL;
        v51 = &v52[4];
        v52[0] = 19;
        memset(&v52[4], 0, 92);
        *&v52[96] = vdupq_n_s32(0x43C80000u);
        *&v52[112] = *&v52[96];
        v53 = 0;
        BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 1, &v49);
        v45 = *(this + 32);
        v46 = *&v52[116];
        if ((*&v52[96] * 0.5) >= v45)
        {
          v45 = *&v52[96] * 0.5;
        }

        *(this + 32) = v45;
        v47 = *(a2 + 76);
        if (v46 >= v47)
        {
          v47 = v46;
        }

        *(a2 + 76) = v47;
      }
    }
  }
}

uint64_t BlueFin::GlPeFirstFix::RunPreIsolationFixRanges(uint64_t a1, uint64_t a2, BlueFin::GlSetBase *this, BlueFin::GlPeSubsets *a4, uint64_t a5, uint64_t a6)
{
  v33 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 36) = 0u;
  v9 = (a1 + 36);
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 36;
  v10 = (a1 + 24);
  *(a1 + 32) = 19;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  v11 = vdupq_n_s32(0x43C80000u);
  *(a1 + 100) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = v11;
  *(a1 + 144) = v11;
  *(a1 + 160) = 0;
  v12 = *(a2 + 176);
  if ((v12 & 1) == 0)
  {
    v33 = *(a2 + 256);
  }

  result = BlueFin::GlSetBase::Cnt(this);
  if ((result & 0xF0) != 0)
  {
    v14 = 16;
  }

  else
  {
    v14 = result;
  }

  v15 = v12 ^ 1;
  LOBYTE(v16) = 1;
  v17 = v9;
  while (1)
  {
    v18 = *(a1 + 32);
    if (v18 >= 2)
    {
      break;
    }

LABEL_11:
    if ((v16 & (v14 > 9u)) != 1)
    {
      return result;
    }

    BlueFin::GlPeFirstFix::SelectBase(v35, a2, a5, *this, *(this + 8), v14, 1);
    if (v15)
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    v16 = BlueFin::GlPeLsqSubsets::RunLsqSubset(a6, v35, v22, 1, v33, 0);
    result = BlueFin::GlPeSubsets::Find(a4, v35);
    v23 = result;
    if (result)
    {
      v24 = v16;
    }

    else
    {
      v24 = 0;
    }

    if ((v15 & 1 & v24) != 1)
    {
      goto LABEL_21;
    }

    *(a6 + 64) = *result;
    *(a6 + 80) = *(result + 16);
    if (*(a2 + 244) == 1)
    {
      v15 = 0;
      *(a6 + 96) = (*(result + 120) * 1000.0);
LABEL_21:
      if (v24)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    v15 = 0;
    if (v24)
    {
LABEL_22:
      if (*(result + 128) < 25.0)
      {
        *a1 = *result;
        *(a1 + 16) = *(result + 16);
        result = BlueFin::GlSetBase::operator=(v10, result + 24);
        *v9 = *(v23 + 36);
        v25 = *(v23 + 52);
        v26 = *(v23 + 68);
        v27 = *(v23 + 84);
        *(v9 + 60) = *(v23 + 96);
        v9[2] = v26;
        v9[3] = v27;
        v9[1] = v25;
        v28 = *(v23 + 112);
        v29 = *(v23 + 128);
        v30 = *(v23 + 144);
        *(a1 + 160) = *(v23 + 160);
        *(a1 + 128) = v29;
        *(a1 + 144) = v30;
        *(a1 + 112) = v28;
      }
    }

LABEL_25:
    --v14;
    v17 = *v10;
    if (**v10)
    {
      return result;
    }
  }

  v19 = v18 - 1;
  v20 = v17 + 1;
  while (1)
  {
    if (*v20++)
    {
      return result;
    }

    if (!--v19)
    {
      goto LABEL_11;
    }
  }
}

void BlueFin::GlPeFirstFix::IsolationFix(BlueFin::GlPeFirstFix *this, const BlueFin::GlSignalIdSet *a2, BlueFin::GlPeSubsets *a3, BlueFin::GlPeSubsets *a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 36) = 0u;
  v8 = (this + 36);
  *(this + 3) = this + 36;
  v9 = (this + 24);
  *(this + 32) = 19;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  v10 = vdupq_n_s32(0x43C80000u);
  *(this + 7) = 0u;
  *(this + 8) = v10;
  v115 = v10;
  *(this + 9) = v10;
  *(this + 160) = 0;
  v11 = BlueFin::GlSetBase::Cnt(a3);
  v113 = a3;
  v12 = BlueFin::GlPeSubsets::Find(a4, a3);
  v13 = *(a2 + 244);
  if (((v11 > 8) & v13) == 0)
  {
    v14 = 0.0;
    if ((v11 < 8) | v13 & 1)
    {
      goto LABEL_3;
    }
  }

  v122 = 0uLL;
  v123 = 0;
  v124 = &v126;
  v125 = 19;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  memset(v129, 0, sizeof(v129));
  v130 = v115;
  v131 = v115;
  v132 = 0;
  BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 2, &v122);
  v24 = a2;
  if (v12)
  {
    *(a2 + 75) = *(v12 + 120);
    v25 = *v130.i32;
    *(a2 + 76) = v131.i32[1];
    if (v25 <= 200.0)
    {
      *v142 = &v142[12];
      v142[8] = 19;
      memset(&v142[12], 0, 76);
      BlueFin::GlPeSubsets::ComputeWeightedMeanPos(a4, v142, v158);
      v122 = *v158;
      v123 = *&v158[16];
      BlueFin::GlSetBase::operator=(&v124, &v158[24]);
      v128 = *&v158[68];
      *v129 = *&v158[84];
      *&v129[12] = *&v158[96];
      v126 = *&v158[36];
      v127 = *&v158[52];
      *&v129[28] = *v159;
      v130 = *&v159[16];
      v131 = *&v159[32];
      v132 = v160;
      *this = *v12;
      *(this + 2) = *(v12 + 16);
      BlueFin::GlSetBase::operator=(v9, v12 + 24);
      *v8 = *(v12 + 36);
      v81 = *(v12 + 52);
      v82 = *(v12 + 68);
      v83 = *(v12 + 84);
      *(v8 + 60) = *(v12 + 96);
      v8[2] = v82;
      v8[3] = v83;
      v8[1] = v81;
      v84 = *(v12 + 112);
      v85 = *(v12 + 128);
      v86 = *(v12 + 144);
      *(this + 160) = *(v12 + 160);
      *(this + 8) = v85;
      *(this + 9) = v86;
      *(this + 7) = v84;
      *this = v122;
      *&v85 = *&v129[36];
      *(this + 2) = v123;
      *(this + 15) = v85;
      v87 = BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 1);
      v88 = 0.5;
      if (*(a2 + 244))
      {
        v88 = 0.625;
      }

      v89 = v88 * v87;
      if (v89 < *(this + 32))
      {
        v89 = *(this + 32);
      }

      *(this + 32) = v89;
      v14 = 0.0;
      goto LABEL_89;
    }
  }

  v110 = v12;
  v111 = *(a2 + 244);
  memset(v118, 0, 24);
  *&v118[24] = &v118[36];
  v118[32] = 19;
  memset(&v118[36], 0, 92);
  v119 = vdupq_n_s32(0x43C80000u);
  v120 = v119;
  v121 = 0;
  v154[1] = 0;
  v154[0] = 0;
  v155 = 0.0;
  v156 = vdup_n_s32(0x44FA0000u);
  v157 = -1;
  Fix = BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(a2 + 4), v154, (a2 + *(*a2 - 24) + 8), 0x3E8u);
  v27 = v155;
  v28 = 2000.0;
  if (Fix)
  {
    v28 = 250.0;
  }

  else
  {
    v27 = 0.0;
  }

  v29 = v27 - v28;
  v30 = v28 + v27;
  v116 = *(a2 + 8);
  BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v153);
  v31 = 0;
  *&v142[8] = v116;
  *&v142[24] = &v142[36];
  v142[32] = 19;
  memset(&v142[36], 0, 76);
  v143 = &v145;
  v144 = 19;
  v150 = 0;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  memset(v148, 0, sizeof(v148));
  v32 = vdup_n_s32(0x461C4000u);
  v149 = v32;
  v151 = 0xC47A0000468EE000;
  v152 = 0;
  v112 = v33;
  *v142 = &unk_2A1F120F8;
  v153 = &unk_2A1F12138;
  v34 = 1;
  v35 = v113;
  do
  {
    v114 = v31;
    v117 = *(v24 + 8);
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v112);
    *&v142[8] = v117;
    v142[32] = 19;
    memset(&v142[36], 0, 76);
    v143 = &v145;
    v144 = 19;
    v150 = 0;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    memset(v148, 0, sizeof(v148));
    v152 = 0;
    *&v142[24] = &v142[36];
    *v142 = &unk_2A1F120F8;
    v153 = &unk_2A1F12138;
    v151 = __PAIR64__(LODWORD(v29), LODWORD(v30));
    v139 = v141;
    v140 = 19;
    memset(v141, 0, sizeof(v141));
    v149 = v32;
    v36 = BlueFin::GlSetBase::Cnt(v35);
    if (v36 <= 5u)
    {
      v107 = "ucNumSvs>=ucMinNumSvs";
      DeviceFaultNotify("glpe_firstfix.cpp", 476, "GetMinNumPop", "ucNumSvs>=ucMinNumSvs");
      v108 = "glpe_firstfix.cpp";
      v109 = 476;
      goto LABEL_112;
    }

    if (v36 >= 0xBu)
    {
      v107 = "ucNumSvs<=GLPE_SUBSETS_MAX_PR_ISOL";
      DeviceFaultNotify("glpe_firstfix.cpp", 477, "GetMinNumPop", "ucNumSvs<=GLPE_SUBSETS_MAX_PR_ISOL");
      v108 = "glpe_firstfix.cpp";
      v109 = 477;
LABEL_112:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v108, v109, v107);
    }

    if (((v36 - 6) & 0xFE) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = (v36 - 6);
    }

    v152 = (43692 * byte_298A43790[5 * v34 - 5 + v37]) >> 16;
    v133 = &v135;
    v134 = 19;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    memset(v138, 0, sizeof(v138));
    *v158 = &v158[12];
    v158[8] = 19;
    memset(&v158[12], 0, 76);
    v168[0] = *(v35 + 8);
    memcpy(&v168[8], *v35, 4 * v168[0]);
    *&v168[2] = 0;
    v168[1] = 0;
    *&v168[4] = *&v168[8];
    BlueFin::GlSetIterator::operator++(v168);
    BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v163, a4);
    BlueFin::GlPeIsolate::RecurseIsolation(v142, a4, v158, v168, v34);
    if (v148[28] <= v152)
    {
      goto LABEL_27;
    }

    if (v148[29] <= v152)
    {
      v38 = 0;
      if (!v148[29])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v38 = *v149.i32 + *v149.i32 < *&v149.i32[1];
      if (!v148[29])
      {
        goto LABEL_26;
      }
    }

    if (v38)
    {
LABEL_26:
      BlueFin::GlSetBase::operator=(&v133, &v142[24]);
      v137 = *&v142[68];
      *v138 = *&v142[84];
      *&v138[12] = *&v142[96];
      v135 = *&v142[36];
      v136 = *&v142[52];
    }

LABEL_27:
    v39 = BlueFin::GlSetBase::GlSetBase(v168, &v168[12], 0x13u, &v133);
    *v158 = &v158[12];
    v158[8] = 19;
    memset(&v158[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryInversion(v39, v158);
    v40 = BlueFin::GlSetBase::operator=(v168, v158);
    v170 = *&v158[44];
    v171[0] = *&v158[60];
    *(v171 + 12) = *&v158[72];
    *&v168[12] = *&v158[12];
    v169 = *&v158[28];
    BlueFin::GlSignalIdSet::setSignalIdLimits(v40);
    BlueFin::GlSetBase::GlSetBase(&v163, &v164, 0x13u, v35);
    *v158 = &v158[12];
    v158[8] = 19;
    memset(&v158[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryAnd(&v163, v158, v168);
    BlueFin::GlSetBase::operator=(&v163, v158);
    v165 = *&v158[28];
    v166 = *&v158[44];
    *v167 = *&v158[60];
    *&v167[12] = *&v158[72];
    v164 = *&v158[12];
    v41 = BlueFin::GlPeSubsets::Find(a4, &v163);
    BlueFin::GlSetBase::Add(&v139, &v133);
    v42 = v133;
    if (!*v133)
    {
      if (v134 < 2uLL)
      {
        goto LABEL_56;
      }

      v55 = 1;
      while (!v133[v55])
      {
        if (v134 == ++v55)
        {
          goto LABEL_56;
        }
      }
    }

    if (!v41)
    {
      goto LABEL_56;
    }

    BlueFin::GlSetBase::GlSetBase(v161, v162, 0x13u, v35);
    *v168 = *v41;
    *&v168[16] = *(v41 + 16);
    v43 = *(v41 + 124);
    BlueFin::GlPeNavUtil::ComputeRangeResidVec(v142, v161, v168, (*(v41 + 120) * 1000.0), 0, 0, 0, 1, 0, 1);
    v44 = *v35;
    v45 = *v158;
    v168[0] = *(v35 + 8);
    memcpy(&v168[8], v44, 4 * v168[0]);
    *&v168[2] = 0;
    v168[1] = 0;
    *&v168[4] = *&v168[8];
    BlueFin::GlSetIterator::operator++(v168);
    if (v168[1] == v168[0])
    {
      goto LABEL_45;
    }

    v46 = 1;
    v47 = 0.0;
    v48 = v133;
    v49 = 4000.0;
    do
    {
      if (*&v168[2] >= 0x23FuLL)
      {
        v107 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v108 = "glsignalid.h";
        v109 = 578;
        goto LABEL_112;
      }

      v50 = fabs(*(v45 + 8 * v46));
      if (v50 >= v47)
      {
        v51 = v50;
      }

      else
      {
        v51 = v47;
      }

      v52 = (1 << (v168[2] & 0x1F)) & *(v48 + ((*&v168[2] >> 3) & 0x1FFC));
      if (!v52)
      {
        v47 = v51;
      }

      if (v49 >= v50 && v52 != 0)
      {
        v49 = v50;
      }

      BlueFin::GlSetIterator::operator++(v168);
      ++v46;
    }

    while (v168[1] != v168[0]);
    v24 = a2;
    v35 = v113;
    if (v49 < v47 + v47)
    {
      *v168 = &v168[12];
      v168[8] = 19;
      *&v168[12] = 0u;
      v169 = 0u;
      v170 = 0u;
      memset(v171, 0, 28);
      BlueFin::GlSetBase::operator=(&v133, v168);
      v137 = v170;
      *v138 = v171[0];
      *&v138[12] = *(v171 + 12);
      v135 = *&v168[12];
      v136 = v169;
    }

LABEL_45:
    if (*&v150 > *&v151 || *&v150 < *(&v151 + 1))
    {
      *v168 = &v168[12];
      v168[8] = 19;
      *&v168[12] = 0u;
      v169 = 0u;
      v170 = 0u;
      memset(v171, 0, 28);
      BlueFin::GlSetBase::operator=(&v133, v168);
      v137 = v170;
      *v138 = v171[0];
      *&v138[12] = *(v171 + 12);
      v135 = *&v168[12];
      v136 = v169;
    }

    v42 = v133;
LABEL_56:
    if (*v42)
    {
LABEL_68:
      BlueFin::GlSetBase::GlSetBase(&v163, &v164, 0x13u, &v133);
      *v158 = &v158[12];
      v158[8] = 19;
      memset(&v158[12], 0, 76);
      BlueFin::GlSetBase::OperatorBinaryInversion(&v163, v158);
      BlueFin::GlSetBase::operator=(&v163, v158);
      v165 = *&v158[28];
      v166 = *&v158[44];
      *v167 = *&v158[60];
      *&v167[12] = *&v158[72];
      v164 = *&v158[12];
      BlueFin::GlSignalIdSet::setSignalIdLimits(&v163);
      v63 = BlueFin::GlSetBase::GlSetBase(v168, &v168[12], 0x13u, v35);
      *v158 = &v158[12];
      v24 = a2;
      v158[8] = 19;
      memset(&v158[12], 0, 76);
      BlueFin::GlSetBase::OperatorBinaryAnd(v63, v158, &v163);
      BlueFin::GlSetBase::operator=(v168, v158);
      v169 = *&v158[28];
      v170 = *&v158[44];
      v171[0] = *&v158[60];
      *(v171 + 12) = *&v158[72];
      *&v168[12] = *&v158[12];
      v64 = BlueFin::GlPeSubsets::Find(a4, v168);
      if (v64)
      {
        v65 = v64;
        *v118 = *v64;
        *&v118[16] = *(v64 + 16);
        BlueFin::GlSetBase::operator=(&v118[24], v64 + 24);
        *&v118[36] = *(v65 + 36);
        v66 = *(v65 + 52);
        v67 = *(v65 + 68);
        v68 = *(v65 + 84);
        v69 = *(v65 + 112);
        *&v118[96] = *(v65 + 96);
        *&v118[68] = v67;
        *&v118[84] = v68;
        *&v118[52] = v66;
        v70 = *(v65 + 128);
        v71 = *(v65 + 144);
        v121 = *(v65 + 160);
        v119 = v70;
        v120 = v71;
        *&v118[112] = v69;
        v72 = 0.5;
        if (*(a2 + 244))
        {
          v72 = 0.625;
        }

        if ((*v149.i32 * v72) >= *v70.i32)
        {
          *v70.i32 = *v149.i32 * v72;
        }

        v119.i32[0] = v70.i32[0];
      }

      v35 = v113;
      break;
    }

    if (v134 >= 2uLL)
    {
      v56 = v134 - 1;
      v57 = v42 + 1;
      do
      {
        if (*v57++)
        {
          goto LABEL_68;
        }
      }

      while (--v56);
    }

    BlueFin::GlPeRepeatedIsol::Submit((v24 + 272), v139, v140);
    v34 = 2;
    v31 = 1;
  }

  while (((v114 | v111) & 1) == 0);
  *this = *v118;
  *(this + 2) = *&v118[16];
  BlueFin::GlSetBase::operator=(v9, &v118[24]);
  v73 = *&v118[84];
  v8[2] = *&v118[68];
  v8[3] = v73;
  *(v8 + 60) = *&v118[96];
  v74 = *&v118[52];
  *v8 = *&v118[36];
  v8[1] = v74;
  v75 = v119;
  *(this + 7) = *&v118[112];
  *(this + 8) = v75;
  *(this + 9) = v120;
  *(this + 160) = v121;
  v76 = *(this + 3);
  if (*v76)
  {
    goto LABEL_76;
  }

  v90 = *(this + 32);
  v14 = 0.0;
  if (v90 >= 2)
  {
    v91 = v90 - 1;
    v92 = v76 + 1;
    while (!*v92++)
    {
      if (!--v91)
      {
        goto LABEL_89;
      }
    }

LABEL_76:
    BlueFin::GlSetBase::GlSetBase(v118, &v118[12], 0x13u, v9);
    *v158 = &v158[12];
    v158[8] = 19;
    memset(&v158[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryInversion(v118, v158);
    BlueFin::GlSetBase::operator=(v118, v158);
    *&v118[28] = *&v158[28];
    *&v118[44] = *&v158[44];
    *&v118[60] = *&v158[60];
    *&v118[72] = *&v158[72];
    *&v118[12] = *&v158[12];
    BlueFin::GlSignalIdSet::setSignalIdLimits(v118);
    BlueFin::GlSetBase::GlSetBase(v142, &v142[12], 0x13u, v35);
    *v158 = &v158[12];
    v158[8] = 19;
    memset(&v158[12], 0, 76);
    BlueFin::GlSetBase::OperatorBinaryAnd(v142, v158, v118);
    BlueFin::GlSetBase::operator=(v142, v158);
    *&v142[28] = *&v158[28];
    *&v142[44] = *&v158[44];
    *&v142[60] = *&v158[60];
    *&v142[72] = *&v158[72];
    *&v142[12] = *&v158[12];
    BlueFin::GlPeSubsets::ComputeWeightedMeanPos(a4, v142, v158);
    v122 = *v158;
    v123 = *&v158[16];
    v24 = a2;
    BlueFin::GlSetBase::operator=(&v124, &v158[24]);
    v128 = *&v158[68];
    *v129 = *&v158[84];
    *&v129[12] = *&v158[96];
    v126 = *&v158[36];
    v127 = *&v158[52];
    *&v129[28] = *v159;
    v130 = *&v159[16];
    v131 = *&v159[32];
    *this = v122;
    v77 = *&v129[36];
    *(this + 2) = v123;
    v78 = v160;
    *(this + 15) = v77;
    v14 = 0.0;
    v132 = v78;
    if (!v110)
    {
      BlueFin::lla2ned(this, (a2 + *(*a2 - 24) + 8), 0, v158);
      v79 = sqrt(*&v158[8] * *&v158[8] + *v158 * *v158);
      v80 = *(this + 32);
      if ((v79 * 0.1) >= v80)
      {
        v80 = v79 * 0.1;
      }

      *(this + 32) = v80;
      v14 = v79;
    }
  }

LABEL_89:
  if (**v9)
  {
LABEL_90:
    if (*(v24 + 176) == 1)
    {
      BlueFin::lla2ned(this, v24 + 26, 0, v158);
      v94 = sqrt(*&v158[8] * *&v158[8] + *v158 * *v158);
      v95 = BlueFin::GlPeSubsets::ComputeScatterWidthK(a4, 0);
      if (v95 < 400.0)
      {
        v95 = 400.0;
      }

      if ((*(v24 + 178) & 1) != 0 || (v95 + v95) >= v94)
      {
        if (*(v24 + 24) > v94)
        {
          v103 = *(this + 32);
          if (v103 <= v94)
          {
            v103 = v94;
          }

          *(this + 32) = v103;
        }
      }

      else if ((*(v24 + 179) & 1) == 0)
      {
        ++*(v24 + 232);
        *(v24 + 179) = 1;
      }
    }

    else if (*(v24 + 56) == 1)
    {
      v100 = *(v24 + 10);
      *v142 = *(v24 + 4);
      *&v142[16] = v100;
      BlueFin::lla2ned(this, v142, 0, v158);
      v101 = sqrt(*&v158[8] * *&v158[8] + *v158 * *v158);
      if (v101 <= 200.0)
      {
        v104 = *(v24 + 11);
        v105 = *(this + 32);
        v106 = v104 / (v104 + v105);
        *this = vmlaq_n_f64(vmulq_n_f64(*this, v106), *(v24 + 4), 1.0 - v106);
        *&v104 = sqrt(1.0 / (1.0 / (v104 * v104) + 1.0 / (v105 * v105)));
        *(this + 32) = LODWORD(v104);
        v102 = 1;
      }

      else
      {
        v102 = 2;
      }

      *(v24 + 128) = v102;
    }
  }

  else
  {
    v96 = *(this + 32);
    if (v96 >= 2)
    {
      v97 = v96 - 1;
      v98 = *v9 + 4;
      do
      {
        if (*v98++)
        {
          goto LABEL_90;
        }
      }

      while (--v97);
    }
  }

LABEL_3:
  if (**v9)
  {
LABEL_4:
    v15 = 0;
    v16 = *(a2 + 5);
    v17 = a2 + *(*a2 - 24);
    v18 = *(v17 + 11);
    v19 = *(a2 + 60);
    *v158 = a4;
    *&v158[24] = v16;
    LODWORD(v16) = *(a2 + 66);
    *&v158[8] = *(a2 + 8);
    *&v158[40] = 0;
    *&v158[32] = 0;
    *&v158[48] = v16;
    *&v158[56] = 0;
    *&v158[64] = *(v17 + 8);
    *&v158[80] = *(v17 + 3);
    *&v158[88] = v18;
    *&v158[96] = v19;
    *&v158[104] = &v159[4];
    v159[0] = 8;
    memset(&v159[4], 0, 32);
    *a4 = a4 + 24;
    *(a4 + 1) = a4 + 24;
    *(a4 + 2) = a4 + 29592;
    v20 = vdupq_n_s32(0x43C80000u);
    do
    {
      *(a4 + v15 + 60) = 0uLL;
      v21 = a4 + v15 + 60;
      *(v21 - 28) = 0;
      *(v21 - 36) = 0;
      *(v21 - 20) = 0;
      *(v21 - 12) = v21;
      *(v21 - 4) = 19;
      *(v21 + 16) = 0uLL;
      *(v21 + 32) = 0uLL;
      *(v21 + 48) = 0uLL;
      *(v21 + 64) = 0uLL;
      *(v21 + 76) = 0uLL;
      *(v21 + 92) = v20;
      *(v21 + 108) = v20;
      v15 += 168;
      *(v21 + 124) = 0;
    }

    while (v15 != 29568);
    BlueFin::GlPeLsqSubsets::RunLsqSubset(v158, v9, 3, 0, *(a2 + 32), 0);
    v22 = *(a2 + 32);
    v23 = *(v22 + 128);
    if (v14 >= v23)
    {
      v23 = v14;
    }

    *(v22 + 128) = v23;
  }

  else
  {
    v59 = *(this + 32);
    if (v59 >= 2)
    {
      v60 = v59 - 1;
      v61 = *v9 + 4;
      while (!*v61++)
      {
        if (!--v60)
        {
          return;
        }
      }

      goto LABEL_4;
    }
  }
}

void BlueFin::GlPeGeoid::get(BlueFin::GlPeGeoid *this, float a2, float a3)
{
  if (fabsf(a2) < 90.0)
  {
    v4 = fmodf(a3 + 180.0, 360.0);
    v5 = fmodf(v4 + 360.0, 360.0);
    v6 = vcvtps_s32_f32(a2 / 10.0);
    v7 = v5 + -180.0;
    v8 = 9 - v6;
    v9 = 10 - v6;
    v10 = vcvtms_s32_f32(v7 / 10.0);
    v11 = v10 + 18;
    v12 = v10 + 19;
    if (v12 <= 35)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    *v14.i32 = (fmodf(v7, 10.0) / 10.0) + 1.0;
    *v15.i32 = *v14.i32 - truncf(*v14.i32);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v22 = *vbslq_s8(v16, v15, v14).i32;
    *v17.i32 = (fmodf(a2, 10.0) / 10.0) + 1.0;
    *v18.i32 = *v17.i32 - truncf(*v17.i32);
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    v17.i32[0] = vbslq_s8(v19, v18, v17).i32[0];
    v20 = &BlueFin::GlPeGeoid::m_acModel[36 * v8];
    v21 = v20[v11];
    *v18.i32 = BlueFin::GlPeGeoid::m_acModel[36 * v9 + v11] + (v22 * (BlueFin::GlPeGeoid::m_acModel[36 * v9 + v13] - BlueFin::GlPeGeoid::m_acModel[36 * v9 + v11]));
    *v17.i32 = *v18.i32 + (*v17.i32 * ((v21 + (v22 * (v20[v13] - v21))) - *v18.i32));
  }
}

float BlueFin::GlPeGnssNavUpa::UnravelHeadingRad(BlueFin::GlPeGnssNavUpa *this, float a2, float a3)
{
  v3 = a2;
  v4 = a3;
    ;
  }

    ;
  }

  if (i < 0.0)
  {
    i = -i;
  }

  v6 = i;
  v7 = v6;
  if (v7 > 1.57079633 && v7 < 4.71238898)
  {
    if (v4 + 3.14159265 <= 6.28318531)
    {
      return v4 + 3.14159265;
    }

    else
    {
      return v4 + -3.14159265;
    }
  }

  return a3;
}

uint64_t BlueFin::GlPeUrbanPosAsstCache::getRegion(BlueFin::GlPeUrbanPosAsstCache *this, int a2)
{
  if (!this)
  {
    DeviceFaultNotify("glpe_urbanposasst.h", 213, "getRegion", "m_potLatLonCityRegion");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_urbanposasst.h", 213, "m_potLatLonCityRegion");
  }

  return this + 8 * a2;
}

uint64_t BlueFin::GlExtSensorType::GetExtended(BlueFin::GlExtSensorType *this)
{
  result = *this;
  if ((result - 104) <= 0xFFFFFFFB)
  {
    DeviceFaultNotify("glpe_hula.cpp", 305, "GetExtended", "m_ucType >= GL_EXT_SENS_EXTENDED_TYPE_OFFSET && m_ucType <= _NUMOF(GL_EXT_SENS_TYPE_EXTENDED)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 305, "m_ucType >= GL_EXT_SENS_EXTENDED_TYPE_OFFSET && m_ucType <= _NUMOF(GL_EXT_SENS_TYPE_EXTENDED)");
  }

  return result;
}

uint64_t BlueFin::GlExtSensDataIfData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v57 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v6 = v3;
    if (v3 > 6)
    {
      goto LABEL_16;
    }

    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 6;
    if (!v2)
    {
LABEL_6:
      if (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1)
      {
LABEL_109:
        result = 1;
        goto LABEL_110;
      }
    }
  }

  v7 = *(v1 + 8);
  if (*(v7 + 32) > 0)
  {
    v53 = 47;
    v54 = v6;
    v55 = 0x1000000000000;
    v52 = &unk_2A1F092C0;
    v56 = v6;
    BlueFin::GlSysLogEntry::PutU8(&v52, *v7);
    if (v6 >= 4)
    {
      BlueFin::GlSysLogEntry::PutU8(&v52, *(*(v5 + 8) + 4));
      v8 = *(v5 + 8);
      v9 = *(v8 + 4);
      if (v9 > 2)
      {
        if ((v9 - 5) < 2 || v9 == 3)
        {
          BlueFin::GlSysLogEntry::PutU64(&v52, *(v8 + 8));
        }

        else
        {
          if (v9 != 4)
          {
            goto LABEL_111;
          }

          BlueFin::GlSysLogEntry::PutU16(&v52, *(v8 + 8));
          BlueFin::GlSysLogEntry::PutU32(&v52, *(*(v5 + 8) + 12));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 16));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 18));
          BlueFin::GlSysLogEntry::PutU32(&v52, *(*(v5 + 8) + 20));
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v8 + 8));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 10));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 12));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 14));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 16));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 18));
          BlueFin::GlSysLogEntry::PutS16(&v52, *(*(v5 + 8) + 20));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(*(v5 + 8) + 22));
          BlueFin::GlSysLogEntry::PutU32(&v52, *(*(v5 + 8) + 24));
        }

        else if (v9 != 2)
        {
LABEL_111:
          DeviceFaultNotify("glpe_hula.cpp", 385, "SerializeImpl", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 385, "0");
        }
      }

      else
      {
        BlueFin::GlSysLogEntry::PutU64(&v52, *(v8 + 8));
      }
    }

    BlueFin::GlSysLogEntry::PutU8(&v52, *(*(v5 + 8) + 32));
    v11 = *(v5 + 8);
    v12 = *v11;
    v13 = *v11;
    if (v13 <= 0x63)
    {
      switch(*v11)
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
          if (*(v11 + 16) >= 1)
          {
            v14 = 0;
            v15 = (v11 + 12);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v15 - 4));
              BlueFin::GlSysLogEntry::PutF32(&v52, *v15);
              ++v14;
              v15 += 22;
            }

            while (v14 < *(v11 + 16));
            v11 = *(v5 + 8);
            v12 = *v11;
          }

          v16 = v12 - 3;
          v17 = v12 - 26;
          v19 = v16 < 3 || v17 < 3;
          if (v6 >= 2 && v19)
          {
            BlueFin::GlSysLogEntry::PutF32(&v52, *&v11[22 * (*(v11 + 16) - 1) + 22]);
          }

          goto LABEL_108;
        case 8u:
          if (*(v11 + 16) >= 1)
          {
            v43 = 0;
            v44 = (v11 + 14);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v44 - 8));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v44 - 1));
              BlueFin::GlSysLogEntry::PutD64(&v52, *v44);
              BlueFin::GlSysLogEntry::PutD64(&v52, v44[1]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v44[2]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v44[4]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v44[5]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v44[6]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v44[7]);
              ++v43;
              v44 += 11;
            }

            while (v43 < *(v11 + 16));
          }

          goto LABEL_108;
        case 9u:
          if (*(v11 + 16) >= 1)
          {
            v37 = 0;
            v38 = (v11 + 14);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v38 - 8));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v38 - 1));
              BlueFin::GlSysLogEntry::PutD64(&v52, *v38);
              BlueFin::GlSysLogEntry::PutD64(&v52, v38[1]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v38[4]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v38[5]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v38[6]);
              BlueFin::GlSysLogEntry::PutD64(&v52, v38[7]);
              ++v37;
              v38 += 11;
            }

            while (v37 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0xAu:
        case 0x21u:
          if (*(v11 + 16) >= 1)
          {
            v24 = 0;
            v25 = v11 + 16;
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v25 - 12));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v25 - 2));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v25 - 1));
              BlueFin::GlSysLogEntry::PutD64(&v52, *v25);
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v25 + 3));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v25 + 4));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v25 + 5));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v25 + 6));
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v25 + 28));
              ++v24;
              v25 += 22;
            }

            while (v24 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
          if (*(v11 + 16) >= 1)
          {
            v20 = 0;
            v21 = (v11 + 12);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v21 - 4));
              BlueFin::GlSysLogEntry::PutF32(&v52, *v21);
              BlueFin::GlSysLogEntry::PutF32(&v52, v21[10]);
              ++v20;
              v21 += 22;
            }

            while (v20 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x11u:
          if (*(v11 + 16) >= 1)
          {
            v26 = 0;
            v27 = (v11 + 30);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v27 - 40));
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v27 - 36));
              if (v6 > 2)
              {
                BlueFin::GlSysLogEntry::PutS16(&v52, *v27);
              }

              ++v26;
              v27 += 44;
            }

            while (v26 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x12u:
          if (*(v11 + 16) >= 1)
          {
            v28 = 0;
            v29 = (v11 + 12);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v29 - 4));
              BlueFin::GlSysLogEntry::PutS16(&v52, *v29);
              ++v28;
              v29 += 44;
            }

            while (v28 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x13u:
          if (*(v11 + 16) >= 1)
          {
            v47 = 0;
            v48 = (v11 + 12);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v48 - 4));
              BlueFin::GlSysLogEntry::PutS16(&v52, *v48);
              ++v47;
              v48 += 44;
            }

            while (v47 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x14u:
        case 0x18u:
          DeviceFaultNotify("glpe_hula.cpp", 588, "SerializeImpl", "false");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 588, "false");
        case 0x15u:
          if (*(v11 + 16) >= 1)
          {
            v49 = 0;
            v50 = v11 + 12;
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v50 - 4));
              BlueFin::GlSysLogEntry::PutU8(&v52, *v50);
              BlueFin::GlSysLogEntry::PutU32(&v52, v50[1]);
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v50 + 10));
              ++v49;
              v50 += 22;
            }

            while (v49 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x16u:
          if (*(v11 + 16) >= 1)
          {
            v45 = 0;
            v46 = v11 + 12;
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v46 - 4));
              BlueFin::GlSysLogEntry::PutU8(&v52, *v46);
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v46 + 1));
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v46 + 10));
              ++v45;
              v46 += 22;
            }

            while (v45 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x17u:
          if (*(v11 + 16) >= 1)
          {
            v30 = 0;
            v31 = (v11 + 22);
            do
            {
              BlueFin::GlSysLogEntry::PutS16(&v52, *(v31 - 24));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v31 - 5));
              BlueFin::GlSysLogEntry::PutD64(&v52, *(v31 - 4));
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v31 - 6));
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v31 - 5));
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v31 - 4));
              BlueFin::GlSysLogEntry::PutF32(&v52, *(v31 - 3));
              BlueFin::GlSysLogEntry::PutU32(&v52, *(v31 - 2));
              BlueFin::GlSysLogEntry::PutF32(&v52, *v31);
              ++v30;
              v31 += 22;
            }

            while (v30 < *(v11 + 16));
          }

          goto LABEL_108;
        case 0x1Du:
          if (*(v11 + 16) < 1)
          {
            goto LABEL_108;
          }

          v32 = 0;
          v33 = v11 + 12;
          break;
        default:
          goto LABEL_113;
      }

      while (1)
      {
        BlueFin::GlSysLogEntry::PutU64(&v52, *v33);
        BlueFin::GlSysLogEntry::PutU8(&v52, *(v33 + 8));
        v34 = v33[2];
        if (v34 == 2)
        {
          break;
        }

        if (v34 == 1)
        {
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 6));
          BlueFin::GlSysLogEntry::PutU32(&v52, v33[4]);
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 10));
LABEL_77:
          v35 = 22;
          v36 = 6;
          goto LABEL_78;
        }

        if (!v34)
        {
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 6));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 7));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 8));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 9));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 10));
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 11));
          BlueFin::GlSysLogEntry::PutS16(&v52, *(v33 + 12));
          v35 = 26;
          v36 = 7;
LABEL_78:
          BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + v35));
          BlueFin::GlSysLogEntry::PutU32(&v52, v33[v36]);
        }

        ++v32;
        v33 += 22;
        if (v32 >= *(v11 + 16))
        {
          goto LABEL_108;
        }
      }

      BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 6));
      BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 7));
      BlueFin::GlSysLogEntry::PutU32(&v52, v33[4]);
      BlueFin::GlSysLogEntry::PutU16(&v52, *(v33 + 10));
      goto LABEL_77;
    }

    switch(v13)
    {
      case 'd':
        if (*(v11 + 16) >= 1)
        {
          v39 = 0;
          v40 = (v11 + 12);
          do
          {
            BlueFin::GlSysLogEntry::PutS16(&v52, *(v40 - 4));
            BlueFin::GlSysLogEntry::PutU8(&v52, *v40);
            BlueFin::GlSysLogEntry::PutU8(&v52, v40[40]);
            ++v39;
            v40 += 88;
          }

          while (v39 < *(v11 + 16));
        }

        break;
      case 'e':
        if (*(v11 + 16) >= 1)
        {
          v41 = 0;
          v42 = (v11 + 12);
          do
          {
            BlueFin::GlSysLogEntry::PutS16(&v52, *(v42 - 4));
            BlueFin::GlSysLogEntry::PutU8(&v52, *v42);
            BlueFin::GlSysLogEntry::PutU8(&v52, v42[1]);
            BlueFin::GlSysLogEntry::PutU8(&v52, v42[40]);
            ++v41;
            v42 += 88;
          }

          while (v41 < *(v11 + 16));
        }

        break;
      case 'f':
        if (*(v11 + 16) >= 1)
        {
          v22 = 0;
          v23 = (v11 + 16);
          do
          {
            BlueFin::GlSysLogEntry::PutS16(&v52, *(v23 - 12));
            BlueFin::GlSysLogEntry::PutD64(&v52, *(v23 - 2));
            BlueFin::GlSysLogEntry::PutD64(&v52, *(v23 - 1));
            BlueFin::GlSysLogEntry::PutU8(&v52, *v23);
            ++v22;
            v23 += 88;
          }

          while (v22 < *(v11 + 16));
        }

        break;
      default:
LABEL_113:
        DeviceFaultNotify("glpe_hula.cpp", 622, "SerializeImpl", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 622, "0");
    }

LABEL_108:
    GlCustomLog(14, "\n");
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v52, v4, 4);
    goto LABEL_109;
  }

  GlCustomLog(11, " NO DATA\n");
LABEL_16:
  result = 0;
LABEL_110:
  v51 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlExtSensDataIfData::Deserialize(BlueFin::GlExtSensDataIfData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 47 || *(a2 + 12) - 7 < 0xFFFFFFFA)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v6 = *(this + 1);
  *v6 = U8;
  if (*(a2 + 12) < 4u)
  {
    v6[1] = 2;
  }

  else
  {
    v7 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(*(this + 1) + 4) = v7;
    if (v7 > 2)
    {
      if ((v7 - 5) >= 2 && v7 != 3)
      {
        if (v7 != 4)
        {
LABEL_103:
          v52 = "0";
          DeviceFaultNotify("glpe_hula.cpp", 683, "Deserialize", "0");
          v53 = 683;
          goto LABEL_106;
        }

        *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 12) = BlueFin::GlSysLogEntry::GetU32(a2);
        *(*(this + 1) + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 20) = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU64(a2);
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 10) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 12) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 14) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 20) = BlueFin::GlSysLogEntry::GetS16(a2);
        *(*(this + 1) + 22) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(*(this + 1) + 24) = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      else if (v7 != 2)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *(*(this + 1) + 8) = BlueFin::GlSysLogEntry::GetU64(a2);
    }
  }

  v8 = BlueFin::GlSysLogEntry::GetU8(a2);
  v9 = *(this + 1);
  *(v9 + 16) = v8;
  v10 = *v9;
  v11 = *v9;
  if (v11 <= 0x63)
  {
    switch(*v9)
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
        if (v8)
        {
          v12 = 0;
          v13 = (v9 + 12);
          do
          {
            *(v13 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v13 = BlueFin::GlSysLogEntry::GetF32(a2);
            v13 += 22;
            ++v12;
          }

          while (v12 < *(v9 + 16));
          v9 = *(this + 1);
          v10 = *v9;
        }

        v14 = v10 > 0x1C;
        v15 = (1 << v10) & 0x1C000038;
        if (!v14 && v15 != 0)
        {
          if (*(a2 + 12) < 2u)
          {
            F32 = 100.0;
          }

          else
          {
            F32 = BlueFin::GlSysLogEntry::GetF32(a2);
            v9 = *(this + 1);
          }

          *&v9[22 * (*(v9 + 16) - 1) + 22] = F32;
        }

        goto LABEL_36;
      case 8u:
        if (v8)
        {
          v44 = 0;
          v45 = (v9 + 14);
          do
          {
            *(v45 - 8) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v45 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
            *v45 = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[1] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[2] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[4] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[5] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[6] = BlueFin::GlSysLogEntry::GetD64(a2);
            v45[7] = BlueFin::GlSysLogEntry::GetD64(a2);
            ++v44;
            v45 += 11;
          }

          while (v44 < *(v9 + 16));
        }

        goto LABEL_36;
      case 9u:
        if (v8)
        {
          v38 = 0;
          v39 = (v9 + 14);
          do
          {
            *(v39 - 8) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v39 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
            *v39 = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[1] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[4] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[5] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[6] = BlueFin::GlSysLogEntry::GetD64(a2);
            v39[7] = BlueFin::GlSysLogEntry::GetD64(a2);
            ++v38;
            v39 += 11;
          }

          while (v38 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0xAu:
      case 0x21u:
        if (v8)
        {
          v22 = 0;
          v23 = v9 + 16;
          do
          {
            *(v23 - 12) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v23 - 2) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
            *v23 = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v23 + 6) = BlueFin::GlSysLogEntry::GetD64(a2);
            v23[14] = BlueFin::GlSysLogEntry::GetS16(a2);
            ++v22;
            v23 += 22;
          }

          while (v22 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
        if (v8)
        {
          v18 = 0;
          v19 = (v9 + 12);
          do
          {
            *(v19 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v19 = BlueFin::GlSysLogEntry::GetF32(a2);
            v19[10] = BlueFin::GlSysLogEntry::GetF32(a2);
            ++v18;
            v19 += 22;
          }

          while (v18 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x11u:
        if (v8)
        {
          v24 = 0;
          v25 = v9 + 30;
          do
          {
            *(v25 - 40) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v25 - 18) = BlueFin::GlSysLogEntry::GetS16(a2);
            if (*(a2 + 12) < 3u)
            {
              S16 = 3;
            }

            else
            {
              S16 = BlueFin::GlSysLogEntry::GetS16(a2);
            }

            *v25 = S16;
            v25 += 22;
            ++v24;
          }

          while (v24 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x12u:
        if (v8)
        {
          v27 = 0;
          v28 = v9 + 12;
          do
          {
            *(v28 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v28 = BlueFin::GlSysLogEntry::GetS16(a2);
            v28 += 22;
            ++v27;
          }

          while (v27 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x13u:
        if (v8)
        {
          v48 = 0;
          v49 = v9 + 12;
          do
          {
            *(v49 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v49 = BlueFin::GlSysLogEntry::GetS16(a2);
            v49 += 22;
            ++v48;
          }

          while (v48 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x14u:
      case 0x18u:
        v52 = "false";
        DeviceFaultNotify("glpe_hula.cpp", 908, "Deserialize", "false");
        v53 = 908;
        goto LABEL_106;
      case 0x15u:
        if (v8)
        {
          v50 = 0;
          v51 = v9 + 12;
          do
          {
            *(v51 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v51 = BlueFin::GlSysLogEntry::GetU8(a2);
            v51[1] = BlueFin::GlSysLogEntry::GetU32(a2);
            *(v51 + 10) = BlueFin::GlSysLogEntry::GetF32(a2);
            ++v50;
            v51 += 22;
          }

          while (v50 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x16u:
        if (v8)
        {
          v46 = 0;
          v47 = v9 + 12;
          do
          {
            *(v47 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
            *v47 = BlueFin::GlSysLogEntry::GetU8(a2);
            *(v47 + 1) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v47 + 10) = BlueFin::GlSysLogEntry::GetF32(a2);
            ++v46;
            v47 += 22;
          }

          while (v46 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x17u:
        if (v8)
        {
          v29 = 0;
          v30 = (v9 + 22);
          do
          {
            *(v30 - 24) = BlueFin::GlSysLogEntry::GetS16(a2);
            *(v30 - 5) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v30 - 4) = BlueFin::GlSysLogEntry::GetD64(a2);
            *(v30 - 6) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 5) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 4) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 3) = BlueFin::GlSysLogEntry::GetF32(a2);
            *(v30 - 2) = BlueFin::GlSysLogEntry::GetU32(a2);
            *v30 = BlueFin::GlSysLogEntry::GetF32(a2);
            v30 += 22;
            ++v29;
          }

          while (v29 < *(v9 + 16));
        }

        goto LABEL_36;
      case 0x1Du:
        if (!v8)
        {
          goto LABEL_36;
        }

        v31 = 0;
        v32 = v9 + 12;
        break;
      default:
        goto LABEL_105;
    }

    while (1)
    {
      *v32 = BlueFin::GlSysLogEntry::GetU64(a2);
      v33 = BlueFin::GlSysLogEntry::GetU8(a2);
      v32[2] = v33;
      if (v33 == 2)
      {
        break;
      }

      if (v33 == 1)
      {
        *(v32 + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
LABEL_71:
        v32[4] = BlueFin::GlSysLogEntry::GetU32(a2);
        U16 = BlueFin::GlSysLogEntry::GetU16(a2);
        v35 = 5;
        v36 = 22;
        v37 = 6;
        goto LABEL_72;
      }

      if (!v33)
      {
        *(v32 + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 9) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 10) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(v32 + 11) = BlueFin::GlSysLogEntry::GetU16(a2);
        U16 = BlueFin::GlSysLogEntry::GetS16(a2);
        v35 = 6;
        v36 = 26;
        v37 = 7;
LABEL_72:
        LOWORD(v32[v35]) = U16;
        *(v32 + v36) = BlueFin::GlSysLogEntry::GetU16(a2);
        v32[v37] = BlueFin::GlSysLogEntry::GetU32(a2);
      }

      ++v31;
      v32 += 22;
      if (v31 >= *(v9 + 16))
      {
        goto LABEL_36;
      }
    }

    *(v32 + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(v32 + 7) = BlueFin::GlSysLogEntry::GetU16(a2);
    goto LABEL_71;
  }

  switch(v11)
  {
    case 'd':
      if (v8)
      {
        v40 = 0;
        v41 = v9 + 12;
        do
        {
          *(v41 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
          *v41 = BlueFin::GlSysLogEntry::GetU8(a2);
          v41[10] = BlueFin::GlSysLogEntry::GetU8(a2);
          ++v40;
          v41 += 22;
        }

        while (v40 < *(v9 + 16));
      }

      break;
    case 'e':
      if (v8)
      {
        v42 = 0;
        v43 = v9 + 12;
        do
        {
          *(v43 - 4) = BlueFin::GlSysLogEntry::GetS16(a2);
          *v43 = BlueFin::GlSysLogEntry::GetU8(a2);
          v43[1] = BlueFin::GlSysLogEntry::GetU8(a2);
          v43[40] = BlueFin::GlSysLogEntry::GetU8(a2);
          ++v42;
          v43 += 88;
        }

        while (v42 < *(v9 + 16));
      }

      break;
    case 'f':
      if (v8)
      {
        v20 = 0;
        v21 = v9 + 16;
        do
        {
          *(v21 - 12) = BlueFin::GlSysLogEntry::GetS16(a2);
          *(v21 - 2) = BlueFin::GlSysLogEntry::GetD64(a2);
          *(v21 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
          *v21 = BlueFin::GlSysLogEntry::GetU8(a2);
          v21 += 88;
          ++v20;
        }

        while (v20 < *(v9 + 16));
      }

      break;
    default:
LABEL_105:
      v52 = "0";
      DeviceFaultNotify("glpe_hula.cpp", 942, "Deserialize", "0");
      v53 = 942;
LABEL_106:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", v53, v52);
  }

LABEL_36:
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 945);
  return 1;
}

double BlueFin::GlPeHula::SetPpsPlatformTime(uint64_t a1, unsigned __int16 *a2, int8x16_t a3, double a4, int8x16_t a5)
{
  v12[0] = &unk_2A1F11310;
  v12[1] = 0;
  a3.i16[0] = a2[5];
  LOWORD(a4) = a2[6];
  *&v7 = *&a4;
  *a3.i64 = a3.u64[0] + *&v7 * 0.001;
  LOWORD(v7) = a2[7];
  v8 = v7;
  a5.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
  *a3.i64 = *a3.i64 + v8 * 0.000001;
  BlueFin::GlUtcTime::GlUtcTime(v12, *a2, *(a2 + 2), *(a2 + 4), *(a2 + 6), *(a2 + 8), a3, v8, a5);
  BlueFin::GlPeTimeManager::GetTime(*(a1 + 1080), v12, 1, &v10);
  result = v11;
  *(a1 + 1032) = v11;
  *(a1 + 1040) = *(a2 + 4);
  return result;
}

float64x2_t BlueFin::GlPeHula::TempData::Update(double *a1, int a2, float *a3)
{
  v3 = *a3;
  a1[1] = v3;
  v4 = a3[2];
  *a1 = v4;
  if (a2 < 2)
  {
    v10 = &qword_298A2E118;
    v8 = vld1q_dup_f64(v10);
    v8.f64[0] = v3;
  }

  else
  {
    v5 = a2 - 1;
    v6 = a3 + 24;
    do
    {
      v7 = *(v6 - 48);
      v8.f64[0] = *(v6 - 4);
      a1[1] = v8.f64[0];
      v9 = *v6;
      v6 += 22;
      v4 = v4 + v9;
      *a1 = v4;
      --v5;
    }

    while (v5);
    *a1 = v4 / a2;
    v8.f64[1] = v8.f64[0] - v7;
  }

  result = vdivq_f64(v8, vdupq_n_s64(0x408F400000000000uLL));
  *(a1 + 1) = result;
  return result;
}

uint64_t BlueFin::GlPeHula::CrossTrkSpeedData::Update(uint64_t a1, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  v7 = a2 + 88 * (*(a2 + 32) - 1);
  *a1 = *(v7 + 48);
  *(a1 + 8) = *(v7 + 88);
  if (*(a1 + 40) == 1)
  {
    v9 = *(a2 + 8);
    *(a1 + 36) = *(a2 + 24);
    *(a1 + 20) = v9;
    v20[0] = &unk_2A1F11310;
    v20[1] = 0;
    v9.i16[0] = *(a1 + 30);
    LOWORD(a5) = *(a1 + 32);
    *&v10 = *&a5;
    *v9.i64 = v9.u64[0] + *&v10 * 0.001;
    LOWORD(v10) = *(a1 + 34);
    v11 = v10;
    a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
    *v9.i64 = *v9.i64 + v11 * 0.000001;
    BlueFin::GlUtcTime::GlUtcTime(v20, *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 26), *(a1 + 28), v9, v11, a6);
    Time = BlueFin::GlPeTimeManager::GetTime(a3, v20, 0, v19);
    v13.i64[0] = v19[2];
    result = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v13, v14, v15, v16, v17);
  }

  else
  {
    result = (*(*(a1 + 48) + 576) + *(v7 + 40));
  }

  *(a1 + 16) = result;
  *(a1 + 41) = 1;
  return result;
}

uint64_t BlueFin::GlPeHula::HdgData::Update(uint64_t result, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  if ((*(result + 1692) & 1) == 0)
  {
    v7 = *(a2 + 32);
    if (v7 >= 1)
    {
      v8 = result;
      if (*(result + 1688))
      {
        v10 = *(a2 + 8);
        *(result + 1684) = *(a2 + 24);
        *(result + 1668) = v10;
        v24[0] = &unk_2A1F11310;
        v24[1] = 0;
        v10.i16[0] = *(result + 1678);
        LOWORD(a5) = *(result + 1680);
        *&v11 = *&a5;
        *v10.i64 = v10.u64[0] + *&v11 * 0.001;
        LOWORD(v11) = *(result + 1682);
        v12 = v11;
        a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
        *v10.i64 = *v10.i64 + v12 * 0.000001;
        BlueFin::GlUtcTime::GlUtcTime(v24, *(result + 1668), *(result + 1670), *(result + 1672), *(result + 1674), *(result + 1676), v10, v12, a6);
        Time = BlueFin::GlPeTimeManager::GetTime(a3, v24, 0, v23);
        v14.i64[0] = v23[2];
        result = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v14, v15, v16, v17, v18);
        v7 = *(a2 + 32);
        *(v8 + 1664) = result;
        if (v7 < 1)
        {
          return result;
        }
      }

      else
      {
        *(result + 1664) = *(*(result + 1696) + 576);
      }

      v19 = 0;
      v20 = (a2 + 88);
      do
      {
        if (*v20 > 0.0)
        {
          v21 = *(v20 - 10);
          BlueFin::SKFVector::AddLen(v8);
          *(*v8 + 8 * *(v8 + 8)) = v21;
          v22 = *v20;
          result = BlueFin::SKFVector::AddLen(v8 + 824);
          *(*(v8 + 824) + 8 * *(v8 + 832)) = v22;
          LOWORD(v7) = *(a2 + 32);
        }

        ++v19;
        v20 += 22;
      }

      while (v19 < v7);
    }
  }

  return result;
}

float BlueFin::GlPeHula::TurningRateSensorData::Update(uint64_t a1, uint64_t a2, float result, double a4, double a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10)
{
  if (*(a2 + 32) >= 1)
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(*(a1 + 40) + 576);
    *(a1 + 8) = v13;
    v14 = *(a2 + 88);
    v15 = v14 * v14;
    v16 = 0.0;
    if (v14 <= 0.0)
    {
      v15 = 0.0;
    }

    if (v10 == 1)
    {
      a7.i64[0] = 0;
      v17 = 1000.0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = v14 > 0.0;
      v21 = (a2 + 128);
      v22 = 0.0;
      v23 = 1;
      v24 = v12;
      do
      {
        v11 = *v21;
        v25 = *v21 - *(a2 + 40 + 88 * SHIDWORD(v18));
        if (v25 < 0)
        {
          v22 = 1.0;
          v25 += 1000;
        }

        v19 += v25;
        v26 = v21[2];
        v24 = v24 + v26;
        v27 = v23++;
        v12 = (v26 + (v27 * v12)) / v23;
        v16 = ((v16 * v27) / v23) + (((v26 - v12) * (v26 - v12)) / v27);
        v28 = v21[12];
        if (v28 > 0.0)
        {
          ++v20;
          v15 = v15 + (v28 * v28);
        }

        v18 += 0x100000000;
        v21 += 22;
      }

      while (v10 != v23);
      *a7.i64 = v22 * 1000.0;
      v12 = v24 / v10;
      v17 = v19 / (v10 - 1);
      if (v20 > 1)
      {
        v15 = v15 / v20;
      }
    }

    v29 = v13 + v11;
    *a10.i64 = *a7.i64 + trunc(*a7.i64 * 2.32830644e-10) * -4294967300.0;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v31 = vnegq_f64(v30);
    a10.i64[0] = vbslq_s8(v31, a10, a7).u64[0];
    if (*a7.i64 > 4294967300.0)
    {
      a7.i64[0] = a10.i64[0];
    }

    if (*a7.i64 < -4294967300.0)
    {
      *a9.i64 = -*a7.i64;
      *a7.i64 = -(*a7.i64 - trunc(*a7.i64 * -2.32830644e-10) * -4294967300.0);
      *a7.i64 = -*vbslq_s8(v31, a7, a9).i64;
    }

    if (*a7.i64 < 0.0)
    {
      v32 = --*a7.i64;
    }

    else
    {
      v32 = *a7.i64;
    }

    *(a1 + 8) = v29 + v32;
    result = sqrtf(v16 + v15);
    *a1 = (v12 * v10) * (v17 / 1000.0);
    *(a1 + 4) = result;
    *(a1 + 33) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeHula::UpdateAuxInfo(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) >= 1)
  {
    v9 = v2;
    v10 = v3;
    v5 = result;
    v6 = 0;
    v7 = (a2 + 52);
    do
    {
      v8 = *(v7 - 1);
      result = BlueFin::GlExtSensorType::Get(&v8);
      if (result == 13)
      {
        *(v5 + 5140) = *v7;
      }

      else if (result == 15)
      {
        *(v5 + 2986) = *v7;
      }

      ++v6;
      v7 += 22;
    }

    while (v6 < *(a2 + 32));
  }

  return result;
}

_DWORD *BlueFin::GlPeHula::ExtSensTempData::Update(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 - 41) >= 0xFFFFFFD8)
  {
    v3 = (a2 + 48);
    do
    {
      v4 = *v3;
      if (*v3 > 0x1C)
      {
        break;
      }

      if (((1 << v4) & 0x1C00003F) != 0)
      {
        v5 = 0;
      }

      else
      {
        if (v4 != 24)
        {
          return result;
        }

        v5 = 1;
      }

      v6 = *v3;
      v3 += 22;
      *&result[2 * v5 + 2] = v6;
      *(result + v5 + 24) = 1;
      v7 = *(*result + 576);
      if (v7 <= 1)
      {
        v7 = 1;
      }

      result[7] = v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t BlueFin::GlPeHula::TravelAssistData::Update(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) - 1 <= 0x27)
  {
    v2 = a2 + 88 * (*(a2 + 32) - 1);
    *(result + 52) = *(v2 + 88);
    v3 = *(v2 + 48);
    v4 = *(v2 + 64);
    v5 = *(v2 + 80);
    *(result + 40) = v5;
    *(result + 24) = v4;
    *(result + 8) = v3;
    v6 = *(*result + 576);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    *(result + 56) = v6;
    *(result + 40) = v5 & 4 | (8 * ((v5 >> 1) & 1)) | (2 * (v5 & 1)) | (v5 >> 2) & 0x10;
    *(result + 48) = 1;
    *(result + 62) = 257;
  }

  return result;
}

uint64_t BlueFin::GlPeHula::DeltaPos::Update(uint64_t a1, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  v7 = a2 + 88 * (*(a2 + 32) - 1);
  v8 = *(v7 + 48);
  *a1 = v8;
  v9 = *(v7 + 88);
  *(a1 + 8) = v9;
  if (*(a1 + 40) == 1)
  {
    v11 = *(a2 + 8);
    *(a1 + 36) = *(a2 + 24);
    *(a1 + 20) = v11;
    v22[0] = &unk_2A1F11310;
    v22[1] = 0;
    v11.i16[0] = *(a1 + 30);
    LOWORD(v9) = *(a1 + 32);
    *&v12 = v9;
    *v11.i64 = v11.u64[0] + *&v12 * 0.001;
    LOWORD(v12) = *(a1 + 34);
    v13 = v12;
    a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
    *v11.i64 = *v11.i64 + v13 * 0.000001;
    BlueFin::GlUtcTime::GlUtcTime(v22, *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 26), *(a1 + 28), v11, v13, a6);
    Time = BlueFin::GlPeTimeManager::GetTime(a3, v22, 0, v21);
    v15.i64[0] = v21[2];
    result = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v15, v16, v17, v18, v19);
    v8 = *a1;
  }

  else
  {
    result = (*(*(a1 + 48) + 576) + *(v7 + 40));
  }

  *(a1 + 16) = result;
  *(a1 + 41) = v8 > 0.0;
  return result;
}

BlueFin::GlPeGloFcnOsnMgr *BlueFin::GlPeHula::LosStateData::Update(BlueFin::GlPeGloFcnOsnMgr *result, uint64_t a2, int a3)
{
  v3 = 0;
  *(result + 19) = 0u;
  *(result + 20) = 0u;
  *(result + 17) = 0u;
  *(result + 18) = 0u;
  *(result + 15) = 0u;
  *(result + 16) = 0u;
  *(result + 13) = 0u;
  *(result + 14) = 0u;
  *(result + 11) = 0u;
  *(result + 12) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 7) = 0u;
  *(result + 8) = 0u;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *(result + 2) = a3;
  v4 = *(a2 + 32);
  if (v4 >= 1)
  {
    v5 = result;
    v6 = (result + 344);
    v7 = (a2 + 48);
    v8 = 16;
    do
    {
      v9 = *v7;
      v10 = v7[1];
      LOBYTE(v3) = v7[40];
      *(v5 + v8) = v3 / 255.0;
      if (v9 <= 1)
      {
        if (!v9)
        {
          v16 = 0;
          goto LABEL_13;
        }

        v11 = 2;
      }

      else
      {
        switch(v9)
        {
          case 2:
            v11 = 5;
            break;
          case 3:
            v11 = 4;
            break;
          case 4:
            v11 = 3;
            break;
          default:
            DeviceFaultNotify("glpe_hula.cpp", 2443, "Update", "false");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 2443, "false");
        }
      }

      v16 = v11;
LABEL_13:
      v17 = v10;
      result = BlueFin::GlPeSvIdConverter::Gnss2SvId((*v5 + 119744), &v16, &v15);
      if (v15 - 189 >= 0xFFFFFF44)
      {
        v14 = BlueFin::GlSvId::s_aucSvId2gnss[v15];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
        {
          v13 = 575;
          v12 = -1;
        }

        else
        {
          v12 = 0;
          v13 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v15 - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
        }
      }

      else
      {
        v12 = 0;
        v13 = 575;
      }

      v7 += 88;
      *(v6 - 8) = v15;
      *(v6 - 1) = v12;
      *v6 = v13;
      v6 += 6;
      v8 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

_DWORD *BlueFin::GlPeHula::ExtConstraintData::Update(_DWORD *result, uint64_t a2, int a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = -7200001;
  v3 = a2 + 88 * (*(a2 + 32) - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  LODWORD(v3) = *(v3 + 64);
  *&v5 = v5;
  *&v4 = v4;
  result[1] = LODWORD(v5);
  result[2] = LODWORD(v4);
  *result = a3 + 1000 * v3;
  if (*&v4 >= *&v5)
  {
    result[1] = 0;
    result[2] = 0;
    *result = -7200001;
  }

  return result;
}

float BlueFin::GlPeHula::GetDistanceToE911ExtLoc(uint64_t a1, double *a2)
{
  result = -1.0;
  if (*(a1 + 5208) == 1)
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 5232);
    v6 = *(a1 + 5216);
    v7 = v5;
    BlueFin::lla2ned(a2, &v6, 0, &v8);
    return sqrt(v9 * v9 + v8 * v8);
  }

  return result;
}

BOOL BlueFin::GlPeHula::HulaHdgCombine(BlueFin::GlPeHula *this, const BlueFin::SKFVector *a2, const BlueFin::SKFVector *a3)
{
  v4 = *(a2 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      *(this + 368) = *(*a2 + 8);
      v6 = *(*a3 + 8);
    }

    else
    {
      *(this + 184) = 0u;
      BlueFin::SKFVectorDim<100>::SKFVectorDim(&v42, a2);
      v7 = v42;
      v8 = *(v42 + 8);
      v9 = v43;
      v10 = v8;
      v11 = v8;
      if (v43 >= 2)
      {
        v12 = v43 - 1;
        v13 = (v42 + 16);
        v14 = v12;
        v10 = *(v42 + 8);
        do
        {
          v15 = *v13++;
          v16 = v15;
          if (v10 < v15)
          {
            v10 = v16;
          }

          --v14;
        }

        while (v14);
        v17 = (v42 + 16);
        v11 = *(v42 + 8);
        do
        {
          v18 = *v17++;
          v19 = v18;
          if (v11 > v18)
          {
            v11 = v19;
          }

          --v12;
        }

        while (v12);
      }

      if (v4 >= 2 && v10 - v11 > 180.0)
      {
        v20 = 2;
        do
        {
          v21 = *(v7 + 8);
            ;
          }

          while (i <= -3.14159265)
          {
            i = i + 6.28318531;
          }

          *(v7 + 8 * v20++) = v21 + i * 57.2957795;
        }

        while (v20 != v4 + 1);
        v8 = *(v7 + 8);
      }

      if (v9 < 2)
      {
        v26 = v8;
      }

      else
      {
        v23 = v9 - 1;
        v24 = (v7 + 16);
        v25 = v23;
        v26 = v8;
        do
        {
          v27 = *v24++;
          v28 = v27;
          if (v26 < v27)
          {
            v26 = v28;
          }

          --v25;
        }

        while (v25);
        v29 = (v7 + 16);
        do
        {
          v30 = *v29++;
          v31 = v30;
          if (v8 > v30)
          {
            v8 = v31;
          }

          --v23;
        }

        while (v23);
      }

      if (v26 - v8 > 180.0)
      {
        DeviceFaultNotify("glpe_hula.cpp", 3641, "HulaHdgCombine", "otHdgDeg.Max() - otHdgDeg.Min() <= STRAIGHT_ANGLE_DEG");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 3641, "otHdgDeg.Max() - otHdgDeg.Min() <= STRAIGHT_ANGLE_DEG");
      }

      v32 = *(this + 369);
      v33 = *(this + 368);
      if (v4 >= 1)
      {
        v34 = (v7 + 8);
        v35 = (*a3 + 8);
        v36 = v4;
        do
        {
          v37 = *v35++;
          v38 = v37 * v37;
          v39 = *v34++;
          v40 = 1.0 / v38;
          v33 = v33 + v39 * v40;
          *(this + 368) = v33;
          v32 = v32 + v40;
          *(this + 369) = v32;
          --v36;
        }

        while (v36);
      }

      *(this + 368) = v33 / v32;
      v6 = sqrt(1.0 / v32);
    }

    *(this + 369) = v6;
  }

  else
  {
    *(this + 184) = xmmword_298A2F6C0;
  }

  return v4 != 0;
}

BOOL BlueFin::GlPeHula::UpdateHulaDebug(BlueFin::GlPeHula *this, float a2)
{
  v18 = *MEMORY[0x29EDCA608];
  bzero(v15, 0xDE0uLL);
  v4.i32[1] = 2;
  v14 = 0x20000000FLL;
  v15[12] = 1;
  *v4.i32 = a2 * 57.296;
  v16 = a2 * 57.296;
  v17 = 1092616192;
  *(this + 2988) = 0;
  BlueFin::GlPeHula::Update(this, &v14, v4, v5, v6, v7, v8, v9, v10, v11);
  result = BlueFin::GlPeHula::HulaHdgCombine(this, (this + 1296), (this + 2120));
  if (!result)
  {
    DeviceFaultNotify("glpe_hula.cpp", 4079, "UpdateHulaDebug", "HulaHdgCombine(m_HdgHULA.m_otValueDeg, m_HdgHULA.m_otRmseDeg)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 4079, "HulaHdgCombine(m_HdgHULA.m_otValueDeg, m_HdgHULA.m_otRmseDeg)");
  }

  *(this + 2988) = 1;
  *(this + 2985) = 1;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *BlueFin::GlUtcTime::MakeRelativeToGps0(_WORD *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t *a8)
{
  v8 = *this;
  if (v8 <= 0x7B2)
  {
    if (v8 != 1970 || (v9 = *a2, v9 <= 1) && (v9 == 1 ? (v14 = *a3 == 0) : (v14 = 1), v14))
    {
      v15 = "rusYear > 1970 || (rusYear == 1970 && (rusMonth > 1 || (rusMonth == 1 && rusDay >= 1)))";
      DeviceFaultNotify("glpe_datetime.h", 1222, "MakeRelativeToGps0", "rusYear > 1970 || (rusYear == 1970 && (rusMonth > 1 || (rusMonth == 1 && rusDay >= 1)))");
      v16 = 1222;
      goto LABEL_16;
    }

    v11 = *a4;
    v12 = *a5;
    v17 = 2;
    v13 = *a6;
    goto LABEL_18;
  }

  if (v8 > 0x7BC)
  {
    return this;
  }

  if (v8 != 1980)
  {
    v11 = *a4;
    v12 = *a5;
    v13 = *a6;
    v9 = *a2;
    if (v8 != 1971)
    {
      v10 = *a3;
      goto LABEL_25;
    }

    v17 = 3;
LABEL_18:
    v18 = BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v17 - 1 + v9] + *a3 - 732;
LABEL_19:
    v19 = *a7 - 1000 * (-60 * v12 - v13 - 3600 * v11 - 86400 * v18) - 315964800000;
    *a7 = v19;
    if (v19 >= 0)
    {
      *this = 1980;
      *a2 = 1;
      *a3 = 6;
      *a4 = 0;
      *a5 = 0;
      *a6 = 0;
      return this;
    }

    v15 = "rsllUtcOffsetMs >= 0";
    DeviceFaultNotify("glpe_datetime.h", 1251, "MakeRelativeToGps0", "rsllUtcOffsetMs >= 0");
    v16 = 1251;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_datetime.h", v16, v15);
  }

  v9 = *a2;
  if (v9 <= 1)
  {
    v10 = *a3;
    if (v9 != 1 || v10 <= 5)
    {
      v11 = *a4;
      v12 = *a5;
      v8 = 1980;
      v13 = *a6;
LABEL_25:
      v18 = BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v8 & 3) - 1 + v9] + 1461 * ((v8 - 1972) >> 2) + v10 + 729;
      goto LABEL_19;
    }
  }

  return this;
}

BlueFin::GlUtcTime *BlueFin::GlUtcTime::GlUtcTime(BlueFin::GlUtcTime *a1, unsigned __int16 *a2, int8x16_t a3, double a4, int8x16_t a5)
{
  *a1 = &unk_2A1F11310;
  *(a1 + 1) = 0;
  a3.i16[0] = a2[5];
  LOWORD(a4) = a2[6];
  *&v5 = *&a4;
  *a3.i64 = a3.u64[0] + *&v5 * 0.001;
  LOWORD(v5) = a2[7];
  v6 = v5;
  a5.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
  *a3.i64 = *a3.i64 + v6 * 0.000001;
  return BlueFin::GlUtcTime::GlUtcTime(a1, *a2, *(a2 + 2), *(a2 + 4), *(a2 + 6), *(a2 + 8), a3, v6, a5);
}

uint64_t BlueFin::GlGpsTime::GlGpsTime(uint64_t this, int a2, int8x16_t a3, int8x16_t a4)
{
  *this = &off_2A1F0B5F0;
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
  *(this + 12) = *a3.i64 + 604800 * a2;
  *this = &off_2A1F0B5F0;
  return this;
}

{
  *this = &off_2A1F0B5F0;
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
  *(this + 12) = *a3.i64 + 604800 * a2;
  *this = &off_2A1F0B5F0;
  return this;
}

uint64_t BlueFin::GlPeIntegers::IntegerQAAnalysis(uint64_t a1, int a2, double *a3, int a4, int a5, double *a6, _BYTE *a7, BlueFin::GlSetBase *this, double a9, double a10, unsigned __int8 a11, char a12, char a13)
{
  v23 = BlueFin::GlSetBase::Cnt(this);
  if (v23 > 2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  if (a9 >= 500.0)
  {
    v24 = 0;
  }

  if (a9 >= 149896.229)
  {
    *a7 = 1;
  }

  v25 = a3[2];
  if (v25 < -999.0)
  {
    goto LABEL_29;
  }

  if (v23 < 6 && v25 > 159999.0)
  {
    goto LABEL_29;
  }

  if (a4 == 4)
  {
    v27 = a5;
  }

  else
  {
    v27 = 1;
  }

  if (v23 > 4)
  {
    v27 = 1;
  }

  if ((v27 & v24) != 1)
  {
    goto LABEL_29;
  }

  if (v23 >= 5)
  {
    if (a9 < 500.0)
    {
      goto LABEL_46;
    }

LABEL_29:
    v30 = 0;
    goto LABEL_30;
  }

  if ((a4 | 2) != 3)
  {
LABEL_46:
    v30 = 1;
    goto LABEL_30;
  }

  BlueFin::lla2ned(a3, a6, 0, &v50);
  v28 = sqrt(*v51 * *v51 + v50 * v50) * 0.001;
  v29 = 100.0;
  if (a13 < 4)
  {
    v29 = 50.0;
  }

  v30 = v28 <= v29;
  if (v28 <= v29 && (a12 & 1) == 0)
  {
    if (fabs(a10) > 90.0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_30:
  if (a4 != 1)
  {
    *a7 = 1;
  }

  if (v23 < 6)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 == 1)
  {
    if (*a7 == 1)
    {
      v30 = a11;
      v50 = COERCE_DOUBLE(&v51[4]);
      v51[0] = 19;
      *&v51[4] = 0u;
      v52 = 0u;
      v53 = 0u;
      memset(v54, 0, sizeof(v54));
      v47 = v49;
      v48 = 19;
      memset(v49, 0, sizeof(v49));
      v42 = *(this + 8);
      memcpy(v46, *this, 4 * v42);
      v44 = 0;
      v43 = 0;
      v45 = v46[0];
      BlueFin::GlSetIterator::operator++(&v42);
      if (v43 != v42)
      {
        while (1)
        {
          v32 = v44;
          if (v44 >= 0x23FuLL)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          v33 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v44;
          v34 = *v33;
          LODWORD(v33) = v33[1];
          v39[0] = v34;
          v40 = v33;
          v41 = v44;
          v35 = (v44 >> 3) & 0x1FFC;
          *(*&v50 + v35) |= 1 << v44;
          v36 = *(a1 + 8);
          if ((*(*(v36 + 8) + v35) >> (v32 & 0x1F)))
          {
            PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v36, v39, 0);
            if (BlueFin::stPeSigMeasKF::IsPRValid(PeMeas))
            {
              *&v47[4 * (v41 >> 5)] |= 1 << v41;
              if (PeMeas[52] < 0)
              {
                break;
              }
            }
          }

          BlueFin::GlSetIterator::operator++(&v42);
          if (v43 == v42)
          {
            return v30;
          }
        }

        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return v30;
}

uint64_t BlueFin::GlPeCommonReqParms::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v13 = *MEMORY[0x29EDCA608];
  if ((v3 & 0xFFFFFFFD) != 0)
  {
    DeviceFaultNotify("glpe_kf.cpp", 80, "SerializeImpl", "ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 80, "ucVersion == 2");
  }

  v4 = v2;
  v5 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 29;
    v10 = 2;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = 2;
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v5 + 10));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v5 + 12));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeCommonReqParms::Deserialize(BlueFin::GlPeCommonReqParms *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 29)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 4) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU16(a2);
  v6 = v3 != 1 && BlueFin::GlSysLogEntry::GetU16(a2) != 0;
  *(this + 12) = v6;
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glpe_kf.cpp", 127, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 127, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlPePrRrResidualData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v16 = *MEMORY[0x29EDCA608];
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
    DeviceFaultNotify("glpe_kf.cpp", 205, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 205, "ucVersion == 1");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v12 = 100;
    v13 = v4;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F092C0;
    v15 = v4;
    BlueFin::GlSysLogEntry::PutD64(&v11, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutU8(&v11, *(v6 + 16));
    if (*(v6 + 16))
    {
      v7 = 0;
      v8 = (v6 + 48);
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v11, *(v8 - 20));
        BlueFin::GlSysLogEntry::PutU8(&v11, *(v8 - 24));
        BlueFin::GlSysLogEntry::PutD64(&v11, *(v8 - 1));
        BlueFin::GlSysLogEntry::PutD64(&v11, *v8);
        ++v7;
        v8 += 4;
      }

      while (v7 < *(v6 + 16));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v5, 4);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPePrRrResidualData::Deserialize(BlueFin::GlPePrRrResidualData *this, BlueFin::GlSysLogEntry *a2)
{
  v3 = *(a2 + 2) == 100 && *(a2 + 12) == 1;
  result = v3;
  if (v3)
  {
    v13 = result;
    *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 16) = U8;
    if (U8)
    {
      v7 = 0;
      v8 = (this + 48);
      do
      {
        v9 = BlueFin::GlSysLogEntry::GetU8(a2);
        v10 = BlueFin::GlSysLogEntry::GetU8(a2);
        if ((v10 - 189) >= 0xFFFFFF44)
        {
          v12 = BlueFin::GlSvId::s_aucSvId2gnss[v10];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v9 - v9 + v12] == 255)
          {
            v11 = 575;
            v9 = -1;
          }

          else
          {
            v11 = BlueFin::GlSignalId::s_ausGnss2signalId[v12] + v10 - BlueFin::GlSvId::s_aucGnss2minSvId[v12] + BlueFin::GlSvId::s_aucGnss2numSvId[v12] * v9;
          }
        }

        else
        {
          v11 = 575;
        }

        *(v8 - 24) = v10;
        *(v8 - 5) = v9;
        *(v8 - 8) = v11;
        *(v8 - 1) = BlueFin::GlSysLogEntry::GetD64(a2);
        *v8 = BlueFin::GlSysLogEntry::GetD64(a2);
        v8 += 4;
        ++v7;
      }

      while (v7 < *(this + 16));
    }

    BlueFin::GlSysLogEntry::CheckConsumed(a2, 245);
    return v13;
  }

  return result;
}

uint64_t BlueFin::GlPeKF::RunSysRangeDivergenceDetection(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = (result + 61008);
  if ((*(result + 61969) & 1) == 0)
  {
    v8 = result;
    BlueFin::GlSetBase::GlSetBase(v11, v12, 0x13u, (*v4 + 184));
    v9 = *a2;
    v10 = *(a2 + 16);
    result = BlueFin::GlPeNavUtil::RunBdsDivergenceDetection(v8 + 17184, v11, &v9, a3, a4, 150.0);
    if (result)
    {
      v4[961] = 1;
      return GlCustomLog(14, "Range divergence detected \n");
    }
  }

  return result;
}

void BlueFin::GlPeKF::IntegerQA(uint64_t a1, double *a2, double *a3, const void **a4, int a5, int a6, double a7, double a8, double a9)
{
  v17 = a1 + 57432;
  v18 = (a1 + 14528);
  v19 = *(a1 + 60976);
  v20 = *(v19 + 2);
  v21 = *(v19 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  if (a5)
  {
    v22 = sqrt(*a3 * *a3 + a3[1] * a3[1]);
    if ((*(*(v17 + 3568) + 120021) & 1) == 0)
    {
      v24 = (*(a1 + 768) - *(a1 + 280));
    }

    v25 = *(a1 + 1110);
    v26 = *(a1 + 1738);
    v27 = *(*v17 + 1989);
    *v39 = *(a1 + 178);
    v23 = BlueFin::GlPeNavGnssMeasMgr::DopplerResidualCheck();
  }

  else
  {
    v23 = 0;
  }

  v28 = *(a1 + 264);
  v29 = v18[2244];
  v46 = *(a1 + 192);
  v47 = *(a1 + 208);
  BlueFin::GlSetBase::GlSetBase(&v40, v45, 0x13u, a4);
  v30 = BlueFin::GlPeIntegers::IntegerQAAnalysis(v18, a6, a2, v28, v29, &v46, (a1 + 1086), &v40, a9, a8, v23, *(a1 + 1096), *(v17 + 4028));
  if (v30)
  {
    bzero(*(a1 + 408), ((4 * *(a1 + 416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(a1 + 312), ((4 * *(a1 + 320) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v31 = 1;
    *v18 = 1;
    *(a1 + 1084) = 0;
    *(a1 + 1152) = 0;
    bzero(*(a1 + 1160), ((4 * *(a1 + 1168) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *(a1 + 1086) = 0;
    v18[2244] = 0;
  }

  else
  {
    *v18 = 0;
    BlueFin::GlPeMsmtMgr::Init_IntPr(*(v17 + 3576));
    BlueFin::GlPeKF::resetDtsIfGood(a1, v32, v33);
    ++*(a1 + 1152);
    v34 = a1 + 17184 + *(*(a1 + 17184) - 24);
    v40 = *(v34 + 272);
    memcpy(&v44, *(v34 + 264), 4 * v40);
    v42 = 0;
    v41 = 0;
    v43 = v44;
    BlueFin::GlSetIterator::operator++(&v40);
    while (v41 != v40)
    {
      if (v42 >= 0x23Fu)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      *(*(a1 + 1160) + ((v42 >> 3) & 0x1FFC)) |= 1 << v42;
      BlueFin::GlSetIterator::operator++(&v40);
    }

    v35 = ++*(a1 + 1084);
    v31 = v35 < 5;
  }

  v36 = *(a1 + 264);
  if (v36 == 1)
  {
    if (*(*(v17 + 3504) + 24) == 1 && (v30 & v31 & 1) == 0)
    {
      *(a1 + 1088) = 1;
      *(a1 + 1086) = 1;
    }
  }

  else
  {
    if (v36 == 3)
    {
      v37 = v30;
    }

    else
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      *(a1 + 1088) = 1;
    }
  }

  v38 = *(a1 + 1089);
  if (v30 != v38)
  {
    *(a1 + 1089) = v30 | v38 ^ 1;
  }
}

int8x16_t *BlueFin::GlPeKF::ClearInitPos(int8x16_t *this, int a2, double a3, int8x16_t a4)
{
  this[5].i64[0] = 0;
  this[5].i64[1] = 0;
  this[6].i64[0] = 0;
  this[6].i32[2] = 1161527296;
  this[9].i32[2] = 0;
  this[3].i64[0] = 0;
  this[3].i64[1] = 0;
  this[2].i64[1] = 0;
  this[4].i32[0] = 1120403456;
  this[67].i8[14] = 0;
  this[68].i8[10] = 0;
  this[68].i8[2] = 0;
  this[12].i64[1] = 0;
  this[13].i64[0] = 0;
  this[12].i64[0] = 0;
  this[13].i32[2] = 1161527296;
  v4 = this[7];
  this[14] = v4;
  this[15].i64[0] = this[8].i64[0];
  this[16].i64[0] = this[9].i64[0];
  this[16].i32[2] = 0;
  this[16].i32[3] = this[9].i32[3];
  if (a2)
  {
    v5 = this;
    v6 = this[3809].i64[1];
    v4.i64[0] = 0xFFFFFFFF00000000;
    *(v6 + 40) = 0xFFFFFFFF00000000;
    *(v6 + 136) = 0;
    *(v6 + 184) = 0xFFFFFFFF00000000;
    *(v6 + 280) = 0;
    v7 = this[3811].i64[1];
    if (*(v7 + 19352) <= 2)
    {
      *(v7 + 19352) = 3;
    }

    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        BlueFin::GlPeInitKFPosEvent::SerializeImpl();
      }
    }

    return BlueFin::GlPeKF::InitializeKF(v5, v4, a4);
  }

  return this;
}

uint64_t BlueFin::GlPeKF::SetSensorsConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_kf.cpp", 2564, "SetSensorsConfig", "pSensorsConfig != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 2564, "pSensorsConfig != nullptr");
  }

  v4 = a1 + 60936;
  v5 = *(a1 + 61948);
  if (v5 != 1)
  {
    if (v5 || *(a1 + 2316) == 2)
    {
      v6 = *(a2 + 7);
      if (*(a2 + 7))
      {
        if ((*(*(*v4 + 160) + 2) & 1) == 0)
        {
          goto LABEL_11;
        }

        v6 = 1;
      }

      *(a1 + 2316) = v6;
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    *(a1 + 61948) = v7;
  }

LABEL_11:
  v8 = *(a1 + 2848);
  if (v8)
  {
    if (v8 == 1)
    {
      *(a2 + 16) = 257;
      *(a2 + 4) = 257;
      *(a1 + 183) = 1;
      goto LABEL_14;
    }

    v9 = *(a2 + 4);
    if (*(a2 + 5))
    {
      *(a1 + 183) = 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (*(a2 + 4))
    {
LABEL_14:
      *(a1 + 182) = 1;
LABEL_15:
      *(a1 + 184) = 1;
    }
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 4) = 0;
  }

  if (*(a1 + 2316) > 1u)
  {
    v10 = *(*(*v4 + 160) + 2) & 1;
  }

  (*(*(a1 + 17184) + 368))();
  if (*(a2 + 20) == 1)
  {
    *(a1 + 185) = 1;
  }

  if (*(a2 + 19) == 1)
  {
    *(a1 + 189) = 1;
  }

  v11 = *(a1 + 3112);
  if (v11 <= 1)
  {
    *(a2 + 8) = v11;
  }

  return 1;
}

uint64_t BlueFin::GlPeInitKFPosEvent::Deserialize(BlueFin::GlPeInitKFPosEvent *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 60 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 2823);
  }

  return v3;
}

uint64_t BlueFin::GlPeInitKFPosEvent::SerializeImpl()
{
  MEMORY[0x2A1C7C4A8]();
  v9 = *MEMORY[0x29EDCA608];
  if (v1 >= 2)
  {
    DeviceFaultNotify("glpe_kf.cpp", 2836, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 2836, "ucVersion == 1");
  }

  if (v0 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v5 = 60;
    v6 = 1;
    v7 = 0x1000000000000;
    v4 = &unk_2A1F092C0;
    v8 = 1;
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v4, v0, 4);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeKF::PosManagerDN(BlueFin::GlPeKF *this)
{
  v2 = (this + 60952);
  v3 = *(this + 7625);
  if ((*(v3 + 119952) & 1) == 0)
  {
    v17 = *(v3 + 7368);
    (*(*v17 + 304))(&__src, v17);
    v26[0] = v25;
    memcpy(&v27, __src, 4 * v25);
    *&v26[2] = 0;
    v26[1] = 0;
    *&v26[4] = v27;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(v26);
      if (v26[1] == v26[0])
      {
        break;
      }

      LOBYTE(__src) = v26[2];
      if (((*(*v17 + 88))(v17, &__src) & 0xFFFFFFFE) == 2)
      {
        v4 = 1;
        goto LABEL_3;
      }
    }
  }

  v4 = 0;
LABEL_3:
  v5 = *(*v2 + 44);
  *(this + 16772) = 1;
  v26[0] = 0;
  LOBYTE(__src) = 0;
  BlueFin::GlPeNavGnssMeasMgr::CheckMissingBits(this + 14560, 1, v26, &__src);
  v7 = v26[0] > 2 || __src > 4;
  BlueFin::GlPeMsmtMgr::Init_IntPr(v2[7]);
  v8.n128_f32[0] = BlueFin::GlPeKF::GetRxm(this);
  result = 0;
  if (v5 == -1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  if (*(v2[7] + 18800) == 1 && ((v7 | v10) & 1) != 0)
  {
    result = BlueFin::GlPeDnavMgr::Run(this + 13776, v8);
    if (result)
    {
      v13 = *(this + 1812);
      if (v5 == -1 && (*(v13 + 268) & 0x20) != 0 && *(v13 + 24) < 0x186A1u)
      {
        BlueFin::GlPeKF::SetAsstPosFromDNav(this, *(this + 1812), v11, v12);
        v18 = *(v13 + 56);
        v19 = *(v13 + 64) * 3.33564095 * 0.000000001;
        v20 = *(v2[3] + 10) * 0.000000001;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
        }

        if (v20 * 1000000000.0 > 97.0 && v20 > v19)
        {
          v22 = vaddvq_f64(vmulq_f64(*(v13 + 40), *(v13 + 40)));
          if (v22 < 625.0)
          {
            v23 = v18 * 3.33564095 * 0.000000001;
            if (fabs(v23) < 0.00001)
            {
              BlueFin::GlPeOscMgr::SetOscOff(v2[3], v23, 0.000000098, 0);
            }
          }
        }
      }

      if (v4 && (*(v13 + 268) & 0x20) != 0)
      {
        BlueFin::GlPeAsstMgr::SetCoarseEstimatedPosition(v2[6], v13, *(v13 + 24));
      }

      result = 0;
      if (v7 && (*(v13 + 268) & 0x20) != 0 && *(v13 + 24) < 0x186A1u)
      {
        *(this + 51) = *v13;
        *(this + 104) = *(v13 + 16);
        BlueFin::GlPeTimeManager::GetTime(v2[2], *(v13 + 272), 1, v26);
        __src = &off_2A1F0B5F0;
        v25 = 0;
        BlueFin::GlPeGnssTime::GetGps(v26, &__src);
        *(this + 110) = v25;
        v14 = *(v13 + 24);
        *(this + 210) = v14;
        *(this + 222) = 4;
        BlueFin::GlPeAsstMgr::SetCoarseEstimatedPosition(v2[6], v13, v14);
        v15 = vaddvq_f64(vmulq_f64(*(v13 + 40), *(v13 + 40)));
        v16.i64[0] = 25.0;
        if (v15 < 25.0 || BlueFin::GlSetBase::Cnt((v13 + 72)) >= 4)
        {
          BlueFin::GlPeKF::SetAsstPosFromDNav(this, v13, v15, v16);
        }

        if (*(this + 16772) == 1 && BlueFin::GlSetBase::Cnt((v13 + 72)) >= 3)
        {
          *(this + 16772) = 0;
          *v26 = v28;
          LOBYTE(v27) = 19;
          memset(v28, 0, sizeof(v28));
          BlueFin::GlPeNavGnssMeasMgr::RenewMeas((this + 14560), v26, 1, &__src);
        }

        (*(*(this + 2148) + 24))(this + 17184, 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeKF::GetDynamicAccyMask(BlueFin::GlPeKF *this, int a2, unsigned int a3, int a4)
{
  if (*(this + 1110))
  {
    v5 = 50;
  }

  else
  {
    v5 = 100;
  }

  if (*(this + 402) <= 1500)
  {
    v6 = v5;
  }

  else
  {
    v6 = 400;
  }

  if (a4)
  {
    v8 = *(this + 7078);
    if (!*v8)
    {
      v16 = *(this + 56632);
      if (v16 < 2)
      {
LABEL_24:
        if (*(this + 57208))
        {
          v6 = 400;
        }

        else if (BlueFin::GlPeKF::IsVdrValid(this))
        {
          v6 = 50;
        }

        else
        {
          v20 = *(this + 2148);
          v21 = *(this + *(v20 - 24) + 17360);
            ;
          }

            ;
          }

          if (fabs(i) <= 0.0872664626)
          {
            v6 = 50;
          }

          else
          {
            v6 = 30;
          }
        }
      }

      else
      {
        v17 = v16 - 1;
        v18 = v8 + 1;
        while (!*v18++)
        {
          if (!--v17)
          {
            goto LABEL_24;
          }
        }
      }
    }

    if (*(this + 90) > a2 && *(this + 60665) == 1)
    {
      v9 = this + *(*(this + 2148) - 24) + 17184;
      v32 = *(v9 + 8);
      v33 = *(v9 + 3);
      if ((BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(this + 3424, &__src, &v32) & 1) == 0)
      {
        return *(this + 90);
      }
    }
  }

  else
  {
    BlueFin::GlSetBase::GlSetBase(&__src, v26, 0x13u, (this + *(*(this + 2148) - 24) + 17448));
    LOBYTE(v32) = v25;
    memcpy(&v32 + 8, __src, 4 * v25);
    WORD1(v32) = 0;
    BYTE1(v32) = 0;
    DWORD1(v32) = DWORD2(v32);
    BlueFin::GlSetIterator::operator++(&v32);
    if (BYTE1(v32) != v32)
    {
      while (1)
      {
        if (WORD1(v32) >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v12 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v32);
        v13 = *v12;
        LODWORD(v12) = v12[1];
        v29[0] = v13;
        v30 = v12;
        v31 = WORD1(v32);
        v14 = *(this + 7625);
        v27 = 7;
        v28[0] = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss((v14 + 119744), v29, &v27, v10, v11);
        if (v27 <= 6 && v28[0] - 1 <= 0x3E)
        {
          Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 7625) + 384), v27);
          if (Mgr)
          {
            break;
          }
        }

        BlueFin::GlSetIterator::operator++(&v32);
        if (BYTE1(v32) == v32)
        {
          return v6;
        }
      }

      (*(*Mgr + 80))(Mgr, v28);
    }
  }

  return v6;
}

uint64_t BlueFin::GlPeKF::GetDataForLowPowerDecision(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 57344;
  v5 = *(*(a1 + 57432) + 8);
  *a2 = (v5 - 1) < 2;
  *(a2 + 1) = (v5 - 3) < 3;
  *(a2 + 2) = BlueFin::GlPeKF::IsVdrValid(a1);
  v6 = *(v4 + 3624);
  v7 = *(v6 + 2744);
  v8 = *(v6 + 2576);
  if (v8)
  {
    v9 = v7 | (1 << v8);
  }

  else
  {
    v9 = v7;
  }

  *(a2 + 3) = (v9 & 0x10) != 0;
  *(a2 + 4) = *(v4 + 3364);
  *(a2 + 5) = (**(*(v4 + 3592) + 160) & 0x20) != 0;
  *(a2 + 6) = 0;
  v10 = *(v4 + 88);
  *(a2 + 12) = *(v10 + 1988);
  v11 = *(v4 + 3664);
  v26 = *(v11 + 192);
  memcpy(v30, *(v11 + 184), 4 * v26);
  v28 = 0;
  v27 = 0;
  v29 = v30[0];
  BlueFin::GlSetIterator::operator++(&v26);
  if (v27 == v26)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      if (v28 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v28;
      v15 = *v14;
      LODWORD(v14) = v14[1];
      v23[0] = v15;
      v24 = v14;
      v25 = v28;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v4 + 3664), v23, 0, 0);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v4 + 3664), v23, 0);
      if (BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas) && (*(PeMeas + 96) & 8) != 0 && *(MeMeas + 5) <= 2 && *(MeMeas + 29) >= 28.0)
      {
        ++v13;
      }

      BlueFin::GlSetIterator::operator++(&v26);
    }

    while (v27 != v26);
    v12 = v13 > 6;
    v10 = *(v4 + 88);
  }

  *(a2 + 7) = v12;
  v18 = *(v10 + 16);
  if (v18 != 1)
  {
    LOBYTE(v18) = *((*(*(a1 + 17184) + 168))() + 8) <= 5.0;
  }

  *(a2 + 8) = v18;
  v19 = a1 + 17184;
  v20 = *(a1 + 17184);
  *(a2 + 10) = *(a1 + 17184 + *(v20 - 24) + 241);
  *(a2 + 11) = *(a1 + 17184 + *(v20 - 24) + 240);
  v21 = BlueFin::GlPeKF::IsGood4Nav(a1) || *(v19 + *(v20 - 24) + 80) < 50.0;
  *(a2 + 9) = v21;
  *(a2 + 16) = *(v19 + *(v20 - 24) + 176) * 57.2957795;
  *(a2 + 24) = sqrt(*(v19 + *(v20 - 24) + 112) * *(v19 + *(v20 - 24) + 112) + *(v19 + *(v20 - 24) + 104) * *(v19 + *(v20 - 24) + 104));
  *(a2 + 32) = (*(v20 + 80))(a1 + 17184);
  result = BlueFin::GlSetBase::Cnt((v19 + *(*(a1 + 17184) - 24) + 264));
  *(a2 + 36) = result;
  *(a2 + 37) = *(a1 + 1519);
  *(a2 + 40) = 0;
  return result;
}

BOOL BlueFin::GlPeKF::SetAsstPosFromDNav(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  v4 = *(a2 + 24);
  v15 = *a2;
  v16 = *(a2 + 16);
  v5 = 20000.0;
  v6 = 90000.0;
  if ((*(a2 + 268) & 2) != 0)
  {
    v7 = *(a1 + 60936);
    if (*(v7 + 796) == 1)
    {
      v8 = *(v7 + 800) - 120;
      v9 = 25 * v8;
      if (25 * v8 <= 90000)
      {
        v9 = 90000;
      }

      v10 = 5 * v8;
      if (v10 <= v9)
      {
        v10 = v9;
      }

      v6 = v9;
      v5 = (v10 + 2000);
    }
  }

  v17 = v6 + v4;
  v18 = v5;
  v11 = *(a1 + 60952);
  v12 = *(a2 + 272);
  v13 = v12;
  if (v12 <= 0xFF9222FE)
  {
    v13 = v12;
  }

  v19 = 2;
  v20 = v13;
  v21 = &off_2A1F0B5F0;
  v22 = 0;
  *a4.i64 = v12;
  return BlueFin::GlPeAsstPosMgr::processAssistance(v11, &v15, 0, 1, &v19, 0, 0, v13, a4);
}

uint64_t BlueFin::GlPeKF::UpdateDeltaL5BiasM(BlueFin::GlPeKF *this, float a2)
{
  v4 = this + 57344;
  v5 = *(this + 7617);
  v6 = v5[247];
  (*(*v5 + 264))(v5);
  v7 = *(v4 + 464);
  v8 = (a2 - v6) + *(v7 + 20);
  *(v7 + 20) = v8;
  *(v7 + 32) = v8;
  *(v7 + 44) = v8;
  *(v7 + 60) = (a2 - v6) + *(v7 + 60);
  *(v7 + 128) = 0;
  *(v7 + 136) = 1077936128;
  v9 = *(*(this + 2148) + 360);

  return v9(this + 17184);
}

uint64_t BlueFin::GlPeKF::UpdateL5BiasM(BlueFin::GlPeKF *this, float a2)
{
  v4 = this + 57344;
  v5 = *(this + 7617);
  v6 = v5[247];
  (*(*v5 + 264))(v5);
  v7 = *(v4 + 464);
  v8 = (a2 - v6) + *(v7 + 20);
  *(v7 + 20) = v8;
  *(v7 + 32) = v8;
  *(v7 + 44) = v8;
  *(v7 + 60) = (a2 - v6) + *(v7 + 60);
  *(v7 + 128) = 0;
  *(v7 + 136) = 1077936128;
  v9 = *(*(this + 2148) + 360);

  return v9(this + 17184);
}

BOOL BlueFin::GlPeKF::IsLowPowerPowerModeReady(BlueFin::GlPeKF *this)
{
  v1 = (this + 57432);
  if (*(*(this + 7631) + 32) != 1)
  {
    return 0;
  }

  v3 = *(this + 7621);
  if (*(v3 + 2576))
  {
    v4 = *(v3 + 2580) == 5;
  }

  else
  {
    v4 = 0;
  }

  v6 = this + 17184;
  v7 = BlueFin::GlSignalIdSet::CntPrimarySignalSvIdSet((this + *(*(this + 2148) - 24) + 17448), 8);
  v8 = *(*(v1 + 438) + 48);
  if ((v8 - 4) < 5 || v8 == 2)
  {
    v24 = *v1;
    v23 = *(*v1 + 16) != 1;
  }

  else
  {
    v23 = 0;
    v24 = *v1;
  }

  v10 = v1[874];
  v26 = 0.0;
  v27 = 0.0;
  BlueFin::GlPeEnvironmentMonitor::GetEnvironmentGNSSSignalStr(v24 + 64, &v27, &v26);
  if (v23)
  {
    if (*(*(v1 + 446) + 120012) == 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & v4 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v7 & v4) != 1)
  {
    goto LABEL_22;
  }

  v11.n128_f32[0] = (*(*&v6[*(*v6 - 24)] + 16))(&v6[*(*v6 - 24)]);
  LODWORD(v13) = 1120403456;
  if (v11.n128_f32[0] <= 100.0)
  {
    v11.n128_f64[0] = v27;
    LOBYTE(v13) = *(*(v1 + 438) + 26224);
    if (v27 >= v13 && *(*v1 + 8) != 10 && *(*v1 + 16) != 3 && v10 >= 0x1F)
    {
      ++*(this + 15412);
      GlCustomLog(14, "LowPower ok\n", v11.n128_f64[0]);
      return *(this + 15412) > 5u;
    }
  }

LABEL_22:
  v14 = &v6[*(*(this + 2148) - 24)];
  (*(*v14 + 16))(v14, v11);
  LOBYTE(v16) = *(*(v1 + 438) + 26224);
  v17 = v16;
  v18 = 84;
  if (*(*v1 + 8) == 10)
  {
    v19 = 70;
  }

  else
  {
    v19 = 84;
  }

  v25 = v19;
  if (v15 > 100.0)
  {
    v20 = 70;
  }

  else
  {
    v20 = 84;
  }

  if (v4)
  {
    v21 = 84;
  }

  else
  {
    v21 = 70;
  }

  if (v7)
  {
    v22 = 84;
  }

  else
  {
    v22 = 70;
  }

  if (v27 < v17)
  {
    v18 = 70;
  }

  GlCustomLog(14, "LowPower NOT Ready %c %c %c %c %c \n", v22, v21, v20, v18, v25);
  result = 0;
  *(this + 15412) = 0;
  return result;
}

uint64_t BlueFin::GlPeKF::NeedToExitPowerSave(BlueFin::GlPeKF *this)
{
  v2 = (this + 57432);
  BlueFin::GlSetBase::GlSetBase(v28, v29, 0x13u, (this + *(*(this + 2148) - 24) + 17448));
  v3 = BlueFin::GlSignalIdSet::CntPrimarySignalSvIdSet(v28, 6);
  v27 = 0.0;
  v4 = *v2;
  BlueFin::GlPeEnvironmentMonitor::GetEnvironmentGNSSSignalStr(*v2 + 64, &v27, &v26);
  v6 = v2[438];
  v7 = *(v6 + 48);
  v22 = ((v7 - 4) < 5 || v7 == 2) && *(v4 + 16) != 1;
  v9 = v2[447];
  v10 = *(v9 + 8);
  if (!*v10)
  {
    v12 = *(v9 + 16);
    if (v12 < 2)
    {
      return 0;
    }

    v13 = v12 - 1;
    v14 = v10 + 1;
    while (!*v14++)
    {
      if (!--v13)
      {
        return 0;
      }
    }
  }

  if (v3)
  {
    LOBYTE(v5) = *(v6 + 26224);
    if (v27 >= v5 && *(v4 + 16) != 3 && (!v22 || *(v2[446] + 120012) == 1))
    {
      return 0;
    }

    v11 = 70;
  }

  else
  {
    v11 = 84;
  }

  BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet(v28, &v24);
  v17 = 0;
  v18 = (v24 + 4 * v25 - 4);
  do
  {
    if (*v18)
    {
      v19 = *v18 - (((*v18 >> 1) & 0x5B6DB6DB) + ((*v18 >> 2) & 0x9249249));
      v17 = ((v19 + (v19 >> 3)) & 0xC71C71C7) + v17 - 63 * (((v19 + (v19 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v18;
  }

  while (v18 >= v24);
  LOBYTE(v16) = *(v2[438] + 26224);
  v23 = v17;
  v20 = 70;
  if (v27 < v16)
  {
    v20 = 84;
  }

  GlCustomLog(14, "LowPower Exit, NotEnoughSats:%c, SvIdCnt:%d,SigStrength:%c %.1f\n", v11, v23, v20, v27);
  *(this + 15412) = 0;
  return 1;
}

uint64_t _GLOBAL__sub_I_glpe_kfaltasst_cpp()
{
  dword_2A18BACF0 = 419;
  qword_2A18BACF8 = &BlueFin::GlPeCityFine::m_aotRegions;
  dword_2A18BAD00 = 102;
  qword_2A18BAD08 = &BlueFin::GlPeCityFine::m_aotIndex;
  dword_2A18BAD10 = -39;
  BlueFin::GlPeKFAltAsst::m_otCityFine = &unk_2A1F12398;
  return __cxa_atexit(BlueFin::GlPeCityFine::~GlPeCityFine, &BlueFin::GlPeKFAltAsst::m_otCityFine, &dword_29879A000);
}

BOOL BlueFin::GlPeLsq::PackSkfMeas_RR_SignalId(unsigned int **a1, uint64_t a2, BlueFin::GlSignalId *a3)
{
  v4 = *a1;
  v5 = (1 << (*(a3 + 4) & 0x1F)) & *(*(v4 + 8) + 4 * (*(a3 + 4) >> 5));
  if (v5)
  {
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v4, a3, 0, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
    *(a2 + 49) = 0;
    *(a2 + 36) = -1;
    *(a2 + 40) = 575;
    *(a2 + 44) = 2;
    *(a2 + 16) = **a1;
    if ((a2 + 32) != a3)
    {
      *(a2 + 32) = *a3;
      *(a2 + 36) = *(a3 + 1);
      *(a2 + 40) = *(a3 + 4);
    }

    v9.f32[0] = -*(MeMeas + 26);
    v9.i32[1] = *(MeMeas + 27);
    *a2 = vmulq_f64(vcvtq_f64_f32(v9), vdupq_n_s64(0x41B1DE784A000000uLL));
    *(a2 + 48) = 1;
    *(a2 + 24) = -1;
  }

  return v5 != 0;
}

uint64_t BlueFin::GlPeLsq::rr2Vel()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v189[5] = *MEMORY[0x29EDCA608];
  if (!v2)
  {
    v114 = "pastMeasIn";
    DeviceFaultNotify("glpe_lsq.cpp", 1450, "rr2Vel", "pastMeasIn");
    v115 = 1450;
    goto LABEL_119;
  }

  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = v1;
  v11 = v0;
  if ((*(v1 + 26) & 8) != 0)
  {
    v12 = *v5;
    if (v12 >= 8)
    {
      LOBYTE(v12) = 8;
    }

    *v5 = v12;
  }

  v13 = *(v4 + 56);
  v14 = *(v1 + 20);
  *(v4 + 64) = v14;
  bzero((v13 + 8), 8 * v14);
  v15 = *v6;
  *(v7 + 888) = v15;
  bzero((*(v7 + 880) + 8), 8 * v15);
  if (*v6 < 2)
  {
    goto LABEL_15;
  }

  v176[1] = 0x400000004;
  memset(v177, 0, 32);
  v176[0] = v177;
  v16 = *(v10 + 6);
  if ((v16 & 0x200000) == 0)
  {
    *&v177[1] = *v7;
    v177[3] = *(v7 + 16);
  }

  v17 = *(v7 + 24);
  if ((v16 & 8) != 0)
  {
    v17 = 0.0;
  }

  *&v177[4] = v17;
  v18 = &v173 + 8;
  v173 = xmmword_298A43E90;
  v171 = &v174;
  v172 = &v175;
  v175 = 0;
  for (i = 1; i != 21; ++i)
  {
    v172[i] = v18;
    v18 += 32;
  }

  v167 = v169;
  *v168 = 0x1400000000;
  memset(v169, 0, sizeof(v169));
  v170 = 0;
  v163 = v165;
  *v164 = 0x1400000000;
  memset(v165, 0, sizeof(v165));
  v166 = 0;
  v160[0] = v161;
  v160[1] = 0x1400000000;
  memset(v161, 0, sizeof(v161));
  v162 = 0;
  v20 = v16 & 1 | 0x4C0;
  v21 = *v10;
  v22 = v10[1];
  v23 = *(v10 + 4);
  v151[0] = v176;
  v151[1] = v21;
  v151[2] = v22;
  v152 = v23;
  v153 = 2;
  v154 = v20;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0x4008000000000000;
  v147[0] = &v163;
  v147[1] = v160;
  v147[2] = &v171;
  v147[3] = &v167;
  v148 = 0u;
  v149 = 0u;
  v150 = 0;
  v144 = v146;
  v145 = 4;
  v146[1] = 0;
  v146[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v144, *v6);
  if (*v6 > v8)
  {
    v114 = "cNbRr <= lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 1496, "rr2Vel", "cNbRr <= lMeasInMaxNum");
    v115 = 1496;
    goto LABEL_119;
  }

  if ((*(**(v11 + 8) + 16))(*(v11 + 8), v151, v147, v9, &v144))
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v116 = v11;
  v140 = v143;
  memset(v143, 0, sizeof(v143));
  if (v164[0] >= *v6)
  {
    v26 = *v6;
  }

  else
  {
    v26 = v164[0];
  }

  v27 = *v6;
  v142 = 16;
  v141 = v26;
  v28 = &v143[1];
  bzero(&v143[1], 8 * v26);
  if (v26 >= 1)
  {
    v30 = (v26 + 1) - 1;
    v31 = (v160[0] + 8);
    v32 = (v163 + 8);
    do
    {
      v33 = *v32++;
      v34 = v33;
      v35 = *v31++;
      *v28++ = v34 - v35;
      --v30;
    }

    while (v30);
  }

  v36 = *(v10 + 20);
  v37 = v36 >= 1 && v36 < v27;
  if (v37)
  {
    v38 = 0;
    do
    {
      v39 = *&v143[v38 + 1];
      *&v178[v38++] = fabsf(v39);
    }

    while (v27 != v38);
    BlueFin::GlSortFloats(v178, v27, &v185, v29);
    *v6 = v36;
    BlueFin::SKFVectorDim<16>::SKFVectorDim(&v123, v36);
    if (*v6 >= 1)
    {
      v40 = 0;
      v41 = v163 + 8;
      v42 = v123 + 1;
      do
      {
        v42[v40] = *&v41[8 * *(&v185 + v40)];
        ++v40;
      }

      while (v40 < *v6);
    }

    BlueFin::SKFVectorDim<20>::SKFVectorDim(&v134, &v123);
    BlueFin::SKFVector::Clone(&v163, &v134);
    if (*v6 >= 1)
    {
      v43 = 0;
      v44 = v160[0] + 8;
      v45 = v123 + 1;
      do
      {
        v45[v43] = *(v44 + 8 * *(&v185 + v43));
        ++v43;
      }

      while (v43 < *v6);
    }

    BlueFin::SKFVectorDim<20>::SKFVectorDim(&v134, &v123);
    BlueFin::SKFVector::Clone(v160, &v134);
    if (*v6 >= 1)
    {
      v46 = 0;
      v47 = v140 + 1;
      v48 = v123 + 1;
      do
      {
        v48[v46] = v47[*(&v185 + v46)];
        ++v46;
      }

      while (v46 < *v6);
    }

    BlueFin::SKFVector::Clone(&v140, &v123);
    if (*v6 >= 1)
    {
      v49 = 0;
      v50 = v167 + 8;
      v51 = v123 + 1;
      do
      {
        v51[v49] = *&v50[8 * *(&v185 + v49)];
        ++v49;
      }

      while (v49 < *v6);
    }

    BlueFin::SKFVectorDim<20>::SKFVectorDim(&v134, &v123);
    BlueFin::SKFVector::Clone(&v167, &v134);
    v52 = &v130 + 8;
    v130 = xmmword_298A41E60;
    v128 = v131;
    v129 = &v132;
    v132 = 0;
    for (j = 1; j != 17; ++j)
    {
      v129[j] = v52;
      v52 += 32;
    }

    BlueFin::BigMatrix::Null(&v128, *v6, SDWORD1(v173));
    v54 = *v6;
    if (v54 >= 1)
    {
      v55 = DWORD1(v130);
      v56 = v172 + 1;
      v57 = v129;
      v58 = (DWORD1(v130) + 1) - 1;
      v59 = 1;
      do
      {
        if (v55 >= 1)
        {
          v60 = (v57[v59] + 8);
          v61 = (v56[*(&v185 + v59 - 1)] + 8);
          v62 = v58;
          do
          {
            v63 = *v61++;
            *v60++ = v63;
            --v62;
          }

          while (v62);
          LOBYTE(v54) = *v6;
        }

        v37 = v59++ < v54;
      }

      while (v37);
    }

    v64 = &v136 + 8;
    v136 = xmmword_298A43E90;
    v134 = v137;
    v135 = &v138;
    v138 = 0;
    for (k = 1; k != 21; ++k)
    {
      v135[k] = v64;
      v64 += 32;
    }

    BlueFin::BigMatrix::Clone(&v134, &v128);
    BlueFin::BigMatrix::Clone(&v171, &v134);
  }

  v66 = *(v10 + 6);
  if ((v66 & 0x200000) != 0)
  {
    BlueFin::GlPeLsq::AddPMeas(&v163, v160, &v167, &v171, 2, 0.0225);
    BlueFin::GlPeLsq::AddPMeas(&v163, v160, &v167, &v171, 1, 0.0225);
    v66 = *(v10 + 6);
  }

  if ((v66 & 8) == 0 && ((v66 & 4) != 0 || *v6 <= 4))
  {
    BlueFin::GlPeLsq::AddPMeas(&v163, v160, &v167, &v171, 3, 0.0225);
    v66 = *(v10 + 6);
  }

  if ((v66 & 0xA) == 2 && v173 <= 15)
  {
    BlueFin::GlPeLsq::AddPMeas(&v163, v160, &v167, &v171, 4, *(v7 + 32));
  }

  v68 = v168[0];
  v69 = &v136 + 8;
  v136 = xmmword_298A43EA0;
  v134 = v137;
  v135 = &v139;
  v139 = 0;
  for (m = 1; m != 21; ++m)
  {
    v135[m] = v69;
    v69 += 160;
  }

  BlueFin::BigMatrix::Clone(&v134, v68, v68);
  if (v68 >= 1)
  {
    v71 = v135;
    v72 = *(v10 + 6);
    LOWORD(v73) = 1;
    v74 = v167;
    do
    {
      v73 = v73;
      v75 = v71[v73];
      *(v75 + 8 * v73) = 0x3FF0000000000000;
      if ((v72 & 0x10) != 0)
      {
        *(v75 + 8 * v73) = 1.0 / *&v74[8 * v73];
      }

      LOWORD(v73) = v73 + 1;
    }

    while (v68 >= v73);
  }

  v76 = v173;
  v77 = DWORD1(v173);
  v78 = &v130 + 8;
  v130 = xmmword_298A43E90;
  v128 = v131;
  v129 = &v133;
  v133 = 0;
  for (n = 1; n != 21; ++n)
  {
    v129[n] = v78;
    v78 += 32;
  }

  BlueFin::BigMatrix::Clone(&v128, v76, v77);
  if (v76 >= 1)
  {
    v80 = v172;
    v81 = v129;
    for (ii = 1; ii <= v76; ++ii)
    {
      if (v77 >= 1)
      {
        v83 = (v81[ii] + 8);
        v84 = (v80[ii] + 8);
        v85 = (v77 + 1) - 1;
        do
        {
          v86 = *v84++;
          *v83++ = v86;
          --v85;
        }

        while (v85);
      }
    }
  }

  v87 = &v125 + 8;
  v125 = xmmword_298A43EB0;
  v123 = &v126;
  v124 = &v127;
  v127 = 0;
  for (jj = 1; jj != 5; ++jj)
  {
    v124[jj] = v87;
    v87 += 160;
  }

  BlueFin::BigMatrix::mult(&v123, 1, &v128, &v134);
  v89 = &v187 + 8;
  v187 = xmmword_298A41E80;
  v185 = &v188;
  v186 = v189;
  v189[0] = 0;
  for (kk = 1; kk != 5; ++kk)
  {
    v186[kk] = v89;
    v89 += 32;
  }

  BlueFin::BigMatrix::mult_sym(&v185, &v123, &v128);
  BlueFin::BigMatrix::Null(&v134, v164[0], 1);
  v91 = v164[0];
  if (v164[0] >= 1)
  {
    v92 = v163;
    v93 = v160[0];
    v94 = 1;
    v95 = v135;
    do
    {
      *(v95[v94] + 8) = *&v92[8 * v94] - *(v93 + 8 * v94);
      ++v94;
    }

    while (v91 >= v94);
  }

  v96 = 0;
  v120 = xmmword_298A43EC0;
  v118 = &v121;
  v119 = &v122;
  v122 = 0;
  do
  {
    v119[v96 + 1] = &v120 + v96 * 8 + 8;
    ++v96;
  }

  while (v96 != 4);
  BlueFin::BigMatrix::mult(&v118, &v123, &v134);
  v97 = 0;
  v98 = v119 + 1;
  do
  {
    *(&v182 + v97 * 8) = *(v98[v97] + 8);
    ++v97;
  }

  while (v97 != 4);
  v117 = 0.0;
  v99 = BlueFin::BigMatrix::cholsl(&v185, &v182, v179.f64, &v117, 0);
  result = 0;
  if (v99 && v117 >= 0.0001)
  {
    *v7 = vaddq_f64(v179, *v7);
    *(v7 + 16) = v180 + *(v7 + 16);
    if ((v10[3] & 8) == 0)
    {
      *(v7 + 24) = v181 + *(v7 + 24);
    }

    BlueFin::SKFVectorDim<100>::SKFVectorDim(v178, &v140);
    BlueFin::SKFVector::Clone((v7 + 56), v178);
    *(v7 + 1704) = *(v9 + 16);
    v100 = *(v10 + 6);
    if ((v100 & 0x80) != 0)
    {
      v182 = 0x3FF0000000000000uLL;
      v184 = 0;
      v183 = 0;
      v104 = BlueFin::BigMatrix::cholsl(&v185, &v182, v179.f64, 0, 0);
      v101 = v179.f64[0];
      v182 = xmmword_298A436E0;
      v184 = 0;
      v183 = 0;
      v105 = BlueFin::BigMatrix::cholsl(&v185, &v182, v179.f64, 0, 0);
      v182 = 0uLL;
      v183 = 0;
      v184 = 0x3FF0000000000000;
      if (!v104)
      {
        v101 = 400.0;
      }

      if (v105)
      {
        v102 = v179.f64[1];
      }

      else
      {
        v102 = 400.0;
      }

      v106 = BlueFin::BigMatrix::cholsl(&v185, &v182, v179.f64, 0, 0);
      v103 = v181;
      if (!v106)
      {
        v103 = 400.0;
      }

      v100 = *(v10 + 6);
    }

    else
    {
      v101 = 1000000.0;
      v102 = 1000000.0;
      v103 = 1000000.0;
    }

    *(v7 + 40) = v101;
    *(v7 + 48) = v102;
    *(v7 + 32) = v103;
    if ((v100 & 0x800) == 0)
    {
      *(v7 + 888) = 0;
      goto LABEL_108;
    }

    v107 = v176[0];
    *(v176[0] + 8) = *v7;
    *(v107 + 16) = *(v7 + 8);
    *(v107 + 24) = *(v7 + 16);
    v108 = *(v7 + 24);
    if ((v100 & 8) != 0)
    {
      v108 = 0.0;
    }

    *(v107 + 32) = v108;
    if (BlueFin::GlSetBase::Highest(&v144) < v8)
    {
      if ((*(**(v116 + 8) + 16))(*(v116 + 8), v151, v147, v9, &v144))
      {
        goto LABEL_15;
      }

      v109 = *(v7 + 888);
      if (v109 >= 1)
      {
        v110 = v163;
        v111 = v160[0];
        v112 = *(v7 + 880);
        v113 = 1;
        do
        {
          *(v112 + 8 * v113) = (*&v110[8 * v113] - *(v111 + 8 * v113)) * 100.0;
          ++v113;
        }

        while (v109 >= v113);
      }

LABEL_108:
      result = 1;
      goto LABEL_16;
    }

    v114 = "otMeasSet.Highest() < lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 1731, "rr2Vel", "otMeasSet.Highest() < lMeasInMaxNum");
    v115 = 1731;
LABEL_119:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", v115, v114);
  }

LABEL_16:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeLsq::AddPMeas(BlueFin::GlPeLsq *this, BlueFin::SKFVector *a2, BlueFin::SKFVector *a3, BlueFin::SKFVector *a4, BlueFin::BigMatrix *a5, double a6)
{
  if (*(this + 2) >= *(this + 3))
  {
    DeviceFaultNotify("glpe_lsq.cpp", 1766, "AddPMeas", "rotz.GetLen() < rotz.GetMaxLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 1766, "rotz.GetLen() < rotz.GetMaxLen()");
  }

  v6 = a5;
  BlueFin::SKFVector::AddLen(this);
  *(*this + 8 * *(this + 2)) = 0;
  BlueFin::SKFVector::AddLen(a2);
  *(*a2 + 8 * *(a2 + 2)) = 0;
  BlueFin::SKFVector::AddLen(a3);
  *(*a3 + 8 * *(a3 + 2)) = a6;
  BlueFin::BigMatrix::AddRow(a4);
  *(*(*(a4 + 1) + 8 * *(a4 + 4)) + 8 * v6) = 0x3FF0000000000000;
}

uint64_t BlueFin::GlPeLsq::LsVel()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v5 = v4;
  v6 = v0;
  v7 = 0;
  v73 = *MEMORY[0x29EDCA608];
  do
  {
    v8 = &v53[1] + v7 + 12;
    v8[32] = 0;
    *(v8 + 9) = -1;
    *(v8 + 20) = 575;
    v7 += 56;
  }

  while (v7 != 896);
  v42 = v1;
  v43 = v3;
  for (i = 0; i != 564; i += 3)
  {
    v10 = &v65[i];
    *v10 = 0;
    v10[1] = -1;
    *(v10 + 4) = 575;
  }

  v11 = *v0;
  BlueFin::GlSetBase::GlSetBase(&__src, v46, 0x13u, v2);
  v48 = &v50;
  LOBYTE(v49) = 19;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, 28);
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v48, v11 + 1);
  BlueFin::GlSetBase::operator=(&__src, &v48);
  v46[1] = v51;
  v46[2] = v52;
  *v47 = v53[0];
  *&v47[12] = *(v53 + 12);
  v46[0] = v50;
  LOBYTE(v48) = v45;
  memcpy(&v49, __src, 4 * v45);
  WORD1(v48) = 0;
  BYTE1(v48) = 0;
  HIDWORD(v48) = v49;
  BlueFin::GlSetIterator::operator++(&v48);
  v13 = 0;
  if (BYTE1(v48) != v48)
  {
    v13 = 0;
    while (1)
    {
      v14 = WORD1(v48);
      if (WORD1(v48) >= 0x23FuLL)
      {
        break;
      }

      v15 = *v6;
      v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v48);
      v17 = *v16;
      v18 = v16[1];
      LOBYTE(__src) = *v16;
      HIDWORD(__src) = v18;
      v45 = WORD1(v48);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v15, &__src, 0);
      if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas))
      {
        v20 = &v65[3 * v13];
        *v20 = v17;
        v20[1] = v18;
        *(v20 + 4) = v14;
        v21 = *v6;
        LOBYTE(__src) = v17;
        HIDWORD(__src) = v18;
        v45 = v14;
        *(&v62 + v13++) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v21, &__src, 0, 0) + 27);
      }

      BlueFin::GlSetIterator::operator++(&v48);
      if (BYTE1(v48) == v48)
      {
        goto LABEL_11;
      }
    }

    v39 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v40 = "glsignalid.h";
    v41 = 578;
LABEL_40:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v40, v41, v39);
  }

LABEL_11:
  v22 = v13;
  BlueFin::GlSortFloats(&v62, v22, v55, v12);
  if ((v13 & 0xF0) != 0)
  {
    v23 = 16;
  }

  else
  {
    v23 = v22;
  }

  if (v22)
  {
    v24 = 0;
    LOBYTE(v25) = 0;
    do
    {
      v26 = &v65[3 * *(v55 + v24)];
      LOBYTE(v48) = *v26;
      HIDWORD(v48) = v26[1];
      LOWORD(v49) = *(v26 + 4);
      if (BlueFin::GlPeLsq::PackSkfMeas_RR_SignalId(v6, &v53[1] + 56 * v25 + 12, &v48))
      {
        v25 = (v25 + 1);
        if (v25 >= v23)
        {
          break;
        }
      }

      ++v24;
    }

    while (v13 != v24);
    if (v25 < 3)
    {
      v22 = 0;
    }

    else
    {
      *(v43 + 1704) = **v6;
      if ((*(v42 + 26) & 2) != 0)
      {
        v27 = v6[4];
        if (!v27)
        {
          v39 = "m_pOscMgr";
          DeviceFaultNotify("glpe_lsq.cpp", 1800, "LsVel", "m_pOscMgr");
          v40 = "glpe_lsq.cpp";
          v41 = 1800;
          goto LABEL_40;
        }

        v28 = *(v27 + 1) * 0.000000001;
        v29 = *(v27 + 5) * 0.000000001;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
        }

        v30 = v29 * 299792458.0 * (v29 * 299792458.0);
        if (v5 > 0.0)
        {
          v30 = v5;
        }

        *(v43 + 24) = v28 * 299792458.0;
        *(v43 + 32) = v30;
      }

      *(v43 + 40) = vdupq_n_s64(0x4079000000000000uLL);
      *(v43 + 64) = 16;
      v31 = *(v43 + 56);
      *(v31 + 120) = 0u;
      *(v31 + 104) = 0u;
      *(v31 + 88) = 0u;
      *(v31 + 72) = 0u;
      *(v31 + 56) = 0u;
      *(v31 + 40) = 0u;
      *(v31 + 24) = 0u;
      *(v31 + 8) = 0u;
      v22 = BlueFin::GlPeLsq::rr2Vel();
      if ((v42[3] & 0x40) != 0)
      {
        v62 = v64;
        v63 = 19;
        memset(v64, 0, 76);
        v32 = v25;
        if (v25 >= 1)
        {
          v33 = &v54;
          do
          {
            if (*v33 == 2)
            {
              v64[*(v33 - 2) >> 5] |= 1 << *(v33 - 2);
            }

            v33 += 14;
            --v32;
          }

          while (v32);
        }

        v34 = v6[1];
        v55[0] = 0;
        v56 = v58;
        v57 = 8;
        memset(v58, 0, 32);
        v59 = xmmword_298A41DA0;
        v60 = vdup_n_s32(0x42C60000u);
        v61 = 1120272384;
        BlueFin::stDops::stDops(v65, v55);
        v72 = v34;
        v35 = **v6;
        BlueFin::GlSignalIdSet::GetSvIdSet(&v62, &v48);
        v36 = *v42;
        LODWORD(__src) = 0;
        BlueFin::GlPeDops::GetDops();
        BlueFin::stDops::operator=(v43 + 1712, v55);
        *(v43 + 1712) = v35;
        if (*(v43 + 1772) < 40.0)
        {
          v22 = v22;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v65[0] = 0;
        v66 = v68;
        v67 = 8;
        memset(v68, 0, 32);
        v69 = xmmword_298A41DA0;
        v70 = vdup_n_s32(0x42C60000u);
        v71 = 1120272384;
        BlueFin::stDops::operator=(v43 + 1712, v65);
      }
    }
  }

  v37 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t BlueFin::GlPeLsq::rr2VelDeals(int **a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, char *a6)
{
  v166 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v95 = "pastMeasIn";
    DeviceFaultNotify("glpe_lsq.cpp", 1873, "rr2VelDeals", "pastMeasIn");
    v96 = 1873;
    goto LABEL_87;
  }

  v13 = a5 + 56;
  v12 = *(a5 + 56);
  v14 = *a6;
  *(a5 + 64) = v14;
  bzero((v12 + 8), 8 * v14);
  v15 = *a6;
  *(v13 + 832) = v15;
  bzero((*(v13 + 824) + 8), 8 * v15);
  if (*a6 < 3)
  {
    goto LABEL_7;
  }

  v136[1] = 0x400000004;
  v16 = *(a5 + 16);
  v138 = *a5;
  v137 = 0;
  v136[0] = &v137;
  v139 = v16;
  v17 = &v133[2];
  *v133 = xmmword_298A43ED0;
  v131 = &v134;
  v132 = &v135;
  v135 = 0;
  for (i = 1; i != 20; ++i)
  {
    v132[i] = v17;
    v17 += 8;
  }

  v129[0] = v130;
  v129[1] = 0x1300000000;
  memset(v130, 0, sizeof(v130));
  v126 = v128;
  *v127 = 0x1300000000;
  memset(v128, 0, sizeof(v128));
  v124[0] = v125;
  v124[1] = 0x1300000000;
  memset(v125, 0, sizeof(v125));
  v19 = a2[3] & 1 | 0x4C0;
  v20 = *a2;
  v21 = a2[1];
  v22 = *(a2 + 4);
  v115[0] = v136;
  v115[1] = v20;
  v115[2] = v21;
  v116 = v22;
  v117 = 2;
  v118 = v19;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0x4008000000000000;
  v111[0] = &v126;
  v111[1] = v124;
  v111[2] = &v131;
  v111[3] = v129;
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  v108 = v110;
  v109 = 4;
  v110[1] = 0;
  v110[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v108, *a6);
  if (*a6 > a4)
  {
    v95 = "cNbRr <= lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 1909, "rr2VelDeals", "cNbRr <= lMeasInMaxNum");
    v96 = 1909;
    goto LABEL_87;
  }

  if ((*(*a1[1] + 16))(a1[1], v115, v111, a3, &v108))
  {
    goto LABEL_7;
  }

  v97 = a4;
  v104 = v107;
  memset(v107, 0, sizeof(v107));
  if (v127[0] >= *a6)
  {
    v25 = *a6;
  }

  else
  {
    v25 = v127[0];
  }

  v106 = 15;
  v105 = v25;
  v26 = &v107[8];
  bzero(&v107[8], 8 * v25);
  if (v25 >= 1)
  {
    v27 = (v25 + 1) - 1;
    v28 = (v124[0] + 8);
    v29 = v126 + 1;
    do
    {
      v30 = *v29++;
      v31 = v30;
      v32 = *v28++;
      *v26++ = v31 - v32;
      --v27;
    }

    while (v27);
  }

  BlueFin::SKFVectorDim<100>::SKFVectorDim(&v98, &v104);
  BlueFin::SKFVector::Clone(v13, &v98);
  v33 = *(a2 + 6);
  if ((v33 & 0x200000) != 0)
  {
    BlueFin::GlPeLsq::AddPMeas(&v126, v124, v129, &v131, 2, 0.0225);
    BlueFin::GlPeLsq::AddPMeas(&v126, v124, v129, &v131, 1, 0.0225);
    v33 = *(a2 + 6);
  }

  v34 = v133[0];
  if ((v33 & 8) == 0)
  {
    v35 = *a6 > 4 && (v33 & 4) == 0;
    if (!v35 && v133[0] <= 15)
    {
      BlueFin::GlPeLsq::AddPMeas(&v126, v124, v129, &v131, 3, 0.0225);
      v33 = *(a2 + 6);
      v34 = v133[0];
    }
  }

  if ((v33 & 0xA) == 2 && v34 <= 15)
  {
    BlueFin::GlPeLsq::AddPMeas(&v126, v124, v129, &v131, 4, *(a5 + 32));
    v34 = v133[0];
  }

  v38 = v133[1];
  v39 = &v100[1];
  *v100 = xmmword_298A43ED0;
  v98 = &v100[2];
  v99 = &v103;
  v103 = 0;
  for (j = 8; j != 160; j += 8)
  {
    *&v99[j] = v39;
    v39 += 4;
  }

  BlueFin::BigMatrix::Clone(&v98, v34, v38);
  v41 = &v157[16];
  *&v157[8] = xmmword_298A43EE0;
  v156 = &v157[24];
  *v157 = &v160;
  v160 = 0;
  for (k = 8; k != 40; k += 8)
  {
    *(*v157 + k) = v41;
    v41 += 152;
  }

  BlueFin::BigMatrix::Clone(&v156, v38, v34);
  if (v34 >= 1)
  {
    v43 = *(a2 + 6);
    v44 = v129[0];
    v45 = v132;
    v46 = v99;
    v47 = *v157 + 8;
    v48 = 1;
    do
    {
      v49 = 1.0;
      if ((v43 & 0x10) != 0)
      {
        v49 = 1.0 / *(v44 + 8 * v48);
      }

      if (v38 >= 1)
      {
        v50 = (*&v46[8 * v48] + 8);
        v51 = (v45[v48] + 8);
        v52 = v47;
        v53 = (v38 + 1) - 1;
        do
        {
          v54 = *v51++;
          *v50++ = v54;
          v55 = v49 * v54;
          v56 = *v52++;
          *(v56 + 8 * v48) = v55;
          --v53;
        }

        while (v53);
      }

      ++v48;
    }

    while (v48 != v34 + 1);
  }

  v57 = &v153 + 8;
  v153 = xmmword_298A41E80;
  v151 = &v154;
  v152 = &v155;
  v155 = 0;
  for (m = 1; m != 5; ++m)
  {
    v152[m] = v57;
    v57 += 32;
  }

  BlueFin::BigMatrix::mult_sym(&v151, &v156, &v98);
  v59 = 0;
  v60 = v127[0];
  *v148 = xmmword_298A43EF0;
  v146 = &v148[2];
  v147 = &v150;
  v150 = 0;
  do
  {
    *&v147[v59 * 8 + 8] = &v148[v59 + 1];
    ++v59;
  }

  while (v59 != 19);
  BlueFin::BigMatrix::Clone(&v146, v60, 1);
  v61 = v127[0];
  if (v127[0] >= 1)
  {
    v62 = (v147 + 8);
    v63 = (v124[0] + 8);
    v64 = v126 + 1;
    do
    {
      v65 = *v64++;
      v66 = v65;
      v67 = *v63++;
      v68 = v66 - v67;
      v69 = *v62++;
      *(v69 + 8) = v68;
      --v61;
    }

    while (v61);
  }

  v70 = 0;
  v143 = xmmword_298A43EC0;
  v141 = &v144;
  v142 = &v145;
  v145 = 0;
  do
  {
    v142[v70 + 1] = &v143 + v70 * 8 + 8;
    ++v70;
  }

  while (v70 != 4);
  BlueFin::BigMatrix::mult(&v141, &v156, &v146);
  v71 = 0;
  v72 = v142 + 1;
  do
  {
    *(&v163 + v71 * 8) = *(v72[v71] + 8);
    ++v71;
  }

  while (v71 != 4);
  v140 = 0.0;
  if (!BlueFin::BigMatrix::cholsl(&v151, &v163, v161.f64, &v140, 0) || v140 < 0.0001)
  {
    goto LABEL_7;
  }

  v73 = vaddq_f64(v162, *(a5 + 16));
  *a5 = vaddq_f64(v161, *a5);
  *(a5 + 16) = v73;
  v74 = *(a2 + 6);
  if ((v74 & 0x80) != 0)
  {
    v163 = 0x3FF0000000000000uLL;
    v164 = 0;
    v165 = 0;
    v78 = BlueFin::BigMatrix::cholsl(&v151, &v163, v161.f64, 0, 0);
    v75 = v161.f64[0];
    v163 = xmmword_298A436E0;
    v164 = 0;
    v165 = 0;
    v79 = BlueFin::BigMatrix::cholsl(&v151, &v163, v161.f64, 0, 0);
    v163 = 0uLL;
    v164 = 0;
    v165 = 0x3FF0000000000000;
    if (!v78)
    {
      v75 = 400.0;
    }

    if (v79)
    {
      v76 = v161.f64[1];
    }

    else
    {
      v76 = 400.0;
    }

    v80 = BlueFin::BigMatrix::cholsl(&v151, &v163, v161.f64, 0, 0);
    v77 = v162.f64[1];
    if (!v80)
    {
      v77 = 400.0;
    }

    v74 = *(a2 + 6);
  }

  else
  {
    v75 = 1000000.0;
    v76 = 1000000.0;
    v77 = 1000000.0;
  }

  v81 = v97;
  *(a5 + 40) = v75;
  *(a5 + 48) = v76;
  *(a5 + 32) = v77;
  if ((v74 & 0x40) != 0)
  {
    v156 = &v157[4];
    v157[0] = 19;
    memset(&v157[4], 0, 32);
    v158 = 0u;
    memset(v159, 0, sizeof(v159));
    v82 = *a6;
    if (v82 >= 1)
    {
      v83 = (a3 + 44);
      do
      {
        if (*v83 == 2)
        {
          *&v157[4 * (*(v83 - 2) >> 5) + 4] |= 1 << *(v83 - 2);
        }

        v83 += 14;
        --v82;
      }

      while (v82);
    }

    v84 = a1[1];
    LODWORD(v146) = 0;
    v147 = v148 + 4;
    LOBYTE(v148[0]) = 8;
    *(v148 + 4) = 0uLL;
    *(&v148[2] + 4) = 0uLL;
    *&v148[5] = xmmword_298A41DA0;
    v148[7] = vdup_n_s32(0x42C60000u);
    v149 = 1120272384;
    BlueFin::stDops::stDops(&v98, &v146);
    v102 = v84;
    v85 = **a1;
    BlueFin::GlSignalIdSet::GetSvIdSet(&v156, &v151);
    v86 = *a2;
    LODWORD(v141) = 0;
    BlueFin::GlPeDops::GetDops();
    BlueFin::stDops::operator=(a5 + 1712, &v146);
    *(a5 + 1712) = v85;
    v81 = v97;
  }

  else
  {
    LODWORD(v98) = 0;
    v99 = v100 + 4;
    LOBYTE(v100[0]) = 8;
    *(v100 + 4) = 0u;
    *(&v100[2] + 4) = 0u;
    *&v100[5] = xmmword_298A41DA0;
    v100[7] = vdup_n_s32(0x42C60000u);
    v101 = 1120272384;
    BlueFin::stDops::operator=(a5 + 1712, &v98);
  }

  if ((*(a2 + 25) & 8) == 0)
  {
    *(a5 + 888) = 0;
LABEL_78:
    result = 1;
    goto LABEL_8;
  }

  v87 = v136[0];
  *(v136[0] + 8) = *a5;
  v87[2] = *(a5 + 8);
  v87[3] = *(a5 + 16);
  v87[4] = *(a5 + 24);
  if (BlueFin::GlSetBase::Highest(&v108) >= v81)
  {
    v95 = "otMeasSet.Highest() < lMeasInMaxNum";
    DeviceFaultNotify("glpe_lsq.cpp", 2002, "rr2VelDeals", "otMeasSet.Highest() < lMeasInMaxNum");
    v96 = 2002;
LABEL_87:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", v96, v95);
  }

  if (!(*(*a1[1] + 16))(a1[1], v115, v111, a3, &v108))
  {
    v88 = *(a5 + 888);
    if (v88 >= 1)
    {
      v89 = (*(a5 + 880) + 8);
      v90 = (v124[0] + 8);
      v91 = v126 + 1;
      do
      {
        v92 = *v91++;
        v93 = v92;
        v94 = *v90++;
        *v89++ = (v93 - v94) * 100.0;
        --v88;
      }

      while (v88);
    }

    goto LABEL_78;
  }

LABEL_7:
  result = 0;
LABEL_8:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLsq::LsVelDeals(unsigned int **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a2 + 20) != 15)
  {
    DeviceFaultNotify("glpe_lsq.cpp", 2136, "LsVelDeals", "otInp.m_cNumMeasLimit == DEALS_MAX_MEAS_SUBSET");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 2136, "otInp.m_cNumMeasLimit == DEALS_MAX_MEAS_SUBSET");
  }

  for (i = 0; i != 840; i += 56)
  {
    v8 = &v14[i];
    v8[32] = 0;
    *(v8 + 9) = -1;
    *(v8 + 20) = 575;
  }

  v9 = BlueFin::GlPeLsq::PackSkfMeas_LsRrDeals(a1, v14, a3);
  v13 = v9;
  if (v9 < 3)
  {
    result = 0;
  }

  else
  {
    *(a4 + 40) = vdupq_n_s64(0x4079000000000000uLL);
    *(a4 + 64) = 15;
    v10 = *(a4 + 56);
    *(v10 + 120) = 0;
    *(v10 + 104) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 8) = 0u;
    result = BlueFin::GlPeLsq::rr2VelDeals(a1, a2, v14, v9, a4, &v13);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLsq::PackSkfMeas_LsRrDeals(unsigned int **a1, uint64_t a2, const void **a3)
{
  v43 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v24 = "pSkfMeas";
    DeviceFaultNotify("glpe_lsq.cpp", 2179, "PackSkfMeas_LsRrDeals", "pSkfMeas");
    v25 = "glpe_lsq.cpp";
    v26 = 2179;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v25, v26, v24);
  }

  for (i = 0; i != 192; i += 12)
  {
    v6 = &v36[1] + i + 12;
    *v6 = 0;
    *(v6 + 1) = -1;
    *(v6 + 4) = 575;
  }

  v7 = *a1;
  BlueFin::GlSetBase::GlSetBase(&__src, v35, 0x13u, a3);
  v37 = &v39;
  v38 = 19;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v37, v7 + 1);
  BlueFin::GlSetBase::operator=(&__src, &v37);
  v35[1] = v40;
  v35[2] = v41;
  v36[0] = *v42;
  *(v36 + 12) = *&v42[12];
  v35[0] = v39;
  v28 = v34;
  memcpy(v32, __src, 4 * v34);
  v30 = 0;
  v29 = 0;
  v31 = v32[0];
  BlueFin::GlSetIterator::operator++(&v28);
  if (v29 == v28)
  {
    LOBYTE(v8) = 0;
    goto LABEL_17;
  }

  LOBYTE(v9) = 0;
  do
  {
    v10 = v30;
    if (v30 >= 0x23FuLL)
    {
      v24 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v25 = "glsignalid.h";
      v26 = 578;
      goto LABEL_19;
    }

    v11 = *a1;
    v12 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v30;
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(__src) = *v12;
    HIDWORD(__src) = v14;
    v34 = v30;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v11, &__src, 0);
    if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas))
    {
      v16 = &v36[1] + 12 * v9 + 12;
      *v16 = v13;
      *(v16 + 1) = v14;
      *(v16 + 4) = v10;
      v17 = *a1;
      LOBYTE(__src) = v13;
      HIDWORD(__src) = v14;
      v34 = v10;
      *(&v37 + v9) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v17, &__src, 0, 0) + 27);
      LOBYTE(v9) = v9 + 1;
    }

    BlueFin::GlSetIterator::operator++(&v28);
  }

  while (v29 != v28);
  LOBYTE(v8) = v9;
  BlueFin::GlSortFloats(&v37, v9, &__src, v18);
  if (v9)
  {
    LOBYTE(v8) = 0;
    v9 = v9;
    p_src = &__src;
    do
    {
      v20 = *p_src;
      p_src = (p_src + 1);
      v21 = &v36[1] + 6 * v20 + 6;
      if (((*(*a3 + (v21[4] >> 5)) >> (v21[4] & 0x1F)) & 1) != 0 && BlueFin::GlPeLsq::PackSkfMeas_RR_SignalId(a1, a2 + 56 * v8, v21))
      {
        v8 = (v8 + 1);
        if (v8 > 14)
        {
          break;
        }
      }

      --v9;
    }

    while (v9);
  }

LABEL_17:
  v22 = *MEMORY[0x29EDCA608];
  return v8;
}

BlueFin::SKFVector *BlueFin::SKFVectorDim<20>::SKFVectorDim(BlueFin::SKFVector *a1, const BlueFin::SKFVector *a2)
{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 20;
  if (v2 >= 21)
  {
    DeviceFaultNotify("glpe_matrix.h", 505, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 505, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}

unint64_t BlueFin::GlPeNavGnssKF::InitializeNavGnssKF(BlueFin::GlPeNavGnssKF *this, const BlueFin::GlPeNavGnssState *a2)
{
  BlueFin::GlPeNavGnssState::operator=(this + *(*this - 24), a2);
  *(this + *(*this - 24) + 196) = 0;
  BlueFin::BigMatrix::Null((this + 32), 12, 12);
  if (*(this + 26))
  {
    BlueFin::BigMatrix::Null((this + 32), 12, 12);
    v4 = *this;
    v5 = *(this + *(*this - 24) + 80) * 0.707106781;
    v6 = *(this + 5);
    v7 = v6[2];
    *(v6[1] + 8) = v5 * v5;
    v8 = *(this + *(v4 - 24) + 80) * 0.707106781;
    v9 = v6[4];
    *(v6[3] + 24) = v8 * v8;
    LODWORD(v8) = *(this + *(v4 - 24) + 84);
    v10 = v6[6];
    *(v6[5] + 40) = (*&v8 * *&v8);
    v11 = *(this + *(v4 - 24) + 128) * 0.707106781;
    *(v7 + 16) = v11 * v11;
    v12 = *(this + *(v4 - 24) + 128) * 0.707106781;
    *(v9 + 32) = v12 * v12;
    LODWORD(v12) = *(this + *(v4 - 24) + 140);
    *(v10 + 48) = (*&v12 * *&v12);
    LODWORD(v12) = *(this + *(v4 - 24) + 96);
    *(v6[7] + 56) = fmax((*&v12 * *&v12), 1.0e-12);
    v13 = (this + *(v4 - 24));
  }

  else
  {
    v14 = *(a2 + 21);
    v15 = *(a2 + 20) * 0.707106781 * (*(a2 + 20) * 0.707106781);
    v6 = *(this + 5);
    v16 = v6[2];
    *(v6[1] + 8) = v15;
    v17 = v6[4];
    *(v6[3] + 24) = v15;
    v18 = v6[6];
    *(v6[5] + 40) = (v14 * v14);
    *(v16 + 16) = (*(a2 + 32) * *(a2 + 32));
    *(v17 + 32) = 0x4023BD3CC9BE45D3;
    *(v18 + 48) = (*(a2 + 35) * *(a2 + 35));
    *(v6[7] + 56) = fmax((*(a2 + 24) * *(a2 + 24)), 1.0e-12);
    v13 = a2;
  }

  v19 = v6[9];
  *(v6[8] + 64) = fmax((*(v13 + 40) * *(v13 + 40)), 1.0e-12);
  v20 = v6[10];
  *(v6[11] + 88) = fmax((*(a2 + 53) * *(a2 + 53)), 1.0e-12);
  *(v19 + 72) = fmax((*(a2 + 55) * *(a2 + 55)), 1.0e-12);
  *(v6[12] + 96) = fmax((*(a2 + 57) * *(a2 + 57)), 1.0e-12);
  *(v20 + 80) = fmax((*(a2 + 59) * *(a2 + 59)), 1.0e-12);
  (*(*this + 392))(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  *(this + 369) = *(a2 + 50);
  *(this + 1480) = *(a2 + 8);
  *(this + 187) = *(a2 + 3);
  *(this + 376) = *(a2 + 20);
  v21 = *(a2 + 13);
  v22 = *(a2 + 14);
  v23 = sqrt(v22 * v22 + v21 * v21);
  *(this + 331) = v23;
  v24 = *this;
  v25 = (this + *(*this - 24));
  v25[13] = v21;
  v25[14] = v22;
  v26 = *(a2 + 15);
  v25[15] = v26;
  *&v26 = v26;
  *(this + 332) = -*&v26;
  *(this + *(v24 - 24) + 176) = *(a2 + 44);
  v27 = __sincos_stret(*(this + *(v24 - 24) + 176));
  *(this + 167) = *&v27.__cosval;
  *(this + 168) = *&v27.__sinval;
  *(this + 169) = 0;
  *(this + 171) = *&v27.__sinval;
  *(this + 172) = -v27.__cosval;
  *(this + 173) = 0;
  *(this + 1400) = 0u;
  *(this + 177) = 0xBFF0000000000000;
  *(this + 402) = *(a2 + 50);
  v28 = *(a2 + 3);
  *(this + 2616) = *(a2 + 8);
  *(this + 329) = v28;
  *(this + 380) = 0x4069000000000000;
  *(this + 448) = 1120272384;
  *(this + 6869) = 0;
  result = (*(v24 + 144))(this);
  *(this + 6240) = 0;
  *(this + 779) = 0;
  if (BlueFin::GlUtils::m_ucEnabled)
  {

    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

unint64_t BlueFin::GlSignalIdList::Remove(BlueFin::GlSignalIdList *this, unsigned int a2)
{
  result = BlueFin::GlSignalIdList::operator[](this, a2);
  v4 = *this - 1;
  v5 = this + 2 * v4 + 4;
  if (result < v5)
  {
    v6 = (result + 2);
    do
    {
      if (v6 != v5)
      {
        *(v6 - 1) = *v6;
      }

      v7 = v6 >= v5;
      v6 += 2;
    }

    while (!v7);
  }

  *this = v4;
  return result;
}

uint64_t *BlueFin::GlPeNavGnssKF::ResetL5BiasKFState(uint64_t *this)
{
  v1 = *this;
  *(this + *(*this - 24) + 216) = 0;
  *(this + *(v1 - 24) + 220) = 1077936128;
  *(*(this[5] + 72) + 72) = 0x4022000000000000;
  return this;
}

void BlueFin::GlPeNavGnssKF::ZeroSpeedUpdate(uint64_t a1, BlueFin::BigMatrix *a2, double *a3, int a4, int a5)
{
  v10.n128_f64[0] = BlueFin::GlPeNavGnssMotion::GetNotMovingFactor((a1 + 4776));
  if (*(*(a1 + 2248) + 1989))
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v10.n128_f64[0];
  }

  v12 = (*(*a1 + 56))(a1, v10);
  if (v12 - 1 <= 0x18)
  {
    v11 = v11 * (v12 / 25.0);
  }

  v13 = *(*(a1 + 2248) + 8);
  v14 = *(a1 + 4776);
  v15 = 0.0500000007;
  if (*(v14 + 4216) == 6)
  {
    v16 = v14 + 4096;
    if (*(v16 + 128) == 1)
    {
      if (*(v16 + 130) & 1 | ((v13 - 6) < 0xFFFFFFFD))
      {
        v15 = 0.0500000007;
      }

      else
      {
        v15 = 0.00999999978;
      }
    }
  }

  if ((v13 - 1) >= 2)
  {
    v17 = 3.0;
  }

  else
  {
    v17 = 1.0;
  }

  BlueFin::lla2ned(a3, (a1 + *(*a1 - 24) + 8), 0, &v62);
  if (*(*(a1 + 2248) + 16))
  {
    v18 = 60000;
  }

  else
  {
    v18 = 120000;
  }

  if (*(a1 + *(*a1 - 24) + 200) >= v18 && (v19 = *(a1 + 4776), *(v19 + 4216) == 6) && *(v19 + 4224) == 1 && (*(v19 + 4226) & 1) == 0)
  {
    v21 = sqrt(v63.f64[0] * v63.f64[0] + v63.f64[1] * v63.f64[1]);
  }

  else
  {
    v20 = v11;
    if (fabs(v63.f64[1]) >= 10.0)
    {
      goto LABEL_44;
    }

    v20 = v11;
    if (fabs(v63.f64[0]) >= 10.0)
    {
      goto LABEL_44;
    }

    v19 = *(a1 + 4776);
    v21 = sqrt(v63.f64[0] * v63.f64[0] + v63.f64[1] * v63.f64[1]);
    if (*(v19 + 4216) != 6 || (*(v19 + 4224) & 1) == 0)
    {
      v22 = 0;
      goto LABEL_28;
    }
  }

  v22 = *(v19 + 4226) ^ 1;
LABEL_28:
  v23 = 0.1;
  if ((v22 & 1) == 0 && v21 > 8.0)
  {
    v23 = 10.0;
    if (v21 <= 10.0)
    {
      v23 = v21 * 4.95 + -39.5;
    }
  }

  v24 = 0.00001;
  if (v11 >= 0.00001)
  {
    v24 = v11;
  }

  if (a5)
  {
    v25 = 2.0;
  }

  else
  {
    v25 = v23;
  }

  if (a5)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = v24;
  }

  v26 = *(a1 + 26);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 16) = 0x3FF0000000000000;
  if (v26 == 1)
  {
    v27 = v25 / v20 * (v25 / v20);
    BlueFin::GlPeNavGnssKF::MeasUpdate(a1, a2, 0, 0, 1, -*(a1 + *(*a1 - 24) + 104), v27);
    BlueFin::BigMatrix::Null(a2, 1, 12);
    *(*(*(a2 + 1) + 8) + 32) = 0x3FF0000000000000;
    v28 = -*(a1 + *(*a1 - 24) + 112);
    v29 = a1;
    v30 = a2;
    v31 = v27;
  }

  else
  {
    v28 = -*(a1 + 1324);
    v31 = v25 / v20 * (v25 / v20);
    v29 = a1;
    v30 = a2;
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(v29, v30, 0, 0, 1, v28, v31);
LABEL_44:
  v32 = *(a1 + 26);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  v33 = -1.0;
  if (v32)
  {
    v33 = 1.0;
  }

  *(*(*(a2 + 1) + 8) + 48) = v33;
  v34 = *(a1 + 4776);
  v35 = 0.01;
  if (*(v34 + 4216) == 6)
  {
    v36 = v34 + 4096;
    if (*(v36 + 128) == 1)
    {
      v35 = 0.01;
      if (!*(v36 + 130))
      {
        v35 = 0.0004;
      }
    }
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(a1, a2, 1, 1, 1, *(a1 + 1328), v35);
  if (*(a1 + *(*a1 - 24) + 80) < 500.0)
  {
    if (BlueFin::GlPeNavGnssMotion::IsNotMoving((a1 + 4776), 1.0))
    {
      if (!a4)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v45 = *(a1 + 4776);
      if (*(v45 + 4216) != 6)
      {
        goto LABEL_64;
      }

      v46 = v45 + 4096;
      if (*(v46 + 128) != 1 || !a4 || (*(v46 + 130) & 1) != 0)
      {
        goto LABEL_64;
      }
    }

    if ((a5 & 1) == 0 && (BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(a1) & 1) == 0)
    {
      v37 = v15 - (fmin(fmax(v11, 0.0), 1.0) + -1.0) * (2.0 - v15);
      BlueFin::lla2ned(a3, (a1 + *(*a1 - 24) + 8), 0, &v60);
      v38 = v60;
      v62 = v60;
      v57 = v61.f64[0];
      v63 = v61;
      BlueFin::ned2hlu(&v62, (a1 + 1336), &v60);
      v39 = *(a1 + 40);
      v40.f64[0] = v37;
      if (*(a1 + 26) == 1)
      {
        v41 = sqrt(*(*(v39 + 8) + 8));
        *&v41 = v41 / (v41 + v40.f64[0]);
        v42 = v38 * *&v41;
        v43 = sqrt(*(*(v39 + 24) + 24));
        *v40.f64 = v43 / (v43 + v40.f64[0]);
        v44 = *v40.f64 * v57;
        v40.f64[1] = 0.0;
      }

      else
      {
        v47 = sqrt(*(*(v39 + 24) + 24));
        *&v47 = v47 / (v47 + v40.f64[0]);
        v48 = v61.f64[0] * *&v47;
        v49 = sqrt(*(*(v39 + 8) + 8));
        *&v47 = v49 / (v49 + (v17 * v37));
        v50 = v60 * *&v47;
        v42 = v48 * *(a1 + 1344) + *(a1 + 1336) * v50;
        v44 = v48 * *(a1 + 1376) + *(a1 + 1368) * v50;
        v40 = vnegq_f64(0);
      }

      v40.f64[0] = v44;
      v62 = v42;
      v63 = v40;
      v51 = a1 + *(*a1 - 24);
      BlueFin::ned2lla((v51 + 8), &v62, &v58);
      *(v51 + 8) = v58;
      *(v51 + 24) = v59;
    }
  }

LABEL_64:
  if ((*(a1 + 26) & 1) == 0 && *(a1 + *(*a1 - 24) + 241) == 1)
  {
    BlueFin::BigMatrix::Null(a2, 1, 12);
    *(*(*(a2 + 1) + 8) + 32) = 0x3FF0000000000000;
    if (BlueFin::GlPeNavGnssKF::IsAprioriHeadingOkForUse(a1, 0))
    {
      v52 = (fmin(fmax(v20, 0.0), 1.0) + -1.0) * -0.41887902 + 0.0174532925;
      v53 = *(a1 + 1568);
        ;
      }

        ;
      }

      v56 = i;
      v55 = v52;
      BlueFin::GlPeNavGnssKF::MeasUpdate(a1, a2, 0, 0, 1, v56, ((v55 * v55) * 10.0));
    }
  }
}

uint64_t BlueFin::ExtLocFilter::Reset(uint64_t result, uint64_t a2, int a3, float a4)
{
  v12 = *MEMORY[0x29EDCA608];
  *(result + 128) = v8;
  *(result + 144) = v9;
  *(result + 160) = v10;
  *(result + 176) = v11;
  *(result + 64) = 0uLL;
  *(result + 80) = v6;
  *(result + 96) = 0uLL;
  *(result + 112) = v7;
  *(result + 192) = 0x200000002;
  *(result + 200) = 0;
  *(result + 232) = 0;
  *(result + 328) = 0x100000002;
  *(result + 336) = 0;
  *(result + 368) = 0;
  *(result + 464) = 0x100000002;
  *(result + 56) = 0;
  *(result + 48) = 0x3FB99999A0000000;
  if (a3)
  {
    *(result + 8) = *a2;
    *(result + 24) = *(a2 + 16);
    *(result + 32) = a3;
    *(result + 36) = a3;
    *(result + 40) = a4;
    *(result + 472) = 0;
    *(result + 476) = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *result = v4;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeNavGnssKF::UpdateFromHulaSpeed(BlueFin::GlPeNavGnssKF *this)
{
  v12 = xmmword_298A43FD0;
  v10 = &v13;
  v11 = v14;
  v14[0] = 0;
  v14[1] = &v12 + 8;
  BlueFin::BigMatrix::Null(&v10, 1, 12);
  *(v11[1] + 16) = 0x3FF0000000000000;
  v2 = *(*(this + 281) + 8);
  v8 = 0.0;
  v9 = 0.0;
  v3 = *(*(*(this + 5) + 32) + 32);
  if (BlueFin::GlPeNavGnssKF::IsHulaSpeedValid(this, &v9, &v8, v2 == 3) && sqrt(v3) < 0.785398163)
  {
    v4 = 0.1;
    if (v8 <= 0.1)
    {
      v4 = v8;
    }

    v5 = v4 * v4;
    if (v2 != 3)
    {
      v5 = v8 * v8;
    }

    v6 = *(this + 331);
    v7 = 1.0;
    if (v6 < 0.0)
    {
      v7 = -1.0;
    }

    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v10, 1, 0, 1, -(v6 - v7 * v9), v5);
    *(this + 2168) = 1;
  }
}

uint64_t BlueFin::GlPeNavGnssKF::IsHulaSpeedValid(BlueFin::GlPeNavGnssKF *this, double *a2, double *a3, unsigned int a4)
{
  *a2 = 0.0;
  *a3 = 0.0;
  v4 = *(this + 597);
  if (*(v4 + 1225) != 1)
  {
    return 0;
  }

  *a2 = *(v4 + 1184);
  v5 = fmin(*(v4 + 1192), 1.0);
  *a3 = v5;
  if (v5 > *a2)
  {
    return 0;
  }

  v6 = *(this + 331);
  v7 = 1.0;
  if (v6 < 0.0)
  {
    v7 = -1.0;
  }

  v8 = (this + *(*this - 24));
  if (-(v6 - v7 * *a2) * -(v6 - v7 * *a2) > (v5 * v5 + (v8[32] * v8[32])) * 16.0)
  {
    return 0;
  }

  if (*(this + 26) == 1)
  {
    v10 = v8[46];
  }

  else
  {
    v10 = sqrt(*(*(*(this + 5) + 32) + 32));
  }

  if (v10 <= 0.436332313)
  {
    return 1;
  }

  else
  {
    return a4;
  }
}

void BlueFin::GlPeNavGnssKF::DealsMeasUpdate(BlueFin::GlPeNavGnssKF *this, BlueFin::BigMatrix *a2, int a3)
{
  v6 = (this + 2872);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 16) = 0x3FF0000000000000;
  if (a3)
  {
    v7 = 1.01;
  }

  else
  {
    v7 = 0.01;
  }

  v8 = *(this + 331);
  v9 = 1.0;
  if (v8 < 0.0)
  {
    v9 = -1.0;
  }

  v10 = vcvt_f32_f64(*v6);
  v11 = -(v8 - (v9 * sqrtf(vaddv_f32(vmul_f32(v10, v10)))));
  v12 = vcvt_f32_f64(v6[2]);
  v12.f32[0] = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
  v13 = v12.f32[0] * v12.f32[0];
  if (v7 < v13)
  {
    v7 = v13;
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, v11, v7);
  v14 = *(this + 735);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 32) = 0x3FF0000000000000;
  v15 = *(this + 734) * 0.0174532925;
    ;
  }

    ;
  }

  if (fabsf(*(this + 331)) > 0.1 && *(this + 735) < 180.0)
  {
    v17 = v14 * 0.0174532925;
    v18 = fmaxf(v17, 0.1);
    v19 = fmax(i, -0.523598776);
    BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, fminf(v19, 0.5236), (v18 * v18));
  }

  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 48) = 0x3FF0000000000000;
  v20 = *(this + 365) * *(this + 365);
  v21 = 0.00999999978;
  if (a3)
  {
    v21 = 3.00999999;
  }

  if (v21 >= v20)
  {
    v20 = v21;
  }

  BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, -*(this + 361) - *(this + 332), v20);
  BlueFin::BigMatrix::Null(a2, 1, 12);
  *(*(*(a2 + 1) + 8) + 64) = 0x3FF0000000000000;
  v22 = *(this + 724) - *(this + *(*this - 24) + 152);
  v23 = fmaxf(*(this + 732) * *(this + 732), 0.01);

  BlueFin::GlPeNavGnssKF::MeasUpdate(this, a2, 1, 0, 1, v22, v23);
}

void BlueFin::GlPeNavGnssKF::ApplyCrossTrackPosMeas(BlueFin::GlPeNavGnssKF *this, double a2, double a3, double a4)
{
  if ((*(this + 26) & 1) == 0)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 6218, "ApplyCrossTrackPosMeas", "m_bIsNed == true");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 6218, "m_bIsNed == true");
  }

  v12 = xmmword_298A43FD0;
  v10 = &v13;
  v11 = v14;
  v14[0] = 0;
  v14[1] = &v12 + 8;
  BlueFin::BigMatrix::Null(&v10, 1, 12);
  v8 = __sincos_stret(a4);
  v9 = v11[1];
  *(v9 + 8) = -v8.__sinval;
  *(v9 + 24) = v8.__cosval;
  BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v10, 1, 0, 1, a2, a3 * a3);
}

void BlueFin::GlPeNavGnssKF::ApplyXTCHdg(BlueFin::GlPeNavGnssKF *this, double a2, long double a3)
{
  if (a3 <= 1.57079633)
  {
    v5 = (this + *(*this - 24));
    v6 = v5[13];
    v7 = v5[14];
    v8 = sin(a3) * sqrt(v7 * v7 + v6 * v6);
    if (v8 >= 0.5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = __sincos_stret(a2);
    v14 = xmmword_298A43FD0;
    v12 = &v15;
    v13 = v16;
    v16[0] = 0;
    v16[1] = &v14 + 8;
    BlueFin::BigMatrix::Null(&v12, 1, 12);
    v11 = v13[1];
    *(v11 + 16) = -v10.__sinval;
    *(v11 + 32) = v10.__cosval;
    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v12, 1, 0, 1, -(v10.__cosval * v7 + -v10.__sinval * v6), v9 * v9);
  }
}

double BlueFin::GlPeNavGnssKF::GetInfoForPdrCalibration(char *a1, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6)
{
  v10 = *a1;
  v11 = &a1[*(*a1 - 24)];
  *a2 = *(v11 + 8);
  *(a2 + 16) = *(v11 + 3);
  *a3 = (*(*&a1[*(v10 - 24)] + 16))(&a1[*(v10 - 24)]);
  BlueFin::GlPeNavGnssState::operator=(a4, (a1 + 7448));
  v12 = *a1;
  *a5 = *&a1[*(*a1 - 24) + 176];
  result = *&a1[*(v12 - 24) + 184];
  *a6 = result;
  return result;
}

uint64_t BlueFin::GlSignalIdList::operator[](unsigned int *a1, unsigned int a2)
{
  if (!a2 || *a1 <= a2)
  {
    DeviceFaultNotify("glsignalid.h", 491, "operator[]", "index >= m_minIndex && index < m_maxIndex");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 491, "index >= m_minIndex && index < m_maxIndex");
  }

  return a1 + 2 * a2 + 2;
}

uint64_t BlueFin::GlPeKfPool::Reset(void *a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + *(*a1 - 24) + 196) = a2;
  v4 = a1 + 4656;
  do
  {
    result = (*(*v4[v3] + 24))(v4[v3], a2);
    ++v3;
  }

  while (v3 != 3);
  return result;
}

uint64_t BlueFin::GlPeKfPool::InitializeNavGnssKF(BlueFin::GlPeKfPool *this, const BlueFin::GlPeNavGnssState *a2)
{
  v4 = 0;
  v5 = this + 37248;
  do
  {
    v6 = *&v5[v4];
    if ((*(*v6 + 384))(v6))
    {
      (*(*v6 + 40))(v6, a2);
    }

    v4 += 8;
  }

  while (v4 != 24);
  v7 = this + *(*this - 24);
  v8 = *(this + 4659) + *(**(this + 4659) - 24);

  return BlueFin::GlPeNavGnssState::operator=(v7, v8);
}

uint64_t BlueFin::GlPeKfPool::ReConfigKF(BlueFin::GlPeKfPool *this, char a2, char a3)
{
  v5 = (this + 36864);
  v6 = *(this + 4657);
  v7 = (*(*v6 + 384))(v6);
  if (a2)
  {
    if ((v7 & 1) == 0)
    {
      (*(*v6 + 376))(v6, 1);
      (*(*v6 + 40))(v6, v5[51] + *(*v5[51] - 24));
    }
  }

  else if (v7)
  {
    (*(*v6 + 24))(v6, 3);
    (*(*v6 + 376))(v6, 0);
    if (v5[51] == v5[49])
    {
      v5[51] = v5[48];
    }
  }

  v8 = v5[50];
  result = (*(*v8 + 384))(v8);
  if (a3)
  {
    if ((result & 1) == 0)
    {
      (*(*v8 + 376))(v8, 1);
      v10 = *(*v8 + 40);
      v11 = v5[51] + *(*v5[51] - 24);

      return v10(v8, v11);
    }
  }

  else if (result)
  {
    result = (*(*v8 + 376))(v8, 0);
    if (v5[51] == v5[50])
    {
      v5[51] = v5[48];
    }
  }

  return result;
}

uint64_t BlueFin::GlPeKfPool::GetInfoForPdrCalibration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 36864;
  v7 = *(a1 + 37272);
  if (v7 == *(v6 + 392))
  {
    v8 = 37832;
  }

  else
  {
    v7 = *(v6 + 384);
    v8 = 37304;
  }

  (*(*v7 + 344))(v7, a2, a3, a4);

  return BlueFin::GlPeNavGnssState::operator=(a4, a1 + v8);
}

double BlueFin::GlPeKfPool::ResetKFStateForPdrPropagation(BlueFin::GlPeKfPool *this)
{
  if (*(*(this + 658) + 84) == 1 && *(this + 8) == 2 && (*(this + 5842) & 1) == 0 && (*(*(this + 656) + 8) - 3) <= 3)
  {
    v1 = *(this + 3059);
    v2 = this + *(v1 - 24) + 24472;
    v3 = this + *(*(this + 3) - 24) + 24;
    *(v2 + 8) = *(v3 + 8);
    result = *(v3 + 3);
    *(v2 + 3) = result;
    v5 = (this + *(v1 - 24) + 24472);
    v5[13] = 0;
    v5[14] = 0;
    v5[15] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeKfPool::ResetL5BiasKFState(BlueFin::GlPeKfPool *this)
{
  v2 = 0;
  v3 = this + 37248;
  do
  {
    result = (*(**&v3[v2] + 384))(*&v3[v2]);
    if (result)
    {
      result = (*(**&v3[v2] + 360))(*&v3[v2]);
    }

    v2 += 8;
  }

  while (v2 != 24);
  v5 = *this;
  *(this + *(*this - 24) + 216) = 0;
  *(this + *(v5 - 24) + 220) = 1077936128;
  return result;
}

BOOL BlueFin::GlPeKfPool::GetQbv(BlueFin::GlPeKfPool *this, BlueFin::QuaternionD *a2)
{
  *a2 = *(this + 4840);
  *(a2 + 1) = *(this + 4856);
  return *(this + 8) == 2 && (*(this + 5842) & 1) == 0 && (*(*(this + 656) + 8) - 3) < 4;
}

BOOL BlueFin::GlPeKfPool::GetAccBias(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 4632);
  *(a2 + 16) = *(a1 + 4648);
  return *(a1 + 32) == 2 && (*(a1 + 5842) & 1) == 0 && (*(*(a1 + 5248) + 8) - 3) < 4;
}

BOOL BlueFin::GlPePrawnKf::GetQbv(BlueFin::GlPePrawnKf *this, BlueFin::QuaternionD *a2)
{
  *a2 = *(this + 301);
  *(a2 + 1) = *(this + 302);
  return *(this + 2) == 2 && (*(this + 5818) & 1) == 0 && (*(*(this + 653) + 8) - 3) < 4;
}

BOOL BlueFin::GlPePrawnKf::GetAccBias(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 4608);
  *(a2 + 16) = *(a1 + 4624);
  return *(a1 + 8) == 2 && (*(a1 + 5818) & 1) == 0 && (*(*(a1 + 5224) + 8) - 3) < 4;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::RemoveRrMeas(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v13 = *(v4 + 192);
  memcpy(v17, *(v4 + 184), 4 * v13);
  v15 = 0;
  v14 = 0;
  v16 = v17[0];
  for (result = BlueFin::GlSetIterator::operator++(&v13); v14 != v13; result = BlueFin::GlSetIterator::operator++(&v13))
  {
    if (v15 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = *(a1 + 8);
    v7 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v15;
    v8 = *v7;
    LODWORD(v7) = v7[1];
    v10[0] = v8;
    v11 = v7;
    v12 = v15;
    v9 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v6, v10, 0);
    if (BlueFin::stPeSigMeasKF::IsRRValid(v9))
    {
      *(v9 + 96) |= 0x40u;
      *(v9 + 129) = a2;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::RemovePrMeas(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v13 = *(v4 + 192);
  memcpy(v17, *(v4 + 184), 4 * v13);
  v15 = 0;
  v14 = 0;
  v16 = v17[0];
  for (result = BlueFin::GlSetIterator::operator++(&v13); v14 != v13; result = BlueFin::GlSetIterator::operator++(&v13))
  {
    if (v15 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = *(a1 + 8);
    v7 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v15;
    v8 = *v7;
    LODWORD(v7) = v7[1];
    v10[0] = v8;
    v11 = v7;
    v12 = v15;
    v9 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v6, v10, 0);
    if (BlueFin::stPeSigMeasKF::IsPRValid(v9))
    {
      *(v9 + 96) |= 8u;
      *(v9 + 128) = a2;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::RenewMeas@<X0>(BlueFin::GlPeNavGnssMeasMgr *this@<X0>, const BlueFin::GlSignalIdSet *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 12) = 0u;
  *a4 = a4 + 12;
  *(a4 + 8) = 19;
  *(a4 + 28) = 0u;
  *(a4 + 44) = 0u;
  *(a4 + 60) = 0u;
  *(a4 + 72) = 0u;
  v8 = *(this + 1);
  v18 = *(v8 + 192);
  memcpy(v22, *(v8 + 184), 4 * v18);
  v20 = 0;
  v19 = 0;
  v21 = v22[0];
  result = BlueFin::GlSetIterator::operator++(&v18);
  if (v19 != v18)
  {
    while (1)
    {
      if (v20 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v10 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v20;
      v11 = *v10;
      LODWORD(v10) = v10[1];
      v15[0] = v11;
      v16 = v10;
      v17 = v20;
      v12 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*(this + 1), v15, 0);
      if (!BlueFin::stPeSigMeasKF::IsPRValid(v12))
      {
        goto LABEL_8;
      }

      v13 = v17 >> 5;
      if (a3)
      {
        break;
      }

      v14 = v17 & 0x1F;
      if ((*(*a2 + 4 * v13) >> (v17 & 0x1F)))
      {
        goto LABEL_7;
      }

LABEL_8:
      if (BlueFin::stPeSigMeasKF::IsRRValid(v12))
      {
        *(v12 + 24) &= ~0x40u;
      }

      result = BlueFin::GlSetIterator::operator++(&v18);
      if (v19 == v18)
      {
        return result;
      }
    }

    v14 = v17 & 0x1F;
LABEL_7:
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFF3 | 4;
    *(*a4 + 4 * v13) |= 1 << v14;
    goto LABEL_8;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::CheckMissingBits(unsigned __int8 *this, char a2, signed __int8 *a3, signed __int8 *a4)
{
  if (this[2212] == 1 && (a2 & 1) != 0)
  {
    v6 = this;
    v7 = *(this + 1);
    v17 = *(v7 + 192);
    memcpy(v21, *(v7 + 184), 4 * v17);
    v19 = 0;
    v18 = 0;
    v20 = v21[0];
    this = BlueFin::GlSetIterator::operator++(&v17);
    if (v18 == v17)
    {
      LOBYTE(v8) = 0;
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (v19 >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v10 = *(v6 + 1);
        v11 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v19;
        v12 = *v11;
        LODWORD(v11) = v11[1];
        v14[0] = v12;
        v15 = v11;
        v16 = v19;
        v13 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v10, v14, 0);
        if (BlueFin::stPeSigMeasKF::IsPRValid(v13))
        {
          ++v9;
          if (*(v13 + 23) != -1)
          {
            if (v12 > 0x20u)
            {
              if (v12 > 0x33u)
              {
                ++v8;
              }
            }

            else
            {
              ++v8;
            }
          }
        }

        this = BlueFin::GlSetIterator::operator++(&v17);
      }

      while (v18 != v17);
      if (v6[2212] == 1 && v8 <= 2 && v9 > 4)
      {
        v6[2212] = 0;
      }
    }

    if (a3)
    {
      *a3 = v8;
    }

    if (a4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      v9 = 0;
LABEL_25:
      *a4 = v9;
    }
  }

  return this;
}

BOOL BlueFin::GlPeNavGnssMeasMgr::DopplerResidualCheck()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v115 = v2;
  v107 = v5;
  v109 = v6;
  v110 = v7;
  v113 = v8;
  v114 = v1;
  v9 = v4;
  v108 = v10;
  v111 = v11;
  v13 = v12;
  v14 = v0;
  v15 = 0;
  v166 = *MEMORY[0x29EDCA608];
  do
  {
    v16 = &v155[v15];
    *(v16 + 32) = 0;
    *(v16 + 9) = -1;
    *(v16 + 20) = 575;
    v15 += 7;
  }

  while (v15 != 84);
  v17 = 0;
  v138 = &v139[4];
  v139[0] = 19;
  memset(&v139[4], 0, 76);
  do
  {
    v18 = &v140 + v17;
    *v18 = 0;
    *(v18 + 1) = -1;
    *(v18 + 4) = 575;
    v17 += 12;
  }

  while (v17 != 1200);
  v134 = &v135[4];
  v135[0] = 19;
  memset(&v135[4], 0, 32);
  v136 = 0u;
  memset(v137, 0, sizeof(v137));
  v19 = *(v0 + 8);
  v20 = *v19;
  if (v4 > 3.0)
  {
    *(v0 + 2208) = v20;
  }

  v21 = v4 < 2.0 && *(v0 + 2208) + 3000 < v20;
  v112 = (v3 * 1000.0);
  v23 = (*(v1 + 8) - 1) < 2 || v20 < 0x493E0;
  v24 = 2.5;
  v25 = 0.0;
  if (v23 || v21)
  {
    v24 = 0.0;
  }

  v105 = v24;
  if (v2 && BlueFin::GlSetBase::Cnt((v19 + 23)))
  {
    v26 = *(v14 + 48);
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v132[16]);
    v131 = &off_2A1F12F90;
    *v132 = v19;
    *v27 = &unk_2A1F12FC8;
    *&v132[8] = v26;
    v126 = &v127[4];
    v127[0] = 19;
    *&v127[4] = 0u;
    v128 = 0u;
    v129 = 0u;
    memset(v130, 0, sizeof(v130));
    v28 = *(v14 + 8);
    LOBYTE(v156) = *(v28 + 192);
    memcpy(&v157, *(v28 + 184), 4 * v156);
    WORD1(v156) = 0;
    BYTE1(v156) = 0;
    HIDWORD(v156) = v157;
    BlueFin::GlSetIterator::operator++(&v156);
    if (BYTE1(v156) != v156)
    {
      v29 = 0;
      v30 = 84;
      while (1)
      {
        v31 = *&v127[v30 - 8];
        if (v31)
        {
          v32 = v31 - (((v31 >> 2) & 0x9249249) + ((v31 >> 1) & 0x5B6DB6DB));
          v29 = ((v32 + (v32 >> 3)) & 0xC71C71C7) + v29 - 63 * (((v32 + (v32 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        v33 = v30 > 0xF;
        v30 -= 4;
        if (!v33)
        {
          if ((v29 & 0xFFF0) != 0)
          {
            break;
          }

          if (WORD1(v156) >= 0x23Fu)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          *&v127[((WORD1(v156) >> 3) & 0x1FFC) + 4] |= 1 << SBYTE2(v156);
          BlueFin::GlSetIterator::operator++(&v156);
          v29 = 0;
          v30 = 84;
          if (BYTE1(v156) == v156)
          {
            break;
          }
        }
      }
    }

    *__src = *v113;
    *&__src[4] = *(v113 + 2);
    BlueFin::GlPeNavUtil::ComputeRrateResidVec();
    BlueFin::SKFVector::SortAscen(&v156);
    v34 = 0;
    v35 = &v126[4 * v127[0] - 4];
    do
    {
      if (*v35)
      {
        v36 = *v35 - (((*v35 >> 2) & 0x9249249) + ((*v35 >> 1) & 0x5B6DB6DB));
        v34 = ((v36 + (v36 >> 3)) & 0xC71C71C7) + v34 - 63 * (((v36 + (v36 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      v35 -= 4;
    }

    while (v35 >= v126);
    v25 = v156[v34 >> 1];
    v19 = *(v14 + 8);
  }

  __src[0] = *(v19 + 192);
  memcpy(&__src[2], v19[23], 4 * LOBYTE(__src[0]));
  __src[1] = __src[2];
  BlueFin::GlSetIterator::operator++(__src);
  v37 = &BlueFin::GlUtlCrc::ucCrcTable[77];
  if (BYTE1(__src[0]) == LOBYTE(__src[0]))
  {
    v38 = 0;
    LOBYTE(v156) = 0;
    goto LABEL_94;
  }

  v38 = 0;
  v106 = 0;
  v39 = v13;
  do
  {
    if (HIWORD(__src[0]) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v40 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(__src[0]);
    v41 = *v40;
    LODWORD(v40) = v40[1];
    v123[0] = v41;
    v124 = v40;
    v125 = HIWORD(__src[0]);
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v14 + 8), v123, 0);
    v43 = PeMeas;
    v44 = v123[0];
    if (v123[0] > 0x33u)
    {
      if (!((v44 > 0x41) | BlueFin::stPeSigMeasKF::IsPRValid(PeMeas) & 1))
      {
        BlueFin::stPeSigMeasKF::IsRRValid(v43);
        BlueFin::stPeSigMeasKF::IsRRValid(v43);
        goto LABEL_85;
      }
    }

    else
    {
      BlueFin::stPeSigMeasKF::IsPRValid(PeMeas);
    }

    if (BlueFin::stPeSigMeasKF::IsRRValid(v43))
    {
      if (((*&v138[4 * (v125 >> 5)] >> (v125 & 0x1F)) & 1) == 0)
      {
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v14 + 8), v123, 0, 0);
        v47 = MeMeas;
        if (MeMeas)
        {
          v48 = &v140 + 12 * v38;
          if (v48 != v123)
          {
            *v48 = v123[0];
            *(v48 + 1) = v124;
            *(v48 + 4) = v125;
          }

          if (v110)
          {
            v126 = &v127[4];
            v127[0] = 19;
            *&v127[4] = 0u;
            v128 = 0u;
            v129 = 0u;
            memset(v130, 0, sizeof(v130));
            *&v127[4 * (*(MeMeas + 4) >> 5) + 4] |= 1 << *(MeMeas + 4);
            v49 = *(v14 + 8);
            v50 = *(v14 + 48);
            BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v132[16]);
            v131 = &off_2A1F12F90;
            *v132 = v49;
            *&v132[8] = v50;
            *&v132[16] = &unk_2A1F12FC8;
            *v117 = *v113;
            *&v117[16] = *(v113 + 2);
            BlueFin::GlPeNavUtil::ComputeRrateResidVec();
            v51 = 0;
            v52 = &v126[4 * v127[0] - 4];
            do
            {
              if (*v52)
              {
                v53 = *v52 - (((*v52 >> 2) & 0x9249249) + ((*v52 >> 1) & 0x5B6DB6DB));
                v51 = ((v53 + (v53 >> 3)) & 0xC71C71C7) + v51 - 63 * (((v53 + (v53 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              v52 -= 4;
            }

            while (v52 >= v126);
            v54 = -999.0;
            if (v51)
            {
              v54 = v156[1];
            }

            *&v163[v38] = v54;
            if (*(v47 + 5) > 2 || (v55 = 0.0, (*(v114 + 8) - 1) <= 4) && (IsPRValidForNav = BlueFin::stPeSigMeasKF::IsPRValidForNav(v43), v9 > 1.0) && ((*(v43 + 52) < 29) & ~IsPRValidForNav) != 0)
            {
              v55 = 2.0;
            }

            if (v115)
            {
LABEL_74:
              if (v54 == -999.0)
              {
                v65 = 30;
              }

              else
              {
                if (!v115 || vabdd_f64(v54, v25) < 1.5)
                {
                  v134[v125 >> 5] |= 1 << v125;
                  v64 = 15.0;
                  if (*(v47 + 5) != 4)
                  {
                    v64 = 0.0;
                  }

                  *&v160[v38++] = v64 + fabsf(*(v47 + 29) + -174.0);
                  if (v38 == 100)
                  {
                    LOBYTE(v156) = 0;
                    v38 = 100;
                    v13 = v39;
                    v37 = BlueFin::GlUtlCrc::ucCrcTable + 77;
                    if (v106 >= 0xCu)
                    {
                      goto LABEL_92;
                    }

LABEL_90:
                    v66 = v163;
                    goto LABEL_93;
                  }

                  goto LABEL_84;
                }

                v65 = 29;
              }

              *(v43 + 129) = v65;
LABEL_84:
              v13 = v39;
              goto LABEL_85;
            }

            if (v54 == -999.0)
            {
              v54 = -999.0;
              goto LABEL_74;
            }

            v54 = fabs(v54) + v55;
            *&v163[v38] = v54;
            v62 = v106;
            if (v54 < v105)
            {
              v62 = v106 + 1;
            }

            v106 = v62;
          }

          else
          {
            v56 = *(MeMeas + 29);
            v57 = v56 < 30.0 && *(MeMeas + 5) == 0;
            v58 = 100000.0;
            if (!v57)
            {
              v58 = 0.0;
            }

            v59 = v56 < 16.0;
            v60 = 1000000.0;
            if (!v59)
            {
              v60 = 0.0;
            }

            v54 = floor((v60 + v58 + *(MeMeas + 27) * 299792458.0) * 10000.0 + 0.5) * 0.0001;
            *&v163[v38] = v54;
          }

          v63 = v123[0] - 76;
          if (v63 <= 0x3E && ((1 << v63) & 0x7C0000000000001FLL) != 0)
          {
            v54 = v54 + v54;
            *&v163[v38] = v54;
          }

          goto LABEL_74;
        }
      }
    }

LABEL_85:
    BlueFin::GlSetIterator::operator++(__src);
  }

  while (BYTE1(__src[0]) != LOBYTE(__src[0]));
  LOBYTE(v156) = 0;
  if (v106 < 0xCu)
  {
    v37 = BlueFin::GlUtlCrc::ucCrcTable + 77;
    if (v38 < 2u)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

  v37 = &BlueFin::GlUtlCrc::ucCrcTable[77];
LABEL_92:
  v66 = v160;
LABEL_93:
  BlueFin::GlSortDoubles(v66, v38, &v156, v46);
LABEL_94:
  v67 = *(v114 + 8);
  v126 = &v127[4];
  v127[0] = 19;
  *&v127[4] = 0u;
  v128 = 0u;
  v129 = 0u;
  memset(v130, 0, sizeof(v130));
  if (v38)
  {
    v116 = 0;
    v68 = v67 - 1;
    if (v38 >= 0xCu)
    {
      v69 = 12;
    }

    else
    {
      v69 = v38;
    }

    v70 = v155;
    v71 = &v156;
    v72 = *(v37 + 345);
    while (1)
    {
      v73 = *v71;
      v71 = (v71 + 1);
      v74 = (&v140 + 12 * v73);
      v75 = *(v14 + 8);
      if ((*(*(v75 + 8) + 4 * (*(v74 + 4) >> 5)) >> (v74[1] & 0x1F)))
      {
        break;
      }

LABEL_117:
      if (!--v69)
      {
        goto LABEL_120;
      }
    }

    v76 = BlueFin::GlPeMsmtMgr::GetPeMeas(v75, v74, 0);
    *v70 = 0u;
    v70[3] = NAN;
    *(v70 + 49) = 0;
    *(v70 + 32) = 0;
    *(v70 + 9) = -1;
    *(v70 + 20) = 575;
    *(v70 + 11) = 2;
    v77 = *(v14 + 8);
    v78 = *v77;
    *(v70 + 4) = *v77;
    v79 = -7200001;
    if (v78 != -7200001)
    {
      v80 = *(v77 + 1);
      v81 = v78 - v80;
      if (v80 == -7200001)
      {
        v79 = -7200001;
      }

      else
      {
        v79 = v81;
      }
    }

    *(v70 + 5) = v79;
    if (v70 + 4 != v74)
    {
      *(v70 + 32) = *v74;
      *(v70 + 9) = *(v74 + 1);
      *(v70 + 20) = *(v74 + 4);
    }

    if (*v74 - 139 >= 0x24 && (v82 = *(v74 + 1), (v82 - 1) >= 2))
    {
      if (v68 <= 1 && v82 == 3)
      {
        goto LABEL_112;
      }

LABEL_114:
      *v70 = v76[15] * -299792458.0;
      v83 = v76[16];
    }

    else
    {
      if (v68 > 1)
      {
        goto LABEL_114;
      }

LABEL_112:
      v83 = v76[18];
      if (v83 >= 0.000000016)
      {
        goto LABEL_114;
      }

      *v70 = v76[17] * -299792458.0;
    }

    v70[1] = v83 * v72;
    *(v70 + 48) = 1;
    if ((*(v77[1] + (*(v74 + 4) >> 5)) >> (v74[1] & 0x1F)))
    {
      v84 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v77, v74, 0);
      *&v126[4 * (*(v74 + 4) >> 5)] |= 1 << *(v74 + 4);
      *(v84 + 96) |= 0x40u;
      BlueFin::GlPeMsmtMgr::GetMeMeas(*(v14 + 8), v74, 0, 0);
      v70 += 7;
      ++v116;
    }

    goto LABEL_117;
  }

  v116 = 0;
LABEL_120:
  BlueFin::GlSetBase::GlSetBase(v117, &v117[12], 0x13u, &v126);
  v131 = &v132[4];
  v132[0] = 19;
  memset(&v132[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryInversion(v117, &v131);
  BlueFin::GlSetBase::operator=(v117, &v131);
  v118 = *&v132[20];
  v119 = *&v132[36];
  v120[0] = *&v132[52];
  *(v120 + 12) = *&v132[64];
  *&v117[12] = *&v132[4];
  BlueFin::GlSignalIdSet::setSignalIdLimits(v117);
  BlueFin::GlSetBase::GlSetBase(__src, &__src[3], 0x13u, &v134);
  v131 = &v132[4];
  v132[0] = 19;
  memset(&v132[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryAnd(__src, &v131, v117);
  BlueFin::GlSetBase::operator=(__src, &v131);
  *&__src[7] = *&v132[20];
  *&__src[11] = *&v132[36];
  v122[0] = *&v132[52];
  *(v122 + 12) = *&v132[64];
  *&__src[3] = *&v132[4];
  LOBYTE(v131) = __src[2];
  memcpy(v132, *__src, 4 * LOBYTE(__src[2]));
  WORD1(v131) = 0;
  BYTE1(v131) = 0;
  HIDWORD(v131) = *v132;
  BlueFin::GlSetIterator::operator++(&v131);
  while (BYTE1(v131) != v131)
  {
    if (WORD1(v131) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v85 = *(v14 + 8);
    v86 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v131);
    v87 = *v86;
    LODWORD(v86) = v86[1];
    LOBYTE(__src[0]) = v87;
    __src[1] = v86;
    LOWORD(__src[2]) = WORD1(v131);
    v88 = BlueFin::GlSignalIdArray::Get(*(v85 + 18792), __src);
    if (v88)
    {
      *(v88 + 273) = 32;
    }

    BlueFin::GlSetIterator::operator++(&v131);
  }

  v89 = v116;
  if (v89 < 2)
  {
    goto LABEL_137;
  }

  v117[0] = v116;
  v141 = 0;
  v140 = 0u;
  v144 = vdupq_n_s64(0x4079000000000000uLL);
  v146 = 0x6400000000;
  bzero(v147, 0x328uLL);
  v145 = v147;
  v147[102] = 0x6400000000;
  bzero(v148, 0x328uLL);
  v147[101] = v148;
  v148[204] = 0;
  v149 = v151;
  v150 = 8;
  memset(v151, 0, 32);
  v152 = xmmword_298A41DA0;
  v153 = vdup_n_s32(0x42C60000u);
  v154 = 1120272384;
  v142 = v111;
  v143 = v108;
  v90 = *(v14 + 8);
  v91 = *(v14 + 16);
  v148[202] = *v90;
  v156 = v158;
  v157 = 0xC00000000;
  memset(v158, 0, sizeof(v158));
  v159 = 0;
  if (v109)
  {
    v92 = 657555;
  }

  else
  {
    v92 = 657554;
  }

  v126 = v113;
  *v127 = v13;
  *&v127[8] = v112;
  v127[12] = 7;
  *&v127[16] = v92;
  v93 = *(v14 + 48);
  v94 = *(v14 + 64);
  v134 = v90;
  *v135 = v93;
  *&v135[8] = 0;
  *&v135[16] = v91 + 392;
  *&v135[24] = v94;
  if (BlueFin::GlPeLsq::rr2Vel())
  {
    v95 = v156;
    v96 = *(&v140 + 1);
    *(v156 + 2) = v140;
    *(v95 + 32) = v96;
  }

  v163[0] = v164;
  v163[1] = 0xC00000000;
  memset(v164, 0, sizeof(v164));
  v165 = 0;
  v160[0] = v161;
  v160[1] = 0xC00000000;
  memset(v161, 0, sizeof(v161));
  v162 = 0;
  if (v109)
  {
    v97 = 1217;
  }

  else
  {
    v97 = 1216;
  }

  if (!v107)
  {
    v97 &= 0x481u;
  }

  v131 = &v156;
  *v132 = v113;
  *&v132[8] = v13;
  *&v132[16] = v112;
  *&v132[24] = v97;
  memset(&v132[32], 0, 64);
  v133 = 0x4008000000000000;
  v138 = v163;
  *v139 = v160;
  memset(&v139[8], 0, 56);
  *__src = &__src[3];
  LOBYTE(__src[2]) = 4;
  *&__src[3] = 0uLL;
  BlueFin::GlSetBase::SetAllLower(__src, v116);
  if ((*(**(v14 + 48) + 16))(*(v14 + 48), &v131, &v138, v155, __src))
  {
LABEL_137:
    result = 0;
  }

  else
  {
    v100 = v155;
    v101 = (v160[0] + 8);
    do
    {
      result = v89 == 0;
      if (!v89)
      {
        break;
      }

      v102 = *v101++;
      v103 = v102 - *(v160[0] + 8);
      v104 = *v100;
      v100 += 7;
      --v89;
    }

    while (vabdd_f64(v103, v104 - v155[0]) <= 20.0);
  }

  v99 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::SelectADR(BlueFin::GlPeNavMeasSelect *this, BlueFin::GlSignalIdSet *a2)
{
  BlueFin::GlSetBase::GlSetBase(v19, v20, 0x13u, a2);
  BlueFin::GlSignalIdSet::Print(a2, 0x6Fu);
  v14 = *(a2 + 8);
  memcpy(v18, *a2, 4 * v14);
  v16 = 0;
  v15 = 0;
  v17 = v18[0];
  BlueFin::GlSetIterator::operator++(&v14);
  while (v15 != v14)
  {
    v4 = v16;
    if (v16 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v5 = *(this + 3);
    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v16;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v11[0] = v7;
    v12 = v6;
    v13 = v16;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v5, v11, 0, 0);
    if (MeMeas && (MeMeas[13] & 0x10) == 0)
    {
      BlueFin::GlSetBase::Remove(v19, v4);
    }

    BlueFin::GlSetIterator::operator++(&v14);
  }

  v9 = BlueFin::GlSetBase::operator=(a2, v19);
  *(a2 + 28) = v20[1];
  *(a2 + 44) = v20[2];
  *(a2 + 60) = *v21;
  *(a2 + 72) = *&v21[12];
  *(a2 + 12) = v20[0];
  return BlueFin::GlSignalIdSet::Print(v9, 0x6Fu);
}

unint64_t BlueFin::GlPeSubsetIterator::operator*(unint64_t a1, unint64_t a2)
{
  if (a2 > a1)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 125, "operator*", "m_potReadPtr <= m_potWritePtr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 125, "m_potReadPtr <= m_potWritePtr");
  }

  return a2;
}

unint64_t BlueFin::GlPeSubsets::FindBestFitResidSubset(BlueFin::GlPeSubsets *this)
{
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v4, this);
  if (v5 >= v4)
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v2 = BlueFin::GlPeSubsetIterator::operator->(&v4);
    if (BlueFin::GlSetBase::Cnt((v2 + 24)) >= 5 && *(BlueFin::GlPeSubsetIterator::operator->(&v4) + 156) > 0.1)
    {
      if (!v1)
      {
        v1 = BlueFin::GlPeSubsetIterator::operator->(&v4);
      }

      if (*(BlueFin::GlPeSubsetIterator::operator->(&v4) + 156) < *(v1 + 156))
      {
        v1 = BlueFin::GlPeSubsetIterator::operator->(&v4);
      }
    }

    v5 += 168;
  }

  while (v5 < v4);
  return v1;
}

void BlueFin::GlPeSubsets::ComputeScatterWidthK(unint64_t *a1, int a2, uint64_t a3)
{
  v77 = 0uLL;
  v78 = 0.0;
  v79 = &v81;
  v80 = 19;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  memset(v84, 0, sizeof(v84));
  v85 = vdupq_n_s32(0x43C80000u);
  v86 = v85;
  v87 = 0;
  v66 = 0uLL;
  v67 = 0.0;
  v68 = &v70;
  v69 = 19;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  memset(v73, 0, sizeof(v73));
  v74 = v85;
  v75 = v85;
  v76 = 0;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0;
  v57 = &v59;
  v58 = 19;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v63 = v85;
  v64 = v85;
  v65 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  BlueFin::GlSetBase::operator=(a3 + 24, &v57);
  *(a3 + 52) = v60;
  *(a3 + 68) = v61;
  *(a3 + 84) = *v62;
  *(a3 + 36) = v59;
  v6 = *&v62[28];
  *(a3 + 96) = *&v62[12];
  *(a3 + 112) = v6;
  v7 = v64;
  *(a3 + 128) = v63;
  *(a3 + 144) = v7;
  *(a3 + 160) = v65;
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v52, a1);
  v8 = BlueFin::GlPeSubsetIterator::operator->(&v52);
  if (v53 >= v52)
  {
LABEL_34:
    *(a3 + 128) = vdup_n_s32(0x457A0000u);
    *(a3 + 144) = 1165623296;
    v51 = 4000.0;
    goto LABEL_35;
  }

  v9 = 0;
  v10 = BlueFin::GlSetBase::Cnt((v8 + 24)) - a2;
  while (2)
  {
    v11 = v9;
    while (1)
    {
      if (a2)
      {
        v12 = BlueFin::GlPeSubsetIterator::operator->(&v52);
        if (v10 > BlueFin::GlSetBase::Cnt((v12 + 24)))
        {
          goto LABEL_8;
        }
      }

      if (v11)
      {
        break;
      }

      v13 = v53;
      BlueFin::GlPeSubsetIterator::operator*(v52, v53);
      v77 = *v13;
      v78 = *(v13 + 16);
      BlueFin::GlSetBase::operator=(&v79, v13 + 24);
      v81 = *(v13 + 36);
      v14 = *(v13 + 52);
      v15 = *(v13 + 68);
      v16 = *(v13 + 84);
      v17 = *(v13 + 112);
      *&v84[12] = *(v13 + 96);
      v83 = v15;
      *v84 = v16;
      v82 = v14;
      v18 = *(v13 + 128);
      v19 = *(v13 + 144);
      v87 = *(v13 + 160);
      v85 = v18;
      v86 = v19;
      *&v84[28] = v17;
      v20 = v53;
      BlueFin::GlPeSubsetIterator::operator*(v52, v53);
      v66 = *v20;
      v67 = *(v20 + 16);
      BlueFin::GlSetBase::operator=(&v68, v20 + 24);
      v70 = *(v20 + 36);
      v21 = *(v20 + 52);
      v22 = *(v20 + 68);
      v23 = *(v20 + 84);
      v24 = *(v20 + 112);
      *&v73[12] = *(v20 + 96);
      v72 = v22;
      *v73 = v23;
      v71 = v21;
      v25 = *(v20 + 128);
      v26 = *(v20 + 144);
      v76 = *(v20 + 160);
      v74 = v25;
      v75 = v26;
      *&v73[28] = v24;
      v11 = 1;
LABEL_8:
      v53 += 168;
      if (v53 >= v52)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    v27 = *&v77;
    v28 = *BlueFin::GlPeSubsetIterator::operator->(&v52);
    if (v27 < v28)
    {
      v28 = v27;
    }

    *&v77 = v28;
    v29 = *(&v77 + 1);
    v30 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 8);
    if (v29 < v30)
    {
      v30 = v29;
    }

    *(&v77 + 1) = v30;
    v31 = v78;
    v32 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 16);
    if (v31 < v32)
    {
      v32 = v31;
    }

    v78 = v32;
    v33 = *&v84[40];
    v34 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 124);
    if (v33 < v34)
    {
      v34 = v33;
    }

    *&v84[40] = v34;
    v35 = *&v84[36];
    v36 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 120);
    if (v35 < v36)
    {
      v36 = v35;
    }

    *&v84[36] = v36;
    v37 = *&v66;
    v38 = *BlueFin::GlPeSubsetIterator::operator->(&v52);
    if (v38 < v37)
    {
      v38 = v37;
    }

    *&v66 = v38;
    v39 = *(&v66 + 1);
    v40 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 8);
    if (v40 < v39)
    {
      v40 = v39;
    }

    *(&v66 + 1) = v40;
    v41 = v67;
    v42 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 16);
    if (v42 < v41)
    {
      v42 = v41;
    }

    v67 = v42;
    v43 = *&v73[40];
    v44 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 124);
    if (v44 < v43)
    {
      v44 = v43;
    }

    *&v73[40] = v44;
    v45 = *&v73[36];
    v46 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 120);
    if (v46 < v45)
    {
      v46 = v45;
    }

    *&v73[36] = v46;
    v53 += 168;
    v9 = 1;
    if (v53 < v52)
    {
      continue;
    }

    break;
  }

LABEL_33:
  BlueFin::lla2ned(&v66, &v77, 0, &v54);
  v47 = sqrt(v55 * v55 + v54 * v54);
  v48 = v67 - v78;
  *(a3 + 128) = v47;
  *(a3 + 132) = v48;
  v49 = *&v73[36];
  v50 = *&v84[36];
  *(a3 + 144) = *&v73[40] - *&v84[40];
  v51 = v49 - v50;
LABEL_35:
  *(a3 + 148) = v51;
}

double BlueFin::GlPeSubsets::ComputeScatterWidthK(BlueFin::GlPeSubsets *this, int a2)
{
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0;
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v22, this);
  v3 = BlueFin::GlPeSubsetIterator::operator->(&v22);
  v4 = 4000.0;
  if (v23 < v22)
  {
    v5 = 0;
    v6 = BlueFin::GlSetBase::Cnt((v3 + 24)) - a2;
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
LABEL_3:
    v13 = v12;
    v14 = v5;
    do
    {
      if (!a2 || (v15 = BlueFin::GlPeSubsetIterator::operator->(&v22), v6 == BlueFin::GlSetBase::Cnt((v15 + 24))))
      {
        v16 = BlueFin::GlPeSubsetIterator::operator->(&v22);
        v12 = *v16;
        if (v14)
        {
          if (v13 < v12)
          {
            v12 = v13;
          }

          v18 = BlueFin::GlPeSubsetIterator::operator->(&v22);
          if (v11 >= *(v18 + 8))
          {
            v11 = *(v18 + 8);
          }

          v19 = BlueFin::GlPeSubsetIterator::operator->(&v22);
          if (*v19 >= v9)
          {
            v9 = *v19;
          }

          v20 = BlueFin::GlPeSubsetIterator::operator->(&v22);
          if (*(v20 + 8) >= v8)
          {
            v8 = *(v20 + 8);
          }

          v23 += 168;
          v5 = 1;
          if (v23 >= v22)
          {
            v27 = v12;
            v28 = v11;
            v29 = v10;
            v24 = v9;
            v25 = v8;
            v26 = v7;
            goto LABEL_21;
          }

          goto LABEL_3;
        }

        v11 = *(v16 + 8);
        v10 = *(v16 + 16);
        v17 = BlueFin::GlPeSubsetIterator::operator->(&v22);
        v9 = *v17;
        v8 = *(v17 + 8);
        v7 = *(v17 + 16);
        v14 = 1;
        v13 = v12;
      }

      v23 += 168;
    }

    while (v23 < v22);
    v27 = v12;
    v28 = v11;
    v29 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v7;
    if ((v5 & 1) == 0)
    {
      return v4;
    }

LABEL_21:
    BlueFin::lla2ned(&v27, &v24, 0, &v30);
    return sqrt(v31 * v31 + v30 * v30);
  }

  return v4;
}

uint64_t BlueFin::GlPeSubsets::ComputeWeightedMeanPos@<X0>(BlueFin::GlPeSubsets *this@<X0>, const BlueFin::GlSignalIdSet *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = BlueFin::GlSetBase::Cnt(a2);
  result = BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v33, this);
  if (v34 >= v33)
  {
    v14 = 0.0;
    v21 = 1;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
    v24 = 0.0;
    v22 = 0.0;
    v9 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v8 = 0;
    v31 = 0.0;
    v32 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      if (!v6 || (v15 = BlueFin::GlPeSubsetIterator::operator->(&v33), result = BlueFin::GlSetBase::HasAny(a2, (v15 + 24)), (result & 1) == 0))
      {
        v16 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 136);
        v31 = v31 + *BlueFin::GlPeSubsetIterator::operator->(&v33) * v16;
        v29 = v29 + v16;
        v17 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 140);
        v14 = v14 + *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 8) * v17;
        v13 = v13 + v17;
        v18 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 132);
        v12 = v12 + *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 16) * v18;
        v11 = v11 + v18;
        v19 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 144);
        v10 = v10 + *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 124) * v19;
        v30 = v30 + v19;
        v20 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 148);
        result = BlueFin::GlPeSubsetIterator::operator->(&v33);
        v32 = v32 + *(result + 120) * v20;
        v9 = v9 + v20;
        ++v8;
      }

      v34 += 168;
    }

    while (v34 < v33);
    v21 = v8 == 0;
    v23 = v31;
    v22 = v32;
    v25 = v29;
    v24 = v30;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 36) = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = a3 + 36;
  *(a3 + 32) = 19;
  *(a3 + 52) = 0u;
  *(a3 + 68) = 0u;
  *(a3 + 84) = 0u;
  *(a3 + 100) = 0u;
  v26 = vdupq_n_s32(0x43C80000u);
  *(a3 + 112) = 0u;
  *(a3 + 128) = v26;
  *(a3 + 144) = v26;
  *(a3 + 160) = 0;
  if (!v21)
  {
    *a3 = v23 / v25;
    *(a3 + 8) = v14 / v13;
    *(a3 + 16) = v12 / v11;
    v27 = v10 / v24;
    v28 = v22 / v9;
    *(a3 + 120) = v28;
    *(a3 + 124) = v27;
  }

  return result;
}

float *BlueFin::GlPeSubsets::RecurseIntegrityGeometry(float *result, const BlueFin::GlSignalIdSet *a2, uint64_t a3, int *a4, int a5)
{
  v7 = result;
  if (a5 < 1)
  {
    result = BlueFin::GlPeSubsets::Find(result, a2);
    if (result)
    {
      if (result[28] <= 15.0)
      {
        return result;
      }

      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    *a4 = v13;
  }

  else
  {
    v8 = *(a3 + 32);
    v9 = *(a3 + 64);
    v16[3] = *(a3 + 48);
    v16[4] = v9;
    v17 = *(a3 + 80);
    v10 = *(a3 + 16);
    v16[0] = *a3;
    v16[1] = v10;
    v16[2] = v8;
    if (BYTE1(v16[0]) != LOBYTE(v16[0]) && !*a4)
    {
      v11 = (a5 - 1);
      do
      {
        BlueFin::GlSetBase::GlSetBase(v14, v15, 0x13u, a2);
        if (WORD1(v16[0]) >= 0x23Fu)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        BlueFin::GlSetBase::Remove(v14, SWORD1(v16[0]));
        BlueFin::GlSetIterator::operator++(v16);
        result = BlueFin::GlPeSubsets::RecurseIntegrityGeometry(v7, v14, v16, a4, v11);
      }

      while (BYTE1(v16[0]) != LOBYTE(v16[0]) && *a4 == 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSubsets::GetIntegrityGeometry(float *a1, uint64_t a2, int *a3)
{
  v6 = 0;
  *a3 = 0;
  while (1)
  {
    v7 = v6;
    if (v6 > 1u)
    {
      break;
    }

    v9[0] = *(a2 + 8);
    memcpy(v12, *a2, 4 * v9[0]);
    v10 = 0;
    v9[1] = 0;
    v11 = v12[0];
    BlueFin::GlSetIterator::operator++(v9);
    BlueFin::GlPeSubsets::RecurseIntegrityGeometry(a1, a2, v9, a3, v7);
    v6 = v7 + 1;
    if (*a3)
    {
      return (v7 - 1);
    }
  }

  LOWORD(v7) = 2;
  return (v7 - 1);
}

uint64_t BlueFin::GlPeLsqSubsets::RunLsqSubsets(uint64_t a1, BlueFin::GlSetBase *this, unsigned int a3, uint64_t a4, int a5)
{
  if (a3 >= 4)
  {
    v12 = "ucDepth<=3";
    DeviceFaultNotify("glpe_navutil.cpp", 495, "RunLsqSubsets", "ucDepth<=3");
    v13 = 495;
    goto LABEL_11;
  }

  if (a3 >= 2 && BlueFin::GlSetBase::Cnt(this) >= 0xB)
  {
    v12 = "ucDepth<=1 || rotBase.Cnt() <=GLPE_SUBSETS_MAX_PR_ISOL";
    DeviceFaultNotify("glpe_navutil.cpp", 496, "RunLsqSubsets", "ucDepth<=1 || rotBase.Cnt() <=GLPE_SUBSETS_MAX_PR_ISOL");
    v13 = 496;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", v13, v12);
  }

  bzero(*(a1 + 104), ((4 * *(a1 + 112) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlPeLsqSubsets::RunLsqSubset(a1, this, 3, a5, a4, (*(a1 + 48) >> 11) & 1);
  v10 = BlueFin::GlPeSubsets::Find(*a1, this);
  if (v10)
  {
    if (*(v10 + 128) < 800.0)
    {
      *(a1 + 64) = *v10;
      *(a1 + 80) = *(v10 + 16);
      if (*(a1 + 48))
      {
        *(a1 + 96) = (*(v10 + 120) * 1000.0);
      }
    }
  }

  v14[0] = *(this + 8);
  memcpy(v17, *this, 4 * v14[0]);
  v15 = 0;
  v14[1] = 0;
  v16 = v17[0];
  BlueFin::GlSetIterator::operator++(v14);
  return BlueFin::GlPeLsqSubsets::RecurseLsqSubsets(a1, this, v14, a3);
}