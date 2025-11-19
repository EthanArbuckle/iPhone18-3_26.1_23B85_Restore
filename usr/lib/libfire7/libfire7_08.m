uint64_t BlueFin::GlPeKF::GetGllStartupType(BlueFin::GlPeKF *this)
{
  v1 = (this + 57288);
  v2 = *(*(this + 7631) + 36);
  if (!v2)
  {
    v2 = *v1;
    if (*v1)
    {
      if (*(v2 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v2 + 3040), *(v2 + 3040))) >= 160000.0)
      {
        return 0;
      }

      v3 = *(v2 + 3072);
      if (v3 > 3 || v3 == 1)
      {
        return 0;
      }

      else
      {
        return *((*(*(this + 2148) + 240))(this + 17184) + 1) ^ 1u;
      }
    }
  }

  return v2;
}

double BlueFin::GlPeNavGnssState::NormalizePos(BlueFin::GlPeNavGnssState *this)
{
  v1 = *(this + 1);
  v2 = 0x4056800000000000;
  if (v1 > 90.0 || (v2 = 0xC056800000000000, v1 < -90.0))
  {
    *(this + 1) = v2;
  }

  result = *(this + 2);
  if (fabs(result) > 180.0)
  {
    v4 = result / 360.0;
    if (result / 360.0 <= 0.0)
    {
      v5 = 0.0;
      if (result / 360.0 < 0.0)
      {
        v5 = ceil(v4 + -0.5);
      }
    }

    else
    {
      v5 = floor(v4 + 0.5);
    }

    result = result + v5 * -360.0;
    *(this + 2) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeKF::resetDtsIfGood(uint64_t this, int8x16_t a2, int8x16_t a3)
{
  if (*(this + 57388) < 0x2EE1u)
  {
    v4 = *(this + 57396);
    if (v4 > 0x2EE0)
    {
      return this;
    }

    *(this + 57388) = v4;
    v3 = *(this + 57392);
  }

  else if (*(this + 61952))
  {
    v3 = 0;
  }

  else
  {
    a2.i64[0] = *(*(this + 60968) + 2632);
    if (*a2.i64 == 4294967300.0)
    {
      v5 = -1;
    }

    else if (*a2.i64 >= 0.5)
    {
      *a2.i64 = *a2.i64 + 0.5;
      *a3.i64 = *a2.i64 - trunc(*a2.i64 * 2.32830644e-10) * 4294967300.0;
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      a3.i64[0] = vbslq_s8(vnegq_f64(v6), a3, a2).u64[0];
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = a3.i64[0];
      }

      v5 = *a2.i64;
    }

    else
    {
      v5 = 1;
    }

    v3 = 0;
    *(this + 57388) = v5;
  }

  *(this + 57384) = v3;
  return this;
}

void BlueFin::GlPeFiltPos::UpdateFiltPos(uint64_t a1, int a2, __int128 *a3, uint64_t *a4, int a5, int a6, int a7, char a8)
{
  v234 = *MEMORY[0x29EDCA608];
  if (*(a3 + 7) <= 0.0)
  {
    goto LABEL_109;
  }

  v231 = 0x200000002;
  __src = xmmword_298A436D0;
  v225 = xmmword_298A436E0;
  BlueFin::lla2ned((a1 + 16), a3, 0, v221);
  v16 = (a2 - *a1) * 0.001;
  v17 = *(a1 + 48);
  v18 = *(a1 + 60);
  v19 = sqrtf(v18);
  if (v19 >= v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(a1 + 48);
  }

  v21 = *(a3 + 9);
  if (v21 >= 1000000.0)
  {
    v22 = fmaxf(v20, 20.0);
  }

  else
  {
    if (*(a3 + 8) >= v20)
    {
      v20 = *(a3 + 8);
    }

    v22 = sqrtf(v21);
    if (v22 < v20)
    {
      v22 = v20;
    }
  }

  v23 = sqrt(*(v221 + 1) * *(v221 + 1) + *v221 * *v221);
  v24 = *(a1 + 40) + (fmaxf(v22, 10.0) * v16);
  v25 = (v16 > 6.0) & ~a5 & (*(a3 + 64) ^ 1);
  v26 = *(a3 + 6);
  v27 = v26 * 3.0;
  if (v27 < 400.0)
  {
    v27 = 400.0;
  }

  if (a6)
  {
    v28 = 400.0;
    if (v26 >= 400.0)
    {
      v28 = *(a3 + 6);
    }

    if (!a7)
    {
      v26 = v28;
    }

    if (v24 >= v26)
    {
      v26 = v24;
    }

    v29 = v26 * 3.0;
    if (v29 < 200.0)
    {
      v29 = 200.0;
    }

    v30 = v23 > v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v24;
  v32 = *(a3 + 8);
  v33 = a5 & (v32 > 10.0);
  if (v21 >= 9.0)
  {
    v33 = 0;
  }

  v34 = v17 - v32;
  if (v34 < 0.0)
  {
    v34 = -v34;
  }

  v35 = sqrtf(v18 + fmaxf(v21, 9.0)) * 3.0;
  v36 = *(a1 + 32) - *(a3 + 2);
  if (v36 < 0.0)
  {
    v36 = -v36;
  }

  v37 = (sqrtf((*(a1 + 44) * *(a1 + 44)) + (*(a3 + 7) * *(a3 + 7))) * 3.0);
  v38 = v25 | v33;
  v39 = "";
  if (v25)
  {
    v40 = "T";
  }

  else
  {
    v40 = "";
  }

  if ((v38 & 1) == 0)
  {
    if (v27 < v31 || v30)
    {
      v40 = "";
      if (*(a3 + 65) != 1 || (a8 & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v34 > v35 || v36 > v37)
      {
        goto LABEL_35;
      }
    }

    else if (v34 > v35 || v36 > v37)
    {
      v40 = "";
      goto LABEL_35;
    }

    v45 = 1;
    if (*a1)
    {
      goto LABEL_47;
    }

LABEL_71:
    LOBYTE(v46) = *(a3 + 64);
    goto LABEL_72;
  }

LABEL_35:
  v41 = "U";
  if (v27 >= v31)
  {
    v41 = "";
  }

  if (v30)
  {
    v42 = "P";
  }

  else
  {
    v42 = "";
  }

  v43 = "M";
  if (!a7)
  {
    v43 = "";
  }

  v44 = "S";
  if (v34 <= v35)
  {
    v44 = "";
  }

  if (v36 > v37)
  {
    v39 = "A";
  }

  GlCustomLog(14, "Reset GlPeFiltPos %s%s%s%s%s%s\n", v40, v41, v42, v43, v44, v39);
  GlCustomLog(15, "GlPeFiltPos:fdt,%.1f;dPosDif,%.1f;fHorzUncProp,%.1f;m_fPosSigma,%.1f;\n", v16, v23, v31, *(a3 + 6));
  v45 = 0;
  if (!*a1)
  {
    goto LABEL_71;
  }

LABEL_47:
  v46 = *(a3 + 64);
  if ((v45 & *(a1 + 8) & 1) == 0)
  {
LABEL_72:
    *a1 = a2;
    *(a1 + 16) = *a3;
    v55 = *(a3 + 2);
    *(a1 + 32) = v55;
    *&v56 = *(a3 + 3);
    DWORD2(v56) = *(a3 + 8);
    v57 = vmul_f32(*&v56, *&v56);
    v58 = *(a3 + 10);
    *(&v56 + 3) = v58;
    *(a1 + 40) = v56;
    *(a1 + 56) = 0;
    v59 = *(a3 + 9);
    if (v46)
    {
      v59 = 0.1;
    }

    *(a1 + 60) = v59;
    *(a1 + 68) = v59;
    *(a1 + 64) = *(a3 + 11);
    *(a1 + 96) = 0;
    *(a1 + 120) = 0;
    *(a1 + 88) = v57.f32[0];
    v60 = v59;
    *(a1 + 128) = v60;
    *(a1 + 232) = 0;
    *(a1 + 256) = 0;
    *(a1 + 216) = 0x200000002;
    *(a1 + 224) = v57.f32[0];
    *(a1 + 264) = v60;
    *(a1 + 368) = 0;
    *(a1 + 392) = 0;
    *(a1 + 488) = 0x200000002;
    *(a1 + 352) = 0x200000002;
    *(a1 + 360) = v57.f32[1];
    *(a1 + 400) = v60;
    *(a1 + 72) = *(a3 + 12);
    v61 = *(a3 + 52);
    *(a1 + 76) = vrev64_s32(v61);
    v62 = *(a3 + 15);
    *(a1 + 84) = v62;
    *(a1 + 504) = 0;
    *(a1 + 528) = 0;
    *(a1 + 624) = 0x200000002;
    *(a1 + 496) = vmul_f32(v61, v61).f32[0];
    *(a1 + 536) = v62;
    v63 = 0;
    if (*(a3 + 6) < 200.0)
    {
      *(a1 + 8) = 1;
    }

    goto LABEL_103;
  }

  v47 = __sincosf_stret(*(a1 + 52));
  v221[0] = __src;
  v221[1] = v224;
  v221[2] = v225;
  v221[3] = v226;
  v222 = 0x200000002;
  v218[0] = 0u;
  v219 = 0u;
  v48 = *(a1 + 4);
  v220 = 0x200000002;
  v49 = (a2 - v48) * 0.001;
  if (!v48)
  {
    v49 = v16;
  }

  v50 = *(a3 + 65);
  if (v50 == 1 && (v46 & 1) == 0 || (*a1 = a2, ((v50 | v46) & 1) == 0) || (v64 = 0.0, v49 > 1.0))
  {
    if ((a5 & 1) == 0)
    {
      *(v221 + 1) = v49;
    }

    *&v218[0] = 0x3FE0000000000000;
    *(&v219 + 1) = 0x4000000000000000;
    v51 = *(a3 + 17);
    if (v51 == 4)
    {
      v52 = 10.0;
    }

    else
    {
      if (v51 != 2)
      {
LABEL_81:
        v64 = v49;
        goto LABEL_82;
      }

      v52 = 3.0;
    }

    *v218 = v52;
    *(&v219 + 1) = v52;
    goto LABEL_81;
  }

LABEL_82:
  v216 = *(a1 + 16);
  v217 = *(a1 + 32);
  v65 = *(a1 + 48);
  v66 = (v47.__sinval * v65);
  v67 = *(a1 + 56);
  v144 = (v47.__cosval * v65);
  v68 = v67;
  v207 = v64 * v144;
  v208 = v64 * v66;
  v209 = v64 * v67;
  BlueFin::ned2lla(&v216, &v207, &v213);
  v69 = *(&v213 + 1);
  v70 = v213;
  v216 = v213;
  v55 = v214;
  v217 = v214;
  LODWORD(v71) = *(a1 + 72);
  v72 = *(a1 + 76);
  v73 = *&v71 + v72;
  v215 = 0;
  BlueFin::Matrix::mult(&v213, (a1 + 88), 1, v221, v71);
  BlueFin::Matrix::mult(a1 + 88, v221, &v213);
  BlueFin::Matrix::operator+=(a1 + 88, v218);
  v74 = (a1 + 224);
  BlueFin::Matrix::mult(&v213, (a1 + 224), 1, v221, v75);
  v76 = BlueFin::Matrix::mult(a1 + 224, v221, &v213);
  BlueFin::Matrix::operator+=(v76, v218);
  v77 = (a1 + 360);
  BlueFin::Matrix::mult(&v213, (a1 + 360), 1, v221, v78);
  v79 = BlueFin::Matrix::mult(a1 + 360, v221, &v213);
  BlueFin::Matrix::operator+=(v79, v218);
  v80 = (a1 + 496);
  BlueFin::Matrix::mult(&v213, (a1 + 496), 1, v221, v81);
  v82 = BlueFin::Matrix::mult(a1 + 496, v221, &v213);
  BlueFin::Matrix::operator+=(v82, v218);
  *(a1 + 4) = a2;
  if ((*(a3 + 65) & 1) == 0)
  {
    v208 = 0.0;
    v210 = 0;
    v84 = (*(a3 + 6) * *(a3 + 6));
    v207 = v84;
    v85 = *(a3 + 9);
    v212 = 0x200000002;
    v211 = v85;
    v204[1] = 0.0;
    v204[4] = 0.0;
    v204[0] = v84;
    v206 = 0x200000002;
    v205 = v85;
    if (*(a3 + 64) == 1)
    {
      v207 = v84 * 5.0;
      v211 = v85 * 5.0;
      v204[0] = v84 * 5.0;
      v205 = v85 * 5.0;
    }

    v198[1] = 0.0;
    v199 = v233;
    v200 = 0;
    v202 = v232;
    v86 = *(a3 + 7) * *(a3 + 7);
    v193 = v233;
    v192[1] = 0.0;
    v194 = 0;
    v196 = v232;
    v203 = 0x200000002;
    v198[0] = v86;
    v87 = *(a3 + 14);
    v192[0] = (*(a3 + 13) * *(a3 + 13));
    v88 = *(a3 + 15);
    v197 = 0x200000002;
    v195 = v88;
    v201 = v85;
    v89 = __sincosf_stret(*(a3 + 10));
    v190 = *a3;
    v191 = *(a3 + 2);
    v90 = *(a3 + 8);
    v91 = (v89.__cosval * v90);
    v92 = (v89.__sinval * v90);
    BlueFin::lla2ned(&v190, &v216, 0, v189);
    *v188 = v189[0];
    *&v188[1] = v91 - v144;
    v188[16] = 0x200000001;
    *v187 = v189[1];
    *&v187[1] = v92 - v66;
    v187[16] = 0x200000001;
    *v186 = v189[2];
    *&v186[1] = 0.0 - v68;
    v186[16] = 0x200000001;
    v93 = *(a3 + 12);
    v94 = v93 - v73;
    v95 = (v93 - v73);
    if (v95 <= 149896.229)
    {
      if (v95 >= -149896.229)
      {
LABEL_91:
        v98 = (v87 - *(a1 + 76));
        v185[0] = v94;
        v185[1] = v98;
        *&v185[16] = 0x200000001;
        v99 = *(a1 + 216);
        if (v99)
        {
          memcpy(&__dst, (a1 + 88), 32 * v99);
        }

        v184 = __PAIR64__(*(a1 + 220), v99);
        BlueFin::Matrix::operator+=(&__dst, &v207);
        v174[16] = 0x200000002;
        v174[0] = *(&v178 + 1);
        *&v174[1] = -*(&__dst + 1);
        *&v174[4] = -*&v178;
        v174[5] = __dst;
        BlueFin::Matrix::operator/=(v174, *&__dst * *(&v178 + 1) - *(&__dst + 1) * *&v178);
        BlueFin::Matrix::operator*(a1 + 88, v174, v175);
        if (&__dst != v74)
        {
          v100 = *(a1 + 304);
          v180 = *(a1 + 288);
          v181 = v100;
          v101 = *(a1 + 336);
          v182 = *(a1 + 320);
          v183 = v101;
          v102 = *(a1 + 240);
          __dst = *v74;
          v177 = v102;
          v103 = *(a1 + 272);
          v178 = *(a1 + 256);
          v179 = v103;
          v184 = *(a1 + 352);
        }

        BlueFin::Matrix::operator+=(&__dst, v204);
        v173[16] = 0x200000002;
        v173[0] = *(&v178 + 1);
        *&v173[1] = -*(&__dst + 1);
        *&v173[4] = -*&v178;
        v173[5] = __dst;
        BlueFin::Matrix::operator/=(v173, *&__dst * *(&v178 + 1) - *(&__dst + 1) * *&v178);
        BlueFin::Matrix::operator*(a1 + 224, v173, v174);
        if (&__dst != v77)
        {
          v104 = *(a1 + 440);
          v180 = *(a1 + 424);
          v181 = v104;
          v105 = *(a1 + 472);
          v182 = *(a1 + 456);
          v183 = v105;
          v106 = *(a1 + 376);
          __dst = *v77;
          v177 = v106;
          v107 = *(a1 + 408);
          v178 = *(a1 + 392);
          v179 = v107;
          v184 = *(a1 + 488);
        }

        BlueFin::Matrix::operator+=(&__dst, v198);
        v172[16] = 0x200000002;
        v172[0] = *(&v178 + 1);
        *&v172[1] = -*(&__dst + 1);
        *&v172[4] = -*&v178;
        v172[5] = __dst;
        BlueFin::Matrix::operator/=(v172, *&__dst * *(&v178 + 1) - *(&__dst + 1) * *&v178);
        BlueFin::Matrix::operator*(a1 + 360, v172, v173);
        if (&__dst != v80)
        {
          v108 = *(a1 + 576);
          v180 = *(a1 + 560);
          v181 = v108;
          v109 = *(a1 + 608);
          v182 = *(a1 + 592);
          v183 = v109;
          v110 = *(a1 + 512);
          __dst = *v80;
          v177 = v110;
          v111 = *(a1 + 544);
          v178 = *(a1 + 528);
          v179 = v111;
          v184 = *(a1 + 624);
        }

        BlueFin::Matrix::operator+=(&__dst, v192);
        v171 = 0x200000002;
        v168[0] = *(&v178 + 1);
        *&v168[1] = -*(&__dst + 1);
        v169 = -*&v178;
        v170 = __dst;
        BlueFin::Matrix::operator/=(v168, *&__dst * *(&v178 + 1) - *(&__dst + 1) * *&v178);
        BlueFin::Matrix::operator*(a1 + 496, v168, v172);
        v113 = BlueFin::Matrix::mult(v168, v175, 1, v188, v112);
        v114 = BlueFin::Matrix::mult(v167, v174, 1, v187, v113);
        v115 = BlueFin::Matrix::mult(v166, v173, 1, v186, v114);
        BlueFin::Matrix::mult(v165, v172, 1, v185, v115);
        v116 = v231;
        if (v231)
        {
          memcpy(&v155, &__src, 32 * v231);
        }

        v117 = HIDWORD(v231);
        v163 = v116;
        v164 = HIDWORD(v231);
        BlueFin::Matrix::operator-=(&v155, v175);
        BlueFin::Matrix::operator*(&v155, a1 + 88, &v146);
        v118 = v151;
        *(a1 + 152) = v150;
        *(a1 + 168) = v118;
        *(a1 + 184) = v152;
        *(a1 + 200) = v153;
        v119 = v147;
        *(a1 + 88) = v146;
        *(a1 + 104) = v119;
        v120 = v149;
        *(a1 + 120) = v148;
        *(a1 + 136) = v120;
        *(a1 + 216) = v154;
        v161 = v229;
        v162 = v230;
        v159 = v227;
        v160 = v228;
        v157 = v225;
        v158 = v226;
        v155 = __src;
        v156 = v224;
        v163 = v116;
        v164 = v117;
        BlueFin::Matrix::operator-=(&v155, v174);
        BlueFin::Matrix::operator*(&v155, a1 + 224, &v146);
        v121 = v151;
        *(a1 + 288) = v150;
        *(a1 + 304) = v121;
        v122 = v153;
        *(a1 + 320) = v152;
        *(a1 + 336) = v122;
        v123 = v147;
        *v74 = v146;
        *(a1 + 240) = v123;
        v124 = v149;
        *(a1 + 256) = v148;
        *(a1 + 272) = v124;
        *(a1 + 352) = v154;
        v161 = v229;
        v162 = v230;
        v159 = v227;
        v160 = v228;
        v157 = v225;
        v158 = v226;
        v155 = __src;
        v156 = v224;
        v163 = v116;
        v164 = v117;
        BlueFin::Matrix::operator-=(&v155, v173);
        BlueFin::Matrix::operator*(&v155, a1 + 360, &v146);
        v125 = v151;
        *(a1 + 424) = v150;
        *(a1 + 440) = v125;
        v126 = v153;
        *(a1 + 456) = v152;
        *(a1 + 472) = v126;
        v127 = v147;
        *v77 = v146;
        *(a1 + 376) = v127;
        v128 = v149;
        *(a1 + 392) = v148;
        *(a1 + 408) = v128;
        *(a1 + 488) = v154;
        v161 = v229;
        v162 = v230;
        v159 = v227;
        v160 = v228;
        v157 = v225;
        v158 = v226;
        v155 = __src;
        v156 = v224;
        v163 = v116;
        v164 = v117;
        BlueFin::Matrix::operator-=(&v155, v172);
        BlueFin::Matrix::operator*(&v155, a1 + 496, &v146);
        v129 = v151;
        *(a1 + 560) = v150;
        *(a1 + 576) = v129;
        v130 = v153;
        *(a1 + 592) = v152;
        *(a1 + 608) = v130;
        v131 = v147;
        *v80 = v146;
        *(a1 + 512) = v131;
        v132 = v149;
        *(a1 + 528) = v148;
        *(a1 + 544) = v132;
        *(a1 + 624) = v154;
        v145[0] = *v168;
        v145[1] = *v167;
        v145[2] = *v166;
        BlueFin::ned2lla(&v216, v145, &v146);
        v69 = *(&v146 + 1);
        v70 = v146;
        v55 = v147;
        v83 = v169 + v144;
        v66 = *&v167[4] + v66;
        v133 = v165[0];
        v73 = v73 + v133;
        v134 = v165[4];
        v72 = v72 + v134;
        v67 = *&v166[4] + v68;
        goto LABEL_102;
      }

      v96 = v73;
      v97 = -299792.458;
    }

    else
    {
      v96 = v73;
      v97 = 299792.458;
    }

    v73 = v96 + v97;
    v94 = v93 - v73;
    goto LABEL_91;
  }

  v83 = v144;
LABEL_102:
  *(a1 + 16) = v70;
  *(a1 + 24) = v69;
  v135.f64[0] = *(a1 + 88) + *(a1 + 224);
  v135.f64[1] = *v77;
  *(a1 + 32) = v55;
  *(a1 + 40) = vcvt_f32_f64(vsqrtq_f64(v135));
  *v135.f64 = sqrt(v83 * v83 + v66 * v66);
  *(a1 + 48) = LODWORD(v135.f64[0]);
  v58 = atan2(v66, v83);
  *(a1 + 52) = v58;
  *(a1 + 56) = v67;
  v136 = *(a1 + 128) + *(a1 + 264);
  *(a1 + 60) = v136;
  *(a1 + 64) = 0;
  v137 = *(a1 + 400);
  *(a1 + 68) = v137;
  *(a1 + 72) = v73;
  v138 = sqrt(*(a1 + 496));
  *(a1 + 76) = v72;
  *(a1 + 80) = v138;
  v139 = *(a1 + 536);
  *(a1 + 84) = v139;
  v63 = 1;
LABEL_103:
  v140 = *a4;
  *v140 = *(a1 + 16);
  *(v140 + 16) = v55;
  *a4[1] = v58;
  *a4[3] = *(a1 + 48);
  *a4[2] = *(a1 + 72);
  if (*(a3 + 65) == 1)
  {
    v141 = a4[4];
    *v141 = *(a1 + 40) * 1.5;
    *a4[5] = *(a1 + 44);
    v142 = *v141;
  }

  else
  {
    v142 = *a4[4];
    if (v63 && v142 >= (*(a1 + 40) * 1.5))
    {
      v142 = *(a1 + 40) * 1.5;
    }
  }

  *a4[6] = v142;
LABEL_109:
  v143 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::Matrix::mult(uint64_t this, const BlueFin::Matrix *a2, const BlueFin::Matrix *a3)
{
  v3 = *(a2 + 33);
  if (v3 != *(a3 + 32))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 322, "mult", "mLeft.m_NbCols == mRight.m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 322, "mLeft.m_NbCols == mRight.m_NbRows");
  }

  v4 = *(a2 + 32);
  v5 = *(a3 + 33);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = a3;
        do
        {
          v9 = 0.0;
          if (v3 >= 1)
          {
            v10 = a2;
            v11 = v8;
            v12 = v3;
            do
            {
              v13 = *v10;
              v10 = (v10 + 8);
              v14 = v13;
              v15 = *v11;
              v11 += 4;
              v9 = v9 + v14 * v15;
              --v12;
            }

            while (v12);
          }

          *(this + 32 * i + 8 * v7++) = v9;
          v8 = (v8 + 8);
        }

        while (v7 != v5);
      }

      a2 = (a2 + 32);
    }
  }

  *(this + 128) = v4;
  *(this + 132) = v5;
  return this;
}

uint64_t BlueFin::Matrix::operator-=(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 132);
  if (v2 != *(result + 132) || (v3 = *(a2 + 128), v3 != *(result + 128)))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 500, "operator-=", "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 500, "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = result;
    do
    {
      v6 = a2;
      v7 = v5;
      v8 = v2;
      if (v2 >= 1)
      {
        do
        {
          v9 = *v6++;
          *v7 = *v7 - v9;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v4;
      v5 += 4;
      a2 += 32;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t BlueFin::GlPeSlowFilter::SubmitAltEst(uint64_t this, double a2, double a3, double a4, double a5, int a6)
{
  if (a6 && (a2 < -998.0 || a3 <= 0.0))
  {
    return this;
  }

  if (a3 <= 0.0)
  {
    v13 = "fVarAltM2 > 0.0";
    DeviceFaultNotify("glpe_slowfilter.cpp", 81, "SubmitAltEst", "fVarAltM2 > 0.0");
    v14 = 81;
    goto LABEL_22;
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    v13 = "dCoeff >= 0.0 && dCoeff <= 1.0";
    DeviceFaultNotify("glpe_slowfilter.cpp", 82, "SubmitAltEst", "dCoeff >= 0.0 && dCoeff <= 1.0");
    v14 = 82;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_slowfilter.cpp", v14, v13);
  }

  v7 = 32;
  if (a6)
  {
    v7 = 64;
  }

  *(this + v7) = a2 * a4 + (1.0 - a4) * *(this + v7);
  if (a6)
  {
    v8 = 72;
  }

  else
  {
    v8 = 40;
  }

  v9 = a4 * a4 * a3 + (1.0 - a4) * (1.0 - a4) * (*(this + v8) * *(this + v8) + a5);
  if (v9 >= a3)
  {
    v9 = a3;
  }

  v10 = sqrt(v9);
  v11 = v9 < 9.0;
  v12 = 3.0;
  if (!v11)
  {
    v12 = v10;
  }

  *(this + v8) = v12;
  return this;
}

uint64_t BlueFin::GlPeGeoid::Compute(BlueFin::GlPeGeoid *this, float a2, float a3, float a4, float *a5, float *a6, int a7)
{
  *a5 = 0.0;
  if ((*this & 1) != 0 || (v14 = *(this + 1), v14 == 0.0))
  {
    *this = 0;
LABEL_4:
    BlueFin::GlPeGeoid::get(this, a2, a3);
    *a5 = v15;
    *(this + 3) = a3;
    *(this + 4) = v15;
    *(this + 2) = a2;
    v16 = 1;
    goto LABEL_5;
  }

  if (vabds_f32(a2, *(this + 2)) >= v14 || vabds_f32(a3, *(this + 3)) >= v14)
  {
    goto LABEL_4;
  }

  v16 = 0;
  *a5 = *(this + 4);
LABEL_5:
  Region = BlueFin::GlPeLatLonRegionSet::findRegion((this + 24), a2, a3);
  *(this + 1) = Region >= 0;
  v18 = a4 - *a5;
  if (Region >= 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = a7;
  }

  if (v18 >= 0.0)
  {
    v19 = 1;
  }

  if (!v19)
  {
    v18 = 0.0;
  }

  *a6 = v18;
  return v16;
}

double BlueFin::GlPeKF::FirstFixSetPosSource(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = a1 + 57156;
  if (*(a1 + 189) == 1)
  {
    *(a2 + 96) = 0;
    v5 = *(a1 + 57288);
    if (v5 && *(v5 + 3008) == 1)
    {
      result = vaddvq_f64(vmulq_f64(*(v5 + 3040), *(v5 + 3040)));
      if (result < 160000.0)
      {
        *(a2 + 96) = 4;
      }
    }

    *(a2 + 1076) = 2;
    return result;
  }

  if (!*(a1 + 57160))
  {
    v15 = *(a1 + 57288);
    if (v15)
    {
      if (*(v15 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v15 + 3040), *(v15 + 3040))) < 160000.0)
      {
        *(a1 + 57160) = 2;
        *(*(a1 + 61032) + 3008) = 0;
      }
    }
  }

  PosHulaSource = BlueFin::GlPeKF::GetPosHulaSource(a1, (a1 + 17184));
  v10 = PosHulaSource;
  *(a2 + 96) = PosHulaSource;
  if (a3[504] == 1)
  {
    v11 = *(v4 + 132);
    if (v11 && *(v11 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v11 + 3040), *(v11 + 3040))) < 160000.0 || *(a1 + 11224) == 1)
    {
      *(a2 + 96) = PosHulaSource | 4;
      v12 = BlueFin::GlSetBase::Cnt((a3 + 24));
      if ((a3[508] & 1) == 0 && v12)
      {
        *(a2 + 96) = v10 | 5;
      }

      v13 = **(v4 + 3852);
      if (v11)
      {
        *(v11 + 3009) = 1;
      }

      *(v4 + 56) = v13;
      *(v4 + 9) = 1;
      *v4 = 0x100000001;
    }

    goto LABEL_30;
  }

  if (*(a2 + 8) == 1)
  {
    v14 = *(a3 + 3);
    if (!*v14)
    {
      v16 = a3[32];
      if (v16 < 2)
      {
        goto LABEL_30;
      }

      v17 = v16 - 1;
      v18 = v14 + 1;
      while (!*v18++)
      {
        if (!--v17)
        {
          goto LABEL_30;
        }
      }
    }

    *(a2 + 96) = PosHulaSource | 2;
  }

