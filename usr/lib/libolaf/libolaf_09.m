uint64_t API_Get_Raw_Meas_Data(void *a1)
{
  v210 = *MEMORY[0x29EDCA608];
  v170 = a1 + 6409;
  bzero(a1, 0x288F8uLL);
  v179 = *(p_api + 32);
  v2 = *(p_api + 72);
  v3 = *(p_api + 16);
  v4 = *(p_api + 56);
  v171 = v4 + 33548;
  v172 = *(p_api + 48);
  v168 = v4 + 24368;
  v167 = (v4 + 16224);
  v155 = (v4 + 8456);
  v169 = *(p_api + 88);
  v5 = *(p_api + 104);
  v182 = *(p_api + 96);
  v183 = v4;
  v6 = *(p_api + 176);
  v7 = *(p_api + 232);
  *a1 = 1000000 * *(v172 + 8);
  if (*(v2 + 248))
  {
    a1[1] = *(v2 + 160);
    a1[2] = *(v2 + 232);
    *(a1 + 3) = vmulq_f64(vsqrtq_f64(*(v6 + 56)), vdupq_n_s64(0x400AAF6485FFABE7uLL));
    *(a1 + 5) = *(v2 + 224) * *(v2 + 224);
    *(a1 + 6) = *(v2 + 208) * *(v2 + 208);
  }

  v180 = a1;
  v181 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 14) = 0;
  v165 = a1 + 9;
  v161 = a1 + 6430;
  v162 = v5 + 1232;
  v163 = v2;
  v159 = v7 + 4832;
  v11 = 10408;
  v160 = v7 + 10408;
  v156 = v7 + 7616;
  v166 = v7;
  v158 = v7 + 6848;
  v12 = -2688;
  v13 = 3296;
  v173 = v5;
  do
  {
    v14 = v3 + v9;
    v15 = *(v3 + v9 + 2720);
    if (!*(v3 + v9 + 2720))
    {
      goto LABEL_140;
    }

    v16 = *(v14 + 2722);
    if (v15 != 2 && v16 == 0)
    {
      goto LABEL_140;
    }

    if (v15 != *(v5 + v8 + 76))
    {
      goto LABEL_140;
    }

    v18 = v3 + v9;
    if (*(v3 + v9 + 2721) != *(v5 + v8 + 77) || *(v18 + 2723) != *(v5 + v8 + 79) || *(v14 + 2722) && v16 != *(v5 + v8 + 78))
    {
      goto LABEL_140;
    }

    v19 = v180[4].u16[0];
    if (v19 > 0xFF)
    {
      break;
    }

    v175 = (v14 + 2720);
    v20 = &v165[25 * v180[4].u16[0]];
    v180[4].i16[0] = v19 + 1;
    *v20 = -1;
    v164 = v5 + v8;
    v21 = 0;
    switch(*(v18 + 2721))
    {
      case 0:
        v22 = *v175;
        if (v22 >= 7)
        {
          v23 = 5136;
          goto LABEL_28;
        }

        v21 = dword_29972A578[v22];
        break;
      case 1:
        v21 = 1;
        break;
      case 2:
        v21 = 2;
        break;
      case 3:
        v21 = 3;
        break;
      case 4:
        v21 = 4;
        break;
      case 5:
      case 6:
      case 7:
      case 0xE:
        break;
      case 8:
        v21 = 7;
        break;
      case 9:
      case 0xA:
      case 0xB:
        v21 = 8;
        break;
      case 0xC:
        v21 = 5;
        break;
      case 0xD:
        v21 = 6;
        break;
      default:
        v23 = 5156;
LABEL_28:
        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", v23);
        v21 = 0;
        break;
    }

    *(v20 + 1) = v21;
    v24 = *v175;
    v157 = v3 + v9;
    if (v24 <= 2)
    {
      if (!*v175)
      {
        *(v20 + 2) = 0;
        goto LABEL_46;
      }

      if (v24 != 1 && v24 != 2)
      {
LABEL_42:
        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 0x1434u);
        goto LABEL_46;
      }
    }

    else if (*v175 > 4u)
    {
      if (v24 == 5)
      {
        v24 = 3;
      }

      else
      {
        if (v24 != 6)
        {
          goto LABEL_42;
        }

        v24 = 4;
      }
    }

    else if (v24 == 3)
    {
      v24 = 6;
    }

    else
    {
      if (v24 != 4)
      {
        goto LABEL_42;
      }

      v24 = 5;
    }

    *(v20 + 2) = v24;
LABEL_46:
    v25 = GM_Gen_SV_Meas_QI(v175);
    if (*v175 == 2)
    {
      v27 = *(v157 + 2723);
    }

    else
    {
      v27 = *(v14 + 2722);
    }

    *(v20 + 6) = v27;
    v28 = *(v172 + 24) * 1000000000.0;
    v20[4] = v28;
    v29 = v3 + v12;
    v30 = *(v3 + v12 + 2754);
    v31 = v28 - 1000000 * v30;
    v20[3] = v31;
    v32 = v3 + v9;
    v33 = *(v3 + v9 + 2742);
    v34 = *(v3 + v9 + 2740);
    if (v34 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = *(v3 + v9 + 2740);
    }

    v20[2] = v31 - ((1000000 * v33 * v35) & 0xFFFFFFC0);
    v36 = *(v32 + 2728);
    if ((v36 & 0x200) != 0)
    {
      v37 = 9;
    }

    else
    {
      v37 = 1;
    }

    if ((~v36 & 0x300) != 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 15;
    }

    *(v20 + 40) = v38;
    v39 = *(v29 + 2768) * 1000000000.0;
    *(v20 + 6) = v39;
    if (v25 >= 0xA && *(v32 + 2730))
    {
      v153 = v25;
      GNSS_PR_Meas_Var = API_Get_GNSS_PR_Meas_Var(v175, v30, *(v3 + v12 + 2758), *(v166 + v10 + 978));
      v32 = v3 + v9;
      v41 = GNSS_PR_Meas_Var;
      v25 = v153;
      v39 = sqrt(v41) * 3.33564095;
      *(v20 + 7) = v39;
      LOBYTE(v33) = *(v3 + v9 + 2742);
      LOWORD(v34) = *(v3 + v9 + 2740);
    }

    else
    {
      v20[7] = 0x42374876E8000000;
    }

    v5 = v173;
    LOBYTE(v39) = *(v173 + v10 + 604);
    LOBYTE(v26) = *(v173 + v10 + 652);
    *&v42 = v26;
    v43 = *&v39 + *&v42 * 0.0625;
    *(v20 + 8) = v43;
    LOBYTE(v43) = *(v173 + v10 + 700);
    LOBYTE(v42) = *(v173 + v10 + 748);
    *(v20 + 9) = *&v43 + v42 * 0.0625;
    *(v20 + 88) = v33;
    *(v20 + 45) = v34;
    *(v20 + 12) = *(v3 + v12 + 2732) * 0.00247949753;
    v44 = *(v3 + v12 + 2736);
    *(v20 + 14) = v44 * 0.00247949753;
    if (v25 >= 0xA && (v45 = v3 + v9, *(v3 + v9 + 2732)))
    {
      v154 = v44;
      v46 = *(v166 + v10 + 978);
      v47 = *(v29 + 2754);
      v48 = *(v45 + 2724);
      if (v48 >= 0x2B)
      {
        v49 = 43;
      }

      else
      {
        v49 = *(v45 + 2724);
      }

      v50 = v25;
      NK_Get_DO_Meas_Var(*v175, v49, (v49 - v48 + *(v45 + 2725)), *(v3 + v12 + 2758), (*(v3 + v9 + 2732) / 5u) & 0x3FFE, (*(v45 + 2734) / 5u) & 0x3FFE, *(v173 + 4 * v10 + 412), ((52429 * v47) >> 18) & 0x3FFE, *(v32 + 2728), v193);
      v44 = v154;
      v25 = v50;
      v5 = v173;
      v52 = sqrt(v51 * 0.25) * 3.33564095;
      if (v52 < 1.0)
      {
        v52 = 1.0;
      }

      *(v20 + 13) = v52;
    }

    else
    {
      v20[13] = 0x40F869FFFFFFFFFFLL;
      v52 = 100000.0;
    }

    v53 = -1.0;
    if (!v44)
    {
      v52 = -1.0;
    }

    *(v20 + 15) = v52;
    v20[16] = 0x300000002;
    *(v20 + 68) = v10;
    *(v20 + 140) = v25 > 9;
    *(v20 + 38) = 0;
    v54 = v164;
    if (v25 < 0xF || (v55 = *(v3 + v9 + 2734), v55 < 0x15))
    {
      v20[23] = 0x42374876E8000000;
    }

    else
    {
      *(v20 + 21) = v20[4];
      LOWORD(v53) = *(v3 + v12 + 2740);
      *(v20 + 22) = (*(v3 + v12 + 2744) + v53 * 0.0000152587891) * 0.634751368;
      if (*(v3 + v9 + 2724) >= 0x2Bu)
      {
        v56 = 43;
      }

      else
      {
        v56 = *(v3 + v9 + 2724);
      }

      DR_Meas_Var = NK_Get_DR_Meas_Var(*v175, v56, *(v3 + v12 + 2758), ((52429 * v55) >> 18) & 0x3FFE, v193);
      v54 = v164;
      v5 = v173;
      *(v20 + 23) = sqrt(DR_Meas_Var * 0.25) * 3.33564095;
      if (*(v163 + 948) + 100 >= v55)
      {
        v58 = 1;
      }

      else
      {
        v58 = 2;
      }

      *(v20 + 38) = v58;
    }

    v59 = *(v3 + v12 + 2761);
    if (v59 == 255)
    {
      *(v20 + 48) = 0;
    }

    else
    {
      if (v59 > 9)
      {
        v60 = 1;
      }

      else
      {
        v60 = 2;
      }

      *(v20 + 48) = v60;
    }

    *(v20 + 49) = *(v3 + v9 + 2730);
    v61 = *v175;
    if (v61 != 6)
    {
      if (v61 == 2)
      {
        v62 = *(v54 + 78);
        if (!v62)
        {
          if (*(v183 + 16432 + 4 * *(v157 + 2723) + 28) == 2139062143)
          {
            goto LABEL_140;
          }

          v62 = *(v183 + 16432 + 4 * *(v157 + 2723) + 28);
          if (!v62)
          {
            goto LABEL_140;
          }
        }

        *(v14 + 2722) = v62;
      }

      else
      {
        v62 = 0;
      }

      v63 = GNSS_Id_To_Num_Pos_Idx(*v175);
      v5 = v173;
      if (!v182 || !*(v182 + 192 * v63 + 184))
      {
        goto LABEL_140;
      }

      v64 = *(v170 + 80);
      if (v64 > 0xFF)
      {
        break;
      }

      v65 = &v161[13 * *(v170 + 80)];
      *v65 = v180[4].i8[0] - 1;
      *v20 = v64;
      *(v170 + 80) = v64 + 1;
      *(v65 + 1) = v62;
      if (*v175 == 2)
      {
        v66 = *(v183 + 16488 + 4 * *(v157 + 2723) + 28);
        if (v66 > 1)
        {
          v67 = v166;
          if (v66 == 2)
          {
            v68 = 3;
          }

          else
          {
            if (v66 != 3)
            {
              goto LABEL_108;
            }

            v68 = 4;
          }

LABEL_111:
          *(v65 + 1) = v68;
        }

        else
        {
          v67 = v166;
          if (v66)
          {
            if (v66 == 1)
            {
              v68 = 2;
              goto LABEL_111;
            }

LABEL_108:
            *(v65 + 1) = 0;
            EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 0x1568u);
            v5 = v173;
          }

          else
          {
            *(v65 + 1) = 0;
          }
        }
      }

      else
      {
        *(v65 + 1) = 1;
        v67 = v166;
      }

      v69 = *v175;
      if (v69 == 4)
      {
        v70 = *(v5 + 24) + -14.0 + *(v162 + 8 * v10) * -0.00000000333564095;
        v71 = 604800.0;
        goto LABEL_116;
      }

      if (v69 == 2)
      {
        v70 = *(v5 + 64) + *(v162 + 8 * v10) * -0.00000000333564095;
        v71 = 86400.0;
LABEL_116:
        v72 = v70 + v71;
        if (v70 < 0.0)
        {
          v70 = v72;
        }
      }

      else
      {
        v70 = *(v5 + 24) + *(v162 + 8 * v10) * -0.00000000333564095;
      }

      v73 = v70 * 1000000000.0;
      if (v73 < 0.0)
      {
        v73 = v73 + 6.048e14;
      }

      *(v65 + 1) = v73;
      v74 = v67 + v10;
      v75 = *(v67 + v10 + 2960);
      if (v75 == 1)
      {
        v76 = sqrt(*(v67 + v13) + *(v67 + v13 + 8));
        *(v65 + 10) = v76;
        *(v65 + 2) = v76 * 3.33564095;
        v65[4] = *(v159 + 8 * v10);
      }

      *(v65 + 6) = 0;
      v77 = v160 + v10;
      v78 = (v160 + v10 - 1872);
      v79 = *v78;
      if (v79 == 1)
      {
        v65[5] = *(v166 + v11);
      }

      if (*(v77 + 3704) == 1)
      {
        v65[6] = *(v166 + v11 + 5576);
      }

      if (v75 && (v80 = *(v166 + 4 * v10 + 3056), (v80 - 1) >= 0x1D))
      {
        if (v80)
        {
          v176 = v74;
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
          v74 = v176;
          v5 = v173;
          if (*v78)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v65[7] = *(v156 + 8 * v10);
          if (v79)
          {
            goto LABEL_131;
          }
        }
      }

      else if (v79)
      {
LABEL_131:
        v81 = *(v166 + v8 + 8632);
        if ((v81 - 1) >= 0x1D)
        {
          if (v81)
          {
            v177 = v74;
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            v74 = v177;
            v5 = v173;
          }

          else
          {
            v65[8] = *(v166 + v11 + 2784);
          }
        }
      }

      if (*(v77 + 3704) == 1)
      {
        v82 = *(v166 + v8 + 14208);
        if ((v82 - 1) >= 0x1D)
        {
          if (v82)
          {
            v178 = v74;
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
            v74 = v178;
            v5 = v173;
          }

          else
          {
            v65[9] = *(v166 + v11 + 8360);
          }
        }
      }

      if (*(v74 + 2960) == 1)
      {
        *(v65 + 10) = sqrt(*(v158 + 8 * v10));
      }

      if (*v78 == 1)
      {
        *(v65 + 11) = sqrt(*(v166 + v11 + 2016));
      }

      if (*(v77 + 3704) == 1)
      {
        *(v65 + 12) = sqrt(*(v166 + v11 + 7592));
      }
    }

LABEL_140:
    ++v10;
    v9 += 36;
    v8 += 4;
    v11 += 8;
    v13 += 24;
    v12 += 56;
  }

  while (v10 != 48);
  v83 = 0;
  v84 = v180;
  v85 = (v171 + 252);
  v86 = 0.5;
  v174 = vdupq_n_s64(0x41CDCD6500000000uLL);
  do
  {
    Constell_Prn = Get_Constell_Prn(v83);
    v88 = Num_Prn_Idx_To_GNSS_Id(v83);
    v89 = v88;
    if (Constell_Prn == 2)
    {
      v90 = *(v183 + 16336 + 4 * v88 - 4);
      if (v90 == 2139062143)
      {
        goto LABEL_259;
      }
    }

    else
    {
      if (Constell_Prn == 6)
      {
        break;
      }

      LOBYTE(v90) = 0;
    }

    v91 = Num_Prn_Idx_To_Num_Pos_Idx(v83);
    if (v91 - 1 <= 0x93)
    {
      v92 = v182 + 192 * v91;
      if (*(v92 + 184))
      {
        v93 = v84[4879].u16[0];
        if (v93 > 0xFF)
        {
          break;
        }

        v94 = &v180[4879].i64[43 * v84[4879].u16[0] + 1];
        v84[4879].i16[0] = v93 + 1;
        v95 = Constell_Prn;
        if (Constell_Prn <= 2u)
        {
          if (Constell_Prn == 1)
          {
            goto LABEL_171;
          }

          if (Constell_Prn == 2)
          {
            *v94 = 2;
            v96 = v90;
            v97 = v89;
            goto LABEL_173;
          }
        }

        else
        {
          switch(Constell_Prn)
          {
            case 3u:
              v95 = 6;
              goto LABEL_171;
            case 4u:
              v95 = 5;
              goto LABEL_171;
            case 5u:
              v95 = 3;
LABEL_171:
              *v94 = v95;
LABEL_172:
              v97 = 0;
              v96 = v89;
LABEL_173:
              *(v94 + 4) = v96;
              *(v94 + 6) = v97;
              v98 = sqrt(*(v92 + 112) * v86);
              *(v94 + 144) = v98;
              *(v94 + 152) = v98 * 3.33564095;
              v99 = *(v85 - 4);
              if (v99 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 0x1338u);
                v99 = 0;
              }

              *(v94 + 160) = v99;
              v100 = *(v85 - 3);
              if (v100 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 0x1338u);
                v100 = 0;
              }

              *(v94 + 164) = v100;
              v101 = *(v85 - 2);
              if (v101 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 0x1338u);
                v101 = 0;
              }

              *(v94 + 168) = v101;
              v102 = *(v85 - 1);
              if (v102 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 0x1338u);
                v102 = 0;
              }

              *(v94 + 172) = v102;
              v103 = *v85;
              if (*v85 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 0x1338u);
                v103 = 0;
              }

              *(v94 + 176) = v103;
              v189 = *(v179 + v83);
              v104 = v179 + 8 * v83;
              v105 = *(v104 + 536);
              v106 = v105 * 57.2957795;
              v191 = v105;
              v192 = v105 * 57.2957795;
              v107 = __sincos_stret(v105);
              v190 = v107;
              v184 = *(v179 + 2 * v83 + 178);
              v187 = *(v104 + 1960);
              v188 = v187 * 57.2957795;
              v185 = sin(v187);
              cosval = v107.__cosval;
              v108 = *(v181 + 1496);
              if (v108 > 0.0 && v106 >= 0.0)
              {
                Trop_Elev_MapF(&v189);
                *(v94 + 184) = v108 * v109;
              }

              *(v94 + 192) = 1;
              if ((Constell_Prn - 1) >= 5u)
              {
                EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 0x167Du);
                v112 = 0;
                v111 = 15;
              }

              else
              {
                v110 = (Constell_Prn - 1);
                v111 = qword_29972A598[v110];
                v112 = dword_29972A5C0[v110];
              }

              *(v94 + 196) = v112;
              v113 = 0.0;
              v114 = 0.0;
              if (*(v183 + 8428))
              {
                v114 = 0.0;
                if (v192 >= 0.0)
                {
                  v114 = GPS_Klob_Iono_Delay((v169 + 208), &v184, &v189, (v183 + 8424), *(v172 + 24)) * g_GPS_L1_Iono_SF_Table[v111];
                }
              }

              *(v94 + 216) = v114;
              if (v112 > 4)
              {
                v84 = v180;
                if (v112 == 5)
                {
                  v115 = *(v181 + 7320);
                  v116 = *(v181 + 7328);
                  *&v193[0] = 0;
                  if (!R8_EQ((v169 + 160), v193))
                  {
                    v204 = 0.0;
                    v121 = R8_EQ((v169 + 144), &v204);
                    v118 = 0.0;
                    v119 = 0.0;
                    if (!v121)
                    {
                      v118 = (*(v169 + 160) - *(v169 + 144)) * 299792458.0;
                      *&v197 = 0;
                      v195 = 0u;
                      v196 = 0u;
                      v194 = 0u;
                      memset(v193, 0, sizeof(v193));
                      v209 = 0u;
                      v208 = 0u;
                      v207 = 0u;
                      v206 = 0u;
                      v205 = 0u;
                      *&v201[2] = 0;
                      *v201 = 0x3FF0000000000000;
                      v202 = 0xBFF0000000000000;
                      *v203 = 0.0;
                      v204 = -1.0;
                      mapu(v201, 1, 1u, 3, (v181 + 344), 0xBu, v193, 1, &v204, v203);
                      goto LABEL_208;
                    }

LABEL_209:
                    v113 = v115 - v118;
                    v120 = sqrt(v116 + v119);
                    v86 = 0.5;
LABEL_210:
                    *(v94 + 248) = v113;
                    *(v94 + 280) = v120;
                    *(v94 + 312) = *(v92 + 120) * 1000000000.0;
                    if (Constell_Prn <= 2u)
                    {
                      if (Constell_Prn == 1)
                      {
                        LODWORD(v122) = (v89 - 1);
                        v123 = *(v183 + 3560 + 108 * (v89 - 1) + 4);
                        v124 = *(v183 + 104 + 108 * (v89 - 1) + 4);
                        v125 = v183 + 7016;
                        goto LABEL_222;
                      }

                      if (Constell_Prn != 2)
                      {
                        goto LABEL_247;
                      }

                      v122 = (v89 - 1);
                      v123 = *(v183 + 12760 + 108 * v122 + 4);
                      v125 = v183 + 15352;
                      v124 = *(v183 + 11224 + (v122 << 6) + 4);
                    }

                    else
                    {
                      if (Constell_Prn != 3)
                      {
                        if (Constell_Prn == 4)
                        {
                          LODWORD(v122) = (v89 - 1);
                          v123 = *(v183 + 28220 + 100 * (v89 - 1) + 4);
                          v124 = *(v183 + 24520 + 100 * (v89 - 1) + 4);
                          v125 = v183 + 31920;
                          goto LABEL_222;
                        }

                        if (Constell_Prn == 5)
                        {
                          LODWORD(v122) = (v89 + 63);
                          v123 = *(v183 + 9688 + 108 * (v89 + 63) + 4);
                          v124 = *(v183 + 8608 + 108 * (v89 + 63) + 4);
                          v125 = v183 + 10768;
LABEL_222:
                          v126 = 44;
                          goto LABEL_223;
                        }

LABEL_247:
                        *(v94 + 8) = 0;
                        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 0x1743u);
                        v135 = 0;
                        v130 = *(v92 + 164);
                        goto LABEL_250;
                      }

                      LODWORD(v122) = (v89 - 1);
                      v123 = *(v183 + 19904 + 88 * (v89 - 1) + 4);
                      v124 = *(v183 + 16736 + 88 * (v89 - 1) + 4);
                      v125 = v183 + 23072;
                    }

                    v126 = 36;
LABEL_223:
                    v127 = *(v125 + v122 * v126 + 4);
                    if (v124)
                    {
                      v127 = v124;
                    }

                    if (v123 == 6)
                    {
                      v128 = 4;
                    }

                    else if (v127 < 7 && ((0x79u >> v127) & 1) != 0)
                    {
                      v128 = dword_29972A5D4[v127];
                    }

                    else
                    {
                      EvCrt_Illegal_Default("Set_e_GN_RM_SV_Pos_Src", 0x1393u);
                      v128 = 0;
                    }

                    *(v94 + 8) = v128;
                    v129 = *(v92 + 164);
                    v130 = *(v92 + 164);
                    if (Constell_Prn <= 2u)
                    {
                      if (Constell_Prn != 1)
                      {
                        v136 = *(v92 + 172);
                        v137 = *(v92 + 168);
                        if (v136 > 0 || v137 >= 1)
                        {
                          v138 = v136 + 1461 * *(v92 + 174);
                        }

                        else
                        {
                          *&v193[0] = 0;
                          API_Get_UTC_Cor(1, v193);
                          v201[0] = 0;
                          v203[0] = 0;
                          v204 = 0.0;
                          v130 = *(v92 + 164);
                          GPS_To_Glon_Time(0, v130, *(v92 + 160), *v193, v201, v203, &v204);
                          v138 = v203[0] + 1461 * v201[0];
                          v137 = v204;
                        }

                        v135 = v137 + 86400 * v138 - 126316800;
                        goto LABEL_250;
                      }
                    }

                    else if (Constell_Prn == 3)
                    {
                      v129 -= 1024;
                    }

                    else if (Constell_Prn == 4)
                    {
                      v131 = *(v92 + 160);
                      if (v131 < 14)
                      {
                        v132 = -1357;
                      }

                      else
                      {
                        v132 = -1356;
                      }

                      v133 = v132 + v129;
                      if (v131 >= 14)
                      {
                        v134 = -14;
                      }

                      else
                      {
                        v134 = 604786;
                      }

                      v135 = v134 + v131 + 604800 * v133;
                      goto LABEL_250;
                    }

                    v135 = *(v92 + 160) + 604800 * v129;
LABEL_250:
                    *(v94 + 16) = v135;
                    v199 = 0;
                    v200 = 0;
                    memset(v193, 0, sizeof(v193));
                    v194 = 0u;
                    v195 = 0u;
                    v196 = 0u;
                    v197 = 0u;
                    memset(v198, 0, sizeof(v198));
                    if (Comp_CurrState(0x1Eu, v130, v92, v193, *(v92 + 160) + -15.0, 0.0))
                    {
                      *(v94 + 24) = *(v193 + 8);
                      *(v94 + 40) = *(&v193[1] + 1);
                    }

                    if (Comp_CurrState(0x1Eu, *(v92 + 164), v92, v193, *(v92 + 160) + -5.0, 0.0))
                    {
                      *(v94 + 48) = *(v193 + 8);
                      *(v94 + 64) = *(&v193[1] + 1);
                    }

                    if (Comp_CurrState(0x1Eu, *(v92 + 164), v92, v193, *(v92 + 160) + 5.0, 0.0))
                    {
                      *(v94 + 72) = *(v193 + 8);
                      *(v94 + 88) = *(&v193[1] + 1);
                    }

                    if (Comp_CurrState(0x1Eu, *(v92 + 164), v92, v193, *(v92 + 160) + 15.0, 0.0))
                    {
                      *(v94 + 96) = *(v193 + 8);
                      *(v94 + 112) = *(&v193[1] + 1);
                    }

                    *(v94 + 120) = vmulq_f64(*(v92 + 96), v174);
                    *(v94 + 136) = 0;
                    goto LABEL_259;
                  }

LABEL_204:
                  v118 = 0.0;
                  v119 = 0.0;
                  goto LABEL_209;
                }

                if (v112 == 7)
                {
                  v113 = *(v181 + 7304);
                  v120 = sqrt(*(v181 + 7312));
                  goto LABEL_210;
                }
              }

              else
              {
                v84 = v180;
                if (v112 == 1)
                {
LABEL_202:
                  v120 = 0.0;
                  goto LABEL_210;
                }

                if (v112 == 4)
                {
                  v115 = *(v181 + 7288);
                  v116 = *(v181 + 7296);
                  *&v193[0] = 0;
                  if (!R8_EQ((v169 + 152), v193))
                  {
                    v204 = 0.0;
                    v117 = R8_EQ((v169 + 144), &v204);
                    v118 = 0.0;
                    v119 = 0.0;
                    if (!v117)
                    {
                      v118 = (*(v169 + 152) - *(v169 + 144)) * 299792458.0;
                      *&v197 = 0;
                      v195 = 0u;
                      v196 = 0u;
                      v194 = 0u;
                      memset(v193, 0, sizeof(v193));
                      v209 = 0u;
                      v208 = 0u;
                      v207 = 0u;
                      v206 = 0u;
                      v205 = 0u;
                      *v201 = xmmword_29972A490;
                      *v203 = 0.0;
                      v204 = -1.0;
                      mapu(v201, 1, 1u, 2, (v181 + 344), 0xBu, v193, 1, &v204, v203);
LABEL_208:
                      v119 = *v203 * *v203;
                      goto LABEL_209;
                    }

                    goto LABEL_209;
                  }

                  goto LABEL_204;
                }
              }

              EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 0x16EFu);
              goto LABEL_202;
          }
        }

        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 0x1631u);
        goto LABEL_172;
      }
    }

LABEL_259:
    ++v83;
    v85 += 5;
  }

  while (v83 != 178);
  v139 = *(v169 + 54);
  *v170 = *(v169 + 54);
  *(v170 + 1) = *(v169 + 188);
  *(v170 + 4) = *(v169 + 186);
  if (*(v169 + 52) == 1)
  {
    *(v170 + 3) = v139 - 1356;
    if (*(v169 + 40) < 14.0)
    {
      *(v170 + 3) = v139 - 1357;
    }

    *(v170 + 4) = v139 - 1024;
  }

  if ((*(v183 + 8444) - 3) <= 3)
  {
    v140 = v155[3];
    v141 = v139 - 127;
    if (v141 <= (v140 | 0x400))
    {
      LOWORD(v141) = v140 | 0x400;
    }

    v142 = ((v141 - v140 - 769) & 0xFF00 | v140) + 1024;
    *(v170 + 5) = v142;
    *(v170 + 6) = *(v155 + 2);
    *(v170 + 14) = v155[2];
    *(v170 + 8) = v142;
    *(v170 + 5) = *v155 << 12;
    v143 = *(v183 + 8448);
    v144.i64[0] = v143;
    v144.i64[1] = SHIDWORD(v143);
    v145 = vmulq_f64(vcvtq_f64_s64(v144), xmmword_29972A4A0);
    v84[3206] = vextq_s8(v145, v145, 8uLL);
  }

  if (v167[72] == 1)
  {
    *(v170 + 8) = *(v183 + 16236) * 0.931322575;
    *(v170 + 7) = -*(v183 + 16228) * 0.465661287;
    *(v170 + 50) = v167[8];
    *(v170 + 24) = *v167;
  }

  if ((*(v168 + 4) - 3) <= 3)
  {
    v146 = *(v168 + 13);
    v147 = *(v170 + 4) - 31;
    if (v147 <= v146)
    {
      LOWORD(v147) = *(v168 + 13);
    }

    *(v170 + 36) = ((v147 - v146 + 63) & 0xFFC0) + v146;
    *(v170 + 19) = *v168 % 604800;
    *(v170 + 10) = *(v168 + 8) * 0.0291038305;
    *(v170 + 11) = *(v168 + 10) * 0.00000044408921;
  }

  if ((*(v171 + 4) - 3) <= 3)
  {
    v148 = *v171 - 14;
    if (*v171 <= 14)
    {
      v148 = 0;
    }

    *(v170 + 48) = v148 / 0x93A80;
    *(v170 + 25) = v148 % 0x93A80;
    *(v170 + 13) = *(v171 + 8) * 0.1;
    *(v170 + 14) = *(v171 + 10) * 0.1;
  }

  if (*(v172 + 5) == 1 && *v172)
  {
    v149 = *(v172 + 32);
    v170[15] = llround((*(v172 + 24) - v149) * 1000000000.0) + 604800000000000 * *(v172 + 16) - 1000000 * *(v172 + 8);
    *(v170 + 16) = round(v149 * -1000000000.0) - v149 * -1000000000.0;
    *(v170 + 17) = *(v169 + 848) * 3.33564095;
  }

  v150.f64[0] = *(v172 + 40);
  v150.f64[1] = *(v169 + 888);
  *(v170 + 9) = vmulq_f64(v150, xmmword_29972A4B0);
  v151 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t API_Get_GNSS_PR_Meas_Var(uint64_t a1, unsigned __int16 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 10);
  v5 = *(a1 + 12);
  v6 = *(a1 + 14);
  v7 = *(a1 + 4);
  if (v7 >= 0x2B)
  {
    v8 = 43;
  }

  else
  {
    v8 = *(a1 + 4);
  }

  v9 = v8 - v7 + *(a1 + 5);
  v14 = 999999;
  PR_Meas_Var = NK_Get_PR_Meas_Var(*a1, *(*(p_api + 72) + 65), v8, v9, a3, ((52429 * v4) >> 18) & 0x3FFE, ((52429 * v5) >> 18) & 0x3FFE, ((52429 * v6) >> 18) & 0x3FFE, (a2 / 5u) & 0x3FFE, a4, 0xFFFFFF9D, *(*(p_api + 72) + 60), &v13, &v14);
  v11 = *MEMORY[0x29EDCA608];
  return PR_Meas_Var >> 2;
}

