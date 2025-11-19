uint64_t BlueFin::GlPeKF::AdjustAltSigmaForSimulation(uint64_t this)
{
  v1 = *(*(this + 61000) + 120012);
  if (v1)
  {
    if (v1 == 1 && *(this + 72) == 2 && *(this + 64) >= 50.0)
    {
      *(this + 64) = 1112014848;
    }

    *(this + 61208) |= 0x10000u;
  }

  return this;
}

float BlueFin::GlPeKF::GetRxm(BlueFin::GlPeKF *this)
{
  v2 = *(this + 7622);
  v3 = *(v2 + 2);
  v4 = *(v2 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v5 = v3 * 0.000000001;
  *(this + 202) = v5 * 1000000000.0;
  result = v4 * 0.000000001 * 1000000000.0 * (v4 * 0.000000001 * 1000000000.0);
  *(this + 203) = result;
  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::processEph@<X0>(BlueFin::GlPeNavGnssMeasMgr *this@<X0>, const BlueFin::GlSignalIdSet *a2@<X1>, BlueFin::GlSvIdSet *a3@<X3>, unsigned int a4@<W2>, uint64_t a5@<X8>)
{
  *(a5 + 12) = 0u;
  *a5 = a5 + 12;
  *(a5 + 8) = 19;
  *(a5 + 28) = 0u;
  *(a5 + 44) = 0u;
  *(a5 + 60) = 0u;
  *(a5 + 72) = 0u;
  v23 = *(a2 + 8);
  memcpy(v27, *a2, 4 * v23);
  v25 = 0;
  v24 = 0;
  v26 = v27[0];
  for (result = BlueFin::GlSetIterator::operator++(&v23); v24 != v23; result = BlueFin::GlSetIterator::operator++(&v23))
  {
    v22 = 0;
    v12 = v25;
    if (v25 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v13 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v25;
    v14 = *v13;
    v15 = v13[1];
    v19[0] = *v13;
    v20 = v15;
    v21 = v25;
    if (BlueFin::GlPeNavGnssMeasMgr::checkMeasEphValid(this, v19, a4, a3, &v22, v10, v11))
    {
      *(*a5 + ((v12 >> 3) & 0x1FFC)) |= 1 << v12;
    }

    else
    {
      v16 = *(this + 1);
      v19[0] = v14;
      v20 = v15;
      v21 = v12;
      v17 = v22;
      v18 = BlueFin::GlSignalIdArray::Get(*(v16 + 18792), v19);
      if (v18)
      {
        *(v18 + 272) = v17;
        *(v18 + 273) = v17;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeComputeZRH::Update@<X0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, int a4@<W3>, double *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *(a6 + 12) = 0u;
  *a6 = a6 + 12;
  *(a6 + 8) = 19;
  *(a6 + 28) = 0u;
  *(a6 + 44) = 0u;
  *(a6 + 60) = 0u;
  *(a6 + 72) = 0u;
  (*(*a1[533] + 96))(a1[533], a3);
  (*(*a1[533] + 104))(a1[533], a5);
  (*(*a1 + 56))(a1);
  bzero(*(a1[541] + 2480), ((4 * *(a1[541] + 2488) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  *v53 = &v53[12];
  v53[8] = 8;
  memset(&v53[12], 0, 32);
  BlueFin::GlSetBase::operator=((a1 + 6), v53);
  *(a1 + 60) = *&v53[12];
  *(a1 + 76) = *&v53[28];
  *v53 = &v53[12];
  v53[8] = 3;
  *&v53[12] = 0;
  *&v53[20] = 0;
  BlueFin::GlSetBase::operator=((a1 + 3), v53);
  *(a1 + 36) = *&v53[12];
  *(a1 + 11) = *&v53[20];
  v11 = a1[36];
  if (*(v11 + 8))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *v11 + v12;
      *v14 = 0;
      *(v14 + 8) = 0uLL;
      *(v14 + 24) = 0uLL;
      *(v14 + 40) = 0uLL;
      *(v14 + 56) = 0uLL;
      *(v14 + 72) = 0;
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = 0;
      ++v13;
      v12 += 104;
    }

    while (v13 < *(v11 + 8));
  }

  v15 = a1[536];
  v16 = v15[642];
  if (v16 <= 0xFF9222FE)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16;
  }

  v64 = &unk_2A1F11310;
  v65 = 0;
  v18 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  LOWORD(v66) = 1980;
  v19 = v18 / 0x15180 + 1;
  WORD1(v66) = v18 / 0x15180 + 1;
  BYTE4(v66) = 1;
  BYTE5(v66) = v18 / 0x15180 + 1;
  BYTE6(v66) = v18 % 0x15180 / 0xE10;
  HIBYTE(v66) = (2185 * (v18 - 3600 * ((1193047 * v18) >> 32))) >> 17;
  v67 = v18 - 60 * ((71582789 * v18) >> 32);
  if (v15[644])
  {
    BlueFin::GlPeTimeManager::GetTime(v15, 1, v48);
    *v53 = &unk_2A1F11310;
    *&v53[8] = 0;
    v20 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
    *&v53[16] = 1980;
    *&v53[18] = v20 / 0x15180 + 1;
    v53[20] = 1;
    v53[21] = v20 / 0x15180 + 1;
    v53[22] = v20 % 0x15180 / 0xE10;
    v53[23] = (2185 * (v20 - 3600 * ((1193047 * v20) >> 32))) >> 17;
    v53[24] = v20 - 60 * ((71582789 * v20) >> 32);
    BlueFin::GlPeGnssTime::GetUtc(v48, v53);
    v65 = *&v53[8];
    v66 = *&v53[16];
    LOWORD(v19) = *&v53[18];
    v67 = v53[24];
  }

  v21 = *a5;
  v22 = a5[2];
  v23 = v21 * 0.017453;
  *(a1 + 1087) = v23;
  *(a1 + 1088) = v22;
  *(a1 + 4356) = 0;
  BlueFin::GlPeUnbTropoModel::getZenithDelayValues_WAAS_Model(v15, v23, v22, v19, a1 + 1089, a1 + 1090);
  result = BlueFin::GlPeCachedAtmosDelays::KeepSet((a1 + 196), v16, a3);
  if (!**a3)
  {
    v30 = a3[8];
    if (v30 < 2)
    {
      goto LABEL_25;
    }

    v31 = v30 - 1;
    v32 = (*a3 + 4);
    while (!*v32++)
    {
      if (!--v31)
      {
        goto LABEL_25;
      }
    }
  }

  BlueFin::lla2ecef(a5, &v62);
  v59 = 0u;
  memset(v60, 0, sizeof(v60));
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  memset(v53, 0, 24);
  v61 = 0x4008000000000000;
  v54 = a7;
  v55 = a4 * 0.001;
  *&v53[24] = v62;
  *&v53[40] = v63;
  v49 = 0;
  v50 = v52;
  v51 = 8;
  memset(v52, 0, 32);
  *(a1 + 2) = 0;
  v43 = a3[8];
  memcpy(v47, *a3, 4 * v43);
  v45 = 0;
  v44 = 0;
  v46 = v47[0];
  for (result = BlueFin::GlSetIterator::operator++(&v43); v44 != v43; result = BlueFin::GlSetIterator::operator++(&v43))
  {
    v25 = v45;
    if (v45 >= 0x23Fu)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v42 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v45);
    if ((*&v50[(v42 >> 3) & 0x1C] >> (v42 & 0x1F)))
    {
      *(*a6 + ((v45 >> 3) & 0x1FFC)) |= 1 << v45;
    }

    else
    {
      v41 = 0;
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      if (!(*(*a1 + 24))(a1, &v42, v16, v53, v39, 1, 0, 0, 0))
      {
        *(*a6 + 4 * (v25 >> 5)) |= 1 << v25;
        *&v50[(v42 >> 3) & 0x1C] |= 1 << v42;
        if ((a2 & 1) == 0)
        {
          UraM = BlueFin::GlPeAsstMgr::GetUraM(a1[534], &v42, v26, v27);
          v29 = *&UraM;
          v38 = 0;
          (*(*a1[533] + 80))(a1[533], v39, &v62, a5, 0, v48, &v38 + 4, &v38);
          if (*&v38 > 0.0)
          {
            BlueFin::GlPeElAzCache::Add((a1 + 37), &v42, *&v38, *(&v38 + 1));
          }

          BlueFin::GlPeSatPosCache::AddToSatPosCache((a1 + 3), &v42, v39, v48, v29);
          (*(*a1 + 32))(a1, &v42, a5, v39, v17, *(&v38 + 1), *&v38);
        }
      }
    }
  }

LABEL_25:
  v34 = *(a1[536] + 2568);
  *v53 = &unk_2A1F11FE8;
  *&v53[8] = v34;
  *&v53[16] = a1 + 196;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return off_2A1F12000();
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeSatPos::Update(BlueFin::GlPeSatPos *this, const BlueFin::GlSignalIdSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, int a11, char a12, __int16 a13, __int16 a14, char a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int16 a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__src, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, uint64_t a48, uint64_t a49)
{
  a49 = *MEMORY[0x29EDCA608];
  v51 = *a2;
  LODWORD(v49) = *(*(this + 2214) + 2568);
  a17 = *(a2 + 8);
  memcpy(&a21, v51, 4 * a17);
  a19 = 0;
  a18 = 0;
  a20 = a21;
  result = BlueFin::GlSetIterator::operator++(&a17);
  if (a18 != a17)
  {
    v55 = v49;
    v56 = this + 40;
    v133 = this + 17512;
    v57 = v49 + 13500.0;
    *v54.i64 = v57 + 15000.0;
    if ((v49 - v57) <= 7500)
    {
      v58 = v49 + 13500.0;
    }

    else
    {
      v58 = v57 + 15000.0;
    }

    v53.i64[0] = 0x41B1DE784A000000;
    while (1)
    {
      if (a19 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v59 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a19);
      a16 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a19);
      v60 = *(this + 2213);
      LODWORD(a33) = 7;
      BYTE4(a33) = 0;
      BlueFin::GlPeSvIdConverter::SvId2Gnss((v60 + 119744), &a16, &a33, v53, v54);
      v61 = BYTE4(a33);
      if (BYTE4(a33) - 1 > 0x3E)
      {
        goto LABEL_70;
      }

      a10 = v59;
      vars0_4 = a33;
      a11 = a33;
      a12 = BYTE4(a33);
      vars8 = *(*(this + 2214) + 2568);
      if (vars8 > *(this + 2))
      {
        LOBYTE(a33) = *(this + 24);
        memcpy(&a33 + 8, *(this + 2), 4 * a33);
        WORD1(a33) = 0;
        BYTE1(a33) = 0;
        DWORD1(a33) = DWORD2(a33);
        while (1)
        {
          BlueFin::GlSetIterator::operator++(&a33);
          if (BYTE1(a33) == a33)
          {
            break;
          }

          if (((v55 - *&v56[192 * SWORD1(a33) + 24]) - 15000) <= 0xFFFF8ACF)
          {
            BlueFin::GlPeMiniEphMgr::remove((this + 8), SWORD1(a33));
          }
        }

        *(this + 2) = vars8;
      }

      if (v59 >= 0xBD)
      {
        DeviceFaultNotify("glpe_satpos.cpp", 454, "getMiniEphAndUpdateCache", "*rtSvID <= MAX_SVID");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 454, "*rtSvID <= MAX_SVID");
      }

      v62 = v133[v59];
      if (v62 > 0x5A)
      {
        goto LABEL_65;
      }

      v63 = &v56[192 * v133[v59]];
      v64 = (v55 - *(v63 + 3));
      if ((v64 + 15000) >= 0x6F55)
      {
        break;
      }

LABEL_70:
      result = BlueFin::GlSetIterator::operator++(&a17);
      if (a18 == a17)
      {
        goto LABEL_71;
      }
    }

    if ((v64 - 15000) >= 0xFFFF8AD0)
    {
      v131 = (v63 + 4);
      v132 = &v56[192 * v133[v59]];
      Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 2213) + 384), *(v63 + 1));
      if (Mgr)
      {
        v66 = Mgr;
        if ((*(*Mgr + 312))(Mgr, v132 + 8))
        {
          v67 = (*(*v66 + 112))(v66, v132 + 8, 1);
          v130 = v67;
          if (v67)
          {
            v68 = *(v132 + 48);
            v69 = *(v132 + 72);
            v70 = *(v132 + 96);
            v71 = *(v132 + 176);
            v72 = *(v132 + 24);
            v129 = *(v132 + 16);
            v73 = (*(*v67 + 152))(v67) - 1;
            if (v73 > 4)
            {
              v74 = 0;
            }

            else
            {
              v74 = dword_298A44620[v73];
            }

            v75 = (*(*v130 + 152))(v130);
            v76 = v72 + 15000.0;
            if (v129 != v74 || *(v132 + 12) != v75)
            {
              for (i = 0; i != 240; i += 80)
              {
                v82 = &a33 + i;
                *(v82 + 9) = 0;
                *v82 = 0uLL;
                *(v82 + 1) = 0uLL;
                *(v82 + 2) = 0uLL;
                *(v82 + 3) = 0uLL;
                *(v82 + 16) = 0;
              }

              BlueFin::GlPeGnssSatPosTriplet::GlPeGnssSatPosTriplet(&__src, *(this + 2213), *(this + 2214), *v131, *(v132 + 8), &a33, v76);
              if (__src == 1)
              {
                BlueFin::GlPeMiniEph::create(v132, v132, &a33, v76);
              }

              v77 = &v56[192 * v62];
              v83 = *(v132 + 48);
              v84 = *(v132 + 72);
              v85 = *(v132 + 96);
              v86 = *(v132 + 176);
              v87 = *(v132 + 16);
LABEL_37:
              v109 = vabdd_f64(v68, v83);
              v110 = vabdd_f64(v69, v84);
              v111 = vabdd_f64(v70, v85);
              v112 = vabdd_f64(v71, v86) * 299792458.0;
              v113 = v129 != 3;
              v114 = v87 == 3;
              if (v114)
              {
                v113 = 1;
              }

              v115 = 10.0;
              if (*v131 == 2 && v114)
              {
                v115 = 30.0;
              }

              if (!v113)
              {
                v115 = 100.0;
              }

              if (v109 <= v115 && v110 <= v115 && v111 <= v115 && v112 <= v115)
              {
                goto LABEL_70;
              }

              v128 = *(*(this + 2214) + 2568);
              v119 = BlueFin::GNSS2STR(*v131);
              GlCustomLog(14, "MiniEph:  lms:%u  SV:(%4s,%2d)  Model Update: Bad fit     DeltaCoeff:[%.0lf %.0lf %.0lf %.0lf]", v128, v119, v77[8], v109, v110, v111, v112);
              v120 = &v56[192 * v62];
              v121 = *(v132 + 16);
              if (v121 == 3)
              {
                if (!(*(*v130 + 184))(v130))
                {
                  BlueFin::GlPeAsstMgr::MarkSuspectedBadDecode(*(this + 2213), v131);
                  v123 = " BE Marked Bad!";
                  goto LABEL_62;
                }

                v120 = &v56[192 * v62];
                v121 = *(v132 + 16);
              }

              if (v129 != 2 && v121 != 2)
              {
                goto LABEL_63;
              }

              v122 = *(this + 2213);
              v123 = " LTO Marked Bad!";
              if ((*(v122 + 9060) & 4) == 0)
              {
                v124 = *v131;
                LOBYTE(a33) = v120[8];
                BlueFin::GlGnssSet::Add(v122 + 8000, v124, &a33);
                GlCustomLog(14, " LTO Marked Bad!");
LABEL_63:
                GlCustomLog(14, "\n");
                goto LABEL_64;
              }

LABEL_62:
              GlCustomLog(14, v123);
              goto LABEL_63;
            }

            *(&a37 + 1) = 0;
            a33 = 0u;
            a34 = 0u;
            a35 = 0u;
            a36 = 0u;
            LODWORD(a37) = 0;
            BlueFin::GlPeGnssSatPos::GlPeGnssSatPos(&__src, *(this + 2213), *(this + 2214), *v131, *(v132 + 8), &a33, v76 + 15000.0, 0.0);
            if (__src == 1)
            {
              v77 = &v56[192 * v62];
              *(v132 + 24) = *(v132 + 24) + 15000.0;
              v78 = a37;
              *(v132 + 12) = a37;
              v79 = v78 - 1;
              if (v79 > 4)
              {
                v80 = 0;
              }

              else
              {
                v80 = dword_298A44620[v79];
              }

              v87 = *(v132 + 16);
              if (v87 != v80)
              {
                DeviceFaultNotify("glpe_satpos.cpp", 289, "propagate", "m_eOrbitQual == rotSatPos.GetOrbitQuality()");
                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 289, "m_eOrbitQual == rotSatPos.GetOrbitQuality()");
              }

              v88 = *(v132 + 40);
              v89 = *(v132 + 32) - *&a33;
              *(v132 + 32) = a33;
              *(v132 + 40) = v89;
              v83 = v88 - v89;
              v90 = *(v132 + 56);
              v91 = *(v132 + 64);
              v92 = *(&a33 + 1);
              v93 = *&a34;
              *(v132 + 48) = v83;
              *(v132 + 56) = v92;
              v94 = v90 - v92;
              v95 = *(v132 + 88);
              v96 = *(v132 + 80) - v93;
              *(v132 + 80) = v93;
              *(v132 + 88) = v96;
              v85 = v95 - v96;
              v97 = *(v132 + 104);
              v98 = *(v132 + 112);
              v99 = *(&a34 + 1);
              v100 = *&a35;
              *(v132 + 96) = v85;
              *(v132 + 104) = v99;
              v101 = v97 - v99;
              *(v132 + 112) = v101;
              *(v132 + 120) = v98 - v101;
              v102 = *(v132 + 136);
              v103 = *(v132 + 128) - v100;
              *(v132 + 128) = v100;
              *(v132 + 136) = v103;
              v104 = v102 - v103;
              v105 = *(v132 + 152);
              v106 = *(v132 + 160);
              v107 = *(&a35 + 1);
              v86 = *&a36;
              *(v132 + 144) = v104;
              *(v132 + 152) = v107;
              v84 = v91 - v94;
              *(v132 + 64) = v94;
              *(v132 + 72) = v84;
              *(v132 + 160) = v105 - v107;
              *(v132 + 168) = v106 - (v105 - v107);
              v108 = *(v132 + 176) - v86;
              *(v132 + 176) = v86;
              *(v132 + 184) = v108;
              goto LABEL_37;
            }
          }
        }
      }
    }

LABEL_64:
    BlueFin::GlPeMiniEphMgr::remove((this + 8), v62);
LABEL_65:
    __src = &a32 + 4;
    LOBYTE(a32) = 3;
    *(&a32 + 4) = 0;
    HIDWORD(a32) = 0;
    BlueFin::GlSetBase::OperatorBinaryInversion(this + 16, &__src);
    LOBYTE(a33) = a32;
    memcpy(&a33 + 8, __src, 4 * a32);
    WORD1(a33) = 0;
    BYTE1(a33) = 0;
    DWORD1(a33) = DWORD2(a33);
    BlueFin::GlSetIterator::operator++(&a33);
    v125 = SWORD1(a33);
    if (SWORD1(a33) < 91)
    {
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
      a36 = 0u;
      a37 = 0u;
      a34 = 0u;
      a35 = 0u;
      a33 = 0u;
      if (v125 >= 0x5B)
      {
        DeviceFaultNotify("glpe_satpos.cpp", 970, "create", "iIndex >= 0 && iIndex < MAX_AID_SATS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 970, "iIndex >= 0 && iIndex < MAX_AID_SATS");
      }

      BlueFin::GlPeGnssSatPosTriplet::GlPeGnssSatPosTriplet(&__src, *(this + 2213), *(this + 2214), vars0_4, v61, &a33, v58);
      if (__src == 1)
      {
        BlueFin::GlPeMiniEph::create(&v56[192 * v125], &a10, &a33, v58);
        *(*(this + 2) + 4 * (v125 >> 5)) |= 1 << v125;
        v133[v59] = v125;
      }
    }

    else
    {
      v126 = BlueFin::GNSS2STR(vars0_4);
      GlCustomLog(14, "MiniEph:  lms:%u  SV:(%4s,%2d)  Slot:--  No slots available!\n", vars8, v126, v61);
    }

    goto LABEL_70;
  }

LABEL_71:
  v127 = *MEMORY[0x29EDCA608];
  return result;
}

double BlueFin::GlPeSatPosUtil::UpdateCe2n(uint64_t a1, double *a2)
{
  v4 = a2[1] * 0.0174532925;
  v5 = __sincos_stret(*a2 * 0.0174532925);
  v6 = __sincos_stret(v4);
  *a1 = -(v5.__sinval * v6.__cosval);
  *(a1 + 8) = -(v5.__sinval * v6.__sinval);
  *(a1 + 16) = v5.__cosval;
  *(a1 + 32) = -v6.__sinval;
  *(a1 + 40) = v6.__cosval;
  *(a1 + 48) = 0;
  *(a1 + 64) = -(v5.__cosval * v6.__cosval);
  *(a1 + 72) = -(v5.__cosval * v6.__sinval);
  *(a1 + 80) = -v5.__sinval;
  *(a1 + 128) = 0x300000003;
  *(a1 + 136) = *a2;
  result = a2[2];
  *(a1 + 152) = result;
  return result;
}

uint64_t BlueFin::GlPeCachedAtmosDelays::KeepSet(BlueFin::GlPeCachedAtmosDelays *this, int a2, const BlueFin::GlSignalIdSet *a3)
{
  BlueFin::GlSignalIdSet::GetSvIdSet(a3, v15);
  v5 = *this;
  if (*this)
  {
    v6 = 0;
    v7 = 0;
    v8 = v15[0];
    v9 = this + 8;
    result = *this;
    do
    {
      v11 = *v9 > 0xAu || ((1 << *v9) & 0x580) == 0;
      if (!v11 && ((v12 = v9[4], ((*(v8 + ((v12 >> 3) & 0x1C)) >> (v12 & 0x1F)) & 1) != 0) || (a2 - *(v9 - 1)) <= 0x927C0))
      {
        if (v6 != v7)
        {
          v13 = this + 24 * v7 + 4;
          *v13 = *(v9 - 4);
          v13[8] = v12;
          v14 = *(v9 + 5);
          *(v13 + 2) = *(v9 + 12);
          *(v13 + 9) = v14;
        }

        ++v7;
      }

      else
      {
        result = (result - 1);
      }

      ++v6;
      v9 += 24;
    }

    while (v5 != v6);
  }

  else
  {
    result = 0;
  }

  *this = result;
  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::GetSvIdSet@<X0>(unsigned __int8 *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0u;
  v2 = a2 + 12;
  *a2 = a2 + 12;
  *(a2 + 8) = 8;
  *(a2 + 28) = 0u;
  v3 = *this;
  v4 = this[8];
  if (!**this)
  {
    if (v4 < 2)
    {
      return this;
    }

    v6 = v4 - 1;
    v7 = v3 + 1;
    while (!*v7++)
    {
      if (!--v6)
      {
        return this;
      }
    }
  }

  v9 = this[8];
  memcpy(v13, v3, 4 * v4);
  v11 = 0;
  v10 = 0;
  v12 = v13[0];
  for (this = BlueFin::GlSetIterator::operator++(&v9); v10 != v9; this = BlueFin::GlSetIterator::operator++(&v9))
  {
    if (v11 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 587, "GetSvIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 587, "usIndex < NUM_SIGNAL_IDS");
    }

    v5 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v11);
    *(v2 + ((v5 >> 3) & 0x1C)) |= 1 << v5;
  }

  return this;
}

void BlueFin::ned2lla(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = a1[2];
  v7 = (v6 + 6367426.73) * 0.0174532925;
  v8 = *a1;
  v9 = cos(*a1 * 0.0174532925);
  v10 = v8 + *a2 / v7;
  v11 = a1[1] + a2[1] / (v7 * v9);
  *a3 = v10;
  a3[1] = v11;
  a3[2] = v6 - a2[2];
  v12 = 0x4056800000000000;
  if (v10 > 90.0 || (v12 = 0xC056800000000000, v10 < -90.0))
  {
    *a3 = v12;
  }

  v13 = -v11;
  if (v11 >= 0.0)
  {
    v13 = v11;
  }

  if (v13 > 180.0)
  {
    v14 = v11 / 360.0;
    if (v11 / 360.0 <= 0.0)
    {
      v15 = 0.0;
      if (v11 / 360.0 < 0.0)
      {
        v15 = ceil(v14 + -0.5);
      }
    }

    else
    {
      v15 = floor(v14 + 0.5);
    }

    a3[1] = v11 + v15 * -360.0;
  }
}

uint64_t BlueFin::GlPeKFAltAsst::Update(__int16 *a1, double *a2, double a3, float a4)
{
  if (*(a1 + 2) != 1)
  {
    v19 = 0;
    return v19 & 1;
  }

  if (*a1 == -1)
  {
    v10 = *a2;
LABEL_18:
    v16 = a2[1];
    goto LABEL_19;
  }

  v5 = (qword_2A18BACF8 + 12 * *a1);
  v6 = *v5;
  *&v7 = ((v6 >> 9) - 50);
  LOWORD(a4) = v5[1];
  v8 = *&v7 + (LODWORD(a4) * 0.0001);
  LOWORD(v7) = v5[3];
  v9 = v8 + (v7 * 0.0001);
  v10 = *a2;
  v11 = v8;
  v12 = v9;
  if (*a2 < v11 || v10 > v12)
  {
    goto LABEL_18;
  }

  LOWORD(v11) = v5[4];
  *&v11 = LODWORD(v11);
  LOWORD(v12) = v5[2];
  v14 = *v5 + (LODWORD(v12) * 0.0001);
  v15 = -v14;
  if ((v6 & 0x100) == 0)
  {
    v15 = v14;
  }

  v16 = a2[1];
  v17 = (v15 + (*&v11 * 0.0001));
  if (v16 >= v15 && v16 <= v17)
  {
    v19 = 1;
    return v19 & 1;
  }

LABEL_19:
  v20 = v10;
  v21 = v16;
  Region = BlueFin::GlPeLatLonRegionSet::findRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v20, v21);
  *a1 = Region;
  if (Region == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a1 + 2);
  }

  return v19 & 1;
}

uint64_t BlueFin::GlPeLatLonRegionSet::findRegion(BlueFin::GlPeLatLonRegionSet *this, float a2, float a3)
{
  v6 = a2;
  if (a2 > 0.0)
  {
    v7 = 0.5;
LABEL_6:
    v8 = (v6 + v7);
    goto LABEL_7;
  }

  if (a2 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:
  v9 = v8 - *(this + 10);
  if ((v9 & 0x8000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v10 >= *(this + 6))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(*(*this + 40))(this, v10);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *((*(*this + 40))(this, v10) + 2);
  if (v12 <= (v11 - 1))
  {
    return 0xFFFFFFFFLL;
  }

  result = (v11 - 1);
  for (i = (*(this + 2) + 12 * result + 4); ; i += 6)
  {
    v17 = *(i - 2);
    v18 = *(i - 2);
    LOWORD(v13) = *(i - 1);
    *&v19 = LODWORD(v13);
    v20 = ((v17 >> 9) - 50) + (*&v19 * 0.0001);
    LOWORD(v19) = i[1];
    v13 = v20 + (v19 * 0.0001);
    LOWORD(v14) = *i;
    v21 = LODWORD(v14);
    v22 = -(v18 + (v21 * 0.0001));
    if ((v17 & 0x100) == 0)
    {
      v22 = v18 + (v21 * 0.0001);
    }

    LOWORD(v21) = i[2];
    v14 = v22 + (LODWORD(v21) * 0.0001);
    v23 = v22 >= a3 || v14 <= a3;
    v24 = !v23 && v20 < a2;
    if (v24 && v13 > a2)
    {
      break;
    }

    if (v12 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeOscMgr::GlPeOscMgr(uint64_t result, uint64_t a2, double a3)
{
  *(result + 4) = 0;
  *(result + 8) = 0;
  v3 = a3 * 1000000000.0;
  if (v3 > 0.0)
  {
    v4 = 0.5;
LABEL_6:
    v5 = (v3 + v4);
    goto LABEL_7;
  }

  if (v3 < 0.0)
  {
    v4 = -0.5;
    goto LABEL_6;
  }

  LOWORD(v5) = 0;
LABEL_7:
  *(result + 12) = v5;
  *(result + 16) = a2;
  *(result + 2) = 0;
  *(result + 10) = v5;
  *(result + 14) = 0;
  *result = 0;
  *(result + 40) = 4287767295;
  *(result + 24) = 0;
  *(result + 28) = 0;
  *(result + 49) = 0;
  return result;
}

double BlueFin::GlPeAsstPosMgr::GlPeAsstPosMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0xC15B773FC0000000;
  *(a1 + 72) = &off_2A1F0B5F0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0xC15B773FC0000000;
  *(a1 + 224) = 0;
  *(a1 + 216) = &off_2A1F0B5F0;
  *(a1 + 248) = 0u;
  *(a1 + 288) = a2;
  *(a1 + 296) = a3;
  *(a1 + 304) = a4;
  *(a1 + 312) = 0;
  *(a1 + 314) = 0;
  *(a1 + 40) = 0xFFFFFFFF00000000;
  *(a1 + 136) = 0;
  *(a1 + 184) = 0xFFFFFFFF00000000;
  *(a1 + 280) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  return result;
}

uint64_t BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12, char a13, uint64_t a14)
{
  *a1 = &unk_2A1F0EF18;
  *(a1 + 8) = -257;
  *(a1 + 12) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = a9;
  *(a1 + 80) = a10;
  *(a1 + 96) = a11;
  *(a1 + 104) = a12;
  *(a1 + 360) = a1 + 372;
  *(a1 + 368) = 2;
  *(a1 + 372) = 0;
  *(a1 + 396) = 0;
  *(a1 + 384) = a1 + 396;
  *(a1 + 392) = 2;
  *(a1 + 420) = 0;
  *(a1 + 408) = a1 + 420;
  *(a1 + 416) = 2;
  *(a1 + 444) = 0;
  *(a1 + 432) = a1 + 444;
  *(a1 + 440) = 2;
  *(a1 + 456) = a13;
  *(a1 + 492) = 0;
  *(a1 + 464) = a14;
  *(a1 + 472) = 0x41EFFFFFFFE00000;
  *(a1 + 480) = a1 + 492;
  *(a1 + 488) = 2;
  *(a1 + 516) = 0;
  *(a1 + 504) = a1 + 516;
  *(a1 + 512) = 2;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = -1;
  *(a1 + 252) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 268) = 0u;
  BlueFin::GlPeEphemerisMgr::Clear(a1);
  return a1;
}

uint64_t BlueFin::GlPeGloEphMgr::GlPeGloEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *a1 = &unk_2A1F0FFF0;
  *(&v20 + 1) = a10;
  *&v20 = a8;
  v12 = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 2, a2, a3, a4, a5, a6, a7, v20, a11, 0, 24, 28, a1 + 560);
  *v12 = &unk_2A1F0FFF0;
  v12[68] = a9;
  v12[69] = *(&a11 + 1);
  v12[730] = v12 + 408;
  v12[731] = 0xFF9222FF00000000;
  v13 = v12 + 733;
  v14 = 2112;
  do
  {
    *(v13 - 8) = -1;
    *v13 = 0;
    v13 += 11;
    v14 -= 88;
  }

  while (v14);
  v15 = (a1 + 5864);
  v16 = 14;
  do
  {
    *(v15 - 8) = -1;
    *v15 = 0;
    v15 += 11;
    --v16;
  }

  while (v16);
  v17 = 0;
  v18 = 0;
  *(a1 + 7968) = 0;
  do
  {
    BlueFin::GlPeGloEphMgr::Stitcher::Stitcher(*(a1 + 5840) + v17, a1 + 5856, (v18++ - 7));
    v17 += 184;
  }

  while (v18 != 14);
  return a1;
}

uint64_t BlueFin::GlPeQzssEphMgr::GlPeQzssEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *a1 = &unk_2A1F0F908;
  v12 = a1 + 584;
  v13 = a1 + 588;
  v14 = a1 + 940;
  *&v26[24] = a11;
  *&v26[8] = a9;
  *v26 = a8;
  v15 = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 3, a2, a3, a4, a5, a6, a7, *v26, *&v26[16], a10, 10, 28, a1 + 952);
  *v15 = &unk_2A1F0F5A8;
  *(a1 + 544) = &unk_2A1F09610;
  *(a1 + 552) = v13;
  *(a1 + 560) = v14;
  *(a1 + 568) = v12;
  *(a1 + 576) = 88;
  *(a1 + 580) = 2561;
  *(a1 + 582) = 4;
  BlueFin::GlArray::Clear((v15 + 68));
  v16 = 0;
  *a1 = &unk_2A1F0F908;
  do
  {
    v17 = a1 + v16;
    *(v17 + 588) = 7;
    *(v17 + 592) = 0;
    *(v17 + 596) = -7200001;
    v18 = (a1 + v16 + 612);
    *v18 = 0uLL;
    v18[1] = 0uLL;
    v18[2] = 0uLL;
    v18[3] = 0uLL;
    *(v17 + 600) = 0;
    v16 += 88;
    *(v17 + 608) = 0;
  }

  while (v16 != 352);
  for (i = 0; i != 360; i += 36)
  {
    v20 = a1 + i;
    *(v20 + 2072) = -1;
    *(v20 + 2076) = -1;
    *(v20 + 2080) = 0uLL;
    *(a1 + i + 2095) = 0;
    *(v20 + 2100) = 0;
    *(v20 + 2104) = 0;
  }

  for (j = 0; j != 60; j += 6)
  {
    *(a1 + j + 2432) = -1;
    *(a1 + j + 2434) = 0;
  }

  for (k = 0; k != 360; k += 36)
  {
    v23 = a1 + k;
    *(v23 + 2072) = -1;
    *(v23 + 2076) = -1;
    *(v23 + 2080) = 0uLL;
    *(a1 + k + 2095) = 0;
    *(v23 + 2100) = 0;
    *(v23 + 2104) = 0;
  }

  for (m = 0; m != 60; m += 6)
  {
    *(a1 + m + 2072) = -1;
    *(a1 + m + 2074) = 0;
  }

  return a1;
}

