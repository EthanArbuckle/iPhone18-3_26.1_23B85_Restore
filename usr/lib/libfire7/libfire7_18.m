uint64_t BlueFin::GlSignalIdList::GetSignalIdSet(uint64_t this, _DWORD *a2)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  if (*a2 != 1)
  {
    v2 = (a2 + 1);
    v3 = a2 + 2 * (*a2 - 1) + 4;
    do
    {
      v4 = *v2;
      if (v4 >= 0x23F)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      *(this + 12 + ((v4 >> 3) & 0x1FFC)) |= 1 << v4;
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t BlueFin::GlPeKfPool::ComputePosition(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 4656;
  v6 = (a1 + 4663);
  v7 = (a1 + 4663);
  do
  {
    v8 = v5[v4];
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v13, v7);
    if (v4 == 1)
    {
      BlueFin::GlPeNavGnssState::operator=(v13, v6);
    }

    if ((*(*v8 + 384))(v8))
    {
      (*(*v8 + 32))(v8, a2, v13);
    }

    ++v4;
    v7 = (v7 + 528);
  }

  while (v4 != 3);
  v9 = a1 + 3;
  v10 = a1[3];
  v11 = a1[1462];
  *(a1 + *(v10 - 24) + 240) = *(a1 + *(v11 - 24) + 11912);
  *(v9 + *(v10 - 24) + 224) = *(a1 + *(v11 - 24) + 11920);
  *(v9 + *(v10 - 24) + 208) = *(a1 + *(v11 - 24) + 11904);
  *(v9 + *(v10 - 24) + 232) = *(a1 + *(v11 - 24) + 11928);
  *(v9 + *(v10 - 24) + 220) = *(a1 + *(v11 - 24) + 11916);
  *(v9 + *(v10 - 24) + 228) = *(a1 + *(v11 - 24) + 11924);
  *(v9 + *(v10 - 24) + 212) = *(a1 + *(v11 - 24) + 11908);
  *(v9 + *(v10 - 24) + 236) = *(a1 + *(v11 - 24) + 11932);
  *(v9 + *(v10 - 24) + 168) = *(a1 + *(v11 - 24) + 11864);
  return BlueFin::GlPeNavGnssState::operator=(a1 + *(*a1 - 24), a1[4659] + *(*a1[4659] - 24));
}

BlueFin::GlPeNavGnssState *BlueFin::GlPeNavGnssState::GlPeNavGnssState(BlueFin::GlPeNavGnssState *this, const BlueFin::GlPeNavGnssState *a2)
{
  *this = &unk_2A1F11EF8;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  v4 = *(a2 + 10);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = v4;
  *(this + 11) = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 104) = *(a2 + 104);
  *(this + 15) = *(a2 + 15);
  *(this + 8) = *(a2 + 8);
  *(this + 36) = *(a2 + 36);
  *(this + 19) = *(a2 + 19);
  *(this + 40) = *(a2 + 40);
  *(this + 21) = *(a2 + 21);
  *(this + 11) = *(a2 + 11);
  *(this + 48) = *(a2 + 48);
  *(this + 196) = *(a2 + 196);
  *(this + 51) = *(a2 + 51);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  *(this + 60) = *(a2 + 60);
  *(this + 244) = *(a2 + 244);
  *(this + 31) = *(a2 + 31);
  *(this + 64) = *(a2 + 64);
  BlueFin::GlSetBase::GlSetBase((this + 264), this + 69, 0x13u, a2 + 33);
  BlueFin::GlSetBase::GlSetBase((this + 352), this + 91, 0x13u, a2 + 44);
  BlueFin::GlSetBase::GlSetBase((this + 440), this + 113, 0x13u, a2 + 55);
  return this;
}

unint64_t BlueFin::GlPeNavGnssKF::Propagate(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v6 = **(v1 + 8);
  v7 = *v1;
  v8 = *(v1 + *(*v1 - 24) + 200);
  if (v8)
  {
    v9 = v6 - v8;
    if (!v9)
    {
      DeviceFaultNotify("glpe_navgnsskf.cpp", 3182, "Propagate", "ulIntervalMs > 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 3182, "ulIntervalMs > 0");
    }

    v10 = v9 * 0.001;
    *(v1 + 2184) = v10;
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = *(v1 + 4776);
  v13 = *(v12 + 4216);
  if ((v13 == 1 || v13 == 6) && *(v12 + 4224) == 1 && (*(v12 + 4226) & 1) == 0 && (*(v12 + 4220) - 3) <= 1)
  {
    v14 = (v1 + *(v7 - 24));
    v14[13] = 0;
    v14[14] = 0;
    v14[15] = 0;
    *(v1 + 1324) = 0;
    v5 = *v1;
  }

  v15 = v1 + *(v7 - 24);
  v16 = *(v15 + 104);
  v17 = *(v15 + 120);
  v71 = v17;
  if (*(*(v1 + 2248) + 8) == 6)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v60 = v11;
  if (*(v1 + *(v5 - 24) + 241))
  {
    v19 = 1;
  }

  else
  {
    v59 = v16;
    v20 = (*(v5 + 72))(v1);
    v16 = v59;
    v11 = v60;
    v19 = (*(v4 + 2184) * 1000.0) >= v20;
    v5 = *v4;
  }

  v21 = *(v4 + 11768);
  if (v21)
  {
    LOBYTE(v21) = (*(v4 + *(v5 - 24) + 200) - *(v4 + 11804)) <= 0xBB8 && *(v4 + 11816) < 0.100000001;
  }

  v22 = *(*(v4 + 2248) + 8);
  if (v22 != 10 && !((v22 < 3) & ~v19 | v21 & 1))
  {
    v70 = vmulq_n_f64(v16, v11);
    v71 = v11 * v18;
    BlueFin::ned2lla((v4 + *(v5 - 24) + 8), v70.f64, &v61);
    v11 = v60;
    v23 = v4 + *(v5 - 24);
    *(v23 + 8) = v61;
    *(v23 + 24) = v62;
  }

  v24 = (v4 + *(v5 - 24));
  if (v3)
  {
    v25 = sqrt(v24[14] * v24[14] + v24[13] * v24[13]);
    *(v4 + 1324) = v25;
  }

  else
  {
    v24[11] = v24[11] + v24[19] * v11;
  }

  *(v4 + *(v5 - 24) + 200) = v6;
  v26 = &v67 + 8;
  v67 = xmmword_298A43F30;
  v65 = &v68;
  v66 = &v69;
  v69 = 0;
  for (i = 1; i != 13; ++i)
  {
    v66[i] = v26;
    v26 += 96;
  }

  BlueFin::BigMatrix::Null(&v65, 12, 12);
  v28 = 1;
  v29 = v66;
  do
  {
    *(v29[v28] + v28 * 8) = 0x3FF0000000000000;
    ++v28;
  }

  while (v28 != 13);
  if ((*(*(v4 + 2248) + 8) - 1) < 2)
  {
    v30 = *(v4 + 2184);
    if (v30 <= 0.0)
    {
      if (v30 >= 0.0)
      {
        v34 = 0.60653;
LABEL_42:
        if (*(v4 + 26) == 1)
        {
          v35 = *v4;
          v36 = v4 + *(*v4 - 24);
          v37 = *(v36 + 120);
          v38 = -v37;
          v39 = v34;
          v40 = -(v37 * v34);
          v41 = -(v34 * v38);
          v42 = *(v36 + 104);
          *(v29[6] + 48) = v39;
          v43 = v4 + *(v35 - 24);
          *(v43 + 104) = v42;
          *(v43 + 120) = v41;
          *(v4 + 1328) = v40;
          goto LABEL_44;
        }

        v46 = *(v4 + 1328);
        *(v29[6] + 48) = v34;
        *(v4 + 1328) = v34 * v46;
        goto LABEL_46;
      }

      v31 = v30;
      v32 = -0.5;
    }

    else
    {
      v31 = v30;
      v32 = 0.5;
    }

    v33 = (v31 + v32);
    if ((v33 - 1) >= 3)
    {
      v34 = flt_298A44058[v33 == 4];
    }

    else
    {
      v34 = flt_298A441D4[v33 - 1];
    }

    goto LABEL_42;
  }

  if (*(v4 + 26))
  {
LABEL_44:
    v44 = v60;
    *(v29[1] + 16) = v60;
    v45 = v60;
LABEL_50:
    *(v29[3] + 32) = v45;
    goto LABEL_51;
  }

LABEL_46:
  v47 = *(v4 + 1324);
  v48 = 1.0;
  if (v47 < 0.0)
  {
    v48 = -1.0;
  }

  v44 = v60;
  *(v29[1] + 16) = v60 * v48;
  if (*(v4 + *(*v4 - 24) + 240) == 1)
  {
    v45 = v60 * -v47;
    goto LABEL_50;
  }

LABEL_51:
  *(v29[5] + 48) = v44;
  *(v29[7] + 64) = v44;
  v49 = &v62 + 8;
  v62 = xmmword_298A43FA0;
  *&v61 = &v63;
  *(&v61 + 1) = &v64;
  v64 = 0;
  for (j = 8; j != 176; j += 8)
  {
    *(*(&v61 + 1) + j) = v49;
    v49 += 168;
  }

  v51 = 1;
  BlueFin::BigMatrix::mult(&v61, (v4 + 32), 1, &v65);
  result = BlueFin::BigMatrix::mult(v4 + 32, &v65, &v61);
  v53 = 2;
  do
  {
    if (v51 <= 0xB)
    {
      v54 = *(v4 + 40);
      v55 = *(v54 + 8 * v51);
      v56 = v53;
      do
      {
        v57 = *(v54 + 8 * v56);
        v58 = (*(v55 + 8 * v56) + *(v57 + 8 * v51)) * 0.5;
        *(v57 + 8 * v51) = v58;
        *(v55 + 8 * v56++) = v58;
      }

      while (v56 != 13);
    }

    ++v51;
    ++v53;
  }

  while (v51 != 13);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

uint64_t BlueFin::BigMatrix::mult(uint64_t this, const BlueFin::BigMatrix *a2, BOOL a3, const BlueFin::BigMatrix *a4)
{
  if (this == a2)
  {
    v19 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1032, "mult", "this != &mLeft");
    v20 = 1032;
    goto LABEL_22;
  }

  if (this == a4)
  {
    v19 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1033, "mult", "this != &mRight");
    v20 = 1033;
    goto LABEL_22;
  }

  v4 = *(a2 + 5);
  if (v4 != *(a4 + 5))
  {
    v19 = "mLeft.m_NbCols == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1036, "mult", "mLeft.m_NbCols == mRight.m_NbCols");
    v20 = 1036;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v20, v19);
  }

  v5 = *(a2 + 4);
  if (v5 > *(this + 24) || (v6 = *(a4 + 4), v6 > *(this + 28)))
  {
    v19 = "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbRows <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1037, "mult", "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbRows <= m_NbMaxCols");
    v20 = 1037;
    goto LABEL_22;
  }

  if (v5 >= 1)
  {
    v7 = 1;
    do
    {
      if (v6 >= 1)
      {
        v8 = *(a2 + 1);
        v9 = *(a4 + 1);
        v10 = *(*(this + 8) + 8 * v7);
        v11 = 1;
        do
        {
          if (v4 < 1)
          {
            v14 = 0.0;
          }

          else
          {
            v12 = (*(v9 + 8 * v11) + 8);
            v13 = (*(v8 + 8 * v7) + 8);
            v14 = 0.0;
            v15 = (v4 + 1) - 1;
            do
            {
              v16 = *v13++;
              v17 = v16;
              v18 = *v12++;
              v14 = v14 + v17 * v18;
              --v15;
            }

            while (v15);
          }

          *(v10 + 8 * v11++) = v14;
        }

        while (v11 != v6 + 1);
      }

      ++v7;
    }

    while (v7 != v5 + 1);
  }

  *(this + 16) = v5;
  *(this + 20) = *(a4 + 4);
  return this;
}

uint64_t BlueFin::BigMatrix::mult(uint64_t this, const BlueFin::BigMatrix *a2, const BlueFin::BigMatrix *a3)
{
  if (this == a2)
  {
    v18 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 990, "mult", "this != &mLeft");
    v19 = 990;
    goto LABEL_22;
  }

  if (this == a3)
  {
    v18 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 991, "mult", "this != &mRight");
    v19 = 991;
    goto LABEL_22;
  }

  v3 = *(a2 + 5);
  if (v3 != *(a3 + 4))
  {
    v18 = "mLeft.m_NbCols == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 994, "mult", "mLeft.m_NbCols == mRight.m_NbRows");
    v19 = 994;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v19, v18);
  }

  v4 = *(a2 + 4);
  if (v4 > *(this + 24) || (v5 = *(a3 + 5), v5 > *(this + 28)))
  {
    v18 = "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 996, "mult", "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols");
    v19 = 996;
    goto LABEL_22;
  }

  if (v4 >= 1)
  {
    v6 = 1;
    do
    {
      if (v5 >= 1)
      {
        v7 = *(a2 + 1);
        v8 = *(*(this + 8) + 8 * v6);
        v9 = *(a3 + 1) + 8;
        v10 = 1;
        do
        {
          if (v3 < 1)
          {
            v12 = 0.0;
          }

          else
          {
            v11 = (*(v7 + 8 * v6) + 8);
            v12 = 0.0;
            v13 = v9;
            v14 = (v3 + 1) - 1;
            do
            {
              v15 = *v11++;
              v16 = v15;
              v17 = *v13++;
              v12 = v12 + v16 * *(v17 + 8 * v10);
              --v14;
            }

            while (v14);
          }

          *(v8 + 8 * v10++) = v12;
        }

        while (v10 != v5 + 1);
      }

      ++v6;
    }

    while (v6 != v4 + 1);
  }

  *(this + 16) = v4;
  *(this + 20) = v5;
  return this;
}

unint64_t BlueFin::GlPeNavGnssState::Print(unint64_t this, unsigned __int8 a2, const char *a3)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        if (a3)
        {
          GlCustomLog(a2, "%s ", a3);
        }

        return GlCustomLog(a2, "NavGnssState: LMS %u LLA (%f %f %.1f) (%.1f %.1f) Bc %.1f (%.1f) BcDot %.1f (%.1f) BcDotDot %.1f Vel NED (%.1f %.1f %.1f) (%.1f %.1f %.1f %.1f) HdgDeg %.1f (%.1f) BiasStates %.1f (%.1f) % .1f (%.1f) % .1f (%.1f) % .1f (%.1f)\n", *(v5 + 200), *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 80), *(v5 + 84), *(v5 + 88), *(v5 + 96), *(v5 + 152), *(v5 + 160), *(v5 + 168), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 132), *(v5 + 136), *(v5 + 128), *(v5 + 140), *(v5 + 176) * 57.2957795, *(v5 + 184) * 57.2957795, *(v5 + 208), *(v5 + 212), *(v5 + 216), *(v5 + 220), *(v5 + 224), *(v5 + 228), *(v5 + 232), *(v5 + 236));
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 144));
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *a1 = &unk_2A1F12448;
  *(a1 + 144) = &unk_2A1F12480;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 40) = a1 + 52;
  *(a1 + 48) = 19;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = 1098383360;
  *(a1 + 140) = 0;
  return a1;
}