BOOL API_Get_GAD_Data(_DWORD *a1, char a2, int *a3, _WORD *a4, char *a5, int *a6, int *a7, int *a8, _BYTE *a9, uint64_t a10)
{
  v122 = *MEMORY[0x29EDCA608];
  v10 = *(p_api + 88);
  if (a1)
  {
    v11 = *(v10 + 36);
    if (*a1)
    {
      v12 = *a1 == v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v28 = 0;
      goto LABEL_158;
    }

    *a1 = v11;
  }

  v16 = 0;
  v17 = 0;
  v18 = (v10 + 968);
  do
  {
    if (*(v10 + 1496 + v16) != 1)
    {
      goto LABEL_25;
    }

    v19 = *v18;
    if (v19 <= 2)
    {
      if (!*v18)
      {
        goto LABEL_25;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          v17 |= 0x20u;
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      v17 |= 1u;
    }

    else if (*v18 > 4u)
    {
      if (v19 != 5)
      {
        if (v19 == 6)
        {
          v17 |= 4u;
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      v17 |= 0x10u;
    }

    else
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v17 |= 0x40u;
          goto LABEL_25;
        }

LABEL_21:
        EvCrt_Illegal_Default("API_Get_GAD_Data", 0x191Eu);
        goto LABEL_25;
      }

      v17 |= 2u;
    }

LABEL_25:
    ++v16;
    v18 += 4;
  }

  while (v16 != 48);
  *a9 = v17 & a2;
  v20 = *(v10 + 144);
  v21 = (*(v10 + 40) - v20) * 1000.0;
  if (v21 >= 0.0)
  {
    v22 = a7;
    v23 = a8;
    v24 = a6;
    if (v21 >= 604800000.0)
    {
      v21 = v21 + -604800000.0;
    }
  }

  else
  {
    v21 = v21 + 604800000.0;
    v22 = a7;
    v23 = a8;
    v24 = a6;
  }

  v25 = v21;
  *a3 = v21;
  v26 = ((v21 - v21) * 10000.0);
  v27 = *(v10 + 48);
  if (v27 != 11)
  {
    LOWORD(v26) = -1;
  }

  *a4 = v26;
  if ((*a9 & 0x20) != 0 && *(v10 + 180) > v27 || *(v10 + 380) && !*(v10 + 375))
  {
    v29 = (*(v10 + 192) - v20) * 1000.0;
    v30 = -0.5;
    if (v29 > 0.0)
    {
      v30 = 0.5;
    }

    v31 = v29 + v30;
    if (v31 <= 2147483650.0)
    {
      if (v31 >= -2147483650.0)
      {
        v25 = v31;
      }

      else
      {
        v25 = 0x80000000;
      }
    }

    else
    {
      v25 = 0x7FFFFFFF;
    }

    v27 = *(v10 + 180);
    v32 = 32;
    goto LABEL_50;
  }

  *v24 = 1;
  if ((*a9 & 0x15) != 0)
  {
    goto LABEL_51;
  }

  if ((*a9 & 2) != 0)
  {
    v32 = 2;
LABEL_50:
    *v24 = v32;
    goto LABEL_51;
  }

  if ((*a9 & 0x40) != 0)
  {
    *v24 = 64;
    v25 -= 14000;
  }

LABEL_51:
  if ((v25 & 0x80000000) != 0)
  {
    v33 = v25 + 86400000;
  }

  else
  {
    v33 = v25 % 0x5265C00;
  }

  *v22 = v33;
  if (v27 > 5)
  {
    if (v27 > 8)
    {
      switch(v27)
      {
        case 9:
          v34 = 92;
          break;
        case 10:
          v34 = 85;
          break;
        case 11:
          v34 = 78;
          goto LABEL_57;
        default:
          goto LABEL_167;
      }
    }

    else if (v27 == 6)
    {
      v34 = 113;
    }

    else if (v27 == 7)
    {
      v34 = 106;
    }

    else
    {
      v34 = 99;
    }

    goto LABEL_57;
  }

  if (v27 < 4)
  {
    v34 = 127;
    goto LABEL_57;
  }

  if (v27 == 4)
  {
    v34 = 126;
LABEL_57:
    *a5 = v34;
    goto LABEL_58;
  }

  if (v27 == 5)
  {
    v34 = 120;
    goto LABEL_57;
  }

LABEL_167:
  *a5 = 127;
  EvCrt_Illegal_Default("API_Get_GAD_Data", 0x1987u);
LABEL_58:
  v35 = p_api;
  v36 = *(p_api + 8);
  v37 = *(p_api + 72);
  v38 = *(v36 + 4);
  if (!v38)
  {
    goto LABEL_65;
  }

  v39 = *(v36 + 8);
  if (v39 > 0x10000)
  {
    goto LABEL_65;
  }

  v40 = (*(v10 + 168) + 1.0) * (v39 * -0.0000000152587891 + (*(v10 + 32) - v38) * 0.001);
  HIDWORD(v41) = 1078984704;
  if (v40 > 64.0)
  {
    goto LABEL_65;
  }

  LODWORD(v41) = *(v37 + 948);
  if (v40 > v41 * 0.005)
  {
    goto LABEL_65;
  }

  v42 = v40 * 1000000.0;
  v43 = -0.5;
  if (v42 > 0.0)
  {
    v43 = 0.5;
  }

  v44 = v42 + v43;
  if (v44 <= 2147483650.0)
  {
    if (v44 >= -2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x80000000;
    }
  }

  else
  {
LABEL_65:
    v45 = 0x7FFFFFFF;
  }

  *v23 = v45;
  if (*(v37 + 66))
  {
    v46 = (v10 + 952);
    v47 = *(v10 + 936);
  }

  else
  {
    v46 = (v10 + 352);
    v47 = *(v10 + 336);
  }

  v48 = -v47;
  v49 = *(v10 + 36);
  v51 = *(v10 + 208);
  v50 = *(v10 + 216);
  v52 = *(v10 + 224);
  v53 = *(v10 + 960);
  v54 = *(v10 + 896);
  v55 = *(v10 + 904);
  v112 = v55;
  v114 = *(v10 + 912);
  v116 = *(v10 + 824);
  v56 = *(v10 + 856);
  v57 = *(v10 + 864);
  v108 = v53;
  v110 = *v46;
  v58 = *(v35 + 328);
  v59 = *(v10 + 4);
  if (v59 < 3)
  {
    goto LABEL_88;
  }

  v28 = 0;
  if (!*a9 || v54 >= 400.0)
  {
    goto LABEL_89;
  }

  if (*(*(v35 + 232) + 25364) >> 4 > 0x752u)
  {
LABEL_88:
    v28 = 0;
    goto LABEL_89;
  }

  v28 = v59 != 3;
  if (*(v10 + 620) == 1 && *(v58 + 10) == 1 && *(v58 + 704) == 7 && *(v58 + 700) >= 2 && *(v58 + 664) <= 9000000.0)
  {
    *a9 |= 0x80u;
    v28 = 1;
  }

  if (*(v58 + 11) == 1 && *(v58 + 704) == 7 && *(v58 + 700) >= 2)
  {
    v60 = sqrt(*(v58 + 688));
    v104 = *(v58 + 632);
    EvCrt_v("API_Get_GAD_Data: HELO Altitude w.r.t Est Altitude: HELO Alt %f acc %f  Est Alt %f acc %f [1-sigma]", v104, v60, v52, v116);
    if (v60 <= 20.0)
    {
      EvLog_v("API_Get_GAD_Data: Override: Est Altitude Overridden with HELO Altitude.");
      *a9 |= 0x80u;
      v52 = v104;
      v116 = v60;
    }
  }

LABEL_89:
  if (a2 < 0 && !v28)
  {
    EvLog_v("GN_AGNSS_Get_GAD_Data:  No Valid GNSS Fix, but HELO is enabled, checking ...");
    if (*(v58 + 10) == 1 && *(v58 + 704) == 7 && (v61 = *(v58 + 700), v61 >= 2) && (v62 = *(v58 + 664), v62 <= 9000000.0))
    {
      if (v61 == 2)
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        if (!Core_Get_Pos_E911(v49, &v117))
        {
          goto LABEL_95;
        }

        v106 = (*(v58 + 616) - *(&v117 + 1) * 0.0174532925) * 6378137.0;
        v91 = (*(v58 + 624) - *&v118 * 0.0174532925) * 6378137.0;
        v92 = cos(*(&v117 + 1) * 0.0174532925);
        v107 = sqrt(v92 * v91 * (v92 * v91) + v106 * v106);
        v93 = *(v58 + 664);
        v94 = (*(v58 + 608) - v117) * 0.015;
        v95 = sqrt(v93 + *(&v118 + 1) * *(&v118 + 1) + v94 * v94);
        EvCrt_v("API_Get_GAD_Data:  HELO check:  dAge %d  dPos %f  RelSig %f  Acc %f %f", *(v58 + 608) - v117, v107, v95, sqrt(v93), *(&v118 + 1));
        if (v107 > 2000.0 && v107 > v95 * 3.0)
        {
          EvCrt_v("API_Get_GAD_Data:  HELO Rejected:  Too far from E-911 Ref Pos,  diff %f > %f max", v107, 2000.0);
          EvCrt_v("API_Get_GAD_Data:  HELO Rejected:  Inconsistent with E-911 Ref Pos,  diff %f  rel_sig %f", v107, v95);
          goto LABEL_95;
        }

        v62 = *(v58 + 664);
      }

      v51 = *(v58 + 616);
      v50 = *(v58 + 624);
      v52 = *(v58 + 632);
      v54 = sqrt(v62);
      v97 = sqrt(*(v58 + 672));
      v114 = *(v58 + 680);
      v98 = *(v58 + 688);
      v99 = *(v10 + 36) - *(v58 + 608);
      v49 -= v99;
      v100 = *a3;
      if (*a3 < v99)
      {
        v100 = *a3 + 604800000;
      }

      v101 = v100 - v99;
      if (v101 > 0x240C83FF)
      {
        v101 -= 604800000;
      }

      *a3 = v101;
      v102 = *v22;
      if (*v22 < v99)
      {
        v102 = *v22 + 86400000;
      }

      v103 = v102 - v99;
      if (v103 > 0x5265BFF)
      {
        v103 -= 86400000;
      }

      *v22 = v103;
      *a9 = 0x80;
      v116 = sqrt(v98);
      v112 = v97;
      EvCrt_v("API_Get_GAD_Data:  HELO Inserted:  Age %d  Acc %f  %f  %f", v99, v54, v97, v116);
      v28 = 1;
      v57 = 2.0;
      v56 = 20.0;
      v108 = 0.0;
      v110 = 0.0;
      v48 = 0.0;
    }

    else
    {
LABEL_95:
      v28 = 0;
    }
  }

  *a10 = v49;
  *(a10 + 4) = v51 < 0.0;
  v63 = fabs(v51) * 5340353.08;
  v64 = -0.5;
  if (v63 <= 0.0)
  {
    v65 = -0.5;
  }

  else
  {
    v65 = 0.5;
  }

  v66 = v63 + v65;
  if (v66 <= 2147483650.0)
  {
    if (v66 >= -2147483650.0)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0x80000000;
    }
  }

  else
  {
    v67 = 0x7FFFFFFF;
  }

  *(a10 + 8) = v67;
  if (v50 * 2670176.86 > 0.0)
  {
    v64 = 0.5;
  }

  v68 = v50 * 2670176.86 + v64;
  if (v68 <= 2147483650.0)
  {
    if (v68 >= -2147483650.0)
    {
      v69 = v68;
      if (v68 >= 0x800000)
      {
        v69 -= 0x1000000;
      }
    }

    else
    {
      v69 = 0x80000000;
    }
  }

  else
  {
    v69 = 2130706431;
  }

  *(a10 + 12) = v69;
  *(a10 + 16) = v52 < 0.0;
  v70 = fabs(v52);
  v71 = -0.5;
  if (v52 < 0.0)
  {
    v71 = 0.5;
  }

  if (v52 > 0.0)
  {
    v71 = 0.5;
  }

  v72 = v70 + v71;
  v105 = v56;
  if (v72 <= 2147483650.0)
  {
    v73 = v48;
    v74 = v57;
    if (v72 >= -2147483650.0)
    {
      v75 = v72;
    }

    else
    {
      v75 = 0x80000000;
    }
  }

  else
  {
    v73 = v48;
    v74 = v57;
    v75 = 0x7FFFFFFF;
  }

  if (v75 >= 0x7FFF)
  {
    LOWORD(v75) = 0x7FFF;
  }

  *(a10 + 18) = v75;
  v76 = (log(v54 * 2.146 * 0.1 + 1.0) * 10.4920587);
  if (v76 >= 126)
  {
    LOBYTE(v76) = 126;
  }

  *(a10 + 20) = v76 + 1;
  v77 = (log(v112 * 2.146 * 0.1 + 1.0) * 10.4920587);
  if (v77 >= 126)
  {
    LOBYTE(v77) = 126;
  }

  *(a10 + 21) = v77 + 1;
  v78 = v114 >> 1;
  if (v114 > 0xB3)
  {
    LOBYTE(v78) = v78 - 90;
  }

  *(a10 + 22) = v78;
  v79 = (log(v116 * 1.645 * 0.0222222222 + 1.0) * 40.4979423);
  if (v79 >= 126)
  {
    LOBYTE(v79) = 126;
  }

  *(a10 + 23) = v79 + 1;
  *(a10 + 24) = 90;
  *(a10 + 25) = v73 > 0.0;
  *(a10 + 26) = v108;
  v80 = -0.5;
  if (v110 * 3.6 > 0.0)
  {
    v80 = 0.5;
  }

  v81 = v110 * 3.6 + v80;
  if (v81 <= 2147483650.0)
  {
    if (v81 >= -2147483650.0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 0x80000000;
    }
  }

  else
  {
    v82 = 0x7FFFFFFF;
  }

  if (v82 >= 0x7FFF)
  {
    LOWORD(v82) = 0x7FFF;
  }

  *(a10 + 28) = v82;
  v83 = fabs(v73) * 3.6;
  v84 = -0.5;
  if (v83 > 0.0)
  {
    v84 = 0.5;
  }

  v85 = v83 + v84;
  if (v85 <= 2147483650.0)
  {
    if (v85 >= -2147483650.0)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0x80000000;
    }
  }

  else
  {
    v86 = 0x7FFFFFFF;
  }

  if (v86 >= 127)
  {
    LOBYTE(v86) = 127;
  }

  *(a10 + 30) = v86;
  v87 = (v105 * 2.146 * 3.6);
  if (v87 >= 254)
  {
    LOBYTE(v87) = -2;
  }

  *(a10 + 31) = v87 + 1;
  v88 = (v74 * 1.645 * 3.6);
  if (v88 >= 254)
  {
    LOBYTE(v88) = -2;
  }

  *(a10 + 32) = v88 + 1;
LABEL_158:
  v89 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t API_Qual_Pos(const char *a1, int a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = a3;
  v92 = *MEMORY[0x29EDCA608];
  v10 = *(p_api + 72);
  v9 = *(p_api + 80);
  v11 = *(p_api + 232);
  v87 = (v11 + 24777);
  v12 = *(p_api + 176);
  memset(v91, 0, sizeof(v91));
  v13 = v91;
  v89 = v91;
  v90 = &v92;
  v88[1] = v91;
  v14 = 81;
  v15 = 1u;
  do
  {
    v88[0] = v13 + 1;
    *v13 = v14;
    v13 = v88[0];
    if (v88[0] >= v90)
    {
      v13 = v89;
      v88[0] = v89;
    }

    v14 = aQualPos[v15++];
  }

  while (v15 != 11);
  v16 = *a1;
  if (*a1)
  {
    v17 = a1 + 1;
    do
    {
      v88[0] = v13 + 1;
      *v13 = v16;
      v13 = v88[0];
      if (v88[0] >= v90)
      {
        v13 = v89;
        v88[0] = v89;
      }

      v18 = *v17++;
      v16 = v18;
    }

    while (v18);
  }

  v19 = " NM";
  if (a2)
  {
    v19 = " SS";
  }

  v20 = *v19;
  if (*v19)
  {
    v21 = (v19 + 1);
    do
    {
      v88[0] = v13 + 1;
      *v13 = v20;
      v13 = v88[0];
      if (v88[0] >= v90)
      {
        v13 = v89;
        v88[0] = v89;
      }

      v22 = *v21++;
      v20 = v22;
    }

    while (v22);
  }

  v88[0] = v13 + 1;
  *v13 = 32;
  if (v88[0] >= v90)
  {
    v88[0] = v89;
  }

  sprintf_2d(v88, a3);
  v23 = v88[0]++;
  *v23 = 32;
  if (v88[0] >= v90)
  {
    v88[0] = v89;
  }

  sprintf_3d(v88, a4);
  if (a5)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
    v25 = a5 - (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  }

  else
  {
    v25 = 0;
  }

  sprintf_sp1d(v88, v25);
  v26 = 0;
  v27 = 32;
  v28 = v88[0];
  do
  {
    v88[0] = v28 + 1;
    *v28 = v27;
    v28 = v88[0];
    if (v88[0] >= v90)
    {
      v28 = v89;
      v88[0] = v89;
    }

    v27 = asc_29977C6A2[++v26];
  }

  while (v26 != 2);
  if (v24)
  {
    if (v25 < v10[237])
    {
      v66 = a5;
      v70 = v10[237];
      v29 = "%s %s  - Deadline up %d  FixInt %d";
LABEL_142:
      v52 = 1;
      DbgLog_v(1, v29, v91, " TRUE ", v66, v70, v72, v74);
      goto LABEL_143;
    }

    if (v7 == -1)
    {
      DbgLog_v(1, "%s %s  - Waiting for full time-out");
      goto LABEL_104;
    }
  }

  v30 = *(v9 + 4);
  if (!a2)
  {
    if (v30 <= 0)
    {
      v68 = *(v9 + 4);
      DbgLog_v(1, "%s %s  - NM FixType %d < INT_AID");
      goto LABEL_104;
    }

LABEL_39:
    v31 = a2 ^ 1u;
    if (v7)
    {
      if (!a4)
      {
        a4 = 5 * v7;
      }
    }

    else
    {
      v32 = &v10[2 * v31];
      if (!a4)
      {
        a4 = v32[122];
      }

      v7 = v32[120];
    }

    v33 = 3 * v7;
    if (a4 < 3 * v7)
    {
      v33 = a4;
    }

    if (v24)
    {
      v34 = v33;
    }

    else
    {
      v34 = a4;
    }

    if (a5)
    {
      v35 = 0;
    }

    else
    {
      v35 = a2;
    }

    if (v35 != 1 || !*(v12 + 11048) || (v36 = *(v12 + 11028), v36 < 4) || *v87 < 4u || *(v11 + 24632) > 10.0 || (v37 = *(v9 + 48), v37 < 6))
    {
LABEL_81:
      if (a5 || !v31)
      {
        if (a5)
        {
          v46 = *(v9 + 896);
          if (v46 > 10.0)
          {
            v46 = v46 * 1.5;
          }

          v47 = *(v9 + 824);
          v48 = v47 * 1.5;
          if (v47 <= 15.0)
          {
            v48 = *(v9 + 824);
          }

LABEL_99:
          v49 = v48;
          v50 = v46;
          if (v7 < v50 || v34 < v49)
          {
            DbgLog_v(1, "%s %s  - Insufficient :  H %d %d  V %d %d");
            goto LABEL_104;
          }

          if (v35)
          {
            if (*v10 || *(v9 + 48) < 9 || *(v9 + 32) - *(v12 + 26996) < 24001 || *(v12 + 11028) > 0x3Cu)
            {
              goto LABEL_141;
            }

            v53 = v10[15];
            if (v53 >= 8)
            {
              v62 = v34;
              EvCrt_Illegal_Default("API_Qual_Pos", 0x1BB5u);
              v34 = v62;
              LOBYTE(v54) = 0;
            }

            else
            {
              v54 = 0xC0u >> v53;
            }

            v63 = *(v11 + 24632);
            if (v7 * 0.3 >= *(v11 + 25364) && v63 <= 20.0 && ((v54 & 1) == 0 || (*(v12 + 233) & 1) == 0) && *(v11 + 2812) + 2 < *(v9 + 369))
            {
              goto LABEL_141;
            }

            v82 = *(v9 + 369);
            v83 = *(v11 + 2812);
            v80 = *(v12 + 233);
            v81 = *(v12 + 11028);
            v78 = (v63 * 10.0);
            v79 = v10[15];
            v77 = *(v11 + 25364);
            v73 = v49;
            v75 = v34;
            v69 = v50;
            v71 = v7;
            v61 = "%s %s  - Delay :  H %d %d  V %d %d  :  %d  :  %d  :  %d %d %d  :  %d %d";
          }

          else
          {
            if (!a5 || v31)
            {
LABEL_141:
              v72 = v49;
              v74 = v34;
              v66 = v50;
              v70 = v7;
              v29 = "%s %s  - NM or noDL OK :  H %d %d  V %d %d";
              goto LABEL_142;
            }

            v55 = *(v12 + 11028);
            if (v55 >= 0x11)
            {
              v76 = *(v12 + 11028);
              v52 = 1;
              DbgLog_v(1, "%s %s  - Already waited :  H %d %d  V %d %d  :  FixTime %d > 16", v91);
              goto LABEL_143;
            }

            v56 = *(v11 + 2812);
            v58 = v56 > 2 || (v57 = *(v11 + 8388), v57 > 2) || *(v11 + 2812) && *(v9 + 369) <= v56 + 10 || *(v11 + 8388) && v57 + 10 >= *(v9 + 371);
            if (v55 >= 3 && !((v58 | *(v12 + 233)) & 1 | (*(v9 + 32) - *(v12 + 26996) < 7001)))
            {
              LODWORD(v46) = *(v11 + 25368);
              v59 = *&v46;
              if (v7 * 0.3 >= *&v46)
              {
                LODWORD(v59) = *(v11 + 25372);
                if (v34 * 0.3 >= *&v59 && *(v11 + 25360) <= 0xAu)
                {
                  v60 = *(v9 + 48);
                  if (v60 >= 8 && (v7 > 0x31 || v60 != 8) && *(v11 + 977) > 0x1Bu)
                  {
                    v72 = v49;
                    v74 = v34;
                    v66 = v50;
                    v70 = v7;
                    v29 = "%s %s  - OK :  H %d %d  V %d %d";
                    goto LABEL_142;
                  }
                }
              }
            }

            v85 = *(v9 + 48);
            v86 = *(v11 + 977);
            v83 = *(v11 + 25372);
            v84 = *(v11 + 25360);
            v81 = *(v11 + 8388);
            v82 = *(v11 + 25368);
            v79 = (*(v9 + 32) - *(v12 + 26996));
            v80 = *(v11 + 2812);
            v77 = *(v12 + 11028);
            v78 = *(v12 + 233);
            v73 = v49;
            v75 = v34;
            v69 = v50;
            v71 = v7;
            v61 = "%s %s  - Wait :  H %d %d  V %d %d  :  %d %d %d  :  %d %d  :  %d %d %d :  %d %d";
          }

          DbgLog_v(1, v61, v91, " FALSE", v69, v71, v73, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
          goto LABEL_104;
        }
      }

      else if (*(v12 + 11048) && *(v12 + 11028) && *v87 >= 4u && *(v11 + 24616) <= 10.0 && *(v11 + 24632) <= 20.0 && *(v9 + 48) >= 10)
      {
        v43 = v10[237] * *(v12 + 11044);
        if (v43 >= 10000)
        {
          v43 = 10000;
        }

        v44 = v43 + 10000;
        v45 = v34;
        DbgLog_v(1, "%s %s  - NM Scaling required  %d", v91, " info ", v43 + 10000);
        v7 = (v44 * v7) / 0x2710uLL;
        v34 = (v44 * v45) / 0x2710uLL;
      }

      v46 = *(v9 + 896);
      v48 = *(v9 + 824);
      goto LABEL_99;
    }

    v38 = v34;
    if (v37 > 8)
    {
      switch(v37)
      {
        case 9:
          v39 = 14000;
          goto LABEL_75;
        case 10:
          v39 = 16000;
          goto LABEL_75;
        case 11:
          v39 = 20000;
          goto LABEL_75;
      }

      EvCrt_Illegal_Default("API_Qual_Pos", 0x1B4Du);
      v36 = *(v12 + 11028);
    }

    else if (v37 != 6)
    {
      if (v37 == 7)
      {
        v39 = 11000;
      }

      else
      {
        v39 = 12000;
      }

LABEL_75:
      if (v36 >= 0xD)
      {
        v40 = 10;
      }

      else
      {
        v40 = v36 - 3;
      }

      v41 = v40 * v10[237];
      if (v41 >= 10000)
      {
        v41 = 10000;
      }

      v42 = v41 + v39;
      DbgLog_v(1, "%s %s  - SS Scaling required  %d", v91, " info ", v41 + v39);
      v7 = (v42 * v7) / 0x2710uLL;
      v34 = (v42 * v38) / 0x2710uLL;
      goto LABEL_81;
    }

    v39 = 10000;
    goto LABEL_75;
  }

  if (v30 > 3)
  {
    goto LABEL_39;
  }

  v67 = *(v9 + 4);
  DbgLog_v(1, "%s %s  - SS FixType %d < SV_2D");
LABEL_104:
  v52 = 0;
LABEL_143:
  v64 = *MEMORY[0x29EDCA608];
  return v52;
}

uint64_t API_Get_GPS_MS_Ass_Meas(_DWORD *a1, int a2, uint64_t a3)
{
  v109[6] = *MEMORY[0x29EDCA608];
  v5 = p_api;
  v6 = *(p_api + 16);
  if (a1)
  {
    v7 = *(v6 + 4);
    if (*a1)
    {
      v8 = *a1 == v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      goto LABEL_117;
    }

    *a1 = v7;
  }

  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v9 = *(v5 + 48);
  v10 = *v9;
  if (*v9 < 3)
  {
LABEL_117:
    v86 = 0;
    goto LABEL_118;
  }

  v11 = *(v6 + 22);
  if (v10 > 7)
  {
    goto LABEL_22;
  }

  if (v10 == 3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v10 <= 4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 3;
  }

  if (v10 == 7)
  {
    v14 = 192;
  }

  else
  {
    v14 = v13;
  }

  if (v10 == 6)
  {
    v14 = 96;
  }

  if (v14 >= v11)
  {
LABEL_22:
    v16 = (*v6 - *(v9 + 8)) * 0.001;
      ;
    }

    while (i < 0.0)
    {
      i = i + 604800.0;
    }

    v18 = i * 1000.0;
    v19 = -0.5;
    if (v18 > 0.0)
    {
      v19 = 0.5;
    }

    v20 = v18 + v19;
    if (v20 <= 2147483650.0)
    {
      if (v20 >= -2147483650.0)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0x80000000;
      }
    }

    else
    {
      v15 = 0x7FFFFFFF;
    }
  }

  else
  {
    v15 = *(v6 + 24);
  }

  v21 = *(v5 + 104);
  *a3 = v15;
  if (v10 <= 5)
  {
    if (v10 < 4)
    {
      LOBYTE(v22) = 127;
LABEL_37:
      *(a3 + 4) = v22;
      goto LABEL_38;
    }

    if (v10 == 4)
    {
      LOBYTE(v22) = 126;
      goto LABEL_37;
    }

    if (v10 == 5)
    {
      LOBYTE(v22) = 120;
      goto LABEL_37;
    }

    goto LABEL_147;
  }

  if (v10 <= 8)
  {
    if (v10 == 6)
    {
      LOBYTE(v22) = 113;
    }

    else if (v10 == 7)
    {
      LOBYTE(v22) = 106;
    }

    else
    {
      LOBYTE(v22) = 99;
    }

    goto LABEL_37;
  }

  switch(v10)
  {
    case 9:
      LOBYTE(v22) = 92;
      goto LABEL_37;
    case 11:
      v93 = 78;
LABEL_142:
      *(a3 + 4) = v93;
      if (!v11)
      {
        goto LABEL_38;
      }

      goto LABEL_143;
    case 10:
      v93 = 85;
      goto LABEL_142;
  }

LABEL_147:
  *(a3 + 4) = 127;
  EvCrt_Illegal_Default("API_Get_GPS_MS_Ass_Meas", 0x1D25u);
  if (*v9 < 10)
  {
    goto LABEL_38;
  }

  v11 = *(v6 + 22);
  if (!*(v6 + 22))
  {
    goto LABEL_38;
  }

LABEL_143:
  if (*a3 == *(v6 + 24))
  {
    v22 = (*(a3 + 4) + ~(v11 >> 3));
    if (v22 <= 0x60)
    {
      LOBYTE(v22) = 96;
    }

    goto LABEL_37;
  }

