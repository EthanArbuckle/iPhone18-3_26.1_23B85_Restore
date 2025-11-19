uint64_t API_Get_Raw_Meas_Data(float64x2_t *a1)
{
  v286 = *MEMORY[0x29EDCA608];
  f64 = a1[10005].f64;
  v228 = a1[3590].f64;
  bzero(a1, 0x271A0uLL);
  v2 = *(p_api + 32);
  v267 = *(p_api + 16);
  v3 = *(p_api + 72);
  v247 = *(p_api + 80);
  v4 = *(p_api + 56);
  v227 = v4 + 47500;
  v226 = v4 + 25364;
  v225 = (v4 + 17120);
  v221 = (v4 + 8984);
  v5 = *(p_api + 96);
  v242 = *(p_api + 88);
  v6 = *(p_api + 136);
  v7 = *(p_api + 176);
  v245 = *(p_api + 48);
  *&a1->f64[0] = 1000000 * *(v245 + 24);
  if (*(v3 + 240))
  {
    a1->f64[1] = *(v3 + 152);
    a1[1].f64[0] = *(v3 + 224);
    a1[1].f64[1] = *(v3 + 72);
    a1[2].f64[0] = *(v3 + 112);
    a1[2].f64[1] = *(v3 + 80);
    a1[3] = vmulq_f64(vsqrtq_f64(*(v6 + 56)), vdupq_n_s64(0x400AAF6485FFABE7uLL));
    a1[4].f64[0] = *(v3 + 216) * *(v3 + 216);
    a1[4].f64[1] = *(v3 + 200) * *(v3 + 200);
  }

  v243 = v3;
  v244 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(a1[5].f64[0]) = 0;
  v12 = (1000000 * *(v7 + 16));
  v261 = a1[6].f64;
  v263 = v4;
  v13 = v4 + 17424;
  v237 = a1;
  v14 = &a1[3604].f64[1];
  v15 = v4 + 17480;
  v16 = v5 + 3424;
  v17 = v7 + 7080;
  v18 = v7 + 12072;
  v19 = v7 + 21984;
  v259 = v7 + 36888;
  v257 = v7 + 7336;
  v20 = v7 + 19624;
  v255 = v7 + 17448;
  v21 = 7230;
  v22 = 22240;
  v23 = 26976;
  v24 = 7208;
  v25 = 3.33564095;
  v26 = 1000000000.0 / v12 * 3.33564095;
  v27 = 7976;
  v28 = 208;
  *&v29 = 1.0e11;
  v30 = 0.0000508978417;
  *&v31 = 100000.0;
  v32 = xmmword_299050910;
  *&v33 = 6.048e14;
  *&v34 = 86400.0;
  while (1)
  {
    v35 = *(v267 + v24);
    if (*(v267 + v24))
    {
      v36 = v35 == 7;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_9;
    }

    v37 = *(v267 + v21 - 20);
    if (v35 != 2 && v37 == 0)
    {
      goto LABEL_9;
    }

    if (v35 != *(v5 + v8 + 96))
    {
      goto LABEL_9;
    }

    v39 = v267 + v21;
    if (*(v267 + v21 - 21) != *(v5 + v8 + 97))
    {
      goto LABEL_9;
    }

    v264 = v5 + v8;
    if (*(v39 - 19) != *(v5 + v8 + 99) || *(v267 + v21 - 20) && v37 != *(v264 + 98))
    {
      goto LABEL_9;
    }

    if (*(v5 + 4 * v11 + 1248) < 10)
    {
      goto LABEL_9;
    }

    v40 = LOWORD(v237[5].f64[1]);
    if (v40 > 0xFF)
    {
      goto LABEL_135;
    }

    v229 = v7;
    v249 = v12;
    v251 = v5;
    v41 = &v261[28 * LOWORD(v237[5].f64[1])];
    LOWORD(v237[5].f64[1]) = v40 + 1;
    *v41 = -1;
    v232 = v267 + v21;
    v233 = v20;
    v253 = &v261[28 * v40];
    v222 = v13;
    v223 = v2;
    v246 = v15;
    v238 = v17;
    v240 = v16;
    v234 = v19;
    v235 = v18;
    v231 = v32;
    switch(*(v39 - 21))
    {
      case 0:
        v46 = ((*(v267 + v24) - 1) & 0xFB) == 0;
        break;
      case 1:
        v46 = 1;
        break;
      case 2:
        v46 = 2;
        break;
      case 3:
        v46 = 3;
        break;
      case 4:
        v46 = 4;
        break;
      case 5:
      case 6:
      case 7:
      case 0xA:
      case 0xE:
      case 0xF:
        v214 = v25;
        v211 = v29;
        v42 = v30;
        v43 = v31;
        v44 = v33;
        v45 = v34;
        EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x1594u);
        v41 = v253;
        v34 = v45;
        v33 = v44;
        v31 = v43;
        v30 = v42;
        v29 = v211;
        v25 = v214;
        v46 = 0;
        break;
      case 8:
        v46 = 8;
        break;
      case 9:
        v46 = 9;
        break;
      case 0xB:
        v46 = 6;
        break;
      case 0xC:
        v46 = 5;
        break;
      case 0xD:
        v46 = 7;
        break;
      default:
        v46 = 0;
        break;
    }

    v219 = *&v34;
    v220 = *&v33;
    *(v41 + 1) = v46;
    v47 = *(v267 + v24);
    if (v47 > 3)
    {
      if (*(v267 + v24) > 5u)
      {
        if (v47 != 6)
        {
          if (v47 != 7)
          {
LABEL_41:
            v48 = GM_Gen_SV_Meas_QI(v267 + v24);
            goto LABEL_42;
          }

LABEL_37:
          EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x15A3u);
          goto LABEL_39;
        }
      }

      else if (v47 != 4)
      {
        if (v47 != 5)
        {
          goto LABEL_41;
        }

        v47 = 3;
      }
    }

    else
    {
      if (*(v267 + v24) <= 1u)
      {
        if (*(v267 + v24))
        {
          *(v41 + 2) = 1;
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      if (v47 != 2)
      {
        if (v47 != 3)
        {
          goto LABEL_41;
        }

        v47 = 5;
      }
    }

    *(v41 + 2) = v47;
LABEL_39:
    v215 = *(v267 + v24);
    v48 = GM_Gen_SV_Meas_QI(v267 + v24);
    if (v215 == 2)
    {
      v50 = v267 + v21;
      v51 = *(v232 - 19);
      v12 = v249;
      v5 = v251;
      goto LABEL_43;
    }

LABEL_42:
    v12 = v249;
    v5 = v251;
    v50 = v267 + v21;
    v51 = *(v267 + v21 - 20);
LABEL_43:
    *(v253 + 6) = v51;
    v52 = *(v245 + 40) * 1000000000.0;
    v253[3] = v52;
    v253[4] = v52;
    v253[2] = v52 - v12;
    v53 = v267;
    v54 = (v267 + v10);
    v55 = *(v267 + v10 + 7216);
    if ((v55 & 0x200) != 0)
    {
      v56 = 9;
    }

    else
    {
      v56 = 1;
    }

    v57 = v253;
    if ((~v55 & 0x300) != 0)
    {
      v58 = v56;
    }

    else
    {
      v58 = 15;
    }

    *(v253 + 40) = v58;
    v59 = v267 + v9;
    *(v253 + 6) = *(v267 + v9 + 88) * 1000000000.0;
    v60 = *&v29;
    v15 = v246;
    v61 = v238;
    v16 = v240;
    v62 = v234;
    v18 = v235;
    v20 = v233;
    if (v48 >= 0xA)
    {
      v60 = *&v29;
      if (v54[3609])
      {
        v216 = v48;
        PR_Raw_Meas_Unc = NK_Get_PR_Raw_Meas_Unc(*(v267 + v24), *(v267 + v21 - 18), v54[3609] / 0xAu, *(v267 + v9 + 72));
        v59 = v267 + v9;
        v53 = v267;
        v54 = (v267 + v10);
        v48 = v216;
        v5 = v251;
        v57 = v253;
        v50 = v267 + v21;
        v20 = v233;
        v62 = v234;
        v18 = v235;
        v61 = v238;
        v16 = v240;
        v15 = v246;
        v12 = v249;
        v60 = PR_Raw_Meas_Unc * v25;
      }
    }

    v57[7] = v60;
    LOBYTE(v60) = *(v5 + v11 + 1760);
    LOBYTE(v49) = *(v5 + v11 + 1888);
    *&v64 = v49;
    v65 = *&v60 + *&v64 * 0.0625;
    v57[8] = v65;
    LOBYTE(v65) = *(v5 + v11 + 2016);
    LOBYTE(v64) = *(v5 + v11 + 2144);
    v57[9] = *&v65 + v64 * 0.0625;
    v66 = *(v53 + v21);
    *(v57 + 88) = v66;
    *(v57 + 45) = v54[3614];
    v57[12] = *(v59 + 52) * v30;
    v67 = *(v59 + 56);
    v57[14] = v67 * v30;
    v68 = *&v31;
    if (v48 >= 0xA)
    {
      v68 = *&v31;
      if (*(v53 + v10 + 7220))
      {
        v209 = v67;
        v217 = v48;
        v212 = v54;
        DO_Raw_Meas_Unc = NK_Get_DO_Raw_Meas_Unc(*(v53 + v24), *(v53 + v21 - 18), *(v53 + v10 + 7220) / 0xAu, v66, v48);
        v67 = v209;
        v54 = v212;
        v48 = v217;
        v5 = v251;
        v57 = v253;
        v50 = v267 + v21;
        v20 = v233;
        v62 = v234;
        v18 = v235;
        v61 = v238;
        v16 = v240;
        v15 = v246;
        v12 = v249;
        v68 = DO_Raw_Meas_Unc * v25;
      }
    }

    v57[13] = v68;
    if (!v67)
    {
      v68 = -1.0;
    }

    v57[15] = v68;
    *(v57 + 36) = 2;
    v70 = v54[3608];
    if ((v70 & 0xC0) != 0)
    {
      v71 = 4;
      v72 = v222;
      v2 = v223;
      v32 = v231;
      *&v34 = v219;
      *&v33 = v220;
LABEL_61:
      *(v57 + 37) = v71;
      goto LABEL_62;
    }

    v72 = v222;
    v2 = v223;
    v32 = v231;
    *&v34 = v219;
    *&v33 = v220;
    if ((v70 & 0x30) != 0)
    {
      v71 = 3;
      goto LABEL_61;
    }

LABEL_62:
    *(v57 + 76) = v11;
    *(v57 + 156) = v48 > 9;
    *(v57 + 42) = 0;
    v73 = -1.0;
    if (v48 < 0xF || (v74 = *(v267 + v10 + 7222), v74 < 0x15))
    {
      v80 = 25;
      v79 = *&v29;
    }

    else
    {
      v57[23] = *(v57 + 4);
      v218 = v74;
      v213 = *(v267 + v9 + 64);
      v210 = NK_Get_DR_Raw_Meas_Unc(*(v267 + v21 - 18), *(v267 + v9 + 76)) * v25;
      v75.f64[0] = v213;
      v75.f64[1] = v210;
      *(v253 + 12) = vmulq_f64(v75, v231);
      if (*(v243 + 1668) + 100 >= v218)
      {
        v76 = 1;
      }

      else
      {
        v76 = 2;
      }

      *(v253 + 42) = v76;
      *&v268[0] = 0;
      v77 = R8_EQ((v229 + v28), v268);
      v5 = v251;
      v57 = v253;
      v50 = v267 + v21;
      v20 = v233;
      *&v34 = v219;
      *&v33 = v220;
      v32 = v231;
      v62 = v234;
      v18 = v235;
      v61 = v238;
      v16 = v240;
      v15 = v246;
      v12 = v249;
      v72 = v222;
      v2 = v223;
      v78 = -1.0;
      if (v77)
      {
        goto LABEL_71;
      }

      v79 = -(*(v229 + 8 * v11 + 208) * v26);
      v80 = 16;
      v73 = v210;
    }

    v57[v80] = v79;
    v78 = v73;
LABEL_71:
    v19 = v62;
    v13 = v72;
    v17 = v61;
    v81 = v50;
    v57[17] = v78;
    v7 = v229;
    if (*(v267 + v9 + 85))
    {
      v82 = v267 + v21;
      if (*(v267 + v9 + 85) > 9u)
      {
        *(v57 + 52) = 1;
      }

      else
      {
        *(v57 + 52) = 2;
      }

      v83 = v267;
    }

    else
    {
      *(v57 + 52) = 0;
      v83 = v267;
      v82 = v267 + v21;
    }

    v84 = v57;
    v85 = v83;
    v86 = v83 + v10;
    *(v84 + 106) = *(v86 + 7218);
    *(v84 + 214) = *(v86 + 7220);
    v87 = *(v85 + v24);
    if (v87 == 7)
    {
      goto LABEL_9;
    }

    if (v87 == 2)
    {
      v265 = *(v264 + 98);
      if (!v265)
      {
        if (*(v13 + 4 * *(v81 - 19) + 28) == 2139062143)
        {
          goto LABEL_9;
        }

        LOBYTE(v265) = *(v13 + 4 * *(v81 - 19) + 28);
        if (!v265)
        {
          goto LABEL_9;
        }
      }

      *(v82 - 20) = v265;
    }

    else
    {
      LOBYTE(v265) = 0;
    }

    v88 = GNSS_Id_To_Num_Pos_Idx(*(v267 + v24));
    v16 = v240;
    v13 = v222;
    v2 = v223;
    v12 = v249;
    v5 = v251;
    v7 = v229;
    v15 = v246;
    v17 = v238;
    v19 = v234;
    v18 = v235;
    v20 = v233;
    v32 = v231;
    *&v34 = v219;
    *&v33 = v220;
    if (v242)
    {
      if (*(v242 + 192 * v88 + 176))
      {
        break;
      }
    }

LABEL_9:
    ++v11;
    v10 += 36;
    v21 += 36;
    v22 += 4;
    v23 += 8;
    v24 += 36;
    v27 += 24;
    v28 += 8;
    v9 += 56;
    v8 += 4;
    if (v11 == 128)
    {
      goto LABEL_135;
    }
  }

  v89 = *(v228 + 112);
  if (v89 <= 0xFF)
  {
    v90 = &v14[13 * *(v228 + 112)];
    *v90 = LOBYTE(v237[5].f64[1]) - 1;
    *v253 = v89;
    *(v228 + 112) = v89 + 1;
    *(v90 + 1) = v265;
    if (*(v267 + v24) == 2)
    {
      v91 = *(v246 + 4 * *(v232 - 19) + 28);
      v92 = v240;
      v93 = v238;
      if (v91 <= 3)
      {
        v94 = dword_2990509A0[v91];
        goto LABEL_91;
      }
    }

    else
    {
      v94 = 1;
      v92 = v240;
      v93 = v238;
LABEL_91:
      *(v90 + 1) = v94;
    }

    v95 = *(v267 + v24);
    if (v95 == 4)
    {
      v98 = *(v251 + 32) + -14.0 + *(v92 + 8 * v11) * -0.00000000333564095;
      if (v98 < 0.0)
      {
        v98 = v98 + 604800.0;
      }

      v96 = v235;
      v97 = v234;
    }

    else
    {
      v96 = v235;
      v97 = v234;
      if (v95 == 2)
      {
        v98 = *(v251 + 72) + *(v92 + 8 * v11) * -0.00000000333564095;
        if (v98 < 0.0)
        {
          v98 = v98 + v219;
        }
      }

      else
      {
        v98 = *(v251 + 32) + *(v92 + 8 * v11) * -0.00000000333564095;
      }
    }

    v99 = v98 * 1000000000.0;
    if (v99 < 0.0)
    {
      v99 = v99 + v220;
    }

    *(v90 + 1) = v99;
    v100 = *(v93 + v11);
    if (v100 == 1)
    {
      v101 = sqrt(*(v229 + v27) + *(v229 + v27 + 8));
      *(v90 + 10) = v101;
      *(v90 + 2) = v101 * v25;
      v90[4] = *(v96 + 8 * v11);
    }

    *(v90 + 6) = 0;
    v102 = *(v97 + v11);
    if (v102 == 1)
    {
      v90[5] = *(v229 + v23);
    }

    v103 = *(v259 + v11);
    if (v103 == 1)
    {
      v90[6] = *(v229 + v23 + 14904);
    }

    if (v100 && (*(v257 + 4 * v11) - 1) >= 0x1E)
    {
      v90[7] = *(v233 + 8 * v11);
    }

    if (v102 && (*(v229 + v22) - 1) >= 0x1E)
    {
      v90[8] = *(v229 + v23 + 7552);
    }

    if (v103 && (*(v229 + v22 + 14904) - 1) >= 0x1E)
    {
      v90[9] = *(v229 + v23 + 22456);
    }

    if (v100)
    {
      *(v90 + 10) = sqrt(*(v255 + 8 * v11));
    }

    if (v102)
    {
      *(v90 + 11) = sqrt(*(v229 + v23 + 5376));
    }

    if (v103)
    {
      *(v90 + 12) = sqrt(*(v229 + v23 + 20280));
    }

    goto LABEL_9;
  }

LABEL_135:
  v104 = 0;
  v105 = v263 + 17328;
  v262 = v243 + 824;
  v266 = v243 + 1104;
  v106 = v237;
  v236 = v2 + 656;
  v230 = v2 + 9376;
  v107 = 0.5;
  while (2)
  {
    Constell_Prn = Get_Constell_Prn(v104);
    v109 = Num_Prn_Idx_To_GNSS_Id(v104);
    v110 = v109;
    if (Constell_Prn == 2)
    {
      v111 = *(v105 + 4 * v109 - 4);
      if (v111 == 2139062143)
      {
        goto LABEL_316;
      }
    }

    else
    {
      if (Constell_Prn == 7)
      {
        break;
      }

      LOBYTE(v111) = 0;
    }

    if (*(v262 + v104) == 1 && (*(v266 + v104) & 1) != 0)
    {
      goto LABEL_316;
    }

    v112 = Num_Prn_Idx_To_Num_Pos_Idx(v104);
    if (v112 - 1 > 0xC3)
    {
      goto LABEL_316;
    }

    v114 = v242 + 192 * v112;
    if (!*(v114 + 176))
    {
      goto LABEL_316;
    }

    v115 = LOWORD(v106[5268].f64[1]);
    if (v115 > 0xFF)
    {
      break;
    }

    v116 = &v237[5269] + 296 * LOWORD(v106[5268].f64[1]);
    LOWORD(v106[5268].f64[1]) = v115 + 1;
    v117 = Constell_Prn;
    v241 = v110;
    if (Constell_Prn > 3u)
    {
      v118 = v244;
      if (Constell_Prn > 5u)
      {
        if (Constell_Prn == 6)
        {
          goto LABEL_159;
        }

        goto LABEL_156;
      }

      if (Constell_Prn != 4)
      {
        v117 = 3;
      }

LABEL_159:
      *v116 = v117;
    }

    else
    {
      v118 = v244;
      if (Constell_Prn > 1u)
      {
        if (Constell_Prn != 2)
        {
          v117 = 5;
          goto LABEL_159;
        }

        *v116 = 2;
        goto LABEL_157;
      }

      if (Constell_Prn)
      {
        goto LABEL_159;
      }

LABEL_156:
      EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x17BCu);
      if (Constell_Prn == 2)
      {
LABEL_157:
        v119 = v111;
        v120 = v110;
        goto LABEL_161;
      }
    }

    v120 = 0;
    v119 = v110;
LABEL_161:
    *(v116 + 4) = v119;
    *(v116 + 6) = v120;
    *v113.i64 = sqrt(*(v114 + 112) * v107);
    *(v116 + 144) = v113.i64[0];
    *(v116 + 152) = *v113.i64 * v25;
    v121 = (v263 + 51052 + 20 * v104);
    v122 = v263 + 55412 + 20 * v104;
    v113.i64[0] = *v122;
    v123.i64[0] = 0x200000002;
    v123.i64[1] = 0x200000002;
    v124 = vceqq_s32(*v121, v123);
    v125.i64[0] = 0x100000001;
    v125.i64[1] = 0x100000001;
    v126 = vsubq_s32(vandq_s8(v124, v123), vbicq_s8(vceqq_s32(*v121, v125), v124));
    *(v116 + 160) = v126;
    v126.i32[0] = v121[1].i32[0];
    v127 = vextq_s8(vextq_s8(v126, v126, 4uLL), v113, 0xCuLL);
    v127.i32[3] = *(v122 + 8);
    v128 = vceqq_s32(v127, v123);
    *(v116 + 176) = vsubq_s32(vandq_s8(v128, v123), vbicq_s8(vceqq_s32(v127, v125), v128));
    v129 = *(v122 + 16);
    if (v129 == 2)
    {
      v130 = 2;
    }

    else
    {
      v130 = v129 == 1;
    }

    *(v116 + 192) = v130;
    v131 = *(v118 + 1712);
    if (v131 > 0.0)
    {
      v132 = v236 + 40 * v104;
      if (*(v132 + 32) >= 0.0)
      {
        Trop_Elev_MapF(v132);
        *(v116 + 200) = v131 * v133;
      }
    }

    v134 = 2;
    if (((1 << Constell_Prn) & 0x3A) != 0)
    {
      goto LABEL_170;
    }

    if (((1 << Constell_Prn) & 0x44) != 0)
    {
      v134 = 1;
LABEL_170:
      *(v116 + 208) = v134;
      v135 = (v116 + 208);
LABEL_171:
      v136 = 0;
      v137 = 0;
      v258 = v116 + 224;
      v260 = v116 + 212;
      v254 = v116 + 256;
      v256 = v116 + 240;
      v239 = v116;
      v250 = v116 + 288;
      v252 = v116 + 272;
      v138 = 15;
      v248 = v236 + 40 * v104;
      while (2)
      {
        if (v137)
        {
          if (v137 != 1)
          {
            goto LABEL_218;
          }

          v139 = 6177;
          v140 = 3;
          if (Constell_Prn <= 3u)
          {
            if (Constell_Prn <= 1u)
            {
              v141 = 3;
              v142 = 3;
              if (Constell_Prn)
              {
                goto LABEL_221;
              }

LABEL_219:
              EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", v139);
              v141 = 0;
              if (v138 > 0xE)
              {
                v140 = v138;
              }

              else
              {
                v140 = v138;
                v142 = v138;
                if (((1 << v138) & 0x66CC) != 0)
                {
                  goto LABEL_221;
                }
              }

              goto LABEL_211;
            }

            if (Constell_Prn != 2)
            {
              v140 = 9;
              v141 = 9;
              v142 = 9;
              goto LABEL_221;
            }

LABEL_218:
            v140 = v138;
            goto LABEL_257;
          }

          if (Constell_Prn > 5u)
          {
            if (Constell_Prn != 6)
            {
              goto LABEL_219;
            }

            goto LABEL_218;
          }

          if (Constell_Prn == 4)
          {
            v141 = 7;
          }

          else
          {
            v141 = 3;
          }

          if (Constell_Prn == 4)
          {
            v142 = 13;
          }

          else
          {
            v142 = 3;
          }

          if (Constell_Prn == 4)
          {
            v140 = 13;
          }

          else
          {
            v140 = 3;
          }

LABEL_221:
          v138 = v142;
          if (*(v266 + v104))
          {
LABEL_257:
            ++v137;
            v138 = v140;
            if (v137 >= *v135)
            {
              v116 = v239;
              goto LABEL_259;
            }

            continue;
          }
        }

        else
        {
          v139 = 6162;
          v141 = 1;
          if (Constell_Prn > 3u)
          {
            if (Constell_Prn > 5u)
            {
              if (Constell_Prn == 6)
              {
                v140 = 3;
                v141 = 3;
                v142 = 3;
                goto LABEL_221;
              }

              goto LABEL_219;
            }

            if (Constell_Prn == 4)
            {
              v138 = 11;
            }

            else
            {
              v138 = 0;
            }

            if (Constell_Prn == 4)
            {
              v141 = 6;
            }

            else
            {
              v141 = 1;
            }

            if (Constell_Prn == 4)
            {
              v140 = 11;
            }

            else
            {
              v140 = 0;
            }
          }

          else if (Constell_Prn > 1u)
          {
            if (Constell_Prn == 2)
            {
              v138 = 4;
            }

            else
            {
              v138 = 8;
            }

            if (Constell_Prn == 2)
            {
              v141 = 4;
            }

            else
            {
              v141 = 8;
            }

            if (Constell_Prn == 2)
            {
              v140 = 4;
            }

            else
            {
              v140 = 8;
            }
          }

          else
          {
            if (!Constell_Prn)
            {
              goto LABEL_219;
            }

            v138 = 0;
            v140 = 0;
          }

LABEL_211:
          if (*(v262 + v104))
          {
            goto LABEL_257;
          }
        }

        break;
      }

      *(v260 + 4 * v136) = v141;
      v143 = 0;
      v144 = 0.0;
      if (*(v263 + 8956))
      {
        v144 = 0.0;
        if (*(v248 + 32) >= 0.0)
        {
          v145 = GPS_Klob_Iono_Delay((v247 + 224), v230 + 40 * v104, v248, (v263 + 8952), *(v245 + 40));
          GPS_L1_Iono_Scale_factor(v138);
          v144 = v145 * v146;
        }
      }

      *(v258 + 8 * v136) = v144;
      if (v141 <= 3)
      {
        if (v141)
        {
          v147 = 0.0;
          if (v141 == 3)
          {
            goto LABEL_234;
          }
        }

        else
        {
          EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x18CAu);
          v147 = 0.0;
        }
      }

      else
      {
        if (v141 <= 6)
        {
          if (v141 != 4)
          {
            v147 = 0.0;
            goto LABEL_236;
          }

          if (*(v243 + 1992))
          {
            v150 = 1.5;
          }

          else
          {
            v150 = 3.0;
          }

          *&v268[0] = 0;
          if (R8_EQ((v247 + 160), v268))
          {
            v151 = 0.0;
          }

          else
          {
            v279 = 0.0;
            v152 = R8_EQ((v247 + 152), &v279);
            v151 = 0.0;
            if (!v152)
            {
              v153 = *(v247 + 152);
              v154 = *(v247 + 160);
              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              memset(v268, 0, sizeof(v268));
              v285 = 0;
              v284 = 0u;
              v283 = 0u;
              v282 = 0u;
              v281 = 0u;
              v280 = 0u;
              *v278 = 0;
              *v277 = xmmword_299050920;
              v279 = -1.0;
              mapu(v277, 1, 1u, 2, (v244 + 352), 0xCu, v268, 1, &v279, v278);
              v155 = sqrt(*v278);
              v151 = 0.0;
              if (v155 < v150)
              {
                v151 = *(v244 + 15528) + (v153 - v154) * -299792458.0;
                v150 = v155;
              }

              v107 = 0.5;
            }
          }

          *(v256 + 8 * v136) = v151;
          *(v254 + 8 * v136) = v150;
          v156 = 136;
          if (!v137)
          {
            v156 = 152;
          }

          *(v252 + 8 * v136) = *(v114 + v156) * 1000000000.0;
LABEL_255:
          v149 = *(v267 + 32);
          goto LABEL_256;
        }

        if (v141 == 9 || (v147 = 0.0, v141 == 7))
        {
LABEL_234:
          v147 = *(v247 + 176) * 299792458.0;
          v143 = *(v247 + 880);
        }
      }

LABEL_236:
      *(v256 + 8 * v136) = v147;
      *(v254 + 8 * v136) = v143;
      v148 = 136;
      if (!v137)
      {
        v148 = 152;
      }

      *(v252 + 8 * v136) = *(v114 + v148) * 1000000000.0;
      if (((1 << v141) & 0x172) != 0)
      {
        goto LABEL_255;
      }

      if (((1 << v141) & 0x288) != 0)
      {
        v149 = *(v267 + 33);
      }

      else
      {
        EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x18EEu);
        v149 = 0;
      }