LABEL_30:
  *(a2 + 100) = BlueFin::GlPeKF::GetPosConfidence(a1);
  v33 = 0;
  v32 = 0;
  (*(*(a1 + 17184) + 216))(a1 + 17184, &v33, &v32, a1 + 61476, a1 + 61477);
  v20 = *((*(*(a1 + 17184) + 240))(a1 + 17184) + 1);
  IsVdrValid = BlueFin::GlPeKF::IsVdrValid(a1);
  if (BlueFin::GlPeExtLoc::GetExtSensStatus(a1 + 57152, v28, v20, IsVdrValid, *(a1 + 184)))
  {
    v22 = v28[1];
    *(a2 + 800) = v28[0];
    *(a2 + 816) = v22;
    v23 = v28[3];
    *(a2 + 832) = v28[2];
    *(a2 + 848) = v23;
    *(a2 + 912) = v31;
    result = *&v29;
    v24 = v30;
    *(a2 + 880) = v29;
    *(a2 + 896) = v24;
    *(a2 + 864) = v28[4];
    if (*(v4 + 124) == 1)
    {
      v25 = *(v4 + 132);
      if (v25)
      {
        if (*(v25 + 3008) == 1)
        {
          result = vaddvq_f64(vmulq_f64(*(v25 + 3040), *(v25 + 3040)));
          if (result < 160000.0 && (*(v25 + 3072) - 2) <= 3)
          {
            v26 = *(v4 + 3876);
            v27 = *(v26 + 3032);
            *(a1 + 57216) = *(v26 + 3016);
            *(v4 + 76) = v27;
            result = *(v26 + 3064);
            *(v4 + 100) = *(v26 + 3040);
            *(v4 + 116) = result;
            *(v4 + 84) = **(v4 + 3852);
          }
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeKF::GetPosHulaSource(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 57156;
  v5 = *a2;
  v6 = a2 + *(*a2 - 24);
  v7 = BlueFin::GlSetBase::Cnt((v6 + 264));
  LOBYTE(v6) = BlueFin::GlSetBase::Cnt((v6 + 352));
  v8 = (*(v5 + 72))(a2);
  v27 = 0;
  v26 = 0;
  (*(*a2 + 216))(a2, &v27, &v26, a1 + 61476, a1 + 61477);
  if (!(v7 | v6) && (v8 >= v27 || (*(*a2 + 56))(a2) < 2) || (*(v4 + 52) & 1) != 0)
  {
    v9 = 0;
  }

  else if (v7 < v26)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = *(a2 + *(*a2 - 24) + 256);
  v11 = (16 * v10) & 0x80 | v9 | (v10 << 6) & 0x100;
  if (*(v4 + 12) == 1)
  {
    v12 = v11 | 0x220;
  }

  else if (*(a1 + 61476) == 1)
  {
    v12 = v11 | 0x200;
  }

  else if (*(a1 + 61477))
  {
    v12 = v11 | 0x20;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 132);
  if (v13)
  {
    if (*(v13 + 3228))
    {
      v12 |= 0x20000u;
    }

    if (*(v13 + 3229))
    {
      v12 |= 0x40000u;
    }

    if (*(v13 + 1162) == 1)
    {
      if (*(v4 + 11))
      {
        v14 = 8;
      }

      else
      {
        v14 = 16;
      }

      v12 |= v14;
    }

    if (*(v13 + 4224) == 1 && (*(v13 + 4226) & 1) == 0)
    {
      if (*(v13 + 4220) <= 3)
      {
        v15 = 64;
      }

      else
      {
        v15 = 0x100000;
      }

      v12 |= v15;
    }

    if (*(v13 + 4272))
    {
      v12 |= 0x4000u;
    }
  }

  if (*(v4 + 13))
  {
    v16 = v12 | 0x800000;
  }

  else
  {
    v16 = v12;
  }

  if (*(*(v4 + 276) + 1804))
  {
    v17 = v16 | 0x400000;
  }

  else
  {
    v17 = v16;
  }

  if ((*(*(a1 + 17184) + 48))())
  {
    v18 = v17 | 0x200000;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v4 + 132);
  if (v19 && *(v19 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v19 + 3040), *(v19 + 3040))) < 160000.0)
  {
    v20 = *(v19 + 3009);
    v21 = (v20 & 1) != 0 || *(v4 + 4) == 2;
    v24 = (*(*a2 + 56))(a2);
    if (v21)
    {
      if (v20)
      {
        v18 = v18 | 4;
        v23 = 1;
        *(v4 + 4) = 1;
        goto LABEL_62;
      }

      return v18;
    }

    v18 = v18 | 0x8000;
    v23 = 4;
    *(v4 + 4) = 4;
    if (v24 != 1)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v22 = *(v4 + 4);
  if (v22 != 2)
  {
    if (v22 != 4)
    {
      return v18;
    }

    v18 = v18 | 0x8000;
    if ((*(*a2 + 56))(a2) != 1)
    {
LABEL_61:
      v23 = 4;
      goto LABEL_62;
    }

LABEL_60:
    if (*v4 == 1)
    {
      return v18;
    }

    goto LABEL_61;
  }

  v18 = v18 | 0x10000;
  if ((*(*a2 + 56))(a2) != 1 || *v4 != 1)
  {
    v23 = 2;
LABEL_62:
    *v4 = v23;
  }

  return v18;
}

uint64_t BlueFin::GlPeNavGnssKF::GetTimeSinceFullFixMs(BlueFin::GlPeNavGnssKF *this)
{
  v1 = *(this + 402);
  if (v1)
  {
    return (*(this + *(*this - 24) + 200) - v1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BlueFin::GlPeNavGnssKF::GetInfoForPosHulaSource(uint64_t this, unsigned int *a2, unsigned __int8 *a3, BOOL *a4, BOOL *a5)
{
  *a2 = 5000;
  v5 = *(this + 2272);
  if (*(v5 + 2) < 1 || *(v5 + 45))
  {
    if (*(*(this + 2248) + 1989))
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = *(this + 1800);
    }
  }

  else
  {
    LOBYTE(v6) = 5;
  }

  *a3 = v6;
  *a4 = *(this + 2168);
  *a5 = *(this + 2169);
  return this;
}

uint64_t BlueFin::GlPeKfPool::AdjustBc(BlueFin::GlPeKfPool *this, float a2)
{
  v3 = *(this + 4659);
  v4 = (**v3)(v3, a2);
  if (v4)
  {
    v5 = 0;
    v6 = this + 37248;
    do
    {
      v7 = *&v6[v5];
      if (v7 != v3 && ((*v7)[48])(v7))
      {
        v8 = *&v6[v5] + *(**&v6[v5] - 24);
        *(v8 + 88) = *(v8 + 88) + v4 * 299792.458;
      }

      v5 += 8;
    }

    while (v5 != 24);
    *(this + *(*this - 24) + 88) = *(*(*v3 - 3) + v3 + 88);
  }

  return v4;
}

uint64_t BlueFin::GlPeMsmtMgr::Adjust_IntPr(uint64_t this, int a2)
{
  v2 = *(this + 18792);
  v7 = v2 + 1152;
  v8 = *(v2 + 1186) + 1;
  if (*(v2 + 1184) > v8)
  {
    v4 = this;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v7, v6);
      this = BlueFin::GlSignalIdArray::Get(*(v4 + 18792), v6);
      v5 = *(this + 232);
      if (v5 != -1)
      {
        *(this + 232) = v5 + a2;
      }
    }

    while (v8 < *(v7 + 32));
  }

  return this;
}

uint64_t BlueFin::GlPePosReport::GlPePosReport(uint64_t a1, unsigned int a2, int a3, int a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13)
{
  *a1 = &unk_2A1F130E0;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = *(a8 + 2568);
  }

  if (v24 <= 0xFF9222FE)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(a8, 0, 1, v49, v25);
  v26 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(a8, 2u, 1, &v44, v25);
  *(a1 + 8) = v24;
  *(a1 + 16) = v49[0];
  LODWORD(v26) = v50;
  LOWORD(v27) = v51;
  *&v28 = v27 * 0.000001;
  v29 = *&v28 + *&v26 * 0.001;
  LOWORD(v28) = v52;
  *&v30 = v28;
  *(a1 + 24) = v29 + *&v30 * 0.000000001;
  *(a1 + 32) = v44;
  v31 = vuzp1_s8(v45, v45);
  *(a1 + 34) = v31;
  LOWORD(v31) = v46;
  LOWORD(v30) = v47;
  *&v32 = v30;
  v33 = v31 + *&v32 * 0.001;
  LOWORD(v32) = v48;
  *(a1 + 40) = v33 + v32 * 0.000001;
  v34 = *(a8 + 2736);
  if (v34 == 4294967300.0)
  {
    v34 = 4294967300.0;
    if (*(a8 + 2576))
    {
      v34 = *(a8 + 2632);
    }
  }

  v35 = 0;
  *(a1 + 48) = v34;
  *(a1 + 56) = 0;
  *(a1 + 60) = a4;
  *(a1 + 64) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = a11;
  *(a1 + 88) = a5;
  *(a1 + 608) = a12;
  *(a1 + 616) = a13;
  do
  {
    v36 = (a1 + v35);
    v37 = *(a6 + v35);
    v38 = *(a6 + v35 + 16);
    v39 = *(a6 + v35 + 48);
    v36[8] = *(a6 + v35 + 32);
    v36[9] = v39;
    v36[6] = v37;
    v36[7] = v38;
    v40 = *(a7 + v35);
    v41 = *(a7 + v35 + 16);
    v42 = *(a7 + v35 + 48);
    v36[24] = *(a7 + v35 + 32);
    v36[25] = v42;
    v36[22] = v40;
    v36[23] = v41;
    v35 += 64;
  }

  while (v35 != 256);
  return a1;
}

uint64_t BlueFin::GlPeReqBag::UpdateFixStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v12 = (a1 + 3233);
  v13 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v10);
    if (result)
    {
      result = (*(*result + 240))(result, a2, a3, a4, a5);
    }

    v10 += 8;
  }

  while (v10 != 576);
  *v12 = v13;
  return result;
}

_BYTE *BlueFin::GlPeKF::InvalidateHulaLocMeas(BlueFin::GlPeKF *this)
{
  v2 = this + 57156;
  v3 = *(this + 7629);
  if (*(v3 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v3 + 3040), *(v3 + 3040))) < 160000.0 && (*((*(*(this + 2148) + 240))() + 1) & 1) == 0 && (*(v2 + 943) || *v2 != 1))
  {
    *v2 = 2;
  }

  *(*(this + 7629) + 3008) = 0;
  if (v2[11] == 1)
  {
    v2[4044] = 0;
  }

  if (*((*(*(this + 2148) + 240))(this + 17184) + 1) == 1)
  {
    v4 = *(this + 7629);
    if ((*(v4 + 3072) & 0xFFFFFFFE) == 2)
    {
      *(v4 + 3072) = 1;
    }
  }

  *((*(*(this + 2148) + 240))(this + 17184) + 1) = 0;
  v5 = *(this + 7629);
  if (v5)
  {
    *(v5 + 2988) = 0;
  }

  result = (*(*(this + 2148) + 240))(this + 17184);
  *result = 0;
  v2[9] = 0;
  v2[11] = 0;
  v2[13] = 0;
  return result;
}

uint64_t BlueFin::GlPeKfPool::ResetFlagExtAlongTrkSpeedAndPdrUsedInKF(BlueFin::GlPeKfPool *this)
{
  v1 = 0;
  v2 = this + 37248;
  do
  {
    v3 = *&v2[v1];
    result = (*(*v3 + 384))(v3);
    if (result)
    {
      result = (*(*v3 + 144))(v3);
    }

    v1 += 8;
  }

  while (v1 != 24);
  return result;
}

uint64_t BlueFin::GlSvIdArray::GetSvIdSet@<X0>(BlueFin::GlSvIdArray *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0u;
  *a2 = a2 + 12;
  *(a2 + 8) = 8;
  *(a2 + 28) = 0u;
  for (i = 1; i != 189; ++i)
  {
    result = BlueFin::GlArray::EnsureValidHandle(this + 200, i);
    if (*(*(this + 27) + i - *(this + 236)) != 255)
    {
      *(*a2 + 4 * (i >> 5)) |= 1 << i;
    }
  }

  return result;
}

uint64_t BlueFin::GlSvIdArray::Iterator@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this + 200;
  *(a2 + 8) = *(this + 239) + 1;
  return this;
}