LABEL_38:
  *(a3 + 6) = -1;
  v23 = p_api;
  v24 = *(p_api + 8);
  v25 = *(v24 + 4);
  if (!v25)
  {
    goto LABEL_45;
  }

  v26 = *(v24 + 8);
  if (v26 > 0x10000)
  {
    goto LABEL_45;
  }

  v27 = (*(v9 + 40) + 1.0) * (v26 * -0.0000000152587891 + (*v6 - v25) * 0.001);
  HIDWORD(v28) = 1078984704;
  if (v27 > 64.0)
  {
    goto LABEL_45;
  }

  LODWORD(v28) = *(*(p_api + 72) + 948);
  if (v27 > v28 * 0.005)
  {
    goto LABEL_45;
  }

  v29 = v27 * 1000000.0;
  v30 = -0.5;
  if (v29 > 0.0)
  {
    v30 = 0.5;
  }

  v31 = v29 + v30;
  if (v31 <= 2147483650.0)
  {
    if (v31 >= -2147483650.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0x80000000;
    }
  }

  else
  {
LABEL_45:
    v32 = 0x7FFFFFFF;
  }

  *(a3 + 8) = v32;
  v33 = *(v23 + 40);
  v34 = *(v33 + 6360);
  v35 = -1024 * *(v33 + 6364);
  if (v35 | (v34 << 8))
  {
    v36 = v34 << 8;
  }

  else
  {
    v36 = (*(v9 + 40) * -4.0330752e11);
    v35 = (*(v9 + 32) * 1047552000.0);
  }

  *(a3 + 5) = 0;
  v37 = *(v23 + 232);
  v38 = 0.0;
  if (*v9 == 11)
  {
    v39 = *(v9 + 32);
    v107 = 0;
    *&v108[0] = 0;
    v109[0] = 9.9980001e13;
    FSP_Time = Get_FSP_Time(*(v9 + 8), &v107, v108, v109, &v106);
    v41 = 0.0;
    if (FSP_Time && v109[0] < 0.00000001 && (v42 = *(v9 + 24) - *v108, v41 = v42 - *(v9 + 32), a2))
    {
      *(a3 + 5) = 1;
    }

    else
    {
      v42 = v39;
    }

    v35 = (v42 * 1047552000.0);
    v38 = v41 * 299792458.0;
  }

  if (*v37 != *v6)
  {
    EvCrt_v("API_Get_MS_Ass_Meas:  Error:  Database time-tag miss-match  %u  %u", *v6, *v37);
    goto LABEL_117;
  }

  v104 = v35;
  v101 = v36;
  v43 = 0;
  v44 = *(v37 + 656);
  memset(v108, 0, sizeof(v108));
  v45 = (v6 + 2728);
  v46 = -1345.28908 / v44;
  do
  {
    if (Is_Legal(*(v45 - 2)))
    {
      *(v108 + v43) = *v45 & 0x300 | *(v45 - 4);
    }

    v43 += 2;
    v45 += 18;
  }

  while (v43 != 96);
  for (j = 0; j != 48; ++j)
  {
    v48 = 0;
    v49 = -1;
    v50 = -1;
    do
    {
      if (*(v108 + v48) > v49)
      {
        v49 = *(v108 + v48);
        v50 = v48;
      }

      ++v48;
    }

    while (v48 != 48);
    *(v109 + j) = v50;
    if ((v50 & 0x80000000) == 0)
    {
      *(v108 + v50) = -99;
    }
  }

  v51 = 0;
  v102 = 0;
  v52 = v21 + 76;
  v105 = v21 + 412;
  v103 = 0;
  v99 = v6 + 32;
  v100 = *(p_api + 64) + 365;
  v98 = v21 + 1036;
  do
  {
    v53 = *(v109 + v51);
    v54 = v6 + 2720 + 36 * v53;
    v55 = *v54;
    v56 = Is_Legal(*v54) && v55 == 1;
    if (!v56 || *(v54 + 4) < 0xAu || !*(v54 + 10) || v55 != *(v52 + 4 * v53) || *(v105 + 4 * v53) < 10)
    {
      goto LABEL_108;
    }

    v57 = *(v37 + 3056 + 4 * v53);
    if ((v57 - 1) < 0x1D)
    {
      goto LABEL_84;
    }

    if (v57)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
LABEL_84:
      if (fabs(*(v37 + 4832 + 8 * v53)) >= 16.0)
      {
        goto LABEL_108;
      }
    }

    if (!*(v100 + v53))
    {
      v58 = *v54;
      if (Is_SV_Usable(*v54))
      {
        v59 = *(v54 + 4);
        if (v59 > *(v54 + 5) || *(v54 + 10) >> 3 >= 0x36Bu)
        {
          v60 = v99 + 56 * v53;
          v61 = *(v60 + 8);
          v62 = *(v60 + 4);
          v63 = v104 + (v61 >> 6) + ((v62 % 1023) << 10);
          v64 = v104 - 1047552 + (v61 >> 6) + ((v62 % 1023) << 10) + ((1047552 - v63) & ~((1047552 - v63) >> 31));
          v65 = BYTE2(v58);
          v66 = HIWORD(v58);
          v67 = a3 + 14 + 10 * v103;
          *v67 = v66;
          *(v67 + 1) = v59;
          v68 = (v64 - (v64 != 0)) / 0xFFC00;
          if (v64)
          {
            ++v68;
          }

          v69 = 1047552 * v68;
          v70 = v69 - v63 + 1047552;
          if (v70 >= 1047551)
          {
            v71 = 1047551;
          }

          else
          {
            v71 = v69 - v63 + 1047552;
          }

          v72 = v70 - 1047552 * ((v69 - v63 - v71 + 2095103) / 0xFFC00u);
          *(v67 + 4) = v72 >> 10;
          *(v67 + 6) = v72 & 0x3FF;
          if (!v103 && (*(v54 + 8) & 0x200) != 0)
          {
            v73 = ((2145384445 * (v62 + 1023)) >> 32) - v62 - 1023;
            v74 = (v73 >> 9) + (v73 >> 31) - 1500 * *v60 + *a3;
            v75 = v74 + (v74 < 0 ? 0x240C8400 : 0);
            if ((v75 - 2) <= 0x7C)
            {
              *(a3 + 6) = v75;
            }
          }

          v76 = *(v60 + 12) - v101;
          if (*(v98 + 2 * v53) >= 0x32u && *(v105 + 4 * v53) >= 15 && *(v37 + 656) >= 0.5 && (v77 = *(v37 + 120 + 8 * v53), fabs(v77) <= 3000.0))
          {
            v78 = (v46 * v77) - v101;
            v85 = v78 - v76;
            if (v78 - v76 < 0)
            {
              v85 = v76 - v78;
            }

            if (v85 > 0x2000)
            {
              v97 = *(v60 + 12) - v101;
              EvLog_v("API_Get_GPS_MS_Ass_Meas:  Warning:  SV %d, Doppler miss-match  %d  %d !", v65, v76 >> 8, v78 >> 8);
              v60 = v99 + 56 * v53;
              v78 = v97;
            }
          }

          else
          {
            v78 = *(v60 + 12) - v101;
          }

          *(v67 + 2) = (5 * v78) >> 8;
          *(v67 + 8) = 0;
          GNSS_PR_Meas_Var = API_Get_GNSS_PR_Meas_Var(v54, *(v60 + 34), *(v60 + 38), *(v37 + 978 + v53));
          v80 = U4sqrt(100 * GNSS_PR_Meas_Var);
          v81 = Comp_AGNSS_PR_Sigma(1000 * v80);
          if (v81 >= 0x3E)
          {
            v82 = 62;
          }

          else
          {
            v82 = v81;
          }

          *(v67 + 9) = v82;
          v83 = v102 - v82 + 64;
          v84 = v103 + 1;
          if (v103 == 15)
          {
            v89 = 16;
            *(a3 + 12) = 16;
            v90 = (a3 + 12);
            v91 = v101;
            goto LABEL_121;
          }

          v102 = v83;
          ++v103;
        }
      }
    }

LABEL_108:
    ++v51;
  }

  while (v51 != 48);
  v89 = v103;
  *(a3 + 12) = v103;
  v90 = (a3 + 12);
  if (!v103)
  {
    v86 = 0;
    LOBYTE(v84) = 0;
    goto LABEL_155;
  }

  v84 = v103;
  v91 = v101;
  v83 = v102;
LABEL_121:
  if (v104 | v91)
  {
    if (*(a3 + 4) >= 0x63u)
    {
      v92 = 5;
      v83 = (v84 - 1) * v83 / v84;
    }

    else
    {
      v92 = 4;
    }

    if (v92 <= v84)
    {
      if (v92 >= v84)
      {
        v83 = (3 * v83) >> 2;
      }

      else if ((v92 | 2) > v84)
      {
        v83 = (14 * v83) >> 4;
      }
    }

    else
    {
      v83 >>= 1;
    }

    if (v83 >= 0xFF)
    {
      LOBYTE(v84) = -1;
    }

    else
    {
      LOBYTE(v84) = v83;
    }
  }

  v86 = 1;
LABEL_155:
  *(a3 + 13) = v84;
  EvLog_v("GN_AGPS_Meas:  %9u %3d  %3d %u  %2d %3d %g %d", *a3, *(a3 + 4), *(a3 + 6), *(a3 + 8), v89, v84, v38, *(a3 + 5));
  if (g_Enable_Event_Log >= 4u && *v90)
  {
    v94 = 0;
    v95 = (a3 + 23);
    do
    {
      v96 = *v95;
      EvLog_v("GN_AGPS_Meas_El: %2d %3d %2d  %6d (%5d)  %4d %5d  %d %2d (%d,%d) %f", v94++, *(v95 - 9), *(v95 - 8), *(v95 - 7), ((26215 * *(v95 - 7)) >> 17) + ((26215 * *(v95 - 7)) >> 31), *(v95 - 5), *(v95 - 3), *(v95 - 1), v96, v96 >> 3, v96 & 7, ((v96 & 7) * 0.125 + 1.0) * 0.5 * (1 << (*v95 >> 3)));
      v95 += 10;
    }

    while (v94 < *v90);
  }

LABEL_118:
  v87 = *MEMORY[0x29EDCA608];
  return v86;
}

uint64_t Is_SV_Usable(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a1 != 2 || BYTE2(a1))
  {
    if (a1 > 7u)
    {
      v2 = 0;
    }

    else
    {
      v2 = Num_Prn[a1 - 1];
    }

    v3 = BYTE2(a1) + v2 - 1;
    if (*(*(p_api + 56) + v3 + 33605) == 1)
    {
      v1 = *(*(p_api + 72) + v3 + 253) ^ 1;
      goto LABEL_11;
    }

LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  v1 = 1;
LABEL_11:
  v4 = *MEMORY[0x29EDCA608];
  return v1 & 1;
}

uint64_t API_Get_GNSS_MS_Ass_Meas(_DWORD *a1, int a2, char *a3)
{
  v112 = *MEMORY[0x29EDCA608];
  v5 = p_api;
  v6 = *(p_api + 16);
  v7 = *(p_api + 104);
  if (a1)
  {
    v8 = *(v6 + 4);
    if (*a1)
    {
      v9 = *a1 == v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      goto LABEL_134;
    }

    *a1 = v8;
  }

  bzero(a3, 0x494uLL);
  v10 = v5[6];
  v11 = *v10;
  if (v11 < 3)
  {
LABEL_134:
    v93 = 0;
    goto LABEL_135;
  }

  v12 = *(v6 + 22);
  if (v11 > 7)
  {
    goto LABEL_22;
  }

  if (v11 == 3)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v11 <= 4)
  {
    v14 = v13;
  }

  else
  {
    v14 = 3;
  }

  if (v11 == 7)
  {
    v15 = 192;
  }

  else
  {
    v15 = v14;
  }

  if (v11 == 6)
  {
    v15 = 96;
  }

  if (v15 >= v12)
  {
LABEL_22:
    v18 = (*v6 - *(v10 + 2)) * 0.001;
      ;
    }

    while (i < 0.0)
    {
      i = i + 604800.0;
    }

    v20 = i * 1000.0;
    if (i * 1000.0 <= 2147483650.0)
    {
      if (v20 >= -2147483650.0)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0x80000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v21 = -(v16 - i * 1000.0) * 10000.0;
    if (v21 <= 2147483650.0)
    {
      if (v21 >= -2147483650.0)
      {
        v22 = v21;
      }

      else
      {
        LOWORD(v22) = 0;
      }
    }

    else
    {
      LOWORD(v22) = -1;
    }

    v23 = g_TOW_Stat2GAD_UncK_Table[v11];
    a3[10] = v23;
    v17 = (a3 + 10);
    *(a3 + 4) = v22;
    if (v11 >= 10 && v12 && v16 == *(v6 + 24))
    {
      v24 = (v23 + ~(v12 >> 3));
      if (v24 <= 0x60)
      {
        LOBYTE(v24) = 96;
      }

      *v17 = v24;
    }
  }

  else
  {
    v16 = *(v6 + 24);
    a3[10] = g_TOW_Stat2GAD_UncK_Table[v11];
    v17 = (a3 + 10);
  }

  a3[11] = -1;
  v25 = v5[1];
  v26 = *(v25 + 4);
  if (!v26)
  {
    goto LABEL_50;
  }

  v27 = *(v25 + 8);
  if (v27 > 0x10000)
  {
    goto LABEL_50;
  }

  v28 = (v10[5] + 1.0) * (v27 * -0.0000000152587891 + (*v6 - v26) * 0.001);
  HIDWORD(v29) = 1078984704;
  if (v28 > 64.0)
  {
    goto LABEL_50;
  }

  LODWORD(v29) = *(v5[9] + 948);
  if (v28 > v29 * 0.005)
  {
    goto LABEL_50;
  }

  v30 = v28 * 1000000.0;
  v31 = -0.5;
  if (v30 > 0.0)
  {
    v31 = 0.5;
  }

  v32 = v30 + v31;
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
LABEL_50:
    v33 = 0x7FFFFFFF;
  }

  *(a3 + 3) = v33;
  v34 = v5[5];
  v35 = *(v34 + 6360) << 8;
  v36 = *(v34 + 6364);
  v37 = ((4499197279600640 * v36) >> 32) - (v36 << 21);
  v38 = (v37 >> 9) + (v37 >> 31);
  if (!v35 && (1022 - (v36 << 21)) <= 0x7FC)
  {
    v35 = (v10[5] * -4.0330752e11);
    v38 = (v10[4] * 2097152000.0);
  }

  if (*v10 == 11)
  {
    v38 = (v10[4] * 2097152000.0);
  }

  v39 = v5[29];
  if (*v39 != *v6)
  {
    EvCrt_v("API_Get_MS_Ass_Meas:  Error:  Database time-tag miss-match  %u  %u", *v6, *v39);
    goto LABEL_134;
  }

  v107 = v38;
  v108 = v16;
  v106 = v35;
  v103 = v17;
  v102 = a2;
  v40 = 0;
  v41 = *(v39 + 656);
  memset(v111, 0, 96);
  v42 = v6 + 2720;
  v110 = v7 + 76;
  v43 = (v7 + 79);
  v44 = v111;
  v45 = -1345.28908 / v41;
  do
  {
    v46 = v6 + v40;
    if (*(v6 + v40 + 2720) == 2 && !*(v46 + 2722) && *(v6 + v40 + 2723) == *v43)
    {
      *(v46 + 2722) = *(v43 - 1);
    }

    if (Is_Legal(*(v46 + 2720)))
    {
      *v44 = *(v6 + v40 + 2728) & 0x300 | *(v6 + v40 + 2724);
    }

    v40 += 36;
    ++v44;
    v43 += 4;
  }

  while (v40 != 1728);
  for (j = 0; j != 48; ++j)
  {
    v48 = 0;
    v49 = -1;
    v50 = -1;
    do
    {
      if (*(v111 + v48) > v49)
      {
        v49 = *(v111 + v48);
        v50 = v48;
      }

      ++v48;
    }

    while (v48 != 48);
    *(&v111[6] + j) = v50;
    if (v50 != -1)
    {
      *(v111 + v50) = -99;
    }
  }

  v51 = 0;
  v104 = 0;
  v52 = 0;
  v109 = v7 + 412;
  v105 = *(p_api + 64) + 365;
  v101 = v6 + 32;
  v100 = v7 + 1036;
  do
  {
    v53 = *(&v111[6] + v51);
    v54 = v42 + 36 * v53;
    v55 = *v54;
    v56 = !Is_Legal(*v54) || v55 == 0;
    if (v56 || *(v54 + 4) < 0xAu || !*(v54 + 10) || v55 != *(v110 + 4 * v53) || *(v109 + 4 * v53) < 10)
    {
      goto LABEL_127;
    }

    v57 = *(v39 + 3056 + 4 * v53);
    if ((v57 - 1) >= 0x1D)
    {
      if (!v57)
      {
        goto LABEL_84;
      }

      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
    }

    if (fabs(*(v39 + 4832 + 8 * v53)) >= 16.0)
    {
      goto LABEL_127;
    }

LABEL_84:
    if (*(v105 + v53))
    {
      goto LABEL_127;
    }

    v58 = *v54;
    if (!Is_SV_Usable(*v54))
    {
      goto LABEL_127;
    }

    v59 = *(v54 + 4);
    if (v59 <= *(v54 + 5) && *(v54 + 10) >> 3 < 0x36Bu)
    {
      goto LABEL_127;
    }

    v60 = v58 - 1;
    if ((v58 - 1) > 5u)
    {
      goto LABEL_127;
    }

    v61 = &a3[24 * v52 + 20];
    v62 = dword_29972A5F0[v60];
    *v61 = v62;
    if ((v62 & v102) == 0)
    {
      goto LABEL_127;
    }

    v63 = v101 + 56 * v53;
    v61[4] = *(v54 + 2);
    if (*v54 == 3)
    {
      v64 = 4;
    }

    else
    {
      v64 = 1;
    }

    v61[5] = v64;
    v61[6] = v59;
    *(v61 + 7) = 0;
    v65 = *(v54 + 8) & 0x300;
    if (v65 == 768 || !v52 && v65 >= 0x200)
    {
      v66 = ((2145384445 * (*(v63 + 4) + 1023)) >> 32) - *(v63 + 4) - 1023;
      v67 = (v66 >> 9) + (v66 >> 31);
      v68 = v67 + v108 - 1500 * *v63;
      v69 = 86400000 * (((v68 & ~(v68 >> 31)) - v68 + (v68 >> 31)) / 0x5265C00 + (v68 >> 31));
      v70 = v68 + v69;
      v71 = v70 >= 0x5265BFF ? 86399999 : v70;
      if (v65 == 768)
      {
        v72 = (v108 + 86399999 - 1500 * *v63 + v67 + v69 - v71) % 0x5265C00 - (v108 + 86399999 - 1500 * *v63 + v67 + v69 - v71) + v70;
        if (v72 - 2 <= 0x7C)
        {
          v61[8] = (v108 + 86399999 - 1500 * *v63 + v67 + v69 - v71) % 0x5265C00 - (v108 - 1 - -36 * *v63 + v67 + v69 - v71) + v70;
          if (!v52)
          {
            a3[11] = v72;
          }
        }
      }
    }

    v99 = v101 + 56 * v53;
    GNSS_PR_Meas_Var = API_Get_GNSS_PR_Meas_Var(v54, *(v63 + 34), *(v63 + 38), *(v39 + 978 + v53));
    v74 = 1000 * U4sqrt(100 * GNSS_PR_Meas_Var);
    if (v74 >= 0x111700)
    {
      v76 = 63;
      v61[9] = 63;
LABEL_111:
      v79 = v101 + 56 * v53;
      goto LABEL_115;
    }

    if (v74 >> 3 <= 0x270)
    {
      v76 = v61[9];
      goto LABEL_111;
    }

    v77 = 9375;
    if (v74 >= 0x249F)
    {
      v78 = 0;
      v80 = 9375;
      v79 = v101 + 56 * v53;
      do
      {
        v77 = 2 * v80;
        ++v78;
        v81 = v74 >= 2 * v80;
        v80 *= 2;
      }

      while (v81);
    }

    else
    {
      v78 = 0;
      v79 = v101 + 56 * v53;
    }

    v76 = 8 * v78 - (v77 - v74) / (625 << v78) + 7;
    v61[9] = v76;
LABEL_115:
    v82 = 2145386496 - ((32 * *(v79 + 8)) | ((*(v79 + 4) % 1023) << 21));
    v83 = ((v107 + 0x1FFFFF - v82 / 1023 + ((v82 / 1023 - v107) & ~((v82 / 1023 - v107) >> 31))) & 0xFFE00000) + v82 / 1023 - v107;
    if (v83 < 0x200000)
    {
      v84 = 0x1FFFFF;
    }

    else
    {
      v84 = ((v107 + 0x1FFFFF - v82 / 1023 + ((v82 / 1023 - v107) & ~((v82 / 1023 - v107) >> 31))) & 0xFFE00000) + v82 / 1023 - v107;
    }

    *(v61 + 3) = v83 - (v84 & 0x7FE00000);
    v85 = *(v79 + 12) - v106;
    if (*(v100 + 2 * v53) >= 0x32u && *(v109 + 4 * v53) >= 15 && *(v39 + 656) >= 0.5 && (v86 = *(v39 + 120 + 8 * v53), v75 = fabs(v86), v75 <= 3000.0))
    {
      v87 = (v45 * v86) - v106;
      v91 = v87 - v85;
      if (v87 - v85 < 0)
      {
        v91 = v85 - v87;
      }

      if (v91 > 0x2000)
      {
        v92 = *(v79 + 12) - v106;
        v98 = v76;
        EvLog_v("API_Get_GNSS_MS_Ass_Meas:  Warning:  SV %d, Doppler miss-match  %d  %d !", v61[4], v85 >> 8, v87 >> 8);
        v76 = v98;
        v79 = v99;
        LOWORD(v87) = v92;
      }
    }

    else
    {
      v87 = *(v79 + 12) - v106;
    }

    *(v61 + 8) = (16 * v87) / 861;
    LOWORD(v75) = *(v79 + 20);
    v88 = (*(v79 + 24) + *&v75 * 0.0000152587891) * 194.860721;
    if (fabs(v88) >= 4294967280.0)
    {
      v89 = 0;
      v90 = 0;
    }

    else
    {
      v89 = v88;
      v90 = *(v54 + 14);
    }

    *(v61 + 5) = v89;
    *(v61 + 9) = v90;
    ++v52;
    v104 = v104 - v76 + 64;
    if (v52 == 48)
    {
      a3[16] = 48;
      goto LABEL_137;
    }

LABEL_127:
    ++v51;
  }

  while (v51 != 48);
  a3[16] = v52;
  if (!v52)
  {
    v93 = 0;
    goto LABEL_152;
  }

LABEL_137:
  if (v107 | v106)
  {
    if (*v103 >= 0x63u)
    {
      v96 = 5;
      v97 = (v52 - 1) * v104 / v52;
    }

    else
    {
      v96 = 4;
      v97 = v104;
    }

    if (v96 <= v52)
    {
      if (v96 >= v52)
      {
        v97 = (3 * v97) >> 2;
      }

      else if ((v96 | 2) > v52)
      {
        v97 = (14 * v97) >> 4;
      }
    }

    else
    {
      v97 >>= 1;
    }

    if (v97 >= 0xFF)
    {
      LOBYTE(v52) = -1;
    }

    else
    {
      LOBYTE(v52) = v97;
    }
  }

  v93 = 1;
LABEL_152:
  a3[17] = v52;
  Set_Meas_GNSS_TOD(v108 % 0x5265C00, a3);
LABEL_135:
  v94 = *MEMORY[0x29EDCA608];
  return v93;
}