uint64_t BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExitOrLeftRecently(BlueFin::GlPeNavGnssKF *this, unsigned int a2)
{
  v4 = *(*(this + 281) + 8);
  result = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this);
  if ((result & 1) == 0 && v4 != 6)
  {

    return BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(BlueFin::GlPeNavGnssKF *this)
{
  v2 = *(*(this + 284) + 12);
  v3 = *(*(this + 281) + 8);
  if ((*(*this + 264))(this) == 1)
  {
    v4 = 5000;
  }

  else
  {
    v5 = (*(*this + 264))(this);
    if ((v3 - 3) >= 4)
    {
      v6 = 60000;
    }

    else
    {
      v6 = v2;
    }

    if (v5 == 2)
    {
      v4 = 10000;
    }

    else
    {
      v4 = v6;
    }
  }

  v7 = *(this + 281);
  if (*(v7 + 1764))
  {
    v8 = 60;
  }

  else
  {
    v8 = 180;
  }

  if (*(v7 + 1328) > 4.0 && *(v7 + 1320) < 20.0 && *(v7 + 76) >= v8 && ((*(v7 + 1764) & 1) != 0 || *(v7 + 64) == 1))
  {
    v9 = 0;
  }

  else if ((*(*this + 72))(this) <= v4)
  {
    v9 = *(*(this + 284) + 1);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

BOOL BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(BlueFin::GlPeNavGnssKF *this, unsigned int a2)
{
  v2 = *(this + 281);
  if (*(v2 + 1764))
  {
    v3 = 60;
  }

  else
  {
    v3 = 180;
  }

  if (*(v2 + 1328) > 4.0 && *(v2 + 1320) < 20.0 && *(v2 + 76) >= v3 && ((*(v2 + 1764) & 1) != 0 || *(v2 + 64) == 1))
  {
    return 0;
  }

  v4 = *(this + 549);
  return v4 && *(this + *(*this - 24) + 200) - v4 < a2;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::RemoveGhosts(BlueFin::GlPeNavMeasSelect *this, const BlueFin::GlPeNavUtil *a2, BlueFin::GlSignalIdSet *a3, int a4)
{
  if (**a3)
  {
LABEL_2:
    BlueFin::GlSetBase::GlSetBase(v31, v32, 0x13u, a3);
    v26 = *(a3 + 8);
    memcpy(v30, *a3, 4 * v26);
    v28 = 0;
    v27 = 0;
    v29 = v30[0];
    for (result = BlueFin::GlSetIterator::operator++(&v26); v27 != v26; result = BlueFin::GlSetIterator::operator++(&v26))
    {
      v9 = v28;
      if (v28 >= 0x23Fu)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v10 = *(this + 3);
      v11 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v28;
      v12 = *v11;
      LODWORD(v11) = v11[1];
      LOBYTE(v23) = v12;
      HIDWORD(v23) = v11;
      LOWORD(v24) = v28;
      if (*(BlueFin::GlPeMsmtMgr::GetMeMeas(v10, &v23, 0, 0) + 29) <= *(this + 34))
      {
        BlueFin::GlSetBase::Remove(v31, v9);
        BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v25, (a2 + *(*a2 - 24)));
        v23 = &off_2A1F12F90;
        v25 = &unk_2A1F12FC8;
        v24 = *(a2 + 8);
        BlueFin::GlSignalIdSet::GetSvIdSet(v31, v21);
        BlueFin::GlPeNavUtil::ComputeDops(&v23, v21);
        if (v22 < 2.0 || a4)
        {
          BlueFin::GlSetBase::Remove(a3, v9);
        }

        else
        {
          *(*v31 + ((v9 >> 3) & 0x1FFC)) |= 1 << v9;
        }
      }
    }

    return result;
  }

  v13 = *(a3 + 8);
  if (v13 >= 2)
  {
    v14 = v13 - 1;
    v15 = (*a3 + 4);
    do
    {
      if (*v15++)
      {
        goto LABEL_2;
      }
    }

    while (--v14);
  }

  BlueFin::GlSetBase::operator=(this + 40, a3);
  *(this + 52) = *(a3 + 12);
  v17 = *(a3 + 28);
  v18 = *(a3 + 44);
  v19 = *(a3 + 60);
  *(this + 7) = *(a3 + 72);
  *(this + 100) = v19;
  *(this + 84) = v18;
  *(this + 68) = v17;
  v20 = **(this + 3);
  *(this + 9) = v20;
  result = BlueFin::GlSetBase::Cnt(a3);
  if (result >= 3)
  {
    *(this + 8) = v20;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::SetRrCode(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *(a2 + 8);
  memcpy(v16, *a2, 4 * v12);
  v14 = 0;
  v13 = 0;
  v15 = v16[0];
  for (result = BlueFin::GlSetIterator::operator++(&v12); v13 != v12; result = BlueFin::GlSetIterator::operator++(&v12))
  {
    if (v14 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v14;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v9[0] = v7;
    v10 = v6;
    v11 = v14;
    v8 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), v9);
    if (v8)
    {
      *(v8 + 273) = a3;
    }
  }

  return result;
}

BlueFin::SKFVector *BlueFin::GlPeNavUtil::ComputeRrateResidVec(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v1;
  v49 = v19;
  v20 = 0;
  v83[275] = *MEMORY[0x29EDCA608];
  do
  {
    v21 = &v83[v20 + 2];
    *v21 = 0;
    *(v21 + 1) = -1;
    *(v21 + 4) = 575;
    v21[2] = 0;
    v20 += 3;
  }

  while (v20 != 273);
  v82[0] = v83;
  v82[1] = 0x100000000;
  v83[1] = 0;
  v83[0] = 0;
  v80[0] = v81;
  v80[1] = 0x100000000;
  v81[1] = 0;
  v81[0] = 0;
  v75[0] = &v76;
  v75[1] = 0x400000000;
  v76 = 0;
  v72 = v74;
  v73 = 0x5B00000000;
  bzero(v74, 0x2E0uLL);
  v64[0] = v75;
  v64[1] = v9;
  v64[2] = v17;
  v65 = v7;
  v66 = 0x4C100000002;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0x4008000000000000;
  v59[0] = v82;
  v59[1] = v80;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  v77 = *v5;
  v78 = *(v5 + 2);
  v79 = v15;
  v56[32] = 0;
  v57 = -1;
  v58 = 575;
  LODWORD(v50) = *(v11 + 8);
  memcpy(&v51, *v11, 4 * v50);
  HIDWORD(v50) = v51;
  BlueFin::GlSetIterator::operator++(&v50);
  if (BYTE1(v50) == v50)
  {
    v51 = 0x5B00000000;
    bzero(v52, 0x2E0uLL);
    v50 = v52;
    goto LABEL_29;
  }

  v22 = 0;
  do
  {
    if (WORD1(v50) >= 0x23FuLL)
    {
      v46 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v47 = "glsignalid.h";
      v48 = 578;
      goto LABEL_31;
    }

    v23 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v50);
    v24 = *v23;
    v25 = v23[1];
    v53[0] = *v23;
    v26 = SWORD1(v50);
    v54 = v25;
    v55 = WORD1(v50);
    if (BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v18, v56, v53, v3))
    {
      if ((*(**(v18 + 16) + 16))(*(v18 + 16), v64, v59, v56, &BlueFin::GlSet128::BIT0))
      {
        BlueFin::GlSetBase::Remove(v11, v26);
        v27 = *(v18 + 8);
        v53[0] = v24;
        v54 = v25;
        v55 = v26;
        v28 = BlueFin::GlSignalIdArray::Get(*(v27 + 18792), v53);
        if (v28)
        {
          *(v28 + 273) = 39;
        }
      }

      else
      {
        v31 = *(v82[0] + 8) - *(v80[0] + 8);
        v32 = &v83[3 * ++v22 + 2];
        *(v32 - 1) = v31;
        *(v32 - 24) = v24;
        *(v32 - 5) = v25;
        *(v32 - 8) = v26;
        BlueFin::SKFVector::AddLen(&v72);
        v72[v73] = v31;
      }
    }

    else
    {
      BlueFin::GlSetBase::Remove(v11, v26);
      v29 = *(v18 + 8);
      v53[0] = v24;
      v54 = v25;
      v55 = v26;
      v30 = BlueFin::GlSignalIdArray::Get(*(v29 + 18792), v53);
      if (v30)
      {
        *(v30 + 273) = 42;
      }
    }

    BlueFin::GlSetIterator::operator++(&v50);
  }

  while (BYTE1(v50) != v50);
  v50 = v52;
  LODWORD(v51) = v22;
  HIDWORD(v51) = 91;
  if (v22 >= 0x5Cu)
  {
    v46 = "LEN >= len";
    DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
    v47 = "glpe_matrix.h";
    v48 = 497;
LABEL_31:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v47, v48, v46);
  }

  v33 = v73;
  bzero(v52, 0x2E0uLL);
  v50 = v52;
  if (v33 < 1)
  {
    v38 = 0.0;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v34 = v72[1];
    if (v33 != 1)
    {
      v35 = v33 - 1;
      v36 = v72 + 2;
      do
      {
        v37 = *v36++;
        v34 = v34 + v37;
        --v35;
      }

      while (v35);
    }

    if (v22)
    {
      v38 = v34 / v33;
LABEL_23:
      v39 = 0;
      v40 = 0;
      do
      {
        v41 = &v83[3 * v39 + 2];
        v42 = v41[2];
        if (vabdd_f64(v42, v38) <= v13)
        {
          *&v50[8 * v40++ + 8] = v42;
        }

        else
        {
          BlueFin::GlSetBase::Remove(v11, *(v41 + 4));
          v43 = BlueFin::GlSignalIdArray::Get(*(*(v18 + 8) + 18792), &v83[3 * v39 + 2]);
          if (v43)
          {
            *(v43 + 273) = 33;
          }
        }

        ++v39;
      }

      while (v22 > v39);
    }
  }

LABEL_29:
  result = BlueFin::SKFVectorDim<100>::SKFVectorDim(v49, &v50);
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::SelectPr(unsigned __int8 *this, const BlueFin::GlPeNavUtil *a2, const void **a3, int a4)
{
  v7 = this;
  if (!**a3)
  {
    v8 = *(a3 + 8);
    if (v8 < 2)
    {
      return this;
    }

    v9 = v8 - 1;
    v10 = *a3 + 4;
    while (!*v10++)
    {
      if (!--v9)
      {
        return this;
      }
    }
  }

  BlueFin::GlSetBase::GlSetBase(&v30, v31, 0x13u, a3);
  if ((*(v7 + 140) & 1) == 0)
  {
    BlueFin::GlPeNavMeasSelect::RemoveGhosts(v7, a2, a3, a4);
  }

  BlueFin::GlSetBase::GlSetBase(&v20, &v21, 0x13u, a3);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryInversion(&v20, &v33);
  BlueFin::GlSetBase::operator=(&v20, &v33);
  v22 = v36;
  v23 = v37;
  *v24 = *v38;
  *&v24[12] = *&v38[12];
  v21 = v35;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&v20);
  BlueFin::GlSetBase::GlSetBase(&v25, &v26, 0x13u, &v30);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryAnd(&v25, &v33, &v20);
  BlueFin::GlSetBase::operator=(&v25, &v33);
  v27 = v36;
  v28 = v37;
  *v29 = *v38;
  *&v29[12] = *&v38[12];
  v26 = v35;
  BlueFin::GlSetBase::operator=(&v30, &v25);
  v31[1] = v27;
  v31[2] = v28;
  *v32 = *v29;
  *&v32[12] = *&v29[12];
  v31[0] = v26;
  BlueFin::GlPeMsmtMgr::SetPrCode(*(v7 + 8), &v30, 16);
  BlueFin::GlSetBase::GlSetBase(&v25, &v26, 0x13u, a3);
  BlueFin::GlPeNavMeasSelect::RemoveTimeFail(v7, a3);
  BlueFin::GlSetBase::GlSetBase(&v15, &v16, 0x13u, a3);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryInversion(&v15, &v33);
  BlueFin::GlSetBase::operator=(&v15, &v33);
  v17 = v36;
  v18 = v37;
  *v19 = *v38;
  *&v19[12] = *&v38[12];
  v16 = v35;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&v15);
  BlueFin::GlSetBase::GlSetBase(&v20, &v21, 0x13u, &v25);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryAnd(&v20, &v33, &v15);
  BlueFin::GlSetBase::operator=(&v20, &v33);
  v22 = v36;
  v23 = v37;
  *v24 = *v38;
  *&v24[12] = *&v38[12];
  v21 = v35;
  BlueFin::GlSetBase::operator=(&v25, &v20);
  v27 = v22;
  v28 = v23;
  *v29 = *v24;
  *&v29[12] = *&v24[12];
  v26 = v21;
  BlueFin::GlPeMsmtMgr::SetPrCode(*(v7 + 8), &v25, 9);
  BlueFin::GlSetBase::GlSetBase(&v20, &v21, 0x13u, a3);
  BlueFin::GlPeNavMeasSelect::RemoveHighUra(v7, a3);
  BlueFin::GlSetBase::GlSetBase(&v12, v13, 0x13u, a3);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryInversion(&v12, &v33);
  BlueFin::GlSetBase::operator=(&v12, &v33);
  v13[1] = v36;
  v13[2] = v37;
  *v14 = *v38;
  *&v14[12] = *&v38[12];
  v13[0] = v35;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&v12);
  BlueFin::GlSetBase::GlSetBase(&v15, &v16, 0x13u, &v20);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryAnd(&v15, &v33, &v12);
  BlueFin::GlSetBase::operator=(&v15, &v33);
  v17 = v36;
  v18 = v37;
  *v19 = *v38;
  *&v19[12] = *&v38[12];
  v16 = v35;
  BlueFin::GlSetBase::operator=(&v20, &v15);
  v22 = v17;
  v23 = v18;
  *v24 = *v19;
  *&v24[12] = *&v19[12];
  v21 = v16;
  return BlueFin::GlPeMsmtMgr::SetPrCode(*(v7 + 8), &v20, 11);
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::SetPrCode(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *(a2 + 8);
  memcpy(v16, *a2, 4 * v12);
  v14 = 0;
  v13 = 0;
  v15 = v16[0];
  for (result = BlueFin::GlSetIterator::operator++(&v12); v13 != v12; result = BlueFin::GlSetIterator::operator++(&v12))
  {
    if (v14 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v14;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v9[0] = v7;
    v10 = v6;
    v11 = v14;
    v8 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), v9);
    if (v8)
    {
      *(v8 + 272) = a3;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::RemoveTimeFail(BlueFin::GlPeNavMeasSelect *this, BlueFin::GlSignalIdSet *a2)
{
  v11 = *(a2 + 8);
  memcpy(v15, *a2, 4 * v11);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v5 = v13;
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v8[0] = v7;
    v9 = v6;
    v10 = v13;
    if (((*(**(this + 2) + 72))(*(this + 2), v8, 3) & 1) == 0)
    {
      BlueFin::GlSetBase::Remove(a2, v5);
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::RemoveHighUra(BlueFin::GlPeNavMeasSelect *this, BlueFin::GlSignalIdSet *a2)
{
  v11 = *(a2 + 8);
  memcpy(v15, *a2, 4 * v11);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v5 = v13;
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v8[0] = v7;
    v9 = v6;
    v10 = v13;
    if ((*(**(this + 2) + 40))(*(this + 2), v8) >= 200.0)
    {
      BlueFin::GlSetBase::Remove(a2, v5);
    }
  }

  return result;
}

double BlueFin::GlPeComputeZRH::GetUraM(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *a2;
  if (((*(*(a1 + 48) + ((v4 >> 3) & 0x1C)) >> (v4 & 0x1F)) & 1) == 0)
  {
    return BlueFin::GlPeAsstMgr::GetUraM(*(a1 + 4272), a2, a3, a4);
  }

  a3.i32[0] = *(**(a1 + 288) + 104 * *(v4 + a1 + 95) + 88);
  return *a3.i64;
}

void BlueFin::GlPeNavGnssResidMon::RunBcMon(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned __int8 *a5, int a6)
{
  v97 = *MEMORY[0x29EDCA608];
  v91 = v93;
  v92 = 0x6400000000;
  bzero(v93, 0x328uLL);
  v88 = v90;
  v89 = 0x6400000000;
  bzero(v90, 0x328uLL);
  v13 = 0;
  v14 = 736;
  if (a6)
  {
    v14 = 112;
  }

  v15 = a1 + v14;
  v16 = *(v15 + 616);
  v17 = a2 - v16;
  if (v16 >= a2)
  {
    v17 = v16 - a2;
  }

  v18 = *(v15 + 608);
  v19 = a2 - v18;
  v20 = v18 >= a2;
  v21 = v18 - a2;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  if (v16 && v17 >> 5 <= 0x752)
  {
    BlueFin::GlSignalIdSet::GetSvIdSet(a5, &v95);
    v23 = 0;
    v24 = (v95 + 4 * v96 - 4);
    do
    {
      if (*v24)
      {
        v25 = *v24 - (((*v24 >> 1) & 0x5B6DB6DB) + ((*v24 >> 2) & 0x9249249));
        v23 = ((v25 + (v25 >> 3)) & 0xC71C71C7) + v23 - 63 * (((v25 + (v25 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v24;
    }

    while (v24 >= v95);
    v13 = (v23 & 0xFC) != 0;
  }

  if (v22 >= 0x5DC && !v13)
  {
    LODWORD(v38) = 0;
    *(v15 + 620) = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = *a5;
    v30 = a4;
    do
    {
      v31 = *(v30 + 10);
      if (v31 == 575)
      {
        break;
      }

      if (v31 >= 0x23F)
      {
        v84 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v85 = "glsignalid.h";
        v86 = 578;
        goto LABEL_102;
      }

      if ((*(v29 + ((v31 >> 3) & 0x1FFC)) >> (v31 & 0x1F)))
      {
        v32 = 10;
        while (1)
        {
          v33 = *(v15 + v32);
          if (v33 == 575)
          {
            goto LABEL_31;
          }

          if (v33 == v31)
          {
            break;
          }

          v32 += 12;
          if (v32 == 610)
          {
            goto LABEL_31;
          }
        }

        if (*(v30 + 8) == 1)
        {
          if (v27 >= 0x32u)
          {
            v84 = "ucNumMeas < MAX_MACRO(GlPeNavGnssKFIf::MAX_DKFMEAS_PR, GlPeNavGnssKFIf::MAX_DKFMEAS_RR)";
            DeviceFaultNotify("glpe_navgnssresidmon.cpp", 277, "RunBcMon", "ucNumMeas < MAX_MACRO(GlPeNavGnssKFIf::MAX_DKFMEAS_PR, GlPeNavGnssKFIf::MAX_DKFMEAS_RR)");
            v85 = "glpe_navgnssresidmon.cpp";
            v86 = 277;
LABEL_102:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v85, v86, v84);
          }

          *(&v95 + v27) = *(v30 + 4);
          *&v94[2 * v27++ + 50] = v31;
        }
      }

LABEL_31:
      v30 += 12;
      v20 = v28++ >= 0x63;
    }

    while (!v20);
    v87 = a3;
    v34 = v27;
    BlueFin::GlSortFloats(&v95, v27, v94, v12);
    if (v34 >= 6)
    {
      v38 = 6;
    }

    else
    {
      v38 = v34;
    }

    if (v34)
    {
      v39 = 0;
      do
      {
        v40 = *&v94[2 * v94[v39] + 50];
        v41 = 50;
        v42 = v15;
        do
        {
          v43 = *(v42 + 10);
          if (v43 == 575)
          {
            break;
          }

          if (v43 == v40)
          {
            v44 = 0;
            v45 = a4;
            while (*(v45 + 10) != v40)
            {
              v45 += 12;
              v20 = v44++ >= 0x31;
              if (v20)
              {
                goto LABEL_49;
              }
            }

            v46 = (*v45 - *v42);
            BlueFin::SKFVector::AddLen(&v91);
            *&v91[8 * v92] = v46;
            v47 = *v45;
            BlueFin::SKFVector::AddLen(&v88);
            v88[v89] = v47;
            break;
          }

          v42 += 12;
          --v41;
        }

        while (v41);
LABEL_49:
        ++v39;
      }

      while (v39 != v38);
    }

    if ((a6 & 1) != 0 && (BlueFin::SKFVector::Median(&v88, v35, v36, v37), fabs(v48) < 15.0))
    {
      v49 = &v91;
    }

    else
    {
      v49 = &v88;
    }

    v50 = *(v49 + 2);
    BlueFin::SKFVector::Median(v49, v35, v36, v37);
    *(v15 + 600) = v51;
    if (v50 < 3)
    {
      *(v15 + 620) = 0;
      a3 = v87;
    }

    else
    {
      v52 = BlueFin::GlPeNavGnssResidMon::Design::STUDENT_T_CRIT_VALUES[v50 - 2];
      if (a6)
      {
        v53 = 5.0;
      }

      else
      {
        v53 = 0.5;
      }

      v54 = sqrtf(v50);
      v55 = *(v49 + 2);
      if (v55 < 1)
      {
        v57 = 0.0;
        a3 = v87;
      }

      else
      {
        v56 = *(*v49 + 8);
        if (v55 == 1)
        {
          a3 = v87;
        }

        else
        {
          v58 = v55 - 1;
          v59 = (*v49 + 16);
          a3 = v87;
          do
          {
            v60 = *v59++;
            v56 = v56 + v60;
            --v58;
          }

          while (v58);
        }

        v57 = v56 / v55;
      }

      v61 = v53 + v57;
      v62 = sqrt(BlueFin::SKFVector::Var(v49));
      v63 = v61 / v62;
      if ((v54 * v63) < -v52)
      {
        goto LABEL_75;
      }

      if (v55 < 1)
      {
        v68 = 0.0;
      }

      else
      {
        v64 = *(*v49 + 8);
        if (v55 != 1)
        {
          v65 = v55 - 1;
          v66 = (*v49 + 16);
          do
          {
            v67 = *v66++;
            v64 = v64 + v67;
            --v65;
          }

          while (v65);
        }

        v68 = v64 / v55;
      }

      v69 = (v68 - v53) / v62;
      if ((v54 * v69) <= v52)
      {
        v75 = 0;
      }

      else
      {
LABEL_75:
        if (v89 >= 2)
        {
          v71 = fabs(v88[1]);
          LODWORD(v70) = 1;
          v72 = 2;
          do
          {
            v73 = fabs(v88[v72]);
            if (v71 > v73)
            {
              LODWORD(v70) = v72;
              v71 = v73;
            }

            ++v72;
          }

          while (v89 + 1 != v72);
          v70 = v70;
        }

        else
        {
          v70 = 1;
        }

        v74 = v88[v70];
        if (v74 < 0.0)
        {
          v74 = -v74;
        }

        v75 = v74 > v53;
      }

      *(v15 + 620) = v75;
    }
  }

  v76 = v38 - *(v15 + 612);
  *(v15 + 613) = v76 < -2;
  if (v76 <= -3)
  {
    *(v15 + 616) = a2;
  }

  *(v15 + 612) = v38;
  v78 = a3 < 0x5DC || v38 > 2;
  if (v78 || v13)
  {
    v79 = 0;
    *(v15 + 608) = a2;
    do
    {
      v80 = v15 + v79;
      v81 = *(a4 + v79);
      *(v80 + 8) = *(a4 + v79 + 8);
      *v80 = v81;
      v82 = 0.0;
      if (*(v15 + 620) == 1)
      {
        v82 = *(v15 + 600);
      }

      *v80 = *v80 - v82;
      v79 += 12;
    }

    while (v79 != 600);
  }

  v83 = *MEMORY[0x29EDCA608];
}

uint64_t *BlueFin::SKFVector::Median(uint64_t *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(this + 2);
  if (v4 >= 1)
  {
    if (v4 >= 0x65)
    {
      DeviceFaultNotify("glpe_matrix.cpp", 1911, "Median", "sLen <= GL_CHANNELS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1911, "sLen <= GL_CHANNELS");
    }

    v5 = *this;
    this = BlueFin::GlSortDoubles(*this + 8, *(this + 2), v8, a4);
    if ((v4 & 1) == 0)
    {
      v6 = (*(v5 + 8 * v8[v4 >> 1] + 8) + *(v5 + 8 * v8[(v4 >> 1) - 1] + 8)) * 0.5;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

double BlueFin::SKFVector::Var(BlueFin::SKFVector *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *this;
  v3 = *(*this + 8);
  if (v1 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = v1 + 1;
    v6 = v1 - 1;
    v7 = (v2 + 16);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
    v3 = v3 / v1;
  }

  v9 = v4 - 1;
  v10 = (v2 + 8);
  v11 = 0.0;
  do
  {
    v12 = *v10++;
    v11 = v11 + (v12 - v3) * (v12 - v3);
    --v9;
  }

  while (v9);
  result = 0.0;
  if (v1 != 1)
  {
    return v11 / (v1 - 1);
  }

  return result;
}

void BlueFin::GlPeNavUtil::ComputeRangeResidVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v10 = MEMORY[0x2A1C7C4A8]();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v10;
  v33 = v32;
  v77[695] = *MEMORY[0x29EDCA608];
  if (v34)
  {
    v35 = 1225;
  }

  else
  {
    v35 = 1217;
  }

  if (!v12)
  {
    v35 &= ~0x40u;
  }

  if (a10)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 & 0x3FF;
  }

  v51 = v11;
  if (BlueFin::GlSetBase::Cnt(v11) >= 0x65)
  {
    v47 = "otThisSignals.Cnt() <= GL_CHANNELS";
    DeviceFaultNotify("glpe_navutil.cpp", 716, "ComputeRangeResidVec", "otThisSignals.Cnt() <= GL_CHANNELS");
    v48 = "glpe_navutil.cpp";
    v49 = 716;
    goto LABEL_27;
  }

  v37 = v77;
  v38 = 5600;
  do
  {
    *(v37 - 8) = 0;
    *(v37 - 1) = -1;
    *v37 = 575;
    v37 += 28;
    v38 -= 56;
  }

  while (v38);
  LODWORD(v73) = *(v51 + 8);
  memcpy(&v74, *v51, 4 * v73);
  HIDWORD(v73) = v74;
  BlueFin::GlSetIterator::operator++(&v73);
  v50 = v16;
  v39 = 0;
  if (BYTE1(v73) != v73)
  {
    while (1)
    {
      v40 = WORD1(v73);
      if (WORD1(v73) >= 0x23FuLL)
      {
        break;
      }

      v41 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v73);
      v42 = *v41;
      LODWORD(v41) = v41[1];
      LOBYTE(v70) = v42;
      HIDWORD(v70) = v41;
      LOWORD(v71) = WORD1(v73);
      if (BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v31, &v76[7 * v39], &v70, a9))
      {
        if (LODWORD(v76[7 * v39 + 3]) == -1)
        {
          v36 |= 0x40000u;
        }

        ++v39;
      }

      else
      {
        BlueFin::GlSetBase::Remove(v51, v40);
      }

      BlueFin::GlSetIterator::operator++(&v73);
      if (BYTE1(v73) == v73)
      {
        goto LABEL_20;
      }
    }

    v47 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v48 = "glsignalid.h";
    v49 = 578;
LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v48, v49, v47);
  }

LABEL_20:
  v73 = v75;
  v74 = 0x6400000000;
  bzero(v75, 0x328uLL);
  v70 = v72;
  v71 = 0x6400000000;
  bzero(v72, 0x328uLL);
  v68[0] = v69;
  v68[1] = 0x6400000000;
  bzero(v69, 0x328uLL);
  v56[0] = v68;
  v56[1] = v20;
  v56[2] = v30;
  v57 = v18;
  v58 = 0;
  v59 = v36;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v63 = v28;
  v64 = v26;
  v65 = v24;
  v66 = v22;
  v67 = xmmword_298A44280;
  v55[0] = &v73;
  v55[1] = &v70;
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v14;
  v55[5] = v50;
  memset(&v55[6], 0, 24);
  v52 = v54;
  v53 = 4;
  v54[1] = 0;
  v54[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v52, v39);
  v43 = (*(**(v31 + 16) + 16))(*(v31 + 16), v56, v55, v76, &v52);
  v33[1] = 0x6400000000;
  bzero(v33 + 2, 0x328uLL);
  *v33 = v33 + 2;
  if (v43)
  {
    bzero(*v51, ((4 * *(v51 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  else if (v39)
  {
    v44 = v39;
    v45 = 8;
    do
    {
      BlueFin::SKFVector::AddLen(v33);
      *(*v33 + v45) = *&v73[v45] - *&v70[v45];
      v45 += 8;
      --v44;
    }

    while (v44);
  }

  v46 = *MEMORY[0x29EDCA608];
}

void *BlueFin::GlSetBase::SetAllLower(void *this, unsigned __int16 a2)
{
  v2 = a2;
  v3 = (a2 >> 5);
  if (v3 > *(this + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 165, "SetAllLower", "ucNumFullLongs <= m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 165, "ucNumFullLongs <= m_ucUlongSize");
  }

  v4 = this;
  if ((a2 >> 5))
  {
    this = memset(*this, 255, 4 * (a2 >> 5));
  }

  *(*v4 + 4 * v3) |= ~(-1 << v2);
  return this;
}

void BlueFin::GlPeNavUtil::ComputeL5BiasFromMeas(uint64_t a1, float *a2, float *a3, double *a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  v59 = v61;
  v60 = 8;
  memset(v61, 0, 32);
  if (a8)
  {
    v11 = *a5;
    v12 = a8;
    v13 = (a7 + 44);
    v14 = a8;
    do
    {
      if (!*v13 && *(v13 - 2) == 2 && ((*(v11 + 4 * (*(v13 - 2) >> 5)) >> (*(v13 - 1) & 0x1F)) & 1) != 0)
      {
        *&v61[(*(v13 - 12) >> 3) & 0x1C] |= 1 << *(v13 - 12);
      }

      v13 += 14;
      --v14;
    }

    while (v14);
    v15 = 0;
    v56 = v58;
    v57 = 8;
    memset(v58, 0, 32);
    v16 = (a7 + 32);
    v17 = a8;
    do
    {
      if (!*(v16 + 3))
      {
        v18 = *(v16 + 1);
        if (v18 == 3 || v18 == 0) && ((*(*a5 + 4 * (*(v16 + 4) >> 5)) >> (*(v16 + 4) & 0x1F)))
        {
          v20 = *v16;
          v21 = v20 >> 5;
          v22 = v20 & 0x1F;
          if (((*&v59[4 * (v20 >> 5)] >> (v20 & 0x1F)) & 1) != 0 && *(BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), v16, 0) + 104) >= 16)
          {
            *&v56[4 * v21] |= 1 << v22;
            ++v15;
          }
        }
      }

      v16 += 56;
      --v17;
    }

    while (v17);
    if (v15 >= 3u)
    {
      for (i = 0; i != v12; ++i)
      {
        v24 = a7 + 56 * i;
        if (!*(v24 + 44) && *(v24 + 36) == 2 && ((*&v56[(*(v24 + 32) >> 3) & 0x1C] >> (*(v24 + 32) & 0x1F)) & 1) != 0)
        {
          MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), (v24 + 32), 0, 0);
          if (MeMeas)
          {
            if ((*(MeMeas + 5) - 1) <= 1)
            {
              v26 = (a7 + 32);
              v27 = v12;
              while (1)
              {
                if (!*(v26 + 3) && *(v24 + 32) == *v26)
                {
                  v28 = *(v26 + 1);
                  if (v28 == 3 || v28 == 0)
                  {
                    v30 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), v26, 0, 0);
                    if (v30)
                    {
                      if ((*(v30 + 5) - 1) <= 1)
                      {
                        break;
                      }
                    }
                  }
                }

                v26 += 56;
                if (!--v27)
                {
                  goto LABEL_40;
                }
              }

              v53 = v55;
              v54 = 19;
              memset(v55, 0, sizeof(v55));
              v55[*(v26 + 4) >> 5] |= 1 << *(v26 + 4);
              v55[*(v24 + 40) >> 5] |= 1 << *(v24 + 40);
              v31 = *a1;
              v32 = a1 + *(*a1 - 24);
              v49 = *(v32 + 8);
              v50 = *(v32 + 24);
              v33 = *(a1 + 88 + *(v31 - 24));
              BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, &v53, &v49, a6, 0, 0, 0, 1, 1, 1);
              if (v52 == 2)
              {
                v34 = *(v51 + 16);
                v35 = *(v51 + 8);
                v36 = v34 - v35;
                if (*(v24 + 40) < *(v26 + 4))
                {
                  v36 = -v36;
                }

                v37 = *a2;
                v38 = *a2;
                v39 = *a4 * *a3;
                v40 = 1.0 / (*(v26 - 3) * *(v26 - 3) + *(v24 + 8) * *(v24 + 8));
                v41 = *a4 + v40;
                *a4 = v41;
                v42 = v36;
                v43 = v38 + v40 / v41 * (v36 - v38);
                v44 = v40 * (v36 - v37);
                *&v40 = v43;
                *a2 = *&v40;
                *&v44 = (v39 + v44 * (v42 - v43)) / v41;
                *a3 = *&v44;
              }
            }
          }
        }

LABEL_40:
        ;
      }
    }
  }
}

uint64_t BlueFin::GlPeLsqSubsets::RunLsqSubset(uint64_t *a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6)
{
  memset(v63, 0, 42);
  v64 = &v66;
  v65 = 19;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v70 = v72;
  v71 = 8;
  memset(v72, 0, 32);
  v73 = xmmword_298A41DA0;
  v74 = vdup_n_s32(0x42C60000u);
  v75 = 99.0;
  v76 = 0;
  v78 = 0;
  v77 = 0.0;
  v80 = 0;
  v79 = 0;
  v81 = &v83;
  v82 = 8;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v10 = *(a1 + 12);
  if ((v10 & 0x80) != 0)
  {
    v11 = 2049;
  }

  else
  {
    v11 = 2048;
  }

  if (a6)
  {
    v12 = 0x2000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[11];
  v14 = *(a1 + 24);
  v56[0] = a2;
  v56[1] = 0;
  v56[2] = 0;
  v56[3] = a1 + 8;
  v56[4] = v13;
  v57 = v14;
  v58 = a3;
  v59 = v12 & 0xFFEAC9FF | ((v10 & 3) << 9) & 0xCFFF | (((v10 >> 2) & 3) << 12) & 0xFFEAFFFF | (((v10 >> 4) & 1) << 16) & 0xFFEBFFFF | (((v10 >> 5) & 1) << 18) & 0xFFEFFFFF | (((v10 >> 6) & 1) << 20) | (v10 >> 4) & 0x30 | v11;
  v60 = 0;
  BlueFin::GlSetBase::GlSetBase(&v61, v62, 8u, a1 + 13);
  v60 = a1[7];
  v17 = BlueFin::GlPeLsq::LsPos((a1 + 1), v56, v63, v15, v16);
  v18 = *(&v73 + 1);
  if (a5 && v17 && *(&v73 + 1) < 50.0)
  {
    *(a5 + 137) = 1;
    *(a5 + 136) = HIBYTE(v76);
    v19 = *&v79;
    v20 = v63[1];
    *(a5 + 88) = v63[0];
    *(a5 + 104) = v20;
    *(a5 + 120) = *&v63[2];
    *(a5 + 128) = v19;
    BlueFin::GlSetBase::operator=(a5, &v64);
    v21 = v66;
    *(a5 + 28) = v67;
    v22 = v69[0];
    *(a5 + 44) = v68;
    *(a5 + 60) = v22;
    *(a5 + 72) = *(v69 + 12);
    *(a5 + 12) = v21;
    v18 = *(&v73 + 1);
  }

  v23 = 0;
  v24 = BYTE1(v76);
  if (a4 && v18 >= 15.0)
  {
    v23 = (*(a1 + 49) & 4) == 0;
  }

  if (BYTE1(v76) && !v23)
  {
    v46 = &v48;
    v47 = 19;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    v44 = v63[0];
    v45 = *&v63[1];
    BlueFin::GlSetBase::operator=(&v46, &v64);
    v49 = v67;
    v50 = v68;
    *v51 = v69[0];
    *&v51[12] = *(v69 + 12);
    v48 = v66;
    *&v52 = __PAIR64__(v74.u32[0], DWORD1(v73));
    *(&v52 + 1) = vrev64_s32(vcvt_f32_f64(*(&v63[1] + 8)));
    RngUncMetric = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&RngUncMetric = RngUncMetric * *(&v73 + 1);
    LODWORD(v53) = LODWORD(RngUncMetric);
    v26 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v26 = v26 * *v74.i32;
    DWORD1(v53) = LODWORD(v26);
    v27 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v27 = v27 * *(&v73 + 2);
    DWORD2(v53) = LODWORD(v27);
    v28 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v28 = v28 * *(&v73 + 3);
    HIDWORD(v53) = LODWORD(v28);
    v29 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v29 = v29 * *&v74.i32[1];
    LODWORD(v54) = LODWORD(v29);
    v30 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v30 = v30 * v75;
    DWORD1(v54) = LODWORD(v30);
    v31 = *(&v79 + 1);
    *(&v54 + 1) = v79;
    v55 = v85;
    if (*(a1 + 49))
    {
      v32 = v77 * *&v52;
      *&v53 = v32;
    }

    if (v60 && *(v60 + 72) == 1)
    {
      v33 = v77;
      if (*(&v79 + 1) > v33)
      {
        v31 = v77;
      }

      *&v53 = *&v52 * v31;
    }

    if (a6)
    {
      BlueFin::GlSetBase::operator=((a1 + 13), &v81);
      v34 = v84;
      *(a1 + 116) = v83;
      *(a1 + 132) = v34;
    }

    v35 = *a1;
    v36 = *(v35 + 8);
    if (v36 >= *(v35 + 16))
    {
      DeviceFaultNotify("glpe_navutil.cpp", 184, "Submit", "m_potWritePtr < m_potBufEnd");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 184, "m_potWritePtr < m_potBufEnd");
    }

    *v36 = v44;
    *(v36 + 16) = v45;
    BlueFin::GlSetBase::operator=(v36 + 24, &v46);
    *(v36 + 36) = v48;
    v37 = v49;
    v38 = v50;
    v39 = *v51;
    *(v36 + 96) = *&v51[12];
    *(v36 + 84) = v39;
    *(v36 + 68) = v38;
    *(v36 + 52) = v37;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    *(v36 + 160) = v55;
    *(v36 + 128) = v41;
    *(v36 + 144) = v42;
    *(v36 + 112) = v40;
    *(v35 + 8) += 168;
  }

  return v24;
}

BOOL BlueFin::GlPeLsq::LsPosInit(BlueFin::GlSignalIdArray ***a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5, double a6, int8x16_t a7)
{
  v7 = a5;
  v8 = a1;
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v9)
    {
      if (v10)
      {
        if (a1[2])
        {
          v12 = *(a2 + 24);
          v13 = *(v10 + 8808);
          BlueFin::GlSetBase::GlSetBase(&v138, v140, 0x13u, *a2);
          v130 = v139;
          memcpy(&v132, v138, 4 * v139);
          v131 = v132;
          BlueFin::GlSetIterator::operator++(&v130);
          if (BYTE1(v130) == v130)
          {
            LOBYTE(v14) = 0;
LABEL_10:
            v15 = a1[2];
            if (v15)
            {
              *(v15 + 48) = 1;
              v15[1] = 0x4049000000000000;
              *(v15 + 11) = 3;
              v16 = v15 + 11;
              *(v15 + 7) = -1;
              *v15 = *(v12 + 16);
              v17 = *v9;
              v18 = *(v15 + 1);
              *v7 = *v15;
              *(v7 + 16) = v18;
              if (v15 != v7)
              {
                *(v7 + 32) = *(v15 + 32);
                *(v7 + 36) = *(v15 + 9);
                *(v7 + 40) = *(v15 + 20);
              }

              v19 = *v16;
              *(v7 + 47) = *(v16 + 3);
              *(v7 + 44) = v19;
              *(v7 + 16) = v17;
              LOBYTE(v14) = v14 + 1;
            }
          }

          else
          {
            v118 = v12;
            v14 = 0;
            v67 = 0.0;
            v68.f64[0] = NAN;
            v68.f64[1] = NAN;
            v123 = vnegq_f64(v68);
            do
            {
              v69 = HIWORD(v130);
              if (HIWORD(v130) > 0x23EuLL)
              {
                goto LABEL_163;
              }

              v70 = v14;
              v71 = *(v10 + 8808);
              v72 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v130);
              v73 = *v72;
              v74 = 91;
              while (*v71 != v73)
              {
                v71 += 96;
                if (!--v74)
                {
                  goto LABEL_89;
                }
              }

              BlueFin::GlSatAid::operator=(v13, v71);
LABEL_89:
              v75 = vcvtmd_s64_f64(*(v13 + 32) * -1000.0);
              v76 = v72[1];
              v127[0] = v73;
              v128 = v76;
              v129 = v69;
              MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v9, v127, 0, 0);
              v78.i32[0] = *v9;
              *v78.i64 = v78.u64[0] + *(MeMeas + 8) * -1000.0;
              *v78.i64 = *v78.i64 - floor(*v78.i64) + v75;
              *v79.i64 = *v78.i64 + *(v13 + 32) * 1000.0;
              if (v70)
              {
                v80 = v123;
                if (vabdd_f64(*v79.i64, v67) > 0.5)
                {
                  if (*v79.i64 <= v67)
                  {
                    *v78.i64 = *v78.i64 + 1.0;
                  }

                  else
                  {
                    *v78.i64 = *v78.i64 + -1.0;
                  }
                }
              }

              else
              {
                v67 = *v78.i64 + *(v13 + 32) * 1000.0;
                v80 = v123;
              }

              *(v7 + 8) = 0;
              *(v7 + 20) = 0;
              *(v7 + 49) = 0;
              *v79.i64 = *v78.i64 - trunc(*v78.i64);
              *&v81.f64[0] = vbslq_s8(v80, v79, v78).u64[0];
              v81.f64[1] = *(MeMeas + 24);
              v82 = vmulq_f64(v81, xmmword_298A43E30);
              *v7 = v82;
              *(v7 + 44) = 0;
              *(v7 + 16) = *v9;
              *v82.i64 = *v78.i64 + trunc(*v78.i64 * 2.32830644e-10) * -4294967300.0;
              v83 = vbslq_s8(v80, v82, v78);
              if (*v78.i64 > 4294967300.0)
              {
                v78.i64[0] = v83.i64[0];
              }

              if (*v78.i64 < -4294967300.0)
              {
                *v83.i64 = -*v78.i64;
                *v78.i64 = -(*v78.i64 - trunc(*v78.i64 * -2.32830644e-10) * -4294967300.0);
                *v78.i64 = -*vbslq_s8(v80, v78, v83).i64;
              }

              if (*v78.i64 < 0.0)
              {
                v84 = --*v78.i64;
              }

              else
              {
                v84 = *v78.i64;
              }

              *(v7 + 24) = v84;
              *(v7 + 28) = -1;
              *(v7 + 48) = 1;
              *(v7 + 32) = v73;
              *(v7 + 36) = v76;
              *(v7 + 40) = v69;
              *(*a3 + ((v69 >> 3) & 0x1FFC)) |= 1 << v69;
              if (v70 >= 0xBu)
              {
                LOBYTE(v14) = 12;
                goto LABEL_151;
              }

              v14 = v70 + 1;
              v7 += 56;
              BlueFin::GlSetIterator::operator++(&v130);
            }

            while (BYTE1(v130) != v130);
            v12 = v118;
            if (v70 <= 2u)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_151;
        }

        v115 = "m_potAlMeas != nullptr";
        DeviceFaultNotify("glpe_lsq.cpp", 431, "getGeoFenceMeasForLsPos", "m_potAlMeas != nullptr");
        v116 = "glpe_lsq.cpp";
        v117 = 431;
      }

      else
      {
        v115 = "pAcqAsst";
        DeviceFaultNotify("glpe_lsq.cpp", 554, "LsPosInit", "pAcqAsst");
        v116 = "glpe_lsq.cpp";
        v117 = 554;
      }

LABEL_164:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v116, v117, v115);
    }

    v36 = *a2;
    v37 = *(a2 + 56);
    if (v37 && *v37 == 1 && *(v37 + 64) >= 2)
    {
      v38 = *(v37 + 8);
      v39 = *(v37 + 16);
      v40 = (a5 + 50);
      v41 = *(v37 + 32);
      v42 = 1;
      do
      {
        *(v40 - 42) = 0;
        *(v40 - 30) = 0xFFFFFFFF00000000;
        *(v40 - 22) = -1;
        *v40 = 0;
        *(v40 - 18) = 0;
        *(v40 - 14) = -1;
        *(v40 - 5) = 575;
        v43 = v42 & 1;
        if (v42)
        {
          v44 = 8;
        }

        else
        {
          v44 = 9;
        }

        *(v40 - 6) = v44;
        if (v43)
        {
          v45 = v38;
        }

        else
        {
          v45 = v39;
        }

        *(v40 - 50) = v45;
        *(v40 - 34) = **a1;
        *(v40 - 42) = v41;
        *(v40 - 1) = 1;
        v40 += 56;
        v42 = 0;
      }

      while (v43);
      v7 = a5 + 112;
      *(v37 + 72) = 1;
      v121 = ((*(a2 + 49) & 0x10) == 0 || (v106 = a1[2], *(v106 + 48) == 1) && *(v106 + 1) > *(v37 + 56)) && *(v37 + 24) > -999.0 && *(v37 + 56) > 0.0;
      LOBYTE(v14) = 2;
    }

    else
    {
      v121 = 0;
      LOBYTE(v14) = 0;
    }

    v122 = v37;
    LODWORD(v138) = *(v36 + 8);
    memcpy(&v139, *v36, 4 * v138);
    HIDWORD(v138) = v139;
    BlueFin::GlSetIterator::operator++(&v138);
    if (BYTE1(v138) != v138)
    {
      while (1)
      {
        v46 = WORD1(v138);
        if (WORD1(v138) >= 0x23FuLL)
        {
          break;
        }

        v47 = *v8;
        v48 = 1 << (BYTE2(v138) & 0x1F);
        if ((v48 & *((*v8)[1] + (WORD1(v138) >> 5))) != 0)
        {
          v49 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v138);
          v50 = v49[1];
          v51 = *v49;
          LOBYTE(v130) = *v49;
          v131 = v50;
          LOWORD(v132) = WORD1(v138);
          PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v47, &v130, 0);
          v53 = *(a2 + 48);
          if ((v53 & 0x400000) != 0 && ((v54 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(PeMeas + 44) - *(PeMeas + 44) + BlueFin::GlSvId::s_aucSvId2gnss[*(PeMeas + 40)]], v55 = v54 > 8, v56 = (1 << v54) & 0x134, !v55) ? (v57 = v56 == 0) : (v57 = 1), v57) || (v53 & 0x800000) != 0 && ((v58 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(PeMeas + 44) - *(PeMeas + 44) + BlueFin::GlSvId::s_aucSvId2gnss[*(PeMeas + 40)]], v58 != 11) ? (v59 = v58 == 0) : (v59 = 1), !v59))
          {
            v8 = a1;
          }

          else
          {
            LOBYTE(v130) = v51;
            v131 = v50;
            LOWORD(v132) = v46;
            v8 = a1;
            if ((v48 & *((*a1)[1] + (v46 >> 5))) != 0)
            {
              v60 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, &v130, 0);
              *v7 = 0;
              *(v7 + 8) = 0;
              *(v7 + 20) = 0xFFFFFFFF00000000;
              *(v7 + 28) = -1;
              *(v7 + 48) = 0;
              *(v7 + 50) = 0;
              *(v7 + 32) = 0;
              *(v7 + 36) = -1;
              *(v7 + 40) = 575;
              *(v7 + 44) = 0;
              v61 = *a1;
              *(v7 + 16) = **a1;
              v62 = v130;
              if ((v7 + 32) != &v130)
              {
                *(v7 + 32) = v130;
                *(v7 + 36) = v131;
                *(v7 + 40) = v132;
              }

              if ((v62 - 33) > 0x12)
              {
                *v7 = *(v60 + 24);
                v63 = *(v60 + 52);
              }

              else
              {
                *v7 = *v60 * 299792.458;
                v63 = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v61, &v130, 0, 0) + 24) * 299792458.0;
              }

              *(v7 + 8) = v63;
              *(v7 + 48) = 1;
              v64 = *(v60 + 88);
              *(v7 + 24) = v64;
              if (v64 != -1 || (*(a2 + 50) & 1) != 0)
              {
                if (WORD1(v138) >= 0x23Fu)
                {
                  break;
                }

                *(*a3 + ((WORD1(v138) >> 3) & 0x1FFC)) |= 1 << SBYTE2(v138);
                v14 = (v14 + 1);
                v7 += 56;
                if (v14 > 15)
                {
                  goto LABEL_78;
                }
              }
            }
          }
        }

        BlueFin::GlSetIterator::operator++(&v138);
        if (BYTE1(v138) == v138)
        {
          goto LABEL_78;
        }
      }

LABEL_163:
      v115 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v116 = "glsignalid.h";
      v117 = 578;
      goto LABEL_164;
    }

LABEL_78:
    v65 = *(a2 + 48);
    if ((v65 & 0x2000) != 0)
    {
      if ((v65 & 0x200) != 0)
      {
        v85 = 4;
      }

      else
      {
        v85 = 3;
      }

      v66 = v122;
      if (v85 < v14)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v66 = v122;
      if ((v65 & 0x100) != 0 || (v14 - 3) > 0xCu)
      {
        goto LABEL_117;
      }
    }

    if ((v65 & 0x1400) == 0x1000)
    {
      v86 = v8[2];
      if (!v86)
      {
        v115 = "m_potAlMeas != nullptr";
        DeviceFaultNotify("glpe_lsq.cpp", 190, "PackSkfMeas_AL", "m_potAlMeas != nullptr");
        v116 = "glpe_lsq.cpp";
        v117 = 190;
        goto LABEL_164;
      }

      if (*(v86 + 48) == 1 && *(v86 + 1) < 100.0)
      {
        v87 = **v8;
        v88 = *(v86 + 1);
        *v7 = *v86;
        *(v7 + 16) = v88;
        if (v86 != v7)
        {
          *(v7 + 32) = *(v86 + 32);
          *(v7 + 36) = *(v86 + 9);
          *(v7 + 40) = *(v86 + 20);
        }

        v89 = *(v86 + 11);
        *(v7 + 47) = *(v86 + 47);
        *(v7 + 44) = v89;
        *(v7 + 16) = v87;
        v7 += 56;
        LOBYTE(v14) = v14 + 1;
      }
    }