LABEL_256:
      *(v250 + v136++) = v149;
      goto LABEL_257;
    }

    *(v116 + 208) = 0;
    v135 = (v116 + 208);
    EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x17FEu);
    if (*(v116 + 208))
    {
      goto LABEL_171;
    }

    v136 = 0;
LABEL_259:
    v157 = 0;
    *v135 = v136;
    if (Constell_Prn > 3u)
    {
      v106 = v237;
      v105 = v263 + 17328;
      switch(Constell_Prn)
      {
        case 4u:
          LODWORD(v158) = (v241 - 1);
          v159 = (v263 + 35088 + 152 * (v241 - 1) + 4);
          v160 = (v263 + 25512 + 152 * (v241 - 1) + 4);
          v161 = v263 + 44664;
          break;
        case 5u:
          LODWORD(v158) = (v241 + 63);
          v159 = (v263 + 10312 + 116 * (v241 + 63) + 4);
          v160 = (v263 + 9152 + 116 * (v241 + 63) + 4);
          v161 = v263 + 11472;
          break;
        case 6u:
          LODWORD(v158) = (v241 - 1);
          v159 = (v263 + 48760 + 76 * (v241 - 1) + 4);
          v160 = (v263 + 47696 + 76 * (v241 - 1) + 4);
          v161 = v263 + 49824;
          v162 = 52;
          goto LABEL_276;
        default:
          goto LABEL_284;
      }

      goto LABEL_275;
    }

    v106 = v237;
    v105 = v263 + 17328;
    switch(Constell_Prn)
    {
      case 1u:
        LODWORD(v158) = (v241 - 1);
        v159 = (v263 + 3832 + 116 * (v241 - 1) + 4);
        v160 = (v263 + 120 + 116 * (v241 - 1) + 4);
        v161 = v263 + 7544;
LABEL_275:
        v162 = 44;
LABEL_276:
        v163 = *v160;
        v164 = *(v161 + v158 * v162 + 4);
        if (*v159 == 6)
        {
          v165 = 6;
        }

        else
        {
          v165 = v164;
        }

        if (v163)
        {
          v165 = v163;
        }

        v166 = v165 - 3;
        if (v166 > 3)
        {
          v157 = 0;
        }

        else
        {
          v157 = dword_2990509B0[v166];
        }

        break;
      case 2u:
        v158 = (v241 - 1);
        v159 = (v263 + 13464 + 116 * v158 + 4);
        v161 = v263 + 16248;
        v160 = (v263 + 11928 + (v158 << 6) + 4);
LABEL_273:
        v162 = 36;
        goto LABEL_276;
      case 3u:
        LODWORD(v158) = (v241 - 1);
        v159 = (v263 + 20876 + 88 * (v241 - 1) + 4);
        v160 = (v263 + 17708 + 88 * (v241 - 1) + 4);
        v161 = v263 + 24044;
        goto LABEL_273;
    }

LABEL_284:
    *(v116 + 8) = v157;
    v167 = *(v114 + 164);
    v168 = *(v114 + 164);
    if (Constell_Prn <= 3u)
    {
      if (Constell_Prn <= 1u)
      {
        if (!Constell_Prn)
        {
LABEL_304:
          EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 0x193Eu);
          v174 = 0;
          v168 = *(v114 + 164);
          goto LABEL_307;
        }

LABEL_303:
        v174 = *(v114 + 160) + 604800 * v167;
        goto LABEL_307;
      }

      if (Constell_Prn == 2)
      {
        v175 = *(v114 + 172);
        v176 = *(v114 + 168);
        if (v175 > 0 || v176 >= 1)
        {
          v177 = v175 + 1461 * *(v114 + 174);
        }

        else
        {
          *&v268[0] = 0;
          API_Get_UTC_Cor(1, v268);
          v277[0] = 0;
          v278[0] = 0;
          v279 = 0.0;
          v168 = *(v114 + 164);
          GPS_To_Glon_Time(0, v168, *(v114 + 160), *v268, v277, v278, &v279);
          v177 = v278[0] + 1461 * v277[0];
          v176 = v279;
        }

        v174 = v176 + 86400 * v177 - 126316800;
        goto LABEL_307;
      }

LABEL_302:
      v167 -= 1024;
      goto LABEL_303;
    }

    if (Constell_Prn > 5u)
    {
      if (Constell_Prn != 6)
      {
        goto LABEL_304;
      }

      goto LABEL_302;
    }

    if (Constell_Prn != 4)
    {
      goto LABEL_303;
    }

    v169 = *(v114 + 160);
    v170 = v169 < 14;
    if (v169 >= 14)
    {
      v171 = -14;
    }

    else
    {
      v171 = 604786;
    }

    v172 = v171 + v169;
    if (v170)
    {
      v173 = -1357;
    }

    else
    {
      v173 = -1356;
    }

    v174 = v172 + 604800 * (v173 + v167);
LABEL_307:
    *(v116 + 16) = v174;
    v275 = 0;
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    memset(v268, 0, sizeof(v268));
    v276[0] = 0;
    *(v276 + 3) = 0;
    if (Comp_CurrState(0x1Eu, v168, v114, v268, *(v114 + 160) + -15.0, 0.0))
    {
      *(v116 + 24) = *(v268 + 8);
      *(v116 + 40) = *(&v268[1] + 1);
    }

    if (Comp_CurrState(0x1Eu, *(v114 + 164), v114, v268, *(v114 + 160) + -5.0, 0.0))
    {
      *(v116 + 48) = *(v268 + 8);
      *(v116 + 64) = *(&v268[1] + 1);
    }

    if (Comp_CurrState(0x1Eu, *(v114 + 164), v114, v268, *(v114 + 160) + 5.0, 0.0))
    {
      *(v116 + 72) = *(v268 + 8);
      *(v116 + 88) = *(&v268[1] + 1);
    }

    if (Comp_CurrState(0x1Eu, *(v114 + 164), v114, v268, *(v114 + 160) + 15.0, 0.0))
    {
      *(v116 + 96) = *(v268 + 8);
      *(v116 + 112) = *(&v268[1] + 1);
    }

    *(v116 + 120) = vmulq_f64(*(v114 + 96), vdupq_n_s64(0x41CDCD6500000000uLL));
    *(v116 + 136) = 0;
LABEL_316:
    if (++v104 != 218)
    {
      continue;
    }

    break;
  }

  v178 = *(v247 + 62);
  *v228 = *(v247 + 62);
  *(v228 + 1) = *(v247 + 212);
  *(v228 + 4) = *(v247 + 210);
  if (*(v247 + 60) == 1)
  {
    *(v228 + 3) = v178 - 1356;
    if (*(v247 + 48) < 14.0)
    {
      *(v228 + 3) = v178 - 1357;
    }

    *(v228 + 4) = v178 - 1024;
    *(v228 + 5) = v178 - 1024;
  }

  v179 = *(v263 + 8972);
  if ((v179 - 3) >= 4)
  {
    v186 = v227;
    if (v179 == 1)
    {
      *(v228 + 16) = v221[2];
    }
  }

  else
  {
    v180 = v221[3];
    v181 = v178 - 127;
    if (v181 <= (v180 | 0x400))
    {
      LOWORD(v181) = v180 | 0x400;
    }

    v182 = ((v181 - v180 - 769) & 0xFF00 | v180) + 1024;
    *(v228 + 6) = v182;
    *(v228 + 7) = *(v221 + 2);
    *(v228 + 16) = v221[2];
    *(v228 + 12) = v182;
    *(v228 + 7) = *v221 << 12;
    v183 = *(v263 + 8976);
    v184.i64[0] = v183;
    v184.i64[1] = SHIDWORD(v183);
    v185 = vmulq_f64(vcvtq_f64_s64(v184), xmmword_299050930);
    v106[3592] = vextq_s8(v185, v185, 8uLL);
    v186 = v227;
  }

  if (*(v225 + 72) == 1)
  {
    *(v228 + 9) = v225[3] * 0.931322575;
    *(v228 + 8) = -v225[1] * 0.465661287;
    *(v228 + 58) = *(v225 + 8);
    *(v228 + 28) = *v225;
  }

  if ((*v226 - 3) <= 3)
  {
    v187 = *(v226 + 24);
    v188 = *(v228 + 4) - 31;
    if (v188 <= v187)
    {
      LOWORD(v188) = *(v226 + 24);
    }

    *(v228 + 40) = ((v188 - v187 + 63) & 0xFFC0) + v187;
    *(v228 + 21) = *(v226 + 20);
    *(v228 + 11) = vmulq_f64(*(v226 + 4), vdupq_n_s64(0x41CDCD6500000000uLL));
  }

  if ((*v186 - 3) <= 3)
  {
    *(v228 + 52) = *(v186 + 4);
    *(v228 + 27) = *(v186 + 8);
    v106[3597] = vmulq_f64(*(v186 + 12), vdupq_n_s64(0x41CDCD6500000000uLL));
  }

  if ((*(v186 + 3080) - 3) <= 3)
  {
    v189 = *(v186 + 3112);
    if (v189 > 0x3FF)
    {
      LOWORD(v189) = v189 - 1024;
    }

    *(v228 + 64) = v189;
    *(v228 + 33) = *(v186 + 3108);
    *(v228 + 17) = vmulq_f64(*(v186 + 3084), vdupq_n_s64(0x41CDCD6500000000uLL));
  }

  if (*(v245 + 16) == 1 && *v245)
  {
    v190 = *(v245 + 48);
    v228[19] = llround((*(v245 + 40) - v190) * 1000000000.0) + 604800000000000 * *(v245 + 32) - 1000000 * *(v245 + 24);
    *(v228 + 20) = round(v190 * -1000000000.0) - v190 * -1000000000.0;
    *(v228 + 21) = *(v247 + 872) * v25;
  }

  v191.f64[0] = *(v245 + 56);
  v191.f64[1] = *(v247 + 920);
  v106[3601] = vmulq_f64(v191, xmmword_299050940);
  *(v228 + 24) = *(v247 + 176) * 299792458.0;
  v228[25] = *(v247 + 880);
  v192 = *(v243 + 2032);
  *(v228 + 26) = v192;
  *(v228 + 54) = 0;
  v193 = *(v243 + 2040);
  v194 = p_api;
  if (v193 >= 1)
  {
    v195 = *(p_api + 48);
    if (*(v195 + 16) == 1 && *v195 >= 3)
    {
      v192 = *(v195 + 40);
      v196 = v192 + 604800 * *(v195 + 32);
      v197 = v196 - v193;
      if (v196 <= 0)
      {
        v197 = -1;
      }
    }

    else
    {
      v197 = -1;
    }

    *(v228 + 54) = v197;
  }

  v198 = *(v194 + 56);
  v199 = v198[2239];
  if (v199)
  {
    LODWORD(v192) = v198[2240];
    v200 = vmovl_u16(*&vmovl_u8(*&v192));
    v201 = vshr_n_s32(vshl_n_s32(*v200.i8, 0x18uLL), 0x18uLL);
    v202.i64[0] = v201.i32[0];
    v202.i64[1] = v201.i32[1];
    v203 = vcvtq_f64_s64(v202);
    *v200.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v200, v200, 8uLL), 0x18uLL), 0x18uLL);
    v202.i64[0] = v200.i32[0];
    v202.i64[1] = v200.i32[1];
    v204.i32[1] = 1041235968;
    v204.i32[0] = v198[2241];
    *f64 = v198[2238];
    *(f64 + 1) = vmulq_f64(v203, xmmword_299050950);
    *(f64 + 3) = vmulq_f64(vcvtq_f64_s64(v202), vdupq_n_s64(0x3E70000000000000uLL));
    v205 = vmovl_u16(*&vmovl_u8(v204));
    *&v203.f64[0] = vshr_n_s32(vshl_n_s32(*v205.i8, 0x18uLL), 0x18uLL);
    v202.i64[0] = SLODWORD(v203.f64[0]);
    v202.i64[1] = SHIDWORD(v203.f64[0]);
    v206 = vcvtq_f64_s64(v202);
    *v205.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v205, v205, 8uLL), 0x18uLL), 0x18uLL);
    v202.i64[0] = v205.i32[0];
    v202.i64[1] = v205.i32[1];
    *(f64 + 5) = vmulq_f64(v206, xmmword_299050960);
    *(f64 + 7) = vmulq_f64(vcvtq_f64_s64(v202), vdupq_n_s64(0x40F0000000000000uLL));
    if (v199 <= 6)
    {
      *(f64 + 18) = dword_299050A58[v199 - 1];
    }
  }

  v207 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t API_Qual_Pos(const char *a1, int a2, unint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v7 = a3;
  v8 = a2;
  v86 = *MEMORY[0x29EDCA608];
  v9 = *(p_api + 80);
  v80 = *(p_api + 176);
  v81 = *(p_api + 72);
  v10 = *(p_api + 136);
  v11 = (v10 + 27116);
  memset(v85, 0, sizeof(v85));
  v12 = v85;
  v83 = v85;
  v84 = &v86;
  v82[1] = v85;
  v13 = 81;
  v14 = 1u;
  do
  {
    v82[0] = v12 + 1;
    *v12 = v13;
    v12 = v82[0];
    if (v82[0] >= v84)
    {
      v12 = v83;
      v82[0] = v83;
    }

    v13 = aQualPos[v14++];
  }

  while (v14 != 11);
  v15 = *a1;
  if (*a1)
  {
    v16 = a1 + 1;
    do
    {
      v82[0] = v12 + 1;
      *v12 = v15;
      v12 = v82[0];
      if (v82[0] >= v84)
      {
        v12 = v83;
        v82[0] = v83;
      }

      v17 = *v16++;
      v15 = v17;
    }

    while (v17);
  }

  v18 = " NM";
  if (a2)
  {
    v18 = " SS";
  }

  v19 = *v18;
  if (*v18)
  {
    v20 = (v18 + 1);
    do
    {
      v82[0] = v12 + 1;
      *v12 = v19;
      v12 = v82[0];
      if (v82[0] >= v84)
      {
        v12 = v83;
        v82[0] = v83;
      }

      v21 = *v20++;
      v19 = v21;
    }

    while (v21);
  }

  v82[0] = v12 + 1;
  *v12 = 32;
  if (v82[0] >= v84)
  {
    v82[0] = v83;
  }

  sprintf_2d(v82, a3);
  v22 = v82[0]++;
  *v22 = 32;
  if (v82[0] >= v84)
  {
    v82[0] = v83;
  }

  sprintf_3d(v82, v6);
  if (a5)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    v24 = a5 - (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  }

  else
  {
    v24 = 0;
  }

  sprintf_sp1d(v82, v24);
  v25 = 0;
  v26 = 32;
  v27 = v82[0];
  do
  {
    v82[0] = v27 + 1;
    *v27 = v26;
    v27 = v82[0];
    if (v82[0] >= v84)
    {
      v27 = v83;
      v82[0] = v83;
    }

    v26 = asc_299063204[++v25];
  }

  while (v25 != 2);
  if (v23)
  {
    if (v24 < v81[417])
    {
      v59 = a5;
      v62 = v81[417];
      v28 = "%s %s  - Deadline up %d  FixInt %d";
LABEL_112:
      v51 = 1;
      DbgLog_v(1, v28, v85, " TRUE ", v59, v62, v63, v64);
      goto LABEL_132;
    }

    if (v7 == -1)
    {
      DbgLog_v(1, "%s %s  - Waiting for full time-out");
      goto LABEL_131;
    }
  }

  v29 = *(v9 + 4);
  if (v8)
  {
    if (v29 <= 3)
    {
      v60 = *(v9 + 4);
      DbgLog_v(1, "%s %s  - SS FixType %d < SV_2D");
      goto LABEL_131;
    }
  }

  else if (v29 <= 0)
  {
    v61 = *(v9 + 4);
    DbgLog_v(1, "%s %s  - NM FixType %d < INT_AID");
    goto LABEL_131;
  }

  v30 = v8 ^ 1u;
  if (v7)
  {
    if (!v6)
    {
      LODWORD(v6) = 5 * v7;
    }
  }

  else
  {
    v31 = &v81[2 * v30];
    if (!v6)
    {
      LODWORD(v6) = v31[212];
    }

    v7 = v31[210];
  }

  v32 = 3 * v7;
  if (v6 < 3 * v7)
  {
    v32 = v6;
  }

  if (v23)
  {
    v6 = v32;
  }

  else
  {
    v6 = v6;
  }

  if (a5)
  {
    v8 = 0;
  }

  if (v8 != 1)
  {
    goto LABEL_67;
  }

  v33 = (v10 + 27116);
  v34 = v80 + 61952;
  if (*(v10 + 27136))
  {
    v35 = *v11;
    if (*v11 >= 4 && *(v80 + 62121) >= 4u && *(v80 + 61968) <= 10.0)
    {
      v36 = *(v9 + 56);
      if (v36 >= 6)
      {
        v37 = 10000;
        if ((v36 - 7) <= 4)
        {
          v37 = dword_299050A70[v36 - 7];
        }

        if (v35 >= 0xD)
        {
          v38 = 10;
        }

        else
        {
          v38 = v35 - 3;
        }

        v39 = v81[417] * v38;
        if (v39 >= 10000)
        {
          v39 = 10000;
        }

        v40 = v39 + v37;
        DbgLog_v(1, "%s %s  - SS Scaling required  %d", v85, " info ", v39 + v37);
        v7 = (v40 * v7) / 0x2710uLL;
        v6 = (v40 * v6) / 0x2710uLL;
LABEL_67:
        v34 = v80 + 61952;
        v33 = (v10 + 27116);
      }
    }
  }

  if (!a5 && v30)
  {
    if (v33[5] && *v33 && *(v34 + 169) >= 4u && *v34 <= 10.0 && *(v34 + 16) <= 20.0 && *(v9 + 56) >= 10)
    {
      v41 = v81[417] * v33[4];
      if (v41 >= 10000)
      {
        v41 = 10000;
      }

      v42 = v41 + 10000;
      DbgLog_v(1, "%s %s  - NM Scaling required  %d", v85, " info ", v41 + 10000);
      v7 = (v42 * v7) / 0x2710uLL;
      v33 = (v10 + 27116);
      v34 = v80 + 61952;
      v6 = (v42 * v6) / 0x2710uLL;
    }

    goto LABEL_85;
  }

  if (!a5)
  {
LABEL_85:
    v43 = *(v9 + 928);
    v45 = *(v9 + 848);
    goto LABEL_86;
  }

  v43 = *(v9 + 928);
  if (v43 > 10.0)
  {
    v43 = v43 * 1.5;
  }

  v44 = *(v9 + 848);
  v45 = v44 * 1.5;
  if (v44 <= 15.0)
  {
    v45 = *(v9 + 848);
  }

LABEL_86:
  v46 = v45;
  v47 = v43;
  if (v7 < v47 || v6 < v46)
  {
    DbgLog_v(1, "%s %s  - Insufficient :  H %d %d  V %d %d");
    goto LABEL_131;
  }

  if (v8)
  {
    if (!*v81 && *(v9 + 56) >= 9 && *(v9 + 32) - *(v10 + 68180) >= 24001 && *v33 <= 0x3C)
    {
      v49 = v7 * 0.3 >= *(v34 + 796) && *(v34 + 16) <= 20.0;
      if (!v49 || (v81[15] & 0xFFFFFFFE) == 6 && (*(v10 + 241) & 1) != 0 || *(v80 + 6772) + 2 >= *(v9 + 385))
      {
        v73 = *(v9 + 385);
        v75 = *(v80 + 6772);
        v69 = *(v10 + 241);
        v71 = *v33;
        v67 = v81[15];
        v65 = *(v34 + 796);
        DbgLog_v(1, "%s %s  - Delay :  H %d %d  V %d %d  :  %d  :  %d  :  %d %d %d  :  %d %d", v85, " FALSE", v47, v7);
        goto LABEL_131;
      }
    }

LABEL_111:
    v63 = v45;
    v64 = v6;
    v59 = v43;
    v62 = v7;
    v28 = "%s %s  - NM or noDL OK :  H %d %d  V %d %d";
    goto LABEL_112;
  }

  if (!a5 || v30)
  {
    goto LABEL_111;
  }

  v50 = *v33;
  if (*v33 < 0x11)
  {
    v52 = *(v80 + 6772);
    v54 = v52 > 2 || (v53 = *(v80 + 21676), v53 > 2) || *(v80 + 6772) && *(v9 + 385) <= v52 + 10 || *(v80 + 21676) && v53 + 10 >= *(v9 + 387);
    if (v50 >= 3 && !((v54 | *(v10 + 241)) & 1 | (*(v9 + 32) - *(v10 + 68180) < 7001)))
    {
      LODWORD(v43) = *(v34 + 800);
      v55 = *&v43;
      if (v7 * 0.3 >= *&v43)
      {
        LODWORD(v55) = *(v34 + 804);
        if (v6 * 0.3 >= *&v55 && *(v34 + 792) <= 0xAu)
        {
          v56 = *(v9 + 56);
          if (v56 >= 8 && (v7 > 0x31 || v56 != 8) && *(v80 + 1881) > 0x1Bu)
          {
            v63 = v46;
            v64 = v6;
            v59 = v47;
            v62 = v7;
            v28 = "%s %s  - OK :  H %d %d  V %d %d";
            goto LABEL_112;
          }
        }
      }
    }

    v78 = *(v9 + 56);
    v79 = *(v80 + 1881);
    v76 = *(v34 + 804);
    v77 = *(v34 + 792);
    v72 = *(v80 + 21676);
    v74 = *(v34 + 800);
    v68 = (*(v9 + 32) - *(v10 + 68180));
    v70 = *(v80 + 6772);
    v66 = *(v10 + 241);
    DbgLog_v(1, "%s %s  - Wait :  H %d %d  V %d %d  :  %d %d %d  :  %d %d  :  %d %d %d :  %d %d", v85, " FALSE", v47, v7, v46);
LABEL_131:
    v51 = 0;
    goto LABEL_132;
  }

  v51 = 1;
  DbgLog_v(1, "%s %s  - Already waited :  H %d %d  V %d %d  :  FixTime %d > 16", v85);
LABEL_132:
  v57 = *MEMORY[0x29EDCA608];
  return v51;
}