uint64_t BlueFin::GlPeKF::UpdateKFAidingImpl(uint64_t this, BlueFin::GlPeNavGnssState *a2)
{
  v2 = a2;
  v3 = this;
  v4 = this + 57288;
  if (!a2 && **(this + 61008) == *(this + 6752))
  {
    return this;
  }

  if (*(*(this + 61000) + 120021) != 1)
  {
    if (*v4)
    {
      v17 = (this + 17184);
      v18 = *(this + 17184);
      if (*(*v4 + 3009))
      {
        v19 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v17 = (this + 17184);
      v18 = *(this + 17184);
    }

    v19 = *(this + *(v18 - 24) + 17264) < 400.0;
LABEL_18:
    v20 = 90000;
    this = (*(v18 + 72))(v17);
    v21 = this;
    v22 = *(*(v4 + 3744) + 4216);
    if (v22 == 1)
    {
      v23 = this != 0;
      goto LABEL_37;
    }

    v23 = this != 0;
    if (this)
    {
      if (v22 == 6 || ((v25 = *(v4 + 144), !*(v25 + 1764)) ? (v24 = 180) : (v24 = 60), *(v25 + 1328) > 4.0 && *(v25 + 1320) < 20.0 && *(v25 + 76) >= v24 && ((*(v25 + 1764) & 1) != 0 || *(v25 + 64) == 1)))
      {
        v23 = 1;
        goto LABEL_37;
      }
    }

    else
    {
      if (v22 == 6)
      {
        v23 = 0;
        goto LABEL_37;
      }

      v25 = *(v4 + 144);
    }

    if ((*(v25 + 8) - 3) >= 4)
    {
      v20 = 20000;
    }

    else
    {
      v20 = 5000;
    }

LABEL_37:
    if (v2)
    {
      LOBYTE(v26) = 1;
    }

    else
    {
      v27 = *(v4 + 3648);
      if (*(v27 + 26294) != 1)
      {
        goto LABEL_47;
      }

      if (*(v27 + 88) <= 36)
      {
        v23 = 0;
      }

      if (this >= v20 || !v23)
      {
LABEL_47:
        v26 = 0;
      }

      else
      {
        v26 = *(v4 + 3645) ^ 1;
      }

      if (((v19 | v26) & 1) == 0)
      {
        return this;
      }
    }

    v29 = 0;
    v30 = *(v3 + 280);
    if (v30 && this >> 6 <= 0x752)
    {
      v29 = *(v4 + 3377) == 1 && sqrt(*(v17 + *(*v17 - 24) + 112) * *(v17 + *(*v17 - 24) + 112) + *(v17 + *(*v17 - 24) + 104) * *(v17 + *(*v17 - 24) + 104)) > 13.8;
    }

    v31 = BlueFin::GlPeKF::InFlightMode(v3);
    v32 = v29 | 2;
    if (!v31)
    {
      v32 = v29;
    }

    if (*(v3 + 1091))
    {
      v33 = v32 | 4;
    }

    else
    {
      v33 = v32;
    }

    if (*(*(v4 + 3712) + 120021) != 1)
    {
      v33 |= 8 * ((*(v3 + 768) - v30) < 0x7D1);
    }

    if ((*(v4 + 3645) | v26))
    {
      v34 = 32;
    }

    else
    {
      v34 = 0;
    }

    if (v26)
    {
      v35 = 16;
    }

    else
    {
      v35 = 0;
    }

    v36 = v33 | v35 | v34;
    if (v2)
    {
      v37 = v36 | 0x40;
LABEL_74:
      v38 = *(v4 + 3648) + 208;
      v39 = BlueFin::GlSetBase::Cnt((v17 + *(*(v3 + 17184) - 24) + 352));
      v43 = v2;
      *&v44 = v38;
      BYTE8(v44) = v39;
      HIDWORD(v44) = v37;
      v15 = v3 + 3840;
      v16 = &v43;
      return BlueFin::GlPeNavAid::Generate(v15, v16);
    }

    v2 = (v17 + *(*v17 - 24));
    if (*(*(v4 + 3712) + 120021))
    {
      v37 = v36 & 0xFFFFFFF7;
      if ((v26 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v37 = v36 & 0xFFFFFFF7 | (8 * ((*(v3 + 768) - v30) < 0x7D1));
      if ((v26 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    *(v2 + 40) = fminf(*(v2 + 40), 1.0);
    GlCustomLog(14, "Position Gap %d\n", v21);
    goto LABEL_74;
  }

  if ((*(this + 61208) & 8) != 0 || *(this + 6752) < **(this + 61008))
  {
    if (BlueFin::GlPeKF::InFlightMode(this))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (*(v3 + 1091))
    {
      v6 = v5 | 4;
    }

    else
    {
      v6 = v5;
    }

    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v43);
    v7 = **(v4 + 3720);
    v8 = *(v3 + 17184);
    v9 = v3 + 17184 + *(v8 - 24);
    v10 = *(v9 + 88);
    v11 = *(v9 + 152);
    v12 = *(v9 + 160);
    v44 = *(v9 + 8);
    v45 = *(v9 + 24);
    BlueFin::GlPeNavGnssState::NormalizePos(&v43);
    v46 = 0;
    v47 = v10;
    v61 = v7;
    v62 = 1;
    v53 = 0;
    v48 = 0;
    v54 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v52 = 0;
    v55 = v11;
    v56 = v12;
    v57 = 0;
    v58 = 0;
    v59 = 1148846080;
    v60 = 0;
    v63 = 0;
    v13 = *(v4 + 3648) + 208;
    v14 = BlueFin::GlSetBase::Cnt((v3 + 17184 + *(v8 - 24) + 352));
    v40[0] = &v43;
    v40[1] = v13;
    v41 = v14;
    v42 = v6;
    v15 = v3 + 3840;
    v16 = v40;
    return BlueFin::GlPeNavAid::Generate(v15, v16);
  }

  return this;
}

uint64_t BlueFin::GlPePlatfStatMgr::SetSIGMeasuement(BlueFin::GlPePlatfStatMgr *this, BlueFin::GlPeMsmtMgr *a2)
{
  v54 = v56;
  v55 = 8;
  memset(v56, 0, 32);
  v51 = v53;
  v52 = 8;
  memset(v53, 0, sizeof(v53));
  v46 = *(a2 + 16);
  memcpy(v50, *(a2 + 1), 4 * v46);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  BlueFin::GlSetIterator::operator++(&v46);
  while (v47 != v46)
  {
    if (v48 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v4 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v48;
    v5 = *v4;
    LODWORD(v4) = v4[1];
    LOBYTE(v43[0]) = v5;
    v44 = v4;
    v45 = v48;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v43, 0, 0);
    v7 = *(MeMeas + 29);
    if (v7 <= 35.0)
    {
      BlueFin::GlSetBase::Remove(this + 1256, LOBYTE(v43[0]));
      v7 = *(MeMeas + 29);
    }

    else
    {
      *(*(this + 157) + ((LOBYTE(v43[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v43[0]);
    }

    if (v7 > *(this + 334))
    {
      *(this + 334) = v7;
    }

    if ((MeMeas[12] & 2) != 0)
    {
      *&v54[(LOBYTE(v43[0]) >> 3) & 0x1C] |= 1 << SLOBYTE(v43[0]);
    }

    if (*(MeMeas + 27) < 0.0000000158999995)
    {
      *(v51 + ((LOBYTE(v43[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v43[0]);
    }

    BlueFin::GlSetIterator::operator++(&v46);
  }

  v8 = *(this + 155);
  if (v8)
  {
    v9 = v8[4];
    *(this + 2) = vsub_s32(v9, *(this + 1340));
    *(this + 1340) = v9;
  }

  v10 = *(BlueFin::GlUtils::m_pInstance + 1092);
  v11 = *a2;
  v12 = *(this + 341);
  v13 = v10 >= v12;
  v14 = v10 - v12;
  if (v14 != 0 && v13)
  {
    v15 = *(this + 340);
    v13 = v15 >= v11;
    v16 = v15 - v11;
    if (!v13)
    {
      v17 = v16 + v14;
      *(this + 40) += v17;
      if (v11 <= 0xFA00u)
      {
        v18 = *(this + 342);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 + v17;
      *(this + 342) = v19;
      if (v19 < 0)
      {
        v19 = -v19;
      }

      if (v19 < 0x1771)
      {
        if (v19 >= 0xBB9)
        {
          GlCustomLog(12, "Warning: High latency detected, see HATMD in PGLOR,n,SIO sentence.\n");
        }
      }

      else
      {
        GlCustomLog(11, "Error: High latency detected, see HATMD in PGLOR,n,SIO sentence.\n");
      }
    }
  }

  *(this + 341) = v10;
  *(this + 340) = v11;
  *(this + 6) = v10 - *(this + 337);
  *(this + 337) = *(BlueFin::GlUtils::m_pInstance + 1092);
  v20 = *(this + 155);
  if (v20)
  {
    v21 = *(v20 + 20);
    v22 = *(v20 + 28);
    *(this + 2) = *(v20 + 24) + *(v20 + 16);
    *(this + 3) = v22 + v21;
    *(this + 3) = *(v20 + 4);
    v23 = *(v20 + 160);
    if (v23)
    {
      BlueFin::GlPfaStat::SetPfaData(v23, &v54, &v51);
    }
  }

  if (*a2 <= *(this + 312))
  {
    return 0;
  }

  v24 = *(this + 326);
  if (!v24)
  {
    return 0;
  }

  GlCustomLog(199, "HWDEBUG: LMS = %u, WER=%.2f\n", *a2, ((100 * (v24 - *(this + 327))) / v24));
  v25 = *this;
  v26 = *(this + 155);
  if (v26)
  {
    v27 = *(v26 + 8);
    if (!v27)
    {
      goto LABEL_49;
    }

    v27 = *(v26 + 12);
    if (!v27)
    {
      goto LABEL_49;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v26 + 40;
    do
    {
      if (v28 >= 5)
      {
        v33 = *(v32 + 4 * v28);
      }

      else
      {
        v33 = 0;
      }

      v31 += v33;
      if (v28 >= 5)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v32 + 4 * v28);
      }

      v30 += v34;
      v29 += *(v32 + 4 * v28++);
    }

    while (v28 != 9);
    if (v29)
    {
      *(this + 4) = (v30 * 100.0 / v29 + 0.5);
      v35 = v31 * 100.0 / v29 + 0.5;
      *(this + 5) = v35;
      if (v35 || *(this + 2) > 1)
      {
        v27 = 2;
      }

      else if (*(this + 3) <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      goto LABEL_49;
    }
  }

  v27 = 0;
LABEL_49:
  *this = v27;
  if (v25 != v27)
  {
    *(this + 232) = 1;
  }

  v37 = (*(this + 334) + 0.5);
  *(this + 84) = v37;
  v38 = *(this + 326);
  if (v38 >= 0x65)
  {
    if ((*(this + 170) & 1) == 0)
    {
      *(this + 232) = 1;
    }

    *(this + 170) = 1;
    *(this + 44) = (100 * (v38 - *(this + 327))) / v38;
  }

  v39 = *(this + 1312);
  if (v39 == 1)
  {
    if ((*(this + 188) & 1) == 0)
    {
      *(this + 232) = 1;
    }

    *(this + 188) = 1;
    v40 = sqrt(*(this + 166)) * 1000000000.0;
    *(this + 48) = v40;
  }

  if (v37 >= -126)
  {
    v41 = *(this + 41);
    if ((*(this + 170) & v39) == 1)
    {
      if (*(this + 327) == v38 && *(this + 48) < 2.0)
      {
        v42 = 1;
      }

      else
      {
        v42 = 2;
      }
    }

    else
    {
      v42 = 0;
    }

    *(this + 41) = v42;
    if (v41 != v42)
    {
      *(this + 232) = 1;
    }
  }

  *(this + 312) = *a2 + 60000;
  return 1;
}

unsigned __int8 *BlueFin::GlPfaStat::SetPfaData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 + 8);
  memcpy(v12, *a2, 4 * v8);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  BlueFin::GlSetIterator::operator++(&v8);
  while (v9 != v8)
  {
    if (v10)
    {
      if (v10 >= 0x21u)
      {
        if (v10 < 0x34u)
        {
          goto LABEL_11;
        }

        v6 = a1 + 16;
        if (v10 >= 0x42u)
        {
          if (v10 < 0x4Cu)
          {
            goto LABEL_11;
          }

          v6 = a1 + 32;
          if (v10 >= 0x8Bu)
          {
            v6 = a1 + 48;
            if (v10 >= 0xAFu)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        v6 = a1;
        if (!a1)
        {
          goto LABEL_11;
        }
      }

      ++*(v6 + 8);
    }

LABEL_11:
    BlueFin::GlSetIterator::operator++(&v8);
  }

  v8 = *(a3 + 8);
  memcpy(v12, *a3, 4 * v8);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  for (result = BlueFin::GlSetIterator::operator++(&v8); v9 != v8; result = BlueFin::GlSetIterator::operator++(&v8))
  {
    if (v10)
    {
      if (v10 >= 0x21u)
      {
        if (v10 < 0x34u)
        {
          continue;
        }

        v7 = a1 + 16;
        if (v10 >= 0x42u)
        {
          if (v10 < 0x4Cu)
          {
            continue;
          }

          v7 = a1 + 32;
          if (v10 >= 0x8Bu)
          {
            v7 = a1 + 48;
            if (v10 >= 0xAFu)
            {
              continue;
            }
          }
        }
      }

      else
      {
        v7 = a1;
        if (!a1)
        {
          continue;
        }
      }

      ++*(v7 + 12);
    }
  }

  return result;
}

void BlueFin::lla2ecef(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = BlueFin::GlPeConvUtilCache::m_potThis;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == *(BlueFin::GlPeConvUtilCache::m_potThis + 72) && v6 == *(BlueFin::GlPeConvUtilCache::m_potThis + 80) && a1[2] == *(BlueFin::GlPeConvUtilCache::m_potThis + 88))
  {
    *a2 = *(BlueFin::GlPeConvUtilCache::m_potThis + 48);
    *(a2 + 16) = *(v4 + 64);
  }

  else
  {
    v7 = __sincos_stret(v5 * 0.0174532925);
    v8 = __sincos_stret(v6 * 0.0174532925);
    v9 = 1.0 / sqrt(v7.__sinval * -0.00669438 * v7.__sinval + 1.0) * 6378137.0;
    v10 = a1[2];
    v11 = v7.__cosval * (v9 + v10);
    *a2 = v8.__cosval * v11;
    *(a2 + 8) = v8.__sinval * v11;
    v12 = v7.__sinval * (v10 + v9 * 0.99330562);
    *(a2 + 16) = v12;
    *(v4 + 80) = v6;
    *(v4 + 88) = v10;
    *(v4 + 48) = v8.__cosval * v11;
    *(v4 + 56) = v8.__sinval * v11;
    *(v4 + 64) = v12;
    *(v4 + 72) = v5;
  }
}

__n128 BlueFin::stProcessedAsstPos::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 16) = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v2 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v2;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    result = *(a2 + 120);
    *(a1 + 120) = result;
    *(a1 + 136) = *(a2 + 136);
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::SetSIGMeasuement(BlueFin::GlPeReqBag *this, const void **a2)
{
  v37 = &unk_2A1F13AA0;
  v38 = this + 3233;
  v39 = *(this + 3233);
  *(this + 3233) = 0;
  BlueFin::GlSetBase::GlSetBase(&__src, v36, 0x13u, a2 + 12);
  v4 = *a2;
  v5 = *(this + 328);
  if ((v5 & 0xC) != 0)
  {
    BlueFin::GlPeMeasStatus::SetSIGMeasuement((this + 3296), a2);
    v5 = *(this + 328);
  }

  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) != 0)
    {
      v6 = *(this + 329);
      if ((v6 & 0x80000000) != 0)
      {
        if (v6 == -1)
        {
          goto LABEL_34;
        }

        v7 = (this + 3238);
      }

      else
      {
        v7 = (*(*(this + v6) + 8) + 22);
      }

      if (*v7 >= 10)
      {
        goto LABEL_10;
      }
    }

LABEL_34:
    BlueFin::GlArray::Clear(this + 1272);
    goto LABEL_35;
  }

LABEL_10:
  v29 = v35;
  memcpy(v33, __src, 4 * v35);
  v31 = 0;
  v30 = 0;
  v32 = v33[0];
  BlueFin::GlSetIterator::operator++(&v29);
  if (v30 != v29)
  {
    while (1)
    {
      if (v31 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v8 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v31;
      v9 = *v8;
      LODWORD(v8) = v8[1];
      LOBYTE(v27) = v9;
      HIDWORD(v27) = v8;
      v28 = v31;
      v10 = BlueFin::GlPeMsmtMgr::AccessMeMeas(a2, &v27, 0, 1u);
      if ((v10[14] & 8) != 0)
      {
        goto LABEL_23;
      }

      v11 = BlueFin::GlArray::Get((this + 1272), v9);
      if (v11)
      {
        goto LABEL_16;
      }

      v11 = BlueFin::GlArray::Add((this + 1272), v9);
      if (v11)
      {
        goto LABEL_15;
      }

      v27 = this + 1272;
      LOBYTE(v28) = *(this + 1311) + 1;
      if (*(this + 1310) > v28)
      {
        break;
      }

LABEL_23:
      BlueFin::GlSetIterator::operator++(&v29);
      if (v30 == v29)
      {
        goto LABEL_35;
      }
    }

    while (1)
    {
      v15 = BlueFin::GlArrayIterator::Next(&v27);
      if (v15 - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v15], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16] == 255))
      {
        v17 = 575;
      }

      else
      {
        v17 = (v15 + BlueFin::GlSignalId::s_ausGnss2signalId[v16] - BlueFin::GlSvId::s_aucGnss2minSvId[v16]);
      }

      if (((*(__src + (v17 >> 5)) >> (v17 & 0x1F)) & 1) == 0)
      {
        BlueFin::GlArray::Remove((this + 1272), v15);
        v11 = BlueFin::GlArray::Add((this + 1272), v9);
        if (v11)
        {
          break;
        }
      }

      if (v28 >= v27[38])
      {
        goto LABEL_23;
      }
    }

LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 12) = 0;
    *(v11 + 16) = 1;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 36) = 0;
LABEL_16:
    v12 = *(v10 + 3);
    if ((~v12 & 0x102) != 0)
    {
      BlueFin::GlPeMeasFilter::UpdateRng(v11, *(v10 + 12), v10, v4, 0, 1, *(v10 + 8), *(v10 + 11) / 299792458.0);
    }

    else
    {
      if ((v12 & 0x1000) != 0)
      {
        v13 = *(v10 + 11) / 299792458.0;
      }

      else
      {
        v13 = *(v10 + 26);
      }

      BlueFin::GlPeMeasFilter::UpdateRng(v11, *(v10 + 12), v10, v4, (v12 & 0x1000) == 0, 0, *(v10 + 8), v13);
    }

    *(v10 + 14) = *(v11 + 16);
    v14 = *(v10 + 8) * 1000.0;
    *(v10 + 9) = *v11;
    *(v10 + 10) = v14;
    goto LABEL_23;
  }

LABEL_35:
  v18 = 0;
  v19 = __src + 4 * v35 - 4;
  do
  {
    if (*v19)
    {
      v20 = *v19 - (((*v19 >> 1) & 0x5B6DB6DB) + ((*v19 >> 2) & 0x9249249));
      v18 = ((v20 + (v20 >> 3)) & 0xC71C71C7) + v18 - 63 * (((v20 + (v20 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v19;
  }

  while (v19 >= __src);
  v21 = v18;
  v22 = BlueFin::GlSetBase::Cnt((a2 + 1));
  v23 = BlueFin::GlSetBase::Cnt((a2 + 23));
  v24 = BlueFin::GlSetBase::Cnt((a2 + 181));
  GlCustomLog(14, "GlPeReqBag::SetSIGMeasuement time=%d cnt=%d %d %d %d \n", v4, v21, v22, v23, v24);
  for (i = 0; i != 576; i += 8)
  {
    result = *(this + i);
    if (result)
    {
      result = (*(*result + 96))(result, a2);
    }
  }

  *v38 = v39;
  return result;
}

void BlueFin::GlPeRqHdlrGnssMeasData::SetSIGMeasuement(BlueFin::GlPeRqHdlrGnssMeasData *this, BlueFin::GlPeMsmtMgr *a2)
{
  v225 = this + 36864;
  bzero(this + 64, 0x9B40uLL);
  BlueFin::GlSetBase::GlSetBase(&v251, v252, 0x13u, a2 + 7030);
  v246 = *(a2 + 16);
  memcpy(v250, *(a2 + 1), 4 * v246);
  v248 = 0;
  v247 = 0;
  v249 = v250[0];
  BlueFin::GlSetIterator::operator++(&v246);
  if (v247 != v246)
  {
    v5 = this + 72;
    v226 = this + 39968;
    v223 = vdupq_n_s64(0x41CDCD6500000000uLL);
    v6 = 1000.0;
    v7 = 0.5;
    v222 = vdupq_n_s64(0x41B1DE784A000000uLL);
    v8 = -8.0;
    HIDWORD(v4) = 1091718209;
    v9 = 0x3B9248D1E08E72CBLL;
    v224 = a2;
    while (1)
    {
      if (*(this + 17) > 0x63u)
      {
        goto LABEL_408;
      }

      v10 = v248;
      if (v248 >= 0x23FuLL)
      {
        v219 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v220 = "glsignalid.h";
        v221 = 578;
        goto LABEL_423;
      }

      v11 = v9;
      v12 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v248;
      v13 = *v12;
      v14 = v12[1];
      v253[0] = *v12;
      v254 = v14;
      v255 = v248;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v253, 0, 0);
      v16 = *(this + 17);
      v17 = &v5[392 * v16];
      if ((*(v251 + ((v10 >> 3) & 0x1FFC)) >> (v10 & 0x1F)))
      {
        v253[0] = v13;
        v254 = v14;
        v255 = v10;
        v18 = BlueFin::GlSignalIdArray::Get(*(a2 + 7041), v253);
        if (!v18)
        {
          v219 = "potGridMeas";
          DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 520, "SetSIGMeasuement", "potGridMeas");
          v220 = "glpe_reqhdlr_gnss_meas_data.cpp";
          v221 = 520;
          goto LABEL_423;
        }

        v19 = *(v18 + 16);
        if (v19 >= 4)
        {
          v20 = 4;
        }

        else
        {
          v20 = *(v18 + 16);
        }

        v17[228] = v20;
        if (v19)
        {
          LOBYTE(v19) = 0;
          v21 = *(v17 + 4) - (*(MeMeas + 8) * 1000000000.0);
          v22 = (this + 392 * v16 + 336);
          v23 = (v18 + 56);
          while (1)
          {
            *(v22 - 4) = v21 + (*(v23 - 4) * 1000000000.0);
            v24 = (*(v23 - 3) * 1000000000.0);
            *(v22 - 3) = v24;
            if (v24 < 1)
            {
              break;
            }

            if (HIDWORD(v24))
            {
              v25 = 0xFFFFFFFFLL;
LABEL_16:
              *(v22 - 3) = v25;
            }

            *(v22 - 2) = -*(v23 - 4) * 299792458.0;
            v26 = *(v23 - 1) * 299792458.0;
            *(v22 - 1) = v26;
            v27 = *v23;
            *v22 = *v23;
            if (v27 > 0.0)
            {
              LOBYTE(v19) = (v26 > 0.0) | v19;
            }

            v22 += 5;
            v23 += 10;
            if (!--v20)
            {
              goto LABEL_22;
            }
          }

          v25 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }

LABEL_22:
      v28 = *(MeMeas + 3);
      if (v28 & 2) != 0 || (v19)
      {
        break;
      }

      *(v17 + 48) = 0;
      *(v17 + 22) = 0u;
      *(v17 + 23) = 0u;
      *(v17 + 20) = 0u;
      *(v17 + 21) = 0u;
      *(v17 + 18) = 0u;
      *(v17 + 19) = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 17) = 0u;
      *(v17 + 14) = 0u;
      *(v17 + 15) = 0u;
      *(v17 + 12) = 0u;
      *(v17 + 13) = 0u;
      *(v17 + 10) = 0u;
      *(v17 + 11) = 0u;
      *(v17 + 8) = 0u;
      *(v17 + 9) = 0u;
      *(v17 + 6) = 0u;
      *(v17 + 7) = 0u;
      *(v17 + 4) = 0u;
      *(v17 + 5) = 0u;
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      *v17 = 0u;
      *(v17 + 1) = 0u;
      v9 = v11;
LABEL_407:
      BlueFin::GlSetIterator::operator++(&v246);
      if (v247 == v246)
      {
        goto LABEL_408;
      }
    }

    *v17 = 392;
    v29 = *MeMeas;
    *(v17 + 4) = v29;
    if (v29)
    {
      if (v29 <= 0x20)
      {
        v17[10] = 1;
        goto LABEL_43;
      }

      if (v29 <= 0x33)
      {
        v17[10] = 2;
        v30 = v29 + 87;
LABEL_34:
        *(v17 + 4) = v30;
        goto LABEL_43;
      }

      if (v29 <= 0x41)
      {
        v17[10] = 3;
        v30 = v29 + 41;
        goto LABEL_34;
      }

      if (v29 <= 0x4B)
      {
        v17[10] = 4;
        v30 = v29 + 127;
        goto LABEL_34;
      }

      if (v29 < 0x8B)
      {
        *(v17 + 4) = v29 - 75;
        v31 = 5;
        goto LABEL_39;
      }

      v30 = v29 - 174;
      if (v29 <= 0xAE)
      {
        *(v17 + 4) = v29 - 138;
        v31 = 6;
LABEL_39:
        v17[10] = v31;
        goto LABEL_43;
      }

      if (v29 <= 0xBC)
      {
        v17[10] = 7;
        goto LABEL_34;
      }
    }

    *(v17 + 4) = 0;
    v17[10] = 0;
LABEL_43:
    v32 = v5;
    v33 = &v5[392 * *(this + 17)];
    *(v33 + 2) = 0;
    *(v33 + 6) = 0;
    v34 = *(MeMeas + 1);
    v36 = v29 - 139 < 0x24 || v34 > 0;
    if ((v28 & 2) != 0)
    {
      v37 = *(v17 + 6);
      if (v29 - 139 <= 0x23 && !v34)
      {
        v38 = 1024;
LABEL_55:
        *(v17 + 6) = v38 | v37;
        goto LABEL_56;
      }

      *(v17 + 6) = v37 | 1;
      if (v29 - 175 >= 0xE)
      {
        v38 = 65537;
        if (v34 == 2)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_56:
    if ((v28 & 4) != 0)
    {
      *(v17 + 6) |= 0x20u;
    }

    v39 = (v28 & 8) == 0 || v36;
    if ((v39 & 1) == 0)
    {
      if (v29 - 81 > 0x34 || v34)
      {
        v41 = v29 - 76;
        if (v41 <= 0x3E && ((1 << v41) & 0x7C0000000000001FLL) != 0)
        {
          v40 = 256;
        }

        else
        {
          v40 = 2;
        }
      }

      else
      {
        v40 = 65538;
      }

      *(v17 + 6) |= v40;
    }

    if ((v28 & 0xC) != 0)
    {
      v42 = *(this + 7);
      v43 = *(v42 + 48);
      BlueFin::GlPeTimeManager::GetTime(*(v42 + 8), *v224, 1, v253);
      v244 = 1000000.0;
      v242 = 0.0;
      if (BlueFin::GlPeSatAidInfo::GetAidRcvdSysTimeS((v43 + 32), MeMeas, v253, &v242, &v244) && v244 < 0.1)
      {
        v44 = *(MeMeas + 8);
        v45 = v242;
        if ((MeMeas[12] & 4) != 0)
        {
          EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(MeMeas);
        }

        else
        {
          EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerBit(MeMeas);
        }

        if (*(MeMeas + 4) >= 0x23Fu)
        {
LABEL_421:
          v219 = "IsValid()";
          DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
          v220 = "glsignalid.h";
          v221 = 679;
          goto LABEL_423;
        }

        v47 = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
        if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
        {
          goto LABEL_422;
        }

        v48 = v44 * v6;
        v49 = v6;
        v50 = floor(v45 * v6);
        v51 = floor(v44 * v6);
        v52 = v45 * v6 - v50;
        v53 = v48 - v51;
        v54 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * EpochPerSymbol);
        v55 = fmod(v50, v54);
        v56 = fmod(v51, v54);
        v57 = v53 - v52;
        v58 = v55 + 1.0;
        if (v53 - v52 >= -0.5)
        {
          v58 = v55;
        }

        v7 = 0.5;
        if (v57 >= 0.5)
        {
          v58 = v55 + -1.0;
        }

        v59 = dbl_298A44C50[v47 == 2];
        v60 = v58 - v56;
        v61 = v60 / v59;
        if (v60 / v59 <= 0.0)
        {
          v62 = 0.0;
          if (v60 / v59 < 0.0)
          {
            v62 = ceil(v61 + -0.5);
          }
        }

        else
        {
          v62 = floor(v61 + 0.5);
        }

        v6 = v49;
        v8 = -8.0;
        if (fabs(v60 - v62 * v59) > 2.22044605e-16)
        {
          v63 = &v32[392 * *(this + 17)];
          *(v63 + 6) |= 0x80000000;
        }
      }

      v28 = *(MeMeas + 3);
    }

    v64 = (v28 & 0x10) == 0 || v36;
    v5 = v32;
    a2 = v224;
    if ((v64 & 1) == 0)
    {
      v65 = *MeMeas;
      if ((v65 - 52) > 0xD)
      {
        if ((v65 - 76) <= 0x3E && ((1 << (v65 - 76)) & 0x7C0000000000001FLL) != 0)
        {
          v66 = *(v17 + 6) | 0x200;
        }

        else if ((v65 - 139) > 0x23)
        {
          v66 = *(v17 + 6) | 4;
        }

        else
        {
          v170 = *(v17 + 6);
          if ((v28 & 0x20) != 0)
          {
            v66 = v170 | 0x1000;
          }

          else
          {
            v66 = v170 | 0x10800;
          }
        }
      }

      else
      {
        v66 = *(v17 + 6) | 0x40;
      }

      *(v17 + 6) = v66;
    }

    if ((v28 & 0x20) != 0)
    {
      v68 = *(v17 + 6);
      if (*MeMeas - 52 > 0xD)
      {
        v67 = v68 | 8;
      }

      else
      {
        v67 = v68 | 0x80;
      }
    }

    else
    {
      if ((v28 & 0x10) != 0)
      {
        goto LABEL_105;
      }

      v67 = *(v17 + 6) | 0x10;
    }

    *(v17 + 6) = v67;
LABEL_105:
    v69.f64[0] = *(MeMeas + 8);
    v69.f64[1] = *(MeMeas + 24);
    *(v17 + 2) = vcvtq_s64_f64(vmulq_f64(v69, v223));
    if ((v5[392 * *(this + 17) + 24] & 0x88) != 0)
    {
      goto LABEL_152;
    }

    v70 = *(this + 7);
    v71 = *(v70 + 48);
    BlueFin::GlPeTimeManager::GetTime(*(v70 + 8), *v224, 1, v253);
    v244 = 1000000.0;
    v242 = 0.0;
    if (!BlueFin::GlPeSatAidInfo::GetAidRcvdSysTimeS((v71 + 32), MeMeas, v253, &v242, &v244) || v244 >= 0.1)
    {
LABEL_151:
      v28 = *(MeMeas + 3);
LABEL_152:
      v92 = 56;
      if (!*(MeMeas + 1))
      {
        v92 = 52;
      }

      v93 = *(*(*(this + 7) + 56) + v92);
      if (v93 < 0.0)
      {
        v93 = 0.0;
      }

      v94 = *(MeMeas + 29);
      *(v17 + 6) = (v94 + v93);
      *(v17 + 26) = v94;
      v95.f32[0] = -*(MeMeas + 26);
      v95.i32[1] = *(MeMeas + 27);
      *(v17 + 56) = vmulq_f64(vcvtq_f64_f32(v95), v222);
      if ((v28 & 2) == 0)
      {
        *(v17 + 8) = 0x41B1DE784A000000;
        *(v17 + 5) = 1000000000;
      }

      *(v17 + 1) |= 0x40000u;
      v96 = (v28 >> 4) & 4 | (v28 >> 12) & 1;
      *(v17 + 36) = (v28 >> 4) & 4 | (v28 >> 12) & 1;
      if ((v28 & 0x100) == 0 || *(MeMeas + 12) < *&v226[4 * v10])
      {
        LOWORD(v96) = v96 | 2;
        *(v17 + 36) = v96;
      }

      if ((v28 & 0x20000) != 0)
      {
        *(v17 + 36) = v96 | 8;
      }

      v97 = (v28 >> 20) & 1;
      *(v17 + 48) = (v28 >> 20) & 1;
      if ((v28 & 0x100) != 0)
      {
        v98 = *(MeMeas + 12);
        if (v98 < *&v226[4 * v10])
        {
          *(v17 + 48) = v97 | 2;
        }
      }

      else
      {
        *(v17 + 48) = v97 | 2;
        v98 = *(MeMeas + 12);
      }

      *&v226[4 * v10] = v98;
      *(v17 + 56) = v98;
      v253[0] = v13;
      v254 = v14;
      v255 = v10;
      v99 = *v224;
      v244 = -*(MeMeas + 11);
      v242 = *(MeMeas + 25);
      BlueFin::GlMeasData_ADRState::UpdateCarrierPhaseM((this + 42304), v253, v99, &v244, &v242);
      *(v17 + 10) = v100;
      v101 = *(MeMeas + 25);
      *(v17 + 11) = v101;
      if ((MeMeas[14] & 2) == 0)
      {
        if (*(MeMeas + 4) >= 0x23Fu)
        {
          goto LABEL_419;
        }

        v102 = *MeMeas;
        v103 = BlueFin::GlSvId::s_aucSvId2gnss[v102];
        v104 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + v103]];
        if (v103 == 2)
        {
          v105 = (v102 - 59);
          if ((v102 - 52) >= 0xE)
          {
            v105 = v8;
          }

          v104 = v104 + v105 * 562500.0;
        }

        v106 = 299792458.0 / v104;
        if (v106 * v7 > v101)
        {
          *(v17 + 11) = v101 + v106 * v7;
        }
      }

      v253[0] = v13;
      v254 = v14;
      v255 = v10;
      v107 = *v224;
      v244 = -*(MeMeas + 16);
      v242 = *(MeMeas + 31);
      BlueFin::GlMeasData_ADRState::UpdateCarrierPhaseM((this + 47744), v253, v107, &v244, &v242);
      *(v17 + 13) = v108;
      *(v17 + 14) = *(MeMeas + 31);
      if (*(MeMeas + 4) >= 0x23Fu)
      {
LABEL_419:
        v219 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
        v220 = "glsignalid.h";
        v221 = 651;
        goto LABEL_423;
      }

      v109 = *MeMeas;
      v110 = BlueFin::GlSvId::s_aucSvId2gnss[v109];
      v111 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + v110]];
      if (v110 == 2)
      {
        v112 = (v109 - 59);
        if ((v109 - 52) >= 0xE)
        {
          v112 = v8;
        }

        v111 = v111 + v112 * 562500.0;
      }

      v9 = v11;
      v113 = v111;
      *(v17 + 30) = v113;
      *(v17 + 1) |= 0x200u;
      *(v17 + 17) = 0;
      *(v17 + 18) = 0;
      *(v17 + 16) = 0;
      v17[152] = *(MeMeas + 5) == 4;
      *(v17 + 20) = 0;
      *(v17 + 21) = 0;
      if (!*(v225 + 736) && !BlueFin::GlPeRqHdlrGnssMeasData::UpdateAgcInfo(this))
      {
        v114 = *(MeMeas + 1);
        goto LABEL_191;
      }

      v114 = *(MeMeas + 1);
      v115 = *MeMeas;
      if (v114 == 2)
      {
        if (!*MeMeas)
        {
          goto LABEL_200;
        }

        if (v115 < 0x21)
        {
          goto LABEL_185;
        }

        if (v115 >= 0x8B)
        {
          if (v115 >= 0xAF)
          {
            goto LABEL_200;
          }

          goto LABEL_185;
        }

        if (v115 > 0x41)
        {
LABEL_185:
          v116 = 39840;
LABEL_189:
          *(v17 + 21) = *(this + v116);
          *(v17 + 1) |= 0x80000u;
          goto LABEL_191;
        }

        goto LABEL_270;
      }

      if (!*MeMeas)
      {
        goto LABEL_191;
      }

      if (v115 >= 0x21)
      {
        if (v115 < 0x8B)
        {
          if (v115 >= 0x42)
          {
            v80 = v115 >= 0x4C;
            v116 = 39824;
            if (v80)
            {
              v116 = 39904;
            }

            goto LABEL_189;
          }

LABEL_270:
          if (v115 >= 0x34)
          {
            v116 = 39856;
            goto LABEL_189;
          }

LABEL_191:
          if (v114 != 2)
          {
            if (v114 == 3)
            {
              if (BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas] == 4)
              {
                LOBYTE(v117) = 8;
              }

              else
              {
                LOBYTE(v117) = 5;
              }
            }

            else
            {
              v117 = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
              if (v117 != 4)
              {
                LOBYTE(v117) = 3;
              }
            }

LABEL_201:
            v17[11] = v117;
            BlueFin::GlPeRangeAidGen::GetSatelliteInterSignalBiasNs(*(*(this + 7) + 48), MeMeas, 1, v17 + 24, v17 + 25);
            v118 = *(v17 + 1);
            *(v17 + 22) = *(v17 + 24);
            v119 = *(MeMeas + 1);
            if (v119 == 2 || (v120 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v119 - v119 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]], v120 == 12))
            {
              v121 = *(*(*(this + 7) + 120) + 136);
            }

            else
            {
              v122 = v120 != 6 || *MeMeas - 76 >= 0x3F;
              v121 = 1.0;
              if (v122)
              {
                v121 = 0.0;
              }
            }

            *(v17 + 23) = *(v17 + 25) + v121 / 299792.458 * 1000000.0;
            *(v17 + 1) = v118 | 0xF00000;
            v123 = v17[10];
            if (v123 <= 3)
            {
              if (v17[10] <= 1u)
              {
                if (v123 != 1)
                {
                  goto LABEL_397;
                }

                goto LABEL_235;
              }

              if (v123 == 2)
              {
                v139 = *(v17 + 6);
                if ((v139 & 0x2000) != 0)
                {
                  *(v17 + 4) %= 0x3B9ACA00uLL;
                  v144 = v17[228];
                  if (v17[228])
                  {
                    v145 = v17 + 232;
                    do
                    {
                      *v145 %= 0x3B9ACA00uLL;
                      v145 += 5;
                      --v144;
                    }

                    while (v144);
                  }
                }

                else if ((v139 & 0x20) != 0)
                {
                  *(v17 + 4) %= 0x1E8480uLL;
                  v157 = v17[228];
                  if (v17[228])
                  {
                    v158 = v17 + 232;
                    do
                    {
                      *v158 %= 0x1E8480uLL;
                      v158 += 5;
                      --v157;
                    }

                    while (v157);
                  }
                }

                else if (v139)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v140 = v17[228];
                  if (v17[228])
                  {
                    v141 = v17 + 232;
                    do
                    {
                      *v141 %= 0xF4240uLL;
                      v141 += 5;
                      --v140;
                    }

                    while (v140);
                  }
                }
              }

              else
              {
                if (v123 != 3)
                {
                  goto LABEL_424;
                }

                v127 = *(v17 + 6);
                if ((v127 & 0x8080) != 0)
                {
                  *(v17 + 4) %= 0x4E94914F0000uLL;
                  v128 = v17[228];
                  if (v17[228])
                  {
                    v129 = v17 + 232;
                    do
                    {
                      *v129 %= 0x4E94914F0000uLL;
                      v129 += 5;
                      --v128;
                    }

                    while (v128);
                  }
                }

                else if ((v127 & 0x40) != 0)
                {
                  *(v17 + 4) %= 0x77359400uLL;
                  v168 = v17[228];
                  if (v17[228])
                  {
                    v169 = v17 + 232;
                    do
                    {
                      *v169 %= 0x77359400uLL;
                      v169 += 5;
                      --v168;
                    }

                    while (v168);
                  }
                }

                else if ((v127 & 2) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v181 = v17[228];
                  if (v17[228])
                  {
                    v182 = v17 + 232;
                    do
                    {
                      *v182 %= 0x1312D00uLL;
                      v182 += 5;
                      --v181;
                    }

                    while (v181);
                  }
                }

                else if ((v127 & 0x20) != 0)
                {
                  *(v17 + 4) %= 0x989680uLL;
                  v188 = v17[228];
                  if (v17[228])
                  {
                    v189 = v17 + 232;
                    do
                    {
                      *v189 %= 0x989680uLL;
                      v189 += 5;
                      --v188;
                    }

                    while (v188);
                  }
                }

                else if (v127)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v155 = v17[228];
                  if (v17[228])
                  {
                    v156 = v17 + 232;
                    do
                    {
                      *v156 %= 0xF4240uLL;
                      v156 += 5;
                      --v155;
                    }

                    while (v155);
                  }
                }
              }
            }

            else
            {
              if (v17[10] <= 5u)
              {
                if (v123 != 4)
                {
                  if (v123 != 5)
                  {
                    goto LABEL_424;
                  }

                  v124 = *(v17 + 6);
                  if ((v124 & 0x4008) != 0)
                  {
                    *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                    v125 = v17[228];
                    if (v17[228])
                    {
                      v126 = v17 + 232;
                      do
                      {
                        *v126 -= 604800000000000 * (((*v126 * v11) >> 64) >> 47);
                        v126 += 5;
                        --v125;
                      }

                      while (v125);
                    }
                  }

                  else
                  {
                    v146 = *(MeMeas + 1);
                    if ((v124 & 4) != 0)
                    {
                      v159 = *(v17 + 4);
                      if (v146 == 2)
                      {
                        *(v17 + 4) = v159 % 0x5F5E100;
                        v160 = v17[228];
                        if (v17[228])
                        {
                          v161 = v17 + 232;
                          do
                          {
                            *v161 %= 0x5F5E100uLL;
                            v161 += 5;
                            --v160;
                          }

                          while (v160);
                        }
                      }

                      else
                      {
                        *(v17 + 4) = v159 % 0x165A0BC00;
                        v175 = v17[228];
                        if (v17[228])
                        {
                          v176 = v17 + 232;
                          do
                          {
                            *v176 %= 0x165A0BC00uLL;
                            v176 += 5;
                            --v175;
                          }

                          while (v175);
                        }
                      }
                    }

                    else if ((v124 & 0x200) != 0)
                    {
                      *(v17 + 4) %= 0x23C34600uLL;
                      v171 = v17[228];
                      if (v17[228])
                      {
                        v172 = v17 + 232;
                        do
                        {
                          *v172 %= 0x23C34600uLL;
                          v172 += 5;
                          --v171;
                        }

                        while (v171);
                      }
                    }

                    else if ((v124 & 0x10000) != 0)
                    {
                      v183 = *(v17 + 4);
                      if (v146 == 2)
                      {
                        *(v17 + 4) = v183 % 0x5F5E100;
                        v184 = v17[228];
                        if (v17[228])
                        {
                          v185 = v17 + 232;
                          do
                          {
                            *v185 %= 0x5F5E100uLL;
                            v185 += 5;
                            --v184;
                          }

                          while (v184);
                        }
                      }

                      else
                      {
                        *(v17 + 4) = v183 % 0x1312D00;
                        v193 = v17[228];
                        if (v17[228])
                        {
                          v194 = v17 + 232;
                          do
                          {
                            *v194 %= 0x1312D00uLL;
                            v194 += 5;
                            --v193;
                          }

                          while (v193);
                        }
                      }
                    }

                    else if ((v124 & 2) != 0)
                    {
                      v190 = *(v17 + 4);
                      if (v146 == 2)
                      {
                        *(v17 + 4) = v190 % 0xF4240;
                        v191 = v17[228];
                        if (v17[228])
                        {
                          v192 = v17 + 232;
                          do
                          {
                            *v192 %= 0xF4240uLL;
                            v192 += 5;
                            --v191;
                          }

                          while (v191);
                        }
                      }

                      else
                      {
                        *(v17 + 4) = v190 % 0x1312D00;
                        v197 = v17[228];
                        if (v17[228])
                        {
                          v198 = v17 + 232;
                          do
                          {
                            *v198 %= 0x1312D00uLL;
                            v198 += 5;
                            --v197;
                          }

                          while (v197);
                        }
                      }
                    }

                    else if ((v124 & 0x100) != 0)
                    {
                      *(v17 + 4) %= 0x1E8480uLL;
                      v195 = v17[228];
                      if (v17[228])
                      {
                        v196 = v17 + 232;
                        do
                        {
                          *v196 %= 0x1E8480uLL;
                          v196 += 5;
                          --v195;
                        }

                        while (v195);
                      }
                    }

                    else if (v124)
                    {
                      *(v17 + 4) %= 0xF4240uLL;
                      v147 = v17[228];
                      if (v17[228])
                      {
                        v148 = v17 + 232;
                        do
                        {
                          *v148 %= 0xF4240uLL;
                          v148 += 5;
                          --v147;
                        }

                        while (v147);
                      }
                    }
                  }

                  goto LABEL_397;
                }

LABEL_235:
                v133 = *(v17 + 6);
                if ((v133 & 0x4008) != 0)
                {
                  *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                  v134 = v17[228];
                  if (v17[228])
                  {
                    v135 = v17 + 232;
                    do
                    {
                      *v135 -= 604800000000000 * (((*v135 * v11) >> 64) >> 47);
                      v135 += 5;
                      --v134;
                    }

                    while (v134);
                  }
                }

                else if ((v133 & 4) != 0)
                {
                  *(v17 + 4) %= 0x165A0BC00uLL;
                  v153 = v17[228];
                  if (v17[228])
                  {
                    v154 = v17 + 232;
                    do
                    {
                      *v154 %= 0x165A0BC00uLL;
                      v154 += 5;
                      --v153;
                    }

                    while (v153);
                  }
                }

                else if ((v133 & 2) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v166 = v17[228];
                  if (v17[228])
                  {
                    v167 = v17 + 232;
                    do
                    {
                      *v167 %= 0x1312D00uLL;
                      v167 += 5;
                      --v166;
                    }

                    while (v166);
                  }
                }

                else if ((v133 & 0x10000) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v179 = v17[228];
                  if (v17[228])
                  {
                    v180 = v17 + 232;
                    do
                    {
                      *v180 %= 0x1312D00uLL;
                      v180 += 5;
                      --v179;
                    }

                    while (v179);
                  }
                }

                else if (v133)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v142 = v17[228];
                  if (v17[228])
                  {
                    v143 = v17 + 232;
                    do
                    {
                      *v143 %= 0xF4240uLL;
                      v143 += 5;
                      --v142;
                    }

                    while (v142);
                  }
                }

                goto LABEL_397;
              }

              if (v123 == 6)
              {
                v136 = *(v17 + 6);
                if ((v136 & 0x4008) != 0)
                {
                  *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                  v137 = v17[228];
                  if (v17[228])
                  {
                    v138 = v17 + 232;
                    do
                    {
                      *v138 -= 604800000000000 * (((*v138 * v11) >> 64) >> 47);
                      v138 += 5;
                      --v137;
                    }

                    while (v137);
                  }
                }

                else if ((v136 & 0x1000) != 0)
                {
                  *(v17 + 4) %= 0x77359400uLL;
                  v164 = v17[228];
                  if (v17[228])
                  {
                    v165 = v17 + 232;
                    do
                    {
                      *v165 %= 0x77359400uLL;
                      v165 += 5;
                      --v164;
                    }

                    while (v164);
                  }
                }

                else if ((v136 & 0x800) != 0)
                {
                  *(v17 + 4) %= 0x5F5E100uLL;
                  v177 = v17[228];
                  if (v17[228])
                  {
                    v178 = v17 + 232;
                    do
                    {
                      *v178 %= 0x5F5E100uLL;
                      v178 += 5;
                      --v177;
                    }

                    while (v177);
                  }
                }

                else if ((v136 & 0x10000) != 0)
                {
                  *(v17 + 4) %= 0x5F5E100uLL;
                  v186 = v17[228];
                  if (v17[228])
                  {
                    v187 = v17 + 232;
                    do
                    {
                      *v187 %= 0x5F5E100uLL;
                      v187 += 5;
                      --v186;
                    }

                    while (v186);
                  }
                }

                else if ((v136 & 0x400) != 0)
                {
                  *(v17 + 4) %= 0x3D0900uLL;
                  v151 = v17[228];
                  if (v17[228])
                  {
                    v152 = v17 + 232;
                    do
                    {
                      *v152 %= 0x3D0900uLL;
                      v152 += 5;
                      --v151;
                    }

                    while (v151);
                  }
                }
              }

              else
              {
                if (v123 != 7)
                {
LABEL_424:
                  v219 = "rGnssMeas.constellation == GL_GNSS_CONSTELLATION_UNKNOWN";
                  DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1572, "CheckValidRSTRange", "rGnssMeas.constellation == GL_GNSS_CONSTELLATION_UNKNOWN");
                  v220 = "glpe_reqhdlr_gnss_meas_data.cpp";
                  v221 = 1572;
                  goto LABEL_423;
                }

                v130 = *(v17 + 6);
                if ((v130 & 0x4008) != 0)
                {
                  *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                  v131 = v17[228];
                  if (v17[228])
                  {
                    v132 = v17 + 232;
                    do
                    {
                      *v132 -= 604800000000000 * (((*v132 * v11) >> 64) >> 47);
                      v132 += 5;
                      --v131;
                    }

                    while (v131);
                  }
                }

                else if ((v130 & 4) != 0)
                {
                  *(v17 + 4) %= 0x165A0BC00uLL;
                  v162 = v17[228];
                  if (v17[228])
                  {
                    v163 = v17 + 232;
                    do
                    {
                      *v163 %= 0x165A0BC00uLL;
                      v163 += 5;
                      --v162;
                    }

                    while (v162);
                  }
                }

                else if ((v130 & 2) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v173 = v17[228];
                  if (v17[228])
                  {
                    v174 = v17 + 232;
                    do
                    {
                      *v174 %= 0x1312D00uLL;
                      v174 += 5;
                      --v173;
                    }

                    while (v173);
                  }
                }

                else if (v130)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v149 = v17[228];
                  if (v17[228])
                  {
                    v150 = v17 + 232;
                    do
                    {
                      *v150 %= 0xF4240uLL;
                      v150 += 5;
                      --v149;
                    }

                    while (v149);
                  }
                }
              }
            }

LABEL_397:
            v199 = *(v17 + 5);
            if (v199 < 1)
            {
              v200 = 1;
            }

            else
            {
              if (!HIDWORD(v199))
              {
LABEL_402:
                v201 = *(v17 + 6);
                if ((v201 & 0x88) != 0)
                {
                  *(v17 + 6) = (v201 << 8) & 0x8000 | (((v201 >> 3) & 1) << 14) | v201;
                }

                if ((*(v17 + 36) & 1) == 0)
                {
                  *(v17 + 36) = 0;
                }

                *(v17 + 54) = *(MeMeas + 9);
                v17[220] = MeMeas[40];
                ++*(this + 17);
                goto LABEL_407;
              }

              v200 = 0xFFFFFFFFLL;
            }

            *(v17 + 5) = v200;
            goto LABEL_402;
          }

LABEL_200:
          LOBYTE(v117) = 9;
          goto LABEL_201;
        }

        if (v115 >= 0xAF)
        {
          goto LABEL_191;
        }
      }

      v116 = 39824;
      goto LABEL_189;
    }

    v72 = *(MeMeas + 1);
    if (v72 == 3)
    {
      if (*(MeMeas + 4) >= 0x23Fu)
      {
        goto LABEL_421;
      }

      v74 = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
      LODWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v74 + 21];
      if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v74 + 21])
      {
        goto LABEL_422;
      }

      goto LABEL_138;
    }

    if (v72)
    {
      v73 = *(MeMeas + 3);
      if ((v73 & 2) != 0)
      {
        v77 = BlueFin::GlSignalId::GetEpochPerSymbol(MeMeas);
        if (*(MeMeas + 4) >= 0x23Fu)
        {
          goto LABEL_421;
        }

        v75 = *(MeMeas + 1);
        v78 = *MeMeas;
        LODWORD(v74) = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
        if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
        {
          goto LABEL_422;
        }

        if (!BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
        {
          v219 = "usSymbolsPerSecFrame != 0";
          DeviceFaultNotify("glsignalid.h", 771, "GetSymbolsPerSecFrame", "usSymbolsPerSecFrame != 0");
          v220 = "glsignalid.h";
          v221 = 771;
LABEL_423:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v220, v221, v219);
        }

        v79 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * v77 * BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        v80 = (v78 - 66) >= 0xA && (v78 - 1) >= 0x20;
        if (v80)
        {
          v81 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * v77 * BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        }

        else
        {
          v81 = 20;
        }

        if (v75 == 2)
        {
          LOWORD(v75) = v81;
        }

        else
        {
          LOWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * v77 * BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        }

        LODWORD(v75) = v75;
        goto LABEL_138;
      }
    }

    else
    {
      v73 = *(MeMeas + 3);
    }

    if ((v73 & 8) != 0)
    {
      EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(MeMeas);
    }

    else
    {
      if ((v73 & 4) == 0)
      {
        if (*(MeMeas + 4) >= 0x23Fu)
        {
          goto LABEL_421;
        }

        v75 = v72;
        LODWORD(v74) = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
        LODWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        if (!v75)
        {
          goto LABEL_422;
        }

        goto LABEL_138;
      }

      EpochPerBit = BlueFin::GlSignalId::GetEpochPerSymbol(MeMeas);
    }

    if (*(MeMeas + 4) >= 0x23Fu)
    {
      goto LABEL_421;
    }

    LODWORD(v74) = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
    {
LABEL_422:
      v219 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v220 = "glsignalid.h";
      v221 = 686;
      goto LABEL_423;
    }

    LODWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * EpochPerBit;
