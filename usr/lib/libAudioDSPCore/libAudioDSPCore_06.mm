void VBAP::~VBAP(VBAP *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    v3 = *(this + 35);
    v4 = *(this + 34);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 3;
        if (*(v3 - 1))
        {
          v6 = *(v3 - 2);
          v7 = *(*(v3 - 3) + 8);
          v8 = *v6;
          *(v8 + 8) = v7;
          *v7 = v8;
          *(v3 - 1) = 0;
          if (v6 != v5)
          {
            do
            {
              v9 = v6[1];
              operator delete(v6);
              v6 = v9;
            }

            while (v9 != v5);
          }
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 34);
    }

    *(this + 35) = v2;
    operator delete(v4);
  }

  v10 = *(this + 31);
  if (v10)
  {
    *(this + 32) = v10;
    operator delete(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    *(this + 29) = v11;
    operator delete(v11);
  }

  if (*(this + 27))
  {
    v12 = *(this + 26);
    v13 = *(*(this + 25) + 8);
    v14 = *v12;
    *(v14 + 8) = v13;
    *v13 = v14;
    *(this + 27) = 0;
    if (v12 != (this + 200))
    {
      do
      {
        v15 = *(v12 + 1);
        operator delete(v12);
        v12 = v15;
      }

      while (v15 != (this + 200));
    }
  }

  if (*(this + 24))
  {
    v16 = *(this + 23);
    v17 = *(*(this + 22) + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    *(this + 24) = 0;
    if (v16 != (this + 176))
    {
      do
      {
        v19 = *(v16 + 1);
        operator delete(v16);
        v16 = v19;
      }

      while (v19 != (this + 176));
    }
  }

  v20 = *(this + 19);
  if (v20)
  {
    v21 = *(this + 20);
    v22 = *(this + 19);
    if (v21 != v20)
    {
      v23 = *(this + 20);
      do
      {
        v25 = *(v23 - 24);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 16) = v24;
          operator delete(v24);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = *(this + 19);
    }

    *(this + 20) = v20;
    operator delete(v22);
  }

  v26 = *(this + 16);
  if (v26)
  {
    *(this + 17) = v26;
    operator delete(v26);
  }

  v27 = *(this + 13);
  if (v27)
  {
    *(this + 14) = v27;
    operator delete(v27);
  }

  v28 = *(this + 10);
  if (v28)
  {
    *(this + 11) = v28;
    operator delete(v28);
  }

  v29 = *(this + 7);
  if (v29)
  {
    *(this + 8) = v29;
    operator delete(v29);
  }

  v30 = *(this + 4);
  if (v30)
  {
    *(this + 5) = v30;
    operator delete(v30);
  }

  v31 = *(this + 1);
  if (v31)
  {
    *(this + 2) = v31;
    operator delete(v31);
  }
}

uint64_t VBAP::calculateVBAPGains(VBAP *this, float32x2_t *a2, float *__C)
{
  v136 = *MEMORY[0x29EDCA608];
  if ((*(this + 314) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "VBAP.cpp";
      v130 = 1024;
      v131 = 568;
      v132 = 2080;
      v133 = "calculateVBAPGains";
      v134 = 1024;
      v135 = 568;
      v5 = MEMORY[0x29EDCA988];
      v6 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain if the VBAP object is not initialized";
      goto LABEL_9;
    }

    return 4294967246;
  }

  if (a2->f32[0] == 0.0 && a2->f32[1] == 0.0 && a2[1].f32[0] == 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315906;
      *&buf[1] = "VBAP.cpp";
      v130 = 1024;
      v131 = 574;
      v132 = 2080;
      v133 = "calculateVBAPGains";
      v134 = 1024;
      v135 = 574;
      v5 = MEMORY[0x29EDCA988];
      v6 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain for a source location [0, 0, 0]";
LABEL_9:
      _os_log_impl(&dword_296B9D000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x22u);
      return 4294967246;
    }

    return 4294967246;
  }

  vDSP_vclr(__C, 1, *(this + 1));
  vDSP_vclr(*(this + 16), 1, (*(this + 17) - *(this + 16)) >> 2);
  v9 = vcvtq_f64_f32(*a2);
  v10.f64[0] = a2[1].f32[0];
  v11 = vmulq_f64(v10, v10);
  v12 = vmulq_f64(v9, v9);
  v11.f64[0] = 1.0 / sqrt(vaddvq_f64(v12) + v11.f64[0]);
  v13 = vmulq_f64(v11, v10);
  v14 = vmulq_n_f64(v9, v11.f64[0]);
  v15 = vextq_s8(v14, v14, 8uLL).u64[0];
  if (*(this + 313) == 1)
  {
    result = 0;
    v16 = *(this + 7);
    v10.f64[0] = *(v16 + 8);
    v12.f64[0] = *(v16 + 20);
    *&v14.f64[1] = v15;
    v17 = vaddq_f64(vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*v16), v14), vmulq_f64(vcvtq_f64_f32(*(v16 + 12)), v14)), vzip1q_s64(vmulq_f64(v10, v13), vmulq_f64(v12, v13)));
    __asm { FMOV            V1.2D, #0.5 }

    *__C = vcvt_f32_f64(vsqrtq_f64(vmlaq_f64(_Q1, _Q1, v17)));
    return result;
  }

  if (*(this + 1) < 2u)
  {
    result = 0;
    *__C = 1.0;
    return result;
  }

  v118 = v15;
  v119 = v14.f64[0];
  v120 = v13;
  v124 = 0;
  v128 = 0;
  v127 = 0;
  v23 = VBAP::triangleLookup(this, a2, &v124, &v127);
  if (!v23)
  {
    v28 = (*(this + 28) + 12 * v124);
    v29 = *(this + 4);
    v31 = *v28;
    v30 = v28[1];
    v32 = (v29 + 12 * v31);
    v24.f64[0] = v32[1].f32[0];
    v33 = (v29 + 12 * v30);
    _Q5.f64[0] = v33[1].f32[0];
    v34 = v28[2];
    v35 = (v29 + 12 * v34);
    v26.f64[0] = v35[1].f32[0];
    v36 = vcvtq_f64_f32(*v32);
    v37 = vcvtq_f64_f32(*v33);
    v38 = vcvtq_f64_f32(*v35);
    v39 = vaddvq_f64(vmulq_f64(v37, v36)) + vmulq_f64(_Q5, v24).f64[0];
    v40 = vaddq_f64(vpaddq_f64(vmulq_f64(v38, v37), vmulq_f64(v38, v36)), vzip1q_s64(vmulq_f64(v26, _Q5), vmulq_f64(v26, v24)));
    v45 = vmlaq_n_f64(vnegq_f64(vextq_s8(v40, v40, 8uLL)), v40, v39);
    _Q2 = vdivq_f64(v45, vdupq_lane_s64(COERCE__INT64(-(v39 * v39 + -1.0)), 0));
    v42 = vmlaq_laneq_f64(v38, v37, _Q2, 1);
    v43 = vmlsq_lane_f64(v37, v36, v39, 0);
    v44 = vmlaq_n_f64(v42, v36, _Q2.f64[0]);
    v45.f64[0] = _Q5.f64[0] - v39 * v24.f64[0];
    __asm { FMLA            D6, D5, V2.D[1] }

    _Q5.f64[0] = _D6 + _Q2.f64[0] * v24.f64[0];
    v47.f64[0] = v119;
    *&v47.f64[1] = v118;
    v48 = vaddvq_f64(vmulq_f64(v36, v47)) + vmulq_f64(v24, v120).f64[0];
    v49 = vaddvq_f64(vmulq_f64(v43, v43)) + vmulq_f64(v45, v45).f64[0];
    v50 = 0.0;
    if (v49 >= 0.00000999999975)
    {
      v50 = (vaddvq_f64(vmulq_f64(v43, v47)) + vmulq_f64(v45, v120).f64[0]) / v49;
    }

    v51 = vmulq_f64(_Q5, _Q5);
    v51.f64[0] = vaddvq_f64(vmulq_f64(v44, v44)) + v51.f64[0];
    v52 = (vaddvq_f64(vmulq_f64(v44, v47)) + vmulq_f64(_Q5, v120).f64[0]) / v51.f64[0];
    if (v51.f64[0] >= 0.00000999999975)
    {
      v51.f64[0] = v52;
    }

    else
    {
      v51.f64[0] = 0.0;
    }

    v53.f64[0] = v48 - v50 * v39;
    v53.f64[1] = v50;
    v54 = vmlaq_n_f64(v53, _Q2, v51.f64[0]);
    v55 = vaddvq_f64(vmulq_f64(v54, v54)) + vmulq_f64(v51, v51).f64[0];
    v56 = 0uLL;
    v57 = 0.0;
    if (v55 > 0.00000999999975)
    {
      v58 = 1.0 / sqrt(v55);
      v56 = vmulq_n_f64(v54, v58);
      v57 = v58 * v51.f64[0];
    }

    v59 = *(this + 1);
    if (v31 >= v59)
    {
      v61 = v31 - v59;
      v62 = *(this + 16);
      v63 = v56.f64[0] + *(v62 + 4 * v61);
      *(v62 + 4 * v61) = v63;
    }

    else
    {
      v60 = v56.f64[0];
      __C[v31] = v60;
    }

    if (v30 >= v59)
    {
      v65 = v30 - v59;
      v66 = *(this + 16);
      v67 = v56.f64[1] + *(v66 + 4 * v65);
      *(v66 + 4 * v65) = v67;
    }

    else
    {
      v64 = v56.f64[1];
      __C[v30] = v64;
    }

    if (v34 >= v59)
    {
      v69 = v34 - v59;
      v70 = *(this + 16);
      v57 = v57 + *(v70 + 4 * v69);
      *&v57 = v57;
      *(v70 + 4 * v69) = LODWORD(v57);
      memset(buf, 0, sizeof(buf));
      if (!v59)
      {
        v71 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v68 = v57;
      __C[v34] = v68;
      memset(buf, 0, sizeof(buf));
    }

    v71 = 0;
    v72 = __C;
    v73 = v59;
    do
    {
      if (*v72 >= 0.00001)
      {
        buf[v71++] = *v72;
      }

      else
      {
        *v72 = 0.0;
      }

      ++v72;
      --v73;
    }

    while (v73);
LABEL_40:
    v126 = 0;
    v125 = 0;
    v74 = *(this + 38);
    if (v74)
    {
      v75 = 0;
      v76 = *(this + 16);
      v77 = 1;
      do
      {
        if (*v76 >= 0.00001)
        {
          *(&v125 + v75++) = *v76;
        }

        else
        {
          *v76 = 0;
        }

        ++v76;
        v78 = v74 > v77++;
      }

      while (v78);
      v27 = v23;
      __A = 0;
      if (v71 || v75 != 1)
      {
        if (v71 || v75 != 2)
        {
          if (v71 == 1 && v75 == 1)
          {
            v80 = sqrtf(((*buf * *buf) + v59) - ((*buf * *buf) * v59));
            v81 = *&v125 * v59;
            v82 = -(v80 + *buf) / v81;
            __A.f32[0] = (v80 - *buf) / v81;
          }

          else
          {
            if (v71 == 1 && v75 == 2)
            {
              v83 = (*&v125 * *&v125) + (*(&v125 + 1) * *(&v125 + 1));
              v84 = v83 * v59;
              v85 = v84 + ((*&v125 + *&v125) * *(&v125 + 1));
              v86 = sqrtf(v85 + ((*buf * *buf) * (v83 - v84)));
              v87 = (*(&v125 + 1) + *&v125) * *buf;
              v88 = -(v87 + v86) / v85;
              v82 = (v86 - v87) / v85;
            }

            else
            {
              if (v71 != 2 || v75 != 1)
              {
                goto LABEL_65;
              }

              v89 = sqrtf(((((*buf * *buf) + (*&buf[1] * *&buf[1])) + v59) + ((*buf + *buf) * *&buf[1])) - (((*buf * *buf) + (*&buf[1] * *&buf[1])) * v59));
              v90 = *&v125 * v59;
              v88 = (v89 - (*&buf[1] + *buf)) / v90;
              v82 = -(v89 + (*&buf[1] + *buf)) / v90;
            }

            __A.f32[0] = v88;
          }

          __A.f32[1] = v82;
        }

        else
        {
          *&v57 = sqrtf((((*&v125 * *&v125) + ((*&v125 + *&v125) * *(&v125 + 1))) + (*(&v125 + 1) * *(&v125 + 1))) + (((*(&v125 + 1) * *(&v125 + 1)) + (*&v125 * *&v125)) * v59));
          __asm { FMOV            V1.2S, #1.0 }

          __A = vdiv_f32(COERCE_FLOAT32X2_T(-_D1), vdup_lane_s32(*&v57, 0));
        }
      }

      else
      {
        __A = vcvt_f32_f64(vdivq_f64(xmmword_296C19F70, vdupq_lane_s64(COERCE__INT64(sqrt(v59) * *&v125), 0)));
      }
    }

    else
    {
      v27 = v23;
      __A = 0;
    }

LABEL_65:
    __Ca = 0.0;
    vDSP_maxv(&__A, 1, &__Ca, 2uLL);
    if (*this)
    {
      v91 = *(this + 1);
      v92 = *v28 - v91;
      if (*v28 >= v91)
      {
        v93 = *(*(this + 19) + 24 * v92);
        v94 = *(*(this + 19) + 24 * v92 + 8) - v93;
        if (v94)
        {
          v95 = v94 >> 2;
          v96 = *(this + 16);
          v97 = *(this + 13);
          v98 = 1;
          do
          {
            v99 = *v93++;
            __C[v99] = (*(v96 + 4 * v92) / (*(v97 + 4 * v92) * v95)) + __C[v99];
            v78 = v95 > v98++;
          }

          while (v78);
        }
      }

      v100 = v28[1];
      _CF = v100 >= v91;
      v101 = v100 - v91;
      if (_CF)
      {
        v102 = *(*(this + 19) + 24 * v101);
        v103 = *(*(this + 19) + 24 * v101 + 8) - v102;
        if (v103)
        {
          v104 = v103 >> 2;
          v105 = *(this + 16);
          v106 = *(this + 13);
          v107 = 1;
          do
          {
            v108 = *v102++;
            __C[v108] = (*(v105 + 4 * v101) / (*(v106 + 4 * v101) * v104)) + __C[v108];
            v78 = v104 > v107++;
          }

          while (v78);
        }
      }

      v109 = v28[2];
      _CF = v109 >= v91;
      v110 = v109 - v91;
      if (_CF)
      {
        v111 = *(*(this + 19) + 24 * v110);
        v112 = *(*(this + 19) + 24 * v110 + 8) - v111;
        if (v112)
        {
          v113 = v112 >> 2;
          v114 = *(this + 16);
          v115 = *(this + 13);
          v116 = 1;
          do
          {
            v117 = *v111++;
            __C[v117] = (*(v114 + 4 * v110) / (*(v115 + 4 * v110) * v113)) + __C[v117];
            v78 = v113 > v116++;
          }

          while (v78);
        }
      }
    }

    else
    {
      v121 = 0.0;
      vDSP_sve(*(this + 16), 1, &v121, *(this + 38));
      v121 = v121 * __Ca;
      MEMORY[0x29C2604C0](__C, 1, &v121, __C, 1, *(this + 1));
      v91 = *(this + 1);
    }

    v121 = 0.0;
    vDSP_svesq(__C, 1, &v121, v91);
    v121 = 1.0 / sqrtf(v121);
    MEMORY[0x29C260530](__C, 1, &v121, __C, 1, *(this + 1));
    return v27;
  }

  v27 = v23;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315906;
    *&buf[1] = "VBAP.cpp";
    v130 = 1024;
    v131 = 608;
    v132 = 2080;
    v133 = "calculateVBAPGains";
    v134 = 1024;
    v135 = 608;
    _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup failed", buf, 0x22u);
  }

  return v27;
}

uint64_t HOA::getTDesign(HOA *this, _OWORD *__dst, float *a3, float *__C, float *a5)
{
  if (__dst)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  switch(this)
  {
    case 0:
      if (v6)
      {
        *__dst = 0;
        *a3 = 0.0;
      }

      v7 = 1;
      break;
    case 1:
      if (v6)
      {
        *__dst = xmmword_296C1A210;
        *a3 = xmmword_296C1A220;
      }

      v7 = 4;
      break;
    case 2:
      if (v6)
      {
        *__dst = xmmword_296C1A2B0;
        __dst[1] = unk_296C1A2C0;
        __dst[2] = xmmword_296C1A2D0;
        *(a3 + 2) = xmmword_296C1A300;
        *a3 = xmmword_296C1A2E0;
        *(a3 + 1) = unk_296C1A2F0;
      }

      v7 = 12;
      break;
    case 3:
      if (v6)
      {
        __dst[2] = xmmword_296C1A330;
        __dst[3] = unk_296C1A340;
        __dst[4] = xmmword_296C1A350;
        __dst[5] = unk_296C1A360;
        *__dst = xmmword_296C1A310;
        __dst[1] = unk_296C1A320;
        *(a3 + 2) = xmmword_296C1A390;
        *(a3 + 3) = unk_296C1A3A0;
        *(a3 + 4) = xmmword_296C1A3B0;
        *(a3 + 5) = unk_296C1A3C0;
        v7 = 24;
        *a3 = xmmword_296C1A370;
        *(a3 + 1) = unk_296C1A380;
      }

      else
      {
        v7 = 24;
      }

      break;
    case 4:
      if (v6)
      {
        __dst[2] = xmmword_296C1A3F0;
        __dst[3] = unk_296C1A400;
        __dst[8] = xmmword_296C1A450;
        __dst[6] = xmmword_296C1A430;
        __dst[7] = unk_296C1A440;
        __dst[4] = xmmword_296C1A410;
        __dst[5] = unk_296C1A420;
        *__dst = xmmword_296C1A3D0;
        __dst[1] = unk_296C1A3E0;
        *(a3 + 6) = xmmword_296C1A4C0;
        *(a3 + 7) = unk_296C1A4D0;
        *(a3 + 8) = xmmword_296C1A4E0;
        *(a3 + 2) = xmmword_296C1A480;
        *(a3 + 3) = unk_296C1A490;
        *(a3 + 4) = xmmword_296C1A4A0;
        *(a3 + 5) = unk_296C1A4B0;
        v7 = 36;
        *a3 = xmmword_296C1A460;
        *(a3 + 1) = unk_296C1A470;
      }

      else
      {
        v7 = 36;
      }

      break;
    case 5:
      if (v6)
      {
        __dst[12] = xmmword_296C1A5B0;
        __dst[13] = unk_296C1A5C0;
        __dst[14] = xmmword_296C1A5D0;
        __dst[8] = xmmword_296C1A570;
        __dst[9] = unk_296C1A580;
        __dst[10] = xmmword_296C1A590;
        __dst[11] = unk_296C1A5A0;
        __dst[4] = xmmword_296C1A530;
        __dst[5] = unk_296C1A540;
        __dst[6] = xmmword_296C1A550;
        __dst[7] = unk_296C1A560;
        *__dst = xmmword_296C1A4F0;
        __dst[1] = unk_296C1A500;
        __dst[2] = xmmword_296C1A510;
        __dst[3] = unk_296C1A520;
        *(a3 + 12) = xmmword_296C1A6A0;
        *(a3 + 13) = unk_296C1A6B0;
        *(a3 + 14) = xmmword_296C1A6C0;
        *(a3 + 8) = xmmword_296C1A660;
        *(a3 + 9) = unk_296C1A670;
        *(a3 + 10) = xmmword_296C1A680;
        *(a3 + 11) = unk_296C1A690;
        *(a3 + 4) = xmmword_296C1A620;
        *(a3 + 5) = unk_296C1A630;
        *(a3 + 6) = xmmword_296C1A640;
        *(a3 + 7) = unk_296C1A650;
        *a3 = xmmword_296C1A5E0;
        *(a3 + 1) = unk_296C1A5F0;
        v7 = 60;
        *(a3 + 2) = xmmword_296C1A600;
        *(a3 + 3) = unk_296C1A610;
      }

      else
      {
        v7 = 60;
      }

      break;
    case 6:
      if (v6)
      {
        v31 = __C;
        memcpy(__dst, &unk_296C1A6D0, 0x150uLL);
        memcpy(a3, &unk_296C1A820, 0x150uLL);
        __C = v31;
      }

      v7 = 84;
      break;
    case 7:
      if (v6)
      {
        v21 = __C;
        memcpy(__dst, &unk_296C1A970, 0x1B0uLL);
        memcpy(a3, &unk_296C1AB20, 0x1B0uLL);
        __C = v21;
      }

      v7 = 108;
      break;
    case 8:
      if (v6)
      {
        v37 = __C;
        memcpy(__dst, &unk_296C1ACD0, 0x240uLL);
        memcpy(a3, &unk_296C1AF10, 0x240uLL);
        __C = v37;
      }

      v7 = 144;
      break;
    case 9:
      if (v6)
      {
        v17 = __C;
        memcpy(__dst, &unk_296C1B150, 0x2D0uLL);
        memcpy(a3, &unk_296C1B420, 0x2D0uLL);
        __C = v17;
      }

      v7 = 180;
      break;
    case 10:
      if (v6)
      {
        v35 = __C;
        memcpy(__dst, &unk_296C1B6F0, 0x360uLL);
        memcpy(a3, &unk_296C1BA50, 0x360uLL);
        __C = v35;
      }

      v7 = 216;
      break;
    case 11:
      if (v6)
      {
        v13 = __C;
        memcpy(__dst, &unk_296C1BDB0, 0x428uLL);
        memcpy(a3, &unk_296C1C1D8, 0x428uLL);
        __C = v13;
      }

      v7 = 266;
      break;
    case 12:
      if (v6)
      {
        v15 = __C;
        memcpy(__dst, &unk_296C1C600, 0x4E8uLL);
        memcpy(a3, &unk_296C1CAE8, 0x4E8uLL);
        __C = v15;
      }

      v7 = 314;
      break;
    case 13:
      if (v6)
      {
        v29 = __C;
        memcpy(__dst, &unk_296C1CFD0, 0x5B8uLL);
        memcpy(a3, &unk_296C1D588, 0x5B8uLL);
        __C = v29;
      }

      v7 = 366;
      break;
    case 14:
      if (v6)
      {
        v11 = __C;
        memcpy(__dst, &unk_296C1DB40, 0x698uLL);
        memcpy(a3, &unk_296C1E1D8, 0x698uLL);
        __C = v11;
      }

      v7 = 422;
      break;
    case 15:
      if (v6)
      {
        v19 = __C;
        memcpy(__dst, &unk_296C1E870, 0x788uLL);
        memcpy(a3, &unk_296C1EFF8, 0x788uLL);
        __C = v19;
      }

      v7 = 482;
      break;
    case 16:
      if (v6)
      {
        v9 = __C;
        memcpy(__dst, &unk_296C1F780, 0x888uLL);
        memcpy(a3, &unk_296C20008, 0x888uLL);
        __C = v9;
      }

      v7 = 546;
      break;
    case 17:
      if (v6)
      {
        v23 = __C;
        memcpy(__dst, &unk_296C20890, 0x998uLL);
        memcpy(a3, &unk_296C21228, 0x998uLL);
        __C = v23;
      }

      v7 = 614;
      break;
    case 18:
      if (v6)
      {
        v33 = __C;
        memcpy(__dst, &unk_296C21BC0, 0xAB8uLL);
        memcpy(a3, &unk_296C22678, 0xAB8uLL);
        __C = v33;
      }

      v7 = 686;
      break;
    case 19:
      if (v6)
      {
        v41 = __C;
        memcpy(__dst, &unk_296C23130, 0xBE8uLL);
        memcpy(a3, &unk_296C23D18, 0xBE8uLL);
        __C = v41;
      }

      v7 = 762;
      break;
    case 20:
      if (v6)
      {
        v25 = __C;
        memcpy(__dst, &unk_296C24900, 0xD28uLL);
        memcpy(a3, &unk_296C25628, 0xD28uLL);
        __C = v25;
      }

      v7 = 842;
      break;
    case 21:
      if (v6)
      {
        v27 = __C;
        memcpy(__dst, &unk_296C26350, 0xE78uLL);
        memcpy(a3, &unk_296C271C8, 0xE78uLL);
        __C = v27;
      }

      v7 = 926;
      break;
    default:
      if (v6)
      {
        v39 = __C;
        memcpy(__dst, &unk_296C28040, 0xFD8uLL);
        memcpy(a3, &unk_296C29018, 0xFD8uLL);
        __C = v39;
      }

      v7 = 1014;
      break;
  }

  if (__C)
  {
    __A = 1.0;
    vDSP_vfill(&__A, __C, 1, v7);
  }

  return v7;
}