uint64_t API_Set_GPS_CBinEph(char *a1, uint64_t a2, unsigned int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed(a1);
  if (result)
  {
    v8 = a2 - 1;
    if ((a2 - 1) >= 0x20u)
    {
      v8 = a2 + 63;
      if ((a2 + 63) >= 0xAu)
      {
        EvCrt_v("%s FAILED:  SV = %d, Out of range !");
        goto LABEL_15;
      }
    }

    if (*(a3 + 71) >= 2u)
    {
      EvCrt_v("%s FAILED: L5_Health = %d >1, Out of range!");
LABEL_15:
      result = 0;
      goto LABEL_16;
    }

    if (*(a3 + 72) >= 2u)
    {
      EvCrt_v("%s FAILED: Integrity = %d >1, Out of range!");
      goto LABEL_15;
    }

    if (((*(a3 + 37) - 4096) >> 13) <= 6u)
    {
      EvCrt_v("%s FAILED: ISC_L1_CA = %d <-2^12 or >=2^12, Out of range!");
      goto LABEL_15;
    }

    if (((*(a3 + 38) - 4096) >> 13) <= 6u)
    {
      EvCrt_v("%s FAILED: ISC_L5_Q5 = %d <-2^12 or >=2^12, Out of range!");
      goto LABEL_15;
    }

    if ((*(a3 + 78) - 16) <= 0xDFu)
    {
      EvCrt_v("%s FAILED: URA = %d <-16 or >15, Out of range!");
      goto LABEL_15;
    }

    v10 = *(p_api + 256);
    EvLog_nd(a1, 2, v7, a2, *a3);
    v11 = v10 + 80 * v8;
    if ((a2 - 1) <= 0x1Fu)
    {
      v16 = (v11 + 700);
      *v16 = *a3;
      v17 = *(a3 + 1);
      v18 = *(a3 + 2);
      v19 = *(a3 + 4);
      v16[3] = *(a3 + 3);
      v16[4] = v19;
      v16[1] = v17;
      v16[2] = v18;
      result = 1;
      *(v10 + v8 + 12) = 1;
    }

    else
    {
      v12 = (v11 + 4412);
      *v12 = *a3;
      v13 = *(a3 + 1);
      v14 = *(a3 + 2);
      v15 = *(a3 + 4);
      v12[3] = *(a3 + 3);
      v12[4] = v15;
      v12[1] = v13;
      v12[2] = v14;
      result = 1;
      *(v10 + v8 + 76) = 1;
    }
  }

LABEL_16:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_Ref_Time(int a1, double i, __int16 a3, double a4)
{
  LOWORD(v4) = a3;
  v50 = *MEMORY[0x29EDCA608];
  v5 = *p_api;
  if (*p_api <= 0xBu && ((1 << v5) & 0xD2C) != 0)
  {
    v10 = *(p_api + 48);
    v11 = *(v10 + 28);
    v12 = v11 - a1;
    if (v11 - a1 >= 0)
    {
      v13 = v11 - a1;
    }

    else
    {
      v13 = a1 - v11;
    }

    if (v13 >= 0xDBBA1)
    {
      EvCrt_v("API_Set_Ref_Time:  WARNING  Large Time latency (%u - %u) = %d", a1, *(v10 + 28), v11 - a1);
    }

    if (v11 != a1)
    {
      for (i = v12 * 0.001 + i; i >= 604800.0; LOWORD(v4) = v4 + 1)
      {
        i = i + -604800.0;
      }

      while (i < 0.0)
      {
        i = i + 604800.0;
        LOWORD(v4) = v4 - 1;
      }

      a4 = a4 + v12 * 0.00000001;
    }

    v14 = 0;
    v15 = &qword_299050A08;
    while (v14 != 7)
    {
      v16 = *v15--;
      ++v14;
      if (a4 <= v16)
      {
        v17 = 8 - v14;
        goto LABEL_22;
      }
    }

    v17 = 0;
LABEL_22:
    v18 = *v10;
    if (*(v10 + 16) != 1 || v18 < 1)
    {
      v20 = 0.0;
      if (v18)
      {
LABEL_31:
        if (*(v10 + 16))
        {
          v4 = v4;
LABEL_52:
          EvLog_v("API_Set_Ref_Time:  Not Used.  %u  %d  %g  Sigma  %g  %d  dT  %g", a1, v4, i, a4, v18, v20);
          goto LABEL_53;
        }

        *(v10 + 16) = 1;
        *(v10 + 32) = v4;
        EvLog_v("API_Set_Ref_Time:  Applied.  GPS Wk %d  ", v4);
        v48 = 0.0;
        *v49 = 0;
        API_Get_UTC_Cor(1, &v48);
        v23 = v48;
        GPS_To_Glon_Time(0, *(v10 + 32), *(v10 + 40), v48, v49, &v49[4], (v10 + 88));
        v24 = *v49;
        *(v10 + 84) = *&v49[4];
        *(v10 + 82) = v24;
        *(v10 + 80) = 1;
        *(v10 + 76) = *v10;
        v25 = -0.5;
        if (v23 > 0.0)
        {
          v25 = 0.5;
        }

        v26 = v23 + v25;
        if (v26 <= 2147483650.0)
        {
          if (v26 >= -2147483650.0)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0x80000000;
          }
        }

        else
        {
          v27 = 0x7FFFFFFFLL;
        }

        GLON_Clear_SV_Ref_State_On_LeapSec_Jump(v27, v10, *(p_api + 88));
        *(v10 + 96) = v27;
        EvLog_v("API_Set_Ref_Time:  Glo Time  %d  %d  %d  %g  %d", *(v10 + 82), *(v10 + 84), *(v10 + 80), *(v10 + 88), *(v10 + 76));
        goto LABEL_81;
      }

      v21 = p_api;
    }

    else
    {
      v22 = *(v10 + 40);
      v20 = v22 - i + (604800 * (*(v10 + 32) - v4));
      if (v17 <= v18 && v20 * v20 <= a4 * (a4 * 25.0))
      {
        goto LABEL_31;
      }

      EvLog_v("API_Set_Ref_Time: dT %g,  Sigma %g, (%g-%g), (%d-%d)", v20, a4, v22, i, *(v10 + 32), v4);
      *v10 = 0;
      *(v10 + 76) = 0;
      v21 = p_api;
      *(*(p_api + 128) + 12) = 0;
      v28 = *(v21 + 136);
      *(v28 + 136) = 1;
      *(v28 + 140) = 5;
      v29 = *(v21 + 72);
      *(v29 + 248) = 0;
      *(v29 + 256) = 0;
    }

    if (*v21 == 8 || *v21 == 5)
    {
      *v21 = 2;
    }

    EvLog_v("API_Set_Ref_Time:  Applied.  %u  %d  %g  Sigma  %g  %d  dT  %g", a1, v4, i, a4, v17, v20);
    if (!v17)
    {
      v4 = v4;
      EvCrt_v("API_Set_Ref_Time:  WARNING: Input Ref_Sigma too big !");
      v18 = *v10;
      goto LABEL_52;
    }

    *(v10 + 32) = v4;
    *(v10 + 40) = i;
    *(v10 + 16) = 1;
    *v10 = v17;
    *(v10 + 48) = 0;
    *(v10 + 100) = a1;
    if (v17 - 4 <= 4)
    {
      v31 = -0.5;
      if (i * 1000.0 > 0.0)
      {
        v31 = 0.5;
      }

      v32 = i * 1000.0 + v31;
      if (v32 <= 2147483650.0)
      {
        if (v32 >= -2147483650.0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0x80000000;
        }
      }

      else
      {
        v33 = 0x7FFFFFFF;
      }

      v35 = *(v10 + 24);
      v36 = *(v10 + 28);
      v37 = v33 - v35;
      LODWORD(v48) = 0;
      v49[4] = 0;
      if (Core_Load_TTick_Cal(v35, v36, v33 - v35, &v48, &v49[4]))
      {
        v38 = v49[4];
        v39 = v49[4] >= 0x5Au ? 6 : 7;
        v40 = v49[4] >= 0x1Eu ? v39 : 8;
        if (v40 >= v17)
        {
          v41 = LODWORD(v48);
          Inc_GPS_TOW(SLODWORD(v48) * 0.001, (v10 + 40), (v10 + 32));
          *v10 = v40;
          EvLog_v("API_Set_Ref_Time:  Calib.  %d  %g  %d  %d", v41, *(v10 + 40), v37, v38);
        }
      }
    }

    v48 = 0.0;
    *v49 = 0;
    API_Get_UTC_Cor(1, &v48);
    v42 = v48;
    GPS_To_Glon_Time(0, *(v10 + 32), *(v10 + 40), v48, v49, &v49[4], (v10 + 88));
    v43 = *v49;
    *(v10 + 84) = *&v49[4];
    *(v10 + 82) = v43;
    *(v10 + 80) = 1;
    *(v10 + 76) = *v10;
    v44 = -0.5;
    if (v42 > 0.0)
    {
      v44 = 0.5;
    }

    v45 = v42 + v44;
    if (v45 <= 2147483650.0)
    {
      if (v45 >= -2147483650.0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0x80000000;
      }
    }

    else
    {
      v46 = 0x7FFFFFFFLL;
    }

    GLON_Clear_SV_Ref_State_On_LeapSec_Jump(v46, v10, *(p_api + 88));
    *(v10 + 96) = v46;
    EvLog_v("API_Set_Ref_Time:  Glo Time  %d  %d  %d  %g  %d", *(v10 + 82), *(v10 + 84), *(v10 + 80), *(v10 + 88), *(v10 + 76));
    if (!*(v10 + 108))
    {
      *(v10 + 128) = *(v10 + 24);
      *(v10 + 108) = *v10;
      *(v10 + 120) = *(v10 + 40);
      if (!*(v10 + 112) && *(v10 + 16) == 1)
      {
        *(v10 + 112) = *(v10 + 32);
      }
    }

LABEL_81:
    result = 1;
    goto LABEL_82;
  }

  EvCrt_d("API_Set_Ref_Time:  REJECTED.  Incompatible GPS Exe State ", v5);
LABEL_53:
  result = 0;
LABEL_82:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

char *GLON_Clear_SV_Ref_State_On_LeapSec_Jump(char *result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 96);
  if (v3 >= 1 && v3 != result)
  {
    v5 = a3 + 6144;
    v6 = 24;
    do
    {
      if ((*(v5 + 176) - 1) <= 1)
      {
        *(v5 + 175) = 0uLL;
        *(v5 + 144) = 0uLL;
        *(v5 + 160) = 0uLL;
        *(v5 + 112) = 0uLL;
        *(v5 + 128) = 0uLL;
        *(v5 + 80) = 0uLL;
        *(v5 + 96) = 0uLL;
        *(v5 + 48) = 0uLL;
        *(v5 + 64) = 0uLL;
        *(v5 + 16) = 0uLL;
        *(v5 + 32) = 0uLL;
        *v5 = 0uLL;
      }

      v5 += 192;
      --v6;
    }

    while (v6);
    result = EvLog_v("GLON_Clear_SV_Ref_State_On_LeapSec_Jump: Leap Sec jump [prev_LS: %d curr_LS: %d], Clearing Prev Computed GLON Orbit Ref States", *(a2 + 96), result);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

char *EvLog_GPS_IntEph(const char *a1, int a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  result = EvLog_v("%s  %2d %d %3d %2d %d %3d %d %3d %3d %4d %5d %5d %4d %5d %5d %5d %5d %5d %5d %5d %5d %5d %8d %11d %10u %10u %11d %11d %11d %8d %2d %2d %5d %5d", a1, a2, *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 12), *(a3 + 13), *(a3 + 14), *(a3 + 15), *(a3 + 16), *(a3 + 18), *(a3 + 20), *(a3 + 22), *(a3 + 24), *(a3 + 26), *(a3 + 28), *(a3 + 30), *(a3 + 32), *(a3 + 34), *(a3 + 36), *(a3 + 38), *(a3 + 40), *(a3 + 44), *(a3 + 48), *(a3 + 52), *(a3 + 56), *(a3 + 60), *(a3 + 64), *(a3 + 68), *(a3 + 72), *(a3 + 76), *(a3 + 77), *(a3 + 78), *(a3 + 80));
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Is_GPS_IntEph_Valid(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((a2 - 203) >= 0xFFFFFFF6)
  {
    v3 = 5;
  }

  else
  {
    v3 = (a2 - 1) < 0x20;
  }

  if (v3)
  {
    if (*(a3 + 8) < 4u)
    {
      if ((*(a3 + 9) - 16) > 0xDFu)
      {
        if (*(a3 + 10) < 0x40u)
        {
          if (*(a3 + 11) < 2u)
          {
            if (*(a3 + 12) < 0x20u)
            {
              if (*(a3 + 13) < 2)
              {
                if (*(a3 + 16) < 0xBDCu)
                {
                  if (*(a3 + 22) < 0x400u)
                  {
                    if (((*(a3 + 28) - 0x2000) >> 14) > 2u)
                    {
                      if ((*(a3 + 44) - 0x200000) >> 22 == 1023)
                      {
                        v4 = *(a3 + 72);
                        if ((v4 - 0x800000) >> 24 == 255)
                        {
                          v5 = 0.0;
                          if ((a2 - 203) >= 0xFFFFFFF6)
                          {
                            v5 = 0.000000314159265;
                          }

                          v6 = v4 * 3.57157734e-13;
                          if (v6 >= -0.00000198862815)
                          {
                            if (v6 <= v5)
                            {
                              if (*(a3 + 20) < 0x93A8u)
                              {
                                if (*(a3 + 18) < 0x93A8u)
                                {
                                  if (v3 == 5)
                                  {
                                    v7 = 0.1;
                                  }

                                  else
                                  {
                                    v7 = 0.03;
                                  }

                                  LODWORD(v5) = *(a3 + 52);
                                  if (*&v5 * 1.16415322e-10 <= v7)
                                  {
                                    if (v3 == 5)
                                    {
                                      v8 = 7000.0;
                                    }

                                    else
                                    {
                                      v8 = 5800.0;
                                    }

                                    v9 = vcvtd_n_f64_u32(*(a3 + 56), 0x13uLL);
                                    if (v9 >= 4800.0)
                                    {
                                      if (v9 <= v8)
                                      {
                                        if (*(a3 + 76) < 2u)
                                        {
                                          if (*(a3 + 77) < 2u)
                                          {
                                            if (((*(a3 + 78) - 4096) >> 13) > 6u)
                                            {
                                              if (((*(a3 + 80) - 4096) >> 13) > 6u)
                                              {
                                                result = 1;
                                                goto LABEL_59;
                                              }

                                              EvCrt_v("%s FAILED: ISC_L5_Q5 = %d <-2^12 or >=2^12, Out of range!");
                                            }

                                            else
                                            {
                                              EvCrt_v("%s FAILED: ISC_L1_CA = %d <-2^12 or >=2^12, Out of range!");
                                            }
                                          }

                                          else
                                          {
                                            EvCrt_v("%s FAILED: Integrity = %d >1, Out of range!");
                                          }
                                        }

                                        else
                                        {
                                          EvCrt_v("%s FAILED: L5_Health = %d >1, Out of range!");
                                        }
                                      }

                                      else
                                      {
                                        EvCrt_v("%s FAILED: APowerHalf = %g > %g, Unrealistic value!");
                                      }
                                    }

                                    else
                                    {
                                      EvCrt_v("%s FAILED: APowerHalf = %g < %g, Unrealistic value!");
                                    }
                                  }

                                  else
                                  {
                                    EvCrt_v("%s FAILED: e = %g > %g, Unrealistic value!");
                                  }
                                }

                                else
                                {
                                  EvCrt_v("%s FAILED: toc = %d >37800, Out of range!");
                                }
                              }

                              else
                              {
                                EvCrt_v("%s FAILED: toe = %d >=37800, Out of range!");
                              }
                            }

                            else
                            {
                              EvCrt_v("%s FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
                            }
                          }

                          else
                          {
                            EvCrt_v("%s FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
                          }
                        }

                        else
                        {
                          EvCrt_v("%s FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
                        }
                      }

                      else
                      {
                        EvCrt_v("%s FAILED: af0 = %d <-2^21 or >=2^21, Out of range!");
                      }
                    }

                    else
                    {
                      EvCrt_v("%s FAILED: IDot = %d <-2^13 or >=2^13, Out of range!");
                    }
                  }

                  else
                  {
                    EvCrt_v("%s FAILED: IODC = %d >1023, Out of range!");
                  }
                }

                else
                {
                  EvCrt_v("%s FAILED: Week = %d >=3036, Out of range!");
                }
              }

              else
              {
                EvCrt_v("%s FAILED: L2Pflag = %d <0 or >1, Out of range!");
              }
            }

            else
            {
              EvCrt_v("%s FAILED: AODA = %d >31, Out of range!");
            }
          }

          else
          {
            EvCrt_v("%s FAILED: FitIntFlag = %d >1, Out of range!");
          }
        }

        else
        {
          EvCrt_v("%s FAILED: SVHealth = %d >63, Out of range!");
        }
      }

      else
      {
        EvCrt_v("%s FAILED: URA = %d <-16 or >15, Out of range!");
      }
    }

    else
    {
      EvCrt_v("%s FAILED: CodeOnL2 = %d >3, Out of range!");
    }
  }

  else
  {
    EvCrt_v("%s FAILED: Sat_ID = %d, Out of range!");
  }

  result = 0;
LABEL_59:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

char *EvLog_ABDS_CNAV_Eph_El(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v3 = a1[131];
  v4 = a1[132];
  result = EvLog_v("GN_ABDS_Set_CNAV_Eph_El: %2u %2u %1u %1u %6u  %4u %4u %4u %4u  %9d %8d  %6d %8d  %11D %11U %11D %11D %11D  %7d %6d  %6d %6d %8d %8d %8d %8d   %9d %8d %5d %5u  %2u %1u %1u %2u  %5d %5d %5d %5d  %1u %1u %1u %1u %1u %1u  %1d  %4d  %1u", *a1, v5, a1[2], a1[3], *(a1 + 1), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 18), *(a1 + 38), *(a1 + 39), *(a1 + 40), *(a1 + 21), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 26), *(a1 + 54), *(a1 + 55), a1[112], a1[113], a1[114], a1[115], *(a1 + 58), *(a1 + 59), *(a1 + 60), *(a1 + 61), a1[124], a1[125], a1[126], a1[127], a1[128], a1[129], a1[130], v3, v4);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

char *EvLog_ANVIC_Eph_El(unsigned __int8 *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = EvLog_v("GN_ANVIC_Set_Eph_El: %2u %1u %1u %1u %3u %3d  %4u %5d %5d %8d %6d %4d  %1d  %6d  %5d %10u %10u %11d %11d %11d %11d %6d %8d  %6d %6d %6d %6d %6d %6d  %1u", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 3), *(a1 + 8), a1[18], a1[19], *(a1 + 10), *(a1 + 11), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12), *(a1 + 13), *(a1 + 28), *(a1 + 29), *(a1 + 30), *(a1 + 31), *(a1 + 32), *(a1 + 33), a1[68]);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Get_Default_PR_ms_Amb(int a1)
{
  if (a1 == 7)
  {
    v1 = 129;
  }

  else
  {
    v1 = 77;
  }

  if (a1 == 6)
  {
    v2 = 120;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 5)
  {
    v3 = 129;
  }

  else
  {
    v3 = v2;
  }

  if (BYTE2(a1) - 59 >= 0xFFFFFFCB)
  {
    v4 = 81;
  }

  else
  {
    v4 = 119;
  }

  if (a1 == 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 77;
  }

  if (a1 == 3)
  {
    v5 = 87;
  }

  if (a1 == 2)
  {
    v5 = 73;
  }

  if (a1 <= 4u)
  {
    result = v5;
  }

  else
  {
    result = v3;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Complete_NVIC_WeekNo(unsigned int a1)
{
  if (a1 > 0x3FF)
  {
    v5 = a1;
  }

  else
  {
    v1 = *(p_api + 48);
    if (*(v1 + 16) == 1 && *v1 >= 3 && (v2 = *(v1 + 40) + 604800 * *(v1 + 32), v2 > 1238630399))
    {
      v3 = v2 / 0x93A80u - 1024;
    }

    else
    {
      v3 = *(*(p_api + 72) + 1734) - 512;
    }

    v4 = v3 - 512;
    do
    {
      v5 = a1;
      a1 += 1024;
    }

    while (v4 > v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t API_Set_SH_Iono_Model(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 112);
  *(v2 + 8) = 0;
  *(v2 + 3184) = 0;
  *(v2 + 6360) = 0;
  if (*(a1 + 6))
  {
    v3 = 0;
    v4 = a1;
    while (1)
    {
      v5 = v2 + 8 + 3176 * *(v4 + 8);
      v6 = v5 - 3176;
      *v6 = *(v4 + 8);
      *(v6 + 2) = *(v4 + 10);
      v7 = *(v4 + 16);
      *(v6 + 8) = v7;
      *(v6 + 1104) = *(v4 + 18);
      *(v6 + 2072) = *(v4 + 2072);
      memcpy((v5 - 3160), (v4 + 24), 8 * v7);
      v8 = *(v4 + 18);
      if (*(v6 + 1104) < v8)
      {
        __assert_rtn("API_Set_SH_Iono_Model", "GNSS_Core_api.cpp", 9589, "(SHio->Layers[ Layer_Index ].Sin_Num * sizeof(R8)) >= (p_SH_Iono_Model->Layer[ i ].Sin_Num * sizeof(R8))");
      }

      memcpy((v6 + 1112), (v4 + 1112), 8 * v8);
      v9 = *(v4 + 12);
      if (*(v6 + 4) == v9)
      {
        v10 = *(v4 + 14);
        if (*(v6 + 6) == v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = *(v4 + 14);
      }

      *(v6 + 4) = v9;
      *(v6 + 6) = v10;
      Compute_Legendre_Normalisations(v9, v10, (v6 + 2088), (v6 + 2080));
LABEL_9:
      ++v3;
      v4 += 2072;
      if (v3 >= *(a1 + 6))
      {
        goto LABEL_12;
      }
    }
  }

  LOWORD(v3) = 0;
LABEL_12:
  *(v2 + 4) = *(a1 + 4);
  *v2 = *a1;
  *(v2 + 6) = v3;
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL Is_BDS_IntEph_Real(uint64_t a1)
{
  result = *(a1 + 36) || *(a1 + 88) || *(a1 + 92) || *(a1 + 40) || *(a1 + 44) || *(a1 + 112) || *(a1 + 108) || *(a1 + 104) || *(a1 + 100) || *(a1 + 96) || *(a1 + 94) || *(a1 + 124) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_HL_System_Start_Up(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v155 = *MEMORY[0x29EDCA608];
  v5 = *(v1[7] + 62170);
  if (!v2)
  {
    GNSS_HL_Data_Bases_Init_NV(v1);
    GNSS_HL_Data_Bases_TimeSynch(v4, v72, v73);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = v1[9];
  v7 = *(v1[15] + 440);
  v8 = *(v6 + 13);
  v9 = *(v6 + 1734);
  v10 = *(v6 + 264);
  v11 = *(v6 + 232);
  v12 = *(v6 + 240);
  v104 = *(v6 + 104);
  v105 = *(v6 + 72);
  v100 = *(v6 + 120);
  v101 = *(v6 + 88);
  v102 = *(v6 + 168);
  v103 = *(v6 + 136);
  v98 = *(v6 + 184);
  v99 = *(v6 + 152);
  v96 = *(v6 + 216);
  v97 = *(v6 + 200);
  v150 = xmmword_2A143B0A0;
  v151 = unk_2A143B0B0;
  v152 = xmmword_2A143B0C0;
  v153 = unk_2A143B0D0;
  v146 = xmmword_2A143B060;
  v147 = *algn_2A143B070;
  v148 = xmmword_2A143B080;
  v149 = unk_2A143B090;
  v13 = *(v6 + 441);
  __src[10] = *(v6 + 425);
  __src[11] = v13;
  __src[12] = *(v6 + 457);
  *(&__src[12] + 10) = *(v6 + 467);
  v14 = *(v6 + 377);
  __src[6] = *(v6 + 361);
  __src[7] = v14;
  v15 = *(v6 + 409);
  __src[8] = *(v6 + 393);
  __src[9] = v15;
  v16 = *(v6 + 313);
  __src[2] = *(v6 + 297);
  __src[3] = v16;
  v17 = *(v6 + 345);
  __src[4] = *(v6 + 329);
  __src[5] = v17;
  v18 = *(v6 + 281);
  __src[0] = *(v6 + 265);
  __src[1] = v18;
  v19 = *(v6 + 720);
  v143 = *(v6 + 704);
  v144 = v19;
  v145[0] = *(v6 + 736);
  *(v145 + 10) = *(v6 + 746);
  v20 = *(v6 + 656);
  v139 = *(v6 + 640);
  v140 = v20;
  v21 = *(v6 + 688);
  v141 = *(v6 + 672);
  v142 = v21;
  v22 = *(v6 + 592);
  v135 = *(v6 + 576);
  v136 = v22;
  v23 = *(v6 + 624);
  v137 = *(v6 + 608);
  v138 = v23;
  v24 = *(v6 + 560);
  v133 = *(v6 + 544);
  v134 = v24;
  v25 = *(v6 + 1000);
  v130 = *(v6 + 984);
  v131 = v25;
  v132[0] = *(v6 + 1016);
  *(v132 + 10) = *(v6 + 1026);
  v26 = *(v6 + 936);
  v126 = *(v6 + 920);
  v127 = v26;
  v27 = *(v6 + 968);
  v128 = *(v6 + 952);
  v129 = v27;
  v28 = *(v6 + 872);
  v122 = *(v6 + 856);
  v123 = v28;
  v29 = *(v6 + 904);
  v124 = *(v6 + 888);
  v125 = v29;
  v30 = *(v6 + 840);
  v120 = *(v6 + 824);
  v121 = v30;
  v31 = *(v6 + 1280);
  v117 = *(v6 + 1264);
  v118 = v31;
  v119[0] = *(v6 + 1296);
  *(v119 + 10) = *(v6 + 1306);
  v32 = *(v6 + 1216);
  v113 = *(v6 + 1200);
  v114 = v32;
  v33 = *(v6 + 1248);
  v115 = *(v6 + 1232);
  v116 = v33;
  v34 = *(v6 + 1152);
  v109 = *(v6 + 1136);
  v110 = v34;
  v35 = *(v6 + 1184);
  v111 = *(v6 + 1168);
  v112 = v35;
  v36 = *(v6 + 1120);
  v107 = *(v6 + 1104);
  v108 = v36;
  v37 = *(qword_2A1454208 + 16);
  v154[0] = *qword_2A1454208;
  v154[1] = v37;
  v38 = *(qword_2A1454208 + 80);
  v40 = *(qword_2A1454208 + 32);
  v39 = *(qword_2A1454208 + 48);
  v154[4] = *(qword_2A1454208 + 64);
  v154[5] = v38;
  v154[2] = v40;
  v154[3] = v39;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v154);
  GNSS_HL_Data_Bases_Clear(v4);
  GNSS_HL_Data_Bases_Init(v4);
  GNSS_HL_Data_Bases_Init_NV(v4);
  v41 = *(v4 + 72);
  *(v41 + 1772) = v7;
  *(v41 + 13) = v8;
  *(v41 + 1734) = v9;
  *(v41 + 264) = v10;
  *(v6 + 216) = v96;
  *(v6 + 200) = v97;
  *(v6 + 232) = v11;
  *(v6 + 240) = v12;
  *(v6 + 88) = v101;
  *(v6 + 72) = v105;
  *(v6 + 120) = v100;
  *(v6 + 104) = v104;
  *(v6 + 152) = v99;
  *(v6 + 136) = v103;
  *(v6 + 184) = v98;
  *(v6 + 168) = v102;
  xmmword_2A143B0C0 = v152;
  unk_2A143B0D0 = v153;
  xmmword_2A143B080 = v148;
  unk_2A143B090 = v149;
  xmmword_2A143B0A0 = v150;
  unk_2A143B0B0 = v151;
  xmmword_2A143B060 = v146;
  *algn_2A143B070 = v147;
  v42 = (*(v4 + 72) + 265);
  v43 = __src[1];
  *v42 = __src[0];
  v42[1] = v43;
  v44 = __src[5];
  v42[4] = __src[4];
  v42[5] = v44;
  v45 = __src[3];
  v42[2] = __src[2];
  v42[3] = v45;
  v46 = __src[9];
  v42[8] = __src[8];
  v42[9] = v46;
  v47 = __src[7];
  v42[6] = __src[6];
  v42[7] = v47;
  *(v42 + 202) = *(&__src[12] + 10);
  v48 = __src[12];
  v42[11] = __src[11];
  v42[12] = v48;
  v42[10] = __src[10];
  v49 = *(v4 + 72);
  v50 = v134;
  v49[34] = v133;
  v49[35] = v50;
  v51 = v138;
  v49[38] = v137;
  v49[39] = v51;
  v52 = v136;
  v49[36] = v135;
  v49[37] = v52;
  v53 = v142;
  v49[42] = v141;
  v49[43] = v53;
  v54 = v140;
  v49[40] = v139;
  v49[41] = v54;
  v55 = v145[0];
  v56 = v143;
  v49[45] = v144;
  v49[46] = v55;
  v49[44] = v56;
  *(v49 + 746) = *(v145 + 10);
  v57 = (*(v4 + 72) + 824);
  v58 = v121;
  *v57 = v120;
  v57[1] = v58;
  v59 = v125;
  v57[4] = v124;
  v57[5] = v59;
  v60 = v123;
  v57[2] = v122;
  v57[3] = v60;
  v61 = v129;
  v57[8] = v128;
  v57[9] = v61;
  v62 = v127;
  v57[6] = v126;
  v57[7] = v62;
  *(v57 + 202) = *(v132 + 10);
  v63 = v132[0];
  v64 = v130;
  v57[11] = v131;
  v57[12] = v63;
  v57[10] = v64;
  v65 = *(v4 + 72);
  v66 = v107;
  v65[70] = v108;
  v65[69] = v66;
  v67 = v111;
  v65[74] = v112;
  v65[73] = v67;
  v68 = v109;
  v65[72] = v110;
  v65[71] = v68;
  v69 = v115;
  v65[78] = v116;
  v65[77] = v69;
  v70 = v113;
  v65[76] = v114;
  v65[75] = v70;
  v65[81] = v119[0];
  v71 = v117;
  v65[80] = v118;
  v65[79] = v71;
  *(v65 + 1306) = *(v119 + 10);
  GN_GPS_Set_Config(v154);
  if (v5)
  {
LABEL_5:
    *(*(v4 + 56) + 62170) = 1;
  }

LABEL_6:
  v74 = *(v4 + 8);
  v75 = *(v4 + 16);
  v76 = *v74;
  *v75 = *v74;
  *(v75 + 4) = v74[4];
  *(v75 + 8) = *(v74 + 3);
  v78 = *(v4 + 72);
  v77 = *(v4 + 80);
  v79 = *(v78 + 1676);
  v80 = v79 + v76;
  if (!v79)
  {
    v80 = 0;
  }

  *(v78 + 1728) = v80;
  v81 = *(v78 + 240);
  if (*(v78 + 240))
  {
    *(v78 + 1712) = 0;
    *(v78 + 1720) = v81 * 0.000000001;
    *(v77 + 920) = 0x4163125300000000;
    *(v77 + 184) = 0;
    *(p_NA + 6) = 0;
  }

  SV_Data_Decode_Init(*(v4 + 144));
  SV_Data_Decode_Update_Wrapper(v4);
  GPS_State_Update_Init(*(v4 + 152), *(v4 + 192), *(v4 + 48), *(v4 + 56), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  GLON_State_Update_Init(*(v4 + 152), *(v4 + 48), *(v4 + 56), *(v4 + 88));
  bzero(*(v4 + 128), 0xC70uLL);
  SV_Gen_Meas_Update_Wrapper(v4);
  v83 = *(v4 + 72);
  v82 = *(v4 + 80);
  Nav_Kalman_Update_Init(*(v4 + 136));
  Nav_Kalman_Update_Wrapper(v4);
  if (v3)
  {
    v84 = *(v4 + 104);
    *(v84 + 248) = *(v84 + 240);
    *(v84 + 308) = 0;
    v85 = *(v4 + 104);
    *(v85 + 320) = *(v85 + 312);
    *(v85 + 380) = 0;
    v86 = *(v4 + 104);
    *(v86 + 392) = *(v86 + 384);
    *(v86 + 452) = 0;
  }

  v87 = *(v4 + 160);
  *(v87 + 48) = 0;
  *(v87 + 16) = 0u;
  *(v87 + 32) = 0u;
  *v87 = 0u;
  *(v87 + 2) = -1;
  *v87 = 1;
  Pre_Positioning_Update_Wrapper(v4);
  bzero(__src, 0x6E60uLL);
  v88 = -7168;
  do
  {
    v89 = __src + v88;
    *(v89 + 967) = 0;
    *(v89 + 7748) = 0;
    *(v89 + 3872) = 0;
    *(v89 + 973) = 0;
    *(v89 + 485) = 0uLL;
    *(&__src[485] + v88 + 14) = 0;
    v88 += 56;
  }

  while (v88);
  v90 = &__src[485] + 8;
  v91 = 4608;
  do
  {
    *(v90 - 2) = 0;
    *(v90 - 3) = 0;
    *(v90 - 2) = 0;
    *(v90 - 4) = 0;
    *(v90 - 11) = 0;
    v90 += 36;
    v91 -= 36;
  }

  while (v91);
  v92 = -15872;
  do
  {
    v93 = (&__src[1763] + v92 + 8);
    *(v93 + 105) = 0uLL;
    v93[5] = 0uLL;
    v93[6] = 0uLL;
    v93[3] = 0uLL;
    v93[4] = 0uLL;
    v93[1] = 0uLL;
    v93[2] = 0uLL;
    *v93 = 0uLL;
    v92 += 124;
  }

  while (v92);
  *&__src[1765] = 0;
  DWORD2(__src[1765]) = 0;
  *(&__src[1763] + 8) = 0u;
  *(&__src[1764] + 6) = 0;
  result = memcpy(*(v4 + 120), __src, 0x6E5CuLL);
  *(*(v4 + 120) + 384) = *(v4 + 120);
  *v4 = 11;
  v95 = *MEMORY[0x29EDCA608];
  return result;
}

const void **GNSS_HL_System_Re_Start(uint64_t a1)
{
  v66[12] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(v6 + 1780) = 0;
  *(v6 + 1784) = 0;
  *v3 = *v2;
  *(v3 + 4) = *(v2 + 16);
  *(v3 + 8) = *(v2 + 24);
  v8 = -4608;
  do
  {
    v9 = v3 + v8 + 11816;
    *(v9 + 32) = 0;
    *v9 = 0uLL;
    *(v9 + 16) = 0uLL;
    v8 += 36;
  }

  while (v8);
  bzero(v4, 0x3E00uLL);
  v10 = *(v6 + 1676);
  if (v10)
  {
    v10 += **(a1 + 8);
  }

  v11 = 60000000;
  *(v6 + 1728) = v10;
  *(v7 + 19) = 0;
  if (*v5)
  {
    v12 = *(v6 + 248);
    if (v12)
    {
      v13 = *v2 - v12;
      if ((v13 - 1) > 0x5265BFE)
      {
        v12 = 0;
        *(v6 + 248) = 0;
        *(v6 + 256) = 0;
      }

      else
      {
        v11 = 3 * v13 / 0x3E8u + 5;
      }

      EvCrt_v("GNSS_HL_System_Re_Start:   d_TTick  %d    Sleep_Sub_us_Time_TTick  %u", v13, v12);
    }
  }

  else
  {
    *(v6 + 248) = 0;
    *(v6 + 256) = 0;
  }

  EvCrt_v("GNSS_HL_System_Re_Start:   Max_Exp_Time_Error_us  %d", v11);
  v14 = *a1;
  if (*a1 == 9)
  {
    if (*(v2 + 12) || (v15 = *v2 - v5[6], v16 = *(v2 + 16) - v5[7], v15 <= 255000) && v16 <= 255000 || (*a1 = 6, EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since Idle interval longer than %d s, Idle TTicks %d ms, Idle OS_Time %d ms", 255, v15, v16), v14 = *a1, *a1 == 9))
    {
      if (*v5 > 10 || (*a1 = 6, EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since SUB_MS Time not achieved by the end of the previous session"), v14 = *a1, *a1 == 9))
      {
        v17 = *(v6 + 244);
        if (v17 < 0x191 || (*a1 = 6, EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since ME Wakeup TTick Unc = %d > 400 us", v17), v14 = *a1, *a1 == 9))
        {
          v18 = *(v6 + 240);
          if (*(v6 + 240) && ((v19 = *(v7 + 184) * 1000000000.0, v19 >= 0) ? (v20 = v19) : (v20 = -v19), v20 > v18))
          {
            *a1 = 6;
            EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since Est Clock Drift %d ppb > %d ppb ME TSX Offset Unc", v19, v18);
            v14 = *a1;
          }

          else
          {
            v14 = 9;
          }

          if (v11 >= 0x322 && v14 == 9)
          {
            *a1 = 6;
            EvCrt_v("GNSS_HL_System_Re_Start: Deprecate SLEEP_RESTART to COMA_RESTART since Max_Exp_Time_Error_us/2 = %d/2 > 400 us", v11);
            v14 = *a1;
          }
        }
      }
    }
  }

  if (v11 <= 0x1F4)
  {
    v21 = 500;
  }

  else
  {
    v21 = v11;
  }

  v22 = 0.0;
  if (v14 == 6)
  {
    v23 = v21;
  }

  else
  {
    v23 = v11;
  }

  if (v14 == 6)
  {
    v24 = *(v6 + 240);
    if (*(v6 + 240))
    {
      *(v6 + 1712) = 0;
      v25 = v24 * 0.000000001;
      *(v6 + 1720) = v25;
      *(v7 + 920) = 0x4163125300000000;
      *(v7 + 184) = 0;
      *(p_NA + 6) = 0;
      v22 = v25 * 299792458.0 / 3.0 * (v25 * 299792458.0 / 3.0);
      goto LABEL_47;
    }

    v26 = *(v2 + 12);
    if (v26 < 0x493E1)
    {
      goto LABEL_47;
    }

    v27 = *(v6 + 1720);
    if (v27 < 0.000000175)
    {
      v28 = 0x3E877CF447651960;
LABEL_46:
      *(v6 + 1720) = v28;
      goto LABEL_47;
    }

    if (v26 >= 0xDBBA1 && v27 < 0.0000005)
    {
      v28 = 0x3EA0C6F7A0B5ED8ELL;
      goto LABEL_46;
    }
  }

LABEL_47:
  if (g_Test_Mode_Cfg == 1 && *v5 >= 10 && v5[19] >= 10)
  {
    v29 = **(a1 + 8) % 0x29u - 20;
    Inc_GPS_TOW(v29 * 0.001, v5 + 5, v5 + 16);
    Inc_Glon_TOD(v29 * 0.001, v5 + 11, v5 + 42, v5 + 41);
    *(v7 + 48) = *(v5 + 5);
    *(v7 + 62) = *(v5 + 16);
    *(v7 + 216) = *(v5 + 11);
    *(v7 + 210) = *(v5 + 82);
    EvLog_v("TestMode 1:  Error added to Time on WakeUp of %d ms", v29);
    DbgLog_v(1, "TestMode 1:  Error added to Time on WakeUp of %d ms", v29);
    v14 = *a1;
  }

  if (v14 == 6)
  {
    v66[0] = 0.0;
    v65 = 0;
    v64 = 0;
    v30 = *(v7 + 872);
    if (v30 >= 9999000.0)
    {
      v31 = TOW_stat_ms[*v5];
    }

    else
    {
      v31 = v30 * 0.0000100069229 + 1.0;
    }

    v32 = *(v6 + 244);
    if (v32)
    {
      v33 = 0.001;
    }

    else
    {
      v32 = *(v2 + 12);
      v33 = 0.000003;
    }

    v34 = v33 * v32;
    v35 = v31 + v34;
    if ((v31 + v34) * 1000.0 > v23)
    {
      EvCrt_v("GNSS_HL_System_Re_Start: Replacing time_acc %f ms with Max_Exp_Time_Error_us %d", v35, v23);
      v35 = v23 * 0.001;
    }

    if (v35 <= 600000.0)
    {
      for (i = 10; i != -1; --i)
      {
        if (TOW_stat_ms[i] >= v35)
        {
          break;
        }
      }
    }

    else
    {
      i = 0;
    }

    v37 = v5[19];
    j = i;
    if (v37 != *v5)
    {
      v39 = v34 + (TOW_stat_ms[v37] + 1);
      if (v39 <= 600000.0)
      {
        for (j = 10; j != -1; --j)
        {
          if (TOW_stat_ms[j] >= v39)
          {
            break;
          }
        }
      }

      else
      {
        j = 0;
      }
    }

    *(v7 + 56) = i;
    *(v7 + 204) = j;
    *(v5 + 4) = 0;
    *v5 = i;
    v5[19] = j;
    if (!Core_Load_ApxTime(*(v3 + 4), &v65, v66, &v64))
    {
      goto LABEL_78;
    }

    v40 = v65;
    if (v65 < 1025)
    {
      goto LABEL_78;
    }

    if (v64 <= i)
    {
      if (v5[4])
      {
        goto LABEL_78;
      }

      *(v5 + 16) = 1;
      *(v5 + 16) = v40;
    }

    else
    {
      *v5 = v64;
      *(v5 + 4) = 0;
      *(v5 + 16) = 1;
      *(v5 + 3) = *v3;
      *(v5 + 1) = *(v3 + 8);
      *(v5 + 16) = v40;
      *(v5 + 5) = v66[0];
      *(v5 + 6) = 0;
    }

    *v62 = 0;
    *v63 = 0;
    API_Get_UTC_Cor(1, v62);
    GPS_To_Glon_Time(0, *(v5 + 16), *(v5 + 5), *v62, v63, &v63[1], v5 + 11);
    v41 = v63[0];
    *(v5 + 42) = v63[1];
    *(v5 + 41) = v41;
    *(v5 + 80) = 1;
    v5[19] = *v5;
LABEL_78:
    v42 = *(a1 + 128);
    if (*v5 < 10 || *(v42 + 12) < 4)
    {
      *(v42 + 12) = 0;
    }

    else
    {
      *(v42 + 12) = 3;
    }

    *(v42 + 4) = 0;
  }

  SV_Gen_Meas_Update_Wrapper(a1);
  SV_Data_Decode_Update_Wrapper(a1);
  SV_State_Update_Wrapper(a1);
  v43 = *(a1 + 136);
  v62[0] = 0;
  *(v43 + 30) = 0;
  *(v43 + 15592) = 0u;
  ++*(v43 + 27120);
  ++*(v43 + 27132);
  v44 = *(v7 + 36);
  v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v44;
  if (v45 >= 1)
  {
    v46 = v45 / *(v6 + 1668);
    *(v43 + 27120) += v46;
    *(v43 + 27132) += v46;
  }

  if (*a1 == 9 && (*(v43 + 20) - 4) <= 4 && *(v43 + 27116) && *(v43 + 27128))
  {
    v47 = *(v43 + 18);
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v6 + 1668);
  if (v48 * *(v43 + 27120) > (1000 * v47) && *(v7 + 360) > 0.0)
  {
    NK_Decay_Speed(v47, v48, v7 + 32, v43);
    *(v43 + 27344) = 0;
    *(v43 + 27352) = 0;
    *(v43 + 27328) = 0;
    *(v43 + 27336) = 0;
  }

  *(v43 + 27112) = 0;
  *(v43 + 27120) = 0;
  *(v43 + 152) = 0;
  *(v43 + 27128) = 0u;
  *(v43 + 160) = -1;
  *(v43 + 276) = 0;
  *(v43 + 68176) = 0;
  *(v43 + 68180) = 0;
  *(v43 + 20120) = 0;
  *(v43 + 20136) = 0;
  *(v43 + 25792) = 0u;
  *(v43 + 25808) = 0u;
  *(v43 + 25824) = 0u;
  *(v43 + 25840) = 0u;
  *(v43 + 25856) = 0u;
  *(v43 + 25872) = 0u;
  *(v43 + 25888) = 0u;
  *(v43 + 25904) = 0u;
  *(v43 + 16104) = 0u;
  *(v43 + 16120) = 0u;
  *(v43 + 16072) = 0u;
  *(v43 + 16088) = 0u;
  *(v43 + 16040) = 0u;
  *(v43 + 16056) = 0u;
  *(v43 + 16008) = 0u;
  *(v43 + 16024) = 0u;
  *(v43 + 15976) = 0u;
  *(v43 + 15992) = 0u;
  *(v43 + 15944) = 0u;
  *(v43 + 15960) = 0u;
  *(v43 + 15912) = 0u;
  *(v43 + 15928) = 0u;
  *(v43 + 15880) = 0u;
  *(v43 + 15896) = 0u;
  *(v43 + 15848) = 0u;
  *(v43 + 15864) = 0u;
  *(v43 + 15816) = 0u;
  *(v43 + 15832) = 0u;
  *(v43 + 15784) = 0u;
  *(v43 + 15800) = 0u;
  *(v43 + 15752) = 0u;
  *(v43 + 15768) = 0u;
  *(v43 + 15720) = 0u;
  *(v43 + 15736) = 0u;
  *(v43 + 15688) = 0u;
  *(v43 + 15704) = 0u;
  *(v43 + 15656) = 0u;
  *(v43 + 15672) = 0u;
  *(v43 + 15624) = 0u;
  *(v43 + 15640) = 0u;
  *(v43 + 17000) = 0u;
  *(v43 + 17016) = 0u;
  *(v43 + 16968) = 0u;
  *(v43 + 16984) = 0u;
  *(v43 + 16936) = 0u;
  *(v43 + 16952) = 0u;
  *(v43 + 16904) = 0u;
  *(v43 + 16920) = 0u;
  bzero((v43 + 18056), 0x803uLL);
  if (*a1 != 6)
  {
    LODWORD(v49) = *(v6 + 244);
    v55 = v49 * 99.9308193 * (v49 * 99.9308193) + 900.0;
    Apply_Q_Boost(v55, 0, 1u, (v43 + 352), v62, v66);
    Apply_Q_Boost(v55, 1u, 1u, (v43 + 352), v62, v66);
    Apply_Q_Boost(v55, 2u, 1u, (v43 + 352), v62, v66);
    v52 = 8.98755179;
    if (*(v6 + 240))
    {
      v52 = v22;
    }

    v53 = (v43 + 352);
    v54 = 4;
    goto LABEL_103;
  }

  *(v7 + 864) = 0x4163125300000000;
  *(v7 + 200) = 0;
  *(v7 + 202) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 152) = 0;
  v50 = *(v2 + 12);
  if (v50 <= 0x2BF1F && *v5 >= 10)
  {
    Apply_Q_Boost(4.40390038e10, 0, 1u, (v43 + 352), v62, v66);
    Apply_Q_Boost(4.40390038e10, 1u, 1u, (v43 + 352), v62, v66);
    Apply_Q_Boost(4.40390038e10, 2u, 1u, (v43 + 352), v62, v66);
    Apply_Q_Boost(1.0, 3u, 1u, (v43 + 352), v62, v66);
    v51 = 224.688795;
    if (*(v6 + 240))
    {
      v51 = v22;
    }

    Apply_Q_Boost(v51, 4u, 1u, (v43 + 352), v62, v66);
    v52 = 1.0;
    v53 = (v43 + 352);
    v54 = 5;
LABEL_103:
    Apply_Q_Boost(v52, v54, 1u, v53, v62, v66);
    goto LABEL_104;
  }

  *(v43 + 136) = 1;
  *(v43 + 140) = 3;
  *(v43 + 240) = 256;
  *(v43 + 242) = 2;
  *(v43 + 27176) = 0;
  *(v43 + 27232) = 0u;
  *(v43 + 68160) = xmmword_299050630;
  v61 = *(v7 + 12);
  if (v61 != 2)
  {
    if (v61 != 3)
    {
      goto LABEL_104;
    }

    *(v7 + 12) = 2;
  }

  if (v50 >= 0x36EE81)
  {
    *(v7 + 12) = 1;
  }

LABEL_104:
  *v6 = 0;
  Nav_Kalman_Update_Wrapper(a1);
  result = Pre_Positioning_Update_Wrapper(a1);
  v57 = *(a1 + 104);
  *(v57 + 248) = *(v57 + 240);
  *(v57 + 308) = 0;
  v58 = *(a1 + 104);
  *(v58 + 320) = *(v58 + 312);
  *(v58 + 380) = 0;
  v59 = *(a1 + 104);
  *(v59 + 392) = *(v59 + 384);
  *(v59 + 452) = 0;
  *a1 = 11;
  v60 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Ga05_GetPlatformType(unsigned __int8 *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = gp_HalExtensionIndusInstance == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Null Pltfm\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga05_GetPlatformType", 770);
      v5 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    if (!(*(*gp_HalExtensionIndusInstance + 136))())
    {
      *a1 = 0;
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Platform Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga05_GetPlatformType", *a1);
      v5 = 4;
LABEL_14:
      gnssOsa_PrintLog(__str, v5, 1, 0);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

void Ga05_HandleResetBbResetReq(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga05_HandleResetBbResetReq");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v3 = gp_HalExtensionIndusInstance;
  if (gp_HalExtensionIndusInstance)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, off_29EF063D8[a1]);
    (*(*v3 + 144))(v3, a1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga05_HandleResetBbResetReq");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga05_HandleResetBbResetReq", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298F5F924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ga05_GetPlatformCalibrationGlonassGroupDelayMeters(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "ADP", 68, "Ga05_GetPlatformCalibrationGlonassGroupDelayMeters");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  result = (*(*gp_HalExtensionIndusInstance + 80))(gp_HalExtensionIndusInstance);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

double Ga05_GetPlatformCalibrationL5GroupDelayMeters(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "ADP", 68, "Ga05_GetPlatformCalibrationL5GroupDelayMeters");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (gp_HalExtensionIndusInstance)
  {
    v1 = (*(*gp_HalExtensionIndusInstance + 72))(gp_HalExtensionIndusInstance);
  }

  else
  {
    v1 = 0.0;
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga05_GetPlatformCalibrationL5GroupDelayMeters", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t Ga05_GetDebugFeaturesBitmask(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v0 = *(*gp_HalExtensionIndusInstance + 104);
    v1 = *MEMORY[0x29EDCA608];

    return v0();
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga05_GetDebugFeaturesBitmask", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t Ga05_GetIsStandaloneBeiDouSupportRequired(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v0 = *(*gp_HalExtensionIndusInstance + 96);
    v1 = *MEMORY[0x29EDCA608];

    return v0();
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga05_GetIsStandaloneBeiDouSupportRequired", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t Ga05_GetIsBeiDouConsistencyRequired(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    v0 = *(*gp_HalExtensionIndusInstance + 88);
    v1 = *MEMORY[0x29EDCA608];

    return v0();
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga05_GetIsBeiDouConsistencyRequired", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t Ga05_IsReceivingFTAEnabled(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    result = (*(*gp_HalExtensionIndusInstance + 112))(gp_HalExtensionIndusInstance) & 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 69, "Ga05_IsReceivingFTAEnabled", 770);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void Ga05_UpdateBDSConsistencyStats(int a1, int a2, int a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (gp_HalExtensionIndusInstance)
  {
    __str[0] = Ga05_GetIsBeiDouConsistencyRequired();
    v11 = a1 * 0.001;
    v12 = a2 * 0.001;
    v14 = a4;
    v13 = a3 * 0.001;
    (*(*gp_HalExtensionIndusInstance + 56))(gp_HalExtensionIndusInstance, __str);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null object HalExtIndus\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga05_UpdateBDSConsistencyStats", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v9 = *MEMORY[0x29EDCA608];
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  v6 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GncP23_30HandleEaDataInd(uint64_t a1)
{
  v59 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND EAType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP23_30HandleEaDataInd", *(a1 + 16));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 = *(a1 + 16);
    if (v3 <= 5)
    {
      if (v3 > 2)
      {
        if (v3 == 3)
        {
          memset_s(&__s, 0xCuLL, 0, 0xCuLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v32 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:UAC,OsTime,%u,Context,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 68, "GncP23_13SetUsrActCtxt", *(a1 + 24), *(a1 + 28), *(a1 + 32));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v33 = *(a1 + 28);
          LODWORD(__s) = *(a1 + 24);
          if (v33 >= 0xC)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v34 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Context,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 87, "GncP23_13SetUsrActCtxt", 770, *(a1 + 28));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v33 = 0;
          }

          HIDWORD(__s) = v33;
          v35 = *(a1 + 32);
          if (v35 >= 4)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v36 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v36), "GNC", 87, "GncP23_13SetUsrActCtxt", 770, *(a1 + 32));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v35 = 0;
          }

          LODWORD(v52) = v35;
          if ((GN_ExtA_Set_User_Activity_Context(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:UAC\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else if (v3 == 4)
        {
          memset_s(&__s, 0xCuLL, 0, 0xCuLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v23 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:FIV,OsTime,%u,Fiv,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 68, "GncP23_14SetFixedInVehicle", *(a1 + 24), *(a1 + 28), *(a1 + 32));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v24 = *(a1 + 28);
          LODWORD(__s) = *(a1 + 24);
          if (v24 >= 4)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v25 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Indication,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP23_14SetFixedInVehicle", 770, *(a1 + 28));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v24 = 0;
          }

          HIDWORD(__s) = v24;
          v26 = *(a1 + 32);
          if (v26 >= 4)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v27 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "GncP23_14SetFixedInVehicle", 770, *(a1 + 32));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v26 = 0;
          }

          LODWORD(v52) = v26;
          if ((GN_ExtA_Set_Fixed_In_Vehicle(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FIV\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v7 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:SES,Severity,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP23_15SetSigEnvSev", *(a1 + 24));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v8 = *(a1 + 24);
          if (v8 >= 8)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v9 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP23_15SetSigEnvSev", 770, *(a1 + 24));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v8 = 0;
          }

          if ((GN_ExtA_Set_Sig_Env_Sev(v8) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SES\n");
              goto LABEL_126;
            }

LABEL_127:
            v44 = *(a1 + 12);
            v45 = *(a1 + 16);
            v46 = 0;
            goto LABEL_128;
          }
        }

LABEL_121:
        v44 = *(a1 + 12);
        v45 = *(a1 + 16);
        v46 = 1;
LABEL_128:
        GncP23_01SendApiStatus(v44, v45, v46);
        goto LABEL_129;
      }

      if (v3 == 1)
      {
        v16 = *(a1 + 104);
        if (v16 >= 2)
        {
          if (v16 != 2)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v47 = mach_continuous_time();
              v50 = *(a1 + 104);
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaPos Type,%u\n", (*&g_MacClockTicksToMsRelation * v47));
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          if ((GncP23_22SetTunnelEndPt(a1 + 24) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else
        {
          memset_s(&__s, 0x50uLL, 0, 0x50uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:RPOS,OsTime,%u,Lat,%f,Long,%f,RmsSMaj,%f,RmsSMin,%f,RmsSMajB,%hd,HeightAvl,%u,Height,%f,RmsH,%f,T,%u,Src,%u,SrcHash,0x%llX\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GncP23_11SetWgs84RefPos", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 66), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 92), *(a1 + 96));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          v18 = *(a1 + 48);
          v52 = *(a1 + 32);
          LODWORD(__s) = *(a1 + 24);
          v53 = v18;
          *v54 = *(a1 + 64);
          v54[2] = *(a1 + 66);
          *&v54[8] = *(a1 + 72);
          v57 = *(a1 + 96);
          v19 = *(a1 + 88);
          if (v19 >= 5)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v20 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP23_11SetWgs84RefPos", 770, *(a1 + 88));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v19 = 0;
          }

          v55 = v19;
          v21 = *(a1 + 92);
          if (v21 < 9 && ((0x1F9u >> v21) & 1) != 0)
          {
            v22 = dword_299050B04[v21];
          }

          else
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v43 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Source,%u\n", (*&g_MacClockTicksToMsRelation * v43), "GNC", 87, "GncP23_11SetWgs84RefPos", 770, *(a1 + 92));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v22 = 0;
          }

          v56 = v22;
          if ((GN_AGPS_Set_Ref_Pos(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:RefPos\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        goto LABEL_121;
      }

      if (v3 == 2)
      {
        memset_s(&__s, 0xCuLL, 0, 0xCuLL);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v11 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:DMS,OsTime,%u,State,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncP23_12SetDevMotionState", *(a1 + 24), *(a1 + 28), *(a1 + 32));
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        v12 = *(a1 + 28);
        LODWORD(__s) = *(a1 + 24);
        if (v12 >= 4)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v13 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx State,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP23_12SetDevMotionState", 770, *(a1 + 28));
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          v12 = 0;
        }

        HIDWORD(__s) = v12;
        v14 = *(a1 + 32);
        if (v14 >= 4)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP23_12SetDevMotionState", 770, *(a1 + 32));
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          v14 = 0;
        }

        LODWORD(v52) = v14;
        if ((GN_ExtA_Set_Device_Motion_State(&__s) & 1) == 0)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Dms\n");
            goto LABEL_126;
          }

          goto LABEL_127;
        }

        goto LABEL_121;
      }
    }

    else
    {
      if (v3 <= 8)
      {
        if (v3 == 6)
        {
          memset_s(&__s, 0x20uLL, 0, 0x20uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v37 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:ALT,OsTime,%u,Alt,%f,RmsAlt,%f,Trust,%u\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 68, "GncP23_16SetAltitudeAid", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v52 = *(a1 + 32);
          v38 = *(a1 + 48);
          if (v38 >= 5)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v42 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 87, "GncP23_16SetAltitudeAid", 770, *(a1 + 48));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            v39 = 0;
          }

          else
          {
            v39 = dword_299050B28[v38];
          }

          LODWORD(v53) = v39;
          if ((GN_ExtA_Set_Altitude(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else if (v3 == 7)
        {
          memset_s(&__s, 0x48uLL, 0, 0x48uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v28 = mach_continuous_time();
            v29 = *(a1 + 48);
            v30 = *(a1 + 72);
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:RPOS,OsTime,%u,Lat,%f,Long,%f,HeightAvl,%u,Height,%.2f,Dir,%.2f,Length,%.2f,Width,%.2f,Tunnel,%u,Freeway,%u,Railway,%u,OneWay,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 68, "GncP23_17SetMapVectorSeg", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 56), v29, *(a1 + 64), v30, *(a1 + 80), *(a1 + 88), *(a1 + 89), *(a1 + 90), *(a1 + 91));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v52 = *(a1 + 32);
          *&v53 = *(a1 + 48);
          BYTE8(v53) = *(a1 + 56);
          *v54 = *(a1 + 64);
          *&v54[16] = *(a1 + 80);
          v55 = *(a1 + 88);
          LOBYTE(v56) = *(a1 + 92);
          if ((GN_ExtA_Set_Map_Vector_Seg(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Mapv\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }
        }

        else
        {
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v4 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:SPDC,OsTime,%u,Dur,%u,SpdL,%.2f,SpdU,%.2f\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GncP23_18SetSpeedC", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          __s = *(a1 + 24);
          v52 = *(a1 + 32);
          if ((GN_ExtA_Set_Speed_Constraint(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SpeedC\n");
LABEL_126:
              gnssOsa_PrintLog(__str, 2, 1, 0);
              goto LABEL_127;
            }

            goto LABEL_127;
          }
        }

        goto LABEL_121;
      }

      switch(v3)
      {
        case 9:
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v40 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:VEL,OsTime,%u,Vel,%.2f,RmsVel,%.2f\n", (*&g_MacClockTicksToMsRelation * v40), "GNC", 68, "GncP23_19SetAtVel", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v52 = *(a1 + 32);
          if ((GN_ExtA_Set_Along_Track_Vel(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Vel\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          goto LABEL_121;
        case 10:
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v31 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:HDNG,OsTime,%u,Heading,%.2f,RmsHeading,%.2f\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 68, "GncP23_20SetHeading", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v52 = *(a1 + 32);
          if ((GN_ExtA_Set_User_Heading(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Heading\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          goto LABEL_121;
        case 11:
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v10 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:VEL,OsTime,%u,Vel,%.2f,RmsVel,%.2f\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GncP23_21SetVertVel", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          LODWORD(__s) = *(a1 + 24);
          v52 = *(a1 + 32);
          if ((GN_ExtA_Set_Vertical_Vel(&__s) & 1) == 0)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:VertVel\n");
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          goto LABEL_121;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v41 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaData Type,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 87, "GncP23_30HandleEaDataInd", 770, *(a1 + 16));
      v6 = 2;
      goto LABEL_15;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP23_30HandleEaDataInd", 517);
    v6 = 1;
LABEL_15:
    gnssOsa_PrintLog(__str, v6, 1, 0);
  }

LABEL_129:
  v48 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP23_22SetTunnelEndPt(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(v7, 0, 48);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: EXTA:POS_TYPE,OsTime,%u,Lat,%f,Long,%f,RmsSMaj,%f,RmsSMin,%f,RmsSMajB,%d,HeightAvl,%d,Height,%f,RmsH,%f,PosType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP23_22SetTunnelEndPt", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 42), *(a1 + 48), *(a1 + 56), *(a1 + 80));
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  LODWORD(v7[0]) = *a1;
  *(v7 + 8) = *(a1 + 8);
  *(&v7[1] + 8) = *(a1 + 24);
  WORD4(v7[2]) = *(a1 + 40);
  BYTE10(v7[2]) = *(a1 + 42);
  v7[3] = *(a1 + 48);
  v3 = GN_ExtA_Set_Tunnel_End_Point(v7);
  if ((v3 & 1) == 0 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA TunnelEP\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP23_22SetTunnelEndPt", 257);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t GncP23_01SendApiStatus(int a1, int a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v9[1] = a2;
  v9[2] = a3;
  v9[0] = a1;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:API_STATUS =>EaCB,Api,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP23_01SendApiStatus", a2, a1, a3);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = g_GnsEaCallback(0, 12, v9);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP23_31HandleEaCbInit(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_9;
    }

    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP23_31HandleEaCbInit", 517);
    v5 = 1;
LABEL_8:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    goto LABEL_9;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EA_CB_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP23_31HandleEaCbInit");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    goto LABEL_5;
  }

  if (!g_GnsEaCallback)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_9;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:CbPtr\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP23_31HandleEaCbInit", 513);
    v5 = 2;
    goto LABEL_8;
  }

  if (g_LbsOsaTrace_Config < 4)
  {
    v3 = 0;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:DeRegistering\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP23_31HandleEaCbInit", 513);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    v3 = *(a1 + 16);
  }

LABEL_5:
  g_GnsEaCallback = v3;
LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GNS_EaInitialize(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GNS_EaInitialize", 618, 1, 0x18uLL);
  if (v2)
  {
    v2[2] = a1;
    AgpsSendFsmMsg(132, 132, 8658435, v2);
    result = 1;
  }

  else
  {
    result = 6;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_EaWgs84RefPos(int a1, __int128 *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaWgs84RefPos");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Wgs84RefPos\n");
LABEL_15:
    v8 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaWgs84RefPos");
LABEL_17:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if ((*(a2 + 17) - 3) >= 3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    v24 = *(a2 + 17);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Source,%u\n", (*&g_MacClockTicksToMsRelation * v6));
    goto LABEL_15;
  }

  if (*(a2 + 16) >= 5u)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    v25 = *(a2 + 16);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", (*&g_MacClockTicksToMsRelation * v7));
    goto LABEL_15;
  }

  if (fabs(*(a2 + 1)) > 90.0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      v5 = *(a2 + 1);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
      goto LABEL_15;
    }

LABEL_28:
    v8 = 2;
    goto LABEL_29;
  }

  if (fabs(*(a2 + 2)) > 180.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v10 = *(a2 + 2);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
    goto LABEL_15;
  }

  if (*(a2 + 42) == 1 && fabs(*(a2 + 6)) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v11 = *(a2 + 6);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Height,%f\n");
    goto LABEL_15;
  }

  if (*(a2 + 20) - 181 <= 0xFE96)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    v26 = *(a2 + 20);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:RmsSemiMajBrg,%d\n", (*&g_MacClockTicksToMsRelation * v12));
    goto LABEL_15;
  }

  v15 = gnssOsa_Calloc("GNS_EaWgs84RefPos", 744, 1, 0x70uLL);
  if (v15)
  {
    v16 = v15;
    *(v15 + 3) = a1;
    *(v15 + 4) = 1;
    v17 = *a2;
    *(v15 + 40) = a2[1];
    *(v15 + 24) = v17;
    v18 = a2[2];
    v19 = a2[3];
    v20 = a2[4];
    *(v15 + 26) = *(a2 + 20);
    *(v15 + 88) = v20;
    *(v15 + 72) = v19;
    *(v15 + 56) = v18;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v21 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "GNS_EaWgs84RefPos", *(v16 + 4), *(v16 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v16);
    if (g_LbsOsaTrace_Config < 5)
    {
      v8 = 1;
      goto LABEL_29;
    }

    bzero(__str, 0x3C6uLL);
    v22 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 68, "GNS_EaWgs84RefPos");
    v8 = 1;
    goto LABEL_17;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 68, "GNS_EaWgs84RefPos");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v8 = 6;
LABEL_29:
  v13 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t GNS_EaDevMovState(int a1, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaDevMovState");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:DMS\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaDevMovState", 513);
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_22;
      }

LABEL_19:
      bzero(__str, 0x3C6uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "GNS_EaDevMovState");
LABEL_20:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      v18 = *(a2 + 1);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:MovState,%u\n", (*&g_MacClockTicksToMsRelation * v12));
      goto LABEL_18;
    }

LABEL_21:
    v10 = 2;
    goto LABEL_22;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      v19 = *(a2 + 2);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:MovReliab,%u\n", (*&g_MacClockTicksToMsRelation * v13));
LABEL_18:
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v5 = gnssOsa_Calloc("GNS_EaDevMovState", 834, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    v5[3] = a1;
    v5[4] = 2;
    v7 = *a2;
    v5[8] = *(a2 + 2);
    *(v5 + 3) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaDevMovState", v6[4], v6[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      v10 = 1;
      goto LABEL_22;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaDevMovState");
    v10 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GNS_EaDevMovState");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v10 = 6;
LABEL_22:
  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GNS_EaSpeedConstraint(int a1, __int128 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaSpeedConstraint");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2)
  {
    v5 = gnssOsa_Calloc("GNS_EaSpeedConstraint", 891, 1, 0x70uLL);
    if (v5)
    {
      v6 = v5;
      *(v5 + 3) = a1;
      *(v5 + 4) = 8;
      v7 = *a2;
      *(v5 + 5) = *(a2 + 2);
      *(v5 + 24) = v7;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaSpeedConstraint", *(v6 + 4), *(v6 + 3));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8650755, v6);
      if (g_LbsOsaTrace_Config < 5)
      {
        v10 = 1;
        goto LABEL_18;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaSpeedConstraint");
      v10 = 1;
      goto LABEL_12;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GNS_EaSpeedConstraint");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v10 = 6;
  }

  else
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      v10 = 2;
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SpdC\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaSpeedConstraint", 513);
    v10 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 68, "GNS_EaSpeedConstraint");
LABEL_12:
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GNS_EaAlongTrackVel(int a1, __int128 *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaAlongTrackVel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      v10 = 2;
      goto LABEL_17;
    }

    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:AlongTrackVel\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GNS_EaAlongTrackVel", 513);
    v10 = 2;
    v11 = 2;
LABEL_11:
    gnssOsa_PrintLog(__str, v11, 1, 0);
    goto LABEL_17;
  }

  v5 = gnssOsa_Calloc("GNS_EaAlongTrackVel", 947, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    *(v5 + 3) = a1;
    *(v5 + 4) = 9;
    v7 = *a2;
    *(v5 + 5) = *(a2 + 2);
    *(v5 + 24) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaAlongTrackVel", *(v6 + 4), *(v6 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      v10 = 1;
      goto LABEL_17;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaAlongTrackVel");
    v10 = 1;
    v11 = 5;
    goto LABEL_11;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GNS_EaAlongTrackVel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v10 = 6;
LABEL_17:
  v14 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GNS_EaUsrActCtxt(int a1, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaUsrActCtxt");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:UAC\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaUsrActCtxt", 513);
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_22;
      }

LABEL_19:
      bzero(__str, 0x3C6uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "GNS_EaUsrActCtxt");
LABEL_20:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a2 + 1) >= 0xCu)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      v18 = *(a2 + 1);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Ctxt,%u\n", (*&g_MacClockTicksToMsRelation * v12));
      goto LABEL_18;
    }

LABEL_21:
    v10 = 2;
    goto LABEL_22;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      v19 = *(a2 + 2);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v13));
LABEL_18:
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v5 = gnssOsa_Calloc("GNS_EaUsrActCtxt", 1170, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    v5[3] = a1;
    v5[4] = 3;
    v7 = *a2;
    v5[8] = *(a2 + 2);
    *(v5 + 3) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaUsrActCtxt", v6[4], v6[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      v10 = 1;
      goto LABEL_22;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaUsrActCtxt");
    v10 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GNS_EaUsrActCtxt");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v10 = 6;
LABEL_22:
  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GNS_EaFixedInVehicle(int a1, uint64_t *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaFixedInVehicle");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FIV\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GNS_EaFixedInVehicle", 513);
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_22;
      }

LABEL_19:
      bzero(__str, 0x3C6uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "GNS_EaFixedInVehicle");
LABEL_20:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a2 + 1) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      v18 = *(a2 + 1);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FivInd,%u\n", (*&g_MacClockTicksToMsRelation * v12));
      goto LABEL_18;
    }

LABEL_21:
    v10 = 2;
    goto LABEL_22;
  }

  if (*(a2 + 2) >= 4u)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      v19 = *(a2 + 2);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:FIVReliab,%u\n", (*&g_MacClockTicksToMsRelation * v13));
LABEL_18:
      v10 = 2;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v5 = gnssOsa_Calloc("GNS_EaFixedInVehicle", 1259, 1, 0x70uLL);
  if (v5)
  {
    v6 = v5;
    v5[3] = a1;
    v5[4] = 4;
    v7 = *a2;
    v5[8] = *(a2 + 2);
    *(v5 + 3) = v7;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GNS_EaFixedInVehicle", v6[4], v6[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v6);
    if (g_LbsOsaTrace_Config < 5)
    {
      v10 = 1;
      goto LABEL_22;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GNS_EaFixedInVehicle");
    v10 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GNS_EaFixedInVehicle");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v10 = 6;
LABEL_22:
  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t GNS_EaSigEnvSev(int a1, unsigned int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaSigEnvSev");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a2 >= 8)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      v9 = 2;
      goto LABEL_18;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:SES,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GNS_EaSigEnvSev", 515, a2);
    v9 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GNS_EaSigEnvSev");
LABEL_12:
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    v5 = gnssOsa_Calloc("GNS_EaSigEnvSev", 1329, 1, 0x70uLL);
    if (v5)
    {
      v6 = v5;
      v5[3] = a1;
      v5[4] = 5;
      v5[6] = a2;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GNS_EaSigEnvSev", v6[4], v6[3]);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8650755, v6);
      if (g_LbsOsaTrace_Config < 5)
      {
        v9 = 1;
        goto LABEL_18;
      }

      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GNS_EaSigEnvSev");
      v9 = 1;
      goto LABEL_12;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 68, "GNS_EaSigEnvSev");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v9 = 6;
  }

LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t GNS_EaAltitude(int a1, __int128 *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaAltitude");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
LABEL_20:
    v12 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 68, "GNS_EaAltitude");
LABEL_22:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (fabs(*(a2 + 1)) > 100000.0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      v5 = *(a2 + 1);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
      goto LABEL_20;
    }

LABEL_23:
    v12 = 2;
    goto LABEL_24;
  }

  if (*(a2 + 2) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v6 = *(a2 + 2);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:RMSAltitude,%f\n");
    goto LABEL_20;
  }

  if (*(a2 + 6) >= 5u)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    v18 = *(a2 + 6);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Trust,%u\n", (*&g_MacClockTicksToMsRelation * v13));
    goto LABEL_20;
  }

  v7 = gnssOsa_Calloc("GNS_EaAltitude", 1425, 1, 0x70uLL);
  if (v7)
  {
    v8 = v7;
    *(v7 + 3) = a1;
    *(v7 + 4) = 6;
    v9 = *a2;
    *(v7 + 36) = *(a2 + 12);
    *(v7 + 24) = v9;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GNS_EaAltitude", *(v8 + 4), *(v8 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v8);
    if (g_LbsOsaTrace_Config < 5)
    {
      v12 = 1;
      goto LABEL_24;
    }

    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GNS_EaAltitude");
    v12 = 1;
    goto LABEL_22;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GNS_EaAltitude");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v12 = 6;
LABEL_24:
  v15 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t GNS_EaMapVectorSeg(int a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GNS_EaMapVectorSeg");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:MapVecSeg\n");
LABEL_25:
    v11 = 2;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 68, "GNS_EaMapVectorSeg");
LABEL_27:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (fabs(*(a2 + 8)) > 90.0)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      v5 = *(a2 + 8);
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Latitude,%f\n");
      goto LABEL_25;
    }

LABEL_28:
    v11 = 2;
    goto LABEL_29;
  }

  if (fabs(*(a2 + 16)) > 180.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v6 = *(a2 + 16);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Longitude,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 32) == 1 && fabs(*(a2 + 24)) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v7 = *(a2 + 24);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Altitude,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 40) > 360.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v8 = *(a2 + 40);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Direction,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 48) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v9 = *(a2 + 48);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Length,%f\n");
    goto LABEL_25;
  }

  if (*(a2 + 56) > 100000.0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_28;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    v10 = *(a2 + 56);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EXTA:Width,%f\n");
    goto LABEL_25;
  }

  v15 = gnssOsa_Calloc("GNS_EaMapVectorSeg", 1543, 1, 0x70uLL);
  if (v15)
  {
    v16 = v15;
    *(v15 + 3) = a1;
    *(v15 + 4) = 7;
    *(v15 + 24) = *a2;
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    v19 = *(a2 + 48);
    *(v15 + 85) = *(a2 + 61);
    *(v15 + 72) = v19;
    *(v15 + 56) = v18;
    *(v15 + 40) = v17;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND =>GNC Type,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GNS_EaMapVectorSeg", *(v16 + 4), *(v16 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8650755, v16);
    if (g_LbsOsaTrace_Config < 5)
    {
      v11 = 1;
      goto LABEL_29;
    }

    bzero(__str, 0x3C6uLL);
    v21 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 68, "GNS_EaMapVectorSeg");
    v11 = 1;
    goto LABEL_27;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v22 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 68, "GNS_EaMapVectorSeg");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v11 = 6;
LABEL_29:
  v13 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t GNS_EaIonosphereModel(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v5 = v4;
  v26[777] = *MEMORY[0x29EDCA608];
  if (v4 >= 4)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IONO layers out of range,%u,max,%d\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GNS_EaIonosphereModel", v5, 3);
      v7 = 2;
      v8 = __str;
LABEL_17:
      gnssOsa_PrintLog(v8, 2, 1, 0);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v9 = v3;
  v10 = v2;
  v11 = v1;
  bzero(v26, 0x1848uLL);
  *__str = v11;
  v24 = v10;
  v25 = v5;
  if (v5)
  {
    v12 = 0;
    v13 = 2072 * v5;
    while (1)
    {
      v14 = *(v9 + 8);
      if (v14 > 0x88)
      {
        break;
      }

      v15 = *(v9 + 10);
      if (v15 >= 0x79)
      {
        break;
      }

      v16 = &__str[v12];
      v17 = &__str[v12];
      *(v17 + 1) = *v9;
      *(v17 + 259) = *(v9 + 2192);
      if (v14)
      {
        memcpy(v16 + 24, (v9 + 16), 8 * v14);
      }

      *(v17 + 8) = v14;
      if (v15)
      {
        memcpy(v16 + 1112, (v9 + 1104), 8 * v15);
      }

      WORD1(v26[v12 / 8 + 1]) = v15;
      v12 += 2072;
      v9 += 2200;
      if (v13 == v12)
      {
        goto LABEL_13;
      }
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__s, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: Num of Coeffs out of range,CosCoeffs,%u,MaxCosCoeffs,%d,SinCoeffs,%u,MaxSizCoeffs,%d\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GNS_EaIonosphereModel", *(v9 + 8), 136, *(v9 + 10), 120);
      v7 = 2;
      v8 = __s;
      goto LABEL_17;
    }

LABEL_18:
    v7 = 2;
    goto LABEL_22;
  }

LABEL_13:
  if (GN_AGNSS_Set_SH_Iono_Model(__str))
  {
    v7 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__s, 0x3C6uLL);
      v19 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: Inject GN_AGNSS_Set_SH_Iono_Model failed\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "GNS_EaIonosphereModel");
      gnssOsa_PrintLog(__s, 2, 1, 0);
    }

    v7 = 0;
  }

LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return v7;
}

unint64_t NK_Get_Ext_Meas(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v152 = *MEMORY[0x29EDCA608];
  v8 = (a5 + 15411);
  v9 = a4 + 59948;
  v144 = 0;
  if ((*(a5 + 20) - 5) < 4)
  {
    EvLog("NK_Get_Ext_Meas: Ext Ref Pos and Alt Assist skipped in Airborne mode");
    goto LABEL_230;
  }

  v143 = 0.0;
  v10 = (a5 + 27120);
  v142 = 0;
  v140 = 0;
  v141 = 0;
  if (Core_Get_Pos_LLH(a1, 150000, 0, &v144, &v150, &v147, &v143, &v142 + 1, &v142, &v141, &v140))
  {
    v11 = v144;
    v12 = a1 - v144;
    *(v9 + 2224) = a1 - v144;
    if (v141 == 7)
    {
      *(v9 + 2424) = 1;
      *(v9 + 2436) = v12;
      if (HIBYTE(v142) == 1)
      {
        *(v9 + 2440) = 1;
        *(v9 + 2452) = v12;
      }
    }

    v13 = v140 - 3;
    v137 = (v140 - 3) < 2;
    if (*(a4 + 1864) != 1)
    {
      v16 = 1;
      goto LABEL_20;
    }

    v14 = v147;
    if (v147 <= 4.0e10 && v13 <= 1)
    {
      v136 = (a5 + 27120);
      v15 = (a5 + 27136);
      v137 = 1;
      v16 = 1;
LABEL_40:
      v135 = 1;
      goto LABEL_41;
    }

    v22 = *(a4 + 1704);
    v23 = __sincos_stret(v22);
    v24 = 1.0 / sqrt(v23.__sinval * v23.__sinval * -0.00669437999 + 1.0);
    v25 = *(a4 + 1720);
    v26 = v23.__cosval * (v25 + v24 * 6378137.0);
    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    v27 = (v22 - *&v150) * (v25 + v24 * (v24 * v24) * 6335439.33);
    v28 = (*(a4 + 1712) - *(&v150 + 1)) * v26 * ((*(a4 + 1712) - *(&v150 + 1)) * v26) + v27 * v27;
    if (v14 <= 4.0e10 || v28 >= fmax(v14 * 9.0, 4.0e10))
    {
      v16 = 1;
      if (*(a4 + 1872) != 1 || v13 < 2)
      {
        goto LABEL_20;
      }

      if (v28 >= 22500.0)
      {
        if (v28 >= 9000000.0)
        {
          v137 = 0;
          goto LABEL_20;
        }

        v29 = 3;
      }

      else
      {
        v29 = 4;
      }

      v140 = v29;
      if (v14 > v28)
      {
        v28 = v14;
      }

      v147 = v28;
      v136 = (a5 + 27120);
      v15 = (a5 + 27136);
      v137 = 1;
      goto LABEL_40;
    }

    *(v9 + 2428) = 24;
  }

  else
  {
    v137 = (v140 - 3) < 2;
  }

  if (*(a5 + 20) <= 4u)
  {
    v11 = *(a5 + 27144);
    if (v11)
    {
      v144 = *(a5 + 27144);
      v150 = *(a5 + 27152);
      v151 = *(a5 + 27168);
      v17 = *a4 - v11;
      if (v17 >= -999)
      {
        if (v17 > 3599999)
        {
          v19 = 200000.0;
          v20 = 4000.0;
        }

        else
        {
          v18 = (v17 / 1000) * 0.000277777778;
          v19 = v18 * 30000.0 + 400.0;
          v20 = v18 * 400.0 + 400.0;
          v144 = a1;
          v11 = a1;
        }

        v147 = v19 * v19;
        v148 = v19 * v19;
        v149 = 0;
        v143 = v20 * v20;
        v140 = 3;
        v135 = 2;
        v142 = 258;
        v137 = 1;
        v136 = (a5 + 27120);
        v15 = (a5 + 27136);
        v16 = 1;
        goto LABEL_41;
      }
    }
  }

  v16 = 0;
  v21 = 0;
  if ((v142 & 0x100) != 0)
  {
LABEL_20:
    v136 = (a5 + 27120);
    v15 = (a5 + 27136);
    if (*(a5 + 27136) && !v137)
    {
      v137 = 0;
      v21 = v16;
LABEL_152:
      v10 = v136;
      goto LABEL_153;
    }

    v11 = v144;
    v135 = v16;
LABEL_41:
    if ((a1 - v11) >= 0)
    {
      v30 = a1 - v11;
    }

    else
    {
      v30 = v11 - a1;
    }

    if (v30 < 0x3E8 || v11 - *(a5 + 15484) - 1000 <= 0xFFFFF830)
    {
      *(a5 + 15464) = 0u;
      *(a5 + 15480) = a1;
      *(a5 + 15484) = v11;
      v31 = 0.0;
      v32 = 0.0;
      if (v30 < 0x3E8)
      {
        goto LABEL_78;
      }
    }

    if (*(a4 + 1868) == 3)
    {
      v33 = *(v9 + 2108);
      if (v33 <= 3.0)
      {
        v57 = *(a4 + 1848);
        v40 = v57 + v33 * 3.0;
        v42 = 5.0;
        if (*(v9 + 2124) <= 3.0)
        {
          v58 = *(v9 + 2116);
          if (v58 <= 3.0)
          {
            v59 = *(a4 + 1840) * *(a4 + 1840) - v57 * v57;
            v60 = sqrt(v59) + v58 * 3.0;
            v61 = v59 < 0.0;
            v42 = 5.0;
            if (!v61)
            {
              v42 = v60;
            }
          }
        }

        goto LABEL_72;
      }
    }

    ExtA_UAC = Core_Get_ExtA_UAC(120000, v145);
    v35 = *(p_NA + 381);
    if (v35 == 1)
    {
      v36 = *(p_NA + 26780);
      if ((*(v9 + 2480) & 1) == 0)
      {
        *(v9 + 2472) = 1;
        *(v9 + 2480) = 1;
      }

      if (DWORD2(v145[0]) == 3)
      {
        v37 = ExtA_UAC;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 1) == 0)
      {
        v38 = v36 - 2;
        if ((v36 - 2) < 6)
        {
          v39 = &unk_299050C28;
          goto LABEL_58;
        }

LABEL_70:
        v40 = 45.0;
        goto LABEL_71;
      }
    }

    else
    {
      if (DWORD2(v145[0]) == 3)
      {
        v41 = ExtA_UAC;
      }

      else
      {
        v41 = 0;
      }

      if (v41 != 1)
      {
        goto LABEL_70;
      }

      v36 = 0;
    }

    v40 = 45.0;
    if (SDWORD1(v145[0]) <= 5)
    {
      if (SDWORD1(v145[0]) > 3)
      {
        if (DWORD1(v145[0]) == 4)
        {
          v40 = 4.6;
          goto LABEL_71;
        }
      }

      else
      {
        if (DWORD1(v145[0]) == 2)
        {
          v40 = 2.4;
          goto LABEL_71;
        }

        if (DWORD1(v145[0]) != 3)
        {
          goto LABEL_71;
        }
      }

      v40 = 10.0;
      if (!v35)
      {
        goto LABEL_71;
      }

      v38 = v36 - 5;
      if ((v36 - 5) >= 3)
      {
        goto LABEL_71;
      }

      v39 = &unk_299050BF8;
    }

    else if (SDWORD1(v145[0]) <= 7)
    {
      if (DWORD1(v145[0]) == 6)
      {
        v40 = 16.9;
        if (!v35)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v40 = 30.0;
        if (!v35)
        {
          goto LABEL_71;
        }
      }

      v38 = v36 - 5;
      if ((v36 - 5) >= 3)
      {
        goto LABEL_71;
      }

      v39 = &unk_299050C10;
    }

    else
    {
      if (DWORD1(v145[0]) != 8)
      {
        if (DWORD1(v145[0]) == 10 || DWORD1(v145[0]) == 11)
        {
          v40 = 54.0;
        }

        goto LABEL_71;
      }

      if (!v35 || (v38 = v36 - 5, (v36 - 5) >= 3))
      {
LABEL_71:
        v42 = 5.0;
LABEL_72:
        v43 = *(a5 + 15480);
        if (v43)
        {
          v44 = a1 - v43;
          if (v44 < 0)
          {
            v44 = -v44;
          }

          v45 = v44 * 0.001;
        }

        else
        {
          v45 = 0.0;
        }

        v32 = *(a5 + 15464) + v40 * v45;
        *(a5 + 15464) = v32;
        v31 = *(a5 + 15472) + v42 * v45;
        *(a5 + 15472) = v31;
        *(a5 + 15480) = a1;
LABEL_78:
        v46 = *(a4 + 1872);
        v47 = dbl_299050BD0[v141 == 7];
        if (!v46)
        {
          v47 = 5400.0;
        }

        v48 = v32 <= v47;
        if (v32 > v47)
        {
          HIBYTE(v142) = 0;
          v21 = v135;
          if (v135 == 1)
          {
            v50 = 25;
            *(v9 + 2428) = 25;
            v51 = 0.0;
            v52 = 62392;
LABEL_133:
            *(a4 + v52) = v50;
            goto LABEL_134;
          }

          v48 = 0;
          v51 = 0.0;
          goto LABEL_134;
        }

        if (v141 == 7)
        {
          v49 = v32 * v32;
          if (v46)
          {
            v21 = v135;
          }

          else
          {
            v21 = v135;
            if (v140 != 4 && (v140 != 3 || *(a4 + 20) <= 7))
            {
              v49 = fmax(v49, 4356.0);
            }
          }

          v51 = v31 * v31;
          if (*(a5 + 20) < 5u)
          {
            v51 = v51 * 0.444444444;
          }

          if (v16)
          {
            v54 = v148;
            goto LABEL_127;
          }

          v48 = 0;
LABEL_134:
          v66 = v144;
          if (HIBYTE(v142) == 1)
          {
            v67 = v51 + v143;
            v143 = v67;
            *(v9 + 396) = HIBYTE(v142);
            *(v9 + 404) = v140;
            *(v9 + 416) = v66;
            *(v9 + 400) = v21;
            *(v9 + 420) = v151;
            *(v9 + 428) = v67;
            *(v9 + 452) = 0x4039000000000000;
            *(v9 + 408) = v142;
          }

          if (!v66)
          {
            v48 = 0;
          }

          if (v48 && (!*v15 || (*(a4 + 1864) & 1) == 0))
          {
            v68 = fmax(v147 * 9.0, 4.0e10);
            v69 = Horiz_Diff_Sqd((a4 + 1704), (a4 + 60240));
            if (v69 <= v68)
            {
              v70 = *(a4 + 1864) == 0;
            }

            else
            {
              *(a4 + 1864) = 0;
              v70 = 1;
            }

            if (v69 > 40000.0 && v70)
            {
              *(a4 + 1704) = *(a4 + 60240);
              if (HIBYTE(v142) == 1)
              {
                *(a4 + 1720) = *(v9 + 420);
              }

              Geo2ECEF(a4 + 1704, &WGS84_Datum, (a4 + 1560));
              NK_Transform_State(a4 + 1512);
              if (*(a5 + 148) && (*(a5 + 136) & 1) == 0)
              {
                *(a5 + 136) = 1;
                *(a5 + 140) = 94;
              }

              *(a5 + 244) = 5;
            }
          }

          goto LABEL_152;
        }

        v53 = fmin((v30 / 0x3E8 * (v30 / 0x3E8)) * 225.0, 4.0e10);
        v54 = v148;
        if (v148 < v53)
        {
          v54 = v147;
          v148 = v147;
          if (v147 < v53)
          {
            v147 = v53;
            v148 = v53;
            v54 = v53;
          }

          v149 = 0;
        }

        if (v142 > 1u)
        {
          v51 = 0.0;
          if (v16)
          {
            v49 = 0.0;
LABEL_126:
            v21 = v135;
LABEL_127:
            v62 = v149;
            v63 = v49 + v147;
            v64 = v54 + v49;
            *(a4 + 60240) = v150;
            v147 = v63;
            v148 = v64;
            *(v9 + 268) = 1;
            *(v9 + 276) = v140;
            *(v9 + 288) = v144;
            *(v9 + 272) = v21;
            *(v9 + 316) = v63;
            *(v9 + 324) = v64;
            *(v9 + 332) = v62;
            if (v46 || (v65 = 4.0, v137) && *v136 <= 0x18u)
            {
              v65 = 25.0;
            }

            *(v9 + 372) = v65;
            v50 = v142;
            v52 = 60228;
            goto LABEL_133;
          }
        }

        else
        {
          v55 = *(a5 + 20);
          if (v55 > 8)
          {
            v56 = 100.0;
          }

          else
          {
            v56 = dbl_299050C58[v55];
          }

          v51 = v56 * ((a1 - v11) * (a1 - v11));
          if (v142 == 1)
          {
            v51 = v51 * 0.5;
          }

          if (v16)
          {
            v49 = v51;
            goto LABEL_126;
          }
        }

        v48 = 0;
        v21 = v135;
        goto LABEL_134;
      }

      v39 = &unk_299050BE0;
    }

LABEL_58:
    v40 = v39[v38];
    goto LABEL_71;
  }

LABEL_153:
  if (*(a5 + 20) <= 4u)
  {
    v138 = 0u;
    v139 = 0u;
    if (Core_Get_ExtA_Alt(6000, &v138))
    {
      *(v9 + 2408) = 1;
      *(v9 + 2416) = 1;
      v71 = v138;
      v72 = *(p_api + 8);
      if (*v72)
      {
        v73 = v72[4] - (*v72 + v138);
      }

      else
      {
        v73 = 0;
      }

      *(v9 + 2420) = v73 + a1;
      v146 = 0;
      memset(v145, 0, sizeof(v145));
      if (Core_Get_ExtA_MapV(30000, v145))
      {
        if (v146 == 1)
        {
          *(v9 + 2416) = 0;
          *(v9 + 2412) = 8;
          EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude provided when Map Vector indicates Tunnel");
        }

        if (BYTE4(v146) == 1)
        {
          *(v9 + 2416) = 0;
          *(v9 + 2412) = 9;
          EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude provided when Map Vector indicates Bridge");
        }
      }

      if (HIBYTE(v142) == 1 && *(v9 + 396) == 1 && (*(v9 + 404) - 3) <= 1)
      {
        v74 = *&v139;
        v75 = v74 * v74;
        v76 = *(v9 + 428);
        if (v76 >= v74 * v74)
        {
          v77 = *(&v138 + 1);
          v78 = *(&v138 + 1) - *(v9 + 420);
          if (v78 * v78 > (v75 + v76) * 9.0)
          {
            *(v9 + 2416) = 0;
            *(v9 + 2412) = 11;
            EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude rejected - Incompatible with Ref Pos, diff %f  Sigma %f %f", fabs(v78), v74, sqrt(v76));
            if ((a3[15] - 8) >= 0xFFFFFFFD && (*(v10 + 130) & 1) == 0 && (*(a5 + 136) & 1) == 0)
            {
              if (*(a5 + 148))
              {
                v79 = *(a4 + 1720) - v77;
                if (v79 * v79 < v75 * 16.0)
                {
                  *(a5 + 136) = 1;
                  *(a5 + 140) = 98;
                  EvLog_v("NK_Get_Ext_Meas:  KF Reset Type %d:  DEM Edit & KF Height near edited DEM Altitude,  diff %f  Sigma %f", 98, fabs(v79), sqrt(*(v9 + 428)));
                }
              }
            }
          }
        }

        else
        {
          *(v9 + 2416) = 0;
          *(v9 + 2412) = 10;
          EvCrt_v("NK_Get_Ext_Meas:  WARNING:  DEM Altitude rejected - Worse Sigma Unc than Ref Pos, %f > %f", v74, sqrt(v76));
        }
      }

      if (*(v9 + 2416) == 1)
      {
        *(v9 + 396) = 1;
        *(v9 + 400) = 1;
        v80 = *(p_api + 8);
        if (*v80)
        {
          v81 = *v80 + v71 - v80[4];
        }

        else
        {
          v81 = 0;
        }

        *(v9 + 416) = v81;
        v82 = *(&v138 + 1);
        *(v9 + 420) = *(&v138 + 1);
        v83 = 1;
        if (SDWORD2(v139) > 1)
        {
          if (DWORD2(v139) == 2)
          {
            v83 = 3;
          }

          else if (DWORD2(v139) == 3)
          {
            v83 = 4;
          }
        }

        else if (DWORD2(v139))
        {
          if (DWORD2(v139) == 1)
          {
            v83 = 2;
          }
        }

        else if (*&v139 >= 25.0)
        {
          v83 = 3;
        }

        else
        {
          v83 = 4;
        }

        *(v9 + 404) = v83;
        v84 = *(v9 + 2420);
        if (v84 < 0)
        {
          v84 = -v84;
        }

        v85 = v84 * 0.001;
        if (*(v10 + 129))
        {
          v85 = v85 * 0.1;
        }

        v86 = v85 * v85 + *&v139 * *&v139;
        *(v9 + 428) = v86;
        v87 = *(v10 + 130);
        if (v87 == 1)
        {
          v88 = a3[15];
          v89 = 25.0;
          if ((v88 - 5) < 3)
          {
            v89 = dbl_299050CA0[v88 - 5];
          }
        }

        else
        {
          v89 = 25.0;
          if (!*a3)
          {
            v89 = 9.0;
          }

          v88 = a3[15];
        }

        *(v9 + 452) = v89;
        *(v9 + 408) = 0;
        HIBYTE(v142) = 1;
        if ((v88 - 5) <= 2)
        {
          if (v87)
          {
            if ((*(a5 + 136) & 1) == 0)
            {
              if (*(a5 + 148))
              {
                v90 = *(a4 + 1720) - v82;
                v91 = *(v9 + 2060);
                if (v90 * v90 > (v86 + v91 * v91) * 16.0)
                {
                  *(a5 + 136) = 1;
                  *(a5 + 140) = 95;
                  EvLog_v("NK_Get_Ext_Meas:  KF Reset Type %d:  DEM Altitude Incompatible with current Height, diff %f  Sigma %f %f", 95, fabs(v90), sqrt(v86), v91);
                }
              }
            }
          }
        }
      }
    }
  }

  if ((!v10[4] || *(a5 + 241) == 1) && *(v9 + 2068) > 200.0 && *(a5 + 20) <= 4u)
  {
    v92 = HIBYTE(v142);
    if (!HIBYTE(v142) || *(v9 + 2060) < 100000.0 && *(v9 + 428) > 40000.0)
    {
      *(v9 + 396) = 1;
      *(v9 + 416) = a1;
      *(v9 + 400) = 0x300000002;
      *(v9 + 428) = 0x414E848000000000;
      if (v21 && v92 && v151 > -500.0 && v151 < 6000.0)
      {
        *(v9 + 420) = v151;
        if (v137)
        {
          *(v9 + 428) = v143;
        }
      }

      else
      {
        v93 = (a4 + 1720);
        *&v145[0] = 0;
        if (R8_EQ((a4 + 1720), v145) || (v94 = *v93, *v93 <= -500.0) || v94 >= 6000.0)
        {
          *(v9 + 420) = 0x407F400000000000;
        }

        else
        {
          *(v9 + 420) = v94;
        }
      }

      *(v9 + 452) = 0x4039000000000000;
      *(v9 + 408) = 2;
    }
  }

  if ((*(a4 + 1864) & 1) == 0 && *(v9 + 268) == 1 && *(v9 + 272) == 1 && *(v9 + 396) == 1)
  {
    *(a4 + 1864) = 1;
  }

LABEL_230:
  if (*(v9 + 268) == 1)
  {
    *v8 = 1;
    *(a5 + 15432) = *(v9 + 288);
    *(a5 + 15440) = *(v9 + 316);
  }

  else if (*v8 == 1 && (a1 - *(a5 + 15432)) > 120000)
  {
    *v8 = 0;
  }

  if (*(v9 + 396) == 1)
  {
    v8[1] = 1;
    *(a5 + 15448) = *(v9 + 416);
    *(a5 + 15456) = *(v9 + 428);
  }

  else if (v8[1] == 1 && (a1 - *(a5 + 15448)) > 120000)
  {
    v8[1] = 0;
  }

  *(v9 + 196) = 0;
  *&v145[0] = 0;
  *&v138 = 0;
  LOBYTE(v150) = 0;
  if (Core_Get_Clk_Drift(a1, 300, &v144, v145, &v138, &v150))
  {
    *(v9 + 196) = 1;
    *(v9 + 200) = 1;
    *(v9 + 216) = v144;
    v95 = *v145;
    *(v9 + 220) = *v145 * 299792458.0;
    v96 = *&v138 * 8.98755179e16;
    *(v9 + 228) = *&v138 * 8.98755179e16;
    *(v9 + 252) = 0x4030000000000000;
    *(v9 + 208) = v150;
    if (v96 < *(v9 + 2140) * *(v9 + 2140))
    {
      v97 = *(p_api + 48);
      if (*(v97 + 16) == 1 && *v97 >= 3)
      {
        v98 = *(v97 + 40) + 604800 * *(v97 + 32);
        if (v98 <= 0)
        {
          v99 = v98;
        }

        else
        {
          v99 = v98 - 1800;
        }
      }

      else
      {
        v99 = 0;
      }

      Core_Save_Clk_Drift(1, v99, v95);
      EvLog_v("NK_Get_Ext_Meas: Core_Save_Clk_Drift %g, Sigma(m/s) %g < %g", v95 * 1000000000.0, sqrt(*(v9 + 228)), *(v9 + 2140));
    }
  }

  *&v145[0] = 0;
  *&v150 = 0;
  *(v9 + 596) = 0;
  if (Core_Get_Speed(a1, &v144, v145, &v150, &v138))
  {
    v100 = v144;
    v101 = a1 - v144;
    if ((a1 - v144) < 0)
    {
      v101 = v144 - a1;
    }

    if (v101 <= 0x1F4)
    {
      *(v9 + 596) = 1;
      *(v9 + 600) = 1;
      *(v9 + 612) = v100;
      *(v9 + 620) = *&v145[0];
      *(v9 + 628) = v150;
      *(v9 + 652) = 0x4030000000000000;
    }
  }

  *&v150 = 0;
  v143 = 0.0;
  *(v9 + 668) = 0;
  if (Core_Get_GSpeed(a1, &v144, &v150, &v143, &v147))
  {
    v102 = v144;
    v103 = a1 - v144;
    if ((a1 - v144) < 0)
    {
      v103 = v144 - a1;
    }

    if (v103 <= 0x1F4)
    {
      *(v9 + 668) = 1;
      *(v9 + 672) = 1;
      *(v9 + 684) = v102;
      *(v9 + 692) = v150;
      *(v9 + 700) = v143;
      *(v9 + 724) = 0x4030000000000000;
    }
  }

  if (*(a5 + 20) < 5u)
  {
    memset(v145, 0, 24);
    if (Core_Get_ExtA_AT_Vel(1000, v145))
    {
      *(v9 + 2488) = 1;
      *(v9 + 2496) = 1;
      *(v9 + 2492) = 0;
      v104 = *(p_api + 8);
      if (*v104)
      {
        v105 = LODWORD(v145[0]) + *v104 - v104[4];
      }

      else
      {
        v105 = 0;
      }

      *(v9 + 2500) = a1 - v105;
      v106 = *&v145[1] * *&v145[1];
      if (*(v9 + 668) == 1 && *(v9 + 700) < v106)
      {
        *(v9 + 2496) = 0;
        if (*(v9 + 672) == 1)
        {
          *(v9 + 2492) = 30;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: EXTA VA Along-Track Speed rejected - Worse Sigma Unc than Existing EXT Ground Speed Aiding [%d], %f > %f");
        }

        else
        {
          *(v9 + 2492) = 31;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: EXTA VA Along-Track Speed rejected - Worse Sigma Unc than Existing INT Ground Speed Aiding [%d], %f > %f");
        }
      }

      else if (*v9 == 1 && *(v9 + 32) == 1 && (*(v145 + 1) >= 3.0 || *(v145 + 1) >= *&v145[1] * 3.0))
      {
        *(v9 + 2496) = 0;
        *(v9 + 2492) = 28;
        EvCrt_v("Set_ExtA_VA_Horz_Spd: VA Along-Track Speed rejected - Discrepancy with CTXT Static Status, AT Spd %f  Sigma %f");
      }

      else
      {
        v138 = 0uLL;
        *&v139 = 0;
        if (Core_Get_ExtA_SpdC(120000, &v138) && ((v107 = *(p_api + 8), !*v107) ? (v108 = 0) : (v108 = v107[4] - (v138 + *v107)), (v108 + a1) <= SDWORD1(v138) && (*(v145 + 1) > *&v139 || *(v145 + 1) < *(&v138 + 1))))
        {
          *(v9 + 2496) = 0;
          *(v9 + 2492) = 27;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: VA Along-Track Speed rejected - Out of Speed constrains, AT Spd %f  SpdC %f %f");
        }

        else
        {
          *(v9 + 668) = 1;
          *(v9 + 684) = v105;
          *(v9 + 692) = *(&v145[0] + 1);
          *(v9 + 700) = v106;
          *(v9 + 672) = 0x400000001;
          *(v9 + 724) = 0x4030000000000000;
        }
      }
    }

    if (*(a5 + 20) <= 4u)
    {
      memset(v145, 0, 24);
      if (Core_Get_ExtA_V_Vel(1000, v145))
      {
        *(v9 + 2504) = 1;
        *(v9 + 2512) = 1;
        *(v9 + 2508) = 0;
        v109 = *(p_api + 8);
        if (*v109)
        {
          v110 = LODWORD(v145[0]) + *v109 - v109[4];
        }

        else
        {
          v110 = 0;
        }

        *(v9 + 2516) = a1 - v110;
        v111 = *&v145[1];
        if (*v9 == 1 && *(v9 + 32) == 1 && ((v112 = *(v145 + 1), v113 = fabs(*(v145 + 1)), v113 >= 3.0) || v113 >= *&v145[1] * 3.0))
        {
          *(v9 + 2512) = 0;
          *(v9 + 2508) = 32;
          EvCrt_v("Set_ExtA_VA_Vert_Vel: VA Vert Velocity rejected - Discrepancy with CTXT Static Status, Vert vel %f  Sigma %f", v112, v111);
        }

        else
        {
          *(v9 + 468) = 1;
          *(v9 + 488) = v110;
          *(v9 + 492) = *(&v145[0] + 1);
          *(v9 + 500) = v111 * v111;
          *(v9 + 472) = 0x400000001;
          *(v9 + 524) = 0x4030000000000000;
        }
      }
    }
  }

  *&v138 = 0;
  v147 = 0.0;
  v143 = 0.0;
  *(v9 + 740) = 0;
  result = Core_Get_Track(a1, &v144, &v138, &v143, &v147, &v150);
  if (result)
  {
    v115 = v144;
    v116 = a1 - v144;
    if ((a1 - v144) < 0)
    {
      v116 = v144 - a1;
    }

    if (v116 <= 0x1F4)
    {
      *(v9 + 740) = 1;
      *(v9 + 744) = 1;
      *(v9 + 756) = v115;
      *(v9 + 764) = v138;
      *(v9 + 772) = v147;
      *(v9 + 796) = 0x4030000000000000;
      *(v9 + 812) = v143;
    }
  }

  if (*(a5 + 20) < 5u)
  {
    memset(v145, 0, 24);
    result = Core_Get_ExtA_Heading(1000, v145);
    if (result)
    {
      *(v9 + 2520) = 1;
      *(v9 + 2528) = 1;
      *(v9 + 2524) = 0;
      v117 = *(p_api + 8);
      if (*v117)
      {
        v118 = LODWORD(v145[0]) + *v117 - v117[4];
      }

      else
      {
        v118 = 0;
      }

      *(v9 + 2532) = a1 - v118;
      v119 = *&v145[1] * *&v145[1];
      if (*(v9 + 740) == 1 && *(v9 + 772) < v119)
      {
        *(v9 + 2528) = 0;
        if (*(v9 + 744) == 1)
        {
          *(v9 + 2524) = 36;
          result = EvCrt_v("Set_ExtA_VA_Heading: EXTA VA Heading rejected - Worse Sigma Unc than Existing EXT Track Aiding [%d], %f > %f");
        }

        else
        {
          *(v9 + 2524) = 37;
          result = EvCrt_v("Set_ExtA_VA_Heading: EXTA VA Heading rejected - Worse Sigma Unc than Existing INT Track Aiding [%d], %f > %f");
        }
      }

      else
      {
        *(v9 + 740) = 1;
        *(v9 + 756) = v118;
        *(v9 + 764) = *(&v145[0] + 1);
        *(v9 + 772) = v119;
        *(v9 + 780) = *(a4 + 1856);
        *(v9 + 744) = 0x400000001;
        *(v9 + 796) = 0x4030000000000000;
        *(v9 + 812) = 0x3FF0000000000000;
      }
    }

    if (*(a5 + 20) <= 4u)
    {
      memset(v145, 0, 24);
      result = Core_Get_ExtA_SpdC(120000, v145);
      if (result)
      {
        v120 = v145[0];
        result = mach_continuous_time();
        v121 = (*&g_MacClockTicksToMsRelation * result) - v120;
        if (v121 >= SDWORD1(v145[0]))
        {
          v122 = 2;
          v123 = 62488;
        }

        else
        {
          v122 = 1;
          *(v9 + 1444) = 1;
          v123 = 61396;
        }

        *(a4 + v123) = v122;
        v127 = *(p_api + 8);
        if (*v127)
        {
          v128 = *v127 + v120 - v127[4];
        }

        else
        {
          v128 = 0;
        }

        *(v9 + 1452) = v128;
        *(a4 + 61408) = *(v145 + 8);
      }

      else
      {
        if (*(v9 + 668) != 1 || *(v9 + 672) != 1 || *(v9 + 676) != 4)
        {
LABEL_323:
          if (*(v9 + 1444) == 1)
          {
            v129 = *(v9 + 1460);
            v130 = *(a4 + 1848);
            if (v129 <= v130 + 0.3 || (*(v9 + 1444) = 0, *(v9 + 2540) = 41, result = EvCrt_v("NK_Get_Ext_Meas:  Speed Constraint Rejected:  Lower Limit > 2D_Speed+0.3 m/s, %f > %f", v129, v130), (*(v9 + 1444) & 1) != 0))
            {
              v131 = *(v9 + 1468);
              v132 = *(a4 + 1840);
              if (v131 < v132 + -0.3)
              {
                *(v9 + 1444) = 0;
                *(v9 + 2540) = 42;
                result = EvCrt_v("NK_Get_Ext_Meas:  Speed Constraint Rejected:  Upper Limit < 3D_Speed-0.3 m/s, %f < %f", v131, v132);
              }
            }
          }

          goto LABEL_328;
        }

        *(v9 + 1444) = 1;
        *(v9 + 1448) = 2;
        v124 = *(v9 + 684);
        *(v9 + 1452) = v124;
        v125 = sqrt(*(v9 + 700)) * 3.0;
        v126 = *(v9 + 692);
        *(v9 + 1460) = fmax(v126 - v125, 0.0);
        *(v9 + 1468) = fmin(v126 + v125, 12.0);
        v121 = a1 - v124;
      }

      *(v9 + 2536) = 1;
      *(v9 + 2548) = v121;
      goto LABEL_323;
    }
  }

LABEL_328:
  v133 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofConstellationHeader::XofConstellationHeader(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v11 = *MEMORY[0x29EDCA608];
  v3 = result + 8;
  v4 = 336;
  do
  {
    *(v3 - 4) = 0;
    *(v3 - 8) = 0;
    *v3 = 0uLL;
    *(v3 + 16) = 0uLL;
    *(v3 + 32) = 0;
    v3 += 48;
    v4 -= 48;
  }

  while (v4);
  v5 = 0;
  v6 = *a2;
  do
  {
    v7 = v6 + v5;
    *v2 = *(v6 + v5 + 3);
    *(v2 + 1) = *(v6 + v5 + 35);
    *(v2 + 2) = *(v6 + v5 + 67);
    *(v2 + 3) = *(v6 + v5 + 99);
    *(v2 + 4) = *(v6 + v5 + 131);
    v8 = *(v6 + v5 + 304);
    *(v2 + 8) = *(v6 + v5 + 248);
    *(v2 + 16) = v8;
    v9 = *(v6 + v5 + 416);
    *(v2 + 24) = *(v6 + v5 + 360);
    *(v2 + 32) = v9;
    v5 += 504;
    *(v2 + 40) = *(v7 + 472);
    v2 += 48;
  }

  while (v5 != 3528);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofConstellationHeaderCodec::DecodeFromHexData(uint64_t *a1, void *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_24:
    result = 1;
  }

  else
  {
    while (XofIntegralType<unsigned char>::DecodeFromHexData(v3, a2, a3) == 1)
    {
      if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 32), a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 64), a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 96), a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 128), a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned char>::DecodeFromHexData((v3 + 160), a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned short>::DecodeFromHexData((v3 + 192), a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned long long>::DecodeFromHexData(v3 + 224, a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned long long>::DecodeFromHexData(v3 + 280, a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned long long>::DecodeFromHexData(v3 + 336, a2, a3) != 1)
      {
        break;
      }

      if (XofIntegralType<unsigned long long>::DecodeFromHexData(v3 + 392, a2, a3) != 1)
      {
        break;
      }

      v7 = v3 + 448;
      if (XofIntegralType<unsigned long long>::DecodeFromHexData(v3 + 448, a2, a3) != 1)
      {
        break;
      }

      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        v9 = *(v3 + 3);
        v10 = "   ";
        if (v9 <= 7)
        {
          v10 = off_29EF06418[v9];
        }

        v11 = (*&g_MacClockTicksToMsRelation * v8);
        std::string::basic_string[abi:ne200100]<0>(__p, v10);
        if (v16 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Decoded XOF Header constellation data for [%s]\n", v11, "GNC", 68, "DecodeFromHexData", v12);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      v3 = v7 + 56;
      if (v7 + 56 == v4)
      {
        goto LABEL_24;
      }
    }

    result = 5;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofHeader::XofHeader(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v9 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *a1 = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 20) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0uLL;
    *(v5 + 40) = 0uLL;
    v4 += 48;
    *(v5 + 56) = 0;
  }

  while (v4 != 336);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *a1 = *(a2 + 6);
  *(a1 + 2) = *(a2 + 38);
  *(a1 + 4) = *(a2 + 76);
  *(a1 + 8) = *(a2 + 142);
  *(a1 + 12) = *(a2 + 180);
  XofConstellationHeader::XofConstellationHeader(__src, (a2 + 208));
  memcpy((a1 + 16), __src, 0x150uLL);
  *(a1 + 352) = *(a2 + 300);
  *(a1 + 356) = *(a2 + 340);
  *(a1 + 360) = *(a2 + 420);
  v6 = *MEMORY[0x29EDCA608];
  return a1;
}

BOOL XofHeaderCodec::Decode(uint64_t a1, void *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (XofIntegralType<unsigned short>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 32), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 64), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 104), a2, a3) == 1 && XofIntegralType<unsigned short>::DecodeFromHexData((a1 + 136), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 168), a2, a3) == 1)
  {
    v6 = *MEMORY[0x29EDCA608];

    return XofGenericCodec::Decode<6ul,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>(a1, a2, a3);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t XofHeaderCodec::DecodeXofFormatVersion(uint64_t a1, void *a2, _WORD *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__p, "formatVersion");
  XofIntegralType<unsigned short>::XofIntegralType(v11, &__p, 1, 3, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = 0;
  if (XofIntegralType<unsigned short>::DecodeFromHexData(v11, a2, &v9) == 1)
  {
    *a3 = v11[3];
    v5 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode XOF format version!\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "DecodeXofFormatVersion");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v5 = 5;
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_298F669F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned short>::DecodeFromHexData(unsigned __int16 *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 31) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 2uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v15 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  *a3 += 2;
  if (v13)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F66BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<XofConstellationHeaderCodec::Payload>::vector[abi:ne200100](void *result, unint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<XofConstellationHeaderCodec::Payload>::__vallocate[abi:ne200100](result, a2);
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F66C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<XofConstellationHeaderCodec::Payload>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x82082082082083)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<XofConstellationHeaderCodec::Payload>>(a1, a2);
  }

  std::vector<XofConstellationHeaderCodec::Payload>::__throw_length_error[abi:ne200100]();
}

XofConstellationHeaderCodec::Payload *std::vector<XofConstellationHeaderCodec::Payload>::__construct_at_end(XofConstellationHeaderCodec::Payload *result, uint64_t a2)
{
  v2 = result;
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(result + 1);
  if (a2)
  {
    v4 = v3 + 504 * a2;
    v5 = 504 * a2;
    do
    {
      *(v3 + 496) = 0;
      *(v3 + 464) = 0u;
      *(v3 + 480) = 0u;
      *(v3 + 432) = 0u;
      *(v3 + 448) = 0u;
      *(v3 + 400) = 0u;
      *(v3 + 416) = 0u;
      *(v3 + 368) = 0u;
      *(v3 + 384) = 0u;
      *(v3 + 336) = 0u;
      *(v3 + 352) = 0u;
      *(v3 + 304) = 0u;
      *(v3 + 320) = 0u;
      *(v3 + 272) = 0u;
      *(v3 + 288) = 0u;
      *(v3 + 240) = 0u;
      *(v3 + 256) = 0u;
      *(v3 + 208) = 0u;
      *(v3 + 224) = 0u;
      *(v3 + 176) = 0u;
      *(v3 + 192) = 0u;
      *(v3 + 144) = 0u;
      *(v3 + 160) = 0u;
      *(v3 + 112) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 96) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *v3 = 0u;
      result = XofConstellationHeaderCodec::Payload::Payload(v3);
      v3 += 504;
      v5 -= 504;
    }

    while (v5);
    v3 = v4;
  }

  *(v2 + 1) = v3;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<XofConstellationHeaderCodec::Payload>>(uint64_t a1, unint64_t a2)
{
  v2 = *MEMORY[0x29EDCA608];
  if (a2 < 0x82082082082083)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

XofConstellationHeaderCodec::Payload *XofConstellationHeaderCodec::Payload::Payload(XofConstellationHeaderCodec::Payload *this)
{
  v69 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v65, "constId");
  XofIntegralType<unsigned char>::XofIntegralType(&v66, &v65, 0, 6, 0);
  std::string::basic_string[abi:ne200100]<0>(&v61, "brdcstAlmNumSats");
  XofIntegralType<unsigned char>::XofIntegralType(&v62, &v61, 0, 197, 0);
  std::string::basic_string[abi:ne200100]<0>(&v57, "brdcstEphNumSats");
  XofIntegralType<unsigned char>::XofIntegralType(&v58, &v57, 0, 197, 0);
  std::string::basic_string[abi:ne200100]<0>(&v53, "extEphNumSats");
  XofIntegralType<unsigned char>::XofIntegralType(&v54, &v53, 0, 197, 0);
  std::string::basic_string[abi:ne200100]<0>(&v49, "extEphNumBlocks");
  XofIntegralType<unsigned char>::XofIntegralType(&v50, &v49, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v45, "reserved1");
  XofIntegralType<unsigned char>::XofIntegralType(&v46, &v45, 0, 255, 0);
  std::string::basic_string[abi:ne200100]<0>(&v41, "reserved2");
  XofIntegralType<unsigned short>::XofIntegralType(&v42, &v41, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v37, "extEphprnBitmask");
  XofIntegralType<unsigned long long>::XofIntegralType(v38, &v37, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v33, "l1CABrdcstingSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v34, &v33, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v29, "l5BrdcstingSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v30, &v29, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v25, "l1CADoNotUseSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v26, &v25, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "l5DoNotUseSats");
  XofIntegralType<unsigned long long>::XofIntegralType(v22, &__p, 0, -1, 0);
  *this = v66;
  *(this + 8) = v67;
  *(this + 3) = v68;
  v67 = 0uLL;
  v68 = 0;
  *(this + 8) = v62;
  *(this + 40) = v63;
  *(this + 7) = v64;
  v64 = 0;
  v63 = 0uLL;
  *(this + 16) = v58;
  v2 = v59;
  *(this + 11) = v60;
  *(this + 72) = v2;
  v59 = 0uLL;
  v60 = 0;
  *(this + 24) = v54;
  v3 = v55;
  *(this + 15) = v56;
  *(this + 104) = v3;
  v55 = 0uLL;
  v56 = 0;
  *(this + 32) = v50;
  v4 = v51;
  *(this + 19) = v52;
  *(this + 136) = v4;
  v51 = 0uLL;
  v52 = 0;
  *(this + 40) = v46;
  v5 = v48;
  *(this + 168) = v47;
  v47 = 0uLL;
  v48 = 0;
  v6 = v42;
  v7 = v44;
  *(this + 23) = v5;
  *(this + 24) = v6;
  v8 = v43;
  *(this + 27) = v7;
  *(this + 200) = v8;
  v43 = 0uLL;
  v44 = 0;
  v9 = v38[1];
  *(this + 14) = v38[0];
  *(this + 15) = v9;
  v10 = v39;
  *(this + 34) = v40;
  *(this + 16) = v10;
  v39 = 0uLL;
  v40 = 0;
  v11 = v34[1];
  *(this + 280) = v34[0];
  *(this + 296) = v11;
  v12 = v35;
  *(this + 41) = v36;
  *(this + 312) = v12;
  v35 = 0uLL;
  v36 = 0;
  v13 = v30[1];
  *(this + 21) = v30[0];
  *(this + 22) = v13;
  v14 = v31;
  *(this + 48) = v32;
  *(this + 23) = v14;
  v31 = 0uLL;
  v32 = 0;
  v15 = v26[1];
  *(this + 392) = v26[0];
  *(this + 408) = v15;
  v16 = v27;
  *(this + 55) = v28;
  *(this + 424) = v16;
  v27 = 0uLL;
  v28 = 0;
  v17 = v22[1];
  *(this + 28) = v22[0];
  *(this + 29) = v17;
  v18 = v23;
  *(this + 62) = v24;
  *(this + 30) = v18;
  v23 = 0uLL;
  v24 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_298F67414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (*(v82 - 193) < 0)
  {
    operator delete(*(v82 - 216));
  }

  if (*(v82 - 225) < 0)
  {
    operator delete(*(v82 - 248));
  }

  if (*(v82 - 137) < 0)
  {
    operator delete(*(v82 - 160));
  }

  if (*(v82 - 169) < 0)
  {
    operator delete(*(v82 - 192));
  }

  if (*(v82 - 81) < 0)
  {
    operator delete(*(v82 - 104));
  }

  if (*(v82 - 113) < 0)
  {
    operator delete(*(v82 - 136));
  }

  if (*(v82 - 25) < 0)
  {
    operator delete(*(v82 - 48));
  }

  if (*(v82 - 57) < 0)
  {
    operator delete(*(v82 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t XofIntegralType<unsigned char>::XofIntegralType(uint64_t a1, const std::string *a2, char a3, char a4, char a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 1) = a3;
  *(a1 + 2) = a5;
  *(a1 + 3) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F676E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned long long>::XofIntegralType(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::string::operator=((a1 + 32), a2);
  *a1 = a4;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F6778C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>>::~__tuple_impl(v4 - 504);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    v6 = *MEMORY[0x29EDCA608];

    operator delete(v5);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
    v8 = *MEMORY[0x29EDCA608];
  }
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>,XofIntegralType<unsigned long long>>::~__tuple_impl(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t XofIntegralType<unsigned char>::DecodeFromHexData(unsigned __int8 *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (a2[1] - *a2 == v5)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 8);
      if (a1[31] < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 1uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = __str[0];
  a1[3] = __str[0];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (a1[31] < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  ++*a3;
  if (v13)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F67B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = *MEMORY[0x29EDCA608];
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = *MEMORY[0x29EDCA608];
  v4 = __sz + 1;

  memmove(this, __s, v4);
}

uint64_t XofIntegralType<unsigned long long>::DecodeFromHexData(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 7)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 8uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = *__str;
  *(a1 + 24) = *__str;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  *a3 += 8;
  if (v13)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F67DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XofIntegralType<unsigned int>::DecodeFromHexData(unsigned int *a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if ((a2[1] - (*a2 + v5)) <= 3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = (a1 + 4);
      if (*(a1 + 39) < 0)
      {
        v7 = *v7;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer! Field decoding is %s\n", v6, "GNC", 87, "DecodeFromHexData", v7);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *__str = 0;
  if (!XofBaseType::CopyDataFromBuffer(a1, a2, v5, 4uLL, __str))
  {
LABEL_9:
    result = 5;
    goto LABEL_16;
  }

  v8 = *__str;
  a1[3] = *__str;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    v15 = *(a1 + 4);
  }

  v13 = XofBaseType::ValidateUnsignedRange(a1, v8, v9, v10, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  *a3 += 4;
  if (v13)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298F67FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XofGenericCodec::Decode<6ul,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofConstellationHeaderCodec::DecodeFromHexData((a1 + 208), a2, a3) == 1 && XofIntegralType<unsigned long long>::DecodeFromHexData(a1 + 232, a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 288), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 328), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 368), a2, a3) == 1 && XofIntegralType<unsigned int>::DecodeFromHexData((a1 + 408), a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t XofIntegralType<unsigned short>::XofIntegralType(uint64_t a1, const std::string *a2, __int16 a3, __int16 a4, __int16 a5)
{
  v11 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  *a1 = a4;
  *(a1 + 2) = a3;
  *(a1 + 4) = a5;
  *(a1 + 6) = a5;
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298F68180(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t BDS_BGTOInt2Real(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = v2 * 2.91038305e-11 + *(a1 + 24) * 2.91038305e-11;
  v3.f64[0] = *(a1 + 20);
  v3.f64[1] = *(a1 + 22);
  result = vmulq_f64(v3, xmmword_299050CC0);
  *(a2 + 24) = result;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL AzEl_SinCos(double *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v5 = a1[2];
  *(a3 + 8) = -v5;
  if (v5 <= -1.0)
  {
    v7 = 0x3FF0000000000000;
LABEL_6:
    *(a3 + 8) = v7;
    v6 = 0.0;
    goto LABEL_7;
  }

  if (v5 >= 1.0)
  {
    v7 = 0xBFF0000000000000;
    goto LABEL_6;
  }

  v6 = sqrt(v5 * -v5 + 1.0);
LABEL_7:
  *(a3 + 16) = v6;
  v13[0] = 0.0;
  result = R8_EQ((a3 + 16), v13);
  if (result)
  {
    goto LABEL_8;
  }

  v10 = a1[1] / v6;
  *(a2 + 8) = v10;
  v11 = *a1 / v6;
  *(a2 + 16) = v11;
  if (v10 >= 1.0)
  {
    v9 = xmmword_299050CD0;
    goto LABEL_16;
  }

  if (v10 <= -1.0)
  {
    v9 = xmmword_299050CE0;
    goto LABEL_16;
  }

  if (v11 >= 1.0)
  {
LABEL_8:
    v9 = xmmword_299050CF0;
LABEL_16:
    *(a2 + 8) = v9;
    goto LABEL_17;
  }

  if (v11 <= -1.0)
  {
    v9 = xmmword_299050D00;
    goto LABEL_16;
  }

LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void *NK_Obs_Equ_SV(void *result, int a2, __int16 a3, double *a4, uint64_t a5, double a6)
{
  v7 = a4;
  v18 = *MEMORY[0x29EDCA608];
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (a2)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (result != 2)
  {
    v8 = result;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v16 = 0;
      *(a5 + 32) = a6;
      *(a5 + 48) = a4[3];
      *(a5 + 56) = a4[4];
      *(a5 + 64) = a4[5];
      do
      {
        *(a5 + 72 + v16 * 8) = -(a4[v16] * a6);
        ++v16;
      }

      while (v16 != 3);
    }

    else if (v8 == 4)
    {
      *(a5 + 32) = 0x3FF0000000000000;
      for (i = 9; i != 12; ++i)
      {
        *(a5 + 8 * i) = -(*v7 + v7[3] * 0.5);
        ++v7;
      }
    }

    goto LABEL_24;
  }

  if (v8 == 1)
  {
    v15 = HIBYTE(a3);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if (a3 <= 7u)
    {
      if (((1 << a3) & 0xEA) != 0)
      {
        *a5 = 0x3FF0000000000000;
        goto LABEL_18;
      }

      if (a3 == 2)
      {
        *(a5 + 8) = 0x3FF0000000000000;
LABEL_18:
        if (v15 > 0xFu || ((1 << v15) & 0xDD77) == 0)
        {
          *(a5 + 24) = 0x3FF0000000000000;
        }

        v9 = v7[6];
        v10 = 64;
        v11 = 56;
        v12 = 48;
        v13 = 40;
        goto LABEL_21;
      }

      if (a3 == 4)
      {
        *(a5 + 16) = 0x3FF0000000000000;
        goto LABEL_18;
      }
    }

    if (!a3)
    {
      result = EvCrt_Illegal_switch_case("NK_Obs_Equ_SV", 0x6Du);
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    v9 = 1.0;
    v10 = 88;
    v11 = 80;
    v12 = 72;
    v13 = 32;
LABEL_21:
    *(a5 + v13) = v9;
    *(a5 + v12) = -*v7;
    *(a5 + v11) = -v7[1];
    *(a5 + v10) = -v7[2];
  }

LABEL_24:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_AGPS_Set_Alm_El(unsigned __int8 *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Alm_El");
  if (result)
  {
    v3 = a1[1];
    if (g_Logging_Cfg < 5)
    {
      EvLog_d("GN_AGPS_Set_Alm_El: ", a1[1]);
    }

    else
    {
      EvLog_v("GN_AGPS_Set_Alm_El: %3d %2d %3d %3d %5d %5d %5d %5d %5d %8d %8d %8d %8d %d", *a1, v3, a1[2], a1[3], *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), a1[32]);
    }

    if ((v3 - 203) >= 0xFFFFFFF6)
    {
      v4 = 5;
    }

    else
    {
      v4 = (v3 - 1) < 0x20;
    }

    if (!v4)
    {
      v6 = a1[1];
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Sat_ID = %d, Out of range!");
      goto LABEL_40;
    }

    v5 = *(a1 + 2);
    if (((*(a1 + 2) - 1024) >> 11) <= 0x1Eu)
    {
      v23 = *(a1 + 2);
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!");
LABEL_40:
      result = 0;
      goto LABEL_41;
    }

    v7 = *(a1 + 3);
    if (((*(a1 + 3) - 1024) >> 11) <= 0x1Eu)
    {
      v24 = *(a1 + 3);
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!");
      goto LABEL_40;
    }

    if (v4 == 5)
    {
      v8 = 0.1;
    }

    else
    {
      v8 = 0.03;
    }

    v9 = *(a1 + 4);
    if (vcvtd_n_f64_u32(v9, 0x15uLL) > v8)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: e = %g > %g, Unrealistic value!");
      goto LABEL_40;
    }

    v10 = 0.0;
    if ((v3 - 203) >= 0xFFFFFFF6)
    {
      v10 = 0.000000314159265;
    }

    v11 = *(a1 + 6);
    v12 = v11 * 1.14290475e-11;
    if (v12 < -0.00000198862815)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
      goto LABEL_40;
    }

    if (v12 > v10)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
      goto LABEL_40;
    }

    v13 = *(a1 + 4);
    if (HIBYTE(v13))
    {
      v25 = *(a1 + 4);
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %u >=2^24,  Out of range !");
      goto LABEL_40;
    }

    if (v4 == 5)
    {
      v14 = 7000.0;
    }

    else
    {
      v14 = 5800.0;
    }

    v15 = vcvtd_n_f64_u32(v13, 0xBuLL);
    if (v15 < 4800.0)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g < %g, Unrealistic value!");
      goto LABEL_40;
    }

    if (v15 > v14)
    {
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g > %g, Unrealistic value!");
      goto LABEL_40;
    }

    v16 = *(a1 + 5);
    if ((v16 - 0x800000) >> 24 != 255)
    {
      v26 = *(a1 + 5);
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_40;
    }

    v17 = *(a1 + 6);
    if ((v17 - 0x800000) >> 24 != 255)
    {
      v27 = *(a1 + 6);
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: w = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_40;
    }

    v18 = *(a1 + 7);
    if ((v18 - 0x800000) >> 24 != 255)
    {
      v28 = *(a1 + 7);
      EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!");
      goto LABEL_40;
    }

    v46 = 0;
    v20 = a1[1];
    v21 = v20 & 0x3F;
    if (v20 == 32)
    {
      v21 = 0;
    }

    v31 = v9;
    v32 = v21;
    v22 = a1[3];
    v33 = *(a1 + 5);
    v34 = v22;
    v35 = a1[2];
    v36 = v11;
    v37 = v13;
    v38 = BYTE2(v13);
    v39 = v16;
    v40 = BYTE2(v16);
    v41 = v17;
    v42 = BYTE2(v17);
    v43 = v18;
    v44 = BYTE2(v18);
    v45 = (32 * v7) | (4 * (v5 & 7));
    LOBYTE(v46) = v7 >> 3;
    BYTE1(v46) = v5 >> 3;
    v30 = *a1;
    v29 = 0;
    BYTE2(v46) = a1[32];
    result = GN_AGPS_Set_Alm(v20, &v29);
  }

LABEL_41:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void Kep_Calc_SV_Ref_State(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v114 = *MEMORY[0x29EDCA608];
  if (*(a4 + 22))
  {
    v10 = *(a4 + 28);
    v11 = a3 + 604800 * (a2 - *(a4 + 22)) - v10;
  }

  else
  {
    v10 = *(a4 + 28);
    v12 = a3 - v10;
    v13 = a3 - v10 - 604800;
    if (a3 - v10 <= 302399)
    {
      v13 = a3 - v10;
    }

    if (v12 < -302400)
    {
      v11 = v12 + 604800;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = *(a4 + 8);
  v15 = *(a4 + 184);
  v16 = v15 * v15;
  v17 = *(a4 + 192);
  v111 = *(a4 + 104) + sqrt(dbl_299050D10[v14 - 3 < 2]) / (v15 * (v15 * v15)) + *(a4 + 112) * v11 * 0.5;
  v18 = *(a4 + 176) + v111 * v11;
  v19 = sin(v18);
  v20 = 0;
  v21 = *(a4 + 224);
  v22 = v18 + v21 * v19;
  do
  {
    v23 = v22;
    v22 = v18 + v21 * sin(v22);
  }

  while (vabdd_f64(v22, v23) > 1.0e-11 && v20++ < 0x13);
  v25 = 1.0 - v21 * v21;
  v26 = v16 + v17 * v11;
  v27 = tan(v22 * 0.5);
  v28 = atan(sqrt((v21 + 1.0) / (1.0 - v21)) * v27);
  v29 = v28 + v28;
  if (v29 < 0.0)
  {
    v29 = v29 + 6.28318531;
  }

  v30 = __sincos_stret(v29);
  v31 = __sincos_stret(*(a4 + 216));
  v32 = v30.__cosval * v31.__sinval + v30.__sinval * v31.__cosval;
  v33 = v30.__cosval * v31.__cosval - v30.__sinval * v31.__sinval;
  v34 = v33 * (v32 + v32);
  if (a1 == 1)
  {
    v35 = v33 * v33 - v32 * v32;
    v36 = v35 * *(a4 + 136) + *(a4 + 144) * v34;
    v37 = v36 * v36 * -0.5 + 1.0;
    v38 = v33 * v36;
    v107 = v36;
    v39 = -(v32 * v36);
    v32 = v38 + v32 * v37;
    v33 = v39 + v33 * v37;
    v40 = v35 * *(a4 + 120) + *(a4 + 128) * v34;
  }

  else
  {
    v40 = 0.0;
    v35 = 0.0;
    v107 = 0.0;
  }

  v110 = 1.0 - v21 * v21;
  v109 = v26;
  v112 = v21 * v30.__cosval + 1.0;
  v113 = sqrt(v25);
  v105 = v34;
  v106 = v40;
  v41 = v26 * v25 / v112 + v40;
  v42 = v41 * v33;
  v43 = v41 * v32;
  v44 = *(a4 + 208);
  v104 = v35;
  if (a1 == 1)
  {
    v108 = v35 * *(a4 + 152) + *(a4 + 160) * v34;
    v45 = v11;
    v44 = v44 + v108 + *(a4 + 168) * v11;
  }

  else
  {
    v108 = 0.0;
    v45 = v11;
  }

  v46 = __sincos_stret(v44);
  v47 = dbl_299050D20[v14 == 4];
  v48 = *(a4 + 232) - v47;
  v49 = __sincos_stret(*(a4 + 200) + v48 * v45 - v47 * v10);
  *a5 = v42 * v49.__cosval - v43 * v46.__cosval * v49.__sinval;
  *(a5 + 8) = v43 * v46.__cosval * v49.__cosval + v42 * v49.__sinval;
  v50 = v43 * v46.__sinval;
  *(a5 + 16) = v43 * v46.__sinval;
  v51 = v111;
  v52 = v111 * (v112 * v112) / (v110 * v113) + *(a4 + 112) * v45 * 0.5;
  v53 = v52 + v52;
  v54 = v111 * (v109 * *(a4 + 224) / v113);
  v55 = *(a4 + 192) + v54 * v30.__sinval;
  v56 = 0.0;
  if (a1 == 1)
  {
    v57 = *(a4 + 144) * v104 - *(a4 + 136) * v105;
    v58 = *(a4 + 128) * v104 - *(a4 + 120) * v105;
    v59 = v52 + v53 * v57;
    v55 = v55 + v53 * v58;
    v60 = *(a4 + 160) * v104 - *(a4 + 152) * v105;
    v61 = *(a4 + 168) + v53 * v60;
  }

  else
  {
    v61 = 0.0;
    v58 = 0.0;
    v60 = 0.0;
    v59 = v111 * (v112 * v112) / (v110 * v113) + *(a4 + 112) * v45 * 0.5;
    v57 = 0.0;
  }

  v62 = v55 * v33 - v43 * v59;
  v63 = v42 * v59 + v55 * v32;
  v64 = v62 + -(v43 * v48) * v46.__cosval;
  v65 = v63 * v46.__cosval - v50 * v61 + v42 * v48;
  v66 = v64 * v49.__cosval - v65 * v49.__sinval;
  v67 = v49.__cosval * v65 + v64 * v49.__sinval;
  *(a5 + 24) = v66;
  *(a5 + 32) = v67;
  v68 = v46.__cosval * (v43 * v61) + v63 * v46.__sinval;
  *(a5 + 40) = v68;
  v69 = v112 * (v30.__sinval * (-(v53 * v111) * *(a4 + 224)) / (v110 * v113));
  v70 = v30.__cosval * (v54 * v52);
  if (a1 == 1)
  {
    v71 = v69 + v69;
    v72 = v53 * -v53;
    v70 = v70 + (v69 + v69) * v58 + v72 * v106;
    v69 = v69 + (v69 + v69) * v57 + v72 * v107;
    v56 = v108 * v72 + v71 * v60;
  }

  v73 = v55 * v59;
  v74 = v33 * v73 + v70 * v32 + v62 * v59 + v69 * v42;
  v75 = v70 * v33 - v73 * v32 - v63 * v59 - v69 * v43 + -(v63 * v48) * v46.__cosval + v48 * (v43 * v61) * v46.__sinval;
  v76 = v46.__sinval * -(v63 * v61) + v74 * v46.__cosval - v68 * v61 + -v50 * v56 + v62 * v48;
  v77 = v49.__cosval * v75 - v48 * v67 - v76 * v49.__sinval;
  v78 = v49.__sinval * v75 + v48 * v66 + v76 * v49.__cosval;
  *(a5 + 48) = v77;
  *(a5 + 56) = v78;
  v79 = v46.__cosval * (v61 * (v63 + v63)) + v74 * v46.__sinval + v43 * v56 * v46.__cosval;
  v80 = -(v61 * v61);
  v81 = dbl_299050D30[v14 == 4];
  v82 = v79 + v80 * v50;
  v83 = dbl_299050D40[v14 == 4];
  *(a5 + 64) = v82;
  *(a5 + 72) = v81 * v78 + v83 * -3.0 * v66;
  *(a5 + 80) = v83 * -3.0 * v67 - v81 * v77;
  *(a5 + 88) = (v83 * -3.0 - v83) * v68;
  if (a1 != 1)
  {
    if (v11 >= 0)
    {
      v87 = 302400;
    }

    else
    {
      v87 = -302400;
    }

    v88 = v87 + v11;
    if (v88 < 0)
    {
      v88 = -v88;
    }

    v85 = v11;
    if (v88 > 0x1E1337F)
    {
      v89 = 65500;
    }

    else
    {
      v89 = v88 / 0x3E8u + 1200;
    }

    v91 = (v89 * v89);
    goto LABEL_59;
  }

  v84 = *(a4 + 19);
  v85 = v11;
  if (v84 <= 0xF)
  {
    v86 = (&GPS_Legacy_URA_Table + 8 * v84);
LABEL_39:
    v90 = *v86;
    goto LABEL_43;
  }

  if ((v84 + 16) <= 0x10u)
  {
    v86 = (&GPS_Modern_URA_Table + 8 * -v84);
    goto LABEL_39;
  }

  v90 = 99980001.0;
LABEL_43:
  *(a5 + 112) = v90;
  if (v11 >= 0)
  {
    v92 = v11;
  }

  else
  {
    v92 = -v11;
  }

  v93 = -30 * *(a4 + 18) + v92 / 0x3C;
  if ((*(a4 + 4) & 0xFFFFFFFE) == 4 && v14 <= 6 && ((1 << v14) & 0x58) != 0)
  {
    v93 -= 30 * *(a4 + 18);
  }

  if (v93 < 1)
  {
    if (v11 >= 10800 && (v93 == 0 || v93 >= 0xFFFFFFC5))
    {
      v95 = ((v93 + 60) * (v93 + 60)) * 0.00138888889;
      v91 = v90 + v95 * v95;
LABEL_59:
      *(a5 + 112) = v91;
      goto LABEL_60;
    }
  }

  else
  {
    v94 = Is_Eph_Kep_Real(a4);
    v51 = v111;
    if (v94)
    {
      *(a5 + 112) = *(a5 + 112) + (v93 * v93) * 0.025 * ((v93 * v93) * 0.025);
    }
  }

  if (v11 >= 14400 && (v93 & 0x80000000) == 0)
  {
    v91 = *(a5 + 112) + 25.0;
    goto LABEL_59;
  }

LABEL_60:
  v96 = v85 + (*(a4 + 28) - *(a4 + 24));
  v97 = *(a4 + 224);
  v98 = v97 * -4.44280763e-10 * *(a4 + 184) / (v97 * v30.__cosval + 1.0);
  v99 = *(a4 + 48);
  v100 = v96 * *(a4 + 56);
  *(a5 + 96) = *(a4 + 40) + v96 * (v100 + v99) + v113 * v98 * v30.__sinval;
  *(a5 + 104) = v99 + v100 * 2.0 + v51 * v98 * (v30.__cosval + v97);
  *(a5 + 120) = *(a4 + 64);
  *(a5 + 136) = *(a4 + 80);
  *(a5 + 152) = *(a4 + 96);
  *(a5 + 160) = a3;
  *(a5 + 164) = v8;
  *(a5 + 166) = *(a4 + 20);
  v101 = *(a4 + 4);
  v102 = *(a4 + 8);
  *(a5 + 176) = a1;
  *(a5 + 180) = v101;
  *(a5 + 188) = *(a4 + 12);
  *(a5 + 184) = v102;
  *(a5 + 189) = *(a4 + 16);
  *(a5 + 190) = *(a4 + 17);
  v103 = *MEMORY[0x29EDCA608];
}

void GM_Inc_Local_Time(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2 + 0x4000;
  v4 = a1 - *(a2 + 17976);
  *(a2 + 17976) = a1;
  Inc_Local_Time(v4, 604800, (a2 + 17944), (a2 + 17942));
  Inc_Local_Time(v4, 86400, (a2 + 17968), (v3 + 1576));
  v5 = *(v3 + 1576);
  if (v5 >= 1462)
  {
    v6 = *(v3 + 1572);
    v7 = v5 - 2922;
    if (*(v3 + 1576) < 0xB6Au)
    {
      v7 = 0;
    }

    *(v3 + 1576) = v5 - 1461 * ((v7 + 1460) / 0x5B5u) - 1461;
    *(v3 + 1572) = v6 + (v7 + 1460) / 0x5B5u + 1;
  }

  v8 = *MEMORY[0x29EDCA608];
}

void DD_Assist_QZSS_Data(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = 0;
  v77 = *MEMORY[0x29EDCA608];
  v60 = a1 + 3718;
  v61 = a1 + 3648;
  v59 = a1 + 3708;
  v63 = a3 + 1144;
  v58 = a2 - 241;
  v62 = a3 + 1434;
  do
  {
    if (*(a3[1137] + v6) != 1 || (v7 = v63 + 29 * v6, v7[1] < 6) || (v58 - *v7) <= 0xFFFFF806)
    {
      v75 = 0u;
      memset(v76, 0, 19);
      v73 = 0u;
      v74 = 0u;
      memset(v72, 0, sizeof(v72));
      v71 = 0u;
      if (Core_Get_QZSS_Eph((v6 - 63), a2, &v71))
      {
        v8 = a3[1137];
        if (*(v8 + v6) == 1)
        {
          v9 = v63 + 29 * v6;
          v10 = *v9;
          v11 = v9[1];
          if (SDWORD1(v71) <= v11)
          {
            v27 = v71 > v10 && DWORD1(v71) == v11;
            if (!v27 && a2 - v10 > -1801)
            {
              goto LABEL_23;
            }
          }

          if (v71 - v10 <= 10799 && Is_GPS_BinEph_Real(v63 + 116 * v6) && !Is_GPS_BinEph_Real(&v71))
          {
            *v9 = a2;
            goto LABEL_23;
          }
        }

        v12 = a3[1129];
        if ((*(v12 + v6) & 1) == 0)
        {
          v13 = a3[1139];
          if (*(v13 + v6) == 1 && *(v62 + 11 * v6) + 100 < a2)
          {
            *(a3[1134] + v6) = 0;
            *(v13 + v6) = 0;
            *(v59 + v6) = -1;
            v8 = a3[1137];
            v12 = a3[1129];
          }
        }

        v14 = v75;
        v15 = v63 + 116 * v6;
        *(v15 + 4) = v74;
        *(v15 + 5) = v14;
        *(v15 + 6) = *v76;
        *(v15 + 28) = *&v76[16];
        v16 = v72[0];
        *v15 = v71;
        *(v15 + 1) = v16;
        v17 = v73;
        *(v15 + 2) = v72[1];
        *(v15 + 3) = v17;
        *(a3[1133] + v6) = 1;
        *(v8 + v6) = 1;
        *(v12 + v6) = 1;
        v18 = a3[1131];
        if (*(v15 + 1) == 5)
        {
          *(v18 + 20 * v6 + 8) = 1;
          *(a3[1130] + v6) = 1;
          v19 = (a3[1132] + 20 * v6 + 8);
        }

        else
        {
          v19 = (v18 + 20 * v6 + 12);
        }

        *v19 = 1;
        if (a2 >= 1)
        {
          *(a3[1140] + v6) = 1;
          Core_Save_QZSS_Eph((v6 - 63), 0, v15);
          v12 = a3[1129];
        }

        v20 = 0;
        LODWORD(v21) = 0;
        v22 = p_NV;
        v23 = *(v12 + 8);
        *(p_NV + 6092) = *v12;
        *(v22 + 6100) = v23;
        v24 = 55665;
        do
        {
          v25 = *(v22 + 6088 + v20) ^ BYTE1(v24);
          v24 = 52845 * (v24 + v25) + 22719;
          v21 = (v21 + v25);
          ++v20;
        }

        while (v20 != 40);
        *(v22 + 6080) = v21;
        v26 = v61 + 6 * v6;
        *v26 = 16777472;
        *(v26 + 4) = 256;
        *(v60 + 2 * v6) = 256;
      }
    }

LABEL_23:
    ++v6;
  }

  while (v6 != 10);
  v28 = a4;
  if (a2 >= 1)
  {
    v29 = 0;
    v30 = a3 + 1289;
    do
    {
      if (*(a3[1129] + v29) == 1 && (*(*(v28 + 1624) + v29) & 1) == 0 && (*(a3[1138] + v29) != 1 || a2 - *(v30 + 29 * v29) >= 241))
      {
        v75 = 0u;
        memset(v76, 0, 19);
        v73 = 0u;
        v74 = 0u;
        memset(v72, 0, sizeof(v72));
        v71 = 0u;
        GPS_BinEph = EE_Get_GPS_BinEph((v29 - 63), a2, &v71);
        v32 = a3[1138];
        if (!GPS_BinEph || (v33 = v71, *(v32 + v29) == 1) && v71 <= *(v30 + 29 * v29))
        {
          *(v32 + v29) = 0;
        }

        else
        {
          v34 = v72[0];
          v35 = v30 + 116 * v29;
          *v35 = v71;
          *(v35 + 1) = v34;
          v36 = v73;
          *(v35 + 2) = v72[1];
          *(v35 + 3) = v36;
          *(v35 + 28) = *&v76[16];
          v37 = *v76;
          *(v35 + 5) = v75;
          *(v35 + 6) = v37;
          *(v35 + 4) = v74;
          *(a3[1133] + v29) = 1;
          *(v32 + v29) = 1;
          v38 = v61 + 6 * v29;
          *v38 = 16777472;
          *(v38 + 4) = 256;
          *(v60 + 2 * v29) = 256;
          *v68 = 0u;
          v67 = 0u;
          v66 = 0u;
          v65 = 0u;
          v64[0] = v33;
          v64[1] = DWORD1(v71);
          LOBYTE(v65) = BYTE8(v71);
          v39 = 21;
          v40 = 11;
          v41 = v72 + 8;
          *(&v65 + 1) = *(&v71 + 9);
          do
          {
            v42 = v64 + v40;
            *v42 = *v41;
            *(v42 + 1) = *(v41 + 1);
            v41 += 4;
            --v39;
            v40 += 3;
          }

          while (v39 > 1);
          *&v68[15] = *&v76[12];
          v69 = *&v76[14];
          v70 = v76[18];
          Debug_Log_GPS_Eph(2, v29 + 193, v64);
        }

        v28 = a4;
      }

      ++v29;
    }

    while (v29 != 10);
  }

  v43 = 0;
  v71 = 0u;
  memset(v72, 0, 28);
  do
  {
    if (*(a3[1139] + v43) != 1 || a2 - *(v62 + 11 * v43) >= 1801)
    {
      *(&v71 | 0xC) = 0u;
      *((&v71 | 0xC) + 0x10) = 0u;
      if (Core_Get_QZSS_Alm((v43 - 63), a2, &v71))
      {
        v44 = a3[1139];
        if (*(v44 + v43) != 1 || v71 > *(v62 + 11 * v43))
        {
          v45 = a3[1129];
          if ((*(v45 + v43) & 1) == 0)
          {
            v46 = a3[1137];
            if (*(v46 + v43) == 1 && *(v63 + 29 * v43) + 100 < a2)
            {
              *(a3[1133] + v43) = 0;
              *(v46 + v43) = 0;
              v47 = v61 + 6 * v43;
              *v47 = 16777472;
              *(v47 + 4) = 256;
              *(v60 + 2 * v43) = 256;
            }
          }

          v48 = (v62 + 44 * v43);
          v49 = v72[0];
          *v48 = v71;
          v48[1] = v49;
          *(v48 + 28) = *(v72 + 12);
          *(a3[1134] + v43) = 1;
          *(v44 + v43) = 1;
          *(v45 + v43) = 1;
          if (a2 >= 1)
          {
            Core_Save_QZSS_Alm((v43 - 63), 0, v48);
            v45 = a3[1129];
          }

          v50 = 0;
          LODWORD(v51) = 0;
          v52 = p_NV;
          v53 = *(v45 + 8);
          *(p_NV + 6092) = *v45;
          *(v52 + 6100) = v53;
          v54 = 55665;
          do
          {
            v55 = *(v52 + 6088 + v50) ^ BYTE1(v54);
            v54 = 52845 * (v54 + v55) + 22719;
            v51 = (v51 + v55);
            ++v50;
          }

          while (v50 != 40);
          *(v52 + 6080) = v51;
          *(v59 + v43) = -1;
        }
      }
    }

    ++v43;
  }

  while (v43 != 10);
  v56 = *MEMORY[0x29EDCA608];
}

uint64_t Hal34_InitPciGnssDevice(_DWORD *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = 4;
  do
  {
    result = Hal29_GetGNSSProxyStatus();
    if (!result)
    {
      g_HalState = 0;
      goto LABEL_8;
    }

    --v2;
  }

  while (v2);
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Proxy status failure\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal34_InitPciGnssDevice");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  *a1 = 6;
  result = 4294967290;
LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::setPVTMReport(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a9 + 24))
  {
    v16 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_4;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a9);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v21, a8);
    v21[32] = a2;
    v21[33] = a3;
    v21[34] = a4;
    v21[35] = a5;
    v21[36] = a6;
    v21[37] = a7;
    dispatch_async(v16, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v21);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v17 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "setPVTMReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v44[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPVTMReport_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 96))
    {
      if (*(v2 + 89) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v38, "setPVTMReport_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v4 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setPVTMReport_block_invoke", 2056);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v5 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setPVTMReport_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        v10 = *(a1 + 105);
        if ((*(a1 + 104) | *(a1 + 107) | *(a1 + 108) | *(a1 + 109) | v10 | *(a1 + 106)))
        {
          if ((v10 & 1) != 0 || !*(a1 + 106))
          {
            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](__str, a1 + 72);
            v15 = v2 + 168;
            if (__str != (v2 + 168))
            {
              v16 = v43;
              v17 = *(v2 + 192);
              if (v43 == __str)
              {
                if (v17 == v15)
                {
                  (*(*v43 + 24))();
                  (*(*v43 + 32))(v43);
                  v43 = 0;
                  (*(**(v2 + 192) + 24))(*(v2 + 192), __str);
                  (*(**(v2 + 192) + 32))(*(v2 + 192));
                  *(v2 + 192) = 0;
                  v43 = __str;
                  (*(v44[0] + 24))(v44, v2 + 168);
                  (*(v44[0] + 32))(v44);
                }

                else
                {
                  (*(*v43 + 24))();
                  (*(*v43 + 32))(v43);
                  v43 = *(v2 + 192);
                }

                *(v2 + 192) = v15;
              }

              else if (v17 == v15)
              {
                (*(*v17 + 24))(*(v2 + 192), __str);
                (*(**(v2 + 192) + 32))(*(v2 + 192));
                *(v2 + 192) = v43;
                v43 = __str;
              }

              else
              {
                v43 = *(v2 + 192);
                *(v2 + 192) = v16;
              }
            }

            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](__str);
            *__str = v2 + 144;
            v42 = 0;
            std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(__str, 8uLL);
            v18 = 2;
            if (!*(a1 + 105))
            {
              v18 = 0;
            }

            v19 = v18 | *(a1 + 104);
            v20 = 4;
            if (!*(a1 + 106))
            {
              v20 = 0;
            }

            v21 = v19 | v20;
            v22 = 8;
            if (!*(a1 + 107))
            {
              v22 = 0;
            }

            v23 = 16;
            if (!*(a1 + 108))
            {
              v23 = 0;
            }

            v24 = v21 | v22 | *(v2 + 144) & 0xFFFFFFFFFFFFFF80;
            v25 = 64;
            if (*(a1 + 109))
            {
              v25 = 96;
            }

            *(v2 + 144) = v25 | v23 | v24;
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v35, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
            if (g_LbsOsaTrace_Config > 3)
            {
              bzero(__str, 0x3C6uLL);
              v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
              v27 = *(a1 + 109) ? 84 : 70;
              v28 = *(a1 + 108) ? 84 : 70;
              v29 = *(a1 + 107) ? 84 : 70;
              v30 = *(a1 + 106) ? 84 : 70;
              v31 = *(a1 + 105) ? 84 : 70;
              v32 = *(a1 + 104) ? 84 : 70;
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Pvt,%c,Meas,%c,ExtMeas,%c,SvInfo,%c,BandCor,%c,TimeCon,%c\n", v26, "ADP", 73, "setPVTMReport_block_invoke", v32, v31, v30, v29, v28, v27);
              gnssOsa_PrintLog(__str, 4, 1, 0);
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v33 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "setPVTMReport_block_invoke");
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v11 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM Invalid measReq\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setPVTMReport_block_invoke", 515);
              gnssOsa_PrintLog(__str, 1, 1, 0);
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v12 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setPVTMReport_block_invoke");
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v37, "setPVTMReport_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v13 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM No valid flags\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "setPVTMReport_block_invoke", 515);
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v14 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setPVTMReport_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v39, "setPVTMReport_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM CB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setPVTMReport_block_invoke", 513);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 68, "setPVTMReport_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v40, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v40, "setPVTMReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v40);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setPVTMReport_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setPVTMReport_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_298F6A618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a4);
    v10[4] = a2;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v11, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v11);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setNmeaHandler", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v30[3] = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNmeaHandler_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v26, "setNmeaHandler_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setNmeaHandler_block_invoke", 2056);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "setNmeaHandler_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NmeaMask,%llu\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "setNmeaHandler_block_invoke", a1[9]);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if (a1[9] < 0x400uLL)
      {
        std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](__str, (a1 + 10));
        v11 = v2 + 264;
        if (__str != (v2 + 264))
        {
          v12 = v29;
          v13 = *(v2 + 288);
          if (v29 == __str)
          {
            if (v13 == v11)
            {
              (*(*v29 + 24))();
              (*(*v29 + 32))(v29);
              v29 = 0;
              (*(**(v2 + 288) + 24))(*(v2 + 288), __str);
              (*(**(v2 + 288) + 32))(*(v2 + 288));
              *(v2 + 288) = 0;
              v29 = __str;
              (*(v30[0] + 24))(v30, v2 + 264);
              (*(v30[0] + 32))(v30);
            }

            else
            {
              (*(*v29 + 24))();
              (*(*v29 + 32))(v29);
              v29 = *(v2 + 288);
            }

            *(v2 + 288) = v11;
          }

          else if (v13 == v11)
          {
            (*(*v13 + 24))(*(v2 + 288), __str);
            (*(**(v2 + 288) + 32))(*(v2 + 288));
            *(v2 + 288) = v29;
            v29 = __str;
          }

          else
          {
            v29 = *(v2 + 288);
            *(v2 + 288) = v12;
          }
        }

        std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](__str);
        if (a1[13] && (v14 = a1[9]) != 0)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Request NMEA\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v14 = a1[9];
          }

          v16 = Gnm_RegisterNmeaUpdates(v14, gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB);
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NMEA CB null kGaNmeaNone\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          v16 = Gnm_RegisterNmeaUpdates(0, 0);
        }

        v18 = v16;
        if (v16)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v18, v24, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v19 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SetNmea,%u\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setNmeaHandler_block_invoke", 257, v18);
            gnssOsa_PrintLog(__str, 1, 1, 0);
            if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v20 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setNmeaHandler_block_invoke");
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v23, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v21 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v25, "setNmeaHandler_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Mask,%llu\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setNmeaHandler_block_invoke", 515, a1[9]);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v10 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "setNmeaHandler_block_invoke");
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v27, "setNmeaHandler_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setNmeaHandler_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "setNmeaHandler_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  v22 = *MEMORY[0x29EDCA608];
}