LABEL_138:
    v82 = v6 / v75;
    v83 = v242 * v82;
    v84 = *(MeMeas + 8) * v82 - floor(*(MeMeas + 8) * v82);
    v85 = v84 - (v83 - floor(v83));
    if (v85 >= v7)
    {
      v86 = -1.0;
    }

    else
    {
      if (v85 >= -0.5)
      {
LABEL_143:
        v87 = v84 + floor(v83);
        v88 = dbl_298A44C50[v74 == 2];
        v89 = v87 * v75;
        if (v74 == 2)
        {
          v90 = 0x8000;
        }

        else
        {
          v90 = 0x4000;
        }

        if (v89 < 0.0)
        {
          v89 = v88 + v89;
        }

        if (v89 >= v88)
        {
          v89 = v89 - v88;
        }

        v91 = &v5[392 * *(this + 17)];
        *(v91 + 4) = (v89 * 1000000.0);
        *(v91 + 6) = *(v91 + 6) & 0xFFFFFFEF | v90;
        goto LABEL_151;
      }

      v86 = 1.0;
    }

    v83 = v83 + v86;
    goto LABEL_143;
  }

LABEL_408:
  *(v225 + 301) = 104;
  v225[2416] = 1;
  LODWORD(v4) = *a2;
  *(v225 + 303) = (v4 * 1000000.0);
  *(this + 2458) = 0u;
  *(this + 2457) = 0u;
  *(this + 2456) = 0u;
  v202 = *(this + 7);
  *(v225 + 620) = *(*(v202 + 56) + 26168);
  v225[2488] = 1;
  *(v225 + 312) = 0x41D779C018000000;
  v225[2504] = 8;
  v203 = v225 + 2528;
  v204 = 18;
  do
  {
    *(v203 - 1) = 0;
    *v203 = 1084227584;
    v203 += 6;
    --v204;
  }

  while (v204);
  v246 = 1;
  v249 = 0;
  LOWORD(v250[0]) = 0;
  *(v225 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(v202 + 120), &v246, 1, 0) / 299792.458 * 1000000.0;
  v205 = *(*(this + 7) + 120);
  *(v225 + 632) = 0;
  v253[0] = 76;
  v254 = 3;
  v255 = 390;
  *(v225 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v205, v253, 1, 0) / 299792.458 * 1000000.0;
  v206 = *(*(this + 7) + 120);
  *(v225 + 632) = 0;
  LOBYTE(v244) = -117;
  HIDWORD(v244) = 0;
  v245 = 453;
  *(v225 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v206, &v244, 1, 0) / 299792.458 * 1000000.0;
  v207 = *(*(this + 7) + 120);
  *(v225 + 632) = 0;
  LOBYTE(v242) = 33;
  HIDWORD(v242) = 0;
  v243 = 128;
  *(v225 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v207, &v242, 1, 0) / 299792.458 * 1000000.0;
  v208 = *(*(this + 7) + 120);
  *(v225 + 632) = 0;
  v239[0] = 66;
  v240 = 0;
  v241 = 161;
  v209 = (v225 + 2600);
  *(v225 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v208, v239, 1, 0) / 299792.458 * 1000000.0;
  *(v225 + 632) = 0;
  v210 = 0x34u;
  do
  {
    v236[0] = v210;
    v237 = 0;
    v238 = 575;
    v211 = BlueFin::GlSvId::s_aucSvId2gnss[v210];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v211] == 255)
    {
      v237 = -1;
    }

    else
    {
      v238 = BlueFin::GlSignalId::s_ausGnss2signalId[v211] + v210 - BlueFin::GlSvId::s_aucGnss2minSvId[v211];
    }

    *(v209 - 1) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(*(this + 7) + 120), v236, 1, 0) / 299792.458 * 1000000.0;
    *v209 = 1084227584;
    v209 += 3;
    ++v210;
  }

  while (v210 != 66);
  v236[0] = 1;
  v237 = 2;
  v238 = 64;
  *(v225 + 321) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(*(this + 7) + 120), v236, 1, 1) / 299792.458 * 1000000.0;
  v212 = *(*(this + 7) + 120);
  v213 = *(v212 + 136) / 299792.458 * 1000000.0;
  *(v225 + 644) = v213;
  v233[0] = -117;
  v234 = 2;
  v235 = 525;
  *(v225 + 321) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v212, v233, 1, 1) / 299792.458 * 1000000.0;
  v214 = *(*(this + 7) + 120);
  v215 = *(v214 + 136) / 299792.458 * 1000000.0;
  *(v225 + 644) = v215;
  v230[0] = 76;
  v231 = 2;
  v232 = 327;
  *(v225 + 321) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v214, v230, 1, 1) / 299792.458 * 1000000.0;
  v216 = *(*(this + 7) + 120);
  v217 = *(v216 + 136) / 299792.458 * 1000000.0;
  *(v225 + 644) = v217;
  v227[0] = -81;
  v228 = 0;
  v229 = 561;
  *(v225 + 366) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v216, v227, 1, 1) / 299792.458 * 1000000.0;
  v218 = *(*(*(this + 7) + 120) + 136) / 299792.458 * 1000000.0;
  *(v225 + 734) = v218;
  if (*(*(this + 1) + 96))
  {
    BlueFin::GlPeGnssSvsInfoMgr::Generate((this + 108864), a2);
  }
}

float BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  if ((*(a1 + 168) & 1) == 0)
  {
    v4 = *(*(a1 + 144) + 2616);
    if (v4 == 1)
    {
      v6 = 24;
    }

    else
    {
      v5 = 0;
      if (v4 != 4)
      {
LABEL_7:
        *(a1 + 172) = v5;
        *(a1 + 168) = 1;
        goto LABEL_8;
      }

      v6 = 36;
    }

    v5 = *(a1 + v6);
    goto LABEL_7;
  }

LABEL_8:
  if (a3)
  {
    v7 = *(a2 + 1);
    v8 = a1 + 12;
    v9 = *a2;
    v10 = BlueFin::GlSvId::s_aucSvId2gnss[v9];
    if (a4 && v7 == 2)
    {
      v11 = *(v8 + 4 * BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10 + 14]);
      v12 = *(a1 + 128);
    }

    else
    {
      v11 = *(v8 + 4 * BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v7 - v7 + v10]);
      v12 = 0.0;
      if ((v9 - 66) >= 0xFFFFFFF2)
      {
        v12 = *(a1 + 4 * v9 - 136);
      }
    }

    return v11 + v12;
  }

  else
  {
    v13 = *a2;
    v14 = 0.0;
    if ((v13 - 66) >= 0xFFFFFFF2)
    {
      v14 = *(a1 + 4 * v13 - 136);
    }

    return (*(a1 + 4 * BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] + 12) + v14) - *(a1 + 172);
  }
}

BOOL BlueFin::GlPePpsGen::UpdatePps(BlueFin::GlPePpsGen *this)
{
  if (*(this + 56) != 1 || *(this + 9) == 4294967300.0)
  {
    return 0;
  }

  v2 = *(*(this + 1) + 7274) != 0;
  if (*(*(this + 1) + 7274))
  {
    v4 = *(this + 2);
    v5 = *(v4 + 240);
    if (v5)
    {
      v5(*(v4 + 8));
    }

    v6 = 0x1000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 10) != -1)
  {
    v7 = *(this + 1);
    v8 = *(this + 24);
    *(v7 + 7264) = *(this + 10);
    *(v7 + 7248) = v8;
    *(this + 10) = -1;
  }

  if (!*(this + 6))
  {
    DeviceFaultNotify("glpe_ppsgen.cpp", 88, "UpdatePps", "m_potMeasEng != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ppsgen.cpp", 88, "m_potMeasEng != nullptr");
  }

  v9 = *(*this + 2568);
  BlueFin::GlPeTimeManager::GetTime(*this, v9, 1, v35);
  UncUs = BlueFin::GlPeGnssTime::GetUncUs(v35, 0);
  v33 = COERCE_DOUBLE(&off_2A1F0B5F0);
  v34 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v35, &v33);
  v12 = (*(*&v33 + 32))(&v33, Gps);
  v13 = 0;
  LODWORD(v14) = v34;
  v15 = (v14 * 2.32830644e-10 + (v12 % 0x93A80)) * 1000.0;
  v16 = -floor(v15 / 1000.0 + 0.5);
  v17 = -0.0;
  if (v15 / 1000.0 > 0.0)
  {
    v17 = v16;
  }

  if (UncUs >= *(this + 9))
  {
    v19 = 0;
  }

  else
  {
    v18 = v15 + v17 * 1000.0;
    v19 = 0;
    if (fabs(v18) <= 0.5)
    {
      v20 = v18 + 0.076036 + *(this + 8);
      v21 = v20 / 1000.0;
      if (v20 / 1000.0 <= 0.0)
      {
        v22 = 0.0;
        if (v20 / 1000.0 < 0.0)
        {
          v22 = ceil(v21 + -0.5);
        }
      }

      else
      {
        v22 = floor(v21 + 0.5);
      }

      v23 = v20 - v22 * 1000.0;
      v24 = -(v20 + -v22 * 1000.0);
      v33 = 0.0;
      if (v9 <= 0xFF9222FE)
      {
        v25 = v9;
      }

      else
      {
        v25 = v9;
      }

      BlueFin::GlPeTimeManager::GetDtsS(*this, v25, 0, 0, &v33, 0);
      GlCustomLog(15, "PPS::SetPpsAiding(timestamp:%u  deltaMs:%+.6lf  periodMs:%.6lf PpsLms %.6lf)\n", v9, v24, (v33 + 1.0) * 1000.0, v9 - v23);
      v26.n128_f64[0] = (v33 + 1.0) * 1000.0;
      (*(**(this + 6) + 272))(v24, v26);
      BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*this, 2u, 0, this + 24, v25);
      *v28.i64 = UncUs * 1000.0 + 0.5;
      *v29.i64 = *v28.i64 + trunc(*v28.i64 * 2.32830644e-10) * -4294967300.0;
      v30.f64[0] = NAN;
      v30.f64[1] = NAN;
      v31 = vnegq_f64(v30);
      *&v32 = vbslq_s8(v31, v29, v28).u64[0];
      if (*v28.i64 > 4294967300.0)
      {
        *v28.i64 = v32;
      }

      if (*v28.i64 < -4294967300.0)
      {
        *v27.i64 = -*v28.i64;
        *v28.i64 = -(*v28.i64 - trunc(*v28.i64 * -2.32830644e-10) * -4294967300.0);
        *v28.i64 = -*vbslq_s8(v31, v28, v27).i64;
      }

      LODWORD(v19) = *v28.i64;
      if (*v28.i64 < 0.0)
      {
        v19 = --*v28.i64;
      }

      else
      {
        v19 = v19;
      }

      v13 = 0x100000000;
    }
  }

  *(*(this + 1) + 7268) = v13 | v6 | v19;
  return v2;
}

uint64_t BlueFin::GlReqSm::DistributeFixStatus(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 31077;
  v72 = 0;
  v8 = (a1 + 10880);
  if (!BlueFin::GlPeReqBag::NeedInterpolation((a1 + 10880), &v72))
  {
    goto LABEL_65;
  }

  if (!a3)
  {
    DeviceFaultNotify("glreqsm.cpp", 2129, "InterpolateFixStatus", "potFixStatus != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glreqsm.cpp", 2129, "potFixStatus != nullptr");
  }

  v70 = v72;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v9 = *(v7 + 471);
  if (v9 < 0x12E)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v10 = v9 / 0x12E - 1;
    while (!BlueFin::GlPeReqBag::ReadPreviousPosition(v8, v10, &v86) || (BYTE1(v86) & 1) == 0)
    {
      if (--v10 == -1)
      {
        goto LABEL_8;
      }
    }

    if (!*(a3 + 4048) || *(a3 + 4144) >= 50.0)
    {
      if (!v70)
      {
        BlueFin::GlPeReqBag::ResetInterpolation(v8);
      }

      goto LABEL_65;
    }

    v11 = 1;
  }

  BlueFin::GlPeReqBag::ResetInterpolation(v8);
  v84 = 0uLL;
  v85 = 0;
  v12 = *(a3 + 4072);
  v83 = *(a3 + 4088);
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v81 = 0u;
  v82 = v12;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v13 = *(v7 + 471);
  if (v13 >= 0x12E)
  {
    v68 = a3;
    v14 = 0;
    v15 = v13 / 0x12E - 1;
    while (1)
    {
      if (BlueFin::GlPeReqBag::ReadPreviousPosition(v8, v15, &v86))
      {
        v16 = *(a1 + 14132) + *a3 - DWORD2(v86);
        v17 = v16 / 0x3E8;
        v19 = v16 > 0x3E7 && v16 % 0x3E8 < 0x1F4;
        v14 = v17 - v19;
        if (!v11)
        {
LABEL_21:
          if (v14 - 20 < 0xFFFFFFED)
          {
            v20 = 1;
          }

          else
          {
            v20 = v11;
          }

          v21 = 0.0;
          v22 = 0.0;
          if (v20)
          {
            goto LABEL_65;
          }

LABEL_36:
          if (*(v7 + 1))
          {
            BYTE6(v78) = 1;
            v25 = *(v7 + 51);
            if (BYTE5(v86) == 1)
            {
              v25 = (v25 + *(&v90 + 2)) * 0.5;
            }

LABEL_41:
            *(&v81 + 2) = v25;
          }

          else if (BYTE5(v86))
          {
            BYTE6(v78) = 1;
            v25 = *(&v90 + 2);
            goto LABEL_41;
          }

          v67 = a4;
          if (*v7)
          {
            BYTE5(v78) = 1;
            v26 = *(v7 + 35);
            if (BYTE4(v86) == 1)
            {
              v69 = (*(v7 + 39) - *(&v89 + 3)) / v14;
              v27 = v90;
              v28 = (*(a1 + 31120) - v90) / v14;
              *(&v80 + 2) = (v26 + *(&v89 + 2)) * 0.5;
              HIDWORD(v80) = HIDWORD(v89);
            }

            else
            {
              v28 = 0;
              v69 = -v26;
              v29 = *(v7 + 39);
              DWORD2(v80) = *(v7 + 35);
              HIDWORD(v80) = v29;
              v27 = *(a1 + 31120);
            }

LABEL_48:
            *&v81 = v27;
          }

          else
          {
            if (BYTE4(v86))
            {
              v28 = 0;
              BYTE5(v78) = 1;
              v69 = *(&v89 + 2);
              *(&v80 + 1) = *(&v89 + 1);
              v27 = v90;
              goto LABEL_48;
            }

            v28 = 0;
            v69 = 0.0;
          }

          BlueFin::lla2ned(&v82, &v84, 0, &v75);
          v30 = (v14 + 1);
          v31 = v75 / v30;
          v32 = v76 / v30;
          v33 = (v7 + 947);
          v34 = BYTE2(v86) & BYTE3(v86);
          v35 = DWORD2(v86) + 1000;
          v36 = -1000 * v14;
          v37 = v77 / v30;
          v38 = 1.0;
          do
          {
            *(&v80 + 3) = v69 + *(&v80 + 3);
            *&v81 = v81 + v28;
            v39 = 1.0 / v38;
            if ((v34 & 1) == 0)
            {
              v39 = 0.0;
            }

            v75 = (v31 * (1.0 - v39) + v22 * v39) * v38;
            v76 = (v32 * (1.0 - v39) + v21 * v39) * v38;
            v77 = v37 * v38;
            BlueFin::ned2lla(&v84, &v75, &v73);
            v40 = *(a1 + 31800);
            v41 = v74;
            *(v40 + 4072) = v73;
            *(v40 + 4088) = v41;
            v42 = v36 + *v40;
            *v40 = v42;
            v43 = v42;
            if (v42 <= 0xFF9222FE)
            {
              v43 = v42;
            }

            BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(v40 + 7848), 2u, 1, v40 + 4, v43);
            v44 = *(a1 + 31800);
            BlueFin::GlPeReqBag::SetInterPolateFixStatus(v8);
            if (a2)
            {
              v45 = *(*(a1 + 6304) + 61032);
              if (v45)
              {
                LOBYTE(v45) = *(v45 + 1076);
              }

              *(a1 + 54026) = v45 & 1;
              v46 = *(a1 + 31800);
              BlueFin::GlReqSm::GenerateNMEA(a1);
              if (*(v7 + 963) == 1)
              {
                *(v7 + 963) = 0;
                *(v7 + 2059) = 0;
              }

              v47 = *v33;
              *v33 = 1;
              if (v47 != 1)
              {
                *(v7 + 963) = 1;
              }
            }

            v38 = v38 + 1.0;
            v35 += 1000;
            v36 += 1000;
            --v14;
          }

          while (v14);
          v48 = *(a1 + 31800);
          v49 = v83;
          *(v48 + 4072) = v82;
          *(v48 + 4088) = v49;
          v50 = *v48;
          if (*v48 <= 0xFF9222FE)
          {
            v50 = *v48;
          }

          BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(v48 + 7848), 2u, 1, v48 + 4, v50);
          a4 = v67;
          a3 = v68;
          goto LABEL_65;
        }

        if (BYTE1(v86) == 1)
        {
          break;
        }
      }

      if (--v15 == -1)
      {
        goto LABEL_21;
      }
    }

    v84 = v87;
    v85 = v88;
    v22 = 0.0;
    if (BYTE2(v86) == 1)
    {
      v21 = 0.0;
      if (BYTE3(v86) == 1)
      {
        v23 = *(&v88 + 1) / 1.9438445;
        v24 = __sincos_stret(*&v89 * 0.0174532925);
        v22 = v24.__cosval * v23;
        v21 = v24.__sinval * v23;
      }
    }

    else
    {
      v21 = 0.0;
    }

    if (v14 - 1 <= 0x12)
    {
      goto LABEL_36;
    }
  }