LABEL_117:
    if (v66)
    {
      if (*v66 == 1 && v14 <= 14 && *(v66 + 64) <= 1)
      {
        v90 = *(v66 + 8);
        v91 = *(v66 + 16);
        v92 = (v7 + 50);
        v93 = *(v66 + 32);
        v94 = 1;
        do
        {
          *(v92 - 42) = 0;
          *(v92 - 30) = 0xFFFFFFFF00000000;
          *(v92 - 22) = -1;
          *v92 = 0;
          *(v92 - 18) = 0;
          *(v92 - 14) = -1;
          *(v92 - 5) = 575;
          v95 = v94 & 1;
          if (v94)
          {
            v96 = 8;
          }

          else
          {
            v96 = 9;
          }

          *(v92 - 6) = v96;
          if (v95)
          {
            v97 = v90;
          }

          else
          {
            v97 = v91;
          }

          *(v92 - 50) = v97;
          *(v92 - 34) = **a1;
          *(v92 - 42) = v93;
          *(v92 - 1) = 1;
          v92 += 56;
          v94 = 0;
        }

        while (v95);
        LOBYTE(v14) = v14 + 2;
        *(v66 + 72) = 1;
        if ((*(a2 + 49) & 0x10) != 0 && ((v107 = a1[2], *(v107 + 48) != 1) || *(v107 + 1) <= *(v66 + 56)) || *(v66 + 24) <= -999.0)
        {
          v98 = 0;
LABEL_150:
          *(v66 + 73) = v98;
          goto LABEL_151;
        }

        v7 += 112;
        v121 = *(v66 + 56) > 0.0;
      }

      v98 = 0;
      if (!v121 || v14 >= 15)
      {
        goto LABEL_150;
      }
    }

    else
    {
      v99 = v121;
      if (v14 >= 15)
      {
        v99 = 0;
      }

      if (!v99)
      {
        goto LABEL_151;
      }
    }

    v100 = a1[2];
    *(v100 + 48) = 1;
    v101 = *(v66 + 56);
    *(v100 + 1) = v101;
    *(v100 + 11) = 3;
    v102 = v100 + 11;
    *(v100 + 7) = -1;
    *v100 = *(v66 + 24);
    if (v101 >= 100.0)
    {
      goto LABEL_151;
    }

    v103 = **a1;
    v104 = *(v100 + 1);
    *v7 = *v100;
    *(v7 + 16) = v104;
    if (v100 != v7)
    {
      *(v7 + 32) = *(v100 + 32);
      *(v7 + 36) = *(v100 + 9);
      *(v7 + 40) = *(v100 + 20);
    }

    v105 = *v102;
    *(v7 + 47) = *(v102 + 3);
    *(v7 + 44) = v105;
    *(v7 + 16) = v103;
    LOBYTE(v14) = v14 + 1;
    v98 = 1;
    goto LABEL_150;
  }

  if (!a1[3])
  {
    v115 = "m_pGpsEphMgr != nullptr";
    DeviceFaultNotify("glpe_lsq.cpp", 376, "getAsstMeasForLsPos", "m_pGpsEphMgr != nullptr");
    v116 = "glpe_lsq.cpp";
    v117 = 376;
    goto LABEL_164;
  }

  v20 = 0;
  LOBYTE(v14) = 0;
  v21 = *(a2 + 48);
  v22 = 91;
  v24.n128_u64[0] = -1;
  v24.n128_u64[1] = -1;
  v23 = vnegq_f64(v24);
  v24.n128_u64[1] = 0x41B1DE784A000000;
  v120 = v23;
  do
  {
    v25 = *(v10 + 8808);
    if (*(v25 + v20) - 1 > 0xBB)
    {
      break;
    }

    if ((v21 & 0x4000) != 0)
    {
      goto LABEL_21;
    }

    v26 = a1[3];
    LOBYTE(v138) = *(v25 + v20);
    v27 = *(v10 + 36);
    v24.n128_f64[0] = v27;
    if (v27 <= 0xFF9222FE)
    {
      v24.n128_f64[0] = v27;
    }

    v28 = (*(*v26 + 8))(v26, &v138, 1, v24);
    v23 = v120;
    if (!v28)
    {
LABEL_21:
      v24.n128_f64[0] = *(v25 + v20 + 32) * -1000.0;
      *(v7 + 8) = 0;
      *(v7 + 20) = 0;
      *(v7 + 49) = 0;
      *(v7 + 32) = 0;
      *a7.i64 = v24.n128_f64[0] - trunc(v24.n128_f64[0]);
      *&v29.f64[0] = vbslq_s8(v23, a7, v24).u64[0];
      v29.f64[1] = *(v25 + v20 + 40);
      v30 = vmulq_f64(v29, xmmword_298A43E30);
      *v7 = v30;
      *(v7 + 44) = 0;
      *(v7 + 16) = *(v10 + 36);
      *v30.i64 = v24.n128_f64[0] + trunc(v24.n128_f64[0] * 2.32830644e-10) * -4294967300.0;
      a7 = vbslq_s8(v23, v30, v24);
      if (v24.n128_f64[0] > 4294967300.0)
      {
        v24.n128_f64[0] = *a7.i64;
      }

      if (v24.n128_f64[0] < -4294967300.0)
      {
        *a7.i64 = -v24.n128_f64[0];
        v24.n128_f64[0] = -(v24.n128_f64[0] - trunc(v24.n128_f64[0] * -2.32830644e-10) * -4294967300.0);
        v24 = vbslq_s8(v23, v24, a7);
        v24.n128_f64[0] = -v24.n128_f64[0];
      }

      if (v24.n128_f64[0] < 0.0)
      {
        v31 = --v24.n128_f64[0];
      }

      else
      {
        v31 = v24.n128_f64[0];
      }

      *(v7 + 24) = v31;
      *(v7 + 28) = 0;
      *(v7 + 48) = 1;
      v32 = *(v25 + v20);
      if ((v32 - 189) >= 0xFFFFFF44)
      {
        v35 = BlueFin::GlSvId::s_aucSvId2gnss[*(v25 + v20)];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v35] == 255)
        {
          v34 = 575;
          v33 = -1;
        }

        else
        {
          v33 = 0;
          v34 = BlueFin::GlSignalId::s_ausGnss2signalId[v35] + v32 - BlueFin::GlSvId::s_aucGnss2minSvId[v35];
        }
      }

      else
      {
        v33 = 0;
        v34 = 575;
      }

      *(v7 + 32) = v32;
      *(v7 + 36) = v33;
      *(v7 + 40) = v34;
      *(*a3 + 4 * (v34 >> 5)) |= 1 << v34;
      v14 = (v14 + 1);
      if (v14 > 11)
      {
        break;
      }

      v7 += 56;
    }

    v20 += 96;
    --v22;
  }

  while (v22);
LABEL_151:
  result = 0;
  *a4 = v14;
  v109 = *(a2 + 48);
  if ((v109 & 0x100) != 0)
  {
    v110 = 3;
  }

  else
  {
    v110 = 4;
  }

  if ((v109 & 0x300) == 0x200 || (v109 & 0x1400000) == 0x400000)
  {
    ++v110;
  }

  if (v14 <= 16 && v14 >= v110)
  {
    v112 = a1[1];
    v130 = 0;
    v132 = v134;
    v133 = 8;
    memset(v134, 0, sizeof(v134));
    v135 = xmmword_298A41DA0;
    v136 = vdup_n_s32(0x42C60000u);
    v137 = 1120272384;
    BlueFin::stDops::stDops(&v138, &v130);
    v141 = v112;
    v113 = **a1;
    BlueFin::GlSignalIdSet::GetSvIdSet(a3, v127);
    v114 = *(a2 + 24);
    BlueFin::GlPeDops::GetDops();
    return *(&v135 + 1) <= 98.5;
  }

  return result;
}

BOOL BlueFin::GlPeLsq::LsPosCalc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, _BYTE *a10)
{
  v10 = MEMORY[0x2A1C7C4A8]();
  v210 = v12;
  v14 = v13;
  v16 = v15;
  v209 = v17;
  v18 = v11;
  v200 = v19;
  v21 = v20;
  v205 = v10;
  v276 = *MEMORY[0x29EDCA608];
  v22 = *(v20 + 48);
  v23 = v22 & 0x300;
  if (v23 == 512)
  {
    v24 = 5;
  }

  else
  {
    if ((v22 & 0x1400000) == 0x400000)
    {
      v24 = 5;
    }

    else
    {
      v24 = 4;
    }

    if ((v22 & 0x100) != 0)
    {
      v25 = *v11;
      if (v25 <= 3)
      {
        if ((v22 & 0x400) == 0)
        {
          *a10 = 1;
        }

        v24 = v25;
      }
    }
  }

  v26 = *v11;
  v27 = &v256 + 8;
  v256 = xmmword_298A43E40;
  v254 = &v257;
  v255 = &v258;
  v258 = 0;
  for (i = 1; i != 21; ++i)
  {
    v255[i] = v27;
    v27 += 40;
  }

  *v212 = v24;
  BlueFin::BigMatrix::Clone(&v254, v26, v24);
  BlueFin::BigMatrixDim<20,1>::BigMatrixDim(&v252, *v18);
  BlueFin::SKFVectorDim<16>::SKFVectorDim(v251, *v18);
  v30 = *(v21 + 8);
  v29 = *(v21 + 16);
  memset(v270, 0, sizeof(v270));
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  if (v30)
  {
    v31 = v29 == 0;
  }

  else
  {
    v31 = 0;
  }

  v32 = !v31;
  v249 = 0.0;
  v248 = 0.0;
  v250 = 0.0;
  if (v31 || v29)
  {
    *a10 = 0;
    BlueFin::lla2ecef(v210, &v243);
    v33 = v243;
    v34 = v244;
    v248 = v243;
    v249 = v244;
    v35 = *&v245;
    v250 = *&v245;
    v208 = 10;
    v206 = 1;
  }

  else
  {
    v206 = 0;
    v208 = *(v21 + 44);
    v35 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
  }

  v36 = &v245 + 8;
  v245 = xmmword_298A43E50;
  v243 = COERCE_DOUBLE(&v246);
  v244 = COERCE_DOUBLE(v247);
  v247[0] = 0;
  for (j = 8; j != 136; j += 8)
  {
    *(*&v244 + j) = v36;
    v36 += 64;
  }

  v240[0] = v241;
  v240[1] = 0x1000000000;
  memset(v241, 0, sizeof(v241));
  v242 = 0;
  v237[0] = v238;
  v237[1] = 0x1000000000;
  memset(v238, 0, sizeof(v238));
  v239 = 0;
  v234[0] = v235;
  v234[1] = 0x1000000000;
  memset(v235, 0, sizeof(v235));
  v236 = 0;
  v38 = *(v21 + 48);
  v230[0] = v237;
  v230[1] = v234;
  v230[2] = &v243;
  v230[3] = v240;
  v231 = 0u;
  v232 = 0u;
  v233 = 0;
  v227 = v229;
  v228 = 4;
  v229[1] = 0;
  v229[0] = 0;
  v39 = (v212[0] + 1);
  v40 = (v38 >> 4) & 1;
  v41 = *v18;
  if (v39 >= v41 || (~v38 & 0x2000800) != 0)
  {
    if (v41 < 1)
    {
      v42 = 0;
      v211 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = (v209 + 32);
      do
      {
        v47 = *v46;
        v46 += 56;
        if (((1 << (v47 & 0x1F)) & *(*(v21 + 64) + ((v47 >> 3) & 0x1C))) != 0)
        {
          v42 = v45 | (1 << v44);
          v43 = v42;
          v45 = v42;
        }

        ++v44;
      }

      while (*v18 != v44);
      v211 = 0;
      if (v43)
      {
        LOBYTE(v40) = 2;
      }
    }
  }

  else
  {
    v42 = 0;
    v211 = 1;
  }

  v201 = v14;
  if (!v208)
  {
    v112 = 0;
    v52 = 0.0;
    v193 = 0.0;
    v51 = 0.0;
    goto LABEL_211;
  }

  v207 = v23;
  v202 = v35;
  v203 = v33;
  v48 = 0;
  v204 = v38 & 1 | (32 * ((v38 >> 15) & 1)) & 0xFFFBDFFF | (v38 >> 11) & 0x800 | (((v38 >> 5) & 1) << 13) & 0xFFFBFFFF | ((HIWORD(v38) & 1) << 18) | 0x4C0;
  v49 = 0.25;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  while (1)
  {
    v53 = *(v21 + 32);
    v54 = *(v21 + 40);
    *&v213 = a9;
    *(&v213 + 1) = v210;
    *&v214 = v53;
    *(&v214 + 1) = __PAIR64__(v206, v54);
    v215 = v204;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0x4008000000000000;
    BlueFin::GlSetBase::SetAllLower(&v227, *v18);
    if (*v18 > v16)
    {
      v198 = "cNumMeas <= lSkfMeasNum";
      DeviceFaultNotify("glpe_lsq.cpp", 850, "LsPosCalc", "cNumMeas <= lSkfMeasNum");
      v199 = 850;
      goto LABEL_221;
    }

    if ((*(**(v205 + 8) + 16))(*(v205 + 8), &v213, v230, v209, &v227))
    {
      break;
    }

    if (*v18 >= 1)
    {
      v55 = 0;
      v56 = *(v21 + 48);
      v57 = v251[0] + 8;
      v58 = v240[0] + 8;
      v59 = v237[0] + 8;
      v60 = v255 + 1;
      v61 = (*&v244 + 8);
      v62 = v253 + 8;
      v63 = v234[0] + 8;
      v64 = (v209 + 44);
      do
      {
        *(*(v62 + 8 * v55) + 8) = *(v59 + 8 * v55) - *(v63 + 8 * v55);
        if (*(v21 + 16))
        {
          v65 = 0;
        }

        else
        {
          v65 = v32;
        }

        v66 = v61[v55];
        v67 = v60[v55];
        v67[1] = v66[1];
        if (v65)
        {
          v67[2] = v66[3];
          v67[3] = v66[7];
          v67[4] = v66[5];
          if (v207 == 512)
          {
            v67[5] = v66[8];
          }

          if ((v56 & 0x1400000) == 0x400000)
          {
            if ((BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v64 - 2) - *(v64 - 2) + BlueFin::GlSvId::s_aucSvId2gnss[*(v64 - 12)]] & 0xFD) != 0)
            {
              v68 = 1.0;
            }

            else
            {
              v68 = 0.0;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v67[2] = v66[2];
          v67[3] = v66[3];
          v67[4] = v66[4];
          if (v207 == 512)
          {
            v68 = v66[7];
LABEL_53:
            v67[5] = v68;
          }
        }

        if (!v48 && !*v64)
        {
          v69 = *(v58 + 8 * v55);
          v51 = v51 + v69;
          if (v69 >= v52)
          {
            v52 = *(v58 + 8 * v55);
          }
        }

        if (v40 == 1)
        {
          v71 = *(v58 + 8 * v55);
          v70 = 1.0;
          goto LABEL_64;
        }

        v70 = 1.0;
        if (v40 == 2)
        {
          if ((v42 >> v55))
          {
            v70 = 0.25;
            if ((v56 & 0x10) != 0)
            {
              v70 = v49 / *(v58 + 8 * v55);
            }
          }

          else if ((v56 & 0x10) != 0)
          {
            v71 = *(v58 + 8 * v55);
LABEL_64:
            if (v71 > v70)
            {
              v70 = 1.0 / v71;
            }
          }
        }

        *(v57 + 8 * v55++) = v70;
        v64 += 14;
      }

      while (v55 < *v18);
    }

    v267 = xmmword_298A43E60;
    v265 = &v268;
    v266 = &v269;
    v72 = 1;
    v73 = &v267 + 8;
    v269 = 0;
    do
    {
      v266[v72] = v73;
      v73 += 64;
      ++v72;
    }

    while (v72 != 9);
    v223 = xmmword_298A43E70;
    *&v222 = v224;
    v74 = &v223 + 8;
    *(&v222 + 1) = &v226;
    v75 = 8;
    v226 = 0;
    do
    {
      *(*(&v222 + 1) + v75) = v74;
      v74 += 128;
      v75 += 8;
    }

    while (v75 != 72);
    if (v40)
    {
      v76 = DWORD1(v256);
      *&v223 = __PAIR64__(v256, DWORD1(v256));
      if (v256 >= 1)
      {
        v77 = v251[0];
        v78 = v255;
        v79 = v256 + 1;
        v80 = *(&v222 + 1) + 8;
        v81 = 1;
        do
        {
          if (v76 >= 1)
          {
            v82 = *(v77 + 8 * v81);
            v83 = (v78[v81] + 8);
            v84 = v80;
            v85 = (v76 + 1) - 1;
            do
            {
              v86 = *v83++;
              v87 = v82 * v86;
              v88 = *v84++;
              *(v88 + 8 * v81) = v87;
              --v85;
            }

            while (v85);
          }

          ++v81;
        }

        while (v81 != v79);
      }

      BlueFin::BigMatrix::mult(&v265, &v222, &v252);
    }

    else
    {
      BlueFin::BigMatrix::mult(&v265, 1, &v254, &v252);
    }

    if (v212[0] >= 1)
    {
      v89 = v266 + 1;
      v90 = v270;
      v91 = *v212;
      do
      {
        v92 = *v89++;
        *v90++ = *(v92 + 8);
        --v91;
      }

      while (v91);
    }

    if (v40)
    {
      BlueFin::BigMatrix::mult_sym(&v265, &v222, &v254);
    }

    else
    {
      BlueFin::BigMatrix::mult_sym(&v265, 1, &v254, &v254);
    }

    v93 = BlueFin::BigMatrix::cholsl(&v265, v270, &v272, 0, v264);
    if ((v93 & v211) == 1)
    {
      v261 = xmmword_298A43E60;
      v259 = &v262;
      v260 = &v263;
      v94 = 1;
      v95 = &v261 + 8;
      v263 = 0;
      do
      {
        v260[v94] = v95;
        v95 += 64;
        ++v94;
      }

      while (v94 != 9);
      if (BlueFin::BigMatrix::inv(&v265, &v259, v264))
      {
        v214 = xmmword_298A43E50;
        *&v213 = &v215;
        *(&v213 + 1) = &v221;
        v96 = 8;
        v97 = &v214 + 8;
        v221 = 0;
        do
        {
          *(*(&v213 + 1) + v96) = v97;
          v97 += 64;
          v96 += 8;
        }

        while (v96 != 136);
        BlueFin::BigMatrix::mult(&v213, &v254, &v259);
        if (*v18 < 1)
        {
LABEL_114:
          v211 = 1;
        }

        else
        {
          v98 = *v18;
          v99 = *(&v213 + 1);
          v100 = v255;
          v101 = *(&v222 + 1) + 8;
          v102 = 1;
          do
          {
            v271[v102 - 1] = 0;
            if (v212[0] >= 1)
            {
              v103 = 0.0;
              v104 = v101;
              v105 = 1;
              do
              {
                if (v40)
                {
                  v106 = v104;
                }

                else
                {
                  v106 = &v100[v102];
                }

                if (v40)
                {
                  v107 = v102;
                }

                else
                {
                  v107 = v105;
                }

                v103 = v103 + *(*(v99 + 8 * v102) + 8 * v105++) * *(*v106 + 8 * v107);
                ++v104;
              }

              while (v39 != v105);
              *&v271[v102 - 1] = v103;
            }

            ++v102;
          }

          while (v102 != v98 + 1);
          v108 = v271;
          while (1)
          {
            v211 = 0;
            v109 = *v108 <= 0.0;
            if (fabs(*v108) <= 1.79769313e308)
            {
              v109 = 1;
            }

            if (*v108 >= 1.0 || !v109)
            {
              break;
            }

            ++v108;
            if (!--v98)
            {
              goto LABEL_114;
            }
          }
        }
      }

      else
      {
        v211 = 0;
      }
    }

    if (!v93)
    {
      break;
    }

    v110 = *(&v273 + 1);
    v111 = *&v272 * *&v272 + *(&v272 + 1) * *(&v272 + 1) + *&v273 * *&v273 + v110 * v110;
    v112 = v111 < 1.0;
    if (*(v21 + 16))
    {
      v113 = 0;
    }

    else
    {
      v113 = v32;
    }

    if (v113)
    {
      v213 = v272;
      *&v214 = v273;
      BlueFin::ned2lla(v210, &v213, &v222);
      *v210 = v222;
      *(v210 + 16) = v223;
      v114 = *a9;
      *(*a9 + 40) = v110 + *(*a9 + 40);
      if (v207 == 512 || (*(v21 + 48) & 0x1400000) == 0x400000)
      {
        *(v114 + 64) = *&v274 + *(v114 + 64);
      }
    }

    else
    {
      v34 = *(&v272 + 1) + v34;
      v248 = *&v272 + v203;
      v249 = v34;
      v202 = *&v273 + v202;
      v203 = *&v272 + v203;
      v250 = v202;
      BlueFin::ecef2lla(&v248, v210);
      *(*a9 + 32) = *(&v273 + 1) + *(*a9 + 32);
    }

    if (*(v21 + 16))
    {
      v115 = 0;
    }

    else
    {
      v115 = v32;
    }

    v116 = v208;
    if (v115 != 1)
    {
      goto LABEL_149;
    }

    if (v111 >= 1.0 && v208 - 1 > v48)
    {
      v112 = 0;
LABEL_149:
      v49 = 0.25;
      goto LABEL_150;
    }

    *(v201 + 248) = 0;
    if ((*(v21 + 49) & 8) == 0)
    {
      goto LABEL_149;
    }

    BlueFin::BigMatrixDim<20,1>::BigMatrixDim(&v213, *v18);
    v118 = 0;
    v223 = xmmword_298A43E80;
    *&v222 = v224;
    *(&v222 + 1) = &v225;
    v225 = 0;
    do
    {
      *(*(&v222 + 1) + v118 + 8) = &v224[v118 - 8];
      v118 += 8;
    }

    while (v118 != 64);
    BlueFin::BigMatrix::Clone(&v222, v212[0], 1);
    if (v212[0] >= 1)
    {
      v119 = (*(&v222 + 1) + 8);
      v120 = &v272;
      v121 = *v212;
      do
      {
        v122 = *v120++;
        v123 = v122;
        v124 = *v119++;
        *(v124 + 8) = v123;
        --v121;
      }

      while (v121);
    }

    BlueFin::BigMatrix::mult(&v213, &v254, &v222);
    v125 = *v18;
    if (v125 < 1)
    {
      v127 = 0;
      v131 = 0.0;
    }

    else
    {
      v126 = 0;
      v127 = 0;
      v128 = *(v201 + 248);
      v129 = *(&v213 + 1) + 8;
      v130 = v253 + 8;
      v131 = 0.0;
      v132 = (v209 + 44);
      do
      {
        v133 = *v132;
        v132 += 14;
        v134 = v133 == 3;
        v135 = *(*(v130 + 8 * v126) + 8) - *(*(v129 + 8 * v126) + 8);
        if (v135 < 0.0)
        {
          v135 = -v135;
        }

        if (v128 < v135)
        {
          *(v201 + 248) = v135;
          LOBYTE(v125) = *v18;
          v128 = v135;
        }

        v127 |= v134;
        v136 = v135 * v135;
        *(v264 + v126) = v136;
        v131 = v131 + v136;
        ++v126;
      }

      while (v126 < v125);
    }

    v137 = sqrt(v131);
    *&v137 = v137;
    *(v201 + 252) = LODWORD(v137);
    if (v111 >= 1.0)
    {
      v112 = 0;
      v49 = 0.25;
      goto LABEL_206;
    }

    v49 = 0.25;
    if ((v211 & 1) == 0)
    {
      v211 = 0;
      v112 = 1;
      goto LABEL_206;
    }

    v138 = *v18;
    v139 = v138 - v212[0];
    v140 = v138 - v212[0] - 1;
    v141 = 1.78;
    if (v140 <= 0x10)
    {
      LOWORD(v137) = word_298A43F10[v139 - 2];
      v141 = *&v137 * 0.01;
    }

    v142 = *v18;
    if (v138 < 1)
    {
      v144 = 0.0;
    }

    else
    {
      v143 = (v251[0] + 8);
      v144 = 0.0;
      v145 = v264;
      do
      {
        v146 = *v145++;
        v147 = v146;
        v148 = *v143++;
        v50 = v50 + v148 * v147;
        v144 = v144 + v147;
        --v142;
      }

      while (v142);
    }

    v149 = (v138 - (v127 & 1));
    v150 = v140;
    v50 = v50 / v140;
    if (v149 < 1)
    {
LABEL_185:
      v172 = 0;
      goto LABEL_197;
    }

    v151 = v139;
    v152 = v149;
    v153 = (v251[0] + 8);
    v154 = v144 / v151;
    v155 = &v265;
    v156 = v271;
    v157 = v264;
    v158 = v149;
    do
    {
      v159 = *v157++;
      v160 = v159;
      v161 = *v153++;
      v162 = v161 * v160;
      v163 = *v156++;
      *v155++ = v162 / (v50 * (1.0 - v163));
      --v158;
    }

    while (v158);
    v164 = 0;
    v165 = 0;
    while (2)
    {
      v166 = v158;
      while (1)
      {
        v167 = *&(&v265)[v166];
        v168 = v151 - v167;
        v169 = -(v151 - v167);
        if (v151 - v167 >= 0.0)
        {
          v169 = v151 - v167;
        }

        if (v169 <= 0.001)
        {
          v170 = 99.0;
          goto LABEL_176;
        }

        if (v168 * v150 <= 0.0)
        {
          break;
        }

        v170 = v167 * (v150 / v168);
LABEL_176:
        v171 = 1 << v166;
        if (v170 <= v141)
        {
          LODWORD(v171) = 0;
        }

        v165 |= v171;
        if (v149 == ++v166)
        {
          if (v164)
          {
            goto LABEL_185;
          }

          v174 = v154 * v212[0];
          v175 = 0.0;
          v176 = &v259;
          v177 = v271;
          v178 = v264;
          v179 = v149;
          do
          {
            v180 = *v178++;
            v181 = v180;
            v182 = *v177++;
            v183 = v182 * v181 / (v174 * ((1.0 - v182) * (1.0 - v182)));
            *v176++ = v183;
            v175 = v175 + v183;
            --v179;
          }

          while (v179);
          v184 = 0;
          v185 = 0;
          v186 = v175 / v149 * 3.0;
          do
          {
            v187 = *&(&v259)[v184];
            v188 = v187 <= v186 && v187 * v150 <= 4.0;
            v189 = 1 << v184;
            if (v188)
            {
              LODWORD(v189) = 0;
            }

            v185 |= v189;
            ++v184;
          }

          while (v152 != v184);
          v172 = v185 & v165;
          goto LABEL_197;
        }
      }

      v172 = 0;
      v164 = 1;
      v173 = 1 << v166;
      if (v141 >= 99.0)
      {
        LODWORD(v173) = 0;
      }

      v165 |= v173;
      v158 = v166 + 1;
      if (v149 - 1 != v166)
      {
        continue;
      }

      break;
    }

LABEL_197:
    LODWORD(v266) = v172;
    LODWORD(v265) = 1;
    HIDWORD(v265) = v172;
    BlueFin::GlSetIterator::operator++(&v265);
    if (BYTE1(v265) == v265)
    {
      v190 = 0;
    }

    else
    {
      v190 = 0;
      v191 = *(v201 + 264);
      do
      {
        v192 = *(v209 + 56 * SWORD1(v265) + 32);
        if ((v192 - 1) > 0xBB)
        {
          v190 |= 1 << SBYTE2(v265);
        }

        else
        {
          *(v191 + ((v192 >> 3) & 0x1C)) |= 1 << v192;
        }

        BlueFin::GlSetIterator::operator++(&v265);
      }

      while (BYTE1(v265) != v265);
    }

    v42 = v190 ^ v172;
    if (v172 == v190)
    {
      v211 = 1;
      v112 = 1;
LABEL_206:
      v116 = v208;
    }

    else
    {
      v211 = 0;
      v112 = 0;
      LOBYTE(v208) = v208 + v48;
      v116 = v208;
      LOBYTE(v40) = 2;
    }

LABEL_150:
    if (++v48 >= v116 || v112)
    {
      v193 = v50;
LABEL_211:
      if (*(v21 + 16))
      {
        v194 = 0;
      }

      else
      {
        v194 = v32;
      }

      if ((v194 & 1) == 0)
      {
        *v201 = *v210;
        *(v201 + 16) = *(v210 + 16);
        goto LABEL_218;
      }

      v195 = v51 / BlueFin::GlSetBase::Cnt(v200);
      if (v195 > 0.0)
      {
        *(v201 + 227) = v112;
        *(v201 + 232) = sqrt(v195);
        *(v201 + 240) = sqrt(v52);
        *(v201 + 256) = v193;
        v112 = 1;
        goto LABEL_218;
      }

      v198 = "fRmsRangeMeasUnc > 0.0";
      DeviceFaultNotify("glpe_lsq.cpp", 1213, "LsPosCalc", "fRmsRangeMeasUnc > 0.0");
      v199 = 1213;
LABEL_221:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", v199, v198);
    }
  }

  v112 = 0;
LABEL_218:
  v196 = *MEMORY[0x29EDCA608];
  return v112;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<20,1>::BigMatrixDim(BlueFin::BigMatrix *this, int a2)
{
  v3 = 0;
  *(this + 1) = xmmword_298A43F00;
  *(this + 24) = 0;
  *this = this + 32;
  *(this + 1) = this + 192;
  do
  {
    *(*(this + 1) + v3 + 8) = this + v3 + 24;
    v3 += 8;
  }

  while (v3 != 160);
  BlueFin::BigMatrix::Clone(this, a2, 1);
  return this;
}

double BlueFin::SKFVectorDim<16>::SKFVectorDim(uint64_t a1, int a2)
{
  v2 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = a2;
  *(a1 + 12) = 16;
  if (a2 >= 17)
  {
    DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 497, "LEN >= len");
  }

  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *v2 = 0u;
  *(a1 + 32) = 0u;
  *a1 = v2;
  return result;
}

double BlueFin::GlPeGnssTime::GetUtc@<D0>(BlueFin::GlPeGnssTime *this@<X0>, BlueFin::GlUtcTime *a2@<X8>)
{
  *a2 = &unk_2A1F11310;
  *(a2 + 1) = 0;
  BlueFin::GlUtcTime::breakdownFct(a2);

  return BlueFin::GlPeGnssTime::GetUtc(this, a2);
}

BlueFin::GlUtcTime *BlueFin::GlUtcTime::GlUtcTime(BlueFin::GlUtcTime *this, unsigned int a2, unsigned int a3, unsigned int a4, int8x16_t a5, double a6, int8x16_t a7)
{
  *this = &unk_2A1F11310;
  *(this + 1) = 0;
  v8 = a2 - 1980;
  if (a2 <= 0x7BC && (a2 != 1980 || a3 <= 1 && (a3 != 1 || a4 <= 5)))
  {
    v18 = "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))";
    DeviceFaultNotify("glpe_datetime.h", 1034, "GlUtcTime", "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))");
    v19 = "glpe_datetime.h";
    v20 = 1034;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v19, v20, v18);
  }

  *a7.i64 = *a5.i64 - trunc(*a5.i64);
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = *vbslq_s8(vnegq_f64(v9), a7, a5).i64;
  if (v10 < 0.0 || v10 >= 1.0)
  {
    v18 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v19 = "glpe_timepoint.h";
    v20 = 173;
    goto LABEL_22;
  }

  v12 = v10 * 4294967300.0 + 0.5;
  v13 = v12;
  if (v12 >= 4294967300.0)
  {
    v13 = -1;
  }

  v14 = a2 - 1977;
  if (v8 >= 0)
  {
    v14 = a2 - 1980;
  }

  v15 = *a5.i64 + 126230400 * (v14 >> 2) + 86400 * (BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v8 - (v14 & 0xFFFFFFFC)) - 1 + a3] + (a4 - 1)) - 432000;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v15 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v16 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v16 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  *(this + 2) = v13;
  *(this + 3) = v15 + v16;
  *this = &unk_2A1F11310;
  v21 = *a5.i64;
  BlueFin::GlUtcTime::breakdownFct(this);
  if (v21 >= 86400.0)
  {
    --*(this + 3);
  }

  BlueFin::GlUtcTime::breakdownFct(this);
  return this;
}

uint64_t BlueFin::GlUtcTime::operator-(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a5 | a4;
  if (a5 | a4)
  {
    if (a3 > a5 || a3 == a5 && a2 >= a4)
    {
      v5 = 0;
      v6 = a2 >= a4;
      a2 -= a4;
      v7 = !v6;
      a3 = a3 - a5 - v7;
    }

    else
    {
      v6 = a4 >= a2;
      a2 = a4 - a2;
      v8 = !v6;
      a3 = a5 - a3 - v8;
      v5 = 1;
    }
  }

  *result = a2;
  *(result + 4) = a3;
  if (!(a3 | a2))
  {
    v5 = 0;
  }

  *(result + 8) = v5;
  return result;
}

