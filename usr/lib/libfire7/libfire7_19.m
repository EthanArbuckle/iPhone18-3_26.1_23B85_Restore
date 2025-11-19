float BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(BlueFin::GlPeNavGnssKF *this)
{
  result = *(this + *(*this - 24) + 176);
  if ((*(this + 26) & 1) == 0)
  {
    v2 = result;
    if (*(this + 331) < 0.0)
    {
      v2 = v2 + 3.14159265;
    }

      ;
    }

    while (v2 < 0.0)
    {
      v2 = v2 + 6.28318531;
    }

    return v2;
  }

  return result;
}

void BlueFin::GlPeGnssNavUpa::SetUrbanPosAssist(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  if (*(*(a1 + 312) + 21) != 1)
  {
    return;
  }

  if (*a1)
  {
    return;
  }

  v6 = *(a2 + 68);
  if ((v6 & 4) == 0)
  {
    return;
  }

  if ((v6 & 8) != 0)
  {
    v7 = 12;
  }

  else
  {
    v7 = 4;
  }

  v8 = *(a2 + 24);
  v66 = *(a2 + 56);
  v67 = *(a2 + 8);
  v68 = v8;
  v69 = v7 & 0xFFFFFFFC | v6 & 3;
  v70 = 0;
  v71 = 1;
  BlueFin::GlPeGnssNavUpa::UrbanPosAssist(a1, &v66, v63);
  v62 = 0;
  v9 = *(a1 + 312);
  if (*(v9 + 20) != 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    if (v17 < 0)
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v18 = *(a2 + 68);
      v19 = (v18 >> 3) & 1;
      v20 = *(a2 + 64);
      v21 = (v18 >> 6) & 1;
      BlueFin::lla2ned((a2 + 32), (a1 + 72), 0, &v57);
      isNedPosInside = BlueFin::UrbanPosAsstRegionExt::isNedPosInside(a1 + 40, &v57, v19, &v62, v21, v20);
      v23 = *(a2 + 64);
        ;
      }

        ;
      }

      if (fabs(i) < 45.0)
      {
        v25 = isNedPosInside;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        goto LABEL_42;
      }

      v17 = *(a1 + 32);
      v9 = *(a1 + 312);
    }

    v56 = 0;
    v54[0] = 0;
    v55 = 1;
    v26 = *(*(a1 + 328) + 8);
    if (v26 == 6)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    if ((v26 - 1) >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    Region = BlueFin::GlPeUrbanPosAsst::findRegion(v9, (a2 + 32), (*(a2 + 68) >> 3) & 1, &v56, &v62, v54, v28, a1 + 32, v23, (*(a2 + 68) & 0x40) != 0);
    v30 = 0;
    if (v56 == 1 && (Region & 0x8000) == 0)
    {
      v31 = BlueFin::GlPeUrbanPosAsstCache::getRegion(*(a1 + 288), Region & 0x7FFF);
      v32 = *(a1 + 296);
      v33 = *(a1 + 304);
      BlueFin::GlPeUrbanPosAsstRegion::unpackRegion(v31, &v83, v32, v33);
      v81 = vcvtq_f64_f32(v83);
      v82 = 0;
      v34 = BlueFin::GlPeUrbanPosAsstCache::getRegion(*(a1 + 288), v17);
      v35 = *(a1 + 296);
      v36 = *(a1 + 304);
      BlueFin::GlPeUrbanPosAsstRegion::unpackRegion(v34, &v78, v35, v36);
      v76 = vcvtq_f64_f32(v78);
      v77 = 0;
      BlueFin::lla2ned(v76.f64, v81.f64, 0, &v57);
      if (sqrt(*&v58 * *&v58 + v57 * v57) < 3.0)
      {
        goto LABEL_42;
      }

      v37 = __sincos_stret(v84 * 0.0174532925);
      v75[0] = v37.__cosval * v85;
      v75[1] = v37.__sinval * v85;
      v75[2] = 0.0;
      BlueFin::ned2lla(v81.f64, v75, v74);
      BlueFin::lla2ned(v76.f64, v74, 0, &v57);
      if (sqrt(*&v58 * *&v58 + v57 * v57) < 3.0 || (v38 = __sincos_stret(v79 * 0.0174532925), v73[0] = v38.__cosval * v80, v73[1] = v38.__sinval * v80, v73[2] = 0.0, BlueFin::ned2lla(v76.f64, v73, v72), BlueFin::lla2ned(v72, v81.f64, 0, &v57), sqrt(*&v58 * *&v58 + v57 * v57) < 3.0))
      {
LABEL_42:
        v30 = 1;
        goto LABEL_43;
      }

      BlueFin::lla2ned(v72, v74, 0, &v57);
      v30 = sqrt(*&v58 * *&v58 + v57 * v57) < 3.0;
    }

LABEL_43:
    v39 = *(a2 + 68);
    if (v39)
    {
      v40 = *v16;
      if ((v39 & 0x20) != 0 && (v40 & 0x80000000) == 0)
      {
        if ((*(a1 + 49) & 1) == 0)
        {
          v63[0] = 0;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v40 = *v16;
    }

    if (v40 < 0)
    {
LABEL_53:
      if (v30)
      {
        if ((v63[0] & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_55;
      }

LABEL_64:
      v64 = 0;
      goto LABEL_65;
    }

LABEL_51:
    if ((v39 & 0x80) != 0 && (*(a1 + 49) & 1) == 0)
    {
      if (v30)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    goto LABEL_53;
  }

  v10 = v63[0];
  if ((v63[0] & 1) == 0 && v64 != 1)
  {
    goto LABEL_64;
  }

  v11 = *(a1 + 320);
  v12 = *(v11 + 3204);
  v13 = *(*(a1 + 328) + 8);
  if (v12 < 35.0)
  {
    v12 = 35.0;
  }

  v14 = v13 - 3;
  if (v13 == 3)
  {
    v12 = 5.0;
  }

  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(&v57, *(v11 + 3176), *(v11 + 3184), *(v11 + 3192), *(v11 + 3196), *(v11 + 3200), v12, *(v11 + 3208));
  v67 = *(a2 + 32);
  v68 = *(a2 + 48);
  if (v14 >= 4)
  {
    v15 = v66;
  }

  else
  {
    v15 = *(a2 + 64);
    v66 = v15;
  }

  if ((BlueFin::UrbanPosAsstRegionExt::isOkToUse(&v57, &v67, (v69 >> 3) & 1, &v62, 0, v15) & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((v10 & 1) == 0)
  {
LABEL_65:
    if ((v64 & 1) == 0)
    {
      return;
    }

    goto LABEL_66;
  }

LABEL_55:
  v67 = *(a2 + 32);
  v68 = *(a2 + 48);
  BlueFin::GlPeGnssNavUpa::UrbanPosAssist(a1, &v66, &v57);
  v41 = v58;
  v42 = v59;
  v43 = v60;
  v65 = v61;
  if (LOBYTE(v57) == 1)
  {
    v44 = *(a1 + 36);
    *a3 = v44 != 15;
    *(a3 + 8) = v41;
    if (v44 == 16)
    {
      v45 = 15.0;
    }

    else
    {
      v45 = 10.0;
    }

    *(a3 + 24) = v42;
    *(a3 + 32) = v45;
    *(a3 + 36) = v45;
    if ((v43 & 1) == 0)
    {
      return;
    }
  }

  else if (!v60)
  {
    return;
  }

LABEL_66:
  v46 = *(a2 + 68);
  if ((~v46 & 0x18) == 0)
  {
    v47 = v65;
      ;
    }

      ;
    }

    v49 = j * 57.2957795;
    v50 = fabsf(v49);
    if (v50 <= 45.0 || v50 >= 135.0)
    {
      *(a3 + 40) = 1;
      *(a3 + 44) = v47;
      v52 = *(*(a1 + 320) + 3220);
      if (v52 <= 0.0)
      {
        v53 = flt_298A43AC8[(v46 & 1) == 0];
      }

      else
      {
        v53 = v52 * 0.0174532925;
      }

      *(a3 + 48) = v53;
    }
  }
}

BOOL BlueFin::GlPeNavGnssKF::UpdateHeadingConsistentWithDeals(BlueFin::GlPeNavGnssKF *this, char a2, BOOL *a3)
{
  result = BlueFin::GlPeNavGnssKF::IsAprioriHeadingOkForUse(this, a2);
  if (result && *(this + 2932) == 1)
  {
    v6 = *(this + 735);
    if (v6 < 180.0)
    {
      v7 = *(this + 734) * -0.0174532925;
        ;
      }

        ;
      }

      v9 = fabs(i);
      v10 = v6 * 0.0174532925;
      if (v10 > 0.5236)
      {
        v10 = 0.5236;
      }

      *a3 = v9 <= v10;
    }
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssKF::IsAprioriHeadingOkForUse(BlueFin::GlPeNavGnssKF *this, char a2)
{
  BlueFin::lla2ned(this + 197, (this + *(*this - 24) + 8), 0, &v14);
  v4 = *(this + 393);
  v5 = *(this + 597);
  if (*(v5 + 4216) == 6 && (v6 = v5 + 4096, *(v6 + 128) == 1))
  {
    v7 = *(v6 + 130) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(this + 281) + 8) - 1;
  if (v8 >= 2)
  {
    v9 = 30000;
  }

  else
  {
    v9 = 5000;
  }

  v10 = *(this + *(*this - 24) + 200) - v4 >= v9 || v4 == -7200001;
  if (v10 && (a2 & 1) == 0 && (v7 & 1) == 0)
  {
    return 0;
  }

  v12 = sqrt(v15 * v15 + v14 * v14);
  v13 = 50.0;
  if (v8 < 2)
  {
    v13 = 25.0;
  }

  return v13 > v12;
}

_DWORD *BlueFin::BigMatrix::ReShape(_DWORD *this, int a2, int a3)
{
  this[4] = a2;
  this[5] = a3;
  if (this[6] < a2 || this[7] < a3)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 947, "ReShape", "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 947, "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
  }

  return this;
}

void BlueFin::GlPeNavGnssKF::MeasUpdate(uint64_t *a1, uint64_t a2, int a3, char a4, int a5, double a6, double a7)
{
  v182 = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 20);
  if (v7 != *(a1 + 13))
  {
    v166 = "otH.GetColSize() == m_P.GetColSize()";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 3817, "MeasUpdate", "otH.GetColSize() == m_P.GetColSize()");
    v167 = 3817;
    goto LABEL_149;
  }

  if (v7 >= 22)
  {
    v166 = "otH.GetColSize() <= BIG_MATR_MAX_COL_DIM";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 3818, "MeasUpdate", "otH.GetColSize() <= BIG_MATR_MAX_COL_DIM");
    v167 = 3818;
LABEL_149:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", v167, v166);
  }

  BlueFin::SKFVectorDim<21>::SKFVectorDim(v180, *(a2 + 20));
  if (v7 <= 0)
  {
    BlueFin::SKFVectorDim<21>::SKFVectorDim(v179, v7);
    v22 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = *(*(a2 + 8) + 8);
    v17 = v180[0];
    v18 = v7 + 1;
    v19 = 1;
    do
    {
      v20 = *(v16 + 8 * v19);
      *(v17 + 8 * v19) = v20;
      if (v20 != 0.0)
      {
        v181[v15++] = v19;
      }

      ++v19;
    }

    while (v18 != v19);
    BlueFin::SKFVectorDim<21>::SKFVectorDim(v179, v7);
    v21 = v180[0];
    v22 = 0.0;
    v23 = 1;
    v24 = v179[0];
    do
    {
      v25 = 0.0;
      if (v15 >= 1)
      {
        v26 = v181;
        v27 = v15;
        do
        {
          v28 = *v26++;
          v25 = v25 + *(*(a1[5] + 8 * v23) + 8 * v28) * *(v21 + 8 * v28);
          --v27;
        }

        while (v27);
      }

      *(v24 + 8 * v23) = v25;
      v22 = v22 + v25 * *(v21 + 8 * v23++);
    }

    while (v23 != v18);
  }

  v29 = v22 + a7;
  BlueFin::SKFVectorDim<21>::SKFVectorDim(&v177, v179);
  v30 = v178;
  if (v178 >= 1)
  {
    v31 = (v177 + 8);
    do
    {
      *v31 = 1.0 / v29 * *v31;
      ++v31;
      --v30;
    }

    while (v30);
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v174 = 0xC0000000CLL;
  memset(v175, 0, sizeof(v175));
  v176 = 0;
  v173 = v175;
  if (v7 >= 1)
  {
    v32 = v175 + 1;
    v33 = (v177 + 8);
    v34 = v7;
    do
    {
      v35 = *v33++;
      *v32 = *v32 + v35 * a6;
      ++v32;
      --v34;
    }

    while (v34);
  }

  if (BlueFin::GlPeNavGnssKF::IsInXtcNow(a1) && v7 >= 1 && fabs(a6 / sqrt(v29)) > 5.0)
  {
    v36 = 0;
    v37 = (v180[0] + 8);
    do
    {
      v38 = *v37++;
      if (v38 != 0.0)
      {
        ++v36;
      }

      --v7;
    }

    while (v7);
    if (v36 >= 4u)
    {
      bzero(v173 + 1, 8 * v174);
      a3 = 0;
    }
  }

  v39 = *(a1 + 26);
  if (v39)
  {
    goto LABEL_51;
  }

  if (a4)
  {
    goto LABEL_51;
  }

  v40 = *(*(a1[5] + 32) + 32);
  TrueHeadingRad = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(a1);
  if (*(a1 + 2932) != 1)
  {
    goto LABEL_51;
  }

  v42 = *(a1 + 735);
  if (v42 >= 180.0)
  {
    goto LABEL_51;
  }

  v43 = *(a1 + 734) * 0.0174532925;
  v44 = v43;
    ;
  }

    ;
  }

  v46 = v173[4];
  v47 = v46;
    ;
  }

    ;
  }

  v49 = j;
  v50 = fabsf(v49);
  v51 = i;
  if (v50 <= fabsf(v51))
  {
    goto LABEL_51;
  }

  v52 = vcvt_f32_f64(*(a1 + 359));
  v53 = vmul_f32(v52, v52);
  v54 = vcvt_f32_f64(*(a1 + 363));
  v55 = vmul_f32(v54, v54);
  v56 = vsqrt_f32(vadd_f32(vzip2_s32(v53, v55), vzip1_s32(v53, v55)));
  if (vmvn_s8(vcgt_f32(v56, vdup_lane_s32(v56, 1))).u32[0])
  {
    goto LABEL_51;
  }

  v57 = fabs(v46);
  v58 = v40;
  v59 = sqrtf(v58);
  v60 = v42 * 0.0174532925;
  if (v50 <= fmaxf(v60, 0.017453) || v57 <= v59)
  {
LABEL_51:
    if (a3)
    {
      v62 = a1[5];
      v63 = v177;
      v64 = v179[0];
      v65 = 9;
      if (a5)
      {
        v65 = 13;
      }

      for (k = 1; k != v65; ++k)
      {
        v67 = *(v62 + 8 * k);
        v68 = k;
        do
        {
          v69 = *(v67 + 8 * v68) - *(v63 + 8 * k) * *(v64 + 8 * v68);
          *(v67 + 8 * v68) = v69;
          *(*(v62 + 8 * v68++) + 8 * k) = v69;
        }

        while (v65 != v68);
      }

      if ((v39 & 1) == 0)
      {
        v70 = __sincos_stret(v173[4]);
        v71 = *(a1 + 12);
        if (v71 >= 1)
        {
          v72 = (v62 + 8);
          do
          {
            v73 = *v72++;
            v74 = *(v73 + 8);
            v75 = *(v73 + 24);
            *(v73 + 8) = v74 * v70.__cosval - v75 * v70.__sinval;
            *(v73 + 24) = v70.__cosval * v75 + v74 * v70.__sinval;
            --v71;
          }

          while (v71);
        }

        v76 = *(a1 + 13);
        v77 = *(v62 + 8);
        v78 = *(v62 + 24);
        if (v76 >= 1)
        {
          v79 = (v78 + 8);
          v80 = (v77 + 8);
          do
          {
            v81 = *v80;
            v82 = *v79;
            *v80 = *v80 * v70.__cosval - *v79 * v70.__sinval;
            ++v80;
            *v79++ = v70.__cosval * v82 + v81 * v70.__sinval;
            --v76;
          }

          while (v76);
        }

        *(v78 + 8) = *(v77 + 24);
      }

      (*(*a1 + 392))(a1);
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }
    }
  }

  else
  {
    bzero(v173 + 1, 8 * v174);
  }

  v170 = 0.0;
  v171 = 0.0;
  v172 = 0.0;
  v83 = v173;
  v84 = v173[1];
  if (*(a1 + 26) == 1)
  {
    v85 = v173[3];
    v170 = v173[1];
    v171 = v85;
    v172 = v173[5];
    v86 = *a1;
    v87 = a1 + *(*a1 - 24);
    BlueFin::ned2lla((v87 + 8), &v170, &v168);
    v88 = v169;
    *(v87 + 8) = v168;
    *(v87 + 24) = v88;
    v89 = a1[5];
    *&v88 = *(v89[1] + 8) + *(v89[3] + 24);
    *(a1 + *(v86 - 24) + 80) = sqrtf(*&v88);
    *&v88 = *(v89[5] + 40);
    *(a1 + *(v86 - 24) + 84) = sqrtf(*&v88);
    v90.f64[0] = v83[2];
    v91 = v83[6];
    v92 = a1 + *(v86 - 24);
    v93 = v91 + *(v92 + 120);
    v90.f64[1] = v83[4];
    *(v92 + 104) = vaddq_f64(v90, *(v92 + 104));
    *(v92 + 120) = v93;
    *v90.f64 = v91;
    *(a1 + 332) = *(a1 + 332) - *v90.f64;
    *v90.f64 = *(v89[2] + 16) + *(v89[4] + 32);
    *(a1 + *(v86 - 24) + 128) = sqrtf(*v90.f64);
    *v90.f64 = *(v89[6] + 48);
    *(a1 + *(v86 - 24) + 140) = sqrtf(*v90.f64);
    *(a1 + *(v86 - 24) + 88) = *(a1 + *(v86 - 24) + 88) + v83[7];
    *v90.f64 = *(v89[7] + 56);
    *(a1 + *(v86 - 24) + 96) = sqrtf(*v90.f64);
    *(a1 + *(v86 - 24) + 152) = *(a1 + *(v86 - 24) + 152) + v83[8];
    *v90.f64 = *(v89[8] + 64);
    *(a1 + *(v86 - 24) + 160) = sqrtf(*v90.f64);
    v94 = *(a1 + 12);
    if (v94 < 11)
    {
      if (v94 < 9)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v95 = a1 + *(v86 - 24);
      v96 = v83[11] + *(v95 + 208);
      *(v95 + 208) = v96;
      v97 = *(v89[11] + 88);
      *(a1 + *(v86 - 24) + 212) = sqrtf(v97);
    }

    v112 = a1 + *(v86 - 24);
    v113 = v83[9] + *(v112 + 216);
    *(v112 + 216) = v113;
    v114 = *(v89[9] + 72);
    *(a1 + *(v86 - 24) + 220) = sqrtf(v114);
    if (v94 >= 0xC)
    {
      v115 = a1 + *(v86 - 24);
      v116 = v83[12] + *(v115 + 224);
      *(v115 + 224) = v116;
      v117 = *(v89[12] + 96);
      *(a1 + *(v86 - 24) + 228) = sqrtf(v117);
LABEL_81:
      v124 = a1 + *(v86 - 24);
      v125 = v83[10] + *(v124 + 232);
      *(v124 + 232) = v125;
      v126 = *(v89[10] + 80);
      *(a1 + *(v86 - 24) + 236) = sqrtf(v126);
      goto LABEL_82;
    }

    if (v94 >= 0xA)
    {
      goto LABEL_81;
    }

LABEL_82:
    v127 = sqrt(*(a1 + *(v86 - 24) + 112) * *(a1 + *(v86 - 24) + 112) + *(a1 + *(v86 - 24) + 104) * *(a1 + *(v86 - 24) + 104));
    *(a1 + 331) = v127;
    goto LABEL_146;
  }

  v98 = v173[3];
  v99 = v98 * *(a1 + 168) + *(a1 + 167) * v84;
  v100 = v98 * *(a1 + 172) + *(a1 + 171) * v84;
  v101 = -v173[5];
  v170 = v99;
  v171 = v100;
  v172 = v101;
  v102 = *a1;
  v103 = *a1;
  v104 = a1 + *(*a1 - 24);
  BlueFin::ned2lla((v104 + 8), &v170, &v168);
  v105 = v169;
  *(v104 + 8) = v168;
  *(v104 + 24) = v105;
  *(a1 + *(v103 - 24) + 88) = *(a1 + *(v103 - 24) + 88) + v83[7];
  *(a1 + *(v103 - 24) + 152) = *(a1 + *(v103 - 24) + 152) + v83[8];
  v106 = a1 + *(v103 - 24);
  *&v105 = v83[4] + *(v106 + 176);
  *(v106 + 176) = v105;
  *&v105 = v83[6];
  *(a1 + 332) = *(a1 + 332) + *&v105;
  v107 = *(a1 + 12);
  if (v107 < 11)
  {
    if (v107 < 9)
    {
      goto LABEL_85;
    }

    v110 = a1[5];
  }

  else
  {
    v108 = a1 + *(v103 - 24);
    v109 = v83[11] + *(v108 + 208);
    *(v108 + 208) = v109;
    v110 = a1[5];
    v111 = *(v110[11] + 88);
    *(a1 + *(v103 - 24) + 212) = sqrtf(v111);
  }

  v118 = a1 + *(v103 - 24);
  v119 = v83[9] + *(v118 + 216);
  *(v118 + 216) = v119;
  v120 = *(v110[9] + 72);
  *(a1 + *(v103 - 24) + 220) = sqrtf(v120);
  if (v107 < 0xC)
  {
    if (v107 < 0xA)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v121 = a1 + *(v103 - 24);
    v122 = v83[12] + *(v121 + 224);
    *(v121 + 224) = v122;
    v123 = *(v110[12] + 96);
    *(a1 + *(v103 - 24) + 228) = sqrtf(v123);
  }

  v128 = a1 + *(v103 - 24);
  v129 = v83[10] + *(v128 + 232);
  *(v128 + 232) = v129;
  v130 = *(v110[10] + 80);
  *(a1 + *(v103 - 24) + 236) = sqrtf(v130);
LABEL_85:
  v131 = *(a1 + 331);
  if (v131 <= 0.0)
  {
    if (v131 < 0.0)
    {
      v132 = 255;
    }

    else
    {
      v132 = 0;
    }
  }

  else
  {
    v132 = 1;
  }

  v133 = v83[2];
  if (v133 <= 0.0)
  {
    if (v133 < 0.0)
    {
      v134 = 255;
    }

    else
    {
      v134 = 0;
    }
  }

  else
  {
    v134 = 1;
  }

  v135 = fabsf(v131);
  v136 = a1[597];
  if (*(v136 + 4216) == 4 && (v137 = v136 + 4096, *(v137 + 128) == 1))
  {
    v138 = *(v137 + 130);
  }

  else
  {
    v138 = 1;
  }

  v139 = v131;
  v140 = fabs(v133);
  v141 = v135;
  v142 = *(a1 + 1716);
  if (v142 == -7200001)
  {
    v143 = v132 == v134;
    if (v140 > v141 && ((v143 | v138) & 1) == 0)
    {
      if (v131 >= 0.0)
      {
        v144 = 0.00000011921;
      }

      else
      {
        v144 = -0.00000011921;
      }

      *(a1 + 331) = v144;
      *(a1 + 1716) = *(a1 + *(v103 - 24) + 200);
      goto LABEL_114;
    }

    v144 = v133 + v139;
LABEL_113:
    *(a1 + 331) = v144;
    goto LABEL_114;
  }

  v145 = v132 == v134;
  if (v140 > v141 && ((v145 | v138) & 1) == 0 && (*(a1 + *(v103 - 24) + 200) - v142) <= 0xBB7)
  {
    if (v131 >= 0.0)
    {
      v144 = 0.00000011921;
    }

    else
    {
      v144 = -0.00000011921;
    }

    goto LABEL_113;
  }

  v144 = v133 + v139;
  *(a1 + 331) = v144;
  if ((*(a1 + *(v103 - 24) + 200) - v142) >= 0x1771)
  {
    *(a1 + 1716) = -7200001;
  }

LABEL_114:
  v146 = *(a1[281] + 8);
  v147 = 1.5;
  if ((v146 - 1) < 2)
  {
    v147 = 1.0;
  }

  v148 = v147 > fabsf(v144) || BlueFin::GlPeNavGnssMotion::IsNotMoving((a1 + 597), 0.5);
  if (*(a1[284] + 2))
  {
    v149 = (v146 - 3) >= 0xFFFFFFFE;
  }

  else
  {
    v149 = 1;
  }

  v150 = !v149 || v148;
  if (v144 < 0.0 && (v150 & 1) != 0)
  {
    goto LABEL_127;
  }

  if (v144 < 0.0)
  {
    if ((*(v103 + 56))(a1) <= 0x3C)
    {
      v102 = *a1;
    }

    else
    {
      v102 = *a1;
      if (!*(a1[284] + 2))
      {
        v156 = *a1;
        *(a1 + *(v102 - 24) + 176) = *(a1 + *(v102 - 24) + 176) + 3.1416;
        v144 = *(a1 + 331);
        v107 = *(a1 + 12);
LABEL_127:
        *(a1 + 331) = -v144;
        if (v107 >= 1)
        {
          v151 = (v107 + 1) - 1;
          v152 = (a1[5] + 8);
          do
          {
            v153 = *v152++;
            *(v153 + 16) = -*(v153 + 16);
            --v151;
          }

          while (v151);
        }

        v154 = *(a1 + 13);
        if (v154 >= 1)
        {
          v155 = (*(a1[5] + 16) + 8);
          do
          {
            *v155 = -*v155;
            ++v155;
            --v154;
          }

          while (v154);
        }
      }
    }
  }

  v157 = a1 + *(v102 - 24);
    ;
  }

    ;
  }

  *(v157 + 176) = m;
  v159 = *(a1 + 331);
  v160 = (a1 + *(v102 - 24));
  v161 = *(a1 + 171);
  v162 = *(a1 + 172);
  v163 = -*(a1 + 332);
  v160[13] = *(a1 + 168) * 0.0 + *(a1 + 167) * v159;
  v160[14] = v162 * 0.0 + v161 * v159;
  v160[15] = v163;
  v164 = __sincos_stret(*(a1 + *(v102 - 24) + 176));
  a1[167] = *&v164.__cosval;
  a1[168] = *&v164.__sinval;
  a1[169] = 0;
  a1[171] = *&v164.__sinval;
  *(a1 + 172) = -v164.__cosval;
  a1[173] = 0;
  *(a1 + 175) = 0u;
  a1[177] = 0xBFF0000000000000;
  v83 = v173;
LABEL_146:
  bzero(v83 + 1, 8 * v174);
  v165 = *MEMORY[0x29EDCA608];
}

double BlueFin::SKFVectorDim<21>::SKFVectorDim(uint64_t a1, int a2)
{
  v2 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = a2;
  *(a1 + 12) = 21;
  if (a2 >= 22)
  {
    DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 497, "LEN >= len");
  }

  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *v2 = 0u;
  *a1 = v2;
  return result;
}