LABEL_65:
  result = BlueFin::GlPeReqBag::NeedInterpolation(v8, &v72);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      v52 = *(*(a1 + 6304) + 61032);
      if (v52)
      {
        LOBYTE(v52) = *(v52 + 1076);
      }

      *(a1 + 54026) = v52 & 1;
      BlueFin::GlReqSm::GenerateNMEA(a1);
      if (*(v7 + 963) == 1)
      {
        *(v7 + 963) = 0;
        *(v7 + 2059) = 0;
      }

      v53 = *(v7 + 947);
      *(v7 + 947) = 1;
      if (v53 != 1)
      {
        *(v7 + 963) = 1;
      }
    }

    result = BlueFin::GlPeReqBag::SetFixStatus(v8);
    if ((*(a1 + 12193) & 0x80) != 0)
    {
      result = GlCustomLog(14, "Active Request: GL_REQ_GNSS_MEAS_DATA\n");
      v56 = 0;
      v57 = *(v7 + 2115);
      while (1)
      {
        v58 = *(v8 + v56);
        if (v58)
        {
          if (*(*(v58 + 8) + 16) == 15)
          {
            break;
          }
        }

        v56 += 8;
        if (v56 == 576)
        {
          v59 = 0;
          goto LABEL_82;
        }
      }

      v59 = v58 + 64;
LABEL_82:
      v60 = *(v57 + 160);
      if (v60)
      {
        result = v60(*(v57 + 8), a3, v59);
      }
    }

    else
    {
      v54 = *(v7 + 2115);
      v55 = *(v54 + 160);
      if (v55)
      {
        result = v55(*(v54 + 8), a3, 0);
      }
    }

    v61 = *(v7 + 2115);
    v62 = *(v61 + 216);
    if (v62)
    {
      result = v62(*(v61 + 8), *(a1 + 6320) + 56136);
    }

    if (!**a4)
    {
      v63 = *(a4 + 8);
      if (v63 < 2)
      {
        return BlueFin::GlPeReqBag::InitializeReqIdReportingSet(v8, a3, a4);
      }

      else
      {
        v64 = v63 - 1;
        v65 = (*a4 + 4);
        while (!*v65++)
        {
          if (!--v64)
          {
            return BlueFin::GlPeReqBag::InitializeReqIdReportingSet(v8, a3, a4);
          }
        }
      }
    }
  }

  return result;
}

BOOL BlueFin::GlPeReqBag::NeedInterpolation(BlueFin::GlPeReqBag *this, BOOL *a2)
{
  v4 = 0;
  *a2 = 0;
  v5 = 1;
  while (1)
  {
    v6 = *(this + v4);
    if (v6)
    {
      if ((*(**(v6 + 8) + 496))(*(v6 + 8)))
      {
        break;
      }
    }

    v5 = v4++ < 0x47;
    if (v4 == 72)
    {
      return 0;
    }
  }

  v7 = *(*(this + v4) + 8);
  *a2 = (*(*v7 + 472))(v7);
  return v5;
}

uint64_t BlueFin::GlPeReqBag::GenerateNMEA(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = result;
  v47 = *MEMORY[0x29EDCA608];
  v19 = (result + 3233);
  v20 = *(result + 3233);
  *(result + 3233) = 0;
  if (!v2)
  {
    v3 = *(*(result + 20088) + 31800);
  }

  for (i = 0; i != 72; ++i)
  {
    v12 = *(v10 + 8 * i);
    if (v12)
    {
      v13 = *(v12[1] + 16);
      v14 = v13 > 0xD;
      v15 = (1 << v13) & 0x291F;
      if (!v14 && v15 != 0)
      {
        bzero(v21, 0x1CF8uLL);
        memset(&v21[7416], 248, 24);
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
        v17 = (*(*v12 + 248))(v12, v21, v3);
        result = BlueFin::GlPeReqBag::GenerateNMEAForReqHdlr(v10, v17, v9, v7, v5, i);
      }
    }
  }

  *v19 = v20;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlReqSm::GenerateNMEA(uint64_t a1)
{
  v2 = (a1 + 32024);
  v3 = *(*(a1 + 6304) + 61032);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 1076);
  }

  *(a1 + 54026) = v3 & 1;
  v4 = *(a1 + 6320);
  v5 = *(a1 + 6272);
  result = BlueFin::GlPeReqBag::GenerateNMEA(a1 + 10880);
  v7 = *(a1 + 6320) + 56096;
  *v7 = 0u;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 0;
    *(v2 + 139) = 0;
  }

  v8 = *v2;
  *v2 = 1;
  if (v8 != 1)
  {
    *(v2 + 16) = 1;
  }

  return result;
}

char *BlueFin::GlPeRqHdlrPosPeriodic::GetFixStatus(uint64_t a1, char *__dst, char *__src, double a4)
{
  if (__dst != __src)
  {
    memcpy(__dst, __src, 0x1CF8uLL);
    v7 = *(__src + 929);
    *(__dst + 7416) = *(__src + 7416);
    *(__dst + 929) = v7;
    memcpy(__dst + 7440, __src + 7440, 0x190uLL);
  }

  v8 = *(a1 + 168);
  __dst[4048] = v8;
  LODWORD(a4) = *(a1 + 72);
  *(__dst + 863) = *&a4;
  *(__dst + 1754) = *(a1 + 172);
  if (!v8)
  {
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
  }

  return __dst;
}

uint64_t BlueFin::GlPeReqBag::GenerateNMEAForReqHdlr(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v81 = *MEMORY[0x29EDCA608];
  v58 = &unk_2A1F13AA0;
  v59 = (result + 3233);
  v60 = *(result + 3233);
  *(result + 3233) = 0;
  if (a6 <= 0x47)
  {
    v10 = result;
    v11 = *(result + 8 * a6);
    v12 = *(v11 + 24);
    result = (*(*v11[1] + 512))(v11[1]);
    if (result & 1) != 0 || BlueFin::GlUtils::m_ucEnabled && (result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x14), (result))
    {
      *(v10 + 1344) = 1;
      *(v10 + 1348) = 0;
      *(v10 + 1672) = 0;
      *(v10 + 1674) = 0;
      v15 = (v10 + 3104);
      *(v10 + 3216) = 0;
      *(v10 + 3104) = 0;
      *(v10 + 3107) = 0;
      BlueFin::GlPeNmeaGen::FormatTimeTag((v10 + 1344), *a2, v13, v14);
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      *__s = 0u;
      v62 = 0u;
      v17 = BlueFin::GlPeNmeaGen::FormatNmea(v10 + 1344, a2, __s, 0x140, 0, v16);
      v18 = strlen(__s);
      if (((*v11)[5])(v11, v17, a2, __s, v18))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaSTA(v10 + 1344, a2, *(v10 + 576), __s, 320);
      v19 = strlen(__s);
      if (((*v11)[5])(v11, 0, a2, __s, v19))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      if ((*(v10 + 20700) & 1) == 0)
      {
        v20 = *(v10 + 600);
        if (*(v20 + 2816) != -1 && *(v20 + 2832) != 4294967300.0)
        {
          LODWORD(v55) = *(v20 + 2552);
          *v56 = *(v20 + 2856);
          v21.f64[0] = *(v20 + 2848);
          v21.f64[1] = *(v20 + 2864);
          v22 = vmulq_f64(v21, xmmword_298A44A70);
          *&v56[8] = v22;
          LODWORD(v22.f64[0]) = *(v20 + 2872);
          LODWORD(v57) = (*&v22.f64[0] * 0.001);
          BlueFin::GlPeNmeaGen::FormatNmeaRTC(v10 + 1344, &v55, __s, 0x140);
          v23 = strlen(__s);
          if (((*v11)[5])(v11, 0, a2, __s, v23))
          {
            GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
          }

          *(v10 + 20700) = 1;
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaUNC(v10 + 1344, a2, *(v10 + 600), __s, 320);
      v24 = strlen(__s);
      if (((*v11)[5])(v11, 0, a2, __s, v24))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      while ((*(v10 + 1674) & 1) == 0)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaSAT(v10 + 1344, a2, __s, 320);
        v25 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v25))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      while (*v15 != 7)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaSVC(v10 + 1344, a2, __s, 0x140);
        if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaGLO((v10 + 1344), a2, __s, 0x140);
      if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaSIO(a3, __s, 0x140, v26);
      v27 = strlen(__s);
      if (((*v11)[5])(v11, 0, a2, __s, v27))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      if (*(*(v10 + 584) + 54026) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaHLA(v10 + 1344, a2, __s, 0x140);
        v28 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v28))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      v29 = *(v10 + 20016) + 61440;
      v30 = *(*(v10 + 20016) + 61544);
      v31 = *(*(v10 + 20016) + 61528);
      v32 = *(*(v10 + 20016) + 61520);
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      *(v29 + 80) = 0;
      *(v29 + 104) = 0;
      v33 = *(*(v10 + 20016) + 57432);
      v55 = v32;
      *v56 = v31;
      v56[16] = v30;
      v57 = v33;
      if (v32 || *(v33 + 16))
      {
        BlueFin::GlPeNmeaGen::FormatNmeaCTX(v10 + 1344, a2, __s, 0x140, &v55);
        v34 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v34))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaLSQ((v10 + 1344), a2, __s, 0x140);
      if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPWR(v10 + 1344, (a4 + 56016), *a2, __s, 320);
      if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      if (*(a3 + 232) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaPFM((v10 + 1344), a3, __s, 0x140);
        v35 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v35))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      if (*(*(v10 + 584) + 54559) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaSyncin(v10 + 1344, a2, __s, 0x140);
        v36 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v36))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }

        *(*(v10 + 584) + 54559) = 0;
      }

      if ((**(a5 + 160) & 2) != 0)
      {
        v37 = *(a3 + 1240);
        if (v37)
        {
          BlueFin::GlPeNmeaGen::FormatNmeaSVD((v10 + 1344), v37, __s, 0x140);
          v38 = strlen(__s);
          if (((*v11)[5])(v11, 0, a2, __s, v38))
          {
            GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
          }
        }
      }

      if (*(*(v10 + 584) + 54025) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaPPS(v10 + 1344, a2, __s, 0x140);
        if (strlen(__s) >= 1)
        {
          if (((*v11)[5])(v11, 0, a2, __s))
          {
            GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
          }
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaAGC(v10 + 1344, a3, a2, __s, 320);
      v39 = strlen(__s);
      result = ((*v11)[5])(v11, 0, a2, __s, v39);
      if (result)
      {
        result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      v42 = *(a3 + 1240);
      if (v42)
      {
        v43 = (v42 + 804);
        v44 = 4;
        do
        {
          if (*v43 == 1)
          {
            BlueFin::GlPeNmeaGen::FormatNmeaCN0(v10 + 1344, v43, __s, 320);
            v45 = strlen(__s);
            result = ((*v11)[5])(v11, 0, a2, __s, v45);
            if (result)
            {
              result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
            }
          }

          v43 += 20;
          --v44;
        }

        while (v44);
      }

      v46 = *(v10 + 608);
      v47 = *(v46 + 12);
      if (v47 != -1)
      {
        v48 = *(v46 + 8);
        result = ((*v11)[42])(v11);
        if (result)
        {
          if (BlueFin::GlPeTimeManager::GetSleepTimeSec(*(v10 + 20008), v40, *v41.i64, v49, v50) >= 0x259 && (*(*(v10 + 608) + 8) & 4) == 0)
          {
            v47 &= ~4u;
          }

          if (*(*(v10 + 20080) + 10) >= 302 && (*(*(v10 + 608) + 8) & 0x10) == 0)
          {
            v47 &= ~0x10u;
          }

          if (*(*(v10 + 20112) + 31))
          {
            v51 = v47 | 2;
          }

          else
          {
            v51 = v47;
          }

          BlueFin::GlPeNmeaGen::FormatNmeaNVM((v10 + 1344), __s, 320, v48, v51);
          v52 = strlen(__s);
          (*(*v11[1] + 504))(v11[1], __s, v52);
          result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      if ((*(v10 + 3110) & 1) == 0)
      {
        do
        {
          v53 = BlueFin::GlPeNmeaGen::FormatNmea(v10 + 1344, a2, __s, 0x140, *v40.i8, v41);
          result = strlen(__s);
          if (result >= 1)
          {
            result = ((*v11)[5])(v11, v53, a2, __s);
            if (result)
            {
              result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
            }
          }
        }

        while (*(v10 + 3110) != 1);
      }
    }
  }

  *v59 = v60;
  v54 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeNmeaGen::FormatTimeTag(BlueFin::GlPeNmeaGen *this, unsigned int a2, uint64_t a3, const char *a4)
{
  v5 = *(this + 230);
  if (*(v5 + 644))
  {
    *v8.i64 = BlueFin::GlPeTimeManager::GetUtcTime(v5, a2, v32);
    v8.i32[0] = v33;
    *v8.i64 = floor(v8.u64[0] * 2.32830644e-10 * 100.0 + 0.5) * 0.01;
    if (*v8.i64 >= 1.0)
    {
      v9 = v34 + *v8.i64;
      v34 = v9;
      v10 = trunc(*v8.i64);
      v11 = BlueFin::GlWeekTowTime::m_ucNextLs;
      if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v12 = v9 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v9)
      {
        v11 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
      }

      v14 = v9 - ((BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v13) - v11 + 432000;
      v15 = v14 % 0x7861F80;
      v16 = v14 % 0x7861F80 / 0x15180;
      if (v14 % 0x7861F80 > 0x5A4EBFF)
      {
        v17 = 3;
      }

      else if (v15 <= 0x3C3B87F)
      {
        v17 = v15 > 0x1E284FF;
      }

      else
      {
        v17 = 2;
      }

      *v7.i64 = *v8.i64 - v10;
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v20 = v17;
      v21 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v17];
      if (v16 >= v21[9])
      {
        v22 = 9;
      }

      else if (v16 >= v21[6])
      {
        v22 = 6;
      }

      else if (v16 >= v21[3])
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      v23 = vnegq_f64(v19);
      v35 = (v20 | (4 * (v14 / 0x7861F80))) + 1980;
      v36 = v16 - *v21 + 1;
      if (v16 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v20 + v22 + 2])
      {
        v24 = 3;
      }

      else if (v16 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v20 + v22 + 1])
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v8.i64[0] = vbslq_s8(v23, v7, v8).u64[0];
      v25 = v24 + v22;
      v37 = v25;
      v38 = v16 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v20 + v25 - 1] + 1;
      LOBYTE(v16) = 60;
      if (((BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v13) != 0)
      {
        LOBYTE(v26) = 59;
        LOBYTE(v27) = 23;
      }

      else
      {
        v27 = (1193047 * (v14 % 0x15180)) >> 32;
        v26 = (2185 * (v14 % 0xE10)) >> 17;
        v16 = v14 % 0x3C;
      }

      v39 = v27;
      v40 = v26;
      v41 = v16;
    }

    if (*v8.i64 < 0.0 || *v8.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 260, "setFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 260, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v29 = *v8.i64 * 4294967300.0 + 0.5;
    v30 = v29;
    if (v29 >= 4294967300.0)
    {
      v30 = -1;
    }

    v33 = v30;
    LOBYTE(v29) = v41;
    BlueFin::GlFormat::glsnprintf((this + 1767), 0x20, "%02hd%02hd%05.2lf", v6, v39, v40, v30 * 2.32830644e-10 + *&v29);
    return BlueFin::GlFormat::glsnprintf((this + 1799), 0x20, "%02hd%02hd%02hd", v31, v38, v37, v35 % 0x64u);
  }

  else
  {
    result = BlueFin::GlFormat::glsnprintf((this + 1767), 0x20, "%02d%02d%02d.00", a4, a2 / 0x36EE80uLL, (2185 * (a2 / 0x3E8 - 3600 * (((2386093 * (a2 / 0x3E8)) >> 32) >> 1))) >> 17, (a2 / 0x3E8 - 60 * ((71582789 * (a2 / 0x3E8)) >> 32)));
    *(this + 1799) = 0;
  }

  return result;
}

unint64_t BlueFin::GlFormat::gl_output_num(BlueFin::GlFormat *this, char *a2, int a3, __int16 a4, int a5, unint64_t a6, char a7)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v15 = 0;
    goto LABEL_82;
  }

  v7 = a4;
  v9 = this;
  v35[39] = 0;
  LODWORD(v10) = 0;
  v11 = (a3 - 88);
  if ((a4 & 0x800) != 0)
  {
    if (v11 > 0x20)
    {
      goto LABEL_40;
    }

    if (((1 << (a3 - 88)) & 0x20021000) != 0)
    {
      v12 = 0;
      do
      {
        v35[v12-- + 38] = (a6 % 0xA) | 0x30;
        v29 = a6 >= 0xA;
        a6 /= 0xAuLL;
      }

      while (v29);
    }

    else if (((1 << (a3 - 88)) & 0x100000001) != 0)
    {
      v12 = 0;
      if (a3 == 88)
      {
        v16 = 65;
      }

      else
      {
        v16 = 97;
      }

      do
      {
        if ((a6 & 0xF) >= 0xA)
        {
          v17 = (a6 & 0xF) + v16 - 10;
        }

        else
        {
          v17 = a6 & 0xF | 0x30;
        }

        v35[v12-- + 38] = v17;
        v29 = a6 >= 0x10;
        a6 >>= 4;
      }

      while (v29);
    }

    else
    {
      if (v11 != 23)
      {
        goto LABEL_40;
      }

      v12 = 0;
      do
      {
        v35[v12-- + 38] = a6 & 7 | 0x30;
        v29 = a6 >= 8;
        a6 >>= 3;
      }

      while (v29);
    }
  }

  else
  {
    if (v11 > 0x20)
    {
      goto LABEL_40;
    }

    if (((1 << (a3 - 88)) & 0x20021000) != 0)
    {
      v12 = 0;
      do
      {
        v35[v12-- + 38] = (a6 % 0xA) | 0x30;
        v29 = a6 >= 0xA;
        LODWORD(a6) = a6 / 0xA;
      }

      while (v29);
    }

    else if (((1 << (a3 - 88)) & 0x100000001) != 0)
    {
      v12 = 0;
      if (a3 == 88)
      {
        v13 = 65;
      }

      else
      {
        v13 = 97;
      }

      do
      {
        if ((a6 & 0xF) >= 0xA)
        {
          v14 = (a6 & 0xF) + v13 - 10;
        }

        else
        {
          v14 = a6 & 0xF | 0x30;
        }

        v35[v12-- + 38] = v14;
        v29 = a6 >= 0x10;
        LODWORD(a6) = a6 >> 4;
      }

      while (v29);
    }

    else
    {
      if (v11 != 23)
      {
        goto LABEL_40;
      }

      v12 = 0;
      do
      {
        v35[v12-- + 38] = a6 & 7 | 0x30;
        v29 = a6 >= 8;
        LODWORD(a6) = a6 >> 3;
      }

      while (v29);
    }
  }

  v10 = -v12;
  if (v10 >= 40)
  {
    DeviceFaultNotify("glutl_str_format.cpp", 1041, "gl_output_num", "len < 40");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_str_format.cpp", 1041, "len < 40");
  }