uint64_t BlueFin::BigMatrix::mult_sym(uint64_t this, const BlueFin::BigMatrix *a2, const BlueFin::BigMatrix *a3)
{
  if (this == a2)
  {
    v19 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1065, "mult_sym", "this != &mLeft");
    v20 = 1065;
    goto LABEL_24;
  }

  if (this == a3)
  {
    v19 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1066, "mult_sym", "this != &mRight");
    v20 = 1066;
    goto LABEL_24;
  }

  v3 = *(a2 + 5);
  if (v3 != *(a3 + 4))
  {
    v19 = "mLeft.m_NbCols == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 1069, "mult_sym", "mLeft.m_NbCols == mRight.m_NbRows");
    v20 = 1069;
    goto LABEL_24;
  }

  v4 = *(a2 + 4);
  if (v4 != *(a3 + 5))
  {
    v19 = "mLeft.m_NbRows == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1071, "mult_sym", "mLeft.m_NbRows == mRight.m_NbCols");
    v20 = 1071;
LABEL_24:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v20, v19);
  }

  if (v4 > *(this + 24) || v4 > *(this + 28))
  {
    v19 = "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1072, "mult_sym", "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols");
    v20 = 1072;
    goto LABEL_24;
  }

  if (v4 >= 1)
  {
    v5 = v4 + 1;
    v6 = 1;
    do
    {
      if (v6 <= v4)
      {
        v7 = *(a2 + 1);
        v8 = *(this + 8);
        v9 = *(v8 + 8 * v6);
        v10 = *(a3 + 1) + 8;
        v11 = v6;
        do
        {
          if (v3 < 1)
          {
            v13 = 0.0;
          }

          else
          {
            v12 = (*(v7 + 8 * v6) + 8);
            v13 = 0.0;
            v14 = v10;
            v15 = (v3 + 1) - 1;
            do
            {
              v16 = *v12++;
              v17 = v16;
              v18 = *v14++;
              v13 = v13 + v17 * *(v18 + 8 * v11);
              --v15;
            }

            while (v15);
          }

          *(v9 + 8 * v11) = v13;
          *(*(v8 + 8 * v11++) + 8 * v6) = v13;
        }

        while (v11 != v5);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  *(this + 16) = v4;
  *(this + 20) = v4;
  return this;
}

BOOL BlueFin::BigMatrix::cholsl(BlueFin::BigMatrix *this, double *a2, double *a3, double *a4, double *a5)
{
  v33[21] = *MEMORY[0x29EDCA608];
  v5 = *(this + 4);
  if (v5 != *(this + 5))
  {
    v31 = "m_NbRows == m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1227, "cholsl", "m_NbRows == m_NbCols");
    v32 = 1227;
    goto LABEL_29;
  }

  if (v5 >= 22)
  {
    v31 = "m_NbCols <= BIG_MATR_MAX_COL_DIM";
    DeviceFaultNotify("glpe_matrix.cpp", 1228, "cholsl", "m_NbCols <= BIG_MATR_MAX_COL_DIM");
    v32 = 1228;
LABEL_29:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v32, v31);
  }

  if (v5 >= 1)
  {
    bzero(a3, 8 * v5);
  }

  v11 = BlueFin::BigMatrix::choldci(this, v5, v33);
  if (v11)
  {
    if (a4)
    {
      v12 = 1.0;
      if (v5 >= 1)
      {
        v13 = v33;
        v14 = v5;
        do
        {
          v15 = *v13++;
          v12 = v12 * (v15 * v15);
          --v14;
        }

        while (v14);
      }

      *a4 = 1.0 / v12;
    }

    if (a5 && v5 >= 1)
    {
      memcpy(a5, v33, 8 * v5);
    }

    else if (v5 < 1)
    {
      goto LABEL_26;
    }

    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = a2[v17];
      if (v17)
      {
        v20 = (*(*(this + 1) + 8 * v17 + 8) + v16);
        v21 = v18;
        do
        {
          v22 = *v20--;
          v19 = v19 - v22 * a3[(v21-- - 2)];
        }

        while (v21 > 1);
      }

      a3[v17] = v19 * v33[v17];
      ++v17;
      ++v18;
      v16 += 8;
    }

    while (v17 != v5);
    v23 = &a3[v5];
    v24 = 8 * v5 + 8;
    v25 = v5;
    do
    {
      v26 = a3[v25 - 1];
      if (v25 < v5)
      {
        v27 = 0;
        do
        {
          v26 = v26 - *(*(*(this + 1) + v24 + 8 * v27) + 8 * v25) * v23[v27];
          ++v27;
        }

        while (v5 > v25 + v27);
      }

      a3[v25 - 1] = v26 * v33[v25 - 1];
      --v23;
      v24 -= 8;
    }

    while (v25-- > 1);
  }

LABEL_26:
  v29 = *MEMORY[0x29EDCA608];
  return v11;
}

BOOL BlueFin::BigMatrix::choldci(BlueFin::BigMatrix *this, int a2, double *a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    bzero(a3, 8 * a2);
    v6 = 0;
    v7 = 0;
    v8 = *(this + 1);
    while (1)
    {
      v9 = v6 + 1;
      v10 = *(v8 + 8 * (v6 + 1));
      v11 = v6;
      do
      {
        v12 = v11 + 1;
        v13 = *(v10 + 8 * (v11 + 1));
        if (v6 < 2)
        {
          v20 = v6 - 1;
          if (v6 - 1 < 0)
          {
            goto LABEL_12;
          }

LABEL_10:
          v21 = 8 * v20 + 8;
          do
          {
            v13 = v13 - *(v10 + v21) * *(*(v8 + 8 * v12) + v21);
            v21 -= 8;
          }

          while (v21);
          goto LABEL_12;
        }

        v14 = *(v8 + 8 * v12);
        v15 = v6;
        do
        {
          v16 = v15;
          v17 = v15 - 1;
          v18 = *(v10 + 8 * v17);
          v19 = *(v14 + 8 * v17);
          v15 = v16 - 2;
          v13 = v13 - *(v10 + 8 * v16) * *(v14 + 8 * v16) - v18 * v19;
        }

        while (v16 > 3);
        v20 = v16 - 3;
        if (((v16 - 3) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        if (v6 == v11)
        {
          if (v13 <= 0.0)
          {
            return v7;
          }

          a3[v6] = 1.0 / sqrt(v13);
        }

        else
        {
          *(*(v8 + 8 * v12) + 8 * v9) = v13 * a3[v6];
        }

        ++v11;
      }

      while (v12 != v5);
      ++v6;
      v7 = v9 >= v5;
      if (v9 == v5)
      {
        return 1;
      }
    }
  }

  return 1;
}

void BlueFin::GlPeLsq::LsPosFinish(unsigned int **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, _BYTE *a10)
{
  v15 = *a4;
  if (v15 >= 1 && *(a5 + 44) != 3)
  {
    v16 = 0;
    v17 = (a5 + 100);
    while (v15 - 1 != v16)
    {
      v18 = *v17;
      v17 += 14;
      ++v16;
      if (v18 == 3)
      {
        goto LABEL_10;
      }
    }

    v19 = *a4;
  }

LABEL_10:
  v20 = *(a2 + 56);
  if (v20 && *v20 == 1)
  {
    v20[72];
  }

  v41 = *(a2 + 48);
  v21 = a1[1];
  v44 = 0;
  v45 = v47;
  v46 = 8;
  memset(v47, 0, 32);
  *&v47[9] = xmmword_298A41DA0;
  v48 = vdup_n_s32(0x42C60000u);
  v49 = 1120272384;
  BlueFin::stDops::stDops(v50, &v44);
  v51 = v21;
  if (*(a1[2] + 48))
  {
    v22 = (*(a2 + 48) >> 9) & 1 | 2;
  }

  else
  {
    v22 = (*(a2 + 48) >> 9) & 1;
  }

  *a10;
  v23 = **a1;
  BlueFin::GlSignalIdSet::GetSvIdSet(a3, v43);
  v42 = *(a2 + 32) + *(*a9 + 40);
  v24 = *(a1[2] + 1);
  BlueFin::GlPeDops::GetDops();
  BlueFin::stDops::operator=(a7 + 136, &v44);
  *a7 = *a8;
  *(a7 + 16) = *(a8 + 16);
  v25 = *a9;
  *(a7 + 24) = *(a2 + 32) + *(*a9 + 40);
  *(a7 + 32) = *(v25 + 64) + *(a2 + 40) * 0.001;
  *(a7 + 224) = 1;
  v26 = BlueFin::GlSetBase::Cnt(a3);
  if (!v26)
  {
    DeviceFaultNotify("glpe_lsq.cpp", 1270, "LsPosFinish", "ucCnt > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 1270, "ucCnt > 0");
  }

  v27 = *(a7 + 196);
  v28 = *(a2 + 48);
  *(a7 + 40) = (v41 & 0x300) == 512;
  BlueFin::GlSetBase::operator=(a7 + 48, a3);
  *(a7 + 60) = *(a3 + 12);
  v29 = *(a3 + 28);
  v30 = *(a3 + 44);
  v31 = *(a3 + 60);
  *(a7 + 120) = *(a3 + 72);
  *(a7 + 108) = v31;
  *(a7 + 92) = v30;
  *(a7 + 76) = v29;
  v32 = *(a2 + 56);
  if (v32)
  {
    LOBYTE(v32) = *v32 == 1 && v32[72] == 1;
  }

  *(a7 + 312) = v32;
  RngUncMetric = BlueFin::stLsPosState::GetRngUncMetric(a7);
  v34 = 0;
  if ((v41 & 0x300) == 0x200 && v26 <= 5)
  {
    v34 = fabs(*(a7 + 32)) >= 100.0;
  }

  v35 = *(a7 + 196);
  v36 = RngUncMetric * v35;
  if (*(a7 + 232) * v35 >= v36)
  {
    v36 = *(a7 + 232) * v35;
  }

  v37 = 400.0;
  if ((~v28 & 0x140000) == 0)
  {
    v37 = 600.0;
  }

  v38 = v27 >= 40.0;
  if (v36 > v37)
  {
    v38 = 1;
  }

  v39 = (*(a7 + 16) - 27500) < 0xFFFF92D3 || v38;
  v40 = ((v39 | v34) & 1) == 0;
  *(a7 + 225) = v40;
  *(a7 + 226) = v40;
}

uint64_t BlueFin::stDops::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  BlueFin::GlSetBase::operator=(a1 + 8, a2 + 8);
  v4 = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

double BlueFin::stLsPosState::GetRngUncMetric(BlueFin::stLsPosState *this)
{
  v2 = BlueFin::GlSetBase::Cnt((this + 48));
  if (v2 <= (*(this + 40) | 4u))
  {
    return *(this + 30);
  }

  if (v2 < 0xA)
  {
    return *(this + 29);
  }

  return *(this + 62);
}

unint64_t *BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = v2;
  result[1] = v3;
  if (!v2)
  {
    v4 = "m_potWritePtr";
    DeviceFaultNotify("glpe_navutil.cpp", 108, "GlPeSubsetIterator", "m_potWritePtr");
    v5 = 108;
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = "m_potReadPtr";
    DeviceFaultNotify("glpe_navutil.cpp", 109, "GlPeSubsetIterator", "m_potReadPtr");
    v5 = 109;
    goto LABEL_8;
  }

  if (v2 < v3)
  {
    v4 = "m_potWritePtr>=m_potReadPtr";
    DeviceFaultNotify("glpe_navutil.cpp", 110, "GlPeSubsetIterator", "m_potWritePtr>=m_potReadPtr");
    v5 = 110;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", v5, v4);
  }

  return result;
}

unint64_t BlueFin::GlPeSubsetIterator::operator->(unint64_t *a1)
{
  result = a1[1];
  if (result > *a1)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 131, "operator->", "m_potReadPtr <= m_potWritePtr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 131, "m_potReadPtr <= m_potWritePtr");
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::RunDeals(uint64_t a1, BlueFin::GlSetBase *a2)
{
  v75 = *MEMORY[0x29EDCA608];
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 88);
  v6 = **(a1 + 2240);
  v56[0] = v4 + 8;
  v56[1] = v5;
  v57 = v6;
  v58 = 15;
  v59 = 17;
  v44 = vdupq_n_s64(0x4079000000000000uLL);
  v45 = 0x4079000000000000;
  v47 = 0x6400000000;
  bzero(v48, 0x328uLL);
  v46 = v48;
  v48[102] = 0x6400000000;
  bzero(v49, 0x328uLL);
  v7 = 0;
  v48[101] = v49;
  v49[204] = 0;
  v50 = v52;
  v51 = 8;
  v53 = xmmword_298A41DA0;
  memset(v52, 0, 32);
  v54 = vdup_n_s32(0x42C60000u);
  v55 = 1120272384;
  v42 = 0;
  v41 = 0uLL;
  v43 = *(v4 + 152);
  v8 = *(a1 + 8);
  v49[202] = *v8;
  v38 = v40;
  v39 = 19;
  memset(v40, 0, sizeof(v40));
  do
  {
    v9 = &v74[v7 + 19];
    *v9 = 0;
    v9[1] = -1;
    *(v9 + 4) = 575;
    v7 += 3;
  }

  while (v7 != 48);
  if (BlueFin::GlSetBase::Cnt(a2) >= 0x11)
  {
    v35 = "otRrSignalIds.Cnt() <= DEALS_MAX_NUM_SUBSETS";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2565, "RunDeals", "otRrSignalIds.Cnt() <= DEALS_MAX_NUM_SUBSETS");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2565;
    goto LABEL_27;
  }

  BlueFin::GlSetBase::GlSetBase(&__src, v68, 0x13u, a2);
  v60 = &v62;
  LOBYTE(v61) = 19;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v60, (v8 + 8));
  BlueFin::GlSetBase::operator=(&__src, &v60);
  v68[1] = v63;
  v68[2] = v64;
  v69[0] = *v65;
  *(v69 + 12) = *&v65[12];
  v68[0] = v62;
  v70 = v67;
  memcpy(v74, __src, 4 * v67);
  v72 = 0;
  v71 = 0;
  v73 = v74[0];
  BlueFin::GlSetIterator::operator++(&v70);
  if (v71 == v70)
  {
    goto LABEL_17;
  }

  v10 = 0;
  do
  {
    v11 = v72;
    if (v72 >= 0x23FuLL)
    {
      v35 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v36 = "glsignalid.h";
      v37 = 578;
      goto LABEL_27;
    }

    v12 = *(a1 + 8);
    v13 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v72;
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v60) = *v13;
    HIDWORD(v60) = v15;
    v61 = v72;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v12, &v60, 0);
    if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas))
    {
      v17 = *(a1 + 8);
      LOBYTE(v60) = v14;
      HIDWORD(v60) = v15;
      v61 = v11;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v17, &v60, 0, 0);
      v19 = &v74[3 * v10 + 19];
      *v19 = v14;
      v19[1] = v15;
      *(v19 + 4) = v11;
      *(&__src + v10++) = *(MeMeas + 27);
    }

    BlueFin::GlSetIterator::operator++(&v70);
  }

  while (v71 != v70);
  if (v10 <= 3u)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v21 = &v70;
  BlueFin::GlSortFloats(&__src, v10, &v70, v20);
  if ((v10 & 0xF0) != 0)
  {
    v22 = 16;
  }

  else
  {
    v22 = v10;
  }

  v23 = v38;
  do
  {
    v24 = *v21++;
    v25 = SLOWORD(v74[3 * v24 + 21]);
    v23[v25 >> 5] |= 1 << v25;
    --v22;
  }

  while (v22);
  BlueFin::GlSetBase::GlSetBase(&v60, &v62, 0x13u, &v38);
  result = BlueFin::GlPeDEALS::ComputeDEALS(a1 + 2856, &v60, v56, &v41);
LABEL_18:
  v27 = *(a1 + 2940) * 0.0174532925;
  if (v27 <= 0.0)
  {
    v35 = "m_otDEALS.GetHeadingAccyRad() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2604, "RunDeals", "m_otDEALS.GetHeadingAccyRad() > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2604;
    goto LABEL_27;
  }

  v28 = *(a1 + 2948) * 0.0174532925;
  if (v28 <= 0.0)
  {
    v35 = "m_otDEALS.GetPitchAccyRad() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2605, "RunDeals", "m_otDEALS.GetPitchAccyRad() > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2605;
    goto LABEL_27;
  }

  v29 = *(a1 + 2904);
  v30 = v29;
  v31 = v30 * v30;
  v32 = *(a1 + 2912);
  v33 = v32;
  if (sqrtf(v31 + (v33 * v33)) <= 0.0)
  {
    v35 = "m_otDEALS.GetSpeedAccy() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2606, "RunDeals", "m_otDEALS.GetSpeedAccy() > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2606;
    goto LABEL_27;
  }

  if (*(a1 + 2920) <= 0.0)
  {
    v35 = "m_otDEALS.GetVVelAccy() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2607, "RunDeals", "m_otDEALS.GetVVelAccy() > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2607;
    goto LABEL_27;
  }

  if (*(a1 + 2928) <= 0.0)
  {
    v35 = "m_otDEALS.GetBcDotAccy() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2608, "RunDeals", "m_otDEALS.GetBcDotAccy() > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2608;
    goto LABEL_27;
  }

  if (v29 <= 0.0)
  {
    v35 = "m_otDEALS.GetVelAccy().dN > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2609, "RunDeals", "m_otDEALS.GetVelAccy().dN > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2609;
    goto LABEL_27;
  }

  if (v32 <= 0.0)
  {
    v35 = "m_otDEALS.GetVelAccy().dE > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2610, "RunDeals", "m_otDEALS.GetVelAccy().dE > 0.0");
    v36 = "glpe_navgnsskf.cpp";
    v37 = 2610;
LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v36, v37, v35);
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeDEALS::ComputeDEALS(uint64_t a1, BlueFin::GlSetBase *this, uint64_t *a3, float64x2_t *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlSetBase::Cnt(this) >= 0x11)
  {
    DeviceFaultNotify("glpe_deals.cpp", 60, "ComputeDEALS", "otRrSignalIds.Cnt() <= DEALS_MAX_MEAS_To_PACK");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_deals.cpp", 60, "otRrSignalIds.Cnt() <= DEALS_MAX_MEAS_To_PACK");
  }

  *(a1 + 76) = 0;
  v8 = BlueFin::GlSetBase::Cnt(this);
  v9 = 0;
  if (v8 >= 4)
  {
    v17 = v18;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 48) = vdupq_n_s64(0x4082C00000000000uLL);
    *(a1 + 64) = 0x4082C00000000000;
    *(a1 + 76) = 0;
    *(a1 + 80) = xmmword_298A41E50;
    *(a1 + 40) = 0;
    *(a1 + 72) = 1142285679;
    bzero(*(a1 + 96), ((4 * *(a1 + 104) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlSetBase::GlSetBase(v15, v16, 0x13u, this);
    BlueFin::GlPeDEALS::RunAllSubsets(a1, &v17, v15, a3, a4);
    if (((v17 - v18) & 0xFE0) != 0)
    {
      BlueFin::GlPeDEALS::CalcSigmas(a1, v18, this, ((v17 - v18) >> 4));
      *(a1 + 76) = 1;
      BlueFin::GlSetBase::operator=(a1 + 96, this);
      *(a1 + 108) = *(this + 12);
      v10 = *(this + 28);
      v11 = *(this + 44);
      v12 = *(this + 60);
      *(a1 + 168) = *(this + 72);
      *(a1 + 156) = v12;
      *(a1 + 140) = v11;
      *(a1 + 124) = v10;
    }

    v9 = *(a1 + 76);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v9 & 1;
}

unsigned __int8 *BlueFin::GlPeDEALS::RunAllSubsets(BlueFin::GlSignalIdArray ***a1, float32x4_t **a2, uint64_t a3, uint64_t *a4, float64x2_t *a5)
{
  v9 = 0;
  v122 = *MEMORY[0x29EDCA608];
  do
  {
    v10 = &v121[v9];
    v10[32] = 0;
    *(v10 + 9) = -1;
    *(v10 + 20) = 575;
    v9 += 56;
  }

  while (v9 != 896);
  LODWORD(v110) = *(a3 + 8);
  memcpy(&v111, *a3, 4 * v110);
  HIDWORD(v110) = v111;
  result = BlueFin::GlSetIterator::operator++(&v110);
  if (BYTE1(v110) != v110)
  {
    v66 = a5;
    v12 = 0;
    v67 = vdupq_n_s64(0x41B1DE784A000000uLL);
    do
    {
      v13 = WORD1(v110);
      if (WORD1(v110) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v14 = *a1;
      v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v110);
      v16 = *v15;
      v17 = v15[1];
      LOBYTE(v79) = *v15;
      HIDWORD(v79) = v17;
      LOWORD(v80) = WORD1(v110);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v14, &v79, 0, 0);
      if (MeMeas)
      {
        v19 = &v121[56 * v12];
        *(v19 + 20) = 0xFFFFFFFF00000000;
        *(v19 + 7) = -1;
        v19[50] = 0;
        *(v19 + 11) = 2;
        *(v19 + 4) = **a1;
        v19[32] = v16;
        *(v19 + 9) = v17;
        *(v19 + 20) = v13;
        v20.f32[0] = -*(MeMeas + 26);
        v20.i32[1] = *(MeMeas + 27);
        *v19 = vmulq_f64(vcvtq_f64_f32(v20), v67);
        *(v19 + 24) = 1;
        ++v12;
      }

      result = BlueFin::GlSetIterator::operator++(&v110);
    }

    while (BYTE1(v110) != v110 && v12 <= 15);
    if (v12 >= 3)
    {
      v115[1] = 0x400000004;
      v22 = v66[1];
      v117 = *v66;
      v116 = 0;
      v115[0] = &v116;
      v118 = v22;
      v23 = &v112 + 8;
      v112 = xmmword_298A41E60;
      v110 = &v113;
      v111 = &v114;
      v114 = 0;
      for (i = 1; i != 17; ++i)
      {
        v111[i] = v23;
        v23 += 32;
      }

      v107[0] = v108;
      v107[1] = 0x1000000000;
      memset(v108, 0, sizeof(v108));
      v109 = 0;
      v104[0] = v105;
      v104[1] = 0x1000000000;
      memset(v105, 0, sizeof(v105));
      v106 = 0;
      v101[0] = v102;
      v101[1] = 0x1000000000;
      memset(v102, 0, sizeof(v102));
      v103 = 0;
      v25 = a4[3] & 1 | 0x4C0;
      v26 = *a4;
      v27 = a4[1];
      v28 = *(a4 + 4);
      v92[0] = v115;
      v92[1] = v26;
      v92[2] = v27;
      v93 = v28;
      v94 = 2;
      v95 = v25;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0x4008000000000000;
      v88[0] = v104;
      v88[1] = v101;
      v88[2] = &v110;
      v88[3] = v107;
      v89 = 0u;
      v90 = 0u;
      v91 = 0;
      v85 = v87;
      v86 = 4;
      v87[1] = 0;
      v87[0] = 0;
      BlueFin::GlSetBase::SetAllLower(&v85, v12);
      result = (*(*a1[1] + 2))(a1[1], v92, v88, v121, &v85);
      if (!result)
      {
        v29 = *(a4 + 6);
        if ((v29 & 0x200000) != 0)
        {
          BlueFin::GlPeLsq::AddPMeas(v104, v101, v107, &v110, 2, 0.0225);
          BlueFin::GlPeLsq::AddPMeas(v104, v101, v107, &v110, 1, 0.0225);
          v29 = *(a4 + 6);
        }

        v30 = v112;
        if ((v29 & 8) == 0)
        {
          v31 = (v29 & 4) == 0 && v12 > 5u;
          if (!v31 && v112 <= 20)
          {
            BlueFin::GlPeLsq::AddPMeas(v104, v101, v107, &v110, 3, 0.0225);
            v29 = *(a4 + 6);
            v30 = v112;
          }
        }

        if ((v29 & 0xA) == 2 && v30 <= 20)
        {
          BlueFin::GlPeLsq::AddPMeas(v104, v101, v107, &v110, 4, v66[2].f64[0]);
          v30 = v112;
          v29 = *(a4 + 6);
        }

        v32 = DWORD1(v112);
        BlueFin::SKFVectorDim<16>::SKFVectorDim(v84, v30);
        v33 = &v81 + 8;
        v81 = xmmword_298A41E70;
        v79 = &v82;
        v80 = &v83;
        v83 = 0;
        for (j = 1; j != 5; ++j)
        {
          v80[j] = v33;
          v33 += 128;
        }

        BlueFin::BigMatrix::Clone(&v79, v32, v30);
        if (v30 >= 1)
        {
          v35 = v107[0];
          v36 = v111;
          v37 = v104[0];
          v38 = v101[0];
          v39 = v84[0];
          v40 = v80 + 1;
          v41 = 1;
          do
          {
            v42 = 1.0;
            if ((v29 & 0x10) != 0)
            {
              v42 = 1.0 / *(v35 + 8 * v41);
            }

            if (v32 >= 1)
            {
              v43 = (v36[v41] + 8);
              v44 = v40;
              v45 = (v32 + 1) - 1;
              do
              {
                v46 = *v43++;
                v47 = v42 * v46;
                v48 = *v44++;
                *(v48 + 8 * v41) = v47;
                --v45;
              }

              while (v45);
            }

            *(v39 + 8 * v41) = *(v37 + 8 * v41) - *(v38 + 8 * v41);
            ++v41;
          }

          while (v41 != v30 + 1);
        }

        v49 = &v76 + 8;
        v76 = xmmword_298A41E80;
        v74 = &v77;
        v75 = &v78;
        v78 = 0;
        for (k = 1; k != 5; ++k)
        {
          v75[k] = v49;
          v49 += 32;
        }

        BlueFin::BigMatrix::mult(&v74, &v79, &v110);
        v71[0] = v72;
        v71[1] = 0x400000000;
        memset(v72, 0, sizeof(v72));
        v73 = 0;
        BlueFin::SKFVector::mult(v71, &v79, v84);
        BlueFin::BigMatrixDim<4,4>::BigMatrixDim(v69, v32, v32);
        v51 = 1;
        do
        {
          if (v32 >= 1)
          {
            v52 = v75;
            v53 = v111;
            v54 = v80;
            v55 = v70;
            v56 = v71[0];
            v57 = 1;
            v58 = 1;
            v59 = v84[0];
            do
            {
              if (v32 >= v58)
              {
                v60 = v52[v58];
                v61 = v53[v51];
                v62 = v58;
                v63 = *(v55 + 8 * v58);
                do
                {
                  *(v63 + 8 * v62) = *(v60 + 8 * v62) - *(v61 + 8 * v58) * *(v54[v62] + 8 * v51);
                  ++v62;
                }

                while (v32 >= v62);
              }

              v120[v57 - 1] = *(v56 + 8 * v58) - *(v54[v58] + 8 * v51) * *(v59 + 8 * v51);
              v57 = ++v58;
            }

            while (v32 >= v58);
          }

          v68 = 0.0;
          result = BlueFin::BigMatrix::cholsl(v69, v120, v119[0].f64, &v68, 0);
          if (result && v68 >= 0.0001)
          {
            v64 = *a2;
            *v64 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(*v66, v119[0])), vaddq_f64(v66[1], v119[1]));
            *a2 = v64 + 1;
          }

          ++v51;
        }

        while (v51 != v12 + 1);
      }
    }
  }

  v65 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *BlueFin::SKFVector::mult(uint64_t *this, const BlueFin::BigMatrix *a2, const BlueFin::SKFVector *a3)
{
  v3 = *(a2 + 5);
  if (v3 != *(a3 + 2))
  {
    v17 = "rhs.GetColSize() == lhs.GetLen()";
    DeviceFaultNotify("glpe_matrix.cpp", 2143, "mult", "rhs.GetColSize() == lhs.GetLen()");
    v18 = 2143;
    goto LABEL_14;
  }

  v4 = *(a2 + 4);
  if (*(this + 3) < v4)
  {
    v17 = "m_MaxLen >= rhs.GetRowSize()";
    DeviceFaultNotify("glpe_matrix.cpp", 2144, "mult", "m_MaxLen >= rhs.GetRowSize()");
    v18 = 2144;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v18, v17);
  }

  *(this + 2) = v4;
  if (v4 >= 1)
  {
    v5 = *(a2 + 1);
    v6 = *this;
    v7 = v4 + 1;
    v8 = *a3 + 8;
    v9 = 1;
    do
    {
      if (v3 < 1)
      {
        v11 = 0.0;
      }

      else
      {
        v10 = (*(v5 + 8 * v9) + 8);
        v11 = 0.0;
        v12 = v8;
        v13 = (v3 + 1) - 1;
        do
        {
          v14 = *v10++;
          v15 = v14;
          v16 = *v12++;
          v11 = v11 + v15 * v16;
          --v13;
        }

        while (v13);
      }

      *(v6 + 8 * v9++) = v11;
    }

    while (v9 != v7);
  }

  return this;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<4,4>::BigMatrixDim(BlueFin::BigMatrix *this, int a2, int a3)
{
  v4 = this + 24;
  *(this + 1) = xmmword_298A41E80;
  *(this + 20) = 0;
  *this = this + 32;
  *(this + 1) = this + 160;
  for (i = 8; i != 40; i += 8)
  {
    *(*(this + 1) + i) = v4;
    v4 += 32;
  }

  BlueFin::BigMatrix::Clone(this, a2, a3);
  return this;
}

void BlueFin::GlPeDEALS::CalcSigmas(uint64_t a1, _DWORD *a2, BlueFin::GlSetBase *this, const float *a4)
{
  v90 = *MEMORY[0x29EDCA608];
  v8 = BlueFin::GlSetBase::Cnt(this);
  if (a4)
  {
    v9 = v85;
    v10 = a4;
    do
    {
      v11 = a2[1];
      *(v9 - 32) = *a2;
      *(v9 - 16) = v11;
      v12 = a2[3];
      *v9 = a2[2];
      v9[16] = v12;
      a2 += 4;
      ++v9;
      --v10;
    }

    while (v10);
  }

  v82 = 100.0;
  BlueFin::GlPeDEALS::CalcSpeedFromLs(v83, a4, &v82, v7);
  v14 = v13;
  v15 = v13;
  *(a1 + 16) = v13;
  v16 = v82;
  BlueFin::GlPeDEALS::CalcSpeedFromLs(v84, a4, &v82, v17);
  *(a1 + 24) = v19;
  v20 = v82;
  v21 = sqrtf((v14 * v14) + (v19 * v19));
  v79 = v19;
  v80 = v15;
  if (v21 <= 0.15)
  {
    if (v16 < 0.15)
    {
      v16 = 0.15;
    }

    if (v20 < 0.15)
    {
      v20 = 0.15;
    }

    *(a1 + 48) = v16;
    *(a1 + 56) = v20;
  }

  BlueFin::GlPeDEALS::CalcSpeedFromLs(v86, a4, &v82, v18);
  *(a1 + 40) = v23;
  v24 = v82;
  *(a1 + 72) = v82;
  if (v8 < 5)
  {
    v27 = 25.0;
    v26 = 0.0;
  }

  else
  {
    BlueFin::GlPeDEALS::CalcSpeedFromLs(v85, a4, &v82, v22);
    v26 = v25;
    v27 = v82;
  }

  *(a1 + 32) = v26;
  *(a1 + 64) = v27;
  if (a4)
  {
    v28 = v87;
    v29 = v84;
    v30 = a4;
    do
    {
      *v28++ = atan2f(*v29, *(v29 - 16));
      ++v29;
      --v30;
    }

    while (v30);
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    do
    {
      v38 = *&v84[v31];
      v39 = v83[v31];
      v40 = sqrtf((v38 * v38) + (v39 * v39));
      if (v40 > 0.0)
      {
        v33 = v33 + (v39 / v40);
        v34 = v34 + (v38 / v40);
      }

      v41 = v87[v31];
      if (v31)
      {
          ;
        }

        while (i <= -3.14159265)
        {
          i = i + 6.28318531;
        }

        v43 = i;
        if (v35 <= v43)
        {
          v35 = v43;
        }

        if (v36 >= v43)
        {
          v36 = v43;
        }
      }

      else
      {
        v37 = v87[0];
      }

      v44 = 0;
      v45 = 0.0;
      do
      {
        if (v31 != v44)
        {
            ;
          }

          while (j <= -3.14159265)
          {
            j = j + 6.28318531;
          }

          if (j < 0.0)
          {
            j = -j;
          }

          v47 = j;
          v45 = v45 + v47;
        }

        ++v44;
      }

      while (v44 != a4);
      if (v45 > 0.0)
      {
        v89[v32++] = v45;
      }

      ++v31;
    }

    while (v31 != a4);
  }

  else
  {
    v32 = 0;
    v36 = 0.0;
    v35 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
  }

  v49 = atan2f(v34, v33) * 57.2957795;
  v50 = v49 - floor(v49 / 360.0) * 360.0;
  *(a1 + 80) = v50;
  if (v32 > 2u)
  {
    BlueFin::GlSortFloats(v89, v32, v88, v48);
    v51 = v87[v88[0]];
    if ((v32 & 1) == 0)
    {
        ;
      }

        ;
      }

      v53 = k;
      v51 = v51 + (v53 * -0.5);
    }

    v54 = (v51 * 57.296) - floor((v51 * 57.296) / 360.0) * 360.0;
    *(a1 + 80) = v54;
  }

  if (v21 <= 0.15)
  {
    v62 = 180.0;
  }

  else
  {
    v55 = -v36;
    if (v36 >= 0.0)
    {
      v55 = v36;
    }

    v56 = ((v35 + v55) * 0.5) * 57.296;
    v57 = -v56;
    if (v56 >= 0.0)
    {
      v57 = v56;
    }

    v58 = v57 > 0.00000011921;
    v59 = 180.0;
    if (v58)
    {
      v59 = v56;
    }

    v60 = (v80 * v80 * (v20 * v20) + v16 * v16 * (v79 * v79)) / ((v21 * v21) * (v21 * v21));
    v61 = sqrtf(v60) * 57.296;
    if (v61 >= v59)
    {
      v59 = v61;
    }

    v62 = fmaxf(v59, 1.0);
  }

  if (v27 >= 25.0)
  {
    *(a1 + 88) = 0;
    v72 = 90.0;
  }

  else
  {
    if (a4)
    {
      v81 = v16;
      v63 = 0;
      v64 = 0.0;
      v65 = 90.0;
      v66 = 0.0;
      do
      {
        v67 = atan2f(*&v85[v63], v21) * 57.296;
        if (v66 >= v67)
        {
          v68 = v67;
        }

        else
        {
          v68 = v66;
        }

        if (v67 >= v65)
        {
          v69 = v67;
        }

        else
        {
          v69 = v65;
        }

        if (v63 * 4)
        {
          v66 = v68;
        }

        else
        {
          v66 = v67;
        }

        if (v63 * 4)
        {
          v65 = v69;
        }

        else
        {
          v65 = v67;
        }

        v64 = v64 + v67;
        ++v63;
      }

      while (a4 != v63);
      v70 = v64 / a4;
      v71 = (v65 - v66) * 0.5;
      v16 = v81;
    }

    else
    {
      v70 = 0.0;
      v71 = 45.0;
    }

    *(a1 + 88) = v70;
    v72 = 90.0;
    if (v71 != 0.0)
    {
      v72 = v71;
    }
  }

  v73 = 0.000001;
  if (v16 >= 0.000001)
  {
    v74 = v16;
  }

  else
  {
    v74 = 0.000001;
  }

  if (v20 >= 0.000001)
  {
    v75 = v20;
  }

  else
  {
    v75 = 0.000001;
  }

  *(a1 + 48) = v74;
  *(a1 + 56) = v75;
  if (v27 >= 0.000001)
  {
    v73 = v27;
  }

  *(a1 + 64) = v73;
  v76 = 0.000001;
  if (v24 >= 0.000001)
  {
    v76 = v24;
  }

  *(a1 + 72) = v76;
  if (v62 >= 0.000057296)
  {
    v77 = v62;
  }

  else
  {
    v77 = 0.000057296;
  }

  *(a1 + 84) = v77;
  if (v72 < 0.000057296)
  {
    v72 = 0.000057296;
  }

  *(a1 + 92) = v72;
  v78 = *MEMORY[0x29EDCA608];
}