void *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x29C25FC20](v1, 0x1060C40CA828048);
    return v2;
  }

  return result;
}

uint64_t std::shared_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    caulk::shared_instance_manager<DFTSetups>::remove_expired(v2);
    os_unfair_lock_unlock(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      vDSP_DFT_DestroySetup(v5);
    }

    MEMORY[0x29C25FC20](v3, 0x1060C40CA828048);
  }

  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void caulk::shared_instance_manager<DFTSetups>::remove_expired(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3 != v2)
  {
    while (1)
    {
      v4 = v3[1];
      if (!v4 || *(v4 + 8) == -1)
      {
        break;
      }

      v3 += 2;
      if (v3 == v2)
      {
        return;
      }
    }

    if (v3 != v2)
    {
      v5 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          v6 = v5[1];
          if (v6 && *(v6 + 8) != -1)
          {
            v7 = *v5;
            *v5 = 0;
            v5[1] = 0;
            v8 = v3[1];
            *v3 = v7;
            v3[1] = v6;
            if (v8)
            {
              std::__shared_weak_count::__release_weak(v8);
            }

            v3 += 2;
          }

          v5 += 2;
        }

        while (v5 != v2);
        v2 = *(a1 + 16);
      }
    }
  }

  if (v3 != v2)
  {
    while (v2 != v3)
    {
      v9 = *(v2 - 1);
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v2 -= 2;
    }

    *(a1 + 16) = v3;
  }
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEBF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

uint64_t MultiRadixRealFFT::Initialize(MultiRadixRealFFT *this, unsigned int a2)
{
  {
    operator new();
  }

  v4 = DFTSetupList<false>::instance(void)::global;
  os_unfair_lock_lock(DFTSetupList<false>::instance(void)::global);
  caulk::shared_instance_manager<DFTSetups>::remove_expired(v4);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
LABEL_11:
    Setup = vDSP_DFT_zrop_CreateSetup(0, a2, vDSP_DFT_FORWARD);
    if (Setup)
    {
      vDSP_DFT_zrop_CreateSetup(Setup, a2, vDSP_DFT_INVERSE);
    }

    operator new();
  }

  while (1)
  {
    v7 = v5[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        break;
      }
    }

LABEL_4:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_11;
    }
  }

  if (!*v5 || (v9 = *(*v5 + 16), *v9 != a2))
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_4;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v8;
  }

  else
  {
    v17 = v8;
    (v8->__on_zero_shared)();
    v12 = v17;
    std::__shared_weak_count::__release_weak(v17);
  }

  os_unfair_lock_unlock(v4);
  if (*(v9 + 8) && *(v9 + 16))
  {
    v13 = v12;
    v14 = 0;
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v9 = 0;
    v14 = 1936292453;
    v13 = v12;
    v12 = 0;
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 1);
  *this = v9;
  *(this + 1) = v12;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (v12)
    {
      goto LABEL_27;
    }
  }

  else if (v12)
  {
LABEL_27:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  return v14;
}

void sub_296C001C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](va);
  os_unfair_lock_unlock(v4);
  _Unwind_Resume(a1);
}

uint64_t MultiRadixRealFFT::Size(MultiRadixRealFFT *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t MultiRadixRealFFT::RealInPlaceTransform(MultiRadixRealFFT *this, DSPSplitComplex *a2, int a3, float a4)
{
  if (!*this)
  {
    abort();
  }

  v8 = 16;
  if (a3 == 1)
  {
    v8 = 8;
  }

  vDSP_DFT_Execute(*(*this + v8), a2->realp, a2->imagp, a2->realp, a2->imagp);
  if (a3 == 1)
  {
    v10 = a4 * 0.5;
    MEMORY[0x29C260530](a2->realp, 1, &v10, a2->realp, 1, **this >> 1);
    MEMORY[0x29C260530](a2->imagp, 1, &v10, a2->imagp, 1, **this >> 1);
  }

  return 0;
}

uint64_t HOA::RotationMatrix::RotationMatrix(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v4 = a2;
  v35 = *MEMORY[0x29EDCA608];
  v6 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  if (a2 >= 4 && a3 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v26 = "HOA.cpp";
      v27 = 1024;
      v29 = 2080;
      v28 = 29;
      v30 = "RotationMatrix";
      v31 = 1024;
      v32 = 29;
      v33 = 1024;
      v34 = v4;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Trying to create a HOA rotation matrix of order = %d > 3 with FuMa normalization, capping to order 3", buf, 0x28u);
    }

    v4 = 3;
  }

  v7 = v4 + 1;
  *buf = 0;
  std::vector<float>::assign(a1, (8 * v7 * v7 - 2) * v7 / 6, buf, v6);
  if (v7 > (*(a1 + 40) - *(a1 + 24)) >> 4)
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  v11 = 1;
  do
  {
    v12 = (v11 * v11);
    v13 = *a1 + 4 * ((v8 * v9 - 2) * v9 / 6uLL);
    v14 = *(a1 + 40);
    if (v10 < v14)
    {
      *v10 = v13;
      v10[1] = v12;
      v10 += 2;
    }

    else
    {
      v15 = *(a1 + 24);
      v16 = v10 - v15;
      v17 = (v10 - v15) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v19 = v14 - v15;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v21 = v17;
      v22 = (16 * v17);
      *v22 = v13;
      v22[1] = v12;
      v10 = (16 * v17 + 16);
      v23 = &v22[-2 * v21];
      memcpy(v23, v15, v16);
      *(a1 + 24) = v23;
      *(a1 + 32) = v10;
      *(a1 + 40) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    *(a1 + 32) = v10;
    ++v9;
    v11 += 2;
    v8 += 8;
  }

  while (v9 <= v4);
  return a1;
}

void sub_296C005DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

void HOA::RotationMatrix::setRotationMatrixYPR(float **this, float a2, float a3, float a4)
{
  v4 = this;
  v128 = *MEMORY[0x29EDCA608];
  if (a2 == 0.0 && a3 == 0.0 && a4 == 0.0)
  {
    vDSP_vclr(*this, 1, this[1] - *this);
    v5 = *(v4 + 3);
    v6 = *(v4 + 4);
    if (v5 != v6)
    {
      v7 = 2;
      do
      {
        __A = 1.0;
        v8 = *v5;
        v5 += 2;
        vDSP_vfill(&__A, v8, v7, v7 - 1);
        v7 += 2;
      }

      while (v5 != v6);
    }

    return;
  }

  v9 = this[3];
  v10 = (this[4] - v9) >> 4;
  v11 = (v10 - 1);
  **v9 = 1065353216;
  if (v10 >= 2 && v10 != 1)
  {
    v13 = a4 * 0.017453;
    v14 = a3 * 0.017453;
    v15 = __sincosf_stret(a2 * -0.017453);
    v16 = __sincosf_stret(v14);
    v18 = __sincosf_stret(v13);
    v19 = *(v9 + 2);
    *v19 = -(((v16.__sinval * v15.__sinval) * v18.__sinval) - (v18.__cosval * v15.__cosval));
    v19[1] = -(((v16.__sinval * v15.__sinval) * v18.__cosval) + (v18.__sinval * v15.__cosval));
    v19[2] = v16.__cosval * v15.__sinval;
    v19[3] = v18.__sinval * v16.__cosval;
    v19[4] = v18.__cosval * v16.__cosval;
    v19[5] = v16.__sinval;
    v20 = -(v15.__cosval * v16.__sinval);
    v21 = -((v18.__cosval * v15.__sinval) - (v20 * v18.__sinval));
    v22 = (v18.__sinval * v15.__sinval) + (v20 * v18.__cosval);
    v19[6] = v21;
    v19[7] = v22;
    v19[8] = v16.__cosval * v15.__cosval;
    if (v10 == 2)
    {
      if (*(v4 + 12) == 2)
      {
        HOA::RotationMatrix::toFuMa(v4);
      }

      if (*(v4 + 52))
      {
        goto LABEL_102;
      }

      return;
    }

    v100 = v9;
    v95 = v4;
    v23 = (2 * v11);
    v24 = (2 * v11) | 1;
    v25 = (MEMORY[0x2A1C7C4A8])(v17);
    v27 = &v94 - ((v26 + 15) & 0x3FFFFFFF0);
    MEMORY[0x2A1C7C4A8](v25);
    v29 = (&v94 - v28);
    v105 = v30;
    bzero(&v94 - v28, v30);
    v123 = 0;
    v31 = 0;
    v32 = 0;
    v33 = &v29[v24];
    v34 = &v29[2 * v24];
    v117 = v24;
    v126 = (v29 - 1);
    v99 = (v10 - 2);
    v35 = *v19;
    v29[2] = v19[2];
    *v29 = v35;
    *v33 = v18.__sinval * v16.__cosval;
    v33[1] = v18.__cosval * v16.__cosval;
    v33[2] = v16.__sinval;
    v116 = (v11 << 33) ^ 0xFFFFFFFF00000000;
    *v34 = v21;
    v34[1] = v22;
    v109 = (v11 << 33) | 0x100000000;
    v34[2] = v16.__cosval * v15.__cosval;
    v115 = v23 | 1;
    v36 = (8 * v10 - 8) | 4;
    v37 = (4 * v10 - 4) | 2;
    v108 = (-2 * v10) | 1;
    v97 = (-4 * v10) | 2;
    v107 = (8 * (v23 >> 1)) | 4;
    v38 = -2;
    v119 = 3;
    v106 = 5;
    v39 = 2;
    v40 = 20;
    v41 = (v11 << 35) | 0x400000000;
    v96 = (v11 << 34) | 0x200000000;
    v42 = v36;
    v122 = v37;
    v98 = v37;
    while (1)
    {
      v118 = v40;
      v104 = v32;
      v114 = 8 * v32;
      bzero(v27, v105);
      v43 = 0;
      v125 = 2 * (v39 - 1);
      v111 = v39 * v117;
      v113 = v39 - 1;
      v44 = &v29[2 * v39 - 2];
      v112 = v39 - 2;
      v110 = &v29[(v39 - 2) * v117];
      v45 = v31 + 4;
      v101 = v37;
      v46 = v37;
      v47 = v97;
      v103 = v42;
      v124 = v42;
      v48 = v116;
      v102 = v41;
      v49 = v41;
      v50 = v38;
      do
      {
        v51 = 0;
        v52 = v39 - v50;
        if (v50 >= 0)
        {
          v53 = v50;
        }

        else
        {
          v53 = -v50;
        }

        v54 = ((v50 + v39) * v52);
        v55 = (((v53 + v39 - 1) << (v50 == 0)) * (v53 + v39));
        if (v50)
        {
          v56 = 0.5;
        }

        else
        {
          v56 = -0.5;
        }

        v57 = ((v39 - v53 - 1) * (v39 - v53));
        v58 = (v50 + v113) * v117;
        v59 = (v50 + v39) * v117;
        v60 = (v113 + ~v50) * v117;
        if (v50 == -1)
        {
          v61 = 1.0;
        }

        else
        {
          v61 = 0.0;
        }

        v62 = sqrtf(v61 + 1.0);
        v63 = (v112 + v50) * v117;
        if (v50 == 1)
        {
          v64 = 1.0;
        }

        else
        {
          v64 = 0.0;
        }

        v65 = v52 * v117;
        v66 = (v39 - v50) * v117;
        v67 = 4;
        v120 = v49;
        v121 = v48;
        v68 = v48;
        v69 = v49;
        v70 = sqrtf(v64 + 1.0);
        v71 = v111;
        v72 = v110;
        do
        {
          LODWORD(v76) = v38 + v51;
          if (v38 + v51 >= 0)
          {
            v76 = v76;
          }

          else
          {
            v76 = -v76;
          }

          v77 = v51 * (v31 + v67);
          if (v39 == v76)
          {
            v77 = (2 * v39 - 1) * 2 * v39;
          }

          v78 = 1.0 / v77;
          v79 = sqrtf(v54 * v78);
          v75 = sqrtf(v57 * v78) * -0.5;
          if (v50)
          {
            v80 = v75;
          }

          else
          {
            v80 = -0.0;
          }

          if (v79 != 0.0)
          {
            if (v51)
            {
              if (v45 == v51)
              {
                v81 = -((v29[v58] * v19[3]) - (*&v44[4 * v58] * v19[5]));
              }

              else
              {
                v81 = *&v126[v68 >> 30] * v19[4];
              }
            }

            else
            {
              v81 = (v29[v58] * v19[5]) + (*&v44[4 * v58] * v19[3]);
            }

            v79 = v81 * v79;
          }

          v82 = v56 * sqrtf(v55 * v78);
          if (v82 == 0.0)
          {
            if (v80 == 0.0)
            {
              v75 = v80;
              goto LABEL_37;
            }

            if (v50 >= 1)
            {
LABEL_77:
              if (v51)
              {
                if (v45 == v51)
                {
                  v73 = -((v29[v59] * v19[6]) - (*&v44[4 * v59] * v19[8]));
                  v74 = -((v29[v60] * *v19) - (*&v44[4 * v60] * v19[2]));
                }

                else
                {
                  v73 = *&v126[4 * v43 + 4 * v51] * v19[7];
                  v74 = *&v126[4 * v46 + 4 * v51] * v19[1];
                }
              }

              else
              {
                v73 = (v29[v59] * v19[8]) + (*&v44[4 * v59] * v19[6]);
                v74 = (v29[v60] * v19[2]) + (*&v44[4 * v60] * *v19);
              }

              v75 = (v74 + v73) * v75;
              goto LABEL_37;
            }

LABEL_90:
            if (v51)
            {
              if (v45 == v51)
              {
                v89 = -((v29[v63] * v19[6]) - (*&v44[4 * v63] * v19[8]));
                v90 = -((v29[v66] * *v19) - (*&v44[4 * v66] * v19[2]));
              }

              else
              {
                v89 = *&v126[4 * v47 + 4 * v51] * v19[7];
                v90 = *&v126[4 * v124 + 4 * v51] * v19[1];
              }
            }

            else
            {
              v89 = (v29[v63] * v19[8]) + (*&v44[4 * v63] * v19[6]);
              v90 = (v29[v66] * v19[2]) + (*&v44[4 * v66] * *v19);
            }

            v75 = (v89 - v90) * v80;
            goto LABEL_37;
          }

          if (v50)
          {
            if (v50 < 1)
            {
              if (v51)
              {
                if (v45 == v51)
                {
                  v87 = -((v29[v59] * v19[6]) - (*&v44[4 * v59] * v19[8]));
                  if (v50 == -1)
                  {
                    v87 = 0.0;
                  }

                  v88 = -((v29[v60] * *v19) - (*&v44[4 * v60] * v19[2]));
                }

                else
                {
                  v87 = *&v126[4 * v43 + 4 * v51] * v19[7];
                  if (v50 == -1)
                  {
                    v87 = 0.0;
                  }

                  v88 = *&v126[4 * v46 + 4 * v51] * v19[1];
                }
              }

              else
              {
                v87 = (v29[v59] * v19[8]) + (*&v44[4 * v59] * v19[6]);
                if (v50 == -1)
                {
                  v87 = 0.0;
                }

                v88 = (v29[v60] * v19[2]) + (*&v44[4 * v60] * *v19);
              }

              v82 = (v87 + (v88 * v62)) * v82;
              if (v75 != 0.0)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (v51)
              {
                if (v45 == v51)
                {
                  v83 = -((v29[v63] * v19[6]) - (*&v44[4 * v63] * v19[8]));
                  v84 = -((v29[v65] * *v19) - (*&v44[4 * v65] * v19[2]));
                }

                else
                {
                  v83 = *&v126[4 * v47 + 4 * v51] * v19[7];
                  v84 = *&v126[v69 >> 30] * v19[1];
                }
              }

              else
              {
                v83 = (v29[v63] * v19[8]) + (*&v44[4 * v63] * v19[6]);
                v84 = (v29[v65] * v19[2]) + (*&v44[4 * v65] * *v19);
              }

              if (v50 == 1)
              {
                v84 = 0.0;
              }

              v82 = -(v84 - (v83 * v70)) * v82;
              if (v75 != 0.0)
              {
                goto LABEL_77;
              }
            }
          }

          else
          {
            if (v51)
            {
              if (v45 == v51)
              {
                v85 = -((v29[v71] * v19[6]) - (*&v44[4 * v71] * v19[8]));
                v86 = -((*v72 * *v19) - (v72[v125] * v19[2]));
              }

              else
              {
                v85 = *&v126[4 * v122 + 4 * v51] * v19[7];
                v86 = *&v126[4 * v123 + 4 * v51] * v19[1];
              }
            }

            else
            {
              v85 = (v29[v71] * v19[8]) + (*&v44[4 * v71] * v19[6]);
              v86 = (*v72 * v19[2]) + (v72[v125] * *v19);
            }

            v82 = (v86 + v85) * v82;
            v75 = -0.0;
          }

LABEL_37:
          *&v27[4 * v43 + 4 * v51++] = (v82 + v79) + v75;
          v69 += 0x100000000;
          v68 += 0x100000000;
          --v67;
        }

        while (v31 + 5 != v51);
        ++v50;
        v49 = v120 + v116;
        v48 = v121 + v109;
        v43 += v115;
        v124 += v108;
        v47 += v115;
        v46 += v108;
      }

      while (v119 != v50);
      v91 = *&v100[4 * v39];
      v92 = v27;
      v93 = v106;
      do
      {
        memcpy(v91, v92, v114 + 20);
        v92 += v107;
        v91 += v118;
        --v93;
      }

      while (v93);
      memcpy(v29, v27, v105);
      ++v39;
      --v38;
      ++v119;
      v32 = v104 + 1;
      v106 += 2;
      v31 += 2;
      v41 = v102 + v96;
      v42 = v103 + v98;
      v37 = v101 + v98;
      v123 += v115;
      v122 += v115;
      v40 = v118 + 8;
      if (v104 + 1 == v99)
      {
        v4 = v95;
        if (*(v95 + 12) == 2)
        {
          HOA::RotationMatrix::toFuMa(v95);
        }

        if (*(v4 + 52) == 1)
        {
LABEL_102:

          HOA::RotationMatrix::transposePrivate(v4);
        }

        return;
      }
    }
  }
}

void HOA::RotationMatrix::toFuMa(HOA::RotationMatrix *this)
{
  v51 = *MEMORY[0x29EDCA608];
  v1 = *(this + 3);
  v2 = (*(this + 4) - v1) >> 4;
  v3 = v2 - 1;
  if (v2 >= 2 && v2 != 1)
  {
    __B = 0u;
    v39 = 0u;
    LODWORD(v40) = 0;
    DWORD1(__B) = 1065353216;
    __asm { FMOV            V8.2S, #1.0 }

    *(&v39 + 4) = _D8;
    *&__A = 0;
    v27 = 0u;
    *(&__A + 1) = _D8;
    HIDWORD(v27) = 1065353216;
    LODWORD(v28) = 0;
    LODWORD(v15) = 0;
    __C = 0u;
    v14 = 0u;
    vDSP_mmul(*(v1 + 16), 1, &__B, 1, &__C, 1, 3uLL, 3uLL, 3uLL);
    vDSP_mmul(&__A, 1, &__C, 1, *(*(this + 3) + 16), 1, 3uLL, 3uLL, 3uLL);
    if (v3 != 1)
    {
      v42 = 0u;
      v43 = 0u;
      LODWORD(v44) = 0;
      v40 = 0u;
      v41 = 0u;
      __B = 0u;
      v39 = 0u;
      LODWORD(v39) = 1065353216;
      HIDWORD(v39) = 1065353216;
      DWORD2(v40) = 1065353216;
      LODWORD(v42) = 1065353216;
      HIDWORD(v43) = 1065353216;
      memset(v30, 0, sizeof(v30));
      LODWORD(v31) = 0;
      v28 = 0u;
      v29 = 0u;
      __A = 0u;
      v27 = 0u;
      DWORD2(__A) = 1065353216;
      LODWORD(v28) = 1065353216;
      HIDWORD(v28) = 1065353216;
      *(v30 + 12) = _D8;
      LODWORD(v19) = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      __C = 0u;
      v14 = 0u;
      vDSP_mmul(*(*(this + 3) + 32), 1, &__B, 1, &__C, 1, 5uLL, 5uLL, 5uLL);
      vDSP_mmul(&__A, 1, &__C, 1, *(*(this + 3) + 32), 1, 5uLL, 5uLL, 5uLL);
      if (v3 != 2)
      {
        v50 = 0;
        v46 = xmmword_296C2CF68;
        v47 = unk_296C2CF78;
        v48 = xmmword_296C2CF88;
        v49 = unk_296C2CF98;
        v42 = xmmword_296C2CF28;
        v43 = unk_296C2CF38;
        v44 = xmmword_296C2CF48;
        v45 = unk_296C2CF58;
        __B = xmmword_296C2CEE8;
        v39 = unk_296C2CEF8;
        v40 = xmmword_296C2CF08;
        v41 = unk_296C2CF18;
        v33 = xmmword_296C2D02C;
        v34 = unk_296C2D03C;
        v35 = xmmword_296C2D04C;
        v36 = unk_296C2D05C;
        v30[0] = xmmword_296C2CFEC;
        v30[1] = unk_296C2CFFC;
        v31 = xmmword_296C2D00C;
        v32 = unk_296C2D01C;
        __A = xmmword_296C2CFAC;
        v27 = *algn_296C2CFBC;
        v28 = xmmword_296C2CFCC;
        v29 = unk_296C2CFDC;
        v37 = 0;
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        __C = 0u;
        v14 = 0u;
        vDSP_mmul(*(*(this + 3) + 48), 1, &__B, 1, &__C, 1, 7uLL, 7uLL, 7uLL);
        vDSP_mmul(&__A, 1, &__C, 1, *(*(this + 3) + 48), 1, 7uLL, 7uLL, 7uLL);
        if (v3 >= 4)
        {
          v10 = 4;
          v11 = 9;
          do
          {
            v12 = *(*(this + 3) + 16 * v10);
            if (v12)
            {
              vDSP_vclr(v12, 1, (v11 * v11));
            }

            ++v10;
            v11 += 2;
          }

          while (v10 <= v3);
        }
      }
    }
  }
}

void HOA::RotationMatrix::transposePrivate(HOA::RotationMatrix *this)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v3 = *(this + 3);
  v2 = *(this + 4);
  MEMORY[0x2A1C7C4A8](this);
  v7 = (v16 - v6);
  if (v5 >= 0x11 && (v5 & 0xFFFFFFFF0) != 16)
  {
    bzero(v16 - v6, 4 * v4);
    v9 = 1;
    v10 = 3;
    do
    {
      v11 = v3 + 16 * v9;
      v12 = *v11;
      if (*v11)
      {
        v13 = *(v11 + 8);
        vDSP_mtrans(*v11, 1, v7, 1, v10, v10);
        memcpy(v12, v7, 4 * v13);
        v3 = *(this + 3);
        v2 = *(this + 4);
      }

      ++v9;
      v10 += 2;
      v14 = (v2 - v3) >> 4;
      if (v14 <= 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14 - 1;
      }
    }

    while (v9 <= v15);
  }
}

uint64_t HOA::RotationMatrix::toRegularMatrix(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  if (((*(a1 + 32) - *(a1 + 24)) >> 4) <= 1)
  {
    LODWORD(v4) = 1;
  }

  else
  {
    v4 = (*(a1 + 32) - *(a1 + 24)) >> 4;
  }

  v5 = v4 * v4;
  if (a3 != v5 * v5)
  {
    return 4294967246;
  }

  bzero(a2, 4 * a3);
  v56 = *(a1 + 24);
  v9 = (*(a1 + 32) - v56) >> 4;
  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 - 1);
  }

  if (v4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v4;
  }

  if (*(a1 + 52) == a4)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v5 + 1;
    v17 = 1;
    do
    {
      if (v10 >= v15)
      {
        v19 = *(v56 + 16 * v15);
      }

      else
      {
        v19 = 0;
      }

      if ((v15 & 0x7FFFFFFC) != 0)
      {
        v20 = 0;
        v21 = 0;
        v22 = 2 * v15;
        v23 = v12;
        do
        {
          v24 = 0;
          v25 = v14 + v5 * v21;
          v26 = __CFADD__(v25, v22);
          v27 = __CFADD__(((2 * v15) | 1) * v21, v22);
          if (!v26 && !v27)
          {
            v28 = &a2[4 * v25 - v19 + -4 * ((2 * v15) | 1) * v21];
            v29 = v20;
            v30 = v23;
            v31 = v13 & 0xFFFFFFF8;
            if (v28 >= 0x20)
            {
              do
              {
                v32 = (v19 + 4 * v29);
                v33 = *v32;
                v34 = v32[1];
                v35 = &a2[4 * v30];
                *v35 = v33;
                *(v35 + 1) = v34;
                v30 += 8;
                v29 += 8;
                v31 -= 8;
              }

              while (v31);
              v24 = (2 * v15) & 0xFFFFFFF8;
            }
          }

          v36 = v13 - v24;
          if (v13 < v24)
          {
            v36 = 0;
          }

          v37 = v36 + 1;
          do
          {
            *&a2[4 * (v23 + v24)] = *(v19 + 4 * (v20 + v24));
            LODWORD(v24) = v24 + 1;
            --v37;
          }

          while (v37);
          ++v21;
          v23 += v5;
          v20 += v17;
        }

        while (v21 != v17);
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v40 = v12;
        do
        {
          v41 = v38;
          v42 = v40;
          v43 = v13 + 1;
          do
          {
            *&a2[4 * v42++] = *(v19 + 4 * v41++);
            --v43;
          }

          while (v43);
          ++v39;
          v40 += v5;
          v38 += v17;
        }

        while (v39 != v17);
      }

      v18 = v5 + 1 + (2 * v4 * v4 + 2) * v15++;
      v14 += v18;
      v13 += 2;
      v17 += 2;
      v12 += v16;
      v16 += 2 * v5 + 2;
    }

    while (v15 != v11);
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v5 + 1;
    v49 = 1;
    do
    {
      if (v10 >= v47)
      {
        v50 = *(v56 + 16 * v47);
      }

      else
      {
        v50 = 0;
      }

      v51 = 0;
      v52 = v45;
      do
      {
        v53 = v51;
        v54 = v52;
        v55 = v46 + 1;
        do
        {
          *&a2[4 * v54++] = *(v50 + 4 * v53);
          v53 += v49;
          --v55;
        }

        while (v55);
        ++v51;
        v52 += v5;
      }

      while (v51 != v49);
      ++v47;
      v46 += 2;
      v49 += 2;
      v45 += v48;
      v48 += 2 * v5 + 2;
    }

    while (v47 != v11);
  }

  return 0;
}