LABEL_40:
  v18 = (39 - v10);
  v19 = a5 - v10;
  if ((a3 - 100) <= 0x11 && ((1 << (a3 - 100)) & 0x20021) != 0)
  {
    if ((a7 & 1) == 0)
    {
      v20 = 45;
      goto LABEL_50;
    }

    if ((a4 & 0x10) != 0)
    {
      v20 = 43;
      goto LABEL_50;
    }

    if ((a4 & 8) != 0)
    {
      v20 = 32;
LABEL_50:
      *this = v20;
      v9 = (this + 1);
      --v19;
LABEL_51:
      v15 = 1;
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if ((a4 & 1) == 0)
  {
LABEL_48:
    v15 = 0;
    goto LABEL_52;
  }

  if (a3 == 111)
  {
    if (v35[v18] != 48)
    {
      *this = 48;
      v9 = (this + 1);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  *this = 48;
  if (a2 == 1)
  {
    v15 = 1;
    v9 = (this + 1);
  }

  else
  {
    *(this + 1) = a3;
    v9 = (this + 2);
    v15 = 2;
  }

LABEL_52:
  v21 = v19 & ~(v19 >> 31);
  if ((a4 & 4) == 0 && v19 >= 1)
  {
    v22 = v21 - 1;
    if ((a4 & 2) != 0)
    {
      if (v15 < a2)
      {
        if (&a2[~v15] >= v22)
        {
          v23 = (v21 - 1);
        }

        else
        {
          v23 = &a2[~v15];
        }

        v24 = v23 + 1;
        v25 = v9;
        v26 = 48;
        goto LABEL_65;
      }
    }

    else if (v15 < a2)
    {
      if (&a2[~v15] >= v22)
      {
        v23 = (v21 - 1);
      }

      else
      {
        v23 = &a2[~v15];
      }

      v24 = v23 + 1;
      v25 = v9;
      v26 = 32;
LABEL_65:
      memset(v25, v26, v24);
      v9 = (v9 + v24);
      v21 = v21 - v23 - 2;
      v15 = (v15 + v23 + 1);
      goto LABEL_67;
    }

    --v21;
  }

LABEL_67:
  v27 = v35[v18];
  v28 = v15;
  if (v27)
  {
    v29 = v15 >= a2;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = &v35[v18 + 1];
    LODWORD(v28) = v15;
    do
    {
      *v9 = v27;
      v9 = (v9 + 1);
      v28 = (v28 + 1);
      v31 = *v30++;
      v27 = v31;
      if (v31)
      {
        v32 = v28 >= a2;
      }

      else
      {
        v32 = 1;
      }

      v15 = v28;
    }

    while (!v32);
  }

  if ((v7 & 4) != 0 && v21 >= 1 && v28 < a2)
  {
    do
    {
      *v9 = 32;
      v9 = (v9 + 1);
      v15 = (v15 + 1);
      if (v21 < 2)
      {
        break;
      }

      --v21;
    }

    while (v15 < a2);
  }

LABEL_82:
  v33 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmea(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, const char *a4, uint8x8_t a5, uint32x4_t a6)
{
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    word_2A13C1718 = 73;
    a5 = *&__const__ZN7BlueFin11GlPeNmeaGen10FormatNmeaEPKNS_13GL_FIX_STATUSEPcs_acTalkerCodesv411;
    BlueFin::GlPeNmeaGen::m_acTalkerCodes = __const__ZN7BlueFin11GlPeNmeaGen10FormatNmeaEPKNS_13GL_FIX_STATUSEPcs_acTalkerCodesv411;
    v7 = *a1;
    if (*a1)
    {
      BlueFin::GlPeNmeaGen::FormatNmeaGNS(a1, a2, a3, a4);
LABEL_10:
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      BlueFin::GlPeNmeaGen::FormatNmeaGGA(a1, a2, a3, a4);
      goto LABEL_10;
    }
  }

  if ((v7 & 8) != 0)
  {
    BlueFin::GlPeNmeaGen::FormatNmeaRMC(a1, a2, a3, a4);
    result = 8;
  }

  else if ((v7 & 4) != 0)
  {
    v9 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(a1, a2, a3, a4);
    result = 4;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if ((v7 & 2) != 0)
  {
    v10 = BlueFin::GlPeNmeaGen::FormatNmeaGSV(a1, a2, a3, a4, a5, a6);
    result = 2;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = 0;
  }

LABEL_12:
  *a1 *= 2;
LABEL_13:
  *(a1 + 1766) = (*a1 & 0xF) == 0;
  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaGGA(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4 - 1;
  *this = 0;
  v7 = *(a2 + 4274);
  if (!*(a2 + 4048) || (*(a2 + 4068) & 8) != 0)
  {
    if (v6 > this)
    {
      v20 = a4;
    }

    else
    {
      v20 = 0;
    }

    v21 = (this + BlueFin::GlFormat::glsnprintf(this, v20, "$GPGGA,%s,", a4, a1 + 1767));
    if (v6 > v21)
    {
      v23 = (v6 - v21 + 1);
    }

    else
    {
      v23 = 0;
    }

    if (*(a2 + 4049))
    {
      BlueFin::GlFormat::glsnprintf(v21, v23, ",,,,%d,%02d,%.1f,%.1f,M,%.1f,M,,", v22, 0, v7, *(a2 + 4144) / 10.0, *(a2 + 4096), *(a2 + 4112));
    }

    else
    {
      BlueFin::GlFormat::glsnprintf(v21, v23, ",,,,%d,%02d,%.1f,,M,,M,,", v22, 0, v7, *(a2 + 4144) / 10.0);
    }
  }

  else
  {
    v8 = *(a2 + 4072);
    v9 = fabs(v8);
    v10 = fabs(*(a2 + 4080));
    v11 = v9;
    v12 = v10;
    v13 = (v9 - v11) * 60.0;
    v14 = v13;
    v15 = (v10 - v12) * 60.0;
    v16 = v15;
    v17 = (v13 - v14) * 1000000.0;
    v18 = (v15 - v16) * 1000000.0;
    if (v7 < 1)
    {
      v19 = 6;
    }

    else if (*(a2 + 5624))
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v25 = v18;
    v26 = *(a2 + 4060);
    if (v26 == 7 || v26 == 4)
    {
      v19 = 7;
    }

    if (v6 > this)
    {
      v27 = a4;
    }

    else
    {
      v27 = 0;
    }

    v43 = v11;
    v28 = 83;
    if (v8 >= 0.0)
    {
      v28 = 78;
    }

    v29 = BlueFin::GlFormat::glsnprintf(this, v27, "$GPGGA,%s,%02d%02d.%06d,%c,", a4, a1 + 1767, v43, v14, v17, v28);
    v31 = this + v29;
    v32 = v6 + 1;
    if (v6 <= v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = (v6 + 1 - v31);
    }

    v34 = 87;
    if (*(a2 + 4080) >= 0.0)
    {
      v34 = 69;
    }

    v36 = &v31[BlueFin::GlFormat::glsnprintf((this + v29), v33, "%03d%02d.%06d,%c,%d,%02d,", v30, v12, v16, v25, v34, v19, v7)];
    if (v6 <= v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = (v32 - v36);
    }

    v38 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v37, "%.1f,%.1f,M,%.1f,M,", v35, *(a2 + 4144) / 10.0, *(a2 + 4096), *(a2 + 4112)));
    if (v6 <= v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v32 - v38);
    }

    if (v19 == 2)
    {
      BlueFin::GlFormat::glsnprintf(v38, v40, "%.1f,%04d", v39, *(a2 + 7300), *(a2 + 7296), v45, v46, v47);
    }

    else
    {
      BlueFin::GlFormat::glsnprintf(v38, v40, ",", v39, v42, v44, v45, v46, v47);
    }
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v24);
}

char *BlueFin::GlPeNmeaGen::nmeaAddChksum(BlueFin::GlPeNmeaGen *this, char *a2, char *a3)
{
  *a2 = 0;
  v3 = this + 1;
  v4 = *(this + 1);
  if (*(this + 1))
  {
    v5 = 0;
    do
    {
      v6 = *++v3;
      v5 ^= v4;
      v4 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  if (v3 <= a2)
  {
    *v3++ = 42;
  }

  if (v3 <= a2)
  {
    v7 = (v5 >> 4) + 55;
    if (v5 < 0xA0)
    {
      LOBYTE(v7) = (v5 >> 4) | 0x30;
    }

    *v3++ = v7;
  }

  if (v3 <= a2)
  {
    v8 = v5 & 0xF;
    v9 = v5 & 0xF | 0x30;
    v10 = (v5 & 0xF) + 55;
    if (v8 < 0xA)
    {
      v10 = v9;
    }

    *v3++ = v10;
  }

  if (v3 <= a2)
  {
    *v3++ = 13;
  }

  if (v3 <= a2)
  {
    *v3++ = 10;
  }

  if (v3 > a2)
  {
    GlCustomLog(19, "GlPeNmeaGen::nmeaAddChksum:  Buffer overflow while trying to output NMEA message $%c%c%c%c%c\n", *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5));
    DeviceFaultNotify("glpe_nmeagen.cpp", 308, "nmeaAddChksum", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", 308, "0");
  }

  *v3 = 0;
  return v3;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SetNmeaSentence(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v19 = *MEMORY[0x29EDCA608];
  if (strstr(v4, "$PGLOR,"))
  {
    if (strstr(v5, ",FIN,") || strstr(v5, ",PFM,"))
    {
      v11 = 1;
      goto LABEL_10;
    }

    v11 = strstr(v5, ",PFA,") != 0;
  }

  else
  {
    v11 = 0;
  }

  if (*(v10 + 20) == 1 && !v11)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

LABEL_10:
  memcpy(v17, v7, sizeof(v17));
  memcpy(v18, (v7 + 7440), sizeof(v18));
  LOBYTE(v17[506]) = *(v10 + 168);
  v13 = LOBYTE(v17[506]);
  LODWORD(v14) = *(v10 + 72);
  v17[863] = v14;
  LODWORD(v17[877]) = *(v10 + 172);
  if (!LOBYTE(v17[506]))
  {
    LOBYTE(v17[506]) = 0;
    memset(&v17[535], 0, 64);
    memset(&v17[607], 0, 256);
    memset(&v17[671], 0, 256);
  }

  if (!BlueFin::GlPeRqHdlrPosPeriodic::IsPeriodExpired(v10) && !v11)
  {
    goto LABEL_17;
  }

  if (v9 == 8 && v13)
  {
    BlueFin::GlPeRqHdlrPosPeriodic::SendPglorFix(v10, v17);
  }

  result = BlueFin::GlPeRqHdlr::SetNmeaSentence(v10, v9, v17, v5, v3);
LABEL_18:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlPeRqHdlrPosPeriodic::IsPeriodExpired(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return 0;
  }

  if (*(a1 + 80) == 1 && *(a1 + 168))
  {
    return 1;
  }

  v2 = *(a1 + 68) + *(a1 + 42);
  return v2 > (*(**(a1 + 8) + 184))(*(a1 + 8));
}

uint64_t BlueFin::GlPeRqHdlr::SetNmeaSentence(BlueFin::GlPeRqHdlr *this, int a2, int a3, char *a4, __int16 a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 16) = 1;
    BlueFin::GlPeNmeaGen::FormatNmeaRID(**(this + 7), __s, 80, a4);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(this + 24), __s);
    v9 = strlen(__s);
    BlueFin::GlPeRqHdlr::OnNmea(this, __s, v9, v10);
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v11 = ++*(this + 20);
      if (v11 == (*(**(this + 1) + 520))(*(this + 1)))
      {
        *(this + 20) = 0;
      }
    }

    goto LABEL_8;
  }

  if (!*(this + 20))
  {
LABEL_8:
    BlueFin::GlPeRqHdlr::OnNmea(this, a4, a5, a4);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeRqHdlr::OnNmea(BlueFin::GlPeRqHdlr *this, char *a2, __int16 a3, const char *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(*(*(this + 7) + 56) + 11569) == 1)
  {
    v5 = BlueFin::GlFormat::glsnprintf(v10, 0xB4, "GL_NMEA[%d][%s", a4, *(*(this + 1) + 24), a2);
    result = (*(**(this + 1) + 504))(*(this + 1), v10, v5);
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v8 = *(**(this + 1) + 504);
    v9 = *MEMORY[0x29EDCA608];

    return v8();
  }

  return result;
}

uint64_t BlueFin::GlRequestImplNmea::OnNmea(uint64_t this, char *a2)
{
  v2 = *(this + 72);
  if (v2)
  {
    return v2();
  }

  return this;
}

uint64_t BlueFin::GlDbgProxyGlReqOnNmea(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnNmea(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnNmea(BlueFin::GlDbgProxy *this, uint64_t (**a2)(BlueFin::GlDbgRequest *, char *, uint64_t), char *a3, uint64_t a4)
{
  v12 = a4;
  result = BlueFin::GlDbgRequest::Id(a2, 0);
  v11 = result;
  if (!*(this + 101))
  {
    *(this + 580) = 1;
    if (*(this + 144) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 542);
      if ((*(*this + 120))(this))
      {
        BlueFin::GlDbgCodec::Write(this, &v11);
      }

      BlueFin::GlDbgCodec::WriteArray(this, a3, &v12);
      result = (*(*this + 32))(this, 1);
    }

    v9 = a2[4];
    if (v9)
    {
      result = v9(a2, a3, a4);
    }

    *(this + 580) = 1;
    if (*(this + 144) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(this, 542);
      if ((*(*this + 120))(this))
      {
        BlueFin::GlDbgCodec::Write(this, &v11);
      }

      v10 = *(*this + 32);

      return v10(this, 1);
    }
  }

  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1>,void ()(char const*,short)>::operator()(uint64_t result, uint64_t *a2, __int16 *a3)
{
  if (*(*(result + 8) + 216))
  {
    v3 = *a2;
    v4 = *a3;
    memset(v5, 0, sizeof(v5));
    v6.__end_cap_.__value_ = v5;
    operator new();
  }

  return result;
}

void sub_29883EA38(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__split_buffer<std::string> *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14)
{
  std::__split_buffer<std::string>::~__split_buffer(&a14);
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void FireCallback::GlReqOnNmea(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 216);
    if (v10)
    {
      v13 = a2;
      v12 = a3;
      (*(*v10 + 48))(v10, &v13, &v12);
      return;
    }

    v11 = "fcb,fReqOnNmeaCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnNmea,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29883EB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSTA(uint64_t a1, unsigned int *a2, uint64_t a3, BlueFin::GlFormat *this, int a5)
{
  v8 = a2 + 1024;
  v9 = this + a5 - 1;
  v10 = aDfshwtf[a2[1728] & 7];
  v11 = *(a2 + 22);
  if (v11 <= 10)
  {
    v12 = 10;
  }

  else
  {
    v12 = *(a2 + 22);
  }

  if (v12 >= *(a3 + 272))
  {
    v12 = *(a3 + 272);
  }

  v13 = 9 * v12 / 10;
  v14 = a2[1820];
  if (v11 < 1)
  {
    v16 = a2[1820];
  }

  else
  {
    v15 = a2 + 49;
    v16 = a2[1820];
    do
    {
      v18 = *v15;
      v15 += 40;
      v17 = v18;
      if (*(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v18) - 33 <= 0x12)
      {
        if (a2[v17 + 1534])
        {
          v19 = v16 <= 0;
        }

        else
        {
          v19 = 1;
        }

        v20 = !v19;
        v16 -= v20;
      }

      --v11;
    }

    while (v11);
  }

  v21 = this + a5;
  if (v9 <= this)
  {
    v22 = 0;
  }

  else
  {
    v22 = a5;
  }

  HIDWORD(v23) = 1062232653;
  LODWORD(v23) = a2[1043];
  v24 = v23 * 0.000001;
  v83 = v14;
  v25 = 70;
  if (!v8[3180])
  {
    v25 = 102;
  }

  v19 = v13 <= v16;
  v26 = 69;
  if (!v19)
  {
    v26 = 101;
  }

  v27 = 80;
  if (!v8[3181])
  {
    v27 = 112;
  }

  v82 = v26;
  v28 = 84;
  if (!v8[3182])
  {
    v28 = 116;
  }

  v29 = BlueFin::GlFormat::glsnprintf(this, v22, "$PGLOR,%d,STA,%s,%4.3f,%4.3f,%hd,%hu,%d,%d,P,%c,L,%u,C,%1d,S,%08X,%d,%hd,R,%08X,%c%c%c%c,%d,%u,", v8[3181], 15, a1 + 1767, a2[1042] * 0.001, *&v24, a2[1056], *(a2 + 2128), *(a2 + 518), a2[1017] & 3, v10, (a2[1017] >> 2) & 1, a2[1753], a2[1752], *(a2 + 1754), *(a2 + 20), a2[1787], v28, v27, v82, v25, v83, *a2);
  v31 = this + v29;
  if (*(a2 + 4052))
  {
    if (v9 <= v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = (v21 - v31);
    }

    if (a2[1014])
    {
      v33 = BlueFin::GlFormat::glsnprintf((this + v29), v32, "LC,%+d,", v30, a2[1014]);
      goto LABEL_42;
    }

    v73 = 0;
    v35 = "LC,%d,";
  }

  else
  {
    if (v9 <= v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = (v21 - v31);
    }

    v35 = "LC,,";
  }

  v33 = BlueFin::GlFormat::glsnprintf((this + v29), v32, v35, v30, v73);
LABEL_42:
  v36 = &v31[v33];
  if (v8[3216])
  {
    if (v9 <= v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = (v21 - v36);
    }

    v38 = BlueFin::GlFormat::glsnprintf(v36, v37, "%x,", v34, v8[3216]);
  }

  else
  {
    if (v9 <= v36)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v21 - v36);
    }

    v38 = BlueFin::GlFormat::glsnprintf(v36, v40, ",", v34, v74);
  }

  v41 = (v36 + v38);
  if (v9 <= v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = (v21 - v41);
  }

  v44 = (v41 + BlueFin::GlFormat::glsnprintf(v41, v42, "DR,%d,", v39, v8[3254]));
  v45 = *(a2 + 1839);
  if (v45 >= 0.0)
  {
    if (v9 <= v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = (v21 - v44);
    }

    v78 = *(a2 + 1838);
    v81 = v45;
    v75 = (v8[3264] << 8) | (a2[1017] >> 9) & 7;
    v47 = "%x,%.1f,%.1f,";
  }

  else
  {
    if (v9 <= v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = (v21 - v44);
    }

    v47 = ",,,";
  }

  v48 = (v44 + BlueFin::GlFormat::glsnprintf(v44, v46, v47, v43, v75, *&v78, *&v81));
  if (v9 <= v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = (v21 - v48);
  }

  v50 = *(a2 + 517);
  HasAny = BlueFin::GnssConstellationMaskHelper::HasAny(a2 + 671, 4);
  v53 = 102;
  if (HasAny)
  {
    v53 = 70;
  }

  v54 = 116;
  if (v50 < 99.0)
  {
    v54 = 84;
  }

  v55 = (v48 + BlueFin::GlFormat::glsnprintf(v48, v49, "%c%c,", v52, v54, v53));
  RtcCurTimeEstimate = BlueFin::GlPeTimeManager::GetRtcCurTimeEstimate(*(a1 + 1840), &v85);
  if (v9 <= v55)
  {
    v59 = 0;
  }

  else
  {
    v59 = (v21 - v55);
  }

  if (RtcCurTimeEstimate)
  {
    v60 = 1.0;
    if (v86 >= 1.0)
    {
      v60 = v86;
    }

    v61 = BlueFin::GlFormat::glsnprintf(v55, v59, "%.0f,%.0f,", v57, v85 * 1000.0, v85 * 1000.0, *&v60);
  }

  else
  {
    v61 = BlueFin::GlFormat::glsnprintf(v55, v59, ",,", v57, v58, v76, v79);
  }

  v62 = (v55 + v61);
  RtcCurFreqEstimate = BlueFin::GlPeTimeManager::GetRtcCurFreqEstimate(*(a1 + 1840), v84);
  if (v9 <= v62)
  {
    v65 = 0;
  }

  else
  {
    v65 = (v21 - v62);
  }

  if (RtcCurFreqEstimate)
  {
    v66 = BlueFin::GlFormat::glsnprintf(v62, v65, "%.0f,%.0f,", v64, *&v84[0], *&v84[1]);
  }

  else
  {
    v66 = BlueFin::GlFormat::glsnprintf(v62, v65, ",,", v64, v77, v80);
  }

  v68 = (v62 + v66);
  if (v9 <= v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = (v21 - v68);
  }

  v70 = 84;
  if (!v8[3312])
  {
    v70 = 70;
  }

  BlueFin::GlFormat::glsnprintf(v68, v69, "%c,%1d,", v67, v70, v8[3313]);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v9, v71);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaGLO(char *result, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  if (*(result + 231) == *(a2 + 7416) && *(result + 232) == *(a2 + 7424) && *(result + 233) == *(a2 + 7432))
  {
    *this = 0;
  }

  else
  {
    v7 = this + a4 - 1;
    v8 = result + 1848;
    v9 = *(a2 + 7416);
    *(result + 233) = *(a2 + 7432);
    *(result + 1848) = v9;
    if (a4 != 1 && v7 >= this)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    v13 = (this + BlueFin::GlFormat::glsnprintf(this, v10, "$PGLOR,%d,GLO", a4, 1));
    do
    {
      if (v7 <= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = (v7 + 1 - v13);
      }

      v13 = (v13 + BlueFin::GlFormat::glsnprintf(v13, v14, ",%+d", v12, v8[v11++]));
    }

    while (v11 != 24);

    return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7, v15);
  }

  return result;
}

BOOL BlueFin::GlPeRqHdlr::SendNvMemInfo(BlueFin::GlPeRqHdlr *this)
{
  v1 = *(this + 17);
  *(this + 17) = 1;
  return (v1 & 1) == 0;
}

BOOL BlueFin::GlPeNmeaGen::FormatNmeaGSV(uint64_t a1, uint64_t a2, BlueFin::GlPeNmeaGen *a3, int a4, uint8x8_t a5, uint32x4_t a6)
{
  v7 = a2;
  v112 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (*(a1 + 4))
  {
    v9 = a3;
    v10 = 0;
    v11 = 0;
    do
    {
      a5.i32[0] = *(*(a1 + 320) + v10);
      a5 = vmovl_u8(a5).u64[0];
      v11 += vaddv_s16(a5);
      v10 += 48;
    }

    while (v10 != 288);
  }

  else
  {
    for (i = 0; i != 288; i += 48)
    {
      v77 = *(a1 + 320) + i;
      *(v77 + 16) = 0;
      *v77 = 0;
      *(v77 + 7) = 0;
      bzero(*(v77 + 24), ((4 * *(v77 + 32) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    }

    v78 = 0;
    v11 = 0;
    v7 = a2;
    v79 = (a2 + 50);
    do
    {
      if (v78 >= *(a2 + 44))
      {
        break;
      }

      v80 = v79[1];
      v107 = BlueFin::GlImplGnss::m_aucImplGnssTable[*v79];
      LOBYTE(v108) = v80;
      LODWORD(v110) = 0;
      if (BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v107, &v110, &v105))
      {
        v81 = v79[32];
        if (v81 <= 3)
        {
          v82 = *(a1 + 320) + 48 * v110;
          ++*(v82 + v81);
        }

        if (v81 < 4)
        {
          ++v11;
        }
      }

      ++v78;
      v79 += 40;
    }

    while (v78 != 100);
    v9 = a3;
    if (BlueFin::GlUtils::m_ucEnabled && (BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF) & 1) != 0)
    {
      v99 = a4;
      GlCustomLog(15, "GlPeNmeaGen::FormatNmeaGSV  TotalSats:%d ", v11);
      v83 = 0;
      v84 = 0;
      v85 = BlueFin::GlPeNmeaGen::FormatNmeaGSV(BlueFin::GL_FIX_STATUS const*,char *,short)::acTalker2String;
      do
      {
        v86 = 0;
        v87 = v83;
        do
        {
          v88 = v85[v86];
          if (!strstr(v88, "NA"))
          {
            GlCustomLog(15, "%s %d ", v88, *(*(a1 + 320) + v87));
          }

          ++v87;
          ++v86;
        }

        while (v86 != 4);
        ++v84;
        v83 += 48;
        v85 += 4;
      }

      while (v84 != 6);
      GlCustomLog(15, "\n");
      v9 = a3;
      v7 = a2;
      a4 = v99;
    }
  }

  v12 = 0;
  v13 = v9 + a4 - 1;
  v110 = 0uLL;
  v111 = 0;
  v14 = *(a1 + 320);
  v15.i64[0] = 0x300000003;
  v15.i64[1] = 0x300000003;
  v16 = v14;
  do
  {
    v17 = *v16;
    v16 += 12;
    a6.i32[0] = v17;
    a6 = vshrq_n_u32(vaddw_u16(v15, *&vmovl_u8(*a6.i8)), 2uLL);
    a6.i32[0] = vaddvq_s32(a6);
    *(&v110 + v12) = a6.i32[0];
    v12 += 4;
  }

  while (v12 != 24);
  v18 = 0;
  v19 = 0;
  v107 = 0;
  v20 = v110;
  v108 = v110;
  v109 = v111;
  v21 = *(a1 + 4);
  v22 = -1;
  do
  {
    v23 = &v107 + v19;
    v24 = v23[1] + v18;
    if (v24 > v21 && v18 <= v21)
    {
      v22 = v19;
    }

    v23[1] = v24;
    v18 = v24;
    ++v19;
  }

  while (v19 != 6);
  result = 1;
  if (v22 == -1)
  {
    v75 = 0;
    goto LABEL_94;
  }

  v27 = v22;
  BlueFin::GlPeNmeaGsvSatsNum::Update(&v14[12 * v22], v20, a6);
  v92 = HIDWORD(v109);
  if (v13 > v9)
  {
    v30 = (v13 - v9 + 1);
  }

  else
  {
    v30 = 0;
  }

  v29.i32[0] = *(*(a1 + 320) + 48 * v22);
  v31 = BlueFin::GlFormat::glsnprintf(v9, v30, "$%sGSV,%01d,%01d,%02d", v28, &BlueFin::GlPeNmeaGen::m_acTalkerCodes + 3 * v22, *(&v110 + v22), *(a1 + 4) - *(&v107 + v22) + 1, vaddv_s16(*&vmovl_u8(v29)));
  v32 = 0;
  v33 = 0;
  v98 = v13;
  v100 = (v9 + v31);
  v96 = v13 + 1;
  v34 = v11;
  v35 = -4000;
  v93 = v11;
  while (v32 < v34 && v33 < 4)
  {
    v36 = (v7 + v35);
    v37 = BlueFin::GlImplGnss::m_aucImplGnssTable[*(v7 + v35 + 4050)];
    v38 = *(v7 + v35 + 4051);
    v104 = 0;
    v105 = v37;
    v106 = v38;
    v103 = 0;
    v31 = BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v105, &v104, &v103);
    if (v104 == v22)
    {
      v40 = v31;
    }

    else
    {
      v40 = 0;
    }

    if (v40 != 1)
    {
      goto LABEL_64;
    }

    v41 = *(a1 + 320) + 48 * v27;
    if (*(v41 + 14) != *(v7 + v35 + 4082))
    {
      goto LABEL_64;
    }

    v42 = *(v41 + 16);
    *(v41 + 16) = v42 - 1;
    if (v42 > 0)
    {
      goto LABEL_64;
    }

    v94 = v33;
    v44 = v98;
    v43 = v100;
    if (v98 <= v100)
    {
      v45 = 0;
    }

    else
    {
      v45 = (v96 - v100);
    }

    v46 = BlueFin::GlFormat::glsnprintf(v100, v45, ",%02d", v39, v103);
    v48 = (v100 + v46);
    v49 = v36[4050];
    if (v49 >= 7)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0xFFFFFFFFFF1FFFuLL >> (8 * v49);
    }

    v51 = v50 + v36[4051];
    v101 = v51 >> 5;
    v95 = v51 & 0x1F;
    if ((*(*(*(a1 + 320) + 48 * v27 + 24) + 4 * (v51 >> 5)) >> (v51 & 0x1F)))
    {
      if (v98 <= v48)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v96 - v48);
      }

      v53 = (v43 + v46);
      v54 = BlueFin::GlFormat::glsnprintf(v53, v52, ",,", v47);
      v56 = v96;
      v57 = v94;
    }

    else
    {
      v58 = *(v7 + v35 + 4052);
      v57 = v94;
      if (v58 <= 0)
      {
        v59 = *(v7 + v35 + 4054) > 0;
      }

      else
      {
        v59 = v58 != 1 || *(v7 + v35 + 4054) != 0;
      }

      v60 = *(v7 + v35 + 4056);
      v61 = *(v7 + v35 + 4060);
      v62 = fmaxf(v60, v61) <= 0.0;
      if (v59 && v62)
      {
        v60 = v58;
        v61 = *(v7 + v35 + 4054);
      }

      else if (v62)
      {
        if (v98 <= v48)
        {
          v63 = 0;
        }

        else
        {
          v63 = (v96 - v48);
        }

        v53 = v48;
        if (v59)
        {
          v54 = BlueFin::GlFormat::glsnprintf(v48, v63, ",%02d,%03d", v47, *(v7 + v35 + 4052), *(v7 + v35 + 4054));
        }

        else
        {
          v54 = BlueFin::GlFormat::glsnprintf(v48, v63, ",,", v47, v90, v91);
        }

        v44 = v98;
        v56 = v96;
        goto LABEL_57;
      }

      v44 = v98;
      if (v98 <= v48)
      {
        v64 = 0;
      }

      else
      {
        v64 = (v96 - v48);
      }

      v53 = v48;
      v54 = BlueFin::GlFormat::glsnprintf(v48, v64, ",%04.1f,%05.1f", v47, v60, v61);
      v56 = v96;
    }

LABEL_57:
    v65 = v53 + v54;
    v66 = (v56 - v65);
    if (v44 <= v65)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66;
    }

    if (v36[4048])
    {
      v31 = BlueFin::GlFormat::glsnprintf((v53 + v54), v67, ",%04.1f", v55, *(v7 + v35 + 4064));
    }

    else
    {
      v31 = BlueFin::GlFormat::glsnprintf((v53 + v54), v67, ",", v55, v90);
    }

    v27 = v22;
    v68 = *(*(a1 + 320) + 48 * v22 + 24);
    *(v68 + 4 * v101) |= 1 << v95;
    v100 = &v65[v31];
    v33 = v57 + 1;
    v34 = v93;
LABEL_64:
    ++v32;
    v35 += 40;
    if (!v35)
    {
      break;
    }
  }

  v69 = *(a1 + 320) + 48 * v27;
  ++*(v69 + 13);
  NmeaSignalID = BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSignalID(v31, *(v69 + 20), *(v69 + 14));
  if ((*(*(a1 + 1832) + 26256) & 1) != 0 || BlueFin::GlPeNmeaGsvSatsNum::OutputNmeaSignalID(v69, NmeaSignalID))
  {
    if (v98 <= v100)
    {
      v73 = 0;
    }

    else
    {
      v73 = (v96 - v100);
    }

    BlueFin::GlFormat::glsnprintf(v100, v73, ",%01d", v70, NmeaSignalID);
  }

  BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v98, v72);
  v74 = *(a1 + 4);
  result = v92 <= (v74 + 1);
  if (v92 > (v74 + 1))
  {
    v75 = v74 + 1;
  }

  else
  {
    v75 = 0;
  }

LABEL_94:
  *(a1 + 4) = v75;
  v89 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlPeNmeaGen::FormatNmeaGSA(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, int a4)
{
  v5 = a3 + a4 - 1;
  *a3 = 0;
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    qword_2A13C172A = 0x100010001;
    BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA = xmmword_298A44942;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasXXGSA;
  v10 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA;
  do
  {
    v11 = *(a1 + 320) + 48 * v6;
    *(v11 + 16) = 0;
    *v11 = 0;
    *(v11 + 7) = 0;
    bzero(*(v11 + 24), ((4 * *(v11 + 32) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v12 = 0;
    v13 = *(a1 + 1832);
    v14 = *(v13 + 26256);
    do
    {
      if ((v14 & 1) == 0)
      {
        v8 += v9[v12];
      }

      v7 += *(v10 + v12++);
    }

    while (v12 != 4);
    ++v6;
    v9 += 4;
    v10 = (v10 + 4);
  }

  while (v6 != 6);
  v15 = *(a1 + 328);
  v16 = v8 + v7;
  if (v16 <= v15)
  {
    v32 = "m_ucGsaMsgCnt < (ucNumGNGSA + ucNumXXGSA)";
    DeviceFaultNotify("glpe_nmeagen.cpp", 1303, "FormatNmeaGSA", "m_ucGsaMsgCnt < (ucNumGNGSA + ucNumXXGSA)");
    v33 = 1303;
LABEL_85:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v33, v32);
  }

  strcpy(v85, "GN");
  if (v14)
  {
    v17 = 0;
    v18 = 7;
    v19 = -1;
    LODWORD(v20) = 6;
    v21 = -1;
    v22 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA;
    do
    {
      v23 = 0;
      while (*(v22 + v23) != 1 || ++v19 != v15)
      {
        if (++v23 == 4)
        {
          goto LABEL_18;
        }
      }

      v18 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v17];
      v21 = v23;
      v19 = v15;
      LODWORD(v20) = v17;
LABEL_18:
      ++v17;
      v22 = (v22 + 4);
    }

    while (v17 != 6);
    v24 = v85;
    goto LABEL_38;
  }

  if (v15 >= v8)
  {
    v20 = 0;
    v29 = -1;
    v30 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA;
    while (1)
    {
      v31 = *v30;
      v30 = (v30 + 4);
      if (v31 == 1 && ++v29 == v15 - v8)
      {
        break;
      }

      if (++v20 == 6)
      {
        goto LABEL_34;
      }
    }

    v21 = 0;
    v18 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v20];
    v24 = v85;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v18 = 7;
    v26 = -1;
    LODWORD(v20) = 6;
    v27 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasXXGSA;
    v21 = -1;
    do
    {
      v28 = 0;
      while (v27[v28] != 1 || ++v26 != v15)
      {
        if (++v28 == 4)
        {
          goto LABEL_28;
        }
      }

      v24 = &BlueFin::GlPeNmeaGen::m_acTalkerCodes + 3 * v25;
      v18 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v25];
      v21 = v28;
      v26 = v15;
      LODWORD(v20) = v25;
LABEL_28:
      ++v25;
      v27 += 4;
    }

    while (v25 != 6);
  }

  if (!v24 || v20 == 6)
  {
LABEL_34:
    v32 = "pacCurGsaTalker != 0 && eOutputTalker != INVALID_TALKER";
    DeviceFaultNotify("glpe_nmeagen.cpp", 1381, "FormatNmeaGSA", "pacCurGsaTalker != 0 && eOutputTalker != INVALID_TALKER");
    v33 = 1381;
    goto LABEL_85;
  }