void *BlueFin::GlPeBdsEphMgr::GlPeBdsEphMgr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a1 = &unk_2A1F0EAE0;
  *&v41[24] = a12;
  *&v41[8] = a10;
  *v41 = a8;
  result = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 4, a2, a3, a4, a5, a6, a7, *v41, *&v41[16], a11, 63, 28, (a1 + 69));
  *result = &unk_2A1F0EAE0;
  result[68] = a9;
  v13 = result + 953;
  v14 = result + 951;
  v15 = 1512;
  do
  {
    *(v13 - 2) = &unk_2A1F0EA90;
    *(v13 - 8) = 0;
    *v13 = 0;
    v13 += 3;
    v14 += 3;
    v15 -= 24;
  }

  while (v15);
  for (i = 0; i != 63; ++i)
  {
    result[i + 1140] = &unk_2A1F0EAB8;
  }

  v17 = 0;
  v18 = result + 819;
  v19 = vdup_n_s32(0xFF9222FF);
  do
  {
    v20 = &v18[v17];
    *(v20 + 3080) = 65;
    *(v20 + 3081) = 18;
    v21 = &result[v17];
    v21[1205] = &v18[v17 + 388];
    v22 = &result[v17 + 1207];
    v21[1206] = v19;
    v21[1215] = 0;
    *v22 = 0uLL;
    v22[1] = 0uLL;
    v22[2] = 0uLL;
    v22[3] = 0uLL;
    v17 += 13;
    v21[1203] = &unk_2A1F0E970;
  }

  while (v17 != 819);
  v23 = (result + 16180);
  v24 = 1260;
  do
  {
    *(v23 - 4) = -1;
    *v23 = 0;
    *(v23 + 5) = 0;
    v23 = (v23 + 20);
    v24 -= 20;
  }

  while (v24);
  v25 = result + 2180;
  v26 = 1260;
  do
  {
    *(v25 - 4) = -1;
    *v25 = 0;
    *(v25 + 5) = 0;
    v25 = (v25 + 20);
    v26 -= 20;
  }

  while (v26);
  v27 = 1;
  v28 = 952;
  v29 = 951;
  do
  {
    v30 = &result[v29];
    LOBYTE(result[v28]) = v27;
    *v30 = &unk_2A1F0EA90;
    v30[2] = result;
    ++v27;
    v28 += 3;
    v29 += 3;
  }

  while (v27 != 64);
  v31 = result + 1140;
  for (j = 1140; j != 1203; ++j)
  {
    result[j] = &unk_2A1F0EAB8;
    ++v31;
  }

  v33 = result + 1207;
  v34 = result + 1203;
  v35 = 63;
  v36 = vdup_n_s32(0xFF9222FF);
  do
  {
    *(v33 - 12) = 4673;
    *(v33 - 2) = v33;
    *(v33 - 1) = v36;
    *v33 = 0uLL;
    *(v33 + 1) = 0uLL;
    *(v33 + 2) = 0uLL;
    *(v33 + 3) = 0uLL;
    v33[8] = 0;
    *(v33 - 4) = &unk_2A1F0E970;
    v33 += 13;
    v34 += 13;
    --v35;
  }

  while (v35);
  v37 = (result + 16180);
  v38 = 63;
  do
  {
    *(v37 - 4) = -1;
    *v37 = 0;
    *(v37 + 5) = 0;
    v37 = (v37 + 20);
    --v38;
  }

  while (v38);
  v39 = result + 2180;
  v40 = 63;
  do
  {
    *(v39 - 4) = -1;
    *v39 = 0;
    *(v39 + 5) = 0;
    v39 = (v39 + 20);
    --v40;
  }

  while (v40);
  return result;
}