_DWORD *BlueFin::GlPeDEALS::CalcSpeedFromLs(_DWORD *this, const float *a2, float *a3, float *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  *a3 = 100.0;
  if (a2)
  {
    v4 = a2;
    v5 = this;
    v6 = a2 - 1;
    if (a2 == 1)
    {
      v7 = *this;
    }

    else
    {
      this = BlueFin::GlSortFloats(this, a2, v11, a4);
      if ((v4 & 1) == 0)
      {
        v9 = (*&v5[v11[v4 >> 1]] + *&v5[v11[(v4 >> 1) - 1]]) * 0.5;
      }

      *a3 = *&v5[v11[v6]] - *&v5[v11[0]];
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return this;
}

BOOL BlueFin::GlPeNavGnssMotion::IsNotTurning(BlueFin::GlPeNavGnssMotion *this, double a2)
{
  if (*(*this + 4200) == 1)
  {
    return 1;
  }

  if (*(this + 48) == 1 && (a2 = fabs(*(this + 4)), a2 < *(this + 7)))
  {
    return 1;
  }

  else
  {
    return BlueFin::GlPeNavGnssMotion::IsNotMoving(this, a2);
  }
}

void *BlueFin::GlPeNavGnssResidMon::UpdateRrate(BlueFin::GlPeNavGnssResidMon *this, const BlueFin::GlPeNavUtil *a2, const BlueFin::GlSignalIdSet *a3)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  v6 = (this + 64);
  *(this + 10) = 0;
  result = BlueFin::GlSetBase::Cnt(a3);
  if (result && (BlueFin::GlSetBase::GlSetBase(v24, v25, 0x13u, a3), v8 = a2 + *(*a2 - 24), v20 = *(v8 + 8), v21 = *(v8 + 3), v9 = *(v8 + 11), v10 = *(v8 + 19), result = BlueFin::GlPeNavUtil::ComputeRrateResidVec(a2), v23))
  {
    BlueFin::SKFVector::Quartiles(&v22, v6, v11, v12);
    v16 = v23;
    if (v23 >= 1)
    {
      v17 = (v22 + 8);
      do
      {
        *v17 = fabs(*v17);
        ++v17;
        --v16;
      }

      while (v16);
    }

    result = BlueFin::SKFVector::Median(&v22, v13, v14, v15);
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *(this + 4) + (v18 - *(this + 4)) * 0.9;
  if (v19 < 0.1)
  {
    v19 = 0.1;
  }

  *(this + 4) = v19;
  return result;
}

uint64_t BlueFin::SKFVector::Quartiles(uint64_t this, double *a2, uint64_t a3, unsigned __int8 *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *(this + 8);
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    if (v4 >= 0x65)
    {
      DeviceFaultNotify("glpe_matrix.cpp", 2015, "Quartiles", "iLen <= GL_CHANNELS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 2015, "iLen <= GL_CHANNELS");
    }

    v7 = *this + 8;
    this = BlueFin::GlSortDoubles(v7, *(this + 8), v13, a4);
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = v9 >> 2;
      v11 = *(v7 + 8 * v13[v10]);
      if ((v9 & 3) != 0)
      {
        v11 = (v11 + *(v7 + 8 * v13[v10 + 1])) * 0.5;
      }

      a2[v8++] = v11;
      v9 += v5;
    }

    while (v8 != 3);
  }

  v12 = *MEMORY[0x29EDCA608];
  return this;
}

unint64_t BlueFin::GlPeNavGnssKF::AddProcessNoise(BlueFin::GlPeNavGnssKF *this, uint64_t a2, int a3, const BlueFin::GlPeNavGnssState *a4, int a5, char a6, int a7, BOOL a8, BOOL a9)
{
  v12 = a4;
  v16 = this + 4096;
  v17 = &v149 + 8;
  v149 = xmmword_298A43F30;
  v147 = &v150;
  v148 = &v151;
  v151 = 0;
  for (i = 1; i != 13; ++i)
  {
    v148[i] = v17;
    v17 += 96;
  }

  if (*(this + 26) == 1 && a7 != 0)
  {
    v20 = 0.0;
    if (*(this + 8080) == 1)
    {
      v21 = *(this + 597);
      v22 = 0.0;
      if (*(v21 + 2985) == 1)
      {
        v22 = *(v21 + 2952) * 0.0174532925;
      }

      v20 = v22 * v22;
    }

    goto LABEL_14;
  }

  v20 = 0.0;
  if (*(this + 26))
  {
LABEL_14:
    v23 = __sincos_stret(*(this + *(*this - 24) + 176));
    *(this + 167) = *&v23.__cosval;
    *(this + 168) = *&v23.__sinval;
    *(this + 169) = 0;
    *(this + 171) = *&v23.__sinval;
    *(this + 172) = -v23.__cosval;
    *(this + 173) = 0;
    *(this + 1400) = 0u;
    *(this + 177) = 0xBFF0000000000000;
  }

  BlueFin::BigMatrix::Null(&v147, 12, 12);
  v24 = *(this + 331);
  v25 = v24 < 0.0;
  if (v24 >= 0.0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (*(this + *(*this - 24) + 242))
  {
    v25 = v26;
  }

  if (v12)
  {
    v25 |= 4u;
  }

  v146 = v25;
  if (BlueFin::GlPeNavGnssKF::LeftXtcRecently(this))
  {
    v27 = 8;
  }

  else
  {
    v27 = 0;
  }

  v146 = v146 & 0xFFFFFFF7 | v27;
  if (BlueFin::GlPeNavGnssKF::UsedXtcRecently(this))
  {
    v28 = 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = v146 & 0xFFFFFFCF | v28;
  v30 = v146 & 0xFFFFFF0F | v28 & 0xFFFFFF1F;
  v31 = v29 | 0x40;
  if (a5)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  v146 = v32 & 0xFFFFFF7F;
  if (BlueFin::GlPeNavGnssMotion::IsNotMoving((this + 4776), 100.0))
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = v32 & 0xFFFFF87F | v33;
  v35 = v32 & 0xFFFFC07F | v33 & 0xFFFFC7FF;
  v36 = v34 | 0x800;
  if (!a7)
  {
    v36 = v35;
  }

  v37 = v36 & 0xFFFFCFFF;
  if (*(this + 26))
  {
    v38 = 4096;
  }

  else
  {
    v38 = 0;
  }

  v146 = v37 | v38;
  v39 = *(this + 617);
  v40 = fabs(v39);
  v41 = *(this + 1333);
  if (v41 && *v41 == 1)
  {
    v42 = *(this + 618) - *(this + 616);
    v43 = *(v41 + 3);
    v44 = v39;
    v45 = fabsf(v44);
    v46 = v42;
    v41[2] = v45;
    v41[3] = v46;
    if ((v16[2124] & 1) == 0)
    {
      v47 = (*(*this + 264))(this);
      v41 = *(this + 1333);
      if (!v47)
      {
        v48 = v146;
        goto LABEL_56;
      }

      v45 = v41[2];
    }

    v48 = v146;
    if (v45 > 3.0)
    {
      v49 = *v41;
LABEL_46:
      *(v41 + 1) = 1;
      v50 = v16[2117];
      *(v41 + 2) = v50;
LABEL_47:
      v51 = *(v41 + 3) | v49 & 1;
      *(v41 + 3) = v51;
      v52 = 1;
      goto LABEL_61;
    }

    if (v45 > 1.0)
    {
      v49 = *v41;
      if (v41[3] > 3.0)
      {
        goto LABEL_46;
      }

      v53 = *(this + 1265);
      *(v41 + 1) = v53 > 3.0;
      v50 = v16[2117];
      *(v41 + 2) = v50;
      if (v53 > 3.0)
      {
        goto LABEL_47;
      }

      if (v49)
      {
        v54 = v50;
      }

      else
      {
        v54 = 0;
      }

      v51 = *(v41 + 3) | v54;
LABEL_60:
      *(v41 + 3) = v51;
      v52 = 0;
      if ((v43 & 1) == 0)
      {
        v56 = v48 & 0xFFFFBFFF;
LABEL_63:
        v146 = v56;
        GlCustomLog(12, "TCXO PN:%u,%.1f,%.1f,%.1f,en=%d,%d,%d,%d\n", *(this + *(*this - 24) + 200), v40, v42, *(this + 1265), v51, v49, v52, v50);
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xC);
        }

        goto LABEL_65;
      }

LABEL_61:
      v56 = v48 | 0x4000;
      goto LABEL_63;
    }

LABEL_56:
    *(v41 + 1) = 0;
    v50 = v16[2117];
    *(v41 + 2) = v50;
    v49 = *v41;
    if (*v41)
    {
      v55 = v50;
    }

    else
    {
      v55 = 0;
    }

    v51 = v55 | *(v41 + 3);
    goto LABEL_60;
  }

LABEL_65:
  v57 = this + *(*this - 24);
  v58 = (*(*this + 72))(this);
  v59 = *(this + 546);
  v60 = *(this + 1265);
  v136[0] = a2;
  v136[1] = v57;
  v136[2] = this + 32;
  v136[3] = this + 1336;
  v136[4] = &v146;
  v137 = v58;
  v138 = a3;
  v139 = 0;
  v140 = 0;
  v141 = v20;
  v142 = 0x3E45798EE2308C3ALL;
  v143 = v59;
  v144 = v40;
  v145 = v60;
  v134 = 0;
  v135 = 0uLL;
  v132 = 0uLL;
  v133 = 0;
  v130 = 0;
  v131 = 0uLL;
  v128 = 0uLL;
  v129 = 0;
  v61 = *(this + 189);
  v62 = *(this + 190);
  v63 = *(this + 191);
  if (*(this + 26) == 1)
  {
    v134 = *(this + 189);
    *&v135 = v62;
    *(&v135 + 1) = v63;
    v64 = *(this + 194);
    v132 = *(this + 96);
    v133 = v64;
  }

  else
  {
    v130 = *(this + 189);
    *&v131 = v62;
    *(&v131 + 1) = v63;
    v65 = *(this + 194);
    v128 = *(this + 96);
    v129 = v65;
  }

  BlueFin::GlPeProcessNoise::CalcQValues(this + 4568, v136, &v130, &v128, &v134, &v132);
  if (*(this + 26) == 1)
  {
    v66 = v135;
    v67 = &v132;
    v68 = &v134;
    v69 = v132.f64[1];
  }

  else
  {
    v66 = v131;
    v67 = &v128;
    v68 = &v130;
    v69 = v128.f64[1];
  }

  v70 = v67[1].f64[0];
  v71 = v67->f64[0];
  *(this + 189) = *v68;
  *(this + 95) = v66;
  *(this + 192) = v71;
  *(this + 193) = v69;
  *(this + 194) = v70;
  if ((*(*this + 72))(this) > 0xBB8)
  {
    v72 = 1;
  }

  else
  {
    v72 = a6;
  }

  v73 = *(this + 546);
  v74 = v73 * v73;
  v75 = v73 * (v73 * v73);
  v76 = *(this + 571);
  v77 = v148;
  if (*(this + 26) == 1)
  {
    if ((a6 & 1) == 0)
    {
      v78 = v75;
      *(v148[1] + 8) = *(v76 + 8) * v78;
      *(v77[3] + 24) = *(v76 + 16) * v78;
      *(v77[5] + 40) = *(v76 + 48) * v78;
    }

    v79 = v73;
    v80 = v77[2];
    v80[2] = *(v76 + 32) * v79;
    v81 = v77[4];
    *(v81 + 32) = *(v76 + 40) * v79;
    v82 = v77[6];
    v83 = v77[7];
    *(v82 + 48) = *(v76 + 64) * v79;
    *(v83 + 56) = *(v76 + 72);
    v84 = v77[8];
    *(v84 + 64) = *(v76 + 88);
    *(v84 + 56) = *(v76 + 80);
    if ((v72 & 1) == 0)
    {
      v80[1] = *(v76 + 96) * v74;
      *(v81 + 24) = *(v76 + 104) * v74;
      *(v77[1] + 24) = *(v76 + 112) * v74;
      *(v82 + 40) = *(v76 + 56) * v74;
      v80[4] = *(v76 + 128) * v74;
    }
  }

  else
  {
    if ((a6 & 1) == 0)
    {
      v85 = v75;
      *(v148[1] + 8) = *(v76 + 8) * v85;
      *(v77[3] + 24) = *(v76 + 16) * v85;
      *(v77[5] + 40) = *(v76 + 48) * v85;
    }

    v86 = v73;
    v87 = v77[2];
    *(v87 + 16) = *(v76 + 32) * v86;
    *(v77[4] + 32) = *(v76 + 40) * v86;
    v88 = v77[6];
    v89 = v77[7];
    *(v88 + 48) = *(v76 + 64) * v86;
    *(v89 + 56) = *(v76 + 72);
    v90 = v77[8];
    *(v90 + 64) = *(v76 + 88);
    *(v90 + 56) = *(v76 + 80);
    if ((v72 & 1) == 0)
    {
      *(v87 + 8) = *(v76 + 24) * v74;
      *(v88 + 40) = *(v76 + 56) * v74;
    }
  }

  v126 = v74;
  v91 = v77[12];
  *(v77[11] + 88) = 0x3E45798EE2308C3ALL;
  v93 = v77[9];
  v92 = v77[10];
  *(v93 + 72) = 0x3E45798EE2308C3ALL;
  *(v91 + 96) = 0x3E45798EE2308C3ALL;
  *(v92 + 80) = 0x3E45798EE2308C3ALL;
  v94 = *(a2 + 88);
  v95 = (this + *(*this - 24));
  v96 = v95[11];
  v127 = *(a2 + 152);
  v97 = v95[19];
  v98 = *(a2 + 24);
  v99 = v95[3];
  if (*(a2 + 96) * 3.0 >= 100.0)
  {
    v100 = *(a2 + 96) * 3.0;
  }

  else
  {
    v100 = 100.0;
  }

  if (*(a2 + 160) * 3.0 >= 10.0)
  {
    v101 = *(a2 + 160) * 3.0;
  }

  else
  {
    v101 = 10.0;
  }

  if (*(a2 + 84) * 3.0 >= 50.0)
  {
    v102 = *(a2 + 84) * 3.0;
  }

  else
  {
    v102 = 50.0;
  }

  v103 = (*(*this + 264))(this);
  if (v103)
  {
    v104 = v103;
    if ((*(*this + 72))(this) >= 0x3E9)
    {
      v106 = vabdd_f64(v94, v96);
      v105.n128_f64[0] = vabdd_f64(v127, v97);
      if (v106 > v100 || vabdd_f64(v98, v99) > v102 || v105.n128_f64[0] > v101 || !a5)
      {
        if (a5)
        {
          if (v106 > v100)
          {
            v119 = v94 - v96;
            if (v98 - v99 >= v94 - v96)
            {
              v119 = v98 - v99;
            }

            v120 = v119 * v119;
            if (*(*(*(this + 5) + 56) + 56) < v120)
            {
              *(v148[7] + 56) = v120 + *(v148[7] + 56);
            }
          }

          if (v105.n128_f64[0] <= v101)
          {
            goto LABEL_98;
          }

          v121 = (v127 - v97) * (v127 - v97);
          if (*(*(*(this + 5) + 64) + 64) >= v121)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v104 != 2)
          {
            if (v104 == 1 && *(*(*(this + 5) + 56) + 56) < 2.24688795e10)
            {
              v122 = v148[8];
              *(v148[7] + 56) = *(v148[7] + 56) + 2.24688795e10;
              *(v122 + 64) = *(v122 + 64) + 505.549788;
            }

            goto LABEL_98;
          }

          if (*(*(*(this + 5) + 64) + 64) >= fmin((*(*this + 72))(this, v105) * 505.549788 * 0.001, 3235518.64))
          {
            goto LABEL_98;
          }

          v121 = -(*(*(*(this + 5) + 64) + 64) - (*(*this + 72))(this) * 505.549788 * 0.001);
        }

        v123 = v148[7];
        v124 = v148[8];
        v125 = v121 + *(v124 + 64);
        *(v124 + 64) = v125;
        *(v123 + 56) = *(v123 + 56) + v125 / 3.0 * v126;
      }
    }
  }

LABEL_98:
  (*(*this + 392))(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  BlueFin::BigMatrix::operator+=(this + 32, &v147);
  v107 = *(this + 5);
  if (*(this + 26) == 1)
  {
    *(v107[7] + 64) = *(v107[8] + 56);
    v109 = v107[1];
    v108 = v107[2];
    *(v109 + 16) = *(v108 + 8);
    v111 = v107[3];
    v110 = v107[4];
    *(v111 + 32) = *(v110 + 24);
    *(v107[5] + 48) = *(v107[6] + 40);
    *(v111 + 8) = *(v109 + 24);
    *(v110 + 16) = *(v108 + 32);
  }

  else
  {
    v112 = fmin(sqrt(*(v107[4] + 32)), 1.57079633);
    v113 = v107[1];
    if (v112 > 0.174532925)
    {
      v114 = *(v113 + 8);
      v115 = sin(v112);
      v116 = v115 * v115 * v114;
      v117 = v107[3];
      if (v116 > *(v117 + 24))
      {
        *(v117 + 24) = v116;
      }
    }

    *(v107[7] + 64) = *(v107[8] + 56);
    *(v113 + 16) = *(v107[2] + 8);
    *(v107[5] + 48) = *(v107[6] + 40);
  }

  result = (*(*this + 392))(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssKF::LeftXtcRecently(BlueFin::GlPeNavGnssKF *this)
{
  if ((*(*this + 64))(this) >> 4 < 0x753)
  {
    return 0;
  }

  if (*(this + 571) == -7200001)
  {
    return 0;
  }

  if (*(*(this + 281) + 8) == 3)
  {
    return 0;
  }

  BlueFin::lla2ned((this + *(*this - 24) + 8), this + 286, 0, &v6);
  v2 = *(this + *(*this - 24) + 200) - *(this + 571);
  if (v2 < 0x9C5)
  {
    return 0;
  }

  v3 = v2 >> 3;
  return sqrt(v7 * v7 + v6 * v6) < 50.0 || v3 < 0xC35;
}

BOOL BlueFin::GlPeNavGnssKF::UsedXtcRecently(BlueFin::GlPeNavGnssKF *this)
{
  if ((*(*this + 64))(this) >> 4 < 0x753 || *(this + 571) == -7200001 || *(*(this + 281) + 8) == 3)
  {
    return 0;
  }

  BlueFin::lla2ned((this + *(*this - 24) + 8), this + 286, 0, &v4);
  return sqrt(v5 * v5 + v4 * v4) < 1000.0 || (*(this + *(*this - 24) + 200) - *(this + 571)) < 0x493E1;
}

BOOL BlueFin::GlPeNavGnssMotion::IsNotMoving(BlueFin::GlPeNavGnssMotion *this, double a2)
{
  result = (*(this + 84) & 1) == 0 && *(this + 48) == 1 && *(this + 20) >= *(this + 19);
  v4 = *this;
  v5 = *this + 4096;
  v6 = *(v4 + 4216);
  if ((v6 == 6 || v6 == 1) && *(v5 + 128) == 1 && (*(v5 + 130) & 1) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeProcessNoise::CalcQValues(uint64_t a1, uint64_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6)
{
  v13 = *(a1 + 192);
  v12 = *(a1 + 200);
  v14 = *(v12 + 8);
  v16 = v14 == 6 && *(a2 + 10) > 0x7D0u;
  if (*(v13 + 2) < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = vabdd_f64(*(v13 + 64), *(a2[1] + 176));
    if (v17 > 3.14159265)
    {
      v17 = 6.28318531 - v17;
    }

    v18 = v17 > 0.122173048;
    if ((v14 - 1) <= 1)
    {
      v19 = *(v13 + 45) == 0;
      goto LABEL_14;
    }
  }

  v19 = 0;
LABEL_14:
  v20 = *(v12 + 16);
  v21 = v14 - 3;
  v23 = v20 == 1 && v21 < 4;
  v24 = 0.5;
  v25 = 1.0;
  if (!v16 && !v18 && !v19 && !v23 && v14 != 6)
  {
    if (v21 <= 2 && (*(a2[4] + 1) & 0x10) != 0)
    {
      v24 = 1.5;
LABEL_32:
      v25 = 0.1;
      goto LABEL_33;
    }

    v26 = sqrt(*(a2[1] + 112) * *(a2[1] + 112) + *(a2[1] + 104) * *(a2[1] + 104));
    v24 = 0.5;
    if (v26 > 10.0)
    {
      v25 = 0.5;
      goto LABEL_33;
    }

    v25 = 0.25;
    if (v26 <= 3.0)
    {
      if (v26 < 0.278)
      {
        v25 = 0.01;
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  if (v25 >= v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  v28 = *a2;
  v29 = sqrt(*(*a2 + 112) * *(*a2 + 112) + *(*a2 + 104) * *(*a2 + 104));
  if (*(*a2 + 204) == 1)
  {
    v30 = (v29 - *(a1 + 152)) * 0.497 + *(a1 + 160) * 0.503;
    *(a1 + 152) = v29;
    *(a1 + 160) = v30;
  }

  else
  {
    v30 = *(a1 + 160);
  }

  v31 = fabs(v30);
  if (v31 < v25 || (v25 = v27, v31 > v27))
  {
    if (v30 <= 0.0)
    {
      v25 = -v25;
    }

    *(a1 + 160) = v25;
  }

  v32 = *a2[4];
  v33 = 100.0;
  if ((v32 & 0x100) != 0)
  {
    v33 = 25.0;
  }

  if (v29 < 1.0)
  {
    v33 = 25.0;
  }

  if ((v32 & 0x1000) != 0)
  {
    v34 = a6;
  }

  else
  {
    v34 = a4;
  }

  *v34 = vaddq_f64(*v34, vdupq_lane_s64(*&v33, 0));
  v34[1].f64[0] = v33 + v34[1].f64[0];
  if (*(v28 + 248) >= *(v28 + 80))
  {
    v35 = *(v28 + 248);
  }

  else
  {
    v35 = *(v28 + 80);
  }

  if (*(v28 + 252) >= *(v28 + 84))
  {
    v36 = *(v28 + 252);
  }

  else
  {
    v36 = *(v28 + 84);
  }

  BlueFin::lla2ned((v28 + 8), (a2[1] + 8), 0, v174.f64);
  v172 = v174;
  v176 = v174;
  v37 = v175;
  *&v177 = v175;
  BlueFin::ned2hlu(&v176, a2[3], &v174);
  v38 = *a2[4];
  if (v35 >= 400.0)
  {
    if ((v38 & 0x1000) != 0)
    {
      f64 = a6->f64;
    }

    else
    {
      f64 = a4->f64;
    }

    *f64 = 0;
    f64[1] = 0;
  }

  v40 = *(a1 + 200);
  v41 = *(v40 + 16);
  v42 = 50.0;
  if (v35 >= 50.0)
  {
    v43 = v35;
  }

  else
  {
    v43 = 50.0;
  }

  if (v36 >= 50.0)
  {
    v42 = v36;
  }

  if (v41 == 1)
  {
    v43 = v35;
    v42 = v36;
  }

  if ((v38 & 0x1001) == 1)
  {
    v174 = vnegq_f64(v174);
  }

  v44 = vdupq_lane_s64(COERCE__INT64((v43 * v43)), 0);
  if ((v38 & 0x1000) != 0)
  {
    v48 = vdivq_f64(*a6, vaddq_f64(*a6, v44));
    *a5 = vmlaq_f64(*a5, vsubq_f64(v172, *a5), v48);
    *a6 = vmlsq_f64(*a6, *a6, v48);
    v49 = a6[1].f64[0];
    v47 = a6[1].f64;
    v46 = v49 / (v49 + (v42 * v42));
  }

  else
  {
    v45 = vdivq_f64(*a4, vaddq_f64(*a4, v44));
    *a3 = vmlaq_f64(*a3, vsubq_f64(v174, *a3), v45);
    *a4 = vmlsq_f64(*a4, *a4, v45);
    v46 = a4[1].f64[0] / (a4[1].f64[0] + (v42 * v42));
    v37 = v175;
    a5 = a3;
    v47 = a4[1].f64;
  }

  a5[1].f64[0] = a5[1].f64[0] + v46 * (v37 - a5[1].f64[0]);
  *v47 = *v47 - v46 * *v47;
  v50 = *a2;
  v51 = a2[1];
  v52 = *(v51 + 176);
    ;
  }

    ;
  }

  if (i < 0.0)
  {
    i = -i;
  }

  v54 = *(a1 + 184) + 0.030462;
  v55 = i;
  v56 = v54 / (v54 + ((*(v50 + 184) * *(v50 + 184)) + (*(v51 + 184) * *(v51 + 184))));
  v57 = *(a1 + 180) + (v56 * (v55 - *(a1 + 180)));
  *(a1 + 180) = v57;
  *(a1 + 184) = v54 * (1.0 - v56);
  v58 = sqrt(*(v51 + 112) * *(v51 + 112) + *(v51 + 104) * *(v51 + 104));
  v59 = *(v50 + 128);
  v60 = v58;
  if (v59 <= 300.0)
  {
    v60 = sqrt(*(v50 + 112) * *(v50 + 112) + *(v50 + 104) * *(v50 + 104));
  }

  v61 = *(v40 + 8);
  if (v61 > 6)
  {
    v64 = 0.69813;
  }

  else
  {
    v62 = v60;
    if (((1 << v61) & 0x79) == 0)
    {
      v66 = 0.0;
      v68 = 0.0;
      if (v62 >= 0.25)
      {
        if (v62 >= 1.0)
        {
          v68 = 0.69813;
        }

        else
        {
          v68 = (fmin(fmax(v62, 0.25), 1.0) + -0.25) * 0.69813168 / 0.75 + 0.0;
        }
      }

      v64 = 0.2618;
      if (sqrt(*(v50 + 112) * *(v50 + 112) + *(v50 + 104) * *(v50 + 104)) <= 1.5)
      {
        v64 = v68;
      }

      v65 = *(a1 + 192);
      if (*(v65 + 1))
      {
        v66 = v64;
      }

      goto LABEL_99;
    }

    v63 = v62 / 5.0;
    v64 = 4.9033 / v62;
    if (v63 < v64)
    {
      v64 = v63;
    }
  }

  v65 = *(a1 + 192);
  v66 = 0.0;
  if (*(v65 + 1))
  {
    v66 = v64;
  }

  if (v61 - 1 >= 2)
  {
    v67 = a2[4];
    goto LABEL_102;
  }

LABEL_99:
  v67 = a2[4];
  if ((v41 & 0xFFFFFFFE) == 2 && (*v67 & 0x20) != 0)
  {
    v66 = 0.69813;
  }

LABEL_102:
  if (v66 >= v57)
  {
    v57 = v66;
  }

  if (v57 >= v64)
  {
    v69 = v64;
  }

  else
  {
    v69 = v57;
  }

  v70 = *(a1 + 160);
  v71 = *(a2 + 10);
  v72 = v61 - 3;
  if (v61 - 3 > 0xFFFFFFFD)
  {
    if ((v41 & 0xFFFFFFFE) == 2 && (*v67 & 0x10) != 0)
    {
      v70 = v70 * 0.25;
    }

    v76 = v41 != 1;
    v77 = v41 == 1 && (*v67 & 8) == 0;
  }

  else
  {
    if (v72 > 2 || v71 < 0x3E9)
    {
      if (v61 == 6)
      {
        v78 = 1.0;
        v79 = 0.0;
        if (v70 < 0.0)
        {
          v79 = -1.0;
        }

        if (v70 <= 0.0)
        {
          v78 = v79;
        }

        v80 = 10.0;
        if (v70 <= 10.0)
        {
          v80 = *(a1 + 160);
        }

        v81 = v80 * v78;
        if (v71 >= 0x3E9)
        {
          v70 = v81;
        }
      }
    }

    else
    {
      v73 = 1.0;
      v74 = 0.0;
      if (v70 < 0.0)
      {
        v74 = -1.0;
      }

      if (v70 <= 0.0)
      {
        v73 = v74;
      }

      if (v70 > 5.0)
      {
        v70 = 5.0;
      }

      v70 = v70 * v73;
    }

    v77 = 0;
    v76 = v41 != 1;
  }

  v82 = *(v65 + 2);
  if (*(v65 + 2) || v71 > 0x7D0 || v77)
  {
    v83 = v61 == 6 && *(v65 + 12) <= v71;
    v84 = 1.0;
    if (*(v65 + 2))
    {
      goto LABEL_153;
    }
  }

  else
  {
    v83 = 0;
    if (v41 == 7)
    {
      v84 = 1.0;
    }

    else
    {
      v84 = 0.25;
    }
  }

  v86 = v61 != 6 || v76;
  if ((v86 & 1) == 0)
  {
    v69 = fmaxf(v69, 0.087266);
    v84 = 1.0;
  }

LABEL_153:
  v87 = *v67;
  v88 = v70 * 0.5 * (v70 * 0.5);
  v89 = v70 * v70;
  if ((v87 & 0x80) != 0)
  {
    v90 = 0.04;
  }

  else
  {
    v90 = 1.0;
  }

  if ((v87 & 0x1800) == 0x800 && v82 >= 1 && (v87 & 0x600) == 0x600)
  {
    *&v91.f64[1] = a2[7];
    v91.f64[0] = v69;
    v92 = vmulq_f64(*(a2 + 3), v91);
    *&v88 = *&vaddq_f64(vmulq_f64(v92, v92), vdupq_laneq_s64(v92, 1));
  }

  if (v72 > 2)
  {
    v97 = 1.0;
    v95 = 1.0;
    v94 = 1.0;
    if (v61 == 6)
    {
      v97 = 10.0;
      v94 = 1.2;
      v95 = 10.0;
    }
  }

  else
  {
    v93 = 5.0;
    v94 = 1.0;
    if ((v87 & 0x1000) != 0)
    {
      v95 = 5.0;
    }

    else
    {
      v95 = 1.0;
    }

    v96 = 1.2;
    if ((v87 & 0x1000) != 0)
    {
      v94 = 1.2;
    }

    v97 = 0.5;
    if (v58 >= 0.277)
    {
      v97 = 3.0;
      if ((v87 & 0x1000) == 0)
      {
        if ((v87 & 0x200) == 0)
        {
          v96 = 1.0;
          goto LABEL_192;
        }

        v84 = v84 * 0.25;
        v94 = 1.0;
        v97 = 2.0;
        LODWORD(v98) = 1;
        goto LABEL_174;
      }

      goto LABEL_184;
    }
  }

  if ((v87 & 0x1000) == 0)
  {
    v98 = (v87 >> 9) & 1;
LABEL_174:
    v99 = 0.5;
    if ((v87 & 0x400) == 0)
    {
      v99 = v97;
    }

    v100 = 0.25;
    if ((v87 & 0x400) == 0)
    {
      v100 = v94;
    }

    if (!v98)
    {
      v99 = v97;
      v100 = v94;
    }

    if (v82 < 1)
    {
      v96 = v94;
    }

    else
    {
      v97 = v99;
      v96 = v100;
    }

    goto LABEL_192;
  }

  v96 = v94;
  v93 = v95;
LABEL_184:
  if (*(v50 + 240) == 1 && (v87 & 0x200) == 0 && (*(v65 + 1) & 1) == 0)
  {
    v168 = sqrt(*(v50 + 112) * *(v50 + 112) + *(v50 + 104) * *(v50 + 104));
    v170 = v90;
    v171 = v52;
    v173 = v69;
    v169 = v88;
    v101 = sin(fmin(v69, 0.17453292));
    v88 = v169;
    v90 = v170;
    v52 = v171;
    v69 = v173;
    v102 = v101 * v168 * (v101 * v168);
    if (v102 < v96)
    {
      v102 = v96;
    }

    if (v102 >= v93)
    {
      v96 = v93;
    }

    else
    {
      v96 = v102;
    }
  }

LABEL_192:
  v103 = v89 * 0.5 * 1.0;
  v104 = 10.5;
  if ((v87 & 4) == 0)
  {
    v104 = v97;
  }

  if (v104 >= v88)
  {
    v105 = v104;
  }

  else
  {
    v105 = v88;
  }

  if ((v87 & 4) != 0)
  {
    if (v59 > 100000.0 || v59 > 500.0)
    {
      v103 = v105 * 0.5;
      v106 = v105;
      if ((v87 & 0x1000) != 0)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v106 = v89 * 100.0;
      if ((v87 & 0x1000) != 0)
      {
        goto LABEL_210;
      }
    }
  }

  else
  {
    v106 = v89;
    if ((v87 & 0x1000) != 0)
    {
      goto LABEL_210;
    }
  }

  if ((~v87 & 0x600) == 0 && v82 > 0)
  {
    v103 = v103 * 0.5;
  }

LABEL_210:
  if (v72 >= 0xFFFFFFFE && (v41 & 0xFFFFFFFE) == 2 && (v87 & 0x20) != 0)
  {
    v106 = v105;
  }

  v108 = v89 * v90;
  if ((v87 & 0x1000) != 0)
  {
    if (v96 >= v106)
    {
      v119 = v96;
    }

    else
    {
      v119 = v106;
    }

    v120 = 0.0;
    if ((v87 & 2) != 0)
    {
      v120 = v52;
      v121 = v84;
    }

    else
    {
      v121 = 1.0;
    }

    v124 = __sincos_stret(v120);
    cosval = v124.__cosval;
    sinval = v124.__sinval;
    v111 = *a1;
    v111[1] = v124.__sinval * v124.__sinval * (v121 * v105) + v105 * (v124.__cosval * v124.__cosval);
    v111[2] = v124.__cosval * v124.__cosval * (v121 * v105) + v105 * (v124.__sinval * v124.__sinval);
    v111[14] = v124.__cosval * (v124.__sinval * (v105 - v121 * v105));
    v111[12] = 0.0;
    v111[13] = 0.0;
    v125 = *(*(a1 + 200) + 8) - 1;
    v126 = (sinval * sinval * (v121 * v119) + v119 * (cosval * cosval)) * 0.5;
    v127 = (cosval * cosval * (v121 * v119) + v119 * (sinval * sinval)) * 0.5;
    if (v125 <= 1)
    {
      v128 = v126;
    }

    else
    {
      v128 = v119 * 0.5;
    }

    if (v125 > 1)
    {
      v127 = v119 * 0.5;
    }

    v111[4] = v128;
    v111[5] = v127;
    v111[16] = 0.0;
    v118 = *a2[4];
  }

  else
  {
    if (*(v40 + 1764))
    {
      v109 = 60;
    }

    else
    {
      v109 = 180;
    }

    if (*(v40 + 1328) > 4.0 && *(v40 + 1320) < 20.0 && *(v40 + 76) >= v109 && ((*(v40 + 1764) & 1) != 0 || *(v40 + 64) == 1) && *(v40 + 1988))
    {
      v96 = v106;
    }

    if (v96 >= v106)
    {
      v106 = v96;
    }

    v110 = (v87 >> 9) & 1;
    if (v82)
    {
      LOBYTE(v110) = 0;
    }

    if (v72 >= 3)
    {
      LOBYTE(v110) = 0;
    }

    if ((v110 & (v106 < v108)) != 0)
    {
      v108 = v106;
    }

    v111 = *a1;
    v112 = v84 * v105;
    v111[1] = v105;
    v111[2] = v84 * v105;
    v111[3] = v103;
    v111[4] = v106;
    v111[5] = (v69 * v69);
    if (v83)
    {
      v112 = v112 + v106;
      v111[2] = v112;
    }

    if (v82)
    {
      v113 = v106;
      v114 = sqrtf(v113);
      v115 = fmin(sqrtf(v69 * v69) * 3.0, 1.57079633);
      v116 = sinf(v115);
      v117 = (v116 * v114) * (v116 * v114);
      if (v117 < v112)
      {
        v117 = v112;
      }

      v111[2] = v117;
    }

    LOWORD(v118) = v87;
  }

  v129 = v108 / 3.0;
  v130 = 0.01;
  if ((v87 & 0x80) == 0)
  {
    v130 = 0.25;
  }

  v131 = v130 * v105;
  if (v131 >= v129)
  {
    v129 = v131;
  }

  v111[6] = v129;
  v111[7] = v108 * 0.5;
  v111[8] = v108;
  v132 = *(a2 + 20);
  if ((v118 & 0x4000) != 0)
  {
    *(a1 + 188) = *(a2 + 11);
    v136 = *(a2 + 11);
    if (v136 >= 2.9979248)
    {
      v137 = v136 * v136;
    }

    else
    {
      v137 = *(a2 + 12) * 9.0;
    }

    v135 = v137 * 0.0900000036;
    v134 = 80.8879782;
  }

  else
  {
    v133 = *(a1 + 188);
    v134 = 8.98755313;
    v135 = 0.0900000036;
    if (v133)
    {
      if ((*(a2 + 11) - v133) > 0x7530)
      {
        *(a1 + 188) = 0;
      }

      else
      {
        v135 = *(a2 + 12) * 3.0 * 0.0900000036;
      }
    }
  }

  v138 = v132;
  v139 = v135 * v132;
  v140 = *a1;
  v141 = v132 * v132;
  if (v139 >= v134)
  {
    v142 = v134;
  }

  else
  {
    v142 = v139;
  }

  v143 = v138 + v142 / 3.0 * v141;
  v140[10] = v142 * 0.5 * v138;
  v140[11] = v142;
  v140[9] = v143;
  if ((v118 & 0x400) != 0)
  {
    if ((v118 & 0x2000) != 0)
    {
      v144 = *(a2 + 7);
      if (v144 < 0.5)
      {
        v144 = 0.5;
      }

      v145 = v144 * v138;
      v140[1] = v145;
      v140[2] = v145 * 0.25;
      v146 = *(a2 + 8);
      if (v146 < 0.00030461742)
      {
        v146 = 0.00030461742;
      }

      v140[5] = v146 * v138;
    }

    v140[4] = *(a2 + 7) * v138;
    v140[3] = 0.0;
  }

  v147 = v140[1];
  v148 = v140[8];
  if ((v118 & 2) != 0)
  {
    v150 = v140[2];
    v151 = *(v140 + 4);
  }

  else
  {
    v149 = fmax(v140[4], 0.01);
    if (v148 < 0.01)
    {
      *(v140 + 3) = xmmword_298A445C0;
      v148 = 0.01;
    }

    v150 = fmax(v147, 0.01);
    v140[3] = 0.0;
    v151 = vdupq_lane_s64(*&v149, 0);
    v147 = v150;
  }

  v140[1] = fmax(v147, 1.0e-12);
  v140[2] = fmax(v150, 1.0e-12);
  *(v140 + 2) = vmaxnmq_f64(v151, vdupq_n_s64(0x3D719799812DEA11uLL));
  v140[6] = fmax(v140[6], 1.0e-12);
  v140[8] = fmax(v148, 1.0e-12);
  v140[9] = fmax(v143, 1.0e-12);
  v140[11] = fmax(v142, 1.0e-12);
  v152 = &v177 + 8;
  v177 = xmmword_298A43F30;
  *&v176.f64[0] = &v178;
  *&v176.f64[1] = &v179;
  v179 = 0;
  for (j = 8; j != 104; j += 8)
  {
    *(*&v176.f64[1] + j) = v152;
    v152 += 96;
  }

  BlueFin::BigMatrix::Null(&v176, 12, 12);
  v154 = *a1;
  v155 = v176.f64[1];
  v156 = *(*&v176.f64[1] + 8);
  *(v156 + 8) = *(*a1 + 8);
  v157 = *(*&v155 + 16);
  *(v157 + 16) = v154[4];
  *(*(*&v155 + 24) + 24) = v154[2];
  *(*(*&v155 + 32) + 32) = v154[5];
  v158 = *(*&v155 + 40);
  *(v158 + 40) = v154[6];
  v159 = *(*&v155 + 48);
  *(v159 + 48) = v154[8];
  v160 = *(*&v155 + 56);
  *(v160 + 56) = v154[9];
  v161 = *(*&v155 + 64);
  *(v161 + 64) = v154[11];
  v162 = *(v154 + 3);
  *(v156 + 16) = v162;
  *(v157 + 8) = v162;
  v163 = *(v154 + 10);
  *(v160 + 64) = v163;
  *(v161 + 56) = v163;
  v164 = *(v154 + 7);
  *(v158 + 48) = v164;
  *(v159 + 40) = v164;
  v165 = a2[9];
  for (k = 72; k != 104; k += 8)
  {
    *(*(*&v155 + k) + k) = v165;
  }

  result = BlueFin::CheckCovMat(&v176);
  if ((result & 1) == 0)
  {
    DeviceFaultNotify("glpe_processnoise.cpp", 647, "CheckQ", "CheckCovMat(otQM)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_processnoise.cpp", 647, "CheckCovMat(otQM)");
  }

  return result;
}

double BlueFin::ned2hlu@<D0>(__int128 *a1@<X0>, const BlueFin::Matrix *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *a1;
  v4 = *(a1 + 2);
  v14 = 0x300000001;
  v13 = v4;
  BlueFin::Matrix::mult(v10, a2, 1, &v12, COERCE_DOUBLE(0x300000001));
  v5 = v11 == 1;
  v6 = 4;
  if (v11 == 1)
  {
    v6 = 1;
  }

  v7 = v10[v6];
  *a3 = v10[0];
  *(a3 + 8) = v7;
  v8 = 8;
  if (v5)
  {
    v8 = 2;
  }

  result = *&v10[v8];
  *(a3 + 16) = result;
  return result;
}

uint64_t BlueFin::BigMatrix::operator+=(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 20);
  if (v3 != *(a2 + 16) || v2 != *(a2 + 20))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1416, "operator+=", "ucLeftNumRows == ucRightNumRows && ucLeftNumCols == ucRightNumCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1416, "ucLeftNumRows == ucRightNumRows && ucLeftNumCols == ucRightNumCols");
  }

  if (v3 >= 1)
  {
    v5 = *(a2 + 8);
    v6 = v3 + 1;
    v7 = 1;
    do
    {
      if (v2 >= 1)
      {
        v8 = (*(*(result + 8) + 8 * v7) + 8);
        v9 = (*(v5 + 8 * v7) + 8);
        v10 = (v2 + 1) - 1;
        do
        {
          v11 = *v9++;
          *v8 = v11 + *v8;
          ++v8;
          --v10;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t BlueFin::GlPeUrbanPosAsst::findRegion(uint64_t a1, float64x2_t *a2, int a3, _BYTE *a4, _BYTE *a5, uint64_t a6, char a7, uint64_t a8, double a9, unsigned __int8 a10)
{
  *a4 = 0;
  v19 = *(a1 + 8);
  v20 = -((*(v19 + 4) * 0.00000011921) * 90.0);
  if ((*v19 & 1) == 0)
  {
    v20 = (*(v19 + 4) * 0.00000011921) * 90.0;
  }

  v21 = (*(v19 + 8) * 0.000000059605) * 360.0;
  if (v21 > 180.0)
  {
    v21 = 360.0 - v21;
  }

  v22 = v20;
  v23 = v21;
  *(a8 + 264) = v22;
  *(a8 + 272) = v23;
  v37 = vcvt_f32_f64(*a2);
  v44 = vcvtq_f64_f32(v37);
  v45 = 0;
  v41 = v22;
  v42 = v23;
  v43 = 0;
  BlueFin::lla2ned(v44.f64, &v41, 0, &v38);
  if (sqrt(v39 * v39 + v38 * v38) >= 30000.0 || ((*(a1 + 24) >> a7) & 1) == 0 || (v24 = *(a1 + 16), *(a8 + 256) = *a1, !v24))
  {
LABEL_32:
    *(a8 + 256) = 0;
    return 0xFFFFFFFFLL;
  }

  v25 = 0;
  v26 = 0;
  v27 = 8 * v24;
  while (1)
  {
    v28 = *(a8 + 264);
    v29 = *(a8 + 272);
    BlueFin::GlPeUrbanPosAsstRegion::unpackRegion((*(a8 + 256) + v26), &v41, v28, v29);
    if ((*a6 & 1) != 0 || (v43 & 0x10000000000) != 0)
    {
      break;
    }

    v30 = *(a6 + 4);
    if (v30 < 2)
    {
      goto LABEL_20;
    }

    if (v30 == 2)
    {
      if ((v43 & 0x1000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else if (v30 == 3 && (v43 & 0x1000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v26 += 8;
    v25 = (v25 + 1);
    if (v27 == v26)
    {
      goto LABEL_32;
    }
  }

  if (*a6)
  {
    v31 = BYTE5(v43) == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    goto LABEL_31;
  }

LABEL_20:
  v32 = *&v42 * 0.0000175;
  v33 = *&v43 * 0.0000175;
  if (((*(&v41 + 1) - (*&v43 * 0.0000175)) - (*&v42 * 0.0000175)) > v37.f32[1])
  {
    goto LABEL_31;
  }

  v34 = (v32 + (*(&v41 + 1) + v33)) < v37.f32[1] || ((*&v41 - v33) - v32) > v37.f32[0];
  if (v34 || (v32 + (v33 + *&v41)) < v37.f32[0])
  {
    goto LABEL_31;
  }

  *a4 = 1;
  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(&v38, &v41);
  BlueFin::lla2ned(a2->f64, &v40, 0, v44.f64);
  if ((BlueFin::UrbanPosAsstRegionExt::isNedPosInside(&v38, v44.f64, a3, a5, a10, a9) & 1) == 0)
  {
    goto LABEL_31;
  }

  *(a8 + 4) = 0;
  return v25;
}

void BlueFin::GlPeGnssNavUpa::UrbanPosAssist(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = a3 + 8;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (*(*(a1 + 312) + 21) != 1)
  {
    return;
  }

  v6 = *(a2 + 32);
  if (v6 & 4) == 0 || (v6 & 2) == 0 && (*(*(a1 + 328) + 1988))
  {
    return;
  }

  v8 = *(a1 + 320);
  if (*(v8 + 3216) != 1)
  {
    v17 = 0;
    XtrackPos = 0;
    v14 = 0uLL;
    v15 = 0.0;
    v16 = 0.0;
    goto LABEL_16;
  }

  v9 = *(v8 + 3176);
  v10 = *(v8 + 3184);
  v11 = *(v8 + 3192);
  *&v41 = v9;
  *(&v41 + 1) = v10;
  v42 = v11;
  v12 = *(v8 + 3204);
  if (v12 < 35.0)
  {
    v12 = 35.0;
  }

  if (*(*(a1 + 328) + 8) == 3)
  {
    v12 = 5.0;
  }

  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(v37, v9, v10, v11, *(v8 + 3196), *(v8 + 3200), v12, *(v8 + 3208));
  isOkToUse = BlueFin::UrbanPosAsstRegionExt::isOkToUse(v37, (a2 + 8), (v6 >> 3) & 1, &v36, 0, *a2);
  v14 = 0uLL;
  v15 = 0.0;
  v16 = 0.0;
  if (!isOkToUse)
  {
    goto LABEL_14;
  }

  if (*(a2 + 36) & 1) != 0 || (v40)
  {
    v17 = 0;
    if (!*(a2 + 36) || !v40)
    {
      XtrackPos = 0;
      goto LABEL_16;
    }
  }

  else if (*(a2 + 40) >= 2u)
  {
LABEL_14:
    v17 = 0;
    XtrackPos = 0;
    goto LABEL_16;
  }

  XtrackPos = BlueFin::UrbanPosAsstRegionExt::getXtrackPos(v37, (a2 + 8), &v41);
  v27 = v38;
  if ((*(a2 + 32) & 8) != 0 && (v39 & 1) == 0)
  {
    v28 = *a2;
    v27 = BlueFin::GlPeGnssNavUpa::UnravelHeadingRad(a1, v28, v38);
  }

    ;
  }

    ;
  }

  if (i < 0.0)
  {
    i = -i;
  }

  if (i >= 1.04719755)
  {
    v17 = 0;
    XtrackPos = 0;
    v14 = 0uLL;
  }

  else
  {
    v14 = v41;
    v17 = 1;
    v16 = v42;
    v15 = v27;
  }

LABEL_16:
  *a3 = XtrackPos;
  *(a3 + 8) = v14;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  *(a3 + 36) = v15;
  *(a3 + 40) = 0;
  if (XtrackPos)
  {
    return;
  }

  v19 = *(a1 + 312);
  if (*(v19 + 20))
  {
    return;
  }

  v20 = *(a2 + 36);
  LOBYTE(v41) = 0;
  v36 = 0;
  v21 = *(a2 + 32);
  v22 = (a1 + 32);
  v23 = *(*(a1 + 328) + 8);
  v24 = v23 - 1;
  if (v23 == 6)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if ((*(a1 + 32) & 0x80000000) != 0)
  {
    goto LABEL_46;
  }

  if (v20 & 1) != 0 || (*(a1 + 49))
  {
    if ((v20 & 1) != 0 && *(a1 + 49))
    {
      goto LABEL_44;
    }

LABEL_46:
    Region = BlueFin::GlPeUrbanPosAsst::findRegion(v19, (a2 + 8), (*(a2 + 32) >> 3) & 1, &v36, &v41, a2 + 36, v26, a1 + 32, *a2, (*(a2 + 32) & 0x40) != 0);
    v31 = 0;
    *v22 = Region;
    if (Region < 0)
    {
      goto LABEL_61;
    }

LABEL_52:
    if ((v21 & 0x100) != 0)
    {
      *a3 = v41;
      return;
    }

    if ((v31 & 1) == 0)
    {
      v32 = BlueFin::GlPeUrbanPosAsstCache::getRegion(*(a1 + 288), Region);
      v33 = *(a1 + 296);
      v34 = *(a1 + 304);
      BlueFin::GlPeUrbanPosAsstRegion::unpackRegion(v32, v37, v33, v34);
      BlueFin::UrbanPosAsstRegionExt::operator=(a1 + 40, v37);
      if ((*(a1 + 32) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }
    }

    v35 = *(a1 + 49);
    if (v20)
    {
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(a1 + 49))
    {
      goto LABEL_61;
    }

    XtrackPos = BlueFin::UrbanPosAsstRegionExt::getXtrackPos(a1 + 40, (a2 + 8), v4);
    *a3 = XtrackPos;
    *(a3 + 36) = *(a1 + 44);
    *(a3 + 40) = *(a1 + 48);
    goto LABEL_61;
  }

  if (*(a2 + 40) >= 2u)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (BlueFin::UrbanPosAsstRegionExt::isPosInside(a1 + 40, (a2 + 8), (*(a2 + 32) >> 3) & 1, &v41, (*(a2 + 32) >> 6) & 1, *a2))
  {
    Region = *v22;
    v31 = 1;
  }

  else
  {
    Region = BlueFin::GlPeUrbanPosAsst::findRegion(*(a1 + 312), (a2 + 8), (*(a2 + 32) >> 3) & 1, &v36, &v41, a2 + 36, v26, a1 + 32, *a2, (v21 & 0x40) != 0);
    v31 = 0;
    *(a1 + 32) = Region;
  }

  if ((Region & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_61:
  if (XtrackPos && (*(a2 + 32) & 1) == 0 && *(a1 + 50) == 1)
  {
    LOBYTE(XtrackPos) = 0;
    *a3 = 0;
  }

  *(a3 + 32) = XtrackPos;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<21,21>::BigMatrixDim(BlueFin::BigMatrix *this, int a2, int a3)
{
  v4 = this + 24;
  *(this + 1) = xmmword_298A43FA0;
  *this = this + 32;
  *(this + 1) = this + 3560;
  *(this + 445) = 0;
  for (i = 8; i != 176; i += 8)
  {
    *(*(this + 1) + i) = v4;
    v4 += 168;
  }

  BlueFin::BigMatrix::Clone(this, a2, a3);
  return this;
}

void BlueFin::GlPePolaroid::GetPInLOS(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 56) == 1)
  {
    v5 = *(a2 + 8);
  }

  else if (a3)
  {
    v5 = *(a2 + 8);
    v6 = *(v5 + 8);
    v7 = v6[2];
    v8 = v6[4];
    v9 = v6[6];
    v10 = __sincosf_stret(*(a1 + 104));
    v6[2] = v8 * v10.__sinval + v7 * v10.__cosval;
    v6[4] = (v8 * v10.__cosval - v7 * v10.__sinval) * *(a1 + 108);
    v6[6] = -v9;
  }

  else
  {
    v11 = *(*(a2 + 8) + 8);
    v12 = v11[3];
    v13 = v11[5];
    v28[0] = v11[1];
    v28[1] = v12;
    *&v28[16] = 0x300000001;
    v28[2] = v13;
    BlueFin::Matrix::mult(v26, *(a1 + 72), 1, v28, v28[0]);
    v14 = v27;
    v5 = *(a2 + 8);
    v15 = *(v5 + 8);
    v15[1] = v26[0];
    v16 = v14 == 1;
    v17 = 4;
    if (v16)
    {
      v17 = 1;
    }

    v15[3] = v26[v17];
    v18 = 8;
    if (v16)
    {
      v18 = 2;
    }

    v15[5] = v26[v18];
  }

  v19 = *(v5 + 8);
  v20 = 0.0;
  for (i = 1; i != 13; ++i)
  {
    v22 = *(v19 + 8 * i);
    if (v22 != 0.0)
    {
      v23 = 0.0;
      for (j = 8; j != 104; j += 16)
      {
        v25 = vmulq_f64(*(*(*(*(a1 + 80) + 8) + 8 * i) + j), *(v19 + j));
        v23 = v23 + v25.f64[0] + v25.f64[1];
      }

      v20 = v20 + v23 * v22;
    }
  }
}

uint64_t BlueFin::GlPePolaroid::PolaroidInnovPR(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, unsigned int a6, int a7, char a8, double a9, double a10)
{
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  LOBYTE(v71) = *a2;
  v20 = (a2 + 4);
  v72 = *(a2 + 4);
  v73 = *(a2 + 8);
  Metrics = BlueFin::GlPePolaroid::GetMetrics(a1, &v74, &v71, 0);
  result = 0;
  if (!Metrics)
  {
    return result;
  }

  v23 = *(a1 + 48);
  if (*(v23 + 732))
  {
    v24 = 712;
  }

  else
  {
    v25 = 0.0;
    if (*(a1 + 96) > 0xFu)
    {
      goto LABEL_7;
    }

    v24 = 48;
  }

  v25 = *(v23 + v24);
LABEL_7:
  v26 = v74 - v25;
  *a5 = v74 - v25;
  if (a7 == 2)
  {
    v32 = *(a1 + 125);
    if (v32 < 0xB)
    {
      v33 = (v32 - 2);
      if (v33 < 1.0)
      {
        v33 = 1.0;
      }

      v31 = v33 / 7.0;
      v30 = 2.0;
      goto LABEL_17;
    }

    v69 = "m_scKfStateConfLowCnt >= 0 && m_scKfStateConfLowCnt <= Design::KF_CONF_CNT_MAX_THRESH";
    DeviceFaultNotify("glpe_polaroid.cpp", 687, "PolaroidInnovPR", "m_scKfStateConfLowCnt >= 0 && m_scKfStateConfLowCnt <= Design::KF_CONF_CNT_MAX_THRESH");
    v70 = 687;
LABEL_127:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_polaroid.cpp", v70, v69);
  }

  v27 = 1.0;
  if (a7 != 1)
  {
    goto LABEL_18;
  }

  v28 = *(a1 + 124);
  if (v28 >= 0xB)
  {
    v69 = "m_scKfStateConfMedCnt >= 0 && m_scKfStateConfMedCnt <= Design::KF_CONF_CNT_MAX_THRESH";
    DeviceFaultNotify("glpe_polaroid.cpp", 682, "PolaroidInnovPR", "m_scKfStateConfMedCnt >= 0 && m_scKfStateConfMedCnt <= Design::KF_CONF_CNT_MAX_THRESH");
    v70 = 682;
    goto LABEL_127;
  }

  v29 = (v28 - 2);
  v30 = 1.0;
  if (v29 < 1.0)
  {
    v29 = 1.0;
  }

  v31 = v29 / 7.0;
LABEL_17:
  v27 = (v31 + v30) * (v31 + v30);
LABEL_18:
  v34 = *(a1 + 32);
  v35 = *(v34 + 16);
  if (v35 == 1)
  {
    v36 = sqrt(v76 + v75);
    v37 = v26 / v36;
    if (v37 < 0.0)
    {
      v37 = -v37;
    }

    v38 = v37 / sqrt(v27);
  }

  else
  {
    v38 = v26 / sqrt(v75 + v76 * v27);
    if (v38 < 0.0)
    {
      v38 = -v38;
    }

    v36 = sqrt(v76 + v75);
  }

  v39 = *(v34 + 8);
  *a3 = v38;
  v40 = (*(v23 + 24) + *(v23 + 24)) / v36;
  if (v40 > 2.0)
  {
    v40 = 2.0;
  }

  if (v40 < 1.0)
  {
    v40 = 1.0;
  }

  *a4 = v40;
  if (*(a1 + 96) <= 0xFu && *(v23 + 24) <= a10)
  {
    a10 = *(v23 + 24);
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), a2, 0, 0);
  v42 = 20;
  if (*(a1 + 93))
  {
    v42 = 28;
  }

  v43 = *&MeMeas[v42];
  v44 = 0.75;
  if ((v43 - 1) < 2)
  {
    v44 = 1.0;
  }

  v45 = a10 * v44;
  if ((a8 & 1) != 0 || *(a1 + 96) <= 0xFu)
  {
    if (*(a1 + 89) == 1)
    {
      return *a3 < 1.0;
    }

    v57 = *a5;
    if (a9 >= 10.0)
    {
      v58 = -v57;
    }

    else
    {
      v58 = -v57;
      if (v57 >= 0.0)
      {
        v59 = *a5;
      }

      else
      {
        v59 = -v57;
      }

      if (v59 > v45)
      {
        return 0;
      }
    }

    if (v57 < 0.0)
    {
      v57 = v58;
    }

    v60 = v45 * 5.0;
    return v57 <= v60;
  }

  if (a9 >= 10.0)
  {
    if (*(a1 + 116) > a6)
    {
      goto LABEL_71;
    }

    v65 = *a5;
    v66 = *(*(a1 + 48) + 24);
    if (*a5 <= fmin(v66, 20.0))
    {
      if (v35 != 1)
      {
        goto LABEL_71;
      }

      if (v65 < 0.0)
      {
        v65 = -v65;
      }

      if (v65 <= v66 * 3.0)
      {
LABEL_71:
        *a4 = 5.0;
        v61 = *(a1 + 120);
        v62 = *a5;
        if (a6 >= 9 && !v61)
        {
          v63 = -v62;
          if (v62 >= 0.0)
          {
            v63 = *a5;
          }

          v64 = 3.0;
          if (v63 > *(*(a1 + 48) + 24) * 5.0)
          {
            goto LABEL_79;
          }
        }

        v56 = 5.0;
        if (v61 == 2 || v62 < 0.0)
        {
          v64 = 7.5;
          if ((*(*(a1 + 32) + 8) - 1) <= 1)
          {
LABEL_79:
            *a4 = v64;
            v56 = v64;
          }
        }

        v50 = *a3;
        return v50 <= v56;
      }
    }
  }

  v46 = *(a1 + 32);
  v47 = *(v46 + 16);
  if (!v47 || (v48 = *(v46 + 8)) == 0)
  {
    v60 = v45 / v36;
    if (v60 > 3.0)
    {
      v60 = 3.0;
    }

    if (v60 < 1.0)
    {
      v60 = 1.0;
    }

    goto LABEL_87;
  }

  result = 0;
  v49 = v35 & 0xFFFFFFFE;
  v50 = *a3;
  v52 = *a3 > 4.0 && v49 == 2;
  v53 = 3.0;
  v55 = v50 > 3.0 && v39 != 6 && v35 == 1;
  if (!v55 && !v52)
  {
    if (v35 != 1)
    {
      goto LABEL_97;
    }

    if (v48 - 3 <= 2)
    {
      v56 = 1.5;
      return v50 <= v56;
    }

    if (v39 == 6)
    {
      v68 = 0x4010000000000000;
    }

    else
    {
LABEL_97:
      if (v48 <= 2)
      {
        v60 = 3.0;
        if (v47 == 9)
        {
LABEL_87:
          *a4 = v60;
          v57 = *a3;
          return v57 <= v60;
        }

        if (v43 != 4)
        {
          if (v43 == 3)
          {
            v60 = *a4;
            v53 = 1.0;
LABEL_122:
            if (v60 > v53)
            {
              v60 = v53;
            }

            goto LABEL_87;
          }

          if (v43)
          {
            if (*v20 == 2 && (a9 > 10.0 || a6 <= 7))
            {
              v60 = *a4;
            }

            else
            {
              v60 = *a4;
              v53 = 1.5;
            }

            goto LABEL_122;
          }
        }

        v60 = *a4;
        v53 = 0.5;
        goto LABEL_122;
      }

      if (v49 == 2)
      {
        return v50 <= 2.0 || v48 - 6 < 0xFFFFFFFD;
      }

      if (v48 != 3)
      {
        return 1;
      }

      v68 = 0x4008000000000000;
    }

    *a4 = v68;
    v50 = *a3;
    v56 = 4.0;
    return v50 <= v56;
  }

  return result;
}

BOOL BlueFin::GlPePolaroid::GetMetrics(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  if (a4)
  {
    v48 = 0;
    v49 = -1;
    v50 = 575;
    v6 = BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(a1, v45, a3, (*(*(a1 + 32) + 8) - 1) < 2);
    if (v6)
    {
      v42 = xmmword_298A442E0;
      v41[0] = &v43;
      v41[1] = v44;
      v44[0] = 0;
      v44[1] = &v42 + 8;
      if (v47 == -1)
      {
        v7 = 263361;
      }

      else
      {
        v7 = 1217;
      }

      v38[1] = 0;
      v39[0] = v40;
      v39[1] = 0x100000000;
      v40[0] = 0;
      v40[1] = 0;
      v37[0] = v38;
      v37[1] = 0x100000000;
      v38[0] = 0;
      v35[0] = v36;
      v35[1] = 0xD00000000;
      memset(v36, 0, sizeof(v36));
      v8 = a1 + *(*a1 - 24);
      v9 = *(v8 + 88);
      v10 = *(a1 + 16);
      v11 = **(a1 + 24);
      v12 = *(v8 + 208);
      v13 = *(v8 + 216);
      v14 = *(v8 + 224);
      v15 = *(v8 + 232);
      v23[0] = v35;
      v23[1] = v8 + 8;
      v23[2] = v9;
      v24 = v11;
      v25 = 3;
      v26 = v7;
      v27 = v8 + 104;
      v28 = 0;
      v29 = v8 + 152;
      v30 = v12;
      v31 = v13;
      v32 = v14;
      v33 = v15;
      v34 = xmmword_298A44280;
      v19[0] = v39;
      v19[1] = v37;
      v19[2] = v41;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      if ((*(*v10 + 16))(v10, v23, v19, v45, &BlueFin::GlSet128::BIT0))
      {
        DeviceFaultNotify("glpe_polaroid.cpp", 1220, "GetMetrics", "m_rotComputeZRH.Compute(otInp, otOut, &otSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_polaroid.cpp", 1220, "m_rotComputeZRH.Compute(otInp, otOut, &otSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
      }

      *a2 = *(v39[0] + 8) - *(v37[0] + 8);
      BlueFin::GlPePolaroid::GetPInLOS(a1, v41, 1);
      *(a2 + 8) = v46 * v46;
      *(a2 + 16) = v16;
    }
  }

  else if ((*(*(a1 + 1904) + 4 * (a3[4] >> 5)) >> (a3[4] & 0x1F)))
  {
    v17 = a1 + 24 * *(a1 + a3[4] + 1328);
    *(a2 + 16) = *(v17 + 144);
    *a2 = *(v17 + 128);
    return 1;
  }

  else
  {
    GlCustomLog(14, "GetMetrics missing svId %d\n", *a3);
    return 0;
  }

  return v6;
}

uint64_t BlueFin::GlBigArrayIterator::Next(BlueFin::GlBigArrayIterator *this)
{
  v1 = *(this + 4);
  v2 = *this;
  if (v1 >= *(*this + 32))
  {
    v7 = "HasNext()";
    DeviceFaultNotify("glinc_array.h", 360, "Next", "HasNext()");
    v8 = 360;
    goto LABEL_8;
  }

  v3 = *(v2 + 16);
  *(this + 4) = v1 + 1;
  v4 = *(v3 + 2 * v1);
  v5 = *(v2 + 28);
  result = (v5 + v4);
  if (result - v5 >= *(v2 + 30))
  {
    v7 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v8 = 313;
    goto LABEL_8;
  }

  if (*(*(v2 + 8) + 2 * (result - v5)) == -1)
  {
    v7 = "m_potArray->Has(handle)";
    DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
    v8 = 362;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v8, v7);
  }

  return result;
}

void BlueFin::GlPeNavGnssKF::Update(BlueFin::GlPeNavGnssKF *this, uint64_t a2, int *a3)
{
  v4 = *this;
  v5 = *this;
  v6 = *(*this - 24);
  v7 = this + v6;
  v8 = *(this + v6 + 8);
  v9 = *(this + v6 + 16);
  v511[0] = v8;
  v511[1] = v9;
  v10 = *(this + v6 + 24);
  v511[2] = v10;
  v508 = v510;
  v509 = 8;
  memset(v510, 0, 32);
  v505 = xmmword_298A43FD0;
  v503 = &v506;
  v504 = v507;
  v507[0] = 0;
  v507[1] = &v505 + 8;
  *&v11 = COERCE_UNSIGNED_INT(3.0);
  if ((*(*(this + 281) + 8) - 1) < 2)
  {
    *&v11 = 0.75;
  }

  if (fabsf(*(this + 331)) > *&v11 && BlueFin::GlPeNavGnssMotion::IsNotTurning((this + 4776), v11))
  {
    TrueHeadingRad = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(this);
    v13 = *(v7 + 50);
    *(this + 392) = TrueHeadingRad;
    *(this + 393) = v13;
    *(this + 197) = v8;
    *(this + 198) = v9;
    *(this + 199) = v10;
    v6 = *(v5 - 24);
  }

  v456 = *(this + v6 + 152);
  if (*(this + 26))
  {
    v14 = 0;
    v15 = 1;
    goto LABEL_27;
  }

  v16 = *(*(*(this + 5) + 32) + 32);
  v17 = sqrtf(v16);
  v18 = BlueFin::GlPeNavGnssKF::LeftXtcRecently(this);
  v19 = *(this + 281);
  if (v18 || v17 >= 3.14159265)
  {
    v20 = *(v19 + 8);
  }

  else
  {
    v20 = *(v19 + 8);
    if ((v20 - 3) > 0xFFFFFFFD)
    {
      v21 = 0;
LABEL_15:
      v22 = *(this + 2932);
LABEL_17:
      v23 = *(this + 284);
      if (*(v23 + 2) < 1 || *(v23 + 45))
      {
        v24 = (*(*this + 72))(this);
        v14 = v17 >= 3.14159265 || v24 > 0x7D0;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_26;
    }
  }

  if (v20 == 3)
  {
    v21 = *(v19 + 16) != 1;
    goto LABEL_15;
  }

  v22 = *(this + 2932);
  v21 = 1;
  v14 = 1;
  if (v20 != 6)
  {
    goto LABEL_17;
  }

LABEL_26:
  v15 = v22 & v21 ^ 1;
  v4 = *this;
LABEL_27:
  if (*(this + *(v4 - 24) + 240))
  {
    v26 = 20;
  }

  else
  {
    v26 = 4;
  }

  if ((*(*(this + 281) + 8) - 1) >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  if ((*(v4 + 56))(this) > 0x5A)
  {
    v27 |= 2u;
  }

  v28 = *(*(this + 284) + 8);
  if (v28 && (*(this + *(*this - 24) + 200) - v28) >> 5 < 0x753)
  {
    v27 |= 0x20u;
  }

  if ((*(a3 + 1) & 0x40) != 0 && BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(this, 0x4E20u))
  {
    v27 |= ((*(*(this + 281) + 8) - 3) < 3) << 7;
  }

  v29 = (this + *(*this - 24));
  if (*(v29 + 241))
  {
    v30 = 8;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 | v27 & 0xFFFFFFF7;
  v32 = sqrt(v29[14] * v29[14] + v29[13] * v29[13]);
  v469 = *(v29 + 1);
  v474 = *(v29 + 2);
  v468 = *(v29 + 3);
  v33 = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(this);
  *&v34 = v469;
  *&v35 = v468;
  *(&v35 + 1) = v469;
  v36 = *(v29 + 50);
  *(&v34 + 1) = v474;
  *&v537[24] = v35;
  *&v537[8] = v34;
  *v537 = v32;
  *&v537[40] = v474;
  *&v538 = v468;
  *(&v538 + 1) = __PAIR64__(v36, LODWORD(v33));
  *&v539 = __PAIR64__(v31, LODWORD(v33));
  BlueFin::GlPeGnssNavUpa::SetUrbanPosAssist(this + 2280, v537, &v528);
  v502 = 0;
  BlueFin::GlPeNavGnssKF::UpdateHeadingConsistentWithDeals(this, v529[24], &v502);
  if (!(v15 & 1 | !v14))
  {
    BlueFin::GlPeNavGnssKF::DealsMeasUpdate(this, &v503, (*a3 >> 8) & 1);
  }

  v37 = *(this + 281);
  v38 = v37[4];
  v461 = v15;
  if ((v37[2] - 1) > 1)
  {
    v463 = 0;
  }

  else
  {
    v463 = (v38 & 0xFFFFFFFE) == 2;
    if (*(this + 26) == 1 && (v38 & 0xFFFFFFFE) == 2)
    {
      v39 = 1;
      v463 = 1;
LABEL_55:
      v465 = v39;
      goto LABEL_57;
    }
  }

  if (v38 == 7)
  {
    v39 = 1;
    goto LABEL_55;
  }

  if (v38 == 1)
  {
    v39 = v37[5] == 1;
    goto LABEL_55;
  }

  v465 = 0;
LABEL_57:
  v499 = v501;
  v500 = 8;
  memset(v501, 0, 32);
  v496 = v498;
  v497 = 8;
  memset(v498, 0, 32);
  v493 = v495;
  v494 = 8;
  memset(v495, 0, 32);
  v490 = v492;
  v491 = 8;
  memset(v492, 0, 32);
  v487 = v489;
  v488 = 19;
  memset(v489, 0, sizeof(v489));
  v484 = v486;
  v485 = 19;
  memset(v486, 0, sizeof(v486));
  v480[1] = 0;
  v481 = v483;
  v482 = 19;
  memset(v483, 0, sizeof(v483));
  v479[0] = v480;
  v479[1] = 0x100000000;
  v480[0] = 0;
  v40 = *(this + 1560);
  if (v40 >= 1)
  {
    v457 = v14;
    v41 = 0;
    v42 = 0;
    LOBYTE(v43) = 0;
    v462 = 0;
    v466 = this + 264;
    v467 = this + 352;
    v464 = this + 256;
    v44 = vdup_n_s32(0x42C60000u);
    v460 = (this + 3040);
    v459 = v44;
    while (1)
    {
      v45 = a2 + 56 * v41;
      v47 = (v45 + 32);
      v46 = *(v45 + 32);
      v48 = *(v45 + 36);
      LOBYTE(v519.f64[0]) = v46;
      HIDWORD(v519.f64[0]) = v48;
      LOWORD(v519.f64[1]) = *(v45 + 40);
      v49 = *(v45 + 44);
      if (v49 != 10)
      {
        v475 = v42;
        if (v49 == 2)
        {
          v50 = *(*this - 24);
          v51 = this + 352;
        }

        else
        {
          if (v49)
          {
            break;
          }

          v50 = *(*this - 24);
          v51 = this + 264;
        }

        if ((*(*&v51[v50] + 4 * (SLOWORD(v519.f64[1]) >> 5)) >> (LOBYTE(v519.f64[1]) & 0x1F)))
        {
          break;
        }
      }

LABEL_269:
      if (++v41 >= v40)
      {
        v476 = v42;
        v191 = v43 > 0;
        v14 = v457;
        goto LABEL_272;
      }
    }

    LOBYTE(v517.f64[0]) = v46;
    HIDWORD(v517.f64[0]) = *(v45 + 36);
    LOWORD(v517.f64[1]) = *(v45 + 40);
    v52 = *a3;
    *&v514 = v515;
    *(&v514 + 1) = 0x100000000;
    v515[0] = 0;
    v515[1] = 0;
    *&v512.f64[0] = v513;
    *&v512.f64[1] = 0x100000000;
    v513[0] = 0;
    v513[1] = 0;
    *&v537[8] = 0xC0000000CLL;
    memset(&v537[16], 0, 32);
    v538 = 0u;
    v539 = 0u;
    v540 = 0u;
    v541 = 0u;
    v542 = 0;
    v53 = *(this + 281);
    v54 = *(v53 + 8);
    v55 = v54 - 3;
    *v537 = &v537[16];
    v56 = (v54 - 3) <= 2 && **(this + 1) < 0x493E0u;
    v57 = *(v53 + 16) & 0xFFFFFFFE;
    if (fabsf(*(this + 331)) >= 3.5)
    {
      v58 = 1219;
    }

    else if (((v54 - 1) < 2 || v56) && v57 == 2)
    {
      v58 = 1223;
    }

    else
    {
      v58 = 1219;
    }

    if (v55 >= 0xFFFFFFFE)
    {
      v58 |= 0x200u;
    }

    v59 = v58 & 0xFFFFEFFF | (((v52 >> 3) & 1) << 12);
    if (*(v45 + 24) == -1)
    {
      v60 = v59 | 0x40000;
    }

    else
    {
      v60 = v59;
    }

    v61 = *this;
    if ((v52 & 0x4000) != 0)
    {
      v62 = *this;
      if (v55 >= 0xFFFFFFFE && (*(this + *(v61 - 24) + 242) & 1) != 0 && v57 == 2)
      {
        v60 |= 0x6000u;
      }
    }

    v63 = this + *(v61 - 24);
    v64 = *(v63 + 11);
    v65 = **(this + 280);
    v66 = *(v63 + 52);
    *&v67 = *(v63 + 54);
    v68 = *(v63 + 56);
    v69 = *(v63 + 58);
    v70 = *(v63 + 55);
    *&v528 = v537;
    *(&v528 + 1) = v63 + 8;
    *v529 = v64;
    *&v529[8] = v65;
    *&v529[12] = 3;
    *&v529[16] = v60;
    *&v529[24] = v63 + 104;
    *&v529[32] = 0;
    *&v530 = v63 + 152;
    *(&v530 + 1) = v66;
    v531 = v67;
    v532 = v68;
    v533 = v69;
    v534 = 0;
    v535 = v70;
    *v521 = &v514;
    *&v521[8] = &v512;
    *&v521[16] = &v503;
    v522 = v479;
    v524 = 0;
    v525 = 0;
    v523 = 0.0;
    v526 = &v508;
    v527 = 0;
    if ((*(**(this + 2) + 16))(*(this + 2), &v528, v521, v45, &BlueFin::GlSet128::BIT0))
    {
      v71 = *(v45 + 44);
      if (v71 == 2)
      {
        BlueFin::GlSetBase::Remove(&v467[*(*this - 24)], SLOWORD(v517.f64[1]));
        v84 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v517);
        if (v84)
        {
          *(v84 + 273) = 39;
        }
      }

      else
      {
        if (v71)
        {
          v453 = "false";
          DeviceFaultNotify("glpe_navgnsskf.cpp", 4517, "RunComputeZRH", "false");
          v454 = "glpe_navgnsskf.cpp";
          v455 = 4517;
LABEL_631:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v454, v455, v453);
        }

        BlueFin::GlSetBase::Remove(&v466[*(*this - 24)], SLOWORD(v517.f64[1]));
        v72 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v517);
        if (v72)
        {
          *(v72 + 272) = 39;
        }
      }

      goto LABEL_96;
    }

    v73 = *(v514 + 8);
    v74 = *(*&v512.f64[0] + 8);
    if ((*(this + 26) & 1) == 0)
    {
      v75 = *(v45 + 44);
      if (v75 == 2)
      {
        v85 = v504[1];
        v86 = v85[2];
        v87 = v85[4];
        v88 = v85[6];
        v89 = __sincosf_stret(*(this + *(*this - 24) + 176));
        v85[2] = v87 * v89.__sinval + v86 * v89.__cosval;
        v85[4] = (v87 * v89.__cosval - v86 * v89.__sinval) * *(this + 331);
        v90 = -v88;
        v44 = v459;
        v85[6] = v90;
      }

      else
      {
        if (v75)
        {
          goto LABEL_99;
        }

        v76 = v504[1];
        v77 = v76[3];
        v78 = v76[5];
        *v537 = v76[1];
        *&v537[8] = v77;
        v543[0] = 0x300000001;
        *&v537[16] = v78;
        BlueFin::Matrix::mult(&v528, (this + 1336), 1, v537, *v537);
        v79 = v536;
        v80 = v504[1];
        v80[1] = v528;
        _ZF = v79 == 1;
        v82 = 8;
        if (!_ZF)
        {
          v82 = 32;
        }

        v80[3] = *&v529[v82 - 16];
        v83 = 64;
        if (_ZF)
        {
          v83 = 16;
        }

        v80[5] = *&v529[v83 - 16];
      }
    }

    v75 = *(v45 + 44);
LABEL_99:
    v91 = v73 - v74;
    if (!v75)
    {
      if ((*(a3 + 1) & 0x40) == 0)
      {
        LOBYTE(v514) = LOBYTE(v519.f64[0]);
        DWORD1(v514) = HIDWORD(v519.f64[0]);
        WORD4(v514) = LOWORD(v519.f64[1]);
        v92 = *(this + 2);
        LODWORD(v528) = 0;
        *(&v528 + 1) = &v529[4];
        v529[0] = 8;
        memset(&v529[4], 0, 32);
        v530 = xmmword_298A41DA0;
        v531 = v44;
        LODWORD(v532) = 1120272384;
        BlueFin::stDops::stDops(v537, &v528);
        *(&v540 + 1) = v92;
        v93 = **(this + 1);
        BlueFin::GlSignalIdSet::GetSvIdSet(&v484, v521);
        v512.f64[0] = *(this + *(*this - 24) + 88);
        LODWORD(v517.f64[0]) = **(this + 280);
        v516 = 0;
        BlueFin::GlPeDops::GetDops();
        *&v484[4 * (SWORD4(v514) >> 5)] |= 1 << SBYTE8(v514);
        v94 = *(this + 5);
        v95 = *(*(v94 + 8) + 8);
        v96 = *(*(v94 + 24) + 24);
        if (!*(*(this + 284) + 2) && (*(*this + 72))(this) <= 0x7CF && *(&v530 + 1) < 99.0)
        {
          v97 = *(this + 609);
          v98 = fmax(v97 * *(&v530 + 1), 20.0);
          if (*(this + 380) >= v98)
          {
            v99 = v98;
          }

          else
          {
            v99 = *(this + 380);
          }

          if (*(&v530 + 1) < 3.0 && BlueFin::GlSignalIdSet::CntSecondarySignalSvIdSet(&v481, 2))
          {
            v100 = *(this + 5);
            v101 = *(v100[1] + 8);
            v102 = *(v100[3] + 24);
            v103 = v101 + v102;
            v104 = *(v100[5] + 40);
            v105 = sqrtf(v103 + v104);
            v106 = v105 + v105;
            v107 = v97;
            if (v106 <= v107)
            {
              v106 = v97;
            }

            v108 = v106;
            if (v99 >= v108)
            {
              v99 = v108;
            }
          }

          if (fabsf(*(this + 331)) < 3.5 && *(*(this + 281) + 16) == 3 && v99 > 100.0)
          {
            v99 = 100.0;
          }

          *v460 = v99;
          v44 = v459;
        }

        v109 = *(this + 284);
        v110 = *(v109 + 2);
        v111 = v110 >= 1 && v110 < *(v109 + 4);
        v112 = (*(*(this + 281) + 8) - 3) < 0xFFFFFFFE;
        v113 = v112 || v111;
        v114 = v112 ^ v113;
        if (v110 >= 1 && (v113 & 1) == 0)
        {
          v114 = *(v109 + 45) == 0;
        }

        v115 = v95;
        v116 = v96;
        v117 = sqrtf(v115 + v116);
        v118 = 56;
        if (*(this + 26))
        {
          v119 = 40;
        }

        else
        {
          v119 = 56;
        }

        if (!*(this + 26))
        {
          v118 = 40;
        }

        v120 = *(*(*(this + 5) + 8) + 8) + *(*(*(this + 5) + 24) + 24) + *(*(*(this + 5) + v119) + v119) + *(*(*(this + 5) + v118) + v118);
        v121 = (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
        v122 = v121 * v121;
        if (v122 >= v120)
        {
          v120 = v122;
        }

        v123 = (*(*this + 72))(this);
        if (BlueFin::GlPePolaroidGnssKF::Polaroid(v460, v91, v475, v117, v123, &v514, v120, v114 & 1))
        {
          v124 = fabs(v91);
          v125 = v124 > 100.0;
          if (*(&v530 + 1) < 5.0 && v475 > 4)
          {
            v125 = 1;
          }

          if ((v114 | v125))
          {
            *(v45 + 48) = 0;
            v127 = SWORD4(v514);
            if (v124 > 400.0)
            {
              *(*(this + 202) + 4 * (SWORD4(v514) >> 5)) |= 1 << SBYTE8(v514);
            }

            BlueFin::GlSetBase::Remove(&v466[*(*this - 24)], v127);
            BlueFin::GlSetBase::Remove(&v484, SWORD4(v514));
            v128 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v514);
            if (v128)
            {
              *(v128 + 272) = 10280;
            }

            goto LABEL_96;
          }

          if (v475 >= 5 && *(&v530 + 1) >= 5.0)
          {
            v129 = *v460 * *v460;
            if (v129 < *(v479[0] + 8))
            {
              v129 = *(v479[0] + 8);
            }

            *(v479[0] + 8) = v129;
          }
        }
      }

      v130 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v519);
      if (v130)
      {
        *(v130 + 272) = 44;
      }

      v131 = 0;
      v132 = LOBYTE(v519.f64[0]) >> 5;
      v133 = 1 << SLOBYTE(v519.f64[0]);
      v134 = v499;
      *&v499[4 * v132] |= 1 << SLOBYTE(v519.f64[0]);
      v135 = &v134[4 * v500 - 4];
      do
      {
        if (*v135)
        {
          v136 = *v135 - (((*v135 >> 1) & 0x5B6DB6DB) + ((*v135 >> 2) & 0x9249249));
          v131 = ((v136 + (v136 >> 3)) & 0xC71C71C7) + v131 - 63 * (((v136 + (v136 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        v135 -= 4;
      }

      while (v135 >= v134);
      v475 = v131;
      if (v91 < 20.0)
      {
        *&v493[4 * v132] |= v133;
      }

      *&v464[*(*this - 24)] |= 1u;
      v75 = *(v45 + 44);
    }

    if (v75 != 2)
    {
LABEL_237:
      v179 = *(v45 + 44);
      if ((*(a3 + 1) & 0x40) != 0)
      {
        goto LABEL_247;
      }

      if (!v179 && BlueFin::GlPeNavGnssKF::UsedXtcRecently(this))
      {
        v180 = *(this + 281);
        if ((*(v180 + 8) - 1) <= 1 && (*(v180 + 16) & 0xFFFFFFFE) == 2)
        {
          *(v479[0] + 8) = *(v479[0] + 8) * 4.0;
        }
      }

      v179 = *(v45 + 44);
      v181 = !v463;
      if (v179)
      {
        v181 = 1;
      }

      if (v181)
      {
LABEL_247:
        if ((v179 | 2) != 2)
        {
          v183 = 0;
          v184 = 13;
          v182 = v465;
LABEL_252:
          BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 1, 0, v182, v91, *(v479[0] + 8));
          v185 = *(v45 + 44);
          if ((v185 | 2) == 2)
          {
            v42 = v475;
            if ((v182 & 1) == 0)
            {
              BlueFin::BigMatrix::ReShape(this + 8, 12, 12);
              v42 = v475;
              if (v183)
              {
                v186 = v184;
                if (v184 <= 0xC)
                {
                  v187 = 12;
                }

                else
                {
                  v187 = v184;
                }

                v188 = (v187 + 1);
                do
                {
                  for (i = 1; i != 13; ++i)
                  {
                    if (v186 != i)
                    {
                      v190 = *(this + 5);
                      *(*(v190 + 8 * v186) + 8 * i) = 0;
                      *(*(v190 + 8 * i) + 8 * v186) = 0;
                    }
                  }

                  ++v186;
                }

                while (v186 != v188);
              }
            }

            v185 = *(v45 + 44);
          }

          else
          {
            v42 = v475;
          }

          if (!v185)
          {
            *&v481[4 * (SLOWORD(v519.f64[1]) >> 5)] |= 1 << SLOBYTE(v519.f64[1]);
          }

          goto LABEL_268;
        }
      }

      else
      {
        *(v479[0] + 8) = fmax(*(v479[0] + 8), 50.0);
      }

      v182 = v465;
      if (v465)
      {
        v183 = 0;
        v184 = 13;
      }

      else
      {
        BlueFin::BigMatrix::ReShape(this + 8, 8, 8);
        v183 = 1;
        BlueFin::BigMatrix::ReShape(&v503, 1, 8);
        v182 = v465;
        v184 = 9;
      }

      goto LABEL_252;
    }

    if ((*(a3 + 1) & 0x40) == 0)
    {
      v458 = SLOWORD(v519.f64[1]);
      *&v487[4 * (SLOWORD(v519.f64[1]) >> 5)] |= 1 << SLOBYTE(v519.f64[1]);
      v137 = 64;
      if (!*(this + 26))
      {
        v137 = 48;
      }

      v138 = *(this + 284);
      if (*(v138 + 2) >= *(v138 + 4))
      {
        v139 = *(v138 + 1);
      }

      else
      {
        v139 = 0;
      }

      v140 = 0;
      v141 = *(this + 5);
      v142 = *(*(v141 + 16) + 16);
      v143 = *(*(v141 + 32) + 32);
      v144 = v142 + v143;
      v145 = *(*(v141 + v137) + v137);
      v146 = sqrtf(v144 + v145);
      if (v462 >= 2 && (v139 & 1) == 0)
      {
        v147 = fabsf(*(this + 331));
        v148 = 3.0;
        if (v147 > 5.0)
        {
          v148 = 10.0;
          if (v462 > 4)
          {
            v148 = 4.0;
          }

          if (*(*(this + 281) + 8) == 6)
          {
            v148 = 17.5;
          }

          if (v147 < 15.0)
          {
            v148 = (v147 + -5.0) * 0.1 + 3.0;
          }
        }

        *(this + 381) = v148;
        v140 = v146 < 64.0 && fabs(v91) > v148;
      }

      if (v43 > 6 || (v149 = 99.0, v140))
      {
        v150 = *(this + 2);
        LODWORD(v528) = 0;
        *(&v528 + 1) = &v529[4];
        v529[0] = 8;
        memset(&v529[4], 0, 32);
        v530 = xmmword_298A41DA0;
        v531 = v44;
        LODWORD(v532) = 1120272384;
        BlueFin::stDops::stDops(v537, &v528);
        *(&v540 + 1) = v150;
        v151 = **(this + 1);
        BlueFin::GlSignalIdSet::GetSvIdSet(&v487, v521);
        *&v514 = *(this + *(*this - 24) + 88);
        LODWORD(v512.f64[0]) = **(this + 280);
        LODWORD(v517.f64[0]) = 0;
        BlueFin::GlPeDops::GetDops();
        v149 = *(&v530 + 1);
      }

      v152 = v91 * v149;
      if (v140)
      {
        if (v43 > 3 || fabs(v152) > *(this + 448))
        {
          BlueFin::GlSetBase::Remove(&v467[*(*this - 24)], v458);
          BlueFin::GlSetBase::Remove(&v487, v458);
LABEL_96:
          v42 = v475;
LABEL_268:
          LOBYTE(v40) = *(this + 1560);
          goto LABEL_269;
        }
      }

      else if (v43 >= 7 && (v149 < 2.0 || v149 == 99.0))
      {
        *(this + 381) = 0x4000000000000000;
        v153 = this + *(*this - 24);
        v154 = 2.0;
        if (sqrt(*(v153 + 14) * *(v153 + 14) + *(v153 + 13) * *(v153 + 13)) < 3.0)
        {
          v155 = *(this + 571);
          v154 = 1.5;
          if (v155 != -7200001)
          {
            v156 = (*(*(this + 281) + 8) - 1) >= 2 ? 30000 : 300000;
            if (*(v153 + 50) <= (v156 + v155))
            {
              v154 = 1.0;
            }
          }

          *(this + 381) = v154;
        }

        v157 = fabs(v91);
        if (v146 < 64.0 && v157 > v154)
        {
          v159 = v154 * v154;
          if (*(v479[0] + 8) >= v154 * v154)
          {
            v159 = *(v479[0] + 8);
          }

          *(v479[0] + 8) = v159;
          if (*(v45 + 8) >= v154)
          {
            v154 = *(v45 + 8);
          }

          *(v45 + 8) = v154;
        }
      }

      v160 = v152;
      *(this + 448) = fabsf(v160);
    }

    v161 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v519);
    if (v161)
    {
      *(v161 + 273) = 44;
    }

    v43 = 0;
    v162 = LOBYTE(v519.f64[0]) >> 5;
    v163 = 1 << SLOBYTE(v519.f64[0]);
    v164 = v496;
    *&v496[4 * v162] |= 1 << SLOBYTE(v519.f64[0]);
    v165 = &v164[4 * v497 - 4];
    do
    {
      if (*v165)
      {
        v166 = *v165 - (((*v165 >> 1) & 0x5B6DB6DB) + ((*v165 >> 2) & 0x9249249));
        v43 = ((v166 + (v166 >> 3)) & 0xC71C71C7) + v43 - 63 * (((v166 + (v166 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v165;
    }

    while (v165 >= v164);
    if (fabs(v91) < 2.0)
    {
      v167 = 0;
      v168 = v490;
      *&v490[4 * v162] |= v163;
      v169 = &v168[4 * v491 - 4];
      do
      {
        if (*v169)
        {
          v170 = *v169 - (((*v169 >> 1) & 0x5B6DB6DB) + ((*v169 >> 2) & 0x9249249));
          v167 = ((v170 + (v170 >> 3)) & 0xC71C71C7) + v167 - 63 * (((v170 + (v170 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v169;
      }

      while (v169 >= v168);
      v462 = v167;
    }

    *&v464[*(*this - 24)] |= 2u;
    v171 = *(this + 281);
    v172 = *(v171 + 16);
    if (v172 == 2)
    {
      if ((*(v171 + 8) - 3) >= 3)
      {
LABEL_225:
        v173 = 1;
        goto LABEL_226;
      }
    }

    else
    {
      v173 = v172 == 3;
      if ((*(v171 + 8) - 3) >= 3)
      {
        goto LABEL_226;
      }

      if (v172 != 3)
      {
        v177 = v479[0];
        v178 = fmin(*(v479[0] + 8) * ((fmin(fmax(fabsf(*(this + 331)), 0.5), 10.0) + -0.5) * 4.0 / 9.5 + 1.0), 2.0);
        goto LABEL_234;
      }
    }

    v174 = *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 1), v47, 0, 0) + 29);
    v173 = 1;
    if (v174 < 20.0 && v174 > 0.0)
    {
      v175 = (20.0 - v174) / v174;
      if (v175 > 1.5)
      {
        v175 = 1.5;
      }

      *(v479[0] + 8) = v175 + *(v479[0] + 8);
      goto LABEL_225;
    }

LABEL_226:
    v176 = !v173 || (*(*(this + 281) + 8) - 1) > 1;
    if (v176 || *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 1), v47, 0, 0) + 8) != 3 && *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 1), v47, 0, 0) + 8) != 2)
    {
LABEL_235:
      if (*(*(this + 281) + 8) == 10)
      {
        *(v479[0] + 8) = fmax(*(v479[0] + 8), 3.0);
      }

      goto LABEL_237;
    }

    v177 = v479[0];
    v178 = *(v479[0] + 8) * 3.0;
LABEL_234:
    *(v177 + 8) = v178;
    goto LABEL_235;
  }

  v191 = 0;
  v476 = 0;
LABEL_272:
  v192 = *(this + 26);
  if (v192)
  {
    BlueFin::GlPeNavGnssKF::UpdateHeading(this);
    v192 = *(this + 26);
  }

  v193 = 0.392699082;
  if ((v192 & 1) == 0)
  {
    v193 = 0.785398163;
  }

  v194 = this + *(*this - 24);
  if (v193 > *(v194 + 46))
  {
    v195 = *(this + 597);
    v196 = *(v195 + 5128);
    if (v196 != -7200001 && v196 > **(this + 598))
    {
      v198 = *(v195 + 5136);
      v199 = *(v195 + 5132);
      v200 = sqrt(*(v194 + 14) * *(v194 + 14) + *(v194 + 13) * *(v194 + 13));
      v201 = v200;
      v202 = 0.0;
      if (v199 >= v201)
      {
        v203 = 0.0;
      }

      else
      {
        v203 = *(v195 + 5136);
      }

      if (v199 < v201)
      {
        v202 = *(v195 + 5132);
      }

      v204 = v198 <= v201 ? v202 : *(v195 + 5136);
      v205 = v198 <= v201 ? v203 : *(v195 + 5132);
      if (v198 > v201 || v199 < v201)
      {
        v207 = v199 - v198;
        if (v192)
        {
          v208 = v204 - v200;
          v209 = *(this + 5);
          v210 = *(*(v209 + 16) + 16);
          v211 = *(*(v209 + 32) + 32);
          v212 = (v210 + v211) * 9.0;
          if ((v208 * v208) > v212)
          {
            goto LABEL_308;
          }

          v213 = v205 - v200;
          v214 = __sincosf_stret(*(v194 + 44));
          v215 = vabds_f32(v201, v204);
          v216 = fmax(v210 * v207 / v215, 0.0001);
          v217 = fmax(v211 * v207 / v215, 0.0001);
          BlueFin::BigMatrix::Null(&v503, 1, 12);
          *(v504[1] + 16) = 0x3FF0000000000000;
          BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 1, 0, 1, v213 * v214.__cosval, v216);
          BlueFin::BigMatrix::Null(&v503, 1, 12);
          *(v504[1] + 32) = 0x3FF0000000000000;
          v218 = this;
          v219 = v213 * v214.__sinval;
          v220 = v217;
        }

        else
        {
          v221 = *(this + 331);
          v222 = -v204;
          if (v221 > 0.0)
          {
            v222 = v204;
          }

          v223 = *(*(*(this + 5) + 16) + 16) * 9.0;
          if (((v222 - v221) * (v222 - v221)) > v223)
          {
            goto LABEL_308;
          }

          if (v221 <= 0.0)
          {
            v205 = -v205;
          }

          v224 = (v205 - v221);
          BlueFin::BigMatrix::Null(&v503, 1, 12);
          *(v504[1] + 16) = 0x3FF0000000000000;
          v225 = sqrt(*(this + *(*this - 24) + 112) * *(this + *(*this - 24) + 112) + *(this + *(*this - 24) + 104) * *(this + *(*this - 24) + 104));
          v220 = fmax(*(*(*(this + 5) + 16) + 16) * v207 / vabds_f32(v225, v204), 2.22044605e-16);
          *(v479[0] + 8) = v220;
          v218 = this;
          v219 = v224;
        }

        BlueFin::GlPeNavGnssKF::MeasUpdate(v218, &v503, 1, 0, 1, v219, v220);
        *(this + 3991) = 257;
      }
    }
  }

LABEL_308:
  if (((v461 | v14) & 1) == 0)
  {
    BlueFin::GlPeNavGnssKF::DealsMeasUpdate(this, &v503, (*a3 >> 8) & 1);
  }

  if ((*(a3 + 1) & 0x40) != 0)
  {
    IsTunnelExit = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this);
  }

  else
  {
    IsTunnelExit = 0;
  }

  v227 = 0;
  v228 = *(this + 281);
  v229 = *(v228 + 16);
  v230 = &v481[4 * v482 - 4];
  do
  {
    if (*v230)
    {
      v231 = *v230 - (((*v230 >> 1) & 0x5B6DB6DB) + ((*v230 >> 2) & 0x9249249));
      v227 += ((v231 + (v231 >> 3)) & 0xC71C71C7) % 0x3F;
    }

    --v230;
  }

  while (v230 >= v481);
  if (v229 == 1)
  {
    v232 = 1;
  }

  else
  {
    v232 = IsTunnelExit;
  }

  if ((v232 & 1) != 0 || *(v228 + 8) == 6 || (v233 = 4, v227 >= 0xAu) && (v229 & 0xFFFFFFFE) != 2 && (*a3 & 8) == 0 && (*(*this + 56))(this) <= 0x96)
  {
    v233 = 0;
  }

  *v537 = 0;
  *&v528 = 0;
  ExtAlt = BlueFin::GlPeAltMgr::GetExtAlt(*(this + 283), (this + *(*this - 24) + 8), v537, &v528);
  if (ExtAlt == 4)
  {
    v235 = v233;
  }

  else
  {
    v235 = ExtAlt;
  }

  if (v235)
  {
    if (v235 == 4)
    {
      v237 = 0;
      v236 = 5.0;
    }

    else
    {
      v236 = 3.0;
      v237 = v235 == 3 && *&v528 < 8.0 && *&v528 > 0.0;
    }

    BlueFin::BigMatrix::Null(&v503, 1, 12);
    v238 = 1.0;
    if (*(this + 26))
    {
      v238 = -1.0;
    }

    *(v504[1] + 40) = v238;
    v239 = *v537 - *(this + *(*this - 24) + 24);
    v240 = *&v528 * *&v528;
    if (v237 || v239 * v239 < v236 * v236 * (v240 + *(*(*(this + 5) + 40) + 40)))
    {
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 1, 1, 1, v239, v240);
    }
  }

  BlueFin::lla2ned((this + *(*this - 24) + 8), (this + *(*this - 24) + 32), 0, &v514);
  v241 = *(this + 281);
  v242 = *(v241 + 16);
  v244 = sqrt(*&v514 * *&v514 + *(&v514 + 1) * *(&v514 + 1)) < 10.0 && v242 == 7;
  if (v242)
  {
    v245 = 60000;
  }

  else
  {
    v245 = 120000;
  }

  if (*(this + *(*this - 24) + 200) >= v245 && (v246 = *(this + 597), *(v246 + 4216) == 6) && (v247 = v246 + 4096, *(v247 + 128) == 1))
  {
    v248 = *(v247 + 130) ^ 1;
  }

  else
  {
    v248 = 0;
  }

  if ((*(a3 + 1) & 0x20) != 0)
  {
    v249 = (*(*this + 48))(this);
    v241 = *(this + 281);
    if (v249)
    {
      if ((*(v241 + 8) - 1) > 1)
      {
        goto LABEL_362;
      }
    }
  }

  if ((*(v241 + 8) | 8) == 0xA)
  {
    goto LABEL_362;
  }

  if (((*(this + *(*this - 24) + 242) | v244) & 1) == 0)
  {
    if (*(v241 + 1764))
    {
      v255 = 60;
    }

    else
    {
      v255 = 180;
    }

    if (*(v241 + 1328) <= 4.0 || *(v241 + 1320) >= 20.0 || *(v241 + 76) < v255)
    {
      if (v248)
      {
        goto LABEL_379;
      }

LABEL_362:
      v250 = 0;
      v251 = (this + 4776);
      goto LABEL_363;
    }

    if ((*(v241 + 1764) & 1) == 0 && !((*(v241 + 64) == 1) | v248 & 1))
    {
      goto LABEL_362;
    }
  }

LABEL_379:
  v256 = *(this + 546) * 1000.0;
  if (v256 > 0.0)
  {
    v257 = v256;
    v258 = 0.5;
LABEL_384:
    v259 = (v257 + v258);
    goto LABEL_385;
  }

  if (v256 < 0.0)
  {
    v257 = v256;
    v258 = -0.5;
    goto LABEL_384;
  }

  v259 = 0;
LABEL_385:
  v260 = *(this + 2);
  LODWORD(v528) = 0;
  *(&v528 + 1) = &v529[4];
  v529[0] = 8;
  memset(&v529[4], 0, 32);
  v530 = xmmword_298A41DA0;
  v531 = vdup_n_s32(0x42C60000u);
  LODWORD(v532) = 1120272384;
  BlueFin::stDops::stDops(v537, &v528);
  *(&v540 + 1) = v260;
  v261 = **(this + 1);
  BlueFin::GlSignalIdSet::GetSvIdSet(this + *(*this - 24) + 352, v521);
  v512.f64[0] = *(this + *(*this - 24) + 88);
  LODWORD(v519.f64[0]) = **(this + 280);
  LODWORD(v517.f64[0]) = 0;
  BlueFin::GlPeDops::GetDops();
  if ((*(*this + 72))(this) >= 2 * v259 || *(&v530 + 1) >= 5.0)
  {
    v250 = *(*(this + 281) + 1989);
    if ((v250 & 1) == 0 && ((v248 ^ 1) & 1) == 0)
    {
      v262 = *(*(this + 284) + 48);
      if (v262)
      {
        v263 = *(this + *(*this - 24) + 200) - v262;
      }

      else
      {
        v263 = -1;
      }

      v250 = v263 < **(this + 598) - *(*(this + 597) + 4240);
    }
  }

  else
  {
    v250 = 1;
  }

  v251 = (this + 4776);
  if (BlueFin::GlPeNavGnssMotion::IsNotMoving((this + 4776), 1.0) && (v250 & 1) != 0)
  {
    v250 = 1;
LABEL_397:
    v252 = this;
    v253 = v250;
    v254 = 0;
    goto LABEL_398;
  }

LABEL_363:
  if (*(*v251 + 4216) == 6 && *(*v251 + 4224) == 1 && (*(*v251 + 4226) & 1) == 0)
  {
    goto LABEL_397;
  }

  if (*(this + 5884) && (*(this + *(*this - 24) + 200) - *(this + 2951)) <= 0xBB8 && *(this + 1477) < 0.100000001 || *(*(this + 281) + 8) == 10)
  {
    v252 = this;
    v253 = 0;
    v254 = 1;
LABEL_398:
    BlueFin::GlPeNavGnssKF::ZeroSpeedUpdate(v252, &v503, v511, v253, v254);
  }

  BlueFin::GlPeNavGnssKF::UpdateHeadingConsistentWithDeals(this, 0, &v502);
  if (!v502 || *(*(this + 284) + 2) || !BlueFin::GlPeNavGnssMotion::IsNotTurning(v251, v264) || !v191 || (*(*(this + 281) + 8) - 3) > 3)
  {
    goto LABEL_419;
  }

  v265 = *(a3 + 1) | v463 & *(this + 26);
  if (v265)
  {
    v266 = *(this + 735) * 0.0174532925;
    v267 = v266 * 57.296;
    if (v267 < 45.1)
    {
      v267 = 45.1;
    }

    v268 = v267 * 0.0174532925;
    if ((*(this + 26) & 1) == 0)
    {
      goto LABEL_407;
    }
  }

  else
  {
    v268 = 0.315904601;
    if ((*(this + 26) & 1) == 0)
    {
LABEL_407:
      v269 = *(this + 392);
        ;
      }

        ;
      }

      v272 = j;
      BlueFin::BigMatrix::Null(&v503, 1, 12);
      *(v504[1] + 32) = 0x3FF0000000000000;
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, k & 1, 0, 1, v272, v268 * v268);
      goto LABEL_419;
    }
  }

  if (sqrt(*(this + *(*this - 24) + 112) * *(this + *(*this - 24) + 112) + *(this + *(*this - 24) + 104) * *(this + *(*this - 24) + 104)) >= 1.0)
  {
    BlueFin::BigMatrix::Null(&v503, 1, 12);
    v273 = *this;
    v274 = (this + *(*this - 24));
    v275 = v274[14];
    v276 = -v275;
    v277 = sqrt(v275 * v275 + v274[13] * v274[13]);
    v278 = v504[1];
    *(v278 + 16) = v276 / (v277 * v277);
    v279 = (this + *(v273 - 24));
    v280 = v279[13];
    v281 = sqrt(v279[14] * v279[14] + v280 * v280);
    *(v278 + 32) = v280 / (v281 * v281);
    v282 = *(this + 392);
      ;
    }

      ;
    }

    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, (v265 ^ 1) & 1, 0, 1, m, v268 * v268);
    BlueFin::GlPeNavGnssKF::UpdateHeading(this);
  }

LABEL_419:
  v284 = *(this + 282);
  v285 = *(v284 + 17);
  if (v285 && *(v285 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v285 + 3040), *(v285 + 3040))) < 160000.0 && (v286 = *a3, (*a3 & 0x1000) != 0))
  {
    v470 = 1;
  }

  else
  {
    v287 = (*(*this + 128))(this);
    v288 = (*(*this + 160))(this);
    if (!BlueFin::GlPeExtLoc::IsPosLocMeasAvailable(v284, v287, v288, (*a3 & 0x1000) != 0))
    {
      goto LABEL_537;
    }

    v292 = *(*(this + 282) + 136);
    if (v292)
    {
      if (*(v292 + 3009))
      {
        goto LABEL_537;
      }
    }

    v470 = 0;
    v286 = *a3;
  }

  v293 = *(this + 26);
  v294 = *(this + 597);
  v295 = *(v294 + 3016);
  v296 = *(v294 + 3024);
  v517.f64[0] = v295;
  v517.f64[1] = v296;
  v297 = *(v294 + 3032);
  v518 = v297;
  v298 = *(v294 + 3048);
  v299 = *(v294 + 3072);
  v300 = *(this + 5884);
  v301 = this + *(*this - 24);
  v302 = *(v301 + 50);
  v303 = *(v301 + 44);
  if (!v300)
  {
    *(this + 5884) = 1;
    *(this + 3060) = 0;
    *(this + 1472) = v295;
    *(this + 1473) = v296;
    *(this + 1474) = v297;
    *(this + 2950) = v302;
    *(this + 2951) = v302;
    *(this + 2952) = v303;
LABEL_453:
    *(this + 11824) = 0;
    goto LABEL_454;
  }

  v304 = (v302 - *(this + 2951)) * 0.001;
  if (v304 <= 1.0 || v304 > 30.0)
  {
    goto LABEL_432;
  }

    ;
  }

    ;
  }

  if (n < 0.0)
  {
    n = -n;
  }

  if (n > 1.2566371 && *(this + 1477) >= 0.100000001)
  {
LABEL_432:
    *v537 = v295;
    *&v537[8] = v296;
    *&v537[16] = v297;
    BlueFin::ExtLocFilter::Reset(this + 11768, v537, v302, v303);
    v300 = *(this + 5884);
  }

  *(this + 5884) = v300 + 1;
  *(this + 2951) = v302;
  v473 = (v302 - *(this + 2950)) * 0.001;
  BlueFin::lla2ned(v517.f64, this + 1472, 0, v537);
  v307 = *v537;
  v308 = *&v537[8];
  v309 = v473 * v473 + *(this + 1479);
  *(this + 1479) = v309;
  v310 = v473 + *(this + 1480);
  *(this + 1480) = v310;
  __asm { FMOV            V5.2D, #1.0 }

  _Q5.f64[0] = v473;
  v314 = vaddq_f64(_Q5, *(this + 11864));
  *(this + 11864) = v314;
  *(this + 1496) = *(this + 1496) + v473 * v307;
  *(this + 1500) = v307 + *(this + 1500);
  *(this + 1513) = *(this + 1513) + v473 * v308;
  *(this + 1517) = v308 + *(this + 1517);
  if (*(this + 5884) <= 2u)
  {
    goto LABEL_453;
  }

  if (v473 <= 0.1)
  {
    v316 = v314.f64[1];
    v315 = 0.0;
  }

  else
  {
    BlueFin::lla2ned(v517.f64, this + 1472, 0, v537);
    v315 = sqrt(*&v537[8] * *&v537[8] + *v537 * *v537) / v473 * 0.200000003;
    v309 = *(this + 1479);
    v316 = *(this + 1484);
    v310 = *(this + 1480);
    v314.f64[0] = *(this + 1483);
  }

  *(this + 1477) = v315 + *(this + 1477) * 0.799999997;
  v317 = v309 * v316 - v310 * v314.f64[0];
  if (fabs(v317) <= 2.22044605e-16)
  {
    goto LABEL_453;
  }

  v318 = 1.0 / v317;
  v543[0] = 0x200000002;
  *v537 = v316 * v318;
  *&v537[8] = -(v318 * v310);
  *&v537[32] = -(v318 * v314.f64[0]);
  *&v537[40] = v309 * v318;
  BlueFin::Matrix::mult(&v528, v537, (this + 11968));
  BlueFin::Matrix::mult(v521, v537, (this + 12104));
  *&v514 = *&v529[16] + v473 * *&v528;
  *(&v514 + 1) = v523 + v473 * *v521;
  v515[0] = 0;
  BlueFin::ned2lla(this + 1472, &v514, v512.f64);
  BlueFin::lla2ned(v512.f64, v517.f64, 0, v519.f64);
  v319 = sqrt(vaddvq_f64(vmulq_f64(v519, v519)));
  v320 = *(this + 3060);
  v321 = v319;
  if (v320 <= v321)
  {
    v320 = v319;
  }

  *(this + 3060) = v320;
  if (v319 <= 20.0)
  {
    *(this + 12244) = 0;
  }

  else
  {
    v322 = ++*(this + 12244);
    if (v322 >= 3)
    {
      v519 = v517;
      v520 = v518;
      BlueFin::ExtLocFilter::Reset(this + 11768, &v519, v302, v303);
      v320 = *(this + 3060);
    }
  }

  v517 = v512;
  v518 = v513[0];
  v298 = fmaxf(v320, 48.0);
  *(this + 11824) = 1;
LABEL_454:
  if (*(this + 26) == 1)
  {
    v323 = *this;
    v324 = (this + *(*this - 24));
    v325 = v324[13];
    v326 = v324[14] * v324[14];
    v327 = sqrt(v326 + v325 * v325);
    v328 = *(this + 5);
    if (v327 <= 0.1)
    {
      v329 = 3.14159265;
    }

    else
    {
      v329 = (v325 * v325 * *(*(v328 + 32) + 32) + *(*(v328 + 16) + 16) * v326) / (v327 * v327 * (v327 * v327));
    }
  }

  else
  {
    v328 = *(this + 5);
    v329 = sqrt(*(*(v328 + 32) + 32));
    v323 = *this;
  }

  v330 = v293 == 0;
  if (v293)
  {
    v331 = 1;
  }

  else
  {
    v331 = 3;
  }

  if (v330)
  {
    v332 = 1;
  }

  else
  {
    v332 = 3;
  }

  v333 = *(*(v328 + 8 * v331) + 8 * v331) + *(*(v328 + 8 * v332) + 8 * v332);
  if (*(this + 611) * *(this + 611) >= v333)
  {
    v333 = *(this + 611) * *(this + 611);
  }

  v334 = v333;
  BlueFin::lla2ned((this + *(v323 - 24) + 8), v517.f64, 0, v537);
  v335 = v298 * v298 + v334;
  v336 = sqrt(*&v537[8] * *&v537[8] + *v537 * *v537) / sqrtf(v335);
  v337 = ((*(*this + 64))(this) / (*(this + 546) * 1000.0));
  v289.i32[0] = 3.0;
  if (v299 == 3)
  {
    *v289.i32 = 5.0;
  }

  if (v337 <= 1)
  {
    *v289.i32 = 9.0;
  }

  v338 = v476;
  if (*v289.i32 < v336)
  {
    goto LABEL_531;
  }

  v339 = *(*v251 + 4216);
  if ((v339 == 1 || v339 == 6) && *(*v251 + 4224) == 1)
  {
    v340 = 0;
    if (v476 <= 9 && (*(*v251 + 4226) & 1) == 0)
    {
      v340 = *(this + *(*this - 24) + 242) ^ 1;
    }
  }

  else
  {
    v340 = 0;
  }

  v341 = *(*(this + 282) + 136);
  if (v341 && *(v341 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v341 + 3040), *(v341 + 3040))) < 160000.0 && (*(v341 + 3072) - 3) <= 2 && ((v340 & 1) != 0 || BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this)))
  {
    v342 = *(*(*(this + 5) + 8 * v331) + 8 * v331) + *(*(*(this + 5) + 8 * v332) + 8 * v332);
    BlueFin::BigMatrix::Null(&v503, 1, 12);
    *(v504[1] + 8 * v331) = 0x3FF0000000000000;
    BlueFin::lla2ned(v517.f64, (this + *(*this - 24) + 8), 0, &v528);
    v477 = *&v528;
    *v537 = v528;
    *&v537[16] = *v529;
    BlueFin::ned2hlu(v537, (this + 1336), &v528);
    v343 = v298;
    v344 = v343 * v343;
    v345 = v342 * 3.0;
    if (v344 < (v342 * 3.0))
    {
      v345 = v344;
    }

    v346 = *(&v528 + 1);
    if (*(this + 26))
    {
      v346 = v477;
    }

    v347 = v345;
    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 1, 1, 1, v346, v345);
    BlueFin::BigMatrix::Null(&v503, 1, 12);
    *(v504[1] + 8 * v332) = 0x3FF0000000000000;
    BlueFin::lla2ned(v517.f64, (this + *(*this - 24) + 8), 0, v521);
    *v537 = *v521;
    v478 = *&v521[8];
    *&v537[8] = *&v521[8];
    BlueFin::ned2hlu(v537, (this + 1336), v521);
    v348 = *v521;
    if (*(this + 26))
    {
      v348 = v478;
    }

    v349 = this;
    v350 = v347;
    v351 = 1;
    goto LABEL_529;
  }

  BlueFin::lla2ned(v517.f64, (this + *(*this - 24) + 8), 0, v521);
  v528 = *v521;
  *v529 = *&v521[16];
  BlueFin::ned2hlu(&v528, (this + 1336), v537);
  v352 = *(this + 5);
  if (*(this + 26) == 1)
  {
    v353 = *(*(v352 + 24) + 24) * (*(this + 172) * *(this + 172)) + *(*(v352 + 8) + 8) * (*(this + 168) * *(this + 168));
  }

  else
  {
    v353 = *(*(v352 + 24) + 24);
  }

  v354 = v298;
  if ((v286 & 0x1000000) == 0)
  {
    v354 = v298;
    if ((*(this + 11824) & 1) == 0)
    {
      v355 = sqrt(v353) / (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
      if (v355 < 0.1)
      {
        v355 = 0.1;
      }

      v354 = v298 * v355;
    }
  }

  v356 = *(this + *(*this - 24) + 176);
  v357 = *(this + 26);
  BlueFin::BigMatrix::Null(&v503, 1, 12);
  v358 = v504[1];
  if (v357 == 1)
  {
    *(v358 + 8) = *(this + 171);
    v359 = *(this + 172);
  }

  else
  {
    v359 = 1.0;
  }

  *(v358 + 24) = v359;
  BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 1, 0, 1, *&v537[8], v354 * v354);
  v360 = *this;
  if (*(this + 26) == 1)
  {
    v361 = *this;
    v362 = *(this + *(v360 - 24) + 176);
      ;
    }

      ;
    }

    if (ii > 0.523598776)
    {
      v364 = __sincos_stret(v362);
      *(this + 167) = *&v364.__cosval;
      *(this + 168) = *&v364.__sinval;
      *(this + 169) = 0;
      *(this + 171) = *&v364.__sinval;
      *(this + 172) = -v364.__cosval;
      *(this + 173) = 0;
      *(this + 1400) = 0u;
      *(this + 177) = 0xBFF0000000000000;
    }
  }

  BlueFin::lla2ned(v517.f64, (this + *(v360 - 24) + 8), 0, &v514);
  *v521 = v514;
  *&v521[16] = v515[0];
  BlueFin::ned2hlu(v521, (this + 1336), &v528);
  v365 = *(this + 5);
  v366 = *(*(v365 + 8) + 8);
  if (*(this + 26) == 1)
  {
    v366 = *(*(v365 + 24) + 24) * (*(this + 168) * *(this + 168)) + v366 * (*(this + 167) * *(this + 167));
  }

  v367 = *&v528;
  if (v286 & 0x1000000) != 0 || (*(this + 11824))
  {
    if (*(this + 26))
    {
      goto LABEL_515;
    }
  }

  else
  {
    v370 = sqrt(v366) / (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
    if (v370 < 0.1)
    {
      v370 = 0.1;
    }

    v298 = v298 * v370;
    if (*(this + 26))
    {
LABEL_515:
      BlueFin::BigMatrix::Null(&v503, 1, 12);
      v368 = HIBYTE(v286) & 1;
      v369 = v504[1];
      *(v369 + 8) = *(this + 167);
      v289.i64[0] = *(this + 168);
      *(v369 + 24) = v289.i64[0];
      if (v329 < 0.523598776)
      {
        v368 = 1;
      }

      if ((v470 | v368) & 1) == 0 && (*(this + *(*this - 24) + 242))
      {
        goto LABEL_530;
      }

      goto LABEL_528;
    }
  }

  BlueFin::BigMatrix::Null(&v503, 1, 12);
  v371 = v367 > 0.0;
  v289.i32[1] = 1071694162;
  *(v504[1] + 8) = 0x3FF0000000000000;
  v372 = v470;
  if (v329 >= 0.523598776)
  {
    v372 = 0;
    v371 = 0;
  }

  if ((v286 & 0x1000000) == 0 && (v372 & 1) == 0 && !v371)
  {
    goto LABEL_530;
  }

LABEL_528:
  v350 = v298 * v298;
  v349 = this;
  v348 = v367;
  v351 = 0;
LABEL_529:
  BlueFin::GlPeNavGnssKF::MeasUpdate(v349, &v503, 1, v351, 1, v348, v350);
LABEL_530:
  *(this + 3992) = 257;
LABEL_531:
  if (v338 <= 2 && BlueFin::GlPeNavGnssMotion::IsNotMoving(v251, 1.0))
  {
    v373 = *(this + 26);
    BlueFin::BigMatrix::Null(&v503, 1, 12);
    *(v504[1] + 16) = 0x3FF0000000000000;
    if (v373 == 1)
    {
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 0, 0, 1, -*(this + *(*this - 24) + 104), 1.0);
      BlueFin::BigMatrix::Null(&v503, 1, 12);
      *(v504[1] + 32) = 0x3FF0000000000000;
      v374 = -*(this + *(*this - 24) + 112);
    }

    else
    {
      v374 = -*(this + 331);
    }

    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v503, 0, 0, 1, v374, 1.0);
  }