uint64_t Set_Meas_GNSS_TOD(uint64_t result, int *a2)
{
  v3 = result;
  v11[1] = *MEMORY[0x29EDCA608];
  v4 = a2[5];
  if ((v4 & 0x20) != 0)
  {
    v11[0] = 0.0;
    result = API_Get_UTC_Cor(1, v11);
    v6 = -0.5;
    if (v11[0] * 1000.0 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v11[0] * 1000.0 + v6;
    if (v7 <= 2147483650.0)
    {
      if (v7 >= -2147483650.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x80000000;
      }
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    v3 = v3 - v8 + 10800000;
    v5 = 32;
  }

  else if ((v4 & 2) != 0)
  {
    v5 = 2;
  }

  else if ((v4 & 0x40) != 0)
  {
    v3 = result - 14000;
    v5 = 64;
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  v9 = v3 - 86400000;
  if (v3 <= 86400000)
  {
    v9 = v3;
  }

  a2[1] = v9 + (v9 < 0 ? 0x5265C00 : 0);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Get_GNSS_Assist_Req(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v9 = a4;
  v10 = a3;
  v217 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v12 = p_api;
  v13 = *(p_api + 328);
  v14 = *(p_api + 48);
  v15 = *(v14 + 5);
  if (v15 == 1 && *v14 > 5 || (v13[2] & 1) != 0)
  {
    v16 = 0;
    if (!a1 || !*(v14 + 5))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (!a1)
  {
    goto LABEL_393;
  }

  *a1 = 1;
  if (v15)
  {
LABEL_11:
    if (*v14 >= 4)
    {
      *(a1 + 10) = 1;
    }
  }

LABEL_13:
  v196 = *(v12 + 80);
  v17 = *(v196 + 816);
  if (v17 > 300.0 && (v13[10] & 1) == 0)
  {
    v16 = 1;
    if (!a1)
    {
      goto LABEL_393;
    }

    *(a1 + 1) = 1;
    goto LABEL_21;
  }

  if (a1)
  {
LABEL_21:
    if (v17 <= 10000.0)
    {
      goto LABEL_27;
    }

    v214 = 0;
    v213 = 0;
    v210 = 0;
    v211 = 0;
    v19 = *(v12 + 8);
    v20 = *v19;
    if (*v19)
    {
      v21 = v19[4];
      v22 = mach_continuous_time();
      v23 = v20 - v21;
      v10 = a3;
      v24 = v23 + (*&g_MacClockTicksToMsRelation * v22);
    }

    else
    {
      v24 = 0;
    }

    v212 = 0;
    v9 = a4;
    if ((Core_Get_Pos_LLH(v24, 150000, 1, &v214, v216, v215, &v213, &v212, &v212 + 1, &v210, &v211) & 1) == 0)
    {
      v7 = a6;
      goto LABEL_29;
    }

    v25 = v215[0] + ((v24 - v214) * (v24 - v214)) * 0.0009;
    v7 = a6;
    if (v25 <= 100000000.0)
    {
LABEL_27:
      *(a1 + 11) = 1;
    }

LABEL_29:
    v12 = p_api;
    v18 = *(p_api + 56);
    if (*(v18 + 8428) - 2) < 5 || (v13[13])
    {
      v26 = 12;
    }

    else
    {
      v16 = 1;
      v26 = 2;
    }

    *(a1 + v26) = 1;
    if ((*(v18 + 8444) - 2) < 5 || v13[14] == 1)
    {
      *(a1 + 13) = 1;
    }

    goto LABEL_36;
  }

  v18 = *(v12 + 56);
  if ((*(v18 + 8428) - 2) >= 5 && (v13[13] & 1) == 0)
  {
    goto LABEL_388;
  }

LABEL_36:
  v27 = *(v12 + 72);
  LOBYTE(v215[0]) = 0;
  LOBYTE(v213) = 0;
  v209 = v27;
  v197 = a5;
  v198 = v13;
  v195 = v14;
  if (v27[31] == 1)
  {
    v204 = v16;
    if (a2)
    {
      *(a2 + 144) = 0u;
      *(a2 + 160) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *a2 = 1;
      *(a2 + 11) = 514;
      *(a2 + 13) = 2;
      v18 = *(v12 + 56);
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = *(v12 + 328);
    do
    {
      if ((*(*(v18 + 64) + v28) & 1) != 0 || *(v32 + 47 + v28) == 1)
      {
        ++v30;
        v29 |= 1 << v28;
      }

      else
      {
        v31 += *(*v18 + v28) ^ 1;
      }

      ++v28;
    }

    while (v28 != 32);
    if (a2)
    {
      *(a2 + 168) = v29;
      if (v30 + v31 > 27)
      {
        v33 = 0;
      }

      else
      {
        v33 = 1;
        *(a2 + 6) = 1;
      }
    }

    else
    {
      v33 = v30 + v31 < 28;
    }

    LOBYTE(v215[0]) = v30;
    v34 = *(v12 + 48);
    if (*(v34 + 5) == 1 && *v34 >= 3)
    {
      v35 = (*(v34 + 24) + 604800 * *(v34 + 16));
    }

    else
    {
      v35 = 0;
    }

    if (*v12 != 11)
    {
      v36 = *(*(v12 + 80) + 36);
      v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v36;
      v9 = a4;
      v35 = (v37 / 1000 + v35);
    }

    v38 = 0;
    v39 = 0;
    v40 = v32 + 15;
    do
    {
      if (*(*(v18 + 48) + v38) == 1)
      {
        ++v39;
      }

      else if (*(v40 + v38) == 1)
      {
        memset(v216, 0, 108);
        v39 += Core_Get_GPS_Eph((v38 + 1), v35, v216);
      }

      ++v38;
    }

    while (v38 != 32);
    v41 = a2;
    if (!a2 || ((v39 > 7) & ~v33) != 0)
    {
      v43 = !((v39 > 7) & ~v33) | v33;
      LOBYTE(v213) = v39;
      v7 = a6;
      v10 = a3;
      v42 = v204;
      if (!a2)
      {
        goto LABEL_82;
      }

      if (!(!((v39 > 7) & ~v33) | v33 & 1))
      {
        v43 = 0;
        goto LABEL_71;
      }

      v41 = a2;
    }

    else
    {
      *(a2 + 7) = 1;
      LOBYTE(v213) = v39;
      v7 = a6;
      v10 = a3;
      v42 = v204;
    }

    *(v41 + 4) = 257;
    *(v41 + 8) = 0;
    *(v41 + 10) = 0;
    v43 = 1;
LABEL_71:
    v44 = p_api;
    v45 = *(p_api + 48);
    if (*(v45 + 5) == 1 && *v45 >= 1)
    {
      v46 = *(v45 + 16);
      *(a2 + 14) = v46;
      v47 = *(v45 + 24) / 3600;
      *(a2 + 16) = v47 + 2;
      if ((v47 + 2) >= 0xA8u)
      {
        *(a2 + 14) = v46 + 1;
        *(a2 + 16) = v47 + 90;
      }

      *(a2 + 17) = 3;
      v48 = *(v44 + 40);
      if (!*(v48 + 6132))
      {
        v9 = a4;
        v7 = a6;
        v10 = a3;
        v42 = v204;
        if (!a1)
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      }

      v192 = v43;
      v49 = 0;
      do
      {
        LODWORD(v216[0]) = 0;
        v50 = LongPrnIdx_To_ShortPrnIdx((*(v48 + 4174 + 2 * v49) - 1), v216);
        if (LODWORD(v216[0]) == 1 && *(*(v18 + 48) + v50) == 1)
        {
          v51 = *(a2 + 18);
          *(a2 + 19 + v51) = v50;
          *(a2 + 68 + 2 * v51) = *(v18 + 104 + 108 * v50 + 42);
          *(a2 + 18) = v51 + 1;
        }

        ++v49;
      }

      while (v49 < *(v48 + 6132));
      a5 = v197;
      v9 = a4;
      v7 = a6;
      v10 = a3;
      v42 = v204;
      v43 = v192;
    }

LABEL_82:
    if (!a1)
    {
      goto LABEL_87;
    }

LABEL_83:
    if (v43)
    {
      v16 = 1;
      *(a1 + 4) = 1;
LABEL_88:
      *(a1 + 14) = v30;
      *(a1 + 15) = v39;
      goto LABEL_89;
    }

LABEL_87:
    v16 = v42 | v43;
    if (!a1)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (a2)
  {
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

LABEL_89:
  if (v209[32] == 1)
  {
    v205 = v16;
    if (v10)
    {
      *(v10 + 144) = 0u;
      *(v10 + 160) = 0u;
      *(v10 + 112) = 0u;
      *(v10 + 128) = 0u;
      *(v10 + 80) = 0u;
      *(v10 + 96) = 0u;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0u;
      *v10 = 0u;
      *v10 = 32;
      *(v10 + 11) = 1029;
      *(v10 + 13) = 4;
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = p_api;
    v57 = *(p_api + 56);
    v58 = *(p_api + 328);
    do
    {
      if ((*(v57[2036] + v52) & 1) != 0 || *(v58 + 123 + v52) == 1)
      {
        ++v54;
        v53 |= 1 << v52;
      }

      else
      {
        v55 += *(v57[1401] + v52) ^ 1;
      }

      ++v52;
    }

    while (v52 != 24);
    if (v10)
    {
      *(v10 + 168) = v53;
      if (v54 + v55 > 20)
      {
        v59 = 0;
      }

      else
      {
        v59 = 1;
        *(v10 + 6) = 1;
      }
    }

    else
    {
      v59 = v54 + v55 < 21;
    }

    LOBYTE(v215[0]) = v54;
    v60 = *(v56 + 48);
    if (*(v60 + 5) == 1 && *v60 >= 3)
    {
      v61 = (*(v60 + 24) + 604800 * *(v60 + 16));
    }

    else
    {
      v61 = 0;
    }

    if (*v56 != 11)
    {
      v62 = *(*(v56 + 80) + 36);
      v63 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v62;
      v9 = a4;
      v61 = (v63 / 1000 + v61);
    }

    v64 = 0;
    v65 = 0;
    v66 = v58 + 99;
    do
    {
      if (*(v57[2034] + v64) == 1)
      {
        ++v65;
      }

      else if (*(v66 + v64) == 1)
      {
        memset(v216, 0, 62);
        v65 += Core_Get_GLON_Eph((v64 + 1), v61, v216);
      }

      ++v64;
    }

    while (v64 != 24);
    if (!a3 || ((v65 > 5) & ~v59) != 0)
    {
      v67 = !((v65 > 5) & ~v59) | v59;
      LOBYTE(v213) = v65;
      v68 = v205;
      if (!a3)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v67 = 1;
      *(a3 + 7) = 1;
      LOBYTE(v213) = v65;
      v68 = v205;
    }

    v193 = v67;
    v69 = 0;
    for (i = 1; i != 25; ++i)
    {
      memset(v216, 0, 62);
      GLON_Eph = Core_Get_GLON_Eph(i, v61, v216);
      if (DWORD2(v216[0]) == 2139062143)
      {
        v72 = 0;
      }

      else
      {
        v72 = GLON_Eph;
      }

      v69 += v72;
    }

    if (v69 <= 5u)
    {
      *(a3 + 9) = 1;
    }

    v9 = a4;
    v67 = v193;
    if (v193)
    {
      *(a3 + 4) = 257;
      *(a3 + 8) = 0;
      *(a3 + 10) = 1;
    }

    v73 = p_api;
    v74 = *(p_api + 48);
    if (*(v74 + 5) == 1 && *v74 >= 1)
    {
      v75 = *(v74 + 68);
      *(a3 + 14) = v75;
      v76 = *(v74 + 72) / 3600;
      *(a3 + 16) = v76 + 2;
      if ((v76 + 2) >= 0xA8u)
      {
        *(a3 + 14) = v75 + 1;
        *(a3 + 16) = v76 + 90;
      }

      *(a3 + 17) = 1;
      v77 = *(v73 + 40);
      if (!*(v77 + 6132))
      {
        a5 = v197;
        v9 = a4;
        if (!a1)
        {
          goto LABEL_145;
        }

        goto LABEL_142;
      }

      v78 = 0;
      do
      {
        LODWORD(v216[0]) = 0;
        v79 = LongPrnIdx_To_ShortPrnIdx((*(v77 + 4174 + 2 * v78) - 1), v216);
        if (LODWORD(v216[0]) == 2 && *(v57[2034] + v79) == 1)
        {
          v80 = BYTE2(v57[8 * v79 + 1406]);
          v81 = *(a3 + 18);
          *(a3 + 19 + v81) = v79;
          *(a3 + 68 + 2 * v81) = ((v80 & 0x7F) - 1);
          *(a3 + 18) = v81 + 1;
        }

        ++v78;
      }

      while (v78 < *(v77 + 6132));
      a5 = v197;
      v9 = a4;
      v68 = v205;
      v67 = v193;
    }

LABEL_141:
    if (!a1)
    {
      goto LABEL_145;
    }

LABEL_142:
    if (v67)
    {
      v16 = 1;
      *(a1 + 5) = 1;
      v7 = a6;
LABEL_146:
      *(a1 + 17) = v54;
      *(a1 + 18) = v65;
      goto LABEL_147;
    }

LABEL_145:
    v16 = v67 | v68;
    v7 = a6;
    if (!a1)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  if (v10)
  {
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
  }

LABEL_147:
  if (v209[36] != 1)
  {
    if (a7)
    {
      *(a7 + 144) = 0u;
      *(a7 + 160) = 0u;
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0u;
      *(a7 + 80) = 0u;
      *(a7 + 96) = 0u;
      *(a7 + 48) = 0u;
      *(a7 + 64) = 0u;
      *(a7 + 16) = 0u;
      *(a7 + 32) = 0u;
      *a7 = 0u;
    }

    goto LABEL_199;
  }

  v206 = v16;
  if (a7)
  {
    *(a7 + 144) = 0u;
    *(a7 + 160) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
    *a7 = 2;
    *(a7 + 11) = 257;
    *(a7 + 13) = 1;
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = p_api;
  v87 = *(p_api + 56);
  v88 = *(p_api + 328);
  do
  {
    if ((*(v87[2078] + v82) & 1) != 0 || *(v88 + 186 + v82) == 1)
    {
      ++v84;
      v83 |= 1 << v82;
    }

    else
    {
      v85 += *(v87[2070] + v82) ^ 1;
    }

    ++v82;
  }

  while (v82 != 36);
  if (a7)
  {
    *(a7 + 168) = v83;
    if (v84 + v85 > 23)
    {
      v89 = 0;
    }

    else
    {
      v89 = 1;
      *(a7 + 6) = 1;
    }
  }

  else
  {
    v89 = v84 + v85 < 24;
  }

  LOBYTE(v215[0]) = v84;
  v90 = *(v86 + 48);
  if (*(v90 + 5) == 1 && *v90 >= 3)
  {
    v91 = (*(v90 + 24) + 604800 * *(v90 + 16));
  }

  else
  {
    v91 = 0;
  }

  if (*v86 != 11)
  {
    v92 = *(*(v86 + 80) + 36);
    v93 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v92;
    v9 = a4;
    v91 = (v93 / 1000 + v91);
  }

  v94 = 0;
  v95 = 0;
  v96 = v88 + 150;
  do
  {
    if (*(v87[2076] + v94) == 1)
    {
      ++v95;
    }

    else if (*(v96 + v94) == 1)
    {
      memset(v216, 0, 87);
      v95 += Core_Get_GAL_Eph((v94 + 1), v91, v216);
    }

    ++v94;
  }

  while (v94 != 36);
  v97 = a7;
  if (a7 && ((v95 > 7) & ~v89) == 0)
  {
    *(a7 + 7) = 1;
    LOBYTE(v213) = v95;
    v7 = a6;
    goto LABEL_181;
  }

  v98 = !((v95 > 7) & ~v89) | v89;
  LOBYTE(v213) = v95;
  v7 = a6;
  if (a7)
  {
    if (!(!((v95 > 7) & ~v89) | v89 & 1))
    {
      v98 = 0;
      goto LABEL_182;
    }

    v97 = a7;
LABEL_181:
    *(v97 + 4) = 257;
    *(v97 + 8) = 0;
    v98 = 1;
    *(v97 + 10) = 1;
LABEL_182:
    v99 = p_api;
    v100 = *(p_api + 48);
    if (*(v100 + 5) == 1 && *v100 >= 1)
    {
      v101 = *(v100 + 16);
      if (v101 >= 1024)
      {
        *(a7 + 14) = v101 - 1024;
        v102 = *(v100 + 24) / 3600;
        *(a7 + 16) = v102 + 2;
        if ((v102 + 2) >= 0xA8u)
        {
          *(a7 + 14) = v101 - 1023;
          *(a7 + 16) = v102 + 90;
        }

        *(a7 + 17) = 3;
        v103 = *(v99 + 40);
        if (*(v103 + 6132))
        {
          v104 = 0;
          do
          {
            LODWORD(v216[0]) = 0;
            v105 = LongPrnIdx_To_ShortPrnIdx((*(v103 + 4174 + 2 * v104) - 1), v216);
            if (LODWORD(v216[0]) == 3 && *(v87[2076] + v105) == 1)
            {
              v106 = *(a7 + 18);
              *(a7 + 19 + v106) = v105;
              *(a7 + 68 + 2 * v106) = v87[11 * v105 + 2094];
              *(a7 + 18) = v106 + 1;
            }

            ++v104;
          }

          while (v104 < *(v103 + 6132));
        }

        a5 = v197;
        v9 = a4;
        v7 = a6;
      }
    }
  }

  if (a1 && (v98 & 1) != 0)
  {
    v16 = 1;
    *(a1 + 9) = 1;
  }

  else
  {
    v16 = v98 | v206;
    if (!a1)
    {
      goto LABEL_199;
    }
  }

  *(a1 + 29) = v84;
  *(a1 + 30) = v95;
LABEL_199:
  if (v209[35] != 1)
  {
    if (v7)
    {
      *(v7 + 144) = 0u;
      *(v7 + 160) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *v7 = 0u;
    }

    goto LABEL_253;
  }

  if (v7)
  {
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    *v7 = 64;
    *(v7 + 11) = 1543;
    *(v7 + 13) = 6;
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = p_api;
  v112 = *(p_api + 56);
  v113 = *(p_api + 328);
  do
  {
    if ((*(v112[3060] + v107) & 1) != 0 || *(v113 + 260 + v107) == 1)
    {
      ++v109;
      v108 |= 1 << v107;
    }

    else
    {
      v110 += *(v112[3052] + v107) ^ 1;
    }

    ++v107;
  }

  while (v107 != 37);
  v207 = v16;
  if (v7)
  {
    *(v7 + 168) = v108;
    if (v109 + v110 > 23)
    {
      v114 = 0;
    }

    else
    {
      v114 = 1;
      *(v7 + 6) = 1;
    }
  }

  else
  {
    v114 = v109 + v110 < 24;
  }

  LOBYTE(v215[0]) = v109;
  v115 = *(v111 + 48);
  if (*(v115 + 5) == 1 && *v115 >= 3)
  {
    v116 = (*(v115 + 24) + 604800 * *(v115 + 16));
  }

  else
  {
    v116 = 0;
  }

  if (*v111 != 11)
  {
    v117 = *(*(v111 + 80) + 36);
    v118 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v117;
    v9 = a4;
    v116 = (v118 / 1000 + v116);
  }

  v119 = 0;
  v120 = 0;
  v121 = v113 + 223;
  do
  {
    if (*(v112[3058] + v119) == 1)
    {
      ++v120;
    }

    else if (*(v121 + v119) == 1)
    {
      LODWORD(v216[6]) = 0;
      memset(v216, 0, 23);
      memset(&v216[1] + 8, 0, 64);
      *(&v216[5] + 6) = 0;
      v120 += Core_Get_BDS_Eph((v119 + 1), v116, v216);
    }

    ++v119;
  }

  while (v119 != 37);
  v7 = a6;
  if (a6 && ((v120 > 7) & ~v114) == 0)
  {
    *(a6 + 7) = 1;
    LOBYTE(v213) = v120;
    a5 = v197;
    goto LABEL_232;
  }

  v122 = !((v120 > 7) & ~v114) | v114;
  LOBYTE(v213) = v120;
  a5 = v197;
  if (a6)
  {
    if ((v122 & 1) == 0)
    {
      v122 = 0;
      goto LABEL_233;
    }

LABEL_232:
    *(a6 + 4) = 257;
    *(a6 + 8) = 0;
    v122 = 1;
    *(a6 + 10) = 1;
LABEL_233:
    v123 = p_api;
    v124 = *(p_api + 48);
    if (*(v124 + 5) == 1 && *v124 >= 1)
    {
      v125 = *(v124 + 16);
      if (v125 >= 1356)
      {
        *(a6 + 14) = v125 - 1356;
        v126 = *(v124 + 24) / 3600;
        *(a6 + 16) = v126 + 2;
        if ((v126 + 2) >= 0xA8u)
        {
          *(a6 + 14) = v125 - 1355;
          *(a6 + 16) = v126 + 90;
        }

        *(a6 + 17) = 3;
        v127 = *(v123 + 40);
        if (*(v127 + 6132))
        {
          v128 = 0;
          do
          {
            LODWORD(v216[0]) = 0;
            v129 = LongPrnIdx_To_ShortPrnIdx((*(v127 + 4174 + 2 * v128) - 1), v216);
            if (LODWORD(v216[0]) == 4 && *(v112[3058] + v129) == 1)
            {
              v130 = *(a6 + 18);
              *(a6 + 19 + v130) = v129;
              *(a6 + 68 + 2 * v130) = *(v112 + 25 * v129 + 6132) / 0xE10u;
              *(a6 + 18) = v130 + 1;
            }

            ++v128;
          }

          while (v128 < *(v127 + 6132));
          a5 = v197;
          v9 = a4;
          v7 = a6;
        }

        else
        {
          a5 = v197;
          v9 = a4;
        }
      }
    }
  }

  if (a1 && (v122 & 1) != 0)
  {
    v16 = 1;
    *(a1 + 8) = 1;
  }

  else
  {
    v16 = v122 | v207;
    if (!a1)
    {
      goto LABEL_253;
    }
  }

  *(a1 + 26) = v109;
  *(a1 + 27) = v120;
LABEL_253:
  if (v209[33] == 1)
  {
    v208 = v16;
    if (v9)
    {
      *(v9 + 144) = 0u;
      *(v9 + 160) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *v9 = 0u;
      *v9 = 16;
      *(v9 + 11) = 514;
      *(v9 + 13) = 2;
    }

    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = p_api;
    v135 = *(p_api + 56);
    v136 = *(p_api + 328);
    do
    {
      if ((*(*(v135 + 8568) + v131) & 1) != 0 || *(v136 + 89 + v131) == 1)
      {
        ++v133;
        v132 |= 1 << v131;
      }

      ++v131;
    }

    while (v131 != 10);
    if (v9)
    {
      *(v9 + 168) = v132;
      if (v133 <= 0)
      {
        v137 = 1;
        *(v9 + 6) = 1;
      }

      else
      {
        v137 = 0;
      }
    }

    else
    {
      v137 = v133 < 1;
    }

    LOBYTE(v215[0]) = v133;
    v139 = *(v134 + 48);
    if (*(v139 + 5) == 1 && *v139 >= 3)
    {
      v140 = (*(v139 + 24) + 604800 * *(v139 + 16));
    }

    else
    {
      v140 = 0;
    }

    if (*v134 != 11)
    {
      v141 = *(*(v134 + 80) + 36);
      v142 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v141;
      v9 = a4;
      v140 = (v142 / 1000 + v140);
    }

    v143 = 0;
    v144 = 0;
    v145 = v136 + 79;
    do
    {
      if (*(*(v135 + 8552) + v143) == 1)
      {
        ++v144;
      }

      else if (*(v145 + v143) == 1)
      {
        memset(v216, 0, 108);
        v144 += Core_Get_QZSS_Eph((v143 - 63), v140, v216);
      }

      ++v143;
    }

    while (v143 != 10);
    if (!v9 || ((v144 > 1) & ~v137) != 0)
    {
      v147 = !((v144 > 1) & ~v137) | v137;
      LOBYTE(v213) = v144;
      v7 = a6;
      v146 = v208;
      if (!v9)
      {
        goto LABEL_297;
      }

      if (!(!((v144 > 1) & ~v137) | v137 & 1))
      {
        v147 = 0;
        goto LABEL_286;
      }
    }

    else
    {
      *(v9 + 7) = 1;
      LOBYTE(v213) = v144;
      v7 = a6;
      v146 = v208;
    }

    *(v9 + 4) = 257;
    *(v9 + 8) = 0;
    *(v9 + 10) = 0;
    v147 = 1;
LABEL_286:
    v148 = p_api;
    v149 = *(p_api + 48);
    if (*(v149 + 5) == 1 && *v149 >= 1)
    {
      v150 = *(v149 + 16);
      *(v9 + 14) = v150;
      v151 = *(v149 + 24) / 3600;
      *(v9 + 16) = v151 + 2;
      if ((v151 + 2) >= 0xA8u)
      {
        *(v9 + 14) = v150 + 1;
        *(v9 + 16) = v151 + 90;
      }

      *(v9 + 17) = 3;
      v152 = *(v148 + 40);
      if (!*(v152 + 6132))
      {
        a5 = v197;
        v7 = a6;
        v146 = v208;
        if (!a1)
        {
          goto LABEL_302;
        }

        goto LABEL_298;
      }

      v194 = v147;
      v153 = 0;
      do
      {
        LODWORD(v216[0]) = 0;
        v154 = LongPrnIdx_To_ShortPrnIdx((*(v152 + 4174 + 2 * v153) - 1), v216);
        if (LODWORD(v216[0]) == 5 && *(*(v135 + 8552) + v154) == 1)
        {
          v155 = *(a4 + 18);
          *(v9 + 19 + v155) = v154;
          *(v9 + 68 + 2 * v155) = *(v135 + 8608 + 108 * v154 + 42);
          *(a4 + 18) = v155 + 1;
        }

        ++v153;
      }

      while (v153 < *(v152 + 6132));
      a5 = v197;
      v7 = a6;
      v146 = v208;
      v147 = v194;
    }

LABEL_297:
    if (!a1)
    {
      goto LABEL_302;
    }

LABEL_298:
    if (v147)
    {
      v16 = 1;
      *(a1 + 6) = 1;
LABEL_303:
      *(a1 + 20) = v133;
      *(a1 + 21) = v144;
      v138 = v198;
      goto LABEL_304;
    }

LABEL_302:
    v16 = v147 | v146;
    if (!a1)
    {
      v156 = v209 + 34;
      if (v209[34] == 1)
      {
        API_Get_GNSS_Assist_Req_SBAS(v215, &v213, a5);
        v16 = 1;
        v138 = v198;
        goto LABEL_313;
      }

      v138 = v198;
LABEL_311:
      if (a5)
      {
        *(a5 + 144) = 0u;
        *(a5 + 160) = 0u;
        *(a5 + 112) = 0u;
        *(a5 + 128) = 0u;
        *(a5 + 80) = 0u;
        *(a5 + 96) = 0u;
        *(a5 + 48) = 0u;
        *(a5 + 64) = 0u;
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *a5 = 0u;
      }

      goto LABEL_313;
    }

    goto LABEL_303;
  }

  v138 = v198;
  if (v9)
  {
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
  }

LABEL_304:
  v156 = v209 + 34;
  if ((v209[34] & 1) == 0)
  {
    goto LABEL_311;
  }

  API_Get_GNSS_Assist_Req_SBAS(v215, &v213, a5);
  v16 = 1;
  if (!a1)
  {
LABEL_313:
    if ((v138[297] & 1) == 0)
    {
      if (!a1)
      {
        goto LABEL_371;
      }

      goto LABEL_319;
    }

    if (!a1)
    {
      goto LABEL_371;
    }

LABEL_315:
    v157 = v138 + 0x4000;
    v158 = *(p_api + 48);
    if (*(v158 + 5) == 1 && *v158 >= 3)
    {
      v159 = 1000 * ((*(v158 + 24) + 604800 * *(v158 + 16)) % 604800);
    }

    else
    {
      v159 = 0;
    }

    v160 = *(p_api + 8);
    v161 = *v160;
    if (*v160)
    {
      v162 = v16;
      v163 = v160[4];
      v164 = mach_continuous_time();
      v165 = v161 - v163;
      v16 = v162;
      v166 = v165 + (*&g_MacClockTicksToMsRelation * v164);
    }

    else
    {
      v166 = 0;
    }

    v167 = v166 - *(v195 + 8);
    v168 = __OFADD__(v167, v159);
    v169 = v167 + v159;
    v170 = v169 + 604800000;
    if (v169 < 0 == v168)
    {
      v170 = v169;
    }

    if (v169 <= 604800000)
    {
      v171 = v170;
    }

    else
    {
      v171 = v169 - 604800000;
    }

    if ((v171 - *(v157 + 320) + 14999) <= 0xAFC6)
    {
      v172 = v157[1288];
      if (v157[1288])
      {
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = v157 + 1294;
        do
        {
          v181 = *(v180 - 2);
          if (v181 > 3)
          {
            if (v181 == 6)
            {
              v182 = v176 + 1;
            }

            else
            {
              v182 = v176;
            }

            if (v181 == 5)
            {
              v183 = v177 + 1;
            }

            else
            {
              v183 = v177;
            }

            if (v181 == 5)
            {
              v182 = v176;
            }

            if (v181 == 4)
            {
              ++v175;
            }

            else
            {
              v177 = v183;
              v176 = v182;
            }
          }

          else
          {
            switch(v181)
            {
              case 1u:
                ++v179;
                break;
              case 2u:
                ++v178;
                v184 = *v180 - 1;
                if (*(*(p_api + 56) + 4 * v184 + 16336) != 2139062143 || v198[148] == 1 && v198[v184 + 17640] != 127)
                {
                  ++v173;
                }

                break;
              case 3u:
                ++v174;
                break;
            }
          }

          v180 += 28;
          --v172;
        }

        while (v172);
      }

      else
      {
        v179 = 0;
        v178 = 0;
        LOBYTE(v177) = 0;
        LOBYTE(v176) = 0;
        v175 = 0;
        v174 = 0;
        v173 = 0;
      }

      *(a1 + 16) = v179;
      *(a1 + 19) = v178;
      *(a1 + 22) = v177;
      *(a1 + 25) = v176;
      *(a1 + 28) = v175;
      *(a1 + 31) = v174;
      if (v209[31] == 1 && v179 < 0x10u || v209[32] == 1 && v178 < 0xEu || v209[33] == 1 && v177 < 0xAu || *v156 == 1 && v176 < 6u)
      {
        v185 = 1;
        v186 = a3;
      }

      else
      {
        v186 = a3;
        if (v209[35] == 1 && v175 < 0x12u)
        {
          v185 = 1;
        }

        else if (v174 < 0x12u)
        {
          v185 = v209[36];
        }

        else
        {
          v185 = 0;
        }
      }

      *(a1 + 3) = v185;
      if (v186 && *(v186 + 9) == 1 && v173 >= 6u && v178 == v173)
      {
        *(v186 + 9) = 0;
      }
    }

    goto LABEL_371;
  }

  *(a1 + 7) = 1;
  *(a1 + 23) = LOBYTE(v215[0]);
  *(a1 + 24) = v213;
  if (v138[297])
  {
    goto LABEL_315;
  }

LABEL_319:
  *(a1 + 3) = 1;
LABEL_371:
  if (*p_api != 11)
  {
    v187 = *(v196 + 36);
    v188 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v187;
    if (v188 >= 1800001)
    {
      if (!a1)
      {
LABEL_388:
        v16 = 1;
        goto LABEL_393;
      }

      *(a1 + 10) = 0;
      if (a2)
      {
        *(a2 + 7) = 1;
      }

      if (a3)
      {
        *(a3 + 7) = 1;
      }

      if (a7)
      {
        *(a7 + 7) = 1;
      }

      if (v7)
      {
        *(v7 + 7) = 1;
      }

      if (a4)
      {
        *(a4 + 7) = 1;
      }

      if (a5)
      {
        *(a5 + 7) = 1;
      }

      if (v188 <= 0xDBBA00)
      {
        v189 = 14400000 - v188;
        *(a1 + 15) = v189 * *(a1 + 15) / 0xDBBA00;
        *(a1 + 18) = v189 * *(a1 + 18) / 0xDBBA00;
        *(a1 + 30) = v189 * *(a1 + 30) / 0xDBBA00;
        *(a1 + 27) = v189 * *(a1 + 27) / 0xDBBA00;
        *(a1 + 21) = v189 * *(a1 + 21) / 0xDBBA00;
        *(a1 + 24) = v189 * *(a1 + 24) / 0xDBBA00;
        v16 = 1;
      }

      else
      {
        *(a1 + 15) = 0;
        *(a1 + 18) = 0;
        *(a1 + 30) = 0;
        *(a1 + 27) = 0;
        *(a1 + 21) = 0;
        v16 = 1;
        *(a1 + 24) = 0;
      }
    }
  }

  if (a1 && (v16 & 1) != 0)
  {
    *a1 = 16843009;
  }

LABEL_393:
  v190 = *MEMORY[0x29EDCA608];
  return v16 & 1;
}

_BYTE *API_Get_GNSS_Assist_Req_SBAS(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 4;
    *(a3 + 11) = 1286;
    *(a3 + 13) = 5;
    *(a3 + 6) = 1;
  }

  *result = 0;
  if (*p_api != 11)
  {
    result = mach_continuous_time();
  }

  if (a3)
  {
    *(a3 + 7) = 1;
    *a2 = 0;
    *(a3 + 4) = 257;
    *(a3 + 8) = 0;
    *(a3 + 10) = 0;
    v5 = *(p_api + 48);
    if (*(v5 + 5) == 1 && *v5 >= 1)
    {
      v6 = *(v5 + 16);
      *(a3 + 14) = v6;
      v7 = (*(v5 + 24) + 1800) / 3600;
      *(a3 + 16) = v7;
      if ((v7 & 0xF8u) >= 0xA8)
      {
        *(a3 + 14) = v6 + 1;
        *(a3 + 16) = v7 + 88;
      }

      *(a3 + 17) = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_GPS_CBinEph(char *a1, uint64_t a2, unsigned int *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed(a1);
  if (result)
  {
    v8 = a2 - 1;
    v9 = (a2 - 1);
    v10 = v9 >= 0x20;
    v11 = v9 < 0x20;
    if (v10)
    {
      v8 = 0;
    }

    if ((a2 + 63) >= 0xAu)
    {
      v12 = v11;
    }

    else
    {
      v12 = 5;
    }

    if ((a2 + 63) >= 0xAu)
    {
      v13 = v8;
    }

    else
    {
      v13 = a2 + 63;
    }

    if (v12)
    {
      v14 = *(p_api + 328);
      if (g_Enable_Event_Log >= 3u)
      {
        EvLog_nd(a1, 2, v7, a2, *a3);
      }

      result = 1;
      v15 = v14 + 72 * v13;
      if (v12 == 5)
      {
        *(v15 + 4304) = *a3;
        v19 = *(a3 + 1);
        v20 = *(a3 + 2);
        v21 = *(a3 + 3);
        *(v15 + 4368) = *(a3 + 8);
        *(v15 + 4352) = v21;
        *(v15 + 4336) = v20;
        *(v15 + 4320) = v19;
        *(v14 + v13 + 79) = 1;
      }

      else
      {
        *(v15 + 848) = *a3;
        v16 = *(a3 + 1);
        v17 = *(a3 + 2);
        v18 = *(a3 + 3);
        *(v15 + 912) = *(a3 + 8);
        *(v15 + 880) = v17;
        *(v15 + 896) = v18;
        *(v15 + 864) = v16;
        *(v14 + v13 + 15) = 1;
      }
    }

    else
    {
      EvCrt_v("%s FAILED:  SV = %d, Out of range !", a1, a2);
      result = 0;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_Ref_Time(int a1, double i, __int16 a3, double a4)
{
  LOWORD(v4) = a3;
  v45 = *MEMORY[0x29EDCA608];
  v5 = *p_api;
  if (*p_api > 0xBu || ((1 << v5) & 0xD2C) == 0)
  {
    EvCrt_d("API_Set_Ref_Time:  REJECTED.  Incompatible GPS Exe State ", v5);
LABEL_50:
    result = 0;
    goto LABEL_72;
  }

  v10 = *(p_api + 48);
  v11 = *(v10 + 12);
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
    EvCrt_v("API_Set_Ref_Time:  WARNING  Large Time latency (%u - %u) = %d", a1, *(v10 + 12), v11 - a1);
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
  v15 = &qword_29972A508;
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
  if (*(v10 + 5) != 1 || v18 < 1)
  {
    v20 = 0.0;
    if (v18)
    {
LABEL_31:
      if (*(v10 + 5))
      {
        v4 = v4;
LABEL_49:
        EvLog_v("API_Set_Ref_Time:  Not Used.  %u  %d  %g  Sigma  %g  %d  dT  %g", a1, v4, i, a4, v18, v20);
        goto LABEL_50;
      }

      *(v10 + 5) = 1;
      *(v10 + 16) = v4;
      EvLog_v("API_Set_Ref_Time:  Applied.  GPS Wk %d  ", v4);
      v43 = 0.0;
      *v44 = 0;
      API_Get_UTC_Cor(1, &v43);
      v23 = v43;
      GPS_To_Glon_Time(0, *(v10 + 16), *(v10 + 24), v43, v44, &v44[4], (v10 + 72));
      v24 = *v44;
      *(v10 + 68) = *&v44[4];
      *(v10 + 66) = v24;
      *(v10 + 64) = 1;
      goto LABEL_64;
    }

    v21 = p_api;
  }

  else
  {
    v22 = *(v10 + 24);
    v20 = v22 - i + (604800 * (*(v10 + 16) - v4));
    if (v17 <= v18 && v20 * v20 <= a4 * (a4 * 25.0))
    {
      goto LABEL_31;
    }

    EvLog_v("API_Set_Ref_Time: dT %g,  Sigma %g, (%g-%g), (%d-%d)", v20, a4, v22, i, *(v10 + 16), v4);
    *v10 = 0;
    *(v10 + 60) = 0;
    v21 = p_api;
    *(*(p_api + 168) + 12) = 0;
    v25 = *(v21 + 176);
    *(v25 + 128) = 1;
    *(v25 + 132) = 5;
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
    goto LABEL_49;
  }

  *(v10 + 16) = v4;
  *(v10 + 24) = i;
  *(v10 + 5) = 1;
  *v10 = v17;
  *(v10 + 32) = 0;
  *(v10 + 84) = a1;
  if (v17 - 4 <= 4)
  {
    v27 = -0.5;
    if (i * 1000.0 > 0.0)
    {
      v27 = 0.5;
    }

    v28 = i * 1000.0 + v27;
    if (v28 <= 2147483650.0)
    {
      if (v28 >= -2147483650.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x80000000;
      }
    }

    else
    {
      v29 = 0x7FFFFFFF;
    }

    v31 = *(v10 + 8);
    v32 = *(v10 + 12);
    v33 = v29 - v31;
    LODWORD(v43) = 0;
    v44[4] = 0;
    if (Core_Load_TTick_Cal(v31, v32, v29 - v31, &v43, &v44[4]))
    {
      v34 = v44[4];
      v35 = v44[4] >= 0x5Au ? 6 : 7;
      v36 = v44[4] >= 0x1Eu ? v35 : 8;
      if (v36 >= v17)
      {
        v37 = LODWORD(v43);
        Inc_GPS_TOW(SLODWORD(v43) * 0.001, (v10 + 24), (v10 + 16));
        *v10 = v36;
        EvLog_v("API_Set_Ref_Time:  Calib.  %d  %g  %d  %d", v37, *(v10 + 24), v33, v34);
      }
    }
  }

  v43 = 0.0;
  *v44 = 0;
  API_Get_UTC_Cor(1, &v43);
  v23 = v43;
  GPS_To_Glon_Time(0, *(v10 + 16), *(v10 + 24), v43, v44, &v44[4], (v10 + 72));
  v38 = *v44;
  *(v10 + 68) = *&v44[4];
  *(v10 + 66) = v38;
  *(v10 + 64) = 1;
LABEL_64:
  *(v10 + 60) = *v10;
  v39 = -0.5;
  if (v23 > 0.0)
  {
    v39 = 0.5;
  }

  v40 = v23 + v39;
  if (v40 <= 2147483650.0)
  {
    if (v40 >= -2147483650.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x80000000;
    }
  }

  else
  {
    v41 = 0x7FFFFFFFLL;
  }

  GLON_Clear_SV_Ref_State_On_LeapSec_Jump(v41, v10, *(p_api + 96));
  *(v10 + 80) = v41;
  EvLog_v("API_Set_Ref_Time:  Glo Time  %d  %d  %d  %g  %d", *(v10 + 66), *(v10 + 68), *(v10 + 64), *(v10 + 72), *(v10 + 60));
  result = 1;
LABEL_72:
  v42 = *MEMORY[0x29EDCA608];
  return result;
}

char *GLON_Clear_SV_Ref_State_On_LeapSec_Jump(char *result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 80);
  if (v3 >= 1 && v3 != result)
  {
    v5 = a3 + 6144;
    v6 = 24;
    do
    {
      if ((*(v5 + 184) - 1) <= 1)
      {
        *(v5 + 172) = 0uLL;
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
    result = EvLog_v("GLON_Clear_SV_Ref_State_On_LeapSec_Jump: Leap Sec jump [prev_LS: %d curr_LS: %d], Clearing Prev Computed GLON Orbit Ref States", *(a2 + 80), result);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_Ref_UTC_Time(unsigned __int16 *a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v1 = *p_api;
  if (*p_api > 0xBu || ((1 << v1) & 0xD2C) == 0)
  {
    EvCrt_d("API_Set_Ref_UTC_Time:  REJECTED.  Incompatible GPS Exe State ", v1);
LABEL_54:
    result = 0;
    goto LABEL_75;
  }

  v4 = *(p_api + 48);
  v5 = *(v4 + 12);
  v6 = *(a1 + 5);
  v7 = v5 - v6;
  if (v5 - v6 >= 0)
  {
    v8 = v5 - v6;
  }

  else
  {
    v8 = v6 - v5;
  }

  if (v8 >= 0xDBBA1)
  {
    EvLog_v("API_Set_Ref_UTC_Time:  WARNING  Large Time latency (%u - %u) = %d", v6, *(v4 + 12), v5 - v6);
  }

  v49 = 0;
  v47 = 0.0;
  v48 = 0.0;
  if (*(v4 + 5))
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  do
  {
    API_Get_UTC_Cor(1, &v47);
    UTC_To_GPS_Time(&v49, &v48, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], v47, a1[6]);
    v10 = v49;
    *(v4 + 16) = v49;
    *(v4 + 5) = 1;
    --v9;
  }

  while (v9);
  EvLog_v("API_Set_Ref_UTC_Time:  GPS Time  %d  %d  %g", v10, 1, v48);
  LODWORD(v11) = *(a1 + 4);
  v12 = v11 * 0.001;
  if (v5 != v6)
  {
    v13 = v7 * 0.001 + v48;
    v48 = v13;
    if (v13 >= 604800.0)
    {
      v14 = v49;
      do
      {
        v13 = v13 + -604800.0;
        ++v14;
      }

      while (v13 >= 604800.0);
      v48 = v13;
      v49 = v14;
    }

    if (v13 < 0.0)
    {
      v15 = v49;
      do
      {
        v13 = v13 + 604800.0;
        --v15;
      }

      while (v13 < 0.0);
      v48 = v13;
      v49 = v15;
    }

    v12 = v12 + v7 * 0.00000001;
  }

  v16 = 0;
  v17 = &qword_29972A508;
  while (v16 != 7)
  {
    v18 = *v17--;
    ++v16;
    if (v12 <= v18)
    {
      v19 = 8 - v16;
      goto LABEL_29;
    }
  }

  v19 = 0;
LABEL_29:
  v20 = *v4;
  if (*(v4 + 5) != 1 || v20 < 1)
  {
    v22 = 0.0;
    if (v20)
    {
LABEL_53:
      EvLog_v("API_Set_Ref_UTC_Time:  Not Used.  %u  %d  %g  Sigma  %g  %d  dT  %g", *(a1 + 5), v49, v48, v12, v20, v22);
      goto LABEL_54;
    }

    v23 = p_api;
  }

  else
  {
    v24 = *(v4 + 24);
    v22 = v24 - v48 + (604800 * (*(v4 + 16) - v49));
    if (v19 <= v20 && v22 * v22 <= v12 * (v12 * 25.0))
    {
      goto LABEL_53;
    }

    EvLog_v("API_Set_Ref_UTC_Time:  dT %g,  Sigma %g, (%g-%g), (%d-%d)", v22, v12, v24, v48, *(v4 + 16), v49);
    *v4 = 0;
    *(v4 + 60) = 0;
    v23 = p_api;
    *(*(p_api + 168) + 12) = 0;
    v25 = *(v23 + 176);
    *(v25 + 128) = 1;
    *(v25 + 132) = 5;
  }

  if (*v23 == 8 || *v23 == 5)
  {
    *v23 = 2;
  }

  EvLog_v("API_Set_Ref_UTC_Time:  Applied.  %u  %d  %g  Sigma  %g  %d  dT  %g", *(a1 + 5), v49, v48, v12, v19, v22);
  if (!v19)
  {
    EvLog("API_Set_Ref_UTC_Time:  WARNING: Input Ref_Sigma too big !");
    v20 = *v4;
    goto LABEL_53;
  }

  *(v4 + 5) = 1;
  *(v4 + 16) = v49;
  v27 = v48;
  *(v4 + 24) = v48;
  *v4 = v19;
  *(v4 + 32) = 0;
  *(v4 + 84) = *(a1 + 5);
  if (v19 - 4 <= 4)
  {
    v28 = v27 * 1000.0;
    v29 = -0.5;
    if (v28 > 0.0)
    {
      v29 = 0.5;
    }

    v30 = v28 + v29;
    if (v30 <= 2147483650.0)
    {
      if (v30 >= -2147483650.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x80000000;
      }
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }

    v33 = *(v4 + 8);
    v34 = *(v4 + 12);
    v35 = v31 - v33;
    LODWORD(v47) = 0;
    BYTE4(v46) = 0;
    if (Core_Load_TTick_Cal(v33, v34, v31 - v33, &v47, &v46 + 4))
    {
      v36 = BYTE4(v46);
      v37 = BYTE4(v46) >= 0x5Au ? 6 : 7;
      v38 = BYTE4(v46) >= 0x1Eu ? v37 : 8;
      if (v38 >= v19)
      {
        v39 = LODWORD(v47);
        Inc_GPS_TOW(SLODWORD(v47) * 0.001, (v4 + 24), (v4 + 16));
        *v4 = v38;
        EvLog_v("API_Set_Ref_UTC_Time:  Calib.  %d  %g  %d  %d", v39, *(v4 + 24), v35, v36);
      }
    }
  }

  v46 = 0;
  v47 = 0.0;
  API_Get_UTC_Cor(1, &v47);
  v40 = v47;
  GPS_To_Glon_Time(0, *(v4 + 16), *(v4 + 24), v47, &v46, &v46 + 1, (v4 + 72));
  v41 = v46;
  *(v4 + 68) = WORD2(v46);
  *(v4 + 66) = v41;
  *(v4 + 64) = 1;
  *(v4 + 60) = *v4;
  v42 = -0.5;
  if (v40 > 0.0)
  {
    v42 = 0.5;
  }

  v43 = v40 + v42;
  if (v43 <= 2147483650.0)
  {
    if (v43 >= -2147483650.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x80000000;
    }
  }

  else
  {
    v44 = 0x7FFFFFFFLL;
  }

  GLON_Clear_SV_Ref_State_On_LeapSec_Jump(v44, v4, *(p_api + 96));
  *(v4 + 80) = v44;
  EvLog_v("API_Set_Ref_UTC_Time:  Glo Time  %d  %d  %d  %g  %d", *(v4 + 66), *(v4 + 68), *(v4 + 64), *(v4 + 72), *(v4 + 60));
  result = 1;
LABEL_75:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t API_Set_Ref_Glon_Time(int a1, __int16 a2, __int16 a3, double a4, double a5)
{
  v43 = *MEMORY[0x29EDCA608];
  v42 = a2;
  v41 = a3;
  v40 = a4;
  if (*p_api > 0xBu || ((1 << *p_api) & 0xD2C) == 0)
  {
    EvCrt_d("API_Set_Ref_Time:  REJECTED.  Incompatible GPS Exe State ", *p_api);
LABEL_56:
    v31 = 0;
    goto LABEL_57;
  }

  v8 = *(p_api + 48);
  v9 = *(v8 + 12);
  v10 = v9 - a1;
  if (v9 - a1 >= 0)
  {
    v11 = v9 - a1;
  }

  else
  {
    v11 = a1 - v9;
  }

  if (v11 < 0xDBBA1)
  {
    if (v9 != a1)
    {
      v12 = v10;
      Inc_Glon_TOD(v10 * 0.001, &v40, &v41, &v42);
      a5 = a5 + v12 * 0.00000001;
    }
  }

  else
  {
    EvLog_v("API_Set_Ref_Time:  WARNING  Large Time latency (%u - %u) = %d", a1, *(v8 + 12), v9 - a1);
  }

  v13 = 0;
  v14 = &qword_29972A508;
  while (v13 != 7)
  {
    v15 = *v14--;
    ++v13;
    if (a5 <= v15)
    {
      v16 = 8 - v13;
      goto LABEL_17;
    }
  }

  v16 = 0;
LABEL_17:
  v17 = *(v8 + 60);
  if (*(v8 + 64) == 1 && v17 >= 1)
  {
    v25 = *(v8 + 68);
    v26 = *(v8 + 66);
    v19 = v42;
    v20 = *(v8 + 72) - v40 + (86400 * (v25 - v41 + 1461 * (v26 - v42)));
    if (v16 <= v17 && v20 * v20 <= a5 * 5.0 * (a5 * 5.0))
    {
      v21 = v41;
      if (!*(v8 + 64))
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    EvLog_v("API_Set_Ref_Glon_Time: dT %g,  Sigma %g,  (%d-%d),  (%d-%d),  (%g-%g),", v20, a5, v26, v42, v25, v41, *(v8 + 72), v40);
    *(v8 + 60) = 0;
    *v8 = 0;
    v32 = p_api;
    *(*(p_api + 168) + 12) = 0;
    v33 = *(v32 + 176);
    *(v33 + 128) = 1;
    *(v33 + 132) = 5;
LABEL_38:
    if (*v32 == 8 || *v32 == 5)
    {
      *v32 = 2;
    }

    v23 = v42;
    v24 = v41;
    v22 = v40;
    EvLog_v("API_Set_Ref_Glon_Time:  Applied.  %u  %d  %d  %g  Sigma  %g  %d  dT  %g", a1, v42, v41, v40, a5, v16, v20);
    if (v16)
    {
      *(v8 + 64) = 1;
      *(v8 + 66) = v23;
      *(v8 + 68) = v24;
      *(v8 + 72) = v22;
      *(v8 + 60) = v16;
      *(v8 + 32) = 0;
      *(v8 + 84) = a1;
      v38 = 0.0;
      *v39 = 0;
      if (*(v8 + 5))
      {
        v35 = 2;
      }

      else
      {
        v35 = 3;
      }

      do
      {
        API_Get_UTC_Cor(1, &v38);
        Glon_To_GPS_Time(*(v8 + 66), *(v8 + 68), *(v8 + 72), v38, &v39[1], v39, (v8 + 24));
        v28 = v39[0];
        if (v39[1] >= 1)
        {
          v28 = LOWORD(v39[0]) + (LOWORD(v39[1]) << 10);
          v39[0] += v39[1] << 10;
          v39[1] = 0;
        }

        *(v8 + 16) = v28;
        *(v8 + 5) = 1;
        v29 = *(v8 + 60);
        *v8 = v29;
        v30 = __OFSUB__(v35--, 1);
      }

      while (!((v35 < 0) ^ v30 | (v35 == 0)));
      goto LABEL_35;
    }

    EvLog("API_Set_Ref_Glon_Time:  WARNING: Input Ref_Glon_Sigma too big !");
    goto LABEL_55;
  }

  if (!v17)
  {
    v32 = p_api;
    v20 = 0.0;
    goto LABEL_38;
  }

  v19 = v42;
  v20 = 0.0;
  v21 = v41;
  if (*(v8 + 64))
  {
LABEL_24:
    v22 = v40;
    v23 = v19;
    v24 = v21;
LABEL_55:
    EvLog_v("API_Set_Ref_Glon_Time:  Not Used.  %u  %d  %d  %g  Sigma  %g  %d  dT  %g", a1, v23, v24, v22, a5, *v8, v20);
    goto LABEL_56;
  }

LABEL_28:
  *(v8 + 64) = 1;
  *(v8 + 66) = v19;
  *(v8 + 68) = v21;
  EvLog_v("API_Set_Ref_Time:  Applied.  Glon Date %d %d", v19, v21);
  v38 = 0.0;
  *v39 = 0;
  if (*(v8 + 5))
  {
    v27 = 2;
  }

  else
  {
    v27 = 3;
  }

  do
  {
    API_Get_UTC_Cor(1, &v38);
    Glon_To_GPS_Time(*(v8 + 66), *(v8 + 68), *(v8 + 72), v38, &v39[1], v39, (v8 + 24));
    v28 = v39[0];
    if (v39[1] >= 1)
    {
      v28 = LOWORD(v39[0]) + (LOWORD(v39[1]) << 10);
      v39[0] += v39[1] << 10;
      v39[1] = 0;
    }

    *(v8 + 16) = v28;
    *(v8 + 5) = 1;
    v29 = *(v8 + 60);
    *v8 = v29;
    v30 = __OFSUB__(v27--, 1);
  }

  while (!((v27 < 0) ^ v30 | (v27 == 0)));
LABEL_35:
  v31 = 1;
  EvLog_v("API_Set_Ref_Glon_Time:  GPS Time  %d  %d  %g  %d", v28, 1, *(v8 + 24), v29);
LABEL_57:
  v36 = *MEMORY[0x29EDCA608];
  return v31;
}

char *EvLog_GPS_IntEph(const char *a1, int a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  result = EvLog_v("%s  %2d %d %2d %2d %d %3d %d %3d %3d %4d %5d %5d %4d %5d %5d %5d %5d %5d %5d %5d %5d %5d %8d %11d %10u %10u %11d %11d %11d %8d", a1, a2, *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 12), *(a3 + 13), *(a3 + 14), *(a3 + 15), *(a3 + 16), *(a3 + 18), *(a3 + 20), *(a3 + 22), *(a3 + 24), *(a3 + 26), *(a3 + 28), *(a3 + 30), *(a3 + 32), *(a3 + 34), *(a3 + 36), *(a3 + 38), *(a3 + 40), *(a3 + 44), *(a3 + 48), *(a3 + 52), *(a3 + 56), *(a3 + 60), *(a3 + 64), *(a3 + 68), *(a3 + 72));
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Is_GPS_IntEph_Valid(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = a2 - 203;
  if ((a2 - 203) <= 0xFFFFFFF5 && (a2 - 33) <= 0xFFFFFFDF)
  {
    EvCrt_v("%s FAILED: Sat_ID = %d, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 8) >= 4u)
  {
    EvCrt_v("%s FAILED: CodeOnL2 = %d >3, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 9) >= 0x10u)
  {
    EvCrt_v("%s FAILED: URA = %d >15, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 10) >= 0x40u)
  {
    EvCrt_v("%s FAILED: SVHealth = %d >63, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 11) >= 2u)
  {
    EvCrt_v("%s FAILED: FitIntFlag = %d >1, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 12) >= 0x20u)
  {
    EvCrt_v("%s FAILED: AODA = %d >31, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 13) >= 2)
  {
    EvCrt_v("%s FAILED: L2Pflag = %d <0 or >1, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 16) >= 0xBDCu)
  {
    EvCrt_v("%s FAILED: Week = %d >=3036, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 22) >= 0x400u)
  {
    EvCrt_v("%s FAILED: IODC = %d >1023, Out of range!");
    goto LABEL_46;
  }

  if (((*(a3 + 28) - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("%s FAILED: IDot = %d <-2^13 or >=2^13, Out of range!");
    goto LABEL_46;
  }

  if ((*(a3 + 44) - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("%s FAILED: af0 = %d <-2^21 or >=2^21, Out of range!");
    goto LABEL_46;
  }

  v4 = *(a3 + 72);
  if ((v4 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("%s FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_46;
  }

  v5 = 0.0;
  if (v3 >= 0xFFFFFFF6)
  {
    v5 = 0.000000314159265;
  }

  v6 = v4 * 3.57157734e-13;
  if (v6 < -0.00000198862815)
  {
    EvCrt_v("%s FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
    goto LABEL_46;
  }

  if (v6 > v5)
  {
    EvCrt_v("%s FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
    goto LABEL_46;
  }

  if (*(a3 + 20) >= 0x93A8u)
  {
    EvCrt_v("%s FAILED: toe = %d >=37800, Out of range!");
    goto LABEL_46;
  }

  if (*(a3 + 18) >= 0x93A8u)
  {
    EvCrt_v("%s FAILED: toc = %d >37800, Out of range!");
    goto LABEL_46;
  }

  LODWORD(v6) = *(a3 + 52);
  v7 = *&v6 * 1.16415322e-10;
  if (v3 < 0xFFFFFFF6)
  {
    if (v7 <= 0.03)
    {
      v8 = 5800.0;
      goto LABEL_42;
    }

LABEL_40:
    EvCrt_v("%s FAILED: e = %g > %g, Unrealistic value!");
    goto LABEL_46;
  }

  if (v7 > 0.1)
  {
    goto LABEL_40;
  }

  v8 = 7000.0;
LABEL_42:
  v9 = vcvtd_n_f64_u32(*(a3 + 56), 0x13uLL);
  if (v9 >= 4800.0)
  {
    if (v9 <= v8)
    {
      result = 1;
      goto LABEL_47;
    }

    EvCrt_v("%s FAILED: APowerHalf = %g > %g, Unrealistic value!");
  }

  else
  {
    EvCrt_v("%s FAILED: APowerHalf = %g < %g, Unrealistic value!");
  }

LABEL_46:
  result = 0;
LABEL_47:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *EvLog_ABDS_Eph_El(unsigned __int16 *a1)
{
  result = EvLog_nd("GN_ABDS_Set_Eph_El: ", 28, a1[43], *a1, *(a1 + 1), *(a1 + 2), *(a1 + 12), *(a1 + 13), *(a1 + 14), *(a1 + 15), *(a1 + 16), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 9), *(a1 + 10), a1[22], a1[23], *(a1 + 12), *(a1 + 13), *(a1 + 14), *(a1 + 15), *(a1 + 16), *(a1 + 17), *(a1 + 18), *(a1 + 19), *(a1 + 20), a1[42], a1[43], a1[44], *MEMORY[0x29EDCA608]);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_BDS_IntEph_Real(uint64_t a1)
{
  result = *(a1 + 52) || *(a1 + 48) || *(a1 + 50) || *(a1 + 56) || *(a1 + 60) || *(a1 + 64) || *(a1 + 68) || *(a1 + 72) || *(a1 + 76) || *(a1 + 88) != 0;
  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *GNSS_HL_System_Start_Up(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v9 = v6;
  v133 = *MEMORY[0x29EDCA608];
  v10 = *(v6[7] + 39302);
  if (v7)
  {
    v11 = v6[9];
    v12 = *(v6[20] + 448);
    v13 = *(v11 + 16);
    v14 = *(v11 + 29);
    v15 = *(v11 + 1026);
    v16 = *(v11 + 252);
    v17 = *(v11 + 240);
    v110 = *(v11 + 248);
    v108 = *(v11 + 112);
    v109 = *(v11 + 80);
    v104 = *(v11 + 128);
    v105 = *(v11 + 96);
    v106 = *(v11 + 176);
    v107 = *(v11 + 144);
    v102 = *(v11 + 192);
    v103 = *(v11 + 160);
    v100 = *(v11 + 208);
    v101 = *(v11 + 224);
    v128 = xmmword_2A192840E;
    v129 = unk_2A192841E;
    v130 = dword_2A192842E;
    v124 = xmmword_2A19283CE;
    v125 = unk_2A19283DE;
    v127 = unk_2A19283FE;
    v126 = xmmword_2A19283EE;
    v18 = *(v11 + 397);
    v19 = *(v11 + 413);
    v20 = *(v11 + 365);
    __src[8] = *(v11 + 381);
    __src[9] = v18;
    __src[10] = v19;
    LOWORD(__src[11]) = *(v11 + 429);
    v21 = *(v11 + 333);
    v22 = *(v11 + 349);
    v23 = *(v11 + 301);
    __src[4] = *(v11 + 317);
    __src[5] = v21;
    __src[6] = v22;
    __src[7] = v20;
    v24 = *(v11 + 269);
    v25 = *(v11 + 285);
    __src[0] = *(v11 + 253);
    __src[1] = v24;
    __src[2] = v25;
    __src[3] = v23;
    v26 = *(v11 + 624);
    v120 = *(v11 + 608);
    v121 = v26;
    v122 = *(v11 + 640);
    v123 = *(v11 + 656);
    v27 = *(v11 + 560);
    v116 = *(v11 + 544);
    v117 = v27;
    v28 = *(v11 + 592);
    v118 = *(v11 + 576);
    v119 = v28;
    v29 = *(v11 + 496);
    v112 = *(v11 + 480);
    v113 = v29;
    v30 = *(v11 + 528);
    v114 = *(v11 + 512);
    v115 = v30;
    v32 = *(*(&xmmword_2A1926A20 + 1) + 16);
    v31 = *(*(&xmmword_2A1926A20 + 1) + 32);
    v131[0] = **(&xmmword_2A1926A20 + 1);
    v131[1] = v32;
    v131[2] = v31;
    v34 = *(*(&xmmword_2A1926A20 + 1) + 64);
    v33 = *(*(&xmmword_2A1926A20 + 1) + 80);
    v35 = *(*(&xmmword_2A1926A20 + 1) + 48);
    v132 = *(*(&xmmword_2A1926A20 + 1) + 96);
    v131[4] = v34;
    v131[5] = v33;
    v131[3] = v35;
    EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v131);
    GNSS_HL_Data_Bases_Clear();
    GNSS_HL_Data_Bases_Init();
    GNSS_HL_Data_Bases_Init_NV();
    v36 = *(v9 + 72);
    *(v36 + 1064) = v12;
    *(v36 + 16) = v13;
    *(v36 + 29) = v14;
    *(v36 + 1026) = v15;
    *(v36 + 252) = v16;
    *(v11 + 208) = v100;
    *(v11 + 224) = v101;
    *(v11 + 240) = v17;
    *(v11 + 248) = v110;
    *(v11 + 80) = v109;
    *(v11 + 96) = v105;
    *(v11 + 112) = v108;
    *(v11 + 128) = v104;
    *(v11 + 144) = v107;
    *(v11 + 160) = v103;
    *(v11 + 176) = v106;
    *(v11 + 192) = v102;
    *(*(v9 + 72) + 20) = 0;
    xmmword_2A19283CE = v124;
    unk_2A19283DE = v125;
    dword_2A192842E = v130;
    xmmword_2A192840E = v128;
    unk_2A192841E = v129;
    xmmword_2A19283EE = v126;
    unk_2A19283FE = v127;
    v37 = *(v9 + 72) + 253;
    v38 = __src[1];
    *v37 = __src[0];
    v39 = __src[2];
    v40 = __src[3];
    *(v37 + 16) = v38;
    *(v37 + 32) = v39;
    v42 = __src[6];
    v41 = __src[7];
    v43 = __src[4];
    *(v37 + 80) = __src[5];
    *(v37 + 96) = v42;
    *(v37 + 48) = v40;
    *(v37 + 64) = v43;
    *(v37 + 176) = __src[11];
    v44 = __src[10];
    v45 = __src[8];
    *(v37 + 144) = __src[9];
    *(v37 + 160) = v44;
    *(v37 + 112) = v41;
    *(v37 + 128) = v45;
    v46 = *(v9 + 72);
    v47 = v115;
    *(v46 + 512) = v114;
    *(v46 + 528) = v47;
    v48 = v113;
    *(v46 + 480) = v112;
    *(v46 + 496) = v48;
    v49 = v119;
    *(v46 + 576) = v118;
    *(v46 + 592) = v49;
    v50 = v117;
    *(v46 + 544) = v116;
    *(v46 + 560) = v50;
    *(v46 + 656) = v123;
    v51 = v122;
    v52 = v120;
    *(v46 + 624) = v121;
    *(v46 + 640) = v51;
    *(v46 + 608) = v52;
    GN_GPS_Set_Config(v131);
  }

  else
  {
    GNSS_HL_Data_Bases_Init_NV();
    GNSS_HL_Data_Bases_TimeSynch(v9, v53, v54);
  }

  if (v10)
  {
    *(*(v9 + 56) + 39302) = 1;
  }

  v55 = *(v9 + 8);
  v56 = *(v9 + 16);
  v57 = *v55;
  *v56 = *v55;
  v56[1] = v55[4];
  v59 = *(v9 + 72);
  v58 = *(v9 + 80);
  v60 = *(v59 + 956);
  v61 = v60 + v57;
  if (!v60)
  {
    v61 = 0;
  }

  *(v59 + 1008) = v61;
  v62 = *(v59 + 248);
  if (*(v59 + 248))
  {
    *(v59 + 992) = 0;
    *(v59 + 1000) = v62 * 0.000000001;
    *(v58 + 888) = 0x4163125300000000;
    *(v58 + 168) = 0;
    *(p_NA + 8) = 0;
  }

  v63 = *(v9 + 184);
  SV_Data_Decode_Init();
  SV_Data_Decode_Update_Wrapper(v9);
  GPS_State_Update_Init(*(v9 + 192), *(v9 + 248), *(v9 + 48), *(v9 + 56), *(v9 + 72), *(v9 + 88), *(v9 + 96));
  GLON_State_Update_Init(*(v9 + 192), *(v9 + 48), *(v9 + 56), *(v9 + 96));
  bzero(*(v9 + 168), 0x8E0uLL);
  SV_Gen_Meas_Update_Wrapper(v9, v64, v65, v66, v67, v68);
  v69 = *(v9 + 176);
  v71 = *(v9 + 72);
  v70 = *(v9 + 80);
  Nav_Kalman_Update_Init();
  Nav_Kalman_Update_Wrapper(v9);
  v72 = memcpy(*(v9 + 88), *(v9 + 80), 0x800uLL);
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v72))
  {
    if (v8)
    {
      v73 = *(v9 + 112);
      *(v73 + 256) = *(v73 + 240);
      *(v73 + 325) = 0;
      v74 = *(v9 + 112);
      *(v74 + 352) = *(v74 + 336);
      *(v74 + 421) = 0;
      v75 = *(v9 + 112);
      *(v75 + 448) = *(v75 + 432);
      *(v75 + 517) = 0;
      Sen_Aug_FPE_ReInit(*(v9 + 208), *(v9 + 136), *(v9 + 392), *(v9 + 152));
    }

    else
    {
      v76 = *(v9 + 208);
      v77 = *(v9 + 136);
      v78 = *(v9 + 392);
      v79 = *(v9 + 152);
      v80 = *(v77 + 55);
      v81 = *(v77 + 71);
      v82 = *(v77 + 87);
      *(&__src[6] + 2) = *(v77 + 103);
      v83 = *(v77 + 7);
      v84 = *(v77 + 23);
      *(&__src[2] + 2) = *(v77 + 39);
      *(&__src[1] + 2) = v84;
      *(__src + 2) = v83;
      *(&__src[5] + 2) = v82;
      *(&__src[4] + 2) = v81;
      *(&__src[3] + 2) = v80;
      LOWORD(__src[0]) = 12;
      FPE_ApplyNewMeas(0xB, __src, v77, v76, 0, v78, v79, 0);
    }

    Fused_Nav_SA_FPE_Init(*(v9 + 216));
  }

  v85 = *(v9 + 200);
  *(v85 + 48) = 0;
  *(v85 + 16) = 0u;
  *(v85 + 32) = 0u;
  *v85 = 0u;
  *(v85 + 2) = -1;
  *v85 = 1;
  Pre_Positioning_Update_Wrapper();
  bzero(__src, 0x2C78uLL);
  for (i = 0; i != 160; i += 20)
  {
    v87 = __src + i;
    v87[540] = 0;
    *(v87 + 68) = 0;
    *(&__src[34] + i + 7) = 0;
  }

  for (j = 0; j != 2688; j += 56)
  {
    v89 = __src + j;
    *(v89 + 88) = 0;
    *(v89 + 356) = 0;
    *(&__src[44] + j + 12) = 0;
    *(v89 + 362) = 0;
    v90 = (&__src[45] + j + 8);
    *(v89 + 94) = 0;
    *(v89 + 372) = 0;
    *v90 = 0uLL;
  }

  for (k = 3392; k != 5120; k += 36)
  {
    v92 = __src + k;
    v92[32] = 0;
    *v92 = 0uLL;
    *(v92 + 1) = 0uLL;
  }

  v93 = -960;
  do
  {
    v94 = __src + v93;
    *(v94 + 3048) = 0;
    *(v94 + 380) = 0uLL;
    v93 += 20;
  }

  while (v93);
  v95 = 0xFFFFFFFFFFFFF80;
  do
  {
    *&__src[v95 + 508] = 0;
    *(&__src[v95 + 508] + 6) = 0;
    ++v95;
  }

  while (v95 * 16);
  v96 = 2688;
  v97 = &__src[511] + 4;
  do
  {
    *(v97 - 13) = 0;
    *v97 = 0;
    v97 += 56;
    v96 -= 56;
  }

  while (v96);
  WORD4(__src[697]) = 0;
  HIDWORD(__src[702]) = 0;
  LOBYTE(__src[703]) = 0;
  *(&__src[698] + 12) = 0u;
  *(&__src[699] + 12) = 0u;
  *(&__src[700] + 12) = 0u;
  *(&__src[701] + 10) = 0u;
  HIDWORD(__src[703]) = 0;
  *(&__src[703] + 7) = 0;
  DWORD1(__src[703]) = 0;
  memset(&__src[676], 0, 343);
  *(&__src[698] + 2) = 0;
  *(&__src[697] + 12) = 0;
  result = memcpy(*(v9 + 160), __src, 0x2C78uLL);
  *(*(v9 + 160) + 384) = *(v9 + 160);
  *v9 = 0x10000000BLL;
  v99 = *MEMORY[0x29EDCA608];
  return result;
}

void GNSS_HL_System_Re_Start(uint64_t a1)
{
  v2 = 0;
  v62[11] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v3 = *v4;
  *(v3 + 4) = v4[4];
  *(v3 + 21) = 0;
  *(v3 + 24) = 0;
  v5 = v3 + 2720;
  do
  {
    v6 = v5 + v2;
    *(v6 + 32) = 0;
    *v6 = 0uLL;
    *(v6 + 16) = 0uLL;
    v2 += 36;
  }

  while (v2 != 1728);
  v7 = *(a1 + 160);
  *(v7 + 11151) = 0;
  *(v7 + 11136) = 0u;
  *(v7 + 11120) = 0u;
  *(v7 + 11104) = 0u;
  *(v7 + 11088) = 0u;
  *(v7 + 11072) = 0u;
  *(v7 + 11056) = 0u;
  *(v7 + 11040) = 0u;
  *(v7 + 11024) = 0u;
  *(v7 + 11008) = 0u;
  *(v7 + 10992) = 0u;
  *(v7 + 10976) = 0u;
  *(v7 + 10960) = 0u;
  *(v7 + 10944) = 0u;
  *(v7 + 10928) = 0u;
  *(v7 + 10912) = 0u;
  *(v7 + 10896) = 0u;
  *(v7 + 10880) = 0u;
  *(v7 + 10864) = 0u;
  *(v7 + 10848) = 0u;
  *(v7 + 10832) = 0u;
  bzero(*(a1 + 24), 0xA80uLL);
  v13 = *(a1 + 72);
  v14 = *(v13 + 956);
  if (v14)
  {
    v14 += **(a1 + 8);
  }

  *(v13 + 1008) = v14;
  v15 = 0.0;
  if (*a1 == 6)
  {
    v16 = *(v13 + 248);
    if (*(v13 + 248))
    {
      v17 = *(a1 + 80);
      *(v13 + 992) = 0;
      v18 = v16 * 0.000000001;
      *(v13 + 1000) = v18;
      *(v17 + 888) = 0x4163125300000000;
      *(v17 + 168) = 0;
      *(p_NA + 8) = 0;
      v15 = v18 * 299792458.0 / 3.0 * (v18 * 299792458.0 / 3.0);
      v19 = *(a1 + 8);
    }

    else
    {
      v19 = *(a1 + 8);
      v20 = *(v19 + 12);
      if (v20 >= 0x493E1)
      {
        v21 = *(v13 + 1000);
        v22 = 0x3E877CF447651960;
        if (v21 >= 0.000000175)
        {
          if (v20 < 0xDBBA1 || v21 >= 0.0000005)
          {
            goto LABEL_14;
          }

          v22 = 0x3EA0C6F7A0B5ED8ELL;
        }

        *(v13 + 1000) = v22;
      }
    }

LABEL_14:
    v62[0] = 0.0;
    v61 = 0;
    v60 = 0;
    v23 = *(a1 + 48);
    v24 = *(a1 + 80);
    v25 = *(v24 + 848);
    if (v25 >= 9999000.0)
    {
      v26 = TOW_stat_ms[*v23];
    }

    else
    {
      v26 = v25 * 0.0000100069229 + 1.0;
    }

    v27 = *(a1 + 16);
    LODWORD(v25) = *(v19 + 12);
    v28 = *&v25 * 0.00006;
    if (v26 + v28 <= 600000.0)
    {
      for (i = 10; i != -1; --i)
      {
        if (TOW_stat_ms[i] >= (v26 + v28))
        {
          break;
        }
      }
    }

    else
    {
      i = 0;
    }

    v30 = v23[15];
    j = i;
    if (v30 != *v23)
    {
      v32 = v28 + (TOW_stat_ms[v30] + 1);
      if (v32 <= 600000.0)
      {
        for (j = 10; j != -1; --j)
        {
          if (TOW_stat_ms[j] >= v32)
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

    *(v24 + 48) = i;
    *(v24 + 180) = j;
    *(v23 + 4) = 0;
    *v23 = i;
    v23[15] = j;
    if (!Core_Load_ApxTime(*(v27 + 4), &v61, v62, &v60))
    {
      goto LABEL_35;
    }

    v33 = v61;
    if (v61 < 1025)
    {
      goto LABEL_35;
    }

    if (v60 <= i)
    {
      if (*(v23 + 5))
      {
        goto LABEL_35;
      }

      *(v23 + 5) = 1;
      *(v23 + 8) = v33;
    }

    else
    {
      *v23 = v60;
      *(v23 + 2) = 256;
      *(v23 + 1) = *v27;
      *(v23 + 8) = v33;
      *(v23 + 3) = v62[0];
      *(v23 + 4) = 0;
    }

    *v58 = 0;
    *v59 = 0;
    API_Get_UTC_Cor(1, v58);
    GPS_To_Glon_Time(0, *(v23 + 8), *(v23 + 3), *v58, v59, &v59[1], v23 + 9);
    v34 = v59[0];
    *(v23 + 34) = v59[1];
    *(v23 + 33) = v34;
    *(v23 + 64) = 1;
    v23[15] = *v23;
LABEL_35:
    v35 = *(a1 + 168);
    if (*v23 < 10 || *(v35 + 12) < 4)
    {
      *(v35 + 12) = 0;
    }

    else
    {
      *(v35 + 12) = 3;
    }

    *(v35 + 4) = 0;
  }

  SV_Gen_Meas_Update_Wrapper(a1, v8, v9, v10, v11, v12);
  SV_Data_Decode_Update_Wrapper(a1);
  SV_State_Update_Wrapper(a1);
  v36 = *(a1 + 176);
  v37 = *(a1 + 72);
  v38 = *(a1 + 80);
  v58[0] = 0;
  *(v36 + 30) = 0;
  *(v36 + 7336) = 0;
  *(v36 + 7344) = -1;
  ++*(v36 + 11032);
  ++*(v36 + 11044);
  v39 = *(v38 + 36);
  v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v39;
  if (v40 >= 1)
  {
    v41 = v40 / *(v37 + 948);
    *(v36 + 11032) += v41;
    *(v36 + 11044) += v41;
  }

  if (*a1 == 9 && (*(v36 + 20) - 4) <= 4 && *(v36 + 11028) && *(v36 + 11040))
  {
    v42 = *(v36 + 18);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v37 + 948);
  if (v43 * *(v36 + 11032) > (1000 * v42) && *(v38 + 344) > 0.0)
  {
    NK_Decay_Speed(v42, v43, v38 + 32, v36);
    *(v36 + 11256) = 0;
    *(v36 + 11264) = 0;
    *(v36 + 11240) = 0;
    *(v36 + 11248) = 0;
  }

  *(v36 + 11024) = 0;
  *(v36 + 11032) = 0;
  *(v36 + 144) = 0;
  *(v36 + 11040) = 0u;
  *(v36 + 152) = -1;
  *(v36 + 268) = 0;
  *(v36 + 26992) = 0;
  *(v36 + 26996) = 0;
  *(v36 + 8272) = 0;
  *(v36 + 10424) = 0u;
  *(v36 + 10440) = 0u;
  *(v36 + 10456) = 0u;
  *(v36 + 7360) = 0u;
  *(v36 + 7376) = 0u;
  *(v36 + 7392) = 0u;
  *(v36 + 7408) = 0u;
  *(v36 + 7424) = 0u;
  *(v36 + 7440) = 0u;
  *(v36 + 7456) = 0u;
  *(v36 + 7472) = 0u;
  *(v36 + 7488) = 0u;
  *(v36 + 7504) = 0u;
  *(v36 + 7520) = 0u;
  *(v36 + 7536) = 0u;
  *(v36 + 7872) = 0u;
  *(v36 + 7856) = 0u;
  *(v36 + 7840) = 0u;
  if (*a1 != 6)
  {
    Apply_Q_Boost(900.0, 0, 1u, (v36 + 344), v58, v62);
    Apply_Q_Boost(900.0, 1u, 1u, (v36 + 344), v58, v62);
    Apply_Q_Boost(900.0, 2u, 1u, (v36 + 344), v58, v62);
    v47 = 8.98755179;
    if (*(v37 + 248))
    {
      v47 = v15;
    }

    v48 = (v36 + 344);
    v49 = 3;
    goto LABEL_59;
  }

  v44 = *(a1 + 8);
  *(v38 + 840) = 0x4163125300000000;
  *(v38 + 176) = 0;
  *(v38 + 178) = 0;
  *(v38 + 152) = 0;
  *(v38 + 160) = 0;
  *(v38 + 144) = 0;
  v45 = *(v44 + 12);
  if (v45 <= 0x2BF1F)
  {
    Apply_Q_Boost(3.59502071e11, 0, 1u, (v36 + 344), v58, v62);
    Apply_Q_Boost(3.59502071e11, 1u, 1u, (v36 + 344), v58, v62);
    Apply_Q_Boost(3.59502071e11, 2u, 1u, (v36 + 344), v58, v62);
    v46 = 224.688795;
    if (*(v37 + 248))
    {
      v46 = v15;
    }

    Apply_Q_Boost(v46, 3u, 1u, (v36 + 344), v58, v62);
    v47 = 4.0;
    v48 = (v36 + 344);
    v49 = 4;
LABEL_59:
    Apply_Q_Boost(v47, v49, 1u, v48, v58, v62);
    goto LABEL_60;
  }

  *(v36 + 128) = 1;
  *(v36 + 132) = 3;
  *(v36 + 232) = 256;
  *(v36 + 234) = 2;
  *(v36 + 11088) = 0;
  *(v36 + 11144) = 0uLL;
  v57 = *(v38 + 12);
  if (v57 != 2)
  {
    if (v57 != 3)
    {
      goto LABEL_60;
    }

    *(v38 + 12) = 2;
  }

  if (v45 >= 0x36EE81)
  {
    *(v38 + 12) = 1;
  }

LABEL_60:
  *v37 = 0;
  Nav_Kalman_Update_Wrapper(a1);
  memcpy(*(a1 + 88), *(a1 + 80), 0x800uLL);
  updated = Pre_Positioning_Update_Wrapper();
  if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(updated))
  {
    v51 = *(a1 + 112);
    *(v51 + 256) = *(v51 + 240);
    *(v51 + 325) = 0;
    v52 = *(a1 + 112);
    *(v52 + 352) = *(v52 + 336);
    *(v52 + 421) = 0;
    v53 = *(a1 + 112);
    *(v53 + 448) = *(v53 + 432);
    *(v53 + 517) = 0;
    v54 = *(a1 + 72);
    v55 = *(a1 + 136);
    *v55 = *(v54 + 948);
    *(v55 + 6) = *(v54 + 43);
    *(v55 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v55 + 7));
    Sen_Aug_FPE_ReInit(*(a1 + 208), *(a1 + 136), *(a1 + 392), *(a1 + 152));
    Fused_Nav_SA_FPE_Init(*(a1 + 216));
  }

  *a1 = 0x10000000BLL;
  v56 = *MEMORY[0x29EDCA608];
}

uint64_t Decode_BDS_1st_Health_SF(uint64_t result, unsigned __int16 *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(result + 4);
  *a2 = ((*result & 3) << 7) | (v2 >> 15) & 0x7F;
  a2[1] = (v2 >> 6) & 0x1FF;
  v3 = 8 * (v2 & 0x3F);
  v4 = *(result + 8);
  v5 = *(result + 12);
  a2[2] = v3 & 0xFFF8 | (v4 >> 10) & 7;
  a2[3] = (v4 >> 10) & 0x1FF;
  a2[4] = (v4 >> 1) & 0x1FF;
  a2[5] = ((v4 & 1) << 8) | (v5 >> 14);
  a2[6] = (v5 >> 5) & 0x1FF;
  v6 = 16 * (v5 & 0x1F);
  v7 = *(result + 16);
  v8 = *(result + 20);
  a2[7] = v6 & 0xFFF0 | (v7 >> 18) & 0xF;
  a2[8] = (v7 >> 9) & 0x1FF;
  a2[9] = v7 & 0x1FF;
  a2[10] = (v8 >> 13) & 0x1FF;
  a2[11] = (v8 >> 4) & 0x1FF;
  v9 = 32 * (v8 & 0xF);
  v10 = *(result + 24);
  v11 = *(result + 28);
  a2[12] = v9 & 0xFFE0 | (v10 >> 17) & 0x1F;
  a2[13] = (v10 >> 8) & 0x1FF;
  a2[14] = (2 * v10) | (v11 >> 21) & 1;
  a2[15] = (v11 >> 12) & 0x1FF;
  a2[16] = (v11 >> 3) & 0x1FF;
  v12 = *(result + 32);
  a2[17] = ((v11 & 7) << 6) | BYTE2(v12) & 0x3F;
  a2[18] = v12 >> 7;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_BDS_3rd_Health_SF(uint64_t result, unsigned __int16 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(result + 4);
  *a2 = ((*result & 3) << 7) | (v2 >> 15) & 0x7F;
  a2[1] = (v2 >> 6) & 0x1FF;
  v3 = 8 * (v2 & 0x3F);
  v4 = *(result + 8);
  v5 = *(result + 12);
  a2[2] = v3 & 0xFFF8 | (v4 >> 10) & 7;
  a2[3] = (v4 >> 10) & 0x1FF;
  a2[4] = (v4 >> 1) & 0x1FF;
  a2[5] = ((v4 & 1) << 8) | (v5 >> 14);
  a2[6] = (v5 >> 5) & 0x1FF;
  v6 = 16 * (v5 & 0x1F);
  v7 = *(result + 16);
  v8 = *(result + 20);
  a2[7] = v6 & 0xFFF0 | (v7 >> 18) & 0xF;
  a2[8] = (v7 >> 9) & 0x1FF;
  a2[9] = v7 & 0x1FF;
  a2[10] = (v8 >> 13) & 0x1FF;
  a2[11] = (v8 >> 4) & 0x1FF;
  a2[12] = (32 * (v8 & 0xF)) | (*(result + 24) >> 17) & 0x1F;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga05_04RequestLtlInfoCB(int *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga05_04RequestLtlInfoCB");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga05_03InjectLtlInfo");
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    memcpy(__dst, a1 + 2, sizeof(__dst));
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Resp,%d\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "Ga05_03InjectLtlInfo", v10);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
    }

    v13 = *(v6 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN4gnss15GnssAdaptDevice20Ga05_03InjectLtlInfoERKN7GnssHal14ExtensionsOlaf7LtlInfoE_block_invoke;
    block[3] = &__block_descriptor_tmp_25;
    block[4] = v6;
    v23 = v9;
    v24 = v10;
    memcpy(v25, __dst, sizeof(v25));
    dispatch_async(v13, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga05_03InjectLtlInfo");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LtlInjected\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 77, "Ga05_04RequestLtlInfoCB");
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 3, 1);
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga05_04RequestLtlInfoCB");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga05_00RegisterGnsXoCallback(int a1, uint64_t a2, _DWORD *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "Ga05_00RegisterGnsXoCallback", a1);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (!DeviceInstance)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsXOCB\n");
    goto LABEL_21;
  }

  v9 = DeviceInstance;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice28Ga05_00RegisterGnsXoCallbackE15e_gnsXO_MsgTypejP18u_gnsXO_MsgDataOut_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = DeviceInstance;
  v17 = a1;
  dispatch_sync(g_GnssGlobalStaticQueue, block);
  if (a1 == 1)
  {
    if (a3)
    {
      if (*a3 == 1)
      {
        v10 = v9;
        v11 = 1;
        goto LABEL_7;
      }

      if (!*a3)
      {
        v10 = v9;
        v11 = 2;
        goto LABEL_7;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (!result)
      {
        goto LABEL_22;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Request\n");
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
      if (!result)
      {
        goto LABEL_22;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsXOMsgData\n");
    }

LABEL_21:
    result = LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    goto LABEL_22;
  }

  if (a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL ReqType,%u\n", v15);
    goto LABEL_21;
  }

  v10 = v9;
  v11 = 0;
LABEL_7:
  result = gnss::GnssAdaptDevice::Ga05_01HandleGnsXoCallback(v10, v11);
LABEL_22:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice28Ga05_00RegisterGnsXoCallbackE15e_gnsXO_MsgTypejP18u_gnsXO_MsgDataOut_block_invoke(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(result + 32) + 1040) = *(result + 40);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga05_01HandleGnsXoCallback(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga05_01HandleGnsXoCallback");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v6 = *(a1 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDevice26Ga05_01HandleGnsXoCallbackEN7GnssHal14ExtensionsOlaf11LtlInfoTypeE_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  block[4] = a1;
  v12 = a2;
  dispatch_async(v6, block);
  result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga05_01HandleGnsXoCallback");
    result = LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga05_01HandleGnsXoCallbackEN7GnssHal14ExtensionsOlaf11LtlInfoTypeE_block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(v1);
  v6[0] = &unk_2A1F884D0;
  v6[1] = gnss::GnssAdaptDevice::Ga05_04RequestLtlInfoCB;
  v6[3] = v6;
  (*(*HalExtensions + 128))(HalExtensions, &v5, v6);
  result = std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29957A454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4gnss15GnssAdaptDevice20Ga05_03InjectLtlInfoERKN7GnssHal14ExtensionsOlaf7LtlInfoE_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v60 = 0uLL;
  v61 = 0;
  v52 = 0;
  v3 = *(a1 + 48);
  if ((v3 - 1) < 2)
  {
    v18 = operator new[](0x21CuLL, MEMORY[0x29EDC9418]);
    if (!v18)
    {
      snprintf(v53, 0x400uLL, "ASSERT,%s,%d,%s", "Ga05_03InjectLtlInfo_block_invoke", 182, "Memory allocation failed for FreqOffValues");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v40), "OSA", 69, "Ga05_03InjectLtlInfo_block_invoke", v53);
        LbsOsaTrace_WriteLog(0xEu, __str, v41, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga05_03InjectLtlInfo_block_invoke", "ga05GnssHalExtensions.cpp", 182, "false && Memory allocation failed for FreqOffValues");
    }

    v19 = v18;
    v20 = operator new[](0x10EuLL, MEMORY[0x29EDC9418]);
    if (!v20)
    {
      snprintf(v53, 0x400uLL, "ASSERT,%s,%d,%s", "Ga05_03InjectLtlInfo_block_invoke", 190, "Memory allocation failed for HistoryCnt");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v42 = mach_continuous_time();
        v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v42), "OSA", 69, "Ga05_03InjectLtlInfo_block_invoke", v53);
        LbsOsaTrace_WriteLog(0xEu, __str, v43, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga05_03InjectLtlInfo_block_invoke", "ga05GnssHalExtensions.cpp", 190, "false && Memory allocation failed for HistoryCnt");
    }

    v21 = v20;
    if (*(a1 + 40) == 1)
    {
      v22 = *(a1 + 92);
      v23 = *(a1 + 96);
      memcpy_s("Ga05_03InjectLtlInfo_block_invoke", 212, v19, 0x21Cu, (a1 + 100), 0x21CuLL);
      memcpy_s("Ga05_03InjectLtlInfo_block_invoke", 216, v21, 0x10Eu, (a1 + 640), 0x10EuLL);
      v60 = *(a1 + 912);
      v61 = *(a1 + 928);
      v52 = *(a1 + 930);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LtlInfoType,%u,LearnCt,%u,CleanUpCt,%u,NumEntries,%u,ProdVer,%u,PostCalVer,%u,AdcGain,%u,AdcOffset,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "Ga05_03InjectLtlInfo_block_invoke", v3 != 2, v22, v23, 135, v61, HIBYTE(v61), v52, HIWORD(v52));
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%d,Status,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 73, "Ga05_03InjectLtlInfo_block_invoke", *(a1 + 48), 2);
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 4, 1);
    }

    GNS_XOLearntCurveInd();
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: XOLearntCurve Inj\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga05_03InjectLtlInfo_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }

    MEMORY[0x29C29EAF0](v21, 0x1000C80BDFB0063);
    MEMORY[0x29C29EAF0](v19, 0x1000C8052888210);
  }

  else if (v3 == -1)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = 0;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN4gnss15GnssAdaptDevice20Ga05_03InjectLtlInfoERKN7GnssHal14ExtensionsOlaf7LtlInfoE_block_invoke_2;
    block[3] = &unk_29EF27C58;
    block[4] = &v48;
    block[5] = v2;
    dispatch_sync(g_GnssGlobalStaticQueue, block);
    v26 = *(v49 + 6);
    if (v26 == 1)
    {
      GNS_XOLearntCurveInd();
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v35 = mach_continuous_time();
        v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: XOLearntCurve Inj\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "Ga05_03InjectLtlInfo_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v36, 5, 1);
      }
    }

    else if (v26)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v37 = mach_continuous_time();
        v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LtlInfoType ReqType,%u\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "Ga05_03InjectLtlInfo_block_invoke", 770, *(v49 + 6));
        LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
      }
    }

    else
    {
      v57 = 0;
      v58 = 0u;
      memset(v59, 0, sizeof(v59));
      *__str = 2;
      GNS_XOInitCalInd(__str, &v60, &v52);
    }

    _Block_object_dispose(&v48, 8);
  }

  else if (!v3)
  {
    v54 = 0;
    memset(v55, 0, sizeof(v55));
    if (*(a1 + 40) == 1)
    {
      *v53 = 1;
      v46 = *(a1 + 76);
      v54 = *(a1 + 76);
      v4 = *(a1 + 78);
      v55[0] = *(a1 + 78);
      v5 = *(a1 + 52);
      v6 = *(a1 + 56);
      *&v55[1] = v5;
      *&v55[3] = v6;
      v7 = *(a1 + 60);
      v8 = *(a1 + 64);
      *&v55[5] = v7;
      *&v55[7] = v8;
      *&v9 = *(a1 + 68);
      v44 = v9;
      v45 = *(a1 + 80);
      *(&v9 + 1) = v45;
      *&v55[9] = v9;
      v10 = *(a1 + 88);
      *&v55[17] = v10;
      v60 = *(a1 + 912);
      v11 = *(a1 + 928);
      LOBYTE(v61) = *(a1 + 928);
      v12 = *(a1 + 929);
      HIBYTE(v61) = *(a1 + 929);
      v13 = *(a1 + 930);
      LOWORD(v52) = *(a1 + 930);
      v14 = *(a1 + 932);
      HIWORD(v52) = *(a1 + 932);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v16 = 70;
        if (v46)
        {
          v16 = 84;
        }

        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%u,Calib,%c,RefTemp,%d,C5,%d,C4,%d,C3,%d,C2,%d,C1,%d,C0,%d,ClnUpFact,%u,HWId,%u,ClkId,%u,ProdVer,%u,PostCalVer,%u,AdcGain,%u,AdcOffset,%u\n", v15, "ADP", 73, "Ga05_03InjectLtlInfo_block_invoke", 1, v16, v4, v5, v6, v7, v8, v44, HIDWORD(v44), v45, HIDWORD(v45), v10, v11, v12, v13, v14);
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 4, 1);
      }
    }

    else
    {
      *v53 = 2;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%d,Status,%u\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 73, "Ga05_03InjectLtlInfo_block_invoke", *(a1 + 48), 2);
        LbsOsaTrace_WriteLog(0x18u, __str, v32, 4, 1);
      }
    }

    GNS_XOInitCalInd(v53, &v60, &v52);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v33 = mach_continuous_time();
      v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: XOInitCal Inj\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "Ga05_03InjectLtlInfo_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
    }
  }

  v39 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice20Ga05_03InjectLtlInfoERKN7GnssHal14ExtensionsOlaf7LtlInfoE_block_invoke_2(uint64_t result)
{
  v2 = *MEMORY[0x29EDCA608];
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 1040);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga05_04GetPlatformType(gnss::GnssAdaptDevice *a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Null Pltfm\n");
LABEL_9:
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(a1);
  v5 = (*(*HalExtensions + 160))(HalExtensions);
  if (v5 >= 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = gnss::GnssAdaptDevice::getHalExtensions(a1);
      (*(*v11 + 160))(v11);
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Pltfm,%u\n", v10);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  *a2 = v5;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Platform Type,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 73, "Ga05_04GetPlatformType", *a2);
    v8 = 1;
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 4, 1);
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t gnss::GnssAdaptDevice::Ga05_06RegBbResetCallback(int a1)
{
  v19 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BBReset Rsn,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga05_06RegBbResetCallback", a1);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
  }

  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(IsLoggingAllowed);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga05_07HandleResetBbResetReq");
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
    }

    v9 = *(v6 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN4gnss15GnssAdaptDevice28Ga05_07HandleResetBbResetReqE19e_Gnm_BbResetReason_block_invoke;
    block[3] = &__block_descriptor_tmp_31;
    block[4] = v6;
    v17 = a1;
    dispatch_async(v9, block);
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga05_07HandleResetBbResetReq");
      v13 = 5;
LABEL_10:
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, v13, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmBBReset\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga05_06RegBbResetCallback", 1302);
      v13 = 0;
      goto LABEL_10;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN4gnss15GnssAdaptDevice28Ga05_07HandleResetBbResetReqE19e_Gnm_BbResetReason_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(*(a1 + 32));
  v3 = *(a1 + 40);
  gnss::GnssAdaptDevice::Ga07_23GetBbResetReasonStr(v3, __p);
  (*(*HalExtensions + 168))(HalExtensions, v3, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29957B50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(gnss::GnssAdaptDevice *this)
{
  v1 = atomic_load(&gnss::GnssAdaptDevice::s_EnableInertialFusionSetting);
  if ((v1 & 1) == 0)
  {
    __assert_rtn("Ga05_08CheckIfInertialFusionShouldBeEnabled", "ga05GnssHalExtensions.cpp", 367, "settingIsSet && EnableInertialFusionSetting not set via extension prior to query");
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return (v1 >> 1) & 1;
}

void std::__function::__func<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&),std::allocator<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&)>,void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__func()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__function::__func<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&),std::allocator<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&)>,void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::__clone(uint64_t result, void *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  *a2 = &unk_2A1F884D0;
  a2[1] = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&),std::allocator<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&)>,void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::destroy_deallocate(void *__p)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  operator delete(__p);
}

uint64_t std::__function::__func<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&),std::allocator<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&)>,void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *MEMORY[0x29EDCA608];

  return v2(a2);
}

uint64_t std::__function::__func<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&),std::allocator<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&)>,void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  {
    result = a1 + 8;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__function::__func<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&),std::allocator<void (*)(GnssHal::ExtensionsOlaf::LtlInfo const&)>,void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::target_type()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__value_func<void ()(GnssHal::ExtensionsOlaf::LtlInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t lsim04_02CloseOtherCpNiSessions(int a1, _DWORD *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim04_02CloseOtherCpNiSessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (a1 == 1 || a1 == 4 || a1 == 255)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = v7;
      if (!a2 || *a2 != v6)
      {
        v17 = 0;
        *__str = -1;
        v16 = 0;
        if (lsim11_05GnmGetSessionInfo(v6, __str, &v16, &v17 + 1, 0, &v17))
        {
          if (v17 == 1 && ((a1 != 255) & HIBYTE(v17)) == 0)
          {
            if ((v16 & 0xFFFFFFFE) == 2)
            {
              lsim03_18GnssPosnResultInd(*__str, 0, 1);
            }

            else if (v16 == 1)
            {
              lsim03_17GnssMeasResultInd(*__str, 0, 1);
            }

            lsim03_16AbortInd(*__str, 1, 0);
          }
        }
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v8 & 1) != 0);
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "LSM", 73, "lsim04_02CloseOtherCpNiSessions");
LABEL_24:
      result = LbsOsaTrace_WriteLog(0xCu, __str, v11, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Categ,%d\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim04_02CloseOtherCpNiSessions", 515, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "LSM", 73, "lsim04_02CloseOtherCpNiSessions");
      goto LABEL_24;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim04_03CheckEmergencySessions(int a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim04_03CheckEmergencySessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v16 = 0;
    if (lsim11_05GnmGetSessionInfo(v4, 0, 0, &v16 + 1, 0, &v16) && HIBYTE(v16) == 1)
    {
      if (a1 == 1)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (a1 == 2 && (v16 & 1) != 0)
      {
LABEL_14:
        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Emergency Ongoing\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim04_03CheckEmergencySessions");
          LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim04_03CheckEmergencySessions");
          LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
        }

        result = 1;
        goto LABEL_19;
      }
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim04_03CheckEmergencySessions");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim04_05CpCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsCpCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsCpCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim04_05CpCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim04_05CpCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_CpInitialize(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GNS_CpInitialize", 235, 1, 0x18uLL);
  if (v2)
  {
    v2[3] = 2;
    *(v2 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v2);
    result = 1;
  }

  else
  {
    result = 6;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_ExecuteCpCb()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = g_GnsCpCallback;
  if (g_GnsCpCallback)
  {
    v1 = *MEMORY[0x29EDCA608];

    return v0();
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 87, "GNS_ExecuteCpCb", 258);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
    }

    v5 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t GNS_CpLocAbort(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = 1;
  if (!lsim03_14SendAbortInd(a1, 1))
  {
    v2 = 2;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpAbort,SId,%u\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 87, "GNS_CpLocAbort", 257, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GNS_CpLocReq(int a1, unsigned int *a2, char a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = 1;
  if ((lsim03_13SendLocInfoReq(a1, a2, 1, a3) & 1) == 0)
  {
    v4 = 2;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpLocReq,SId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "GNS_CpLocReq", 515, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GncP23_30HandleEaDataInd(uint64_t a1)
{
  v95 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EADATA_IND EAType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP23_30HandleEaDataInd", *(a1 + 16));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 16);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0xCuLL, 0, 0xCuLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v55 = mach_continuous_time();
            v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:UAC,OsTime,%u,Context,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v55), "GNC", 68, "GncP23_13SetUsrActCtxt", *(a1 + 24), *(a1 + 28), *(a1 + 32));
            LbsOsaTrace_WriteLog(8u, __str, v56, 5, 1);
          }

          v57 = *(a1 + 28);
          LODWORD(__s) = *(a1 + 24);
          if (v57 >= 0xC)
          {
            IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v57 = 0;
            if (IsLoggingAllowed)
            {
              bzero(__str, 0x410uLL);
              v59 = mach_continuous_time();
              v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Context,%u\n", (*&g_MacClockTicksToMsRelation * v59), "GNC", 87, "GncP23_13SetUsrActCtxt", 770, *(a1 + 28));
              LbsOsaTrace_WriteLog(8u, __str, v60, 2, 1);
              v57 = 0;
            }
          }

          HIDWORD(__s) = v57;
          v61 = *(a1 + 32);
          if (v61 >= 4)
          {
            v62 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v61 = 0;
            if (v62)
            {
              bzero(__str, 0x410uLL);
              v63 = mach_continuous_time();
              v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v63), "GNC", 87, "GncP23_13SetUsrActCtxt", 770, *(a1 + 32));
              LbsOsaTrace_WriteLog(8u, __str, v64, 2, 1);
              v61 = 0;
            }
          }

          LODWORD(v88) = v61;
          if ((GN_ExtA_Set_User_Activity_Context(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:UAC\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }
        }

        else if (v4 == 4)
        {
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0xCuLL, 0, 0xCuLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:FIV,OsTime,%u,Fiv,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 68, "GncP23_14SetFixedInVehicle", *(a1 + 24), *(a1 + 28), *(a1 + 32));
            LbsOsaTrace_WriteLog(8u, __str, v40, 5, 1);
          }

          v41 = *(a1 + 28);
          LODWORD(__s) = *(a1 + 24);
          if (v41 >= 4)
          {
            v42 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v41 = 0;
            if (v42)
            {
              bzero(__str, 0x410uLL);
              v43 = mach_continuous_time();
              v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Indication,%u\n", (*&g_MacClockTicksToMsRelation * v43), "GNC", 87, "GncP23_14SetFixedInVehicle", 770, *(a1 + 28));
              LbsOsaTrace_WriteLog(8u, __str, v44, 2, 1);
              v41 = 0;
            }
          }

          HIDWORD(__s) = v41;
          v45 = *(a1 + 32);
          if (v45 >= 4)
          {
            v46 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v45 = 0;
            if (v46)
            {
              bzero(__str, 0x410uLL);
              v47 = mach_continuous_time();
              v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v47), "GNC", 87, "GncP23_14SetFixedInVehicle", 770, *(a1 + 32));
              LbsOsaTrace_WriteLog(8u, __str, v48, 2, 1);
              v45 = 0;
            }
          }

          LODWORD(v88) = v45;
          if ((GN_ExtA_Set_Fixed_In_Vehicle(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:FIV\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }
        }

        else
        {
          LODWORD(__s) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          GncP16_22UpdateStateAssistDataRcvd(&__s);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:SES,Severity,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncP23_15SetSigEnvSev", *(a1 + 24));
            LbsOsaTrace_WriteLog(8u, __str, v12, 5, 1);
          }

          v13 = *(a1 + 24);
          if (v13 >= 8)
          {
            v14 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v13 = 0;
            if (v14)
            {
              bzero(__str, 0x410uLL);
              v15 = mach_continuous_time();
              v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigEnv,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP23_15SetSigEnvSev", 770, *(a1 + 24));
              LbsOsaTrace_WriteLog(8u, __str, v16, 2, 1);
              v13 = 0;
            }
          }

          if ((GN_ExtA_Set_Sig_Env_Sev(v13) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:SES\n");
              goto LABEL_116;
            }

LABEL_117:
            v78 = *(a1 + 12);
            v79 = *(a1 + 16);
            v80 = 0;
            goto LABEL_118;
          }
        }

LABEL_111:
        v78 = *(a1 + 12);
        v79 = *(a1 + 16);
        v80 = 1;
LABEL_118:
        GncP23_01SendApiStatus(v78, v79, v80);
        goto LABEL_119;
      }

      if (v4 == 1)
      {
        v29 = *(a1 + 104);
        if (v29 >= 2)
        {
          if (v29 != 2)
          {
            if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              goto LABEL_117;
            }

            bzero(__str, 0x410uLL);
            v82 = mach_continuous_time();
            v85 = *(a1 + 104);
            v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaPos Type,%u\n", (*&g_MacClockTicksToMsRelation * v82));
            goto LABEL_116;
          }

          if ((GncP23_22SetTunnelEndPt(a1 + 24) & 1) == 0)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x50uLL, 0, 0x50uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:RPOS,OsTime,%u,Lat,%f,Long,%f,RmsSMaj,%f,RmsSMin,%f,RmsSMajB,%hd,HeightAvl,%u,Height,%f,RmsH,%f,T,%u,Src,%u,SrcHash,0x%llX\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 68, "GncP23_11SetWgs84RefPos", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 66), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 92), *(a1 + 96));
            LbsOsaTrace_WriteLog(8u, __str, v31, 5, 1);
          }

          v32 = *(a1 + 48);
          v88 = *(a1 + 32);
          v89 = v32;
          LODWORD(__s) = *(a1 + 24);
          *v90 = *(a1 + 64);
          v90[2] = *(a1 + 66);
          *&v90[8] = *(a1 + 72);
          v93 = *(a1 + 96);
          v33 = *(a1 + 88);
          if (v33 >= 5)
          {
            v34 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v33 = 0;
            if (v34)
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 87, "GncP23_11SetWgs84RefPos", 770, *(a1 + 88));
              LbsOsaTrace_WriteLog(8u, __str, v36, 2, 1);
              v33 = 0;
            }
          }

          v91 = v33;
          v37 = *(a1 + 92);
          if (v37 >= 0xC)
          {
            v75 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v38 = 0;
            if (v75)
            {
              bzero(__str, 0x410uLL);
              v76 = mach_continuous_time();
              v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Source,%u\n", (*&g_MacClockTicksToMsRelation * v76), "GNC", 87, "GncP23_11SetWgs84RefPos", 770, *(a1 + 92));
              LbsOsaTrace_WriteLog(8u, __str, v77, 2, 1);
              v38 = 0;
            }
          }

          else
          {
            v38 = dword_29972A774[v37];
          }

          v92 = v38;
          if ((GN_AGPS_Set_Ref_Pos(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:RefPos\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }
        }

        goto LABEL_111;
      }

      if (v4 == 2)
      {
        v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        memset_s(&__s, 0xCuLL, 0, 0xCuLL);
        GncP16_22UpdateStateAssistDataRcvd(&v86);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:DMS,OsTime,%u,State,%u,Reliab,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 68, "GncP23_12SetDevMotionState", *(a1 + 24), *(a1 + 28), *(a1 + 32));
          LbsOsaTrace_WriteLog(8u, __str, v20, 5, 1);
        }

        v21 = *(a1 + 28);
        LODWORD(__s) = *(a1 + 24);
        if (v21 >= 4)
        {
          v22 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
          v21 = 0;
          if (v22)
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx State,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 87, "GncP23_12SetDevMotionState", 770, *(a1 + 28));
            LbsOsaTrace_WriteLog(8u, __str, v24, 2, 1);
            v21 = 0;
          }
        }

        HIDWORD(__s) = v21;
        v25 = *(a1 + 32);
        if (v25 >= 4)
        {
          v26 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
          v25 = 0;
          if (v26)
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Reliability,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 87, "GncP23_12SetDevMotionState", 770, *(a1 + 32));
            LbsOsaTrace_WriteLog(8u, __str, v28, 2, 1);
            v25 = 0;
          }
        }

        LODWORD(v88) = v25;
        if ((GN_ExtA_Set_Device_Motion_State(&__s) & 1) == 0)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            mach_continuous_time();
            v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Dms\n");
            goto LABEL_116;
          }

          goto LABEL_117;
        }

        goto LABEL_111;
      }
    }

    else
    {
      if (v4 <= 8)
      {
        if (v4 == 6)
        {
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x20uLL, 0, 0x20uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v65 = mach_continuous_time();
            v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:ALT,OsTime,%u,Alt,%f,RmsAlt,%f,Trust,%u\n", (*&g_MacClockTicksToMsRelation * v65), "GNC", 68, "GncP23_16SetAltitudeAid", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
            LbsOsaTrace_WriteLog(8u, __str, v66, 5, 1);
          }

          LODWORD(__s) = *(a1 + 24);
          v88 = *(a1 + 32);
          v67 = *(a1 + 48);
          if (v67 >= 5)
          {
            v72 = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
            v68 = 0;
            if (v72)
            {
              bzero(__str, 0x410uLL);
              v73 = mach_continuous_time();
              v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v73), "GNC", 87, "GncP23_16SetAltitudeAid", 770, *(a1 + 48));
              LbsOsaTrace_WriteLog(8u, __str, v74, 2, 1);
              v68 = 0;
            }
          }

          else
          {
            v68 = dword_29972A7A4[v67];
          }

          LODWORD(v89) = v68;
          if ((GN_ExtA_Set_Altitude(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Alt\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }
        }

        else if (v4 == 7)
        {
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x48uLL, 0, 0x48uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v49 = mach_continuous_time();
            v50 = *(a1 + 48);
            v51 = *(a1 + 72);
            v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:RPOS,OsTime,%u,Lat,%f,Long,%f,HeightAvl,%u,Height,%.2f,Dir,%.2f,Length,%.2f,Width,%.2f,Tunnel,%u,Freeway,%u,Railway,%u,OneWay,%u\n", (*&g_MacClockTicksToMsRelation * v49), "GNC", 68, "GncP23_17SetMapVectorSeg", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 56), v50, *(a1 + 64), v51, *(a1 + 80), *(a1 + 88), *(a1 + 89), *(a1 + 90), *(a1 + 91));
            LbsOsaTrace_WriteLog(8u, __str, v52, 5, 1);
          }

          LODWORD(__s) = *(a1 + 24);
          v88 = *(a1 + 32);
          *&v89 = *(a1 + 48);
          BYTE8(v89) = *(a1 + 56);
          *v90 = *(a1 + 64);
          *&v90[16] = *(a1 + 80);
          v91 = *(a1 + 88);
          LOBYTE(v92) = *(a1 + 92);
          if ((GN_ExtA_Set_Map_Vector_Seg(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Mapv\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }
        }

        else
        {
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v5 = mach_continuous_time();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:SPDC,OsTime,%u,Dur,%u,SpdL,%.2f,SpdU,%.2f\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP23_18SetSpeedC", *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 40));
            LbsOsaTrace_WriteLog(8u, __str, v6, 5, 1);
          }

          __s = *(a1 + 24);
          v88 = *(a1 + 32);
          if ((GN_ExtA_Set_Speed_Constraint(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:SpeedC\n");
LABEL_116:
              LbsOsaTrace_WriteLog(8u, __str, v7, 2, 1);
              goto LABEL_117;
            }

            goto LABEL_117;
          }
        }

        goto LABEL_111;
      }

      switch(v4)
      {
        case 9:
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v69 = mach_continuous_time();
            v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:VEL,OsTime,%u,Vel,%.2f,RmsVel,%.2f\n", (*&g_MacClockTicksToMsRelation * v69), "GNC", 68, "GncP23_19SetAtVel", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            LbsOsaTrace_WriteLog(8u, __str, v70, 5, 1);
          }

          LODWORD(__s) = *(a1 + 24);
          v88 = *(a1 + 32);
          if ((GN_ExtA_Set_Along_Track_Vel(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Vel\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }

          goto LABEL_111;
        case 10:
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v53 = mach_continuous_time();
            v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:HDNG,OsTime,%u,Heading,%.2f,RmsHeading,%.2f\n", (*&g_MacClockTicksToMsRelation * v53), "GNC", 68, "GncP23_20SetHeading", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            LbsOsaTrace_WriteLog(8u, __str, v54, 5, 1);
          }

          LODWORD(__s) = *(a1 + 24);
          v88 = *(a1 + 32);
          if ((GN_ExtA_Set_User_Heading(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:Heading\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }

          goto LABEL_111;
        case 11:
          v86 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          GncP16_22UpdateStateAssistDataRcvd(&v86);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v17 = mach_continuous_time();
            v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:VEL,OsTime,%u,Vel,%.2f,RmsVel,%.2f\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 68, "GncP23_21SetVertVel", *(a1 + 24), *(a1 + 32), *(a1 + 40));
            LbsOsaTrace_WriteLog(8u, __str, v18, 5, 1);
          }

          LODWORD(__s) = *(a1 + 24);
          v88 = *(a1 + 32);
          if ((GN_ExtA_Set_Vertical_Vel(&__s) & 1) == 0)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(__str, 0x410uLL);
              mach_continuous_time();
              v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA:VertVel\n");
              goto LABEL_116;
            }

            goto LABEL_117;
          }

          goto LABEL_111;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v71 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EaData Type,%u\n", (*&g_MacClockTicksToMsRelation * v71), "GNC", 87, "GncP23_30HandleEaDataInd", 770, *(a1 + 16));
      v10 = 2;
      goto LABEL_15;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP23_30HandleEaDataInd", 517);
    v10 = 0;
LABEL_15:
    LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
  }

LABEL_119:
  v83 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP23_22SetTunnelEndPt(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v9, 0, 48);
  if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EXTA:POS_TYPE,OsTime,%u,Lat,%f,Long,%f,RmsSMaj,%f,RmsSMin,%f,RmsSMajB,%d,HeightAvl,%d,Height,%f,RmsH,%f,PosType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP23_22SetTunnelEndPt", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 42), *(a1 + 48), *(a1 + 56), *(a1 + 80));
    LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
  }

  LODWORD(v9[0]) = *a1;
  *(v9 + 8) = *(a1 + 8);
  *(&v9[1] + 8) = *(a1 + 24);
  WORD4(v9[2]) = *(a1 + 40);
  BYTE10(v9[2]) = *(a1 + 42);
  v9[3] = *(a1 + 48);
  v4 = GN_ExtA_Set_Tunnel_End_Point(v9);
  if ((v4 & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EXTA TunnelEP\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP23_22SetTunnelEndPt", 257);
    LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

void GncP23_01SendApiStatus(int a1, int a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP23_01SendApiStatus", 40, 1, 0x18uLL);
  if (v6)
  {
    v7 = v6;
    v6[4] = a2;
    v6[5] = a3;
    v6[3] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EAAPI_IND =>LSIM Api,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP23_01SendApiStatus", v7[4], v7[3]);
      LbsOsaTrace_WriteLog(8u, __str, v9, 5, 1);
    }

    AgpsSendFsmMsg(134, 131, 8782083, v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t Hal08_SetGizar2AvaialbleBuffers(unsigned int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  byte_2A19397D1 = a1;
  g_FastPatchContext = a1 >> 1;
  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Maxsize,%u,fwslots,%u\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal08_SetAvailableTxSlots", 2034, g_FastPatchContext);
    result = LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal08_HandleSingleAck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x29EDCA608];
  if (!qword_2A19397E0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v34 = a1;
    v36 = a2;
    v29 = a3;
    v32 = a4;
    v11 = "%10u %s%c %s: cntxt,null,BlockID,%u,Status,%u,CPU,%c,PatchType,%c\n";
LABEL_11:
    v12 = snprintf(__str, 0x40FuLL, v11, v10, "HAL", 69, "Hal08_HandleSingleAck", v29, v32, v34, v36, v37);
LABEL_21:
    result = LbsOsaTrace_WriteLog(0xDu, __str, v12, 0, 1);
    goto LABEL_22;
  }

  if (word_2A19397D8 <= a3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v30 = 514;
    v31 = a3;
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = "%10u %s%c %s: #%04hx BlockID,%u\n";
LABEL_20:
    v12 = snprintf(__str, 0x40FuLL, v13, v28, "HAL", 69, "Hal08_HandleSingleAck", v30, v31, v33, v35, v37);
    goto LABEL_21;
  }

  if (g_HalState > 5)
  {
    if (g_HalState > 0x12)
    {
LABEL_26:
      if (g_HalState == 6)
      {
        v8 = 80;
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (((1 << g_HalState) & 0x6FE00) == 0)
    {
      if (g_HalState != 7)
      {
        if (g_HalState == 8)
        {
          v8 = 70;
LABEL_28:
          v18 = 77;
          goto LABEL_34;
        }

        goto LABEL_26;
      }

      v8 = 79;
      goto LABEL_33;
    }

LABEL_15:
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
LABEL_18:
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        goto LABEL_22;
      }

      bzero(__str, 0x410uLL);
      v30 = 262;
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = "%10u %s%c %s: #%04hx\n";
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx state,%u\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 87, "Hal08_GetHalStateDetails", 262, g_HalState);
    v16 = 2;
LABEL_17:
    LbsOsaTrace_WriteLog(0xDu, __str, v15, v16, 1);
    goto LABEL_18;
  }

  if (g_HalState < 4)
  {
    goto LABEL_15;
  }

  if (g_HalState == 4)
  {
    v18 = 80;
    v8 = 80;
    goto LABEL_34;
  }

  if (g_HalState != 5)
  {
LABEL_30:
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx state,%u\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 69, "Hal08_GetHalStateDetails", 515, g_HalState);
    v16 = 0;
    goto LABEL_17;
  }

  v8 = 70;
LABEL_33:
  v18 = 80;
LABEL_34:
  if (v18 != a1)
  {
LABEL_50:
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v36 = a1;
    v37 = a2;
    v32 = a3;
    v34 = a4;
    v29 = 1288;
    v11 = "%10u %s%c %s: #%04hx Rsp Block ID,%u Status,%u,CPU,%c,PatchType,%c\n";
    goto LABEL_11;
  }

  if (a4 != 32 || v8 != a2)
  {
    if (a4 != 32 && v8 == a2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BlockID,%u,Status,%u,CPU,%c,PatchType,%c\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 69, "Hal08_HandleSingleAck", 1288, a3, a4, a1, a2);
        result = LbsOsaTrace_WriteLog(0xDu, __str, v24, 0, 1);
      }

      v25 = *(qword_2A19397E0 + 4 * a3);
      if (v25 == 2)
      {
        *(qword_2A19397E0 + 4 * a3) = 4;
        result = gnssOsa_SemRelease(g_HandleAckSem);
        if ((result & 1) == 0)
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v30 = 1542;
            v31 = *__error();
            v28 = v27;
            v13 = "%10u %s%c %s: #%04hx AvailableBufReset,%d\n";
            goto LABEL_20;
          }
        }

        goto LABEL_22;
      }

      if (v25 == 1)
      {
        *(qword_2A19397E0 + 4 * a3) = 4;
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    goto LABEL_50;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Resp BlockID,%u,Status,%u,CPU,%c,PatchType,%c\n", (*&g_MacClockTicksToMsRelation * v20), "HAL", 68, "Hal08_HandleSingleAck", a3, 32, a1, a2);
    result = LbsOsaTrace_WriteLog(0xDu, __str, v21, 5, 1);
  }

  v22 = *(qword_2A19397E0 + 4 * a3);
  if (v22 == 2)
  {
    *(qword_2A19397E0 + 4 * a3) = 3;
    goto LABEL_55;
  }

  if (v22 != 1)
  {
LABEL_52:
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v30 = 1288;
    v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = "%10u %s%c %s: #%04hx Incorrect ACK status\n";
    goto LABEL_20;
  }

  *(qword_2A19397E0 + 4 * a3) = 3;
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_55:
  result = gnssOsa_SemRelease(g_HandleAckSem);
  if ((result & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v30 = 1542;
      v31 = *__error();
      v28 = v26;
      v13 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
      goto LABEL_20;
    }
  }

LABEL_22:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal08_FastPatchDnld(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = *MEMORY[0x29EDCA608];
  if (g_FastPatchContext)
  {
    v5 = 1;
    v6 = a3 - 79;
    v7 = byte_2A1939000;
    v58 = a3 - 79;
    while (1)
    {
      v59 = 0;
      if (a3 <= 101)
      {
        if (v6 >= 2 && a3 != 70)
        {
LABEL_14:
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v10 = mach_continuous_time();
            v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PatchType,%u\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "Hal08_PatchCodeGetLength", 515, a3);
            LbsOsaTrace_WriteLog(0xDu, __str, v11, 0, 1);
          }
        }

        *(v7 + 501) = 0;
LABEL_44:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx size\n", (*&g_MacClockTicksToMsRelation * v21), "HAL", 69, "Hal08_CreatePatchList", 513);
          LbsOsaTrace_WriteLog(0xDu, __str, v22, 0, 1);
        }

        v23 = 4294967291;
        goto LABEL_47;
      }

      switch(a3)
      {
        case 'f':
          if (a2 == 80)
          {
            v9 = &qword_2A19397F0;
          }

          else
          {
            if (a2 != 77)
            {
              v8 = 0;
              break;
            }

            v9 = &qword_2A1939808;
          }

          (*v9)(__str, 0, 30);
          if (__str[0] <= 2u && __str[1] == 0 && __str[2] == 2)
          {
            v8 = v62;
          }

          else
          {
            v8 = 4 * v63;
          }

          break;
        case 'p':
          v8 = dword_2A1939840;
          if (a2 != 80)
          {
            v8 = 0;
          }

          if (a2 == 77)
          {
            v8 = dword_2A193984C;
          }

          break;
        case 'o':
          v8 = dword_2A1939860;
          break;
        default:
          goto LABEL_14;
      }

      *(v7 + 501) = v8;
      if (!v8)
      {
        goto LABEL_44;
      }

      if (v8 % 0x7F2)
      {
        v14 = v8 / 0x7F2 + 1;
      }

      else
      {
        v14 = v8 / 0x7F2;
      }

      word_2A19397D8 = v14;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: size,%u,blocks,%u\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 73, "Hal08_PreparePatchList", dword_2A19397D4, word_2A19397D8);
        LbsOsaTrace_WriteLog(0xDu, __str, v16, 4, 1);
      }

      v17 = gnssOsa_Calloc("Hal08_PreparePatchList", 109, word_2A19397D8, 4uLL);
      qword_2A19397E0 = v17;
      if (!v17)
      {
        v23 = 4294967294;
        goto LABEL_47;
      }

      if (!word_2A19397D8)
      {
        v23 = 0xFFFFFFFFLL;
        goto LABEL_47;
      }

      bzero(v17, 4 * word_2A19397D8);
      Hal08_GetPatchPacket(v60, 0, a2, a3, &v59, 0);
      v18 = v59;
      if (a3 != 102)
      {
        if (a3 == 112)
        {
          if (a2 != 77)
          {
            if (a2 == 80)
            {
              g_HalState = 4;
            }

            goto LABEL_61;
          }

          v19 = &unk_2A1926000;
          v20 = 6;
        }

        else
        {
          v19 = &unk_2A1926000;
          v20 = 7;
        }

        goto LABEL_60;
      }

      if (a2 == 77)
      {
        v19 = &unk_2A1926000;
        v20 = 8;
        goto LABEL_60;
      }

      if (a2 == 80)
      {
        v19 = &unk_2A1926000;
        v20 = 5;
LABEL_60:
        v19[552] = v20;
      }

LABEL_61:
      if (Hal22_ZxSendToChip(v60, (v18 + 14)) <= 0)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx 1stBlk\n", (*&g_MacClockTicksToMsRelation * v28), "HAL", 69, "Hal08_SingleAckPatchDnld", 1288);
          LbsOsaTrace_WriteLog(0xDu, __str, v29, 0, 1);
        }

        if (qword_2A19397E0)
        {
          free(qword_2A19397E0);
        }

        LODWORD(v27) = 0;
        qword_2A19397E0 = 0;
        dword_2A19397D4 = 0;
        word_2A19397D8 = 0;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BlkId,%u Success\n", (*&g_MacClockTicksToMsRelation * v25), "HAL", 68, "Hal08_SingleAckPatchDnld", 0);
        LODWORD(v27) = 1;
        LbsOsaTrace_WriteLog(0xDu, __str, v26, 5, 1);
      }

      else
      {
        LODWORD(v27) = 1;
      }

      v30 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1F4u);
      if (v30 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v47 = mach_continuous_time();
          v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx 1stBlk\n", (*&g_MacClockTicksToMsRelation * v47), "HAL", 69, "Hal08_SingleAckPatchDnld", 1543);
          LbsOsaTrace_WriteLog(0xDu, __str, v48, 0, 1);
        }

        v6 = v58;
        v7 = byte_2A1939000;
        if (qword_2A19397E0)
        {
          free(qword_2A19397E0);
        }

        qword_2A19397E0 = 0;
        dword_2A19397D4 = 0;
        v23 = 4294967287;
      }

      else if (v30)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v49 = mach_continuous_time();
          v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx 1stBlk\n", (*&g_MacClockTicksToMsRelation * v49), "HAL", 69, "Hal08_SingleAckPatchDnld", 1541);
          LbsOsaTrace_WriteLog(0xDu, __str, v50, 0, 1);
        }

        v6 = v58;
        v7 = byte_2A1939000;
        if (qword_2A19397E0)
        {
          free(qword_2A19397E0);
        }

        qword_2A19397E0 = 0;
        dword_2A19397D4 = 0;
        v23 = 4294967285;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 1stBlk success\n", (*&g_MacClockTicksToMsRelation * v31), "HAL", 68, "Hal08_SingleAckPatchDnld");
          LbsOsaTrace_WriteLog(0xDu, __str, v32, 5, 1);
        }

        v33 = word_2A19397D8;
        if (v27 < word_2A19397D8)
        {
          do
          {
            if (g_FastPatchContext && v27 < v33)
            {
              v27 = v27;
              v34 = 1;
              while (1)
              {
                Hal08_GetPatchPacket(v60, v27, a2, a3, &v59, v18);
                if (v34 == g_FastPatchContext || v27 + 1 == word_2A19397D8)
                {
                  *(qword_2A19397E0 + 4 * v27) = 2;
                }

                v18 = v59 + v18;
                if (Hal22_ZxSendToChip(v60, (v59 + 14)) <= 0)
                {
                  break;
                }

                if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v35 = mach_continuous_time();
                  v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BlkId,%u Success\n", (*&g_MacClockTicksToMsRelation * v35), "HAL", 68, "Hal08_SingleAckPatchDnld", v27);
                  LbsOsaTrace_WriteLog(0xDu, __str, v36, 5, 1);
                }

                ++v27;
                if (v34 < g_FastPatchContext)
                {
                  ++v34;
                  if (v27 < word_2A19397D8)
                  {
                    continue;
                  }
                }

                goto LABEL_92;
              }

              if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v37 = mach_continuous_time();
                v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PatchID,%u\n", (*&g_MacClockTicksToMsRelation * v37), "HAL", 69, "Hal08_SingleAckPatchDnld", 1282, v27);
                LbsOsaTrace_WriteLog(0xDu, __str, v38, 0, 1);
              }

              if (qword_2A19397E0)
              {
                free(qword_2A19397E0);
              }

              qword_2A19397E0 = 0;
              dword_2A19397D4 = 0;
              word_2A19397D8 = 0;
            }