uint64_t BlueFin::GlPeObjFactory::MakeGalEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  if (*(a1 + 26) != 1)
  {
    return 0;
  }

  result = BlueFin::GlMemAlloc::glAllocateMemory(67, 7768, *a1);
  if (result)
  {
    result = BlueFin::GlPeGalEphMgr::GlPeGalEphMgr(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    *(a1 + 144) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoData::GlPeLtoData(uint64_t this)
{
  v1 = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1F103D0;
  *(this + 200) = this + 32;
  do
  {
    v2 = *(this + 200) + v1;
    *(v2 + 12) = 0;
    *v2 = v2 + 12;
    *(v2 + 8) = 2;
    v1 += 24;
  }

  while (v1 != 168);
  v3 = 0;
  *(this + 392) = this + 224;
  do
  {
    v4 = *(this + 392) + v3;
    *(v4 + 12) = 0;
    *v4 = v4 + 12;
    *(v4 + 8) = 2;
    v3 += 24;
  }

  while (v3 != 168);
  *(this + 416) = -7200001;
  return this;
}

BlueFin::GlPeLtoFileContentStorageMgr *BlueFin::GlPeLtoFileContentStorageMgr::GlPeLtoFileContentStorageMgr(BlueFin::GlPeLtoFileContentStorageMgr *this)
{
  v2 = this + 18432;
  *this = 0;
  v3 = this + 16;
  *(this + 614) = 0;
  bzero(this + 8, 0x988uLL);
  *(this + 308) = v3;
  BlueFin::GlPeLtoSlice::Clear(this + 2448);
  bzero(this + 2472, 0x720uLL);
  *(this + 1076) = 2;
  *(this + 539) = this + 2472;
  BlueFin::GlPeLtoSlice::Clear(this + 4296);
  bzero(this + 4320, 0x2F8uLL);
  *(this + 1272) = 3;
  *(this + 637) = this + 4320;
  BlueFin::GlPeLtoSlice::Clear(this + 5080);
  bzero(this + 5104, 0x12B4uLL);
  *(this + 2476) = 4;
  *(this + 1239) = this + 5104;
  BlueFin::GlPeLtoSlice::Clear(this + 9896);
  bzero(this + 9920, 0xAB0uLL);
  *(this + 3166) = 5;
  *(this + 1584) = this + 9920;
  BlueFin::GlPeLtoSlice::Clear(this + 12656);
  *(this + 18342) = 0;
  *(this + 2292) = 0;
  *(this + 18394) = 0;
  *(this + 2300) = 0;
  *v2 = 0;
  *(v2 + 4) = 0;
  *(v2 + 6) = 0;
  *(this + 2306) = 0;
  v4 = this + 18478;
  *(v2 + 12) = 0;
  v5 = 384;
  *(v2 + 28) = 0;
  do
  {
    *(v4 - 10) = -1;
    *(v4 - 6) = 0xFFFFFFFFLL;
    v4 += 12;
    v5 -= 12;
  }

  while (v5);
  v6 = v2 + 430;
  v7 = 120;
  do
  {
    *(v6 - 10) = -1;
    *(v6 - 6) = 0xFFFFFFFFLL;
    v6 += 12;
    v7 -= 12;
  }

  while (v7);
  v8 = v2 + 550;
  v9 = 756;
  do
  {
    *(v8 - 10) = -1;
    *(v8 - 6) = 0xFFFFFFFFLL;
    v8 += 12;
    v9 -= 12;
  }

  while (v9);
  v10 = v2 + 1306;
  v11 = 432;
  do
  {
    *(v10 - 10) = -1;
    *(v10 - 6) = 0xFFFFFFFFLL;
    v10 += 12;
    v11 -= 12;
  }

  while (v11);
  v12 = 0;
  v13 = this + 20192;
  do
  {
    v14 = &v13[v12];
    *(v14 - 28) = -1;
    *(v14 - 6) = -1;
    *&v13[v12] = 0;
    *(v14 + 1) = 0;
    *(v14 - 12) = 0;
    *(v14 - 20) = 0;
    v12 += 32;
    *(v14 - 5) = 0;
  }

  while (v12 != 1024);
  v15 = v2 + 2758;
  v16 = 128;
  do
  {
    *(v15 - 2) = -1;
    *v15 = 0;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  v17 = 0;
  v18 = this + 21344;
  do
  {
    v19 = &v18[v17];
    *(v19 - 28) = -1;
    *(v19 - 6) = -1;
    *&v18[v17] = 0;
    *(v19 + 1) = 0;
    *(v19 - 12) = 0;
    *(v19 - 20) = 0;
    v17 += 32;
    *(v19 - 5) = 0;
  }

  while (v17 != 320);
  v20 = v2 + 3206;
  v21 = 40;
  do
  {
    *(v20 - 2) = -1;
    *v20 = 0;
    v20 += 2;
    v21 -= 4;
  }

  while (v21);
  v22 = this + 21680;
  v23 = 1008;
  do
  {
    *(v22 - 4) = -1;
    *v22 = 0;
    *(v22 + 2) = 0;
    v22 += 16;
    v23 -= 16;
  }

  while (v23);
  v24 = this + 22688;
  v25 = 1008;
  do
  {
    *(v24 - 4) = -1;
    *v24 = 0;
    *(v24 + 2) = 0;
    v24 += 16;
    v25 -= 16;
  }

  while (v25);
  v26 = this + 23700;
  v27 = 1008;
  do
  {
    *(v26 - 8) = -1;
    *(v26 - 1) = -1;
    *v26 = 0;
    *(v26 + 1) = 0;
    *(v26 + 4) = 0;
    v26 += 28;
    v27 -= 28;
  }

  while (v27);
  *(this + 24795) = 0u;
  *(this + 6204) = 0;
  v29 = &v31;
  v30 = 3;
  v31 = -1;
  v32 = -1;
  BlueFin::GlPeLtoFileContentStorageMgr::Clear(this, &v29);
  return this;
}

uint64_t BlueFin::GlPeLtoSlice::Clear(uint64_t this)
{
  v1 = 0;
  v2 = 0;
  *this = 0;
  *(this + 4) = 0;
  while (1)
  {
    v3 = *(this + 8);
    v4 = v3 > 6 ? 0 : *&asc_298A406D0[8 * v3];
    if (v2 >= v4)
    {
      break;
    }

    v5 = (*(this + 16) + v1);
    *(v5 + 60) = 0uLL;
    v5[2] = 0uLL;
    v5[3] = 0uLL;
    *v5 = 0uLL;
    v5[1] = 0uLL;
    ++v2;
    v1 += 76;
  }

  return this;
}

uint64_t BlueFin::GlPeAlmMgr::GlPeAlmMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, unsigned __int8 a52, int a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  a58 = *MEMORY[0x29EDCA608];
  *(a1 + 64) = 0;
  *(a1 + 72) = "ALM";
  *(a1 + 432) = a1 + 96;
  *(a1 + 440) = a2;
  v59 = a1 + 34624;
  *(a1 + 448) = a3;
  *(a1 + 456) = a4;
  *(a1 + 464) = a5;
  *(a1 + 4064) = a1 + 480;
  *(a1 + 5216) = a1 + 4096;
  *(a1 + 7936) = a1 + 5248;
  *(a1 + 17216) = a1 + 16256;
  *(a1 + 19376) = a1 + 17248;
  *(a1 + 26448) = a1 + 19392;
  *(a1 + 26456) = &unk_2A1F0E840;
  *(a1 + 26464) = a1;
  *(a1 + 26480) = 2;
  *(a1 + 26504) = 2;
  *(a1 + 26484) = 0;
  *(a1 + 26472) = a1 + 26484;
  *(a1 + 26508) = 0;
  *(a1 + 26496) = a1 + 26508;
  *(a1 + 26520) = &unk_2A1F0E868;
  *(a1 + 26528) = a1;
  *(a1 + 34624) = a1 + 26560;
  *(a1 + 34632) = a1 + 30592;
  *(a1 + 34700) = 0;
  *(a1 + 34688) = a1 + 34700;
  *(a1 + 34696) = 2;
  *(a1 + 36288) = a1 + 34720;
  *(a1 + 36296) = 0;
  *(a1 + 36704) = a1 + 36320;
  *(a1 + 36720) = a1 + 36732;
  *(a1 + 36728) = 8;
  *(a1 + 36732) = 0u;
  *(a1 + 36748) = 0u;
  *(a1 + 36960) = a1 + 36768;
  *(a1 + 36968) = a1 + 36980;
  *(a1 + 36976) = 8;
  *(a1 + 36980) = 0u;
  *(a1 + 36996) = 0u;
  *(a1 + 36768) = 0u;
  *(a1 + 36784) = 0u;
  *(a1 + 36800) = 0u;
  *(a1 + 36816) = 0u;
  *(a1 + 36832) = 0u;
  *(a1 + 36848) = 0u;
  *(a1 + 36864) = 0u;
  *(a1 + 36880) = 0u;
  *(a1 + 36896) = 0u;
  *(a1 + 36912) = 0u;
  *(a1 + 36928) = 0u;
  *(a1 + 36940) = 0u;
  *(a1 + 37024) = 0;
  *(a1 + 37032) = a1 + 37044;
  *(a1 + 37040) = 8;
  *(a1 + 37044) = 0u;
  *(a1 + 37060) = 0u;
  *(a1 + 7944) = -7200001;
  bzero((a1 + 7948), 0x1B12uLL);
  bzero((a1 + 14880), 0x55CuLL);
  for (i = 0; i != 3584; i += 112)
  {
    v61 = *(a1 + 4064) + i;
    *(v61 + 104) = 7;
    *(v61 + 108) = 0;
    *v61 = -65536;
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *(v61 + 24) = 0uLL;
    *(v61 + 40) = 0uLL;
    *(v61 + 56) = 0uLL;
    *(v61 + 72) = 0uLL;
    *(v61 + 88) = 0;
    *(v61 + 92) = -1;
    *(v61 + 96) = 0;
  }

  for (j = 0; j != 1120; j += 112)
  {
    v63 = *(a1 + 5216) + j;
    *(v63 + 104) = 7;
    *(v63 + 108) = 0;
    *v63 = -65536;
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0uLL;
    *(v63 + 40) = 0uLL;
    *(v63 + 56) = 0uLL;
    *(v63 + 72) = 0uLL;
    *(v63 + 88) = 0;
    *(v63 + 92) = -1;
    *(v63 + 96) = 0;
  }

  for (k = 0; k != 960; k += 40)
  {
    v65 = *(a1 + 17216) + k;
    *(v65 + 32) = 0;
    *v65 = 0uLL;
    *(v65 + 16) = 0uLL;
  }

  for (m = 0; m != 2688; m += 112)
  {
    v67 = *(a1 + 7936) + m;
    *(v67 + 104) = 7;
    *(v67 + 108) = 0;
    *v67 = -65536;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    *(v67 + 24) = 0uLL;
    *(v67 + 40) = 0uLL;
    *(v67 + 56) = 0uLL;
    *(v67 + 72) = 0uLL;
    *(v67 + 88) = 0;
    *(v67 + 92) = -1;
    *(v67 + 96) = 0;
  }

  for (n = 0; n != 2128; n += 112)
  {
    v69 = *(a1 + 19376) + n;
    *(v69 + 104) = 7;
    *(v69 + 108) = 0;
    *v69 = -65536;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *(v69 + 24) = 0uLL;
    *(v69 + 40) = 0uLL;
    *(v69 + 56) = 0uLL;
    *(v69 + 72) = 0uLL;
    *(v69 + 88) = 0;
    *(v69 + 92) = -1;
    *(v69 + 96) = 0;
  }

  v70 = 0;
  v71 = 63;
  do
  {
    v72 = *(a1 + 26448) + v70;
    *(v72 + 104) = 7;
    *(v72 + 108) = 0;
    *v72 = -65536;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;
    *(v72 + 24) = 0uLL;
    *(v72 + 40) = 0uLL;
    *(v72 + 56) = 0uLL;
    *(v72 + 72) = 0uLL;
    *(v72 + 88) = 0;
    *(v72 + 92) = -1;
    v70 += 112;
    *(v72 + 96) = 0;
    --v71;
  }

  while (v71);
  for (ii = 0; ii != 4032; ii += 112)
  {
    v74 = *v59 + ii;
    *(v74 + 104) = 7;
    *(v74 + 108) = 0;
    *v74 = -65536;
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    *(v74 + 24) = 0uLL;
    *(v74 + 40) = 0uLL;
    *(v74 + 56) = 0uLL;
    *(v74 + 72) = 0uLL;
    *(v74 + 88) = 0;
    *(v74 + 92) = -1;
    *(v74 + 96) = 0;
  }

  for (jj = 0; jj != 4032; jj += 112)
  {
    v76 = *(v59 + 8) + jj;
    *(v76 + 104) = 7;
    *(v76 + 108) = 0;
    *v76 = -65536;
    *(v76 + 8) = 0;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0uLL;
    *(v76 + 40) = 0uLL;
    *(v76 + 56) = 0uLL;
    *(v76 + 72) = 0uLL;
    *(v76 + 88) = 0;
    *(v76 + 92) = -1;
    *(v76 + 96) = 0;
  }

  for (kk = 36; kk != 372; kk += 48)
  {
    v78 = (*(a1 + 432) + kk);
    *(v78 - 3) = 0;
    *(v78 - 36) = v78 - 3;
    *(v78 - 28) = 2;
    *(v78 - 12) = v78;
    *(v78 - 4) = 2;
    *v78 = 0;
  }

  for (mm = 0; mm != 384; mm += 64)
  {
    v80 = *(v59 + 2080) + mm;
    *(v80 + 8) = v80;
    *(v80 + 16) = 0;
    *(v80 + 24) = 0;
    *(v80 + 32) = 0;
    *(v80 + 40) = 0;
  }

  BlueFin::GlPeAlmMgr::Clear(a1);
  *(v59 + 16) = 0xFFFCFFFDFFFEFFFFLL;
  *(a1 + 34648) = 0;
  *(a1 + 34656) = 0;
  *(a1 + 34660) = -1;
  *(a1 + 34668) = -1;
  *(v59 + 88) = 0;
  *(v59 + 56) = 0;
  bzero(*(v59 + 64), ((4 * *(v59 + 72) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  for (nn = 0; nn != 168; nn += 24)
  {
    v82 = &v104 + nn;
    *&v106[nn] = 0;
    *v82 = &v106[nn];
    v82[8] = 2;
  }

  for (i1 = 0; i1 != 7; ++i1)
  {
    BlueFin::GlGnssSet::SetAll(&v104, i1);
  }

  BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a27, &v104);
  v84 = a51;
  for (i2 = a52; a51 != 6 || a52 != 14; i2 = a52)
  {
    a53 = v84;
    a54 = i2;
    v102 = v84;
    v103 = i2;
    DefaultAlm = BlueFin::GlPeAlmMgr::GetDefaultAlm(&v102);
    if (DefaultAlm)
    {
      v88 = *DefaultAlm;
      v89 = *(DefaultAlm + 1);
      v90 = *(DefaultAlm + 4);
      v91 = DefaultAlm[44];
      v92 = *(DefaultAlm + 23);
      v93 = *(DefaultAlm + 96);
      v94 = *(DefaultAlm + 12);
      v95 = *(DefaultAlm + 20);
      v96 = *(DefaultAlm + 28);
      v97 = *(DefaultAlm + 36);
      v104 = &unk_2A1F0E890;
      v105 = v88;
      v107 = v89;
      LODWORD(v108) = v90;
      vars0 = v94;
      if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        BlueFin::GlPeAlmanacData::SerializeImpl();
      }

      v98 = BlueFin::GNSS2STR(v84);
      GlCustomLog(14, "Serialize Hardcoded Almanac for:%s %02d\n", v98, i2);
    }

    BlueFin::GlGnssSetIterator::operator++(&a27);
    v84 = a51;
  }

  v100 = *MEMORY[0x29EDCA608];
  return a1;
}

void BlueFin::GlPeAlmMgr::Clear(BlueFin::GlPeAlmMgr *this)
{
  v2 = this + 26480;
  v3 = (*(this + 54) + 32);
  v4 = 7;
  do
  {
    bzero(*(v3 - 1), ((4 * *v3 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v3 - 4), ((4 * *(v3 - 24) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v3 += 48;
    --v4;
  }

  while (v4);
  *(this + 36712) = 0;
  bzero(*(this + 3309), ((4 * *v2 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v5 = *(this + 3312);
  v6 = ((4 * v2[24] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v5, v6);
}

uint64_t BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(uint64_t result, unsigned int a2, uint64_t a3)
{
  *result = &unk_2A1F09328;
  *(result + 8) = 0;
  *(result + 12) = a2;
  *(result + 14) = 0;
  *(result + 16) = a3;
  if (a2 - 161 <= 0xFFFFFF5F)
  {
    v5 = "ucMaxSignals > 0 && ucMaxSignals <= GL_MAX_SIG_AID_SIZE";
    DeviceFaultNotify("glmepeif_types.cpp", 89, "GlMeSignalAidInfo", "ucMaxSignals > 0 && ucMaxSignals <= GL_MAX_SIG_AID_SIZE");
    v6 = 89;
    goto LABEL_8;
  }

  if (!a3)
  {
    v5 = "pastSignalBuffer != 0";
    DeviceFaultNotify("glmepeif_types.cpp", 90, "GlMeSignalAidInfo", "pastSignalBuffer != 0");
    v6 = 90;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", v6, v5);
  }

  v3 = a2;
  v4 = (a3 + 4);
  do
  {
    *(v4 - 2) = 0;
    *v4 = 0;
    v4 += 2;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t BlueFin::GlPeReqBag::GlPeReqBag(uint64_t a1, BlueFin::GlSettingsImpl *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, BlueFin::GlPeTimeManager *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v23 = a1 + 20256;
  *(a1 + 576) = a2;
  *(a1 + 584) = a3;
  *(a1 + 592) = a5;
  *(a1 + 600) = a8;
  *(a1 + 608) = a9;
  *(a1 + 616) = a4;
  *(a1 + 624) = a1 + 636;
  *(a1 + 632) = 4;
  *(a1 + 636) = 0u;
  *(a1 + 1272) = &unk_2A1F09610;
  *(a1 + 1280) = a1 + 672;
  *(a1 + 1288) = a1 + 1072;
  *(a1 + 1296) = a1 + 1260;
  *(a1 + 1304) = 40;
  *(a1 + 1308) = -17407;
  *(a1 + 1310) = 10;
  BlueFin::GlArray::Clear(a1 + 1272);
  *(a1 + 1312) = 0;
  BlueFin::GlPeNmeaGen::GlPeNmeaGen((a1 + 1344), a2, a8);
  *(a1 + 3233) = 1;
  *(a1 + 3236) = a7;
  *(a1 + 3237) = 0;
  *(a1 + 3244) = 0;
  *(a1 + 3252) = -1;
  *(a1 + 3256) = 0;
  *(a1 + 3264) = 0;
  BlueFin::GlPeMeasStatus::GlPeMeasStatus(a1 + 3296, a1 + 20000);
  *(a1 + 20000) = a1 + 1344;
  *(a1 + 20008) = a8;
  *(a1 + 20016) = a11;
  *(a1 + 20024) = a5;
  *(a1 + 20032) = vaddq_s64(vdupq_n_s64(a5), xmmword_298A44A60);
  *(a1 + 20048) = a10;
  *(a1 + 20056) = a2;
  *(a1 + 20064) = a6;
  *(a1 + 20072) = a13;
  *(a1 + 20080) = a17;
  *(a1 + 20088) = a3;
  *(a1 + 20096) = a12;
  *(a1 + 20104) = a14;
  *(a1 + 20112) = a15;
  *(a1 + 20120) = a16;
  *v23 = 0;
  *(v23 + 432) = 0;
  *(a1 + 20640) = 0u;
  *(a1 + 20656) = 0;
  *(v23 + 412) = 0;
  *(a1 + 20660) = 0;
  *(a1 + 20673) = 0;
  *(v23 + 436) = 1;
  *(v23 + 440) = 0;
  *(v23 + 444) = 0;
  GlCustomLog(127, "Size,GlPeReqBag,%u\n", 20704);
  GlCustomLog(127, "Size of all request handlers %u\n", 4608);
  *(a1 + 1316) = -1;
  bzero(a1, 0x240uLL);
  *(a1 + 3234) = 0;
  *(a1 + 20260) = 0u;
  *(a1 + 20276) = 0u;
  *(a1 + 20292) = 0u;
  *(a1 + 20308) = 0u;
  *(a1 + 20324) = 0u;
  *(a1 + 20340) = 0u;
  *(a1 + 20356) = 0u;
  *(a1 + 20372) = 0u;
  *(a1 + 20388) = 0u;
  *(a1 + 20404) = 0u;
  *(a1 + 20420) = 0u;
  *(a1 + 20436) = 0u;
  *(a1 + 20452) = 0u;
  *(a1 + 20468) = 0u;
  *(a1 + 20484) = 0u;
  *(a1 + 20500) = 0u;
  *(a1 + 20516) = 0u;
  *(a1 + 20532) = 0u;
  *(a1 + 20548) = 0u;
  *(a1 + 20564) = 0u;
  *(a1 + 20580) = 0u;
  *(a1 + 20596) = 0u;
  *(a1 + 20612) = 0u;
  *(a1 + 20624) = 0u;
  *(a1 + 20240) = 0u;
  *(a1 + 20224) = 0u;
  *(a1 + 20208) = 0u;
  *(a1 + 20192) = 0u;
  *(a1 + 20176) = 0u;
  *(a1 + 20160) = 0u;
  *(a1 + 20144) = 0u;
  *(a1 + 20128) = 0u;
  *(a1 + 20640) = a1 + 20260;
  *(a1 + 20648) = 0;
  *(v23 + 400) = 0;
  *(v23 + 420) = 0;
  *(v23 + 412) = 0;
  *(a1 + 20660) = vdup_n_s32(0xBE0u);
  v24 = a1 + 13120;
  v25 = 20;
  *(v23 + 424) = 0;
  do
  {
    v28 = 0;
    BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v24, &v28, 0);
    v24 += 344;
    --v25;
  }

  while (v25);
  return a1;
}

uint64_t BlueFin::GL_FACT_TEST_STATUS_wrapper::init(uint64_t a1, unsigned __int8 *a2, char a3)
{
  *(a1 + 12) = *a2;
  *a1 = 0x800000008;
  *(a1 + 8) = 2;
  *(a1 + 14) = 0;
  *(a1 + 64) = 0;
  *(a1 + 232) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 98) = 0;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0xC069000000000000;
  *(a1 + 56) = 0;
  v3 = *a2;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  *(a1 + 276) = v4;
  if (v4 == 2)
  {
    v5 = (v3 - 59);
  }

  else
  {
    v5 = BlueFin::GlSvId::s_aucSvId2prn[v3];
  }

  *(a1 + 236) = 0uLL;
  result = a1 + 236;
  *(result + 44) = v5;
  *(result + 92) = 0;
  *(result + 96) = 0;
  *(result + 100) = 0;
  *(result + 16) = 0uLL;
  *(result + 32) = 0;
  *(result + 60) = 0;
  *(result + 52) = 0;
  *(result + 68) = 2;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 84) = a3;
  *(result + 85) = 0;
  return result;
}

uint64_t BlueFin::QHsm::ctor(uint64_t result, uint64_t a2)
{
  *(result + 8) = BlueFin::QHsm::top;
  *(result + 32) = a2;
  return result;
}

BlueFin::GlPeRtiRequestor *BlueFin::GlPeRtiRequestor::GlPeRtiRequestor(BlueFin::GlPeRtiRequestor *this, BlueFin::GlPeSvHealthMgr *a2, BlueFin::GlPeLtoMgr *a3, BlueFin::GlPeEngineCallBacks *a4, BlueFin::GlReqSm *a5, int a6)
{
  *this = &unk_2A1F10960;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = &unk_2A1F109B0;
  *(this + 8) = &unk_2A1F10900;
  *(this + 54) = a6;
  *(this + 5) = 0x271000000000;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  *(this + 6) = 0;
  *(this + 56) = 0;
  GlCustomLog(14, "GlPeRtiRequestHelper: RTICacheTO=%d\n", a6);
  *(this + 28) = a5;
  return this;
}

uint64_t BlueFin::GlPeObjFactory::MakeGloFcnOsnMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(66, 1280, *a1);
  if (!Memory)
  {
    return *(a1 + 104);
  }

  result = BlueFin::GlPeGloFcnOsnMgr::GlPeGloFcnOsnMgr(Memory, a2, a3, a4, a5);
  *(a1 + 104) = result;
  return result;
}

void *BlueFin::GlPeObjFactory::MakeSbasEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if (*(a1 + 27) != 1)
  {
    return 0;
  }

  result = BlueFin::GlMemAlloc::glAllocateMemory(62, 3952, *a1);
  if (result)
  {
    result = BlueFin::GlPeSbasMgr::GlPeSbasMgr(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    *(a1 + 112) = result;
  }

  return result;
}

uint64_t BlueFin::GlGnssSet::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    for (i = 12; i != 180; i += 24)
    {
      v5 = (*(a2 + 168) + i);
      v6 = (*(a1 + 168) + i);
      BlueFin::GlSetBase::operator=(v6 - 12, v5 - 12);
      *v6 = *v5;
    }
  }

  return a1;
}

uint64_t BlueFin::GlPeSvHealthMgr::GlPeSvHealthMgr(uint64_t a1, const BlueFin::GlSettingsImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2A1F10A90;
  BlueFin::GlPeSvHealthHelper::GlPeSvHealthHelper((a1 + 32), a2);
  v10 = 0;
  *(a1 + 2720) = a2;
  *(a1 + 2728) = a3;
  *(a1 + 2736) = a4;
  *(a1 + 2744) = a5;
  *(a1 + 2920) = a1 + 2752;
  do
  {
    v11 = *(a1 + 2920) + v10;
    *(v11 + 12) = 0;
    *v11 = v11 + 12;
    *(v11 + 8) = 2;
    v10 += 24;
  }

  while (v10 != 168);
  v12 = 0;
  *(a1 + 2944) = a1 + 2956;
  *(a1 + 2956) = 0u;
  *(a1 + 2972) = 0u;
  *(a1 + 2992) = a1 + 3004;
  *(a1 + 3004) = 0u;
  *(a1 + 3020) = 0u;
  *(a1 + 2952) = 8;
  *(a1 + 3000) = 8;
  *(a1 + 3048) = 8;
  *(a1 + 3040) = a1 + 3052;
  *(a1 + 3052) = 0u;
  *(a1 + 3068) = 0u;
  do
  {
    BlueFin::GlGnssSet::SetAll(a1 + 2752, v12++);
  }

  while (v12 != 7);
  return a1;
}

uint64_t *BlueFin::GlPeObjFactory::MakeBdIFMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 25) != 1)
  {
    return 0;
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(50, 23872, *a1);
  if (!Memory)
  {
    return *(a1 + 96);
  }

  result = BlueFin::GlPeBdIFMgr::GlPeBdIFMgr(Memory, a2, a3, a4, a5, a6);
  *(a1 + 96) = result;
  return result;
}

uint64_t BlueFin::GlPeGpsEphMgr::GlPeGpsEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v12 = a1 + 4096;
  *a1 = &unk_2A1F0F758;
  v13 = a1 + 584;
  v14 = a1 + 600;
  v15 = a1 + 2008;
  *&v29[24] = a11;
  *&v29[8] = a9;
  *v29 = a8;
  v16 = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 0, a2, a3, a4, a5, a6, a7, *v29, *&v29[16], a10, 32, 28, a1 + 2040);
  *v16 = &unk_2A1F0F5A8;
  *(a1 + 544) = &unk_2A1F09610;
  *(a1 + 552) = v14;
  *(a1 + 560) = v15;
  *(a1 + 568) = v13;
  *(a1 + 576) = 88;
  *(a1 + 580) = 8193;
  *(a1 + 582) = 16;
  BlueFin::GlArray::Clear((v16 + 68));
  v17 = 0;
  *a1 = &unk_2A1F0F758;
  do
  {
    v18 = a1 + v17;
    *(v18 + 600) = 7;
    *(v18 + 604) = 0;
    *(v18 + 608) = -7200001;
    v19 = (a1 + v17 + 612);
    *(v18 + 624) = 0uLL;
    *(v18 + 640) = 0uLL;
    *(v18 + 656) = 0uLL;
    *(v18 + 672) = 0uLL;
    *(v18 + 620) = 0;
    v17 += 88;
    *v19 = 0;
  }

  while (v17 != 1408);
  v20 = v12 + 1528;
  v21 = 1152;
  do
  {
    *v20 = -1;
    *(v20 + 4) = -1;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 23) = 0;
    *(v20 + 28) = 0;
    *(v20 + 32) = 0;
    v20 += 36;
    v21 -= 36;
  }

  while (v21);
  v22 = v12 + 2685;
  v23 = 192;
  do
  {
    *(v22 - 5) = -1;
    *(v22 - 3) = 0;
    v22 += 6;
    v23 -= 6;
  }

  while (v23);
  v24 = v12 + 1528;
  v25 = 32;
  do
  {
    *v24 = -1;
    *(v24 + 4) = -1;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *(v24 + 23) = 0;
    *(v24 + 28) = 0;
    *(v24 + 32) = 0;
    v24 += 36;
    --v25;
  }

  while (v25);
  v26 = v12 + 1533;
  v27 = 32;
  do
  {
    *(v26 - 5) = -1;
    *(v26 - 3) = 0;
    v26 += 6;
    --v27;
  }

  while (v27);
  return a1;
}

void BlueFin::GlPeEphemerisMgr::Clear(void **this)
{
  bzero(this[45], ((4 * *(this + 368) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(this[48], ((4 * *(this + 392) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(this[60], ((4 * *(this + 488) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(this[63], ((4 * *(this + 512) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(this[54], ((4 * *(this + 440) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(this[51], ((4 * *(this + 416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  this[59] = 0xC15B773FC0000000;
  if (*(this + 104))
  {
    v2 = 0;
    v3 = vdup_n_s32(0xFF9222FF);
    do
    {
      v5 = ++v2;
      WritableEphemerisObj = BlueFin::GlPeEphemerisMgr::GetWritableEphemerisObj(this, &v5);
      *(WritableEphemerisObj + 32) = 0u;
      *(WritableEphemerisObj + 16) = WritableEphemerisObj + 32;
      *(WritableEphemerisObj + 24) = v3;
      *(WritableEphemerisObj + 92) = 0u;
      *(WritableEphemerisObj + 64) = 0u;
      *(WritableEphemerisObj + 80) = 0u;
      *(WritableEphemerisObj + 48) = 0u;
      *WritableEphemerisObj = &unk_2A1F0F470;
      *(WritableEphemerisObj + 8) = 4976;
    }

    while (v2 < *(this + 104));
  }
}

uint64_t *BlueFin::GlPeGloEphemeris::PutCmpSignedField(BlueFin::GlPeGloEphemeris *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v14 = 0;
  BlueFin::GlBitBuffer::Initialize(v13, v5, v6);
  switch(a2)
  {
    case 4:
      BlueFin::GlBitBuffer::Position(v13, 0);
      v7 = a3 + 32;
      goto LABEL_10;
    case 11:
      BlueFin::GlBitBuffer::Position(v13, 0x8Fu);
      if (a3 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = 1024 - a3;
      }

      v9 = 11;
      return BlueFin::GlBitBuffer::PutU(v13, v7, v9);
    case 12:
      BlueFin::GlBitBuffer::Position(v13, 0xD5u);
      if (a3 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = 0x200000 - a3;
      }

      v9 = 22;
      return BlueFin::GlBitBuffer::PutU(v13, v7, v9);
    case 13:
      v11 = 48;
      goto LABEL_20;
    case 14:
      v11 = 115;
      goto LABEL_20;
    case 15:
      v11 = 186;
LABEL_20:
      BlueFin::GlBitBuffer::Position(v13, v11);
      if (a3 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = 0x4000000 - a3;
      }

      v9 = 27;
      return BlueFin::GlBitBuffer::PutU(v13, v7, v9);
    case 16:
      v10 = 19;
      goto LABEL_29;
    case 17:
      v10 = 86;
      goto LABEL_29;
    case 18:
      v10 = 157;
LABEL_29:
      BlueFin::GlBitBuffer::Position(v13, v10);
      if (a3 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = 0x800000 - a3;
      }

      v9 = 24;
      return BlueFin::GlBitBuffer::PutU(v13, v7, v9);
    case 19:
      v8 = 43;
      goto LABEL_7;
    case 20:
      v8 = 110;
      goto LABEL_7;
    case 21:
      v8 = 181;
      goto LABEL_7;
    case 28:
      v8 = 235;
LABEL_7:
      BlueFin::GlBitBuffer::Position(v13, v8);
      if (a3 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = 16 - a3;
      }

LABEL_10:
      v9 = 5;
      return BlueFin::GlBitBuffer::PutU(v13, v7, v9);
    default:
      DeviceFaultNotify("glpe_glnephmgr.cpp", 597, "PutCmpSignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 597, "0");
  }
}

uint64_t BlueFin::GlPeLtoData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    BlueFin::GlGnssSet::operator=(a1 + 32, a2 + 32);
    BlueFin::GlGnssSet::operator=(a1 + 224, a2 + 224);
    *(a1 + 416) = *(a2 + 416);
  }

  return a1;
}

double BlueFin::GlPeIonoMgr::Clear(BlueFin::GlPeIonoMgr *this)
{
  *(this + 48480) = 0;
  *(this + 48504) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 39) = 0;
  return result;
}

unint64_t BlueFin::GlPeEphemerisMgr::GetWritableEphemerisObj(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2 || *(a1 + 104) < v2)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1202, "GetWritableEphemerisObj", "*rotGnssId >= MIN_GNSS_ID && *rotGnssId < m_ucMaxEphSVs + MIN_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1202, "*rotGnssId >= MIN_GNSS_ID && *rotGnssId < m_ucMaxEphSVs + MIN_GNSS_ID");
  }

  return *(a1 + 464) + 4 * (v2 - 1) * *(a1 + 456);
}

uint64_t BlueFin::GlBitBuffer::Initialize(uint64_t this, unsigned int *a2, int a3)
{
  if ((a3 & 3) != 0)
  {
    DeviceFaultNotify("glutl_bitbuffer.cpp", 67, "Initialize", "(ulChars & 0x03) == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", 67, "(ulChars & 0x03) == 0");
  }

  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 36) = 0;
  *(this + 24) = (8 * a3);
  *(this + 20) = 8 * a3;
  *(this + 40) = 0;
  return this;
}

void BlueFin::GlPeTimeManager::makeConversionTable(BlueFin::GlPeTimeManager *this, int a2, double *a3)
{
  v91 = *MEMORY[0x29EDCA608];
  v69[1] = 0;
  v70 = 0;
  v71 = -1;
  v72 = xmmword_298A3BA20;
  v69[0] = &off_2A1F0B5F0;
  v68[1] = 0;
  v68[0] = &off_2A1F0E480;
  v67[1] = 0;
  v67[0] = &off_2A1F0E4D0;
  v66[1] = 0;
  v66[0] = &off_2A1F0DFC8;
  v6 = *(this + 644);
  if (v6)
  {
    BlueFin::GlPeTimeManager::GetTime(this, 1, &v83);
    v70 = v83.n128_u64[0];
    v71 = v83.n128_u32[2];
    v72 = v84;
    BlueFin::GlPeGnssTime::GetGps(&v70, v69);
    BlueFin::GlPeGnssTime::GetGal(&v70, v68);
    BlueFin::GlPeGnssTime::GetBds(&v70, v67);
    BlueFin::GlPeGnssTime::GetNic(&v70, v66);
  }

  v7 = *(this + 2589);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  memset_pattern16(&__b, &unk_298A45D10, 0x3CuLL);
  v77 = 1140457472;
  if (*(this + 400) == 1)
  {
    v8.i64[0] = *(this + 51);
    *(&v85 + 1) = v8.i64[0];
    v77 = 981668463;
  }

  if (!v7)
  {
    v74 = 1140457472;
    *v8.i8 = vdup_n_s32(0x43FA0000u);
    v80 = v8.i64[0];
    v81 = 1140457472;
    if (!v6)
    {
      v75 = 500.0;
      goto LABEL_20;
    }

    if (*(this + 34) && !BlueFin::GlPeGpsTimeMgr::isExpired((this + 64), v69))
    {
      *v8.i64 = BlueFin::GlPeGpsTimeMgr::GetGps2UtcSysOffsetS((this + 64), v69);
      v83.n128_u64[1] = v8.i64[0];
      v74 = 981668463;
    }

    if (*(this + 590))
    {
      *v8.i64 = -BlueFin::GlPeGalTimeMgr::GetGal2UtcSysOffsetS((this + 2336), v68, v8, v9);
      *(&v87 + 1) = v8.i64[0];
      v8.i32[0] = 981668463;
      v9.i32[0] = 1333788672;
      if (!*(this + 590))
      {
        *v8.i32 = 4295000000.0;
      }

      LODWORD(v80) = v8.i32[0];
    }

    if ((*(this + 2152) & 0x40) != 0)
    {
      BlueFin::GlPeBdsTimeMgr::GetBds2UtcSysOffsetS(this + 2144, v67);
      *v8.i64 = -*v8.i64;
      *&v88 = v8.i64[0];
      if ((*(this + 2152) & 0x40) != 0)
      {
        v8.i32[0] = 981668463;
        v9.i32[0] = 1140457472;
        if (!*(this + 1094))
        {
          *v8.i32 = 500.0;
        }
      }

      else
      {
        v8.i32[0] = 1333788672;
      }

      HIDWORD(v80) = v8.i32[0];
    }

    if (*(this + 618))
    {
      *v8.i64 = -BlueFin::GlPeNicTimeMgr::GetNic2UtcSysOffsetS((this + 2440), v66, v8, v9);
      *(&v88 + 1) = v8.i64[0];
      v8.i32[0] = 981668463;
      v9.i32[0] = 1333788672;
      if (!*(this + 618))
      {
        *v8.i32 = 4295000000.0;
      }

      v81 = v8.i32[0];
    }

    v75 = 500.0;
LABEL_30:
    v13 = 0.0;
    v14 = 0.0;
    if (*(this + 602))
    {
      v14 = -BlueFin::GlPeGalTimeMgr::GetGal2GpsSysOffsetS((this + 2336), v68, v8, v9);
      *&v84 = v14;
      if (!*(this + 602) || *(this + 1210) == -1 && *(this + 1211) == -1 && *(this + 2424) == 255 && *(this + 2425) == 63)
      {
        *&v15 = 4295000000.0;
      }

      else
      {
        *&v15 = 0.001;
      }

      v75 = *&v15;
    }

    v76.i32[0] = 1140457472;
    if ((*(this + 2152) & 4) != 0)
    {
      BlueFin::GlPeBdsTimeMgr::GetBds2GpsSysOffsetS(this + 2144, v67);
      v13 = -v16;
      *(&v84 + 1) = -v16;
      if ((*(this + 2152) & 4) != 0)
      {
        if (*(this + 1114))
        {
          v11 = 0.001;
        }

        else
        {
          v11 = 500.0;
        }
      }

      else
      {
        v11 = 4295000000.0;
      }

      *v76.i32 = v11;
    }

    else
    {
      v11 = 500.0;
    }

    v76.i32[1] = 1140457472;
    if (*(this + 630))
    {
      v10 = -BlueFin::GlPeNicTimeMgr::GetNic2GpsSysOffsetS((this + 2440), v66);
      *&v85 = v10;
      if (*(this + 630))
      {
        v17 = BlueFin::GlPeNicGpsOffsetData::ModelValid((this + 2512));
        v18 = 4295000000.0;
        if (v17)
        {
          v18 = 0.001;
        }
      }

      else
      {
        v18 = 4295000000.0;
      }

      *&v76.i32[1] = v18;
      v12 = v18 + 0.001;
      if (v7)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v10 = 0.0;
      v12 = 500.0;
      if (v7)
      {
        goto LABEL_66;
      }
    }

LABEL_56:
    __b = 1140457472;
    v78 = vdup_n_s32(0x43FA0000u);
    if (*(this + 344) == 1)
    {
      v19 = *(this + 44);
      __b = 981668463;
      v83.n128_f64[0] = -v19;
      v20 = v11 + 0.001;
      *v78.i32 = v75 + 0.001;
      *&v78.i32[1] = v11 + 0.001;
      *&v86 = v14 + v19;
      *(&v86 + 1) = v13 + v19;
      *&v87 = v10 + v19;
      v79 = v12;
      if ((v11 + 0.001) <= 0.005)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v20 = 500.0;
    }

    if ((*(this + 2152) & 8) != 0)
    {
      v21 = *(this + 1134) ? 0.001 : 500.0;
      if (v20 > v21)
      {
        BlueFin::GlPeBdsTimeMgr::GetBds2GloSysOffsetS(this + 2144, v67);
        *(&v86 + 1) = -v22;
        *&v78.i32[1] = v21;
        v11 = *v76.i32;
      }
    }

    goto LABEL_66;
  }

  v75 = 500.0;
  if (v6)
  {
    goto LABEL_30;
  }

LABEL_20:
  v76 = vdup_n_s32(0x43FA0000u);
  v10 = 0.0;
  v11 = 500.0;
  v12 = 500.0;
  v13 = 0.0;
  v14 = 0.0;
  if (!v7)
  {
    goto LABEL_56;
  }

LABEL_66:
  *&v89 = v13 - v14;
  v82 = v75 + v11;
  if ((*(this + 2152) & 0x10) != 0)
  {
    BlueFin::GlPeBdsTimeMgr::GetBds2GalSysOffsetS(this + 2144, v67);
    *&v89 = -v23;
    if ((*(this + 2152) & 0x10) != 0)
    {
      v24 = 0.001;
      if (!*(this + 1154))
      {
        v24 = 500.0;
      }
    }

    else
    {
      v24 = 4295000000.0;
    }

    v82 = v24;
  }

  v25 = 0;
  v26 = (this + 3040);
  v27 = *(this + 801);
  v28 = (this + 2920);
  do
  {
    v29 = *v26;
    if (*v26 != 4295000000.0)
    {
      v30 = *v28;
LABEL_75:
      v83.n128_u64[v25] = v30;
      *(&__b + v25) = v29;
      goto LABEL_76;
    }

    v29 = v26[72];
    if (v29 != 4295000000.0 && v29 < *(&__b + v25))
    {
      v30 = v28[36];
      goto LABEL_75;
    }

LABEL_76:
    if (((v27 >> v25) & 1) != 0 && v7 && *(&__b + v25) < 2000000.0)
    {
      *(&__b + v25) = 1240736768;
    }

    ++v25;
    ++v28;
    ++v26;
  }

  while (v25 != 15);
  v31 = *(this + 654);
  if (v31 != -1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = *(this + 654);
    v36 = 8;
    v37 = 10;
    v38 = 1;
    v39 = 5;
    v40 = 10;
    do
    {
      if (v34 <= 4)
      {
        v41 = v34 + v33 + (v32 >> 1);
        v42 = v31 - v34 + (((11 - v34) * v34) >> 1);
        if (v35 <= v34)
        {
          LOBYTE(v42) = (((11 - v35) * v35) >> 1) - v31 + v34;
        }

        v43 = (v42 - 1);
        v44 = v38;
        v45 = v37;
        v46 = v36;
        v47 = v39;
        v48 = v34;
        do
        {
          ++v48;
          if (v31 != v34 && v31 + v47 != 6 && v34 != 2 && v47 != 4)
          {
            v49 = *(&__b + v41);
            if (v49 != 4295000000.0)
            {
              v50 = *(&__b + v43);
              if (v50 != 4295000000.0)
              {
                v51 = v31 - 1 + v47 + (v45 >> 1) - 5;
                if (v35 < v44)
                {
                  LOBYTE(v51) = (((11 - v35) * v35) >> 1) - v31 + v48;
                }

                v52 = v49 + v50;
                v53 = (v51 - 1);
                v54 = *(&__b + v53);
                if (v54 == 4295000000.0 || v54 > v52)
                {
                  v56 = v83.n128_f64[v43];
                  if (v35 <= v34)
                  {
                    v56 = -v56;
                  }

                  v83.n128_f64[v53] = v83.n128_f64[v41] - v56;
                  *(&__b + v53) = v52;
                }
              }
            }
          }

          LOBYTE(v41) = v41 + 1;
          v45 += v46;
          v46 -= 2;
          ++v44;
          --v47;
        }

        while (v47);
      }

      ++v34;
      --v33;
      v32 += v40;
      v40 -= 2;
      --v39;
      v37 += v36;
      v36 -= 2;
      ++v38;
    }

    while (v34 != 6);
  }

  v57 = a3 + 6;
  v58 = -6;
  do
  {
    if (v58 - a2 == -6)
    {
      v59 = 0;
      v60 = 0.0;
    }

    else
    {
      v61 = v58 + 6;
      if (v58 + 6 >= a2)
      {
        v62 = a2;
      }

      else
      {
        v62 = v58 + 6;
      }

      if (v61 <= a2)
      {
        v61 = a2;
      }

      v63 = v61 + ~v62 + (11 - v62) * v62 / 2;
      v60 = -v83.n128_f64[v63];
      if (v58 + 6 >= a2)
      {
        v60 = v83.n128_f64[v63];
      }

      v59 = *(&__b + v63);
    }

    *a3++ = v60;
    *v57++ = v59;
  }

  while (!__CFADD__(v58++, 1));
  v65 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlPeTimeManager::updateConversionTable(BlueFin::GlPeTimeManager *this)
{
  BlueFin::GlPeTimeManager::makeConversionTable(this, *(this + 654), this + 330);
  *(this + 2716) = 1;
  BlueFin::GlPeTimeManager::cacheGnssTime(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {

    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xA7);
  }
}

void BlueFin::GlPeLtoFileContentStorageMgr::Clear(uint64_t a1, int **a2)
{
  v52 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 24812);
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = *a2;
  v6 = **a2;
  if ((v6 & 4) != 0)
  {
    v7 = 0;
    while (v7 > 2)
    {
      v8 = a1 + 5080;
      if (v7 == 3)
      {
        goto LABEL_10;
      }

      v8 = a1 + 9896;
      if (v7 == 4)
      {
        goto LABEL_10;
      }

      if (v7 == 5)
      {
        v8 = a1 + 12656;
LABEL_10:
        BlueFin::GlPeLtoSlice::Clear(v8);
      }

LABEL_11:
      if (++v7 == 7)
      {
        v5 = *a2;
        v6 = **a2;
        goto LABEL_13;
      }
    }

    v8 = a1 + 2448;
    if (v7)
    {
      v8 = a1 + 4296;
      if (v7 != 2)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_13:
  if ((v6 & 0x10) != 0)
  {
    v10 = 0;
    v46 = a1 + 12680;
    v47 = 32;
    v48 = a1 + 14600;
    v49 = 10;
    v50 = a1 + 14960;
    v51 = 63;
    do
    {
      v11 = &v46 + 2 * v10;
      v12 = *(v11 + 4);
      if (*(v11 + 4))
      {
        v13 = 0;
        v14 = *v11;
        do
        {
          v15 = v14 + 36 * v13;
          *(v15 + 32) = 0;
          *v15 = 0uLL;
          *(v15 + 16) = 0uLL;
          *v15 = -1;
          ++v13;
        }

        while (v12 > v13);
      }

      ++v10;
    }

    while (v10 != 3);
    for (i = 0; i != 864; i += 24)
    {
      v17 = (a1 + 17228 + i);
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      *v17 = -1;
    }

    bzero((a1 + 13832), 0x300uLL);
    *(a1 + 18316) = 0;
    *(a1 + 18284) = 0u;
    *(a1 + 18300) = 0u;
    *(a1 + 18252) = 0u;
    *(a1 + 18268) = 0u;
    *(a1 + 18220) = 0u;
    *(a1 + 18236) = 0u;
    *(a1 + 18188) = 0u;
    *(a1 + 18204) = 0u;
    *(a1 + 18156) = 0u;
    *(a1 + 18172) = 0u;
    *(a1 + 18124) = 0u;
    *(a1 + 18140) = 0u;
    *(a1 + 18092) = 0u;
    *(a1 + 18108) = 0u;
    *(a1 + 18342) = 0;
    v18 = v4[1];
    *(a1 + 18336) = 0;
    *(a1 + 18328) = 0;
    *(a1 + 18320) = 0;
    v19 = v18 & 0xFFFFF800;
    *(a1 + 18352) = 0u;
    *(a1 + 18368) = 0u;
    *(a1 + 18384) = 0u;
    *(a1 + 18400) = 0u;
    *(a1 + 18416) = 0u;
    *(a1 + 18432) = 0u;
    *(a1 + 18464) = 0;
    v20 = a1 + 20194;
    v4[1] = v19;
    v21 = 32;
    *(a1 + 18448) = 0u;
    do
    {
      *(v20 - 30) = -1;
      *(v20 - 26) = -1;
      *(v20 - 2) = 0;
      *(v20 - 14) = 0;
      *(v20 - 22) = 0;
      *(v20 - 7) = 0;
      v20 += 32;
      --v21;
    }

    while (v21);
    v22 = v4[1];
    v23 = (a1 + 21190);
    v24 = 32;
    do
    {
      *(v23 - 2) = -1;
      *v23 = 0;
      v23 += 2;
      --v24;
    }

    while (v24);
    v25 = a1 + 23700;
    v26 = 36;
    do
    {
      *(v25 - 8) = -1;
      *(v25 - 4) = -1;
      *v25 = 0;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      v25 += 28;
      --v26;
    }

    while (v26);
    v4[1] = v22 & 0xFEFAFFFF;
    v27 = a1 + 21346;
    v28 = 10;
    do
    {
      *(v27 - 30) = -1;
      *(v27 - 26) = -1;
      *(v27 - 2) = 0;
      *(v27 - 14) = 0;
      *(v27 - 22) = 0;
      *(v27 - 7) = 0;
      v27 += 32;
      --v28;
    }

    while (v28);
    v29 = v4[1];
    v30 = (a1 + 21638);
    v31 = 10;
    do
    {
      *(v30 - 2) = -1;
      *v30 = 0;
      v30 += 2;
      --v31;
    }

    while (v31);
    v4[1] = v29 & 0xFFD7FFFF;
    v32 = a1 + 21680;
    v33 = 63;
    do
    {
      *(v32 - 4) = -1;
      *v32 = 0;
      *(v32 + 8) = 0;
      v32 += 16;
      --v33;
    }

    while (v33);
    v4[1] &= ~0x400000u;
    v34 = a1 + 22688;
    v35 = 63;
    do
    {
      *(v34 - 4) = -1;
      *v34 = 0;
      *(v34 + 8) = 0;
      v34 += 16;
      --v35;
    }

    while (v35);
    v36 = v4[1] & 0xF37FFFFF;
    *(a1 + 24700) = 0u;
    *(a1 + 24716) = 0u;
    *(a1 + 24732) = 0u;
    *(a1 + 24748) = 0u;
    *(a1 + 24764) = 0u;
    *(a1 + 24779) = 0u;
    v4[1] = v36;
    v5 = *a2;
    v6 = **a2;
    if ((v6 & 8) == 0)
    {
LABEL_15:
      if ((v6 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_50:
      *(a1 + 24795) = 0u;
      if ((**a2 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_15;
  }

  v37 = 32;
  v38 = a1 + 18478;
  do
  {
    *(v38 - 10) = -1;
    *(v38 - 6) = 0xFFFFFFFFLL;
    v38 += 12;
    --v37;
  }

  while (v37);
  v39 = v4[1];
  v40 = a1 + 18862;
  v41 = 10;
  do
  {
    *(v40 - 10) = -1;
    *(v40 - 6) = 0xFFFFFFFFLL;
    v40 += 12;
    --v41;
  }

  while (v41);
  v42 = a1 + 18982;
  v43 = 63;
  do
  {
    *(v42 - 10) = -1;
    *(v42 - 6) = 0xFFFFFFFFLL;
    v42 += 12;
    --v43;
  }

  while (v43);
  v44 = a1 + 19738;
  v45 = 36;
  do
  {
    *(v44 - 10) = -1;
    *(v44 - 6) = 0xFFFFFFFFLL;
    v44 += 12;
    --v45;
  }

  while (v45);
  *(a1 + 20160) = 0;
  v4[1] = v39 & 0xFFFF07FF;
  v6 = *v5;
  if (*v5)
  {
    goto LABEL_50;
  }

LABEL_16:
  if ((v6 & 2) != 0)
  {
LABEL_17:
    *v4 = 0;
  }

LABEL_18:
  v9 = *MEMORY[0x29EDCA608];
}

const char *BlueFin::GNSS2STR(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "GPS";
    }

    if (a1 == 1)
    {
      return "SBAS";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "GLNS";
      case 3:
        return "QZSS";
      case 4:
        return "BDS";
    }
  }

  v2 = "<->";
  if (a1 == 6)
  {
    v2 = "NIC";
  }

  if (a1 == 5)
  {
    return "GAL";
  }

  else
  {
    return v2;
  }
}

BlueFin::GlPePlatfStatMgr *BlueFin::GlPePlatfStatMgr::GlPePlatfStatMgr(BlueFin::GlPePlatfStatMgr *this)
{
  *(this + 77) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 84) = -180;
  *(this + 48) = 0;
  *(this + 196) = 0;
  *(this + 170) = 0;
  *(this + 174) = 0;
  *(this + 22) = 0;
  *(this + 181) = 0;
  *(this + 236) = 0u;
  v2 = this + 236;
  *(this + 50) = 1148829696;
  *(this + 204) = xmmword_298A44A10;
  *(this + 332) = 0;
  *(this + 220) = 0;
  *(this + 225) = 0;
  *(this + 252) = 0u;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 313) = 0u;
  *(this + 512) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 404) = 0u;
  *(this + 63) = 0;
  *(this + 432) = 0;
  *(this + 53) = 0;
  *(this + 484) = 0u;
  *(this + 468) = 0u;
  *(this + 452) = 0u;
  *(this + 436) = 0u;
  bzero(this + 516, 0x275uLL);
  *(v2 + 124) = 0;
  *(v2 + 60) = 0u;
  *(v2 + 61) = 0u;
  *(v2 + 58) = 0u;
  *(v2 + 59) = 0u;
  *(v2 + 57) = 0u;
  *(v2 + 1004) = 0;
  *(v2 + 253) = 60000;
  *(v2 + 1020) = v2 + 1032;
  v2[1028] = 8;
  *(v2 + 1068) = 0;
  *(v2 + 538) = 0;
  *(v2 + 1084) = 0u;
  *(v2 + 1100) = 3240099840;
  *(v2 + 277) = 0;
  *(v2 + 1116) = -1;
  *(v2 + 1124) = -1;
  *(v2 + 283) = 0;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0u;
  v3 = (BlueFin::GlUtils::m_pInstance + 1408);
  v4 = 20;
  *(v2 + 278) = *(BlueFin::GlUtils::m_pInstance + 1092);
  while (1)
  {
    v5 = *(v3 - 20);
    if (!v5 || v5 == BlueFin::GlPePlatfStatMgr::ReportStatic && *v3 == this)
    {
      break;
    }

    ++v3;
    if (!--v4)
    {
      return this;
    }
  }

  *(v3 - 20) = BlueFin::GlPePlatfStatMgr::ReportStatic;
  *v3 = this;
  return this;
}

void *BlueFin::GlPePwrStateMgr::initial(void *result)
{
  result[1] = BlueFin::GlPePwrStateMgr::SteadyNormalMode;
  v1 = result[2];
  if (result[3] != v1)
  {
    result[3] = v1;
  }

  result[2] = "&GlPePwrStateMgr::SteadyNormalMode";
  return result;
}

uint64_t (*BlueFin::GlPePwrStateMgr::NormalMode(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  switch(v2)
  {
    case 48:
      v3 = 0;
      *(a1 + 208) = a2[1] != 0;
      break;
    case 3:
      return 0;
    case 2:
      *(a1 + 211) = 0;
      BlueFin::GlPePwrStateMgr::ComputeLowPowerState(a1);
      return 0;
    default:
      return BlueFin::QHsm::top;
  }

  return v3;
}

uint64_t BlueFin::GlEventPump::AddActive(uint64_t this, BlueFin::GlActive *a2)
{
  v2 = *(a2 + 88);
  if (v2 >= 0xE)
  {
    v3 = "a->myPrio < _DIM(pkgActive)";
    DeviceFaultNotify("glhsm_eventpump.cpp", 66, "AddActive", "a->myPrio < _DIM(pkgActive)");
    v4 = 66;
    goto LABEL_6;
  }

  if (*(this + 8 * v2))
  {
    v3 = "pkgActive[ a->myPrio ] == nullptr";
    DeviceFaultNotify("glhsm_eventpump.cpp", 68, "AddActive", "pkgActive[ a->myPrio ] == nullptr");
    v4 = 68;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_eventpump.cpp", v4, v3);
  }

  *(this + 8 * v2) = a2;
  return this;
}

uint64_t **std::__hash_table<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::__unordered_map_hasher<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::hash<gnss::SvPositionSource>,std::equal_to<gnss::SvPositionSource>,true>,std::__unordered_map_equal<gnss::SvPositionSource,std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>,std::equal_to<gnss::SvPositionSource>,std::hash<gnss::SvPositionSource>,true>,std::allocator<std::__hash_value_type<gnss::SvPositionSource,std::vector<unsigned char>>>>::__emplace_unique_key_args<gnss::SvPositionSource,std::piecewise_construct_t const&,std::tuple<gnss::SvPositionSource const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t BlueFin::GlDbgEngine::ForceReadLTOFile(BlueFin::GlDbgCodec **this)
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1542);
  (*(*this[1] + 32))(this[1], 1);
  LTOFile = BlueFin::GlEngineImplStd::ForceReadLTOFile((this + 46));
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1542);
  v3 = this[1];
  v5 = LTOFile;
  BlueFin::GlDbgCodec::Write(v3, &v5);
  (*(*this[1] + 32))(this[1], 1);
  return LTOFile;
}

uint64_t BlueFin::GlPosEng::ReadLTOFile(BlueFin::GlPosEng *this, unsigned int *a2, int a3, int a4)
{
  if (a3)
  {
    LtoFile = BlueFin::GlPosEng::readLtoFile(this, a2, 1);
    if (!LtoFile)
    {
      if (!BlueFin::GlPosEng::needToReadLto(this) && !a4)
      {
        return 0;
      }

      *(this + 22493) = this + 126144;
      BlueFin::GlTimer::arm((this + 179912), 38, 0, 0x1F4u);
      LtoFile = 0;
      *(this + 179936) = 1;
      return LtoFile;
    }
  }

  else
  {
    LtoFile = 3;
  }

  if (!BlueFin::GlPosEng::needToReadLto(this) && !a4)
  {
    return LtoFile;
  }

  return BlueFin::GlPosEng::readLtoFile(this, a2, 0);
}

BOOL BlueFin::GlPosEng::needToReadLto(BlueFin::GlPosEng *this)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = &v7 + v2;
    *(&v7 + v2 + 12) = 0;
    *v3 = &v7 + v2 + 12;
    v3[8] = 2;
    v2 += 24;
  }

  while (v2 != 168);
  for (i = 0; i != 7; ++i)
  {
    BlueFin::GlGnssSet::SetAll(&v7, i);
  }

  result = BlueFin::GlPeAsstMgr::GetExpiringEphemerisSvs((this + 224), &v7) < 0x78 || *(this + 34091) == 0 || BlueFin::GlGnssSet::IsEmpty((this + 8864)) || !BlueFin::GlGnssSet::IsEmpty((this + 34144));
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeAsstMgr::GetExpiringEphemerisSvs(BlueFin::GlPeAsstMgr *this, BlueFin::GlGnssSet *a2)
{
  v4 = 0;
  v5 = 86400;
  do
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, v4);
    if (Mgr)
    {
      v7 = Mgr;
      v8 = BlueFin::GlGnssSet::operator()(a2, v4);
      v9 = (*(*v7 + 352))(v7, v8);
      if (v9 < v5)
      {
        v5 = v9;
      }
    }

    ++v4;
  }

  while (v4 != 7);
  if (v5 == 86400)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t BlueFin::GlPeEphemerisMgr::GetExpiringEphemerisSvs(BlueFin::GlPeEphemerisMgr *this, int **a2)
{
  v4 = 86400;
  Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, v17);
  (*(*this + 304))(v13, this, Time);
  v6 = BlueFin::GlSetBase::GlSetBase(&v14, v16, 2u, v13);
  v10 = &v12;
  LOBYTE(v11) = 2;
  v12 = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(v6, &v10, a2);
  BlueFin::GlSetBase::operator=(&v14, &v10);
  *v16 = v12;
  bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  LOBYTE(v10) = v15;
  memcpy(&v11, v14, 4 * v15);
  WORD1(v10) = 0;
  BYTE1(v10) = 0;
  HIDWORD(v10) = v11;
  while (1)
  {
    BlueFin::GlSetIterator::operator++(&v10);
    if (BYTE1(v10) == v10)
    {
      break;
    }

    LOBYTE(v13[0]) = BYTE2(v10);
    v7 = (*(*this + 368))(this, v13);
    v8 = (*(*v7 + 248))(v7, v17);
    if (v8 >= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = v8;
    }

    if (v8 <= 0x77)
    {
      if (LOBYTE(v13[0]) - 64 <= 0xFFFFFFC0)
      {
        DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
      }

      *(*a2 + ((LOBYTE(v13[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v13[0]);
    }
  }

  return v4;
}

uint64_t BlueFin::GlDbgEngine::SetBandsConstraints(uint64_t a1, _DWORD *a2)
{
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1634);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), a2);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v6 = 0;
  BlueFin::GlEngineImplStd::SetBandsConstraints(a1 + 368, a2);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1634);
  v4 = *(a1 + 8);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v6);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return 0;
}

uint64_t gnss::FireGnssDevice::setConfigRfBandEnable(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd setConfigRfBandEnable,L1,%d,L5,%d", a3, a4, a5, a6, a7, a8, a2);
  updated = FireMessageHandler::updateRfBandEnable(*(a1 + 40), a2, a3, v12, v13, v14, v15, v16);

  return std::function<void ()(gnss::Result)>::operator()(a4, updated);
}

BlueFin::GlPeSvHealthHelper *BlueFin::GlPeSvHealthHelper::GlPeSvHealthHelper(BlueFin::GlPeSvHealthHelper *this, const BlueFin::GlSettingsImpl *a2)
{
  v4 = BlueFin::GlPeSvHealthData::GlPeSvHealthData(this);
  v5 = 0;
  *v4 = &unk_2A1F10A40;
  *(v4 + 283) = a2;
  *(v4 + 309) = v4 + 2304;
  do
  {
    v6 = *(this + 309) + v5;
    *(v6 + 12) = 0;
    *v6 = v6 + 12;
    *(v6 + 8) = 2;
    v5 += 24;
  }

  while (v5 != 168);
  v7 = 0;
  *(this + 333) = this + 2496;
  do
  {
    v8 = *(this + 333) + v7;
    *(v8 + 12) = 0;
    *v8 = v8 + 12;
    *(v8 + 8) = 2;
    v7 += 24;
  }

  while (v7 != 168);
  BlueFin::GlPeSvHealthHelper::Clear(this);
  for (i = 0; i != 7; ++i)
  {
    BlueFin::GlGnssSet::SetAll(&BlueFin::GlPeSvHealthHelper::s_otAllSvs, i);
  }

  return this;
}

uint64_t (*BlueFin::GlMeSrdPacketManager::wait4ack(uint64_t a1, unsigned __int8 *a2))()
{
  v4 = a1 + 12288;
  v5 = *a2;
  if (v5 > 0xA)
  {
    if (v5 == 14)
    {
      if (a2[1] > 0x1Du)
      {
        GlCustomLog(10, "PacketMgr::SendReliablePacket out of available reliable units, Comm Dead\n");
LABEL_28:
        (*(**(a1 + 128) + 32))(*(a1 + 128));
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdPacketManager::wait4kill, "&GlMeSrdPacketManager::wait4kill");
        return 0;
      }

      v23 = *(a1 + 16800) + 96 * a2[1];
      v26 = *(v23 + 49);
      v27 = *(v23 + 48);
LABEL_27:
      GlCustomLog(10, "PacketMgr::Reliable retransmission failed(%u) (trial %u for reliable %u), Comm Dead\n");
      goto LABEL_28;
    }

    if (v5 == 11)
    {
      v17 = a2[1];
      if (v17 < 0x1E)
      {
        v18 = *(a1 + 16800) + 96 * a2[1];
        v19 = *(a1 + 13875);
        *(a1 + 13875) = v19 + 1;
        *(v18 + 48) = v19;
        v20 = *(a1 + 6522);
        *(v18 + 40) = a1;
        BlueFin::GlTimer::arm((v18 + 8), 5, v17, v20 + 750);
        *(v18 + 32) = 1;
        v21 = BlueFin::GlMeSrdPacketManager::SendReliableElement(a1, v18);
        result = 0;
        v22 = *(v18 + 49);
        *(v18 + 49) = v22 + 1;
        *(v18 + v22 + 50) = v21;
        return result;
      }

      v24 = "e->par < TL_MAX_RELIABLE_PARRALEL";
      DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 430, "wait4ack", "e->par < TL_MAX_RELIABLE_PARRALEL");
      v25 = 430;
LABEL_31:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager_reliable.cpp", v25, v24);
    }

    return BlueFin::QHsm::top;
  }

  if (v5 - 2 < 2)
  {
    return 0;
  }

  if (v5 != 5)
  {
    return BlueFin::QHsm::top;
  }

  if (*(a1 + 13873))
  {
    return 0;
  }

  if (a2[1] >= 0x1Eu)
  {
    v24 = "e->par < TL_MAX_RELIABLE_PARRALEL";
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 451, "wait4ack", "e->par < TL_MAX_RELIABLE_PARRALEL");
    v25 = 451;
    goto LABEL_31;
  }

  *(a1 + 6544) = vadd_s32(*(a1 + 6544), 0x100000001);
  GlCustomLog(12, "PacketMgr::Reliable retransmission as ack was not received!\n");
  if (*(v4 + 1586) == 1)
  {
    v24 = "!m_bMessageReliableStarted";
    DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 199, "ResendElement", "!m_bMessageReliableStarted");
    v25 = 199;
    goto LABEL_31;
  }

  v6 = *(a1 + 16800) + 96 * a2[1];
  v7 = *(a1 + 13880);
  if (!v7)
  {
    if (*(v6 + 49) != 4)
    {
      return 0;
    }

    goto LABEL_26;
  }

  v8 = 4;
  v9 = *(a1 + 13880);
  do
  {
    v10 = *(v9 + 49);
    if (v8 < v10)
    {
      v24 = "ucMaxTrial >= pReliableElment->ucTrial";
      DeviceFaultNotify("glmesrd_packet_manager_reliable.cpp", 207, "ResendElement", "ucMaxTrial >= pReliableElment->ucTrial");
      v25 = 207;
      goto LABEL_31;
    }

    v9 = *(v9 + 88);
    v8 = v10;
  }

  while (v9);
  if (*(v6 + 49) == 4)
  {
LABEL_26:
    v28 = *(v6 + 48);
    goto LABEL_27;
  }

  while (1)
  {
    v11 = *(v6 + 49);
    if (v11 == v7[49])
    {
      v12 = *(a1 + 6522) + 750;
      GlCustomLog(12, "PacketMgr::ResendElement(%u), resending (trial %u for reliable %u, timer %u)\n", *v7, v11, v7[48], v12);
      BlueFin::GlMeSrdPacketManager::RemoveEventFromQueue(a1, 5, *v7);
      v13 = *v7;
      *(v7 + 5) = a1;
      BlueFin::GlTimer::arm((v7 + 8), 5, v13, v12);
      v7[32] = 1;
      v14 = BlueFin::GlMeSrdPacketManager::SendReliableElement(a1, v7);
      v15 = v7[49];
      v7[49] = v15 + 1;
      v7[v15 + 50] = v14;
    }

    if (v7 == v6)
    {
      break;
    }

    result = 0;
    v7 = *(v7 + 11);
    if (!v7)
    {
      return result;
    }
  }

  return 0;
}

unint64_t BlueFin::GlReqSm::EnableLowPower(BlueFin::GlReqSm *this, int a2, int a3)
{
  v4 = a2;
  v6 = "False";
  if (a2)
  {
    v6 = "True";
  }

  GlCustomLog(14, "GlReqSm::EnableLowPower %s\n", v6);
  v7 = *(this + 784);
  v8 = *(v7 + 48);
  v9 = (v8 - 4) < 5 || v8 == 2;
  if (v9 || (v4 & 1) == 0)
  {
    BlueFin::GlPePwrStateMgr::EnableLowPower((this + 33216), 0);
    v10 = "GlReqSm::EnableLowPower False(L5 or user interface)\n";
LABEL_9:

    return GlCustomLog(14, v10);
  }

  if ((*(v7 + 26222) & 0x80000000) == 0)
  {
    v10 = "GlReqSm::EnableLowPower False(PowerMode)\n";
    goto LABEL_9;
  }

  GlCustomLog(14, "GlReqSm::EnableLowPower %s, MaxRfOnTimeMs %d\n", "True", a3);
  if (a3 == -1)
  {

    return BlueFin::GlPePwrStateMgr::EnableLowPower((this + 33216), 1u);
  }

  else
  {
    if (*(*(this + 784) + 11565) == 1)
    {
      v10 = "GlReqSm::EnableLowPower. xml value exisiting discarding command\n";
      goto LABEL_9;
    }

    v12 = *(this + 39);
    if (!v12)
    {
      v10 = "GlReqSm::EnableLowPower. m_ptMeasEng is equal to null. Discarding command\n";
      goto LABEL_9;
    }

    v13 = *(*v12 + 616);

    return v13();
  }
}

unint64_t BlueFin::GlPePwrStateMgr::EnableLowPower(BlueFin::GlPePwrStateMgr *this, unsigned __int8 a2)
{
  v5[0] = 48;
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

uint64_t FireMessageHandler::updateRfBandEnable(FireMessageHandler *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  FireDeviceLog::DeviceLogBase(6, "#fmh,updateRfBandEnable,L1,%d,L5,%d", a3, a4, a5, a6, a7, a8, a2);
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  if ((*(**(FireResourceMgr::fInstance + 40) + 64))(*(FireResourceMgr::fInstance + 40)))
  {
    if (a2 & 1) != 0 || (v8)
    {
      v18 = a2 & v8 ^ 1;
      if (!a2)
      {
        v18 = 2;
      }

      *(this + 536) = v18;
      FireMessageHandler::send(this, 1073741842, v11, v12, v13, v14, v15, v16);
      return 1;
    }

    else
    {
      FireDeviceLog::DeviceLogBase(2, "#fmh,updateRfBandEnable,bothDisabled", v11, v12, v13, v14, v15, v16, v19);
      return 4;
    }
  }

  else
  {
    FireDeviceLog::DeviceLogBase(5, "#fmh,updateRfBandEnable,noL5Support,kUnavailable", v11, v12, v13, v14, v15, v16, v19);
    return 7;
  }
}

void gnss::FireGnssDevice::injectRtiFile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = v6 - v5;
  if (v6 == v5 || v8 > 0xFFF)
  {

    std::function<void ()(gnss::Result)>::operator()(a4, 4);
  }

  else
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v5, v6, v8);
    v16 = FireMessageHandler::setAssistanceRti(*(a1 + 40), &__p, v10, v11, v12, v13, v14, v15);
    std::function<void ()(gnss::Result)>::operator()(a4, v16);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

void sub_2987DECB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FireMessageHandler::setAssistanceRti(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 1936);
  if (v9 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v9, *a2, a2[1], a2[1] - *a2);
  }

  FireMessageHandler::send(a1, 1073741829, a3, a4, a5, a6, a7, a8);
  return 1;
}

uint64_t BlueFin::GlDbgEngine::SetRealTimeIntegrity(BlueFin::GlDbgEngine *this, char *a2, unsigned int a3)
{
  v11 = a3;
  v4 = *(this + 1);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1590);
    BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v11);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    v7 = BlueFin::GlEngineImplStd::SetRealTimeIntegrity((this + 368), a2, a3);
    v10 = v7;
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 1590);
    v8 = *(this + 1);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, &v10);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1415");
    return 0;
  }

  return v7;
}

uint64_t gnss::FireGnssDevice::injectAssistancePosition(DeviceCommon *a1, int a2, int a3, unint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v88 = *MEMORY[0x29EDCA608];
  DeviceCommon::GetMachContinuousTime(a1);
  if ((a5 - 1) < 2)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
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
    if (a5 == 2)
    {
      v34 = 33;
    }

    else
    {
      v34 = 10;
    }

    __src = 0uLL;
    v57 = 0uLL;
    CLGnssFire::initGlExtSensData(v34, 3, a4, &__src);
    *&v59 = a6;
    *(&v59 + 1) = a7;
    *&v60 = 0xC08F380000000000;
    *&v63 = 0xBFF0000000000000;
    if (a2)
    {
      *&v60 = a8;
      *&v63 = a9;
    }

    *&v62 = a11;
    *(&v62 + 1) = a12;
    *(&v61 + 1) = a10;
    if (a3 <= 24)
    {
      if (!a3)
      {
        DWORD2(v63) = 0;
        goto LABEL_20;
      }

      if (a3 != 10)
      {
        goto LABEL_20;
      }
    }

    else if (a3 != 25)
    {
      if (a3 == 50)
      {
        v51 = 2;
      }

      else
      {
        if (a3 != 75)
        {
          goto LABEL_20;
        }

        v51 = 3;
      }

      goto LABEL_19;
    }

    v51 = 1;
LABEL_19:
    DWORD2(v63) = v51;
LABEL_20:
    FireDeviceLog::DeviceLogBase(6, "#fgd feeding SFTC position,lat,%.8lf,lon,%.8lf,altitudeValid,%d,alt,%.1lf,altunc,%lf,uncSemiMajor,%lf,uncSemiMinor,%lf,confidence,%d,isTepa,%d", v35, v36, v37, v38, v39, v40, SLOBYTE(a6));
    v53 = *(a1 + 5);
    std::deque<BlueFin::GlExtSensData>::push_back(v53 + 1744, &__src);
    v50 = 1073741831;
    v49 = v53;
    goto LABEL_21;
  }

  if (!a5)
  {
    v41 = v33 - (a4 / 0x3B9ACA00);
    FireDeviceLog::DeviceLogBase(6, "#fgd feeding reference location lat,%.8lf,lon,%.8lf,altitudeValid,%d,alt,%.1lf,hunc,%lf,ageSec,%lf", v27, v28, v29, v30, v31, v32, SLOBYTE(a6));
    v42 = *(a1 + 5);
    *&__src = a6;
    *(&__src + 1) = a7;
    *(&v57 + 1) = sqrt(a11 * a11 + a10 * a10);
    *&v58 = a9;
    *&v57 = a8;
    DWORD2(v58) = v41;
    std::deque<FireMessageHandler::GLRefPositionExtended>::push_back(v42 + 1696, &__src);
    v49 = v42;
    v50 = 1073741828;
LABEL_21:
    FireMessageHandler::send(v49, v50, v43, v44, v45, v46, v47, v48);
    v52 = 1;
    goto LABEL_22;
  }

  v52 = 0;
LABEL_22:
  result = std::function<void ()(gnss::Result)>::operator()(a14, v52);
  v55 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 std::deque<FireMessageHandler::GLRefPositionExtended>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 85 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<FireMessageHandler::GLRefPositionExtended>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x55)) + 48 * (v8 % 0x55);
  result = *a2;
  v11 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v11;
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