float32_t HOA::legendre(HOA *this, int a2, float32_t result)
{
  if (a2 >= this)
  {
    v3 = this;
  }

  else
  {
    v3 = a2;
  }

  if (this <= 4)
  {
    if (this <= 1)
    {
      v12 = 1.0;
      if (!this)
      {
        return v12;
      }

      if (this == 1)
      {
        if (v3)
        {
          return -sqrtf(-((result * result) + -1.0));
        }

        return result;
      }

      return 0.0;
    }

    if (this == 2)
    {
      if (v3 == 2)
      {
        return 3.0 - ((result * result) * 3.0);
      }

      if (v3 != 1)
      {
        v12 = 0.0;
        if (!v3)
        {
          return ((result * result) * 1.5) + -0.5;
        }

        return v12;
      }

      v6 = result * -3.0;
      v45 = -((result * result) + -1.0);
      return v6 * sqrtf(v45);
    }

    if (this != 3)
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          return (((result * result) * 52.5) + -7.5) - ((result * result) * (((result * result) * 52.5) + -7.5));
        }

        if (v3 == 3)
        {
          v29 = 1.0 - (result * result);
          v30 = sqrtf(v29);
          v31 = -105.0;
          goto LABEL_104;
        }
      }

      else
      {
        if (!v3)
        {
          return ((((result * result) * -30.0) + (((result * result) * (result * result)) * 35.0)) * 0.125) + 0.375;
        }

        if (v3 == 1)
        {
          v4 = result * 2.5;
          v5 = result * result;
          v6 = v4 * ((v5 * -7.0) + 3.0);
LABEL_93:
          v45 = 1.0 - v5;
          return v6 * sqrtf(v45);
        }
      }

      v64 = (1.0 - (result * result)) * (1.0 - (result * result));
      v65 = 105.0;
      return v64 * v65;
    }

    if (v3 == 2)
    {
      return (result * 15.0) - ((result * result) * (result * 15.0));
    }

    if (v3 != 1)
    {
      if (!v3)
      {
        return ((result * -3.0) + ((result * (result * result)) * 5.0)) * 0.5;
      }

      v46 = 1.0 - (result * result);
      v47 = sqrtf(v46);
      v48 = -15.0;
      return (v46 * v48) * v47;
    }

    v5 = result * result;
    v6 = (v5 * -7.5) + 1.5;
    goto LABEL_93;
  }

  if (this > 7)
  {
    if (this != 8)
    {
      if (this != 9)
      {
        if (this == 10)
        {
          if (v3 <= 4)
          {
            if (v3 > 1)
            {
              if (v3 == 2)
              {
                v114 = result * result;
                v115 = 3.8672 - (v114 * 3.8672);
                v116.f32[0] = v114 * v114;
                v116.f32[1] = v116.f32[0] * v116.f32[0];
                v116.f32[2] = v114;
                v116.f32[3] = v114 * (v114 * v114);
                v117 = vmulq_f32(v116, xmmword_296C19FA0);
                return (vaddv_f32(*&vpaddq_f32(v117, v117)) + 7.0) * v115;
              }

              if (v3 == 3)
              {
                v124 = result * result;
                v78 = sqrtf(1.0 - (result * result));
                v125.f32[0] = result * (result * result);
                v125.f32[1] = result;
                v125.f32[2] = v125.f32[0] * (v124 * v124);
                v125.f32[3] = result * (v124 * v124);
                v126 = vmulq_f32(v125, xmmword_296C19F90);
                v9 = vaddv_f32(*&vpaddq_f32(v126, v126));
                v10 = (v124 * 402.19) + -402.19;
                return (v10 * v78) * v9;
              }

              v7 = result * result;
              v8 = v7 + -1.0;
              v9 = ((((v7 * v7) * -255.0) + -1.0) + ((v7 * (v7 * v7)) * 323.0)) + (v7 * 45.0);
              v10 = v8 * v8;
              *&v11 = 2815.3;
              goto LABEL_147;
            }

            if (!v3)
            {
              v110 = result * result;
              v111 = v110 * v110;
              v112.f32[0] = v110 * (v111 * v111);
              v112.f32[1] = v110 * (v110 * v110);
              v112.f32[2] = v110 * v110;
              v112.f32[3] = v111 * v111;
              v113 = vmulq_f32(v112, xmmword_296C19FC0);
              return ((vaddv_f32(*&vpaddq_f32(v113, v113)) + (v110 * 3465.0)) * 0.0039062) + -0.24609;
            }

            if (v3 == 1)
            {
              v57 = sqrtf(1.0 - (result * result)) * -0.42969;
              v58 = (result * result) * (result * result);
              v59 = result * (result * result);
              v60.f32[0] = result * v58;
              v60.f32[1] = result;
              v60.f32[2] = result * (v58 * v58);
              v61 = v59 * v58;
              v60.f32[3] = v59;
              v62 = vmulq_f32(v60, xmmword_296C19FB0);
              return v57 * (vaddv_f32(*&vpaddq_f32(v62, v62)) + (v61 * -7956.0));
            }

LABEL_163:
            v46 = (result * result) + -1.0;
            v47 = (v46 * v46) * (v46 * v46);
            *&v76 = -654730000.0;
            goto LABEL_164;
          }

          if (v3 > 6)
          {
            if (v3 != 7)
            {
              if (v3 == 8)
              {
                v67 = result * result;
                v68 = (((v67 + -1.0) * (v67 + -1.0)) * ((v67 + -1.0) * (v67 + -1.0))) * 17230000.0;
                v69 = -19.0;
                return -(v68 + ((v67 * v69) * v68));
              }

              if (v3 != 9)
              {
                goto LABEL_163;
              }

              v32 = 1.0 - (result * result);
              v30 = sqrtf(v32);
              v29 = (v32 * v32) * (v32 * v32);
              v31 = -654730000.0;
              goto LABEL_104;
            }

            v118.f32[0] = (result * result) + -1.0;
            v118.f32[1] = result;
            __asm { FMOV            V3.2S, #19.0 }

            _D3.f32[0] = sqrtf(1.0 - (result * result)) * 5743200.0;
            v107 = vmul_f32(_D3, vmul_f32(v118, vmul_f32(v118, v118)));
            return (v107.f32[1] + (result * -3.0)) * v107.f32[0];
          }

          if (v3 != 5)
          {
            v63 = result * result;
            v41 = ((v63 + -1.0) * -84459.0) * ((v63 + -1.0) * (v63 + -1.0));
            v42 = v63 * v63;
            v43 = (v63 * -102.0) + 3.0;
            v44 = 323.0;
            return v41 * (v43 + (v42 * v44));
          }

          v26 = sqrtf(1.0 - (result * result));
          v53 = (result * result) + -1.0;
          v54 = result * ((result * result) * (result * result));
          v55 = (result * 15.0) + ((result * (result * result)) * -170.0);
          v56 = 323.0;
LABEL_153:
          v27 = v55 + (v54 * v56);
          v87 = v53 * v53;
          v88 = -16892.0;
LABEL_154:
          v28 = v87 * v88;
          return (v28 * v27) * v26;
        }

        return 0.0;
      }

      if (v3 <= 3)
      {
        if (v3 > 1)
        {
          if (v3 == 2)
          {
            v103 = 30.938 - ((result * result) * 30.938);
            v104.f32[0] = result * (result * result);
            v104.f32[1] = result;
            v104.i64[1] = __PAIR64__(result * ((result * result) * (result * result)), v104.f32[0] * ((result * result) * (result * result)));
            v105 = vmulq_f32(v104, xmmword_296C19FD0);
            return vaddv_f32(*&vpaddq_f32(v105, v105)) * v103;
          }

          v51 = result * result;
          v29 = sqrtf(1.0 - v51);
          v30 = ((((v51 * v51) * -195.0) + -1.0) + ((v51 * (v51 * v51)) * 221.0)) + (v51 * 39.0);
          v50 = (v51 * 216.56) + -216.56;
          return (v50 * v29) * v30;
        }

        if (!v3)
        {
          v98 = (result * result) * (result * result);
          v99 = result * (v98 * v98);
          v100 = (result * (result * result)) * v98;
          v101.f32[0] = result * v98;
          v101.f32[1] = result;
          v101.f32[2] = v99;
          v101.f32[3] = result * (result * result);
          v102 = vmulq_f32(v101, xmmword_296C19FF0);
          return (vaddv_f32(*&vpaddq_f32(v102, v102)) + (v100 * -25740.0)) * 0.0078125;
        }

        if (v3 == 1)
        {
          v35 = result * result;
          v36 = sqrtf(1.0 - v35) * -0.35156;
          v37.f32[0] = v35 * v35;
          v37.f32[1] = v37.f32[0] * v37.f32[0];
          v37.f32[2] = v35;
          v37.f32[3] = v35 * (v35 * v35);
          v38 = vmulq_f32(v37, xmmword_296C19FE0);
          return v36 * (vaddv_f32(*&vpaddq_f32(v38, v38)) + 7.0);
        }

        goto LABEL_149;
      }

      if (v3 > 5)
      {
        switch(v3)
        {
          case 6:
            v106.f32[0] = (result * result) + -1.0;
            v106.f32[1] = result;
            v107 = vmul_f32(vmul_f32(v106, 0x41880000C8A4F5B0), vmul_f32(v106, v106));
            return (v107.f32[1] + (result * -3.0)) * v107.f32[0];
          case 7:
            v67 = result * result;
            v68 = sqrtf(1.0 - v67) * (1013500.0 * ((v67 + -1.0) * ((v67 + -1.0) * (v67 + -1.0))));
            v69 = -17.0;
            return -(v68 + ((v67 * v69) * v68));
          case 8:
            v18 = result * 34459000.0;
            v19 = ((result * result) + -1.0) * ((result * result) + -1.0);
            return v18 * (v19 * v19);
        }

LABEL_149:
        v109 = 1.0 - (result * result);
        v83 = sqrtf(v109);
        v84 = (v109 * v109) * (v109 * v109);
        v85 = -34459000.0;
        return v83 * (v85 * v84);
      }

      if (v3 != 4)
      {
        v52 = result * result;
        v26 = sqrtf(1.0 - v52);
        v53 = v52 + -1.0;
        v54 = v52 * v52;
        v55 = (v52 * -30.0) + 1.0;
        v56 = 85.0;
        goto LABEL_153;
      }

      v108 = (result * result) + -1.0;
      v9 = (result + ((result * (result * result)) * -10.0)) + ((result * ((result * result) * (result * result))) * 17.0);
      v10 = v108 * v108;
      *&v11 = 16892.0;
LABEL_147:
      v78 = *&v11;
      return (v10 * v78) * v9;
    }

    if (v3 <= 3)
    {
      if (v3 > 1)
      {
        if (v3 != 2)
        {
          return (((result * -433.12) * (1.0 - (result * result))) * ((((result * result) * -26.0) + 3.0) + (((result * result) * (result * result)) * 39.0))) * sqrtf(1.0 - (result * result));
        }

        v96 = result * result;
        v14 = 19.688 - (v96 * 19.688);
        v15 = -((v96 * v96) - (v96 * (v96 * v96)));
        v16 = (v96 * 33.0) + -1.0;
        v17 = 143.0;
        return (v16 + (v15 * v17)) * v14;
      }

      if (!v3)
      {
        v91 = result * result;
        v92.f32[0] = (v91 * v91) * (v91 * v91);
        v92.f32[1] = v91 * v91;
        v92.f32[2] = v91 * (v91 * v91);
        v92.f32[3] = v91;
        v93 = vmulq_f32(v92, xmmword_296C1A000);
        return (vaddv_f32(*&vpaddq_f32(v93, v93)) * 0.0078125) + 0.27344;
      }

      if (v3 == 1)
      {
        v20 = result * -0.5625;
        v21 = result * result;
        v22 = v20 * sqrtf(1.0 - v21);
        v23 = (((v21 * v21) * -1001.0) + -35.0) + ((v21 * (v21 * v21)) * 715.0);
        v24 = 385.0;
        return v22 * (v23 + (v21 * v24));
      }

LABEL_141:
      v97 = (1.0 - (result * result)) * (1.0 - (result * result));
      v64 = v97 * v97;
      v65 = 2027000.0;
      return v64 * v65;
    }

    if (v3 <= 5)
    {
      if (v3 != 4)
      {
        v33 = 1.0 - (result * result);
        v34 = sqrtf(v33);
        return -((((v33 * v33) * (result * -67568.0)) * v34) + (((result * result) * -5.0) * (((v33 * v33) * (result * -67568.0)) * v34)));
      }

      v94 = result * result;
      v95 = 1.0 - v94;
      v9 = ((v94 * -26.0) + 1.0) + ((v94 * v94) * 65.0);
      v10 = v95 * v95;
      *&v11 = 1299.4;
      goto LABEL_147;
    }

    if (v3 == 6)
    {
      v67 = result * result;
      v68 = ((1.0 - v67) * 67568.0) * ((1.0 - v67) * (1.0 - v67));
      v69 = -15.0;
      return -(v68 + ((v67 * v69) * v68));
    }

    if (v3 != 7)
    {
      goto LABEL_141;
    }

    v49 = 1.0 - (result * result);
    v30 = sqrtf(v49);
    v29 = v49 * (v49 * v49);
    v31 = -2027000.0;
LABEL_104:
    v50 = result * v31;
    return (v50 * v29) * v30;
  }

  if (this != 5)
  {
    if (this != 6)
    {
      if (v3 > 2)
      {
        if (v3 <= 4)
        {
          if (v3 != 3)
          {
            return (((1.0 - (result * result)) * (1.0 - (result * result))) * (result * 1732.5)) * (((result * result) * 13.0) + -3.0);
          }

          v86 = result * result;
          v87 = 1.0 - v86;
          v26 = sqrtf(1.0 - v86);
          v27 = ((v86 * -66.0) + 3.0) + ((v86 * v86) * 143.0);
          v88 = -39.375;
          goto LABEL_154;
        }

        if (v3 != 5)
        {
          if (v3 == 6)
          {
            return (result * 135140.0) * ((1.0 - (result * result)) * ((1.0 - (result * result)) * (1.0 - (result * result))));
          }

          goto LABEL_129;
        }

        v89 = result * result;
        v90 = 1.0 - v89;
        v72 = sqrtf(1.0 - v89);
        v73 = v89 * -13.0;
        v71 = v90 * v90;
        v74 = -5197.5;
        goto LABEL_132;
      }

      if (!v3)
      {
        return (((result * result) * (result * result)) * -693.0 + -35.0 + (((result * result) * 429.0) * ((result * result) * (result * result))) + ((result * result) * 315.0)) * (result * 0.0625);
      }

      if (v3 != 1)
      {
        if (v3 != 2)
        {
LABEL_129:
          v82 = 1.0 - (result * result);
          v83 = sqrtf(v82);
          v84 = v82 * (v82 * v82);
          v85 = -135140.0;
          return v83 * (v85 * v84);
        }

        v39 = result * 7.875;
        v40 = result * result;
        v41 = v39 - (v40 * v39);
        v42 = v40 * v40;
        v43 = (v40 * -110.0) + 15.0;
        v44 = 143.0;
        return v41 * (v43 + (v42 * v44));
      }

      v21 = result * result;
      v22 = sqrtf(1.0 - v21) * -0.4375;
      v23 = (((v21 * v21) * -495.0) + -5.0) + ((v21 * (v21 * v21)) * 429.0);
      v24 = 135.0;
      return v22 * (v23 + (v21 * v24));
    }

    if (v3 > 2)
    {
      switch(v3)
      {
        case 3:
          return (((1.0 - (result * result)) * result) * (((result * result) * -1732.5) + 472.5)) * sqrtf(1.0 - (result * result));
        case 4:
          v79 = result * result;
          v80 = 1.0 - v79;
          v73 = v79 * -11.0;
          v81 = v80 * v80;
          v72 = 472.5;
          return -((v81 * v72) + (v73 * (v81 * v72)));
        case 5:
          v25 = 1.0 - (result * result);
          v26 = sqrtf(v25);
          v27 = result * -10395.0;
          v28 = v25 * v25;
          return (v28 * v27) * v26;
      }

LABEL_125:
      v46 = 1.0 - (result * result);
      v47 = v46 * v46;
      *&v76 = 10395.0;
      goto LABEL_164;
    }

    if (!v3)
    {
      return ((((((result * result) * (result * result)) * -315.0) + (((result * result) * ((result * result) * (result * result))) * 231.0)) + ((result * result) * 105.0)) * 0.0625) + -0.3125;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v13 = result * result;
        v14 = 13.125 - (v13 * 13.125);
        v15 = v13 * v13;
        v16 = (v13 * -18.0) + 1.0;
        v17 = 33.0;
        return (v16 + (v15 * v17)) * v14;
      }

      goto LABEL_125;
    }

    v10 = result * -2.625;
    v77 = result * result;
    v78 = ((v77 * -30.0) + 5.0) + ((v77 * v77) * 33.0);
    v9 = sqrtf(1.0 - v77);
    return (v10 * v78) * v9;
  }

  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v70 = result * result;
        v71 = 1.0 - v70;
        v72 = sqrtf(1.0 - v70);
        v73 = v70 * -9.0;
        v74 = -52.5;