LABEL_92:
            v39 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1F4u);
            if (v39 == 1)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v44 = 1543;
                goto LABEL_100;
              }
            }

            else if (v39)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v44 = 1541;
LABEL_100:
                v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v43, "HAL", 69, "Hal08_SingleAckPatchDnld", v44);
                v42 = 0;
LABEL_101:
                LbsOsaTrace_WriteLog(0xDu, __str, v41, v42, 1);
              }
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v40 = mach_continuous_time();
              v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OK\n", (*&g_MacClockTicksToMsRelation * v40), "HAL", 68, "Hal08_SingleAckPatchDnld");
              v42 = 5;
              goto LABEL_101;
            }

            v33 = word_2A19397D8;
          }

          while (word_2A19397D8 > v27);
        }

        if (!v33)
        {
          if (qword_2A19397E0)
          {
            goto LABEL_127;
          }

          goto LABEL_128;
        }

        v6 = v58;
        v7 = byte_2A1939000;
        if (*qword_2A19397E0 == 3)
        {
          v45 = 0;
          while (v33 - 1 != v45)
          {
            v46 = *(qword_2A19397E0 + 4 + 4 * v45++);
            if (v46 != 3)
            {
              if (v45 >= v33)
              {
                break;
              }

              goto LABEL_109;
            }
          }

LABEL_127:
          free(qword_2A19397E0);
LABEL_128:
          v23 = 0;
          qword_2A19397E0 = 0;
          dword_2A19397D4 = 0;
          word_2A19397D8 = 0;
          goto LABEL_129;
        }