uint64_t BlueFin::GlDbgEngine::SetAsstPos(uint64_t a1, double *a2, uint64_t a3, _BOOL8 a4)
{
  v17 = a3;
  v16 = a4;
  v5 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v5, 1556);
    v9 = *(a1 + 8);
    if ((*(*v9 + 120))(v9))
    {
      *(v9 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v9, a2);
    }

    v10 = *(a1 + 8);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v17);
    }

    v11 = *(a1 + 8);
    if ((*(*v11 + 120))(v11))
    {
      BlueFin::GlDbgCodec::Write(v11, &v16);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v12 = BlueFin::GlEngineImplStd::SetAsstPos(a1 + 368, a2, a3, a4);
    v15 = v12;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1556);
    v13 = *(a1 + 8);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v15);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v5 + 104))(v5, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:779");
    return 0;
  }

  return v12;
}

uint64_t BlueFin::GlPosEng::SetAsstPos(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  *(a1 + 350216) = 1;
  if (*(a2 + 24) <= 115000.0)
  {
    return BlueFin::GlReqSm::SetAsstPos(a1 + 126144, a2, a3, a4, a5, a6);
  }

  if (*(a2 + 32) <= 100.0)
  {
    *(a1 + 184592) = 1;
    *(a1 + 184424) = *(a2 + 16);
    *(a1 + 184432) = *(a2 + 32);
  }

  return 1;
}

double BlueFin::GlPeAsstPosReqDataFifo::Put(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 1032);
  if (v4 > 0xF)
  {
    v9 = (v4 - 1);
    memmove(*(a1 + 1024), (*(a1 + 1024) + 64), v9 << 6);
    v10 = *(a1 + 1024) + (v9 << 6);
    if (v10 != a2)
    {
      v11 = *a2;
      v12 = a2[1];
      *(v10 + 32) = *(a2 + 4);
      *v10 = v11;
      *(v10 + 16) = v12;
      result = *(a2 + 5);
      *(v10 + 40) = result;
      *(v10 + 48) = *(a2 + 12);
      *(v10 + 52) = *(a2 + 52);
      *(v10 + 56) = *(a2 + 14);
    }
  }

  else
  {
    v5 = *(a1 + 1024) + (v4 << 6);
    if (v5 != a2)
    {
      v6 = *a2;
      v7 = a2[1];
      *(v5 + 32) = *(a2 + 4);
      *v5 = v6;
      *(v5 + 16) = v7;
      result = *(a2 + 5);
      *(v5 + 40) = result;
      *(v5 + 48) = *(a2 + 12);
      *(v5 + 52) = *(a2 + 52);
      *(v5 + 56) = *(a2 + 14);
      LOBYTE(v4) = *(a1 + 1032);
    }

    *(a1 + 1032) = v4 + 1;
  }

  return result;
}