BlueFin::SKFVector *BlueFin::SKFVectorDim<21>::SKFVectorDim(BlueFin::SKFVector *a1, const BlueFin::SKFVector *a2)
{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 21;
  if (v2 >= 22)
  {
    DeviceFaultNotify("glpe_matrix.h", 510, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 510, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}

BOOL BlueFin::GlPeNavGnssKF::IsInXtcNow(BlueFin::GlPeNavGnssKF *this)
{
  v3 = *(this + 571);
  if (v3 == -7200001)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  v5 = this + *(*this - 24);
  v6 = *(v5 + 50) - v3;
  BlueFin::lla2ned(v5 + 1, this + 286, 0, &v8);
  return sqrt(v9 * v9 + v8 * v8) < 2.0 || v6 < 0x9C4;
}

void BlueFin::GlPeNavGnssKF::UpdateHeading(BlueFin::GlPeNavGnssKF *this)
{
  if ((*(*this + 72))(this) >> 4 >= 0x177)
  {
    v2 = 0.1;
  }

  else
  {
    v2 = 0.5;
  }

  v3 = *(this + 281);
  v4 = *(v3 + 8);
  if (v4 <= 2)
  {
    if ((v4 - 1) >= 2)
    {
      if (!v4)
      {
        v2 = 0.277;
      }
    }

    else
    {
      v2 = dbl_298A44010[(*(v3 + 16) & 0xFFFFFFFE) == 2];
    }
  }

  else
  {
    v5 = 2.0;
    if (v4 != 6)
    {
      v5 = v2;
    }

    if ((v4 - 3) >= 3)
    {
      v2 = v5;
    }

    else
    {
      v2 = 1.0;
    }
  }

  v6 = *(this + 5);
  v7 = *(*(v6 + 32) + 32);
  v8 = *(*(v6 + 16) + 16);
  v9 = v7 + v8;
  v10 = sqrtf(v9);
  v11 = (v4 - 3) <= 3 && *(v3 + 16) == 9;
  v12 = *this;
  if (v10 >= 3.0 || (v13 = *this, v14 = this + *(v12 - 24), sqrt(*(v14 + 14) * *(v14 + 14) + *(v14 + 13) * *(v14 + 13)) <= v10))
  {
    v18 = 0;
  }

  else
  {
    BlueFin::GlSignalIdSet::GetSvIdSet(v14 + 352, &v32);
    v15 = 0;
    v16 = (v32 + 4 * v33 - 4);
    do
    {
      if (*v16)
      {
        v17 = *v16 - (((*v16 >> 1) & 0x5B6DB6DB) + ((*v16 >> 2) & 0x9249249));
        v15 = ((v17 + (v17 >> 3)) & 0xC71C71C7) + v15 - 63 * (((v17 + (v17 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v16;
    }

    while (v16 >= v32);
    v18 = v15 > 4u || v11;
    v12 = *this;
  }

  v19 = this + *(v12 - 24);
  v21 = *(v19 + 13);
  v20 = *(v19 + 14);
  v22 = atan2(v20, v21);
    ;
  }

  while (i < 0.0)
  {
    i = i + 6.28318531;
  }

  if (sqrt(v20 * v20 + v21 * v21) > v2)
  {
    if (!v18)
    {
      if (!BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this))
      {
        return;
      }

      v12 = *this;
    }

    v24 = i;
    *(this + *(v12 - 24) + 176) = v24;
    v25 = (this + *(v12 - 24));
    v26 = v25[13];
    v27 = v25[14] * v25[14];
    v28 = v7 * (v26 * v26) + v8 * v27;
    v29 = sqrt(v27 + v26 * v26);
    v30 = v28 / (v29 * v29 * (v29 * v29));
    if (v30 > 9.8696044)
    {
      v30 = 9.8696044;
    }

    v31 = sqrt(v30);
    *(v25 + 46) = v31;
  }
}

uint64_t BlueFin::GlPeAltMgr::GetExtAlt(double *a1, double *a2, double *a3, double *a4)
{
  v8 = *a1;
  v9 = *(*a1 + 1161) == 1 && (**(a1 + 1) - *(v8 + 1136)) < 0xBB8;
  if (*(a1 + 50) == 1)
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v8 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v8 + 3040), *(v8 + 3040))) >= 160000.0 || (v11 = *(v8 + 3064), v11 <= 0.0) || v11 >= 50.0;
  v13 = BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(a1 + 32, &v23, a2);
  if ((v10 & v13) == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0.0;
    v26 = 2000.0;
    if ((BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(a1 + 32, &v23, a2) & 1) == 0)
    {
      DeviceFaultNotify("glpe_altmgr.cpp", 80, "GetExtAlt", "m_otAltAsst.altAsstFromCitySetFine(otAltAsst, rotLla)");
      v22 = 80;
      goto LABEL_36;
    }

    v14 = pow(a1[2] * 100.0 / a1[3], 0.190263);
    v15 = (1.0 - v14) * 44330.77 - v25;
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    v16 = sqrt(a1[4] * a1[4] + (v26 * v26));
    v10 = v15 < v16 + v16;
  }

  if (v9)
  {
    v17 = *a1;
    *a3 = *(*a1 + 1112);
    v18 = *(v17 + 1120);
    *a4 = v18;
    LODWORD(v17) = *a3 > -999.0;
    v19 = v18 > 0.0 && *a3 > -999.0;
    result = v19;
    if (v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LODWORD(v19) = 0;
    result = 0;
  }

  if (((v10 ^ 1) & 1) == 0)
  {
    *a3 = (1.0 - pow(a1[2] * 100.0 / a1[3], 0.190263)) * 44330.77;
    *a4 = a1[4];
    return 2;
  }

LABEL_26:
  if (((v12 | v19) & 1) == 0)
  {
    v19 = *a1;
    *a3 = *(*a1 + 3032);
    v21 = *(v19 + 3064);
    *a4 = v21;
    LODWORD(v19) = *a3 > -999.0 && v21 > 0.0;
    if (*a3 > -999.0 && v21 > 0.0)
    {
      result = 3;
    }

    else
    {
      result = result;
    }
  }

  if (((v19 | v13 ^ 1) & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0.0;
    v26 = 2000.0;
    if (BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(a1 + 32, &v23, a2))
    {
      *a3 = v25;
      *a4 = v26;
      return 4;
    }

    DeviceFaultNotify("glpe_altmgr.cpp", 132, "GetExtAlt", "m_otAltAsst.altAsstFromCitySetFine(otAltAsst, rotLla)");
    v22 = 132;
LABEL_36:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_altmgr.cpp", v22, "m_otAltAsst.altAsstFromCitySetFine(otAltAsst, rotLla)");
  }

  return result;
}

double BlueFin::GlPeNavGnssMotion::GetNotMovingFactor(BlueFin::GlPeNavGnssMotion *this)
{
  v1 = *(*this + 4216);
  if (v1 != 6)
  {
    if (v1 == 1 && *(*this + 4224) == 1)
    {
      result = 1.0;
      if ((*(*this + 4226) & 1) == 0)
      {
        return result;
      }
    }

LABEL_8:
    v3 = *(this + 5);
    v4 = *(this + 8);
    result = 0.0;
    if (v3 < v4)
    {
      return 1.0 - v3 / v4;
    }

    return result;
  }

  if (*(*this + 4224) != 1)
  {
    goto LABEL_8;
  }

  result = 1.0;
  if (*(*this + 4226) == 1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssMotion::SetNoMotionSpeedAndTrigger(uint64_t this, double a2, double a3, unsigned int a4, int a5)
{
  v5 = fabs(a2);
  *(this + 40) = v5;
  if (*(this + 48))
  {
    v6 = *(this + 64);
    v7 = *(*(this + 16) + 8);
    if (a5)
    {
      v8 = *(this + 64);
    }

    else
    {
      v8 = v6 * 0.5;
    }

    if (v7 == 3 || v7 == 5)
    {
      v6 = v6 * 0.5;
    }

    if ((v7 - 1) < 2)
    {
      v6 = v8;
    }

    if (v6 <= v5)
    {
      *(this + 80) = 0;
    }

    else
    {
      ++*(this + 80);
    }

    return this;
  }

  v10 = a3 * 0.3;
  if (v10 < 0.5)
  {
    v10 = 0.5;
  }

  v11 = *(this + 52);
  if (v5 <= v10)
  {
    if (v11)
    {
      *(this + 52) = 0;
      return this;
    }

    if (a4 < 0x1F)
    {
      return this;
    }

LABEL_25:
    *(this + 48) = 1;
    return this;
  }

  v12 = **(this + 8);
  if (!v11)
  {
    *(this + 52) = v12;
    return this;
  }

  if ((v12 - v11) > *(this + 72))
  {
    goto LABEL_25;
  }

  return this;
}

void BlueFin::GlPeNavGnssResidMon::UpdateRange(BlueFin::GlPeNavGnssResidMon *this, const BlueFin::GlPeNavUtil *a2, const BlueFin::GlSignalIdSet *a3, const BlueFin::GlSignalIdSet *a4, uint64_t a5, char a6, int a7)
{
  v117 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    __asm { FMOV            V0.2D, #20.0 }

    *(this + 8) = _Q0;
    *(this + 24) = xmmword_298A44820;
    *(this + 22) = 0;
    *(this + 6) = xmmword_298A44820;
    *(this + 182) = 0;
    *(this + 732) = 0;
    *(this + 89) = 0;
    *(this + 718) = 0;
    *(this + 338) = 0;
    *(this + 1356) = 0;
    *(this + 167) = 0;
    *(this + 1342) = 0;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    goto LABEL_82;
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v17 = BlueFin::GlSetBase::Cnt(a3);
  if (v17)
  {
    v18 = v17;
    BlueFin::GlSetBase::GlSetBase(v112, v113, 0x13u, a3);
    v19 = *a2;
    v20 = a2 + *(*a2 - 24);
    v115 = *(v20 + 8);
    v116 = *(v20 + 3);
    v21 = *(a2 + *(v19 - 24) + 88);
    BlueFin::GlPeNavUtil::ComputeRangeResidVec(a2, v112, &v115, a5, 0, 0, 0, 1, a6, 1);
    if (v111)
    {
      v103 = 0;
      v104 = v106;
      v105 = 8;
      memset(v106, 0, 32);
      v107 = xmmword_298A41DA0;
      v108 = vdup_n_s32(0x42C60000u);
      v109 = 1120272384;
      v100 = v102;
      v101 = 0x6400000000;
      bzero(v102, 0x328uLL);
      LOBYTE(v115) = *(a3 + 8);
      memcpy(&v115 + 8, *a3, 4 * v115);
      WORD1(v115) = 0;
      BYTE1(v115) = 0;
      DWORD1(v115) = DWORD2(v115);
      BlueFin::GlSetIterator::operator++(&v115);
      if (BYTE1(v115) != v115)
      {
        v24 = 1;
        while (WORD1(v115) < 0x23FuLL)
        {
          v25 = *(this + 170);
          v26 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v115);
          v27 = *v26;
          LODWORD(v26) = v26[1];
          LOBYTE(v95) = v27;
          DWORD1(v95) = v26;
          WORD4(v95) = WORD1(v115);
          if (*(BlueFin::GlPeMsmtMgr::GetMeMeas(v25, &v95, 0, 0) + 29) > 17.0)
          {
            v28 = *(v110 + 8 * v24);
            BlueFin::SKFVector::AddLen(&v100);
            *&v100[8 * v101] = v28;
          }

          BlueFin::GlSetIterator::operator++(&v115);
          ++v24;
          if (BYTE1(v115) == v115)
          {
            goto LABEL_11;
          }
        }

LABEL_83:
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

LABEL_11:
      BlueFin::SKFVector::Quartiles(&v110, this + 5, v22, v23);
      v32 = v111;
      if (v111 < 1)
      {
        v40 = 0.0;
      }

      else
      {
        v33 = v110;
        v34 = (v110 + 8);
        v35 = v111;
        do
        {
          *v34 = fabs(*v34);
          ++v34;
          --v35;
        }

        while (v35);
        v36 = *(v33 + 8);
        if (v32 != 1)
        {
          v37 = v32 - 1;
          v38 = (v33 + 16);
          do
          {
            v39 = *v38++;
            v36 = v36 + v39;
            --v37;
          }

          while (v37);
        }

        v40 = v36 / v32;
      }

      v94 = v40;
      BlueFin::SKFVector::Median(&v110, v29, v30, v31);
      if (v101 > 4)
      {
        BlueFin::SKFVector::Quartiles(&v100, this + 5, v41, v42);
        v47 = v101;
        if (v101 >= 1)
        {
          v48 = (v100 + 8);
          do
          {
            *v48 = fabs(*v48);
            ++v48;
            --v47;
          }

          while (v47);
        }

        BlueFin::SKFVector::Median(&v100, v44, v45, v46);
      }

      v49 = v43;
      if (v18 > 6)
      {
        for (i = 0; i != 1200; i += 12)
        {
          v58 = &v115 + i;
          *v58 = 0;
          *(v58 + 1) = -1;
          *(v58 + 4) = 575;
        }

        LOBYTE(v95) = *(a3 + 8);
        memcpy(&v95 + 8, *a3, 4 * v95);
        WORD1(v95) = 0;
        BYTE1(v95) = 0;
        DWORD1(v95) = DWORD2(v95);
        BlueFin::GlSetIterator::operator++(&v95);
        if (BYTE1(v95) != v95)
        {
          v59 = &v115;
          do
          {
            v60 = WORD1(v95);
            if (WORD1(v95) >= 0x23FuLL)
            {
              goto LABEL_83;
            }

            v61 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v95);
            v62 = v61[1];
            *v59 = *v61;
            *(v59 + 1) = v62;
            *(v59 + 4) = v60;
            BlueFin::GlSetIterator::operator++(&v95);
            v59 = (v59 + 12);
          }

          while (BYTE1(v95) != v95);
        }

        v97 = v99;
        v98 = 8;
        memset(v99, 0, sizeof(v99));
        if (v111 > 1)
        {
          v64 = fabs(*(v110 + 8));
          LODWORD(v63) = 1;
          v65 = 2;
          do
          {
            v66 = fabs(*(v110 + 8 * v65));
            if (v64 > v66)
            {
              LODWORD(v63) = v65;
              v64 = v66;
            }

            ++v65;
          }

          while (v111 + 1 != v65);
          v63 = v63;
        }

        else
        {
          v63 = 1;
        }

        if (v111 < 1)
        {
          v71 = 1.0;
        }

        else
        {
          v67 = 0;
          v68 = 0.0;
          do
          {
            v69 = fabs(*(v110 + 8 + v67));
            if (v68 < v69 || v67 == 0)
            {
              v68 = v69;
            }

            v67 += 8;
          }

          while (8 * v111 != v67);
          v71 = v68 + 1.0;
        }

        v72 = 0;
        v73 = *(v110 + 8 * v63);
        *(this + 12) = v71;
        do
        {
          v74 = v110;
          if (v111 >= 2)
          {
            v76 = fabs(*(v110 + 8));
            v75 = 1;
            v77 = 2;
            do
            {
              v78 = fabs(*(v110 + 8 * v77));
              if (v76 > v78)
              {
                v75 = v77;
                v76 = v78;
              }

              ++v77;
            }

            while (v111 + 1 != v77);
          }

          else
          {
            v75 = 1;
          }

          v79 = *(&v115 + 12 * v75 - 12);
          *(v97 + ((v79 >> 3) & 0x1C)) |= 1 << v79;
          v80 = *(v74 + 8 * v75);
          ++v72;
          *(v74 + 8 * v75) = *(this + 12);
          if (v72 >= 3u)
          {
            BlueFin::GlPeNavUtil::ComputeDops(a2, &v97);
            BlueFin::stDops::operator=(&v103, &v95);
          }
        }

        while (v18 > v72 && (v72 < 7u || *(&v107 + 1) > 2.0));
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
        }

        v93 = v80 - v73;
        v51 = v110;
        v50 = v111;
        a5 = a5;
      }

      else
      {
        v50 = v111;
        v51 = v110;
        if (v111 < 1)
        {
          v93 = 0.0;
        }

        else
        {
          v52 = 0.0;
          v53 = 8;
          v54 = v111;
          do
          {
            v55 = fabs(*(v110 + v53));
            if (v52 < v55 || v53 == 8)
            {
              v52 = v55;
            }

            v53 += 8;
            --v54;
          }

          while (v54);
          v93 = v52;
        }
      }

      bzero((v51 + 8), 8 * v50);
      BlueFin::GlSetBase::operator=(v112, a4);
      v113[1] = *(a4 + 28);
      v113[2] = *(a4 + 44);
      *v114 = *(a4 + 60);
      *&v114[12] = *(a4 + 72);
      v113[0] = *(a4 + 12);
      v81 = a2 + *(*a2 - 24);
      v95 = *(v81 + 8);
      v96 = *(v81 + 3);
      v82 = *(v81 + 11);
      BlueFin::GlPeNavUtil::ComputeRangeResidVec(a2, v112, &v95, a5, 0, 0, 0, 1, a6, 1);
      BlueFin::SKFVector::Clone(&v110, &v115);
      if (BlueFin::GlSetBase::Cnt(a3) <= 9)
      {
        v90 = *this;
      }

      else
      {
        v83 = v111;
        if (v111 >= 1)
        {
          v84 = (v110 + 8);
          do
          {
            *v84 = fabs(*v84);
            ++v84;
            --v83;
          }

          while (v83);
        }

        v85 = BlueFin::GlSetBase::Cnt(a4);
        v89 = v49;
        if (v85 >= 0xA)
        {
          BlueFin::SKFVector::Median(&v110, v86, v87, v88);
        }

        v90 = *this;
        *(this + 13) = *(this + 13) + *this * (v89 - *(this + 13));
      }

      v91.f64[0] = v93;
      v91.f64[1] = v94;
      *(this + 8) = vmlaq_n_f64(*(this + 8), vsubq_f64(v91, *(this + 8)), v90);
      *(this + 3) = *(this + 3) + v90 * (v49 - *(this + 3));
      ++*(this + 22);
    }
  }

LABEL_82:
  v92 = *MEMORY[0x29EDCA608];
}

void BlueFin::GlPeNavGnssKF::ComputeEA(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, double *a6, int a7, int a8, int *a9)
{
  v16 = *(a1 + 40);
  v17 = *(*(v16 + 8) + 8);
  v18 = *(*(v16 + 24) + 24);
  v19 = sqrtf(v17 + v18);
  v20 = *(a1 + 2256);
  v21 = *(v20 + 136);
  if (v21)
  {
    if (*(v21 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v21 + 3040), *(v21 + 3040))) < 160000.0 && *(v21 + 3009) == 1)
    {
      v22 = a1 + *(*a1 - 24);
      if (BlueFin::GlSetBase::Cnt((v22 + 264)) <= 3)
      {
        DistanceToExtLoc = BlueFin::GlPeExtLoc::GetDistanceToExtLoc(v20, (v22 + 8));
        v24 = *(*(a1 + 2256) + 136);
        v25 = 0.0;
        if (v24)
        {
          if (*(v24 + 3008) == 1)
          {
            v26 = *(v24 + 3040);
            v27 = vmulq_f64(v26, v26);
            if (vaddvq_f64(v27) < 160000.0)
            {
              v25 = sqrt(v27.f64[1] + v26.f64[0] * v26.f64[0]);
            }
          }
        }

        if (v25 > DistanceToExtLoc)
        {
          DistanceToExtLoc = v25;
        }

        v28 = fmaxf(DistanceToExtLoc, 399.0);
        if (v19 < v28)
        {
          v28 = v19;
        }

        v19 = v28 / 1.5;
      }
    }
  }

  v29 = (v19 * 1.5);
  *a3 = v29;
  if ((*(*(a1 + 2248) + 16) & 0xFFFFFFFE) == 2)
  {
    v30 = fmin(*(a1 + 4968) * 1.5, 48.0);
    if (v30 > v29)
    {
      v29 = v30;
    }

    *a3 = v29;
  }

  v31 = *(a1 + 40);
  v32 = *(v31[5] + 40);
  v33 = sqrtf(v32);
  v125 = a8;
  v123 = a6;
  if (*(a1 + 26) == 1)
  {
    *a4 = v33 * 1.5;
    v34 = *(v31[7] + 56);
    *a6 = sqrtf(v34) * 1.5;
    v35 = *(v31[2] + 16) + *(v31[4] + 32);
    v36 = sqrtf(v35) * 0.625;
  }

  else
  {
    *a4 = (v33 * 1.5);
    v37 = *(v31[7] + 56);
    *a6 = (sqrtf(v37) * 1.5);
    v38 = *(v31[2] + 16);
    v36 = sqrtf(v38);
  }

  *a5 = v36;
  v39 = *a9;
  v40 = *(a1 + 16);
  v133 = 0;
  v134 = v136;
  v135 = 8;
  memset(v136, 0, 32);
  v137 = xmmword_298A41DA0;
  v138 = vdup_n_s32(0x42C60000u);
  v139 = 1120272384;
  BlueFin::stDops::stDops(v140, &v133);
  v141 = v40;
  v41 = **(a1 + 8);
  BlueFin::GlSignalIdSet::GetSvIdSet((a1 + *(*a1 - 24) + 264), &v131);
  v128.n128_u64[0] = *(a1 + *(*a1 - 24) + 88);
  LODWORD(v126) = **(a1 + 2240);
  v130 = 0;
  BlueFin::GlPeDops::GetDops();
  v42 = *a1;
  v43 = *(*a1 - 24);
  v44 = BlueFin::GlSetBase::Cnt((a1 + v43 + 264));
  v45 = v44;
  v46 = *(*(a1 + 2256) + 60);
  if (v46 && (**(a1 + 8) - v46) <= 0x2710 && v44 < 4)
  {
    v47 = 1;
  }

  else
  {
    v48 = a2;
    v49 = v39;
    v50 = a4;
    if (v44 <= 3)
    {
      *a3 = BlueFin::GlPeNavGnssKF::DynamicEAUpdate(a1, *a5, *a3);
      v43 = *(v42 - 24);
    }

    v51 = a1 + v43;
    v131 = *(a1 + v43 + 8);
    v52 = *(v42 + 192);
    v132 = *(a1 + v43 + 24);
    v53 = *(a1 + *(v42 - 24) + 88);
    v54 = **(a1 + 2240);
    v55 = v52(a1);
    BlueFin::GlPeNavUtil::ComputeWeightedRangeResid(a1, v51 + 264, &v131, v54, 0, 0, 0, 1, v55);
    if (v45 >= 4 && ((v57 = v56, v58 = *(a1 + 2272), *(v58 + 2) < 1) || *(v58 + 45)))
    {
      v59 = expf(*(&v137 + 1) / 5.0);
      if (v59 > 3.0)
      {
        v59 = 3.0;
      }

      v60 = *a5 * v59;
      *a5 = v60;
      a4 = v50;
      if ((*(*(a1 + 2248) + 8) - 1) >= 2)
      {
        *a3 = BlueFin::GlPeNavGnssKF::DynamicEAUpdate(a1, v60, *a3);
      }

      if (*v50 >= v57 * *v138.i32)
      {
        v61 = *v50;
      }

      else
      {
        v61 = v57 * *v138.i32;
      }

      v47 = 0;
      v62 = expf(*v138.i32 / 10.0) + 2.0;
      if (v62 > 3.0)
      {
        v62 = 3.0;
      }

      *v50 = v61 * v62;
      *v123 = fmin(*v123, 48.0);
    }

    else
    {
      a4 = v50;
      v47 = 0;
      if (*(&v137 + 1) > 10.0)
      {
        *a3 = BlueFin::GlPeNavGnssKF::DynamicEAUpdate(a1, *a5, *a3);
      }
    }

    LOWORD(v39) = v49;
    a2 = v48;
  }

  v63 = *(a1 + 2272);
  if (*(v63 + 2) <= 0)
  {
    v64 = v125 ^ 1;
    goto LABEL_64;
  }

  v64 = v125 ^ 1;
  if ((v47 | a7 | v125 ^ 1 | *(v63 + 45)))
  {
    goto LABEL_64;
  }

  v65 = *(a2 + 128);
  if (v65 >= 400.0)
  {
    v64 = 0;
    goto LABEL_64;
  }

  v66 = *v123;
  if (*(a2 + 144) * 0.5 >= *v123)
  {
    v66 = *(a2 + 144) * 0.5;
  }

  *v123 = v66;
  v67 = v65 * 0.5;
  if (v67 < *a3)
  {
    v67 = *a3;
  }

  *a3 = v67;
  v68 = *(a2 + 24);
  if (*v68)
  {
    goto LABEL_52;
  }

  v69 = *(a2 + 32);
  if (v69 >= 2)
  {
    v70 = v69 - 1;
    v71 = v68 + 1;
    while (!*v71++)
    {
      if (!--v70)
      {
        goto LABEL_61;
      }
    }

LABEL_52:
    BlueFin::lla2ned((a1 + *(*a1 - 24) + 8), a2, 0, &v131);
    v67 = sqrt(*(&v131 + 1) * *(&v131 + 1) + *&v131 * *&v131);
    if (v67 < *a3)
    {
      v67 = *a3;
    }

    *a3 = v67;
  }

LABEL_61:
  v64 = 0;
  if (*(*(a1 + 2248) + 8) == 6 && v67 > 40.0)
  {
    v64 = 0;
    *a3 = fmax(v67, 64.0);
  }

LABEL_64:
  v73 = *(a1 + 2616);
  v128 = v73;
  v73.n128_u64[0] = *(a1 + 2632);
  v129 = v73.n128_u64[0];
  v74 = *(a1 + 2248);
  if (*(v74 + 1764))
  {
    v75 = 60;
  }

  else
  {
    v75 = 180;
  }

  v73.n128_u32[0] = *(v74 + 1328);
  if (v73.n128_f32[0] > 4.0 && (v73.n128_u32[0] = *(v74 + 1320), v73.n128_f32[0] < 20.0) && *(v74 + 76) >= v75 && ((*(v74 + 1764) & 1) != 0 || *(v74 + 64) == 1))
  {
    v77 = 2;
    if (!v125)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v76 = *(a1 + 2272);
    if (*(v76 + 2) < 1 || *(v76 + 45))
    {
      if (*(v74 + 1989))
      {
        v77 = 1;
        if (!v125)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = *(a1 + 1800);
        if (!v125)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v77 = 5;
      if (!v125)
      {
        goto LABEL_93;
      }
    }
  }

  if (v77 > v45 || (v73.n128_f64[0] = *a3, *a3 >= 50.0))
  {
    if ((*(*(a1 + 2272) + 1) & 1) != 0 || (*(*a1 + 80))(a1, v73) < *(*(a1 + 2272) + 8))
    {
      *(a1 + 2192) = 1;
    }
  }

  else
  {
    v78 = *a1;
    *(a1 + 1608) = *(a1 + *(*a1 - 24) + 200);
    v79 = a1 + *(v78 - 24);
    v80 = *(v79 + 24);
    *(a1 + 2616) = *(v79 + 8);
    *(a1 + 2632) = v80;
    if (*(a1 + 2192) == 1)
    {
      *(a1 + 2196) = *(a1 + *(v78 - 24) + 200);
      *(a1 + 2192) = 0;
    }

    if ((*(v78 + 264))(a1) && *(a2 + 128) < 100.0 && *(a1 + *(*a1 - 24) + 200) > (*(a1 + 2204) + 10000))
    {
      *(a1 + 2200) = 0;
    }
  }

LABEL_93:
  v81 = *a1;
  if (((v47 | v64) & 1) == 0)
  {
    v82 = (*(v81 + 72))(a1);
    v81 = *a1;
    if (v82 >= 0x1389 && (v39 & 0x1000) == 0)
    {
      BlueFin::lla2ned((a1 + *(v81 - 24) + 8), v128.n128_f64, 0, &v131);
      v83 = sqrt(*(&v131 + 1) * *(&v131 + 1) + *&v131 * *&v131);
      v84 = dbl_298A43FC0[v83 < 400.0];
      if (v83 >= 400.0 || *a3 >= 200.0)
      {
        v83 = 450.0;
      }

      if ((*(*(a1 + 2248) + 8) - 1) >= 2)
      {
        v83 = v84;
      }

      if (*a3 >= v83)
      {
        v85 = *a3;
      }

      else
      {
        v85 = v83;
      }

      *a3 = v85;
      if (*a4 >= v83)
      {
        v83 = *a4;
      }

      *a4 = v83;
      v81 = *a1;
    }
  }

  v87 = (*(v81 + 72))(a1) < 0x1771 || v45 > 1u;
  v88 = *(a1 + 4776);
  if (*(v88 + 4216) == 6 && (v89 = v88 + 4096, *(v89 + 128) == 1))
  {
    v90 = (*(v89 + 130) ^ 1) & v87;
  }

  else
  {
    v90 = 0;
  }

  v92 = (*(*a1 + 72))(a1) >= 0x1771 && (*(*(a1 + 2248) + 8) - 3) < 0xFFFFFFFE;
  v91.n128_f64[0] = *a3;
  if (*a3 > 200.0 && v45 < 3u)
  {
    v92 = 1;
  }

  if (v90)
  {
    v94 = 0;
  }

  else
  {
    v95 = *(a1 + 4776);
    if (*(v95 + 4216) == 1 && (v96 = v95 + 4096, *(v96 + 128) == 1))
    {
      v97 = *(v96 + 130) ^ 1;
    }

    else
    {
      v97 = 0;
    }

    v94 = 0;
    if (!((v47 | v64) & 1 | !v92) && (v39 & 0x1000) == 0 && (v97 & 1) == 0)
    {
      if (v91.n128_f64[0] < 450.0)
      {
        v91.n128_f64[0] = 450.0;
      }

      *a3 = v91.n128_f64[0];
      v94 = 1;
    }
  }

  v98 = *(a1 + 2248);
  if (*(v98 + 1764))
  {
    v99 = 60;
  }

  else
  {
    v99 = 180;
  }

  if (*(v98 + 1328) > 4.0 && *(v98 + 1320) < 20.0 && *(v98 + 76) >= v99 && ((*(v98 + 1764) & 1) != 0 || *(v98 + 64) == 1))
  {
    if (*(v98 + 1989) == 1)
    {
      if ((*(*a1 + 72))(a1, v91) >> 3 >= 0x753 && v45 < 5)
      {
        goto LABEL_150;
      }

      v91.n128_f64[0] = *a3;
    }

    else if (v45 < 5)
    {
      goto LABEL_150;
    }

    *a3 = fmin(v91.n128_f64[0], 45.0);
    *a4 = fmin(*a4, 45.0);
  }

LABEL_150:
  if (*(*(a1 + 2256) + 88))
  {
    v100 = v64;
  }

  else
  {
    v100 = 1;
  }

  if (v100)
  {
    goto LABEL_194;
  }

  v101 = *(a1 + 40);
  v102 = *(*(v101 + 16) + 16);
  if (*(a1 + 26) == 1)
  {
    v102 = v102 + *(*(v101 + 32) + 32);
  }

  if (v102 >= 4.0)
  {
    v103 = 0;
    goto LABEL_160;
  }

  v103 = *((*(*a1 + 200))(a1) + 48) < 1.0;
  if (sqrt(*(a1 + *(*a1 - 24) + 112) * *(a1 + *(*a1 - 24) + 112) + *(a1 + *(*a1 - 24) + 104) * *(a1 + *(*a1 - 24) + 104)) <= 5.0)
  {
LABEL_160:
    v104 = *(*(a1 + 2248) + 8) != 6;
    goto LABEL_161;
  }

  v104 = 0;
LABEL_161:
  v105 = *(a1 + 4776);
  v106 = v105 + 4096;
  v107 = *(v105 + 4216);
  if (v107 != 6 || *(v106 + 128) != 1)
  {
    if (v104)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  if (!v104 && (*(v106 + 130) & 1) != 0)
  {
LABEL_167:
    *(*(a1 + 2256) + 92) = 10;
LABEL_168:
    if (v103)
    {
      goto LABEL_173;
    }

    if (v107 != 6 || (*(v106 + 128) & 1) == 0)
    {
LABEL_172:
      ++*(*(a1 + 2256) + 92);
      goto LABEL_173;
    }

LABEL_171:
    if (*(v106 + 130) != 1)
    {
      goto LABEL_173;
    }

    goto LABEL_172;
  }

  if (!v103)
  {
    goto LABEL_171;
  }

LABEL_173:
  v108 = a1 + *(*a1 - 24);
  v109 = *(v108 + 200);
  v110 = *(a1 + 2256);
  v111 = *(v110 + 88);
  if (*(*(a1 + 2248) + 16) == 1 && BlueFin::GlSetBase::Cnt((v108 + 264)) > 0xC && *(&v137 + 1) < 2.0)
  {
    goto LABEL_193;
  }

  v112 = v109 - v111;
  BlueFin::GlSignalIdSet::GetSvIdSet((v108 + 264), &v131);
  v113 = 0;
  v114 = (v131 + 4 * BYTE8(v131) - 4);
  do
  {
    if (*v114)
    {
      v115 = *v114 - (((*v114 >> 1) & 0x5B6DB6DB) + ((*v114 >> 2) & 0x9249249));
      v113 = ((v115 + (v115 >> 3)) & 0xC71C71C7) + v113 - 63 * (((v115 + (v115 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v114;
  }

  while (v114 >= v131);
  v116 = 0;
  if (v113 >= 0xDu && *(&v137 + 1) < 2.0)
  {
    v116 = v19 * 1.5 * 1.5 < 30.0;
  }

  v110 = *(a1 + 2256);
  if (*(v110 + 92) > 4u || v112 >> 5 > 0x752 || v116)
  {
LABEL_193:
    *(v110 + 96) = 0;
  }

  else
  {
    v117 = *(v110 + 104);
    v118 = *(v110 + 112);
    v119 = a1 + *(*a1 - 24);
    v126 = *(v110 + 64);
    v127 = *(v110 + 80);
    BlueFin::lla2ned((v119 + 8), &v126, 0, &v131);
    v120 = sqrt(*(&v131 + 1) * *(&v131 + 1) + *&v131 * *&v131);
    v121 = *a3;
    if (v120 > 30.0)
    {
      v120 = v120 * (v120 + -30.0) / (sqrt(v117 * v117 + v118 * v118) / 1.41421356 + v120) + 30.0;
    }

    if (v120 >= v121 * 5.0)
    {
      v120 = v121 * 5.0;
    }

    if (v120 >= v121)
    {
      v121 = v120;
    }

    *(*(a1 + 2256) + 96) = 1;
    *a3 = v121;
  }

LABEL_194:
  v122 = (*(a9 + 2) & 0x40) == 0;
  if (*a3 <= 48.0)
  {
    v122 = 1;
  }

  if (((v94 | v122) & 1) == 0)
  {
    *a3 = 48.0;
  }
}

void BlueFin::GlPeNavUtil::ComputeWeightedRangeResid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10;
  v23 = v9;
  v72[695] = *MEMORY[0x29EDCA608];
  if (v24)
  {
    v25 = 1225;
  }

  else
  {
    v25 = 1217;
  }

  if (v11)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 & 0xFFFFFFBF;
  }

  if (BlueFin::GlSetBase::Cnt(v10) >= 0x65)
  {
    v33 = "otThisSignalSet.Cnt() <= GL_CHANNELS";
    DeviceFaultNotify("glpe_navutil.cpp", 784, "ComputeWeightedRangeResid", "otThisSignalSet.Cnt() <= GL_CHANNELS");
    v34 = "glpe_navutil.cpp";
    v35 = 784;
    goto LABEL_29;
  }

  v27 = v72;
  v28 = 5600;
  do
  {
    *(v27 - 8) = 0;
    *(v27 - 1) = -1;
    *v27 = 575;
    v27 += 28;
    v28 -= 56;
  }

  while (v28);
  LODWORD(v68) = *(v22 + 8);
  memcpy(&v69, *v22, 4 * v68);
  HIDWORD(v68) = v69;
  BlueFin::GlSetIterator::operator++(&v68);
  v47 = v15;
  v29 = 0;
  while (BYTE1(v68) != v68)
  {
    v30 = WORD1(v68);
    if (WORD1(v68) >= 0x23FuLL)
    {
      v33 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v34 = "glsignalid.h";
      v35 = 578;
      goto LABEL_29;
    }

    v31 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v68);
    v32 = *v31;
    LODWORD(v31) = v31[1];
    LOBYTE(v65) = v32;
    HIDWORD(v65) = v31;
    LOWORD(v66) = WORD1(v68);
    if (BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v23, &v71[7 * v29], &v65, a9))
    {
      if (LODWORD(v71[7 * v29 + 3]) == -1)
      {
        v26 |= 0x40000u;
      }

      ++v29;
    }

    else
    {
      BlueFin::GlSetBase::Remove(v22, v30);
    }

    BlueFin::GlSetIterator::operator++(&v68);
  }

  v68 = v70;
  v69 = 0x6400000000;
  bzero(v70, 0x328uLL);
  v65 = v67;
  v66 = 0x6400000000;
  bzero(v67, 0x328uLL);
  v63[0] = v64;
  v63[1] = 0x6400000000;
  bzero(v64, 0x328uLL);
  v61[0] = v62;
  v61[1] = 0x6400000000;
  bzero(v62, 0x328uLL);
  v52[0] = v63;
  v52[1] = v19;
  v52[2] = v21;
  v53 = v17;
  v54 = 0;
  v55 = v26;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0x4008000000000000;
  v51[0] = &v68;
  v51[1] = &v65;
  v51[2] = 0;
  v51[3] = v61;
  v51[4] = v13;
  v51[5] = v47;
  memset(&v51[6], 0, 24);
  v48 = v50;
  v49 = 4;
  v50[1] = 0;
  v50[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v48, v29);
  if (!(*(**(v23 + 16) + 16))(*(v23 + 16), v52, v51, v71, &v48))
  {
    if (!v29)
    {
      goto LABEL_26;
    }

    v36 = v29;
    v37 = (v65 + 8);
    v38 = (v68 + 8);
    v39 = (v61[0] + 8);
    v40 = 0.0;
    v41 = 0.0;
    do
    {
      if (*v39 <= 0.0)
      {
        v33 = "otR(i) > 0.0";
        DeviceFaultNotify("glpe_navutil.cpp", 822, "ComputeWeightedRangeResid", "otR(i) > 0.0");
        v34 = "glpe_navutil.cpp";
        v35 = 822;
        goto LABEL_29;
      }

      v42 = *v38++;
      v43 = v42;
      v44 = *v37++;
      v45 = 1.0 / sqrt(*v39);
      v41 = v41 + vabdd_f64(v43, v44) * v45;
      v40 = v40 + v45;
      ++v39;
      --v36;
    }

    while (v36);
    if (v40 > 0.0)
    {
      goto LABEL_26;
    }

LABEL_20:
    v33 = "dSumRInv > 0.0";
    DeviceFaultNotify("glpe_navutil.cpp", 844, "ComputeWeightedRangeResid", "dSumRInv > 0.0");
    v34 = "glpe_navutil.cpp";
    v35 = 844;
LABEL_29:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v34, v35, v33);
  }

  bzero(*v22, ((4 * *(v22 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (v29)
  {
    goto LABEL_20;
  }

LABEL_26:
  v46 = *MEMORY[0x29EDCA608];
}

double BlueFin::GlPeNavGnssKF::DynamicEAUpdate(BlueFin::GlPeNavGnssKF *this, double a2, double a3)
{
  v3 = *(this + 281);
  if ((*(v3 + 1989) & 1) == 0)
  {
    if (*(v3 + 16) == 1)
    {
      v4 = *(v3 + 8);
      v5 = (v4 - 3) < 4;
    }

    else
    {
      v5 = 0;
      v4 = *(v3 + 8);
    }

    v6 = 0.25;
    if ((v4 - 1) < 2 || (v6 = 1.0, v4 == 6 || v5))
    {
      v7 = v6 + a2 + *(this + 1334);
      if (v7 < a3)
      {
        return v7;
      }
    }
  }

  return a3;
}

uint64_t BlueFin::GlPeNavGnssKF::TunnelUrbanPosAssist(uint64_t *a1, double *a2)
{
  v4 = (*(*a1 + 72))(a1);
  if ((*(a1[281] + 8) - 1) >= 2)
  {
    v7 = v4;
    v6 = a1[284];
    v5 = *a1;
  }

  else
  {
    v5 = *a1;
    v6 = a1[284];
    v7 = *(a1 + *(*a1 - 24) + 200) - *(v6 + 48);
  }

  v8 = *(v6 + 2);
  if (((*(v5 + 64))(a1) / (*(a1 + 546) * 1000.0)))
  {
    v9 = v7 > 0x7D0;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 || v8 > 0;
  v12 = *(a1[281] + 8) - 1;
  if (v12 > 1)
  {
    if (!v11)
    {
      return 0;
    }

    v15 = 0;
    v13 = *a1;
  }

  else
  {
    v13 = *a1;
    v14 = (*(a1 + *(*a1 - 24) + 200) - *(a1[284] + 8)) >> 5;
    v15 = v14 < 0x271;
    if ((v11 & 1) == 0)
    {
      if (v14 <= 0x270)
      {
        v15 = 1;
        goto LABEL_22;
      }

      return 0;
    }
  }

  if (*(a1 + *(v13 - 24) + 80) > 75.0 && !v15)
  {
    return 0;
  }

LABEL_22:
  TrueHeadingRad = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(a1);
  v18 = *(a1 + 735) * 0.0174532925;
  if (v18 >= 0.785398163 || sqrt(*(a1 + *(v13 - 24) + 112) * *(a1 + *(v13 - 24) + 112) + *(a1 + *(v13 - 24) + 104) * *(a1 + *(v13 - 24) + 104)) < 1.0)
  {
    BlueFin::lla2ned(a2, (a1[284] + 16), 0, &v57);
    v19 = a1[281];
    v20 = *(v19 + 8);
    if (v15)
    {
      if (v20 != 6)
      {
        v22 = v57;
        v21 = *v58;
        if (v22 * v22 + v21 * v21 >= 250000.0)
        {
          goto LABEL_32;
        }

LABEL_31:
        TrueHeadingRad = atan2(v21, v22);
        v23 = 1;
LABEL_33:
        v13 = *a1;
        v12 = *(v19 + 8) - 1;
        goto LABEL_35;
      }
    }

    else if (v20 != 6)
    {
      goto LABEL_32;
    }

    if (*(a1 + *(*a1 - 24) + 200) - *(a1[284] + 40) <= 59999)
    {
      v22 = v57;
      v21 = *v58;
      goto LABEL_31;
    }

LABEL_32:
    v23 = 0;
    goto LABEL_33;
  }

  v23 = 1;
LABEL_35:
  v24 = (*(v13 + 56))(a1);
  if (v12 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  if (v24 <= 0x5A)
  {
    v26 = v12 < 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = BlueFin::GlSetBase::Cnt((a1 + *(*a1 - 24) + 264));
  v28 = v26 | 4;
  if (v27 <= 2)
  {
    v28 = v26;
  }

  v29 = *(a2 + 2);
  v66 = TrueHeadingRad;
  v30 = *a2;
  if (v23)
  {
    v28 |= 8u;
  }

  v67 = *a2;
  v68 = v29;
  v69 = v28;
  v70 = 1;
  v71 = 1;
  BlueFin::GlPeGnssNavUpa::UrbanPosAssist((a1 + 285), &v66, v62);
  v16 = v62[0];
  if (v62[0] == 1 && ((*(a1 + 2330) | v11) & 1) != 0)
  {
    *(a1 + 2280) = 1;
    if (v71 == 2 || (v31 = 1.0, (v69 & 1) != 0))
    {
      v31 = 5.0;
    }

    v32 = *(a1[281] + 8) - 3;
    if (v65 == 1)
    {
      v33 = v64;
      v34 = *a1;
        ;
      }

        ;
      }

      if (i < 0.0)
      {
        i = -i;
      }

      if (v32 < 4)
      {
        v36 = 1;
      }

      else
      {
        v36 = v23;
      }

      if (i >= 0.785398163 || (v36 & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v32 < 4)
      {
        v37 = 1;
      }

      else
      {
        v37 = v23;
      }

      if ((v37 & 1) == 0)
      {
        v34 = *a1;
LABEL_82:
        BlueFin::lla2ned(v63, (a1 + *(v34 - 24) + 8), 0, &v57);
        v44 = v57;
        *v56 = v57;
        *&v56[8] = *v58;
        if (*(a1 + 26) == 1)
        {
          v45 = v64;
          v51 = *v58;
          v46 = __sincosf_stret(v64);
          BlueFin::GlPeNavGnssKF::ApplyCrossTrackPosMeas(a1, v51 * v46.__cosval - v44 * v46.__sinval, v31, v45);
        }

        else
        {
          *&v58[8] = xmmword_298A43FD0;
          v57 = COERCE_DOUBLE(v59);
          *v58 = &v60;
          v60 = 0;
          v61 = &v58[16];
          BlueFin::BigMatrix::Null(&v57, 1, 12);
          *(*(*v58 + 8) + 24) = 0x3FF0000000000000;
          BlueFin::ned2hlu(v56, (a1 + 167), v54);
          BlueFin::GlPeNavGnssKF::MeasUpdate(a1, &v57, 1, 0, 1, v55, v31);
          if (v15)
          {
            BlueFin::lla2ned(v63, (a1 + *(*a1 - 24) + 8), 0, &v52);
            *v56 = v52;
            *&v56[16] = v53;
            BlueFin::ned2hlu(v56, (a1 + 167), &v52);
            v47 = *&v52;
            BlueFin::BigMatrix::Null(&v57, 1, 12);
            *(*(*v58 + 8) + 8) = 0x3FF0000000000000;
            BlueFin::GlPeNavGnssKF::MeasUpdate(a1, &v57, 1, 0, 1, v47, v31);
          }
        }

        v48 = *a1;
        *(a1 + 571) = *(a1 + *(*a1 - 24) + 200);
        v49 = a1 + *(v48 - 24);
        *(a1 + 143) = *(v49 + 8);
        a1[288] = *(v49 + 24);
        return v16;
      }

      v38 = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(a1);
      v33 = BlueFin::GlPeGnssNavUpa::UnravelHeadingRad((a1 + 285), v38, v64);
      v64 = v33;
    }

    if (*(a1 + 26) == 1)
    {
      BlueFin::GlPeNavGnssKF::ApplyXTCHdg(a1, v33, 0.0174532925);
    }

    else
    {
      *&v58[8] = xmmword_298A43FD0;
      v57 = COERCE_DOUBLE(v59);
      *v58 = &v60;
      v60 = 0;
      v61 = &v58[16];
      BlueFin::BigMatrix::Null(&v57, 1, 12);
      *(*(*v58 + 8) + 32) = 0x3FF0000000000000;
      v39 = v64;
      v40 = v64;
        ;
      }

        ;
      }

      v42 = j / 0.0174532924;
      if (fabsf(v42) > 3.0)
      {
        *(a1 + *(*a1 - 24) + 176) = v39;
          ;
        }

          ;
        }
      }

      BlueFin::GlPeNavGnssKF::MeasUpdate(a1, &v57, 1, 0, 1, j, 0.00030461742);
    }

    v34 = *a1;
    v43 = *(a1 + *(*a1 - 24) + 200);
    *(a1 + 863) = v64;
    *(a1 + 1728) = v43;
    goto LABEL_82;
  }

  return v16;
}

float BlueFin::GlPePolaroidGnssKF::UpdateFilter(BlueFin::GlPePolaroidGnssKF *this, int a2, float a3, const BlueFin::GlSignalId *a4)
{
  v4 = 0.0;
  if (a2)
  {
    v4 = 1.0;
  }

  v5 = *a4;
  if ((v5 - 189) <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glpe_polaroidgnsskf.cpp", 119, "UpdateFilter", "IS_SVID(*rotSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_polaroidgnsskf.cpp", 119, "IS_SVID(*rotSignalId.GetSvId())");
  }

  v6 = this + 768;
  v7 = v5 - 1;
  v8 = *(this + v7 + 192);
  v9 = this + 4 * v7;
  if (v8 > 600.0)
  {
    v10 = a3 >= 0.0 ? a3 : -a3;
    if (v10 < 100.0)
    {
      *(v9 + 4) = 0;
      *&v6[4 * v7] = 0;
      v4 = 1.0;
      v8 = 0.0;
    }
  }

  v11 = *(this + 380);
  *(v9 + 4) = (v11 * *(v9 + 4)) + ((1.0 - v11) * v4);
  *&v6[4 * v7] = v8 * v11;
  if (a3 < 0.0)
  {
    a3 = -a3;
  }

  result = (v8 * v11) + ((1.0 - *(this + 380)) * a3);
  *&v6[4 * v7] = result;
  return result;
}

double BlueFin::GlPeSlowFilter::SubmitSpeedEst(BlueFin::GlPeSlowFilter *this, double a2, double a3)
{
  if (a3 <= -0.00000011920929 || a3 >= 1.00000012)
  {
    DeviceFaultNotify("glpe_slowfilter.cpp", 110, "SubmitSpeedEst", "dCoeff > -FLT_EPSILON && dCoeff < 1.0f + FLT_EPSILON");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_slowfilter.cpp", 110, "dCoeff > -FLT_EPSILON && dCoeff < 1.0f + FLT_EPSILON");
  }

  result = a2 * a3 + (1.0 - a3) * *(this + 6);
  *(this + 6) = result;
  return result;
}

double BlueFin::GlPeSlowFilter::SubmitTrackRadEst(BlueFin::GlPeSlowFilter *this, double a2, double a3)
{
  if (a3 <= -0.00000011920929 || a3 >= 1.00000012)
  {
    DeviceFaultNotify("glpe_slowfilter.cpp", 53, "SubmitTrackRadEst", "a > -FLT_EPSILON && a < 1.0f + FLT_EPSILON");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_slowfilter.cpp", 53, "a > -FLT_EPSILON && a < 1.0f + FLT_EPSILON");
  }

  v3 = *(this + 3);
    ;
  }

    ;
  }

  result = v3 + a3 * fmax(fmin(i, 0.785398163), -0.785398163);
  *(this + 3) = result;
  v6 = 6.28318531;
  if (result >= 0.0)
  {
    if (result <= 6.28318531)
    {
      return result;
    }

    v6 = -6.28318531;
  }

  result = result + v6;
  *(this + 3) = result;
  return result;
}

float64x2_t BlueFin::GlPeSlowFilter::SubmitVelEst(uint64_t a1, float64x2_t *a2, double a3)
{
  if (a3 <= -0.00000011920929 || a3 >= 1.00000012)
  {
    DeviceFaultNotify("glpe_slowfilter.cpp", 44, "SubmitVelEst", "a > -FLT_EPSILON && a < 1.0f + FLT_EPSILON");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_slowfilter.cpp", 44, "a > -FLT_EPSILON && a < 1.0f + FLT_EPSILON");
  }

  result = vmlaq_n_f64(vmulq_n_f64(*a2, a3), *a1, 1.0 - a3);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

double BlueFin::GlPeNavGnssKF::GetXtcTaHdg(BlueFin::GlPeNavGnssKF *this, double *a2, unsigned int *a3)
{
  result = *(this + 863);
  *a2 = result;
  *a3 = *(this + 1728);
  return result;
}

double BlueFin::GlPeNavGnssKF::GetL5BiasEstimator(BlueFin::GlPeNavGnssKF *this, float *a2, float *a3, double *a4)
{
  *a2 = *(this + 1719);
  *a3 = *(this + 1720);
  result = *(this + 861);
  *a4 = result;
  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::GetGnssStatesForDrCalibration(BlueFin::GlPeNavGnssKF *this, BlueFin::GlPeNavGnssState *a2, BlueFin::GlPeNavGnssState *a3, BlueFin::GlPeNavGnssState *a4, unsigned int *a5, unsigned int *a6, int *a7)
{
  BlueFin::GlPeNavGnssState::operator=(a2, this + *(*this - 24));
  BlueFin::GlPeNavGnssState::operator=(a3, this + 6920);
  result = BlueFin::GlPeNavGnssState::operator=(a4, this + 7448);
  *a5 = *(this + 545);
  *a6 = *(this + 544);
  *a7 = *(this + 401);
  return result;
}

uint64_t BlueFin::GlPeKfPool::DrUpdate(BlueFin::GlPeKfPool *this, const BlueFin::GlPeNavGnssState *a2)
{
  v4 = 0;
  v5 = this + 37248;
  do
  {
    v6 = *&v5[v4];
    if ((*(*v6 + 384))(v6))
    {
      (*(*v6 + 256))(v6, a2);
    }

    v4 += 8;
  }

  while (v4 != 24);
  v7 = this + *(*this - 24);
  v8 = *(this + 4659) + *(**(this + 4659) - 24);

  return BlueFin::GlPeNavGnssState::operator=(v7, v8);
}

uint64_t BlueFin::GlPeKfPool::SetPrimaryFilter(BlueFin::GlPeKfPool *this)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = this + 36864;
  v3 = *(this + 4659);
  v4 = **(this + 1);
  v5 = *(this + 4662);
  if ((*(v5 + 8) - 1) > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 1909);
  }

  v7 = 0;
  v8 = (this + 37248);
  do
  {
    v9 = v8[v7];
    v10 = (*(*v9 + 384))(v9);
    v11 = 6367426.73;
    if (v10)
    {
      v11 = (*(*(v9 + *(*v9 - 24)) + 16))(v9 + *(*v9 - 24), 6367426.73);
    }

    *(&v29 + v7 * 8) = v11;
    ++v7;
  }

  while (v7 != 3);
  if ((v6 & 1) == 0)
  {
    v12 = v31;
    if (v31 < 150.0)
    {
      v12 = 150.0;
    }

    v31 = v12;
  }

  v13 = v30;
  if (v30 > 50.0 && *(v2 + 254) < 50.0)
  {
    *(v2 + 104) = v4;
  }

  v14 = v31;
  if (v31 > 50.0 && *(v2 + 255) < 50.0)
  {
    *(v2 + 105) = v4;
  }

  if (v14 < 50.0)
  {
    *(v2 + 105) = v4;
  }

  if ((*(**(v2 + 49) + 384))(*(v2 + 49)))
  {
    v15 = *(v2 + 49) + *(**(v2 + 49) - 24);
    if ((*(*v15 + 16))(v15) < 50.0)
    {
      v3 = *(v2 + 49);
      *(v2 + 104) = v4;
      goto LABEL_51;
    }
  }

  if (v4)
  {
    v16 = v4 - *(v2 + 104);
    v17 = (v4 - *(v2 + 105)) >> 5 > 0x270;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = v2 + 400;
  v19 = (*(**(v2 + 50) + 384))(*(v2 + 50));
  if (v14 >= 50.0)
  {
    if ((v19 & 1) != 0 || ((*(**(v2 + 49) + 384))(*(v2 + 49)) & 1) != 0 || (v22 = (*(**v8 + 384))(*v8), v21 = (v2 + 384), (v22 & 1) == 0))
    {
      v23 = 2;
      if (v13 <= v14)
      {
        v23 = 1;
      }

      v24 = v13 - v14;
      if (v13 - v14 < 0.0)
      {
        v24 = -(v13 - v14);
      }

      if (v24 <= 100.0 && v16 < 0x4E21)
      {
        goto LABEL_46;
      }

      v21 = &v8[v23];
    }

    goto LABEL_45;
  }

  if (v13 > 100.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v2 + 400);
  if ((v20 & 1) != 0 || *(v2 + 51) == (this + 5856) && (*(**v18 + 384))(*v18) && (v21 = (v2 + 400), v16 >> 5 > 0x270))
  {
LABEL_45:
    v3 = *v21;
  }

LABEL_46:
  if ((v29 < 50.0 || ((*(**v18 + 384))(*v18, v29) & 1) == 0) && (v14 > 100.0 || *(v2 + 51) == this + 24472 && v17))
  {
    v3 = *v8;
  }

LABEL_51:
  if (v3 == *(v2 + 51))
  {
    v3 = *(v2 + 51);
  }

  else
  {
    *(v2 + 51) = v3;
    *(v2 + 106) = v4;
  }

  *(v2 + 254) = v13;
  *(v2 + 253) = v29;
  *(v2 + 255) = v14;
  v25 = *MEMORY[0x29EDCA608];
  v26 = this + *(*this - 24);
  v27 = v3 + *(*v3 - 24);

  return BlueFin::GlPeNavGnssState::operator=(v26, v27);
}

char *BlueFin::GlSignalIdSet::GetSignalIdSetForSv@<X0>(char *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0u;
  v3 = a3 + 12;
  *a3 = a3 + 12;
  *(a3 + 8) = 19;
  *(a3 + 28) = 0u;
  *(a3 + 44) = 0u;
  *(a3 + 60) = 0u;
  *(a3 + 72) = 0u;
  v4 = *a2;
  v5 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v6 = BlueFin::GlSignalId::s_aucGnss2numSignals[v5];
  if (BlueFin::GlSignalId::s_aucGnss2numSignals[v5])
  {
    v7 = 0;
    v8 = *result;
    v9 = &BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5];
    result = BlueFin::GlSvId::s_aucGnss2numSvId;
    do
    {
      if ((v4 - 189) < 0xFFFFFF44 || *v9 == 255)
      {
        v10 = 575;
      }

      else
      {
        v10 = (BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v4 - BlueFin::GlSvId::s_aucGnss2minSvId[v5] + BlueFin::GlSvId::s_aucGnss2numSvId[v5] * v7);
      }

      v11 = v10 >> 5;
      v12 = v10 & 0x1F;
      if ((*(v8 + 4 * v11) >> v12))
      {
        *(v3 + 4 * v11) |= 1 << v12;
      }

      ++v7;
      v9 += 7;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t BlueFin::GlPeContextMgr::UpdateEnvironmentContext(uint64_t this, unsigned int a2, unsigned int a3, unsigned __int8 a4, double a5, int a6, unsigned int a7, int a8, int a9, BOOL a10)
{
  v10 = this;
  v11 = *(this + 16);
  *(this + 1804) = 0;
  if (a6)
  {
    v12 = 7;
LABEL_5:
    *(this + 16) = v12;
    v13 = 1;
    v14 = 20;
LABEL_6:
    *(v10 + v14) = v13;
    return this;
  }

  if (a9)
  {
    v12 = 6;
    goto LABEL_5;
  }

  if (*(this + 1384) != 1)
  {
    BlueFin::GlPeContextMgr::UpdateEnvCounters(this, a2, a3, 0, a5, a7, a8);
    this = BlueFin::GlPeContextMgr::UpdateEnvFromHula(v10);
    v17 = *(v10 + 1800);
    if (v17)
    {
      if (*(v10 + 1808) <= v17)
      {
        v18 = *(v10 + 16);
        if (v18 <= 9 && ((1 << v18) & 0x207) != 0 && *(v10 + 1792) == 9)
        {
          v19 = *(v10 + 1796);
          *(v10 + 16) = 9;
          *(v10 + 20) = v19;
          *(v10 + 1804) = 1;
        }
      }
    }

    if (*(v10 + 1804))
    {
LABEL_25:
      v21 = *(v10 + 16);
      if ((v11 & 0xFFFFFFFE) != 2 && (v21 & 0xFFFFFFFE) == 2)
      {
        *(v10 + 1824) = *(v10 + 1808);
      }

      if (v11 != v21)
      {
        v13 = *(v10 + 1808);
        v14 = 1812;
        goto LABEL_6;
      }

      return this;
    }

    if (*(v10 + 1852) <= 30)
    {
      if (*(v10 + 1851) > 30 || (*(v10 + 1990) & 1) != 0)
      {
        v20 = 2;
      }

      else
      {
        if (!a3)
        {
          goto LABEL_24;
        }

        v20 = 1;
      }
    }

    else
    {
      v20 = 3;
    }

    *(v10 + 16) = v20;
LABEL_24:
    this = BlueFin::GlPeContextMgr::DetermineConfidenceOfEnvContext(v10, a5, a10);
    goto LABEL_25;
  }

  *(this + 16) = 5;
  if (v11 != 5)
  {
    v13 = *(this + 1808);
    v14 = 1828;
    goto LABEL_6;
  }

  return this;
}

uint64_t BlueFin::GlPeContextMgr::UpdateEnvCounters(uint64_t this, unsigned int a2, unsigned int a3, unsigned __int8 a4, double a5, unsigned int a6, int a7)
{
  *(this + 1840) = a5;
  *(this + 1848) = a3;
  *(this + 1849) = a6;
  if (*(this + 1805) == 1)
  {
    v7 = vcgt_u32(vmin_u32(vcvt_s32_f32(vmul_n_f32(0x3F0000003F333333, a2)), 0x80000000CLL), vdup_n_s32(a3));
    if (a6)
    {
LABEL_3:
      v8 = a6 / (a7 + a6);
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v8 = 0.0;
LABEL_6:
  v10 = a3 > 0x23 || a6 > 0x1B;
  if ((*(this + 1850) & 1) == 0)
  {
    v11 = a5 >= 10.0;
    if (v8 <= 0.85)
    {
      v11 = 1;
    }

    if (!v10 && ((v11 | v7.i32[0]) & 1) != 0)
    {
      *(this + 1851) = 45;
      if (a5 >= 20.0 || v8 <= 0.6 || (v7.i8[4] & 1) != 0)
      {
        *(this + 1852) = 45;
      }
    }
  }

  v12 = *(this + 1816);
  v13 = v12 + 4096;
  v14 = *(v12 + 4216);
  if (v14 == 6)
  {
    if (*(v13 + 128) == 1)
    {
LABEL_23:
      v15 = *(v13 + 130);
      goto LABEL_26;
    }
  }

  else if (v14 == 1 && (*(v13 + 128) & 1) != 0)
  {
    goto LABEL_23;
  }

  v15 = 1;
LABEL_26:
  if ((*(this + 1808) - *(this + 1812)) < 0x15F91)
  {
    v16 = 1;
    if (!a3)
    {
      return this;
    }
  }

  else
  {
    v16 = (*(this + 16) == 0) | v15;
    if (!a3)
    {
      return this;
    }
  }

  if (v16)
  {
    v17 = a5 >= 10.0;
    if (v8 <= 0.85)
    {
      v17 = 1;
    }

    v18 = v10 | ~(v17 | v7.i8[0]);
    v19 = *(this + 1851);
    if (v18)
    {
      v20 = v19 - 1;
      *(this + 1851) = v20 & ~(v20 >> 7);
      v21 = *(this + 1852) - 1;
      *(this + 1852) = v21 & ~(v21 >> 7);
      if (!v10)
      {
LABEL_53:
        *(this + 1850) = 1;
        return this;
      }

      v22 = v20;
      if (v20 <= 1)
      {
        v22 = 1;
      }

      *(this + 1851) = v22 - 1;
      v23 = v21;
      if (v21 <= 1)
      {
        v23 = 1;
      }

      LOBYTE(v24) = v23 - 1;
    }

    else
    {
      v25 = (v19 + 1);
      if (v25 >= 90)
      {
        v26 = 90;
      }

      else
      {
        v26 = v25;
      }

      *(this + 1851) = v26;
      if (a5 >= 20.0 || v8 <= 0.6 || (v7.i8[4] & 1) != 0)
      {
        if (v25 >= 89)
        {
          LOBYTE(v25) = 89;
        }

        *(this + 1851) = v25 + 1;
        if ((*(this + 1852) + 1) >= 90)
        {
          LOBYTE(v24) = 90;
        }

        else
        {
          LOBYTE(v24) = *(this + 1852) + 1;
        }
      }

      else
      {
        v24 = (*(this + 1852) - 1) & ~((*(this + 1852) - 1) >> 7);
      }
    }

    *(this + 1852) = v24;
    goto LABEL_53;
  }

  return this;
}

uint64_t BlueFin::GlPeContextMgr::UpdateEnvFromHula(uint64_t this)
{
  v1 = *(this + 1816);
  if (v1 && *(v1 + 4296) == 1)
  {
    v2 = *(v1 + 4288);
    if ((v2 - 1) >= 2)
    {
      if ((v2 - 3) >= 2)
      {
        if (v2 == 5)
        {
          v2 = 8;
        }

        else
        {
          if (v2 != 6)
          {
LABEL_11:
            v3 = *(v1 + 4292);
            *(v1 + 4296) = 0;
            *(this + 1800) = *(this + 1808) + 60000;
            *(this + 1796) = v3 == 2;
            return this;
          }

          v2 = 9;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    *(this + 1792) = v2;
    goto LABEL_11;
  }

  return this;
}

_DWORD *BlueFin::GlPeContextMgr::DetermineConfidenceOfEnvContext(_DWORD *this, double a2, _BOOL4 a3)
{
  v3 = this[4];
  v4 = 1;
  if (v3 > 2)
  {
    if ((v3 - 6) >= 4)
    {
      if (v3 == 3)
      {
        v5 = (this[452] - this[456]) > 0xBB8;
      }

      else
      {
        if (v3 != 5)
        {
          return this;
        }

        v5 = (this[457] - this[452]) > 3;
      }

      v4 = v5;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = a2 < 1.0 || a3;
    }

    else
    {
      if (v3 != 2)
      {
        return this;
      }

      v4 = a2 > 20.0;
    }
  }

  this[5] = v4;
  return this;
}

uint64_t BlueFin::GlPeNavGnssBlocked::UpdateIvdrStatus(uint64_t this, char a2, int a3, float a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v9 = a3;
  v10 = this;
  if ((a2 & 1) != 0 || a3)
  {
    v11 = *(this + 84);
    this = BlueFin::GlPeNavGnssBlocked::IndoorHyst(this, a5, a6);
    v12 = *(v10 + 84);
    if (v11 == 1 && v12 == 0)
    {
      *(v10 + 100) = a7;
      *(v10 + 88) = 0;
      *(v10 + 40) = 0;
      *(v10 + 72) = 0;
      *(v10 + 121) = 0;
    }

    else if (v12 == 1)
    {
      *(v10 + 88) = a7;
      if ((v9 & 1) == 0 && *(v10 + 121) == 1)
      {
        this = BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v10, a7);
        if (!this || *(v10 + 124) <= a4)
        {
          *(v10 + 121) = 0;
        }
      }

      v14 = *(v10 + 92);
      v15 = a4 - v14;
      v16 = *(v10 + 40);
      v17 = a7 >= v16;
      v18 = a7 - v16;
      if (v18 != 0 && v17)
      {
        v15 = (v15 * 1000.0) / v18;
      }

      *(v10 + 92) = v14 + v15;
    }

    else
    {
      *(v10 + 121) = 1;
    }
  }

  return this;
}

double BlueFin::GlPeNavGnssKF::GetStP(BlueFin::GlPeNavGnssKF *this, double *a2, double *a3, double *a4)
{
  v4 = *(this + 5);
  v5 = *(v4 + 8);
  *a2 = *(v5 + 8);
  *a3 = *(v5 + 24);
  result = *(*(v4 + 24) + 24);
  *a4 = result;
  return result;
}

BOOL BlueFin::GlPeKF::IsGood4Nav(BlueFin::GlPeKF *this)
{
  v1 = *(this + 14310);
  if (v1)
  {
    v1 = *(this + 57248) == 1 && (*(this + 192) - v1) >> 5 < 0x753;
  }

  v2 = *(this + 7161);
  if (v2)
  {
    if ((*(v2 + 3009) | v1))
    {
      return 1;
    }
  }

  else if (v1)
  {
    return 1;
  }

  return *(this + *(*(this + 2148) - 24) + 17264) < 400.0;
}

unsigned __int8 *BlueFin::GlPePosInfo::PackPosInfoSvIds(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, uint64_t a6)
{
  BlueFin::GlSetBase::GlSetBase(&v39, v41, 0x13u, a3);
  BlueFin::GlSetBase::GlSetBase(&v36, v38, 0x13u, a4);
  BlueFin::GlSetBase::GlSetBase(&v33, v35, 0x13u, a2);
  BlueFin::GlSetBase::GlSetBase(&v30, v32, 0x13u, a5);
  BlueFin::GlSetBase::operator=(a6 + 624, a1);
  v11 = *(a1 + 28);
  *(a6 + 636) = *(a1 + 12);
  *(a6 + 652) = v11;
  if ((*(a6 + 8) & 1) == 0)
  {
    bzero(v39, ((4 * v40 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(v36, ((4 * v37 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(v33, ((4 * v34 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(v30, ((4 * v31 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v16 = (a6 + 624);
    goto LABEL_10;
  }

  v12 = *(a6 + 780);
  if (v12 > 8.0)
  {
    v13 = 0;
    v14 = v30 + 4 * v31 - 4;
    do
    {
      if (*v14)
      {
        v15 = *v14 - (((*v14 >> 1) & 0x5B6DB6DB) + ((*v14 >> 2) & 0x9249249));
        v13 = ((v15 + (v15 >> 3)) & 0xC71C71C7) + v13 - 63 * (((v15 + (v15 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v14;
    }

    while (v14 >= v30);
    if (v13)
    {
      GlCustomLog(15, "Clear DGNSS designation due to high estimated accuracy %lf\n", v12);
      v16 = &v30;
LABEL_10:
      bzero(*v16, ((4 * *(v16 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    }
  }

  result = BlueFin::GlSetBase::Cnt((a6 + 624));
  v18 = 0;
  *(a6 + 106) = result;
  v19 = v33 + 4 * v34 - 4;
  do
  {
    if (*v19)
    {
      v20 = *v19 - (((*v19 >> 1) & 0x5B6DB6DB) + ((*v19 >> 2) & 0x9249249));
      v18 = ((v20 + (v20 >> 3)) & 0xC71C71C7) + v18 - 63 * (((v20 + (v20 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v19;
  }

  while (v19 >= v33);
  if (v18)
  {
    v21 = 0;
    v22 = (a6 + 368);
    do
    {
      v23 = *(a1 + 496);
      BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(&v39, v21, v29);
      BlueFin::GlPeAsstMgr::ConvertSvIdSet2ConstellMask(v23, v29, v22 - 16);
      v24 = *(a1 + 496);
      BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(&v36, v21, v29);
      BlueFin::GlPeAsstMgr::ConvertSvIdSet2ConstellMask(v24, v29, v22);
      ++v21;
      v22 += 4;
    }

    while (v21 != 4);
    v25 = *(a1 + 496);
    BlueFin::GlSignalIdSet::GetSvIdSet(&v30, v29);
    result = BlueFin::GlPeAsstMgr::ConvertSvIdSet2ConstellMask(v25, v29, (a6 + 672));
  }

  if (*v30)
  {
LABEL_20:
    *(a6 + 736) = -1;
    *(a6 + 740) = 0;
    return result;
  }

  if (v31 >= 2uLL)
  {
    v26 = v31 - 1;
    v27 = v30 + 4;
    while (!*v27++)
    {
      if (!--v26)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex@<X0>(unsigned __int8 *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0u;
  v4 = a3 + 12;
  *a3 = a3 + 12;
  *(a3 + 8) = 8;
  *(a3 + 28) = 0u;
  v5 = *result;
  v6 = result[8];
  if (!**result)
  {
    if (v6 < 2)
    {
      return result;
    }

    v8 = v6 - 1;
    v9 = v5 + 1;
    while (!*v9++)
    {
      if (!--v8)
      {
        return result;
      }
    }
  }

  v11 = result[8];
  memcpy(v15, v5, 4 * v6);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v7 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13;
    if (v7[1] == a2)
    {
      *(v4 + ((*v7 >> 3) & 0x1C)) |= 1 << *v7;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeAsstMgr::ConvertSvIdSet2ConstellMask(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v9 = *(a2 + 8);
  memcpy(v13, *a2, 4 * v9);
  v11 = 0;
  v10 = 0;
  v12 = v13[0];
  for (result = BlueFin::GlSetIterator::operator++(&v9); v10 != v9; result = BlueFin::GlSetIterator::operator++(&v9))
  {
    v8 = v11;
    v14 = 7;
    v15 = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), &v8, &v14, v6, v7);
    if (v15 - 1 <= 0x3E)
    {
      *(a3 + BlueFin::GlImplGnss::m_aucEnabledGnssTable[v14]) |= 1 << (v15 - 1);
    }
  }

  return result;
}

uint64_t BlueFin::GlPePosInfo::PackPosInfoTrack(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5, char a6, _DWORD *a7, uint64_t a8, double a9)
{
  if ((a6 & 1) == 0)
  {
    v9 = *(a2 + 72);
    v10 = a9;
    if (v9 >= v10 && *(a2 + 68) == 1 && *(a2 + 80) == 1)
    {
      if (a3 < 2 || a3 == 2 && (v19 = a9 * 4.0, v9 < v19))
      {
        if ((*(*(result + 512) + 1) & 1) == 0)
        {
          v11 = *(a5 + 24);
          *(a2 + 60) = v11;
        }

        v12 = 1;
        goto LABEL_11;
      }
    }

    else if ((*(result + 414) & 1) == 0)
    {
      if (*(result + 413) == 1 && (*(*(result + 512) + 2) < 1 || (*(a2 + 68) & 1) != 0 || (*(a8 + 32) & 0x8000) != 0 || *(a8 + 49) != 1))
      {
        v18 = *(result + 352);
        *(a2 + 60) = v18;
      }

      else
      {
        *(a2 + 68) = 0;
      }

      goto LABEL_27;
    }
  }

  v12 = 0;
LABEL_11:
  *(result + 352) = *(a2 + 60);
  if ((*(result + 413) & 1) == 0)
  {
    if (*(result + 400) < 1)
    {
      v12 = 1;
    }

    if (v12)
    {
      *(result + 400) = 1;
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = *(a2 + 12);
      if (v13 - *(result + 408) > 1001)
      {
        v14 = 1;
      }

      else
      {
        v14 = (*(result + 400) & 0x7F) + 1;
      }

      *(result + 400) = v14;
    }

    *(result + 408) = v13;
    *(result + 413) = 1;
  }

LABEL_27:
  v15 = flt_298A444E0[*a7 == 3];
  if (*a7 == 2)
  {
    v15 = 0.17453;
  }

  v16 = v15 * v15;
  if (v16 < *(a2 + 64))
  {
    v16 = *(a2 + 64);
  }

  *(a2 + 64) = v16;
  v17 = *(result + 60) | *(a2 + 68);
  *(result + 60) = v17;
  if ((v17 & 1) != 0 && (a4 & 1) == 0)
  {
    *(a2 + 68) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPePosInfo::PackPosInfoSpeed(uint64_t a1, uint64_t a2, BlueFin::GlSetBase *this, int a4, uint64_t a5, double a6, uint64_t a7, int a8, int a9)
{
  v16 = sqrtf(*(a2 + 76)) * 0.5;
  if (v16 >= a6)
  {
    a6 = v16;
  }

  v17 = *(a2 + 4);
  if (v17)
  {
    v18 = a6;
  }

  else
  {
    v18 = a6 * 0.25;
  }

  result = BlueFin::GlSetBase::Cnt(this);
  if (result >= 2)
  {
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = *(a5 + 48);
    if (*(a2 + 72) <= v20)
    {
      v20 = *(a2 + 72);
    }

    *(a2 + 72) = v20;
  }

  *(a1 + 412) = 0;
  if (v18 > v20 && a8 && (*(a1 + 414) & 1) == 0 && *(a2 + 4))
  {
    *(a2 + 72) = 0;
    *(a1 + 404) = *(a2 + 12);
    *(a1 + 360) = 0;
    *(a1 + 412) = 1;
  }

  else if (*(a2 + 80) == 1)
  {
    if (a9)
    {
      v20 = *(a5 + 48);
      *(a2 + 72) = v20;
      if (!v17)
      {
        v21 = *(a1 + 360);
        v22 = v21 < v20;
        *&v21 = v21;
        v20 = (flt_298A444E8[v22] * *&v21) + ((1.0 - flt_298A444E8[v22]) * v20);
        *(a2 + 72) = v20;
      }
    }

    *(a1 + 404) = *(a2 + 12);
    *(a1 + 360) = v20;
  }

  else if (*(a2 + 12) - *(a1 + 404) <= 1001)
  {
    v23 = *(a1 + 360);
    *(a2 + 72) = v23;
  }

  if (a4)
  {
    if (*(a2 + 80) == 1)
    {
      v24 = *(a1 + 520);
      v30 = 0;
      v31 = v33;
      v32 = 8;
      memset(v33, 0, sizeof(v33));
      v34 = xmmword_298A41DA0;
      v35 = vdup_n_s32(0x42C60000u);
      v36 = 1120272384;
      BlueFin::stDops::stDops(v37, &v30);
      v38 = v24;
      v25 = *(a2 + 12);
      BlueFin::GlSignalIdSet::GetSvIdSet(this, v29);
      v27 = *(a2 + 16);
      v28 = *(a2 + 32);
      v26 = *(a2 + 752) * 299792458.0;
      result = BlueFin::GlPeDops::GetDops();
      if (*(&v34 + 1) > 2.0 || *v35.i32 > 2.0)
      {
        *(a2 + 80) = 0;
      }
    }
  }

  else if (*(a1 + 60) == 1)
  {
    *(a2 + 80) = 1;
  }

  return result;
}

void BlueFin::GlPePosInfo::PackPosInfoPos(uint64_t a1, uint64_t a2, char a3, char a4, char a5, int a6, uint64_t a7)
{
  if (fabsf(*(a2 + 72)) >= 0.277)
  {
    LOBYTE(v10) = 0;
    v11 = a1 + 352;
    *(a1 + 448) = 0;
  }

  else
  {
    v10 = *(a1 + 448);
    v11 = a1 + 352;
    v12 = 1;
    *(a1 + 448) = 1;
    if (v10 == 1 && (a4 & 1) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }
  }

  v12 = 0;
  v13 = v10 ^ 1 | a5;
LABEL_7:
  v14 = *(a2 + 32);
  v33 = *(a2 + 16);
  v34 = v14;
  v15 = *(a7 + 32);
  BlueFin::lla2ned(v33.f64, (v11 + 16), 0, &v31);
  v17 = v31;
  v16 = v32;
    ;
  }

    ;
  }

  if (fabs(i) > 1.57079633)
  {
    v19 = sqrt(v17 * v17 + v16 * v16) < 30.0 && *(a2 + 72) < 1.25;
    v20 = v19 && (v15 & 0x8000) == 0;
    if (v20 && (a3 & 1) != 0)
    {
      v12 = 1;
LABEL_26:
      v24 = *(a2 + 12);
      if (v24 - *(v11 + 64) <= 2000 && (a3 & 1) != 0)
      {
        v25 = ++*(v11 + 68);
        *(v11 + 64) = v24;
        if (v25 < 0x12D)
        {
          *(v11 + 72) = v33;
          v26 = v34;
        }

        else
        {
          v26 = v34 * 0.00166389998 + *(v11 + 88) * 0.9983361;
          *(v11 + 72) = vmlaq_f64(vmulq_f64(v33, vdupq_n_s64(0x3F5B42E700000000uLL)), vdupq_n_s64(0x3FEFF25E8C800000uLL), *(v11 + 72));
        }

        *(v11 + 88) = v26;
        v27 = 1;
      }

      else
      {
        *(v11 + 72) = v33;
        *(v11 + 88) = v34;
        v27 = 1;
        *(v11 + 68) = 1;
        *(v11 + 64) = v24;
      }

      goto LABEL_34;
    }
  }

  if (v13)
  {
    *(v11 + 68) = 0;
    v21 = v33;
    *(v11 + 72) = v33;
    v22 = v34;
    *(v11 + 88) = v34;
    *(v11 + 16) = v21;
    v23 = *(a2 + 780);
    *(v11 + 32) = v22;
    *(v11 + 40) = v23;
    return;
  }

  if (v12)
  {
    v12 = 0;
    goto LABEL_26;
  }

  v27 = 0;
  *(v11 + 68) = 0;
  *(v11 + 72) = v33;
  *(v11 + 88) = v34;
LABEL_34:
  BlueFin::lla2ned((v11 + 72), (v11 + 16), 0, &v35);
  v28 = *(a2 + 780);
  v29 = 5.0;
  if (v27)
  {
    if (*(v11 + 68) >= 0x12Cu)
    {
      v29 = 8.0;
    }

    if (v12)
    {
      v29 = 30.0;
    }
  }

  else
  {
    v29 = fmaxf(fminf(v28, 10.0), 5.0);
  }

  if (a6 == 1 || sqrt(v36 * v36 + v35 * v35) > v29)
  {
    *(v11 + 16) = *(v11 + 72);
    v30 = v28;
    *(v11 + 32) = *(v11 + 88);
    *(v11 + 40) = v30;
  }

  else
  {
    v30 = *(v11 + 40);
  }

  if (v30 < 50.0)
  {
    *(a2 + 16) = *(v11 + 16);
  }
}

void BlueFin::GlPeNavGnssKF::ComputeAltQualForCalibration(BlueFin::GlPeNavGnssKF *this, char a2)
{
  v4 = *(*(*(this + 5) + 40) + 40);
  v5 = *(this + 2);
  v24 = 0;
  v25 = v27;
  v26 = 8;
  memset(v27, 0, 32);
  *&v27[9] = xmmword_298A41DA0;
  v28 = vdup_n_s32(0x42C60000u);
  v29 = 1120272384;
  BlueFin::stDops::stDops(v30, &v24);
  v31 = v5;
  v6 = **(this + 1);
  BlueFin::GlSignalIdSet::GetSvIdSet(this + *(*this - 24) + 264, v21);
  *&v17 = *(this + *(*this - 24) + 88);
  v7 = **(this + 280);
  v19 = 0;
  v20 = v7;
  BlueFin::GlPeDops::GetDops();
  if ((a2 & 1) == 0)
  {
    if (v4 < 10.0 && *v28.i32 < 2.2 && (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24), *v28.i32) <= 4.4 && *(this + 609) <= 13.5)
    {
      v15 = *this;
      v16 = this + *(*this - 24);
      if (BlueFin::GlSetBase::Cnt((v16 + 264)) >= 9 && BlueFin::GlSetBase::Cnt((v16 + 352)) >= 0xA)
      {
        v14 = v15[7](this) > 0x78;
        goto LABEL_22;
      }
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v8.n128_u32[1] = 1071770501;
  if (v4 >= 0.56)
  {
    goto LABEL_21;
  }

  v10 = (this + *(*this - 24));
  v9.n128_u32[0] = v28.i32[0];
  v8.n128_u32[0] = 1.75;
  if (v10[21] >= 8.0 || *v28.i32 >= 1.75)
  {
    goto LABEL_21;
  }

  if ((*(*v10 + 16))(v10, v8, v9) > 4.0)
  {
    goto LABEL_21;
  }

  if (*(this + 609) > 8.0)
  {
    goto LABEL_21;
  }

  v12 = this + *(*this - 24);
  if (BlueFin::GlSetBase::Cnt((v12 + 264)) < 0xC || BlueFin::GlSetBase::Cnt((v12 + 352)) < 0xB)
  {
    goto LABEL_21;
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 0.0;
  v23 = 2000.0;
  v17 = *(v12 + 8);
  v13 = *(v12 + 3);
  v18 = v13;
  if (BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine((*(this + 283) + 64), v21, &v17))
  {
    v14 = (v13 - v22) * (v13 - v22) <= (v4 + (v23 * v23)) * 4.0;
  }

  else
  {
    v14 = 1;
  }

LABEL_22:
  *(this + 6869) = v14;
}

void BlueFin::GlPeBaro::GnssUpdate(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a4 && *(a1 + 40))
  {
    if (!*(a1 + 36))
    {
      *(a1 + 36) = a2;
    }

    if (*(a1 + 34) != 1)
    {
      *(a1 + 36) = a2;
      v6 = *(a3 + 32);
      *(a1 + 24) = v6;
      v7 = *(a3 + 40) / 1.5 + 3.0;
      goto LABEL_17;
    }

    if (*(a1 + 33))
    {
      *(a1 + 36) = a2;
      v6 = *(a3 + 32);
      *(a1 + 24) = v6;
      v7 = fmax(*(a3 + 40) / 1.5, 5.0);
LABEL_17:
      *(a1 + 16) = v7;
      v10 = *a1;
      *(a1 + 8) = v10 * pow(v6 / -44330.77 + 1.0, -5.25588265) * 100.0;
      *(a1 + 33) = 256;
      goto LABEL_18;
    }

    v9 = *(a1 + 16) + 0.05;
  }

  else
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      v7 = *(a1 + 16);
      goto LABEL_18;
    }

    v8 = 0.0;
    if (*(a3 + 40) < 20.0)
    {
      v8 = *(a3 + 32) - *(a1 + 24);
      if (v8 < 0.0)
      {
        v8 = -v8;
      }
    }

    v9 = v8 / 12.0;
    if (v9 < *(a1 + 16) + 0.05)
    {
      v9 = *(a1 + 16) + 0.05;
    }
  }

  v7 = fmin(v9, 35.0);
  *(a1 + 16) = v7;
LABEL_18:
  if (v7 >= 10.0 || (a2 - *(a1 + 36)) >= 0xEA61)
  {
    *(a1 + 33) = 1;
  }
}

uint64_t BlueFin::GlPeContextMgr::UpdateVehicleContext(uint64_t result, int a2, _DWORD *a3, int a4, double a5, double a6)
{
  if (*(result + 1860))
  {
    v6 = 1;
  }

  else
  {
    v6 = a6 <= 1.0 || a2 > 14;
    *(result + 1860) = v6;
  }

  if (v6 && (*a3 & 8) != 0)
  {
    v8 = *(result + 1808);
    v9 = *(result + 1896);
    if (v8 - v9 >= 0x1389)
    {
      *(result + 1900) = 0;
      *(result + 1904) = 0;
      *(result + 1864) = 0;
      *(result + 1880) = 0;
      *(result + 1872) = 0;
      *(result + 1888) = 0;
      v9 = v8;
      *(result + 1896) = v8;
    }

    if (a5 <= 0.349999994)
    {
      v10 = 0;
      *(result + 1884) = vbsl_s8(vceqz_s32(*(result + 1884)), vdup_n_s32(v8), *(result + 1884));
      *(result + 1880) = 0;
      *(result + 1872) = 0;
      *(result + 1864) = 0;
    }

    else
    {
      v10 = *(result + 1864);
      if (!v10)
      {
        v10 = v8;
      }

      *(result + 1864) = v10;
      *(result + 1892) += v8 - v9;
      if (a5 <= 1.79999995)
      {
        *(result + 1884) = vbsl_s8(vceqz_s32(*(result + 1884)), vdup_n_s32(v8), *(result + 1884));
        *(result + 1880) = 0;
        *(result + 1872) = 0;
        if (v8 - *(result + 1868) > 0x15F90)
        {
          *(result + 1900) = 0;
        }
      }

      else
      {
        ++*(result + 1900);
        *(result + 1868) = v8;
        if (a5 <= 3.5)
        {
          *(result + 1884) = vbsl_s8(vceqz_s32(*(result + 1884)), vdup_n_s32(v8), *(result + 1884));
          *(result + 1880) = 0;
          *(result + 1872) = 0;
        }

        else
        {
          *(result + 1888) = 0;
          v11 = *(result + 1872);
          if (!v11)
          {
            v11 = v8;
          }

          *(result + 1872) = v11;
          if (a5 <= 5.0)
          {
            v40 = *(result + 1884);
            if (!v40)
            {
              v40 = v8;
            }

            *(result + 1884) = v40;
            *(result + 1876) = 0;
          }

          else
          {
            v12 = *(result + 1876);
            if (!v12)
            {
              v12 = v8;
            }

            *(result + 1876) = v12;
            if (a5 <= 17.8999996)
            {
              *(result + 1880) = 0;
              v41 = *(result + 1884);
              if (!v41)
              {
                v41 = v8;
              }

              *(result + 1884) = v41;
            }

            else
            {
              v13 = *(result + 1880);
              if (!v13)
              {
                v13 = v8;
              }

              *(result + 1880) = v13;
              *(result + 1884) = 0;
            }
          }
        }
      }
    }

    *(result + 1896) = v8;
    if (!v10)
    {
      goto LABEL_32;
    }

LABEL_29:
    v14 = *(result + 1896) - v10 > 0x15F90;
    goto LABEL_33;
  }

  v10 = *(result + 1864);
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_32:
  v14 = 0;
LABEL_33:
  v15 = *(result + 1868);
  if (v15)
  {
    v16 = (*(result + 1896) - v15) > 0x3A98;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(result + 1872);
  if (v17)
  {
    v18 = *(result + 1896) - v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(result + 1880);
  if (v19)
  {
    v20 = *(result + 1896) - v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(result + 1876);
  if (v21)
  {
    v22 = *(result + 1896) - v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(result + 1884);
  if (v23)
  {
    v24 = (*(result + 1896) - v23) > 0x7530;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(result + 1888);
  if (v25)
  {
    v26 = (*(result + 1896) - v25) > 0x15F90;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(result + 1816);
  if (!v27)
  {
    v30 = 0;
LABEL_56:
    v31 = 0;
    v28 = v18 >> 3 > 0x752;
    goto LABEL_57;
  }

  v28 = 0;
  v29 = *(v27 + 4216);
  v30 = v29 == 4;
  v31 = 1;
  if (v29 != 3 && v29 != 5)
  {
    goto LABEL_56;
  }

LABEL_57:
  v32 = *(result + 1765);
  if (v32 == 1)
  {
    *(result + 1912) = *(result + 1808);
  }

  v33 = *(result + 1900);
  v34 = *(result + 8);
  if (v34 <= 2)
  {
    if (v34)
    {
      if (v34 == 1)
      {
        v37 = !v30;
        if (v22 >> 3 >= 0x271)
        {
          v37 = 0;
        }

        if (v37)
        {
          if (!v32)
          {
            if (!v28)
            {
              if (v33 >= 5)
              {
                v34 = 2;
                goto LABEL_142;
              }

              v34 = 1;
              if (v14)
              {
                *(result + 12) = 1;
              }

              goto LABEL_143;
            }

            goto LABEL_136;
          }

          goto LABEL_131;
        }
      }

      else
      {
        if (v34 != 2)
        {
          goto LABEL_143;
        }

        v35 = !v30;
        if (v22 >> 3 >= 0x271)
        {
          v35 = 0;
        }

        if (v35)
        {
          if (!v32)
          {
            if (!v28)
            {
              if (v33 <= 4)
              {
LABEL_95:
                v34 = 1;
LABEL_142:
                *(result + 8) = v34;
                goto LABEL_143;
              }

LABEL_80:
              v34 = 2;
              goto LABEL_143;
            }

            goto LABEL_136;
          }

          goto LABEL_131;
        }
      }

      *(result + 8) = 0x100000005;
      *(result + 1909) = 0;
      goto LABEL_124;
    }

    if (v20 >> 3 >= 0x271)
    {
LABEL_88:
      *(result + 8) = 0x100000006;
LABEL_89:
      v34 = 6;
      goto LABEL_143;
    }

    if (v22 >> 3 >= 0x271)
    {
      goto LABEL_123;
    }

    if (v31)
    {
      goto LABEL_97;
    }

    if (!v32)
    {
      v38 = *(result + 1892);
      if (v38 < 0x3A99 || !v28)
      {
        if (v38 >= 0x3A99 && v33 <= 4)
        {
          *(result + 8) = 1;
          v34 = 1;
          goto LABEL_143;
        }

        if (v18 >> 3 >= 0x271 || !v16)
        {
          v34 = 0;
          goto LABEL_143;
        }

        *(result + 8) = 2;
        goto LABEL_80;
      }

LABEL_136:
      *(result + 8) = 3;
      v34 = 3;
      goto LABEL_143;
    }

LABEL_131:
    *(result + 8) = 10;
    v34 = 10;
    goto LABEL_143;
  }

  if (v34 <= 5)
  {
    if (v34 != 3)
    {
      if (v34 != 5)
      {
        goto LABEL_143;
      }

      if (!v31)
      {
        if (*(result + 24) != 2 || (*a3 & 0x20) != 0 || *(result + 1916) < 6uLL || 1000 * *(result + 1916) < (*(result + 1808) - *(result + 1924)))
        {
          if (v20 < 0x2711)
          {
            if (!v30 && v14 && v26)
            {
              v34 = 0;
              *(result + 8) = 0;
              *(result + 1904) = *(result + 1808);
LABEL_129:
              *(result + 1892) = 0;
              goto LABEL_143;
            }

LABEL_124:
            v34 = 5;
            goto LABEL_143;
          }

          goto LABEL_88;
        }

LABEL_122:
        *(result + 8) = 0x100000001;
        v34 = 1;
        *(result + 1909) = 1;
        *(result + 1900) = 0;
        *(result + 1904) = 0;
        *(result + 1872) = 0;
        *(result + 1880) = 0;
        *(result + 1864) = 0;
        *(result + 1888) = 0;
        goto LABEL_143;
      }

      goto LABEL_97;
    }

    if (a5 <= 5.0 || v22 >> 4 < 0x271)
    {
      if (!v31)
      {
        v34 = 3;
        if (!v14 || v33 > 4)
        {
          goto LABEL_143;
        }

        goto LABEL_95;
      }

LABEL_97:
      if (a5 <= 1.79999995)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      *(result + 8) = v34;
      *(result + 12) = 1;
      goto LABEL_143;
    }

    goto LABEL_123;
  }

  if (v34 == 6)
  {
    if (v31)
    {
      goto LABEL_97;
    }

    if (v24 && *(result + 16) != 9)
    {
LABEL_123:
      *(result + 8) = 0x100000005;
      goto LABEL_124;
    }

    v34 = 6;
    if (a5 < 17.8999996 && *(result + 24) == 2 && (*a3 & 0x20) == 0 && *(result + 1916) >= 6uLL)
    {
      if (1000 * *(result + 1916) < (*(result + 1808) - *(result + 1924)))
      {
        goto LABEL_89;
      }

      goto LABEL_122;
    }
  }

  else if (v34 == 10)
  {
    v36 = !v30;
    if (v22 >> 3 >= 0x271)
    {
      v36 = 0;
    }

    if (v36)
    {
      v34 = 10;
    }

    else
    {
      *(result + 8) = 0x100000005;
      *(result + 1909) = 0;
      v34 = 5;
    }

    v39 = *(result + 1808);
    if ((v39 - *(result + 1912)) > 0x15F8F)
    {
      v34 = 0;
      *(result + 8) = 0;
      *(result + 1904) = v39;
      goto LABEL_129;
    }
  }

LABEL_143:
  if (!v27)
  {
    return result;
  }

  if (a4 == 1)
  {
    v42 = 1;
LABEL_146:
    *(result + 8) = v42;
LABEL_147:
    *(result + 12) = 1;
    return result;
  }

  v43 = *(v27 + 4216);
  if (v43 == 9)
  {
LABEL_151:
    if (*(v27 + 4224) == 1 && (*(v27 + 4226) & 1) == 0)
    {
      *(result + 8) = 1;
      if (*(v27 + 4220) > 2)
      {
        goto LABEL_147;
      }

      goto LABEL_189;
    }

    goto LABEL_159;
  }

  if (v43 != 5)
  {
    if (v43 != 3)
    {
      goto LABEL_159;
    }

    goto LABEL_151;
  }

  if (*(v27 + 4224) == 1)
  {
    if (*(v27 + 4226))
    {
      if (a4 == 2)
      {
        goto LABEL_160;
      }

LABEL_165:
      if (a4 != 3)
      {
        return result;
      }

LABEL_168:
      v42 = 3;
      goto LABEL_146;
    }

    *(result + 8) = 2;
    if (*(v27 + 4220) >= 3)
    {
      goto LABEL_147;
    }

LABEL_189:
    *(result + 12) = 0;
    return result;
  }

LABEL_159:
  if (a4 != 2)
  {
    if (v43 == 4 && *(v27 + 4224) == 1)
    {
      if ((*(v27 + 4226) & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_165;
    }

    if (a4 == 3)
    {
      goto LABEL_168;
    }

    if (v43 == 10)
    {
      if (*(v27 + 4224) != 1 || (*(v27 + 4226) & 1) != 0)
      {
        return result;
      }

      v45 = 11;
    }

    else if (v43 == 8)
    {
      if (*(v27 + 4224) != 1 || (*(v27 + 4226) & 1) != 0)
      {
        return result;
      }

      v45 = 10;
    }

    else
    {
      if (v43 != 7 || *(v27 + 4224) != 1 || (*(v27 + 4226) & 1) != 0)
      {
        return result;
      }

      v45 = 3;
    }

    *(result + 8) = v45;
    if (*(v27 + 4220) == 3)
    {
      goto LABEL_147;
    }

    goto LABEL_189;
  }

LABEL_160:
  if (v34 == 6)
  {
    v44 = 0x100000006;
  }

  else
  {
    v44 = 0x100000005;
  }

  *(result + 8) = v44;
  return result;
}

uint64_t BlueFin::GlPeContextMgr::StaticMonitor(uint64_t this, int a2, int a3, char a4, int a5, double a6, double a7)
{
  if (*(this + 1928) >= 0.5 || *(this + 1932) >= 0.5)
  {
    v7 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *(this + 1936) < 0.5;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  if (!v7)
  {
    *(this + 1984) = a2;
  }

LABEL_8:
  if (a6 < 0.5)
  {
    v8 = a5;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 - a3) < 0x7531 || (a2 - *(this + 1984)) > 0x7530;
  if (v8 & v9)
  {
    v9 = 1;
    v8 = 1;
  }

  else if (*(this + 1988) == 1)
  {
    v10 = a6 < 0.5;
    if (a7 > 0.25)
    {
      v10 = 1;
    }

    v11 = v10 || v9;
    if (*(this + 1989) == 1)
    {
      v9 = v11;
      v8 = v11;
    }
  }

  v12 = *(this + 1816);
  v13 = v12 + 4096;
  v14 = *(v12 + 4216);
  if (v14 != 6)
  {
    if (v14 == 1 && (*(v13 + 128) & 1) != 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if (*(v13 + 128) != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  v15 = *(v13 + 130) ^ 1;
LABEL_27:
  if (v8 & v9) == 1 && (a4)
  {
    *(this + 1988) = 1;
  }

  else
  {
    *(this + 1988) = v15 & 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (*(this + 1764))
  {
    v16 = 60;
  }

  else
  {
    v16 = 180;
  }

  if (*(this + 1328) > 4.0 && *(this + 1320) < 20.0 && *(this + 76) >= v16)
  {
    if (*(this + 1764))
    {
      LOBYTE(v17) = 1;
      goto LABEL_38;
    }

    v17 = *(this + 64);
    if (v17 == 1)
    {
      goto LABEL_38;
    }
  }

LABEL_37:
  LOBYTE(v17) = 0;
LABEL_38:
  *(this + 1989) = v17;
  return this;
}

double BlueFin::GlPeContextMgr::UpdateVelocityContext(uint64_t a1, _DWORD *a2, double result, double a4)
{
  v4 = *(a1 + 1816);
  if (v4[81] >= *v4 || ((v5 = *(v4 + 1054), v5 == 6) || v5 == 1) && *(v4 + 4224) == 1 && (v4[2113] & 1) == 0)
  {
    v6 = 2;
    goto LABEL_9;
  }

  if (*(v4 + 42) > (*(v4 + 41) + 1000))
  {
    v6 = 3;
LABEL_9:
    *(a1 + 32) = v6;
    goto LABEL_11;
  }

  *(a1 + 32) = 0;
LABEL_11:
  *(a1 + 36) = 1;
  if (a4 < 1.0 && result > 5.0 && (*a2 & 8) != 0)
  {
    result = result * 1000.0 * dbl_298A41620[(*(a1 + 8) - 3) < 4];
    *(v4 + 1064) = *(a1 + 1808) + result;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeAsstMgr::HandleBadEph(BlueFin::GlPeGloFcnOsnMgr **this, const void **a2, int **a3)
{
  v49 = v51;
  v50 = 8;
  memset(v51, 0, 32);
  v6 = BlueFin::GlSetBase::GlSetBase(&v46, v48, 8u, a2);
  v42 = &v44;
  LOBYTE(v43) = 8;
  v44 = 0u;
  v45 = 0u;
  v32 = a3;
  BlueFin::GlSetBase::OperatorBinaryOr(v6, &v42, a3);
  BlueFin::GlSetBase::operator=(&v46, &v42);
  v48[0] = v44;
  v48[1] = v45;
  LOBYTE(v42) = v47;
  memcpy(&v43, v46, 4 * v47);
  WORD1(v42) = 0;
  BYTE1(v42) = 0;
  HIDWORD(v42) = v43;
  BlueFin::GlSetIterator::operator++(&v42);
  while (BYTE1(v42) != v42)
  {
    v9 = BYTE2(v42);
    LOBYTE(v35) = BYTE2(v42);
    LODWORD(__src) = 7;
    BYTE4(__src) = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss(this + 14968, &v35, &__src, v7, v8);
    v10 = BYTE4(__src);
    if (BYTE4(__src) - 1 <= 0x3E)
    {
      Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, __src);
      if (Mgr)
      {
        v12 = Mgr;
        LOBYTE(__src) = v10;
        v13 = (*(*Mgr + 112))(Mgr, &__src, 0);
        if (v13)
        {
          v15 = v13;
          v16 = *(*this + 642);
          v14.n128_f64[0] = v16;
          if (v16 <= 0xFF9222FE)
          {
            v14.n128_f64[0] = v16;
          }

          if (!(*(*v12 + 64))(v12, &__src, 1, v14) && (*(*v15 + 152))(v15) == 3)
          {
            *(v49 + ((v9 >> 3) & 0x1C)) |= 1 << v9;
          }
        }
      }
    }

    BlueFin::GlSetIterator::operator++(&v42);
  }

  BlueFin::GlSetBase::GlSetBase(&v35, &v37, 8u, a2);
  v42 = &v44;
  LOBYTE(v43) = 8;
  v44 = 0u;
  v45 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(&v35, &v42, v32);
  BlueFin::GlSetBase::operator=(&v35, &v42);
  v37 = v44;
  v38 = v45;
  BlueFin::GlSetBase::GlSetBase(&__src, v41, 8u, &v35);
  v42 = &v44;
  LOBYTE(v43) = 8;
  v44 = 0u;
  v45 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v42, &v49);
  BlueFin::GlSetBase::operator=(&__src, &v42);
  v41[0] = v44;
  v41[1] = v45;
  LOBYTE(v42) = v40;
  memcpy(&v43, __src, 4 * v40);
  WORD1(v42) = 0;
  BYTE1(v42) = 0;
  HIDWORD(v42) = v43;
  BlueFin::GlSetIterator::operator++(&v42);
  while (BYTE1(v42) != v42)
  {
    v19 = BYTE2(v42);
    v20 = BYTE2(v42);
    v34 = BYTE2(v42);
    if (BYTE2(v42) - 1 <= 0xBB)
    {
      LODWORD(v33[0]) = 7;
      BYTE4(v33[0]) = 0;
      BlueFin::GlPeSvIdConverter::SvId2Gnss(this + 14968, &v34, v33, v17, v18);
      v21 = LODWORD(v33[0]);
      if (SLODWORD(v33[0]) <= 6)
      {
        v22 = BYTE4(v33[0]);
        if (BYTE4(v33[0]) - 1 <= 0x3E && ((*(*(this[1] + 7663) + ((v19 >> 3) & 0x1C)) >> (v19 & 0x1F)) & 1) != 0)
        {
          v23 = *(*this + 642);
          v24 = v23;
          if (v23 <= 0xFF9222FE)
          {
            v24 = v23;
          }

          *v25.i64 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*this, 0, 0, &v35, v24);
          v27 = HIDWORD(v35) / 0x3E8 + 604800 * v35 - *(this + v21 + 2096);
          if (v27 <= 86400)
          {
            v28 = BlueFin::GNSS2STR(v21);
            GlCustomLog(14, "<SKFNAV> High LTO residual for SV (%s,%d) but not removing because LTO age for this GNSS is %d sec (threshold is %d sec)\n", v28, v22, v27, 86400);
          }

          else
          {
            v52[0] = v20;
            BlueFin::GlPeLtoMgr::IdentifyBadLtoSvId((this + 928), v52, 1, v25, v26);
          }
        }
      }
    }

    BlueFin::GlSetIterator::operator++(&v42);
  }

  BlueFin::GlSvIdSet::operator~(&v49, v33);
  BlueFin::GlSetBase::GlSetBase(&v35, &v37, 8u, v32);
  v42 = &v44;
  LOBYTE(v43) = 8;
  v44 = 0u;
  v45 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v35, &v42, v33);
  BlueFin::GlSetBase::operator=(&v35, &v42);
  v37 = v44;
  v38 = v45;
  LOBYTE(v42) = v36;
  memcpy(&v43, v35, 4 * v36);
  WORD1(v42) = 0;
  BYTE1(v42) = 0;
  HIDWORD(v42) = v43;
  for (result = BlueFin::GlSetIterator::operator++(&v42); BYTE1(v42) != v42; result = BlueFin::GlSetIterator::operator++(&v42))
  {
    v52[0] = BYTE2(v42);
    LODWORD(v33[0]) = 7;
    BYTE4(v33[0]) = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss(this + 14968, v52, v33, v30, v31);
    if (SLODWORD(v33[0]) <= 6 && BYTE4(v33[0]) - 1 <= 0x3E)
    {
      BlueFin::GlPeAsstMgr::MarkSuspectedBadDecode(this, v33);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::SetDtsS(unint64_t a1, unsigned int a2, unsigned __int8 *a3, double a4, double a5, double a6)
{
  if (!*(a1 + 2576))
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 4566, "SetDtsS", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 4566, "IsValid()");
  }

  v12 = *(a1 + 2736);
  v71 = 0.0;
  v72 = 0.0;
  BlueFin::GlPeTimeManager::GetDtsS(a1, a4, &v72, &v71, 0, 0);
  v13 = v71 < a6 && v71 != 4294967300.0;
  v14 = a2 - 7;
  if (a2 > 9)
  {
LABEL_64:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = 1;
  if (((1 << a2) & 0x268) == 0)
  {
    if (a2 == 1)
    {
      v15 = 0;
      v19 = *(a1 + 3628) * *(a1 + 3624);
      if (v19 <= 0x2710)
      {
        v19 = 10000;
      }

      v16 = v19 > a6;
      v18 = 1;
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_7:
  v16 = 0;
  if (v14 < 3)
  {
    v17 = 1;
    goto LABEL_18;
  }

  v18 = 0;
LABEL_14:
  if (a2 == 3)
  {
    v20 = 1;
  }

  else
  {
    v20 = v15;
  }

  v17 = v20 | v16;
  v16 = v18;
LABEL_18:
  v21 = fabs(a5);
  if (*(a1 + 2748) != 1)
  {
    v16 = 0;
  }

  v22 = v16 && v13;
  if (v12 == 4294967300.0)
  {
    if (v21 < 100.0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v15;
    }

    if ((v27 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_46;
    }

    *(a1 + 2720) = a4;
    *(a1 + 2728) = a5;
    *(a1 + 2736) = a6;
    *(a1 + 2760) = a5;
    goto LABEL_36;
  }

  v23 = 0;
  v24 = !v13 & v17;
  if (a6 < 1.0 && v14 < 3)
  {
    v24 = 1;
  }

  v26 = v15 ^ 1;
  if (v21 < 100.0)
  {
    v26 = 0;
  }

  if (v26 & 1) == 0 && ((v24 | v22))
  {
    *(a1 + 2720) = a4;
    *(a1 + 2728) = a5;
    *(a1 + 2736) = a6;
LABEL_36:
    BlueFin::GlPeTimeManager::cacheGnssTime(a1);
    if (a6 <= 1.0 && (*(a1 + 2752) & 1) == 0)
    {
      BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v66);
      LODWORD(v67) = v67 | 0x40;
      BlueFin::GlPeTimeManager::GetTime(a1, 1, &v64);
      v68 = v64.n128_u64[0];
      v69 = v64.n128_u32[2];
      v70 = v65;
      if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (v66[3])(&v66, 0, 0);
      }

      *(a1 + 2752) = 1;
    }

    if (v22)
    {
      *(a1 + 3704) = 1;
    }

    *(a1 + 2748) = a2;
    v23 = 1;
  }

LABEL_46:
  if (v21 >= 100.0)
  {
    goto LABEL_52;
  }

  v28 = *(a1 + 2744) | (1 << a2);
  *(a1 + 2744) = v28;
  if (a2 == 5)
  {
    v29 = 80;
  }

  else
  {
    if (a2 != 9)
    {
      goto LABEL_52;
    }

    v29 = 256;
  }

  *(a1 + 2744) = v29 | v28;
LABEL_52:
  if ((v15 | v23) == 1 && (v21 >= 100.0 || *(a1 + 2580) != 5))
  {
    BlueFin::GlPeTimeManager::GetTime(a1, a4, 1, &v64);
    if (a2 <= 9 && ((1 << a2) & 0x268) != 0)
    {
      BlueFin::GlPeTimeManager::GetTime(a1, *&v65, 0, &v66);
      v30 = BlueFin::GlPeGnssTime::operator-(&v64, &v66);
      v31 = *(&v65 + 1);
      v32 = *(&v65 + 1) * 0.000001 + 100.0;
      v33 = fabs(v30);
      if (v33 >= v32)
      {
        GlCustomLog(11, "GlPeTimeManager::verifyInitialTime(%u): Gross difference between initial time and %s time (%.3lf > %.0lf sec). Error assumed in initial time. Reset required!", *(a1 + 2568), BlueFin::GlPeTimeManager::m_acTimeSourceImage[a2], v33, *(&v65 + 1) * 0.000001 + 100.0);
        if (*a3)
        {
          GlCustomLog(11, "  SVID:%d", *a3);
        }

        GlCustomLog(11, "\n");
        v34 = *(BlueFin::GlUtils::m_pInstance + 1092);
        *(a1 + 3584) = v34;
        if ((a1 + 3592) != &v64)
        {
          *(a1 + 3592) = v64.n128_u64[0];
          *(a1 + 3600) = v64.n128_u32[2];
          *(a1 + 3608) = v65;
        }

        v35 = -7200001;
        v36 = *(a1 + 2568);
        if (v36 != -7200001)
        {
          v37 = *(a1 + 2572);
          if (v37)
          {
            v35 = v36 + v34 - v37;
          }

          else
          {
            v35 = *(a1 + 2568);
          }
        }

        v38 = BlueFin::GlPeGnssTime::operator+=((a1 + 3592), (v35 - *(a1 + 3608)) * 0.001);
        *(a1 + 3608) = v35;
        v63 = *(a1 + 2568);
        v62 = *(a1 + 3584);
        v67 = 0;
        v66 = &off_2A1F0B5F0;
        Gps = BlueFin::GlPeGnssTime::GetGps(v38, &v66);
        v61 = (v66[4])(&v66, Gps) / 0x93A80;
        v74 = 0;
        v73 = COERCE_DOUBLE(&off_2A1F0B5F0);
        v40 = BlueFin::GlPeGnssTime::GetGps((a1 + 3592), &v73);
        v41 = (*(*&v73 + 32))(&v73, v40);
        LODWORD(v42) = v74;
        GlCustomLog(14, "TimeRecovery(%u): GlPeTimeManager::verifyInitialTime: OsTime:%u  Lms:%u  GpsWeek:%d  GpsTow:%.6lf\n", v63, v62, v35, v61, v42 * 2.32830644e-10 + (v41 % 0x93A80));
        if (*(a1 + 4873))
        {
          BlueFin::GlPeGnssTime::operator+=((a1 + 2608), v30);
        }

        else
        {
          *(a1 + 2768) = 1;
        }
      }

      else if (a2 == 5)
      {
        *(a1 + 2580) = 5;
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
          v31 = *(&v65 + 1);
        }

        GlCustomLog(14, "GlPeTimeManager::VerifyInitTime(%u): TimeErrS:%+.6lf  ErrThreshS:%.0lf  Source:%s  SourceUncUs:%.3lf", *(a1 + 2568), v30, v32, "Verified Satellite", v31);
        if (*a3)
        {
          GlCustomLog(14, "  SVID:%d", *a3);
        }

        GlCustomLog(14, "\n");
      }
    }
  }

  if ((*(a1 + 2912) & 1) == 0)
  {
    if (BlueFin::GlUtils::m_ucEnabled && (BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE) & 1) != 0)
    {
      v64.n128_u64[0] = 0;
      v73 = 0.0;
      BlueFin::GlPeTimeManager::GetDtsS(a1, 0.0, v64.n128_f64, &v73, 0, 0);
      v43 = v73;
      if (v73 >= 1.0)
      {
        goto LABEL_90;
      }

      v44 = *(a1 + 2760) - v64.n128_f64[0];
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
        v43 = v73;
      }

      GlCustomLog(14, "GlPeTimeManager::InitTimeSummary(%u):  InitTimeErrS:%+.6lf  InitTimeUncUs:%.3lf  CurTimeUncUs:%.3lf\n", *(a1 + 2568), v44, *(a1 + 2632), v43);
      if (*(a1 + 2816) != -1 && *(a1 + 2832) != 4294967300.0)
      {
        BlueFin::GlPeTimeManager::GetTime(a1, *(a1 + 2824), 1, &v66);
        v45 = BlueFin::GlPeGnssTime::operator-(&v66, a1 + 2808);
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
        }

        GlCustomLog(14, "GlPeTimeManager::RtcSummary(%u): SleepTimeS:%.6lf  ErrorInRtcS:%+.6lf  RtcUncUs:%.3lf  CalibratedRtcFreqOffsetPpb:%+.0lf\n", *(a1 + 2568), *(a1 + 2552) * 0.001, v45, *(a1 + 2832), *(a1 + 2848) * 1000000000.0);
      }

      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF);
      }
    }

    *(a1 + 2912) = 1;
  }

LABEL_90:
  v46 = 114;
  if (v21 < 100.0)
  {
    v46 = 82;
  }

  v60 = v46;
  v47 = 116;
  if (v17)
  {
    v47 = 84;
  }

  v48 = 118;
  if (v15)
  {
    v48 = 86;
  }

  v59 = v47;
  v49 = 110;
  if (v14 < 3)
  {
    v49 = 78;
  }

  v50 = 73;
  if (v13)
  {
    v50 = 105;
  }

  v51 = 89;
  if (!v23)
  {
    v51 = 78;
  }

  GlCustomLog(14, "GlPeTimeManager::setDts(%u): Accepted:%c  Source:%s  Dt=[lms:%.3lf  dtsS:%.9lf  uncUs:%.3lf] Flags:%c%c%c%c%c", *(a1 + 2568), v51, BlueFin::GlPeTimeManager::m_acTimeSourceImage[a2], a4, a5, a6, v50, v49, v48, v59, v60);
  if (v12 == 4294967300.0)
  {
    v52 = 0;
  }

  else
  {
    v52 = v23;
  }

  if (v52 == 1)
  {
    v53 = *(a1 + 2736);
    v54 = v53 - v71;
    v55 = *(a1 + 2728) - v72;
    v56 = vabdd_f64(v53, v71);
    v57 = "Degraded";
    if (v54 <= 0.0)
    {
      v57 = "Improved";
    }

    GlCustomLog(14, "  DeltaDtsS:%+.9lf  DeltaUncUs:%.3lf (%s)", *(a1 + 2728) - v72, v56, v57);
  }

  GlCustomLog(14, "\n");
  return v23;
}

double BlueFin::GlPeFixStatus::UpdateAccumDist(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 7076);
  v6 = v4 != 6 && v4 != 1;
  v10 = *(a1 + 4072);
  v11 = 0;
  v7 = *(a1 + 4192) == 1;
  v9 = *(a1 + 4200) * 0.5144444;
  BlueFin::GlPeAsstMgr::UpdateAccumDist(a1, &v10, a2, a3, a4, v7, &v9, v6, *(a1 + 4064));
  return result;
}

void BlueFin::GlPeAsstMgr::UpdateAccumDist(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, double *a7, int a8, int a9)
{
  if (a9)
  {
    v15 = 10.0;
  }

  else
  {
    v15 = 5.0;
  }

  if (a4 && a5 && *(a4 + 4129) == 1)
  {
    v16 = *(a4 + 4088);
    *(a3 + 32) = v16;
    return;
  }

  if (*a3 == -7200001)
  {
    *(a3 + 8) = *a2;
    *(a3 + 24) = *(a2 + 16);
    *(a3 + 32) = 0;
    v17 = *a1;
LABEL_10:
    *a3 = v17;
    return;
  }

  if (*a3 != *a1)
  {
    BlueFin::lla2ned((a3 + 8), a2, 0, &v25);
    v18 = sqrt(v26 * v26 + v25 * v25);
    v17 = *a1;
    v19 = (*a1 - *a3) * 0.001;
    v20 = v18 / v19;
    v21 = v20 <= 40.0;
    if (v20 > 40.0 && a6 != 0)
    {
      v21 = *a7 > 100.0;
    }

    if (v15 >= v18)
    {
      if (a6)
      {
        if (*a7 > 0.1)
        {
          v24 = *(a3 + 36) + v18;
          if (v24 > *(a3 + 32))
          {
            *(a3 + 32) = v24;
          }
        }
      }
    }

    else
    {
      if ((v21 & a8) == 1)
      {
        v23 = *(a3 + 36) + v18;
        *(a3 + 32) = v23;
        *(a3 + 36) = v23;
      }

      *(a3 + 8) = *a2;
      *(a3 + 24) = *(a2 + 16);
    }

    goto LABEL_10;
  }
}

uint64_t BlueFin::GlPeOscMgr::GetOscOffAge(BlueFin::GlPeOscMgr *this)
{
  v2 = *(this + 2);
  v3 = v2[642];
  v4 = 0x7FFFFFFFLL;
  if (v3 != -7200001)
  {
    v5 = v3;
    if (v3 <= 0xFF9222FE)
    {
      v5 = v3;
    }

    BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v2, 0, 0, v13, v5);
    v6 = (v13[0] - *(this + 12));
    v7 = v14 - *(this + 7);
    if (v6 >= 0)
    {
      v8 = (v13[0] - *(this + 12));
    }

    else
    {
      v8 = -v6;
    }

    if (v7 >= 0)
    {
      v9 = v14 - *(this + 7);
    }

    else
    {
      v9 = *(this + 7) - v14;
    }

    v10 = v9 >= 0x240C8401 || v8 >= 2;
    v11 = v7 + 604800000 * v6;
    if (v10)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return v11;
    }
  }

  return v4;
}

double BlueFin::GlPeOscMgr::SetOscOff(BlueFin::GlPeOscMgr *this, double result, double a3, int a4)
{
  if (*(this + 14))
  {
    return result;
  }

  v6 = result * 1000000000.0;
  if (v6 > 0.0)
  {
    v7 = 0.5;
LABEL_7:
    v8 = (v6 + v7);
    goto LABEL_8;
  }

  if (v6 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_7;
  }

  LOWORD(v8) = 0;
LABEL_8:
  *(this + 1) = v8;
  *this = a4;
  if (a4)
  {
    v9 = *(this + 2);
    if (*(v9 + 2576) == 3 || (*(v9 + 2744) & 8) != 0)
    {
      GlCustomLog(14, "CntinDebug Apply %d %d\n", *(this + 2), 0);
      *(this + 1) += *(this + 2);
    }
  }

  if (a3 * 1000000000.0 > 0.0)
  {
    v10 = 0.5;
LABEL_17:
    v11 = (a3 * 1000000000.0 + v10);
    goto LABEL_18;
  }

  if (a3 * 1000000000.0 < 0.0)
  {
    v10 = -0.5;
    goto LABEL_17;
  }

  LOWORD(v11) = 0;
LABEL_18:
  if (v11 <= 1)
  {
    LOWORD(v11) = 1;
  }

  *(this + 5) = v11;
  v12 = *(this + 2);
  v13 = v12[642];
  if (v13 == -7200001)
  {

    GlCustomLog(14, "GlPeOscMgr::SetOscOff( Last Asic Lms is not valid\n");
  }

  else
  {
    *(this + 10) = v13;
    v14 = v13;
    if (v13 <= 0xFF9222FE)
    {
      v14 = v13;
    }

    return BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v12, 0, 0, this + 24, v14);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetQzssL5XbCodeAdvance(_BYTE *a1)
{
  if (*a1 - 66 >= 0xA)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1443, "GetQzssL5XbCodeAdvance", "otSvId.IsQzss()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1443, "otSvId.IsQzss()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_ausQzssL5XbCodeAdvance[(*a1 - 66)];
}

float BlueFin::GlPeNavSatAid::GenerateNavAiding(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int *a7, float *a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (*(a1 + 4) == 1)
  {
    DeviceFaultNotify("glpe_navaid.cpp", 85, "GenerateNavAiding", "m_otState != NAVAID_STATE_EMPTY");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navaid.cpp", 85, "m_otState != NAVAID_STATE_EMPTY");
  }

  *(a1 + 16) = a4;
  v21 = 0.0;
  v22 = 0;
  if (a7)
  {
    v22 = *a7;
  }

  v52 = v22;
  if (a8)
  {
    v23 = 0;
    v21 = *a8;
  }

  else
  {
    v23 = &v51;
  }

  v51 = v21;
  v50 = 0;
  v48 = 0;
  v46[16] = 0x300000001;
  *v46 = a9;
  *&v46[1] = a10;
  v46[2] = 0;
  if (a7)
  {
    v24 = 0;
  }

  else
  {
    v24 = &v52;
  }

  v25 = (*(*a2 + 80))(a2, a6, a5 + 24, a5, v49, v47, v24, v23);
  BlueFin::Matrix::mult(v45, v46, 1, v47, v25);
  v26 = v45[0];
  v27 = -*(a6 + 40);
  v42 = vnegq_f64(*(a6 + 24));
  v44 = 0x300000001;
  v43 = v27;
  BlueFin::Matrix::mult(v45, &v42, 1, v49, v27);
  v28 = -(v45[0] - *(a6 + 56) * -299792458.0);
  v41 = v28 - v26;
  v29 = v51;
  v30 = __sincosf_stret(v51 * 0.017453);
  v31 = v30.__cosval * a13;
  if (v31 < a14)
  {
    v31 = a14;
  }

  v32 = v31 * 0.000000001;
  v33.f64[0] = v30.__sinval * a12 + v30.__cosval * a11;
  v33.f64[1] = v41;
  *a3 = (v25 + *(a6 + 48) * -299792458.0) / 299792458.0;
  *(a3 + 8) = vcvt_f32_f64(vdivq_f64(v33, xmmword_298A3AE20));
  LODWORD(v33.f64[0]) = v52;
  *(a3 + 16) = v32;
  *(a3 + 20) = LODWORD(v33.f64[0]);
  *(a3 + 48) = *(a6 + 64);
  v34 = v48;
  *v33.f64 = v47[0];
  *(a3 + 24) = v29;
  *(a3 + 28) = LODWORD(v33.f64[0]);
  v35 = v34 == 1;
  v36 = 4;
  if (v35)
  {
    v36 = 1;
  }

  v37 = v47[v36];
  v38 = 8;
  if (v35)
  {
    v38 = 2;
  }

  v39 = v47[v38];
  *(a3 + 32) = v37;
  *(a3 + 36) = v39;
  result = v28 / 299792458.0;
  *(a3 + 40) = result;
  return result;
}

uint64_t BlueFin::GlPeAsstMgr::GetIODE(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, int8x16_t a5, int8x16_t a6)
{
  *a4 = -1;
  *a3 = -1;
  v11 = 7;
  v12[0] = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v11, a5, a6);
  if (v11 <= 6 && v12[0] - 1 <= 0x3E)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), v11);
    if (result)
    {
      result = (*(*result + 112))(result, v12, 1);
      if (result)
      {
        v10 = result;
        result = (*(*result + 160))(result);
        *a3 = result;
        if (v11 <= 4 && ((1 << v11) & 0x19) != 0)
        {
          result = (*(*v10 + 192))(v10, 5);
        }

        *a4 = result;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeRangeAidGen::KfUpdate(uint64_t a1, unsigned int a2, uint64_t a3, int a4, char a5, int a6, double a7, double a8, double a9)
{
  if (!a3)
  {
    DeviceFaultNotify("glpe_raidgen.cpp", 1193, "KfUpdate", "nullptr != pastSatAid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_raidgen.cpp", 1193, "nullptr != pastSatAid");
  }

  *(a1 + 19080) = a2;
  bzero(*(a1 + 19032), ((4 * *(a1 + 19040) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v46 = 0uLL;
  v47 = 0;
  v13 = *(a1 + 18048);
  if (*(v13 + 100) != -1)
  {
    v46 = *(v13 + 168);
    v47 = *(v13 + 184);
  }

  if (a4 >= 1)
  {
    v14 = 0;
    v41 = a4;
    v15 = a9;
    v16 = -v15;
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v40 = vnegq_f64(v18);
    do
    {
      v19 = a3 + 56 * v14;
      AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(a1 + 32, (v19 + 44));
      if (AidBySvId)
      {
        v23 = AidBySvId;
        v24 = *(AidBySvId + 6);
        v25 = v24 | 0x30;
        v26 = v24 & 0xFFFFFFCF | 0x10;
        if (a6)
        {
          v26 = v25;
        }

        *(AidBySvId + 12) = *(v19 + 16);
        *(AidBySvId + 13) = v17;
        *(AidBySvId + 6) = v26;
        v22.i64[0] = *(v19 + 8);
        *(AidBySvId + 4) = -*v19;
        *(AidBySvId + 5) = v22.i64[0];
        v22.i32[0] = *(v19 + 20);
        v27 = *(v19 + 24);
        v28 = v27;
        if (v27 >= 0.0)
        {
          *v21.i64 = 0.5;
        }

        else
        {
          *v21.i64 = -0.5;
        }

        *(AidBySvId + 37) = (*v21.i64 + v28);
        *v21.i64 = *v22.i32 + 0.5;
        *v22.i64 = *v21.i64 + trunc(*v21.i64 * 2.32830644e-10) * -4294967300.0;
        v29 = vbslq_s8(v40, v22, v21);
        if (*v21.i64 > 4294967300.0)
        {
          v21.i64[0] = v29.i64[0];
        }

        if (*v21.i64 < -4294967300.0)
        {
          *v29.i64 = -*v21.i64;
          *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
          *v21.i64 = -*vbslq_s8(v40, v21, v29).i64;
        }

        v30 = 0;
        if (*v21.i64 < 0.0)
        {
          v31 = --*v21.i64;
        }

        else
        {
          LOWORD(v31) = *v21.i64;
        }

        *(AidBySvId + 36) = v31;
        *(AidBySvId + 12) = *(v19 + 48);
        *(AidBySvId + 76) = *(v19 + 28);
        v32 = BlueFin::GlSvId::s_aucSvId2gnss[*(v19 + 44)];
        v33 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
        do
        {
          if (*(*(a1 + 18056) + v32 + 256) >> v30)
          {
            v43[0] = *(v19 + 44);
            v44 = v30;
            v45 = 575;
            if (v43[0] - 189 >= 0xFFFFFF44)
            {
              v34 = BlueFin::GlSvId::s_aucSvId2gnss[v43[0]];
              if (v33[v34] == 255)
              {
                v44 = -1;
              }

              else
              {
                v45 = BlueFin::GlSignalId::s_ausGnss2signalId[v34] + v43[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v34] + v30 * BlueFin::GlSvId::s_aucGnss2numSvId[v34];
              }
            }

            CarrierBasedBiases = BlueFin::GlPeComputeZRH::getCarrierBasedBiases(*(a1 + 19360), v43, a2, &v46, (v19 + 52), *(v19 + 20), *(v19 + 24));
            *&v23[4 * v30 + 56] = -CarrierBasedBiases;
            *(v23 + 4) = *(v19 + 52);
          }

          ++v30;
          v33 += 7;
        }

        while (v30 != 4);
        if (*(v23 + 3) == 2)
        {
          *(v23 + 3) = 1;
        }

        *(*(a1 + 19032) + ((*(v19 + 44) >> 3) & 0x1C)) |= 1 << *(v19 + 44);
        *(v23 + 5) = 0;
      }

      ++v14;
    }

    while (v14 != v41);
  }

  if (a5)
  {
    v36 = *(a1 + 18048);
    GlCustomLog(14, "GlPeAsstPosMgr::SetUserDyn(from:%s to:%s)\n", __const__ZN7BlueFin14GlPeAsstPosMgr10SetUserDynENS_9GlUserDynE_acUserDynImage[*(v36 + 96)], "STATIC");
    *(v36 + 96) = 1;
  }

  return 1;
}

uint64_t BlueFin::PackGridCfg(uint64_t this, _WORD *a2, unsigned __int16 *a3)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_kf.cpp", 7209, "PackGridCfg", "pusSlot");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 7209, "pusSlot");
  }

  *a2 = BYTE3(this);
  return this;
}

void BlueFin::GlMeasData_ADRState::UpdateCarrierPhaseM(BlueFin::GlMeasData_ADRState *this, const BlueFin::GlSignalId *a2, int a3, double *a4, const double *a5)
{
  BlueFin::GlMeasData_ADRState::Get(this, a2);
  v11 = v10;
  BlueFin::GlMeasData_ADRState::Get(this, a2);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v15 = *v11;
  v16 = *a4;
  if (!*v11)
  {
    if (*(a2 + 4) >= 0x23Fu)
    {
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
    }

    v20 = *a2;
    v21 = BlueFin::GlSvId::s_aucSvId2gnss[v20];
    v22 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v21]];
    v23 = v22;
    if (v21 == 2)
    {
      v24 = (v20 - 59);
      if ((v20 - 52) >= 0xE)
      {
        v24 = -8.0;
      }

      v23 = v22 + v24 * 562500.0;
    }

    v25 = v16 / (299792458.0 / v23);
    if (v25 <= 0.0)
    {
      if (v25 >= 0.0)
      {
        v27 = 0;
LABEL_18:
        if (v21 == 2)
        {
          v28 = (v20 - 59);
          if ((v20 - 52) >= 0xE)
          {
            v28 = -8.0;
          }

          v22 = v22 + v28 * 562500.0;
        }

        v11[1] = 299792458.0 / v22 * v27;
        v11[4] = 1.0;
        goto LABEL_23;
      }

      v26 = -0.5;
    }

    else
    {
      v26 = 0.5;
    }

    v27 = (v25 + v26);
    goto LABEL_18;
  }

  v17 = v11[2] - v16;
  if (v17 <= 262144.0)
  {
    if (v17 >= -262144.0)
    {
      goto LABEL_23;
    }

    v18 = v11[1];
    v19 = -524288.0;
  }

  else
  {
    v18 = v11[1];
    v19 = 524288.0;
  }

  v11[1] = v18 + v19;
LABEL_23:
  *v11 = a3;
  v11[2] = *a4;
  BlueFin::GlMeasData_ADRState::Get(this, a2);
  if (*v11)
  {
    v11[3] = (*(v29 + 8) + *(v29 + 16) - (v13 + v14)) / ((a3 - v15) * 0.001) / 299792458.0;
    v11[4] = (*a5 + *a5) / 299792458.0;
  }
}

double BlueFin::GlMeasData_ADRState::Get(BlueFin::GlMeasData_ADRState *this, const BlueFin::GlSignalId *a2)
{
  if (!BlueFin::GlSignalIdArray::Get(this, a2))
  {
    v5 = BlueFin::GlBigArray::Add((this + 1152), *(a2 + 4));
    if (v5)
    {
      goto LABEL_13;
    }

    v20 = this + 1152;
    v21 = *(this + 593) + 1;
    if (*(this + 592) <= v21)
    {
      goto LABEL_18;
    }

    v6 = 0;
    v7 = 575;
    v8 = -1;
    do
    {
      v9 = BlueFin::GlBigArrayIterator::Next(&v20);
      if (v9 >= 0x23Fu)
      {
        v14 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v15 = "glsignalid.h";
        v16 = 578;
        goto LABEL_16;
      }

      v10 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * (v9 & 0x3FF);
      v11 = *v10;
      LODWORD(v10) = v10[1];
      v17[0] = v11;
      v18 = v10;
      v19 = v9;
      v12 = *BlueFin::GlSignalIdArray::Get(this, v17);
      v13 = v12 <= v8;
      if (v12 <= v8)
      {
        v7 = v19;
      }

      if (v12 < v8)
      {
        v8 = v12;
      }

      v6 |= v13;
    }

    while (v21 < *(v20 + 16));
    if (v6)
    {
      BlueFin::GlBigArray::Remove(this + 1152, v7);
      v5 = BlueFin::GlBigArray::Add((this + 1152), *(a2 + 4));
      if (v5)
      {
LABEL_13:
        *v5 = 0;
        result = 0.0;
        *(v5 + 8) = 0u;
        *(v5 + 24) = 0u;
        return result;
      }

      v14 = "pAccPhase";
      DeviceFaultNotify("glpe_adrutil.cpp", 86, "Get", "pAccPhase");
      v15 = "glpe_adrutil.cpp";
      v16 = 86;
    }

    else
    {
LABEL_18:
      v14 = "bHaveSignalIdToRemove";
      DeviceFaultNotify("glpe_adrutil.cpp", 79, "Get", "bHaveSignalIdToRemove");
      v15 = "glpe_adrutil.cpp";
      v16 = 79;
    }

LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v15, v16, v14);
  }

  return result;
}

void BlueFin::GlPeRangeAidGen::GetSatelliteInterSignalBiasNs(BlueFin::GlPeRangeAidGen *this, const BlueFin::GlSignalId *a2, int a3, double *a4, double *a5)
{
  *a4 = (*(**(this + 2420) + 88))(*(this + 2420), a2, 0) / 299792.458 * 1000000.0;
  *a5 = 1.0;
  if (a3)
  {
    v10 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(BlueFin::GlSvId::s_aucSvId2gnss[*a2]);
    SystemConversionS = BlueFin::GlPeTimeManager::GetSystemConversionS(*this, v10);
    v12 = SystemConversionS - BlueFin::GlPeTimeManager::GetSystemConversionS(*this, 0);
    v13 = v12 / 0.001;
    if (v12 / 0.001 <= 0.0)
    {
      v14 = 0.0;
      if (v12 / 0.001 < 0.0)
      {
        v14 = ceil(v13 + -0.5);
      }
    }

    else
    {
      v14 = floor(v13 + 0.5);
    }

    *a4 = *a4 + (v12 + v14 * -0.001) * 1000000000.0;
    *a5 = *a5 + BlueFin::GlPeTimeManager::GetSystemConversionUncUs(*this, BlueFin::GlSvId::s_aucSvId2gnss[*a2]) * 1000.0;
  }
}

double BlueFin::GlGlnsTime::getTodS(BlueFin::GlGlnsTime *this)
{
  v3 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && *(this + 3) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  v4 = (*(*this + 32))(this);
  if (v3)
  {
    v6 = 10799.0;
  }

  else
  {
    v6 = (v4 % 0x15180);
  }

  LODWORD(v5) = *(this + 2);
  return v6 + v5 * 2.32830644e-10;
}

unint64_t BlueFin::GlMeSrdRotationListener::OnRotationComplete(BlueFin::GlMeSrdRotationListener *this, const BlueFin::GlMeSrdSearchMgrBase *a2)
{
  v2 = *(a2 + 18);
  v6[0] = 69;
  v6[1] = v2;
  v3 = *(this + 1);
  v4 = *(v3 + 32);
  result = *(v3 + 8);
  *(v3 + 32) = result;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(result, v3, v6, &v7))
    {
      result = v7;
    }

    else
    {
      result = (*(v3 + 32))(v3, v6);
    }

    *(v3 + 32) = result;
  }

  while (result);
  *(v3 + 32) = v4;
  return result;
}

uint64_t BlueFin::GlMeFrameMgr::SetState(uint64_t result, char a2)
{
  *result = a2;
  if (a2 == 1)
  {
    *(result + 40) = 0;
    *(result + 3) = 0;
    *(result + 1) = 0;
    *(result + 12) = 0;
    *(result + 60) = -1;
    *(result + 5) = 0;
    v2 = -1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    *(result + 4) = -1;
    *(result + 12) = 0xFFFFFFFFLL;
    *(result + 24) = result + 128;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 60) = 0;
    *(result + 52) = 0;
    *(result + 44) = 0x40000000400;
    *(result + 64) = 0;
    *(result + 80) = result + 256;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 116) = 0;
    *(result + 108) = 0;
    *(result + 100) = 0x40000000400;
    *(result + 120) = 0;
    v2 = 1;
    *(result + 72) = 0;
  }

  *(*(result + 392) + 43) += v2;
  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::FeedMkfMeas(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, unsigned int a3)
{
  v5 = a3;
  v6 = *(BlueFin::GlMeMsmtMgr::GetSigMeas(this, a2, a3, 1) + 12);
  SigMeasForClockModel = BlueFin::GlMeMsmtMgr::GetSigMeasForClockModel(this, a2, v5);
  BlueFin::GlMeSatAidMgr::GetSatAid(*(this + 24) + 320, a2, 0, v5);
  if (!v8 || *(SigMeasForClockModel + 1))
  {
    return 0;
  }

  v10 = *(**(this + 23) + 24);

  return v10();
}

char *BlueFin::GlMeMsmtMgr::GetSigMeasForClockModel(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, double a3)
{
  MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, a2, 1, 1);
  if (!MsmtSlotPtr)
  {
    v9 = 11;
    goto LABEL_8;
  }

  v7 = MsmtSlotPtr;
  v8 = *(MsmtSlotPtr + 140);
  v9 = 175;
  if (v8 > 10)
  {
    if ((v8 - 11) >= 3)
    {
      if (v8 != 15)
      {
        if (v8 != 17)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }

      v11 = *(a2 + 1);
      if ((*a2 - 66) > 0xF1u)
      {
LABEL_16:
        v21 = *(MsmtSlotPtr + 140);
        GlCustomLog(175, "GetSigMeasForClockModel(%u %d) %s mode %u %s\n");
LABEL_22:
        BlueFin::GlMeMsmtMgr::ReportSlotState(this, v9);
        v14 = this + 240;
        BlueFin::GlSigMeas::init(this + 240, a2);
        return v14;
      }

LABEL_14:
      v20 = *(MsmtSlotPtr + 140);
      GlCustomLog(175, "GetSigMeasForClockModel(%u %d) %s mode %u %s\n");
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!v8)
  {
    v9 = 13;
    goto LABEL_18;
  }

  if (v8 != 10)
  {
LABEL_8:
    v18 = *(a2 + 1);
    v16 = *a2;
    GlCustomLog(v9, "GetSigMeasForClockModel(%u %d) %s mode %u %s\n");
    goto LABEL_22;
  }

  if (*a2 - 81 <= 0x34)
  {
    v10 = *(a2 + 1);
    if ((*(MsmtSlotPtr + 84) & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_18:
  v22 = *(MsmtSlotPtr + 140);
  v19 = *(a2 + 1);
  v17 = *a2;
  GlCustomLog(v9, "GetSigMeasForClockModel(%u %d) %s mode %u %s\n");
LABEL_19:
  SigMeas = BlueFin::GlMeMsmtMgr::GetSigMeas(this, a2, a3, 0);
  v13 = *(SigMeas + 12);
  if ((v13 & 0x400) != 0)
  {
    goto LABEL_22;
  }

  v14 = SigMeas;
  if ((*(v7 + 86) & 0x20) == 0)
  {
    *(SigMeas + 12) = v13 & 0xFFFFFBF3;
  }

  return v14;
}

BlueFin::GlMeMsmtMgr *BlueFin::GlMeMsmtMgr::ReportSlotState(BlueFin::GlMeMsmtMgr *this, BlueFin::GlUtils *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!BlueFin::GlUtils::m_ucEnabled)
  {
    goto LABEL_62;
  }

  v3 = this;
  this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
  if (!this || ((1 << (a2 >> 3)) & 0x2000800E) == 0)
  {
    goto LABEL_62;
  }

  v4 = 0;
  v5 = 0;
  v6 = &byte_298A31BC1;
  do
  {
    v7 = *v6;
    __dst[0] = *(v6 - 1);
    *&__dst[4] = v7;
    *&__dst[8] = v4;
    MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v3, __dst, 1, 1);
    if (MsmtSlotPtr)
    {
      v9 = MsmtSlotPtr;
      if (a2 == 11)
      {
        v29 = 0u;
        v30 = 0u;
        *__dst = 0u;
        v28 = 0u;
        if ((*(MsmtSlotPtr + 84) & 4) != 0)
        {
          v10 = "prp";
        }

        else
        {
          v10 = "RAW";
        }

        strlcat(__dst, v10, 0x40uLL);
        if ((*(v9 + 84) & 0x20) != 0)
        {
          v11 = ".PK";
        }

        else
        {
          v11 = ".pk";
        }

        strlcat(__dst, v11, 0x40uLL);
        v12 = *(v9 + 84);
        v13 = ".NV.BM";
        if ((v12 & 0x200) == 0)
        {
          v13 = ".DC.BM";
        }

        if ((v12 & 8) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = ".bl.bm";
        }

        strlcat(__dst, v14, 0x40uLL);
        v15 = *(v9 + 84);
        v16 = ".CPH";
        if ((v15 & 0x80) == 0)
        {
          v16 = ".DOP";
        }

        if ((v15 & 0x40) != 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = ".dop";
        }

        strlcat(__dst, v17, 0x40uLL);
        strcpy(v31, "vtea.frdxc");
        v18 = *(v9 + 84);
        if ((v18 & 0x40002) != 0)
        {
          v31[0] = 86;
        }

        if ((v18 & 0x10) != 0)
        {
          v31[1] = 84;
          if ((v18 & 0x100) == 0)
          {
LABEL_27:
            if ((v18 & 0x400) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_47;
          }
        }

        else if ((v18 & 0x100) == 0)
        {
          goto LABEL_27;
        }

        v31[2] = 69;
        if ((v18 & 0x400) == 0)
        {
LABEL_28:
          if ((v18 & 0x800) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_48;
        }

LABEL_47:
        v31[3] = 65;
        if ((v18 & 0x800) == 0)
        {
LABEL_29:
          if ((v18 & 0x1000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_49;
        }

LABEL_48:
        v31[4] = 66;
        if ((v18 & 0x1000) == 0)
        {
LABEL_30:
          if ((v18 & 0x2000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_50;
        }

LABEL_49:
        v31[5] = 70;
        if ((v18 & 0x2000) == 0)
        {
LABEL_31:
          if ((v18 & 0x4000) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_51;
        }

LABEL_50:
        v31[6] = 82;
        if ((v18 & 0x4000) == 0)
        {
LABEL_32:
          if ((v18 & 0x8000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_52;
        }

LABEL_51:
        v31[7] = 68;
        if ((v18 & 0x8000) == 0)
        {
LABEL_33:
          if ((v18 & 0x10000) == 0)
          {
LABEL_35:
            v19 = *(v9 + 24);
            v25 = *(v9 + 160);
            v26 = *(v9 + 164);
            v24 = *(v9 + 112);
            BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, 11, "Slot[%hu] 0x%u Meas{%u %u %0.3f} Time{%u %u} %s:%s\n", v4, v9, *(v9 + 100));
            goto LABEL_55;
          }

LABEL_34:
          v31[9] = 67;
          goto LABEL_35;
        }

LABEL_52:
        v31[8] = 88;
        if ((v18 & 0x10000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      *__dst = 0;
      __dst[2] = 0;
      if ((*(MsmtSlotPtr + 85) & 0x40) != 0)
      {
        __dst[0] = 68;
      }

      v20 = &str_3_37;
      if (!v5)
      {
        v20 = "SlotState";
      }

      BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, a2, "%s {%hu %u %0.3f%s}", v20, v4, *(MsmtSlotPtr + 112), *(MsmtSlotPtr + 24), __dst);
      if (v5 >= 4)
      {
        BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, a2, "\n");
        v5 = 0;
      }

      else
      {
        ++v5;
      }
    }

    else if (a2 == 11)
    {
      BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, 11, "Slot[%hu] 0x0\n");
    }

LABEL_55:
    v6 += 2;
    ++v4;
  }

  while (v4 != 575);
  if (v5)
  {
    BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, a2, "\n");
  }

  v21 = BlueFin::GlUtils::m_pInstance;
  v22 = BlueFin::GlSetBase::Cnt(v3);
  BlueFin::GlUtils::SysLogForce(v21, a2, "DspMeas[%d] {", v22);
  __dst[0] = *(v3 + 8);
  memcpy(&__dst[8], *v3, 4 * __dst[0]);
  *&__dst[2] = 0;
  __dst[1] = 0;
  *&__dst[4] = *&__dst[8];
  BlueFin::GlSetIterator::operator++(__dst);
  while (__dst[1] != __dst[0])
  {
    if (*&__dst[2] >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, a2, " %hd %d ", *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&__dst[2]), *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&__dst[2] + 1));
    BlueFin::GlSetIterator::operator++(__dst);
  }

  this = BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, a2, " }\n");
LABEL_62:
  v23 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlMeMiniKF::NewMsmtAvail(BlueFin::GlMeMiniKF *this, unsigned int a2, float *a3, uint64_t a4, int a5, int a6)
{
  result = 0;
  if ((~*(a4 + 24) & 0x12) == 0 && *(a4 + 40) < 0.0009)
  {
    v13 = *a3;
    if (v13 < 0x4C)
    {
      if (v13 - 33 < 0x13)
      {
        return 0;
      }
    }

    else if (v13 < 0x8B)
    {
      return 0;
    }

    if ((a3[3] & 0x802) == 2)
    {
      v14 = a3[27];
      if (v14 < 3.4028e38)
      {
        v15 = *(a4 + 44);
        v16 = *(a4 + 48);
        v17 = a3[26];
        v18 = -(v17 - v15);
        GlCustomLog(127, "UpdateCbDot(%u) Svid %d, DopplerPpb %.3f (Unc %.3f), DopplerAidingPpb %.3f (Unc %.3f), CandOscPpb %.3f\n", a2, v13, v17 * 1000000000.0, v14 * 1000000000.0, v15 * 1000000000.0, v16 * 1000000000.0, v18 * 1000000000.0);
        if (fabs(v18) >= 0.0000069000001)
        {
          GlCustomLog(14, "GlMeMiniKF::UpdateCbDot(%u, %.1f) - Rejected!  Oscillator offset out of range. \n", a2, v18 * 1000000000.0);
        }

        else
        {
          *(this + 26) |= 1u;
          BlueFin::GlMeSkfCore::NewMsmt(this + 16, a2, a3, v18, ((v16 * v16) + (v14 * v14)));
        }
      }

      v19 = *(a4 + 40);
      v20 = *(a3 + 8) - (a2 * 0.001 + *(a4 + 32));
      v21 = a3[24];
      v29 = 2;
      v22 = *a3;
      if ((v22 - 139) > 0x23)
      {
        v23 = *(a3 + 3);
        if ((v23 & 2) != 0 && ((v23 & 8) != 0 || (v23 & 4) != 0 && a6))
        {
          GlCustomLog(127, "<DMkfFlg>New meas sv%hi: Add BIT_VAL+SE_VAL\n", *a3);
          v28 = v20;
          SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v28, a3, 1u);
          v29 = 10;
          if (a5 && (a3[3] & 8) != 0)
          {
            v27 = 58;
          }

          else
          {
            if (!a6 || (a3[3] & 4) == 0)
            {
              goto LABEL_18;
            }

            v27 = 42;
          }

          v29 = v27;
          goto LABEL_18;
        }
      }

      else
      {
        v29 = 6;
        v23 = *(a3 + 3);
      }

      if ((v23 & 2) == 0)
      {
LABEL_33:
        BlueFin::GlMeMiniKF::GenerateClockModFlags(this, a2, &v28);
        return LODWORD(v28);
      }

      GlCustomLog(127, "<DMkfFlg>New meas sv%hi: Add SE_VAL\n", v22);
      v28 = v20;
      SubBitAndEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v28, a3, 1u);
LABEL_18:
      v25 = *a3;
      if (v25 >= 0x34)
      {
        if (v25 < 0x42)
        {
          v26 = 240;
LABEL_32:
          BlueFin::GlMeSkfCb::NewMsmt(this + v26, a2, &v29, a3, SubBitAndEpochTime, ((v19 * v19) + (v21 * v21)));
          goto LABEL_33;
        }

        if (v25 - 139 < 0x24)
        {
          v26 = 368;
          goto LABEL_32;
        }
      }

      v26 = 112;
      goto LABEL_32;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatPostSearchMgr::GetSearchMgrSource(BlueFin::GlMeSrdSatPostSearchMgr *this, unsigned int a2)
{
  if (((*(*this + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_post_search_mgr.cpp", 62, "GetSearchMgrSource", "HasSat(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_post_search_mgr.cpp", 62, "HasSat(ucSatid)");
  }

  return *(this + a2 + 8);
}

uint64_t BlueFin::GlMeSrdSatMgr::GetStartupBsId(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = 1 << (a2 & 0x1F);
  if ((v2 & *(*(this + 15) + 4 * (a2 >> 5))) == 0 && (v2 & *(*(this + 11) + 4 * (a2 >> 5))) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 994, "GetStartupBsId", "IsSatAllocated(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 994, "IsSatAllocated(ucSatid)");
  }

  return *(*(this + 786) + 52 * a2 + 1);
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetTotalFFTResourceForBsId(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((*(*a1[1] + 248))(a1[1], a3) + 12);
  v9 = (*a1)[2];

  return v9(a1, a2, a3, v8, a4);
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetTotalMemBinResourceForBsId(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*(*a1[1] + 248))(a1[1], a3) + 12);
  v8 = (*a1)[3];

  return v8(a1, a3, v7, a4);
}

uint64_t BlueFin::GlMeSrdSatMgr::GetActiveBsId(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  if (((*(*(this + 45) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 1002, "GetActiveBsId", "IsActive(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 1002, "IsActive(ucSatid)");
  }

  return *(*(this + 786) + 52 * a2 + 45);
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, unsigned __int16 *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, unsigned __int16 *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 8;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 300;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 16;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      BlueFin::GlDbgCodec::Rvw(a1, a2);
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
      ++v8;
      a2 += 24;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::checkArraySize(uint64_t this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(this + 584);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*a2 > a3)
      {
        v4 = "rucActualLength <= ucMaxLength";
        DeviceFaultNotify("gldebug_codec.cpp", 774, "checkArraySize", "rucActualLength <= ucMaxLength");
        v5 = 774;
LABEL_8:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v5, v4);
      }
    }

    else if (v3 == 2 && *a2 != a3)
    {
      v4 = "rucActualLength == ucMaxLength";
      DeviceFaultNotify("gldebug_codec.cpp", 773, "checkArraySize", "rucActualLength == ucMaxLength");
      v5 = 773;
      goto LABEL_8;
    }
  }

  else if (*a2 > a3)
  {
    *a2 = a3;
  }

  return this;
}

unint64_t BlueFin::GlMeSrdRotationListener::OnRotationProgrammingDone(BlueFin::GlMeSrdRotationListener *this, const BlueFin::GlMeSrdSearchMgrBase *a2)
{
  v2 = *(a2 + 18);
  v6[0] = 68;
  v6[1] = v2;
  v3 = *(this + 1);
  v4 = *(v3 + 32);
  result = *(v3 + 8);
  *(v3 + 32) = result;
  do
  {
    v7 = 0;
    if (BlueFin::patch_dispatch(result, v3, v6, &v7))
    {
      result = v7;
    }

    else
    {
      result = (*(v3 + 32))(v3, v6);
    }

    *(v3 + 32) = result;
  }

  while (result);
  *(v3 + 32) = v4;
  return result;
}

BOOL BlueFin::GlPeTimeManager::SetTime(BlueFin::GlPeTimeManager *this, BlueFin::GlPeGnssTime *a2, unsigned int a3, unsigned __int8 *a4)
{
  v5 = a3;
  v127 = *MEMORY[0x29EDCA608];
  if (a3 - 6 <= 2)
  {
    if (!*(this + 644))
    {
LABEL_63:
      v39 = 0;
      goto LABEL_122;
    }

    if (a3 == 6)
    {
      if (*a4 - 1 >= 0xBC)
      {
        v112 = "rotSvId.isValid()";
        DeviceFaultNotify("glpe_timemgr.cpp", 4015, "SetTime", "rotSvId.isValid()");
        v113 = 4015;
        goto LABEL_173;
      }

      v8 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(BlueFin::GlSvId::s_aucSvId2gnss[*a4]);
      if (v8 <= 2)
      {
        if (v8)
        {
          if (v8 != 1)
          {
LABEL_175:
            v112 = "0";
            DeviceFaultNotify("glpe_timemgr.cpp", 4026, "SetTime", "0");
            v113 = 4026;
LABEL_173:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", v113, v112);
          }

          v120 = &off_2A1F0E430;
          v121 = 0;
          Glns = BlueFin::GlPeGnssTime::GetGlns(a2, &v120);
          (v120[4])(&v120, Glns);
          v126[0].n128_u64[0] = &off_2A1F0E430;
          v126[0].n128_u64[1] = 0;
          v10 = BlueFin::GlPeGnssTime::GetGlns(a2, v126);
          (*(v126[0].n128_u64[0] + 32))(v126, v10);
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            v120 = &off_2A1F0E480;
            v121 = 0;
            Gal = BlueFin::GlPeGnssTime::GetGal(a2, &v120);
            if ((v120[4])(&v120, Gal) < 0x93A80)
            {
              DeviceFaultNotify("glpe_timemgr.cpp", 4023, "SetTime", "rtTime.GetGal().getWeek() != 0");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 4023, "rtTime.GetGal().getWeek() != 0");
            }

            break;
          case 4:
            v120 = &off_2A1F0E4D0;
            v121 = 0;
            Bds = BlueFin::GlPeGnssTime::GetBds(a2, &v120);
            if ((v120[4])(&v120, Bds) < 0x93A80)
            {
              DeviceFaultNotify("glpe_timemgr.cpp", 4022, "SetTime", "rtTime.GetBds().getWeek() != 0");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 4022, "rtTime.GetBds().getWeek() != 0");
            }

            break;
          case 5:
            break;
          default:
            goto LABEL_175;
        }
      }
    }
  }

  v13 = *(a2 + 2);
  if (v13 == 1)
  {
    v120 = &off_2A1F0E430;
    v121 = 0;
    v14.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(a2, &v120);
    v17 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v121) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v18 = (v120[4])(&v120, v14);
    v19 = 0;
    v20 = (203613265 * ((v18 + (v17 << 31 >> 31)) % 0x7861F80u)) >> 44;
    while (BlueFin::GlPeSpecialTimeEvents::IsNearQuarter(BlueFin::GlGlnsTime const&,short,short)::asGlnsNtQuarter[v19] <= v20)
    {
      if (++v19 == 16)
      {
        goto LABEL_55;
      }
    }

    if (v20 + 1 != BlueFin::GlPeSpecialTimeEvents::IsNearQuarter(BlueFin::GlGlnsTime const&,short,short)::asGlnsNtQuarter[v19])
    {
      goto LABEL_55;
    }

    v22 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v121) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v23 = (v120[4])(&v120);
    if (v22)
    {
      v24.i64[0] = 0x40C5178000000000;
    }

    else
    {
      *v24.i64 = (v23 % 0x15180);
    }

    LODWORD(v25) = v121;
    *v24.i64 = *v24.i64 + v25 * 2.32830644e-10;
    *v27.i64 = *v24.i64 + trunc(*v24.i64 * 2.32830644e-10) * -4294967300.0;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v29 = vnegq_f64(v28);
    v27.i64[0] = vbslq_s8(v29, v27, v24).u64[0];
    if (*v24.i64 > 4294967300.0)
    {
      v24.i64[0] = v27.i64[0];
    }

    if (*v24.i64 < -4294967300.0)
    {
      *v26.i64 = -*v24.i64;
      *v24.i64 = -(*v24.i64 - trunc(*v24.i64 * -2.32830644e-10) * -4294967300.0);
      *v24.i64 = -*vbslq_s8(v29, v24, v26).i64;
    }

    v30 = *v24.i64 < 0.0 ? --*v24.i64 : *v24.i64;
    v31 = v30 - 10800;
    v32 = v30 - 10801;
    v33 = v31 >= 0 || v32 <= -601;
    v34 = !v33;
    if (v31 >= 0xB4 && !v34)
    {
LABEL_55:
      v13 = *(a2 + 2);
      goto LABEL_56;
    }

    GlCustomLog(13, "GlPeTimeManager::SetTime(%u): near quarter boundary so use of GLONASS in TimeMgr is disallowed.", *(this + 642));
    goto LABEL_63;
  }

LABEL_56:
  v35 = *a2;
  v36 = *(a2 + 1);
  LODWORD(v117) = *a2;
  HIDWORD(v117) = v36;
  v118 = v13;
  v38 = *(a2 + 2);
  v37 = *(a2 + 3);
  *&v119 = v38;
  *(&v119 + 1) = v37;
  if (v5 <= 0xA && ((1 << v5) & 0x40C) != 0)
  {
    *(this + 2564) = 0;
    BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v120);
    LODWORD(v121) = v121 | 1;
    v122 = v5;
    v123 = __PAIR64__(v36, v35);
    v124 = v13;
    *&v125 = v38;
    *(&v125 + 1) = v37;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (v120[3])(&v120, 0, 0);
      v37 = *(&v119 + 1);
    }

    if (v37 > 50000000.0)
    {
      GlCustomLog(11, "GlPeTimeManager::SetTime(%u): Coarse time assistance rejected because uncertainty too high!  SetTimeUncS:%.0lf\n", *(this + 642), v37 * 0.000001);
      goto LABEL_63;
    }

    if (v5 == 10)
    {
      if (v37 > 250000.0)
      {
        GlCustomLog(13, "GlPeTimeManager::SetTime(%u): Unsolicited Fine time assistance rejected because uncertainty too high!  SetTimeUncS:%.3f  ThresholdS:%.3f\n", *(this + 642), v37 * 0.000001, 0.25);
        goto LABEL_63;
      }

      v126[0].n128_u64[0] = &off_2A1F0B5F0;
      v126[0].n128_u64[1] = 0;
      Gps = BlueFin::GlPeGnssTime::GetGps(&v117, v126);
      v41 = (*(v126[0].n128_u64[0] + 32))(v126, Gps);
      LODWORD(v43) = v126[0].n128_u32[2];
      *v41.i64 = v43 * 2.32830644e-10 + (v42 % 0x93A80);
      *v44.i64 = *v41.i64 - trunc(*v41.i64);
      v45.f64[0] = NAN;
      v45.f64[1] = NAN;
      v46 = *vbslq_s8(vnegq_f64(v45), v44, v41).i64;
      if (v46 > 0.25 && v46 < 0.75)
      {
        GlCustomLog(13, "GlPeTimeManager::SetTime(%u): Unsolicited Fine time assistance rejected because fraction of a second not in range! FracSec:%.3lf\n", *(this + 642), v46);
        goto LABEL_63;
      }

      if (v46 <= 0.25)
      {
        BlueFin::GlPeGnssTime::operator-=(&v117, v46);
      }

      else
      {
        BlueFin::GlPeGnssTime::operator+=(&v117, 1.0 - v46);
      }

      v115 = &off_2A1F0B5F0;
      v116 = 0;
      BlueFin::GlPeGnssTime::GetGps(&v117, &v115);
      v126[0].n128_u64[1] = v116;
      v48 = *(this + 642);
      v49 = *&v119;
      v50 = (*(v126[0].n128_u64[0] + 32))(v126);
      v51 = (*(v126[0].n128_u64[0] + 32))(v126);
      LODWORD(v52) = v126[0].n128_u32[2];
      GlCustomLog(14, "GlPeTimeManager::SetTime(%u): Unsolicited Fine time assistance accepted. LMS:%.6lf  GpsWeek:%d  GpsTowS:%.9lf\n", v48, v49, v50 / 0x93A80, v52 * 2.32830644e-10 + (v51 % 0x93A80));
      *(&v119 + 1) = 0x3FF0000000000000;
      v5 = 3;
    }

    v53 = *(this + 642);
    v54 = *(BlueFin::GlUtils::m_pInstance + 1092);
    v55 = *&v119;
    v126[0].n128_u64[0] = &off_2A1F0B5F0;
    v126[0].n128_u64[1] = 0;
    v56 = BlueFin::GlPeGnssTime::GetGps(&v117, v126);
    v57 = (*(v126[0].n128_u64[0] + 32))(v126, v56);
    v115 = &off_2A1F0B5F0;
    v116 = 0;
    v58 = BlueFin::GlPeGnssTime::GetGps(&v117, &v115);
    v59 = (v115[4])(&v115, v58);
    LODWORD(v60) = v116;
    GlCustomLog(14, "GlPeTimeManager::SetTime(%u): TimeAssistance: OsTime:%u  Lms:%.0lf  GpsWeek:%d  GpsTow:%.6lf\n", v53, v54, v55, v57 / 0x93A80, v60 * 2.32830644e-10 + (v59 % 0x93A80));
    v13 = v118;
  }

  if (v13 == 5)
  {
    v121 = v117;
    v120 = &off_2A1F0DFC8;
    v61 = (HIDWORD(v117) - 1238630400) < 0xDB160000;
    if ((HIDWORD(v117) - 1238630400) >= 0xDB160000)
    {
      v62 = BlueFin::GlPeTimeManager::handleGps1023WeekRollovers(this, (HIDWORD(v117) - 619315200) / 0x93A80u);
      v65 = (v120[4])(&v120);
      LODWORD(v71) = v121;
      *v65.i64 = v71 * 2.32830644e-10 + (v70 % 0x93A80);
      v126[0].n128_u64[0] = &off_2A1F0B5F0;
      *v72.i64 = *v65.i64 - trunc(*v65.i64);
      v73.f64[0] = NAN;
      v73.f64[1] = NAN;
      COERCE_DOUBLE(v68 = vbslq_s8(vnegq_f64(v73), v72, v65).i64[0]);
      if (*&v68 < 0.0 || *&v68 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      goto LABEL_92;
    }

LABEL_95:
    v114 = v61;
    goto LABEL_97;
  }

  if (!v13)
  {
    v121 = v117;
    v120 = &off_2A1F0B5F0;
    v61 = HIDWORD(v117) > 0x24E9FFFF;
    if (HIDWORD(v117) <= 0x24E9FFFF)
    {
      v62 = BlueFin::GlPeTimeManager::handleGps1023WeekRollovers(this, HIDWORD(v117) / 0x93A80);
      v65 = (v120[4])(&v120);
      LODWORD(v64) = v121;
      *v65.i64 = v64 * 2.32830644e-10 + (v63 % 0x93A80);
      v126[0].n128_u64[0] = &off_2A1F0B5F0;
      *v66.i64 = *v65.i64 - trunc(*v65.i64);
      v67.f64[0] = NAN;
      v67.f64[1] = NAN;
      COERCE_DOUBLE(v68 = vbslq_s8(vnegq_f64(v67), v66, v65).i64[0]);
      if (*&v68 < 0.0 || *&v68 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

LABEL_92:
      v75 = *&v68 * 4294967300.0 + 0.5;
      v76 = v75;
      if (v75 >= 4294967300.0)
      {
        v76 = -1;
      }

      LODWORD(v117) = v76;
      HIDWORD(v117) = *v65.i64 + 604800 * v62;
      goto LABEL_95;
    }

    goto LABEL_95;
  }

  v114 = 0;
LABEL_97:
  v77 = *(this + 644);
  v39 = v77 == 0;
  if (!v77)
  {
    if (((*(this + 678) >> v118) & 1) == 0)
    {
      goto LABEL_63;
    }

    if (v118 == 2)
    {
      v120 = &off_2A1F0B5F0;
      v121 = 0;
      v89 = BlueFin::GlPeGnssTime::GetGps(&v117, &v120);
      v118 = 0;
      v117 = v121;
      if (v89 - *(&v119 + 1) >= 1000.0)
      {
        GlCustomLog(12, "GlPeTimeManager::SetTime(%u): Lost precision of UTC FTA due to conv to GPS!  OrgUncUs:%.3lf  SetTimeUncUs:%.3lf\n", *(this + 642), *(&v119 + 1), v89);
      }

      *(&v119 + 1) = v89;
      v114 = 1;
    }

    v90 = *&v119;
    if (*&v119 <= 0.0)
    {
      v91 = 0.0;
      if (*&v119 < 0.0)
      {
        v91 = ceil(*&v119 + -0.5);
      }
    }

    else
    {
      v91 = floor(*&v119 + 0.5);
    }

    if (vabdd_f64(*&v119, v91) > 0.0000005)
    {
      BlueFin::GlPeGnssTime::operator+=(&v117, (v91 - *&v119) * 0.001);
      *&v119 = v91;
      GlCustomLog(15, "GlPeTimeManager::SetTime(%u): Init time LMS rounded to nearest ms: OrigInitLms:%.6lf  NewLms:%.6lf  FracMs:%.6lf\n", *(this + 642), v90, v91, v90 - v91);
    }

    v95 = BlueFin::GlPeGnssTime::GetTodS(&v117) * 1000.0;
    if (v95 <= 0.0)
    {
      v96 = 0.0;
      if (v95 < 0.0)
      {
        v96 = ceil(v95 + -0.5);
      }
    }

    else
    {
      v96 = floor(v95 + 0.5);
    }

    v97 = v95 - v96;
    if ((this + 2608) != &v117)
    {
      *(this + 326) = v117;
      *(this + 654) = v118;
      *(this + 164) = v119;
    }

    BlueFin::GlPeGnssTime::operator-=(this + 652, v97 * 0.001);
    BlueFin::GlPeTimeManagerData::GlPeTimeManagerData(&v120);
    LODWORD(v121) = v121 | 0x40;
    v123 = v117;
    v124 = v118;
    v125 = v119;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (v120[3])(&v120, 0, 0);
    }

    *(this + 644) = v5;
    BlueFin::GlPeGpsTimeMgr::OnInitialTime((this + 64), (this + 2608));
    if (*(this + 2589) && *(this + 644))
    {
      LOBYTE(v115) = 0;
      BlueFin::GlPeTimeManager::GetTime(this, 1, v126);
      LeapSecFromHardcodedSchedule = BlueFin::GlPeTimeManager::getLeapSecFromHardcodedSchedule(v126, &v115, v98);
      BlueFin::GlPeTimeManager::updateLeapSeconds(this, v115, 2, LeapSecFromHardcodedSchedule, -128);
    }

    BlueFin::GlPeTimeManager::UpdateLeapSecFromGpsUtcModel(this);
    v100 = (this + 4684);
    v101 = 3100;
    v102 = 3108;
    do
    {
      if (*(this + v101) == 1)
      {
        if (*(this + v102) == 7)
        {
          if (*v100 != -1 && v100[1] != -1)
          {
            BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(this, v100);
          }
        }

        else
        {
          BlueFin::GlPeTimeManager::SetGnssTimeModel(this, this + v102, 4295000000.0);
        }

        *(this + v101) = 0;
      }

      ++v101;
      v100 += 5;
      v102 += 16;
    }

    while (v101 != 3106);
    BlueFin::GlPeTimeManager::updateConversionTable(this);
    BlueFin::GlPeSpecialTimeEvents::ScheduleTimeEvents((this + 3388), this);
    v103 = *(this + 654);
    if (v103 >= 4)
    {
      v105 = "<->";
      if (v103 == 5)
      {
        v105 = "NIC";
      }

      if (v103 == 4)
      {
        v104 = "BDS";
      }

      else
      {
        v104 = v105;
      }
    }

    else
    {
      v104 = off_29EEB4488[v103];
    }

    v106 = *(this + 642);
    v107 = BlueFin::GlPeTimeManager::m_acTimeSourceImage[*(this + 644)];
    v108 = *(this + 328);
    BlueFin::GlPeGnssTime::GetStdString((this + 2608), v103, v126);
    GlCustomLog(14, "GlPeTimeManager::SetTime(%u): Time Manager Initialized  Source:%s  Time(%s):[Lms:%.3lf %s]", v106, v107, v104, v108, v126);
    v109 = *a4;
    if (*a4)
    {
      if (v109 >= 0x21)
      {
        if (v109 < 0x34)
        {
          v110 = 1;
        }

        else if (v109 >= 0x42)
        {
          if (v109 >= 0x4C)
          {
            if (v109 - 139 >= 0x24)
            {
              if (v109 >= 0x8B)
              {
                v110 = 7;
              }

              else
              {
                v110 = 4;
              }
            }

            else
            {
              v110 = 5;
            }
          }

          else
          {
            v110 = 3;
          }
        }

        else
        {
          v110 = 2;
        }
      }

      else
      {
        v110 = 0;
      }

      v111 = BlueFin::GNSS2STR(v110);
      GlCustomLog(14, " Gnss:%s  SvId:%d", v111, *a4);
    }

    GlCustomLog(14, "\n");
    BlueFin::GlPeStartupMgr::Update(*(this + 6));
    if (!*(this + 644))
    {
      v39 = 1;
      goto LABEL_122;
    }
  }

  if (*(this + 3424) == 255)
  {
    v78 = v114;
    if ((v118 - 1) < 4)
    {
      v78 = 1;
    }

    if (v78 == 1)
    {
      BlueFin::GlPeTimeManager::setNumGps1023WeekRollovers(this, &v117);
    }
  }

  BlueFin::GlPeTimeManager::GetTime(this, *&v119, 0, &v115);
  v79 = BlueFin::GlPeGnssTime::operator-(&v115, &v117);
  UncUs = BlueFin::GlPeGnssTime::GetUncUs(&v117, v116);
  BlueFin::GlPeTimeManager::SetDtsS(this, v5, a4, *&v119, v79, UncUs);
  if (v77)
  {
    BlueFin::GlPeTimeManager::GetTime(this, *&v119, 1, v126);
    v81 = BlueFin::GlPeGnssTime::operator-(&v117, v126);
    v82 = *(&v119 + 1);
    v83 = BlueFin::GlPeGnssTime::GetUncUs(v126, v118);
    v84 = v118;
    v85 = *(this + 642);
    if (fabs(v81) * 1000000.0 >= v82 + v83)
    {
      v86 = "Warning! Time outside of unc";
    }

    else
    {
      v86 = "Time within unc";
    }

    v87 = *&v119;
    BlueFin::GlPeGnssTime::GetStdString(&v117, v118, &v120);
    GlCustomLog(14, "GlPeTimeManager::CheckTimeWithinExpectedUnc(%u): %s  Lms:%.6lf  TimeMgr=[%s]", v85, v86, v87, &v120);
    if (v126[0].n128_u32[2] >= 4)
    {
      v92 = "<->";
      if (v126[0].n128_u32[2] == 5)
      {
        v92 = "NIC";
      }

      if (v126[0].n128_u32[2] == 4)
      {
        v88 = "BDS";
      }

      else
      {
        v88 = v92;
      }
    }

    else
    {
      v88 = off_29EEB4488[v126[0].n128_u32[2]];
    }

    BlueFin::GlPeGnssTime::GetStdString(v126, v84, &v120);
    GlCustomLog(14, "  TimeSys:%s  Time=[%s]  Delta:%.9lf sec\n", v88, &v120, v81);
  }

LABEL_122:
  v93 = *MEMORY[0x29EDCA608];
  return v39;
}

BlueFin::GlFormat *BlueFin::GlPeGnssTime::GetStdString(BlueFin::GlPeGnssTime *a1, int a2, BlueFin::GlFormat *a3)
{
  if (a2 <= 1)
  {
    switch(a2)
    {
      case -1:
        *a3 = 4271950;
        break;
      case 0:
        v32 = &off_2A1F0B5F0;
        v33 = 0;
        Gps = BlueFin::GlPeGnssTime::GetGps(a1, &v32);
        goto LABEL_38;
      case 1:
        v32 = &off_2A1F0E430;
        v33 = 0;
        Glns = BlueFin::GlPeGnssTime::GetGlns(a1, &v32);
        v8 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v33) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        v9 = ((v32[4])(&v32) - v8) / 0x7861F80;
        v12 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v33) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        v13 = 0;
        v14 = (203613265 * (((v32[4])(&v32) - v12) % 0x7861F80)) >> 44;
        if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
        {
          v13 = HIDWORD(v33) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        }

        v15 = v9 + 1;
        v16 = (v14 + 1);
        v17 = (v32[4])(&v32);
        if (v13)
        {
          v20 = 10799.0;
        }

        else
        {
          v20 = (v17 % 0x15180);
        }

        LODWORD(v19) = v33;
        BlueFin::GlFormat::glsnprintf(a3, 0x31, "N4:%d Nt:%hd TodS:%.9lf UncUs:%.0lf", v18, v15, v16, v20 + v19 * 2.32830644e-10, *&Glns);
        goto LABEL_39;
    }
  }

  else
  {
    if (a2 <= 3)
    {
      if (a2 == 2)
      {
        v32 = &unk_2A1F11310;
        v33 = 0;
        v21 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
        v34 = 1980;
        v35 = v21 / 0x15180 + 1;
        v36 = 1;
        v37 = v21 / 0x15180 + 1;
        v38 = v21 % 0x15180 / 0xE10;
        v39 = (2185 * (v21 - 3600 * ((1193047 * v21) >> 32))) >> 17;
        v40 = v21 - 60 * ((71582789 * v21) >> 32);
        Utc = BlueFin::GlPeGnssTime::GetUtc(a1, &v32);
        LOBYTE(v23) = v40;
        LODWORD(v24) = v33;
        BlueFin::GlFormat::glsnprintf(a3, 0x31, "%hd/%02d/%02d %02d:%02d:%012.9lf UncUs:%.0lf", v25, v34, v36, v37, v38, v39, v24 * 2.32830644e-10 + v23, *&Utc);
LABEL_39:
        *(a3 + 49) = 0;
        return a3;
      }

      v32 = &off_2A1F0E480;
      v33 = 0;
      Gps = BlueFin::GlPeGnssTime::GetGal(a1, &v32);
LABEL_38:
      v26 = Gps;
      v27 = (v32[4])(&v32) / 0x93A80uLL;
      v28 = (v32[4])(&v32);
      LODWORD(v29) = v33;
      BlueFin::GlFormat::glsnprintf(a3, 0x31, "Wk:%d TowS:%.9lf UncUs:%.0lf", v30, v27, v29 * 2.32830644e-10 + (v28 % 0x93A80), *&v26);
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v32 = &off_2A1F0E4D0;
      v33 = 0;
      Gps = BlueFin::GlPeGnssTime::GetBds(a1, &v32);
      goto LABEL_38;
    }

    if (a2 == 5)
    {
      v32 = &off_2A1F0DFC8;
      v33 = 0;
      Gps = BlueFin::GlPeGnssTime::GetNic(a1, &v32);
      goto LABEL_38;
    }
  }

  return a3;
}

int *FireTranslator::translateHulaAssistance(int *this, const unsigned int *a2, unint64_t *a3)
{
  v3 = *this;
  if ((*this & 0x100) != 0)
  {
    *a2 |= 0x40uLL;
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *a2 |= 0x80uLL;
  if ((v3 & 0x4000) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *a2 |= 0x1000uLL;
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a2 |= 0xC00uLL;
  if ((v3 & 0x200) == 0)
  {
LABEL_6:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *a2 |= 0x8000uLL;
  if ((v3 & 0x400) == 0)
  {
LABEL_7:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  *a2 |= 0x10000uLL;
  if ((v3 & 0x800) != 0)
  {
LABEL_8:
    *a2 |= 0x20000uLL;
  }

LABEL_9:
  if ((v3 & 0x60000) != 0)
  {
    *a2 |= 0x200uLL;
  }

  if ((v3 & 0x1000) != 0)
  {
    *a2 |= 0x200000uLL;
  }

  if ((v3 & 0xC) == 4)
  {
    v4 = 8;
  }

  else
  {
    if ((v3 & 0xC) != 0xC)
    {
      goto LABEL_25;
    }

    v4 = 16;
  }

  *a2 |= v4;
LABEL_25:
  if ((v3 & 0x80000) != 0)
  {
    *a2 |= 0x20uLL;
    if ((v3 & 0x400000) == 0)
    {
LABEL_27:
      if ((v3 & 0x800000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x400000) == 0)
  {
    goto LABEL_27;
  }

  *a2 |= 0x2000uLL;
  if ((v3 & 0x800000) == 0)
  {
LABEL_28:
    if ((v3 & 0x10) == 0)
    {
      return this;
    }

LABEL_33:
    *a2 |= 0x100uLL;
    return this;
  }

LABEL_32:
  *a2 |= 0x4000uLL;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_33;
  }

  return this;
}

void FireMessageHandler::updateReceiverClockAnalyticsData(FireMessageHandler *this, double a2, double a3)
{
  if (*(this + 2240) == 1)
  {
    v21 = v6;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    DeviceCommon::GetMachContinuousTime(this);
    v11 = a3 - (v10 - *(this + 276));
    v18 = a2;
    v19 = *(this + 139);
    v20 = (v11 - *(this + 277) + 0.5) & ~((v11 - *(this + 277) + 0.5) >> 31);
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**(FireResourceMgr::fInstance + 40) + 32))(*(FireResourceMgr::fInstance + 40), &v18);
    FireDeviceLog::DeviceLogBase(5, "#ca,tcxo,val,%.1f,recall,%.1f,unc,%.1f,ppb,age,%d,sec", v12, v13, v14, v15, v16, v17, SLOBYTE(v18));
    FireMessageHandler::updateRtcClockAnalyticsData(this);
    if (*(this + 2240) == 1)
    {
      *(this + 2240) = 0;
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[12];
    if (v4)
    {
      v2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::__emplace_unique_key_args<std::pair<gnss::SatelliteSystem,unsigned short>,std::piecewise_construct_t const&,std::tuple<std::pair<gnss::SatelliteSystem,unsigned short> const&>,std::tuple<>>(uint64_t a1, int a2, unsigned __int16 a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

LABEL_3:
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_9;
      }
    }

    if (v5 >= a2)
    {
      v6 = *(v4 + 18);
      if (v6 > a3)
      {
        goto LABEL_3;
      }

      if (v6 >= a3)
      {
        return v4;
      }
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_9;
    }
  }
}

uint64_t (*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_save(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = (a1 + 23160);
  v4 = *a2;
  if (v4 == 3)
  {
    v6 = (a1 + 10608);
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::continuous_track;
    if (v4 != 2)
    {
      return result;
    }

    *(v3 + 1834) = 0;
    *(a1 + 10440) = 0;
    v6 = (a1 + 10608);
    *(a1 + 10920) = 4;
    v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
    if ((*(**(a1 + 64) + 1200))(v7))
    {
      v8 = 90;
    }

    else
    {
      v8 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 16, 41, 0x34u, 0x3Fu, 0xFAu, 0xFAu, v8, 0x5Fu, 1);
  }

  v11 = &v13;
  v12 = 8;
  v13 = 0u;
  v14 = 0u;
  BlueFin::GlSetBase::operator=(a1 + 10864, &v11);
  v9 = v14;
  *(a1 + 10876) = v13;
  *(a1 + 10892) = v9;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId(v6, (a1 + 10864));
  v10 = *v3;
  BlueFin::GlMeSrdSharedSatSearchMgr::ProcessPending(v6);
  return 0;
}

uint64_t (*BlueFin::GlMeSrdAcqMgrSm::continuous_track(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = (this + 3072);
  v4 = *a2;
  result = BlueFin::QHsm::top;
  if (v4 > 0x40)
  {
    if (v4 == 65)
    {
      BlueFin::GlMeSrdAcqMgrSm::UpdateSmContinuousTrackStates(this);
      return 0;
    }

    if (v4 != 70)
    {
      return result;
    }

    if (v3[426] != 1)
    {
      BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided((this + 1794), &v26);
      v12 = 0;
      v13 = (v26 + 4 * v27 - 4);
      do
      {
        if (*v13)
        {
          v14 = *v13 - (((*v13 >> 2) & 0x9249249) + ((*v13 >> 1) & 0x5B6DB6DB));
          v12 = ((v14 + (v14 >> 3)) & 0xC71C71C7) + v12 - 63 * (((v14 + (v14 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v13;
      }

      while (v13 >= v26);
      BlueFin::GlMeSrdSatTrackMgr::GetSetSvidValidTrackingList(this + 1794, &v26);
      v15 = 0;
      v16 = (v26 + 4 * v27 - 4);
      do
      {
        if (*v16)
        {
          v17 = *v16 - (((*v16 >> 2) & 0x9249249) + ((*v16 >> 1) & 0x5B6DB6DB));
          v15 = ((v17 + (v17 >> 3)) & 0xC71C71C7) + v15 - 63 * (((v17 + (v17 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v16;
      }

      while (v16 >= v26);
      if (v12 < 0xCu || v15 < 0xCu || (v3[676] & 1) != 0)
      {
        *(v3 + 108) = 0;
        if ((v3[424] & 1) == 0)
        {
LABEL_51:
          BlueFin::GlMeSrdAcqMgrSm::LimitOneTrackPerSv(this[6], (v3[676] & 1) == 0);
          return 0;
        }

        LOBYTE(v18) = 0;
      }

      else
      {
        if (v12 >= 0x10u && *(v3 + 94) == 3)
        {
          v24 = *(v3 + 108);
          if (v24 >= 4)
          {
            v24 = 4;
          }

          v18 = v24 + 1;
        }

        else
        {
          v25 = *(v3 + 108);
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v18 = v25 - 1;
        }

        *(v3 + 108) = v18;
        if (v3[424])
        {
          if (v18)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v18 <= 4)
          {
            goto LABEL_51;
          }

          LOBYTE(v18) = 1;
        }
      }

LABEL_50:
      v3[424] = v18 & 1;
      BlueFin::GlMeSrdAcqMgrSm::UpdateSmContinuousTrackStates(this);
      goto LABEL_51;
    }

    v6 = v3[429];
    v7 = v3[428];
    v8 = v3[427];
    BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided((this + 1794), &v26);
    v9 = 0;
    v10 = (v26 + 4 * v27 - 4);
    do
    {
      if (*v10)
      {
        v11 = *v10 - (((*v10 >> 2) & 0x9249249) + ((*v10 >> 1) & 0x5B6DB6DB));
        v9 = ((v11 + (v11 >> 3)) & 0xC71C71C7) + v9 - 63 * (((v11 + (v11 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v10;
    }

    while (v10 >= v26);
    if (v8 > v9)
    {
      *(v3 + 108) = 0;
      v3[425] = 0;
      GlCustomLog(15, "FEATURE_SEARCH_3GEAR::Enter full search\n");
LABEL_41:
      v21 = *(v3 + 108);
      if (v3[424])
      {
        if (v21)
        {
LABEL_43:
          v22 = 84;
          if (!v3[425])
          {
            v22 = 70;
          }

          GlCustomLog(15, "GlMeSrdAcqMgrSm::IsSearchLowPowerModeChangeNeeded3G(%c) Searchoff(%c) %u, %d\n", 70, v22, v9, *(v3 + 108));
          goto LABEL_51;
        }
      }

      else if (v21 <= 7)
      {
        goto LABEL_43;
      }

      v23 = 70;
      if (v3[425])
      {
        v23 = 84;
      }

      GlCustomLog(15, "GlMeSrdAcqMgrSm::IsSearchLowPowerModeChangeNeeded3G(%c) Searchoff(%c) %u, %d\n", 84, v23, v9, *(v3 + 108));
      LOBYTE(v18) = v3[424] ^ 1;
      goto LABEL_50;
    }

    if (v7 <= v9)
    {
      if (*(v3 + 94) == 3)
      {
        v19 = *(v3 + 108);
        if (v19 >= 7)
        {
          v19 = 7;
        }

        *(v3 + 108) = v19 + 1;
        if (v6 <= v9 && (v3[425] & 1) == 0)
        {
          v3[425] = 1;
          GlCustomLog(15, "FEATURE_SEARCH_3GEAR::Enter no search\n");
        }

        goto LABEL_41;
      }
    }

    else if (v3[425] == 1)
    {
      v3[425] = 0;
      GlCustomLog(15, "FEATURE_SEARCH_3GEAR::Enter min search\n");
      goto LABEL_41;
    }

    v20 = *(v3 + 108);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    *(v3 + 108) = v20 - 1;
    v3[425] = 0;
    goto LABEL_41;
  }

  if (v4 == 2)
  {
    v3[419] = 1;
    v3[476] = 1;
    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId((this + 1623), 25, 46, 0x3Bu, 0x3Cu, 0x47u, 0xFAu, 84, 0x3Bu, 1);
    return 0;
  }

  if (v4 == 3)
  {
    v3[476] = 0;
    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId((this + 1623), 25, 46, 0x3Bu, 0x3Cu, 0x47u, 0xFAu, 84, 0x3Bu, 1);
    result = 0;
    v3[419] = 0;
  }

  return result;
}

uint64_t BlueFin::GlPeKF::GetGridConfig(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a1 + 61440;
  v5 = *a2;
  BlueFin::GlArray::EnsureValidHandle(a1 + 61864, v5);
  if (*(*(v4 + 440) + v5 - *(v4 + 460)) == 255)
  {
    DeviceFaultNotify("glpe_kf.cpp", 7369, "GetGridConfig", "m_otGridCfgArr.Has(rotSv)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_kf.cpp", 7369, "m_otGridCfgArr.Has(rotSv)");
  }

  return *BlueFin::GlArray::Get((a1 + 61864), *a2);
}

uint64_t BlueFin::GlSatCarrId::GlSatCarrId(uint64_t this, unsigned int a2)
{
  if (a2 >= 0x190)
  {
    DeviceFaultNotify("glmesrd_sat_carr_id.cpp", 41, "GlSatCarrId", "usIndex < NUM_SAT_CARR_IDS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_carr_id.cpp", 41, "usIndex < NUM_SAT_CARR_IDS");
  }

  v2 = (5243 * (a2 >> 2)) >> 17;
  *(this + 4) = v2;
  *this = a2 - 100 * v2;
  return this;
}

uint64_t BlueFin::GlReqSm::ToggleCoexGpio(uint64_t this, int a2)
{
  if (*(*(this + 6272) + 26336) == 1)
  {
    v2 = this;
    if (*(this + 54901) != a2)
    {
      *(this + 54901) = a2;
      v3 = "LOW";
      if (a2)
      {
        v3 = "HIGH";
      }

      this = GlCustomLog(14, "GPS_FIX_STA toggle %s\n", v3);
      v4 = *(v2 + 6272);
      v5 = *(v4 + 88);
      if ((v5 - 37) >= 2)
      {
        if (v5 == 40)
        {
          v8 = *(**(v2 + 312) + 576);

          return v8();
        }
      }

      else
      {
        this = *(*(v2 + 6264) + 48);
        if (this)
        {
          v6 = *(v4 + 26337);
          v7 = *(*this + 112);

          return v7();
        }
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSkfCore::NewMsmt(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  if (*(a1 + 52) == 1)
  {
    (*(*a1 + 24))(a1);
    v12 = 0;
    *(a1 + 48) = a2;
    if (*(a1 + 52))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *(a1 + 48);
    *(a1 + 48) = a2;
    v12 = a2 - v13;
    if (a2 - v13 < 0)
    {
      DeviceFaultNotify("glme_skfcore.cpp", 86, "NewMsmt", "lDeltaTimeLms >= 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_skfcore.cpp", 86, "lDeltaTimeLms >= 0");
    }
  }

  if (v12)
  {
LABEL_8:
    (*(*a1 + 32))(a1);
    v14 = *(a1 + 80);
    if (v14 <= a5)
    {
      v15 = *(a1 + 80);
    }

    else
    {
      v15 = a5;
    }

    if (v14 <= 0.0)
    {
      v16 = a5;
    }

    else
    {
      v16 = v15;
    }

    *(a1 + 40) = v16;
    v17 = *(a1 + 72);
    v18 = *(a1 + 64) * v12 * (*(a1 + 64) * v12);
    v19 = *(a1 + 24) + v18;
    *(a1 + 16) = v18;
    *(a1 + 24) = v19;
    if (v19 > v17)
    {
      *(a1 + 24) = v17;
    }

    *(a1 + 52) = 0;
    goto LABEL_17;
  }

  if (*(a1 + 40) > a5)
  {
    *(a1 + 40) = a5;
  }

LABEL_17:
  *(a1 + 32) = *(a1 + 24) / (*(a1 + 24) + a5);
  v20 = a4 - *(a1 + 8);
  result = (*(*a1 + 40))(a1, a3, v20);
  v22 = *(a1 + 32);
  v23 = *(a1 + 24) * (1.0 - v22);
  *(a1 + 24) = v23;
  v24 = *(a1 + 40);
  if (v23 < v24)
  {
    *(a1 + 24) = v24;
    v23 = v24;
  }

  v25 = *(a1 + 8) * 1000000000.0;
  v26 = -v25;
  if (v25 >= 0.0)
  {
    v26 = *(a1 + 8) * 1000000000.0;
  }

  if (v26 < 5000.0)
  {
    return GlCustomLog(127, "NewMsmt(%u) dZ %.3f, dK %.3f, dR %.3f, dX %.3f, dQ %.6f, X_ %.3f, X %.3f, P_ %.3f, P %.3f in ppb\n", a2, v20 * 1000000000.0, v22, a5 * 1.0e18, v20 * v22 * 1000000000.0, *(a1 + 16) * 1.0e18, v10 * 1000000000.0, v25, v11 * 1.0e18, v23 * 1.0e18);
  }

  return result;
}

double BlueFin::GlMeSkfCore::UpdateDx(uint64_t a1, double a2)
{
  result = *(a1 + 8) + *(a1 + 32) * a2;
  *(a1 + 8) = result;
  return result;
}

uint64_t BlueFin::GlMeSkfCb::NewMsmt(uint64_t a1, int a2, int *a3, uint64_t a4, double a5, double a6)
{
  v8 = *a3;
  if ((*a3 & 0x10) != 0)
  {
    *(a1 + 52) = 1;
    *(a1 + 104) = a2;
    goto LABEL_6;
  }

  if ((v8 & 0x20) != 0)
  {
LABEL_6:
    *(a1 + 108) = a2;
    goto LABEL_7;
  }

  if ((v8 & 8) != 0)
  {
    *(a1 + 112) = a2;
  }

LABEL_7:
  if ((v8 & 4) != 0)
  {
    *(a1 + 116) = a2;
  }

  *(a1 + 92) = *a3;
  result = BlueFin::GlMeSkfCore::NewMsmt(a1, a2, a4, a5, a6);
  *(a1 + 88) |= *(a1 + 92);
  if ((*a3 & 0x10) != 0)
  {
    *(a1 + 120) = 0;
  }

  return result;
}

double BlueFin::GlMeSkfCb::Init(BlueFin::GlMeSkfCb *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = *(this + 7);
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 52) = 1;
  result = *(this + 10);
  *(this + 5) = result;
  *(this + 22) = 0;
  *(this + 120) = 1;
  return result;
}

void BlueFin::GlMeSkfCb::UpdateDx(uint64_t a1, unsigned __int8 *a2, double a3)
{
  v25 = a3;
  v22[0] = *a2;
  v23 = 0;
  v24 = 575;
  if (v22[0] - 189 >= 0xFFFFFF44)
  {
    v6 = BlueFin::GlSvId::s_aucSvId2gnss[v22[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v6] == 255)
    {
      v23 = -1;
    }

    else
    {
      v24 = BlueFin::GlSignalId::s_ausGnss2signalId[v6] + v22[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v6];
    }
  }

  SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v25, v22, 0);
  v25 = a3;
  v22[0] = 1;
  v23 = 0;
  v24 = 0;
  SubBitTime = BlueFin::GlSystemTime::getSubBitTime(&v25, v22, 0);
  v9 = *a2;
  if ((v9 - 189) < 0xFFFFFF44 || (v10 = BlueFin::GlSvId::s_aucSvId2gnss[*a2], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10] == 255) || (BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v9 - BlueFin::GlSvId::s_aucGnss2minSvId[v10]) >= 0x23Fu)
  {
    v20 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v21 = 679;
LABEL_30:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v21, v20);
  }

  v11 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v10];
  if (!v11)
  {
    v20 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v21 = 686;
    goto LABEL_30;
  }

  v12 = v11 * 0.001;
  if (SubEpochTime <= v12 * 0.5)
  {
    if (SubEpochTime < v12 * -0.5)
    {
      SubEpochTime = SubEpochTime + v12;
      SubBitTime = SubBitTime - v12;
    }
  }

  else
  {
    SubEpochTime = SubEpochTime - v12;
    SubBitTime = SubBitTime + v12;
  }

  v25 = SubBitTime;
  v22[0] = 1;
  v23 = 0;
  v24 = 0;
  v13 = BlueFin::GlSystemTime::getSubBitTime(&v25, v22, 1u);
  v14 = *(a1 + 92);
  if ((v14 & 8) != 0)
  {
    v16 = *(a1 + 88);
    if (*(a1 + 120) == 1 && (v16 & 2) != 0)
    {
      *(a1 + 32) = 0x3FEFD70A3D70A3D7;
      *(a1 + 120) = 0;
    }

    v17 = 1.0;
    v18 = 0.0;
    if ((v14 & 0x10) != 0)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    if ((v16 & 0x20) == 0)
    {
      v18 = 1.0;
    }

    if ((v14 & 0x20) == 0)
    {
      v17 = v18;
    }

    if ((v16 & 0x10) != 0)
    {
      v17 = v19;
    }

    v15 = *(a1 + 8) + SubEpochTime * *(a1 + 32) + v17 * v13;
  }

  else
  {
    v15 = *(a1 + 8) + *(a1 + 32) * SubEpochTime;
  }

  *(a1 + 8) = v15;
}

_DWORD *BlueFin::GlMeSkfCb::UpdateFlagsForFirstBlock(_DWORD *this)
{
  v1 = 0;
  this[22] = 0;
  v2 = this[12];
  v3 = this[27];
  v5 = v2 >= v3;
  v4 = v2 - v3;
  v5 = !v5 || v4 >= 0x927C0;
  if (!v5)
  {
    v1 = 32;
    this[22] = 32;
  }

  v6 = this[26];
  v5 = v2 >= v6;
  v7 = v2 - v6;
  if (v5)
  {
    if (v7 >= 0x927C0)
    {
      return this;
    }

    v13 = 48;
    goto LABEL_17;
  }

  v8 = this[28];
  v5 = v2 >= v8;
  v9 = v2 - v8;
  if (v5)
  {
    if (v9 >> 4 > 0x752)
    {
      return this;
    }

    v13 = v1 | 8;
    goto LABEL_17;
  }

  v10 = this[29];
  v5 = v2 >= v10;
  v11 = v2 - v10;
  if (v5 && v11 < 0x927C0)
  {
    v13 = v1 | 4;
LABEL_17:
    this[22] = v13;
  }

  return this;
}

uint64_t BlueFin::GlMeMiniKF::UpdateClkModel(BlueFin::GlMeMiniKF *this, int a2, int a3)
{
  v27 = &unk_2A1F0E1A0;
  v30 = 0x36A7C5AC00000000;
  SubBitAndEpochTime = 0.0;
  v32 = 3.4028e38;
  v33 = 0.0;
  v34 = 3.4028e38;
  v35 = 0.0;
  v36 = 0x36A7C5AC7F7FFFFFLL;
  v28 = 0;
  v29 = a2;
  v5 = a3 & 0xA;
  if (v5 != 10)
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_21;
    }

    if (*(this + 40) != a2)
    {
      v25 = "m_otMskfCbGps.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms";
      DeviceFaultNotify("glme_mkf.cpp", 449, "mskfGetClkModUpdate", "m_otMskfCbGps.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms");
      v26 = 449;
      goto LABEL_53;
    }

    v28 = 8;
    v13 = *(this + 17);
    v32 = sqrtf(v13);
    v40 = *(this + 15);
    v37[0] = 1;
    v38 = 0;
    v39 = 0;
    SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v40, v37, 1u);
    SubBitAndEpochTime = SubEpochTime;
    v28 = 264;
    v34 = v32;
    goto LABEL_20;
  }

  if (*(this + 40) != a2)
  {
    v25 = "m_otMskfCbGps.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms";
    DeviceFaultNotify("glme_mkf.cpp", 367, "mskfGetClkModUpdate", "m_otMskfCbGps.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms");
    v26 = 367;
    goto LABEL_53;
  }

  v28 = 10;
  v6 = *(this + 17);
  v32 = sqrtf(v6);
  v40 = *(this + 15);
  v37[0] = 1;
  v38 = 0;
  v39 = 0;
  v28 = 298;
  v34 = v32;
  SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v40, v37, 1u);
  v33 = SubBitAndEpochTime;
  if ((a3 & 4) != 0)
  {
    v28 = 430;
    *&v36 = v32;
    v16 = *(this + 15);
    goto LABEL_31;
  }

  if ((~a3 & 0x160) == 0)
  {
    v40 = *(this + 15);
    v37[0] = 1;
    v38 = 0;
    v39 = 0;
    SubBitTime = BlueFin::GlSystemTime::getSubBitTime(&v40, v37, 1u);
    v40 = *(this + 15);
    v37[0] = 1;
    v38 = 0;
    v39 = 0;
    v8 = BlueFin::GlSystemTime::getSubEpochTime(&v40, v37, 1u);
    v40 = *(this + 31);
    v37[0] = 52;
    v38 = 0;
    v39 = 147;
    v9 = BlueFin::GlSystemTime::getSubBitTime(&v40, v37, 1u);
    v40 = *(this + 31);
    v37[0] = 52;
    v38 = 0;
    v39 = 147;
    v10 = BlueFin::GlSystemTime::getSubEpochTime(&v40, v37, 1u);
    if (v9 < 0.001)
    {
      v9 = v9 + 0.02;
    }

    v11 = v9 - SubBitTime;
    if (v9 - SubBitTime < 0.0)
    {
      v11 = -(v9 - SubBitTime);
    }

    if (v11 > 0.005 && fmod(0.02 - v11, 0.02) > 0.005)
    {
      v9 = v9 + 0.01;
    }

    v40 = v10 + v9;
    v37[0] = 52;
    v38 = 0;
    v39 = 147;
    v33 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v40, v37, 1u);
    v12 = v10 - v8;
    if (v10 - v8 < 0.0)
    {
      v12 = -(v10 - v8);
    }

    if (v12 > 0.0005)
    {
      if (v10 <= v8)
      {
        v9 = v9 + -0.001;
      }

      else
      {
        v9 = v9 + 0.001;
      }
    }

    v40 = v8 + v9;
    v37[0] = 1;
    v38 = 0;
    v39 = 0;
    v23 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v40, v37, 1u);
    SubEpochTime = SubBitAndEpochTime;
    v24 = SubBitAndEpochTime - v23;
    if (SubBitAndEpochTime - v23 < 0.0)
    {
      v24 = -v24;
    }

    if (v24 < 0.003 || fmod(0.02 - v24, 0.02) < 0.003)
    {
      SubBitAndEpochTime = v23;
      v28 |= 0x84u;
      if ((a3 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

LABEL_20:
    v33 = SubEpochTime;
  }

LABEL_21:
  if ((~a3 & 0x120) == 0)
  {
    if (*(this + 72) != v29)
    {
      v25 = "m_otMskfCbGlns.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms";
      DeviceFaultNotify("glme_mkf.cpp", 464, "mskfGetClkModUpdate", "m_otMskfCbGlns.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms");
      v26 = 464;
      goto LABEL_53;
    }

    v28 |= 0x120u;
    v15 = *(this + 33);
    v34 = sqrtf(v15);
    v40 = *(this + 31);
    v37[0] = 52;
    v38 = 0;
    v39 = 147;
    v16 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v40, v37, 1u);
    v33 = v16;
    if ((a3 & 0x80) != 0)
    {
      v28 |= 0x8Eu;
      SubBitAndEpochTime = v16;
      v32 = v34;
      *&v36 = v34;
LABEL_31:
      v40 = v16;
      v37[0] = -117;
      v38 = 0;
      v39 = 453;
      v35 = BlueFin::GlSystemTime::getSubEpochTime(&v40, v37, 1u);
      v28 |= 0x400u;
    }

LABEL_32:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if ((a3 & 0x100) == 0 || v5 == 10)
  {
    goto LABEL_32;
  }

  if (*(this + 72) != v29)
  {
    v25 = "m_otMskfCbGlns.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms";
    DeviceFaultNotify("glme_mkf.cpp", 490, "mskfGetClkModUpdate", "m_otMskfCbGlns.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms");
    v26 = 490;
    goto LABEL_53;
  }

  v28 |= 0x100u;
  v17 = *(this + 33);
  v34 = sqrtf(v17);
  v40 = *(this + 31);
  v37[0] = 52;
  v38 = 0;
  v39 = 147;
  v33 = BlueFin::GlSystemTime::getSubEpochTime(&v40, v37, 1u);
  if ((a3 & 0x400) != 0)
  {
LABEL_33:
    if ((v28 & 0x400) == 0)
    {
      if (*(this + 104) != v29)
      {
        v25 = "m_otMskfCbGal.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms";
        DeviceFaultNotify("glme_mkf.cpp", 501, "mskfGetClkModUpdate", "m_otMskfCbGal.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms");
        v26 = 501;
        goto LABEL_53;
      }

      v28 |= 0x400u;
      v18 = *(this + 49);
      LODWORD(v36) = sqrtf(v18);
      v40 = *(this + 47);
      v37[0] = -117;
      v38 = 0;
      v39 = 453;
      v35 = BlueFin::GlSystemTime::getSubEpochTime(&v40, v37, 1u);
    }
  }

LABEL_36:
  if ((a3 & 0x10) != 0)
  {
    if (*(this + 16) == v29)
    {
      v28 |= 0x10u;
      *&v19 = *(this + 3);
      v20 = *(this + 5);
      v30 = __PAIR64__(COERCE_UNSIGNED_INT(sqrtf(v20)), v19);
      goto LABEL_39;
    }

    v25 = "m_otMskfCbDot.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms";
    DeviceFaultNotify("glme_mkf.cpp", 511, "mskfGetClkModUpdate", "m_otMskfCbDot.GetTimeStampLms() == potClkModUpdate->ulTimeStampLms");
    v26 = 511;
LABEL_53:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_mkf.cpp", v26, v25);
  }

LABEL_39:
  v21 = (*(**(this + 1) + 16))(*(this + 1), &v27);
  BlueFin::GlMeClkMod::Print(&v27, "MKF");
  return v21;
}

uint64_t BlueFin::GlMeClkModMgr::SetClkModFromMkf(BlueFin::GlMeClkModMgr *this, BlueFin::GlMeClkMod *a2)
{
  if (*(this + 96) == 1 && (v4 = *(a2 + 3) - *(this + 25), v4 <= 120000))
  {
    *(a2 + 2) &= 0xFFFFFFCD;
    if (*(this + 30) != v4)
    {
      *(this + 30) = v4;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 84;
  if ((*(a2 + 2) & 0x10) == 0)
  {
    v6 = 70;
  }

  GlCustomLog(127, "SetClkModFromMkf:%f,%c\n", (*(a2 + 5) * 1000000000.0), v6);
  if ((*(a2 + 8) & 0x32) != 0)
  {
    BlueFin::GlMeClkModMgr::SetClkMod(this, a2, 0);
    return 1;
  }

  return v5;
}

void *BlueFin::GlMeSrdSatMgr::GetSignalId@<X0>(void *this@<X0>, const BlueFin::GlSatCarrId *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = 1 << (v3 & 0x1F);
  if ((v4 & *(this[15] + 4 * (v3 >> 5))) == 0 && (v4 & *(this[11] + 4 * (v3 >> 5))) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 869, "GetSignalId", "IsSatAllocated(ucSatId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 869, "IsSatAllocated(ucSatId)");
  }

  v5 = *(this[786] + 52 * *a2);
  v6 = *(a2 + 1);
  *a3 = v5;
  *(a3 + 4) = v6;
  *(a3 + 8) = 575;
  if (v6 != -1 && (v5 - 189) >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + v7] == 255)
    {
      *(a3 + 4) = -1;
    }

    else
    {
      *(a3 + 8) = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v7] + v6 * BlueFin::GlSvId::s_aucGnss2numSvId[v7];
    }
  }

  return this;
}

double BlueFin::GlMeSrdSatTrackMgr::GetSetSatCarrIdValidOrAided@<D0>(BlueFin::GlMeSrdSatTrackMgr *this@<X0>, uint64_t a2@<X8>)
{
  BlueFin::GlSetBase::GlSetBase(&v9, v10, 0x10u, this + 530);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v9, &v15);
  BlueFin::GlSetBase::operator=(&v9, &v15);
  v10[0] = v17;
  v10[1] = v18;
  v10[2] = v19;
  v10[3] = *v20;
  BlueFin::GlSetBase::GlSetBase(&v11, v12, 0x10u, this + 500);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v11, &v15, &v9);
  BlueFin::GlSetBase::operator=(&v11, &v15);
  v12[0] = v17;
  v12[1] = v18;
  v12[2] = v19;
  v12[3] = *v20;
  v4 = BlueFin::GlSetBase::GlSetBase(&v13, v14, 0x10u, &v11);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(v4, &v15, this + 540);
  BlueFin::GlSetBase::operator=(&v13, &v15);
  v14[0] = v17;
  v14[1] = v18;
  v14[2] = v19;
  v14[3] = *v20;
  BlueFin::GlSetBase::GlSetBase(&v7, v8, 0x10u, this + 580);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v7, &v15);
  BlueFin::GlSetBase::operator=(&v7, &v15);
  v8[0] = v17;
  v8[1] = v18;
  v8[2] = v19;
  v8[3] = *v20;
  v5 = BlueFin::GlSetBase::GlSetBase(a2, (a2 + 12), 0x10u, &v13);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v5, &v15, &v7);
  BlueFin::GlSetBase::operator=(a2, &v15);
  *(a2 + 12) = v17;
  *(a2 + 28) = v18;
  *(a2 + 44) = v19;
  result = v20[0];
  *(a2 + 60) = *v20;
  return result;
}

double BlueFin::GlMeSrdAcqMgrSm::GetSubEpochTime(unsigned __int8 a1, double a2)
{
  if (a1 - 189 < 0xFFFFFF44 || (v2 = BlueFin::GlSvId::s_aucSvId2gnss[a1], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v2] == 255) || (BlueFin::GlSignalId::s_ausGnss2signalId[v2] + a1 - BlueFin::GlSvId::s_aucGnss2minSvId[v2]) >= 0x23Fu)
  {
    v8 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v9 = 679;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v9, v8);
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v2])
  {
    v8 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v9 = 686;
    goto LABEL_9;
  }

  v3 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v2] * 0.001;
  v4 = fabs(a2);
  result = v4 - floor(v4 / v3) * v3;
  v6 = v3 * 0.5;
  v7 = v3 - result;
  if (result > v6)
  {
    return v7;
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSatTrackMgr::GetSetSvidValidTrackingList@<X0>(const void **this@<X0>, uint64_t a2@<X8>)
{
  BlueFin::GlSetBase::GlSetBase(&v9, v10, 0x10u, this + 530);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v9, &v15);
  BlueFin::GlSetBase::operator=(&v9, &v15);
  v10[0] = v17;
  v10[1] = v18;
  v10[2] = v19;
  v10[3] = v20;
  BlueFin::GlSetBase::GlSetBase(&v11, v12, 0x10u, this + 500);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v11, &v15, &v9);
  BlueFin::GlSetBase::operator=(&v11, &v15);
  v12[0] = v17;
  v12[1] = v18;
  v12[2] = v19;
  v12[3] = v20;
  BlueFin::GlSetBase::GlSetBase(&v7, v8, 0x10u, this + 580);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v7, &v15);
  BlueFin::GlSetBase::operator=(&v7, &v15);
  v8[0] = v17;
  v8[1] = v18;
  v8[2] = v19;
  v8[3] = v20;
  v4 = BlueFin::GlSetBase::GlSetBase(v13, v14, 0x10u, &v11);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v4, &v15, &v7);
  v5 = BlueFin::GlSetBase::operator=(v13, &v15);
  v14[0] = v17;
  v14[1] = v18;
  v14[2] = v19;
  v14[3] = v20;
  BlueFin::GlSatCarrIdSet::GetSatIdSetPrimaryCarrier(v5, &v15);
  if ((*(*this[3] + 264))())
  {
    BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(v13, &v11);
    BlueFin::GlSetBase::operator=(&v15, &v11);
    v17 = v12[0];
  }

  return BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(this[1], &v15, a2);
}

void BlueFin::GlMeSrdAcqMgrSm::LimitOneTrackPerSv(BlueFin::GlMeSrdAcqMgrSm *this, uint64_t a2)
{
  v3 = (*(*this + 80))(this);
  v6 = 0;
  v7[0] = 0;
  *(v7 + 7) = 0;
  v7[2] = v3;
  v8 = 0;
  v9 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 48))(v4);
  (*(*v5 + 136))(v5, &v6, a2);
  BlueFin::GlMeSrdTransaction::Complete(&v6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v6);
}

void sub_298904BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_tm_set_single_svid(BlueFin::CarpEswRpcJdEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3 >= 2)
  {
    v10 = "control < 2";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 885, "esw_jd_rpc_tm_set_single_svid", "control < 2");
    v11 = 885;
    goto LABEL_6;
  }

  v3 = a3;
  v4 = a2;
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, v3);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(v4, 4, 0xCu, v13, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(this + 1) + 416))();
  if (result < v4)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 894, "esw_jd_rpc_tm_set_single_svid", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 894;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v11, v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::UpdateMPFSettings(BlueFin::GlMeSrdSatTrackMgr *this, BlueFin::GlMeSrdTransaction *a2, const BlueFin::GlSatCarrId *a3)
{
  v6 = *a3;
  BlueFin::GlMeSrdSatMgr::GetSvid(*(this + 1), *a3, &v14);
  v7 = *(a3 + 1);
  result = (*(**(this + 3) + 256))();
  if ((result & (v7 == 3)) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = this + 16 * v6 + 4 * v9;
  if ((*(*(this + 700) + ((v14 >> 3) & 0x1C)) >> (v14 & 0x1F)))
  {
    v11 = -1805320152;
  }

  else
  {
    v11 = 0;
  }

  if (v11 != *(v10 + 1412))
  {
    *(v10 + 1412) = v11;
    v12 = (*(**(a2 + 3) + 48))(*(a2 + 3));
    v13 = *(*(*(*v12 + 48))(v12) + 144);

    return v13();
  }

  return result;
}