LABEL_132:
        v81 = v71 * v74;
        return -((v81 * v72) + (v73 * (v81 * v72)));
      }

      if (v3 == 4)
      {
        return ((1.0 - (result * result)) * (1.0 - (result * result))) * (result * 945.0);
      }

LABEL_122:
      v75 = 1.0 - (result * result);
      v47 = sqrtf(v75);
      v46 = v75 * v75;
      *&v76 = -945.0;
LABEL_164:
      v48 = *&v76;
      return (v46 * v48) * v47;
    }

    v66 = result * 52.5;
    v67 = result * result;
    v68 = v66 - (v67 * v66);
    v69 = -3.0;
    return -(v68 + ((v67 * v69) * v68));
  }

  if (!v3)
  {
    v22 = result * 0.125;
    v21 = result * result;
    v23 = ((v21 * v21) * 63.0) + 15.0;
    v24 = -70.0;
    return v22 * (v23 + (v21 * v24));
  }

  if (v3 != 1)
  {
    goto LABEL_122;
  }

  return sqrtf(1.0 - (result * result)) * (-1.875 * ((((result * result) * -14.0) + 1.0) + (((result * result) * (result * result)) * 21.0)));
}

void boost::math::detail::gamma_imp<double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(double a1)
{
  _D6 = a1;
  v2 = 1.0;
  if (_D6 <= 0.0)
  {
    if (floor(_D6) == _D6)
    {
      boost::math::policies::detail::raise_error<std::domain_error,double>();
    }

    if (_D6 <= -20.0)
    {
      v30 = _D6;
      v7 = boost::math::detail::gamma_imp<double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(-_D6);
      v8 = fabs(v30);
      v9 = floor(v8);
      v10 = 1.0 - v8 + v9;
      v11 = v8 - v9;
      if (vcvtmd_s64_f64(v8))
      {
        v11 = v10;
        v12 = -v8;
      }

      else
      {
        v12 = v8;
      }

      if (v11 <= 0.5)
      {
        v13 = v11;
      }

      else
      {
        v13 = 1.0 - v11;
      }

      v14 = fabs(v12 * v7 * sin(v13 * 3.14159265));
      if (v14 >= 1.0 || v14 * 1.79769313e308 >= 3.14159265)
      {
        return;
      }

      goto LABEL_39;
    }

    for (; _D6 < 0.0; _D6 = _D6 + 1.0)
    {
      v2 = v2 / _D6;
    }
  }

  v3 = floor(_D6);
  if (v3 == _D6 && _D6 < 170.0)
  {
    v5 = ceil(_D6);
    if (_D6 < 0.0)
    {
      v3 = v5;
    }

    if (v3 > 2147483650.0 || v3 < -2147483650.0)
    {
      boost::math::policies::detail::raise_error<boost::math::rounding_error,double>();
    }

    return;
  }

  if (_D6 < 0.0000000149011612)
  {
    if (_D6 < COERCE_DOUBLE(0x4000000000000))
    {
      boost::math::policies::detail::raise_error<std::overflow_error,double>();
    }

    return;
  }

  v15.f64[0] = _D6 * _D6;
  if (_D6 <= 1.0)
  {
    v23 = vdupq_lane_s64(*&v15.f64[0], 0);
    v24 = vdupq_lane_s64(0x4050800000000000, 0);
    v24.f64[0] = v15.f64[0] + 1925.0;
    _Q2 = vmlaq_n_f64(xmmword_296C1A050, vmlaq_n_f64(xmmword_296C1A040, vmlaq_n_f64(xmmword_296C1A030, vmlaq_n_f64(xmmword_296C1A020, vmlaq_n_f64(xmmword_296C1A010, v24, v15.f64[0]), v15.f64[0]), v15.f64[0]), v15.f64[0]), v15.f64[0]);
    v23.f64[0] = _D6;
    __asm { FMLA            D2, D6, V2.D[1] }

    v22 = (vaddvq_f64(vmulq_f64(vmlaq_n_f64(xmmword_296C1A0B0, vmlaq_n_f64(xmmword_296C1A0A0, vmlaq_n_f64(xmmword_296C1A090, vmlaq_n_f64(xmmword_296C1A080, vmlaq_n_f64(xmmword_296C1A070, xmmword_296C1A060, v15.f64[0]), v15.f64[0]), v15.f64[0]), v15.f64[0]), v15.f64[0]), v23)) + 2.35313769e10) / _Q2.f64[0];
  }

  else
  {
    v15.f64[1] = _D6;
    __asm { FMOV            V2.2D, #1.0 }

    v20 = vdivq_f64(_Q2, v15);
    v21 = vmlaq_n_f64(xmmword_296C1A170, vmlaq_n_f64(xmmword_296C1A160, vmlaq_n_f64(xmmword_296C1A150, vmlaq_n_f64(xmmword_296C1A140, vmlaq_n_f64(xmmword_296C1A130, xmmword_296C1A120, v20.f64[0]), v20.f64[0]), v20.f64[0]), v20.f64[0]), v20.f64[0]);
    v22 = (vaddvq_f64(vmulq_f64(vmlaq_n_f64(xmmword_296C1A110, vmlaq_n_f64(xmmword_296C1A100, vmlaq_n_f64(xmmword_296C1A0F0, vmlaq_n_f64(xmmword_296C1A0E0, vmlaq_n_f64(xmmword_296C1A0D0, xmmword_296C1A0C0, v20.f64[0]), v20.f64[0]), v20.f64[0]), v20.f64[0]), v20.f64[0]), v20)) + 2.50662827) / vmlaq_laneq_f64(vdupq_laneq_s64(v21, 1), v21, v20, 1).f64[0];
  }

  v26 = v22 * v2;
  v27 = _D6 + 5.52468004;
  v31 = _D6;
  v28 = log(_D6 + 5.52468004);
  if (v28 * v31 <= 709.0)
  {
    pow(v27, v31 + -0.5);
    exp(-v27);
    return;
  }

  if (v28 * v31 * 0.5 > 709.0 || (v29 = pow(v27, v31 * 0.5 + -0.25), 1.79769313e308 / v29 < exp(-v27) * v29 * v26))
  {
LABEL_39:
    boost::math::policies::detail::raise_error<std::overflow_error,double>();
  }
}

void sub_296C02E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(a11);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void boost::throw_exception<std::overflow_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_2A1DEC1A0;
  std::runtime_error::runtime_error((exception + 8), a1);
  *(exception + 4) = 0;
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *(exception + 14) = -1;
  *exception = &unk_2A1DEC1D0;
  *(exception + 1) = &unk_2A1DEC200;
  *(exception + 3) = &unk_2A1DEC228;
}

uint64_t boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1DEC158;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1DEC158;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  JUMPOUT(0x29C25FC20);
}

{
  a1->__vftable = &unk_2A1DEC158;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1[1].__vftable = &unk_2A1DEC158;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x29C25FC20);
}

{
  a1[1].__vftable = &unk_2A1DEC158;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1DEC158;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x29C25FC20);
}

void boost::wrapexcept<std::overflow_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DEC1A0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x29EDC95E8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1DEC158;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1DEC1D0;
  *(a1 + 8) = &unk_2A1DEC200;
  *(a1 + 24) = &unk_2A1DEC228;
  return a1;
}

void sub_296C03644(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v3);
  MEMORY[0x29C25FC20](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    (*(*v4 + 40))(&v7);
    v5 = v7;
    v8 = v7;
    if (v7)
    {
      (*(*v7 + 24))(v7);
      if (v7)
      {
        (*(*v7 + 32))(v7);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_296C03800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

void sub_296C03B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a30 & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v30 - 65) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a25);
  if (*(v30 - 65) < 0)
  {
LABEL_7:
    operator delete(*(v30 - 88));
    _Unwind_Resume(a1);
  }

LABEL_10:
  _Unwind_Resume(a1);
}

void sub_296C03DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(a11);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_296C04134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (a22 < 0)
    {
LABEL_5:
      operator delete(a17);
      if ((a29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a22 < 0)
  {
    goto LABEL_5;
  }

  if ((a29 & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v29 - 65) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a24);
  if (*(v29 - 65) < 0)
  {
LABEL_7:
    operator delete(*(v29 - 88));
    _Unwind_Resume(a1);
  }

LABEL_10:
  _Unwind_Resume(a1);
}

uint64_t boost::math::policies::detail::prec_format<double>(_BYTE *a1, double *a2)
{
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v10);
  *(&v11 + *(v11 - 24) + 16) = 17;
  MEMORY[0x29C25F9E0](&v11, *a2);
  if ((BYTE8(v17) & 0x10) != 0)
  {
    v5 = v17;
    if (v17 < *(&v14 + 1))
    {
      *&v17 = *(&v14 + 1);
      v5 = *(&v14 + 1);
    }

    v6 = &v14;
  }

  else
  {
    if ((BYTE8(v17) & 8) == 0)
    {
      v4 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    v6 = &v12 + 1;
    v5 = *(&v13 + 1);
  }

  v7 = *v6;
  v4 = v5 - *v6;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, v7, v4);
  }

LABEL_14:
  a1[v4] = 0;
  *&v10 = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v11 = v8;
  *(&v11 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v11 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C25FBA0](v18);
}

void sub_296C04478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C25FBA0](v9 + 128);
  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::math::rounding_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_2A1DEC1A0;
  std::runtime_error::runtime_error((exception + 8), a1);
  *(exception + 4) = 0;
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *(exception + 14) = -1;
  *exception = &unk_2A1DEC2C0;
  *(exception + 1) = &unk_2A1DEC2F0;
  *(exception + 3) = &unk_2A1DEC318;
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1DEC158;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::math::rounding_error>::~wrapexcept(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1DEC158;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  JUMPOUT(0x29C25FC20);
}

{
  a1->__vftable = &unk_2A1DEC158;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1[1].__vftable = &unk_2A1DEC158;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x29C25FC20);
}

{
  a1[1].__vftable = &unk_2A1DEC158;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void boost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1DEC158;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x29C25FC20);
}

void boost::wrapexcept<boost::math::rounding_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::rounding_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DEC1A0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1DEC178;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1DEC158;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1DEC2C0;
  *(a1 + 8) = &unk_2A1DEC2F0;
  *(a1 + 24) = &unk_2A1DEC318;
  return a1;
}

void sub_296C04BF0(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v3);
  MEMORY[0x29C25FC20](v1, v2);
  _Unwind_Resume(a1);
}

void boost::math::rounding_error::~rounding_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x29C25FC20);
}

void boost::throw_exception<std::domain_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_2A1DEC1A0;
  std::logic_error::logic_error((exception + 8), a1);
  *(exception + 4) = 0;
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *(exception + 14) = -1;
  *exception = &unk_2A1DEC248;
  *(exception + 1) = &unk_2A1DEC278;
  *(exception + 3) = &unk_2A1DEC2A0;
}

uint64_t boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1DEC158;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x29C25F8C0](a1 + 8);
  return a1;
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_2A1DEC158;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  MEMORY[0x29C25F8C0](a1 - 2);

  JUMPOUT(0x29C25FC20);
}

{
  *a1 = &unk_2A1DEC158;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  JUMPOUT(0x29C25F8C0);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_2A1DEC158;
  v1 = *(a1 + 24);
  if (v1 && (*(*v1 + 32))(*(a1 + 24)))
  {
    *(a1 + 24) = 0;
  }

  MEMORY[0x29C25F8C0]();

  JUMPOUT(0x29C25FC20);
}

{
  *(a1 + 16) = &unk_2A1DEC158;
  v1 = *(a1 + 24);
  if (v1 && (*(*v1 + 32))(*(a1 + 24)))
  {
    *(a1 + 24) = 0;
  }

  JUMPOUT(0x29C25F8C0);
}

void boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1DEC158;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x29C25F8C0](a1 + 8);

  JUMPOUT(0x29C25FC20);
}

void boost::wrapexcept<std::domain_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DEC1A0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x29EDC95D0] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1DEC158;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1DEC248;
  *(a1 + 8) = &unk_2A1DEC278;
  *(a1 + 24) = &unk_2A1DEC2A0;
  return a1;
}

void HOA::applyDecoderWeighting(unsigned int *a1, void *a2, unsigned int a3, int a4)
{
  if (!a4)
  {
    return;
  }

  if (a1[2])
  {
    operator new();
  }

  if (a4 == 2)
  {
    v10 = *a1;
    if (v10 > 0x22)
    {
      v12 = v10 + 1;
      boost::math::detail::gamma_imp<double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>((v10 + 1));
      if (fabs(v13) > 3.40282347e38)
      {
        goto LABEL_37;
      }

      v11 = v13;
      if (v11 <= 3.4028e38)
      {
        v11 = floorf(v11 + 0.5);
      }
    }

    else
    {
      v11 = flt_296C2D55C[v10];
      v12 = v10 + 1;
    }

    if (v12 <= 0x22)
    {
      v14 = flt_296C2D55C[v12];
      goto LABEL_20;
    }

    boost::math::detail::gamma_imp<double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>((v10 + 2));
    if (fabs(v15) <= 3.40282347e38)
    {
      v14 = v15;
      v16 = floorf(v14 + 0.5);
      if (v14 <= 3.4028e38)
      {
        v14 = v16;
      }

LABEL_20:
      v17 = 0;
      v18 = v14 * v11;
      v19 = 1;
      v20 = v10;
      do
      {
        v21 = v10 + v17 + 1;
        if (v21 > 0x22)
        {
          boost::math::detail::gamma_imp<double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>((v10 + v17 + 2));
          if (fabs(v23) > 3.40282347e38)
          {
            goto LABEL_37;
          }

          v22 = v23;
          if (v22 <= 3.4028e38)
          {
            v22 = floorf(v22 + 0.5);
          }
        }

        else
        {
          v22 = flt_296C2D55C[v21];
        }

        if (v20 > 0x22)
        {
          boost::math::detail::gamma_imp<double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>((v20 + 1));
          if (fabs(v25) > 3.40282347e38)
          {
            goto LABEL_37;
          }

          v24 = v25;
          if (v24 <= 3.4028e38)
          {
            v24 = floorf(v24 + 0.5);
          }
        }

        else
        {
          v24 = flt_296C2D55C[v20];
        }

        v30 = v18 / (v24 * v22);
        vDSP_vfill(&v30, (4 * v17 * v17), 1, v19);
        ++v17;
        v19 += 2;
        --v20;
      }

      while (v17 <= v10);
      goto LABEL_32;
    }

LABEL_37:
    boost::math::policies::detail::raise_error<std::overflow_error,float>();
  }

  if (a4 == 1)
  {
    v6 = *a1;
    v7 = cosf(2.4068 / (*a1 + 1.51));
    v8 = 0;
    v9 = 1;
    do
    {
      __A = HOA::legendre(v8, 0, v7);
      vDSP_vfill(&__A, (4 * (v8 * v8)), 1, v9);
      v8 = (v8 + 1);
      v9 += 2;
    }

    while (v8 <= v6);
  }

  else
  {
    __C = 1.0;
    vDSP_vfill(0, &__C, 1, a1[2]);
  }

LABEL_32:
  if (a3)
  {
    v26 = 0;
    do
    {
      MEMORY[0x29C260480](0, 1, *a2 + v26, a3, *a2 + v26, a3, a1[2]);
      v26 += 4;
    }

    while (4 * a3 != v26);
  }
}

void sub_296C0577C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HOA::RotationMatrix::~RotationMatrix(HOA::RotationMatrix *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

unsigned int *HOA::HOA(unsigned int *a1, unsigned int a2, int a3, unsigned int a4)
{
  v183 = *MEMORY[0x29EDCA608];
  *(a1 + 2) = 0u;
  a1[1] = a2;
  *(a1 + 5) = 0u;
  v167 = (a1 + 20);
  *(a1 + 28) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  a1[44] = a4;
  *(a1 + 46) = 0u;
  *(a1 + 58) = 0u;
  v169 = (a1 + 58);
  v170 = a1 + 8;
  *(a1 + 70) = 0u;
  v168 = (a1 + 70);
  *(a1 + 50) = 0u;
  *(a1 + 54) = 0u;
  *(a1 + 62) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 37) = 0;
  a1[76] = a3;
  HOA::RotationMatrix::RotationMatrix((a1 + 78), a2, a3, 1);
  *(a1 + 46) = 0;
  *(a1 + 47) = 0;
  *(a1 + 48) = 0;
  v6 = a1[1];
  v7 = v6 + 1;
  v8 = v7 * v7;
  a1[3] = (v6 + 1) * (v6 + 1);
  *a1 = v6;
  if (a1[76] == 2 && v6 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v174 = "HOA.cpp";
      v175 = 1024;
      v177 = 2080;
      v176 = 684;
      v178 = "initialize";
      v179 = 1024;
      v180 = 684;
      v181 = 1024;
      v182 = v6;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; initializing a HOA instance with order = %d > 3 with FuMa normalization", buf, 0x28u);
    }

    v9 = 3;
  }

  else
  {
    if (v6 < 0xB)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v174 = "HOA.cpp";
      v175 = 1024;
      v177 = 2080;
      v176 = 687;
      v178 = "initialize";
      v179 = 1024;
      v180 = 687;
      v181 = 1024;
      v182 = v6;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Warning; initializing a HOA instance with order = %d > 10", buf, 0x28u);
    }

    v9 = 10;
  }

  *a1 = v9;
  v7 = v9 + 1;
  v8 = v7 * v7;