LABEL_537:
  v375 = *(this + 281);
  if ((*(v375 + 8) - 1) > 1)
  {
    goto LABEL_562;
  }

  v376 = *(v375 + 1909);
  if (*(this + 26))
  {
    *&v528 = 0;
    *v521 = 0;
    *(this + 2169) = 0;
    IsHulaSpeedValid = BlueFin::GlPeNavGnssKF::IsHulaSpeedValid(this, &v528, v521, 0);
    *(this + 2168) = IsHulaSpeedValid;
    v289 = xmmword_298A43FD0;
    *&v537[16] = xmmword_298A43FD0;
    *v537 = &v537[32];
    *&v537[8] = v543;
    v543[0] = 0;
    v543[1] = &v537[24];
    if (*(this + 2169) == 1)
    {
      if (!IsHulaSpeedValid)
      {
        *v289.i64 = sqrt(*(this + *(*this - 24) + 112) * *(this + *(*this - 24) + 112) + *(this + *(*this - 24) + 104) * *(this + *(*this - 24) + 104));
        if (*v289.i64 <= 1.0)
        {
          goto LABEL_557;
        }

        BlueFin::BigMatrix::Null(v537, 1, 12);
        v398 = *this;
        v399 = (this + *(*this - 24));
        v400 = v399[14];
        v401 = -v400;
        v402 = sqrt(v400 * v400 + v399[13] * v399[13]);
        v403 = *(*&v537[8] + 8);
        *(v403 + 16) = v401 / (v402 * v402);
        v404 = (this + *(v398 - 24));
        v405 = v404[13];
        v406 = sqrt(v404[14] * v404[14] + v405 * v405);
        *(v403 + 32) = v405 / (v406 * v406);
          ;
        }

          ;
        }

        v384 = 0.0;
        v385 = this;
        v397 = 0;
        goto LABEL_556;
      }

      BlueFin::BigMatrix::Null(v537, 1, 12);
      *(*(*&v537[8] + 8) + 16) = 0x3FF0000000000000;
      v378 = *&v528;
      v379 = *&v528 - *(this + *(*this - 24) + 104);
      v380 = *v521;
      v381 = *&v528 * 0.0;
      v382 = tan(0.0);
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, v537, 1, 0, 1, v379, v382 * v381 * (v382 * v381) + v380 * v380);
      BlueFin::BigMatrix::Null(v537, 1, 12);
      *(*(*&v537[8] + 8) + 32) = 0x3FF0000000000000;
      jj = -(*(this + *(*this - 24) + 112) - v378 * 0.0);
      v384 = v382 * v378 * (v382 * v378) + v380 * 0.0 * (v380 * 0.0);
      v385 = this;
    }

    else
    {
      if (!IsHulaSpeedValid || (*v289.i64 = *(this + *(*this - 24) + 184), *v289.i64 >= 0.785398163))
      {
LABEL_557:
        if (!v376)
        {
          goto LABEL_562;
        }

        goto LABEL_558;
      }

      *(this + 2168) = 1;
      BlueFin::BigMatrix::Null(v537, 1, 12);
      *(*(*&v537[8] + 8) + 16) = 0x3FF0000000000000;
      v386 = *&v528;
      v387 = (this + *(*this - 24));
      v388 = __sincosf_stret(v387[44]);
      v389 = -(*(v387 + 13) - v386 * v388.__cosval);
      v390 = *v521;
      v391 = *v521 * v388.__cosval * (*v521 * v388.__cosval);
      v392 = tanf(v387[46]);
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, v537, 1, 0, 1, v389, v391 + v386 * v392 * v388.__sinval * (v386 * v392 * v388.__sinval));
      BlueFin::BigMatrix::Null(v537, 1, 12);
      *(*(*&v537[8] + 8) + 32) = 0x3FF0000000000000;
      v393 = (this + *(*this - 24));
      v394 = __sincosf_stret(v393[44]);
      v395 = -(*(v393 + 14) - v386 * v394.__sinval);
      v396 = tanf(v393[46]);
      v384 = v390 * v394.__sinval * (v390 * v394.__sinval) + v386 * v396 * v394.__cosval * (v386 * v396 * v394.__cosval);
      v385 = this;
      jj = v395;
    }

    v397 = 1;