LABEL_38:
  if (!BlueFin::GlPeNmeaGen::IsGnssSupportedForReport(v13, BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v20]))
  {
    goto LABEL_80;
  }

  v65 = v18;
  v66 = v16;
  if (v5 > a3)
  {
    v35 = (v5 - a3 + 1);
  }

  else
  {
    v35 = 0;
  }

  v36 = 3;
  if (!*(a2 + 4048))
  {
    v36 = 1;
  }

  v64 = v24;
  v37 = v20;
  v38 = 0;
  v39 = 0;
  v40 = (a3 + BlueFin::GlFormat::glsnprintf(a3, v35, "$%sGSA,A,%d", v34, v64, v36));
  v70 = v37;
  v71 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA + 4 * v37;
  v41 = v5 + 1;
  v69 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasXXGSA + 4 * v37;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v82 = 0;
      v83 = v38;
      v84 = 1;
      v81 = 0;
      if (BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v83, &v82, &v81) && v82 == v37 && ((v71[v21] & 1) != 0 || v69[v21] == 1) && v21 == i)
      {
        v44 = *(a2 + (v21 << 6) + 4344 + 8 * BlueFin::GlImplGnss::m_aucEnabledGnssTable[v38]);
        BlueFin::GlGnssIdSet::GlGnssIdSet(&v79, v44 >> 31, 2 * v44);
        v74 = v80;
        memcpy(v78, v79, 4 * v80);
        v76 = 0;
        v75 = 0;
        v77 = v78[0];
        BlueFin::GlSetIterator::operator++(&v74);
        if (v75 != v74)
        {
          v45 = v39;
          if (v39 <= 0xB)
          {
            do
            {
              v72 = v38;
              v73 = v76;
              v85[1] = 0;
              HIBYTE(v85[0]) = 0;
              BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v72, &v85[1], v85 + 3);
              if (v5 <= v40)
              {
                v47 = 0;
              }

              else
              {
                v47 = (v41 - v40);
              }

              v40 = (v40 + BlueFin::GlFormat::glsnprintf(v40, v47, ",%02d", v46, HIBYTE(v85[0])));
              v39 = v45 + 1;
              BlueFin::GlSetIterator::operator++(&v74);
              if (v75 == v74)
              {
                break;
              }
            }

            while (v45++ <= 0xA);
          }
        }

        LODWORD(v37) = v70;
      }
    }

    ++v38;
  }

  while (v38 != 7);
  if (v39 <= 0xB)
  {
    v49 = v39 - 12;
    do
    {
      if (v5 <= v40)
      {
        v50 = 0;
      }

      else
      {
        v50 = (v41 - v40);
      }

      v40 = (v40 + BlueFin::GlFormat::glsnprintf(v40, v50, ",", v43));
    }

    while (!__CFADD__(v49++, 1));
  }

  v52 = *(a2 + 4128);
  v53 = sqrt(v52 * v52 + *(a2 + 4120) * *(a2 + 4120));
  if (v5 <= v40)
  {
    v54 = 0;
  }

  else
  {
    v54 = (v41 - v40);
  }

  v55 = BlueFin::GlFormat::glsnprintf(v40, v54, ",%02.1lf,%02.1lf,%02.1lf", v43, *&v53, *(a2 + 4120), *&v52);
  v56 = (*(a1 + 320) + 48 * v70);
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    NmeaSystemID = BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSystemID(*(a1 + 320) + 48 * v70, v65);
LABEL_75:
    v60 = (v40 + v55);
    if (v5 <= v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = (v41 - v60);
    }

    BlueFin::GlFormat::glsnprintf(v60, v61, ",%01d", v57, NmeaSystemID);
    goto LABEL_79;
  }

  NmeaSystemID = BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSignalID(*(a1 + 320) + 48 * v70, v65, v21);
  if (BlueFin::GlPeNmeaGsvSatsNum::OutputNmeaSignalID(v56, NmeaSystemID))
  {
    goto LABEL_75;
  }

LABEL_79:
  BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v5, v59);
  LOBYTE(v15) = *(a1 + 328);
  v16 = v66;
LABEL_80:
  result = v16 == (v15 + 1);
  if (v16 == (v15 + 1))
  {
    v63 = 0;
  }

  else
  {
    v63 = v15 + 1;
  }

  *(a1 + 328) = v63;
  return result;
}

uint64_t BlueFin::GlPeNmeaGen::IsGnssSupportedForReport(uint64_t a1, int a2)
{
  if (*(a1 + a2 + 276))
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = *(a1 + 26012);
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v2 = (v2 >> 3) & 1;
        return v2 & 1;
      }

      v3 = (v2 >> 2) & 1;
      v2 = (v2 >> 4) & 1;
      if (a2 != 6)
      {
        LOBYTE(v2) = 0;
      }

      v4 = a2 == 5;
    }

    else
    {
      if (!a2)
      {
        return v2 & 1;
      }

      v3 = (v2 >> 1) & 1;
      v2 = (v2 >> 5) & 1;
      if (a2 != 3)
      {
        LOBYTE(v2) = 0;
      }

      v4 = a2 == 2;
    }

    if (v4)
    {
      LOBYTE(v2) = v3;
    }
  }

  return v2 & 1;
}

BOOL BlueFin::GlPeNmeaGsvSatsNum::OutputNmeaSignalID(BlueFin::GlPeNmeaGsvSatsNum *this, int a2)
{
  v2 = *(this + 5);
  v3 = a2 != 7;
  v4 = a2 != 5;
  if (v2 != 6)
  {
    v4 = 1;
  }

  if (v2 != 5)
  {
    v3 = v4;
  }

  v5 = a2 != 1;
  v6 = v5;
  if (v2 != 4)
  {
    v6 = 1;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  if (v2 <= 4)
  {
    v3 = v5;
  }

  v7 = v2 != 2 || a2 != 1;
  if (v2 == 1)
  {
    v7 = a2 != 1;
  }

  if (!v2)
  {
    v7 = a2 != 1;
  }

  if (v2 <= 2)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaRMC(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v7 = this + a4;
  v8 = v7 - 1;
  *this = 0;
  if (v7 - 1 <= this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  if (*(*(a1 + 1832) + 26256))
  {
    v10 = "$GNRMC,%s,";
  }

  else
  {
    v10 = "$GPRMC,%s,";
  }

  v11 = BlueFin::GlFormat::glsnprintf(this, v9, v10, a4, a1 + 1767);
  v13 = (this + v11);
  if (!*(a2 + 4048) || (*(a2 + 4068) & 8) != 0)
  {
    v32 = "V,,,,,,,%s,,,%c";
    v33 = 78;
  }

  else
  {
    v14 = *(a2 + 4072);
    v15 = *(a2 + 4080);
    v16 = fabs(v14);
    v17 = fabs(v15);
    v18 = v16;
    v19 = v17;
    v20 = (v16 - v18) * 60.0;
    v21 = v20;
    v22 = ((v20 - v21) * 1000000.0);
    v23 = (v17 - v19) * 60.0;
    v24 = v23;
    v25 = (v23 - v24) * 1000000.0;
    if (v8 <= v13)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v7 - v13);
    }

    v43 = v18;
    v27 = 87;
    if (v15 >= 0.0)
    {
      v27 = 69;
    }

    v44 = v27;
    v28 = 83;
    if (v14 >= 0.0)
    {
      v28 = 78;
    }

    v29 = (v13 + BlueFin::GlFormat::glsnprintf((this + v11), v26, "A,%02d%02d.%06d,%c,%03d%02d.%06d,%c,", v12, v43, v21, v22, v28, v19, v24, v25, v44));
    if (*(a2 + 4192))
    {
      if (v8 <= v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v7 - v29);
      }

      v31 = (v29 + BlueFin::GlFormat::glsnprintf(v29, v30, "%05.1f,", v12, *(a2 + 4200)));
    }

    else
    {
      *v29 = 44;
      v31 = (v29 + 1);
    }

    if (*(a2 + 4208))
    {
      if (v8 <= v31)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v7 - v31);
      }

      v13 = (v31 + BlueFin::GlFormat::glsnprintf(v31, v34, "%05.1f,", v12, *(a2 + 4216)));
    }

    else
    {
      *v31 = 44;
      v13 = (v31 + 1);
    }

    if (*(a2 + 4274) <= 0)
    {
      v33 = 69;
    }

    else
    {
      v33 = 65;
    }

    v32 = "%s,,,%c";
  }

  v35 = *(a2 + 4060);
  if (v35 == 7 || v35 == 4)
  {
    v33 = 77;
  }

  if (*(*(a1 + 1832) + 26256) == 1)
  {
    if (*(a2 + 5624))
    {
      v33 = 68;
    }

    else
    {
      v33 = v33;
    }
  }

  if (v8 <= v13)
  {
    v36 = 0;
  }

  else
  {
    v36 = (v7 - v13);
  }

  v37 = BlueFin::GlFormat::glsnprintf(v13, v36, v32, v12, a1 + 1799, v33);
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    v40 = (v13 + v37);
    if (v8 <= v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = (v7 - v40);
    }

    BlueFin::GlFormat::glsnprintf(v40, v41, ",%c", v39, 86);
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v38);
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SendPglorFix(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(result + 20) & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 104);
    if (v4 == -1)
    {
      v7 = *(result + 36);
      if (v7 == -1)
      {
        v9 = *(result + 32);
        v6 = 1;
      }

      else
      {
        v8 = *(*(result + 8) + 28);
        v9 = *(result + 32);
        v10 = v9 + v7;
        v11 = v10 >= v8;
        v12 = v10 - v8;
        if (v11)
        {
          v6 = v12;
        }

        else
        {
          v6 = 1;
        }
      }

      v5 = v9 - *(result + 28);
    }

    else
    {
      v5 = *a2 - v4;
      v6 = v5;
    }

    BlueFin::GlPeNmeaGen::FormatNmeaFIX(**(result + 56), v6, v5, __s, 80);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(v3 + 48), __s);
    v13 = strlen(__s);
    result = BlueFin::GlPeRqHdlr::OnNmea(v3, __s, v13, v14);
    *(v3 + 104) = *a2;
    if (!*(v3 + 80))
    {
      GlCustomLog(13, "\tTTFF=%u:%02u.%01u\n", (v6 + 50) / 0xEA60u, (v6 + 50) / 0x3E8u - 60 * ((71582789 * ((v6 + 50) / 0x3E8u)) >> 32), (v6 + 50) / 0x64u - 10 * ((429496730 * ((v6 + 50) / 0x64u)) >> 32));
      result = GlCustomLog(14, "TTFF @ <gps_time WeekNum=%hu TowMs=%u/>\n", *(a2 + 24), *(a2 + 28));
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SetFixStatus(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v18 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v3 = result;
    if ((*(result + 20) & 1) == 0)
    {
      v4 = v2;
      result = BlueFin::GlPeRqHdlrPosPeriodic::IsPeriodExpired(result);
      if (result)
      {
        ++*(v3 + 76);
        bzero(__dst, 0x1CF8uLL);
        memset(&__dst[927], 248, 24);
        HIDWORD(v5) = 0;
        memset(v17, 0, sizeof(v17));
        if (__dst != v4)
        {
          memcpy(__dst, v4, sizeof(__dst));
          memcpy(v17, v4 + 930, sizeof(v17));
        }

        v6 = *(v3 + 168);
        LODWORD(v5) = *(v3 + 72);
        __dst[863] = v5;
        LODWORD(__dst[877]) = *(v3 + 172);
        if (v6)
        {
          ++*(v3 + 80);
          *(v3 + 64) = 0;
          *(v3 + 42) = 300;
          *(*(*(v3 + 56) + 16) + 61488) = 0;
          LOBYTE(v6) = 1;
        }

        else
        {
          memset(&__dst[535], 0, 64);
          memset(&__dst[607], 0, 256);
          memset(&__dst[671], 0, 256);
        }

        LOBYTE(__dst[506]) = v6;
        if ((*(**(v3 + 8) + 168))(*(v3 + 8)) < 1)
        {
          v8 = 0;
        }

        else
        {
          v7 = *(v3 + 76);
          v8 = v7 >= (*(**(v3 + 8) + 168))(*(v3 + 8));
        }

        if ((*(**(v3 + 8) + 160))(*(v3 + 8)) < 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = *(v3 + 80);
          v10 = v9 >= (*(**(v3 + 8) + 160))(*(v3 + 8));
        }

        result = *(v3 + 8);
        v11 = *(result + 48);
        if (v11)
        {
          result = v11();
        }

        if (v8 || v10)
        {
          if (!*(v3 + 80))
          {
            BlueFin::GlPeRqHdlrPosPeriodic::SendPglorFix(v3, v4);
          }

          v12 = 70;
          if (*(v3 + 23))
          {
            v13 = 84;
          }

          else
          {
            v13 = 70;
          }

          if (v10)
          {
            v14 = 84;
          }

          else
          {
            v14 = 70;
          }

          if (v8)
          {
            v12 = 84;
          }

          GlCustomLog(13, "REQ Complete: TF=%c VF=%c TOUT=%c\n", v12, v14, v13);
          *(v3 + 24) = 1;
          result = (*(*v3 + 272))(v3, *(v3 + 160), *(v3 + 164));
        }

        *(v3 + 84) = *v4;
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnResponse(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnResponse(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnResponse(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 543);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v7 = this[8];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 543);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      v8 = *(*a1 + 32);

      return v8(a1, 1);
    }
  }

  return result;
}

void FireCallback::GlReqOnFixStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FireCallback::pInstance)
  {
    v10 = *(FireCallback::pInstance + 88);
    if (v10)
    {
      v12 = a2;
      (*(*v10 + 48))(v10, &v12);
      return;
    }

    v11 = "fcb,fReqOnFixStatusCb,nullptr";
  }

  else
  {
    v11 = "fcb,GlReqOnFixStatus,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v11, a3, a4, a5, a6, a7, a8, a9);
}

void std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 17;
        std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      MEMORY[0x29C292F70](v3, 0x1000C4095D96C66);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      MEMORY[0x29C292F70](v4, 0x1000C4095D96C66);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      MEMORY[0x29C292F70](v5, 0x1000C4095D96C66);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      MEMORY[0x29C292F70](v6, 0x1000C40D315E998);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      MEMORY[0x29C292F70](v7, 0x1000C4079AA8B5ELL);
    }

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      v4 = *(v2 + 120);
      v5 = *(v2 + 112);
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 176;
          std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100]((v4 - 16), 0);
          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 112);
      }

      *(v2 + 120) = v3;
      operator delete(v5);
    }

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssSvInfoData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t, unsigned __int16 *), uint64_t a3, unsigned __int16 *a4)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v11 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 563);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v11);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a4);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v9 = this[7];
    if (v9)
    {
      result = v9(this, a3, a4);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 563);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v11);
      }

      v10 = *(*a1 + 32);

      return v10(a1, 1);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssSvInfoData(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssSvInfoData(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssAgcInfoData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, unsigned int *), unsigned int *a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 570);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v7 = this[15];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 570);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      v8 = *(*a1 + 32);

      return v8(a1, 1);
    }
  }

  return result;
}

BOOL BlueFin::GlPeReqBag::IsEnhancedEmergencyReqPresent(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v7 = this + 3233;
  v8 = *(this + 3233);
  *(this + 3233) = 0;
  v3 = 1;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5[4] == 1 && ((*(*v5 + 400))(v5) & 1) != 0)
      {
        break;
      }
    }

    v3 = v2++ < 0x47;
  }

  while (v2 != 72);
  *v7 = v8;
  return v3;
}

BOOL BlueFin::GlPeReqBag::IsEnhancedEmergencyReqExpiring(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v15 = this + 3233;
  v16 = *(this + 3233);
  *(this + 3233) = 0;
  v3 = 1;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5[4] == 1)
      {
        if ((*(*v5 + 400))(v5))
        {
          v6 = *(*(this + v2) + 8);
          if (!(*(*v6 + 416))(v6))
          {
            break;
          }

          v7 = *(this + v2);
          v8 = *(v7 + 36);
          v9 = *(v7 + 8);
          if (v8 == -1)
          {
            v13 = 1001;
          }

          else
          {
            v10 = *(v9 + 28);
            v11 = *(v7 + 32) + v8;
            v12 = v11 >= v10;
            v13 = v11 - v10 + 1000;
            if (!v12)
            {
              v13 = 1001;
            }
          }

          if (v13 > 1000 * *(v9 + 22))
          {
            break;
          }
        }
      }
    }

    v3 = v2++ < 0x47;
  }

  while (v2 != 72);
  *v15 = v16;
  return v3;
}