LABEL_11:
  a1[2] = v8;
  v10 = *(a1 + 10);
  v11 = (*(a1 + 11) - v10) >> 2;
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      *(a1 + 11) = v10 + 4 * v8;
    }
  }

  else
  {
    std::vector<float>::__append(v167, v8 - v11);
    v7 = *a1 + 1;
    v10 = *(a1 + 10);
  }

  v12 = 0;
  v13 = 0;
  LODWORD(v14) = 0;
  v15 = v7;
  v171 = a1;
  v16 = a1[76];
  v17 = v10 + 16;
  v18 = 1;
  v19 = -1;
  __asm { FMOV            V3.4S, #1.0 }

  v172 = _Q3;
  do
  {
    v14 = v14;
    if (v16)
    {
      v23 = v12 & 0xFFFFFFF8;
      v24 = 2 * v13;
      v25 = -v13;
      *v5.i32 = sqrtf((v13 * 2.0) + 1.0);
      if (v16 == 2)
      {
        if ((v13 & 0x7FFFFFFC) != 0)
        {
          v26 = v24 & 0xFFFFFFF8;
          v27 = (v17 + 4 * v14);
          v28 = &flt_296C2D070[v14 + 4];
          do
          {
            v29 = vdivq_f32(_Q3, vmulq_n_f32(*v28, *v5.i32));
            v27[-1] = vdivq_f32(_Q3, vmulq_n_f32(v28[-1], *v5.i32));
            *v27 = v29;
            v27 += 2;
            v28 += 2;
            v23 -= 8;
          }

          while (v23);
          v14 = v26 + v14;
          v25 = v26 - v13;
        }

        v30 = v25 + v19;
        do
        {
          *(v10 + 4 * v14) = 1.0 / (flt_296C2D070[v14] * *v5.i32);
          ++v14;
          _CF = __CFADD__(v30++, 1);
        }

        while (!_CF);
      }

      else
      {
        *v5.i32 = 1.0 / *v5.i32;
        if ((v13 & 0x7FFFFFFC) != 0)
        {
          v31 = v24 & 0xFFFFFFF8;
          v32 = vdupq_lane_s32(v5, 0);
          v33 = (v17 + 4 * v14);
          do
          {
            v33[-1] = v32;
            *v33 = v32;
            v33 += 2;
            v23 -= 8;
          }

          while (v23);
          v14 = v31 + v14;
          v25 = v31 - v13;
        }

        v34 = v25 + v19;
        do
        {
          *(v10 + 4 * v14++) = v5.i32[0];
          _CF = __CFADD__(v34++, 1);
        }

        while (!_CF);
      }
    }

    else
    {
      memset_pattern16((v10 + 4 * v14), &unk_296C1A280, (8 * v13) | 4);
      _Q3 = v172;
      LODWORD(v14) = v14 + v18;
    }

    ++v13;
    v18 += 2;
    v12 += 2;
    --v19;
  }

  while (v13 != v15);
  v35 = v171;
  v36 = v171[2] * v171[2];
  *buf = 0;
  std::vector<float>::assign(v170 + 9, v36, buf, v5);
  v39 = v171[44];
  v40 = *v171;
  if (v39)
  {
    if (v39 == 2)
    {
      if (v40 < 0xA)
      {
        v41 = &unk_296C2DCA4;
        goto LABEL_46;
      }
    }

    else
    {
      if (v39 != 1)
      {
        goto LABEL_48;
      }

      if (v40 < 0xA)
      {
        v41 = &unk_296C2DC7C;
LABEL_46:
        v38 = v41[v40];
        goto LABEL_48;
      }
    }

    v38 = 121;
    goto LABEL_48;
  }

  if (v40 < 0x16)
  {
    v41 = &unk_296C2DCCC;
    goto LABEL_46;
  }

  v38 = 1014;
LABEL_48:
  v171[6] = v38;
  v42 = v38;
  v43 = *(v171 + 26);
  v44 = (*(v171 + 27) - v43) >> 2;
  if (v42 <= v44)
  {
    if (v42 < v44)
    {
      *(v171 + 27) = v43 + 4 * v42;
    }
  }

  else
  {
    std::vector<float>::__append((v170 + 44), v42 - v44);
    v42 = v171[6];
  }

  v45 = *(v171 + 29);
  v46 = (*(v171 + 30) - v45) >> 2;
  if (v42 <= v46)
  {
    if (v42 < v46)
    {
      *(v171 + 30) = v45 + 4 * v42;
    }
  }

  else
  {
    std::vector<float>::__append(v169, v42 - v46);
    v42 = v171[6];
  }

  v47 = *(v171 + 32);
  v48 = (*(v171 + 33) - v47) >> 2;
  if (v42 <= v48)
  {
    if (v42 < v48)
    {
      *(v171 + 33) = v47 + 4 * v42;
    }
  }

  else
  {
    std::vector<float>::__append((v170 + 56), v42 - v48);
    v47 = *(v170 + 28);
  }

  v49 = v171[44];
  v50 = *v171;
  v51 = *(v171 + 26);
  v52 = *(v171 + 29);
  if (!v49)
  {
    HOA::getTDesign(v50, v51, v52, v47, v37);
    goto LABEL_174;
  }

  if (v49 == 2)
  {
    if (v51)
    {
      v57 = v52 == 0;
    }

    else
    {
      v57 = 1;
    }

    v54 = !v57 && v47 != 0;
    if (v50 > 4)
    {
      if (v50 <= 6)
      {
        if (v50 != 5)
        {
          if (!v54)
          {
            goto LABEL_174;
          }

          *(v51 + 192) = 1127431944;
          *(v51 + 128) = xmmword_296C2BBF4;
          *(v51 + 144) = unk_296C2BC04;
          *(v51 + 160) = xmmword_296C2BC14;
          *(v51 + 176) = unk_296C2BC24;
          *(v51 + 64) = xmmword_296C2BBB4;
          *(v51 + 80) = unk_296C2BBC4;
          *(v51 + 96) = xmmword_296C2BBD4;
          *(v51 + 112) = unk_296C2BBE4;
          *v51 = xmmword_296C2BB74;
          *(v51 + 16) = unk_296C2BB84;
          *(v51 + 32) = xmmword_296C2BB94;
          *(v51 + 48) = unk_296C2BBA4;
          *(v52 + 192) = -1030844557;
          *(v52 + 128) = xmmword_296C2BCB8;
          *(v52 + 144) = unk_296C2BCC8;
          *(v52 + 160) = xmmword_296C2BCD8;
          *(v52 + 176) = unk_296C2BCE8;
          *(v52 + 64) = xmmword_296C2BC78;
          *(v52 + 80) = unk_296C2BC88;
          *(v52 + 96) = xmmword_296C2BC98;
          *(v52 + 112) = unk_296C2BCA8;
          *v52 = xmmword_296C2BC38;
          *(v52 + 16) = unk_296C2BC48;
          *(v52 + 32) = xmmword_296C2BC58;
          *(v52 + 48) = unk_296C2BC68;
          *(v47 + 192) = 1048755214;
          v69 = &xmmword_296C2BCFC;
          goto LABEL_155;
        }

        if (!v54)
        {
          goto LABEL_174;
        }

        *(v51 + 32) = xmmword_296C2B9E4;
        *(v51 + 48) = unk_296C2B9F4;
        *(v51 + 128) = xmmword_296C2BA44;
        *(v51 + 96) = xmmword_296C2BA24;
        *(v51 + 112) = unk_296C2BA34;
        *(v51 + 64) = xmmword_296C2BA04;
        *(v51 + 80) = unk_296C2BA14;
        *v51 = xmmword_296C2B9C4;
        *(v51 + 16) = unk_296C2B9D4;
        *(v52 + 32) = xmmword_296C2BA74;
        *(v52 + 48) = unk_296C2BA84;
        *v52 = xmmword_296C2BA54;
        *(v52 + 16) = unk_296C2BA64;
        *(v52 + 128) = xmmword_296C2BAD4;
        *(v52 + 96) = xmmword_296C2BAB4;
        *(v52 + 112) = unk_296C2BAC4;
        *(v52 + 64) = xmmword_296C2BA94;
        *(v52 + 80) = unk_296C2BAA4;
        v72 = &xmmword_296C2BAE4;
        goto LABEL_140;
      }

      switch(v50)
      {
        case 7:
          if (!v54)
          {
            goto LABEL_174;
          }

          *(v51 + 192) = xmmword_296C2BE80;
          *(v51 + 208) = unk_296C2BE90;
          *(v51 + 224) = xmmword_296C2BEA0;
          *(v51 + 240) = unk_296C2BEB0;
          *(v51 + 128) = xmmword_296C2BE40;
          *(v51 + 144) = unk_296C2BE50;
          *(v51 + 160) = xmmword_296C2BE60;
          *(v51 + 176) = unk_296C2BE70;
          *(v51 + 64) = xmmword_296C2BE00;
          *(v51 + 80) = unk_296C2BE10;
          *(v51 + 96) = xmmword_296C2BE20;
          *(v51 + 112) = unk_296C2BE30;
          *v51 = xmmword_296C2BDC0;
          *(v51 + 16) = unk_296C2BDD0;
          *(v51 + 32) = xmmword_296C2BDE0;
          *(v51 + 48) = unk_296C2BDF0;
          *(v52 + 192) = xmmword_296C2BF80;
          *(v52 + 208) = unk_296C2BF90;
          *(v52 + 224) = xmmword_296C2BFA0;
          *(v52 + 240) = unk_296C2BFB0;
          *(v52 + 128) = xmmword_296C2BF40;
          *(v52 + 144) = unk_296C2BF50;
          *(v52 + 160) = xmmword_296C2BF60;
          *(v52 + 176) = unk_296C2BF70;
          *(v52 + 64) = xmmword_296C2BF00;
          *(v52 + 80) = unk_296C2BF10;
          *(v52 + 96) = xmmword_296C2BF20;
          *(v52 + 112) = unk_296C2BF30;
          *v52 = xmmword_296C2BEC0;
          *(v52 + 16) = unk_296C2BED0;
          *(v52 + 32) = xmmword_296C2BEE0;
          *(v52 + 48) = unk_296C2BEF0;
          v69 = &xmmword_296C2BFC0;
LABEL_154:
          v83 = v69[13];
          *(v47 + 192) = v69[12];
          *(v47 + 208) = v83;
          v84 = v69[15];
          *(v47 + 224) = v69[14];
          *(v47 + 240) = v84;
LABEL_155:
          v85 = v69[9];
          *(v47 + 128) = v69[8];
          *(v47 + 144) = v85;
          v86 = v69[11];
          *(v47 + 160) = v69[10];
          *(v47 + 176) = v86;
          v87 = v69[5];
          *(v47 + 64) = v69[4];
          *(v47 + 80) = v87;
          v88 = v69[7];
          *(v47 + 96) = v69[6];
          *(v47 + 112) = v88;
          goto LABEL_156;
        case 8:
          if (!v54)
          {
            goto LABEL_174;
          }

          v78 = *(v171 + 29);
          v79 = v47;
          memcpy(*(v171 + 26), &unk_296C2C0C0, 0x144uLL);
          memcpy(v78, &unk_296C2C204, 0x144uLL);
          v63 = &unk_296C2C348;
          goto LABEL_165;
        case 9:
          if (!v54)
          {
            goto LABEL_174;
          }

          v61 = *(v171 + 29);
          v62 = v47;
          memcpy(*(v171 + 26), &unk_296C2C48C, 0x190uLL);
          memcpy(v61, &unk_296C2C61C, 0x190uLL);
          v63 = &unk_296C2C7AC;
LABEL_108:
          v66 = v62;
          v67 = 400;
LABEL_173:
          memcpy(v66, v63, v67);
          goto LABEL_174;
      }
    }

    else
    {
      if (v50 > 1)
      {
        if (v50 == 2)
        {
          if (!v54)
          {
            goto LABEL_174;
          }

          *(v51 + 32) = 1116271638;
          *v51 = xmmword_296C2B76C;
          *(v51 + 16) = unk_296C2B77C;
          *(v52 + 32) = -1035839118;
          *v52 = xmmword_296C2B790;
          *(v52 + 16) = unk_296C2B7A0;
          *(v47 + 32) = 1068792731;
          v56 = &xmmword_296C2B7B4;
          goto LABEL_149;
        }

        if (v50 != 3)
        {
          if (!v54)
          {
            goto LABEL_174;
          }

          *(v51 + 96) = 1058111518;
          *v51 = xmmword_296C2B898;
          *(v51 + 16) = unk_296C2B8A8;
          *(v51 + 64) = xmmword_296C2B8D8;
          *(v51 + 80) = unk_296C2B8E8;
          *(v51 + 32) = xmmword_296C2B8B8;
          *(v51 + 48) = unk_296C2B8C8;
          *v52 = xmmword_296C2B8FC;
          *(v52 + 16) = unk_296C2B90C;
          *(v52 + 64) = xmmword_296C2B93C;
          *(v52 + 80) = unk_296C2B94C;
          *(v52 + 32) = xmmword_296C2B91C;
          *(v52 + 48) = unk_296C2B92C;
          *(v52 + 96) = 1110360230;
          *(v47 + 96) = 1057102910;
          v56 = &xmmword_296C2B960;
          goto LABEL_92;
        }

        if (!v54)
        {
          goto LABEL_174;
        }

        *v51 = xmmword_296C2B7D8;
        *(v51 + 16) = unk_296C2B7E8;
        *(v51 + 32) = xmmword_296C2B7F8;
        *(v51 + 48) = unk_296C2B808;
        *v52 = xmmword_296C2B818;
        *(v52 + 16) = unk_296C2B828;
        *(v52 + 32) = xmmword_296C2B838;
        *(v52 + 48) = unk_296C2B848;
        v69 = &xmmword_296C2B858;
        goto LABEL_156;
      }

      if (!v50)
      {
        goto LABEL_128;
      }

      if (v50 == 1)
      {
        if (!v54)
        {
          goto LABEL_174;
        }

        *v51 = xmmword_296C1A250;
        *v52 = xmmword_296C1A260;
        v68 = &xmmword_296C1A270;
        goto LABEL_122;
      }
    }

    if (!v54)
    {
      goto LABEL_174;
    }

    v94 = *(v171 + 29);
    v95 = v47;
    memcpy(*(v171 + 26), &unk_296C2C93C, 0x1E4uLL);
    memcpy(v94, &unk_296C2CB20, 0x1E4uLL);
    v63 = &unk_296C2CD04;
LABEL_172:
    v66 = v95;
    v67 = 484;
    goto LABEL_173;
  }

  if (v49 != 1)
  {
    goto LABEL_174;
  }

  if (v51)
  {
    _ZF = v52 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v54 = !_ZF;
  if (v50 > 4)
  {
    if (v50 > 6)
    {
      if (v50 != 7)
      {
        if (v50 != 8)
        {
          if (v50 != 9)
          {
LABEL_168:
            v96 = v54 ^ 1;
            if (!v47)
            {
              v96 = 1;
            }

            if (v96)
            {
              goto LABEL_174;
            }

            v97 = *(v171 + 29);
            v95 = v47;
            memcpy(*(v171 + 26), &unk_296C2B1C0, 0x1E4uLL);
            memcpy(v97, &unk_296C2B3A4, 0x1E4uLL);
            v63 = &unk_296C2B588;
            goto LABEL_172;
          }

          v64 = v54 ^ 1;
          if (!v47)
          {
            v64 = 1;
          }

          if (v64)
          {
            goto LABEL_174;
          }

          v65 = *(v171 + 29);
          v62 = v47;
          memcpy(*(v171 + 26), &unk_296C2AD10, 0x190uLL);
          memcpy(v65, &unk_296C2AEA0, 0x190uLL);
          v63 = &unk_296C2B030;
          goto LABEL_108;
        }

        v92 = v54 ^ 1;
        if (!v47)
        {
          v92 = 1;
        }

        if (v92)
        {
          goto LABEL_174;
        }

        v93 = *(v171 + 29);
        v79 = v47;
        memcpy(*(v171 + 26), &unk_296C2A944, 0x144uLL);
        memcpy(v93, &unk_296C2AA88, 0x144uLL);
        v63 = &unk_296C2ABCC;
LABEL_165:
        v66 = v79;
        v67 = 324;
        goto LABEL_173;
      }

      v82 = v54 ^ 1;
      if (!v47)
      {
        v82 = 1;
      }

      if (v82)
      {
        goto LABEL_174;
      }

      *(v51 + 192) = xmmword_296C2A704;
      *(v51 + 208) = unk_296C2A714;
      *(v51 + 224) = xmmword_296C2A724;
      *(v51 + 240) = unk_296C2A734;
      *(v51 + 128) = xmmword_296C2A6C4;
      *(v51 + 144) = unk_296C2A6D4;
      *(v51 + 160) = xmmword_296C2A6E4;
      *(v51 + 176) = unk_296C2A6F4;
      *(v51 + 64) = xmmword_296C2A684;
      *(v51 + 80) = unk_296C2A694;
      *(v51 + 96) = xmmword_296C2A6A4;
      *(v51 + 112) = unk_296C2A6B4;
      *v51 = xmmword_296C2A644;
      *(v51 + 16) = unk_296C2A654;
      *(v51 + 32) = xmmword_296C2A664;
      *(v51 + 48) = unk_296C2A674;
      *(v52 + 192) = xmmword_296C2A804;
      *(v52 + 208) = unk_296C2A814;
      *(v52 + 224) = xmmword_296C2A824;
      *(v52 + 240) = unk_296C2A834;
      *(v52 + 128) = xmmword_296C2A7C4;
      *(v52 + 144) = unk_296C2A7D4;
      *(v52 + 160) = xmmword_296C2A7E4;
      *(v52 + 176) = unk_296C2A7F4;
      *(v52 + 64) = xmmword_296C2A784;
      *(v52 + 80) = unk_296C2A794;
      *(v52 + 96) = xmmword_296C2A7A4;
      *(v52 + 112) = unk_296C2A7B4;
      *v52 = xmmword_296C2A744;
      *(v52 + 16) = unk_296C2A754;
      *(v52 + 32) = xmmword_296C2A764;
      *(v52 + 48) = unk_296C2A774;
      v69 = &xmmword_296C2A844;
      goto LABEL_154;
    }

    if (v50 != 5)
    {
      v71 = v54 ^ 1;
      if (!v47)
      {
        v71 = 1;
      }

      if (v71)
      {
        goto LABEL_174;
      }

      *(v51 + 192) = -1022566698;
      *(v51 + 128) = xmmword_296C2A478;
      *(v51 + 144) = unk_296C2A488;
      *(v51 + 160) = xmmword_296C2A498;
      *(v51 + 176) = unk_296C2A4A8;
      *(v51 + 64) = xmmword_296C2A438;
      *(v51 + 80) = unk_296C2A448;
      *(v51 + 96) = xmmword_296C2A458;
      *(v51 + 112) = unk_296C2A468;
      *v51 = xmmword_296C2A3F8;
      *(v51 + 16) = unk_296C2A408;
      *(v51 + 32) = xmmword_296C2A418;
      *(v51 + 48) = unk_296C2A428;
      *(v52 + 192) = 1102138249;
      *(v52 + 128) = xmmword_296C2A53C;
      *(v52 + 144) = unk_296C2A54C;
      *(v52 + 160) = xmmword_296C2A55C;
      *(v52 + 176) = unk_296C2A56C;
      *(v52 + 64) = xmmword_296C2A4FC;
      *(v52 + 80) = unk_296C2A50C;
      *(v52 + 96) = xmmword_296C2A51C;
      *(v52 + 112) = unk_296C2A52C;
      *v52 = xmmword_296C2A4BC;
      *(v52 + 16) = unk_296C2A4CC;
      *(v52 + 32) = xmmword_296C2A4DC;
      *(v52 + 48) = unk_296C2A4EC;
      *(v47 + 192) = 1048646893;
      v69 = &xmmword_296C2A580;
      goto LABEL_155;
    }

    v73 = v54 ^ 1;
    if (!v47)
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_174;
    }

    *(v51 + 32) = xmmword_296C2A268;
    *(v51 + 48) = unk_296C2A278;
    *(v51 + 128) = xmmword_296C2A2C8;
    *(v51 + 96) = xmmword_296C2A2A8;
    *(v51 + 112) = unk_296C2A2B8;
    *(v51 + 64) = xmmword_296C2A288;
    *(v51 + 80) = unk_296C2A298;
    *v51 = xmmword_296C2A248;
    *(v51 + 16) = unk_296C2A258;
    *(v52 + 32) = xmmword_296C2A2F8;
    *(v52 + 48) = unk_296C2A308;
    *v52 = xmmword_296C2A2D8;
    *(v52 + 16) = unk_296C2A2E8;
    *(v52 + 128) = xmmword_296C2A358;
    *(v52 + 96) = xmmword_296C2A338;
    *(v52 + 112) = unk_296C2A348;
    *(v52 + 64) = xmmword_296C2A318;
    *(v52 + 80) = unk_296C2A328;
    v72 = &xmmword_296C2A368;
LABEL_140:
    v74 = v72[7];
    *(v47 + 96) = v72[6];
    *(v47 + 112) = v74;
    *(v47 + 128) = v72[8];
    v75 = v72[3];
    *(v47 + 32) = v72[2];
    *(v47 + 48) = v75;
    v76 = v72[5];
    *(v47 + 64) = v72[4];
    *(v47 + 80) = v76;
    v77 = v72[1];
    *v47 = *v72;
    *(v47 + 16) = v77;
    goto LABEL_174;
  }

  if (v50 <= 1)
  {
    if (v50)
    {
      if (v50 == 1)
      {
        v70 = v54 ^ 1;
        if (!v47)
        {
          v70 = 1;
        }

        if (v70)
        {
          goto LABEL_174;
        }

        *v51 = xmmword_296C1A250;
        *v52 = xmmword_296C1A230;
        v68 = &xmmword_296C1A240;
LABEL_122:
        *v47 = *v68;
        goto LABEL_174;
      }

      goto LABEL_168;
    }

LABEL_128:
    if (v54)
    {
      *v51 = 0;
      *v52 = 0;
      *v47 = 1065353216;
    }

    goto LABEL_174;
  }

  if (v50 == 2)
  {
    v80 = v54 ^ 1;
    if (!v47)
    {
      v80 = 1;
    }

    if ((v80 & 1) == 0)
    {
      *(v51 + 32) = 1123963561;
      *v51 = xmmword_296C29FF0;
      *(v51 + 16) = unk_296C2A000;
      *(v52 + 32) = -1039627997;
      *v52 = xmmword_296C2A014;
      *(v52 + 16) = unk_296C2A024;
      *(v47 + 32) = 1069089495;
      v56 = &xmmword_296C2A038;
      goto LABEL_149;
    }

    goto LABEL_174;
  }

  if (v50 == 3)
  {
    v91 = v54 ^ 1;
    if (!v47)
    {
      v91 = 1;
    }

    if (v91)
    {
      goto LABEL_174;
    }

    *v51 = xmmword_296C2A05C;
    *(v51 + 16) = unk_296C2A06C;
    *(v51 + 32) = xmmword_296C2A07C;
    *(v51 + 48) = unk_296C2A08C;
    *v52 = xmmword_296C2A09C;
    *(v52 + 16) = unk_296C2A0AC;
    *(v52 + 32) = xmmword_296C2A0BC;
    *(v52 + 48) = unk_296C2A0CC;
    v69 = &xmmword_296C2A0DC;
LABEL_156:
    v89 = v69[1];
    *v47 = *v69;
    *(v47 + 16) = v89;
    v90 = v69[3];
    *(v47 + 32) = v69[2];
    *(v47 + 48) = v90;
    goto LABEL_174;
  }

  v55 = v54 ^ 1;
  if (!v47)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    *(v51 + 96) = -1038292098;
    *v51 = xmmword_296C2A11C;
    *(v51 + 16) = unk_296C2A12C;
    *(v51 + 64) = xmmword_296C2A15C;
    *(v51 + 80) = unk_296C2A16C;
    *(v51 + 32) = xmmword_296C2A13C;
    *(v51 + 48) = unk_296C2A14C;
    *v52 = xmmword_296C2A180;
    *(v52 + 16) = unk_296C2A190;
    *(v52 + 64) = xmmword_296C2A1C0;
    *(v52 + 80) = unk_296C2A1D0;
    *(v52 + 32) = xmmword_296C2A1A0;
    *(v52 + 48) = unk_296C2A1B0;
    *(v52 + 96) = -1040443289;
    *(v47 + 96) = 1057367852;
    v56 = &xmmword_296C2A1E4;
LABEL_92:
    v59 = v56[5];
    *(v47 + 64) = v56[4];
    *(v47 + 80) = v59;
    v60 = v56[3];
    *(v47 + 32) = v56[2];
    *(v47 + 48) = v60;
LABEL_149:
    v81 = v56[1];
    *v47 = *v56;
    *(v47 + 16) = v81;
  }