LABEL_556:
    BlueFin::GlPeNavGnssKF::MeasUpdate(v385, v537, v397, 0, 1, jj, v384);
    goto LABEL_557;
  }

  if (*(v375 + 1909))
  {
    BlueFin::GlPeNavGnssKF::UpdateFromHulaSpeed(this);
LABEL_558:
    if (*(this + 8080) == 1 && *(this + 2168) == 1 && *(this + 2169) == 1)
    {
      *(this + 543) = *(this + *(*this - 24) + 200);
    }

    goto LABEL_562;
  }

  if (*(this + 8080) == 1)
  {
    BlueFin::GlPeNavGnssKF::UpdateFromHulaSpeed(this);
  }

LABEL_562:
  v407 = *(this + 1333);
  if (v407)
  {
    if (v407[4] == 1)
    {
      v289.i32[0] = *(*(this + 1) + 56088);
      *v291.i32 = *v289.i32 + (truncf(*v289.i32 * 2.3283e-10) * -4295000000.0);
      v408.i64[0] = 0x8000000080000000;
      v408.i64[1] = 0x8000000080000000;
      v291.i32[0] = vbslq_s8(v408, v291, v289).u32[0];
      if (*v289.i32 > 4295000000.0)
      {
        v289.i32[0] = v291.i32[0];
      }

      if (*v289.i32 < -4295000000.0)
      {
        *v290.i32 = -*v289.i32;
        *v289.i32 = -(*v289.i32 - (truncf(*v289.i32 * -2.3283e-10) * -4295000000.0));
        *v289.i32 = -*vbslq_s8(v408, v289, v290).i32;
      }

      if (*v289.i32 < 0.0)
      {
        v409 = --*v289.i32;
      }

      else
      {
        LOWORD(v409) = *v289.i32;
      }

      v410 = *(*(this + 1) + 56072);
      v411 = *this;
      if (*v407 == 1)
      {
        v412 = *this;
        v413 = BlueFin::GlSetBase::Cnt((this + *(v411 - 24) + 352)) < 3;
      }

      else
      {
        v413 = 0;
      }

      v415 = *(this + *(v411 - 24) + 200);
      v416 = v410 - v415;
      _CF = v415 >= v410;
      v417 = v415 - v410;
      if (v417 == 0 || !_CF)
      {
        v417 = v416;
      }

      if (v417 <= 0x3E7)
      {
        if (*(this + 2932) != 1)
        {
          goto LABEL_589;
        }

        BlueFin::GlSetBase::GlSetBase(v537, &v537[12], 0x13u, this + 369);
        v418 = 0;
        v419 = (*v537 + 4 * v537[8] - 4);
        do
        {
          if (*v419)
          {
            v420 = *v419 - (((*v419 >> 2) & 0x9249249) + ((*v419 >> 1) & 0x5B6DB6DB));
            v418 = ((v420 + (v420 >> 3)) & 0xC71C71C7) + v418 - 63 * (((v420 + (v420 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v419;
        }

        while (v419 >= *v537);
        if (v418 >= 0xAu && *(this + 732) < 3.0)
        {
          if ((v409 + 20) <= 0x77u)
          {
            v421 = this + 10680;
            v422 = *(this + 724);
            v423 = this + 11640;
            v424 = (v409 + 20);
            v425 = *(this + v424 + 11640);
            if (*(this + v424 + 11640))
            {
              v426 = *&v421[4 * v424];
              if (v425 == 255)
              {
                v429 = 255.0;
                v428 = *&v421[4 * v424];
              }

              else
              {
                v427 = v425 + 1;
                v423[v424] = v427;
                v428 = *&v421[4 * v424];
                v429 = v427;
              }

              v452 = v428 + ((v422 - v428) / v429);
              *&v421[4 * v424] = v452;
              *(this + v424 + 2790) = *(this + v424 + 2790) + ((v422 - v452) * (v422 - v426));
            }

            else
            {
              *&v421[4 * v424] = v422;
              *(this + v424 + 2790) = 0;
              v423[v424] = 1;
            }
          }
        }

        else
        {
LABEL_589:
          if (v413)
          {
            if ((v409 + 20) >= 120)
            {
              v453 = "sBin < NBINS";
              DeviceFaultNotify("glpe_navutil.h", 582, "Get", "sBin < NBINS");
              v454 = "glpe_navutil.h";
              v455 = 582;
              goto LABEL_631;
            }

            v430 = *(this + (v409 + 20) + 11640);
            v431 = *(this + 11760);
            if (v431 <= 2)
            {
              v431 = 2;
            }

            if (v430 >= v431)
            {
              v432 = *(*(this + 5) + 64);
              if (*(this + 26))
              {
                v433 = 48;
              }

              else
              {
                v433 = 64;
              }

              v434 = *(v432 + v433);
              v435 = fmax(fmin((*(this + (v409 + 20) + 2790) / v430) / v434, 1.0), 0.5);
              v436 = *(this + (v409 + 20) + 2670);
              v437 = *this;
              v438 = *(*this - 24);
              v439 = *(this + v438 + 152);
              if ((v436 - v439) * (v436 - v439) > v434 * 4.0)
              {
                *(v432 + v433) = v434 + *(*(this + 571) + 88) * 4.0;
                v438 = *(v437 - 24);
                v439 = *(this + v438 + 152);
              }

              *(this + v438 + 152) = v435 * v436 + v439 * (1.0 - v435);
            }
          }
        }
      }

      v407 = *(this + 1333);
    }

    if (*v407 == 1)
    {
      if (*(this + 6220) == 1)
      {
        v440 = *(this + 775);
        v414 = *this;
      }

      else
      {
        v414 = *this;
        v443 = *(this + 1);
        v444 = *v443;
        if (*v443 == -7200001)
        {
          v445 = 4287767.5;
        }

        else
        {
          v446 = v443[1];
          v447 = v444 - v446;
          if (v446 == -7200001)
          {
            v448 = -7200001;
          }

          else
          {
            v448 = v447;
          }

          v445 = (v448 * 0.001);
        }

        v440 = (*(this + *(*this - 24) + 152) - v456) / v445;
      }

      v441 = (this + *(v414 - 24));
      v449 = -14.989622;
      if (v440 >= -14.989622)
      {
        v449 = v440;
      }

      if (v440 <= 14.989622)
      {
        v442 = v449;
      }

      else
      {
        v442 = 14.989622;
      }
    }

    else
    {
      v414 = *this;
      v441 = (this + *(*this - 24));
      v442 = v441[21] * 0.7;
    }

    v441[21] = v442;
  }

  else
  {
    v414 = *this;
  }

  v450 = this + *(v414 - 24);
  v451 = *(v450 + 14);
  *v537 = *(v450 + 13);
  *&v537[16] = v451;
  LODWORD(v450) = *(v450 + 50);
  *&v528 = &unk_2A1F13018;
  *(&v528 + 1) = v537;
  *v529 = v450;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13030(&v528);
    }
  }
}