void CLGnssFire::initGlExtSensData(int a1@<W0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  bzero((a4 + 8), 0xDE0uLL);
  *a4 = a1;
  *(a4 + 4) = a2;
  if (a2 == 3)
  {
    *(a4 + 8) = a3 / 0xF4240;
  }

  if (a1 <= 18)
  {
    switch(a1)
    {
      case 10:
LABEL_14:
        *(a4 + 32) = 1;
        *(a4 + 56) = 0;
        *(a4 + 64) = 0;
        *(a4 + 48) = 0;
        __asm { FMOV            V0.2D, #-1.0 }

        *(a4 + 88) = _Q0;
        *(a4 + 104) = xmmword_298A2F6C0;
        goto LABEL_15;
      case 11:
        *(a4 + 32) = 1;
        *(a4 + 48) = 0;
        goto LABEL_19;
      case 17:
        goto LABEL_11;
    }

LABEL_16:
    FireDeviceLog::DeviceLogBase(2, "#Warning unhandled,%d", v8, v9, v10, v11, v12, v13, a1);
    return;
  }

  if (a1 > 28)
  {
    if (a1 == 29)
    {
      *(a4 + 32) = 1;
      return;
    }

    if (a1 == 33)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (a1 == 19)
  {
LABEL_11:
    *(a4 + 32) = 1;
    *(a4 + 48) = 0;
LABEL_15:
    *(a4 + 120) = 0;
    return;
  }

  if (a1 != 23)
  {
    goto LABEL_16;
  }

  *(a4 + 32) = 1;
  *(a4 + 64) = -998653952;
LABEL_19:
  *(a4 + 88) = -1082130432;
}

uint64_t BlueFin::GlPeHula::GetSensorValidityMask@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  *(a2 + 12) = 0;
  *a2 = a2 + 12;
  *(a2 + 8) = 5;
  *(a2 + 20) = 0;
  *(a2 + 28) = 0;
  if (*(this + 1024) == 1)
  {
    BlueFin::GlPeExtSensorSet::GlPeExtSensorSet(v8, 0, 1u, 2u, 0x22u, 0x22u, 0x22u);
    this = BlueFin::GlSetBase::operator|=(a2, v8);
  }

  if (*(v2 + 584) == 1)
  {
    BlueFin::GlPeExtSensorSet::GlPeExtSensorSet(v8, 3u, 4u, 5u, 0x1Au, 0x1Bu, 0x1Cu);
    this = BlueFin::GlSetBase::operator|=(a2, v8);
  }

  if (*(v2 + 3008) == 1)
  {
    **a2 |= 0x400u;
  }

  if (*(v2 + 1161) == 1)
  {
    **a2 |= 0x800u;
  }

  if (*(v2 + 1225) == 1)
  {
    **a2 |= 0x2000u;
  }

  if (*(v2 + 1281) == 1)
  {
    **a2 |= 0x4000u;
  }

  if (*(v2 + 2985) == 1)
  {
    **a2 |= 0x8000u;
  }

  if (*(v2 + 4177) == 1)
  {
    **a2 |= 0x10000u;
  }

  if (*(v2 + 4224) == 1)
  {
    **a2 |= 0x20000u;
  }

  if (*(v2 + 3216) == 1)
  {
    **a2 |= 0x800000u;
  }

  v4 = *(v2 + 4200);
  if (v4)
  {
    v5 = *a2;
    **a2 |= 0x40000u;
    if (v4 == 2)
    {
      *(v5 + 4) |= 8u;
    }
  }

  v6 = *(v2 + 4272);
  if (v6)
  {
    v7 = *a2;
    **a2 |= 0x80000u;
    if (v6 == 2)
    {
      *(v7 + 4) |= 0x10u;
    }
  }

  if (*(v2 + 3160) == 1)
  {
    **a2 |= 0x400000u;
  }

  if (*(v2 + 3161) == 1)
  {
    **a2 |= 0x1000000u;
  }

  return this;
}

BOOL BlueFin::GlPeHula::SetSensorValidityMask(BlueFin::GlPeHula *this, int **a2)
{
  v4 = this + 4096;
  BlueFin::GlPeExtSensorSet::GlPeExtSensorSet(v11, 0, 1u, 2u, 0x22u, 0x22u, 0x22u);
  BlueFin::GlPeExtSensorSet::GlPeExtSensorSet(v10, 3u, 4u, 5u, 0x1Au, 0x1Bu, 0x1Cu);
  *(this + 1024) = BlueFin::GlSetBase::HasAll(a2, v11);
  result = BlueFin::GlSetBase::HasAll(a2, v10);
  v6 = 0;
  v7 = *a2;
  v8 = **a2;
  v4[81] = BYTE2(v8) & 1;
  v4[128] = (v8 & 0x20000) != 0;
  *(this + 584) = result;
  *(this + 3008) = (v8 & 0x400) != 0;
  *(this + 1161) = (v8 & 0x800) != 0;
  *(this + 1225) = (v8 & 0x2000) != 0;
  *(this + 1281) = (v8 & 0x4000) != 0;
  *(this + 2985) = (v8 & 0x8000) != 0;
  *(this + 3216) = (v8 & 0x800000) != 0;
  if ((v8 & 0x40000) != 0)
  {
    if ((v7[1] & 8) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  *(this + 1050) = v6;
  if ((v8 & 0x80000) != 0)
  {
    if ((v7[1] & 0x10) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  *(this + 1068) = v9;
  *(this + 3160) = (v8 & 0x400000) != 0;
  *(this + 3161) = HIBYTE(v8) & 1;
  return result;
}

uint64_t BlueFin::GlPeExtSensorSet::GlPeExtSensorSet(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned __int16 a4, unsigned __int16 a5, unsigned __int16 a6, unsigned __int16 a7)
{
  *(a1 + 12) = 0;
  *a1 = a1 + 12;
  *(a1 + 8) = 5;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  BlueFin::GlPeExtSensorSet::Add(a1, a2);
  BlueFin::GlPeExtSensorSet::Add(a1, a3);
  BlueFin::GlPeExtSensorSet::Add(a1, a4);
  BlueFin::GlPeExtSensorSet::Add(a1, a5);
  BlueFin::GlPeExtSensorSet::Add(a1, a6);
  BlueFin::GlPeExtSensorSet::Add(a1, a7);
  return a1;
}

void *BlueFin::GlPeExtSensorSet::Add(void *result, unsigned __int16 a2)
{
  if (a2 < 0x22u || a2 - 100 < 3 || a2 - 35 <= 1)
  {
    *(*result + 4 * (a2 >> 5)) |= 1 << a2;
  }

  return result;
}

void BlueFin::GlPeHula::PosLocationData::Update(uint64_t a1, uint64_t a2)
{
  v12 = *(a2 + 32) - 1;
  if (v12 > 0x27)
  {
    return;
  }

  v62 = v11;
  v63 = v10;
  v64 = v9;
  v65 = v8;
  v66 = v7;
  v67 = v6;
  v68 = v5;
  v69 = v4;
  v70 = v2;
  v71 = v3;
  v14 = a2 + 88 * v12;
  v16 = *(v14 + 48);
  v15 = *(v14 + 56);
  v17 = *(v14 + 64);
  v18 = *(v14 + 88);
  v19 = *(v14 + 104);
  v20 = *(v14 + 120);
  v21 = *(v14 + 124);
  v22 = v17 < -450.0;
  if (v17 > 27500.0)
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = -1.0;
  }

  else
  {
    v23 = *(v14 + 112);
  }

  if (v22)
  {
    v24 = -999.0;
  }

  else
  {
    v24 = *(v14 + 64);
  }

  v25 = *(*a1 + 576);
  if (v25 <= 1)
  {
    v25 = 1;
  }

  *(a1 + 120) = v25;
  if ((*(a1 + 8) & 1) == 0)
  {
    goto LABEL_24;
  }

  v59[0] = v16;
  v59[1] = v15;
  v59[2] = v24;
  v26 = *(a1 + 32);
  v57 = *(a1 + 16);
  v58 = v26;
  v53 = v18;
  BlueFin::lla2ned(&v57, v59, 0, v60.f64);
  v18 = v53;
  v27 = sqrt(v60.f64[1] * v60.f64[1] + v60.f64[0] * v60.f64[0]);
  v28 = vcvt_f32_f64(vmulq_f64(v18, v18));
  v29 = vcvt_f32_f64(vmulq_f64(*(a1 + 40), *(a1 + 40)));
  if (vaddv_f32(vadd_f32(vzip1_s32(v28, v29), vzip2_s32(v28, v29))) * 4.0 <= (v27 * v27))
  {
    if (v20 < *(a1 + 72))
    {
      return;
    }

LABEL_24:
    *(a1 + 16) = v16;
    *(a1 + 24) = v15;
    *(a1 + 32) = v24;
    *(a1 + 40) = v18;
    *(a1 + 56) = v19;
    *(a1 + 64) = v23;
    *(a1 + 72) = v20;
    *(a1 + 76) = v21;
    goto LABEL_32;
  }

  v30 = vadd_f32(v28, v29);
  v31 = vdiv_f32(v29, v30);
  if (v24 < -998.0 && *(a1 + 32) < -998.0 || v23 <= 0.0 && *(a1 + 64) <= 0.0)
  {
    v34 = 0.0;
    v33 = 1;
  }

  else if (*(a1 + 32) < -998.0 || (v32 = *(a1 + 64), v32 <= 0.0))
  {
    v33 = 0;
    *(a1 + 64) = v23;
    v34 = 1.0;
  }

  else
  {
    v33 = 0;
    v34 = 0.0;
    if (v24 >= -998.0 && v23 > 0.0)
    {
      v33 = 0;
      v35 = v23 * v23;
      v36 = v32 * v32;
      v37 = v36 / (v35 + v36);
      *(a1 + 64) = sqrtf(v37 * v35);
      v34 = v37;
    }
  }

  BlueFin::lla2ned(v59, &v57, 0, v60.f64);
  v52 = vmulq_f64(v60, vcvtq_f64_f32(v31));
  v54 = v60;
  v60 = v52;
  v61 = v34 * v61;
  BlueFin::ned2lla(&v57, v60.f64, &v55);
  *(a1 + 16) = v55;
  if ((v33 & 1) == 0)
  {
    *(a1 + 32) = v56;
  }

  v38 = *(a1 + 72);
  if (v20 > v38)
  {
    *(a1 + 72) = v20;
    v38 = v20;
  }

  v39 = vsubq_f64(v54, v52);
  *&v39.f64[0] = vcvt_f32_f64(vaddq_f64(vdivq_f64(vmulq_f64(v52, v52), vcvtq_f64_f32(v29)), vdivq_f64(vmulq_f64(v39, v39), vcvtq_f64_f32(v28))));
  __asm { FMOV            V1.2S, #1.0 }

  v18 = vcvtq_f64_f32(vsqrt_f32(vdiv_f32(vmul_f32(vmul_f32(vbsl_s8(vcgt_f32(_D1, *&v39.f64[0]), _D1, *&v39.f64[0]), v29), v28), v30)));
  *(a1 + 40) = v18;
  v20 = v38;
LABEL_32:
  if (v18.f64[0] > 0.0 && v18.f64[1] > 0.0)
  {
    v45 = v20 - 2;
    v46 = 10.0;
    if (v18.f64[0] < 10.0 && v45 > 1)
    {
      *(a1 + 40) = 0x4024000000000000;
    }

    else
    {
      if (v45 <= 1)
      {
        v48 = 1.0;
        if (v18.f64[0] < 1.0)
        {
          *(a1 + 40) = 0x3FF0000000000000;
          v18.f64[0] = 1.0;
        }

        v46 = v18.f64[0];
        if (v18.f64[1] >= 1.0)
        {
          goto LABEL_49;
        }

LABEL_46:
        *(a1 + 48) = v48;
        v18.f64[0] = v46;
        goto LABEL_47;
      }

      v46 = v18.f64[0];
    }

    v48 = 10.0;
    v18.f64[0] = v46;
    if (v18.f64[1] >= 10.0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_47:
  if (!v20)
  {
    *(a1 + 72) = 1;
  }

LABEL_49:
  v49 = *(*a1 + 576);
  if (v49 <= 1)
  {
    v49 = 1;
  }

  *(a1 + 120) = v49;
  *(a1 + 128) = *(v14 + 40) / 1000.0;
  *(a1 + 112) = *(a1 + 72);
  v50 = *(a1 + 56);
  *(a1 + 80) = *(a1 + 40);
  *(a1 + 96) = v50;
  v51 = v18.f64[0] > 0.0;
  if (v18.f64[0] >= 10000.0)
  {
    v51 = 0;
  }

  *(a1 + 8) = v51;
  if (v51)
  {
    *(a1 + 9) = 0;
  }
}

uint64_t BlueFin::GlDbgEngine::SetThermalRiskState(BlueFin::GlDbgCodec **this, unint64_t a2, unsigned int a3)
{
  v11 = a2;
  v10 = a3;
  if (a3 > 0x64)
  {
    return 0;
  }

  v4 = a3;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1629);
  BlueFin::GlDbgCodec::Write(this[1], &v11);
  BlueFin::GlDbgCodec::Write(this[1], &v10);
  (*(*this[1] + 32))(this[1], 1);
  v3 = BlueFin::GlEngineImplStd::SetThermalRiskState((this + 46), a2, v4);
  v9 = v3;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1629);
  v7 = this[1];
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v9);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v3;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, unint64_t *a2)
{
  v6[1] = *MEMORY[0x29EDCA608];
  result = (*(*this + 120))(this);
  if (result)
  {
    v6[0] = bswap64(*a2);
    result = BlueFin::GlDbgCodecBase::Encode(this, v6, 8, 0, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

void *BlueFin::GlPeObjFactory::MakeGlUtils(uint64_t (**this)(uint64_t), BlueFin::GlSettingsImpl *a2, BlueFin::GlPeEngineCallBacks *a3)
{
  if (!a2)
  {
    v9 = "potGlSettingsImpl != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 706, "MakeGlUtils", "potGlSettingsImpl != nullptr");
    v10 = 706;
    goto LABEL_11;
  }

  if (!a3)
  {
    v9 = "pcbCallBacks != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 707, "MakeGlUtils", "pcbCallBacks != nullptr");
    v10 = 707;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpeobjfact.cpp", v10, v9);
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(42, 1624, *this);
  v6 = Memory;
  if (Memory)
  {
    BlueFin::GlUtils::GlUtils(Memory, a3 + 184);
    if ((*(v6 + 29) & 1) == 0)
    {
      *(v6 + 17) = *(a2 + 37);
      BlueFin::GlUtils::m_ucEnabled = 2;
      *(v6 + 1122) = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x1C);
      *(v6 + 16) = 1;
      if ((*(v6 + 29) & 1) == 0)
      {
        *(v6 + 5) = *(a2 + 36);
        BlueFin::GlUtils::m_ucEnabled = 2;
        *(v6 + 1122) = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x1C);
        *(v6 + 18) = 1;
      }
    }

    v7 = *(a2 + 38);
    *(v6 + 28) = *(a2 + 39);
    *(v6 + 6) = v7;
  }

  return v6;
}

void *BlueFin::GlUtils::GlUtils(void *a1, uint64_t a2)
{
  a1[138] = 0;
  *(a1 + 278) = 0;
  *a1 = a2;
  a1[1] = 0;
  *(a1 + 15) = 0;
  *(a1 + 20) = 0;
  *(a1 + 14) = 0;
  *(a1 + 1082) = 0u;
  *(a1 + 1097) = 0;
  *(a1 + 560) = 1;
  *(a1 + 1122) = 0;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0u;
  *(a1 + 1156) = 0u;
  *(a1 + 1172) = 0u;
  *(a1 + 1188) = 0u;
  *(a1 + 1204) = 0u;
  *(a1 + 1213) = 0u;
  a1[154] = 0;
  a1[155] = "initGLL";
  *(a1 + 98) = 0u;
  BlueFin::GlUtils::m_ucEnabled = 2;
  BlueFin::GlUtils::m_pInstance = a1;
  *(a1 + 272) = 1;
  v3 = (*(**a1 + 48))(*a1);
  *(a1 + 273) = v3;
  *(a1 + 396) = v3;
  bzero(a1 + 30, 0x41BuLL);
  *(a1 + 97) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 94) = 0u;
  *(a1 + 93) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 91) = 0u;
  *(a1 + 90) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 88) = 0u;
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
  v4 = BlueFin::GlUtils::m_pInstance;
  v5 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(BlueFin::GlUtils::m_pInstance + 1236) = v5;
  *(v4 + 1232) = v5 + 59950;
  *(a1 + 199) = 0u;
  *(a1 + 201) = 0u;
  return a1;
}

unint64_t BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(BlueFin::GlUtils *this)
{
  v1 = BlueFin::GlUtils::m_pInstance;
  if (!BlueFin::GlUtils::m_pInstance)
  {
    result = 0;
    BlueFin::GlUtils::m_ucEnabled = 2;
    return result;
  }

  if (!BlueFin::GlUtils::m_ucEnabled)
  {
    return 0;
  }

  v2 = this;
  if (BlueFin::GlUtils::m_ucEnabled != 2)
  {
    goto LABEL_10;
  }

  if (!*BlueFin::GlUtils::m_pInstance)
  {
    goto LABEL_10;
  }

  v3 = (*(**BlueFin::GlUtils::m_pInstance + 16))(*BlueFin::GlUtils::m_pInstance);
  v1 = BlueFin::GlUtils::m_pInstance;
  if (!v3 || *(BlueFin::GlUtils::m_pInstance + 16) != 1 || *(BlueFin::GlUtils::m_pInstance + 18) != 1)
  {
    goto LABEL_10;
  }

  if (*(BlueFin::GlUtils::m_pInstance + 17))
  {
    v4 = *(BlueFin::GlUtils::m_pInstance + 20);
    BlueFin::GlUtils::m_ucEnabled = v4 != 0;
    if (!v4)
    {
      return 0;
    }

LABEL_10:
    if ((*(v1 + 17) >> (v2 & 7)))
    {
      return (*(v1 + 20) >> (v2 >> 3)) & 1;
    }

    return 0;
  }

  result = 0;
  BlueFin::GlUtils::m_ucEnabled = 0;
  return result;
}

uint64_t BlueFin::GlSettingsImpl::Print(BlueFin::GlSettingsImpl *this)
{
  v26[4] = *MEMORY[0x29EDCA608];
  v26[0] = "UNKN";
  v26[1] = "OCXO";
  v26[2] = "GSM";
  v26[3] = "TCXO";
  GlCustomLog(14, "SetLogFacMask(0x%08X)\n", *(this + 36));
  GlCustomLog(14, "SetLogPriMask(0x%08X)\n", *(this + 37));
  GlCustomLog(14, "SetGulpLogFacMask(0x%08X)\n", *(this + 38));
  GlCustomLog(14, "SetGulpLogPriMask(0x%08X)\n", *(this + 39));
  v2 = *(this + 10);
  v3 = 45;
  if (*(this + 136))
  {
    v3 = 71;
  }

  GlCustomLog(14, "GL_RF_TYPE(%d) GL_FREQ_PLAN(%d) - %u,%d,%d,%c,%u,%s, %d dB %.1lf dB\n", *(this + 22), *(this + 4), *(this + 26) / 0x3E8u, (*(this + 14) * 1000000000.0 + 0.5), (*(this + 16) * 1000000000.0 + 0.5), v3, *(this + 30) / 0x3E8u, v26[*(this + 25)], *(this + 24), *(this + 10));
  GlCustomLog(14, "DYN_MODE(%c)\n", aApvb[*(this + 5)]);
  GlCustomLog(14, "FeatureSet ");
  BlueFin::GlSetBase::Print(this + 160, 0xEu);
  GlCustomLog(14, "\n");
  v4 = *(this + 8);
  GlCustomLog(14, "PSF 0x%x\n", v4);
  v5 = *(this + 8);
  if ((v5 & 3) != 0)
  {
    v12 = xmmword_298A457E0;
    v13 = unk_298A457F0;
    v14 = xmmword_298A45800;
    v15 = unk_298A45810;
    v10 = *"reference";
    v11 = *&algn_298A457CA[6];
    GlCustomLog(14, "PSF SS %s\n", &v10 + 32 * (v5 & 3));
    v5 = *(this + 8);
  }

  if ((v5 & 0x18) != 0)
  {
    v12 = xmmword_298A45840;
    v13 = unk_298A45850;
    v14 = xmmword_298A45860;
    v15 = unk_298A45870;
    v10 = *"reference";
    v11 = *&algn_298A4582A[6];
    GlCustomLog(14, "PSF Clk Variations %s\n", &v10 + 32 * ((v5 & 0x18) >> 3));
  }

  if ((v4 & 0x80) != 0)
  {
    GlCustomLog(14, "PSF expecting large clock offset\n");
  }

  v6 = *(this + 8);
  if ((v6 & 0x40) != 0)
  {
    GlCustomLog(14, "PSF DISABLE SERIALIZING LARGE TCXO OFFSET IF UPDATE ONLY FROM CNTIN \n");
    v6 = *(this + 8);
  }

  v7 = v6 & 0x700;
  if (v7)
  {
    v22 = xmmword_298A45940;
    v23 = unk_298A45950;
    v24 = xmmword_298A45960;
    v25 = unk_298A45970;
    v18 = xmmword_298A45900;
    v19 = unk_298A45910;
    v20 = xmmword_298A45920;
    v21 = unk_298A45930;
    v14 = xmmword_298A458C0;
    v15 = unk_298A458D0;
    v16 = xmmword_298A458E0;
    v17 = unk_298A458F0;
    v10 = *"disabled";
    v11 = *&algn_298A45889[7];
    v12 = xmmword_298A458A0;
    v13 = unk_298A458B0;
    GlCustomLog(14, "PSF analog IF output: %s\n", &v10 + 32 * (v7 >> 8));
  }

  if ((v4 & 0x20) != 0)
  {
    GlCustomLog(14, "PSF enabling pedestrian virtual DR\n");
    if ((v4 & 0x40000000) == 0)
    {
LABEL_15:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x40000000) == 0)
  {
    goto LABEL_15;
  }

  GlCustomLog(14, "PSF enabling Stringent pedestrian virtual DR\n");
  if ((v4 & 0x800) == 0)
  {
LABEL_16:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  GlCustomLog(14, "PSF disable internal motion/no motion detector\n");
  if ((v4 & 0x20000) == 0)
  {
LABEL_17:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  GlCustomLog(14, "PSF enable StrictAssert\n");
  if ((v4 & 0x80000) == 0)
  {
LABEL_18:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  GlCustomLog(14, "PSF disable clamping\n");
  if ((v4 & 0x100000) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  GlCustomLog(14, "PSF timing application\n");
  if ((v4 & 0x20000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  GlCustomLog(14, "PSF watch application\n");
  if ((v4 & 0x1000) == 0)
  {
LABEL_21:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    GlCustomLog(14, "PSF Enable Map Integration Optimisation\n");
    if ((v4 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_32:
  GlCustomLog(14, "PSF Disable Secondary Pedestrian Smoothing\n");
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  if ((v4 & 4) != 0)
  {
LABEL_23:
    GlCustomLog(14, "PSF disable tunnel logic\n");
  }

LABEL_24:
  result = GlCustomLog(14, "Build FCT(%u)\n", *(this + 7));
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlSetBase::Print(uint64_t this, unsigned __int8 a2)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v4 = *(v3 + 8);
        if (*(v3 + 8))
        {
          v5 = 0;
          do
          {
            if ((*(*v3 + 4 * (v5 >> 5)) >> (v5 & 0x1F)))
            {
              this = GlCustomLog(a2, "%02d ", v5);
              v4 = *(v3 + 8);
            }

            ++v5;
          }

          while (v5 < 32 * v4);
        }
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlSettingsImpl::SetUsingOnChipMe(uint64_t this, char a2)
{
  *(this + 25967) = a2;
  *(this + 25968) = 1;
  return this;
}

BlueFin::GlPosEng *BlueFin::GlPeObjFactory::MakePosEng(uint64_t (**a1)(uint64_t), uint64_t a2, BlueFin::GlSettingsImpl *a3, BlueFin::GlEventPump *a4, BlueFin::GlPeEngineCallBacks *a5, char a6)
{
  if (!a2)
  {
    v16 = "potEngine != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 669, "MakePosEng", "potEngine != nullptr");
    v17 = 669;
    goto LABEL_12;
  }

  if (!a3)
  {
    v16 = "potGlSettingsImpl != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 670, "MakePosEng", "potGlSettingsImpl != nullptr");
    v17 = 670;
    goto LABEL_12;
  }

  if (!a4)
  {
    v16 = "potGlEventPump != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 671, "MakePosEng", "potGlEventPump != nullptr");
    v17 = 671;
    goto LABEL_12;
  }

  if (!a5)
  {
    v16 = "pcbCallBacks != nullptr";
    DeviceFaultNotify("glpeobjfact.cpp", 672, "MakePosEng", "pcbCallBacks != nullptr");
    v17 = 672;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpeobjfact.cpp", v17, v16);
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(41, 375232, *a1);
  if (Memory)
  {
    v12 = (*(*a2 + 656))(a2);
    BlueFin::GlPosEng::GlPosEng(Memory, v12, a3, a4, a5, v13, v14, a6);
  }

  return Memory;
}

BlueFin::GlPosEng *BlueFin::GlPosEng::GlPosEng(BlueFin::GlPosEng *this, void *a2, BlueFin::GlSettingsImpl *a3, BlueFin::GlEventPump *a4, BlueFin::GlPeEngineCallBacks *a5, void *(*a6)(unsigned int), void (*a7)(void *), char a8)
{
  *this = &unk_2A1F11960;
  *(this + 2) = 0;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 5) = 0;
  v25 = (this + 40);
  v10 = (this + 224);
  *(this + 7) = this + 224;
  v11 = this + 56;
  *(this + 4) = a5;
  v12 = (this + 121216);
  v13 = (this + 160);
  *(this + 6) = 0;
  *(this + 8) = this + 121216;
  *(this + 9) = this + 160;
  v14 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 100) = vdup_n_s32(0xFF9222FF);
  *(this + 27) = -7200001;
  *(this + 23) = 0;
  *(this + 24) = v14;
  memset_pattern16(this + 112, &unk_298A3C640, 0x30uLL);
  BlueFin::GlPeOscMgr::GlPeOscMgr(v13, v12, *(a3 + 14));
  v28 = (this + 373088);
  BlueFin::GlPeAsstMgr::GlPeAsstMgr(v10, v12);
  v15 = (*(*a3 + 1072))(a3);
  v35 = (this + 350608);
  v37 = (this + 283712);
  BlueFin::GlPeTimeManager::GlPeTimeManager(v12, v15, this + 283712, this + 264320, v13, this + 119968, v11, this + 181312, this + 350608);
  v36 = this + 264320;
  GnssHwBiasMgr = BlueFin::GlPeObjFactory::MakeGnssHwBiasMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, v12, a3, v10);
  *(this + 15764) = GnssHwBiasMgr;
  v30 = this + 350368;
  v33 = this + 340064;
  BlueFin::GlReqSm::GlReqSm(this + 126144, 127, a4, a3, this, v12, v10, this + 246400, this + 184416, this + 264320, this + 283712, this + 340064, this + 350608, this + 362560, *(this + 4), this + 350368, this + 264296, this + 181312, v11, this + 372672, GnssHwBiasMgr, v13, a8);
  if ((*(a3 + 34) & 4) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(this + 4);
  }

  BlueFin::GlPeRtiRequestor::GlPeRtiRequestor((this + 181056), (this + 181312), (this + 7648), v17, (this + 126144), *(a3 + 6572));
  BlueFin::GlPeSvHealthMgr::GlPeSvHealthMgr(this + 181312, a3, this + 119968, this + 181056, v12);
  v29 = (this + 370656);
  v26 = this + 362848;
  BlueFin::GlPeKF::GlPeKF(this + 184416, a3, v37, this + 137024, this + 246400, v33, v12, v36, v10, 0, this + 362848, v35, *(this + 4), this + 370656, this + 181312, v11, *(this + 15764), v13);
  BlueFin::GlPeSatPos::GlPeSatPos(this + 246400, v10, this + 191272, v12);
  BlueFin::GlPeRangeAidGen::GlPeRangeAidGen(v36, v12, this + 246400, v10, *(this + 2), v11, this + 191272);
  if (*(this + 188200))
  {
    v18 = (this + 186048);
  }

  else
  {
    v18 = 0;
  }

  BlueFin::GlPeMsmtMgr::GlPeMsmtMgr(v37, v13, v18, *(this + 2));
  BlueFin::GlPeFixStatus::GlPeFixStatus(v33, v36, v12, v13, *(this + 30231) + 8, v10, a3, this + 181312, v11);
  *(this + 43797) = 0;
  *(this + 43798) = "STARTING";
  *(this + 43799) = "OFF";
  *(this + 43800) = 0;
  *(this + 175204) = 0;
  *(this + 43808) = 0;
  *(this + 87618) = 0;
  *(this + 21901) = 0u;
  *(this + 21902) = 0u;
  *(this + 350441) = 0u;
  *(this + 43796) = &unk_2A1F139C0;
  *(this + 43810) = a5;
  *(this + 43811) = this;
  *(this + 43812) = a3;
  *(this + 43814) = 0;
  *(this + 43815) = 0;
  *(this + 43813) = 0;
  *(this + 350527) = 0;
  *(this + 43817) = 0;
  *(this + 43818) = &unk_2A1F13900;
  *(this + 43819) = v30;
  *(this + 43820) = 0;
  *(this + 350568) = 1;
  *(this + 350572) = 0;
  *(this + 350580) = 0;
  *(&v24 + 1) = this + 71456;
  *&v24 = v13;
  BlueFin::GlNvMemImpl::GlNvMemImpl(v35, v12, v10, (this + 280), (this + 199488), v19, (this + 34336), (this + 7648), v24, v37, a5, *(this + 2), v29, (this + 368232), *(this + 2), (this + 181312), (this + 181056), *(this + 15764), v28);
  BlueFin::GlPeCntinMgr::GlPeCntinMgr((this + 362560), 0x7Fu, a4, this, (this + 126144), *(this + 4));
  BlueFin::GlPeHula::GlPeHula(v26, v12, v10, v29, this + 184608, this + 186049);
  v20 = *(this + 2);
  *(this + 46023) = &unk_2A1F11840;
  *(this + 46024) = a5;
  *(this + 46025) = v30;
  *(this + 46026) = v20;
  *(this + 46027) = &unk_2A1F17C20;
  *(this + 46028) = this;
  BlueFin::GlPeSensorsMgr::GlPeSensorsMgr(this + 368232, this + 368216, v29, *(this + 4), v37);
  *(this + 46331) = &unk_2A1F11BB8;
  BlueFin::GlPeContextMgr::GlPeContextMgr(v29, v26, 1);
  *(this + 46584) = v12;
  *(this + 46585) = &unk_2A1F09448;
  *(this + 46586) = &unk_2A1F09610;
  *(this + 46587) = this + 372728;
  *(this + 46588) = this + 373016;
  *(this + 46589) = this + 372984;
  *(this + 93180) = 8;
  *(this + 186362) = 8193;
  *(this + 372726) = 32;
  BlueFin::GlArray::Clear(this + 372688);
  *(this + 46631) = 0x240C84007FFFFFFFLL;
  *(this + 93264) = 0x7FFFFFFF;
  *(this + 372728) = 0u;
  *(this + 372744) = 0u;
  *(this + 372760) = 0u;
  *(this + 372776) = 0u;
  *(this + 372792) = 0u;
  *(this + 372808) = 0u;
  *(this + 372824) = 0u;
  *(this + 372840) = 0u;
  *(this + 372856) = 0u;
  *(this + 372872) = 0u;
  *(this + 372888) = 0u;
  *(this + 372904) = 0u;
  *(this + 372920) = 0u;
  *(this + 372936) = 0u;
  *(this + 372952) = 0u;
  *(this + 372968) = 0u;
  BlueFin::GlPeClkCalibrateMgr::GlPeClkCalibrateMgr(v28, v12, a3);
  *(this + 23430) = 0u;
  *(this + 23431) = 0u;
  *(this + 23428) = 0u;
  *(this + 23429) = 0u;
  *(this + 23426) = 0u;
  *(this + 23427) = 0u;
  BlueFin::GlPeConvUtilCache::m_potThis = this + 374816;
  *(this + 374912) = a8;
  *(this + 374913) = 256;
  *(this + 374915) = 0;
  *(this + 374919) = 0;
  *(this + 93730) = -7200001;
  *(this + 23433) = 0u;
  *(this + 23434) = 0u;
  *(this + 23435) = 0u;
  *(this + 23436) = 0u;
  *(this + 23437) = 0u;
  *(this + 23438) = 0u;
  *(this + 23439) = 0u;
  *(this + 23440) = 0u;
  *(this + 23441) = 0u;
  *(this + 23442) = 0u;
  *(this + 23443) = 0u;
  *(this + 23444) = 0u;
  *(this + 23445) = 0u;
  *(this + 23446) = 0u;
  *(this + 23447) = 0u;
  *(this + 23448) = 0u;
  *(this + 23449) = 0u;
  *(this + 46900) = a2;
  *(this + 375208) = 0;
  *(this + 93805) = 0;
  *(this + 375224) = 0;
  if (!*(this + 4))
  {
    DeviceFaultNotify("glposeng.cpp", 216, "GlPosEng", "m_pcbCallBacks");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 216, "m_pcbCallBacks");
  }

  *(this + 43774) = this + 157952;
  BlueFin::GlPosEng::InitMeasEng(this);
  if (*v25)
  {
    v21 = "Created GlPosEng\n";
  }

  else
  {
    v21 = "Couldn't allocate memory for the PE\n";
  }

  if (*v25)
  {
    v22 = 127;
  }

  else
  {
    v22 = 11;
  }

  GlCustomLog(v22, v21);
  GlCustomLog(127, "Size,GlPosEng,%u\n", 375232);
  GlCustomLog(127, "    ->Size,GlPeRangeAidGen,%u\n", 19392);
  GlCustomLog(127, "    ->Size,GlPeMsmtMgr,%u\n", 56352);
  GlCustomLog(127, "    ->Size,GlPeFixStatus,%u\n", 10304);
  GlCustomLog(127, "    ->Size,GlReqSm,%u\n", 54912);
  GlCustomLog(127, "    ->Size,GlNvMemImpl,%u\n", 11928);
  GlCustomLog(127, "    ->Size,GlPeCntinMgr,%u\n", 288);
  GlCustomLog(127, "    ->Size,GlPeHula,%u\n", 5336);
  GlCustomLog(127, "    ->Size,GlPeSensListener,%u\n", 16);
  GlCustomLog(127, "    ->Size,GlPeSensorsMgr,%u\n", 2416);
  GlCustomLog(127, "    ->Size,GlPeMeIfDummy,%u\n", 8);
  *(this + 375212) = 0;
  return this;
}

void sub_2987E16F0(_Unwind_Exception *a1)
{
  BlueFin::GlReqSm::~GlReqSm((v1 + 126144));
  *(v1 + 71840) = &unk_2A1F0B5A8;
  *(v1 + 71864) = 0;
  _Unwind_Resume(a1);
}

void sub_2987E1ABC(_Unwind_Exception *a1)
{
  *(v1 + 416) = &unk_2A1F0B5A8;
  *(v1 + 440) = 0;
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::GlPeGloFcnOsnMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 424) = a1 + 32;
  *(a1 + 712) = 0;
  *(a1 + 1104) = -7200001;
  *(a1 + 1108) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 6367;
  *(a1 + 1164) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = -1;
  *(a1 + 1184) = xmmword_298A3BA20;
  *(a1 + 1200) = &off_2A1F0B5F0;
  *(a1 + 1208) = xmmword_298A3C630;
  *(a1 + 1224) = 0;
  *(a1 + 1249) = 0;
  v7 = vdup_n_s32(0xFF9222FF);
  do
  {
    v8 = *(a1 + 424) + v6;
    *v8 = 0;
    *(v8 + 2) = 0;
    *(v8 + 4) = v7;
    memset_pattern16((v8 + 12), &unk_298A3C640, 0xCuLL);
    *(v8 + 24) = 0;
    *(v8 + 26) = 0;
    v6 += 28;
  }

  while (v6 != 392);
  v9 = 0;
  v10 = vdup_n_s32(0xFF9222FF);
  do
  {
    v11 = (a1 + v9);
    v11[54] = v10;
    v11[55].i8[0] = 0;
    v11[55].i32[1] = 0;
    v11[56].i8[0] = 0;
    v9 += 20;
  }

  while (v9 != 280);
  v12 = 0;
  v13 = vdup_n_s32(0xFF9222FF);
  do
  {
    v14 = a1 + v12;
    *(a1 + v12 + 716) = v13;
    *(v14 + 728) = -8;
    *(v14 + 724) = 0;
    v12 += 16;
  }

  while (v12 != 384);
  memset((a1 + 1225), 248, 24);
  return a1;
}

uint64_t *BlueFin::GlPeBdIFMgr::GlPeBdIFMgr(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  v7 = a1 + 2560;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = &unk_2A1F09610;
  a1[6] = (a1 + 12);
  a1[7] = (a1 + 2830);
  a1[8] = (a1 + 2828);
  *(a1 + 18) = 1408;
  *(a1 + 38) = 16129;
  *(a1 + 78) = 16;
  BlueFin::GlArray::Clear((a1 + 5));
  a1[2838] = a1 + 22716;
  *(v7 + 2232) = 2;
  a1[2970] = (a1 + 2844);
  v8 = *a1;
  a1[2971] = &unk_2A1F0ED58;
  a1[2972] = v8;
  a1[2973] = &unk_2A1F0EDA8;
  a1[2974] = v8;
  *(v7 + 1664) = 0;
  *(a1 + 23812) = -1;
  a1[2975] = &unk_2A1F0EDF8;
  a1[2978] = v8;
  *(v7 + 1680) = 0;
  *(a1 + 23844) = -1;
  a1[2979] = &unk_2A1F0EE48;
  a1[2982] = v8;
  bzero(a1 + 2844, 0x3F0uLL);
  *(a1 + 22716) = 0;
  return a1;
}

uint64_t BlueFin::GlPeGnssEphemerisMgr::GlPeGnssEphemerisMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a1 = &unk_2A1F0D8A8;
  BlueFin::GlPeGpsEphMgr::GlPeGpsEphMgr(a1 + 8, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *(a1 + 7008) = 0u;
  *(a1 + 6992) = 0u;
  *(a1 + 6976) = 0u;
  *(a1 + 7024) = 1;
  *(a1 + 6976) = BlueFin::GlPeObjFactory::MakeSbasEphMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1));
  *&v23 = *(&a9 + 1);
  *(&v23 + 1) = a11;
  *(a1 + 6984) = BlueFin::GlPeObjFactory::MakeGloEphMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, a2, a3, a4, a5, a6, a7, a8, a13, a9, v23);
  *(a1 + 6992) = BlueFin::GlPeObjFactory::MakeQzssEphMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *(a1 + 7000) = BlueFin::GlPeObjFactory::MakeBdsEphMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, a2, a3, a4, a5, a6, a7, a8, a12, a9, a10, a11);
  *(a1 + 7008) = BlueFin::GlPeObjFactory::MakeGalEphMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  v20 = 0;
  *(a1 + 7016) = BlueFin::GlPeObjFactory::MakeNicEphMgr(BlueFin::GlPeObjFactory::m_potGlPeObjFactory, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  do
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(a1, v20);
    if (Mgr)
    {
      *(Mgr + 533) = *(a1 + 7024);
    }

    ++v20;
  }

  while (v20 != 7);
  return a1;
}

void *BlueFin::GlPeSbasMgr::GlPeSbasMgr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  *a1 = &unk_2A1F10C88;
  *(&v13 + 1) = a9;
  *&v13 = a8;
  v11 = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 1, a2, a3, a4, a5, a6, a7, v13, a10, 0, 19, 28, (a1 + 227));
  *v11 = &unk_2A1F10C88;
  *(v11 + 1464) = 0;
  *(v11 + 3944) = 0;
  *(v11 + 1468) = 0u;
  *(v11 + 1484) = 0u;
  *(v11 + 1500) = 0u;
  *(v11 + 1516) = 0u;
  *(v11 + 1532) = 0u;
  *(v11 + 1548) = 0u;
  *(v11 + 1564) = 0u;
  *(v11 + 1580) = 0u;
  *(v11 + 1596) = 0u;
  *(v11 + 1612) = 0u;
  *(v11 + 1628) = 0u;
  *(v11 + 1644) = 0u;
  *(v11 + 1660) = 0u;
  *(v11 + 1676) = 0u;
  *(v11 + 1692) = 0u;
  *(v11 + 1708) = 0u;
  *(v11 + 1724) = 0u;
  *(v11 + 1740) = 0u;
  *(v11 + 1756) = 0u;
  *(v11 + 1772) = 0u;
  *(v11 + 1788) = 0u;
  *(v11 + 1800) = 0u;
  *(v11 + 3948) = -1;
  *(v11 + 540) = 0u;
  *(v11 + 556) = 0u;
  *(v11 + 572) = 0u;
  *(v11 + 588) = 0u;
  *(v11 + 604) = 0u;
  *(v11 + 620) = 0u;
  *(v11 + 636) = 0u;
  *(v11 + 652) = 0u;
  *(v11 + 668) = 0u;
  *(v11 + 684) = 0;
  memcpy((v11 + 692), &BlueFin::GlPeSbasMgr::m_InitIonoData, 0x300uLL);
  return a1;
}

uint64_t BlueFin::GlPeObjFactory::MakeGloEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  Memory = BlueFin::GlMemAlloc::glAllocateMemory(64, 8000, *a1);
  if (!Memory)
  {
    return *(a1 + 120);
  }

  result = BlueFin::GlPeGloEphMgr::GlPeGloEphMgr(Memory, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *(a1 + 120) = result;
  return result;
}

uint64_t BlueFin::GlPeGloEphMgr::Stitcher::Stitcher(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 9) = 10;
  *(a1 + 32) = 0u;
  *(a1 + 16) = a1 + 32;
  v5 = vdup_n_s32(0xFF9222FF);
  *(a1 + 24) = v5;
  *(a1 + 48) = 0u;
  *a1 = &unk_2A1F0FED0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  v6 = (a1 + 80);
  *(a1 + 112) = 0u;
  *(a1 + 88) = 2593;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = v5;
  *(a1 + 128) = 0u;
  *(a1 + 80) = &unk_2A1F0FED0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 8) = 32;
  BlueFin::GlPeGloEphemeris::PutCmpSignedField(a1, 4, a3);
  *(a1 + 88) &= 0xF0u;
  BlueFin::GlPeGloEphemeris::PutCmpSignedField(v6, 4, a3);
  *(a1 + 168) = vdupq_n_s64(0xC15B773FC0000000);
  return a1;
}

uint64_t BlueFin::GlPeObjFactory::MakeQzssEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  if (*(a1 + 28) != 1)
  {
    return 0;
  }

  result = BlueFin::GlMemAlloc::glAllocateMemory(63, 2496, *a1);
  if (result)
  {
    result = BlueFin::GlPeQzssEphMgr::GlPeQzssEphMgr(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    *(a1 + 128) = result;
  }

  return result;
}

void *BlueFin::GlPeObjFactory::MakeBdsEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  if (*(a1 + 25) != 1)
  {
    return 0;
  }

  result = BlueFin::GlMemAlloc::glAllocateMemory(49, 18696, *a1);
  if (result)
  {
    result = BlueFin::GlPeBdsEphMgr::GlPeBdsEphMgr(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    *(a1 + 136) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeGalEphMgr::GlPeGalEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *a1 = &unk_2A1F0FCF0;
  *&v18[24] = a11;
  *&v18[8] = a9;
  *v18 = a8;
  v12 = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 5, a2, a3, a4, a5, a6, a7, *v18, *&v18[16], a10, 36, 28, a1 + 540);
  *v12 = &unk_2A1F0FCF0;
  *(a1 + 4576) = &unk_2A1F09610;
  *(a1 + 4584) = a1 + 4672;
  *(a1 + 4592) = a1 + 4616;
  *(a1 + 4600) = a1 + 4652;
  *(a1 + 4608) = 108;
  *(a1 + 4612) = 9217;
  *(a1 + 4614) = 18;
  BlueFin::GlArray::Clear((v12 + 572));
  v13 = (a1 + 6624);
  v14 = 1152;
  do
  {
    *(v13 - 8) = -1;
    *(v13 - 1) = -1;
    *v13 = 0;
    v13[1] = 0;
    *(v13 + 13) = 0;
    v13 += 4;
    v14 -= 32;
  }

  while (v14);
  bzero((a1 + 4672), 0x798uLL);
  v15 = (a1 + 6624);
  v16 = 36;
  do
  {
    *(v15 - 8) = -1;
    *(v15 - 1) = -1;
    *v15 = 0;
    v15[1] = 0;
    *(v15 + 13) = 0;
    v15 += 4;
    --v16;
  }

  while (v16);
  return a1;
}

uint64_t BlueFin::GlPeObjFactory::MakeNicEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  if (*(a1 + 29) != 1)
  {
    return 0;
  }

  result = BlueFin::GlMemAlloc::glAllocateMemory(51, 2848, *a1);
  if (result)
  {
    result = BlueFin::GlPeNicEphMgr::GlPeNicEphMgr(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    *(a1 + 152) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeNicEphMgr::GlPeNicEphMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *a1 = &unk_2A1F0DDE8;
  *&v18[24] = a11;
  *&v18[8] = a9;
  *v18 = a8;
  v12 = BlueFin::GlPeEphemerisMgr::GlPeEphemerisMgr(a1, 6, a2, a3, a4, a5, a6, a7, *v18, *&v18[16], a10, 14, 28, a1 + 540);
  *v12 = &unk_2A1F0DDE8;
  *(a1 + 2112) = &unk_2A1F09610;
  *(a1 + 2120) = a1 + 2176;
  *(a1 + 2128) = a1 + 2152;
  *(a1 + 2136) = a1 + 2166;
  *(a1 + 2144) = 84;
  *(a1 + 2148) = 3585;
  *(a1 + 2150) = 8;
  BlueFin::GlArray::Clear((v12 + 264));
  for (i = 0; i != 672; i += 84)
  {
    v14 = a1 + i;
    *(v14 + 2176) = 7;
    *(v14 + 2180) = 0;
    *(v14 + 2184) = -7200001;
    v15 = (a1 + i + 2188);
    v16 = (a1 + i + 2200);
    *v16 = 0uLL;
    v16[1] = 0uLL;
    v16[2] = 0uLL;
    *(v16 + 44) = 0uLL;
    *(v14 + 2196) = 0;
    *v15 = 0;
  }

  return a1;
}

BlueFin::GlPeLtoMgr *BlueFin::GlPeLtoMgr::GlPeLtoMgr(BlueFin::GlPeLtoMgr *this, BlueFin::GlPeAsstMgr *a2, BlueFin::GlPeTimeManager *a3, BlueFin::GlPeKF *a4, BlueFin::GlPeClkCalibrateMgr *a5, BlueFin::GlSettingsImpl *a6, BlueFin::GlPeSvHealthMgr *a7)
{
  *(this + 64) = 0;
  *(this + 9) = "LTO";
  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 12) = a4;
  *(this + 13) = a5;
  *(this + 14) = a6;
  *(this + 15) = a7;
  BlueFin::GlPeLtoData::GlPeLtoData(this + 128);
  v8 = 0;
  *(this + 93) = this + 576;
  do
  {
    v9 = *(this + 93) + v8;
    *(v9 + 12) = 0;
    *v9 = v9 + 12;
    *(v9 + 8) = 2;
    v8 += 24;
  }

  while (v8 != 168);
  v10 = 0;
  *(this + 117) = this + 768;
  do
  {
    v11 = *(this + 117) + v10;
    *(v11 + 12) = 0;
    *v11 = v11 + 12;
    *(v11 + 8) = 2;
    v10 += 24;
  }

  while (v10 != 168);
  v12 = 0;
  *(this + 149) = this + 1024;
  do
  {
    v13 = *(this + 149) + v12;
    *(v13 + 12) = 0;
    *v13 = v13 + 12;
    *(v13 + 8) = 2;
    v12 += 24;
  }

  while (v12 != 168);
  v14 = 0;
  *(this + 173) = this + 1216;
  do
  {
    v15 = *(this + 173) + v14;
    *(v15 + 12) = 0;
    *v15 = v15 + 12;
    *(v15 + 8) = 2;
    v14 += 24;
  }

  while (v14 != 168);
  v16 = 0;
  *(this + 197) = this + 1408;
  do
  {
    v17 = *(this + 197) + v16;
    *(v17 + 12) = 0;
    *v17 = v17 + 12;
    *(v17 + 8) = 2;
    v16 += 24;
  }

  while (v16 != 168);
  *(this + 1636) = 0;
  *(this + 100) = 0u;
  *(this + 101) = 0u;
  *(this + 816) = 0;
  BlueFin::GlPeLtoFileContentStorageMgr::GlPeLtoFileContentStorageMgr((this + 1648));
  v18 = 0;
  *(this + 3333) = this + 26496;
  do
  {
    v19 = *(this + 3333) + v18;
    *(v19 + 12) = 0;
    *v19 = v19 + 12;
    *(v19 + 8) = 2;
    v18 += 24;
  }

  while (v18 != 168);
  *(this + 126) = 0;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 60) = 0u;
  BlueFin::GlPeLtoMgr::Clear(this, 0);
  return this;
}