LABEL_109:
        free(qword_2A19397E0);
        qword_2A19397E0 = 0;
        dword_2A19397D4 = 0;
        v23 = 4294967283;
      }

      word_2A19397D8 = 0;
LABEL_47:
      if (v5++ >= 3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(v60, 0x410uLL);
          v52 = mach_continuous_time();
          v53 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: #%04hx retries,%u,CPU,%c,PatchType,%c\n", (*&g_MacClockTicksToMsRelation * v52), "HAL", 69, "Hal08_FastPatchDnld", 1288, 4, a2, a3);
          LbsOsaTrace_WriteLog(0xDu, v60, v53, 0, 1);
        }

        goto LABEL_129;
      }
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(v60, 0x410uLL);
    v54 = mach_continuous_time();
    v55 = snprintf(v60, 0x40FuLL, "%10u %s%c %s: #%04hx zero fwslot\n", (*&g_MacClockTicksToMsRelation * v54), "HAL", 69, "Hal08_FastPatchDnld", 515);
    LbsOsaTrace_WriteLog(0xDu, v60, v55, 0, 1);
  }

  v23 = 4294967283;
LABEL_129:
  v56 = *MEMORY[0x29EDCA608];
  return v23;
}

void Hal08_InitPatchesCode(void)
{
  v3 = *MEMORY[0x29EDCA608];
  memset_s(&qword_2A19397E8, 0x88uLL, 0, 0x88uLL);
  v0 = xmmword_2A191DCC0;
  v1 = DWORD1(xmmword_2A191DCC0);
  v2 = *MEMORY[0x29EDCA608];

  Register_PatchFunc(&qword_2A19397E8, v0, v1);
}