LABEL_174:
  MEMORY[0x29C260530](*(v171 + 26), 1, &kDeg2Radf, *(v171 + 26), 1, v171[6]);
  MEMORY[0x29C260530](*(v171 + 29), 1, &kDeg2Radf, *(v171 + 29), 1, v171[6]);
  v98 = v171[6];
  v99 = 3 * v98;
  v100 = *(v171 + 35);
  v101 = (*(v171 + 36) - v100) >> 2;
  if (v99 <= v101)
  {
    if (v99 < v101)
    {
      *(v171 + 36) = v100 + 4 * v99;
    }
  }

  else
  {
    std::vector<float>::__append(v168, v99 - v101);
    v98 = v171[6];
  }

  if (v98)
  {
    v102 = *(v170 + 22);
    begin = v169->__begin_;
    v104 = v98;
    v105 = v168->__begin_;
    if (v98 > 3)
    {
      v106 = 0;
      v120 = &v105[3 * v98];
      v121 = v102 + 4 * v98;
      _CF = v105 >= &begin[v98] || begin >= v120;
      v123 = !_CF;
      if ((v102 >= v120 || v105 >= v121) && (v123 & 1) == 0)
      {
        v106 = v104 & 0xFFFFFFFE;
        v125 = *(v170 + 22);
        v126 = v169->__begin_;
        v127 = v168->__begin_;
        v128 = v106;
        do
        {
          v129 = *v125++;
          v130 = v129;
          v131 = *v126++;
          v132 = __sincosf_stret(*&v130);
          v133 = __sincosf_stret(*(&v130 + 1));
          v134 = __sincosf_stret(*(&v131 + 1));
          v136 = __sincosf_stret(*&v131);
          sinval = v136.__sinval;
          v137 = v134.__sinval;
          v138.i64[0] = __PAIR64__(LODWORD(v134.__cosval), LODWORD(v136.__cosval));
          v138.i64[1] = __PAIR64__(LODWORD(v134.__cosval), LODWORD(v136.__cosval));
          v139.i64[0] = __PAIR64__(LODWORD(v133.__cosval), LODWORD(v132.__cosval));
          v139.i64[1] = __PAIR64__(LODWORD(v133.__sinval), LODWORD(v132.__sinval));
          v140 = vmulq_f32(v138, v139);
          v141 = vextq_s8(v140, v140, 8uLL).u64[0];
          vst3_f32(v127, *(&sinval - 4));
          v127 += 6;
          v128 -= 2;
        }

        while (v128);
        v35 = v171;
        if (v106 == v104)
        {
          goto LABEL_183;
        }
      }
    }

    else
    {
      v106 = 0;
    }

    v107 = v104 - v106;
    v108 = (v102 + 4 * v106);
    v109 = &begin[v106];
    v110 = &v105[3 * v106 + 1];
    do
    {
      v111 = *v108++;
      v112 = v111;
      v113 = *v109++;
      v114 = __sincosf_stret(v113);
      v115 = __sincosf_stret(v112);
      *(v110 - 1) = v114.__cosval * v115.__cosval;
      *v110 = v114.__cosval * v115.__sinval;
      v110[1] = v114.__sinval;
      v110 += 3;
      --v107;
    }

    while (v107);
  }

LABEL_183:
  if (v35[76] != 2)
  {
    goto LABEL_222;
  }

  v116 = v35[2];
  v117 = v116 * v116;
  v118 = *(v35 + 46);
  v119 = (*(v35 + 47) - v118) >> 2;
  if (v117 <= v119)
  {
    if (v117 < v119)
    {
      *(v35 + 47) = v118 + 4 * v117;
    }
  }

  else
  {
    std::vector<float>::__append((v35 + 92), v117 - v119);
    v116 = v35[2];
  }

  if (!v116)
  {
    goto LABEL_222;
  }

  v142 = *(v35 + 46);
  if (v116 > 7)
  {
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = &unk_296C2D0C0;
    while (1)
    {
      v149 = v146;
      v150 = v148;
      v151 = v116 & 0xFFFFFFF8;
      if (v116 * v147 <= -v116)
      {
        do
        {
          v153 = *v150;
          v154 = (v142 + 4 * v149);
          *v154 = *(v150 - 1);
          v154[1] = v153;
          v150 += 2;
          v149 += 8;
          v151 -= 8;
        }

        while (v151);
        v152 = v116 & 0xFFFFFFF8;
        if (v152 == v116)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v152 = 0;
      }

      v155 = v116 - v152;
      v156 = v146 + v152;
      v157 = &xmmword_296C2D0B0 + v152 + v145;
      do
      {
        v158 = *v157++;
        *(v142 + 4 * v156++) = v158;
        --v155;
      }

      while (v155);
LABEL_212:
      ++v147;
      v148 += 4;
      v146 += v116;
      v145 += 16;
      if (v147 == v116)
      {
        goto LABEL_222;
      }
    }
  }

  *v142 = 1065353216;
  if (v116 != 1)
  {
    *(v142 + 4) = 0;
    *(v142 + 8) = 0;
    if (v116 == 2)
    {
      v144 = 12;
    }

    else
    {
      if (v116 == 3)
      {
        v143 = (v142 + 28);
        *(v142 + 20) = 0;
        *(v142 + 12) = 0;
        v144 = 32;
      }

      else
      {
        *(v142 + 16) = 0;
        *(v142 + 12) = 0;
        switch(v116)
        {
          case 4u:
            *(v142 + 24) = 0x3F80000000000000;
            *(v142 + 32) = xmmword_296C1A1B0;
            *(v142 + 48) = 0;
            v143 = (v142 + 56);
            v144 = 60;
            break;
          case 5u:
            *(v142 + 24) = 0;
            *(v142 + 32) = 1065353216;
            *(v142 + 40) = xmmword_296C1A1B0;
            *(v142 + 56) = 0;
            *(v142 + 60) = xmmword_296C1A1C0;
            *(v142 + 76) = 0;
            v161 = v142 + 80;
            *v161 = 0;
            *(v161 + 8) = 0;
            *(v161 + 16) = 0;
            goto LABEL_222;
          case 6u:
            *(v142 + 24) = xmmword_296C19BF0;
            *(v142 + 40) = 0;
            *(v142 + 48) = xmmword_296C1A1B0;
            *(v142 + 64) = 0;
            *(v142 + 72) = xmmword_296C1A1C0;
            *(v142 + 88) = 0;
            *(v142 + 96) = 0;
            *(v142 + 104) = 0;
            *(v142 + 112) = 0;
            v160 = (v142 + 120);
            *v160 = 0;
            v160[1] = 0;
            v160[2] = 0;
            goto LABEL_222;
          default:
            *(v142 + 24) = 0;
            v162 = v142 + 4 * v116;
            *v162 = xmmword_296C19BF0;
            *(v162 + 16) = 0;
            *(v142 + 52) = 0;
            v163 = v142 + 8 * v116;
            *v163 = xmmword_296C1A1B0;
            *(v163 + 16) = 0;
            *(v163 + 24) = 0;
            v164 = v142 + 12 * v116;
            *v164 = xmmword_296C1A1C0;
            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            v165 = v142 + 16 * v116;
            *v165 = 0;
            *(v165 + 8) = 0;
            *(v165 + 16) = 0;
            *(v165 + 24) = 1065353216;
            v166 = v142 + 20 * v116;
            *(v166 + 8) = 0;
            *(v166 + 16) = 0;
            *v166 = 0;
            *(v166 + 24) = 0;
            v143 = (v142 + 188);
            *(v142 + 168) = 0;
            *(v142 + 176) = 0;
            v144 = 192;
            *(v142 + 184) = 0;
            break;
        }
      }

      *v143 = 1065353216;
    }

    *(v142 + v144) = 0;
  }

LABEL_222:
  *(v35 + 2) = 0;
  *(v35 + 28) = 1;
  return v35;
}