void BlueFin::GlPeLtoMgr::Clear(BlueFin::GlPeLtoMgr *this, char a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = (*(this + 93) + 8);
  v5 = 7;
  do
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 24;
    bzero(v6, ((4 * v7 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v5;
  }

  while (v5);
  v8 = (*(this + 117) + 8);
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
  if ((a2 & 1) == 0)
  {
    BlueFin::GlPeLtoData::GlPeLtoData(&v25);
    BlueFin::GlPeLtoData::operator=(this + 128, &v25);
    v12 = (*(this + 173) + 8);
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
    v16 = (*(this + 197) + 8);
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
    v25 = &v27;
    v26 = 3;
    v27 = -1;
    v28 = -1;
    BlueFin::GlPeLtoFileContentStorageMgr::Clear(this + 1648, &v25);
    v20 = (*(this + 3333) + 8);
    v21 = 7;
    do
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v20 += 24;
      bzero(v22, ((4 * v23 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v21;
    }

    while (v21);
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeIonoMgr::GlPeIonoMgr(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = a1 + 45056;
  do
  {
    v7 = a1 + v5;
    *v7 = &unk_2A1F10338;
    *(v7 + 8) = 0uLL;
    *(v7 + 24) = 0uLL;
    *(v7 + 40) = 0uLL;
    *(v7 + 56) = 0;
    v5 += 64;
  }

  while (v5 != 320);
  *(a1 + 320) = a1 + 332;
  *(a1 + 328) = 3;
  *(a1 + 340) = 0;
  *(a1 + 332) = 0;
  *(a1 + 344) = a2;
  *(a1 + 352) = a3;
  BlueFin::GlPeIONXMgr::GlPeIONXMgr(a1 + 384, a3, a4);
  *(v6 + 3432) = &unk_2A1F10368;
  *(v6 + 3440) = a1;
  *(v6 + 3452) = 0;
  BlueFin::GlPeIonoMgr::Clear(a1);
  *(a1 + 8) = xmmword_298A40360;
  *(a1 + 24) = xmmword_298A40370;
  *(a1 + 40) = xmmword_298A40380;
  *(a1 + 56) = 0x4E82101400000000;
  GlCustomLog(15, "IONO(DEF): ");
  *v9.i64 = *(a1 + 8) * 1073741820.0;
  *v10.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vnegq_f64(v11);
  v13 = vbslq_s8(v12, v10, v9);
  if (*v9.i64 > 4294967300.0)
  {
    v9.i64[0] = v13.i64[0];
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v8.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    v9 = vbslq_s8(v12, v9, v8);
    *v9.i64 = -*v9.i64;
  }

  if (*v9.i64 < 0.0)
  {
    v14 = --*v9.i64;
  }

  else
  {
    v14 = *v9.i64;
  }

  *v9.i64 = *(a1 + 16) * 134217728.0;
  *v8.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v15 = vbslq_s8(v12, v8, v9);
  if (*v9.i64 <= 4294967300.0)
  {
    *v15.i64 = *(a1 + 16) * 134217728.0;
  }

  if (*v15.i64 < -4294967300.0)
  {
    *v9.i64 = -*v15.i64;
    *v15.i64 = -(*v15.i64 - trunc(*v15.i64 * -2.32830644e-10) * -4294967300.0);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v8 = vnegq_f64(v16);
    *v15.i64 = -*vbslq_s8(v8, v15, v9).i64;
  }

  if (*v15.i64 < 0.0)
  {
    v17 = --*v15.i64;
  }

  else
  {
    v17 = *v15.i64;
  }

  *v9.i64 = *(a1 + 24) * 16777216.0;
  *v13.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = vnegq_f64(v18);
  v13.i64[0] = vbslq_s8(v19, v13, v9).u64[0];
  if (*v9.i64 > 4294967300.0)
  {
    v9.i64[0] = v13.i64[0];
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v8.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    v9 = vbslq_s8(v19, v9, v8);
    *v9.i64 = -*v9.i64;
  }

  if (*v9.i64 < 0.0)
  {
    v20 = --*v9.i64;
  }

  else
  {
    v20 = *v9.i64;
  }

  *v9.i64 = *(a1 + 32) * 16777216.0;
  *v8.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v21 = vbslq_s8(v19, v8, v9);
  if (*v9.i64 <= 4294967300.0)
  {
    *v21.i64 = *(a1 + 32) * 16777216.0;
  }

  if (*v21.i64 < -4294967300.0)
  {
    *v9.i64 = -*v21.i64;
    *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    *v21.i64 = -*vbslq_s8(vnegq_f64(v22), v21, v9).i64;
  }

  if (*v21.i64 < 0.0)
  {
    v23 = --*v21.i64;
  }

  else
  {
    v23 = *v21.i64;
  }

  GlCustomLog(15, "%d, %d, %d, %d, ", v14, v17, v20, v23);
  GlCustomLog(15, "%d, %d, %d, %d, ", *(a1 + 40) / 2048, *(a1 + 44) / 0x4000, *(a1 + 48) / 0x10000, *(a1 + 52) / 0x10000);
  GlCustomLog(15, "\n");
  return a1;
}

void sub_2987E2F64(_Unwind_Exception *a1)
{
  *(v1 + 384) = &unk_2A1F0B5A8;
  *(v1 + 408) = 0;
  _Unwind_Resume(a1);
}

double BlueFin::GlPeIONXMgr::GlPeIONXMgr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  *a1 = &unk_2A1F0B5A8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 46176) = a1 + 96;
  *(a1 + 46184) = 0;
  *(a1 + 46280) = xmmword_298A34B14;
  *(a1 + 46296) = unk_298A34B24;
  *(a1 + 46312) = xmmword_298A34B34;
  *(a1 + 46328) = unk_298A34B44;
  *(a1 + 46216) = constinit;
  *(a1 + 46232) = unk_298A34AE4;
  *(a1 + 46248) = xmmword_298A34AF4;
  *(a1 + 46264) = unk_298A34B04;
  *(a1 + 46408) = xmmword_298A34B94;
  *(a1 + 46424) = unk_298A34BA4;
  *(a1 + 46440) = xmmword_298A34BB4;
  *(a1 + 46456) = unk_298A34BC4;
  *(a1 + 46344) = constinit_1;
  *(a1 + 46360) = unk_298A34B64;
  *(a1 + 46376) = xmmword_298A34B74;
  *(a1 + 46392) = unk_298A34B84;
  *(a1 + 46504) = xmmword_298A34BF4;
  *(a1 + 46520) = unk_298A34C04;
  *(a1 + 46472) = constinit_2;
  *(a1 + 46488) = *algn_298A34BE4;
  *(a1 + 46568) = xmmword_298A34C34;
  *(a1 + 46584) = unk_298A34C44;
  *(a1 + 46536) = xmmword_298A34C14;
  *(a1 + 46552) = unk_298A34C24;
  *(a1 + 46632) = xmmword_298A34C74;
  *(a1 + 46648) = unk_298A34C84;
  *(a1 + 46600) = *"1\b|@";
  *(a1 + 46616) = unk_298A34C64;
  *(a1 + 46696) = xmmword_298A34CB4;
  *(a1 + 46712) = unk_298A34CC4;
  *(a1 + 46664) = xmmword_298A34C94;
  *(a1 + 46680) = unk_298A34CA4;
  *(a1 + 46760) = 0;
  *(a1 + 46728) = constinit_4;
  *(a1 + 46744) = *algn_298A34CE4;
  *(a1 + 46800) = 0;
  *(a1 + 46784) = *algn_298A34D0C;
  *(a1 + 46768) = constinit_5;
  *(a1 + 46840) = 0;
  *(a1 + 46808) = constinit_6;
  *(a1 + 46824) = *algn_298A34D34;
  *(a1 + 46896) = unk_298A34D7C;
  *(a1 + 46880) = xmmword_298A34D6C;
  *(a1 + 46864) = unk_298A34D5C;
  *(a1 + 46848) = constinit_7;
  *(a1 + 46960) = unk_298A34DBC;
  *(a1 + 46944) = xmmword_298A34DAC;
  *(a1 + 46928) = unk_298A34D9C;
  *(a1 + 46912) = xmmword_298A34D8C;
  *(a1 + 47024) = unk_298A34DFC;
  *(a1 + 47008) = xmmword_298A34DEC;
  *(a1 + 46992) = unk_298A34DDC;
  *(a1 + 46976) = xmmword_298A34DCC;
  *(a1 + 47084) = *(&xmmword_298A34E2C + 12);
  *(a1 + 47072) = xmmword_298A34E2C;
  *(a1 + 47056) = unk_298A34E1C;
  *(a1 + 47040) = xmmword_298A34E0C;
  *(a1 + 47292) = xmmword_298A34F08;
  *(a1 + 47308) = unk_298A34F18;
  *(a1 + 47324) = xmmword_298A34F28;
  *(a1 + 47336) = *(&xmmword_298A34F28 + 12);
  *(a1 + 47228) = xmmword_298A34EC8;
  *(a1 + 47244) = unk_298A34ED8;
  *(a1 + 47260) = xmmword_298A34EE8;
  *(a1 + 47276) = unk_298A34EF8;
  *(a1 + 47164) = xmmword_298A34E88;
  *(a1 + 47180) = unk_298A34E98;
  *(a1 + 47196) = xmmword_298A34EA8;
  *(a1 + 47212) = unk_298A34EB8;
  *(a1 + 47100) = constinit_8;
  *(a1 + 47116) = unk_298A34E58;
  *(a1 + 47132) = xmmword_298A34E68;
  *(a1 + 47148) = unk_298A34E78;
  *(a1 + 47544) = xmmword_298A35004;
  *(a1 + 47560) = unk_298A35014;
  *(a1 + 47576) = xmmword_298A35024;
  *(a1 + 47588) = *(&xmmword_298A35024 + 12);
  *(a1 + 47480) = xmmword_298A34FC4;
  *(a1 + 47496) = unk_298A34FD4;
  *(a1 + 47512) = xmmword_298A34FE4;
  *(a1 + 47528) = unk_298A34FF4;
  *(a1 + 47416) = xmmword_298A34F84;
  *(a1 + 47432) = unk_298A34F94;
  *(a1 + 47448) = xmmword_298A34FA4;
  *(a1 + 47464) = unk_298A34FB4;
  *(a1 + 47352) = constinit_9;
  *(a1 + 47368) = *algn_298A34F54;
  *(a1 + 47384) = xmmword_298A34F64;
  *(a1 + 47400) = unk_298A34F74;
  *(a1 + 47700) = xmmword_298A350A0;
  *(a1 + 47716) = unk_298A350B0;
  *(a1 + 47732) = xmmword_298A350C0;
  *(a1 + 47636) = xmmword_298A35060;
  *(a1 + 47652) = unk_298A35070;
  *(a1 + 47668) = xmmword_298A35080;
  *(a1 + 47684) = unk_298A35090;
  *(a1 + 47604) = constinit_10;
  *(a1 + 47620) = unk_298A35050;
  *(a1 + 47844) = xmmword_298A35130;
  *(a1 + 47860) = unk_298A35140;
  *(a1 + 47876) = xmmword_298A35150;
  *(a1 + 47780) = xmmword_298A350F0;
  *(a1 + 47796) = unk_298A35100;
  *(a1 + 47812) = xmmword_298A35110;
  *(a1 + 47828) = unk_298A35120;
  *(a1 + 47748) = constinit_11;
  *(a1 + 47924) = xmmword_298A35180;
  *(a1 + 47940) = unk_298A35190;
  *(a1 + 47956) = xmmword_298A351A0;
  *(a1 + 47972) = unk_298A351B0;
  *(a1 + 47892) = constinit_12;
  *(a1 + 47908) = unk_298A35170;
  *(a1 + 48020) = xmmword_298A351E0;
  *(a1 + 48036) = unk_298A351F0;
  *(a1 + 48052) = xmmword_298A35200;
  *(a1 + 48068) = unk_298A35210;
  *(a1 + 47988) = constinit_13;
  *(a1 + 48004) = unk_298A351D0;
  do
  {
    v4 = *(a1 + 46176) + 11520 * v3;
    *v4 = 0;
    *(v4 + 8) = 0uLL;
    *(v4 + 24) = 0uLL;
    *(v4 + 40) = 0uLL;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0xFFFFFFFFLL;
    *(v4 + 11496) = v4 + 96;
    v5 = -11400;
    do
    {
      v6 = *(v4 + 11496) + v5;
      *(v6 + 11592) = 0;
      *(v6 + 11560) = 0uLL;
      *(v6 + 11576) = 0uLL;
      *(v6 + 11528) = 0uLL;
      *(v6 + 11544) = 0uLL;
      *(v6 + 11496) = 0uLL;
      *(v6 + 11512) = 0uLL;
      *(v6 + 11464) = 0uLL;
      *(v6 + 11480) = 0uLL;
      *(v6 + 11432) = 0uLL;
      *(v6 + 11448) = 0uLL;
      *(v6 + 11400) = 0uLL;
      *(v6 + 11416) = 0uLL;
      v5 += 200;
    }

    while (v5);
    ++v3;
  }

  while (v3 != 4);
  *(a1 + 76) = 0;
  result = 0.0;
  *(a1 + 60) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 46196) = 0;
  *(a1 + 46204) = 0;
  *(a1 + 46188) = 0;
  *(a1 + 46212) = 0;
  return result;
}

BlueFin::GlPeSvIdConverter *BlueFin::GlPeSvIdConverter::GlPeSvIdConverter(BlueFin::GlPeSvIdConverter *this, const BlueFin::GlPeGloFcnOsnMgr *a2, const BlueFin::GlSvIdSet *a3)
{
  *this = a2;
  *(this + 20) = 0u;
  *(this + 1) = this + 20;
  v4 = (this + 8);
  *(this + 16) = 8;
  *(this + 36) = 0u;
  *(this + 68) = 0u;
  *(this + 7) = this + 68;
  v5 = this + 56;
  *(this + 64) = 8;
  *(this + 84) = 0u;
  v20 = *(a3 + 8);
  memcpy(v24, *a3, 4 * v20);
  v22 = 0;
  v21 = 0;
  v23 = v24[0];
  BlueFin::GlSetIterator::operator++(&v20);
  while (v21 != v20)
  {
    v9 = v22;
    v19 = v22;
    v10 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[BlueFin::GlSvId::s_aucSvId2gnss[v22]];
    if (v10 > 4)
    {
      if (v10 == 5)
      {
        v18 = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss(this, &v19, v17, v6, v7);
        v16 = v9 - 76 > 0x3E || ((1 << (v9 - 76)) & 0x7C0000000000001FLL) == 0;
        v15 = v4;
        if (v16)
        {
          v15 = v5;
          if (v18 >= 0xBu)
          {
            if (v18 > 0x28u)
            {
              goto LABEL_22;
            }

            v15 = v5;
            if (((1 << v18) & 0x1C000012000) == 0)
            {
              goto LABEL_22;
            }
          }
        }

LABEL_20:
        v11 = v9 >> 5;
        v14 = 1 << v9;
        v13 = *v15;
LABEL_21:
        *(v13 + 4 * v11) |= v14;
        goto LABEL_22;
      }

      if (v10 == 7)
      {
        v18 = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss(this, &v19, v17, v6, v7);
        if (v18 > 7u || (v15 = v4, ((1 << v18) & 0xC8) == 0))
        {
          v15 = v5;
        }

        goto LABEL_20;
      }
    }

    else if (v10 == 1)
    {
      *(*v4 + 4 * (v22 >> 5)) |= 1 << v22;
    }

    else if (v10 == 3)
    {
      v18 = 0;
      BlueFin::GlPeSvIdConverter::SvId2Gnss(this, &v19, v17, v6, v7);
      v11 = v9 >> 5;
      if (v18 == 3)
      {
        v12 = 8;
      }

      else
      {
        v12 = 56;
      }

      v13 = *(this + v12);
      v14 = 1 << v9;
      goto LABEL_21;
    }

LABEL_22:
    BlueFin::GlSetIterator::operator++(&v20);
  }

  return this;
}

uint64_t BlueFin::GlPeTimeManager::GlPeTimeManager(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  v12 = a1 + 4096;
  *(a1 + 16) = a4;
  *(a1 + 24) = a8;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a9;
  BlueFin::GlPeGpsTimeMgr::GlPeGpsTimeMgr((a1 + 64));
  BlueFin::GlPeGlnTimeMgr::GlPeGlnTimeMgr(a1 + 192, a3);
  BlueFin::GlPeBdsTimeMgr::GlPeBdsTimeMgr(a1 + 2144);
  BlueFin::GlPeGalTimeMgr::GlPeGalTimeMgr((a1 + 2336));
  BlueFin::GlPeNicTimeMgr::GlPeNicTimeMgr((a1 + 2440));
  *(a1 + 2557) = 0;
  *(a1 + 2552) = 0;
  *(a1 + 2568) = -7200001;
  *(a1 + 2572) = 0u;
  *(a1 + 2588) = byte_2A18BAB18 - 1;
  *(a1 + 2589) = 5;
  *(a1 + 2592) = 0;
  *(a1 + 2596) = 0x80;
  *(a1 + 2600) = 0;
  *(a1 + 2604) = 0x80;
  *(a1 + 2608) = 0;
  *(a1 + 2616) = -1;
  *(a1 + 2624) = xmmword_298A3BA20;
  *(a1 + 2640) = 0u;
  *(a1 + 2656) = 0u;
  *(a1 + 2672) = 0u;
  memset_pattern16((a1 + 2688), &unk_298A45D20, 0x18uLL);
  *(a1 + 2712) = 61;
  *(a1 + 2716) = 0;
  *(a1 + 2720) = 0u;
  *(a1 + 2736) = 0x41EFFFFFFFE00000;
  *(a1 + 2760) = 0;
  *(a1 + 2744) = 0;
  *(a1 + 2752) = 0;
  *(a1 + 2768) = 0;
  *(a1 + 2776) = 0;
  *(a1 + 2784) = -1;
  *(a1 + 2792) = 0xC15B773FC0000000;
  *(a1 + 2800) = 0x41EFFFFFFFE00000;
  *(a1 + 2808) = 0;
  *(a1 + 2816) = -1;
  *(a1 + 2824) = 0xC15B773FC0000000;
  *(a1 + 2832) = 0x41EFFFFFFFE00000;
  *(a1 + 2840) = 128;
  *(a1 + 2864) = 0;
  *(a1 + 2848) = 0u;
  *(a1 + 2872) = -1;
  *(a1 + 2880) = 0;
  *(a1 + 2888) = -1;
  *(a1 + 2896) = xmmword_298A3BA20;
  *(a1 + 2912) = 0;
  *(a1 + 3204) = 0;
  *(a1 + 3388) = 0;
  *(a1 + 3392) = 0u;
  *(a1 + 3408) = 0u;
  *(a1 + 3424) = -1;
  *(a1 + 3426) = 0;
  *(a1 + 3432) = 0;
  *(a1 + 3440) = 0xC15B773FC0000000;
  *(a1 + 3456) = 0;
  *(a1 + 3448) = &off_2A1F0B5F0;
  *(a1 + 3464) = 0;
  *(a1 + 3472) = 0xC15B773FC0000000;
  *(a1 + 3488) = 0;
  *(a1 + 3480) = &off_2A1F0B5F0;
  *(a1 + 3496) = 0;
  *(a1 + 3504) = 0;
  *(a1 + 3508) = 0;
  *(a1 + 3512) = 0xC15B773FC0000000;
  *(a1 + 3528) = 0;
  *(a1 + 3520) = &off_2A1F0B5F0;
  *(a1 + 3536) = 0;
  *(a1 + 3544) = 0xC15B773FC0000000;
  *(a1 + 3560) = 0;
  *(a1 + 3552) = &off_2A1F0B5F0;
  *(a1 + 3568) = 0;
  *(a1 + 3576) = 0;
  *(a1 + 3584) = 0;
  *(a1 + 3592) = 0;
  *(a1 + 3600) = -1;
  *(a1 + 3608) = 0xC15B773FC0000000;
  *(a1 + 3616) = 0x41EFFFFFFFE00000;
  *(a1 + 3624) = 0x400000096;
  *(a1 + 3632) = 500;
  *(a1 + 3640) = &unk_2A1F186A8;
  *(a1 + 3656) = &off_2A1F0B5F0;
  *(a1 + 3648) = 0;
  *(a1 + 3652) = -7200001;
  *(a1 + 3664) = 0u;
  *(a1 + 3680) = xmmword_298A45CD0;
  *(a1 + 3696) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 3704) = 0;
  *(a1 + 3712) = 0;
  *(a1 + 3720) = -1;
  *(a1 + 3728) = xmmword_298A3BA20;
  *(a1 + 3784) = a1 + 3796;
  *(a1 + 3792) = 8;
  *(a1 + 4016) = a1 + 4028;
  *(a1 + 4024) = 8;
  *(a1 + 4408) = a1 + 4420;
  *(v12 + 320) = 8;
  *(a1 + 3776) = 0;
  *(a1 + 3760) = 0u;
  *(a1 + 3744) = 0u;
  *(a1 + 3796) = 0u;
  *(a1 + 3812) = 0u;
  *(a1 + 4008) = 0;
  *(a1 + 3976) = 0u;
  *(a1 + 3992) = 0u;
  *(a1 + 3944) = 0u;
  *(a1 + 3960) = 0u;
  *(a1 + 3912) = 0u;
  *(a1 + 3928) = 0u;
  *(a1 + 3880) = 0u;
  *(a1 + 3896) = 0u;
  *(a1 + 3848) = 0u;
  *(a1 + 3864) = 0u;
  *(a1 + 3832) = 0u;
  *(a1 + 4028) = 0u;
  *(a1 + 4044) = 0u;
  *(a1 + 4363) = 0u;
  *(a1 + 4352) = 0u;
  *(a1 + 4336) = 0u;
  *(a1 + 4320) = 0u;
  *(a1 + 4304) = 0u;
  *(a1 + 4288) = 0u;
  *(a1 + 4272) = 0u;
  *(a1 + 4256) = 0u;
  *(a1 + 4240) = 0u;
  *(a1 + 4224) = 0u;
  *(a1 + 4208) = 0u;
  *(a1 + 4192) = 0u;
  *(a1 + 4176) = 0u;
  *(a1 + 4160) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4128) = 0u;
  *(a1 + 4112) = 0u;
  *(a1 + 4096) = 0u;
  *(a1 + 4080) = 0u;
  *(a1 + 4064) = 0u;
  *(a1 + 4396) = 0;
  *(a1 + 4380) = 0u;
  *(a1 + 4456) = 0u;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 4504) = 0u;
  *(a1 + 4520) = 0u;
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0u;
  *(a1 + 4568) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4600) = 0u;
  *(a1 + 4616) = 0u;
  *(a1 + 4632) = 0u;
  *(a1 + 4648) = 0u;
  *(a1 + 4664) = 0;
  *(a1 + 4420) = 0u;
  *(a1 + 4436) = 0u;
  v13 = (a1 + 4696);
  v14 = 120;
  *(v12 + 576) = 0;
  *(a1 + 4676) = 0;
  do
  {
    *(v13 - 12) = -1;
    *(v13 - 2) = 0;
    *v13 = 0;
    v13 = (v13 + 20);
    v14 -= 20;
  }

  while (v14);
  *(v12 + 708) = xmmword_298A45CE0;
  *(a1 + 4824) = 0xC15B773FC0000000;
  *(a1 + 4832) = 0x41EFFFFFFFE00000;
  *(a1 + 4848) = 0;
  *(a1 + 4840) = &unk_2A1F11310;
  BlueFin::GlUtcTime::breakdownFct(a1 + 4840);
  *(a1 + 4876) = 0;
  *(a1 + 4872) = 0;
  BlueFin::GlPeGnssTime::m_potConversionTable = a1 + 2640;
  *(a1 + 3204) |= 0x6C3u;
  *(a1 + 2920) = 0u;
  *(a1 + 2936) = 0u;
  *(a1 + 2952) = 0u;
  *(a1 + 2968) = 0u;
  *(a1 + 2984) = 0u;
  *(a1 + 3000) = 0u;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0;
  memset_pattern16((a1 + 3040), &unk_298A45D20, 0x3CuLL);
  BlueFin::GlPeTimeManager::resetMgr(a1);
  BlueFin::GlPeTimeManager::resetTimeModels(a1);
  if ((a2 & 0x80000000) == 0)
  {
    v16[0] = 0;
    v16[1] = 604800 * a2;
    v16[2] = 0;
    v17 = xmmword_298A45CF0;
    BlueFin::GlPeTimeManager::setNumGps1023WeekRollovers(a1, v16);
    *(v12 + 778) = 1;
  }

  GlCustomLog(127, "Size,GlPeTimeManager,%u\n", 4896);
  GlCustomLog(127, "    ->Size,GlPeGlnTimeMgr,%u\n", 1952);
  GlCustomLog(127, "    ->Size,GlPeGalTimeMgr,%u\n", 104);
  GlCustomLog(127, "    ->Size,GlPeBdsTimeMgr,%u\n", 192);
  return a1;
}

uint64_t BlueFin::GlPeGlnTimeMgr::GlPeGlnTimeMgr(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *a1 = &unk_2A1F18538;
  *(a1 + 8) = a2;
  *(a1 + 64) = &unk_2A1F18508;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 111) = 0;
  *(a1 + 128) = 0;
  *(a1 + 181) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x737047FF9222FFLL;
  *(a1 + 184) = 0;
  *(a1 + 237) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = -7200001;
  *(a1 + 228) = 6517845;
  *(a1 + 1824) = a1 + 256;
  *(a1 + 1832) = a1 + 1844;
  *(a1 + 1840) = 3;
  *(a1 + 1844) = 0;
  *(a1 + 1852) = 0;
  *(a1 + 1856) = a1 + 1868;
  *(a1 + 1864) = 3;
  *(a1 + 1868) = 0;
  *(a1 + 1876) = 0;
  *(a1 + 1880) = a1 + 1892;
  *(a1 + 1888) = 3;
  *(a1 + 1892) = 0;
  *(a1 + 1900) = 0;
  *(a1 + 1904) = a1 + 1916;
  *(a1 + 1912) = 3;
  *(a1 + 1916) = 0;
  *(a1 + 1924) = 0;
  *(a1 + 1928) = a1 + 1940;
  *(a1 + 1936) = 3;
  *(a1 + 1940) = 0;
  *(a1 + 1948) = 0;
  do
  {
    v4 = (*(a1 + 1824) + v3);
    *(v4 + 89) = 0uLL;
    v4[4] = 0uLL;
    v4[5] = 0uLL;
    v4[2] = 0uLL;
    v4[3] = 0uLL;
    *v4 = 0uLL;
    v4[1] = 0uLL;
    v3 += 112;
  }

  while (v3 != 1568);
  (*(*a1 + 24))(a1);
  (*(*a1 + 32))(a1);
  return a1;
}

double BlueFin::GlPeGpsTimeMgr::GlPeGpsTimeMgr(BlueFin::GlPeGpsTimeMgr *this)
{
  *this = &unk_2A1F185D8;
  result = 0.0;
  *(this + 28) = 0u;
  *(this + 2) = this + 28;
  *(this + 24) = 8;
  *(this + 44) = 0u;
  *(this + 8) = &unk_2A1F185A8;
  *(this + 4) = 0;
  *(this + 57) = 0;
  *(this + 18) = 0;
  *(this + 76) = 0;
  *(this + 10) = &off_2A1F0B5F0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 112) = 0;
  return result;
}