uint64_t Hal08_GetPatchPacket(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v23 = *MEMORY[0x29EDCA608];
  v9 = dword_2A19397D4 - a6;
  if ((dword_2A19397D4 - a6) > 0x7F1)
  {
    v9 = 2034;
  }

  v10 = v9;
  v11 = v9 + 5;
  *a1 = 30842;
  *(a1 + 2) = 66;
  *(a1 + 3) = a4;
  *(a1 + 4) = a3;
  *(a1 + 5) = v11;
  *(a1 + 7) = a3 + a4 + v11 + ((v11 & 0xFF00) >> 8) + 66;
  *(a1 + 8) = a2;
  v12 = (a1 + 8);
  *(a1 + 9) = BYTE1(a2);
  *(a1 + 10) = 0;
  if (a4 <= 101)
  {
    if ((a4 - 79) >= 2 && a4 != 70)
    {
LABEL_14:
      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        goto LABEL_27;
      }

      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx default type,%u\n", v19);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (a4 == 102)
  {
    if (a3 == 77)
    {
      (qword_2A1939808)(a1 + 11, a6, v10);
      goto LABEL_27;
    }

    if (a3 == 80)
    {
      (qword_2A19397F0)(a1 + 11, a6, v10);
      goto LABEL_27;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ssf CPUtype,%u\n", v20);
LABEL_26:
    LbsOsaTrace_WriteLog(0xDu, __str, v13, 0, 1);
    goto LABEL_27;
  }

  if (a4 != 112)
  {
    if (a4 == 111)
    {
      (off_2A1939828)(a1 + 11, a6, v10);
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (a3 == 77)
  {
    (qword_2A1939800)(a1 + 11, a6, v10);
    goto LABEL_27;
  }

  if (a3 == 80)
  {
    (qword_2A19397E8)(a1 + 11, a6, v10);
    goto LABEL_27;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ptc CPUtype,%u\n", v21);
    goto LABEL_26;
  }

LABEL_27:
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Data,%u\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 68, "Hal08_GetPatchPacket", v10);
    LbsOsaTrace_WriteLog(0xDu, __str, v15, 5, 1);
  }

  result = Hal04_ComputeChecksum(v12, (v10 + 3));
  v17 = a1 + v10;
  *(v17 + 11) = result;
  *(v17 + 13) = 10;
  *a5 = v10;
  *(qword_2A19397E0 + 4 * a2) = 1;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t NK_Get_Ext_Meas(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v148 = *MEMORY[0x29EDCA608];
  v8 = (a5 + 7174);
  v9 = a4 + 22724;
  v140 = 0;
  if ((*(a5 + 20) - 5) < 4)
  {
    EvLog("NK_Get_Ext_Meas: Ext Ref Pos and Alt Assist skipped in Airborne mode");
    goto LABEL_245;
  }

  v139 = 0.0;
  v138 = 0;
  v136 = 0;
  v137 = 0;
  if (Core_Get_Pos_LLH(a1, 150000, 0, &v140, &v146, &v143, &v139, &v138 + 1, &v138, &v137, &v136))
  {
    v11 = v140;
    v12 = a1 - v140;
    *(v9 + 2096) = a1 - v140;
    if (v137 == 7)
    {
      *(v9 + 2296) = 1;
      *(v9 + 2308) = v12;
      if (HIBYTE(v138) == 1)
      {
        *(v9 + 2312) = 1;
        *(v9 + 2324) = v12;
      }
    }

    v13 = v136 - 3;
    v133 = (v136 - 3) < 2;
    if (*(a4 + 960) != 1)
    {
      v16 = 1;
      goto LABEL_20;
    }

    v14 = v143;
    if (v143 <= 4.0e10 && v13 <= 1)
    {
      v132 = a3;
      v15 = (a5 + 11048);
      v133 = 1;
      v16 = 1;
LABEL_40:
      v21 = 1;
      goto LABEL_41;
    }

    v22 = *(a4 + 800);
    v23 = __sincos_stret(v22);
    v24 = 1.0 / sqrt(v23.__sinval * v23.__sinval * -0.00669437999 + 1.0);
    v25 = *(a4 + 816);
    v26 = v23.__cosval * (v25 + v24 * 6378137.0);
    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    v27 = (v22 - *&v146) * (v25 + v24 * (v24 * v24) * 6335439.33);
    v28 = (*(a4 + 808) - *(&v146 + 1)) * v26 * ((*(a4 + 808) - *(&v146 + 1)) * v26) + v27 * v27;
    if (v14 <= 4.0e10 || v28 >= fmax(v14 * 9.0, 4.0e10))
    {
      v16 = 1;
      if (*(a4 + 968) != 1 || v13 < 2)
      {
        goto LABEL_20;
      }

      if (v28 >= 22500.0)
      {
        if (v28 >= 9000000.0)
        {
          v133 = 0;
          goto LABEL_20;
        }

        v29 = 3;
      }

      else
      {
        v29 = 4;
      }

      v132 = a3;
      v136 = v29;
      if (v14 > v28)
      {
        v28 = v14;
      }

      v143 = v28;
      v15 = (a5 + 11048);
      v133 = 1;
      goto LABEL_40;
    }

    *(v9 + 2300) = 23;
  }

  else
  {
    v133 = (v136 - 3) < 2;
  }

  if (*(a5 + 20) <= 4u)
  {
    v11 = *(a5 + 11056);
    if (v11)
    {
      v140 = *(a5 + 11056);
      v147 = *(a5 + 11080);
      v146 = *(a5 + 11064);
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
          v140 = a1;
          v11 = a1;
        }

        v132 = a3;
        v143 = v19 * v19;
        v144 = v19 * v19;
        v145 = 0;
        v139 = v20 * v20;
        v136 = 3;
        v21 = 2;
        v138 = 258;
        v133 = 1;
        v15 = (a5 + 11048);
        v16 = 1;
        goto LABEL_41;
      }
    }
  }

  v16 = 0;
  if ((v138 & 0x100) == 0)
  {
    goto LABEL_159;
  }

LABEL_20:
  if (*(a5 + 11048) && !v133)
  {
    v133 = 0;
    goto LABEL_159;
  }

  v132 = a3;
  v15 = (a5 + 11048);
  v11 = v140;
  v21 = v16;
LABEL_41:
  v30 = a1 - v11;
  if ((a1 - v11) >= 0)
  {
    v31 = a1 - v11;
  }

  else
  {
    v31 = v11 - a1;
  }

  if (v31 < 0x3E8 || v11 - *(a5 + 7244) - 1000 <= 0xFFFFF830)
  {
    *(a5 + 7224) = 0u;
    *(a5 + 7240) = a1;
    *(a5 + 7244) = v11;
    v32 = 0.0;
    v33 = 0.0;
    if (v31 < 0x3E8)
    {
      goto LABEL_102;
    }
  }

  if (*(a4 + 964) == 3)
  {
    v34 = *(a4 + 24712);
    if (v34 <= 3.0)
    {
      v42 = *(a4 + 944);
      v40 = v42 + v34 * 3.0;
      v43 = 5.0;
      if (*(a4 + 24728) <= 3.0)
      {
        v44 = *(a4 + 24720);
        if (v44 <= 3.0)
        {
          v45 = *(a4 + 936) * *(a4 + 936) - v42 * v42;
          v46 = sqrt(v45) + v44 * 3.0;
          v47 = v45 < 0.0;
          v43 = 5.0;
          if (!v47)
          {
            v43 = v46;
          }
        }
      }

      goto LABEL_96;
    }
  }

  v35 = v15;
  ExtA_UAC = Core_Get_ExtA_UAC(120000, v141);
  v37 = *(p_NA + 319);
  if (v37 == 1)
  {
    v38 = *(p_NA + 19388);
    if ((*(v9 + 2352) & 1) == 0)
    {
      *(v9 + 2344) = 1;
      *(v9 + 2352) = 1;
    }

    if (DWORD2(v141[0]) == 3)
    {
      v39 = ExtA_UAC;
    }

    else
    {
      v39 = 0;
    }

    v15 = v35;
    if ((v39 & 1) == 0)
    {
      if (v38 >= 8)
      {
        __assert_rtn("NK_Get_Ext_Meas", "NK_Get_Ext_Meas.cpp", 451, "FALSE");
      }

      v40 = dbl_29972A878[v38];
      goto LABEL_95;
    }
  }

  else
  {
    if (DWORD2(v141[0]) == 3)
    {
      v41 = ExtA_UAC;
    }

    else
    {
      v41 = 0;
    }

    if (v41 != 1)
    {
      v40 = 45.0;
      v15 = v35;
      goto LABEL_95;
    }

    v38 = 0;
    v15 = v35;
  }

  if (SDWORD1(v141[0]) > 5)
  {
    if (SDWORD1(v141[0]) > 8)
    {
      if ((DWORD1(v141[0]) - 10) < 2)
      {
        v40 = 54.0;
        goto LABEL_95;
      }

      if (DWORD1(v141[0]) != 9)
      {
LABEL_335:
        __assert_rtn("NK_Get_Ext_Meas", "NK_Get_Ext_Meas.cpp", 436, "FALSE");
      }

LABEL_87:
      v40 = 45.0;
      goto LABEL_95;
    }

    if (DWORD1(v141[0]) == 6)
    {
      v40 = 16.9;
      if (!v37)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (DWORD1(v141[0]) != 7)
      {
        v40 = 45.0;
        if (!v37)
        {
          goto LABEL_95;
        }

        v48 = v38 - 5;
        if (v38 - 5 >= 3)
        {
          goto LABEL_95;
        }

        v49 = &unk_29972A830;
        goto LABEL_93;
      }

      v40 = 30.0;
      if (!v37)
      {
        goto LABEL_95;
      }
    }

    v48 = v38 - 5;
    if (v38 - 5 >= 3)
    {
      goto LABEL_95;
    }

    v49 = &unk_29972A860;
LABEL_93:
    v40 = v49[v48];
    goto LABEL_95;
  }

  if (SDWORD1(v141[0]) > 2)
  {
    if (DWORD1(v141[0]) == 4)
    {
      v40 = 4.6;
      goto LABEL_95;
    }

    v40 = 10.0;
    if (!v37)
    {
      goto LABEL_95;
    }

    v48 = v38 - 5;
    if (v38 - 5 >= 3)
    {
      goto LABEL_95;
    }

    v49 = &unk_29972A848;
    goto LABEL_93;
  }

  if (DWORD1(v141[0]) < 2)
  {
    goto LABEL_87;
  }

  if (DWORD1(v141[0]) != 2)
  {
    goto LABEL_335;
  }

  v40 = 2.4;
LABEL_95:
  v43 = 5.0;
LABEL_96:
  v50 = *(a5 + 7240);
  if (v50)
  {
    v51 = a1 - v50;
    if (v51 < 0)
    {
      v51 = -v51;
    }

    v52 = (v51 / 0x3E8u);
  }

  else
  {
    v52 = 0.0;
  }

  v33 = *(a5 + 7224) + v40 * v52;
  *(a5 + 7224) = v33;
  v32 = *(a5 + 7232) + v43 * v52;
  *(a5 + 7232) = v32;
  *(a5 + 7240) = a1;
LABEL_102:
  v53 = *(a4 + 968);
  v54 = dbl_29972A820[v137 == 7];
  if (!v53)
  {
    v54 = 5400.0;
  }

  v55 = v33 <= v54;
  if (v33 > v54)
  {
    HIBYTE(v138) = 0;
    if (v21 == 1)
    {
      v57 = 24;
      *(v9 + 2300) = 24;
      v58 = 0.0;
      v59 = 25040;
      a3 = v132;
LABEL_140:
      *(a4 + v59) = v57;
      goto LABEL_141;
    }

    v55 = 0;
    v58 = 0.0;
    a3 = v132;
  }

  else if (v137 == 7)
  {
    v56 = v33 * v33;
    if (v53)
    {
      a3 = v132;
    }

    else
    {
      a3 = v132;
      if (v136 != 4 && (v136 != 3 || *(a4 + 12) <= 7))
      {
        v56 = fmax(v56, 4356.0);
      }
    }

    v58 = v32 * v32;
    if (*(a5 + 20) < 5u)
    {
      v58 = v58 * 0.444444444;
    }

    if (v16)
    {
      v60 = v144;
      goto LABEL_134;
    }

    v55 = 0;
  }

  else
  {
    v60 = v144;
    v61 = (225 * v31 / 0x3E8 * (v31 / 0x3E8));
    a3 = v132;
    if (v144 < v61)
    {
      v60 = v143;
      v144 = v143;
      if (v143 < v61)
      {
        v143 = v61;
        v144 = v61;
        v60 = v61;
      }

      v145 = 0;
    }

    if (v138 > 1u)
    {
      v58 = 0.0;
      if (v16)
      {
        v56 = 0.0;
        goto LABEL_134;
      }
    }

    else
    {
      v62 = *(a5 + 20);
      if (v62 > 8)
      {
        v63 = 100.0;
      }

      else
      {
        v63 = dbl_29972A8B8[v62];
      }

      v58 = v63 * (v30 * v30);
      if (v138 == 1)
      {
        v58 = v58 * 0.5;
      }

      if (v16)
      {
        v56 = v58;
LABEL_134:
        v64 = v145;
        v65 = v56 + v143;
        v66 = v60 + v56;
        *(v9 + 292) = v146;
        v143 = v65;
        v144 = v66;
        *(v9 + 268) = 1;
        *(v9 + 276) = v136;
        *(v9 + 288) = v140;
        *(v9 + 272) = v21;
        *(a4 + 23040) = v65;
        *(a4 + 23048) = v66;
        *(a4 + 23056) = v64;
        if (v53 || (v67 = 4.0, v133) && *(a5 + 11032) <= 0x18u)
        {
          v67 = 25.0;
        }

        *(a4 + 23096) = v67;
        v57 = v138;
        v59 = 23004;
        goto LABEL_140;
      }
    }

    v55 = 0;
  }

LABEL_141:
  v68 = v140;
  if (HIBYTE(v138) == 1)
  {
    v69 = v58 + v139;
    v139 = v69;
    *(v9 + 396) = HIBYTE(v138);
    *(v9 + 404) = v136;
    *(v9 + 416) = v68;
    *(v9 + 400) = v21;
    *(a4 + 23144) = v147;
    *(a4 + 23152) = v69;
    *(a4 + 23176) = 0x4039000000000000;
    *(v9 + 408) = v138;
  }

  if (!v68)
  {
    v55 = 0;
  }

  if (v55 && (!*v15 || (*(a4 + 960) & 1) == 0))
  {
    v70 = fmax(v143 * 9.0, 4.0e10);
    v71 = Horiz_Diff_Sqd((a4 + 800), (v9 + 292));
    if (v71 <= v70)
    {
      v72 = *(a4 + 960) == 0;
    }

    else
    {
      *(a4 + 960) = 0;
      v72 = 1;
    }

    if (v71 > 40000.0 && v72)
    {
      *(a4 + 800) = *(v9 + 292);
      if (HIBYTE(v138) == 1)
      {
        *(a4 + 816) = *(a4 + 23144);
      }

      Geo2ECEF(a4 + 800, &WGS84_Datum, (a4 + 664));
      NK_Transform_State(a4 + 624);
      if (*(a5 + 140) && (*(a5 + 128) & 1) == 0)
      {
        *(a5 + 128) = 1;
        *(a5 + 132) = 94;
      }
    }
  }

  v16 = v21;
LABEL_159:
  if (*(a5 + 20) > 4u)
  {
    goto LABEL_221;
  }

  v134 = 0u;
  v135 = 0u;
  if (!Core_Get_ExtA_Alt(6000, &v134))
  {
    goto LABEL_221;
  }

  *(v9 + 2280) = 1;
  *(v9 + 2288) = 1;
  v73 = v134;
  v74 = *(p_api + 8);
  if (*v74)
  {
    v75 = v74[4] - (*v74 + v134);
  }

  else
  {
    v75 = 0;
  }

  *(v9 + 2292) = v75 + a1;
  v142 = 0;
  memset(v141, 0, sizeof(v141));
  if (Core_Get_ExtA_MapV(30000, v141))
  {
    if (v142 == 1)
    {
      *(v9 + 2288) = 0;
      *(v9 + 2284) = 7;
      EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude provided when Map Vector indicates Tunnel");
    }

    if (BYTE4(v142) == 1)
    {
      *(v9 + 2288) = 0;
      *(v9 + 2284) = 8;
      EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude provided when Map Vector indicates Bridge");
    }
  }

  if (HIBYTE(v138) == 1 && *(v9 + 396) == 1 && (*(v9 + 404) - 3) <= 1)
  {
    v76 = *&v135;
    v77 = v76 * v76;
    v78 = *(a4 + 23152);
    if (v78 >= v76 * v76)
    {
      v79 = *(&v134 + 1);
      v80 = *(&v134 + 1) - *(a4 + 23144);
      if (v80 * v80 > (v77 + v78) * 9.0)
      {
        *(v9 + 2288) = 0;
        *(v9 + 2284) = 10;
        EvCrt_v("NK_Get_Ext_Meas:  ERROR:  DEM Altitude rejected - Incompatible with Ref Pos, diff %f  Sigma %f %f", fabs(v80), v76, sqrt(v78));
        v81 = a3[15];
        v82 = v81 >= 5;
        v83 = v81 - 5;
        if (v82)
        {
          if (v83 >= 3)
          {
            EvCrt_Illegal_Default("NK_Get_Ext_Meas", 0x2FAu);
          }

          else if ((v8[3988] & 1) == 0 && (*(a5 + 128) & 1) == 0)
          {
            if (*(a5 + 140))
            {
              v84 = *(a4 + 816) - v79;
              if (v84 * v84 < v77 * 16.0)
              {
                *(a5 + 128) = 1;
                *(a5 + 132) = 98;
                EvLog_v("NK_Get_Ext_Meas:  KF Reset Type %d:  DEM Edit & KF Height near edited DEM Altitude,  diff %f  Sigma %f", 98, fabs(v84), sqrt(*(a4 + 23152)));
              }
            }
          }
        }
      }
    }

    else
    {
      *(v9 + 2288) = 0;
      *(v9 + 2284) = 9;
      EvCrt_v("NK_Get_Ext_Meas:  WARNING:  DEM Altitude rejected - Worse Sigma Unc than Ref Pos, %f > %f", v76, sqrt(v78));
    }
  }

  if (*(v9 + 2288) != 1)
  {
    goto LABEL_221;
  }

  *(v9 + 396) = 1;
  *(v9 + 400) = 1;
  v85 = *(p_api + 8);
  if (*v85)
  {
    v86 = *v85 + v73 - v85[4];
  }

  else
  {
    v86 = 0;
  }

  *(v9 + 416) = v86;
  *(a4 + 23144) = *(&v134 + 1);
  if (SDWORD2(v135) > 1)
  {
    if (DWORD2(v135) == 3)
    {
      v87 = 4;
      goto LABEL_201;
    }

    if (DWORD2(v135) == 2)
    {
      v87 = 3;
      goto LABEL_201;
    }

LABEL_196:
    EvCrt_Illegal_Default("NK_Get_Ext_Meas", 0x326u);
    v87 = 1;
    goto LABEL_201;
  }

  if (!DWORD2(v135))
  {
    if (*&v135 >= 25.0)
    {
      v87 = 3;
    }

    else
    {
      v87 = 4;
    }

    goto LABEL_201;
  }

  if (DWORD2(v135) != 1)
  {
    goto LABEL_196;
  }

  v87 = 2;
LABEL_201:
  *(v9 + 404) = v87;
  v88 = *(v9 + 2292);
  if (v88 < 0)
  {
    v88 = -v88;
  }

  v89 = v88 * 0.001;
  if (v8[3987])
  {
    v89 = v89 * 0.1;
  }

  *(a4 + 23152) = v89 * v89 + *&v135 * *&v135;
  if (v8[3988] == 1)
  {
    v90 = a3[15];
    if (v90 >= 8)
    {
      EvCrt_Illegal_Default("NK_Get_Ext_Meas", 0x348u);
      v91 = 25.0;
    }

    else
    {
      v91 = dbl_29972A900[v90];
    }
  }

  else
  {
    v91 = 25.0;
    if (!*a3)
    {
      v91 = 9.0;
    }
  }

  *(a4 + 23176) = v91;
  *(v9 + 408) = 0;
  HIBYTE(v138) = 1;
  v92 = a3[15];
  v82 = v92 >= 5;
  v93 = v92 - 5;
  if (v82)
  {
    if (v93 >= 3)
    {
      EvCrt_Illegal_Default("NK_Get_Ext_Meas", 0x36Du);
    }

    else if (v8[3988] == 1 && (*(a5 + 128) & 1) == 0)
    {
      if (*(a5 + 140))
      {
        v94 = *(a4 + 816) - *(a4 + 23144);
        v95 = *(a4 + 24672);
        v96 = *(a4 + 23152);
        if (v94 * v94 > (v96 + v95 * v95) * 16.0)
        {
          *(a5 + 128) = 1;
          *(a5 + 132) = 95;
          EvLog_v("NK_Get_Ext_Meas:  KF Reset Type %d:  DEM Altitude Incompatible with current Height, diff %f  Sigma %f %f", 95, fabs(v94), sqrt(v96), v95);
        }
      }
    }
  }

LABEL_221:
  if ((!*(a5 + 11048) || *(a5 + 233) == 1) && *(a4 + 24680) > 200.0 && *(a5 + 20) <= 4u)
  {
    v97 = HIBYTE(v138);
    if (!HIBYTE(v138) || *(a4 + 24672) < 100000.0 && *(a4 + 23152) > 40000.0)
    {
      *(v9 + 396) = 1;
      *(v9 + 416) = a1;
      *(v9 + 400) = 0x300000002;
      *(a4 + 23152) = 0x414E848000000000;
      if (v16 && v97 && v147 > -500.0 && v147 < 6000.0)
      {
        *(a4 + 23144) = v147;
        if (v133)
        {
          *(a4 + 23152) = v139;
        }
      }

      else
      {
        v98 = (a4 + 816);
        *&v141[0] = 0;
        if (R8_EQ((a4 + 816), v141) || (v99 = *v98, *v98 <= -500.0) || v99 >= 6000.0)
        {
          *(a4 + 23144) = 0x407F400000000000;
        }

        else
        {
          *(a4 + 23144) = v99;
        }
      }

      *(a4 + 23176) = 0x4039000000000000;
      *(v9 + 408) = 2;
    }
  }

  if ((*(a4 + 960) & 1) == 0 && *(v9 + 268) == 1 && *(v9 + 272) == 1 && *(v9 + 396) == 1)
  {
    *(a4 + 960) = 1;
  }

LABEL_245:
  if (*(v9 + 268) == 1)
  {
    *v8 = 1;
    *(a5 + 7192) = *(v9 + 288);
    *(a5 + 7200) = *(a4 + 23040);
  }

  else if (*v8 == 1 && (a1 - *(a5 + 7192)) > 120000)
  {
    *v8 = 0;
  }

  if (*(v9 + 396) == 1)
  {
    v8[1] = 1;
    *(a5 + 7208) = *(v9 + 416);
    *(a5 + 7216) = *(a4 + 23152);
  }

  else if (v8[1] == 1 && (a1 - *(a5 + 7208)) > 120000)
  {
    v8[1] = 0;
  }

  *(v9 + 196) = 0;
  *&v141[0] = 0;
  *&v134 = 0;
  LOBYTE(v146) = 0;
  if (Core_Get_Clk_Drift(a1, 300, &v140, v141, &v134, &v146))
  {
    *(v9 + 196) = 1;
    *(v9 + 200) = 1;
    *(v9 + 216) = v140;
    v100 = *v141;
    *(a4 + 22944) = *v141 * 299792458.0;
    v101 = *&v134 * 8.98755179e16;
    *(a4 + 22952) = *&v134 * 8.98755179e16;
    *(a4 + 22976) = 0x4030000000000000;
    *(v9 + 208) = v146;
    if (v101 < *(a4 + 24744) * *(a4 + 24744))
    {
      v102 = *(p_api + 48);
      if (*(v102 + 5) == 1 && *v102 >= 3)
      {
        v103 = *(v102 + 24) + 604800 * *(v102 + 16);
        if (v103 <= 0)
        {
          v104 = v103;
        }

        else
        {
          v104 = v103 - 1800;
        }
      }

      else
      {
        v104 = 0;
      }

      Core_Save_Clk_Drift(1, v104, v100);
      EvLog_v("NK_Get_Ext_Meas: Core_Save_Clk_Drift %g, Sigma(m/s) %g < %g", v100 * 1000000000.0, sqrt(*(a4 + 22952)), *(a4 + 24744));
    }
  }

  *&v141[0] = 0;
  *&v146 = 0;
  *(v9 + 596) = 0;
  if (Core_Get_Speed(a1, &v140, v141, &v146, &v134))
  {
    v105 = v140;
    v106 = a1 - v140;
    if ((a1 - v140) < 0)
    {
      v106 = v140 - a1;
    }

    if (v106 <= 0x1F4)
    {
      *(v9 + 596) = 1;
      *(v9 + 600) = 1;
      *(v9 + 612) = v105;
      *(a4 + 23344) = *&v141[0];
      *(a4 + 23352) = v146;
      *(a4 + 23376) = 0x4030000000000000;
    }
  }

  *&v146 = 0;
  v139 = 0.0;
  *(v9 + 668) = 0;
  if (Core_Get_GSpeed(a1, &v140, &v146, &v139, &v143))
  {
    v107 = v140;
    v108 = a1 - v140;
    if ((a1 - v140) < 0)
    {
      v108 = v140 - a1;
    }

    if (v108 <= 0x1F4)
    {
      *(v9 + 668) = 1;
      *(v9 + 672) = 1;
      *(v9 + 684) = v107;
      *(a4 + 23416) = v146;
      *(a4 + 23424) = v139;
      *(a4 + 23448) = 0x4030000000000000;
    }
  }

  if (*(a5 + 20) < 5u)
  {
    memset(v141, 0, 24);
    if (Core_Get_ExtA_AT_Vel(1000, v141))
    {
      *(v9 + 2360) = 1;
      *(v9 + 2368) = 1;
      *(v9 + 2364) = 0;
      v109 = *(p_api + 8);
      if (*v109)
      {
        v110 = LODWORD(v141[0]) + *v109 - v109[4];
      }

      else
      {
        v110 = 0;
      }

      *(v9 + 2372) = a1 - v110;
      v111 = *&v141[1] * *&v141[1];
      if (*(v9 + 668) == 1 && *(a4 + 23424) < v111)
      {
        *(v9 + 2368) = 0;
        if (*(v9 + 672) == 1)
        {
          *(v9 + 2364) = 29;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: EXTA VA Along-Track Speed rejected - Worse Sigma Unc than Existing EXT Ground Speed Aiding [%d], %f > %f");
        }

        else
        {
          *(v9 + 2364) = 30;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: EXTA VA Along-Track Speed rejected - Worse Sigma Unc than Existing INT Ground Speed Aiding [%d], %f > %f");
        }
      }

      else if (*v9 == 1 && *(v9 + 32) == 1 && (*(v141 + 1) >= 3.0 || *(v141 + 1) >= *&v141[1] * 3.0))
      {
        *(v9 + 2368) = 0;
        *(v9 + 2364) = 27;
        EvCrt_v("Set_ExtA_VA_Horz_Spd: VA Along-Track Speed rejected - Discrepancy with CTXT Static Status, AT Spd %f  Sigma %f");
      }

      else
      {
        v134 = 0uLL;
        *&v135 = 0;
        if (Core_Get_ExtA_SpdC(120000, &v134) && ((v112 = *(p_api + 8), !*v112) ? (v113 = 0) : (v113 = v112[4] - (v134 + *v112)), (v113 + a1) <= SDWORD1(v134) && (*(v141 + 1) > *&v135 || *(v141 + 1) < *(&v134 + 1))))
        {
          *(v9 + 2368) = 0;
          *(v9 + 2364) = 26;
          EvCrt_v("Set_ExtA_VA_Horz_Spd: VA Along-Track Speed rejected - Out of Speed constrains, AT Spd %f  SpdC %f %f");
        }

        else
        {
          *(v9 + 668) = 1;
          *(v9 + 684) = v110;
          *(a4 + 23416) = *(&v141[0] + 1);
          *(a4 + 23424) = v111;
          *(v9 + 672) = 0x400000001;
          *(a4 + 23448) = 0x4030000000000000;
        }
      }
    }

    if (*(a5 + 20) <= 4u)
    {
      memset(v141, 0, 24);
      if (Core_Get_ExtA_V_Vel(1000, v141))
      {
        *(v9 + 2376) = 1;
        *(v9 + 2384) = 1;
        *(v9 + 2380) = 0;
        v114 = *(p_api + 8);
        if (*v114)
        {
          v115 = LODWORD(v141[0]) + *v114 - v114[4];
        }

        else
        {
          v115 = 0;
        }

        *(v9 + 2388) = a1 - v115;
        v116 = *&v141[1];
        if (*v9 == 1 && *(v9 + 32) == 1 && ((v117 = *(v141 + 1), v118 = fabs(*(v141 + 1)), v118 >= 3.0) || v118 >= *&v141[1] * 3.0))
        {
          *(v9 + 2384) = 0;
          *(v9 + 2380) = 31;
          EvCrt_v("Set_ExtA_VA_Vert_Vel: VA Vert Velocity rejected - Discrepancy with CTXT Static Status, Vert vel %f  Sigma %f", v117, v116);
        }

        else
        {
          *(v9 + 468) = 1;
          *(v9 + 488) = v115;
          *(a4 + 23216) = *(&v141[0] + 1);
          *(a4 + 23224) = v116 * v116;
          *(v9 + 472) = 0x400000001;
          *(a4 + 23248) = 0x4030000000000000;
        }
      }
    }
  }

  *&v134 = 0;
  v143 = 0.0;
  v139 = 0.0;
  *(v9 + 740) = 0;
  if (Core_Get_Track(a1, &v140, &v134, &v139, &v143, &v146))
  {
    v119 = v140;
    v120 = a1 - v140;
    if ((a1 - v140) < 0)
    {
      v120 = v140 - a1;
    }

    if (v120 <= 0x1F4)
    {
      *(v9 + 740) = 1;
      *(v9 + 744) = 1;
      *(v9 + 756) = v119;
      *(a4 + 23488) = v134;
      *(a4 + 23496) = v143;
      *(a4 + 23520) = 0x4030000000000000;
      *(a4 + 23536) = v139;
    }
  }

  if (*(a5 + 20) <= 4u)
  {
    memset(v141, 0, 24);
    if (Core_Get_ExtA_Heading(1000, v141))
    {
      *(v9 + 2392) = 1;
      *(v9 + 2400) = 1;
      *(v9 + 2396) = 0;
      v121 = *(p_api + 8);
      if (*v121)
      {
        v122 = LODWORD(v141[0]) + *v121 - v121[4];
      }

      else
      {
        v122 = 0;
      }

      *(v9 + 2404) = a1 - v122;
      v123 = *&v141[1] * *&v141[1];
      if (*(v9 + 740) == 1 && *(a4 + 23496) < v123)
      {
        *(v9 + 2400) = 0;
        if (*(v9 + 744) == 1)
        {
          *(v9 + 2396) = 35;
          EvCrt_v("Set_ExtA_VA_Heading: EXTA VA Heading rejected - Worse Sigma Unc than Existing EXT Track Aiding [%d], %f > %f");
        }

        else
        {
          *(v9 + 2396) = 36;
          EvCrt_v("Set_ExtA_VA_Heading: EXTA VA Heading rejected - Worse Sigma Unc than Existing INT Track Aiding [%d], %f > %f");
        }
      }

      else
      {
        *(v9 + 740) = 1;
        *(v9 + 756) = v122;
        *(a4 + 23488) = *(&v141[0] + 1);
        *(a4 + 23496) = v123;
        *(a4 + 23504) = *(a4 + 952);
        *(v9 + 744) = 0x400000001;
        *(a4 + 23520) = 0x4030000000000000;
        *(a4 + 23536) = 0x3FF0000000000000;
      }
    }
  }

  memset(v141, 0, 24);
  result = Core_Get_ExtA_SpdC(120000, v141);
  if (result)
  {
    v125 = v141[0];
    result = mach_continuous_time();
    v126 = (*&g_MacClockTicksToMsRelation * result) - v125;
    if (v126 >= SDWORD1(v141[0]))
    {
      v127 = 2;
      v128 = 25136;
    }

    else
    {
      v127 = 1;
      *(v9 + 1372) = 1;
      v128 = 24100;
    }

    *(a4 + v128) = v127;
    v129 = *(p_api + 8);
    if (*v129)
    {
      v130 = *v129 + v125 - v129[4];
    }

    else
    {
      v130 = 0;
    }

    *(v9 + 1380) = v130;
    *(a4 + 24112) = *(v141 + 8);
    *(v9 + 2408) = 1;
    *(v9 + 2420) = v126;
  }

  v131 = *MEMORY[0x29EDCA608];
  return result;
}