void sub_296C06B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, void **a12, uint64_t a13)
{
  v15 = *a11;
  if (*a11)
  {
    v13[36] = v15;
    operator delete(v15);
  }

  v16 = *(a13 + 224);
  if (v16)
  {
    v13[33] = v16;
    operator delete(v16);
  }

  v17 = *a12;
  if (*a12)
  {
    v13[30] = v17;
    operator delete(v17);
  }

  v18 = *(a13 + 176);
  if (v18)
  {
    v13[27] = v18;
    operator delete(v18);
  }

  v19 = *a9;
  if (*a9)
  {
    v13[24] = v19;
    operator delete(v19);
    v20 = v13[19];
    if (!v20)
    {
LABEL_11:
      v21 = v13[16];
      if (!v21)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v20 = v13[19];
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  v13[20] = v20;
  operator delete(v20);
  v21 = v13[16];
  if (!v21)
  {
LABEL_13:
    v22 = *(a13 + 72);
    if (v22)
    {
      v13[14] = v22;
      operator delete(v22);
    }

    v23 = *a10;
    if (*a10)
    {
      v13[11] = v23;
      operator delete(v23);
    }

    v24 = v13[7];
    if (v24)
    {
      v13[8] = v24;
      operator delete(v24);
    }

    v25 = *a13;
    if (*a13)
    {
      v13[5] = v25;
      operator delete(v25);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_12:
  v13[17] = v21;
  operator delete(v21);
  goto LABEL_13;
}

uint64_t HOA::squareRootInteger(HOA *this)
{
  v1 = 0x40000000;
  do
  {
    v2 = v1;
    v1 >>= 2;
  }

  while (v2 > this);
  v3 = 0;
  if (v2)
  {
    do
    {
      v4 = v2 + v3;
      v5 = 2 * v2;
      if (this < v2 + v3)
      {
        v4 = 0;
        v5 = 0;
      }

      LODWORD(this) = this - v4;
      v3 = (v5 + v3) >> 1;
      v6 = v2 > 3;
      v2 >>= 2;
    }

    while (v6);
  }

  return v3;
}

void HOA::~HOA(HOA *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v7 = *(this + 29);
  if (v7)
  {
    *(this + 30) = v7;
    operator delete(v7);
  }

  v8 = *(this + 26);
  if (v8)
  {
    *(this + 27) = v8;
    operator delete(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    *(this + 24) = v9;
    operator delete(v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    *(this + 20) = v10;
    operator delete(v10);
  }

  v11 = *(this + 16);
  if (v11)
  {
    *(this + 17) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    operator delete(v14);
  }

  v15 = *(this + 4);
  if (v15)
  {
    *(this + 5) = v15;
    operator delete(v15);
  }
}

uint64_t HOA::createEncoder(HOA *this, const float *a2, const float *a3, vDSP_Length a4, float *a5, uint64_t a6)
{
  v34 = *MEMORY[0x29EDCA608];
  if ((*(this + 28) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "HOA.cpp";
      v28 = 1024;
      v29 = 777;
      v30 = 2080;
      v31 = "createEncoder";
      v32 = 1024;
      v33 = 777;
      v24 = MEMORY[0x29EDCA988];
      v25 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_19:
      _os_log_impl(&dword_296B9D000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x22u);
    }

    return 4294967246;
  }

  if (*(this + 3) * a4 != a6)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "HOA.cpp";
      v28 = 1024;
      v29 = 782;
      v30 = 2080;
      v31 = "createEncoder";
      v32 = 1024;
      v33 = 782;
      v24 = MEMORY[0x29EDCA988];
      v25 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent vector size";
      goto LABEL_19;
    }

    return 4294967246;
  }

  if (a4)
  {
    v10 = *(this + 2);
    v11 = 4 * a4;
    MEMORY[0x2A1C7C4A8](this);
    v12 = &buf[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v14 = v13;
    bzero(v12, 4 * a4);
    MEMORY[0x2A1C7C4A8](v15);
    bzero(v12, 4 * a4);
    MEMORY[0x29C260530](v14, 1, &kDeg2Radf, v12, 1, a4);
    MEMORY[0x29C260530](a3, 1, &kDeg2Radf, v12, 1, a4);
    v16 = (v10 * a4);
    HOA::sphericalHarmonics(v12, v12, a4, a5, *this);
    MEMORY[0x2A1C7C4A8](v17);
    v19 = &buf[-v18];
    bzero(&buf[-v18], 4 * v16);
    if (*(this + 76) == 2)
    {
      vDSP_mmul(*(this + 46), 1, a5, 1, v19, 1, *(this + 2), a4, *(this + 2));
      if (v16)
      {
        memcpy(a5, v19, 4 * v16);
      }
    }

    v20 = 0;
    v21 = a5;
    do
    {
      MEMORY[0x29C260480](*(this + 10), 1, v21++, a4, &v19[(*(this + 2) * v20++)], 1);
    }

    while (a4 != v20);
    if (v16)
    {
      memcpy(a5, v19, 4 * v16);
    }

    if (*(this + 1) != *this)
    {
      v22 = *(this + 3) * a4 - v16;
      if (v22 >= 1)
      {
        bzero(&a5[(v10 * a4)], 4 * v22);
      }
    }
  }

  return 0;
}

void HOA::sphericalHarmonics(HOA *this, const float *a2, const float *a3, uint64_t a4, float *a5)
{
  v154 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return;
  }

  v138 = this;
  v107[1] = v107;
  v116 = (a5 + 1);
  MEMORY[0x2A1C7C4A8](this);
  v8 = v107 - v7;
  v146 = v9;
  bzero(v107 - v7, v10);
  v11 = v146;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v107 - ((v13 + 15) & 0x7FFFFFFF0);
  bzero(v14, v13);
  v16 = v146;
  v119 = v8;
  if (v146 >= 1)
  {
    v11 = v146 & 0x7FFFFFFF;
    if (v11 > 1)
    {
      v18 = v146 & 1;
      v17 = v11 - v18;
      v19 = a2;
      v20 = v14;
      v21 = v17;
      do
      {
        v22 = *v19;
        v19 += 2;
        v15.i64[0] = v22;
        v152 = v15;
        v23.f32[0] = sinf(*(&v22 + 1));
        v153 = v23;
        v15.f32[0] = sinf(v152.f32[0]);
        v15.i32[1] = v153.i32[0];
        *v20++ = v15.i64[0];
        v21 -= 2;
      }

      while (v21);
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
    }

    v24 = v11 - v17;
    v25 = v17;
    v26 = &v14[4 * v17];
    v27 = &a2[v25];
    do
    {
      v28 = *v27++;
      *v26++ = sinf(v28);
      --v24;
    }

    while (v24);
LABEL_11:
    v16 = v146;
    v8 = v119;
  }

  if (v16 >= 1)
  {
    v29 = 0;
    v130 = 0;
    v30 = 0;
    v31 = 0;
    v109 = a4 + 4;
    v108 = v138 + 4 * v11;
    v139 = 4 * v11;
    v115 = a4 + 4 * v11;
    v114 = v115 - 4;
    v113 = v11 & 0xFFFFFFF8;
    v112 = a4 + 16;
    v111 = 2 * v16;
    v110 = v8 + 16;
    v126 = 4 * v16;
    v32 = 4 * v16;
    v125 = 16 * v16;
    v33 = 1;
    v132 = -1;
    v124 = xmmword_296C1A1D0;
    v123 = xmmword_296C1A1E0;
    v122 = xmmword_296C1A1F0;
    v34 = v16;
    v35 = 1;
    v134 = v14;
    v133 = v11;
    v135 = a4;
    v145 = v32;
    v148 = vdupq_n_s32(0x3FB504F3u);
    v143 = vdupq_n_s64(4uLL);
    do
    {
      v117 = v34;
      v118 = v33;
      v137 = v31;
      v36 = 0;
      v129 = v30 & 0x1FFFFFFFCLL;
      v121 = v29;
      v37 = (a4 + v32 * (v35 + v29));
      v153.i64[0] = v114 + 4 * v30;
      do
      {
        v38 = powf(-1.0, v36);
        v39 = 0;
        do
        {
          *&v8[4 * v39] = HOA::legendre(v30, v36, *&v14[4 * v39]) * v38;
          ++v39;
        }

        while (v11 != v39);
        ++v36;
        v8 += v139;
      }

      while (v36 != v35);
      v40 = v115 + 4 * v30;
      v41 = v30;
      v42 = v130;
      v43 = v137;
      v44 = v146;
      v45 = v119;
      v46 = v113;
      v47 = v112;
      v48 = v110;
      do
      {
        v49 = 4 * v42;
        if (v43 <= v41)
        {
          v50 = v41;
        }

        else
        {
          v50 = v43;
        }

        v51 = 4 * (v44 * v50);
        if (v43 >= 0)
        {
          v52 = v43;
        }

        else
        {
          v52 = -v43;
        }

        v53 = sqrtf(flt_296C2D4B0[v30 - v52] * (((v30 * 2.0) + 1.0) * flt_296C2D504[(v52 + v30)]));
        if (v11 < 8)
        {
          v54 = 0;
LABEL_32:
          v59 = v11 - v54;
          v60 = 4 * v54;
          v61 = (a4 + v60 + v49);
          v62 = &v45[v60 + v51];
          do
          {
            v63 = *v62++;
            *v61++ = v63 * v53;
            --v59;
          }

          while (v59);
          goto LABEL_20;
        }

        v55 = (v47 + v49);
        v56 = &v48[v51];
        v57 = v46;
        do
        {
          v58 = vmulq_n_f32(*v56, v53);
          v55[-1] = vmulq_n_f32(v56[-1], v53);
          *v55 = v58;
          v55 += 2;
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        v54 = v46;
        if (v11 != v46)
        {
          goto LABEL_32;
        }

LABEL_20:
        ++v43;
        v42 += v44;
        --v41;
      }

      while (v35 != v43);
      v120 = v30 + 1;
      v32 = v145;
      if (v30)
      {
        v64 = v37;
        v65 = 0;
        v131 = v30 + v121;
        v66 = 4 * (v30 + v121);
        v67 = v109 + v66;
        v68 = v40 + v66;
        v69 = a4 + 4 * v121;
        v70 = v153.i64[0] + 4 * v121;
        v72 = v121 + v30 - 1 < v121 || (v30 - 1) >> 32 != 0;
        v74 = v67 < v70 && v69 < v68;
        v76 = v67 < v108 && v68 > v138 || v74;
        if (v69 < v108 && v70 > v138)
        {
          v76 = 1;
        }

        v128 = v30 & 0x1FFFFFFFCLL;
        v127 = v30 & 0x1FFFFFFFCLL | 1;
        v144 = vdupq_n_s64(v120);
        v136 = (v30 < 4 || v44 != 1 || v72) | v76;
        v142 = a4;
        v140 = v35;
        do
        {
          v78 = a4 + 4 * v65;
          v141 = v64;
          if (v136)
          {
            v79 = 1;
            v80 = v137;
            v81 = v138;
          }

          else
          {
            v82 = (v138 + 4 * v65);
            v83 = vld1q_dup_f32(v82);
            v149 = v83;
            v84 = v130;
            v85 = v129;
            v151 = v123;
            v150 = v124;
            v86 = v122;
            v87 = v126;
            v88 = v125;
            do
            {
              v147 = v86;
              v153 = vmulq_f32(v149, vcvtq_f32_u32(v86));
              v89.f32[0] = cosf(v153.f32[1]);
              v152 = v89;
              v90.f32[0] = cosf(v153.f32[0]);
              v90.i32[1] = v152.i32[0];
              v152 = v90;
              v91 = cosf(v153.f32[2]);
              v92 = v152;
              v92.f32[2] = v91;
              v152 = v92;
              v93 = cosf(v153.f32[3]);
              v94 = v152;
              v94.f32[3] = v93;
              *v64 = vmulq_f32(vmulq_f32(*v64, v148), v94);
              v153 = vmulq_f32(v149, vnegq_f32(vcvtq_f32_s32(vuzp1q_s32(vsubq_s64(v144, v151), vsubq_s64(v144, v150)))));
              v95.f32[0] = sinf(v153.f32[1]);
              v152 = v95;
              v96.f32[0] = sinf(v153.f32[0]);
              v96.i32[1] = v152.i32[0];
              v152 = v96;
              v97 = sinf(v153.f32[2]);
              v98 = v152;
              v98.f32[2] = v97;
              v152 = v98;
              v99 = sinf(v153.f32[3]);
              v100 = v147;
              v101 = v152;
              v101.f32[3] = v99;
              *(v78 + 4 * v84) = vmulq_f32(vmulq_f32(*(v78 + 4 * v84), v148), v101);
              v150 = vaddq_s64(v150, v143);
              v151 = vaddq_s64(v151, v143);
              v102.i64[0] = 0x400000004;
              v102.i64[1] = 0x400000004;
              v86 = vaddq_s32(v100, v102);
              v84 += v87;
              v64 = (v64 + v88);
              v85 -= 4;
            }

            while (v85);
            v79 = v127;
            v32 = v145;
            LODWORD(v44) = v146;
            v80 = v137;
            v81 = v138;
            if (v30 == v128)
            {
              goto LABEL_61;
            }
          }

          v103 = v140 - v79;
          v104 = (v142 + v32 * (v131 + v79));
          v105 = v44 * (v132 + v79);
          do
          {
            *v104 = (*v104 * 1.4142) * cosf(*(v81 + v65) * v79);
            v106 = sinf(-(v103 * *(v81 + v65)));
            v32 = v145;
            LODWORD(v44) = v146;
            *(v78 + 4 * v105) = (*(v78 + 4 * v105) * 1.4142) * v106;
            ++v79;
            --v103;
            v104 = (v104 + v32);
            v105 += v44;
          }

          while (v80 + v79 != 1);
LABEL_61:
          ++v65;
          v64 = &v141->i32[1];
          v142 += 4;
          v11 = v133;
          a4 = v135;
          v14 = v134;
          v35 = v140;
        }

        while (v65 != v133);
      }

      v29 = v121 + v118;
      ++v35;
      v31 = v137 - 1;
      v130 += v117;
      v132 += v118;
      v33 = (v118 + 2);
      v34 = v117 + v111;
      v30 = v120;
      v8 = v119;
    }

    while (v120 != v116);
  }
}

uint64_t HOA::createEncoder(std::vector<int> *this, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((BYTE4(this[1].__begin_) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "HOA.cpp";
      v23 = 1024;
      v24 = 834;
      v25 = 2080;
      v26 = "createEncoder";
      v27 = 1024;
      v28 = 834;
      v18 = MEMORY[0x29EDCA988];
      v19 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_10:
      _os_log_impl(&dword_296B9D000, v18, OS_LOG_TYPE_ERROR, v19, &v21, 0x22u);
    }

    return 4294967246;
  }

  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  v8 = *a3;
  if (v6 != *(a3 + 8) - v8)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "HOA.cpp";
      v23 = 1024;
      v24 = 839;
      v25 = 2080;
      v26 = "createEncoder";
      v27 = 1024;
      v28 = 839;
      v18 = MEMORY[0x29EDCA988];
      v19 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent azimuth/elevation size";
      goto LABEL_10;
    }

    return 4294967246;
  }

  v10 = v6 >> 2;
  end = this[1].__end_;
  LODWORD(this->__end_cap_.__value_) = v6 >> 2;
  v12 = HIDWORD(this->__end_) * (v6 >> 2);
  value = this[1].__end_cap_.__value_;
  v14 = (value - end) >> 2;
  v15 = v12 >= v14;
  v16 = v12 - v14;
  if (v16 != 0 && v15)
  {
    v17 = this;
    std::vector<float>::__append((this + 32), v16);
    this = v17;
    v4 = *a2;
    v8 = *a3;
    LODWORD(v10) = v17->__end_cap_.__value_;
    end = v17[1].__end_;
    value = v17[1].__end_cap_.__value_;
  }

  else if (!v15)
  {
    value = &end[v12];
    this[1].__end_cap_.__value_ = value;
  }

  return HOA::createEncoder(this, v4, v8, v10, end, (value - end) >> 2);
}

uint64_t HOA::createALLRAD(float **this, VBAP *a2, const float *a3, const float *a4, unsigned int a5)
{
  v25 = *MEMORY[0x29EDCA608];
  vDSP_vclr(this[7], 1, (*(this + 2) * *(this + 5)));
  if (*(this + 5))
  {
    operator new();
  }

  v10 = 0;
  while (1)
  {
    v11 = VBAP::calculateVBAPGains(a2, &a4[(3 * v10)], 0);
    if (v11)
    {
      break;
    }

    v12 = *(this + 5);
    if (v12)
    {
      v13 = 0;
      for (i = 0; i < v12; ++i)
      {
        MEMORY[0x29C260500](&a3[v10], a5, v13 * 4, &this[7][v13], v12, &this[7][v13], v12, *(this + 2));
        v12 = *(this + 5);
        ++v13;
      }
    }

    if (++v10 == a5)
    {
      return 0;
    }
  }

  v15 = v11;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v17 = 136315906;
    v18 = "HOA.cpp";
    v19 = 1024;
    v20 = 863;
    v21 = 2080;
    v22 = "createALLRAD";
    v23 = 1024;
    v24 = 863;
    _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; VBAP calculation error", &v17, 0x22u);
  }

  return v15;
}

void sub_296C07EDC(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void HOA::createALLRAD2(HOA *this, VBAP *a2, const float *a3, const float *a4, int a5)
{
  if (*(this + 2) * a5)
  {
    operator new();
  }

  operator new();
}

void sub_296C08478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *__p, void *a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  operator delete(a15);
  if (a12)
  {
    operator delete(a12);
    if (!a13)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!a13)
  {
    goto LABEL_7;
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t HOA::createDecoder(unsigned int *a1, void *a2, void *a3, unsigned int a4, int a5)
{
  v72 = *MEMORY[0x29EDCA608];
  if ((a1[7] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *buf = 136315906;
    *&buf[4] = "HOA.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 948;
    *&buf[18] = 2080;
    *&buf[20] = "createDecoder";
    *&buf[28] = 1024;
    *&buf[30] = 948;
    v19 = MEMORY[0x29EDCA988];
    v20 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_13:
    _os_log_impl(&dword_296B9D000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
    return 4294967246;
  }

  v5 = a2[1] - *a2;
  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *buf = 136315906;
    *&buf[4] = "HOA.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 953;
    *&buf[18] = 2080;
    *&buf[20] = "createDecoder";
    *&buf[28] = 1024;
    *&buf[30] = 953;
    v19 = MEMORY[0x29EDCA988];
    v20 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Empty azimuth/elevation";
    goto LABEL_13;
  }

  if (v5 != a3[1] - *a3)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HOA.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 958;
      *&buf[18] = 2080;
      *&buf[20] = "createDecoder";
      *&buf[28] = 1024;
      *&buf[30] = 958;
      v19 = MEMORY[0x29EDCA988];
      v20 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent azimuth/elevation size";
      goto LABEL_13;
    }

    return 4294967246;
  }

  v9 = v5 >> 2;
  v12 = *(a1 + 16);
  v10 = (a1 + 32);
  v11 = v12;
  HIDWORD(v10[-5].__end_) = v5 >> 2;
  v13 = (v5 >> 2);
  v14 = (v10->__end_ - v12) >> 2;
  v15 = v13 >= v14;
  v16 = v13 - v14;
  if (v16 != 0 && v15)
  {
    std::vector<float>::__append(v10, v16);
    LODWORD(v9) = a1[5];
  }

  else if (!v15)
  {
    *(a1 + 17) = v11 + 4 * v13;
  }

  v23 = v9;
  v24 = *(a1 + 19);
  v25 = (*(a1 + 20) - v24) >> 2;
  if (v23 <= v25)
  {
    if (v23 < v25)
    {
      *(a1 + 20) = v24 + 4 * v23;
    }
  }

  else
  {
    std::vector<float>::__append((a1 + 38), v23 - v25);
    v23 = a1[5];
  }

  MEMORY[0x29C260530](*a2, 1, &kDeg2Radf, *(a1 + 16), 1, v23);
  *&v26 = MEMORY[0x29C260530](*a3, 1, &kDeg2Radf, *(a1 + 19), 1, a1[5]);
  v27 = a1[2] * a1[5];
  *buf = 0;
  std::vector<float>::assign(a1 + 7, v27, buf, v26);
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v30 = a1[5];
      if (v30 * a1[2])
      {
        operator new();
      }

      HOA::sphericalHarmonics(*(a1 + 16), *(a1 + 19), v30, 0, *a1);
      vDSP_mtrans(0, 1, *(a1 + 7), 1, a1[5], a1[2]);
      v38 = a1[5];
      *v51 = 1.0 / v38;
      MEMORY[0x29C260530](*(a1 + 7), 1, v51, *(a1 + 7), 1, a1[2] * v38);
      if (a5)
      {
        HOA::applyDecoderWeighting(a1, a1 + 7, a1[5], a5);
      }

      v39 = a1[76];
      if (v39 == 2)
      {
        memset(buf, 0, 24);
        std::vector<float>::vector[abi:ne200100](buf, a1[2] * a1[2]);
        vDSP_mtrans(*(a1 + 46), 1, *buf, 1, a1[2], a1[2]);
        vDSP_mmul(*(a1 + 7), 1, *buf, 1, 0, 1, a1[5], a1[2], a1[2]);
        memcpy(*(a1 + 7), 0, 4 * a1[2] * a1[5]);
        if (a1[5])
        {
          v43 = 0;
          do
          {
            v44 = a1[2];
            v45 = (*(a1 + 7) + 4 * v44 * v43);
            vDSP_vdiv(*(a1 + 10), 1, v45, 1, v45, 1, v44);
            ++v43;
          }

          while (v43 < a1[5]);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else if (v39 == 1 && a1[5])
      {
        v40 = 0;
        do
        {
          v41 = a1[2];
          v42 = (*(a1 + 7) + 4 * v41 * v40);
          vDSP_vdiv(*(a1 + 10), 1, v42, 1, v42, 1, v41);
          ++v40;
        }

        while (v40 < a1[5]);
      }
    }

    goto LABEL_55;
  }

  if (*a1)
  {
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
    v55 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(v50, 0, sizeof(v50));
    v29 = a2[1] - *a2;
    if (v29)
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    memset(v49, 0, sizeof(v49));
    v37 = a3[1];
    if (v37 != *a3)
    {
      if (((v37 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    *v51 = 0;
    v52 = 0;
    v53 = 0;
    VBAP::VBAP(buf, v50, v49, 1);
  }

  v31 = a1[5];
  if (v31)
  {
    *v28.i32 = 1.0 / sqrtf(v31);
    v32 = *(a1 + 7);
    if (v31 < 8)
    {
      goto LABEL_36;
    }

    v33 = v31 & 0xFFFFFFF8;
    v34 = vdupq_lane_s32(v28, 0);
    v35 = v32 + 1;
    v36 = v33;
    do
    {
      v35[-1] = v34;
      *v35 = v34;
      v35 += 2;
      v36 -= 8;
    }

    while (v36);
    if (v33 != v31)
    {
      LODWORD(v31) = v31 - v33;
      v32 = (v32 + 4 * v33);
      do
      {
LABEL_36:
        v32->i32[0] = v28.i32[0];
        v32 = (v32 + 4);
        LODWORD(v31) = v31 - 1;
      }

      while (v31);
    }
  }

LABEL_55:
  v21 = 0;
  if (a1[1] != *a1)
  {
    v46 = a1[5] * a1[3];
    *buf = 0;
    v47 = *(a1 + 7);
    v48 = (*(a1 + 8) - v47) >> 2;
    if (v46 <= v48)
    {
      if (v46 < v48)
      {
        *(a1 + 8) = v47 + 4 * v46;
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 14), v46 - v48, buf, v28);
    }
  }

  return v21;
}

void sub_296C09158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v45);
  operator delete(v44);
  operator delete(v43);
  if (v42)
  {
    operator delete(v42);
  }

  VBAP::~VBAP(&a41);
  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_296C09310(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HOA::createSphericalGridDecoder(unsigned int *a1, int a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (a1[7])
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 16, *(a1 + 26), *(a1 + 27), (*(a1 + 27) - *(a1 + 26)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 19, *(a1 + 29), *(a1 + 30), (*(a1 + 30) - *(a1 + 29)) >> 2);
    v5 = (a1 + 46);
    v4 = *(a1 + 23);
    v6 = a1[6];
    a1[5] = v6;
    v7 = a1[2] * v6;
    v8 = (*(a1 + 24) - v4) >> 2;
    if (v7 <= v8)
    {
      if (v7 < v8)
      {
        *(a1 + 24) = &v4[4 * v7];
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 46), v7 - v8);
      v4 = *v5;
    }

    HOA::sphericalHarmonics(*(a1 + 26), *(a1 + 29), ((*(a1 + 27) - *(a1 + 26)) >> 2), v4, *a1);
    if (a1[44] - 1 <= 1)
    {
      LODWORD(v10) = a1[5];
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          MEMORY[0x29C260480](*(a1 + 32), 1, *(a1 + 23) + v11, v10, *(a1 + 23) + v11, v10, v10);
          ++v12;
          v10 = a1[5];
          v11 += 4;
        }

        while (v12 < v10);
        v13 = v10 * 0.079577;
      }

      else
      {
        v13 = 0.0;
      }

      *buf = v13;
      MEMORY[0x29C260530](*(a1 + 23), 1, buf, *(a1 + 23), 1, (*(a1 + 24) - *(a1 + 23)) >> 2);
    }

    v14 = *(a1 + 7);
    v15 = *(a1 + 24) - *(a1 + 23);
    v16 = (*(a1 + 8) - v14) >> 2;
    if (v15 >> 2 <= v16)
    {
      if (v15 >> 2 < v16)
      {
        *(a1 + 8) = v14 + v15;
      }
    }

    else
    {
      std::vector<float>::__append((a1 + 14), (v15 >> 2) - v16);
    }

    if (a1[76] == 2)
    {
      v17 = *(a1 + 23);
      v18 = *(a1 + 24);
      v19 = v18 - v17;
      if (v18 != v17)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      vDSP_mmul(*(a1 + 46), 1, v17, 1, 0, 1, a1[2], a1[6], a1[2]);
      if (v19)
      {
        memmove(*v5, 0, v19);
      }
    }

    *buf = 1.0 / a1[6];
    v20 = *(a1 + 10);
    v21 = *(a1 + 11);
    if (v21 != v20)
    {
      if (((v21 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    vDSP_svdiv(buf, v20, 1, 0, 1, a1[2]);
    LODWORD(v22) = a1[6];
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        MEMORY[0x29C260480](0, 1, *(a1 + 23) + v23, v22, *(a1 + 7) + v23, v22, a1[2]);
        ++v24;
        v22 = a1[6];
        v23 += 4;
      }

      while (v24 < v22);
    }

    HOA::applyDecoderWeighting(a1, a1 + 7, v22, a2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 23, *(a1 + 7), *(a1 + 8), (*(a1 + 8) - *(a1 + 7)) >> 2);
    if (a1[1] != *a1)
    {
      v26 = a1[6] * a1[3];
      v29 = 0;
      v27 = *(a1 + 7);
      v28 = (*(a1 + 8) - v27) >> 2;
      if (v26 <= v28)
      {
        if (v26 < v28)
        {
          *(a1 + 8) = v27 + 4 * v26;
        }
      }

      else
      {
        std::vector<float>::__append((a1 + 14), v26 - v28, &v29, v25);
      }
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 4.8153e-34;
      v31 = "HOA.cpp";
      v32 = 1024;
      v33 = 1100;
      v34 = 2080;
      v35 = "createSphericalGridDecoder";
      v36 = 1024;
      v37 = 1100;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized", buf, 0x22u);
    }

    return 4294967246;
  }
}

void sub_296C09768(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t HOA::decodeData(HOA *this, const float *__A, float *__C, vDSP_Length __M)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(this + 28))
  {
    v5 = *(this + 7);
    if (v5 != *(this + 8))
    {
      vDSP_mmul(__A, 1, v5, 1, __C, 1, __M, *(this + 5), *(this + 3));
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HOA.cpp";
      v9 = 1024;
      v10 = 1646;
      v11 = 2080;
      v12 = "decodeData";
      v13 = 1024;
      v14 = 1646;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized", buf, 0x22u);
    }

    return 4294967246;
  }
}

uint64_t HOA::encodeData(HOA *this, const float *__A, float *__C, vDSP_Length __M)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(this + 28))
  {
    v5 = *(this + 4);
    if (v5 != *(this + 5))
    {
      vDSP_mmul(__A, 1, v5, 1, __C, 1, __M, *(this + 3), *(this + 4));
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HOA.cpp";
      v9 = 1024;
      v10 = 1671;
      v11 = 2080;
      v12 = "encodeData";
      v13 = 1024;
      v14 = 1671;
      _os_log_impl(&dword_296B9D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized", buf, 0x22u);
    }

    return 4294967246;
  }
}

uint64_t HOA::getNormalization(HOA *this)
{
  if ((this & 0xFFFF0000) == 0xBE0000)
  {
    return 1;
  }

  else
  {
    return 2 * ((this & 0xFFFF0000) != 12517376);
  }
}

uint64_t SincKernelFactory::ReferenceSincKernel(SincKernelFactory *this, int a2, int a3, double a4, double a5)
{
  v5 = *(this + 1) - *this;
  if (!v5)
  {
LABEL_9:
    operator new();
  }

  v6 = 0;
  v7 = v5 >> 3;
  v8 = 1;
  while (1)
  {
    v9 = *(*this + 8 * v6);
    if (*(v9 + 32) == a5 && *(v9 + 24) == a4 && *(v9 + 12) == a2 && *(v9 + 16) == a3)
    {
      break;
    }

    v6 = v8++;
    if (v7 <= v6)
    {
      goto LABEL_9;
    }
  }

  ++*(v9 + 8);
  return v9;
}

void sub_296C0A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__split_buffer<KaiserWindow>::~__split_buffer(&a29);
  os_unfair_lock_unlock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  MEMORY[0x29C25FC20](v29, 0x1080C4003DAF236);
  _Unwind_Resume(a1);
}

void *SincKernelFactory::ReleaseSincKernel(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8) - 1;
    *(a2 + 8) = v2;
    if (!v2)
    {
      v3 = *result;
      v4 = result[1];
      if (v4 != *result)
      {
        v5 = 0;
        v6 = 1;
        do
        {
          if (*(v3 + 8 * v5) == a2)
          {
            v7 = v3 + 8 * v5;
            v8 = v4 - (v7 + 8);
            if (v4 != v7 + 8)
            {
              v9 = result;
              v10 = a2;
              memmove(v7, (v7 + 8), v4 - (v7 + 8));
              result = v9;
              a2 = v10;
            }

            result[1] = v7 + v8;
            free(*a2);

            JUMPOUT(0x29C25FC20);
          }

          v5 = v6++;
        }

        while ((v4 - *result) >> 3 > v5);
      }
    }
  }

  return result;
}