void BlueFin::GlPeGlnTimeMgr::ResetMgr(BlueFin::GlPeGlnTimeMgr *this)
{
  v2 = 0;
  *(this + 2) = vdup_n_s32(0xFF9222FF);
  *(this + 20) = 1;
  *(this + 48) = 1;
  *(this + 52) = 0x1010000000000;
  *(this + 4) = 4287767295;
  *(this + 11) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  do
  {
    v3 = (*(this + 228) + v2);
    *(v3 + 89) = 0uLL;
    v3[4] = 0uLL;
    v3[5] = 0uLL;
    v3[2] = 0uLL;
    v3[3] = 0uLL;
    *v3 = 0uLL;
    v3[1] = 0uLL;
    v2 += 112;
  }

  while (v2 != 1568);
  bzero(*(this + 229), ((4 * *(this + 1840) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(this + 232), ((4 * *(this + 1864) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(this + 235), ((4 * *(this + 1888) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(this + 238), ((4 * *(this + 1912) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v4 = *(this + 241);
  v5 = ((4 * *(this + 1936) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v4, v5);
}

double BlueFin::GlPeGlnTimeMgr::ResetModels(BlueFin::GlPeGlnTimeMgr *this)
{
  *(this + 32) = 0;
  *(this + 182) = 0;
  *(this + 92) = 0;
  *(this + 68) = 1;
  *(this + 18) = 0;
  *(this + 76) = 0;
  *(this + 20) = 0;
  *(this + 42) = -7200001;
  *(this + 96) = 1;
  *(this + 25) = 0;
  *(this + 104) = 0;
  *(this + 27) = 0;
  *(this + 56) = -7200001;
  *&result = 0xFE000000FE00;
  *(this + 60) = 65024;
  *(this + 244) = 0;
  *(this + 31) = 0;
  return result;
}

__n128 BlueFin::GlPeGalTimeMgr::GlPeGalTimeMgr(BlueFin::GlPeGalTimeMgr *this)
{
  *this = &unk_2A1F18480;
  *(this + 2) = &unk_2A1F18420;
  *(this + 8) = &unk_2A1F18450;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
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

uint64_t BlueFin::GlPeBdsTimeMgr::GlPeBdsTimeMgr(uint64_t this)
{
  *this = &unk_2A1F18380;
  *(this + 8) = 0;
  *(this + 32) = &unk_2A1F18350;
  *(this + 64) = 0;
  *(this + 72) = &unk_2A1F18350;
  *(this + 104) = 0;
  *(this + 112) = &unk_2A1F18350;
  *(this + 16) = 0;
  *(this + 40) = 2;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 2;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 120) = 2;
  *(this + 124) = 0;
  *(this + 144) = 0;
  *(this + 152) = &unk_2A1F18350;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 160) = 2;
  *(this + 164) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 168) = 0;
  *(this + 24) = 0;
  *(this + 28) = 0;
  return this;
}

double BlueFin::GlPeNicTimeMgr::GlPeNicTimeMgr(BlueFin::GlPeNicTimeMgr *this)
{
  *this = &unk_2A1F0E078;
  *(this + 3) = &unk_2A1F0E018;
  *(this + 9) = &unk_2A1F0E048;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *&result = 4287767295;
  *(this + 12) = 4287767295;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 44) = 0;
  *(this + 50) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 22) = 0;
  *(this + 92) = 0;
  *(this + 25) = 0;
  *(this + 64) = 0;
  *(this + 104) = 0;
  return result;
}

void BlueFin::GlPeTimeManager::resetMgr(BlueFin::GlPeTimeManager *this)
{
  *(this + 4672) = 0;
  *(this + 2563) = 0;
  v2 = (this + 4696);
  v3 = 6;
  do
  {
    *(v2 - 12) = -1;
    *(v2 - 2) = 0;
    *v2 = 0;
    v2 = (v2 + 20);
    --v3;
  }

  while (v3);
  *(this + 2716) = 0;
  *(this + 322) = 0;
  if ((*(this + 4874) & 1) == 0)
  {
    *(this + 3424) = -1;
    *(this + 1713) = 0;
  }

  v4 = 0;
  *(this + 3172) = 0uLL;
  *(this + 3188) = 0uLL;
  *(this + 3140) = 0uLL;
  *(this + 3156) = 0uLL;
  *(this + 3108) = 0uLL;
  *(this + 3124) = 0uLL;
  *(this + 775) = 0;
  *(this + 1552) = 0;
  do
  {
    v5 = this + v4;
    v5[3108] = 7;
    v5[3119] = 7;
    v4 += 16;
  }

  while (v4 != 96);
  *(this + 415) = 0;
  *(this + 3288) = 0u;
  *(this + 3304) = 0u;
  *(this + 3256) = 0u;
  *(this + 3272) = 0u;
  *(this + 3224) = 0u;
  *(this + 3240) = 0u;
  *(this + 3208) = 0u;
  memset_pattern16(this + 3328, &unk_298A45D20, 0x3CuLL);
  *(this + 170) = 0u;
  *(this + 342) = 0x41EFFFFFFFE00000;
  *(this + 345) = 0;
  *(this + 2841) = 0;
  *(this + 343) = 0;
  *(this + 2752) = 0;
  *(this + 360) = 0;
  *(this + 722) = -1;
  *(this + 181) = xmmword_298A3BA20;
  *(this + 1456) = 0;
  *(this + 3388) = 0;
  *(this + 424) = 0;
  *(this + 3400) = 0u;
  *(this + 854) = 0;
  *(this + 858) = 0;
  *(this + 430) = 0xC15B773FC0000000;
  *(this + 432) = 0;
  *(this + 866) = 0;
  *(this + 434) = 0xC15B773FC0000000;
  *(this + 436) = 0;
  *(this + 874) = 0;
  *(this + 3504) = 0;
  *(this + 877) = 0;
  *(this + 439) = 0xC15B773FC0000000;
  *(this + 441) = 0;
  *(this + 884) = 0;
  *(this + 443) = 0xC15B773FC0000000;
  *(this + 445) = 0;
  *(this + 892) = 0;
  *(this + 3576) = 0;
  *(this + 164) = xmmword_298A3BA20;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= BlueFin::GlWeekTowTime::m_ucCurrentLs + 1025136000)
  {
    v6 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v6 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  *(this + 652) = 0;
  *(this + 653) = v6 + 1025136000;
  *(this + 654) = 2;
  *(this + 36) = 0;
  *(this + 89) = 0;
  BlueFin::GlPeGlnTimeMgr::ResetMgr((this + 192));
  *(this + 2344) = 0;
  *(this + 1173) = 0;
  *(this + 587) = 0;
  *(this + 269) &= 0xFFFFFFFCFFFFFFFCLL;
  *(this + 1081) = 0;
  *(this + 541) = 0;
  *(this + 2448) = 0;
  *(this + 1225) = 0;
  *(this + 2452) = 4287767295;

  BlueFin::GlPeTimeManager::updateConversionTable(this);
}

void BlueFin::GlPeTimeManager::resetTimeModels(BlueFin::GlPeTimeManager *this)
{
  if ((*(this + 4877) & 1) == 0)
  {
    *(this + 646) = 0;
    v3 = byte_2A18BAB18 - 1;
    *(this + 2588) = byte_2A18BAB18 - 1;
    *(this + 2589) = 5;
    *(this + 648) = 0;
    *(this + 2596) = 0x80;
    *(this + 650) = 0;
    *(this + 2604) = 0x80;
    BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs = 0;
    BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent = 0;
    BlueFin::GlWeekTowTime::m_ucNextLs = 0;
    BlueFin::GlWeekTowTime::m_ucCurrentLs = v3;
    *(this + 34) = 0;
    *(this + 140) = 0;
    *(this + 176) = 0;
    *(this + 10) = 0u;
    *(this + 19) = 0;
    BlueFin::GlPeGlnTimeMgr::ResetModels((this + 192));
    memset(v4, 0, sizeof(v4));
    *(this + 590) = 0;
    *(this + 1182) = 0;
    *(this + 592) = 0;
    *(this + 2372) = *&v4[4];
    *(this + 602) = 0;
    *(this + 1206) = 0;
    *(this + 604) = 0;
    *(this + 1212) = 0;
    *(this + 605) = 0;
    *(this + 2392) = 0;
    *(this + 2432) = 0;
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

    BlueFin::GlPeTimeManager::updateConversionTable(this);
  }
}

uint64_t BlueFin::GlPeTimeManager::setNumGps1023WeekRollovers(uint64_t this, const BlueFin::GlPeGnssTime *a2)
{
  if (*(this + 3424) == 255)
  {
    v3 = this;
    v29 = &off_2A1F0B5F0;
    v30 = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(a2, &v29);
    this = (v29[4])(&v29, Gps);
    if (this >= 0x24EA0000)
    {
      v5 = (v29[4])(&v29);
      *(v3 + 3426) = v5 / 0x93A80;
      *(v3 + 3424) = v5 / 0x24EA0000;
      v6 = *(v3 + 2568);
      if (v6 == -7200001)
      {
        v6 = 0;
      }

      this = GlCustomLog(14, "GlPeTimeManager::setNumGps1023WeekRollovers(%u):  Set number of GPS 1023 week rollovers (WNRO count) to %d at GPS week %d\n", v6, v5 / 0x24EA0000, v5 / 0x93A80);
      if (*(v3 + 2576))
      {
        if (!*(v3 + 2616))
        {
          BlueFin::GlPeTimeManager::GetTime(v3, *(a2 + 2), 1, v28);
          v27[0] = &off_2A1F0B5F0;
          v27[1] = 0;
          v7 = BlueFin::GlPeGnssTime::GetGps(v28, v27);
          this = (*(v27[0] + 32))(v27, v7);
          v8 = this / 0x93A80;
          if ((*(v3 + 3426) - this / 0x93A80) >= 512)
          {
            v9 = 0.0;
            if (*(a2 + 2) == 1)
            {
              v26 = -128;
              if (BlueFin::GlPeGpsTimeMgr::GetDeltaUTCSec((v3 + 64), &v29, &v26))
              {
                LeapSecFromHardcodedSchedule = 0;
              }

              else
              {
                LOBYTE(v27[0]) = 0;
                LeapSecFromHardcodedSchedule = BlueFin::GlPeTimeManager::getLeapSecFromHardcodedSchedule(a2, v27, v10);
                v26 = SLOBYTE(v27[0]);
              }

              v25 = 0;
              BlueFin::GlPeTimeManager::getLeapSecFromHardcodedSchedule(v28, &v25, v10);
              v12 = v26;
              v13 = v25;
              BlueFin::GlTimeDelta::GlTimeDelta(v27, (v26 - v25));
              BlueFin::GlWeekTowTime::operator+=(&v29, v27);
              v14 = *(v3 + 2568);
              v15 = (v29[4])(&v29);
              v16 = (v29[4])(&v29);
              LODWORD(v17) = v30;
              GlCustomLog(14, "GlPeTimeManager::setNumGps1023WeekRollovers(%u):  Verified time in GPS:{%d %.3lf}  oldLs:%d  newLs:%d  newLsUnc:%d\n", v14, v15 / 0x93A80, v17 * 2.32830644e-10 + (v16 % 0x93A80), v13, v12, LeapSecFromHardcodedSchedule);
              v9 = LeapSecFromHardcodedSchedule;
            }

            *(v3 + 3584) = *(BlueFin::GlUtils::m_pInstance + 1092);
            v18 = *(a2 + 2);
            UncUs = BlueFin::GlPeGnssTime::GetUncUs(a2, 0);
            *(v3 + 3592) = v30;
            *(v3 + 3600) = 0;
            *(v3 + 3608) = v18;
            *(v3 + 3616) = UncUs + v9 * 1000000.0;
            v20 = *(v3 + 2568);
            v21 = -7200001;
            if (v20 != -7200001)
            {
              v22 = *(v3 + 2572);
              if (v22)
              {
                v21 = v20 - v22 + *(BlueFin::GlUtils::m_pInstance + 1092);
              }

              else
              {
                v21 = *(v3 + 2568);
              }
            }

            v23 = v21;
            BlueFin::GlPeGnssTime::operator+=((v3 + 3592), (v21 - v18) * 0.001);
            *(v3 + 3608) = v23;
            *(v3 + 2768) = 1;
            v24 = *(v3 + 2568);
            if (v24 == -7200001)
            {
              v24 = 0;
            }

            return GlCustomLog(11, "GlPeTimeManager::setNumGps1023WeekRollovers(%u):  Incorrect WNRO count used!!!  initialWNRO:%d  correctWNRO:%d\n", v24, v8 >> 10, *(v3 + 3424));
          }
        }
      }
    }
  }

  return this;
}

uint64_t (*BlueFin::GlPeObjFactory::MakeGnssHwBiasMgr(uint64_t (**this)(uint64_t), const BlueFin::GlPeTimeManager *a2, const BlueFin::GlSettingsImpl *a3, const BlueFin::GlPeAsstMgr *a4))(uint64_t)
{
  result = BlueFin::GlMemAlloc::glAllocateMemory(65, 2568, *this);
  if (!result)
  {
    return this[20];
  }

  *(result + 120) = 0u;
  *(result + 104) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *(result + 34) = 1077936128;
  *result = &unk_2A1F10260;
  *(result + 18) = a2;
  *(result + 19) = a3;
  *(result + 20) = a4;
  *(result + 168) = 0;
  *(result + 43) = 0;
  *(result + 310) = result + 2492;
  *(result + 2488) = 19;
  *(result + 2492) = 0u;
  *(result + 2508) = 0u;
  *(result + 2524) = 0u;
  *(result + 2540) = 0u;
  *(result + 2552) = 0u;
  this[20] = result;
  return result;
}

uint64_t BlueFin::GlReqSm::GlReqSm(uint64_t a1, uint64_t a2, BlueFin::GlEventPump *a3, BlueFin::GlSettingsImpl *a4, uint64_t a5, BlueFin::GlPeTimeManager *a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v26 = (a1 + 53280);
  v39 = a1 + 31744;
  v27 = (a1 + 6400);
  *(a1 + 8) = 0;
  *(a1 + 16) = "STARTING";
  *(a1 + 24) = "OFF";
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *a1 = &unk_2A1F153B8;
  *(a1 + 108) = 0;
  *(a1 + 110) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0x10000EA60;
  *(a1 + 128) = a3;
  *(a1 + 304) = a1 + 160;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 338) = 0;
  *(a1 + 3624) = a1 + 3456;
  BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(a1 + 4928, 0xA0u, a1 + 3648);
  BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(a1 + 6240, 0xA0u, a1 + 4960);
  *(a1 + 6264) = a5;
  *(a1 + 6272) = a4;
  *(a1 + 6280) = a6;
  *(a1 + 6288) = a7;
  *(a1 + 6296) = a8;
  *(a1 + 6304) = a9;
  *(a1 + 6312) = a10;
  *(a1 + 6320) = a11;
  *(a1 + 6328) = a14;
  *(a1 + 6336) = a13;
  *(a1 + 6344) = a6;
  *(a1 + 6352) = a12;
  *(a1 + 6360) = a15;
  *(a1 + 6392) = 0;
  *v27 = 0;
  *(a1 + 6408) = 0;
  *(a1 + 6416) = 0x41EFFFFFFFE00000;
  *(a1 + 6368) = 0u;
  *(a1 + 6384) = -1;
  *(a1 + 6424) = a17;
  *(a1 + 6432) = a18;
  *(a1 + 6440) = a19;
  *(a1 + 6448) = a20;
  *(a1 + 6456) = a22;
  v27[64] = a23;
  *(a1 + 6468) = 0;
  BlueFin::GlPePendingBag::GlPePendingBag((a1 + 6496));
  BlueFin::GlPeReqBag::GlPeReqBag(a1 + 10880, a4, a1, a15, a7, a7 + 56, a23, a6, a13, a10, a9, a11, a8, a18, a19, a21, a22);
  *(a1 + 31607) = 0;
  *(a1 + 31600) = 0;
  *(a1 + 31584) = 0u;
  *(a1 + 31736) = 0;
  *v39 = 0;
  *(a1 + 31784) = 0;
  *(a1 + 31752) = 0;
  *(a1 + 31760) = 0u;
  *(a1 + 31775) = 0;
  *(v39 + 48) = 0;
  *(v39 + 52) = 0;
  *(a1 + 31616) = 0u;
  *(a1 + 31632) = 0u;
  *(a1 + 31647) = 0;
  *(a1 + 31656) = 0u;
  *(a1 + 31672) = 0u;
  *(a1 + 31687) = 0;
  *(a1 + 31727) = 0;
  *(a1 + 31712) = 0u;
  *(a1 + 31696) = 0u;
  *(a1 + 31800) = a12;
  BlueFin::GlPePlatfStatMgr::GlPePlatfStatMgr((a1 + 31808));
  *(v39 + 1440) = 0;
  *(v39 + 1448) = a15;
  *(v39 + 1456) = a16;
  BlueFin::GlPePwrStateMgr::GlPePwrStateMgr((a1 + 33216), 0x7Fu, a3, (a5 + 184416), a1);
  *(v39 + 1760) = a1 + 33516;
  *(v39 + 1768) = 8;
  *(a1 + 33516) = 0u;
  *(a1 + 33532) = 0u;
  BlueFin::GlPeSatAidInfo::GlPeSatAidInfo((a1 + 33568));
  *(a1 + 42752) = 0;
  BlueFin::GlPeSatAidInfo::GlPeSatAidInfo((a1 + 42784));
  BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(a1 + 51968, 0xA0u, a1 + 52000);
  v28 = 0;
  v29 = 0;
  *v26 = vdup_n_s32(0xFF9222FF);
  v26[1].i8[0] = 0;
  v26[2] = (a1 + 53308);
  v26[3].i8[0] = 8;
  *(a1 + 53308) = 0u;
  *(a1 + 53324) = 0u;
  v26[8] = (a1 + 53356);
  v26[9].i8[0] = 8;
  *(a1 + 53356) = 0u;
  *(a1 + 53372) = 0u;
  v26[14] = (a1 + 53404);
  v26[15].i8[0] = 8;
  *(a1 + 53404) = 0u;
  *(a1 + 53420) = 0u;
  v26[20] = (a1 + 53452);
  v26[21].i8[0] = 19;
  *(a1 + 53544) = 0u;
  *(a1 + 53557) = 0;
  *(a1 + 53584) = 0;
  *(a1 + 53591) = 0;
  *(a1 + 53568) = 0u;
  *(a1 + 53992) = 0;
  *(a1 + 53999) = 0;
  *(a1 + 53976) = 0u;
  *(a1 + 54020) = 0;
  *(a1 + 54023) = 0;
  *(a1 + 53452) = 0u;
  *(a1 + 53468) = 0u;
  *(a1 + 53484) = 0u;
  *(a1 + 53500) = 0u;
  *(a1 + 53516) = 0u;
  *(a1 + 53525) = 0u;
  v26[85] = 0;
  v26[86].i16[0] = 0;
  v26[91] = 0;
  v26[92].i8[0] = 0;
  *(a1 + 53600) = 0u;
  *(a1 + 53616) = 0u;
  *(a1 + 53631) = 0;
  *(a1 + 53671) = 0;
  *(a1 + 53640) = 0u;
  *(a1 + 53656) = 0u;
  *(a1 + 53711) = 0;
  *(a1 + 53696) = 0u;
  *(a1 + 53680) = 0u;
  *(a1 + 53751) = 0;
  *(a1 + 53720) = 0u;
  *(a1 + 53736) = 0u;
  *(a1 + 53791) = 0;
  *(a1 + 53776) = 0u;
  *(a1 + 53760) = 0u;
  *(a1 + 53831) = 0;
  *(a1 + 53800) = 0u;
  *(a1 + 53816) = 0u;
  *(a1 + 53840) = 0u;
  *(a1 + 53856) = 0u;
  *(a1 + 53871) = 0;
  *(a1 + 53911) = 0;
  *(a1 + 53880) = 0u;
  *(a1 + 53896) = 0u;
  *(a1 + 53951) = 0;
  *(a1 + 53936) = 0u;
  *(a1 + 53920) = 0u;
  v26[93].i32[1] = -7200001;
  v26[94].i16[0] = 0;
  v26[94].i8[2] = 0;
  v26[94].i32[1] = 0;
  v26[95].i8[0] = 0;
  v26[108] = (a1 + 54048);
  v26[109].i8[0] = 0;
  v26[110] = (a1 + 54172);
  v26[111].i8[0] = 8;
  *(a1 + 54172) = 0u;
  *(a1 + 54188) = 0u;
  v26[116] = (a1 + 54220);
  v26[117].i8[0] = 8;
  *(a1 + 54220) = 0u;
  *(a1 + 54236) = 0u;
  v26[122] = (a1 + 54268);
  v26[123].i8[0] = 8;
  *(a1 + 54268) = 0u;
  *(a1 + 54284) = 0u;
  v26[128] = (a1 + 54316);
  v26[129].i8[0] = 8;
  *(a1 + 54316) = 0u;
  *(a1 + 54332) = 0u;
  v26[134] = (a1 + 54364);
  v26[135].i8[0] = 8;
  *(a1 + 54364) = 0u;
  *(a1 + 54380) = 0u;
  v26[140] = (a1 + 54412);
  v26[141].i8[0] = 8;
  *(a1 + 54412) = 0u;
  *(a1 + 54428) = 0u;
  v26[146] = (a1 + 54460);
  v26[147].i8[0] = 8;
  *(a1 + 54460) = 0u;
  *(a1 + 54476) = 0u;
  v26[152] = (a1 + 54508);
  v26[153].i8[0] = 8;
  *(a1 + 54508) = 0u;
  *(a1 + 54524) = 0u;
  v26[158].i16[0] = 0;
  *(a1 + 54556) = 0;
  *(a1 + 54548) = 0;
  v26[160].i16[0] = 1;
  v26[160].i32[1] = 14;
  v26[161].i32[0] = 0x1000000;
  v26[161].i8[4] = 0;
  v26[162].i32[0] = 0;
  v26[162].i8[4] = 0;
  v26[163].i32[0] = 0;
  v26[163].i16[2] = 0;
  v26[163].i8[6] = 0;
  v26[164].i32[0] = 0;
  *(a1 + 54600) = 0u;
  v26[164].i8[4] = 0;
  *(a1 + 54620) = 0x32000000C8;
  v26[167].i8[0] = 1;
  v26[168].i32[1] = 3600;
  v30 = *(a1 + 6264);
  v26[169] = (a1 + 54644);
  v26[170].i8[0] = 8;
  *(a1 + 54644) = 0u;
  *(a1 + 54660) = 0u;
  v26[175].i8[0] = 0;
  v26[193].i8[0] = 0;
  v26[194] = (v30 + 181056);
  *(a1 + 54816) = 0;
  *(a1 + 54800) = 0u;
  *(a1 + 54784) = 0u;
  *(a1 + 54768) = 0u;
  *(a1 + 54752) = 0u;
  *(a1 + 54736) = 0u;
  *(a1 + 54720) = 0u;
  *(a1 + 54704) = 0u;
  *(a1 + 54688) = 0u;
  v26[195].i32[0] = 0;
  v26[195].i8[4] = 0;
  *(a1 + 54877) = 0;
  *(a1 + 54895) = 0;
  *(a1 + 54888) = 0;
  v31 = *(a1 + 304);
  v31[7] = 0u;
  v31[8] = 0u;
  v31[5] = 0u;
  v31[6] = 0u;
  v31[3] = 0u;
  v31[4] = 0u;
  v31[1] = 0u;
  v31[2] = 0u;
  v32 = BlueFin::GlSvId::s_aucGnss2numSvId;
  *v31 = 0u;
  do
  {
    v33 = *v32++;
    BlueFin::GlMeSignalAidInfo::GlMeSignalAidInfo(*(a1 + 3624) + v28, v33, a1 + 1952 + 8 * v29);
    v29 += v33;
    v28 += 24;
  }

  while (v28 != 168);
  for (i = 0; i != 96; i += 32)
  {
    v35 = *&v26[108] + i;
    *v35 = 0;
    *(v35 + 4) = 0;
    *(v35 + 20) = 0;
    *(v35 + 12) = 0;
    *(v35 + 28) = 0;
  }

  BlueFin::QHsm::ctor(a1, BlueFin::GlReqSm::initial);
  v36 = *(a1 + 304);
  *(a1 + 88) = 0;
  *(a1 + 48) = v36;
  *(a1 + 56) = v36 + 144;
  *(a1 + 64) = v36;
  *(a1 + 72) = v36;
  *(a1 + 80) = 0x1000000000048;
  *(a1 + 40) = 0;
  BlueFin::QHsm::init(a1, 0);
  BlueFin::GlEventPump::AddActive(*(a1 + 128), a1);
  BlueFin::GlReqSm::initializeAiding(a1);
  *(a1 + 54845) = 0u;
  *(a1 + 54861) = 0u;
  GlCustomLog(127, "Size,GlReqSm,%u\n", 54912);
  GlCustomLog(127, "    ->Size,GlPePendingBag,%u\n", 4384);
  GlCustomLog(127, "    ->Size,GlPeReqBag,%u\n", 20704);
  GlCustomLog(127, "    ->Size,GlTimer,%u\n", 40);
  GlCustomLog(127, "    ->Size,GlPeGfcMgr,%u\n", 136);
  GlCustomLog(127, "    ->Size,GlPeFlpLocationStatus,%u\n", 31296);
  GlCustomLog(127, "    ->Size,GlPePlatfStatMgr,%u\n", 1376);
  GlCustomLog(127, "    ->Size,GlPePwrStateMgr,%u\n", 288);
  GlCustomLog(127, "    ->Size,GlPeSatAidInfo,%u\n", 9184);
  GlCustomLog(127, "    ->Size,GlPeSatAidInfo,%u\n", 9184);
  GlCustomLog(127, "    ->Size,GlMeSignalAidInfo,%u\n", 24);
  GlCustomLog(127, "    ->Size,GlPePpsGen,%u\n", 80);
  return a1;
}

BlueFin::GlPePendingBag *BlueFin::GlPePendingBag::GlPePendingBag(BlueFin::GlPePendingBag *this)
{
  v2 = 0;
  *this = 112;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 4) = 0u;
  *(this + 33) = this + 96;
  do
  {
    v3 = *(this + 33) + v2;
    *(v3 + 12) = 0;
    *v3 = v3 + 12;
    *(v3 + 8) = 2;
    v2 += 24;
  }

  while (v2 != 168);
  v4 = 0;
  *(this + 48) = this + 396;
  *(this + 396) = 0;
  *(this + 51) = this + 420;
  *(this + 420) = 0;
  *(this + 392) = 3;
  *(this + 101) = 0;
  *(this + 416) = 3;
  *(this + 107) = 0;
  *(this + 440) = 3;
  *(this + 54) = this + 444;
  *(this + 113) = 0;
  *(this + 444) = 0;
  *(this + 2068) = 0u;
  *(this + 392) = this + 2112;
  *(this + 3144) = 0;
  do
  {
    v5 = *(this + 392) + v4;
    *(v5 + 48) = -1;
    *(v5 + 52) = 0;
    *(v5 + 56) = 0;
    *v5 = 0uLL;
    *(v5 + 16) = 0uLL;
    *(v5 + 32) = 0uLL;
    v4 += 64;
  }

  while (v4 != 1024);
  *(this + 895) = 0;
  *(this + 448) = 0xFF9222FF00000000;
  *(this + 198) = 0u;
  *(this + 796) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 364) = 0u;
  bzero(this + 456, 0x64CuLL);
  *(this + 3252) = 0u;
  *(this + 3224) = 0u;
  *(this + 3240) = 0u;
  *(this + 3192) = 0u;
  *(this + 3208) = 0u;
  *(this + 3272) = 0u;
  *(this + 3288) = 0u;
  *(this + 3304) = 0u;
  *(this + 3320) = 0u;
  *(this + 3336) = 0u;
  *(this + 3352) = 0u;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 3400) = 0u;
  *(this + 3416) = 0u;
  *(this + 3432) = 0u;
  *(this + 3448) = 0u;
  *(this + 3464) = 0u;
  *(this + 3480) = 0u;
  *(this + 3496) = 0u;
  *(this + 3512) = 0u;
  *(this + 3528) = 0u;
  *(this + 3544) = 0u;
  *(this + 3560) = 0u;
  *(this + 3576) = 0;
  *(this + 3624) = 0;
  *(this + 3592) = 0u;
  *(this + 3608) = 0u;
  *(this + 227) = 0u;
  *(this + 228) = 0u;
  *(this + 229) = 0u;
  *(this + 230) = 0u;
  *(this + 231) = 0u;
  *(this + 232) = 0u;
  *(this + 233) = 0u;
  *(this + 234) = 0u;
  *(this + 3754) = 0u;
  bzero(this + 3776, 0x244uLL);
  return this;
}

BlueFin::GlPeNmeaGen *BlueFin::GlPeNmeaGen::GlPeNmeaGen(BlueFin::GlPeNmeaGen *this, BlueFin::GlSettingsImpl *a2, BlueFin::GlPeTimeManager *a3)
{
  v4 = 0;
  *(this + 40) = this + 32;
  *(this + 194) = this + 352;
  *(this + 217) = this + 1568;
  do
  {
    v5 = *(this + 217) + v4;
    *(v5 + 12) = 0;
    *v5 = v5 + 12;
    *(v5 + 8) = 2;
    v4 += 24;
  }

  while (v4 != 168);
  v6 = 0;
  v7 = 0;
  *(this + 229) = a2;
  *(this + 230) = a3;
  *(this + 1767) = 0u;
  *(this + 1783) = 0u;
  *(this + 1799) = 0u;
  *(this + 1815) = 0u;
  *this = 1;
  *(this + 440) = 0;
  *(this + 1763) = 0;
  memset(this + 1848, 248, 24);
  *(this + 4) = 0;
  *(this + 164) = 0;
  *(this + 330) = 0;
  *(this + 936) = 0;
  do
  {
    BlueFin::GlPeNmeaGsvSatsNum::GlPeNmeaGsvSatsNum(*(this + 40) + v7, v6);
    v7 += 48;
    ++v6;
  }

  while (v7 != 288);
  v8 = *(this + 194) + 4;
  v9 = 100;
  do
  {
    *(v8 - 4) = 8;
    *v8 = 0;
    *(v8 + 4) = 0;
    v8 += 12;
    --v9;
  }

  while (v9);
  return this;
}

uint64_t BlueFin::GlPeNmeaGsvSatsNum::GlPeNmeaGsvSatsNum(uint64_t result, unsigned int a2)
{
  *(result + 24) = result + 36;
  *(result + 32) = 2;
  *(result + 20) = 7;
  if (a2 <= 5)
  {
    *(result + 20) = dword_298A449F0[a2];
  }

  *(result + 16) = 0;
  *result = 0;
  *(result + 7) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t BlueFin::GlPeMeasStatus::GlPeMeasStatus(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v3 = a1 + 0x2000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 604800000;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = xmmword_298A44E50;
  *(a1 + 48) = 0;
  *(a1 + 52) = 100000000;
  *(a1 + 60) = 0;
  *(a1 + 456) = &unk_2A1F09610;
  *(a1 + 464) = a1 + 62;
  *(a1 + 472) = a1 + 162;
  *(a1 + 480) = a1 + 350;
  *(a1 + 488) = 1;
  *(a1 + 492) = -17407;
  *(a1 + 494) = 100;
  BlueFin::GlArray::Clear(a1 + 456);
  *(a1 + 496) = a1 + 508;
  *(a1 + 504) = 8;
  *(a1 + 508) = 0u;
  *(a1 + 524) = 0u;
  *(a1 + 544) = a1 + 556;
  *(a1 + 552) = 8;
  *(a1 + 556) = 0u;
  *(a1 + 572) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 616) = &unk_2A1F09610;
  *(a1 + 624) = a1 + 672;
  *(a1 + 632) = a1 + 9472;
  *(a1 + 640) = a1 + 9660;
  *(a1 + 648) = 88;
  *(a1 + 652) = -17407;
  *(a1 + 654) = 100;
  BlueFin::GlArray::Clear(a1 + 616);
  *(a1 + 9760) = a1 + 9772;
  *(v3 + 1576) = 8;
  *(a1 + 9772) = 0u;
  *(a1 + 9788) = 0u;
  *(v3 + 1616) = 0;
  bzero(*(a1 + 496), ((4 * *(a1 + 504) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(a1 + 544), ((4 * *(a1 + 552) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  return a1;
}

void *BlueFin::QHsm::init(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a1 + 8) != BlueFin::QHsm::top || (v3 = *(a1 + 32)) == 0)
  {
    DeviceFaultNotify("glhsm_qhsm.cpp", 42, "init", "myState == &QHsm::top && mySource != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_qhsm.cpp", 42, "myState == &QHsm::top && mySource != 0");
  }

  v15 = 0u;
  v14 = 0u;
  v12[0] = 0;
  if ((BlueFin::patch_trigger(v3, a1, a2, v12) & 1) == 0)
  {
    (*(a1 + 32))(a1, a2);
  }

  v12[1] = 0;
  v5 = BlueFin::QHsm::top;
  do
  {
    while (1)
    {
      v6 = *(a1 + 8);
      v13 = v6;
      if (BlueFin::patch_trigger(v6, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
      {
        v7 = BlueFin::_patched_state;
      }

      else
      {
        v7 = (v6)(a1, BlueFin::__pkgStdEvt);
      }

      v8 = &v13;
      if (v7 != v5)
      {
        do
        {
          v8[1] = v7;
          ++v8;
          if (BlueFin::patch_trigger(v7, a1, BlueFin::__pkgStdEvt, &BlueFin::_patched_state))
          {
            v7 = BlueFin::_patched_state;
          }

          else
          {
            v7 = (v7)(a1, BlueFin::__pkgStdEvt);
          }
        }

        while (v7 != v5);
        v6 = *v8;
      }

      do
      {
        if ((BlueFin::patch_trigger(v6, a1, byte_298A32C8C, &BlueFin::_patched_state) & 1) == 0)
        {
          (*v8)(a1, byte_298A32C8C);
        }

        v9 = *--v8;
        v6 = v9;
      }

      while (v9);
      v5 = *(a1 + 8);
      if (!BlueFin::patch_trigger(v5, a1, byte_298A32C8A, &BlueFin::_patched_state))
      {
        break;
      }

      result = BlueFin::_patched_state;
      if (BlueFin::_patched_state)
      {
        goto LABEL_22;
      }
    }

    result = (v5)(a1, byte_298A32C8A);
  }

  while (!result);
LABEL_22:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BlueFin::GlPePwrStateMgr *BlueFin::GlPePwrStateMgr::GlPePwrStateMgr(BlueFin::GlPePwrStateMgr *this, unsigned int a2, BlueFin::GlEventPump *a3, const BlueFin::GlPeKF *a4, BlueFin::GlReqSm *a5)
{
  *(this + 1) = 0;
  *(this + 2) = "STARTING";
  *(this + 3) = "OFF";
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *this = &unk_2A1F13A20;
  *(this + 14) = a3;
  *(this + 15) = a5;
  *(this + 18) = this + 128;
  *(this + 19) = a4;
  *(this + 20) = this + 172;
  *(this + 168) = 8;
  *(this + 188) = 0u;
  *(this + 172) = 0u;
  *(this + 52) = 0;
  *(this + 106) = 1;
  *(this + 228) = 0;
  *(this + 27) = this + 228;
  *(this + 224) = 3;
  *(this + 63) = 0;
  *(this + 255) = 0;
  *(this + 260) = 0;
  *(this + 265) = 0;
  *(this + 241) = 0;
  *(this + 236) = 0;
  *(this + 273) = 1;
  *(this + 274) = 0;
  *(this + 35) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  BlueFin::QHsm::ctor(this, BlueFin::GlPePwrStateMgr::initial);
  v6 = *(this + 18);
  *(this + 88) = 1;
  *(this + 6) = v6;
  *(this + 7) = v6 + 16;
  *(this + 8) = v6;
  *(this + 9) = v6;
  *(this + 10) = 0x1000000000008;
  *(this + 40) = 0;
  BlueFin::QHsm::init(this, 0);
  BlueFin::GlEventPump::AddActive(*(this + 14), this);
  return this;
}

uint64_t BlueFin::GlPePwrStateMgr::ComputeLowPowerState(BlueFin::GlPePwrStateMgr *this)
{
  v4 = &v6;
  v5 = 3;
  v6 = 0;
  v7 = 0;
  if (*(this + 257) == 1 && *(this + 248) == 1 && *(this + 208) == 1 && *(this + 258) == 1)
  {
    LODWORD(v6) = 2;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  if (!BlueFin::GlSetBase::operator==(this + 216, &v4))
  {
    *(this + 212) = 1;
    BlueFin::GlSetBase::operator=(this + 216, &v4);
    *(this + 228) = v6;
    *(this + 59) = v7;
  }

  return v2;
}

uint64_t BlueFin::GlReqSm::initial(uint64_t result)
{
  if (*(result + 6464) == 1)
  {
    *(result + 8) = BlueFin::GlReqSm::processing;
    v1 = *(result + 16);
    if (*(result + 24) != v1)
    {
      *(result + 24) = v1;
    }

    v2 = "&GlReqSm::processing";
  }

  else if (*(*(result + 6272) + 25964) == 1 && (*(result + 110) & 1) == 0)
  {
    *(result + 8) = BlueFin::GlReqSm::initialize_location_hub;
    v4 = *(result + 16);
    if (*(result + 24) != v4)
    {
      *(result + 24) = v4;
    }

    v2 = "&GlReqSm::initialize_location_hub";
  }

  else
  {
    *(result + 8) = BlueFin::GlReqSm::retention_check;
    v3 = *(result + 16);
    if (*(result + 24) != v3)
    {
      *(result + 24) = v3;
    }

    v2 = "&GlReqSm::retention_check";
  }

  *(result + 16) = v2;
  return result;
}

uint64_t (*BlueFin::GlReqSm::retention_check(BlueFin::GlReqSm *this, const char *a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7))()
{
  result = 0;
  switch(*a2)
  {
    case 2:
      v13 = *(this + 784);
      if (v13[22] >= 34 && (*(*v13 + 1096))(v13) && (((*(**(this + 784) + 1112))(*(this + 784)) & 1) != 0 || ((*(**(this + 784) + 1112))(*(this + 784)) & 1) == 0 && (*(**(this + 784) + 1128))(*(this + 784))))
      {
        (*(**(this + 784) + 1120))(*(this + 784), 0);
        if ((*(**(this + 784) + 1096))())
        {
          if (*(this + 39))
          {
            BlueFin::GlPosEng::ReinitMeasEng(*(this + 783));
          }
        }

        v14 = (this + 40);
        v15 = 60;
      }

      else
      {
        v14 = (this + 40);
        v15 = 59;
      }

      BlueFin::GlQueue::putFIFO(v14, v15, 0);
      goto LABEL_34;
    case 3:
      BlueFin::GlTimer::disarm(this + 6701);
      BlueFin::GlTimer::disarm(this + 6731);
      goto LABEL_34;
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
      goto LABEL_34;
    case 9:
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      BlueFin::GlPeReqBag::TerminateAll((this + 10880));
      result = 0;
      *(this + 54568) = 0;
      return result;
    case 0xA:
    case 0x31:
      BlueFin::GlReqSm::SetAsstFromPend(this, 0, 0);
      goto LABEL_34;
    case 0xC:
      BlueFin::GlReqSm::ProcessChipData(this, a2);
      goto LABEL_34;
    case 0x1F:
    case 0x25:
      v9 = *(this + 3048);
      v17 = &v19;
      v18 = 3;
      v19 = v9;
      v20 = 0;
      if ((v9 & 0x100) != 0 || BlueFin::GlPePendingBag::HasReq(this + 6496, 8))
      {
        v10 = *(this + 4131);
        GlCustomLog(14, "GlReqSm::wait4me calling HandleFactoryTestFailure\n");
        if ((*(v17 + 1) & 1) == 0)
        {
          BlueFin::GlReqSm::CreateNewReqFromPend(this);
        }

        BlueFin::GlPeReqBag::HandleFactoryTestFailure((this + 10880), v10);
        BlueFin::GlPeReqBag::TerminateAll((this + 10880));
        BlueFin::GlPeReqBag::Cleanup(this + 10880);
      }

      BlueFin::GlPosEng::SetDeathCause(*(this + 783), 1);
      BlueFin::GlPePendingBag::TerminateAll(this + 6496);
      *(this + 2712) = 0;
      v11 = "&GlReqSm::restart";
      v12 = BlueFin::GlReqSm::restart;
      goto LABEL_23;
    case 0x3B:
      BlueFin::GlPePendingBag::GetPendingRequestTypes(this + 6496, &v17);
      if ((v17 & 0xFFFFCFFF) == 0 && (v17 & 0x3000) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    case 0x3C:
LABEL_20:
      BlueFin::GlReqSm::SetAsicParams(this, a3, a4, a5, a6, a7);
      (*(**(this + 39) + 216))(*(this + 39));
      goto LABEL_34;
    case 0x3D:
      (*(**(this + 784) + 1120))(*(this + 784), 1);
      GlCustomLog(12, "GlReqSm::EswPatchLoaded!\n");
LABEL_22:
      v11 = "&GlReqSm::idle";
      v12 = BlueFin::GlReqSm::idle;
LABEL_23:
      BlueFin::QHsm::tran(this, v12, v11);
LABEL_34:
      result = 0;
      break;
    default:
      result = BlueFin::QHsm::top;
      break;
  }

  return result;
}

unsigned __int8 *BlueFin::GlReqSm::initializeAiding(BlueFin::GlReqSm *this)
{
  v2 = this + 53248;
  BlueFin::GlSvIdSet::operator~((*(this + 784) + 208), &__src);
  v30 = v29;
  memcpy(v34, __src, 4 * v29);
  v32 = 0;
  v31 = 0;
  v33 = v34[0];
  result = BlueFin::GlSetIterator::operator++(&v30);
  if (v31 != v30)
  {
    v4 = *(v2 + 138);
    v5 = *(v2 + 156);
    do
    {
      v6 = 1 << v32;
      v7 = (v32 >> 3) & 0x1C;
      *(v4 + v7) |= 1 << v32;
      *(v5 + v7) |= v6;
      result = BlueFin::GlSetIterator::operator++(&v30);
    }

    while (v31 != v30);
  }

  v8 = *(this + 784);
  v9 = *(v8 + 26294) == 1 && *(v8 + 88) > 36;
  v10 = *(v8 + 26298);
  if ((v10 & 1) == 0)
  {
LABEL_13:
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v11 = *(v2 + 138);
  v12 = *(v2 + 156);
  for (i = 52; i != 66; ++i)
  {
    v14 = i >> 5;
    *(v11 + 4 * v14) |= 1 << i;
    *(v12 + 4 * v14) |= 1 << i;
  }

  if (!v9)
  {
    for (j = 76; j != 139; ++j)
    {
      v16 = j >> 5;
      *(v11 + 4 * v16) |= 1 << j;
      *(v12 + 4 * v16) |= 1 << j;
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = 76;
  v30 = 76;
  do
  {
    result = BlueFin::GlSettingsImpl::DoesSvSupportBand5(v8, &v30);
    if ((result & 1) == 0)
    {
      v18 = v17 >> 5;
      *(*(v2 + 138) + 4 * v18) |= 1 << v17;
      *(*(v2 + 156) + 4 * v18) |= 1 << v17;
    }

    v30 = ++v17;
  }

  while (v17 != 139);
LABEL_18:
  v19 = 0;
  v20 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
  do
  {
    v21 = BlueFin::GlSvId::s_aucGnss2minSvId[v19];
    v22 = BlueFin::GlSvId::s_aucGnss2maxSvId[v19];
    if (v21 <= v22)
    {
      do
      {
        if (v19 != 2 || (v21 - 53) >= 2u && (v10 & 1) == 0)
        {
          v23 = *(this + 453) + 24 * v19;
          v24 = *(v23 + 14);
          if (v24 < *(v23 + 12) && v20[v21])
          {
            v25 = *(v2 + 329);
            result = v21;
            v26 = *(v23 + 16);
            *(v23 + 14) = v24 + 1;
            v27 = v26 + 8 * v24;
            *v27 = v21;
            *(v27 + 4) = v25;
          }
        }

        LOBYTE(v21) = v21 + 1;
      }

      while (v22 >= v21);
    }

    ++v19;
  }

  while (v19 != 7);
  *(v2 + 70) = 4;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_GetOutOfLegacy(BlueFin::GlMeSrdAsicinit *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 16) + 8);
  if ((v2 - 2) >= 2)
  {
    if (v2 == 1)
    {
      v6 = -769;
      *v5 = 0xAA550000FD00FELL;
      goto LABEL_6;
    }

    if (v2 != 5)
    {
      DeviceFaultNotify("glmesrd_asicinit.cpp", 3156, "Bri_GetOutOfLegacy", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 3156, "0");
    }
  }

  LOBYTE(v6) = -4;
  *v5 = 0xFF00AA5505FD00FFLL;
LABEL_6:
  result = BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v5);
  ++*(this + 187);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::esw_loading(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    (*(**(a1 + 120) + 96))(*(a1 + 120), a1 + 152);
  }

  else
  {
    result = BlueFin::GlMeSrdAsicinit::loading;
    if (v3 != 2)
    {
      return result;
    }

    *(a1 + 737) = 0;
    (*(**(a1 + 120) + 88))(*(a1 + 120), a1 + 152);
    (*(**(a1 + 120) + 48))(*(a1 + 120));
  }

  return 0;
}

uint64_t (*BlueFin::GlMeSrdAsicinit::loading(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 == 25)
  {
LABEL_5:
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdAsicinit::off, "&GlMeSrdAsicinit::off");
    return 0;
  }

  if (v2 == 5)
  {
    (*(**(a1 + 112) + 16))(*(a1 + 112));
    goto LABEL_5;
  }

  return BlueFin::QHsm::top;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::bri_wait4patchload(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::loading;
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v6 = *(a1 + 128);
      v7 = (*(*v6 + 184))(v6);
      if (*(v6 + 1212) == 1)
      {
        v7 = *(v6 + 1216);
      }

      *(v6 + 16) = v7;
      if (v7 == 805437445)
      {
        v8 = (*(**(a1 + 128) + 184))(*(a1 + 128));
        v9 = *(a1 + 128);
        v10 = (*(*v9 + 184))(v9);
        if (*(v9 + 1212) == 1)
        {
          v10 = *(v9 + 1216);
        }

        *(v9 + 16) = v10;
        v11 = v8 == v10;
      }

      else
      {
        v11 = 0;
      }

      if ((*(**(a1 + 128) + 256))(*(a1 + 128)) & 1) != 0 || ((*(**(a1 + 128) + 264))(*(a1 + 128)))
      {
        v12 = *(a1 + 128);
        v13 = v12[555];
        v14 = v12[561];
      }

      else
      {
        v13 = 0;
        v12 = *(a1 + 128);
      }

      if ((*(*v12 + 256))(v12))
      {
        v15 = *(a1 + 128);
        v16 = 1020;
        if (*(a1 + 738) == 1)
        {
          if (*(v15 + 555))
          {
            v16 = 4096;
          }

          else
          {
            v16 = 1020;
          }
        }
      }

      else
      {
        v15 = *(a1 + 128);
        v16 = 1020;
      }

      v17 = (*(*v15 + 184))(v15);
      if (*(v15 + 1212) == 1)
      {
        v18 = *(v15 + 1216);
      }

      else
      {
        v18 = v17;
      }

      *(v15 + 16) = v18;
      v19 = *(a1 + 128);
      v20 = v19[2];
      v21 = (*(*v19 + 40))(v19);
      if (!BlueFin::GlMeSrdAsicInitPatchLoader::Init((a1 + 200), v18, v16, ((v11 | v13) & 1), v20, v21))
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 1299, "bri_wait4patchload", "bPatchFound");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 1299, "bPatchFound");
      }

      v22 = "Patch loading";
      if (v13)
      {
        v22 = "Retention Check";
      }

      GlCustomLog(12, "GlMeSrdAsicinit::Starting %s: %s\n", v22, *(a1 + 248));
      if (v11)
      {
        GlCustomLog(12, "GlMeSrdAsicinit:: Patch will jump to ROM\n");
      }

      *(a1 + 733) = 0;
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
      }

      *(a1 + 736) = 0;
      GlCustomLog(12, "Disabling @ha\n");
    }

    else
    {
      if (v3 != 1)
      {
        return v4;
      }

      if ((*(a1 + 638) & 1) == 0)
      {
        *(a1 + 8) = BlueFin::GlMeSrdAsicinit::bri_wait4patchblockload;
        v5 = *(a1 + 16);
        if (*(a1 + 24) != v5)
        {
          *(a1 + 24) = v5;
        }

        v4 = 0;
        *(a1 + 16) = "&GlMeSrdAsicinit::bri_wait4patchblockload";
        return v4;
      }
    }

    return 0;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  *(a1 + 736) = 1;
  GlCustomLog(12, "Renabling @ha\n");
  v4 = 0;
  *(a1 + 733) = 0;
  return v4;
}

uint64_t BlueFin::GlMeSrdTransactionManager::ResetSeqIds(uint64_t this)
{
  *(this + 6610) = 0;
  *(this + 4334) = -256;
  *(this + 13971) = 0;
  return this;
}

uint64_t BlueFin::GlMeSrdTransactionManager::RegisterMisc(uint64_t this, BlueFin::GlRpcMiscIf *a2)
{
  if (!a2)
  {
    v2 = "pMiscIf != nullptr";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 207, "RegisterMisc", "pMiscIf != nullptr");
    v3 = 207;
    goto LABEL_7;
  }

  if (*(this + 17040))
  {
    if (!*(this + 17048))
    {
      *(this + 17048) = a2;
      return this;
    }

    v2 = "0";
    DeviceFaultNotify("glmesrd_transaction_handler.cpp", 218, "RegisterMisc", "0");
    v3 = 218;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_handler.cpp", v3, v2);
  }

  *(this + 17040) = a2;
  return this;
}

unint64_t BlueFin::GlMeSrdRpcMiscAsicInit::gll_misc_rpc_version_number(BlueFin::GlMeSrdRpcMiscAsicInit *this, char a2, char a3, char a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, const char *a9)
{
  if ((a2 & 1) == 0)
  {
    v32 = "flags&BIG_ENDIAN_VERSION_FLAG";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 4245, "gll_misc_rpc_version_number", "flags&BIG_ENDIAN_VERSION_FLAG");
    v33 = 4245;
    goto LABEL_41;
  }

  v13 = *(*(this + 1) + 128);
  v14 = (*(*v13 + 184))(v13);
  if (*(v13 + 1212) == 1)
  {
    v15 = *(v13 + 1216);
  }

  else
  {
    v15 = v14;
  }

  *(v13 + 16) = v15;
  v16 = *(*(this + 1) + 128);
  v17 = (*(*v16 + 184))(v16);
  if (*(v16 + 1212) == 1)
  {
    v18 = *(v16 + 1216);
  }

  else
  {
    v18 = v17;
  }

  *(v16 + 16) = v18;
  v19 = *(*(this + 1) + 128);
  v20 = (*(*v19 + 184))(v19);
  if (*(v19 + 1212) == 1)
  {
    v20 = *(v19 + 1216);
  }

  *(v19 + 16) = v20;
  v21 = a5 & 0xF0FFFFFE;
  v23 = (a5 & 0xF0FFFFFE) == 0x30FF0012 || v21 == 822018068;
  if (a5 == 956235783 && v15 == 889126919 || a5 == 939720711 && v18 == 872611847)
  {
    v24 = 1;
  }

  else if (v20 != 872480775 || (v24 = 1, a5 != 805371913) && a5 != 939589639)
  {
    v24 = 1;
    if (v21 != 822018062 && v21 != 822018064)
    {
      v24 = v23;
    }
  }

  v25 = *(*(this + 1) + 128);
  v26 = (*(*v25 + 184))(v25);
  if (*(v25 + 1212) == 1)
  {
    v26 = *(v25 + 1216);
  }

  *(v25 + 16) = v26;
  if (v26 == a5)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  if ((v27 & 1) == 0)
  {
    v32 = "m_rAsicInit.m_rAsicConfig.GetImageAsicVersionWithPossibleUpdate() == asic_version || bAllowVersionCheckException";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 4278, "gll_misc_rpc_version_number", "m_rAsicInit.m_rAsicConfig.GetImageAsicVersionWithPossibleUpdate() == asic_version || bAllowVersionCheckException");
    v33 = 4278;
LABEL_41:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v33, v32);
  }

  v28 = *(this + 1);
  v29 = v28[16];
  *(v29 + 21) = a3;
  *(v29 + 20) = a4;
  v34 = 776;
  v30 = v28[4];
  result = v28[1];
  v28[4] = result;
  do
  {
    v35 = 0;
    if (BlueFin::patch_dispatch(result, v28, &v34, &v35))
    {
      result = v35;
    }

    else
    {
      result = (v28[4])(v28, &v34);
    }

    v28[4] = result;
  }

  while (result);
  v28[4] = v30;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::Serialize(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v5 = v1;
  v14 = *MEMORY[0x29EDCA608];
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = 18;
    }

    if (v6 >= 0x13)
    {
      DeviceFaultNotify("glmesrd_asic_config.cpp", 4180, "Serialize", "ucVersion >= 1 && ucVersion <= 18");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 4180, "ucVersion >= 1 && ucVersion <= 18");
    }

    v10 = 73;
    v11 = v6;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F09520;
    v13 = v6;
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v1 + 20));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 21));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 16));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 8));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1424));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1425));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1426));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1427));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1428));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1429));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1430));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1432));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1433));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1434));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1435));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 1444));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1448));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 1452));
    if (v6 >= 2)
    {
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1456));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1457));
      if (v6 != 2)
      {
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1483));
        if (v6 >= 4)
        {
          BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1484));
          if (v6 != 4)
          {
            BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1485));
            if (v6 >= 6)
            {
              BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1488));
              BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1489));
              if (v6 != 6)
              {
                BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 1472));
                BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 1474));
                if (v6 >= 8)
                {
                  BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 1476));
                  BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 1478));
                  if (v6 != 8)
                  {
                    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1480));
                    if (v6 >= 0xA)
                    {
                      BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1481));
                      if (v6 != 10)
                      {
                        BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1482));
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

    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1458));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1459));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 1460));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 1464));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 1468));
    if (v6 >= 0xC)
    {
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1490));
      if (v6 != 12)
      {
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1491));
        if (v6 >= 0xE)
        {
          BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1493));
          if (v6 != 14)
          {
            BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1601));
            if (v6 >= 0x10)
            {
              BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 2180));
              if (v6 != 16)
              {
                BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1492));
                if (v6 == 18)
                {
                  BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 1212));
                  BlueFin::GlSysLogEntry::PutU32(&v9, *(v5 + 1216));
                }
              }
            }
          }
        }
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAsicinit::esw_wait4initasic(uint64_t a1))(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v1;
  v155 = *MEMORY[0x29EDCA608];
  v4 = *v2;
  if (v4 > 7)
  {
    if (v4 != 8 && v4 != 13)
    {
      goto LABEL_17;
    }

    v6 = v2;
    v7 = v2[1];
    if (v7 == 8)
    {
      GlCustomLog(12, "INIT_STAGE B: ACK\n");
      *(v3 + 632) |= 0x100u;
      v7 = v6[1];
    }

    if (v7 > 5)
    {
      switch(v7)
      {
        case 6:
          v8 = 64;
          GlCustomLog(12, "INIT_STAGE C: Received Rtc\n");
          break;
        case 10:
          v8 = 1024;
          GlCustomLog(12, "INIT_STAGE C: ACK\n");
          break;
        case 9:
          v27 = (*(v3 + 699))++ + 1;
          if (v27 != 3)
          {
            goto LABEL_47;
          }

          v8 = 512;
          GlCustomLog(12, "INIT_STAGE B1: ACK\n");
          break;
        default:
          goto LABEL_47;
      }
    }

    else
    {
      switch(v7)
      {
        case 1:
          v8 = 2;
          GlCustomLog(12, "INIT_STAGE C: Received NvRAM\n");
          break;
        case 4:
          v8 = 16;
          GlCustomLog(12, "INIT_STAGE C: Received Heartbeat\n");
          break;
        case 5:
          v8 = 32;
          GlCustomLog(12, "INIT_STAGE C: Received Sub-Heartbeat\n");
          break;
        default:
          goto LABEL_47;
      }
    }

    *(v3 + 632) |= v8;
LABEL_47:
    v28 = *(v3 + 632);
    if (~v28 & 0x52) != 0 || (v28 & 0x400) == 0 && (*(*(v3 + 128) + 23))
    {
      goto LABEL_125;
    }

    GlCustomLog(12, "INIT_STAGE: COMPLETE!\n");
    v150 = 0;
    v149 = 0;
    if (*(v3 + 168) != 1)
    {
      goto LABEL_56;
    }

    if (!BlueFin::GlMeSrdNvRamReader::IsInvalidateFlagSet((v3 + 168)))
    {
      LODWORD(v149) = BlueFin::GlMeSrdNvRamReader::GetDataReg1((v3 + 168));
      HIDWORD(v149) = BlueFin::GlMeSrdNvRamReader::GetDataReg2((v3 + 168));
      LODWORD(v150) = BlueFin::GlMeSrdNvRamReader::GetDataReg3((v3 + 168));
      RtcLsb = BlueFin::GlMeSrdNvRamReader::GetRtcLsb((v3 + 168));
      v47 = RtcLsb + BlueFin::GlMeSrdNvRamReader::GetRtc11bitsMsb((v3 + 168)) * 4294967300.0;
      v34 = v47 / 32.768;
      GlCustomLog(14, "AsicInit: NvRam captured  RtcCnt:%.0lf  RtcMs:%.3lf  Reg1:%08x  Reg2:%08x  Reg3:%08x\n", v47, v47 / 32.768, v149, HIDWORD(v149), v150);
      goto LABEL_72;
    }

    if (*(v3 + 168))
    {
      IsInvalidateFlagSet = BlueFin::GlMeSrdNvRamReader::IsInvalidateFlagSet((v3 + 168));
      v30 = "F";
      if (IsInvalidateFlagSet)
      {
        v30 = "T";
      }

      v31 = 84;
    }

    else
    {
LABEL_56:
      v30 = "N/A";
      v31 = 70;
    }

    GlCustomLog(14, "AsicInit: NvRam NOT captured  IsValid:%c  Invalidate:%s\n", v31, v30);
    v34 = 0.0;
LABEL_72:
    v48 = *(v3 + 144);
    v49 = *(v48 + 224);
    LODWORD(v32) = *(v48 + 232);
    LOWORD(v33) = *(v48 + 236);
    LODWORD(v48) = *(v48 + 152);
    v50 = v32 + v33 * 4294967300.0 + (v48 - v49) * 32.768;
    v51 = v50 / 32.768;
    GlCustomLog(14, "AsicInit: Rtc Recovered  Lms:%u  RtcCnt:%.0lf  RtcMs:%.3lf\n", v48, v50, v50 / 32.768);
    v52 = v34 != 0.0;
    v53 = v51 > v34;
    v54 = v51 - v34;
    v55 = "INVALID";
    if (v51 > v34)
    {
      v55 = "Valid";
    }

    v56 = v52 & v53;
    if (v52 && v53)
    {
      v57 = v51 - v34;
    }

    else
    {
      v57 = 0.0;
    }

    GlCustomLog(14, "AsicInit: Elapsed Time %s  ElapsedTimeMs:%.3lf\n", v55, v54);
    (*(**(v3 + 112) + 32))(*(v3 + 112), *(*(v3 + 144) + 152), *(v3 + 168), &v149, v56, v57);
    BlueFin::QHsm::tran(v3, BlueFin::GlMeSrdAsicinit::off, "&GlMeSrdAsicinit::off");
    goto LABEL_125;
  }

  if (v4 == 2)
  {
    v10 = *(v1 + 128);
    if (*(v10 + 8) == 1)
    {
      v11 = (*(*v10 + 1072))(*(v1 + 128));
      v12 = 0;
      v13 = 0;
      do
      {
        if (*(v11 + v12))
        {
          (*(**(v3 + 128) + 88))(*(v3 + 128));
          ++v13;
        }

        v12 += 8;
      }

      while (v12 != 192);
      if (v13)
      {
        (*(**(v3 + 128) + 88))(*(v3 + 128));
        if (v13 == 2)
        {
          (*(**(v3 + 128) + 88))(*(v3 + 128));
        }
      }

      v10 = *(v3 + 128);
    }

    if (*(v10 + 560) == 1)
    {
      v14 = (*(**(v3 + 120) + 80))(*(v3 + 120));
      v150 = 0;
      v149 = 0;
      v151[0] = 0;
      *&v151[1] = 1;
      v152 = v14;
      v153 = 0;
      v154 = 0;
      (*(*v14 + 16))(v14, 1);
      v15 = (*(*v14 + 48))(v14);
      v16 = (*(*v15 + 32))(v15);
      (*(*v16 + 32))(v16, &v149, 9, 3221228116, 128, 128);
      BlueFin::GlMeSrdTransaction::Complete(&v149);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v149);
      v10 = *(v3 + 128);
    }

    v17 = *(v10 + 8);
    if (v17 == 5)
    {
      BlueFin::GlMeSrdRfInit4777::GlMeSrdRfInit4777(v108, v10);
      GlCustomLog(12, "INIT_STAGE B: Programming RF type and switch to high speed clock! If no ACK comes back, check your frequency plan!\n");
      v18 = (*(**(v3 + 120) + 80))(*(v3 + 120));
      v149 = BlueFin::GlMeSrdAsicinit::OnReliableAck;
      v150 = v3;
      *v151 = 264;
      v151[2] = 0;
      v152 = v18;
      v153 = 0;
      v154 = 0;
      (*(*v18 + 16))(v18, 1);
      *(&v138 + 7) = -2140897180;
      *&v138 = 0x648064806480640ALL;
      LODWORD(v132[0]) = 0;
      v19 = *(v3 + 128);
      v20 = (*(*v19 + 184))(v19);
      if (*(v19 + 1212) == 1)
      {
        v20 = *(v19 + 1216);
      }

      *(v19 + 16) = v20;
      v21 = *(v3 + 128);
      if (*(v21 + 1417) == 1)
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 2205, "ProgramRfFrequencyPlanMinnow", "DR LP Hybrid mode is not supported on this platform\n");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 2205, "DR LP Hybrid mode is not supported on this platform\n");
      }

      v22 = *(v21 + 558);
      BlueFin::GlMeSrdRfInit4777::GetESWRadioMode(v108, v132);
      v23 = *(v3 + 128);
      if (v23[20] != 3 && v23[20])
      {
        v25 = 0;
        v26 = 0;
        RfInit = 0;
      }

      else
      {
        RfInit = BlueFin::GlMeSrdRfInit4777::GetRfInit(v108, 3);
        BlueFin::GlMeSrdRfInit4777::ProgramArRegs(v108);
        v25 = v113;
        if (v113 > 0xFF)
        {
          DeviceFaultNotify("glmesrd_asicinit.cpp", 2224, "ProgramRfFrequencyPlanMinnow", "ulApbCommandLength < 256");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 2224, "ulApbCommandLength < 256");
        }

        v26 = v112;
        *(&v138 + 1) = 3496214528;
        *(&v138 + 9) = 0;
        v23 = *(v3 + 128);
      }

      v36 = (*(*v23 + 96))(v23);
      *v36.i64 = v35 / 1000000.0;
      *v37.i64 = *v36.i64 - trunc(*v36.i64 * 2.32830644e-10) * 4294967300.0;
      v38.f64[0] = NAN;
      v38.f64[1] = NAN;
      *&v39 = vbslq_s8(vnegq_f64(v38), v37, v36).u64[0];
      if (*v36.i64 > 4294967300.0)
      {
        *v36.i64 = v39;
      }

      LOBYTE(v138) = *v36.i64;
      v40 = *(v3 + 128);
      if (v40[1644] == 1)
      {
        v41 = v40[1968];
        if (v41 + v25 >= 0x100)
        {
          DeviceFaultNotify("glmesrd_asicinit.cpp", 2255, "ProgramRfFrequencyPlanMinnow", "bIsMaxNumApbCommands");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 2255, "bIsMaxNumApbCommands");
        }

        v42 = v40 + 1648;
        if (v26)
        {
          v43 = 0;
          if (v41)
          {
            do
            {
              v44 = *v42;
              if (v44 != 192)
              {
                v45 = &v26[v25 + v43];
                *v45 = v44;
                *(v45 + 1) = *(v42 + 1);
                *(v45 + 1) = *(v42 + 1);
                if (!*v42)
                {
                  *v45 = -32;
                }

                ++v43;
              }

              v42 += 8;
              --v41;
            }

            while (v41);
          }

          v25 += v43;
        }

        else
        {
          v25 = v41;
          v26 = v42;
        }
      }

      if (!RfInit)
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 2287, "ProgramRfFrequencyPlanMinnow", "rf_init_ptrMNW");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 2287, "rf_init_ptrMNW");
      }

      v58 = (*(*v152 + 48))(v152);
      v59 = (*(*v58 + 16))(v58);
      (*(*v59 + 40))(v59, &v149, RfInit, &v138, v25, v26, LODWORD(v132[0]), *(*(v3 + 128) + 557), v22);
      BlueFin::GlMeSrdTransaction::Complete(&v149);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v149);
      v60 = *(v3 + 128);
      if (v60[2] != 5)
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 4831, "ProgramDRRegistersMinnow", "m_rAsicConfig.GetAsicType() == ASIC_MINNOW");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 4831, "m_rAsicConfig.GetAsicType() == ASIC_MINNOW");
      }

      v148 = 0;
      v147 = 0;
      v146 = 0;
      v145 = 0;
      v144 = 0;
      if ((*(*v60 + 784))())
      {
        v114 = HIBYTE(v148);
        v115 = BYTE2(v148);
        v120 = HIDWORD(v146);
        v121 = v146;
      }

      if ((*(**(v3 + 128) + 792))(*(v3 + 128), &v148 + 1, &v148, &v147 + 1, &v147, &v145 + 4, &v145, &v144 + 4, &v144))
      {
        v116 = BYTE1(v148);
        v117 = v148;
        v118 = HIBYTE(v147);
        v119 = v147;
        v122 = HIDWORD(v145);
        v123 = v145;
        v124 = HIDWORD(v144);
        v125 = v144;
      }

      BlueFin::GlMeSrdRfInit4777::ProgramDrRegs(v108);
      v61 = v113;
      if (v113 >= 0x100)
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 4866, "ProgramDRRegistersMinnow", "ulApbCommandLength < 256");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 4866, "ulApbCommandLength < 256");
      }

      v62 = *(v3 + 128);
      if (*(v62 + 1644) == 1)
      {
        v63 = *(v62 + 1968);
        if (v113 + v63 > 0xFF)
        {
          DeviceFaultNotify("glmesrd_asicinit.cpp", 4880, "ProgramDRRegistersMinnow", "bIsMaxNumApbCommands");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 4880, "bIsMaxNumApbCommands");
        }

        v64 = 0;
        if (*(v62 + 1968))
        {
          v65 = (v62 + 1652);
          do
          {
            if (*(v65 - 4) == 192)
            {
              v66 = &v112[v61 + v64];
              *v66 = -64;
              *(v66 + 1) = *(v65 - 1);
              *(v66 + 1) = *v65;
              ++v64;
            }

            v65 += 2;
            --v63;
          }

          while (v63);
        }

        LOBYTE(v61) = v64 + v61;
      }

      v67 = (*(**(v3 + 120) + 80))(*(v3 + 120));
      *&v138 = BlueFin::GlMeSrdAsicinit::OnReliableAck;
      *(&v138 + 1) = v3;
      v139 = 282;
      v140 = 0;
      v141 = v67;
      v142 = 0;
      v143 = 0;
      (*(*v67 + 16))(v67, 1);
      v68 = (*(*v67 + 48))(v67);
      v69 = (*(*v68 + 16))(v68);
      (*(*v69 + 56))(v69, &v138, v61, 0, *(*(v3 + 128) + 2184), *(*(v3 + 128) + 2188), *(*(v3 + 128) + 2192), v112);
      BlueFin::GlMeSrdTransaction::Complete(&v138);
      v70 = (*(**(v3 + 120) + 80))(*(v3 + 120));
      v132[0] = BlueFin::GlMeSrdAsicinit::OnReliableAck;
      v132[1] = v3;
      v133 = 282;
      v134 = 0;
      v135 = v70;
      v136 = 0;
      v137 = 0;
      (*(*v70 + 16))(v70, 1);
      v71 = (*(**(v3 + 128) + 1032))(*(v3 + 128));
      v72 = (*(**(v3 + 128) + 1080))(*(v3 + 128));
      BlueFin::GlMeSrdAsicinit::BypassLteFilter(v3, v132, v71, v72);
      v73 = (*(**(v3 + 120) + 80))(*(v3 + 120));
      v126[0] = BlueFin::GlMeSrdAsicinit::OnReliableAck;
      v126[1] = v3;
      v127 = 282;
      v128 = 0;
      v129 = v73;
      v130 = 0;
      v131 = 0;
      (*(*v73 + 16))(v73, 1);
      BlueFin::GlMeSrdRfInit4777::GlMeSrdRfInit4777(&v149, *(v3 + 128));
      BlueFin::GlMeSrdRfInit4777::ProgramNotchFilter4777x(&v149, v126);
      BlueFin::GlMeSrdTransaction::Complete(v126);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v126);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v132);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v138);
      v10 = *(v3 + 128);
      v17 = *(v10 + 8);
    }

    v74 = v17 == 5 || v17 == 3;
    if (v74 && *(v10 + 1973) && ((*(*v10 + 248))(v10) & 1) == 0 && ((*(**(v3 + 128) + 240))(*(v3 + 128)) & 1) == 0)
    {
      v75 = (*(**(v3 + 120) + 80))(*(v3 + 120));
      v150 = 0;
      v149 = 0;
      *v151 = 256;
      v151[2] = 0;
      v152 = v75;
      v153 = 0;
      v154 = 0;
      (*(*v75 + 16))(v75, 1);
      v76 = (*(*v75 + 48))(v75);
      v77 = (*(*v76 + 40))(v76);
      (*(*v77 + 96))(v77, &v149, v10 + 1972);
      BlueFin::GlMeSrdTransaction::Complete(&v149);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v149);
    }

    GlCustomLog(12, "INIT_STAGE C: Starting Hearbeat, RTC capture, NvRam Read, ...\n");
    v78 = (*(**(v3 + 120) + 80))(*(v3 + 120));
    v149 = BlueFin::GlMeSrdAsicinit::OnReliableAck;
    v150 = v3;
    *v151 = 266;
    v151[2] = 0;
    v152 = v78;
    v153 = 0;
    v154 = 0;
    (*(*v78 + 16))(v78, 1);
    v79 = (*(*v152 + 48))(v152);
    v80 = (*(*v79 + 40))(v79);
    (*(*v80 + 80))(v80, &v149, 1, 0, 5);
    v81 = (*(*v152 + 48))(v152);
    v82 = (*(*v81 + 16))(v81);
    (*(*v82 + 128))(v82, &v149, 0, 6);
    v138 = xmmword_298A34060;
    v83 = (*(*v152 + 48))(v152);
    v84 = (*(*v83 + 40))(v83);
    (*(*v84 + 16))(v84, &v149, &v138);
    v85 = *(v3 + 128);
    if (*(v85 + 23) != 1)
    {
      goto LABEL_117;
    }

    v108[0] = 1;
    *&v108[4] = 0x100000002;
    *&v108[12] = 0;
    v86 = *(v85 + 8);
    if (v86 == 3)
    {
      v91 = *(v85 + 1416);
      if (v91)
      {
        v92 = (*(*v152 + 48))(v152);
        v93 = (*(*v92 + 16))(v92);
        (*(*v93 + 144))(v93, &v149, v108);
      }

      if ((v91 & 2) == 0)
      {
        goto LABEL_117;
      }

      v90 = 5;
    }

    else
    {
      if (v86 != 5)
      {
        v96 = (*(*v152 + 48))(v152);
        v97 = (*(*v96 + 16))(v96);
        (*(*v97 + 144))(v97, &v149, v108);
        goto LABEL_117;
      }

      v87 = *(v85 + 1416);
      if (v87)
      {
        *&v108[4] = 6;
        v88 = (*(*v152 + 48))(v152);
        v89 = (*(*v88 + 16))(v88);
        (*(*v89 + 144))(v89, &v149, v108);
      }

      if ((v87 & 2) == 0)
      {
        goto LABEL_117;
      }

      v90 = 7;
    }

    *&v108[12] = 1;
    *&v108[4] = v90;
    v94 = (*(*v152 + 48))(v152);
    v95 = (*(*v94 + 16))(v94);
    (*(*v95 + 144))(v95, &v149, v108);