uint64_t BlueFin::GlPeNavMeasUtil::processNewMeas(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *(v6 + 18800) = 0;
  v7 = *v6;
  BlueFin::GlSetBase::GlSetBase(&__src, v279, 0x13u, (v6 + 8));
  BlueFin::GlSetBase::GlSetBase(&v275, v276, 0x13u, *a1 + 7030);
  BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet(&__src, v274);
  BlueFin::GlSignalIdSet::GetSecondarySignalSvIdSet(&__src, v273);
  BlueFin::GlSetBase::GlSetBase(v271, v272, 0x13u, &__src);
  v266 = v278;
  memcpy(v270, __src, 4 * v278);
  v268 = 0;
  v267 = 0;
  v269 = v270[0];
  BlueFin::GlSetIterator::operator++(&v266);
  v225 = v7;
  if (v267 == v266)
  {
    v8 = 0;
    v9 = 0;
    v224 = 1;
    goto LABEL_315;
  }

  v218 = 0;
  v10 = v7;
  v217 = (a3 + 8);
  v220 = -10.0;
  v11 = vdup_n_s32(0xFF9222FF);
  v12 = 299792458.0;
  v13 = -1000.0;
  v224 = 1;
  v223 = a3;
  v219 = v11;
  do
  {
    if (v268 >= 0x23FuLL)
    {
      goto LABEL_340;
    }

    v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v268;
    v15 = *v14;
    LODWORD(v14) = v14[1];
    v263[0] = v15;
    v264 = v14;
    v265 = v268;
    if ((v15 - 175) < 0xFFFFFFDC || (*(a2 + 190) & 4) == 0)
    {
      v16 = (1 << (v268 & 0x1F)) & *(*a2 + ((v268 >> 3) & 0x1FFC));
      if (v16)
      {
        v17 = *(a3 + 24);
        v18 = *(a2 + 188);
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*a1, v263, 0, 0);
        if (MeMeas)
        {
          if ((MeMeas[13] & 0x40) != 0 && ((v18 & 2) != 0 || *(MeMeas + 29) > 12.0))
          {
            *(*v17 + ((v263[0] >> 3) & 0x1C)) |= 1 << v263[0];
          }
        }
      }

      v20 = BlueFin::GlPeMsmtMgr::GetMeMeas(*a1, v263, 0, 0);
      if (!v20)
      {
        v214 = "potMeSigMeas";
        DeviceFaultNotify("glpe_navgnssmeasutil.cpp", 140, "processNewMeas", "potMeSigMeas");
        v215 = "glpe_navgnssmeasutil.cpp";
        v216 = 140;
        goto LABEL_341;
      }

      v251[0] = *v20;
      v21 = *(v20 + 1);
      v253 = *(v20 + 4);
      v252 = v21;
      v254 = *(v20 + 3);
      v22 = *(v20 + 4);
      v24 = *(v20 + 1);
      v23 = *(v20 + 2);
      v257 = *(v20 + 3);
      v258 = v22;
      v255 = v24;
      v256 = v23;
      v25 = *(v20 + 8);
      v27 = *(v20 + 5);
      v26 = *(v20 + 6);
      v261 = *(v20 + 7);
      v262 = v25;
      v259 = v27;
      v260 = v26;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v263, 0);
      v29 = *PeMeas;
      v30 = *(PeMeas + 16);
      v243 = *(PeMeas + 32);
      v241 = v29;
      v242 = v30;
      v244 = *(PeMeas + 40);
      v31 = *(PeMeas + 44);
      v246 = *(PeMeas + 48);
      v245 = v31;
      v32 = *(PeMeas + 80);
      v33 = *(PeMeas + 68);
      v247 = *(PeMeas + 52);
      *v248 = v33;
      *&v248[12] = v32;
      v249 = *(PeMeas + 96);
      v34 = *(PeMeas + 100);
      *&v250[14] = *(PeMeas + 114);
      *v250 = v34;
      v227[0] = 0;
      v228 = -1;
      v229 = 575;
      *v230 = 0;
      v230[4] = 0;
      v239 = v11;
      v240 = 1176256512;
      if ((*(v275 + 4 * (v265 >> 5)) >> (v265 & 0x1F)))
      {
        v35 = BlueFin::GlSignalIdArray::Get(*(*a1 + 7041), v263);
        if (!v35)
        {
          v214 = "potGridMeas";
          DeviceFaultNotify("glpe_navgnssmeasutil.cpp", 149, "processNewMeas", "potGridMeas");
          v215 = "glpe_navgnssmeasutil.cpp";
          v216 = 149;
          goto LABEL_341;
        }

        if (v227 != v35)
        {
          v227[0] = *v35;
          v228 = *(v35 + 4);
          v229 = *(v35 + 8);
        }

        v36 = *(v35 + 12);
        v37 = *(v35 + 28);
        v231 = *(v35 + 44);
        *&v230[16] = v37;
        *v230 = v36;
        v38 = *(v35 + 60);
        v39 = *(v35 + 76);
        v40 = *(v35 + 92);
        v235 = *(v35 + 108);
        v234 = v40;
        v233 = v39;
        v232 = v38;
        v41 = *(v35 + 124);
        v42 = *(v35 + 140);
        v43 = *(v35 + 156);
        *&v238[12] = *(v35 + 168);
        *v238 = v43;
        v237 = v42;
        v236 = v41;
        v44 = *(v35 + 184);
        v240 = *(v35 + 200);
        v239 = v44;
      }

      v226 = v16;
      v250[12] = 0;
      if ((v254 & 2) == 0)
      {
        BlueFin::GlSetBase::Remove(v271, v265);
      }

      v45 = v251[0] >> 5;
      v46 = 1;
      v47 = 1 << (v251[0] & 0x1F);
      if ((v47 & *(v274[0] + 4 * v45)) != 0)
      {
        v46 = (v47 & *(v273[0] + 4 * v45)) == 0;
      }

      v48 = *(a2 + 188);
      if ((v48 & 1) != 0 && v263[0] - 52 > 0xFFFFFFEC)
      {
        v49 = 7;
LABEL_29:
        v250[28] = v49;
        v250[29] = v49;
LABEL_30:
        v50 = BlueFin::GlSignalIdArray::Get(*(*a1 + 2349), v263);
        if (v50)
        {
          *(v50 + 272) = v49;
        }

        v51 = v250[29];
        v52 = BlueFin::GlSignalIdArray::Get(*(*a1 + 2349), v263);
        if (v52)
        {
          *(v52 + 273) = v51;
        }

        goto LABEL_34;
      }

      if ((v48 & 4) == 0 && (v254 & 0x40000) != 0)
      {
        v49 = 45;
        goto LABEL_29;
      }

      if ((v254 & 2) != 0)
      {
        v53 = (~v48 & 0x280) == 0;
      }

      else
      {
        *&v250[28] = 2056;
        v53 = (v48 & 0x280) == 640;
        if ((v48 & 2) == 0 && (v48 & 0x280) != 0x280)
        {
          v49 = 8;
          if ((v48 & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_57;
        }

        if ((v254 & 0x4000) == 0 || *(&v261 + 1) < 9.0)
        {
          if ((v254 & 0x4000) != 0)
          {
            v49 = 12;
          }

          else
          {
            v49 = 10;
          }

          v250[28] = v49;
          v250[29] = v49;
          if ((v48 & 4) == 0)
          {
            goto LABEL_30;
          }

LABEL_57:
          if ((v254 & 0x4000) == 0)
          {
            v49 = 10;
            goto LABEL_29;
          }

LABEL_59:
          v56 = v10 + *&v258 * v13;
          *&v241 = v56 - floor(v56);
          *&v248[16] = v7;
          *&v248[24] = -1;
          *v250 = v257;
          LOBYTE(v282[0]) = 0;
          LOBYTE(v285) = 0;
          BlueFin::GlPeBitMon::CheckBitValidity((a1 + 4), v251, v7, v282, &v285);
          if ((v48 & 4) != 0 && (v254 & 0x100) != 0)
          {
            v57 = 1;
          }

          else
          {
            if ((v282[0] & 1) == 0 && v285 != 1)
            {
              goto LABEL_80;
            }

            v57 = 0;
          }

          if (v251[0] >= 0x34u)
          {
            if (v251[0] > 0x41u)
            {
              if (v251[0] - 139 <= 0x23 && !v252)
              {
                v59 = v56 + floor(v56 * 0.25) * -4.0;
                goto LABEL_74;
              }
            }

            else if (LOBYTE(v282[0]) != 1)
            {
              v58 = 10.0;
LABEL_73:
              v59 = v56 - floor(v56 / v58) * v58;
LABEL_74:
              *&v248[24] = v59;
              if (v57)
              {
                if (v251[0] - 139 > 0x23 || v252)
                {
                  v60 = v56 - floor(v56 / 20.0) * 20.0;
                }

                else
                {
                  v60 = v56 + floor(v56 * 0.25) * -4.0;
                }

                *&v248[24] = v60;
              }

LABEL_80:
              if (*(&v260 + 3) >= 0.0000000149999995)
              {
                v61 = DWORD2(v260);
                v62 = *(&v262 + 1);
                v250[29] = 17;
              }

              else
              {
                v249 |= 0x30u;
                v61 = DWORD2(v260);
                v62 = *(&v262 + 1);
              }

              *(&v247 + 1) = __PAIR64__(HIDWORD(v260), v61);
              *v248 = v62;
              v63 = *(a3 + 48);
              if (v63)
              {
                v64 = v63 + 72 * v265;
              }

              else
              {
                v64 = 0;
              }

              v291[0] = v251[0];
              v292 = v252;
              v293 = v253;
              v65 = *(a2 + 180);
              v66 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v291, 0);
              v67 = v66;
              v68 = *(&v259 + 1);
              v69 = (*(&v241 + 1) - *(&v259 + 1)) * 0.00000190734863;
              if (v69 <= 0.0)
              {
                if (v69 >= 0.0)
                {
                  v71 = 0;
                  goto LABEL_92;
                }

                v70 = -0.5;
              }

              else
              {
                v70 = 0.5;
              }

              v71 = (v69 + v70);
LABEL_92:
              v72 = *(&v259 + 1) + v71 * 524288.0;
              v73 = v72 - *(v66 + 8);
              *&v248[8] = 0;
              v74 = *(a2 + 188);
              if ((v74 & 0x10) != 0)
              {
                v75 = -v73;
              }

              else
              {
                v75 = v73;
              }

              *(&v241 + 1) = v72;
              *&v242 = v75;
              v250[10] = 0;
              if (v64 && (v74 & 4) != 0)
              {
                *v64 = v225;
                *(v64 + 40) = v75;
                *(v64 + 48) = v68;
              }

              v76 = v254;
              if (*(v66 + 108) == 1 && (v254 & 0x10000) != 0 && *(&v260 + 3) < 0.0000000144999995 && *(v66 + 64) < 0.0000000144999995 && (v77 = *(v66 + 84), v84 = v225 >= v77, v78 = v225 - v77, v78 != 0 && v84) && v78 <= v65 + 1)
              {
                v171 = *(v66 + 60);
                v79 = *(&v260 + 2);
                if (fabsf((v171 - *(&v260 + 2)) * 1000000000.0) < 10.0)
                {
                  v81 = 0;
                  v80 = (v171 + *(&v260 + 2)) * 0.5;
LABEL_107:
                  v82 = (v254 >> 6) & 1 | *(v66 + 113);
                  v83 = 24.0;
                  if ((**(a2 + 168) - 1) < 2)
                  {
                    v83 = 30.0;
                  }

                  v84 = v291[0] - 134 >= 5 && v291[0] - 76 >= 5;
                  if (v84)
                  {
                    v85 = v83;
                  }

                  else
                  {
                    v85 = 35.0;
                  }

                  if ((v82 & (*(a2 + 156) != 0)) == 1)
                  {
                    v86 = v81;
                    v222 = v65;
                    v288 = v290;
                    LOBYTE(v289) = 19;
                    memset(v290, 0, 76);
                    v87 = 1;
                    v290[v293 >> 5] |= 1 << v293;
                    v221 = *a1;
                    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v287);
                    v285 = &off_2A1F12F90;
                    v287 = &unk_2A1F12FC8;
                    v286 = v221;
                    v280 = *(a2 + 88);
                    v281 = *(a2 + 104);
                    v88 = *(a2 + 152);
                    v89 = *(a2 + 136);
                    v90 = *(a2 + 144);
                    BlueFin::GlPeNavUtil::ComputeRrateResidVec();
                    v74 = *(a2 + 188);
                    if (*(a2 + 156) >= 0xBu)
                    {
                      v87 = (fabs(*(*&v282[0] + 8)) < 5.0) & (v74 >> 5);
                    }

                    v91 = 0;
                    if ((v87 | (v74 >> 2)))
                    {
                      LOWORD(v65) = v222;
                      if (*(&v261 + 1) > v85)
                      {
                        v91 = v257 > 0x1388;
                      }
                    }

                    else
                    {
                      LOWORD(v65) = v222;
                    }

                    v92 = HIBYTE(v76) & 1 & ~v86 & v91;
                  }

                  else
                  {
                    v92 = 0;
                  }

                  v93 = *(v67 + 84);
                  if ((v74 & 0x200) != 0)
                  {
                    v94 = DWORD1(v255) == 4 && *&v248[12] == 0;
                  }

                  else
                  {
                    v94 = 0;
                    if (DWORD1(v255) <= 4 && ((1 << SBYTE4(v255)) & 0x19) != 0)
                    {
                      v94 = *&v248[12] < 2;
                    }
                  }

                  if ((v74 & 4) == 0 && v94 || ((v82 ^ 1 | v92) & 1) == 0 || (v96 = v225 - v93, (v225 - v93) > v65 + 1) || v257 < *(v67 + 100) || (v76 & 0x100) == 0)
                  {
                    v97 = *&v260 * v12;
                    *&v247 = v97;
                    *(&v247 + 1) = v97;
                    *(&v242 + 1) = *&v241 * 299792.458;
                    *(&v241 + 1) = *(&v259 + 1);
                    *&v248[12] = 0;
                    v98 = v254;
                    v250[13] = (v254 & 0x40) != 0;
                    HIDWORD(v247) = HIDWORD(v260);
                    v250[8] = BYTE2(v254) & 1;
                    a3 = v223;
                    v7 = v225;
                    goto LABEL_138;
                  }

                  v98 = v254;
                  if ((v82 & 1 & ((v254 & 0x1000) == 0)) != 0)
                  {
                    v75 = v80 * 0.299792458 * 1000000.0 * v96;
                  }

                  v7 = v225;
                  if (v225 == v93)
                  {
                    v103 = 1;
                  }

                  else
                  {
                    v103 = v225 - v93;
                  }

                  v104 = v75 - v80 * 0.299792458 * 1000000.0 * v96;
                  v105 = v103 * 0.001;
                  if (v82)
                  {
                    goto LABEL_260;
                  }

                  v106 = 10.0;
                  if ((*&v74 & 0x100000) == 0)
                  {
                    v106 = 3.0;
                  }

                  v107 = v104 / v105 * 3.33564095;
                  v249 |= 0x100u;
                  v108 = v107;
                  *&v248[8] = v108;
                  if (fabs(v107) <= v106)
                  {
LABEL_260:
                    v109 = 0;
                  }

                  else
                  {
                    v109 = 1;
                  }

                  a3 = v223;
                  if (fabs(v104) > 3.0)
                  {
                    goto LABEL_264;
                  }

                  if ((v109 | (*(a2 + 156) > 9u) & ~BlueFin::stPeSigMeasKF::IsRRValidForNav(&v241)) == 1)
                  {
                    v98 = v254;
LABEL_264:
                    v167 = *&v260 * v12;
                    *&v247 = v167;
                    *(&v247 + 1) = v167;
                    *(&v242 + 1) = *&v241 * 299792.458;
                    *(&v241 + 1) = *(&v259 + 1);
                    *&v248[12] = 0;
                    v250[13] = (v98 & 0x40) != 0;
                    HIDWORD(v247) = HIDWORD(v260);
                    v250[8] = BYTE2(v98) & 1;
                    goto LABEL_138;
                  }

                  v172 = *(&v247 + 1) * *(&v247 + 1);
                  if (v82)
                  {
                    v173 = v105 * (*(&v260 + 3) * v12) * (v105 * (*(&v260 + 3) * v12));
                    v172 = v172 + v173;
                    v174 = 0.95;
                  }

                  else
                  {
                    v173 = 0.00012;
                    v174 = 0.99;
                    if (*(&v260 + 1) != 3.4028e38)
                    {
                      v172 = v172 + (*(&v260 + 1) * *(&v260 + 1));
                    }
                  }

                  if (v172 >= v173)
                  {
                    v173 = v172;
                  }

                  v175 = *(&v242 + 1) - v75;
                  v176 = *&v241 * 299792.458;
                  if (vabdd_f64(*(&v242 + 1) - v75, *&v241 * 299792.458) <= 149896.229)
                  {
                    v179 = *&v241 * 299792.458;
                  }

                  else
                  {
                    v177 = v175 / 299792.458;
                    if (v175 / 299792.458 <= 0.0)
                    {
                      v178 = 0.0;
                      if (v175 / 299792.458 < 0.0)
                      {
                        v178 = ceil(v177 + -0.5);
                      }
                    }

                    else
                    {
                      v178 = floor(v177 + 0.5);
                    }

                    v175 = v175 - v178 * 299792.458;
                    v180 = v176 / 299792.458;
                    v181 = ceil(v176 / 299792.458 + -0.5);
                    if (v176 / 299792.458 >= 0.0)
                    {
                      v181 = 0.0;
                    }

                    v182 = floor(v180 + 0.5);
                    if (v180 > 0.0)
                    {
                      v183 = v182;
                    }

                    else
                    {
                      v183 = v181;
                    }

                    v179 = v176 + v183 * -299792.458;
                  }

                  v184 = *&v260 * v12;
                  if (v184 * v184 / (v184 * v184 + v173) <= v174)
                  {
                    v174 = v184 * v184 / (v184 * v184 + v173);
                  }

                  v185 = (1.0 - v174) * v179 + v174 * v175;
                  if (v185 < 0.0 || v185 > 299792.458)
                  {
                    v185 = v185 - floor(v185 / 299792.458) * 299792.458;
                  }

                  *(&v242 + 1) = v185;
                  v186 = -(v185 - *&v241 * 299792.458);
                  if (fabs(v186) <= 149896.229)
                  {
LABEL_303:
                    v190 = sqrt(v184 * v184 * ((1.0 - v174) * (1.0 - v174)) + v174 * v174 * v173);
                    *(&v247 + 1) = v190;
                    v191 = *(a2 + 188);
                    if ((v191 & 8) != 0 && v291[0] >= 0x34u && v291[0] <= 0x41u && v190 < 0.5)
                    {
                      DWORD1(v247) = 1056964608;
                    }

                    v192 = v184;
                    *&v247 = v192;
                    if (fabs(v186) > 90.0)
                    {
                      if (v186 <= -v184)
                      {
                        if ((v191 & 4) == 0)
                        {
                          *(&v247 + 1) = v184;
                          *(&v242 + 1) = *&v241 * 299792.458;
                          *(&v241 + 1) = *(&v259 + 1);
                          *&v248[12] = 0;
                        }
                      }

                      else if ((v191 & 4) == 0)
                      {
                        DWORD1(v255) = 4;
                      }
                    }

                    v98 = v254;
                    v250[13] = (v254 & 0x40) != 0;
                    v250[10] = (v254 & 0x1000) != 0;
                    HIDWORD(v247) = HIDWORD(v260);
                    v250[8] = BYTE2(v254) & 1;
                    ++*&v248[12];
LABEL_138:
                    if ((v98 & 0x100000) == 0)
                    {
                      v250[9] = 0;
                      v250[11] = 0;
                      v99 = *(a2 + 188);
                      goto LABEL_167;
                    }

                    LOBYTE(v282[0]) = v251[0];
                    DWORD1(v282[0]) = v252;
                    WORD4(v282[0]) = v253;
                    v100 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v282, 0);
                    v101 = (v243 - *&v262) * 0.00000190734863;
                    if (v101 <= 0.0)
                    {
                      if (v101 >= 0.0)
                      {
                        v110 = 0;
LABEL_158:
                        v111 = *&v262 + v110 * 524288.0 - *(v100 + 32);
                        v243 = *&v262 + v110 * 524288.0;
                        v99 = *(a2 + 188);
                        v112 = -v111;
                        if ((v99 & 0x10) == 0)
                        {
                          v112 = v111;
                        }

                        v250[11] = 0;
                        if (*(v100 + 109) == 1)
                        {
                          v113 = *(v100 + 84);
                          v84 = v7 >= v113;
                          v114 = v7 - v113;
                          if (v114 != 0 && v84 && v114 <= *(a2 + 180) + 1 && (v250[10] & 1) == 0)
                          {
                            *&v242 = v112;
                            v250[11] = 1;
                          }
                        }

                        v250[9] = 1;
LABEL_167:
                        if ((v99 & 0x20000) != 0 && !v46 && v264 == 2)
                        {
                          LOBYTE(v282[0]) = v263[0];
                          BlueFin::GlSignalIdSet::GetSignalIdSetForSv(&__src, v282, &v285);
                          BlueFin::GlSetBase::Remove(&v285, v265);
                          LOBYTE(v288) = v286;
                          memcpy(&v289, v285, 4 * v286);
                          WORD1(v288) = 0;
                          BYTE1(v288) = 0;
                          HIDWORD(v288) = v289;
                          while (1)
                          {
                            while (1)
                            {
                              BlueFin::GlSetIterator::operator++(&v288);
                              if (BYTE1(v288) == v288)
                              {
                                goto LABEL_189;
                              }

                              if ((v254 & 2) != 0 && *&v248[20] != -1 && (DWORD1(v255) - 1) <= 1)
                              {
                                if (WORD1(v288) >= 0x23FuLL)
                                {
                                  goto LABEL_340;
                                }

                                v115 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v288);
                                v116 = *v115;
                                LODWORD(v115) = v115[1];
                                LOBYTE(v280) = v116;
                                DWORD1(v280) = v115;
                                WORD4(v280) = WORD1(v288);
                                v117 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, &v280, 0);
                                v118 = *v117;
                                v119 = *(v117 + 16);
                                *&v282[2] = *(v117 + 32);
                                v282[1] = v119;
                                v282[0] = v118;
                                BYTE8(v282[2]) = *(v117 + 40);
                                v120 = *(v117 + 44);
                                LOWORD(v282[3]) = *(v117 + 48);
                                HIDWORD(v282[2]) = v120;
                                v121 = *(v117 + 80);
                                v122 = *(v117 + 68);
                                *(&v282[3] + 4) = *(v117 + 52);
                                *(&v282[4] + 4) = v122;
                                v282[5] = v121;
                                v283 = *(v117 + 96);
                                v123 = *(v117 + 100);
                                *&v284[14] = *(v117 + 114);
                                *v284 = v123;
                                if (DWORD2(v282[5]) != -1)
                                {
                                  v124 = BlueFin::GlPeMsmtMgr::GetMeMeas(*a1, &v280, 0, 0);
                                  if ((v124[12] & 2) != 0 && (*(v124 + 5) - 1) <= 1)
                                  {
                                    break;
                                  }
                                }
                              }
                            }

                            v125 = v12;
                            v126 = v13;
                            v127 = v10;
                            v128 = *(v124 + 24);
                            v129 = DWORD2(v282[5]);
                            v130 = *v282;
                            v131 = (*(*a1[1] + 80))(a1[1], &v280);
                            v132 = *&v248[20];
                            v133 = *&v241;
                            v134 = (*(*a1[1] + 80))(a1[1], v263);
                            (*(*a1[1] + 88))(a1[1], v263, 0);
                            if (WORD4(v280) >= 0x23Fu)
                            {
                              break;
                            }

                            v136 = BlueFin::GlSvId::s_aucSvId2gnss[v280];
                            v137 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * SDWORD1(v280) - SDWORD1(v280) + v136]];
                            if (v136 == 2)
                            {
                              v138 = (v280 - 59);
                              if (v280 - 52 >= 0xE)
                              {
                                v138 = -8.0;
                              }

                              v137 = v137 + v138 * 562500.0;
                            }

                            if (v265 >= 0x23Fu)
                            {
                              break;
                            }

                            v139 = BlueFin::GlSvId::s_aucSvId2gnss[v263[0]];
                            v140 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v264 - v264 + v139]];
                            if (v139 == 2)
                            {
                              v141 = (v263[0] - 59);
                              if (v263[0] - 52 >= 0xE)
                              {
                                v141 = -8.0;
                              }

                              v140 = v140 + v141 * 562500.0;
                            }

                            v142 = v137 * v137;
                            v143 = v140 * v140;
                            v144 = v142 - v143;
                            v145 = v142 / (v142 - v143);
                            v146 = v143 / v144;
                            v147 = v145 * (v130 + v129 - v131 / 299792.458) - v146 * (v133 + v132 - v134 / 299792.458 + v135 / 299792.458);
                            *&v248[20] = vcvtmd_s64_f64(v147);
                            *&v241 = v147 - *&v248[20];
                            *&v147 = sqrt(v146 * v146 * *&v260 * *&v260 + v145 * v145 * v128 * v128);
                            LODWORD(v260) = LODWORD(v147);
                            v250[12] = 1;
                            v284[12] = 1;
                            BlueFin::GlPeMsmtMgr::SetPeMeas(*a1, v282, 0);
                            v10 = v127;
                            v13 = v126;
                            v12 = v125;
                            v11 = v219;
                          }

                          v214 = "IsValid()";
                          DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
                          v215 = "glsignalid.h";
                          v216 = 651;
                          goto LABEL_341;
                        }

LABEL_189:
                        if (v252 == 3 || v252 == 0)
                        {
                          v149 = a3;
                          if ((v254 & 0x20) != 0 || (v149 = v217, (v254 & 0x10) != 0))
                          {
                            *(**v149 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
                          }
                        }

                        if (!v226)
                        {
                          goto LABEL_253;
                        }

                        v150 = *(a2 + 188);
                        v151 = **(a2 + 168);
                        v152 = v249 | 0x86;
                        if (*(&v260 + 3) <= 0.0000000158999995)
                        {
                          v152 = v249 & 0xFFFFFF79 | 6;
                        }

                        v249 = v152;
                        if (v151 != 10 && (v150 & 0x44) == 0 && (v150 & 2) == 0 && *(&v260 + 3) > 0.0000000158999995 && *(&v261 + 1) < 16.0)
                        {
                          v152 &= 0xFFFFFFF9;
                          v249 = v152;
                          v250[28] = 13;
                        }

                        if (v251[0] - 33 <= 0x12)
                        {
                          DWORD1(v255) = 2 * (*(&v261 + 1) >= 35.0);
                        }

                        v156 = 0;
                        v157 = (a1[2] + 1160);
                        v158 = -320;
                        while (*(v157 + v156) != v251[0])
                        {
                          v156 += 12;
                          v158 += 8;
                          if (!v158)
                          {
                            goto LABEL_222;
                          }
                        }

                        if (*(v157 + v158) == 0.0)
                        {
                          v159 = 4;
LABEL_228:
                          DWORD1(v255) = v159;
                          goto LABEL_229;
                        }

LABEL_222:
                        v160 = 0;
                        v161 = -320;
                        while (*(v157 + v160) != v251[0])
                        {
                          v160 += 12;
                          v161 += 8;
                          if (!v161)
                          {
                            goto LABEL_229;
                          }
                        }

                        if (*(v157 + v161) == 1.0)
                        {
                          v159 = 2;
                          goto LABEL_228;
                        }

LABEL_229:
                        if ((v150 & 0x2000) != 0 && v244 - 76 <= 0x3E)
                        {
                          v162 = *(&v247 + 2) * 1000000000.0;
                          v163 = -v162;
                          if (v162 >= 0.0)
                          {
                            v163 = *(&v247 + 2) * 1000000000.0;
                          }

                          if (v163 < 150.0 && *&v248[12] <= 9)
                          {
                            v152 &= 0xFFFFFFF9;
                            v249 = v152;
                          }
                        }

                        if ((v150 & 0x4000) != 0)
                        {
                          if (!v252)
                          {
                            if ((v150 & 0x8000) == 0)
                            {
LABEL_247:
                              if ((v254 & 0xC) != 0 || v252 >= 1)
                              {
                                v224 = 0;
                                *(a1 + 88) = v7;
                              }

                              else if (*(&v261 + 1) >= v220)
                              {
                                v218 = v263[0];
                                v220 = *(&v261 + 1);
                              }

                              BlueFin::GlPeMsmtMgr::ValidatePeMeas(*a1, v263);
LABEL_253:
                              BlueFin::GlPeMsmtMgr::SetPeMeas(*a1, &v241, 0);
                              BlueFin::GlPeMsmtMgr::SetMeMeas(*a1, v251);
                              if (*(a2 + 188) & 4) == 0 && ((*(v275 + 4 * (v265 >> 5)) >> (v265 & 0x1F)))
                              {
                                if (v230[4] >= 2u)
                                {
                                  v165 = (*(&v232 + 4) - *&v230[12]) * v12;
                                  if (DWORD1(v239) == -7200001)
                                  {
                                    *(&v239 + 1) = LODWORD(v165);
                                    v166 = v239;
                                  }

                                  else
                                  {
                                    v166 = v239;
                                    if ((v239 - DWORD1(v239)) < 0x1389)
                                    {
                                      v168 = (v239 - DWORD1(v239)) * 0.001;
                                      v169 = *(&v239 + 2) + (v168 * *(&v239 + 3));
                                      v170 = v165 - v169;
                                      *(&v239 + 2) = v169 + (v170 * 0.5);
                                      *(&v239 + 3) = *(&v239 + 3) + ((0.2 / v168) * v170);
                                    }

                                    else
                                    {
                                      *(&v239 + 1) = LODWORD(v165);
                                    }
                                  }

                                  DWORD1(v239) = v166;
                                  v240 = 1120403456;
                                }

                                BlueFin::GlPeMsmtMgr::SetPeGridMeas(*a1, v227);
                              }

                              goto LABEL_34;
                            }

LABEL_246:
                            v249 = v152 & 0xFFFFFFC9;
                            goto LABEL_247;
                          }

                          if ((BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v252 - v252 + BlueFin::GlSvId::s_aucSvId2gnss[v251[0]]] - 13) >= 2)
                          {
                            v152 &= 0xFFFFFFC9;
                            v249 = v152;
                          }
                        }

                        if ((v150 & 0x8000) == 0 || v252 && (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v252 - v252 + BlueFin::GlSvId::s_aucSvId2gnss[v251[0]]] - 13) > 1)
                        {
                          goto LABEL_247;
                        }

                        goto LABEL_246;
                      }

                      v102 = -0.5;
                    }

                    else
                    {
                      v102 = 0.5;
                    }

                    v110 = (v101 + v102);
                    goto LABEL_158;
                  }

                  v187 = v186 / 299792.458;
                  if (v186 / 299792.458 <= 0.0)
                  {
                    if (v186 / 299792.458 >= 0.0)
                    {
                      v189 = 0;
LABEL_302:
                      *(&v242 + 1) = v185 + v189 * 299792.458;
                      v186 = -(*(&v242 + 1) - *&v241 * 299792.458);
                      goto LABEL_303;
                    }

                    v188 = -0.5;
                  }

                  else
                  {
                    v188 = 0.5;
                  }

                  v189 = (v187 + v188);
                  goto LABEL_302;
                }
              }

              else
              {
                v79 = *(&v260 + 2);
              }

              v80 = v79;
              v81 = 1;
              goto LABEL_107;
            }
          }

          v58 = 20.0;
          goto LABEL_73;
        }
      }

      if ((*(a1 + 28) & 1) == 0)
      {
        v54 = *&v260 * v12 < 600.0 && (v254 & 0x8002) == 2;
        v55 = v54 || v53;
        if (v55 == 1)
        {
          *(a1 + 28) = 1;
          *(a1 + 6) = **a1;
        }
      }

      goto LABEL_59;
    }

LABEL_34:
    BlueFin::GlSetIterator::operator++(&v266);
  }

  while (v267 != v266);
  v9 = v220 > 30.0;
  v8 = v218;
LABEL_315:
  *&v282[0] = v282 + 12;
  BYTE8(v282[0]) = 19;
  memset(v282 + 12, 0, 32);
  memset(&v282[2] + 12, 0, 32);
  *(&v282[4] + 8) = 0u;
  v193 = *a1;
  LOBYTE(v285) = *(*a1 + 16);
  memcpy(&v286, v193[1], 4 * v285);
  WORD1(v285) = 0;
  BYTE1(v285) = 0;
  HIDWORD(v285) = v286;
  BlueFin::GlSetIterator::operator++(&v285);
  if (BYTE1(v285) == v285)
  {
    v194 = 0;
    v195 = 0.0;
    v196 = 0.0;
  }

  else
  {
    v197 = 0;
    v198 = 0;
    v196 = 0.0;
    v195 = 0.0;
    do
    {
      if (WORD1(v285) >= 0x23FuLL)
      {
        goto LABEL_340;
      }

      v199 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v285);
      v200 = *v199;
      LODWORD(v199) = v199[1];
      v227[0] = v200;
      v228 = v199;
      v229 = WORD1(v285);
      v201 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v227, 0);
      if (*(v201 + 97))
      {
        v202 = *(v201 + 76);
        ++v197;
        if (v202 != 0.0)
        {
          *(*&v282[0] + 4 * (v229 >> 5)) |= 1 << v229;
          ++v198;
          v203 = v202;
          v204 = v203 - v195;
          v195 = v195 + (v203 - v195) / v198;
          v196 = v196 + (v203 - v195) * v204;
        }
      }

      BlueFin::GlSetIterator::operator++(&v285);
    }

    while (BYTE1(v285) != v285);
    if (v198 <= ((v197 & 0xFFFE) >> 1))
    {
      v194 = 0;
    }

    else
    {
      v196 = sqrt(v196 / v198);
      v194 = 1;
    }
  }

  LOBYTE(v285) = BYTE8(v282[0]);
  memcpy(&v286, *&v282[0], 4 * BYTE8(v282[0]));
  WORD1(v285) = 0;
  BYTE1(v285) = 0;
  HIDWORD(v285) = v286;
  BlueFin::GlSetIterator::operator++(&v285);
  if (BYTE1(v285) != v285)
  {
    v205 = v196 + v196;
    while (WORD1(v285) < 0x23FuLL)
    {
      v206 = *a1;
      v207 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v285);
      v208 = *v207;
      LODWORD(v207) = v207[1];
      v227[0] = v208;
      v228 = v207;
      v229 = WORD1(v285);
      v209 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v206, v227, 0);
      if (!v194 || vabdd_f64(*(v209 + 76), v195) > v205)
      {
        *(v209 + 96) &= ~0x20u;
        *(v209 + 129) = 18;
      }

      BlueFin::GlSetIterator::operator++(&v285);
      if (BYTE1(v285) == v285)
      {
        goto LABEL_333;
      }
    }

LABEL_340:
    v214 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v215 = "glsignalid.h";
    v216 = 578;
LABEL_341:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v215, v216, v214);
  }

LABEL_333:
  (*(*a1[1] + 120))(a1[1], *a1 + 46, a2 + 88, *(a2 + 152), v225, *(a2 + 136));
  if ((((v8 - 1) < 0xBC) & v224 & v9) != 0)
  {
    v210 = *(a1 + 88);
    if (v210 == -1 || (v84 = v225 >= v210, v211 = v225 - v210, v211 != 0 && v84) && v211 >= 0x249F1)
    {
      **(a3 + 40) = v8;
    }
  }

  v212 = *a1;
  result = BlueFin::GlSignalIdSet::CntSecondarySignalSvIdSet(v271, 2);
  *(v212 + 56217) = result;
  return result;
}

unsigned __int8 *BlueFin::GlSignalIdSet::GetSecondarySignalSvIdSet@<X0>(unsigned __int8 *this@<X0>, uint64_t a2@<X8>)
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
      DeviceFaultNotify("glsignalid.h", 594, "GetSignalIndexFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 594, "usIndex < NUM_SIGNAL_IDS");
    }

    if ((*(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v11 + 1) - 1) <= 1)
    {
      v5 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v11);
      *(v2 + ((v5 >> 3) & 0x1C)) |= 1 << v5;
    }
  }

  return this;
}

unint64_t BlueFin::GlPeKF::IsVdrValid(BlueFin::GlPeKF *this)
{
  v1 = *(this + 579);
  if (!v1 || v1 != 1 && (*(*(*(this + 7617) + 160) + 2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 7628);
  if (v2)
  {
    v3 = *(*(this + 7179) + 8);
    if ((v3 - 3) < 4 || v3 == 0)
    {
      return (*(*v2 + 40))(v2);
    }

    return 0;
  }

  v6 = *(this + *(*(this + 2148) - 24) + 17440);
  if ((v6 & 8) == 0)
  {
    return 0;
  }

  return (v6 >> 2) & 1;
}

BlueFin::SKFVector *BlueFin::SKFVectorDim<100>::SKFVectorDim(BlueFin::SKFVector *a1, const BlueFin::SKFVector *a2)
{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 100;
  if (v2 >= 101)
  {
    DeviceFaultNotify("glpe_matrix.h", 510, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 510, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}

{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 100;
  if (v2 >= 101)
  {
    DeviceFaultNotify("glpe_matrix.h", 505, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 505, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}