void KaiserWindow::KaiserWindow(KaiserWindow *this, int a2, double a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  if (a3 >= 50.0)
  {
    v3 = a3 * 0.1102 + -0.95874;
  }

  else
  {
    v3 = 0.0;
    if (a3 > 21.0)
    {
      v3 = (a3 + -21.0) * 0.07886 + pow(a3 + -21.0, 0.4) * 0.5842;
    }
  }

  v4 = fabs(v3);
  v54 = v3;
  if (v4 >= 3.75)
  {
    v7 = 3.75 / v4;
    v8 = exp(v4);
    v3 = v54;
    v6 = ((((((((v7 * 0.00392377 + -0.01647633) * v7 + 0.02635537) * v7 + -0.02057706) * v7 + 0.00916281) * v7 + -0.00157565) * v7 + 0.00225319) * v7 + 0.01328592) * v7 + 0.39894228) * v8 / sqrt(v4);
  }

  else
  {
    v5 = v3 * 0.266666667 * (v3 * 0.266666667);
    v6 = (((((v5 * 0.0045813 + 0.0360768) * v5 + 0.2659732) * v5 + 1.2067492) * v5 + 3.0899424) * v5 + 3.5156229) * v5 + 1.0;
  }

  v9 = 4294967294;
  __asm { FMOV            V4.2D, #1.0 }

  v52 = vdupq_lane_s64(COERCE__INT64(0x7FFFFFFFu), 0);
  v58 = _Q4;
  v51 = vdivq_f64(_Q4, v52);
  v15 = 0x100000000;
  __asm { FMOV            V4.2D, #3.75 }

  v49 = vdupq_n_s64(0x3F70125EFD3B7F88uLL);
  v50 = _Q4;
  v47 = vdupq_n_s64(0x3F9AFCE6F0E55AE3uLL);
  v48 = vdupq_n_s64(0xBF90DF2BCA084C55);
  v45 = vdupq_n_s64(0x3F82C3F38A50D154uLL);
  v46 = vdupq_n_s64(0xBF9512271EFDC716);
  v43 = vdupq_n_s64(0x3F6275482B92D5DBuLL);
  v44 = vdupq_n_s64(0xBF59D0C14E13894ALL);
  v41 = vdupq_n_s64(0x3FD988453365DE00uLL);
  v42 = vdupq_n_s64(0x3F8B35A5FF2D9D1CuLL);
  v39 = vdupq_n_s64(0x3F72C3D75AC54874uLL);
  v40 = vdupq_n_s64(0x3FD1111111111111uLL);
  v37 = vdupq_n_s64(0x3FD105B474E732AAuLL);
  v38 = vdupq_n_s64(0x3FA278A88849E5FDuLL);
  v35 = vdupq_n_s64(0x4008B833B89430A4uLL);
  v36 = vdupq_n_s64(0x3FF34ED83FC7962CuLL);
  v34 = vdupq_n_s64(0x400C1FFEE6248CA7uLL);
  v17 = 4;
  v18 = 4294967294;
  v53 = 1.0 / v6;
  do
  {
    v19.i64[0] = v15.u32[0];
    v19.i64[1] = v15.u32[1];
    v20 = vmulq_f64(vsubq_f64(vcvtq_f64_u64(v19), v52), v51);
    v57 = vmulq_n_f64(vsqrtq_f64(vmlsq_f64(v58, v20, v20)), v3);
    v59 = vabsq_f64(v57);
    v56 = vdivq_f64(v50, v59);
    v55 = exp(v59.f64[1]);
    v21.f64[0] = exp(v59.f64[0]);
    v21.f64[1] = v55;
    v22 = vmulq_f64(v57, v40);
    v23 = vmulq_f64(v22, v22);
    v24 = v53;
    v3 = v54;
    *v17 = vcvt_f32_f64(vmulq_n_f64(vbslq_s8(vcgeq_f64(v59, v50), vdivq_f64(vmulq_f64(vmlaq_f64(v41, v56, vmlaq_f64(v42, v56, vmlaq_f64(v43, v56, vmlaq_f64(v44, v56, vmlaq_f64(v45, v56, vmlaq_f64(v46, v56, vmlaq_f64(v47, v56, vmlaq_f64(v48, v49, v56)))))))), v21), vsqrtq_f64(v59)), vmlaq_f64(v58, v23, vmlaq_f64(v34, v23, vmlaq_f64(v35, v23, vmlaq_f64(v36, v23, vmlaq_f64(v37, v23, vmlaq_f64(v38, v39, v23))))))), v53));
    v17 += 8;
    v15 = vadd_s32(v15, 0x200000002);
    v18 -= 2;
  }

  while (v18);
  v25 = 0x7FFFFFFFu;
  v26 = -1.0;
  do
  {
    v31 = sqrt(-(v26 + (v9 - v25) * (1.0 / 0x7FFFFFFFu) * ((v9 - v25) * (1.0 / 0x7FFFFFFFu)))) * v3;
    v32 = fabs(v31);
    if (v32 >= 3.75)
    {
      v28 = exp(v32);
      v26 = -1.0;
      v24 = v53;
      v3 = v54;
      v25 = 0x7FFFFFFFu;
      v27 = 3.75 / v32;
      v29 = ((((((((v27 * 0.00392377 + -0.01647633) * v27 + 0.02635537) * v27 + -0.02057706) * v27 + 0.00916281) * v27 + -0.00157565) * v27 + 0.00225319) * v27 + 0.01328592) * v27 + 0.39894228) * v28 / sqrt(v32);
    }

    else
    {
      v33 = v31 * 0.266666667 * (v31 * 0.266666667);
      v29 = (((((v33 * 0.0045813 + 0.0360768) * v33 + 0.2659732) * v33 + 1.2067492) * v33 + 3.0899424) * v33 + 3.5156229) * v33 + 1.0;
    }

    v30 = v29 * v24;
    *(4 * v9++ + 4) = v30;
  }

  while (v9 != 0xFFFFFFFFLL);
  MEMORY[0] = 0;
}

void sub_296C0AA94(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<KaiserWindow>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 40;
        *(a1 + 16) = v2 - 40;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 40;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<KaiserWindow>,KaiserWindow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void IR::FixedIntegerDelay<float>::process()
{
  __assert_rtn("process", "FixedIntegerDelay.cpp", 49, "!mSecondaryDelayBuf.empty()");
}

{
  __assert_rtn("process", "FixedIntegerDelay.cpp", 61, "!mSecondaryDelayBuf.empty()");
}

{
  __assert_rtn("process", "FixedIntegerDelay.cpp", 45, "!mPrimaryDelayBuf.empty()");
}

{
    ;
  }
}

void IR::IRData::Implementation::readIRPlist(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: failed to read rawPlistLength", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: error while constructing dictionary from data", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::readIRPlist()
{
  dispatch_once(&IR::getIRDataLog(void)::onceToken, &__block_literal_global);
}

{
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void IR::IRData::Implementation::getEmptyIRDataNode()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    dword_2A18B8200 = 0;
    xmmword_2A18B8208 = 0u;
    unk_2A18B8218 = 0u;
    xmmword_2A18B8228 = 0u;
    unk_2A18B8238 = 0u;
    xmmword_2A18B8248 = 0u;
    unk_2A18B8258 = 0u;
    xmmword_2A18B8268 = 0u;
    __cxa_atexit(IR::IRDataNode::~IRDataNode, &dword_2A18B8200, &dword_296B9D000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void IR::IRData::Implementation::Implementation(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Fractional Filter Length", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Dimension Size Mismatch", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Filter Data Size - Delay Size Mismatch", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to create user-defined size dimension", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Empty Data Vectors", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: window start sample beyond end of filter", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: start of fadeout is beyond end of filter", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: coefficient format not specified", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Triangulation dictionary found but failed to load", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Triangulation dictionary found but is empty/defective", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: failed to read float dimensionVal from file", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: failed to read float value from file", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: NumChannels was either not specified or read as 0", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: start of fadeout is before window fadein", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: length of fadeout is greater than filter", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Invalid filter length.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: IR file's native sample rate is zero.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to load IR file header", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to load IR file", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::canCreateSizeDimension(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to create user-defined size dimension; size vector has values not in the range [0 1]", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to create user-defined size dimension; size dimension already exists in data", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to create user-defined size dimension; missing azimuth and/or elevation data", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::createSizeDimension()
{
  v4 = *MEMORY[0x29EDCA608];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_6();
  v3 = v0;
  _os_log_debug_impl(&dword_296B9D000, v1, OS_LOG_TYPE_DEBUG, "IRData::%s: VBAP triangulation took %.2f ms", v2, 0x16u);
}

{
  v4 = *MEMORY[0x29EDCA608];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_6();
  v3 = v0;
  _os_log_debug_impl(&dword_296B9D000, v1, OS_LOG_TYPE_DEBUG, "IRData::%s: Size dimension generation (including triangulation) took %.2f ms", v2, 0x16u);
}

void IR::IRData::Implementation::Implementation()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void IR::IRData::Implementation::createSerializedIRData(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Only Time Domain supported", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Filter data not created, XML creation issue", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "%s: ERROR: Invalid IR Data", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::createSoundProfileMetaDataDictionary(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: SoundProfile is not well-constructed.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Invalid SoundProfile pack.", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::getSoundProfileVersion(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: SoundProfile is not well-constructed.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Invalid SoundProfile pack.", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::createSerializedIRDataWithNoise()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void IR::IRData::Implementation::createSerializedIRDataWithNoise(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: NumChannels was either not specified or read as 0", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TotalNumCoordinates was either not specified or read as 0", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: invalid filter length.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to load input data header", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: unable to load input data", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Invalid data", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::createNoisySoundProfilePack(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Failed to create noisy IR for HRTF type 1.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Failed to create noisy IR for HRTF type 2.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: SoundProfile is not well-constructed.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: Invalid SoundProfile pack.", a5, a6, a7, a8, 2u);
}

void IR::VBAPTriangulationKernel::VBAPTriangulationKernel(void **a1, void **a2, void *a3)
{
  v5 = *a1;
  if (v5)
  {
    a3[6] = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    a3[3] = v6;
    operator delete(v6);
  }

  v7 = a3[1];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void IR::IRData::Implementation::getInterpolatedTimeDomainCoeffs<std::vector<float>>()
{
  __assert_rtn("getInterpolatedTimeDomainCoeffs", "IRDataInterpolation.cpp", 166, "mTopLevelNodes->size() > 0");
}

{
  __assert_rtn("getInterpolatedTimeDomainCoeffs", "IRDataInterpolation.cpp", 168, "ioCoefficients.size() == ioDelays.size()");
}

{
  __assert_rtn("getInterpolatedTimeDomainCoeffs", "IRDataInterpolation.cpp", 169, "ioCoefficients.size() >= inChans.size()");
}

{
  __assert_rtn("getInterpolatedTimeDomainCoeffs", "IRDataInterpolation.cpp", 164, "!mVBAPKernels.empty()");
}

void IR::IRData::Implementation::getInterpolatedCoeffs()
{
  __assert_rtn("getInterpolatedCoeffs", "IRDataInterpolation.cpp", 41, "mTopLevelNodes->size() > 0");
}

{
  __assert_rtn("getInterpolatedCoeffs", "IRDataInterpolation.cpp", 43, "ioFilterKernels.size() == ioDelays.size()");
}

{
  __assert_rtn("getInterpolatedCoeffs", "IRDataInterpolation.cpp", 44, "ioFilterKernels.size() >= inChans.size()");
}

{
  __assert_rtn("getInterpolatedCoeffs", "IRDataInterpolation.cpp", 39, "!mVBAPKernels.empty()");
}

void IR::IRData::Implementation::getInterpolatedAuxData()
{
  __assert_rtn("getInterpolatedAuxData", "IRDataInterpolation.cpp", 305, "mTopLevelNodes->size() > 0");
}

{
  __assert_rtn("getInterpolatedAuxData", "IRDataInterpolation.cpp", 303, "!mVBAPKernels.empty()");
}

void IR::HOA2BinauralIRRenderer::setEnvironment(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "HOA2BinauralIRRenderer::%s: Invalid HRIR IRData object", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "HOA2BinauralIRRenderer::%s: Invalid number of HOA channels", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "HOA2BinauralIRRenderer::%s: Invalid HOARIR IRData object", a5, a6, a7, a8, 2u);
}

void IR::IRData::Implementation::loadTriangulationData(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: NumTriangulations key missing from triangulation dictionary", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriVertices key missing from triangulation dictionary", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriVertices has wrong data type", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriVertices array wrong length", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriAssignment key missing from triangulation dictionary", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriAssignment data of wrong type", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: wrong number of TriAssignment data points", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriBinLengths and/or TriBinSerial key missing from triangulation dictionary", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriBinLengths and/or TriBinSerial not array type", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: TriBinLengths and/or TriBinSerial array not of proper size", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: triangle lookup bins must have at least one element", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: triangle lookup bins have wrong amount of data", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: triangle lookup bins have insufficient data", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_3(&dword_296B9D000, a1, a3, "IRData::%s: number of stored triangulations found to be zero", a5, a6, a7, a8, 2u);
}

void AudioDSP::Core::HeadTracker::Implementation::SetBluetoothLowLatencyMode()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2_0();
  v2 = "SetBluetoothLowLatencyMode";
  _os_log_debug_impl(&dword_296B9D000, v0, OS_LOG_TYPE_DEBUG, "[%s|%s] Host disallowed accessing HAL APIs. Bluetooth latency mode cannot be updated.", v1, 0x16u);
}

void AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  v2 = "UnregisterUserChoiceListener";
  _os_log_debug_impl(&dword_296B9D000, v0, OS_LOG_TYPE_DEBUG, "[%s|%s] SpatialConfig listener is already unregistered.", v1, 0x16u);
}

void AudioDSP::Core::HeadTracker::ConnectRM()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_296B9D000, v0, v1, "[%s|%s] Device doesn't support head tracking.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_296B9D000, v0, v1, "[%s|%s] Head tracking is disabled on the device.", v2, v3, v4, v5, v6);
}

void AudioDSP::Core::HeadTracker::RegisterUserChoiceListener()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_296B9D000, v0, v1, "[%s|%s] Failed to register SpatialConfig listener. Unknown/unsupported device ID.", v2, v3, v4, v5, v6);
}

void IR::DataResampler<float>::Initialize()
{
  dispatch_once(&IR::getDataResamplerLog(void)::onceToken, &__block_literal_global_2);
}

{
  dispatch_once(&IR::getDataResamplerLog(void)::onceToken, &__block_literal_global_2);
}

void IR::DataResampler<float>::Initialize(os_log_t log)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = 136315138;
  v2 = "Initialize";
  _os_log_error_impl(&dword_296B9D000, log, OS_LOG_TYPE_ERROR, "IRDataResampler::%s: SRC actual input consumed = 0", &v1, 0xCu);
}

void IR::DataResampler<float>::Initialize(int a1, NSObject *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = 136315906;
  v3 = "Initialize";
  v4 = 1024;
  v5 = a1;
  v6 = 1024;
  v7 = 0;
  v8 = 1024;
  v9 = 127;
  _os_log_error_impl(&dword_296B9D000, a2, OS_LOG_TYPE_ERROR, "IRDataResampler::%s: Invalid configuration data: Quality = %u is out of bound, needs to be within [%u, %u]", &v2, 0x1Eu);
}

void IR::DelayLine<float>::process()
{
  __assert_rtn("process", "DelayLine.cpp", 737, "inNumFramesToProcess < delayLineLen - padOffset");
}

{
  __assert_rtn("process", "DelayLine.cpp", 646, "inNumFramesToProcess <= delayLineLen - padOffset");
}

{
  __assert_rtn("process", "DelayLine.cpp", 689, "numSubBlocksRemaining > 0");
}

{
  __assert_rtn("process", "DelayLine.cpp", 616, "phaseIndex < mFractionalPhases");
}

{
  __assert_rtn("process", "DelayLine.cpp", 523, "inInputData");
}

void IR::DelayLine<float>::processPolyphaseQ22_10()
{
  __assert_rtn("processPolyphaseQ22_10", "DelayLine.cpp", 207, "phaseIndex < mFractionalPhases");
}

{
  __assert_rtn("processPolyphaseQ22_10", "DelayLine.cpp", 228, "inNumFramesToProcess + padOffset <= mDelayLine.size()");
}

void IR::IRDirectivityMagnitude::computeMagnitudes()
{
  __assert_rtn("computeMagnitudes", "IRDirectivityMagnitude.cpp", 36, "inFilterKernels.size()>0U");
}

{
  __assert_rtn("computeMagnitudes", "IRDirectivityMagnitude.cpp", 34, "outMagnitudes.size() >= mBandCount");
}

void IR::getFilePtr()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void IR::IRDataLoader::Implementation::create()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void IR::IRDataLoader::Implementation::loadPrivate()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_296B9D000, v0, OS_LOG_TYPE_DEBUG, "%s%s: Fetched personalized HRIR type %u from cache", v1, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void IR::IRDataLoader::Implementation::loadPrivate(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = (*(*a2 + 16))(a2);
  v6 = 136315650;
  v7 = v4;
  v8 = 2080;
  v9 = "loadPrivate";
  v10 = 2080;
  v11 = v5;
  _os_log_error_impl(&dword_296B9D000, a3, OS_LOG_TYPE_ERROR, "%s%s: IRData construction error: %s", &v6, 0x20u);
}

void IR::IRDataLoader::Implementation::addIRDataToCache()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void IR::IRDataLoader::Implementation::loadAndDecode()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_296B9D000, v0, OS_LOG_TYPE_ERROR, "%s%s: could not generate panning IR data for layout tag %u", v1, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void IR::IRDataLoader::writeIRFile()
{
  v4 = *MEMORY[0x29EDCA608];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2_1();
  v3 = v0;
  _os_log_debug_impl(&dword_296B9D000, v1, OS_LOG_TYPE_DEBUG, "%s: Filter Written: %s", v2, 0x16u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void IR::FFTSubFilterData<float>::FFTSubFilterData(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 48) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 24) = v6;

    operator delete(v6);
  }
}

void _ZN2IR16FFTSubFilterDataIDF16_EC2Ejj_cold_1(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_2(a1);
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[3] = v6;

    operator delete(v6);
  }
}

void IR::PersonalizedIRData::Implementation::RegisterObservers()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  v3 = v0;
  _os_log_error_impl(&dword_296B9D000, v1, OS_LOG_TYPE_ERROR, "[%s|%s] BTCloudServicesSoundProfile observer registration failed. Error: %u", v2, 0x1Cu);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  v2 = "RegisterObservers";
  _os_log_debug_impl(&dword_296B9D000, v0, OS_LOG_TYPE_DEBUG, "[%s|%s] BTCloudServicesSoundProfile observer is registered.", v1, 0x16u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1(&dword_296B9D000, v0, v1, "[%s|%s] personalizedHRTFAllowed listener is registered for device ID: %u.", v2, v3, v4);
}

void IR::PersonalizedIRData::Implementation::UnregisterPersonalizedHRTFAllowedListener()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1(&dword_296B9D000, v0, v1, "[%s|%s] personalizedHRTFAllowed listener is unregistered for device ID: %u", v2, v3, v4);
}

void IR::PersonalizedIRData::Implementation::UnregisterBTCServicesAndMAObservers()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  v2 = "UnregisterBTCServicesAndMAObservers";
  _os_log_debug_impl(&dword_296B9D000, v0, OS_LOG_TYPE_DEBUG, "[%s|%s] BTCloudServicesSoundProfile observer is unregistered.", v1, 0x16u);
}

void IR::PersonalizedIRData::Implementation::GetCFData()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_33);
}

void IR::DataCache::DownloadAndCacheCFData()
{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void IR::DataCache::parseSoundProfileAndAddToCache()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void IR::DataCache::addToCFDataCachePrivate()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void IR::ComplexDataCircBuffer::Implementation::getFFTBufferVec(void *a1)
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    v2 = OUTLINED_FUNCTION_0_3();
    __cxa_atexit(v2, &unk_2A18B8290, v3);
    __cxa_guard_release(&_MergedGlobals_0);
  }

  *a1 = &unk_2A18B8290;
}

void IR::ComplexDataCircBuffer::getFFTBufferVec(void *a1)
{
  if (__cxa_guard_acquire(&qword_2A18B8280))
  {
    v2 = OUTLINED_FUNCTION_0_3();
    __cxa_atexit(v2, &unk_2A18B82A8, v3);
    __cxa_guard_release(&qword_2A18B8280);
  }

  *a1 = &unk_2A18B82A8;
}

void IR::ComplexDataCircBuffer::getSampleDataPtrs(void *a1)
{
  if (__cxa_guard_acquire(&qword_2A18B8288))
  {
    __cxa_atexit(std::vector<float *>::~vector[abi:ne200100], &unk_2A18B82C0, &dword_296B9D000);
    __cxa_guard_release(&qword_2A18B8288);
  }

  *a1 = &unk_2A18B82C0;
}

void IR::MPResampler<float>::Interpolate()
{
  __assert_rtn("Interpolate", "MPResampler.cpp", 210, "outSig.size() >= mNumPositiveFreq");
}

{
  __assert_rtn("Interpolate", "MPResampler.cpp", 209, "inSig.size() >= mNumPositiveFreq");
}

void j___ZN2IR15FFTFilterKernelIDF16_E10initializeEjjb()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_E11storeCoeffsEPKDF16_jP17MultiRadixRealFFT()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_E11storeCoeffsEPKDF16_jP17MultiRadixRealFFTNS_31FFTFilterOptimizationParametersEDF16_()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_E5resetEv()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_EC1ERKS1_()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_EC1Ev()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_EC2ERKS1_()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_EC2Ejjb()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_ED1Ev()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_ED2Ev()
{
    ;
  }
}

void j___ZN2IR15FFTFilterKernelIDF16_EaSERKS1_()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::accumulate()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::initialize()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::calculateFIRFilterLength()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::reset()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::scale()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::FFTFilterKernel()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void IR::FFTFilterKernel<float>::~FFTFilterKernel()
{
    ;
  }
}

{
    ;
  }
}

void IR::FFTFilterKernel<float>::operator=()
{
    ;
  }
}

void j___ZN2IR17FixedIntegerDelayIDF16_EC2Ejb()
{
    ;
  }
}

void IR::FixedIntegerDelay<float>::reset()
{
    ;
  }
}

void IR::FixedIntegerDelay<float>::FixedIntegerDelay()
{
    ;
  }
}

{
    ;
  }
}

void IR::FFTFilter<float>::~FFTFilter()
{
    ;
  }
}

void j___ZNK2IR15FFTFilterKernelIDF16_E16getFFTSubFiltersEv()
{
    ;
  }
}

void j___ZNK2IR15FFTFilterKernelIDF16_E18getMaxFilterLengthEv()
{
    ;
  }
}

void j___ZNK2IR15FFTFilterKernelIDF16_E18getPartitionLengthEv()
{
    ;
  }
}

void j___ZNK2IR15FFTFilterKernelIDF16_E25getNumActiveFFTSubFiltersEv()
{
    ;
  }
}

void j___ZNK2IR15FFTFilterKernelIDF16_E31getComplexMultiplicationLengthsEv()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::getFFTSubFilters()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::getMaxFilterLength()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::getPartitionLength()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::getNumActiveFFTSubFilters()
{
    ;
  }
}

void IR::FFTFilterKernel<float>::getComplexMultiplicationLengths()
{
    ;
  }
}

void IR::IRData::getInterpolatedTimeDomainCoeffs<std::vector<float>>()
{
    ;
  }
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  MEMORY[0x2A1C6FB48](this);
}

{
  MEMORY[0x2A1C6FB50](this);
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  MEMORY[0x2A1C6FBD0](this);
}

{
  MEMORY[0x2A1C6FBD8](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE08]();
}

{
  return MEMORY[0x2A1C6FE10]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
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