LABEL_117:
    LODWORD(v132[0]) = 0;
    v98 = (*(*v152 + 48))(v152);
    v99 = (*(*v98 + 16))(v98);
    (*(*v99 + 128))(v99, &v149, 7, 1);
    v100 = (*(*v152 + 48))(v152);
    v101 = (*(*v100 + 16))(v100);
    (*(*v101 + 120))(v101, &v149, 7, 1, v132);
    BlueFin::GlMeSrdTransaction::Complete(&v149);
    v102 = *(v3 + 128);
    if (*(v102 + 76))
    {
LABEL_118:
      if ((*(v102 + 8) & 0xFFFFFFFE) == 2)
      {
        v103 = (*(**(v3 + 120) + 80))(*(v3 + 120));
        *v108 = 0;
        *&v108[8] = 0;
        *&v108[15] = 0;
        v109 = v103;
        v110 = 0;
        v111 = 0;
        (*(*v103 + 16))(v103, 0);
        BlueFin::GlMeSrdTransaction::Complete(v108);
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v108);
      }
    }

    else
    {
      v104 = (v102 + 84);
      v105 = -1;
      while (v105 != 22)
      {
        v106 = *v104;
        v104 += 8;
        ++v105;
        if (v106)
        {
          if (v105 <= 0x16)
          {
            goto LABEL_118;
          }

          break;
        }
      }
    }

    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v149);
    goto LABEL_125;
  }

  if (v4 == 3)
  {
LABEL_125:
    result = 0;
    goto LABEL_126;
  }

LABEL_17:
  result = BlueFin::GlMeSrdAsicinit::esw_loading;
LABEL_126:
  v107 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2987E8934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&STACK[0x9D8]);
  _Unwind_Resume(a1);
}

BlueFin::GlMeSrdRfInit4777 *BlueFin::GlMeSrdRfInit4777::GlMeSrdRfInit4777(BlueFin::GlMeSrdRfInit4777 *this, const BlueFin::GlMeSrdAsicConfig *a2)
{
  *this = a2;
  *(this + 2) = (*(*a2 + 152))(a2);
  *(this + 2220) = 0;
  *(this + 556) = 0;
  *(this + 2228) = 24;
  *(this + 561) = 0;
  *(this + 2240) = 0;
  *(this + 279) = 0;
  v4 = *this;
  *(this + 2248) = *(*this + 1416);
  *(this + 2249) = v4[558];
  *(this + 282) = (*(*v4 + 88))(v4);
  *(this + 566) = 0;
  *(this + 2267) = 0;
  *(this + 284) = 0xD4FEEB00000000;
  *(this + 570) = (*(**this + 1272))();
  *(this + 2284) = (*(**this + 960))();
  *(this + 554) = 0;
  *(this + 2285) = 0;
  *(this + 2289) = 0;
  *(this + 2300) = 0;
  *(this + 2308) = 0;
  *(this + 2292) = 0;
  if (!(*(**this + 32))())
  {
    v5 = (*(*a2 + 184))(a2) & 0xF000FFFE;
    if (v5 == 805306388)
    {
      if ((*(*a2 + 96))(a2) == 52000000)
      {
        v6 = 4;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      if (v5 != 805306386)
      {
        DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 127, "GlMeSrdRfInit4777", "0");
        v14 = 127;
        goto LABEL_30;
      }

      v6 = 2;
    }

    goto LABEL_14;
  }

  if ((*(**this + 96))() != 26000000)
  {
    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 104, "GlMeSrdRfInit4777", "0");
    v14 = 104;
    goto LABEL_30;
  }

  if (!(*(**this + 40))())
  {
    if ((*(**this + 936))(*this))
    {
      v6 = 1;
    }

    else
    {
      v6 = 5;
    }

LABEL_14:
    *(this + 554) = v6;
    goto LABEL_15;
  }

  *(this + 554) = 6;
  GlCustomLog(15, "Set MNW Radio Version to Saturnas\n");
LABEL_15:
  v7 = 0;
  *(this + 71) = 0u;
  *(this + 60) = 0u;
  *(this + 44) = 0u;
  *(this + 28) = 0u;
  *(this + 12) = 0u;
  do
  {
    v8 = this + v7;
    *(v8 + 45) = 0;
    v8[88] = 0;
    *(v8 + 23) = 0;
    v7 += 8;
  }

  while (v7 != 2048);
  for (i = 0; i != 80; i += 8)
  {
    v10 = this + i;
    *(v10 + 1069) = 0;
    v10[2136] = 0;
    *(v10 + 535) = 0;
  }

  v11 = *this;
  v12 = *(*this + 548);
  if (v12)
  {
    *(this + 2240) = 0;
    if (v12 < 7 && ((0x39u >> (v12 - 1)) & 1) != 0)
    {
      *(this + 561) = dword_298A32C50[v12 - 1];
      return this;
    }

    DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1011, "SetIfTestPoint", "0");
    v14 = 1011;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v14, "0");
  }

  *(this + 561) = 0;
  if (*(v11 + 1391) == 1)
  {
    *(this + 2228) = *(v11 + 1392);
    *(this + 558) = *(v11 + 1396);
    *(this + 2236) = *(v11 + 1389);
    *(this + 2237) = *(v11 + 1390);
    *(this + 2238) = *(v11 + 1400);
    *(this + 2239) = *(v11 + 1401);
    LOBYTE(v12) = *(v11 + 1391);
  }

  *(this + 2240) = v12 & 1;
  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetGlns16MHz(BlueFin::GlMeSrdAsicConfig *this)
{
  if (*(this + 1421) == 1)
  {
    return (*(*this + 264))();
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetClockFrequencyHz(BlueFin::GlMeSrdAsicConfig *this)
{
  result = *(this + 7);
  if (!result)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 1831, "GetClockFrequencyHz", "m_ulFreqHz > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 1831, "m_ulFreqHz > 0");
  }

  return result;
}

uint64_t BlueFin::GlMeSrdRfInit4777::ProgramArRegs(BlueFin::GlMeSrdRfInit4777 *this)
{
  *(this + 556) = 0;
  v2 = *(this + 554);
  v3 = *(*this + 2184);
  if (v3 == 4)
  {
    v4 = 143;
  }

  else
  {
    v4 = 160;
  }

  if (v2 == 4)
  {
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 338, 156);
    if (v3 == 4)
    {
      v6 = 57;
    }

    else
    {
      v6 = 237;
    }

    if (v3 == 4)
    {
      v7 = 21;
    }

    else
    {
      v7 = 80;
    }

    if (v3 == 4)
    {
      v8 = 210;
    }

    else
    {
      v8 = 63;
    }

    if (v3 == 4)
    {
      v10 = 121;
    }

    else
    {
      v10 = 122;
    }

    v11 = 104;
    v12 = 52;
    v13 = 4;
    v14 = 16;
  }

  else
  {
    if (v2 == 3)
    {
      BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 338, 78);
      v5 = v3 == 4;
      if (v3 == 4)
      {
        v6 = 57;
      }

      else
      {
        v6 = 237;
      }

      if (v3 == 4)
      {
        v7 = 21;
      }

      else
      {
        v7 = 80;
      }

      if (v3 == 4)
      {
        v8 = 210;
      }

      else
      {
        v8 = 63;
      }

      v9 = 121;
    }

    else
    {
      BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 338, 78);
      v5 = v3 == 4;
      if (v3 == 4)
      {
        v6 = 64;
      }

      else
      {
        v6 = 192;
      }

      if (v3 == 4)
      {
        v7 = 47;
      }

      else
      {
        v7 = 162;
      }

      if (v3 == 4)
      {
        v8 = 164;
      }

      else
      {
        v8 = 126;
      }

      v9 = 243;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    v11 = 52;
    v12 = 26;
    v13 = 2;
    v14 = 8;
  }

  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 329, v4);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 336, 18);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 277, v6);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 278, v7);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 279, v8);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 280, v10);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 307, v14);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 308, v13);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 324, v12);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 305, v11);
  BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 182, 87);
  if (((*(**this + 184))() & 0xF000FFFE) == 0x30000014)
  {
    if (*(this + 554) == 3)
    {
      v15 = 38;
    }

    else
    {
      v15 = 34;
    }

    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 18, v15);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 290, 0);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 342, 12);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 312, 128);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 313, 10);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 323, 24);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 341, 129);
  }

  result = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 21, 6);
  if ((*(*this + 1416) & 3) == 0)
  {
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 354, 2);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 351, 8);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 87, 24);
    result = BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 148, 24);
  }

  v17 = *(this + 561);
  if (v17)
  {
    if (*(this + 2) == 1)
    {
      if ((v17 - 1) >= 2)
      {
        if (v17 == 3)
        {
          v18 = "m_eIfTestPoint != IF_TEST_OUTPUT_L5_I";
          DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1223, "ProgramArRegsForIfTestPoint", "m_eIfTestPoint != IF_TEST_OUTPUT_L5_I");
          v19 = 1223;
        }

        else
        {
          if (v17 != 4)
          {
LABEL_55:
            v18 = "0";
            DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1264, "ProgramArRegsForIfTestPoint", "0");
            v19 = 1264;
            goto LABEL_56;
          }

          v18 = "m_eIfTestPoint != IF_TEST_OUTPUT_L5_Q";
          DeviceFaultNotify("glmesrd_rfinit_minnow.cpp", 1224, "ProgramArRegsForIfTestPoint", "m_eIfTestPoint != IF_TEST_OUTPUT_L5_Q");
          v19 = 1224;
        }

LABEL_56:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_rfinit_minnow.cpp", v19, v18);
      }
    }

    else
    {
      if ((v17 - 3) < 2)
      {
        v23 = 12;
        BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 12, 185);
        v21 = 136;
        v22 = 3;
LABEL_70:
        BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 24, 214);
        BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 25, v23);
        BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 409, 2);
        if (*(this + 561) == v22)
        {
          v24 = 15;
        }

        else
        {
          v24 = 14;
        }

        return BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, v21, v24);
      }

      if ((v17 - 1) > 1)
      {
        goto LABEL_55;
      }
    }

    if (((*(**this + 184))() & 0xF0FFFFFF) == 0x30000013 && (*(**this + 1176))(*this) == 3)
    {
      v20 = 33;
    }

    else
    {
      v20 = 1;
    }

    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 8, v20);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 9, 5);
    v21 = 81;
    v22 = 1;
    v23 = 10;
    goto LABEL_70;
  }

  if (*(this + 2240) == 1)
  {
    BlueFin::GlMeSrdRfInit4777::AddOrUpdateInput(this, 63, 1, 1);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 408, 0);
    BlueFin::GlMeSrdRfInit4777::AddOrUpdateInput(this, 409, 7, 4);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 175, 12);
    BlueFin::GlMeSrdRfInit4777::Add_wOffsetInput(this, 224, 176, 2);

    return BlueFin::GlMeSrdRfInit4777::AddOrUpdateInput(this, 33, 3, 3);
  }

  return result;
}