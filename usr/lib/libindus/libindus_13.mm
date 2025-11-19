BOOL NK_Reject_DO_For_Rejected_PR(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v28[13] = *MEMORY[0x29EDCA608];
  v7 = a4 + 7336;
  v24 = a4 + 17320;
  v25 = 0.0;
  v8 = a4 + 36888;
  v20 = a4 + 36576;
  v23 = a4 + 21984;
  v19 = a4 + 21672;
  v9 = (a4 + 22240);
  v18 = a4 + 16296;
  v10 = 9528;
  do
  {
    v11 = *(v7 + 4 * v6);
    if (v11 != 12 && ((v11 - 1) < 0x1E || *(v24 + v6) == 1))
    {
      if (*(v8 + v6) == 1 && (v9[3726] - 1) > 0x1D)
      {
        v13 = 3;
        v12 = 1;
        v14 = v20;
      }

      else
      {
        if (*(v23 + v6) != 1 || (*v9 - 1) < 0x1E)
        {
          goto LABEL_16;
        }

        v12 = 0;
        v13 = 2;
        v14 = v19;
      }

      NK_Obs_Equ_SV(v13, *(v14 + v6 + 440), *(a2 + 4 * v6), v5, v28, *(a4 + 1552));
      v28[12] = *(v14 + 8 * v6 + 5304);
      v15 = *(v14 + v10 + 1152);
      v16 = *(v14 + v10);
      result = umeas(a3 + 976, 0xCu, -(v15 * v16), v28, v27, v26, &v25, 1.0e20);
      if ((*(v7 + 4 * v6) - 1) >= 0x1E && *(v24 + v6) == 1)
      {
        if ((v12 & 1) == 0)
        {
          result = umeas(a3 + 976, 0xCu, v15 * v16 * *(v18 + 8 * v6), v28, v27, v26, &v25, 1.0e20);
          *(v14 + v6 + 10552) = 1;
        }
      }

      else
      {
        *(v14 + v6 + 312) = 0;
        *(v14 + 4 * v6 + 568) = 26;
        --*(v14 + 3);
        ++*(v14 + 4);
      }
    }

LABEL_16:
    ++v6;
    v10 += 8;
    v5 += 7;
    ++v9;
  }

  while (v6 != 128);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void GPS_State_Update_Init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v7 = a7;
  v41 = *MEMORY[0x29EDCA608];
  *(a1 + 402) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  v11 = xmmword_299050360;
  v12 = xmmword_299050240;
  v13 = 180;
  v14 = vdupq_n_s64(4uLL);
  v15 = a7;
  v16 = vdupq_n_s64(0xB3uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v12)), *v11.i8).u8[0])
    {
      v15[44] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xB3uLL), *&v12)), *&v11).i8[2])
    {
      v15[92] = 0;
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xB3uLL), *&v11))).i32[1])
    {
      v15[140] = 0;
      v15[188] = 0;
    }

    v11 = vaddq_s64(v11, v14);
    v12 = vaddq_s64(v12, v14);
    v15 += 192;
    v13 -= 4;
  }

  while (v13);
  if (ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    v17 = 0;
    v18 = 60;
    v19 = 15;
    do
    {
      if (*(a4 + v17 + 62171) == 1)
      {
        v39 = 0u;
        memset(v40, 0, 31);
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        ST_Update_Table(v17, v19, v18, &v30, a2, a1, a5, a4, a6);
        v20 = *(a2 + 12);
        if ((v20 - 1) <= 1)
        {
          *(a1 + 402) = 1;
          if (v20 == 1)
          {
            if (v19 <= 0)
            {
              v19 = 15;
            }

            else
            {
              --v19;
            }
          }

          else if (v18 <= 0)
          {
            v18 = 59;
          }

          else
          {
            v18 -= 3;
          }

          v21 = v39;
          v7[8] = v38;
          v7[9] = v21;
          v22 = *&v40[16];
          v7[10] = *v40;
          v7[11] = v22;
          v23 = v35;
          v7[4] = v34;
          v7[5] = v23;
          v24 = v37;
          v7[6] = v36;
          v7[7] = v24;
          v25 = v31;
          *v7 = v30;
          v7[1] = v25;
          v26 = v33;
          v7[2] = v32;
          v7[3] = v26;
        }
      }

      ++v17;
      v7 += 12;
    }

    while (v17 != 197);
    if (*(a1 + 402))
    {
      *(a1 + 4) = *(a2 + 8);
      *a1 = *(a2 + 4);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

uint64_t ST_Get_Time(uint64_t a1, __int16 *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  v4 = *a1;
  *a2 = *(a1 + 32);
  *a3 = *(a1 + 40);
  if (v3)
  {
    v5 = v4 <= 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = *(a1 + 24);
    v16 = 0;
    v14 = 0.0;
    v15 = 0.0;
    if (Get_FSP_Time(v8, &v16, &v14, &v15, &v17))
    {
      if (v15 <= 40000.0)
      {
        v10 = v15;
        if (v15 >= 2)
        {
          if (v10 >= 0x190)
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }

          if (v10 >= 9)
          {
            v9 = v11;
          }

          else
          {
            v9 = 3;
          }
        }

        else
        {
          v9 = 4;
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9 > v4)
      {
        *a2 = v16;
        *a3 = v14;
        LOBYTE(v3) = 1;
        v4 = v9;
      }
    }

    v3 = (v4 > 0) & v3;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

void ST_Update_Table(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v216[4] = *MEMORY[0x29EDCA608];
  if (a1 >= 0xC5)
  {
    gn_report_assertion_failure("ST_Update_Table : sv < NUM_POS");
  }

  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    goto LABEL_259;
  }

  v17 = Constell_Pos;
  if (Constell_Pos == 7)
  {
    goto LABEL_259;
  }

  v199 = 0u;
  v200 = 0u;
  memset(v198, 0, sizeof(v198));
  v190 = Constell_Pos - 1;
  v191 = Num_Pos[Constell_Pos - 1];
  v193 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
  *(a4 + 176) = 0;
  v18 = a6 + 6;
  *(v18 + 2 * a1) = 0;
  if (a1 >= 0xC5)
  {
    gn_report_assertion_failure("ST_Get_GPS_Orbit : sv < NUM_POS");
  }

  v201 = Get_Constell_Pos(a1);
  v19 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
  v20 = v19;
  v194 = LongPrnIdx_To_ShortPrnIdx(v19, &v201);
  v21 = Num_Pos_Idx_To_GNSS_Id(a1);
  v22 = v21;
  *(a5 + 12) = 0;
  v23 = v201;
  if (v201 == 6)
  {
    v189 = v18;
    v24 = v20;
LABEL_15:
    if (*(a8 + v24 + 50834) != 1 || (*(a7 + v24 + 544) & 1) != 0)
    {
      goto LABEL_259;
    }

    v24 = v20;
    goto LABEL_22;
  }

  if (!v201)
  {
    goto LABEL_259;
  }

  v189 = v18;
  v24 = v20;
  if (*(a8 + v20 + 50616) != 1 || *(a7 + v20 + 265) == 1)
  {
    if (v201 < 6 || v201 == 7)
    {
      goto LABEL_259;
    }

    goto LABEL_15;
  }

  if (v201 == 2)
  {
    v25 = a8 + v20;
    if (v25[59990] != 1)
    {
      goto LABEL_259;
    }

    v26 = v25 + 59772;
    if (v25[59772])
    {
      *(a5 + 12) = 1;
      goto LABEL_59;
    }

    goto LABEL_25;
  }

LABEL_22:
  v26 = a8 + v24 + 59772;
  if (*v26)
  {
    goto LABEL_26;
  }

  if ((*(a8 + v24 + 59990) & 1) == 0 && *(a8 + v24 + 60208) != 1)
  {
    goto LABEL_259;
  }

LABEL_25:
  if (*(a8 + v24 + 59990) != 1)
  {
    goto LABEL_174;
  }

LABEL_26:
  v186 = v26;
  v27 = a8 + 60426;
  *(a8 + v24 + 60426) = 0;
  *(a8 + v24 + 60644) = 0;
  *(a5 + 12) = 1;
  if (v23 > 3)
  {
    if (v23 != 4)
    {
      if (v23 != 5)
      {
        if (v23 != 6)
        {
          goto LABEL_169;
        }

        v36 = *(a8[5955] + v194);
        v37 = *(a8[5956] + v194);
        v38 = v194;
        *&v202[16] = 0;
        *&v202[20] = 0;
        *v202 = 0;
        *&v202[7] = 0;
        memset(&v202[32], 0, 152);
        if (v36 == 1 && v37)
        {
          v182 = v21;
          memset(v214, 0, 36);
          memset(&v214[40], 0, 160);
          v215 = 0uLL;
          memset(v216, 0, 24);
          v203 = 0uLL;
          memset(v204, 0, 20);
          memset(&v204[24], 0, 64);
          v205 = 0uLL;
          v206 = 0uLL;
          v207 = 0uLL;
          v208 = 0uLL;
          v209 = 0uLL;
          v210 = 0uLL;
          v211 = 0uLL;
          v212 = 0uLL;
          v213 = 0;
          NVIC_EphInt2Real(a8 + 76 * v194 + 48760, v202);
          NVIC_EphReal2Kep(v202, &v203);
          v39 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v203);
          v171 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v39, &v203);
          if (!v171)
          {
            *(a8[5956] + v194) = 0;
          }

          NVIC_EphInt2Real(a8 + 76 * v194 + 47696, v202);
          NVIC_EphReal2Kep(v202, v214);
          v40 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), !v171, v214);
          if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v40, v214))
          {
            if (!v171 || ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v214, &v203, 1) || *&v214[4] == 5)
            {
              v172 = 0;
              v167 = 0;
              v163 = 1;
              v42 = 5962;
            }

            else
            {
              *v186 = 0;
              *(a8 + v24 + 60862) = 1;
              v41 = *(a8 + 19 * v194 + 11925);
              if ((v41 == 5 || v41 == 3) && (v182 - 15) >= 0xF2u)
              {
                *(p_NA + (v182 - 1) + 348) = 0;
                EvLog_d("Core_Set_NVIC_Eph_Invalid:  Deleted SV", v182);
              }

              v163 = 0;
              v172 = 1;
              v42 = 6095;
              v167 = 1;
            }

            v38 = v194;
LABEL_194:
            NVIC_EphInt2Real(a8 + 76 * v38 + 8 * v42, v202);
            *(a8[5959] + v38) = v172;
            NVIC_EphReal2Kep(v202, v198);
            v96 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 1, v198);
            if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(NVC)", v96, v198))
            {
              v27 = a8 + 60426;
              if (v163)
              {
                *(a8[5955] + v38) = 0;
                v97 = *(a8 + 19 * v38 + 11925);
                if ((v97 == 5 || v97 == 3) && (v182 - 15) >= 0xF2u)
                {
                  *(p_NA + (v182 - 1) + 348) = 0;
                  EvLog_d("Core_Set_NVIC_Eph_Invalid:  Deleted SV", v182);
                  v27 = a8 + 60426;
                }
              }

              if (v167)
              {
                *(a8[5956] + v38) = 0;
              }

              goto LABEL_169;
            }

            goto LABEL_209;
          }

          v38 = v194;
          *(a8[5955] + v194) = 0;
          v83 = *(a8 + 19 * v194 + 11925);
          if ((v83 == 5 || v83 == 3) && (v182 - 15) >= 0xF2u)
          {
            *(p_NA + (v182 - 1) + 348) = 0;
            EvLog_d("Core_Set_NVIC_Eph_Invalid:  Deleted SV", v182);
          }

          v27 = a8 + 60426;
          if (!v171)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (v36)
          {
            v167 = v37;
            v182 = v21;
            v172 = 0;
            v163 = 1;
            v42 = 5962;
            goto LABEL_194;
          }

          if (!v37)
          {
            goto LABEL_169;
          }

          v182 = v21;
        }

        v163 = 0;
        v172 = 1;
        v42 = 6095;
        v167 = 1;
        goto LABEL_194;
      }

      v179 = a8 + 60426;
      v69 = 0;
      memset(v214, 0, 36);
      memset(&v214[40], 0, 160);
      v215 = 0u;
      memset(v216, 0, 24);
      v203 = 0u;
      memset(v204, 0, 20);
      memset(&v204[24], 0, 64);
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v213 = 0;
      v214[19] = 99;
      v204[3] = 99;
      v53 = v194;
      v185 = v21;
      if (*(a8[1138] + v194) == 1)
      {
        Get_GPS_Kep_Ephemeris(5, v21, a8 + 116 * v194 + 10312, &v203);
        v70 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v203);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v70, &v203))
        {
          v69 = 1;
        }

        else
        {
          v69 = 0;
          *(a8[1138] + v194) = 0;
        }

        v22 = v185;
      }

      if (*(a8[1137] + v194) == 1)
      {
        v75 = v69;
        Get_GPS_Kep_Ephemeris(v201, v22, a8 + 116 * v194 + 9152, v214);
        v76 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), v75 ^ 1u, v214);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v76, v214))
        {
          if (v75)
          {
            v77 = v214;
            v78 = ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v214, &v203, 1);
            v60 = 0;
            if (!v78)
            {
              v53 = v194;
              if (*&v214[4] == 5)
              {
LABEL_207:
                v106 = v77[13];
                v198[12] = v77[12];
                v199 = v106;
                v200 = v77[14];
                v107 = v77[9];
                v198[8] = v77[8];
                v198[9] = v107;
                v108 = v77[11];
                v198[10] = v77[10];
                v198[11] = v108;
                v109 = v77[5];
                v198[4] = v77[4];
                v198[5] = v109;
                v110 = v77[7];
                v198[6] = v77[6];
                v198[7] = v110;
                v111 = v77[1];
                v198[0] = *v77;
                v198[1] = v111;
                v112 = v77[3];
                v198[2] = v77[2];
                v198[3] = v112;
                v105 = a8[1141];
                goto LABEL_208;
              }

              *(a8[1137] + v194) = 0;
              v60 = 1;
              *(a8[1135] + v194) = 1;
              v79 = *(a8 + 29 * v194 + 2289);
              if (v79 != 5 && v79 != 3)
              {
LABEL_137:
                v77 = &v203;
                goto LABEL_207;
              }

              if ((v185 + 53) >= 0xF6u)
              {
                *(p_NA + (v185 - 193) + 76) = 0;
                EvLog_d("Core_Set_QZSS_Eph_Invalid:  Deleted SV", v185);
              }

LABEL_136:
              v60 = 1;
              goto LABEL_137;
            }
          }

          else
          {
            v60 = 0;
            v77 = v214;
          }

          v53 = v194;
          goto LABEL_207;
        }

        *(a8[1137] + v194) = 0;
        v80 = *(a8 + 29 * v194 + 2289);
        v69 = v75;
        v53 = v194;
        if ((v80 == 5 || v80 == 3) && (v185 + 53) >= 0xF6u)
        {
          *(p_NA + (v185 - 193) + 76) = 0;
          v81 = v69;
          EvLog_d("Core_Set_QZSS_Eph_Invalid:  Deleted SV", v185);
          v69 = v81;
          v53 = v194;
        }
      }

      if (!v69)
      {
        goto LABEL_168;
      }

      goto LABEL_136;
    }

    v62 = *(a8[3182] + v194);
    v63 = *(a8[3183] + v194);
    v64 = v194;
    memset(v214, 0, 18);
    memset(&v214[20], 0, 178);
    v215 = 0u;
    memset(v216, 0, 23);
    if (v62 == 1 && v63)
    {
      v184 = v21;
      v203 = 0uLL;
      memset(v204, 0, 20);
      memset(&v204[24], 0, 64);
      v205 = 0uLL;
      v206 = 0uLL;
      v207 = 0uLL;
      v208 = 0uLL;
      v209 = 0uLL;
      v210 = 0uLL;
      v211 = 0uLL;
      v212 = 0uLL;
      v213 = 0;
      memset(v202, 0, 36);
      memset(&v202[40], 0, 200);
      BDS_EphInt2Real(&a8[19 * v194 + 4386], v214);
      BDS_EphReal2Kep(v214, v202);
      v65 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, v202);
      v173 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v65, v202);
      if (!v173)
      {
        *(a8[3183] + v194) = 0;
      }

      BDS_EphInt2Real(&a8[19 * v194 + 3189], v214);
      BDS_EphReal2Kep(v214, &v203);
      v66 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), !v173, &v203);
      if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v66, &v203))
      {
        if (!v173 || ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v203, v202, 1) || DWORD1(v203) == 5)
        {
          v174 = 0;
          v168 = 0;
          v164 = 1;
          v68 = 3189;
        }

        else
        {
          *v186 = 0;
          *(a8 + v24 + 60862) = 1;
          v67 = HIDWORD(a8[19 * v194 + 3189]);
          if ((v67 == 5 || v67 == 3) && (v184 - 64) >= 0xC1u)
          {
            *(p_NA + (v184 - 1) + 221) = 0;
            EvLog_d("Core_Set_BDS_Eph_Invalid:  Deleted SV", v184);
          }

          v164 = 0;
          v174 = 1;
          v68 = 4386;
          v168 = 1;
        }

        v64 = v194;
LABEL_152:
        BDS_EphInt2Real(&a8[19 * v64 + v68], v214);
        *(a8[3186] + v64) = v174;
        BDS_EphReal2Kep(v214, v198);
        v84 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 1, v198);
        if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(BDS)", v84, v198))
        {
          v85 = v194;
          v27 = a8 + 60426;
          if (v164)
          {
            *(a8[3182] + v194) = 0;
            v86 = HIDWORD(a8[19 * v194 + 3189]);
            if ((v86 == 5 || v86 == 3) && (v184 - 64) >= 0xC1u)
            {
              *(p_NA + (v184 - 1) + 221) = 0;
              EvLog_d("Core_Set_BDS_Eph_Invalid:  Deleted SV", v184);
              v85 = v194;
              v27 = a8 + 60426;
            }
          }

          if (v168)
          {
            *(a8[3183] + v85) = 0;
          }

          goto LABEL_169;
        }

LABEL_209:
        v89 = 1;
LABEL_210:
        v71 = *(a5 + 12);
        if (v71 == 2)
        {
          goto LABEL_214;
        }

        if (v71)
        {
          goto LABEL_238;
        }

LABEL_212:
        v113 = a8 + v24;
        if (*(a8 + v24 + 60208) != 1)
        {
          goto LABEL_259;
        }

        v113[60644] = 0;
        v113[61516] = 0;
        *(a5 + 12) = 2;
LABEL_214:
        *v204 = 0;
        *&v203 = 0;
        *(&v203 + 7) = 0;
        memset(&v204[4], 0, 76);
        if (v201 > 3)
        {
          if (v201 <= 5)
          {
            if (v201 == 4)
            {
              memset(v214, 0, 88);
              BDS_AlmInt2Real(a8 + 44 * v194 + 44664, v214);
              *&v203 = *v214;
              *&v204[56] = *&v214[16];
              *&v204[72] = *&v214[32];
              v114 = 0.942477796;
              if (v214[11] - 59 < 0xFFFFFFCB)
              {
                v114 = 0.0;
              }

              *&v204[24] = *&v214[24];
              *&v204[32] = *&v214[64] + v114;
              *&v204[48] = *&v214[40];
              *&v204[40] = *&v214[56];
              *&v204[8] = *&v214[72];
              *&v204[4] = *&v214[12] + 14;
              *v204 = *&v214[8] + 1356;
              if (*&v214[12] + 14 > 604799)
              {
                *&v204[4] = *&v214[12] - 604786;
                *v204 = *&v214[8] + 1357;
              }

              *&v204[64] = *&v214[48] + 0.0010208961;
              DWORD2(v203) = 4;
              BYTE12(v203) = v214[11];
              BYTE13(v203) = v214[10] ^ 1;
            }

            else
            {
              Get_QZSS_Kep_Almanac(a8 + 44 * v194 + 11472, &v203);
            }

            goto LABEL_234;
          }

          if (v201 == 6)
          {
            *&v214[12] = 0;
            *&v214[16] = 0;
            *v214 = 0;
            *&v214[7] = 0;
            memset(&v214[24], 0, 80);
            NVIC_AlmInt2Real(a8 + 52 * v194 + 49824, v214);
            *&v203 = *v214;
            *&v204[8] = *&v214[80];
            *&v204[24] = *&v214[24];
            *&v204[40] = *&v214[40];
            *&v204[48] = *&v214[72];
            *&v204[56] = *&v214[48];
            DWORD2(v203) = 6;
            WORD6(v203) = *&v214[8];
            BYTE14(v203) = (0x101010102 * (*&v214[16] / 0x15180u - *&v214[12] + 8 * *&v214[12])) >> 32;
            *v204 = *&v214[12] + 1024;
            *&v204[4] = *&v214[16];
            *&v204[72] = *&v214[64];
            goto LABEL_234;
          }

          if (v201 == 7)
          {
            goto LABEL_236;
          }
        }

        else
        {
          if (v201 > 1)
          {
            if (v201 == 2)
            {
              goto LABEL_236;
            }

            memset(v214, 0, 91);
            GAL_AlmInt2Real(a8 + 36 * v194 + 24044, v214);
            *&v204[8] = *&v214[72];
            *&v204[24] = *&v214[24];
            *&v204[32] = *&v214[32] + 0.977384381;
            *&v204[40] = *&v214[48];
            *&v204[48] = *&v214[64];
            *(&v203 + 4) = *&v214[4] | 0x300000000;
            BYTE12(v203) = v214[8];
            BYTE13(v203) = v214[90] | (8 * v214[89]);
            BYTE14(v203) = v214[9];
            *v204 = *&v214[10] + 1024;
            *&v204[4] = *&v214[12];
            *&v204[56] = *&v214[16] + 5440.5882;
            *&v204[64] = *&v214[40];
            *&v204[72] = *&v214[56];
            goto LABEL_234;
          }

          if (!v201)
          {
            goto LABEL_236;
          }

          if (v201 == 1)
          {
            Get_GPS_Kep_Almanac(a8 + 44 * v194 + 7544, &v203);
            goto LABEL_234;
          }
        }

        if (!v89)
        {
LABEL_236:
          gn_report_assertion_failure("ST_Get_GPS_Orbit : status == TRUE");
          v71 = 0;
          *(a5 + 12) = 0;
          v116 = a8 + v24;
          if (!*(a8 + v24 + 60644))
          {
            v71 = 0;
            v116[60208] = 0;
            v116[61080] = 1;
          }

          goto LABEL_238;
        }

LABEL_234:
        v115 = Kep_Check_Almanac(*(a5 + 8), &v203);
        if (ST_Check_Alm_Kep_Err("ST_Get_GPS_Orbit", v115, &v203))
        {
          *(&v198[11] + 8) = 0u;
          memset(&v198[3] + 8, 0, 120);
          *(&v198[1] + 8) = 0u;
          *(v198 + 8) = 0u;
          *&v198[0] = v203;
          v198[11] = *&v204[48];
          *(&v198[12] + 1) = *&v204[64];
          *&v199 = *&v204[32];
          *(&v199 + 1) = *&v204[72];
          *&v200 = *&v204[24];
          *(&v200 + 1) = *&v204[40];
          *(&v198[2] + 8) = *&v204[8];
          DWORD2(v198[1]) = *&v204[4];
          HIDWORD(v198[1]) = *&v204[4];
          LODWORD(v198[2]) = *&v204[4];
          WORD3(v198[1]) = *v204;
          DWORD2(v198[0]) = DWORD2(v203);
          BYTE14(v198[0]) = BYTE13(v203);
          BYTE12(v198[0]) = BYTE12(v203);
          v71 = *(a5 + 12);
          goto LABEL_238;
        }

        goto LABEL_236;
      }

      v64 = v194;
      *(a8[3182] + v194) = 0;
      v74 = HIDWORD(a8[19 * v194 + 3189]);
      if ((v74 == 5 || v74 == 3) && (v184 - 64) >= 0xC1u)
      {
        *(p_NA + (v184 - 1) + 221) = 0;
        EvLog_d("Core_Set_BDS_Eph_Invalid:  Deleted SV", v184);
        v64 = v194;
      }

      v27 = a8 + 60426;
      if (!v173)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v62)
      {
        v168 = v63;
        v184 = v21;
        v174 = 0;
        v164 = 1;
        v68 = 3189;
        goto LABEL_152;
      }

      if (!v63)
      {
        goto LABEL_169;
      }

      v184 = v21;
    }

    v164 = 0;
    v174 = 1;
    v68 = 4386;
    v168 = 1;
    goto LABEL_152;
  }

  if (v23 == 1)
  {
    v179 = a8 + 60426;
    v52 = 0;
    memset(v214, 0, 36);
    memset(&v214[40], 0, 160);
    v215 = 0u;
    memset(v216, 0, 24);
    v203 = 0u;
    memset(v204, 0, 20);
    memset(&v204[24], 0, 64);
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0;
    v214[19] = 99;
    v204[3] = 99;
    v53 = v194;
    v183 = v21;
    if (*(a8[9] + v194) == 1)
    {
      Get_GPS_Kep_Ephemeris(1, v21, a8 + 116 * v194 + 3832, &v203);
      v54 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v203);
      v55 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v54, &v203);
      v52 = 1;
      v22 = v183;
      if (!v55)
      {
        v52 = 0;
        *(a8[9] + v194) = 0;
      }
    }

    if (*(a8[8] + v194) == 1)
    {
      v56 = v52;
      Get_GPS_Kep_Ephemeris(v201, v22, a8 + 116 * v194 + 120, v214);
      v57 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), v56 ^ 1u, v214);
      if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v57, v214))
      {
        if (v56)
        {
          v58 = v214;
          v59 = ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v214, &v203, 1);
          v60 = 0;
          if (!v59)
          {
            v53 = v194;
            if (*&v214[4] == 5)
            {
LABEL_204:
              v98 = v58[13];
              v198[12] = v58[12];
              v199 = v98;
              v200 = v58[14];
              v99 = v58[9];
              v198[8] = v58[8];
              v198[9] = v99;
              v100 = v58[11];
              v198[10] = v58[10];
              v198[11] = v100;
              v101 = v58[5];
              v198[4] = v58[4];
              v198[5] = v101;
              v102 = v58[7];
              v198[6] = v58[6];
              v198[7] = v102;
              v103 = v58[1];
              v198[0] = *v58;
              v198[1] = v103;
              v104 = v58[3];
              v198[2] = v58[2];
              v198[3] = v104;
              v105 = a8[12];
LABEL_208:
              *(v105 + v53) = v60;
              goto LABEL_209;
            }

            *(a8[8] + v194) = 0;
            v60 = 1;
            *(a8[6] + v194) = 1;
            v61 = *(a8 + 29 * v194 + 31);
            if (v61 != 5 && v61 != 3)
            {
LABEL_109:
              v58 = &v203;
              goto LABEL_204;
            }

            if ((v183 - 33) >= 0xE0u)
            {
              *(p_NA + (v183 - 1) + 12) = 0;
              EvLog_d("Core_Set_GPS_Eph_Invalid:  Deleted SV", v183);
            }

LABEL_108:
            v60 = 1;
            goto LABEL_109;
          }
        }

        else
        {
          v60 = 0;
          v58 = v214;
        }

        v53 = v194;
        goto LABEL_204;
      }

      *(a8[8] + v194) = 0;
      v72 = *(a8 + 29 * v194 + 31);
      LOBYTE(v52) = v56;
      v53 = v194;
      if ((v72 == 5 || v72 == 3) && (v183 - 33) >= 0xE0u)
      {
        *(p_NA + (v183 - 1) + 12) = 0;
        v73 = v52;
        EvLog_d("Core_Set_GPS_Eph_Invalid:  Deleted SV", v183);
        LOBYTE(v52) = v73;
        v53 = v194;
      }
    }

    if (v52)
    {
      goto LABEL_108;
    }

LABEL_168:
    v27 = v179;
    goto LABEL_169;
  }

  if (v23 != 2)
  {
    if (v23 == 3)
    {
      v28 = *(a8[2202] + v194);
      v29 = *(a8[2203] + v194);
      v30 = v194;
      memset(v202, 0, 20);
      memset(&v202[24], 0, 124);
      memset(&v202[152], 0, 41);
      *&v202[194] = 0;
      v202[202] = 0;
      if (v28 == 1 && v29)
      {
        v179 = a8 + 60426;
        v181 = v21;
        memset(v214, 0, 36);
        memset(&v214[40], 0, 160);
        v215 = 0uLL;
        memset(v216, 0, 24);
        v203 = 0uLL;
        memset(v204, 0, 20);
        memset(&v204[24], 0, 64);
        v205 = 0uLL;
        v206 = 0uLL;
        v207 = 0uLL;
        v208 = 0uLL;
        v209 = 0uLL;
        v210 = 0uLL;
        v211 = 0uLL;
        v212 = 0uLL;
        v213 = 0;
        GAL_EphInt2Real(&a8[11 * v194 + 2609] + 4, v202);
        GAL_EphReal2Kep(v202, &v203);
        v31 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v203);
        v170 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v31, &v203);
        if (!v170)
        {
          *(a8[2203] + v194) = 0;
        }

        GAL_EphInt2Real(&a8[11 * v194 + 2213] + 4, v202);
        GAL_EphReal2Kep(v202, v214);
        v32 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), !v170, v214);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v32, v214))
        {
          if (!v170 || ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v214, &v203, 1) || *&v214[4] == 5)
          {
            v34 = 0;
            v161 = 0;
            v162 = 1;
            v35 = 17708;
          }

          else
          {
            *v186 = 0;
            *(a8 + v24 + 60862) = 1;
            v33 = a8[11 * v194 + 2214];
            if ((v33 == 5 || v33 == 3) && (v181 - 37) >= 0xDCu)
            {
              *(p_NA + (v181 - 1) + 147) = 0;
              EvLog_d("Core_Set_GAL_Eph_Invalid:  Deleted SV", v181);
            }

            v34 = 1;
            v35 = 20876;
            v161 = 1;
            v162 = 0;
          }

          v30 = v194;
          goto LABEL_162;
        }

        v30 = v194;
        *(a8[2202] + v194) = 0;
        v82 = a8[11 * v194 + 2214];
        if ((v82 == 5 || v82 == 3) && (v181 - 37) >= 0xDCu)
        {
          *(p_NA + (v181 - 1) + 147) = 0;
          EvLog_d("Core_Set_GAL_Eph_Invalid:  Deleted SV", v181);
          v30 = v194;
        }

        v27 = a8 + 60426;
        if (v170)
        {
          goto LABEL_143;
        }
      }

      else
      {
        if (v28)
        {
          v179 = a8 + 60426;
          v181 = v21;
          v34 = 0;
          v161 = v29;
          v162 = 1;
          v35 = 17708;
          goto LABEL_162;
        }

        if (v29)
        {
          v179 = a8 + 60426;
          v181 = v21;
LABEL_143:
          v34 = 1;
          v35 = 20876;
          v161 = 1;
          v162 = 0;
LABEL_162:
          GAL_EphInt2Real(&a8[11 * v30] + v35, v202);
          *(a8[2206] + v194) = v34;
          if (v202[201] != 2 && v202[198] != 1 && v202[15] != 255)
          {
            v175 = 0;
            v165 = 0;
            *(a8 + v202[14] + 17671) = 0;
LABEL_180:
            GAL_EphReal2Kep(v202, v198);
            v93 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 1, v198);
            if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(GAL)", v93, v198))
            {
              if (v175)
              {
                BYTE3(v198[1]) = v165;
              }

              goto LABEL_209;
            }

            v94 = v194;
            if (v162)
            {
              *(a8[2202] + v194) = 0;
              v95 = a8[11 * v194 + 2214];
              if ((v95 == 5 || v95 == 3) && (v181 - 37) >= 0xDCu)
              {
                *(p_NA + (v181 - 1) + 147) = 0;
                EvLog_d("Core_Set_GAL_Eph_Invalid:  Deleted SV", v181);
                v94 = v194;
              }
            }

            if (v161)
            {
              *(a8[2203] + v94) = 0;
            }

            v27 = v179;
            if (v175)
            {
              BYTE3(v198[1]) = v165;
            }

            goto LABEL_169;
          }

          v166 = v202[15];
          v169 = v202[201];
          v176 = v202[198];
          *v214 = 0x4050000000000000;
          v87 = v202[14];
          *(a8 + v202[14] + 17671) = 1;
          *&v203 = 0;
          if (!R8_EQ(v214, &v203))
          {
            v91 = v166 == 255;
            v92 = 70;
            if (v166 == 255)
            {
              v92 = 64;
            }

            v165 = 8;
            EvLog_v("ST_Get_GPS_Orbit: USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d FOM %d Sigma %d", *(a5 + 4), v87, v169, v176, v91, 8, v92);
            v175 = 1;
            goto LABEL_180;
          }

          EvLog_v("ST_Get_GPS_Orbit: DO NOT USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d Sigma %d", *(a5 + 4), v87, v169, v176, v166 == 255, 64);
          goto LABEL_168;
        }
      }
    }

LABEL_169:
    if (BYTE2(v198[1]) == 255 && ((v201 - 3) < 4 || v201 == 1))
    {
      v88 = v27;
      EvLog_v("ST_Get_GPS_Orbit:  %c %d  Alm looking Eph timed-out", byte_2990525F0[v201], v194);
      v27 = v88;
    }

    *(a5 + 12) = 0;
    if ((v27[v24] & 1) == 0)
    {
      if (Get_Constell_Prn(v20) == 2)
      {
        __assert_rtn("ST_Get_GPS_Orbit", "GPS_State_Update.cpp", 2195, "Get_Constell_Prn( (U1)i) != GLON_CONSTELL");
      }

      v89 = 0;
      *v186 = 0;
      v90 = a8 + v24;
      v90[61516] = 0;
      v90[60862] = 1;
      goto LABEL_210;
    }

LABEL_174:
    v89 = 0;
    goto LABEL_212;
  }

LABEL_59:
  if (*(a8[2147] + v194) == 1)
  {
    v43 = v21;
    Get_GPS_Kep_Ephemeris(2, v21, a8 + 116 * v194 + 13464, v198);
    v44 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, v198);
    v45 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v44, v198);
    v46 = a8[2147];
    if (v45)
    {
      if (*(v46 + v194))
      {
        v47 = a8[2146];
        if (*(v47 + v194) == 1)
        {
          v48 = v43;
          v49 = &a8[8 * v194];
          v50 = *(v49 + 2995);
          if ((~v50 & 0xF00) != 0)
          {
            v51 = ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::glonURE_table[(v50 >> 8) & 0xF];
          }

          else
          {
            v51 = 0xFFFF;
          }

          v134 = a8 + 2154;
          v135 = *(a8 + v194 + 4308);
          if (v135 >= 0)
          {
            v136 = *(a8 + v194 + 4308);
          }

          else
          {
            v136 = -v135;
          }

          v137 = v51;
          if (v136 >= 0x385)
          {
            v138 = v136 * 0.000277777778 * (v136 * 0.000277777778 * (v136 * 0.000277777778)) * 73.3333333 + v136 * 0.000277777778 * (v136 * 0.000277777778) * -20.0;
            v137 = fmin(sqrt((v51 * v51) + v138 * v138), 65535.0);
          }

          if ((SBYTE3(v198[1]) & 0x8000000000000000) != 0)
          {
            v139 = 1;
          }

          else if (SBYTE3(v198[1]) > 0xB)
          {
            v139 = 0xFFFF;
          }

          else
          {
            v139 = ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::gpsURE_table[SBYTE3(v198[1])];
          }

          if (v139 <= v137)
          {
            v159 = v49 + 1491;
            v160 = *(v49 + 2983);
            if ((v160 == 5 || v160 == 3) && (v48 - 25) >= 0xE8u)
            {
              *(p_NA + (v48 - 1) + 96) = 0;
              v188 = v136;
              v178 = v139;
              v180 = v137;
              EvLog_d("Core_Set_GLON_Eph_Invalid:  Deleted SV", v48);
              v139 = v178;
              v137 = v180;
              v134 = a8 + 2154;
              v136 = v188;
              v47 = a8[2146];
            }

            *(v47 + v194) = 0;
            *(a8[2152] + v194) = 0;
            *(v159 + 46) = 0u;
            v159[1] = 0u;
            v159[2] = 0u;
            *v159 = 0u;
            *(v134 + v194) = 0;
            *(a8[2145] + v194) = 1;
            *(a8[2153] + v194) = 0;
            EvLog_v("ST_Get_GPS_Orbit:  Delete glonEph in favour of glonExtEph:  %d  Age %d  URE %d %d  EE URE %d  [0.1m]", v194 + 1, v136, v51, v137, v139);
          }

          else
          {
            *(a5 + 12) = 0;
          }
        }
      }
    }

    else
    {
      *(a5 + 12) = 0;
      *(v46 + v194) = 0;
    }
  }

  v71 = *(a5 + 12);
  *(a8[2151] + v194) = v71 == 1;
LABEL_238:
  if (!v71)
  {
    goto LABEL_259;
  }

  if (v71 != 1 || (DWORD1(v198[0]) - 5) < 2 || (*(a8 + v193 + 61734) & 1) != 0)
  {
    goto LABEL_242;
  }

  v124 = a1 - v191;
  v125 = v193;
  if (*(a8 + v193 + 60208) != 1)
  {
    goto LABEL_291;
  }

  if (v17 != 6)
  {
    if (*(a8 + v193 + 50616) == 1 && *(a7 + v193 + 265) != 1)
    {
      goto LABEL_268;
    }

    if (v190 < 7 && ((0x5Fu >> v190) & 1) != 0)
    {
      goto LABEL_291;
    }
  }

  if (*(a8 + v193 + 50834) != 1 || (*(a7 + v193 + 544) & 1) != 0)
  {
    goto LABEL_291;
  }

LABEL_268:
  if (v17 <= 3)
  {
    if (v17 == 1)
    {
      v131 = *(a8 + 22 * v124 + 3777);
      goto LABEL_292;
    }

    if (v17 != 2)
    {
      v132 = a8 + 36 * v124;
      v133 = 24054;
LABEL_289:
      v131 = *&v132[v133] + 1024;
      goto LABEL_292;
    }

    goto LABEL_290;
  }

  if (v17 > 5)
  {
    if (v17 == 6)
    {
      v132 = a8 + 52 * v124;
      v133 = 49836;
      goto LABEL_289;
    }

LABEL_290:
    EvCrt_Illegal_switch_case("ST_Update_Table", 0x399u);
    v124 = a1 - v191;
    v125 = v193;
LABEL_291:
    v131 = 0x7FFF;
    goto LABEL_292;
  }

  v126 = a8 + 44 * v124;
  if (v17 == 4)
  {
    v127 = v126 + 44664;
    v128 = v127[11];
    v129 = *(v127 + 4);
    if (v128 <= 0x93)
    {
      v130 = 1356;
    }

    else
    {
      v130 = 1357;
    }

    v131 = v130 + v129;
  }

  else
  {
    v131 = *(v126 + 5741);
  }

LABEL_292:
  v140 = *(a5 + 8);
  v141 = v140 - v131;
  if (v141 < 0)
  {
    v141 = -v141;
  }

  if (v141 > 2)
  {
    if (v17 <= 3)
    {
      if (v17 == 1)
      {
        v192 = 0;
        v187 = 0;
        v177 = 0;
        v142 = a8 + 116 * v124 + 120;
        goto LABEL_327;
      }

      if (v17 != 2)
      {
        v142 = 0;
        v187 = 0;
        v177 = 0;
        v192 = &a8[11 * v124 + 2213] + 4;
LABEL_327:
        v146 = 0;
        v196 = a8 + 59772;
        v147 = 1;
        while (1)
        {
          v148 = Get_Constell_Pos(v146);
          if (v148)
          {
            if (v146 == a1)
            {
              goto LABEL_354;
            }

            v149 = v146 - Num_Pos[v148 - 1];
            v150 = Num_Prn[v148 - 1];
          }

          else
          {
            if (v146 == a1)
            {
              goto LABEL_354;
            }

            v150 = 0;
            v149 = v146;
          }

          if (v196[v150 + v149] != 1)
          {
            goto LABEL_354;
          }

          if ((v17 & 3) == 1)
          {
            if (v148 == 5)
            {
              v151 = a8 + 1144;
            }

            else
            {
              if (v148 != 1)
              {
                goto LABEL_343;
              }

              v151 = a8 + 15;
            }

            v152 = v151 + 116 * v149;
            v153 = 8;
            while (*(v142 + v153) == *&v152[v153])
            {
              v153 += 4;
              if (v153 == 104)
              {
                goto LABEL_356;
              }
            }
          }

LABEL_343:
          if (v17 == 3 && v148 == 3)
          {
            if (Is_GAL_IntEph_Same(v192, &a8[11 * v149 + 2213] + 4))
            {
              goto LABEL_356;
            }
          }

          else if (v17 == 4 && v148 == 4)
          {
            if (Is_BDS_IntEph_Same(v187, &a8[19 * v149 + 3189]))
            {
              goto LABEL_356;
            }
          }

          else if (v17 == 6 && v148 == 6 && Is_NVIC_IntEph_Same(v177, a8 + 76 * v149 + 47696))
          {
LABEL_356:
            if (v147)
            {
              v154 = Num_Pos_Idx_To_GNSS_Id(a1);
              v214[0] = v154;
              v155 = Num_Pos_Idx_To_GNSS_Id(v146);
              v214[1] = v155;
              if (ST_Get_SNR_Levels(a9, v17, v214, &v203))
              {
                if (BYTE1(v203) + 15 < v203)
                {
                  goto LABEL_361;
                }

                if (v203 + 15 < BYTE1(v203))
                {
                  v155 = v154;
LABEL_361:
                  v156 = GNSS_SVId_Constell_To_Num_Pos_Idx(v155, v17);
                  v157 = v156;
                  v158 = Num_Pos_Idx_To_Num_Prn_Idx(v156);
                  if (Get_Constell_Prn(v158) == 2)
                  {
                    __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 1079, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
                  }

                  *(a8 + v158 + 60862) = 1;
                  v196[v158] = 0;
                  if (a1 == v157)
                  {
LABEL_363:
                    *(a5 + 12) = 0;
                  }
                }
              }
            }

            goto LABEL_242;
          }

LABEL_354:
          v147 = v146++ < 0xC4;
          if (v146 == 197)
          {
            goto LABEL_242;
          }
        }
      }
    }

    else
    {
      if (v17 <= 5)
      {
        if (v17 == 4)
        {
          v142 = 0;
          v192 = 0;
          v177 = 0;
          v187 = &a8[19 * v124 + 3189];
        }

        else
        {
          v192 = 0;
          v187 = 0;
          v177 = 0;
          v142 = a8 + 116 * v124 + 9152;
        }

        goto LABEL_327;
      }

      if (v17 == 6)
      {
        v142 = 0;
        v192 = 0;
        v187 = 0;
        v177 = a8 + 76 * v124 + 47696;
        goto LABEL_327;
      }
    }

    EvCrt_Illegal_switch_case("ST_Check_Duplicate_Eph", 0xBCAu);
    v142 = 0;
    v192 = 0;
    v187 = 0;
    v177 = 0;
    goto LABEL_327;
  }

  *v204 = 0;
  *&v203 = 0;
  *(&v203 + 7) = 0;
  memset(&v204[4], 0, 76);
  v195 = v125;
  if (v17 <= 3)
  {
    switch(v17)
    {
      case 1:
        Get_GPS_Kep_Almanac(a8 + 44 * v124 + 7544, &v203);
        break;
      case 3:
        memset(v214, 0, 91);
        GAL_AlmInt2Real(a8 + 36 * v124 + 24044, v214);
        *&v204[8] = *&v214[72];
        *&v204[24] = *&v214[24];
        *&v204[32] = *&v214[32] + 0.977384381;
        *&v204[40] = *&v214[48];
        *&v204[48] = *&v214[64];
        *(&v203 + 4) = *&v214[4] | 0x300000000;
        BYTE12(v203) = v214[8];
        BYTE13(v203) = v214[90] | (8 * v214[89]);
        BYTE14(v203) = v214[9];
        *v204 = *&v214[10] + 1024;
        *&v204[4] = *&v214[12];
        *&v204[56] = *&v214[16] + 5440.5882;
        *&v204[64] = *&v214[40];
        *&v204[72] = *&v214[56];
        break;
      case 2:
        __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 943, "FALSE");
      default:
        goto LABEL_242;
    }
  }

  else
  {
    switch(v17)
    {
      case 4:
        memset(v214, 0, 88);
        BDS_AlmInt2Real(a8 + 44 * v124 + 44664, v214);
        *&v203 = *v214;
        *&v204[56] = *&v214[16];
        *&v204[72] = *&v214[32];
        v143 = 0.942477796;
        if (v214[11] - 59 < 0xFFFFFFCB)
        {
          v143 = 0.0;
        }

        *&v204[24] = *&v214[24];
        *&v204[32] = *&v214[64] + v143;
        *&v204[48] = *&v214[40];
        *&v204[40] = *&v214[56];
        *&v204[8] = *&v214[72];
        *&v204[4] = *&v214[12] + 14;
        *v204 = *&v214[8] + 1356;
        if (*&v214[12] + 14 > 604799)
        {
          *&v204[4] = *&v214[12] - 604786;
          *v204 = *&v214[8] + 1357;
        }

        *&v204[64] = *&v214[48] + 0.0010208961;
        DWORD2(v203) = 4;
        BYTE12(v203) = v214[11];
        BYTE13(v203) = v214[10] ^ 1;
        break;
      case 5:
        Get_QZSS_Kep_Almanac(a8 + 44 * v124 + 11472, &v203);
        break;
      case 6:
        *&v214[12] = 0;
        *&v214[16] = 0;
        *v214 = 0;
        *&v214[7] = 0;
        memset(&v214[24], 0, 80);
        NVIC_AlmInt2Real(a8 + 52 * v124 + 49824, v214);
        *&v203 = *v214;
        *&v204[8] = *&v214[80];
        *&v204[24] = *&v214[24];
        *&v204[40] = *&v214[40];
        *&v204[48] = *&v214[72];
        *&v204[56] = *&v214[48];
        DWORD2(v203) = 6;
        WORD6(v203) = *&v214[8];
        BYTE14(v203) = (0x101010102 * (*&v214[16] / 0x15180u - *&v214[12] + 8 * *&v214[12])) >> 32;
        *v204 = *&v214[12] + 1024;
        *&v204[4] = *&v214[16];
        *&v204[72] = *&v214[64];
        break;
      default:
        goto LABEL_242;
    }
  }

  v144 = Kep_Check_Almanac(v140, &v203);
  if (ST_Check_Alm_Kep_Err("ST_Update_Table", v144, &v203))
  {
    *&v214[184] = 0u;
    memset(&v214[56], 0, 120);
    *&v214[24] = 0u;
    *&v214[8] = 0u;
    *v214 = v203;
    *&v214[176] = *&v204[48];
    *&v215 = *&v204[64];
    *(&v215 + 1) = *&v204[32];
    v216[0] = *&v204[72];
    v216[1] = *&v204[24];
    v216[2] = *&v204[40];
    *&v214[40] = *&v204[8];
    *&v214[28] = *&v204[4];
    *&v214[24] = *&v204[4];
    *&v214[32] = *&v204[4];
    *&v214[22] = *v204;
    *&v214[8] = DWORD2(v203);
    v214[14] = BYTE13(v203);
    v214[12] = BYTE12(v203);
    if (!ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v198, v214, 2))
    {
      if (Get_Constell_Prn(v193) == 2)
      {
        __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 1020, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
      }

      v145 = a8 + v195;
      v145[60862] = 1;
      v145[59772] = 0;
      goto LABEL_363;
    }

    *(a8 + v195 + 61734) = 1;
  }

LABEL_242:
  v117 = *(a5 + 12);
  if ((v117 - 1) <= 1)
  {
    v118 = a3;
    if (v117 == 1)
    {
      v118 = a2;
    }

    v119 = -v118;
    *(v189 + 2 * a1) = v119;
    v120 = *(a5 + 4) - v119;
    if (v120 <= 604799)
    {
      v121 = v120;
    }

    else
    {
      v121 = v120 - 604800;
    }

    if (v120 <= 604799)
    {
      v122 = *(a5 + 8);
    }

    else
    {
      v122 = *(a5 + 8) + 1;
    }

    if (DWORD2(v198[0]) == 4 && v117 == 1 && BYTE12(v198[0]) <= 5u)
    {
      Kep_Calc_SV_Ref_State_BDS_GEO(1, v122, v121, v198, a4);
    }

    else
    {
      Kep_Calc_SV_Ref_State(v117, v122, v121, v198, a4);
    }

    if (*(a5 + 12) == 1 && DWORD1(v198[0]) == 6)
    {
      *(a4 + 166) += 1000;
    }
  }

LABEL_259:
  v123 = *MEMORY[0x29EDCA608];
}

void GPS_State_Update(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v96 = *MEMORY[0x29EDCA608];
  if (!ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    goto LABEL_143;
  }

  *a2 = 0;
  if (!*(a1 + 402))
  {
    goto LABEL_7;
  }

  v14 = *(a2 + 4);
  v15 = v14 - *a1;
  *a2 = v15;
  v16 = *(a2 + 8);
  if (v16 != *(a1 + 4))
  {
    if (*(a1 + 4) + 1 != v16)
    {
LABEL_7:
      v17 = *MEMORY[0x29EDCA608];

      GPS_State_Update_Init(a1, a2, a3, a4, a6, a7, a8);
      return;
    }

    v15 += 604800;
    *a2 = v15;
  }

  if ((v15 - 101) < 0xFFFFFF91)
  {
    goto LABEL_7;
  }

  v18 = 0;
  *(a1 + 4) = v16;
  v19 = a4 + 62171;
  *a1 = v14;
  v20 = a4 + 59772;
  v79 = a4 + 59990;
  v75 = a4 + 7526;
  v74 = a4 + 6327;
  v77 = a4 + 50834;
  v71 = a6 + 265;
  v72 = a6 + 544;
  v81 = a1 + 6;
  v21 = a8 + 11;
  do
  {
    if (v19[v18] != 1 || !*v21)
    {
      goto LABEL_25;
    }

    v22 = Num_Pos_Idx_To_Num_Prn_Idx(v18);
    if ((v20[v22] & 1) == 0 && (v79[v22] & 1) == 0 && *(v75 + v22) != 1 || (v23 = v21[2]) == 0)
    {
LABEL_24:
      *v21 = 0;
      *(v81 + 2 * v18) = 0;
      goto LABEL_25;
    }

    if (v23 == 6)
    {
      goto LABEL_18;
    }

    if (*(v74 + v22) != 1 || *(v71 + v22) == 1)
    {
      if (v23 < 6 || v23 == 7)
      {
        goto LABEL_24;
      }

LABEL_18:
      if (v77[v22] != 1 || (*(v72 + v22) & 1) != 0)
      {
        goto LABEL_24;
      }
    }

    v24 = (*(v81 + 2 * v18) + *a2);
    *(v81 + 2 * v18) += *a2;
    if (v24 > 450)
    {
      goto LABEL_7;
    }

LABEL_25:
    ++v18;
    v21 += 48;
  }

  while (v18 != 197);
  v25 = 0;
  v26 = 0;
  v73 = a5;
  v27 = a8 + 11;
  memset(v95, 0, 197);
  while (2)
  {
    *(v95 + v25) = 0;
    if (v19[v25] != 1 || *(a6 + v25 + 265) == 1 && (*(a6 + v25 + 544) & 1) != 0)
    {
      goto LABEL_72;
    }

    Constell_Pos = Get_Constell_Pos(v25);
    if (Constell_Pos)
    {
      v29 = v25 - Num_Pos[Constell_Pos - 1];
      v30 = Num_Prn[Constell_Pos - 1];
    }

    else
    {
      v30 = 0;
      v29 = v25;
    }

    v31 = v30 + v29;
    if (!*v27)
    {
      v34 = 1;
      goto LABEL_46;
    }

    if (*v27 != 1)
    {
      if (*(v81 + 2 * v25) > 60)
      {
        goto LABEL_71;
      }

      v34 = 0;
LABEL_46:
      if ((v20[v31] & 1) != 0 || v79[v31] == 1)
      {
        if (!Constell_Pos)
        {
          goto LABEL_57;
        }

        if (Constell_Pos != 6)
        {
          if (*(v74 + v31) == 1 && *(v71 + v31) != 1)
          {
            goto LABEL_71;
          }

          goto LABEL_57;
        }

        if ((v77[v31] & 1) == 0)
        {
LABEL_57:
          if ((v34 & 1) == 0)
          {
            goto LABEL_72;
          }

LABEL_58:
          v35 = *(v75 + v31) != 1 || Constell_Pos == 0;
          if (!v35)
          {
            if (Constell_Pos == 6)
            {
              if (v77[v31] == 1 && (*(v72 + v31) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            else if (*(v74 + v31) == 1 && *(v71 + v31) != 1)
            {
              goto LABEL_71;
            }
          }

          goto LABEL_72;
        }

        if (*(v72 + v31) != 1)
        {
          goto LABEL_71;
        }
      }

      if (!v34)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }

    if (*(a4 + v31 + 60426))
    {
      goto LABEL_71;
    }

    v32 = *(v73 + v31);
    v33 = *(v81 + 2 * v25);
    if (v32 >= -2)
    {
      if (v33 <= 5)
      {
        goto LABEL_72;
      }

LABEL_71:
      *(v95 + v25) = 1;
      ++v26;
      goto LABEL_72;
    }

    if (v33 > 60)
    {
      goto LABEL_71;
    }

LABEL_72:
    ++v25;
    v27 += 48;
    if (v25 != 197)
    {
      continue;
    }

    break;
  }

  if (v26 == 1)
  {
LABEL_122:
    v56 = 0;
    do
    {
      v57 = v56;
      if (*(v95 + v56) == 1)
      {
        v93 = 0u;
        memset(v94, 0, 31);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        ST_Update_Table(v56, 15, 60, &v84, a2, a1, a6, a4, a7);
        if (*(a2 + 12))
        {
          *(a1 + 402) = 1;
        }

        else
        {
          *&v94[16] = 0;
          *(v81 + 2 * v57) = 0;
        }

        if (Get_Constell_Pos(v57) != 2 || *&v94[16] || (v58 = &a8[12 * v57], (v59 = *(v58 + 44)) == 0) || (v59 != 1 ? (v60 = 203) : (v60 = 10), *(a2 + 4) - *(v58 + 40) + 604800 * (*(a2 + 8) - *(v58 + 82)) >= v60))
        {
          v61 = v93;
          v62 = &a8[12 * v57];
          v62[8] = v92;
          v62[9] = v61;
          v63 = *&v94[16];
          v62[10] = *v94;
          v62[11] = v63;
          v64 = v89;
          v62[4] = v88;
          v62[5] = v64;
          v65 = v91;
          v62[6] = v90;
          v62[7] = v65;
          v66 = v85;
          *v62 = v84;
          v62[1] = v66;
          v67 = v87;
          v62[2] = v86;
          v62[3] = v67;
        }

        --v26;
      }

      v56 = v57 + 1;
    }

    while (v26);
    goto LABEL_137;
  }

  if (v26)
  {
    EvLog_d("GPS_State_Update: Immediate Updates = ", v26);
    goto LABEL_122;
  }

  v36 = 0;
  v37 = *(v73 + 654);
  v38 = a8 + 11;
  v78 = 20;
  v80 = 90;
  v76 = 5;
  v39 = -1;
  v40 = 15;
LABEL_76:
  v41 = &v38[12 * v36];
  do
  {
    if (*(a6 + v36 + 265) != 1 || (*(a6 + v36 + 544) & 1) == 0)
    {
      v42 = Get_Constell_Pos(v36);
      v43 = *v41;
      if (*v41)
      {
        if (v19[v36] == 1)
        {
          if (!v37 || (!v42 ? (v45 = 0, v44 = v36) : (v44 = v36 - Num_Pos[v42 - 1], v45 = Num_Prn[v42 - 1]), (v46 = *(v73 + v45 + v44), v46 > -3) || v46 == -99))
          {
            v47 = *(v81 + 2 * v36);
            if (v47 >= 0)
            {
              v48 = *(v81 + 2 * v36);
            }

            else
            {
              v48 = -v47;
            }

            if (v43 == 1)
            {
              if (v48 <= v78)
              {
                if (v40 >= 8 && v47 > v76)
                {
                  v39 = v36;
                  v40 = 8;
                  v76 = *(v81 + 2 * v36);
                  v35 = v36++ == 196;
                  v38 = a8 + 11;
                  if (!v35)
                  {
                    goto LABEL_76;
                  }

                  v39 = 196;
                  goto LABEL_112;
                }
              }

              else
              {
                v40 = 5;
                v78 = v48;
                v39 = v36;
              }
            }

            else if (v43 == 2 && v40 >= 6)
            {
              v49 = v80;
              v50 = v48 > v80;
              if (v48 > v80)
              {
                v49 = v48;
              }

              v80 = v49;
              if (v50)
              {
                v39 = v36;
              }

              if (v50)
              {
                v40 = 6;
              }
            }
          }
        }
      }
    }

    ++v36;
    v41 += 48;
  }

  while (v36 != 197);
  if (v40 <= 7)
  {
    goto LABEL_120;
  }

LABEL_112:
  v51 = 0;
  v52 = (a8 + 11);
  v53 = 90;
  do
  {
    v54 = *v52;
    v52 += 48;
    if (v54 && v19[v51] == 1)
    {
      v55 = *(v81 + 2 * v51);
      if (v55 < 0)
      {
        v55 = -v55;
      }

      if (v55 > v53)
      {
        v53 = v55;
        v39 = v51;
      }
    }

    ++v51;
  }

  while (v51 != 197);
LABEL_120:
  if ((v39 & 0x80000000) == 0)
  {
    v26 = 1;
    *(v95 + v39) = 1;
    goto LABEL_122;
  }

LABEL_137:
  v68 = 0;
  *(a1 + 402) = 0;
  v69 = a8 + 11;
  while (v19[v68] != 1 || !*v69)
  {
    ++v68;
    v69 += 48;
    if (v68 == 197)
    {
      goto LABEL_143;
    }
  }

  *(a1 + 402) = 1;
LABEL_143:
  v70 = *MEMORY[0x29EDCA608];
}

BOOL ST_Cross_Check_SVRS_vs_SVRS(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 16);
  v3 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v5 = *v2--;
    v3 = v3 + v5 * v5;
  }

  v6 = (*(a1 + 104) - *(a2 + 104)) * 2.99792458e11;
  v7 = (a2 + 16);
  v8 = 0.0;
  for (j = 4; j > 1; --j)
  {
    v10 = *v7--;
    v8 = v8 + v10 * v10;
  }

  v11 = (*(a1 + 96) - *(a2 + 96)) * 299792458.0;
  v12 = 0.0;
  v13 = 2;
  v14 = sqrt(v8);
  do
  {
    v15 = *(a1 + 8 * v13) - *(a2 + 8 * v13);
    v12 = v12 + v15 * v15;
    v16 = v13-- + 1;
  }

  while (v16 > 1);
  v17 = sqrt(v3) - v14;
  v18 = 0.0;
  v19 = 5;
  do
  {
    v20 = *(a1 + 8 * v19) - *(a2 + 8 * v19);
    v18 = v18 + v20 * v20;
    v21 = v19 - 2;
    --v19;
  }

  while (v21 > 1);
  v22 = sqrt(v12);
  v23 = sqrt(v18) * 1000.0;
  v24 = *(a1 + 112);
  v25 = *(a2 + 112);
  v26 = sqrt(v24 + v25) * 5.0;
  v27 = fabs(v11) <= v26;
  if (fabs(v6) > v26 * 0.05)
  {
    v27 = 0;
  }

  if (fabs(v17) > v26)
  {
    v27 = 0;
  }

  if (v22 > v26 * 10.0)
  {
    v27 = 0;
  }

  v28 = v23 <= v26 * 5.0 && v27;
  if (v28)
  {
    if (g_Logging_Cfg >= 6)
    {
      v29 = *(a1 + 176);
      if (v29 > 2)
      {
        v30 = 120;
      }

      else
      {
        v30 = dword_299052630[v29];
      }

      v37 = *(a2 + 176);
      if (v37 > 2)
      {
        v38 = 120;
      }

      else
      {
        v38 = dword_299052630[v37];
      }

      v39 = *(a1 + 184) - 1;
      if (v39 > 6)
      {
        v40 = 88;
      }

      else
      {
        v40 = dword_29905263C[v39];
      }

      EvLog_v("ST_Cross_Check_SVRS:  %c vs %c  PASS:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v30, v38, *(a1 + 160), v40, *(a1 + 188), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
    }
  }

  else
  {
    v31 = *(a1 + 176);
    if (v31 > 2)
    {
      v32 = 120;
    }

    else
    {
      v32 = dword_299052630[v31];
    }

    v33 = *(a2 + 176);
    if (v33 > 2)
    {
      v34 = 120;
    }

    else
    {
      v34 = dword_299052630[v33];
    }

    v35 = *(a1 + 184) - 1;
    if (v35 > 6)
    {
      v36 = 88;
    }

    else
    {
      v36 = dword_29905263C[v35];
    }

    EvCrt_v("ST_Cross_Check_SVRS:  %c vs %c  FAIL:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v32, v34, *(a1 + 160), v36, *(a1 + 188), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
  }

  v41 = *MEMORY[0x29EDCA608];
  return v28;
}

BOOL ST_Check_Alm_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = *(a3 + 8) - 1;
    if (v5 <= 6)
    {
      v6 = dword_29905263C[v5];
    }

    v7 = 1;
    v8 = *(a3 + 12);
    do
    {
      if ((v7 & a2) != 0)
      {
        v9 = 0.0;
        if (v7 <= 7u)
        {
          if (v7 > 1u)
          {
            if (v7 == 2)
            {
              v9 = *(a3 + 20);
            }

            else if (v7 == 4)
            {
              v9 = *(a3 + 72);
            }
          }

          else if (v7)
          {
            v9 = *(a3 + 20);
          }
        }

        else if (v7 <= 0x1Fu)
        {
          if (v7 == 8)
          {
            v9 = *(a3 + 72);
          }

          else if (v7 == 16)
          {
            v9 = *(a3 + 40);
          }
        }

        else
        {
          switch(v7)
          {
            case 0x20u:
              v9 = *(a3 + 40);
              break;
            case 0x40u:
              v9 = *(a3 + 56);
              break;
            case 0x80u:
              v9 = *(a3 + 56);
              break;
          }
        }

        if (fabs(v9) >= 0.000001)
        {
          EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %g");
        }

        else
        {
          EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %e");
        }
      }

      v10 = v7 >= 0x8000;
      v7 *= 2;
    }

    while (!v10);
  }

  result = a2 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ST_Check_Eph_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = *(a3 + 8) - 1;
    if (v5 <= 6)
    {
      v6 = dword_29905263C[v5];
    }

    v7 = 1;
    v8 = *(a3 + 12);
    do
    {
      if ((v7 & a2) != 0)
      {
        v9 = 0.0;
        if (v7 <= 0x1Fu)
        {
          if (v7 > 3u)
          {
            switch(v7)
            {
              case 4u:
                v9 = *(a3 + 24);
                break;
              case 8u:
                v9 = *(a3 + 24);
                break;
              case 0x10u:
                v9 = *(a3 + 28);
                break;
            }
          }

          else if (v7)
          {
            if (v7 == 1)
            {
              v9 = *(a3 + 24);
            }

            else if (v7 == 2)
            {
              v9 = *(a3 + 24);
            }
          }
        }

        else if (v7 <= 0xFFu)
        {
          switch(v7)
          {
            case 0x20u:
              v9 = *(a3 + 28);
              break;
            case 0x40u:
              v9 = *(a3 + 184);
              break;
            case 0x80u:
              v9 = *(a3 + 184);
              break;
          }
        }

        else if (v7 > 0x3FFu)
        {
          if (v7 == 1024)
          {
            v9 = *(a3 + 232);
          }

          else if (v7 == 2048)
          {
            v9 = *(a3 + 232);
          }
        }

        else if (v7 == 256)
        {
          v9 = *(a3 + 224);
        }

        else if (v7 == 512)
        {
          v9 = *(a3 + 224);
        }

        if (fabs(v9) >= 0.000001)
        {
          EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %g");
        }

        else
        {
          EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %e");
        }
      }

      v10 = v7 >= 0x8000;
      v7 *= 2;
    }

    while (!v10);
  }

  result = a2 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ST_Cross_Check_Eph_Kep_vs_Eph_Kep(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(v13, 0, 191);
  if (*(a3 + 8) == 4 && *(a3 + 12) <= 5u)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, a1, a2, a3, v13);
  }

  else
  {
    Kep_Calc_SV_Ref_State(1, a1, a2, a3, v13);
  }

  memset(v12, 0, 191);
  if (*(a3 + 8) == 4 && a5 == 1 && *(a3 + 12) - 59 <= 0xFFFFFFCA)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, a1, a2, a4, v12);
  }

  else
  {
    Kep_Calc_SV_Ref_State(a5, a1, a2, a4, v12);
  }

  result = ST_Cross_Check_SVRS_vs_SVRS(v13, v12);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ST_Get_SNR_Levels(uint64_t a1, int a2, unsigned __int8 *a3, _WORD *a4)
{
  v4 = 0;
  v5 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  *a4 = 0;
  v7 = (a1 + 1000);
  v8 = (a1 + 2152);
  v9 = 128;
  do
  {
    if (*v7 != a2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 2);
    if (v10 == *a3 && v7[160] > 3)
    {
      v4 = 1;
      v11 = a4;
LABEL_9:
      *v11 = *v8;
      goto LABEL_10;
    }

    if (v10 == a3[1] && v7[160] >= 4)
    {
      v5 = 1;
      v11 = a4 + 1;
      goto LABEL_9;
    }

LABEL_10:
    ++v8;
    ++v7;
    --v9;
  }

  while (v9);
  v12 = *MEMORY[0x29EDCA608];
  return (v6 == *(a1 + 32)) & v4 & v5;
}

uint64_t GM_Get_Best_SyncSV(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  v9 = 0;
  v41 = *MEMORY[0x29EDCA608];
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  *a5 = -1;
  *a6 = -1;
  do
  {
    v10 = (a2 + 36 * v9);
    v11 = *v10;
    if (Is_Legal(*v10) && (~*(v10 + 4) & 0x208) == 0)
    {
      v12 = a3 + 48 * v9;
      if (*(v12 + 4) == 1 && *(v12 + 15) == 1)
      {
        v13 = a3;
        v14 = (a1 + 56 * v9);
        v15 = *v14 - *(v12 + 28);
        if (fabs(v15) > 21.0)
        {
          GNSS_SV_Str = Get_GNSS_SV_Str(v11);
          EvLog_v("GM_Get_Best_SyncSV:  %3d  %7s  Large (Meas - AA) Z-Count diff !  %d  (%d - %d)", v9, GNSS_SV_Str, v15, *v14, *(v12 + 28));
          a3 = v13;
        }

        else
        {
          v16 = 0;
          v17 = v14[1] - *(v12 + 32) + 1534500 * v15;
          if (v17 < 0)
          {
            v18 = -511;
          }

          else
          {
            v18 = 511;
          }

          v19 = (v18 + v17) / 1023;
          *(v38 + v9) = v19;
          *(v37 + v9) = 1;
          a3 = v13;
          while (*(v40 + v16) != v19)
          {
            if (++v16 == 32)
            {
              goto LABEL_18;
            }
          }

          if (v16 < 0x20)
          {
            v21 = *(v39 + v16);
            if (v21 >= 1)
            {
              v22 = v21 + 1;
LABEL_24:
              *(v39 + v16) = v22;
              goto LABEL_25;
            }
          }

LABEL_18:
          v16 = 0;
          while (*(v39 + v16))
          {
            if (++v16 == 32)
            {
              goto LABEL_25;
            }
          }

          if (v16 <= 0x1F)
          {
            *(v40 + v16) = v19;
            v22 = 1;
            goto LABEL_24;
          }
        }
      }
    }

LABEL_25:
    ++v9;
  }

  while (v9 != 128);
  v23 = 0;
  v24 = 0;
  v25 = 0x8000;
  do
  {
    if (*(v39 + v23) > v25)
    {
      v25 = *(v39 + v23);
      v24 = v23;
    }

    ++v23;
  }

  while (v23 != 32);
  if (v25 >= 1 && v24 < 0x80)
  {
    v26 = 0;
    v27 = *(v40 + v24);
    v28 = (a2 + 8);
    while (1)
    {
      if (*a5 != -1 || *a6 != -1 || *(v37 + v26) != 1 || *(v38 + v26) != v27)
      {
        goto LABEL_41;
      }

      v29 = *v28 & 0x300;
      v30 = a5;
      if (v29 == 768)
      {
        goto LABEL_40;
      }

      if (v29 == 512)
      {
        break;
      }

LABEL_41:
      ++v26;
      v28 += 18;
      if (v26 == 128)
      {
        goto LABEL_42;
      }
    }

    v30 = a6;
LABEL_40:
    *v30 = v26;
    goto LABEL_41;
  }

LABEL_42:
  result = *a5;
  if (result != -1 || (result = GM_Get_Best_SSS(a2, a3, a4, 128), *a5 = result, result != -1))
  {
    if (*(a3 + 48 * result + 4))
    {
      goto LABEL_45;
    }
  }

  Best_ASSS = *a6;
  if (*a6 == -1)
  {
    Best_ASSS = GM_Get_Best_ASSS(a2, a3, a4, 128);
    *a6 = Best_ASSS;
    result = *a5;
  }

  if (Best_ASSS < 0 && (result & 0x80000000) == 0)
  {
    *a6 = result;
    Best_ASSS = result;
    result = *a5;
  }

  if (result != -1 && (*(a3 + 48 * result + 4) & 1) == 0 && Best_ASSS != result && (*(a3 + 48 * Best_ASSS + 4) & 1) == 0)
  {
LABEL_45:
    *a6 = result;
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Init_DB_Time_Sync_NV(int *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v34 = 0;
  v33 = 0;
  v31 = 0.0;
  v32 = 0.0;
  v30 = 0;
  v5 = *a1;
  v6 = a1[4];
  v7 = *(a1 + 3);
  if (Core_Load_ApxTime(v6, &v33, &v32, &v34))
  {
    v8 = v34;
    *(a2 + 108) = v34;
    v9 = v33;
    *(a2 + 112) = -v33;
    v10 = v32;
    *(a2 + 120) = v32;
    if (v9 >= 1025 && v8 > *a2)
    {
      *a2 = v8;
      *(a2 + 16) = 1;
      *(a2 + 40) = v10;
      *(a2 + 32) = v9;
      EvLog_v("Init_DBts_NV: ApxG %u %d %g %d", v6, v9, v10, v8);
      v11 = *a2;
      if ((*a2 - 4) <= 4)
      {
        v12 = *(a2 + 40) * 1000.0;
        v13 = -0.5;
        if (v12 > 0.0)
        {
          v13 = 0.5;
        }

        v14 = v12 + v13;
        if (v14 <= 2147483650.0)
        {
          if (v14 >= -2147483650.0)
          {
            v15 = v14;
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

        v16 = *(a2 + 24);
        v17 = *(a2 + 28);
        v18 = v15 - v16;
        LODWORD(v29) = 0;
        BYTE4(v28) = 0;
        if (Core_Load_TTick_Cal(v16, v17, v15 - v16, &v29, &v28 + 4))
        {
          v19 = BYTE4(v28);
          if (BYTE4(v28) >= 0x5Au)
          {
            v20 = 6;
          }

          else
          {
            v20 = 7;
          }

          if (BYTE4(v28) < 0x1Eu)
          {
            v20 = 8;
          }

          if (v20 >= v11)
          {
            v21 = LODWORD(v29);
            v27 = v20;
            Inc_GPS_TOW(SLODWORD(v29) * 0.001, (a2 + 40), (a2 + 32));
            *a2 = v27;
            EvLog_v("Init_DBts_NV: Calib %d %g %d %d", v21, *(a2 + 40), v18, v19);
          }
        }
      }

      v28 = 0;
      v29 = 0.0;
      API_Get_UTC_Cor(1, &v29);
      GPS_To_Glon_Time(0, *(a2 + 32), *(a2 + 40), v29, &v28, &v28 + 1, (a2 + 88));
      v23 = v28;
      v22 = WORD2(v28);
      *(a2 + 84) = WORD2(v28);
      *(a2 + 82) = v23;
      *(a2 + 80) = 1;
      v24 = *a2;
      *(a2 + 76) = *a2;
      EvLog_v("Init_DBts_NV: Glon %d %d %g %d", v23, v22, *(a2 + 88), v24);
      *(a2 + 112) = -*(a2 + 112);
    }
  }

  v29 = 0.0;
  *a3 = v5;
  *(a3 + 4) = v6;
  *(a3 + 8) = v7;
  result = Core_Get_Ref_Time(v6, &v31, &v30, &v29);
  if (result)
  {
    result = API_Set_Ref_Time(v6, v31, v30, v29);
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Crude_Apx_Pos(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v82 = v8;
  v9 = v1;
  v106 = *MEMORY[0x29EDCA608];
  v10 = (v6 + 68304);
  v11 = mach_continuous_time();
  v12 = *&g_MacClockTicksToMsRelation;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 1) = 0;
  *(v10 + 9) = 0;
  v13 = *v10;
  bzero(v104, 0x600uLL);
  memset(v103, 0, 128);
  if (v5[5] <= 2)
  {
    *(v7 + 240) = 0;
    goto LABEL_115;
  }

  v72 = v3;
  v73 = v13;
  v77 = v10;
  v74 = (v5 + 15054);
  v75 = (v12 * v11);
  if (*(v7 + 240) == 1 && *(v5 + 4) + 604800 * *(v5 + 13) - *(v7 + 272) > 60 || *(v7 + 20104) != 1 || (*(v7 + 20105) & 1) == 0)
  {
    *(v7 + 240) = 0;
  }

  v79 = v5;
  v76 = v7;
  v83 = 0;
  v80 = 0;
  v14 = v9 + 96;
  v15 = v9 + 1248;
  v16 = v9 + 864;
  v17 = v9 + 992;
  v81 = v9 + 3424;
  v78 = v9 + 4448;
  v18 = 3;
  memset(v105, 0, 128);
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      v21 = v14 + 4 * v19;
      v22 = *v21;
      if (Is_Legal(*v21) && *(v15 + 4 * v19) >= 10 && *(v16 + v19) >= 0x40u)
      {
        v23 = *(v17 + 2 * v19 + 1) & 3;
        if (v20 == v23)
        {
          v101 = 0u;
          memset(v102, 0, 31);
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v92 = 0u;
          v90 = 0;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          memset(v84, 0, sizeof(v84));
          v91[0] = 0;
          *(v91 + 3) = 0;
          if (v22 != 7 && (BYTE1(v22) > 0xFu || ((1 << SBYTE1(v22)) & 0xE6CC) == 0 || v22 == 6))
          {
            v24 = (v82 + 192 * GNSS_Id_To_Num_Pos_Idx(v22));
            v25 = v24[9];
            v100 = v24[8];
            v101 = v25;
            v26 = v24[11];
            *v102 = v24[10];
            *&v102[16] = v26;
            v27 = v24[5];
            v96 = v24[4];
            v97 = v27;
            v28 = v24[7];
            v98 = v24[6];
            v99 = v28;
            v29 = v24[1];
            v92 = *v24;
            v93 = v29;
            v30 = v24[3];
            v94 = v24[2];
            v95 = v30;
            if ((*&v102[16] - 1) <= 1)
            {
              v31 = *(v81 + 8 * v19);
              if (v31 < 329771.704)
              {
                v31 = v31 + API_Get_Default_PR_ms_Amb(*v21) * 299792.458;
              }

              if (Comp_CurrState(0x258u, *(v79 + 13), &v92, v84, *(v79 + 4), v31))
              {
                v32 = *(v21 + 1);
                if (v32 > 0xF || ((1 << v32) & 0xDD77) == 0)
                {
                  *(&v85 + 1) = *(&v85 + 1) - (*&v88 - *&v89);
                }

                *(v105 + v83) = v23;
                *&v102[4 * v83 + 32] = DWORD2(v89);
                v33 = &v104[12 * v83 + 8];
                v34 = &v85;
                for (i = 4; i != -2; i -= 2)
                {
                  v36 = *(v34 - 3);
                  if (v36 <= 0.0)
                  {
                    v37 = -0.5;
                  }

                  else
                  {
                    v37 = 0.5;
                  }

                  v38 = v36 + v37;
                  v39 = v38;
                  if (v38 < -2147483650.0)
                  {
                    v39 = 0x80000000;
                  }

                  if (v38 > 2147483650.0)
                  {
                    v39 = 0x7FFFFFFF;
                  }

                  *v33 = v39;
                  v40 = *v34 * 5.25503547;
                  if (v40 <= 0.0)
                  {
                    v41 = -0.5;
                  }

                  else
                  {
                    v41 = 0.5;
                  }

                  v42 = v40 + v41;
                  if (v42 <= 2147483650.0)
                  {
                    if (v42 >= -2147483650.0)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      LOWORD(v43) = 0;
                    }
                  }

                  else
                  {
                    LOWORD(v43) = -1;
                  }

                  *(&v103[8] + 6 * v83 + i) = v43;
                  --v34;
                  --v33;
                }

                *(v103 + v83) = *v21;
                v44 = *(v81 + 8 * v19);
                if (v23 <= 1)
                {
                  v44 = v44 + (API_Get_Default_PR_ms_Amb(*v21) - (v44 * 0.00000333564095)) * 299792.458;
                }

                v45 = *&v86;
                v46 = v44 + *(&v85 + 1) * 299792458.0;
                if (v46 <= 0.0)
                {
                  v47 = -0.5;
                }

                else
                {
                  v47 = 0.5;
                }

                v48 = v46 + v47;
                v49 = v48;
                if (v48 < -2147483650.0)
                {
                  v49 = 0x80000000;
                }

                if (v48 > 2147483650.0)
                {
                  v49 = 0x7FFFFFFF;
                }

                *(&v105[24] + v83) = v49;
                v50 = (v45 * 299792458.0 - *(v78 + 8 * v19)) * 5.25503547;
                if (v50 <= 0.0)
                {
                  v51 = -0.5;
                }

                else
                {
                  v51 = 0.5;
                }

                v52 = v50 + v51;
                if (v52 <= 2147483650.0)
                {
                  if (v52 >= -2147483650.0)
                  {
                    v53 = v52;
                  }

                  else
                  {
                    LOWORD(v53) = 0;
                  }
                }

                else
                {
                  LOWORD(v53) = -1;
                }

                ++v80;
                *(&v105[8] + v83++) = v53;
              }
            }
          }
        }
      }

      ++v19;
    }

    while (v19 != 128);
    v18 = v20 - 1;
  }

  while (v20);
  v77[1] = v80;
  v54 = v105[0];
  *(v77 + 1) = v105[0];
  if (v80 < 3 || v80 == 3 && (v54 & 0xFE00) == 0)
  {
    *(v76 + 240) = 0;
    goto LABEL_115;
  }

  v55 = NK_Crude_Apx_Pos_Core(v104);
  v56 = v55;
  v57 = vmovn_s64(vcvtq_n_s64_f64(*(v76 + 248), 0xFuLL));
  *(v77 + 1) = v57;
  v77[16] = v55;
  *(v77 + 20) = v57;
  *(v76 + 272) = *(v79 + 4) + 604800 * *(v79 + 13);
  v58 = *v74 == 1 && (*(v74 + 2) - 3) < 2;
  v59 = v80 < 5 || v55;
  if ((v59 & 1) == 0)
  {
    ++*(v76 + 276);
  }

  v60 = !v55 && !v58 && *(v76 + 276) > 9u;
  if ((v55 || v60) && (v73 & 1) == 0)
  {
    v61 = *(v79 + 215);
    *(v76 + 264) = v61;
    *&v92 = 0;
    if (R8_EQ((v76 + 264), &v92) || v61 < -500.0 || v61 > 6000.0)
    {
      *(v76 + 264) = qword_299052660[*(v76 + 20) < 5u];
    }

    *(v79 + 1864) = v56;
    *(v76 + 240) = v56;
    if (Horiz_Diff_Sqd(v79 + 213, (v76 + 248)) <= 5625000000.0)
    {
      LOBYTE(v63) = *v74;
    }

    else
    {
      if (v56)
      {
        v62 = *(v76 + 248);
        *(v79 + 215) = *(v76 + 264);
        *(v79 + 426) = v62;
        Geo2ECEF((v79 + 426), &WGS84_Datum, v79 + 195);
        *(v76 + 244) = 5;
      }

      v63 = *v74;
      if (((v58 | v63 ^ 1) & 1) == 0)
      {
        *(v79 + 840) = 0;
        *(v79 + 1682) = 0;
        *(v79 + 208) = 0;
        *(v79 + 454) = 0u;
        *(v79 + 458) = 0u;
        *(v79 + 462) = 0u;
        *(v79 + 99) = 0u;
        *(v79 + 100) = 0u;
        *(v79 + 101) = 0u;
        *(v79 + 102) = 0u;
        *(v79 + 206) = 0;
        *(v76 + 136) = 1;
        *(v76 + 140) = 35;
        if (*(v74 + 226) < 30000.0 || v63)
        {
          for (j = 0; j != 128; ++j)
          {
            v65 = v17 + 4 * j;
            if (*(v65 + 256) >= 11 && (~*(v17 + 2 * j) & 0x300) != 0)
            {
              *(v65 + 256) = 10;
            }
          }
        }
      }
    }

    if (v58 || (v63 & 1) == 0)
    {
      goto LABEL_106;
    }

    if (*(v74 + 6) >= 900000000.0)
    {
      if (v80 < 5)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v66 = Horiz_Diff_Sqd(v79 + 7530, (v76 + 248));
      if (v66 < 5625000000.0 || v80 < 5)
      {
        v56 = (v66 >= 5625000000.0) & v56;
        goto LABEL_106;
      }
    }

    *v74 = 0;
    *(p_NA + 8) = 0;
    *(v74 + 540) = 22;
    EvLog_v("NK_Crude_Apx_Pos: CAP Discrepancy, Clearing Not Trusted Ext Ref Pos");
LABEL_106:
    if (!v58 && v60)
    {
      *v74 = 0;
      *(p_NA + 8) = 0;
      *(v74 + 540) = 23;
      *(v72 + 17472) = 0x7F7F7F7F7F7F7F7FLL;
      *&v68 = 0x7F7F7F7F7F7F7F7FLL;
      *(&v68 + 1) = 0x7F7F7F7F7F7F7F7FLL;
      *(v72 + 17456) = v68;
      *(v72 + 17440) = v68;
      *(v72 + 17424) = v68;
      *(v72 + 17480) = 0u;
      *(v72 + 17496) = 0u;
      *(v72 + 17512) = 0u;
      *(v72 + 17528) = 0;
      EvLog_v("NK_Crude_Apx_Pos: CAP Repeated Fail, Clearing Not Trusted Ext Ref Pos & GLO Slot Number mapping");
    }
  }

  if (*(v76 + 240) == 1)
  {
    if (v56)
    {
      if ((v73 & 1) == 0)
      {
        *v74 = 1;
        v69 = *v79;
        *(v74 + 5) = *v79;
        *(v74 + 4) = 0x300000002;
        *(v74 + 3) = *(v76 + 248);
        *(v74 + 4) = *(v76 + 256);
        *(v74 + 3) = vdupq_n_s64(0x41C9105220000000uLL);
        *(v74 + 8) = 0;
        *(v74 + 13) = 0x4039000000000000;
        *(v74 + 3) = 2;
        v70 = dbl_299051050[*(v76 + 20) < 5u];
        if (v74[128] != 1 || v70 < *(v74 + 20))
        {
          v74[128] = 1;
          *(v74 + 37) = v69;
          *(v74 + 132) = 0x300000002;
          *(v74 + 19) = *(v76 + 264);
          *(v74 + 20) = v70;
          *(v74 + 23) = 0x4039000000000000;
          *(v74 + 35) = 2;
        }
      }
    }
  }

  *(v77 + 1) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v75;
LABEL_115:
  v71 = *MEMORY[0x29EDCA608];
}

uint64_t GSpeed_Meas_Update(int a1, double *a2, unsigned int a3, double *a4, _BOOL8 a5, _WORD *a6, double a7, double a8, double a9, double a10)
{
  v31[3] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) <= 1 && (*(a4 + 12) = 0, *a4 == 1))
  {
    v26 = 0.0;
    v18 = a7 - a4[3] * a9;
    a4[5] = a7;
    a4[6] = v18;
    v19 = __sincos_stret(a8 * 0.0174532925);
    Comp_GSpeed_Partial(v19.__cosval * a7, v19.__sinval * a7, a2, v31);
    v28 = 0;
    v20 = a1 + 2;
    v21 = 2;
    memset(v27, 0, sizeof(v27));
    do
    {
      *(v27 + v20--) = v31[v21--];
    }

    while (v21 != -1);
    *(v27 + a3) = v18;
    umeas(a5, a3, a10 * a10 * a4[4], v27, v30, v29, &v26, a4[7]);
    v22 = v26;
    if (v26 <= 0.0)
    {
      v23 = 0;
      *a4 = 0;
      *(a4 + 12) = 1;
      ++*a6;
      a4[8] = v22 + a4[8];
    }

    else
    {
      a4[8] = a4[4] * (v26 * (v30[a3] * v30[a3]));
      v23 = *a4;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
  return v23 & 1;
}

void GncS03_07PosEventUpdate(__int128 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncS03_07PosEventUpdate", 48, 1, 0x30uLL);
  if (v2)
  {
    v3 = v2;
    v4 = *a1;
    v5 = a1[1];
    *(v2 + 31) = *(a1 + 31);
    *v2 = v4;
    v2[1] = v5;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT =>GNCP Client,%hhu,ID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS03_07PosEventUpdate", *(v3 + 12), *(v3 + 7));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 132, 8522243, v3);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void GncS03_08SessRespSentInd(int a1, int a2, __int16 a3, char a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS03_08SessRespSentInd", 70, 1, 0x18uLL);
  if (v8)
  {
    v9 = v8;
    v8[12] = a4;
    *(v8 + 7) = a3;
    *(v8 + 4) = a1;
    *(v8 + 5) = a2;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND =>GNCP ID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncS03_08SessRespSentInd", *(v9 + 7), v9[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 132, 8522499, v9);
  }

  v11 = *MEMORY[0x29EDCA608];
}

double GM_Apply_LT_Slew(double *a1, __int16 *a2, double *a3, _WORD *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = *a1 * 1000.0;
  v7 = -0.5;
  if (v6 > 0.0)
  {
    v7 = 0.5;
  }

  v8 = v6 + v7;
  if (v8 <= 2147483650.0)
  {
    if (v8 >= -2147483650.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x80000000;
    }
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  Inc_Local_Time(-v9, 604800, a3, a2);
  result = *a1 + v9 * -0.001;
  *a1 = result;
  a4[1] = v9;
  *a4 = 256;
  a4[2] = v9;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Transform_State(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  ECEF2Geo(a1 + 48, &WGS84_Datum, a1 + 192);
  v2 = STANAG_WGS84_Mean_Sea_Level((a1 + 192));
  v3 = __sincos_stret(*(a1 + 192));
  *(a1 + 240) = v3.__cosval;
  v4 = (a1 + 240);
  *(a1 + 216) = v2;
  v5 = __sincos_stret(*(a1 + 200));
  *(a1 + 224) = -(v3.__sinval * v5.__cosval);
  *(a1 + 232) = -(v3.__sinval * v5.__sinval);
  *(a1 + 248) = -v5.__sinval;
  *(a1 + 256) = v5.__cosval;
  *(a1 + 264) = 0;
  *(a1 + 272) = -(v3.__cosval * v5.__cosval);
  *(a1 + 280) = -(v3.__cosval * v5.__sinval);
  *(a1 + 288) = -v3.__sinval;
  *(a1 + 296) = v3.__cosval;
  v6 = (a1 + 304);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = 3;
  do
  {
    v11 = *(v4 - 1) * v8 + *(v4 - 2) * v7;
    v12 = *v4;
    v4 += 3;
    *v6++ = v11 + v12 * v9;
    --v10;
  }

  while (v10);
  v13 = *(a1 + 304) * *(a1 + 304) + *(a1 + 312) * *(a1 + 312);
  *(a1 + 328) = sqrt(v13 + *(a1 + 320) * *(a1 + 320));
  *(a1 + 336) = sqrt(v13);
  v14 = *MEMORY[0x29EDCA608];
}

double GAL_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v2 = vcvtd_n_f64_u32(*(a1 + 16), 0x10uLL);
  *(a2 + 16) = vcvtd_n_f64_s32(*(a1 + 14), 9uLL);
  *(a2 + 24) = v2;
  v3 = *(a1 + 24) * 0.0000958737992;
  v4 = *(a1 + 26) * 0.0000958737992;
  v5 = *(a1 + 20) * 0.0000958737992;
  *(a2 + 48) = *(a1 + 22) * 3.6572952e-10;
  *(a2 + 56) = v3;
  v6 = *(a1 + 18) * 0.000191747598;
  *(a2 + 12) = 600 * *(a1 + 12);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  v7 = vcvtd_n_f64_s32(*(a1 + 28), 0x13uLL);
  v8 = *(a1 + 30);
  *(a2 + 64) = v4;
  *(a2 + 72) = v7;
  result = v8 * 3.63797881e-12;
  *(a2 + 80) = v8 * 3.63797881e-12;
  *(a2 + 89) = *(a1 + 33);
  *(a2 + 90) = *(a1 + 34);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_ExtA_Set_Device_Motion_State(unsigned int *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Device_Motion_State"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v5 = p_NA;
        v2 = 1;
        *(p_NA + 378) = 1;
        v6 = a1[2];
        *(v5 + 26744) = *a1;
        *(v5 + 26752) = v6;
        Debug_Log_ExtA_DMS(a1);
        goto LABEL_7;
      }

      v8 = a1[2];
      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      v7 = a1[1];
      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_State = %d > GN_EXTA_DMS_MOVING, Out of range!");
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_User_Activity_Context(unsigned int *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Activity_Context"))
  {
    if (a1[1] < 12)
    {
      if (a1[2] < 4)
      {
        v5 = p_NA;
        v2 = 1;
        *(p_NA + 379) = 1;
        v5 += 26756;
        v6 = a1[2];
        *v5 = *a1;
        *(v5 + 8) = v6;
        Debug_Log_ExtA_UAC(a1);
        goto LABEL_7;
      }

      v8 = a1[2];
      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      v7 = a1[1];
      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Context = %d > GN_EXTA_UAC_SKY_DIVING, Out of range!");
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_Fixed_In_Vehicle(unsigned int *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Fixed_In_Vehicle"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v5 = p_NA;
        v2 = 1;
        *(p_NA + 380) = 1;
        v6 = a1[2];
        *(v5 + 26768) = *a1;
        *(v5 + 26776) = v6;
        Debug_Log_ExtA_FIV(a1);
        goto LABEL_7;
      }

      v8 = a1[2];
      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      v7 = a1[1];
      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Ind = %d > GN_EXTA_FIV_KNOWN_FIXED, Out of range!");
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_Sig_Env_Sev(signed int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Sig_Env_Sev"))
  {
    if (a1 < 8)
    {
      v3 = p_NA;
      v2 = 1;
      *(p_NA + 381) = 1;
      *(v3 + 26780) = a1;
      Debug_Log_ExtA_SES(a1);
      goto LABEL_6;
    }

    EvCrt_v("GN_ExtA_Set_Sig_Env_Sev:    FAILED:  SES_Ind = %d  > GN_EXTA_SES_D_URBAN_CAN, Out of range !", a1);
  }

  v2 = 0;
LABEL_6:
  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_Altitude(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Altitude"))
  {
    v2 = *(a1 + 8);
    if (v2 < -500.0 || v2 > 9000.0)
    {
      EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Altitude = %g <%d or >%d, Out of range!");
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0.01 || v3 > 650.0)
      {
        v10 = *(a1 + 16);
        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Sigma_Altitude = %g <=0.01m or >650m, Out of range!");
      }

      else
      {
        if (*(a1 + 24) < 4)
        {
          v7 = p_NA;
          v4 = 1;
          *(p_NA + 382) = 1;
          v8 = *(a1 + 16);
          *(v7 + 26784) = *a1;
          *(v7 + 26800) = v8;
          Debug_Log_ExtA_Alt(a1);
          goto LABEL_11;
        }

        v9 = *(a1 + 24);
        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Trust = %d > GN_EXTA_TRUST_HIGH, Out of range!");
      }
    }
  }

  v4 = 0;
LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_ExtA_Set_Map_Vector_Seg(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Map_Vector_Seg"))
  {
    goto LABEL_21;
  }

  if (fabs(*(a1 + 8)) > 90.0)
  {
    v14 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v2 = *(a1 + 16);
  if (v2 < -180.0 || v2 > 360.0)
  {
    v15 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    goto LABEL_21;
  }

  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v3 < -500.0 || v3 > 6000.0)
    {
      EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Height = %g <%d or >%d, Out of range!");
      goto LABEL_21;
    }
  }

  v4 = *(a1 + 40);
  if (v4 < -180.0 || v4 > 360.0)
  {
    v16 = *(a1 + 40);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Direction = %d <-180 or >+360, Out of range!");
    goto LABEL_21;
  }

  v5 = *(a1 + 48);
  if (v5 <= 0.0 || v5 > 9999.0)
  {
    v17 = *(a1 + 48);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Length = %g < 0 or > 9999, Out of range!");
    goto LABEL_21;
  }

  v6 = *(a1 + 56);
  if (v6 <= 0.0 || v6 > 999.0)
  {
    v18 = *(a1 + 56);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Width = %g < 0 or > 999, Out of range!");
    goto LABEL_21;
  }

  v7 = p_NA;
  v8 = 1;
  *(p_NA + 383) = 1;
  *(v7 + 26816) = *a1;
  v10 = *(a1 + 32);
  v9 = *(a1 + 48);
  v11 = *(a1 + 64);
  *(v7 + 26832) = *(a1 + 16);
  *(v7 + 26880) = v11;
  *(v7 + 26864) = v9;
  *(v7 + 26848) = v10;
  Debug_Log_ExtA_MapV(a1);
LABEL_22:
  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t GN_ExtA_Set_Speed_Constraint(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Speed_Constraint"))
  {
    if (*(a1 + 4) < 86400001)
    {
      v2 = *(a1 + 8);
      if (v2 >= 0.0)
      {
        v3 = *(a1 + 16);
        if (v3 >= 0.0 && v3 <= 100.0)
        {
          if (v3 >= v2)
          {
            v8 = p_NA;
            v5 = 1;
            *(p_NA + 384) = 1;
            v9 = *(a1 + 16);
            *(v8 + 26888) = *a1;
            *(v8 + 26904) = v9;
            Debug_Log_ExtA_SpdC(a1);
            goto LABEL_14;
          }

          v13 = *(a1 + 8);
          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g Speed_Upper = %g , Mis-match!");
        }

        else
        {
          v12 = *(a1 + 16);
          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Upper = %g < 0 or > 100 m/s , Out of range!");
        }
      }

      else
      {
        v11 = *(a1 + 8);
        EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g < 0, Out of range!");
      }
    }

    else
    {
      v10 = *(a1 + 4);
      EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Duration = %d , Out of range!");
    }
  }

  v5 = 0;
LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GN_ExtA_Set_Along_Track_Vel(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Along_Track_Vel"))
  {
    goto LABEL_7;
  }

  if (fabs(*(a1 + 8)) > 100.0)
  {
    v7 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: Velocity = %g > +/-100.0 m/s, Out of range!");
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 0.0)
  {
    v8 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    goto LABEL_7;
  }

  v2 = p_NA;
  v3 = 1;
  *(p_NA + 385) = 1;
  v4 = *(a1 + 16);
  *(v2 + 26912) = *a1;
  *(v2 + 26928) = v4;
  Debug_Log_ExtA_AT_Vel(a1);
LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t GN_ExtA_Set_Vertical_Vel(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Vertical_Vel"))
  {
    goto LABEL_7;
  }

  if (fabs(*(a1 + 8)) > 100.0)
  {
    v7 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: Velocity = %g > +/-100 m/s, Out of range!");
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 0.0)
  {
    v8 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    goto LABEL_7;
  }

  v2 = p_NA;
  v3 = 1;
  *(p_NA + 386) = 1;
  v4 = *(a1 + 16);
  *(v2 + 26936) = *a1;
  *(v2 + 26952) = v4;
  Debug_Log_ExtA_V_Vel(a1);
LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t GN_ExtA_Set_User_Heading(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Heading"))
  {
    goto LABEL_7;
  }

  if (fabs(*(a1 + 8)) > 360.0)
  {
    v7 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: Heading = %g > +/-360.0, Out of range!");
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 0.0)
  {
    v8 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: RMS_Heading = %g <=0, Out of range!");
    goto LABEL_7;
  }

  v2 = p_NA;
  v3 = 1;
  *(p_NA + 387) = 1;
  v4 = *(a1 + 16);
  *(v2 + 26960) = *a1;
  *(v2 + 26976) = v4;
  Debug_Log_ExtA_Heading(a1);
LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t GN_ExtA_Set_Tunnel_End_Point(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Tunnel_End_Point"))
  {
    goto LABEL_13;
  }

  if (fabs(*(a1 + 8)) <= 90.0)
  {
    v2 = *(a1 + 16);
    if (v2 < -180.0 || v2 > 360.0)
    {
      v13 = *(a1 + 16);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    }

    else if (*(a1 + 24) <= 0.0)
    {
      v14 = *(a1 + 24);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Sig = %g <=0.0, Out of range!");
    }

    else if (*(a1 + 32) <= 0.0)
    {
      v15 = *(a1 + 32);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMin_Sig = %g <=0.0, Out of range!");
    }

    else
    {
      if (*(a1 + 40) < 0xB4)
      {
        if (*(a1 + 42) == 1)
        {
          v6 = *(a1 + 48);
          if (v6 < -500.0 || v6 > 6000.0)
          {
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height = %g <%d or >%d, Out of range!");
            goto LABEL_13;
          }

          if (*(a1 + 56) <= 0.0)
          {
            v16 = *(a1 + 56);
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height_Sig = %g <=0.0, Out of range!");
            goto LABEL_13;
          }
        }

        v7 = p_NA;
        v3 = 1;
        *(p_NA + 388) = 1;
        v7 = (v7 + 26984);
        v8 = *(a1 + 48);
        v10 = *a1;
        v9 = *(a1 + 16);
        v7[2] = *(a1 + 32);
        v7[3] = v8;
        *v7 = v10;
        v7[1] = v9;
        Debug_Log_ExtA_Tunnel_End_Point(a1);
        goto LABEL_14;
      }

      v12 = *(a1 + 40);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Brg = %d <0 or >=180, Out of range!");
    }
  }

  else
  {
    v11 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
  }

LABEL_13:
  v3 = 0;
LABEL_14:
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

double Comp_SVrange_Sag_Corr(float64x2_t *a1, double *a2, float64x2_t *a3, float64x2_t *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = vsubq_f64(*a4, *a3);
  v18 = v4;
  v5 = a4[1].f64[0] - a3[1].f64[0];
  v19 = v5;
  v6 = 0.0;
  v7 = 2;
  do
  {
    v6 = v6 + v18.f64[v7] * v18.f64[v7];
    v8 = v7-- + 1;
  }

  while (v8 > 1);
  v9 = 0;
  v10 = sqrt(v6);
  *a1 = vdivq_f64(v4, vdupq_lane_s64(*&v10, 0));
  a1[1].f64[0] = v5 / v10;
  v11 = vmulq_f64(*a4, xmmword_299052690);
  v16 = vextq_s8(v11, v11, 8uLL);
  v17 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + *&v16.i64[v9] * v18.f64[v9];
    ++v9;
  }

  while (v9 != 3);
  v13 = v12 * 0.00000000333564095;
  *a2 = v13;
  v14 = *MEMORY[0x29EDCA608];
  return v10 - v13;
}

uint64_t Comp_CurrState(unsigned int a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 176);
  if (v6)
  {
    *(a4 + 136) = *(a3 + 188);
    *(a4 + 132) = *(a3 + 184);
    *(a4 + 120) = v6;
    *(a4 + 128) = *(a3 + 166);
    *(a4 + 137) = *(a3 + 189);
    v7 = a5 - (*(a3 + 160) + 604800 * (*(a3 + 164) - a2));
    if (fabs(a6) > 0.1)
    {
      v7 = v7 + a6 / -299792458.0 - *(a3 + 96);
    }

    *a4 = v7;
    v8 = fabs(v7);
    if (v8 >= a1)
    {
      result = 0;
    }

    else
    {
      v9 = v7 * v7;
      v10 = v7 * v7 * 0.5;
      v11 = (a3 + 48);
      v12 = (a4 + 32);
      v13 = 3;
      do
      {
        *(v12 - 3) = *(v11 - 6) + *(v11 - 3) * v7 + *v11 * v10 + v11[3] * (v7 * v10 * 0.333333333);
        *v12++ = *(v11 - 3) + *v11 * v7 + v11[3] * v10;
        ++v11;
        --v13;
      }

      while (v13);
      v15 = *(a3 + 96);
      v14 = *(a3 + 104);
      *(a4 + 64) = v14;
      v16 = v15 + v7 * v14;
      *(a4 + 80) = *(a3 + 120);
      *(a4 + 96) = *(a3 + 136);
      v17 = *(a3 + 152);
      *(a4 + 112) = v17;
      *(a4 + 56) = v16 - v17;
      if (v8 <= 30.0)
      {
        v18 = *(a3 + 112);
      }

      else
      {
        v18 = *(a3 + 112) + v9 * (v9 * 8.0e-10 + 0.00003) * (v9 * (v9 * 8.0e-10 + 0.00003));
      }

      *(a4 + 72) = v18;
      result = 1;
    }
  }

  else
  {
    result = 0;
    *(a4 + 123) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Predict_State(int *a1, int *a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 - *a2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 * 0.001;
  *(a2 + 5) = v7;
  a2[8] = v5;
  *a2 = v4;
  *(a2 + 2) = *(a1 + 4);
  a2[6] = a1[5];
  *(a2 + 15) = *(a1 + 13);
  *(a2 + 28) = *(a1 + 25);
  a2[43] = a1[47];
  *(a2 + 176) = *(a1 + 192);
  *(a2 + 89) = *(a1 + 97);
  *(a2 + 90) = *(a1 + 98);
  *(a2 + 23) = *(a1 + 25);
  v8 = (a2 + 12);
  v9 = 3;
  do
  {
    *v8 = *v8 + v8[3] * v7;
    ++v8;
    --v9;
  }

  while (v9);
  v13[0] = 0.0;
  if (!R8_EQ(a2 + 15, v13))
  {
    *(a2 + 15) = *(a2 + 15) + *(a2 + 19) * v7;
  }

  v13[0] = 0.0;
  if (!R8_EQ(a2 + 16, v13))
  {
    *(a2 + 16) = *(a2 + 16) + *(a2 + 19) * v7;
  }

  v13[0] = 0.0;
  result = R8_EQ(a2 + 17, v13);
  if (!result)
  {
    *(a2 + 17) = *(a2 + 17) + *(a2 + 19) * v7;
  }

  v11 = a1[13];
  if (v11)
  {
    v13[0] = 0.0;
    if (!R8_EQ(a2 + 15, v13))
    {
      *(a2 + 15) = *(a2 + 15) + v11 * -0.001;
    }

    v13[0] = 0.0;
    if (!R8_EQ(a2 + 16, v13))
    {
      *(a2 + 16) = *(a2 + 16) + v11 * -0.001;
    }

    v13[0] = 0.0;
    result = R8_EQ(a2 + 17, v13);
    if (!result)
    {
      *(a2 + 17) = *(a2 + 17) + v11 * -0.001;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Set_Constell_Clock_Bias(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v14 = 0;
  v55 = *MEMORY[0x29EDCA608];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  *v54 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = (a2 + 12072);
  v16 = a2;
  v45 = 0.0;
  v46 = 0.0;
  do
  {
    if (*(v16 + 7080) == 1 && *(v16 + 57) == 1)
    {
      v17 = a1[v14];
      v18 = 1.0 / v15[672];
      *(&v51 + v17) = *(&v51 + v17) + *v15 * v18;
      *(&v47 + v17) = v18 + *(&v47 + v17);
    }

    v14 += 4;
    ++v15;
    ++v16;
  }

  while (v14 != 512);
  v19 = *(&v51 + 1) + *(&v52 + 1) + *(&v53 + 1) + v54[0];
  v20 = *(&v47 + 1) + *(&v48 + 1) + *(&v49 + 1) + *&v50;
  if (v20 > 0.0)
  {
    v19 = fabs(v19) / v20;
  }

  v21 = *&v48;
  if (*&v48 > 0.0)
  {
    *&v52 = fabs(*&v52) / *&v48;
  }

  v22 = *&v49;
  if (*&v49 > 0.0)
  {
    *&v53 = fabs(*&v53) / *&v49;
  }

  v23 = *(a2 + 1680);
  if (v23 == 1 && v19 > 0.0)
  {
    LOBYTE(v24) = *(a2 + 1681);
    v25 = *(a2 + 1632) * 299792458.0;
    v26 = 1;
    v27 = 0.0;
    if (v24)
    {
      v28 = 0;
      v29 = 0.0;
      LOBYTE(v30) = *(a2 + 1680);
      goto LABEL_30;
    }

    v32 = 0;
    LOBYTE(v31) = 0;
    v28 = 0;
    LOBYTE(v30) = *(a2 + 1680);
  }

  else
  {
    v24 = *(a2 + 1681);
    if (v24 == 1 && *&v52 > 0.0)
    {
      LOBYTE(v31) = 0;
      v25 = *(a2 + 1640) * 299792458.0;
      v32 = 1;
      v26 = 2;
      v28 = 1;
      LOBYTE(v30) = *(a2 + 1681);
    }

    else
    {
      v30 = *(a2 + 1682);
      if (v30 != 1 || *&v53 <= 0.0)
      {
        goto LABEL_50;
      }

      v25 = *(a2 + 1648) * 299792458.0;
      v26 = 4;
      v28 = 2;
      v27 = 0.0;
      v31 = 1;
      if (v24)
      {
        v29 = 0.0;
LABEL_32:
        v33 = 0.0;
        if (*(a3 + 47436) >= 1)
        {
          v34 = *(a3 + 47452);
          if (v34)
          {
            v33 = (v34 * 2.91038305e-11 + *(a3 + 47460) * 2.91038305e-11) * 299792458.0;
            if (*(a2 + 20) >= 1 && *(a2 + 25) == 1)
            {
              LODWORD(a10) = *(a3 + 47448);
              v35 = *(a2 + 32) - *&a10 + (604800 * (*(a2 + 26) - *(a3 + 47444)));
              v36 = v35;
              if (v35 < 0)
              {
                v36 = -v36;
              }

              if (v36 >> 5 <= 0xE0)
              {
                v33 = v33 + *(a3 + 47456) * 4.4408921e-16 * v35 * 299792458.0;
                if (v31)
                {
                  v29 = v33;
                }
              }
            }
          }
        }

        goto LABEL_41;
      }

      v32 = 0;
    }
  }

  v29 = 0.0;
  v27 = 0.0;
  if (*(a3 + 17192) == 1)
  {
    v27 = vcvtd_n_f64_s32(*(a3 + 17132), 0x1EuLL) * 299792458.0;
    if (v32)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0.0;
    }
  }

  if (v31)
  {
    v26 = 4;
    v31 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v33 = 0.0;
  if ((*(a2 + 1682) & 1) == 0)
  {
    v31 = 0;
    goto LABEL_32;
  }

LABEL_41:
  if (v20 > 0.0 && (v23 & 1) == 0)
  {
    LOWORD(v44) = 1;
    v45 = *(a2 + 1632) * 299792458.0;
    v46 = 0.0;
    BYTE2(v44) = v23;
    v39 = v26;
    v40 = v28;
    v41 = v30;
    v42 = v25;
    v43 = v29;
    NK_Adjust_Constell(&v39, &v44, a1, a2, a4, a5);
    *(a2 + 1632) = v45 * 0.00000000333564095;
    *(a2 + 1680) = BYTE2(v44);
    LOBYTE(v24) = *(a2 + 1681);
  }

  if (v21 > 0.0 && (v24 & 1) == 0)
  {
    LOWORD(v44) = 258;
    v45 = *(a2 + 1640) * 299792458.0;
    v46 = v27;
    BYTE2(v44) = v24;
    v39 = v26;
    v40 = v28;
    v41 = v30;
    v42 = v25;
    v43 = v29;
    NK_Adjust_Constell(&v39, &v44, a1, a2, a4, a5);
    *(a2 + 1640) = v45 * 0.00000000333564095;
    *(a2 + 1681) = BYTE2(v44);
  }

  if (v22 > 0.0)
  {
    v37 = *(a2 + 1682);
    if ((v37 & 1) == 0)
    {
      LOWORD(v44) = 516;
      v45 = *(a2 + 1648) * 299792458.0;
      v46 = v33;
      BYTE2(v44) = v37;
      v39 = v26;
      v40 = v28;
      v41 = v30;
      v42 = v25;
      v43 = v29;
      NK_Adjust_Constell(&v39, &v44, a1, a2, a4, a5);
      *(a2 + 1648) = v45 * 0.00000000333564095;
      *(a2 + 1682) = BYTE2(v44);
    }
  }

LABEL_50:
  v38 = *MEMORY[0x29EDCA608];
}

void NK_Adjust_Constell(uint64_t a1, double *a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6)
{
  v46[128] = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8) - *(a1 + 16) + a2[2];
  v10 = v9 - a2[1];
  bzero(v46, 0x400uLL);
  v11 = 0;
  v12 = 0;
  v44 = a2;
  v13 = *a2;
  v14 = v13 == 2;
  v15 = v13 == 1;
  v16 = a4 + 7080;
  v17 = a4 + 51608;
  v18 = a4 + 12072;
  v19 = a4 + 13096;
  v20 = a4 + 14120;
  v21 = a3;
  do
  {
    v23 = *v21;
    v21 += 4;
    v22 = v23;
    if (v23 > 6)
    {
      goto LABEL_13;
    }

    v24 = v13 == 1;
    if (((1 << v22) & 0x6A) == 0)
    {
      v24 = v13 == 2;
      if (v22 != 2)
      {
        if (v22 != 4)
        {
          goto LABEL_13;
        }

        v24 = v13 == 4;
      }
    }

    if (*(v16 + v11) == 1 && v24)
    {
      *(v17 + 8 * v11) = v10 + *(v17 + 8 * v11);
      v26 = v10 + *(v18 + 8 * v11);
      *(v18 + 8 * v11) = v26;
      *(v19 + 8 * v11) = v26;
      *(v20 + 8 * v11) = v26;
      if (*(a4 + v11 + 57) == 1)
      {
        v46[v12++] = v26;
      }
    }

LABEL_13:
    ++v11;
  }

  while (v11 != 128);
  if (!v12)
  {
    v29 = v44;
    goto LABEL_36;
  }

  v41 = v13 == 4;
  VecSortAscR8(v46, 0, v12 - 1);
  v27 = v12 >> 1;
  if (v12)
  {
    v28 = v46[v27];
  }

  else
  {
    v28 = (v46[v27 - 1] + v46[v27]) * 0.5;
  }

  v29 = v44;
  v44[1] = v9;
  if (fabs(v28) < 586.104512)
  {
    v30 = 0;
    v31 = a4 + 17448;
    while (1)
    {
      v33 = *a3;
      a3 += 4;
      v32 = v33;
      if (v33 <= 6)
      {
        v34 = v15;
        if (((1 << v32) & 0x6A) != 0)
        {
          goto LABEL_23;
        }

        v34 = v14;
        if (v32 == 2)
        {
          goto LABEL_23;
        }

        if (v32 == 4)
        {
          break;
        }
      }

LABEL_34:
      if (++v30 == 128)
      {
        v9 = v44[1] - v28;
LABEL_36:
        v29[1] = v9;
        goto LABEL_37;
      }
    }

    v34 = v41;
LABEL_23:
    if (*(v16 + v30) == 1 && v34)
    {
      *(v17 + 8 * v30) = *(v17 + 8 * v30) - v28;
      v36 = *(v18 + 8 * v30) - v28;
      *(v18 + 8 * v30) = v36;
      *(v19 + 8 * v30) = v36;
      *(v20 + 8 * v30) = v36;
      if ((a5 & 1) == 0)
      {
        v37 = v36 * 0.5 * (v36 * 0.5);
        if (*(v31 + 8 * v30) > v37)
        {
          v37 = *(v31 + 8 * v30);
        }

        *(v31 + 8 * v30) = v37;
      }
    }

    goto LABEL_34;
  }

LABEL_37:
  v38 = *(a1 + 1);
  v39 = *(v29 + 1);
  *(a6 + 8 * ((v39 + 2 + (v39 + 2) * v39) >> 1) - 8) = fmax(*(a6 + 8 * ((v38 + 2 + (v38 + 2) * v38) >> 1) - 8), 62500.0);
  *(a6 + 8 * v39 + 48) = *(a6 + 8 * v38 + 48);
  v40 = *MEMORY[0x29EDCA608];
}

uint64_t ByteS_Ext_8(unsigned __int8 **a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = *(*a1)++;
  v3 = v1[1];
  *a1 = v1 + 2;
  v4 = v1[2];
  *a1 = v1 + 3;
  v5 = v1[3];
  *a1 = v1 + 4;
  v6 = v1[4];
  *a1 = v1 + 5;
  v7 = v1[5];
  *a1 = v1 + 6;
  v8 = v1[6];
  *a1 = v1 + 7;
  v9 = v1[7];
  *a1 = v1 + 8;
  v10 = *MEMORY[0x29EDCA608];
  return v2 | (v3 << 8) | (v4 << 16) | (v5 << 24) | (v6 << 32) | (v7 << 40) | (v8 << 48) | (v9 << 56);
}

uint64_t NK_Check_State(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 27120);
  if (v3 >= 0x258)
  {
    v4 = 0;
    while (*(a3 + 7080 + v4) != 1 || *(result + v4) < 0x21u)
    {
      if (++v4 == 128)
      {
        goto LABEL_11;
      }
    }

    *(a3 + 1864) = 0;
    *(a2 + 241) = 1;
    *(a3 + 1868) = 0;
    *(a2 + 243) = 0;
    if (*(a3 + 20) >= 10)
    {
      *(a3 + 20) = 9;
    }

    if (v3 >= 0x384)
    {
      *(a2 + 27136) = 0;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Trop_Elev_MapF(uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0.0;
  result = R8_EQ((a1 + 16), v5);
  if (!result)
  {
    v3 = 1.0 / (*(a1 + 8) + 0.00143 / (*(a1 + 8) / *(a1 + 16) + 0.0445));
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, double a4, int a5)
{
  v13 = *MEMORY[0x29EDCA608];
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a4, a5);
  if (*(this + 66) == 1 && a3 >= -500.0 && a3 <= 18000.0)
  {
    v8 = sin(a2 * 0.0174532925);
    v9 = *MEMORY[0x29EDCA608];
    v10 = fmax(v8, 0.001);
    v11 = (*(this + 5) / (*(this + 6) / (*(this + 7) + 1.0) + 1.0) + 1.0) / (v10 + *(this + 5) / (v10 + *(this + 6) / (v10 + *(this + 7)))) + (1.0 / v10 + -1.00002516 / (v10 + 0.0000253 / (v10 + 0.00549 / (v10 + 0.00114)))) * (a3 * 0.001);
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Trop_Niell_MappingFunc::Set_MappingFunc_Params(Trop_Niell_MappingFunc *this, double a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a3 - 1;
  if ((a3 - 1) > 0x16D)
  {
    v5 = 0;
    *(this + 65) = 0;
  }

  else if (*(this + 2) == a3 && (*(this + 65) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    *(this + 65) = 1;
    *(this + 2) = a3;
  }

  if (fabs(a2) > 90.0)
  {
    v6 = 0;
    *(this + 64) = 0;
LABEL_18:
    *(this + 66) = v6;
    goto LABEL_19;
  }

  if (vabdd_f64(*this, a2) > 0.004 || (*(this + 64) & 1) == 0)
  {
    *(this + 64) = 1;
    *this = a2;
    if (v4 >= 0x16E)
    {
      goto LABEL_19;
    }

LABEL_17:
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Dry_Avg, NMF_a_Dry_Amp);
    *(this + 5) = v9;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Dry_Avg, NMF_b_Dry_Amp);
    *(this + 6) = v10;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Dry_Avg, NMF_c_Dry_Amp);
    *(this + 7) = v11;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Wet_Avg, 0);
    *(this + 2) = v12;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Wet_Avg, 0);
    *(this + 3) = v13;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Wet_Avg, 0);
    *(this + 4) = v14;
    v6 = 1;
    goto LABEL_18;
  }

  v7 = v4 > 0x16D;
  v8 = v5 ^ 1;
  if (v7)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
}

void Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a3, a4);
  if (*(this + 66) == 1)
  {
    v6 = fmax(sin(a2 * 0.0174532925), 0.001);
    v7 = (*(this + 2) / (*(this + 3) / (*(this + 4) + 1.0) + 1.0) + 1.0) / (v6 + *(this + 2) / (v6 + *(this + 3) / (v6 + *(this + 4))));
  }

  v8 = *MEMORY[0x29EDCA608];
}

void Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(Trop_Niell_MappingFunc *this, const double *a2, const double *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = *(this + 2);
    if (*this < 0.0)
    {
      v5 = v5 + 182.625;
    }

    v6 = fabs(*this);
    cos((v5 + -28.0) * 0.0172024238);
    if (v6 <= 15.0)
    {
      v9 = *a2;
      if (a3)
      {
        v10 = *a3;
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (v6 <= 30.0)
    {
      v12 = 1;
    }

    else if (v6 <= 45.0)
    {
      v12 = 2;
    }

    else if (v6 <= 60.0)
    {
      v12 = 3;
    }

    else
    {
      if (v6 > 75.0)
      {
        v7 = *(a2 + 4);
        if (a3)
        {
          v8 = *(a3 + 4);
LABEL_14:
          v11 = *MEMORY[0x29EDCA608];
          return;
        }

        goto LABEL_24;
      }

      v12 = 4;
    }

    v13 = v12 - 1;
    v14 = Phi0_Bands[v12];
    v15 = Phi0_Bands[v12 - 1];
    if (vabdd_f64(v14, v15) >= 1.0)
    {
      v16 = v14 - v15;
    }

    else
    {
      v16 = 1.0;
    }

    v17 = (v6 - v15) / v16;
    v18 = a2[v13] + v17 * (a2[v12] - a2[v13]);
    if (a3)
    {
      v19 = a3[v13];
      v20 = *MEMORY[0x29EDCA608];
      v21 = v19 + v17 * (a3[v12] - v19);
      return;
    }
  }

LABEL_24:
  v22 = *MEMORY[0x29EDCA608];
}

double NVIC_EphInt2Real(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 14);
  v2.f64[0] = *(a1 + 20);
  v3 = 16 * *(a1 + 18);
  v2.f64[1] = *(a1 + 24);
  *(a2 + 20) = 16 * *(a1 + 16);
  *(a2 + 24) = v3;
  v4.f64[0] = *(a1 + 26);
  v4.f64[1] = *(a1 + 28);
  v5 = vmulq_f64(v4, xmmword_2990528B0);
  *(a2 + 32) = vmulq_f64(v2, xmmword_2990528A0);
  *(a2 + 48) = v5;
  v2.f64[0] = *(a1 + 30);
  LODWORD(v5.f64[0]) = *(a1 + 32);
  v2.f64[1] = *&v5.f64[0];
  v5.f64[0] = *(a1 + 36);
  v6.i64[0] = LODWORD(v5.f64[0]);
  v6.i64[1] = HIDWORD(v5.f64[0]);
  *&v4.f64[0] = *&vcvtq_f64_u64(v6);
  v6.i64[0] = SLODWORD(v5.f64[0]);
  v6.i64[1] = SHIDWORD(v5.f64[0]);
  v4.f64[1] = vcvtq_f64_s64(v6).f64[1];
  *(a2 + 64) = vmulq_f64(v2, xmmword_2990528C0);
  *(a2 + 80) = vmulq_f64(v4, xmmword_2990528D0);
  v2.f64[0] = *(a1 + 44);
  v6.i64[0] = SLODWORD(v2.f64[0]);
  v6.i64[1] = SHIDWORD(v2.f64[0]);
  v7 = vmulq_f64(vcvtq_f64_s64(v6), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v5.f64[0] = *(a1 + 52);
  v6.i64[0] = SLODWORD(v5.f64[0]);
  v6.i64[1] = SHIDWORD(v5.f64[0]);
  *(a2 + 96) = v7;
  *(a2 + 112) = vmulq_f64(vcvtq_f64_s64(v6), xmmword_2990528E0);
  v7.f64[0] = *(a1 + 60);
  v7.f64[1] = *(a1 + 64);
  v8 = vmovl_s16(*(a1 + 66));
  v6.i64[0] = v8.i32[2];
  v6.i64[1] = v8.i32[3];
  v9 = vcvtq_f64_s64(v6);
  v6.i64[0] = v8.i32[0];
  v6.i64[1] = v8.i32[1];
  *(a2 + 14) = *(a1 + 27);
  *(a2 + 144) = vmulq_f64(vcvtq_f64_s64(v6), vdupq_n_s64(0x3E20000000000000uLL));
  *(a2 + 160) = vmulq_f64(v9, xmmword_299052900);
  *(a2 + 128) = vmulq_f64(v7, xmmword_2990528F0);
  result = vcvtd_n_f64_s32(*(a1 + 74), 5uLL);
  *(a2 + 176) = result;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Apply_Corrns(uint64_t a1, double *a2, uint64_t a3, double a4, float64_t a5, double a6)
{
  v21 = *MEMORY[0x29EDCA608];
  v11 = a2[7];
  v12 = __sincos_stret(a2[8]);
  v13 = *(a1 + 8) + v11 * v12.__sinval;
  v14 = *(a1 + 16) + v11 * v12.__cosval;
  v15 = a2[4] + 1.09955743;
  v16 = sqrt(v14 * v14 + v13 * v13);
  *a3 = *a1 + a4;
  *(a3 + 8) = v16;
  v17.f64[0] = a5;
  v17.f64[1] = v15;
  *(a3 + 16) = vaddq_f64(v17, *(a1 + 24));
  if (fabs(v16) <= 2.22044605e-16)
  {
    *(a3 + 40) = 0;
    v18 = 0.0;
  }

  else if (fabs(v14) <= 2.22044605e-16)
  {
    if (v13 <= 0.0)
    {
      *(a3 + 40) = 0xBFF921FB54442D28;
      v18 = -1.57079633;
    }

    else
    {
      *(a3 + 40) = 0x3FF921FB54442D28;
      v18 = 1.57079633;
    }
  }

  else
  {
    v18 = atan2(v13, v14);
    *(a3 + 40) = v18;
  }

  *(a3 + 32) = *(a1 + 40) + a6 - v18;
  v19 = *MEMORY[0x29EDCA608];
}

void DD_Assist_GAL_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v103 = *MEMORY[0x29EDCA608];
  v83 = a4 + 25340;
  v8 = a4 + 20876;
  v97 = a4 + 17708;
  v93 = a2 - 241;
  v96 = a1 + 11416;
  v95 = a4 + 24044;
  v90 = a1 + 6520;
  v89 = a1 + 6556;
  v88 = a1 + 10552;
  v92 = a1 + 6628;
  v91 = (a1 + 6916);
  v87 = a1 + 6988;
  v9 = (a1 + 7240);
  v86 = a1 + 7240;
  do
  {
    if (*(*(a4 + 17616) + v7) == 1 && (v93 - *(v97 + 88 * v7)) > 0xFFFFF806)
    {
      goto LABEL_46;
    }

    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    memset(v99, 0, sizeof(v99));
    v98 = 0u;
    if (!Core_Get_GAL_Eph((v7 + 1), a2, &v98))
    {
      goto LABEL_8;
    }

    v10 = *(a4 + 17616);
    if (*(v10 + v7) == 1)
    {
      v11 = (v97 + 88 * v7);
      if (v98 <= *v11 && a2 - *v11 > -1801)
      {
LABEL_8:
        *(*(a4 + 17568) + 20 * v7 + 8) = 0;
        goto LABEL_46;
      }

      if (v98 - *v11 <= 10799 && Is_GAL_IntEph_Real(v97 + 88 * v7) && !Is_GAL_IntEph_Real(&v98))
      {
        *v11 = a2;
        goto LABEL_46;
      }
    }

    v12 = *(v96 + v7);
    if (v12 == 1 && (v102 & 0x1000000000000) != 0)
    {
      v13 = 0;
      v14 = (v102 & 0x100000000) == 0;
    }

    else if (v12 == 3 || !*(v96 + v7))
    {
      v13 = ((BYTE4(v102) | BYTE6(v102)) & 1) == 0;
      v14 = v13;
    }

    else
    {
      v13 = BYTE6(v102) ^ 1;
      v14 = BYTE4(v102) ^ 1;
    }

    v15 = *(a4 + 17552);
    if ((*(v15 + v7) & 1) == 0 && ((v13 | v14) & 1) != 0 && (v16 = *(a4 + 17632), *(v16 + v7) == 1))
    {
      v17 = (v95 + 36 * v7);
      v18 = *v17;
      if (*v17 + 3600 > a2)
      {
        v19 = *(v17 + 34);
        v20 = *(v17 + 32);
        if (v12 == 1 && (v19 & 1) != 0)
        {
LABEL_33:
          v28 = 0;
          *(v15 + v7) = 0;
          v22 = v97 + 88 * v7;
          v26 = *(v22 + 4);
          v27 = *(a4 + 17568);
          v25 = 2;
          goto LABEL_34;
        }

        if (v12 == 3 || !*(v96 + v7))
        {
          v21 = ((v19 | v20) & 1) == 0;
          LOBYTE(v13) = v21 & v13;
          LOBYTE(v14) = v21 & v14;
        }
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v18 + 100 < a2)
      {
        *(*(a4 + 17592) + v7) = 0;
        *(v16 + v7) = 0;
        *(v90 + v7) = -1;
        *(v89 + 2 * v7) = 2048;
        *(v88 + 36 * gal_E1B_AlmSvId2SubframeId[v7] - 4) = 0;
        v15 = *(a4 + 17552);
        v10 = *(a4 + 17616);
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_33;
    }

    v22 = v97 + 88 * v7;
    v23 = v100;
    *(v22 + 32) = v99[1];
    *(v22 + 48) = v23;
    *(v22 + 64) = v101;
    *(v22 + 80) = v102;
    v24 = v99[0];
    *v22 = v98;
    *(v22 + 16) = v24;
    v25 = 1;
    *(*(a4 + 17584) + v7) = 1;
    *(v10 + v7) = 1;
    *(v15 + v7) = 1;
    v26 = *(v22 + 4);
    v27 = *(a4 + 17568);
    v28 = 1;
LABEL_34:
    if (v26 == 5)
    {
      *(v27 + 20 * v7 + 8) = v25;
      v29 = v14 & 1;
      *(*(a4 + 17560) + v7) = v29;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      *(*(a4 + 17576) + 20 * v7 + 8) = v30;
    }

    else
    {
      *(v27 + 20 * v7 + 12) = v25;
    }

    if (a2 >= 1 && v28)
    {
      *(*(a4 + 17640) + v7) = 1;
      Core_Save_GAL_Eph((v7 + 1), 0, v22);
      v15 = *(a4 + 17552);
    }

    v31 = 0;
    LODWORD(v32) = 0;
    v33 = p_NV;
    v34 = (p_NV + 7956);
    v36 = *v15;
    v35 = v15[1];
    *(p_NV + 7988) = *(v15 + 8);
    *v34 = v36;
    v34[1] = v35;
    v37 = 55665;
    do
    {
      v38 = *(v33 + 7952 + v31) ^ BYTE1(v37);
      v37 = 52845 * (v37 + v38) + 22719;
      v32 = (v32 + v38);
      ++v31;
    }

    while (v31 != 40);
    *(v33 + 7944) = v32;
    *(v92 + 8 * v7) = 0x400040004000400;
    v91[v7] = 1024;
    *(v87 + 2 * v7) = 1024;
    *(v96 + v7) = 0;
    v39 = (v86 + 92 * v7);
    *(v39 + 76) = 0u;
    v39[3] = 0u;
    v39[4] = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
    *v39 = 0u;
LABEL_46:
    ++v7;
  }

  while (v7 != 36);
  v40 = a5;
  if (a2 >= 1)
  {
    v41 = 0;
    v42 = v91;
    do
    {
      if (*(*(a4 + 17552) + v41) == 1 && (*(*(v40 + 1648) + v41) & 1) == 0 && *(a3 + 56 + v41) <= 0xA5u && (*(*(a4 + 17624) + v41) != 1 || a2 - *v8 >= 241))
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        memset(v99, 0, sizeof(v99));
        v98 = 0u;
        GAL_IntEph = EE_Get_GAL_IntEph((v41 + 1), a2, &v98);
        v44 = *(a4 + 17624);
        if (!GAL_IntEph || *(v44 + v41) == 1 && v98 <= *v8)
        {
          *(v44 + v41) = 0;
        }

        else
        {
          v45 = v99[0];
          *v8 = v98;
          *(v8 + 16) = v45;
          *(v8 + 80) = v102;
          v46 = v101;
          *(v8 + 48) = v100;
          *(v8 + 64) = v46;
          *(v8 + 32) = v99[1];
          *(*(a4 + 17584) + v41) = 1;
          *(v44 + v41) = 1;
          Debug_Log_GAL_Eph(2, &v98);
          *(v92 + 8 * v41) = 0x400040004000400;
          *v42 = 1024;
          v42[36] = 1024;
          *(v96 + v41) = 0;
          *(v9 + 76) = 0u;
          v9[3] = 0u;
          v9[4] = 0u;
          v9[1] = 0u;
          v9[2] = 0u;
          *v9 = 0u;
        }

        v40 = a5;
      }

      ++v41;
      v9 = (v9 + 92);
      ++v42;
      v8 += 88;
    }

    while (v41 != 36);
  }

  v47 = 0;
  v48 = a2 / 604800 - 1024;
  v98 = 0u;
  memset(v99, 0, 19);
  v49 = v48 + ((v48 >> 29) & 3);
  v94 = v49 >> 2;
  v85 = (v48 - (v49 & 0xFFFC));
  while (2)
  {
    if (*(*(a4 + 17632) + v47) == 1 && a2 - *(v95 + 36 * v47) < 1801 || !Core_Get_GAL_Alm((v47 + 1), a2, &v98) || *(*(a4 + 17632) + v47) == 1 && v98 <= *(v95 + 36 * v47))
    {
      goto LABEL_81;
    }

    v50 = *(v96 + v47);
    v51 = v50 != 1 || (BYTE2(v99[1]) & 1) == 0;
    if (!v51 || v50 == 2 && (BYTE1(v99[1]) & 1) != 0)
    {
      v52 = *(a4 + 17552);
      v53 = v52 + v47;
      goto LABEL_77;
    }

    if (v50 != 3 && *(v96 + v47))
    {
      v62 = 1;
    }

    else
    {
      v62 = (BYTE1(v99[1]) | BYTE2(v99[1])) ^ 1;
    }

    v52 = *(a4 + 17552);
    v53 = v52 + v47;
    if ((v62 & 1) == 0 || (*v53 & 1) != 0 || (v63 = *(a4 + 17616), *(v63 + v47) != 1))
    {
      if (v62)
      {
        goto LABEL_101;
      }

      goto LABEL_77;
    }

    v64 = (v97 + 88 * v47);
    v65 = *v64;
    if (*v64 + 3600 > a2)
    {
      if (v66 = *(v64 + 86), v50 == 1) && (v66 & 1) != 0 || (v67 = *(v64 + 85), v50 == 2) && (v67 & 1) != 0 || (v50 == 3 || !*(v96 + v47)) && ((v67 | v66))
      {
LABEL_77:
        *v53 = 0;
        goto LABEL_78;
      }
    }

    if (v65 + 100 < a2)
    {
      *(*(a4 + 17584) + v47) = 0;
      *(v63 + v47) = 0;
      *(v92 + 8 * v47) = 0x400040004000400;
      v91[v47] = 1024;
      *(v87 + 2 * v47) = 1024;
      *(v96 + v47) = 0;
      v68 = (v86 + 92 * v47);
      *(v68 + 76) = 0u;
      v68[3] = 0u;
      v68[4] = 0u;
      v68[1] = 0u;
      v68[2] = 0u;
      *v68 = 0u;
    }

LABEL_101:
    if (v85 > 1)
    {
      if (v85 == 2)
      {
        v69 = v94;
        if (!WORD5(v98))
        {
          v69 = v94 + 1;
        }
      }

      else if (v85 == 3)
      {
        v69 = v94;
        if (SWORD5(v98) < 2)
        {
          v69 = v94 + 1;
        }
      }

      else
      {
        EvCrt_Illegal_switch_default("DD_Assist_GAL_Alm", 0x29Cu);
        v69 = v94;
      }
    }

    else if (v85)
    {
      v69 = v94;
    }

    else
    {
      v69 = v94 - (WORD5(v98) == 3);
    }

    WORD5(v98) += 4 * v69;
    v70 = v95 + 36 * v47;
    v71 = v99[0];
    *v70 = v98;
    *(v70 + 16) = v71;
    *(v70 + 32) = v99[1];
    *(*(a4 + 17592) + v47) = 1;
    *(*(a4 + 17632) + v47) = 1;
    v52 = *(a4 + 17552);
    *(v52 + v47) = 1;
    if (a2 >= 1)
    {
      Core_Save_GAL_Alm((v47 + 1), 0, v70);
      v52 = *(a4 + 17552);
    }

LABEL_78:
    v54 = 0;
    LODWORD(v55) = 0;
    v56 = p_NV;
    v57 = (p_NV + 7956);
    v59 = *v52;
    v58 = v52[1];
    *(p_NV + 7988) = *(v52 + 8);
    *v57 = v59;
    v57[1] = v58;
    v60 = 55665;
    do
    {
      v61 = *(v56 + 7952 + v54) ^ BYTE1(v60);
      v60 = 52845 * (v60 + v61) + 22719;
      v55 = (v55 + v61);
      ++v54;
    }

    while (v54 != 40);
    *(v56 + 7944) = v55;
    *(v90 + v47) = -1;
    *(v89 + 2 * v47) = 2048;
    *(v88 + 36 * gal_E1B_AlmSvId2SubframeId[v47] - 4) = 0;
LABEL_81:
    if (++v47 != 36)
    {
      continue;
    }

    break;
  }

  *(&v98 + 6) = 0;
  *&v98 = 0;
  if ((*(v83 + 4) - 4) > 2 || a2 - *v83 >= 1801)
  {
    if (Core_Get_GAL_GGTO(a2, &v98))
    {
      v73 = *v83;
      v72 = *(v83 + 4);
      if ((v72 - 7) < 0xFFFFFFFD || v98 > v73)
      {
        EvLog_v("DD_Assist_GAL_GGTO:  New GGTO:  Source %d > %d  or  GPS_secs %d > %d , A0G %d %d", DWORD1(v98), v72, v98, v73, SWORD4(v98), *(v83 + 8));
        *v83 = v98;
        *(a4 + 25360) = *v83;
        v74 = *(v83 + 10);
        *(a4 + 25368) = *(v83 + 8) * 2.91038305e-11;
        *(a4 + 25376) = v74 * 4.4408921e-16;
        *(v83 + 44) = 3600 * *(v83 + 12);
        *(v83 + 48) = *(v83 + 13);
        if (a2 >= 1)
        {
          v75 = 0;
          LODWORD(v76) = 0;
          v77 = p_NV;
          v78 = p_NV + 8000;
          *(p_NV + 8000) = v98;
          v79 = 55665;
          do
          {
            v80 = *(v78 + v75) ^ BYTE1(v79);
            v79 = 52845 * (v79 + v80) + 22719;
            v76 = (v76 + v80);
            ++v75;
          }

          while (v75 != 16);
          *(v77 + 7992) = v76;
        }
      }
    }
  }

  v81 = *MEMORY[0x29EDCA608];
}

void NK_Set_Accuracy(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v111 = a4;
  v145 = *MEMORY[0x29EDCA608];
  v11 = (a6 + 27116);
  v12 = a7 + 61568;
  if (*(a7 + 62539) == 1)
  {
    if (*(a7 + 61672) > 30000.0)
    {
      *(a7 + 61672) = 0x40DD4C0000000000;
    }

    if (*(a7 + 61680) > 30000.0)
    {
      *(a7 + 61680) = 0x40DD4C0000000000;
    }

    if (*(a7 + 61688) > 30000.0)
    {
      *(a7 + 61688) = 0x40DD4C0000000000;
    }

    if (*(a7 + 61576) > 900000000.0)
    {
      *(a7 + 61576) = 0x41CAD27480000000;
    }

    if (*(a7 + 61584) > 900000000.0)
    {
      *(a7 + 61584) = 0x41CAD27480000000;
    }

    if (*(a7 + 61592) > 900000000.0)
    {
      *(a7 + 61592) = 0x41CAD27480000000;
    }
  }

  v13 = *(a7 + 61624);
  if (v13 >= *(a7 + 61632))
  {
    v13 = *(a7 + 61632);
  }

  if (v13 <= *(a7 + 61640))
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a7 + 61640);
  }

  v15 = a7 + 61992;
  *(a7 + 62032) = v14;
  v16 = v14;
  if ((*(a7 + 24) & 1) == 0)
  {
    if (*(a6 + 27136) || (v17 = 0.0, *(a7 + 20) >= 9))
    {
      v17 = v14;
    }

    v16 = sqrt(v17 + *v12 * 8.98755179e10);
  }

  v18 = 0;
  v19 = *(a7 + 61600);
  v20 = *(a7 + 61648);
  v21 = *(a7 + 61656);
  *(a7 + 62040) = v16;
  *(a7 + 62048) = v20;
  *(a7 + 62088) = v21;
  *v15 = *(a7 + 61672);
  v22 = *(a7 + 61688);
  v23 = *(a7 + 61576);
  v24 = *(a7 + 61584);
  v25 = (a7 + 62008);
  *(a7 + 62008) = sqrt(v23 + v24);
  *(a7 + 62016) = v22;
  v110 = (a7 + 62024);
  *(a7 + 62024) = sqrt(v23 + v24 + *(a7 + 61592));
  v26 = 0.0;
  v27 = *(a7 + 61608);
  v28 = *(a7 + 61712);
  *(a7 + 62056) = sqrt(v19 + 0.0 + v27);
  *(a7 + 62064) = v28;
  do
  {
    v26 = v26 + *(a7 + 61600 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  *(a7 + 62072) = sqrt(v26);
  v29 = *(a7 + 62080);
  v30 = *(a7 + 1824) * *(a7 + 1824);
  v31 = *(a7 + 1816) * *(a7 + 1816);
  if (v30 < 0.000001 && v31 < 0.000001)
  {
    v31 = 0.000001;
    v30 = 0.000001;
  }

  v32 = 57.2957795 / (v31 + v30) * ((v19 * v30 + v27 * v31) * (57.2957795 / (v31 + v30)));
  v33 = 0.5;
  if (!*(a6 + 27249))
  {
    v33 = 1.0;
  }

  v34 = 20.0;
  if (*(a7 + 1840) >= v33)
  {
    v34 = 10.0;
  }

  v35 = sqrt(v32);
  v36 = *(a7 + 1848);
  if (v36 >= 4.0 || v35 >= v34 || *(a7 + 62124) > 7u)
  {
    if (v35 >= 180.0)
    {
      v37 = *(a6 + 27232) < v33;
      v38 = v35;
      if (v37)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    *(a7 + 79844) = 1;
    v35 = v34;
  }

  v39 = v35 - v29;
  if (*(a6 + 27204) != 3 || (v38 = v29, v29 < 180.0) && (v38 = v29, v39 <= 1.0))
  {
    if (v36 >= 4.0)
    {
      v38 = v35;
    }

    else
    {
      v38 = v35;
      if (v39 > 5.0)
      {
        v38 = v29 + fmin(0.93 / fmax(fabs(v39), 2.22044605e-16) + 0.07, 0.25) * v39;
      }
    }
  }

LABEL_45:
  v109 = (a6 + 68160);
  if (v29 < 180.0)
  {
    v40 = fabs(*(a6 + 27288));
    if (v40 > 3.0)
    {
      v41 = v40 * 0.5;
      if (v38 < v41)
      {
        *(a7 + 79845) = 1;
        v38 = v41;
      }
    }
  }

  *(a7 + 62080) = fmin(v38, 180.0);
  v42 = (a7 + 62096);
  v43 = (a7 + 62104);
  Comp_ErrorEllipse(v23, v24, *(a7 + 61720), (a7 + 62096), (a7 + 62104), (a7 + 62112));
  if (*(a7 + 1868) <= 1 && *(a7 + 1864) == 1)
  {
    v44 = *v42;
    if (*v42 < 9999000.0 && v44 > 1000.0)
    {
      v45 = v44 / *v43;
      if (v45 > 50.0)
      {
        *v43 = *v43 * v45 * 0.04;
      }
    }
  }

  if (!a1 || *a7 <= a1)
  {
    EvLog_v("TTick_Restart Test: %u %u", 2, a1);
  }

  if ((*(a6 + 241) & 1) == 0 && !*(a7 + 1872) && (*v11 - 3) >= 0xFFFFFFFE)
  {
    v46 = *v42;
    if (*v42 > 18.0 && *(a7 + 6800) <= 0.03 && (*a7 - a1) <= 4999)
    {
      if (v11[5] || (v47 = 0.0, *(a7 + 20) >= 9))
      {
        v47 = v14 * 1.11265006e-17;
      }

      if ((*(a7 + 24) & 1) == 0)
      {
        v47 = v47 + *v12 * 0.000001;
      }

      v48 = sqrt(v47) * 1000000.0;
      v49 = -0.5;
      if (v48 > 0.0)
      {
        v49 = 0.5;
      }

      v50 = v48 + v49;
      if (v50 <= 2147483650.0 && (v50 < -2147483650.0 || v50 <= 99900))
      {
        v52 = 0;
        v53 = 0;
        v54 = a7 + 7080;
        do
        {
          if (*(v54 + v52) == 1 && (*(v54 + 4 * v52 + 256) - 1) >= 0x1E && *(a2 + v52) > 0x23u)
          {
            ++v53;
          }

          ++v52;
        }

        while (v52 != 128);
        if (v53 >= 6)
        {
          v55 = dbl_299052930[*v11 == 1] * v46;
          if (v55 < 18.0)
          {
            v55 = 18.0;
          }

          *v42 = v55;
          if (v55 < *v43)
          {
            *v43 = v55;
          }

          v56 = *(v12 + 448);
          v57 = v56;
          if (v56 > 50.0)
          {
            v57 = v56 * 0.8;
            *(v12 + 448) = v56 * 0.8;
            if (v56 * 0.8 < 50.0)
            {
              *(v12 + 448) = 0x4049000000000000;
              v57 = 50.0;
            }
          }

          EvLog_v("NK_Set_Accuracy: Reset pos acc H %g %g V %g %g", v46, v55, v56, v57);
        }
      }
    }
  }

  v58 = *(a7 + 6800);
  if (*(v12 + 553) <= 5u && v58 <= *(a6 + 26976))
  {
    v58 = *(a6 + 26976);
  }

  v59 = fmin(v58, 100.0);
  if (v59 > 25.0)
  {
    v60 = 0;
    v61 = (a7 + 7336);
    v62 = (v111 + 736);
    v63 = (a7 + 12072);
    v64 = 128;
    memset(v144, 0, 128);
    v65 = 0.0;
    v66 = a7;
    v67 = v144;
    do
    {
      if (((*(v66 + 7080) & 1) != 0 || *v61) && *(v66 + 57) == 1)
      {
        v68 = *v67;
        *v67 = 1;
        v69 = *v62;
        if (v69 != 255)
        {
          *(v144 + v69) = 1;
        }

        v60 += v68 ^ 1;
        v70 = fabs(*v63);
        if (v70 > v65)
        {
          v65 = v70;
        }
      }

      ++v63;
      ++v62;
      ++v67;
      ++v66;
      ++v61;
      --v64;
    }

    while (v64);
    v71 = sqrt(v59);
    v72 = *v15;
    v73 = *v25;
    v74 = *v110;
    v75 = v65 / v110->f64[0];
    if (v60 <= 7)
    {
      v75 = 9999999.0;
    }

    if (v71 >= v75)
    {
      v71 = v75;
    }

    *(v12 + 480) = v71 * *(v12 + 480);
    *v15 = vmulq_n_f64(v72, v71);
    *v25 = vmulq_n_f64(v73, v71);
    *v110 = vmulq_n_f64(v74, v71);
    *(v12 + 528) = vmulq_n_f64(*(v12 + 528), v71);
  }

  if (*(a5 + 45) != 1 || *(a5 + 1854) == 1)
  {
    v76 = v25->f64[0];
    if (v25->f64[0] < 100.0)
    {
      v77 = *(a7 + 6792);
      if (v77 <= 10.0)
      {
        v78 = 1.0;
      }

      else
      {
        *&v144[0] = 0;
        v78 = 1.0;
        if (!R8_EQ((a7 + 6792), v144))
        {
          v78 = log10(v77);
        }
      }

      v79 = *(v12 + 554);
      if (v79 - 1 <= 0xD)
      {
        v78 = v78 * (((15.0 - v79) / 15.0 + 1.0) * ((15.0 - v79) / 15.0 + 1.0));
      }

      bzero(v144, 0x400uLL);
      v80 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v81 = (a7 + 7336);
      v114 = 0u;
      v115 = 0u;
      v82 = (a7 + 12072);
      v83 = 242;
      v84 = a7;
      *v112 = 0u;
      v113 = 0u;
      do
      {
        if (((*(v84 + 7080) & 1) != 0 || *v81 && *v82 > 0.0) && *(v84 + 57) == 1)
        {
          *(v144 + v80) = v82[944] * *(a6 + 8 * v83);
          v112[v80] = v80;
          ++v80;
        }

        ++v84;
        v83 += 5;
        ++v82;
        ++v81;
      }

      while (v83 != 882);
      if (v80)
      {
        VecSortIndexAscR8(v144, v80, v112, 1);
        if (v80 >= 16)
        {
          v85 = v80 >= 0x15 ? (75 * v80 + 99) / 0x64u : 15;
          v86 = v80 >= 0x19 ? 25 : v80;
          v80 = (75 * v80 + 99) / 0x64u;
          if (v85 < v86)
          {
            v87 = &v112[v85];
            v88 = v86 - v85;
            v89 = v85 + 1;
            v80 = v85;
            do
            {
              v90 = *v87++;
              if (*(v144 + v90) > 0.0)
              {
                v80 = v89;
              }

              ++v89;
              --v88;
            }

            while (v88);
          }
        }

        v91 = fabs(*(v144 + v112[v80 - 1])) / (v78 * (*v42 + *v43) * 0.5);
        if (v91 > 1.0)
        {
          v78 = v78 * v91;
        }
      }

      if ((*(a6 + 241) & 1) != 0 || v11[1] > *(a6 + 16) || *(a7 + 1872) != 1)
      {
        v93 = 0;
      }

      else
      {
        v92 = *(a6 + 148);
        if (v92 >= *(a6 + 152))
        {
          v92 = *(a6 + 152);
        }

        if (v92 >= *(a6 + 156))
        {
          v92 = *(a6 + 156);
        }

        v93 = v92 > 0xA;
      }

      v94 = v93 && *(a7 + 20) > 9;
      v95 = 1.2;
      if (!v94)
      {
        v95 = 2.0;
      }

      v96 = 8.0;
      if ((v94 & (a3 < 6)) != 0)
      {
        v96 = 4.0;
      }

      if (v78 < v96)
      {
        v96 = v78;
      }

      *(v12 + 936) = v96;
      if (v78 < v95)
      {
        v95 = v78;
      }

      *(v12 + 944) = v95;
      if (v79)
      {
        v97 = v95 * 0.1 + v109[1] * 0.9;
        *v109 = v96 * 0.1 + *v109 * 0.9;
        v109[1] = v97;
      }

      v98 = (v79 > 2u) & v94;
      if (v79 > 5u)
      {
        v98 = 1;
      }

      v99 = *v109;
      if (v77 < 100.0)
      {
        if (v98)
        {
          if (v76 * v99 >= 399.0)
          {
            v99 = 399.0 / v76;
            *v109 = 399.0 / v76;
            if (v109[1] > 399.0 / v76)
            {
              v109[1] = v99;
            }
          }
        }
      }

      *(v12 + 464) = v99 * *(v12 + 464);
      *v15 = vmulq_n_f64(*v15, v99);
      v100 = v76 * v99;
      *(v12 + 440) = v76 * v99;
      *(v12 + 528) = vmulq_n_f64(*(v12 + 528), v99);
      v101 = v109[1] * *(v12 + 448);
      *(v12 + 448) = v101;
      *(v12 + 456) = sqrt(v101 * v101 + v100 * v100);
    }
  }

  v102 = *(v12 + 464);
  if (*(v12 + 472) < v102)
  {
    *(v12 + 472) = v102;
  }

  v103 = 16;
  v104 = vdupq_n_s64(0x4163125300000000uLL);
  do
  {
    v105 = vmovn_s64(vcgtq_f64(*v15, v104));
    if (v105.i8[0])
    {
      *v15 = 0x4163125300000000;
    }

    if (v105.i8[4])
    {
      *(v15 + 8) = 0x4163125300000000;
    }

    v15 += 16;
    v103 -= 2;
  }

  while (v103);
  v106 = *MEMORY[0x29EDCA608];
}

uint64_t XofBaseType::ValidateUnsignedRange(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, const char *a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = a3 >= a2 && a4 <= a2 || a5 == a2;
  v8 = v7;
  if (!v7 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a6[23] < 0)
    {
      a6 = *a6;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Range error. Field Name: [ %s ], Valid Range: [ %llu .. %llu ] and value: [ %llu ]\n", v13, "GNC", 87, "ValidateUnsignedRange", a6, a4, a3, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t XofBaseType::ValidateSignedRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = a3 >= a2 && a4 <= a2 || a5 == a2;
  v8 = v7;
  if (!v7 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a6[23] < 0)
    {
      a6 = *a6;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Range error. Field Name: [%s], Valid Range: [ %lld .. %lld ] and value: [ %lld ]\n", v13, "GNC", 87, "ValidateSignedRange", a6, a4, a3, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t XofBaseType::CopyDataFromBuffer(int a1, void *a2, unsigned int a3, size_t __n, unint64_t *a5)
{
  v10 = *MEMORY[0x29EDCA608];
  if (__n < 9)
  {
    if (a2[1] - (*a2 + a3) >= __n)
    {
      memcpy(a5 - __n + 8, (*a2 + a3), __n);
      *a5 = bswap64(*a5);
      result = 1;
      goto LABEL_10;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer!\n");
      goto LABEL_7;
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid param: length of param is %d, which is > %lu\n", v8);
LABEL_7:
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  result = 0;
LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLON_EphInt2Real(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  v2 = 900 * *(result + 13);
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 12);
  v4 = *(result + 32);
  v5 = *(result + 36);
  v6.f64[0] = *(result + 40);
  v7 = *(result + 52);
  *(a2 + 24) = *(result + 28) * 0.48828125;
  v6.f64[1] = v7;
  *(a2 + 32) = vmulq_f64(v6, xmmword_299052940);
  *(a2 + 48) = v4 * 0.48828125;
  v8 = *(result + 48);
  v6.f64[0] = *(result + 44);
  v6.f64[1] = *(result + 53);
  *(a2 + 56) = vmulq_f64(v6, xmmword_299052940);
  v6.f64[0] = v8;
  v9 = *(result + 54);
  *(a2 + 20) = v3;
  v6.f64[1] = v9;
  v10.f64[0] = *(result + 56);
  *(a2 + 72) = v5 * 0.48828125;
  v10.f64[1] = *(result + 60);
  *(a2 + 80) = vmulq_f64(v6, xmmword_299052940);
  *(a2 + 96) = vmulq_f64(v10, xmmword_299052950);
  *(a2 + 112) = vcvtd_n_f64_s32(*(result + 55), 0x1EuLL);
  *(a2 + 120) = *(result + 18);
  *(a2 + 124) = *(result + 22);
  *(a2 + 126) = *(result + 16);
  v11 = *(result + 14);
  v12 = (v11 >> 7) & 0x1F;
  v13 = (v11 >> 1) & 0x3F;
  if (v11)
  {
    v14 = 30;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = v14 + 60 * v13 + 3600 * v12;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 NK_Publish_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v8 = a2 + 61920;
  *a4 = *(a2 + 61920);
  *(a4 + 4) = *(a2 + 61924);
  if (*(a4 + 16) == 1)
  {
    v9 = *(a3 + 136) ^ 1;
LABEL_3:
    *(a4 + 16) = v9;
    goto LABEL_7;
  }

  if ((*(a3 + 136) & 1) == 0 && *(a3 + 148) >= 2u && !*(a3 + 160))
  {
    v9 = 1;
    goto LABEL_3;
  }

LABEL_7:
  *(a4 + 17) = *(a2 + 61933);
  *(a4 + 19) = *(a2 + 61934);
  *(a4 + 24) = *(a3 + 20);
  memcpy((a4 + 32), (a2 + 1512), 0x160uLL);
  v10 = *(a4 + 376);
  if (v10 < 0.0)
  {
    do
    {
      v10 = v10 + 360.0;
    }

    while (v10 < 0.0);
    *(a4 + 376) = v10;
  }

  if (v10 > 360.0)
  {
    do
    {
      v10 = v10 + -360.0;
    }

    while (v10 > 360.0);
    *(a4 + 376) = v10;
  }

  v11 = (a3 + 24576);
  v12 = *(a4 + 352);
  *(a4 + 952) = *(a4 + 336);
  *(a4 + 968) = v12;
  *(a4 + 984) = *(a4 + 368);
  *(a4 + 992) = v10;
  *(a4 + 18) = *(a2 + 1864);
  *(a4 + 12) = *(a2 + 1868);
  memcpy((a4 + 384), (a2 + 62120), 0x17CuLL);
  v13 = *(a2 + 61936);
  v14 = *(a2 + 61952);
  v15 = *(a2 + 61968);
  *(a4 + 816) = *(a2 + 61984);
  *(a4 + 784) = v14;
  *(a4 + 800) = v15;
  *(a4 + 768) = v13;
  v16 = *(a2 + 62024);
  v17 = *(a2 + 62040);
  v18 = *(a2 + 62008);
  *(a4 + 824) = *(a2 + 61992);
  *(a4 + 840) = v18;
  *(a4 + 856) = v16;
  *(a4 + 872) = v17;
  v20 = *(a2 + 62088);
  v19 = *(a2 + 62104);
  v21 = *(a2 + 62072);
  *(a4 + 888) = *(a2 + 62056);
  *(a4 + 904) = v21;
  *(a4 + 920) = v20;
  *(a4 + 936) = v19;
  *(a4 + 912) = fmin(fmax(*(a4 + 912), 1.0), 180.0);
  *(a4 + 888) = fmax(*(a4 + 888), 0.01);
  v22 = a3 + 16136;
  v23 = a2 + 7336;
  v24 = (a1 + 2400);
  bzero((a4 + 1000), 0x700uLL);
  v25 = 0;
  v26 = 1000;
  do
  {
    v27 = a1 + 4 * v25;
    if (*(v27 + 1248) != 3)
    {
      v28 = (a4 + v26);
      *v28 = *(v27 + 96);
      v29 = (a4 + v25);
      v29[1512] = *(a1 + v25 + 736);
      v28[160] = *(v27 + 1248);
      v29[2152] = *(a1 + v25 + 1760);
      v29[2664] = *(a2 + v25 + 2416);
      if (*(v22 + 4 * v25) == 1)
      {
        v30 = *(v23 + v25 - 256) == 1 && (*(v23 + 4 * v25) - 31) < 0xFFFFFFE2;
        *(a4 + v25 + 2536) = v30;
      }

      v31 = *(v27 + 1248);
      if (v31 < 15)
      {
        if (v31 < 13)
        {
          v32 = *v24;
        }

        else
        {
          v32 = v24[128];
        }
      }

      else
      {
        v32 = v24[256];
      }

      *(a4 + 2 * v25 + 2280) = v32;
    }

    ++v25;
    ++v24;
    v26 += 4;
  }

  while (v25 != 128);
  if (!*(v8 + 4))
  {
    *(v8 + 201) = 0;
    *(v8 + 207) = 0;
    *(v8 + 212) = 0;
    *(v8 + 217) = 0;
    *(a4 + 385) = 0;
    *(a4 + 391) = 0;
    *(a4 + 396) = 0;
    *(a4 + 401) = 0;
    *(a4 + 2536) = 0u;
    *(a4 + 2552) = 0u;
    *(a4 + 2568) = 0u;
    *(a4 + 2584) = 0u;
    *(a4 + 2600) = 0u;
    *(a4 + 2616) = 0u;
    *(a4 + 2632) = 0u;
    *(a4 + 2648) = 0u;
  }

  memcpy((a4 + 2792), (a2 + 19624), 0x400uLL);
  *(a4 + 3816) = *(a2 + 6784);
  *(a4 + 3832) = v11[1248];
  *(a4 + 3840) = *(a2 + 21688);
  *(a4 + 3856) = v11[1249];
  result = *(a2 + 36592);
  *(a4 + 3864) = result;
  *(a4 + 3880) = v11[1250];
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 SV_Data_Decode_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v18 = *MEMORY[0x29EDCA608];
  v2 = (v1 + 52128);
  v3 = (v1 + 11419);
  bzero(__src, 0xCF84uLL);
  v4 = &__src[5668];
  v5 = 392;
  do
  {
    *(v4 - 3) = 0;
    *(v4 - 8) = 0;
    *(v4 - 3) = 0;
    *(v4 - 8) = 0;
    *(v4 - 1) = 0;
    *v4 = 0;
    v4 += 28;
    v5 -= 28;
  }

  while (v5);
  memset(&__src[6036], 0, 427);
  bzero(&__src[6464], 0x1461uLL);
  bzero(&__src[11682], 0xA1E0uLL);
  bzero(&__src[53124], 0x498uLL);
  memcpy(v1, __src, 0xD41CuLL);
  memset_pattern16(v1, &unk_299052980, 0xC0uLL);
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *(v1 + 192) = v6;
  *(v1 + 208) = v6;
  memset_pattern16((v1 + 224), &unk_299052980, 0x40uLL);
  *(v1 + 3584) = 0u;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(v1 + 3616) = v7;
  *(v1 + 3600) = 0u;
  *(v1 + 3632) = v7;
  memset_pattern16((v1 + 3648), &unk_299052980, 0x3CuLL);
  *(v1 + 3716) = -1;
  *(v1 + 3708) = -1;
  memset_pattern16((v1 + 3718), &unk_299052980, 0x14uLL);
  *(v1 + 6552) = -1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(v1 + 6520) = v8;
  *(v1 + 6536) = v8;
  memset_pattern16((v1 + 6556), &unk_299052960, 0x48uLL);
  memset_pattern16((v1 + 6628), &unk_299052970, 0x120uLL);
  memset_pattern16((v1 + 6916), &unk_299052970, 0x48uLL);
  memset_pattern16((v1 + 6988), &unk_299052970, 0x48uLL);
  v9 = xmmword_299050360;
  v10 = xmmword_299050240;
  v11 = vdupq_n_s64(4uLL);
  v12 = 36;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), v10)), *v9.i8).u8[0])
    {
      *(v3 - 3) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v10)), *&v9).i8[2])
    {
      *(v3 - 2) = 0;
    }

    if (vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v9))).i32[1])
    {
      *(v3 - 1) = 0;
      *v3 = 0;
    }

    v9 = vaddq_s64(v9, v11);
    v10 = vaddq_s64(v10, v11);
    v3 += 4;
    v12 -= 4;
  }

  while (v12);
  *(v1 + 11488) = -1;
  memset_pattern16((v1 + 11492), &unk_299052980, 0x7EuLL);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(v1 + 11665) = v13;
  *(v1 + 11634) = v13;
  *(v1 + 11650) = v13;
  *(v1 + 11618) = v13;
  memset_pattern16((v1 + 11682), &unk_299052980, 0x7EuLL);
  for (i = 0; i != 252; i += 4)
  {
    *(v1 + 51876 + i) = -1;
    *v2 = -1;
    v2[756] = 0;
    v2[819] = -1;
    ++v2;
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(v1 + 53090) = result;
  *(v1 + 53106) = result;
  *(v1 + 53058) = result;
  *(v1 + 53074) = result;
  *(v1 + 53026) = result;
  *(v1 + 53042) = result;
  *(v1 + 53010) = result;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_GPS_Write_NMEA(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(1u, 4u, 1, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_NMEA", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GN_GPS_Write_GNB_Debug(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_GNB_Debug", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GN_GPS_Write_Nav_Debug(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(2u, 4u, 1, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_Nav_Debug", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GN_GPS_Write_Event_Log(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(3u, 4u, 0, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_Event_Log", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t GN_GPS_Write_GNB_Ctrl(int a1, char *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", v11);
LABEL_15:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_16:
    LOWORD(v3) = 0;
    goto LABEL_17;
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v3 = a1;
  if (g_GncPStateInfo != 6 && g_GncPStateInfo != 9)
  {
    for (i = 0; i != v3; i += v8)
    {
      if (v3 - i >= 2043)
      {
        v8 = 2043;
      }

      else
      {
        v8 = v3 - i;
      }

      if (!Hal_SendAidingData(&a2[i]))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v9 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TotalLen,%u,Written,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GN_GPS_Write_GNB_Ctrl", 774, v3, i);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        LOWORD(v3) = i;
        goto LABEL_17;
      }
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_17;
    }

    bzero(__str, 0x3C6uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ReqLen,%u,SentLen,%u\n", v12);
    goto LABEL_10;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GncState,%hhu,IgnoredBytes,%hu\n", v10);
LABEL_10:
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_17:
  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL GN_GPS_Hard_Reset_GNB(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  if (g_GncPStateInfo == 9)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FWReset not done\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GN_GPS_Hard_Reset_GNB");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    Hal_GnssBaseBandReset(2);
  }

  result = v0 != 9;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_GPS_Wassenaar_ITAR_Speed_Exceeded(double a1, double a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Nav Output Inhibited:  Wassenaar / ITAR Export License speed exceeded:  %f > %f m/s\n\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Wassenaar_ITAR_Speed_Exceeded", a1, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL XofIonosphericModelCodec::Decode(char *a1, void *a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  result = XofIntegralType<signed char>::DecodeFromHexData(a1, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 32, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 64, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 96, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 128, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 160, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 192, a2, a3) == 1 && XofIntegralType<signed char>::DecodeFromHexData(a1 + 224, a2, a3) == 1;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

_OWORD *Get_SS_Order(_OWORD *result)
{
  v6 = *MEMORY[0x29EDCA608];
  *(result + 202) = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[2] = 0u;
  v1 = 32;
  *result = PP_GPS_SS_Order_Table;
  result[1] = unk_2990529A0;
  do
  {
    if (v1 <= 0xD9)
    {
      *(result + v1) = v1 + 1;
    }

    ++v1;
  }

  while (v1 != 56);
  for (i = 0; i != 36; ++i)
  {
    if ((i + 56) <= 0xD9)
    {
      *(result + i + 56) = PP_GAL_SS_Order_Table[i] + 56;
    }
  }

  for (j = 0; j != 63; ++j)
  {
    if ((j + 92) <= 0xD9)
    {
      *(result + j + 92) = PP_BDS_SS_Order_Table[j] + 92;
    }
  }

  for (k = 155; k != 165; ++k)
  {
    if (k <= 0xD9)
    {
      *(result + k) = k + 1;
    }
  }

  do
  {
    if (k <= 0xD9)
    {
      *(result + k) = k + 1;
    }

    ++k;
  }

  while (k != 179);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Limited_Reset(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v101 = *MEMORY[0x29EDCA608];
  v7 = a2 + 60072;
  *(a1 + 176) = 0;
  if ((*(a1 + 136) & 1) == 0)
  {
    if ((*(a2 + 1864) & 1) == 0 && *(a2 + 62122) <= 2u && (!*(a1 + 27136) || *(a1 + 27120) >= 0x1Fu))
    {
      Comp_ErrorEllipse(*(a2 + 61576), *(a2 + 61584), *(a2 + 61720), &v92, &v93, &v94);
      v10 = v92 * v92;
      v92 = v92 * v92;
      v11 = *(v7 + 1456);
      v12 = *(v7 + 1464);
      if (v11 < v12)
      {
        v12 = *(v7 + 1456);
      }

      if (v12 > *(v7 + 1472))
      {
        v12 = *(v7 + 1472);
      }

      if (v10 + v12 >= 1600000000.0)
      {
        v13 = *(v7 + 72);
        if (v13 == 1 && *(v7 + 1488) < *(v7 + 112) * 0.25 || (v13 & 1) == 0 && *(v7 + 1488) < a4 * 99930819.3 * (a4 * 99930819.3) * 0.25)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (*v7 == 1 && v11 < *(v7 + 40) * 0.25)
        {
          goto LABEL_25;
        }

        if (*(v7 + 144) == 1)
        {
          if (!*v7 || v10 < *(v7 + 216) * 0.25)
          {
LABEL_25:
            for (i = 2; i != 14; ++i)
            {
              *(a1 + 976 + 8 * ((((i - 1) * i) >> 1) - 1)) = *(a1 + 976 + 8 * ((((i - 1) * i) >> 1) - 1)) * 1.15;
            }

            v15 = 0;
            v16 = vdupq_n_s64(0x3FF2666666666666uLL);
            do
            {
              *(a2 + 61512 + v15) = vmulq_f64(*(a2 + 61512 + v15), v16);
              v15 -= 16;
            }

            while (v15 != -96);
            v17 = 0;
            v18 = vdupq_n_s64(0x3FF2666666666666uLL);
            do
            {
              *(a2 + 61608 + v17) = vmulq_f64(*(a2 + 61608 + v17), v18);
              v17 -= 16;
            }

            while (v17 != -96);
            v19 = 0;
            v20 = vdupq_n_s64(0x3FF11EB851EB851FuLL);
            do
            {
              *(a2 + 61704 + v19) = vmulq_f64(*(a2 + 61704 + v19), v20);
              v19 -= 16;
            }

            while (v19 != -96);
          }
        }

        else if (!*v7 || !*(v7 + 144))
        {
          goto LABEL_25;
        }
      }
    }

    v8 = *(a1 + 136);
    if ((v8 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v8 = 1;
LABEL_34:
  v21 = *(a1 + 140) - 61;
  if (v21 <= 4 && v21 != 2)
  {
    v23 = *(a1 + 168);
    Comp_NEDvar_UDU(a1 + 352, 0xCu, 6, (a2 + 1736), &v90);
    *(v7 + 1648) = v24;
    Comp_ErrorEllipse(*&v90, *(&v90 + 1), v24, &v92, &v93, &v94);
    v25 = v92 * v92;
    ud2var(a1 + 352, 0xCu, 1, 0xCu, (a2 + 61432));
    v26 = v91;
    if (v91 <= v25)
    {
      v26 = v25;
    }

    if (*(v7 + 1408) > v26)
    {
      v26 = *(v7 + 1408);
    }

    if (*(v7 + 1416) > v26)
    {
      v26 = *(v7 + 1416);
    }

    if (*(v7 + 1424) > v26)
    {
      v26 = *(v7 + 1424);
    }

    *(v7 + 1424) = v26;
    *(v7 + 1416) = v26;
    *(v7 + 1408) = v26;
    v27 = *(v7 + 1432);
    if (*(v7 + 1440) > v27)
    {
      v27 = *(v7 + 1440);
    }

    v28 = *(v7 + 1448);
    if (v28 <= v27)
    {
      v28 = v27;
    }

    v29 = fmax(v23, 9.0);
    if (a3 == 2)
    {
      v30 = *(a1 + 20);
      if (v30 <= 3)
      {
        v31 = 100.0;
        if (v30 != 3)
        {
          v31 = 4.0;
        }

        if (v29 * v28 > v31)
        {
          v32 = dbl_299052A40[v30];
          *(a1 + 20) = dword_299052A30[v30];
          v33 = v32 / v29;
          if (v28 > v33)
          {
            v28 = v33;
          }
        }
      }
    }

    v34 = 0;
    *(v7 + 1448) = v28;
    *(v7 + 1440) = v28;
    *(v7 + 1432) = v28;
    do
    {
      *(a2 + 61512 + v34) = vmulq_n_f64(*(a2 + 61512 + v34), v29);
      v34 -= 16;
    }

    while (v34 != -96);
    v35 = 2;
    do
    {
      *(&v90 + v35) = v29 * *(&v90 + v35);
      v36 = v35-- + 1;
    }

    while (v36 > 1);
    *(v7 + 1648) = v29 * *(v7 + 1648);
    bzero((a1 + 976), 0x270uLL);
    for (j = 0; j != 12; ++j)
    {
      *(a1 + 976 + 8 * ((((j + 1) * (j + 2)) >> 1) - 1)) = *(a2 + 61432 + 8 * j);
    }

    *(v7 + 1408) = v90;
    *(v7 + 1424) = v91;
    NK_Recompute_Sigmas(a1, a2);
    *(a1 + 136) = 0;
    *(a1 + 176) = 2;
    goto LABEL_153;
  }

LABEL_64:
  if (v8)
  {
    goto LABEL_153;
  }

  v76 = a3;
  v38 = 0;
  v39 = (a2 + 1736);
  v40 = (v7 + 1360);
  do
  {
    *(&v85 + v38) = *(a2 + 62540 + v38) ^ 1;
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        if (*(v7 + 1376) > 1000000000.0)
        {
          BYTE2(v85) = 0;
        }
      }

      else if (v38 == 3 && *(v7 + 1384) > 9.0)
      {
        HIBYTE(v85) = 0;
      }
    }

    else if (v38)
    {
      if (v38 == 1 && *(v7 + 1368) > 1000000000.0)
      {
        BYTE1(v85) = 0;
      }
    }

    else if (*v40 > 1000000000.0)
    {
      LOBYTE(v85) = 0;
    }

    if (*(&v85 + v38) == 1)
    {
      EvLog_v("NK_Limited_Reset: Partial reset requested for %d", v38);
    }

    ++v38;
  }

  while (v38 != 12);
  v41 = *(v7 + 2676);
  if (v41 > 0x1D4C0)
  {
    *(a2 + 1680) = 0;
    *(a2 + 1682) = 0;
    v85 = 16843009;
    v87 = 16843009;
LABEL_85:
    v42 = *(a2 + 1848);
    EvLog_v("NK_Limited_Reset: Partial reset velocity: %d  %d  ", v41, v42);
    v43 = v42 * v42;
    if (*(v7 + 2676) / 0xFA0u > v42)
    {
      *(a2 + 1616) = 0u;
      *(a2 + 1600) = 0u;
      *(a2 + 1584) = 0u;
      *(a2 + 1816) = 0u;
      *(a2 + 1832) = 0u;
      *(a2 + 1848) = 0u;
    }

    v86 = 1;
    v88 = 257;
    v89 = 1;
    goto LABEL_89;
  }

  if (v41 >= 0xFA0)
  {
    goto LABEL_85;
  }

  v43 = 0;
LABEL_89:
  v44 = 0;
  v45 = 0;
  v99 = 0u;
  *v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  *v95 = 0u;
  v96 = 0u;
  v46 = (v7 + 1360);
  do
  {
    if (*(&v85 + v44) == 1)
    {
      v47 = v46[49];
      if (*(a2 + 1872))
      {
        v47 = v47 + v47;
      }

      if (((v44 - 9) < 3 || v44 == 4) && v43 != 0)
      {
        v47 = v47 + v43;
      }

      v95[v44] = v47;
      ++v45;
      ++*(a1 + 27048 + 2 * v44);
      *v46 = v47;
    }

    ++v44;
    ++v46;
  }

  while (v44 != 12);
  v50 = *(&v96 + 1);
  if ((HIBYTE(v85) & (*(&v96 + 1) > 9.0)) != 0)
  {
    v50 = 9.0;
  }

  *(&v96 + 1) = v50;
  if ((v87 & 0x100) != 0)
  {
    Comp_NEDvar_UDU(a1 + 352, 0xCu, 6, (a2 + 1736), &v90);
    *(v7 + 1648) = v51;
    Comp_ErrorEllipse(*&v90, *(&v90 + 1), v51, &v92, &v93, &v94);
    v52 = v92 * v92;
    v92 = v52;
    if (v91 > v52)
    {
      v52 = v91;
    }

    *(&v98 + 1) = v52;
    *&v99 = v52;
    *&v98 = v52;
    *(a2 + 61480) = v90;
    *(a2 + 61496) = v91;
  }

  if (v88 == 1)
  {
    v53 = *(v7 + 1824);
    if (*(v7 + 1832) > v53)
    {
      v53 = *(v7 + 1832);
    }

    if (*(v7 + 1840) > v53)
    {
      v53 = *(v7 + 1840);
    }

    v54 = v53 + v53;
    if (v76 == 2)
    {
      v55 = *(a1 + 20);
      if (v55 <= 3)
      {
        v56 = 100.0;
        if (v55 != 3)
        {
          v56 = 4.0;
        }

        if (v54 > v56)
        {
          v77 = v54;
          Dynamics_Mode::Promote_Dynamic_Level((a1 + 20));
          v54 = v77;
        }
      }
    }

    v100[0] = v54;
    v100[1] = v54;
    *(&v99 + 1) = v54;
    *(v7 + 1448) = v54;
    *(a2 + 61504) = vdupq_lane_s64(*&v54, 0);
  }

  if (v87 == 1)
  {
    v57 = *(&v97 + 1) - *(v7 + 1496);
    if (v57 > 100.0)
    {
      v58 = 0;
      v59 = v57 * 0.25;
      do
      {
        if ((*(&v85 + v58) & 1) == 0)
        {
          v60 = v40[v58];
          if (v60 < 2.24688795e10)
          {
            v61 = v59 + v60 >= *(a2 + 61824 + 8 * v58) ? *(a2 + 61824 + 8 * v58) : v59 + v60;
            v62 = v61 - v60;
            if (v61 - v60 > 25.0)
            {
              v40[v58] = v61;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              *(&v79 + v58) = 0x3FF0000000000000;
              rnk1_core((a1 + 976), v58, v61 - v60, &v79, &v78);
              EvLog_v("NK_Limited_Reset:  dT_Sync partial reset - Q-Boost Clk:  %d  %d  new_sig %d", v58, sqrt(v62), sqrt(v61));
            }
          }
        }

        ++v58;
      }

      while (v58 != 3);
      v63 = 0;
      v64 = (v7 + 1408);
      do
      {
        if ((*(&v87 + v63 + 1) & 1) == 0)
        {
          v65 = *v64;
          if (*v64 < 2.24688795e10)
          {
            v66 = v59 + v65 >= v64[49] ? v64[49] : v59 + v65;
            v67 = v66 - v65;
            if (v66 - v65 > 25.0)
            {
              *v64 = v66;
              v83 = 0u;
              v84 = 0u;
              v79 = 0u;
              v80 = 0u;
              v68 = *v39;
              v81 = 0u;
              v82 = v68;
              *&v83 = *(v39 + 2);
              rnk1_core((a1 + 976), 9u, v67, &v79, &v78);
              EvLog_v("NK_Limited_Reset:  dT_Sync partial reset - Q-Boost Pos:  %d  %d  new_sig %d", v63, sqrt(v67), sqrt(v66));
            }
          }
        }

        ++v63;
        v39 = (v39 + 24);
        ++v64;
      }

      while (v63 != 3);
    }
  }

  if (v45)
  {
    if (v45 > 0xA)
    {
      if (v45 == 11)
      {
        v69 = -12;
        v70 = v95;
        do
        {
          *&v79 = 0;
          if (R8_EQ(v70, &v79))
          {
            ud2var(a1 + 976, 0xCu, v69 + 13, 1u, v70);
          }

          ++v70;
        }

        while (!__CFADD__(v69++, 1));
      }

      bzero((a1 + 976), 0x270uLL);
      v72 = v95;
      for (k = 2; k != 14; ++k)
      {
        v74 = *v72++;
        *(a1 + 976 + 8 * ((((k - 1) * k) >> 1) - 1)) = v74;
      }
    }

    else
    {
      Partial_Reset(12, v95, (a1 + 976));
    }

    *(a1 + 68184) = *(a2 + 1512);
    *(a1 + 176) = 1;
    *(a1 + 152) = 0;
    NK_Recompute_Sigmas(a1, a2);
  }

LABEL_153:
  v75 = *MEMORY[0x29EDCA608];
}

_DWORD *Dynamics_Mode::Promote_Dynamic_Level(_DWORD *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (v1 <= 6)
  {
    *this = dword_299052A60[v1];
  }

  v2 = *MEMORY[0x29EDCA608];
  return this;
}

double *NK_Recompute_Sigmas(double *result, double *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = -12;
  v3 = a2 + 7679;
  do
  {
    v4 = v2 + 12;
    if (v2 + 12 > 5)
    {
      if (v4 > 8)
      {
        if (v2 == -3)
        {
          a2[7700] = a2[7688] + a2[194] * 0.0001;
        }

        else if (v2 == -2)
        {
          a2[7701] = a2[7689] + a2[194] * 0.0001;
        }

        else
        {
          a2[7702] = a2[7690] + a2[194] * 0.0001;
        }
      }

      else if (v2 == -6)
      {
        a2[7715] = a2[7715] + result[1940];
        a2[7697] = a2[7685] + result[1937];
      }

      else if (v2 == -5)
      {
        a2[7698] = a2[7686] + result[1938];
      }

      else
      {
        a2[7699] = a2[7687] + result[1939];
      }
    }

    else
    {
      if (v4 > 2)
      {
        if (v2 == -9)
        {
          v5 = *v3 + result[1936] * 0.0001;
        }

        else if (v2 == -8)
        {
          v5 = *v3 + a2[194] * 0.01;
        }

        else
        {
          v5 = *v3;
        }
      }

      else
      {
        v5 = *v3 + result[1936];
      }

      v3[12] = v5;
    }

    v3[24] = sqrt(v3[12]);
    ++v3;
  }

  while (!__CFADD__(v2++, 1));
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm01_01DefaultMsgHandler(unsigned __int8 *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm01_01DefaultMsgHandler", 517);
    v6 = 1;
LABEL_10:
    gnssOsa_PrintLog(__str, v6, 1, 0);
    goto LABEL_34;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FSM:MID,%X,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm01_01DefaultMsgHandler", 519, *(a1 + 1), *a1, a1[1]);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v3 = *(a1 + 1);
  if (v3 <= 8520706)
  {
    if (v3 == 8389379)
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_34;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE discarded\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm01_01DefaultMsgHandler");
      v6 = 2;
      goto LABEL_10;
    }

    if (v3 == 8405248)
    {
      Gnm11_00ApiStatusCB(11, 0, 0, 18);
      goto LABEL_34;
    }

    if (v3 != 8520195)
    {
      goto LABEL_28;
    }

    v7 = *(a1 + 3);
    if (v7[42])
    {
      free(v7[42]);
      v7 = *(a1 + 3);
    }

    v7[42] = 0;
    if (v7[12])
    {
      free(v7[12]);
      v7 = *(a1 + 3);
    }

    v7[12] = 0;
    if (v7[44])
    {
      free(v7[44]);
      v7 = *(a1 + 3);
    }

    goto LABEL_31;
  }

  if (v3 <= 8653570)
  {
    if (v3 != 8520707)
    {
      v4 = 8521475;
      goto LABEL_22;
    }

    v7 = *(a1 + 3);
    if (!v7)
    {
LABEL_32:
      *(a1 + 3) = 0;
      goto LABEL_34;
    }

LABEL_31:
    free(v7);
    goto LABEL_32;
  }

  if (v3 != 8653571)
  {
    v4 = 8653827;
LABEL_22:
    if (v3 == v4)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No memory free done\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm01_01DefaultMsgHandler");
    v6 = 4;
    goto LABEL_10;
  }

LABEL_23:
  v8 = *(a1 + 2);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 2) = 0;
LABEL_34:
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t UnCompact_GPS_BinEph(uint64_t result, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  v2 = (a2 + 11);
  *(result + 10) = *(a2 + 10);
  v3 = result + 24;
  *(result + 11) = 0;
  *(result + 16) = 0;
  for (i = 21; i > 1; --i)
  {
    *v3 = *v2;
    *(v3 + 1) = v2[1];
    *(v3 + 2) = v2[2];
    v3 += 4;
    v2 += 3;
  }

  *(result + 104) = 0xFFFFFF;
  *(result + 108) = *(a2 + 71);
  *(result + 110) = *(a2 + 74);
  *(result + 114) = *(a2 + 78);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Vert_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v21[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    a4[6] = v11;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v12 = a2[7];
    *(v18 + a1) = -a2[6];
    *(v18 + a1 + 1) = -v12;
    *(&v18[1] + a1) = -a2[8];
    v17 = 0.0;
    *(v18 + a3) = v11;
    umeas(a5, a3, v10, v18, v21, v20, &v17, a4[7]);
    v13 = v17;
    if (v17 <= 0.0)
    {
      v14 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v13 = a4[4] * (v17 * (v21[a3] * v21[a3]));
      v14 = *a4;
    }

    a4[8] = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14 & 1;
}

void Corr_Old_PR_Est(unsigned __int8 *a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, uint64_t a19, unsigned __int8 *a20, double *a21)
{
  v59 = *MEMORY[0x29EDCA608];
  v21 = a9 <= 5.0;
  v22 = a9 <= 5.0;
  v23 = fabs(a10);
  if (v21)
  {
    v24 = a6;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 <= 5995849.16 && v22;
  v26 = fabs(a11) <= 5995849.16 && v22;
  v27 = fabs(a12) <= 5995849.16 && v22;
  if (fabs(a13) > 30.0)
  {
    v22 = 0;
  }

  if (a7)
  {
    v28 = v25 & a2;
    v29 = v26 & a3;
    v30 = v27 & a4;
    v31 = v22 & a5;
    v32 = a7;
    v33 = a20;
    v34 = a1;
    v35 = a21;
    v36 = a7;
    while (1)
    {
      v37 = *v33++;
      if (v37 == 1)
      {
        v38 = *v34;
        if (v38 <= 3)
        {
          v39 = a14;
          if (v38 != 2)
          {
            v39 = a16;
            if (v38 != 3)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_25;
        }

        v39 = a15;
        if (v38 == 4)
        {
          goto LABEL_25;
        }

        if (v38 == 6)
        {
          v39 = a17;
LABEL_25:
          *v35 = *v35 - v39;
        }
      }

LABEL_26:
      ++v35;
      v34 += 4;
      if (!--v36)
      {
        if (v24)
        {
          v40 = 0;
          v41 = a19;
          while (a20[v40] != 1)
          {
LABEL_50:
            ++v40;
            v41 += 24;
            if (v40 == v32)
            {
              goto LABEL_56;
            }
          }

          v42 = 0;
          v43 = *(a8 + 8 * v40);
          v44 = a19 + 24 * v40;
          v45 = 0.0;
          do
          {
            v45 = v45 + *(a18 + v42) * *(v41 + v42);
            v42 += 8;
          }

          while (v42 != 24);
          v46 = 0;
          v57 = 0uLL;
          v58 = 0;
          do
          {
            *(&v57 + v46) = *(v41 + v46) - -(*(a18 + v46) - v45 * *(v41 + v46)) / v43;
            v46 += 8;
          }

          while (v46 != 24);
          v47 = 0;
          v48 = 0.0;
          do
          {
            v48 = v48 + *(a18 + v47) * (*(v41 + v47) + *(&v57 + v47));
            v47 += 8;
          }

          while (v47 != 24);
          *v44 = v57;
          *(v44 + 16) = v58;
          v49 = v48 * 0.5 + a21[v40];
          a21[v40] = v49;
          v50 = &a1[4 * v40];
          v51 = *v50;
          if (v51 == 4)
          {
            if (!v30)
            {
              goto LABEL_45;
            }

            v49 = v49 - a12;
          }

          else
          {
            if (v51 == 2)
            {
              if (v29)
              {
                v49 = v49 - a11;
                goto LABEL_44;
              }

LABEL_45:
              a20[v40] = 0;
LABEL_46:
              v52 = v50[1];
              v21 = v52 > 0xF;
              v53 = (1 << v52) & 0xDD77;
              if (v21 || v53 == 0)
              {
                if (v31)
                {
                  a21[v40] = v49 - a13;
                }

                else
                {
                  a20[v40] = 0;
                }
              }

              goto LABEL_50;
            }

            if (!v28)
            {
              goto LABEL_45;
            }

            v49 = v49 - a10;
          }

LABEL_44:
          a21[v40] = v49;
          goto LABEL_46;
        }

LABEL_58:
        v56 = *MEMORY[0x29EDCA608];

        bzero(a20, v32);
        return;
      }
    }
  }

  if ((v24 & 1) == 0)
  {
    v32 = 0;
    goto LABEL_58;
  }

LABEL_56:
  v55 = *MEMORY[0x29EDCA608];
}

void *Init_DB_Acq_Aid_Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 184);
  v7 = *(a1 + 920);
  v8 = *(a1 + 904);
  *a3 = *(a1 + 32);
  v9 = *(a1 + 160);
  v10 = (*(a1 + 48) - *(a1 + 152)) * 1000.0;
  if (v10 <= 0.0)
  {
    v11 = -0.5;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = v10 + v11;
  if (v12 >= -2147483650.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x80000000;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  *(a3 + 36) = v14;
  *(a3 + 44) = *(a1 + 56);
  v15 = (*(a1 + 216) - v9) * 1000.0;
  if (v15 <= 0.0)
  {
    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = v15 + v16;
  if (v17 <= 2147483650.0)
  {
    if (v17 >= -2147483650.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x80000000;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  *(a3 + 48) = v18;
  v36[0] = 0.0;
  API_Get_UTC_Cor(1, v36);
  if (v36[0] <= 0.0)
  {
    v19 = -0.5;
  }

  else
  {
    v19 = 0.5;
  }

  v20 = v36[0] + v19;
  if (v36[0] + v19 <= 2147483650.0)
  {
    if (v20 >= -2147483650.0)
    {
      v21 = v20;
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = -1;
  }

  *(a3 + 52) = v21;
  v22 = (a3 + 72);
  v23 = 123;
  do
  {
    *(v22 + 30) = 0uLL;
    *v22 = 0uLL;
    v22[1] = 0uLL;
    v22 += 3;
    --v23;
  }

  while (v23);
  result = memset((a3 + 5976), 255, 0x5F6uLL);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *(a3 + 8592) = 0;
  *(a3 + 8596) = 0;
  do
  {
    v29 = v28 + 1;
    if (*(a2 + 50616 + v27) == 1)
    {
      v30 = 0;
      *(a3 + 6630 + 2 * v25++) = v29;
      *(a3 + 8593) = v25;
    }

    else
    {
      *(a3 + 7066 + 2 * v26++) = v29;
      *(a3 + 8595) = v26;
      v30 = 3;
    }

    *(a3 + 7720 + 4 * v27++) = v30;
    v28 = v27;
  }

  while (v27 != 218);
  v31 = fabs(v6);
  v32 = sqrt(v8 * v8 + v7 * v7);
  v33 = (v6 * 1000000000.0);
  v34 = 3 * (v32 + 1313.75887);
  if (v32 >= 21500.0)
  {
    LOWORD(v34) = -536;
  }

  if (v31 >= 0.000032768)
  {
    LOWORD(v33) = 0;
  }

  *(a3 + 4) = v34;
  *(a3 + 6) = -1;
  *(a3 + 14) = 0x7FFF7FFF7FFFFFFFLL;
  *(a3 + 22) = -256;
  *(a3 + 24) = v33;
  *(a3 + 26) = 0xFFFF;
  *(a3 + 30) = -154;
  *(a3 + 56) = 0;
  *(a3 + 60) = *(a1 + 24);
  *(a3 + 8670) = 3584;
  *(a3 + 8600) = 0u;
  *(a3 + 8616) = 0u;
  *(a3 + 8632) = 0u;
  *(a3 + 8648) = 0u;
  *(a3 + 8662) = 0;
  *(a3 + 8680) = a2 + 17328;
  *(a3 + 8688) = a2 + 17424;
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_Cur_Acq_Aid(uint64_t result, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  *(a2 + 4) = 0;
  *(a2 + 8) = *(result + 8);
  *(a2 + 16) = *(result + 16);
  if (*(result + 4) == 1)
  {
    v3 = result;
    v4 = *a2 - *result;
    if (*a2 == *result)
    {
      v5 = *result;
      v6 = *(result + 32);
      *(a2 + 16) = *(result + 16);
      *(a2 + 32) = v6;
      *a2 = v5;
    }

    else if (v4 <= 150000)
    {
      *(a2 + 12) = *(result + 12);
      v7 = *(result + 20);
      *(a2 + 41) = *(result + 41);
      v8 = *(result + 28);
      *(a2 + 32) = *(result + 32) - v4 + (v4 << 10);
      v9 = (a2 + 32);
      *(a2 + 20) = v7;
      *(a2 + 18) = *(result + 18);
      *(a2 + 26) = *(result + 26);
      *(a2 + 24) = *(result + 24);
      *(a2 + 38) = *(result + 38);
      v10 = v4 * v7;
      if (v4 * v7 < 0)
      {
        HIWORD(v10) = (v4 * v7 + 0xFFFF) >> 16;
      }

      v11 = *(result + 22);
      *(a2 + 22) = v11 + HIWORD(v10);
      *(a2 + 28) = v8;
      v12 = (*(result + 22) + (v11 + HIWORD(v10))) * v4;
      *(a2 + 40) = *(result + 40);
      v13 = (v12 / 2) * 0.000000649350649;
      v14 = -0.5;
      if (v13 > 0.0)
      {
        v14 = 0.5;
      }

      v15 = v13 + v14;
      if (v15 <= 2147483650.0)
      {
        if (v15 >= -2147483650.0)
        {
          v16 = v15;
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

      v17 = vcvtd_n_s64_f64(v13 - v16, 0x10uLL) + *(result + 36);
      v18 = v17 - 0x1FFFF;
      if (v17 < 0x1FFFF)
      {
        v18 = 0;
      }

      v19 = v18 + 0xFFFF;
      v20 = v17 - (v19 & 0x7FFF0000) - 0x10000;
      v21 = v16 + HIWORD(v19);
      if (v17 >= 0x10000)
      {
        v16 = v21 + 1;
        v17 = v20;
      }

      v22 = -65536 - v17;
      if (v17 > 0xFFFF0000)
      {
        v22 = 0;
      }

      if (v17 < 0)
      {
        v23 = v16 + ~((v22 + 0xFFFF) >> 16);
      }

      else
      {
        v23 = v16;
      }

      v24 = v17;
      result = Inc_CA_Chips(v23, v9, (a2 + 28));
      *(a2 + 36) = v24;
      *(a2 + 43) = *(v3 + 43);
      *(a2 + 44) = *(v3 + 44);
      *(a2 + 4) = 1;
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP12_41HandleClearPosData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    memset(&v19, 0, sizeof(v19));
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ,Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP12_41HandleClearPosData", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 12);
    g_GnssDataClrMask = v5;
    if ((v5 & 0x40000) != 0)
    {
      v7 = "FACT";
    }

    else if ((v5 & 0x10000) != 0)
    {
      v7 = "COLD";
    }

    else
    {
      if ((v5 & 0x20000) == 0)
      {
        if ((v5 & 4) != 0)
        {
          std::string::push_back(&v19, 80);
          v5 = *(a1 + 12);
        }

        if ((v5 & 8) != 0)
        {
          std::string::push_back(&v19, 84);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x80) != 0)
        {
          std::string::push_back(&v19, 70);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x10) != 0)
        {
          std::string::push_back(&v19, 73);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x20) != 0)
        {
          std::string::push_back(&v19, 85);
          v5 = *(a1 + 12);
        }

        if (v5)
        {
          std::string::push_back(&v19, 69);
          v5 = *(a1 + 12);
        }

        if ((v5 & 2) != 0)
        {
          std::string::push_back(&v19, 65);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x40) != 0)
        {
          std::string::push_back(&v19, 72);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x800) != 0)
        {
          std::string::push_back(&v19, 67);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x200) != 0)
        {
          GncP24_02XofDeleteData(2);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x400) != 0)
        {
          GncP24_02XofDeleteData(1);
        }

LABEL_35:
        v8 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        v9 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        size = v19.__r_.__value_.__l.__size_;
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = v19.__r_.__value_.__l.__size_;
        }

        if (v11)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &v19;
            }

            else
            {
              v13 = v19.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ValidClearReq DeleteReq,%s\n", v12, "GNC", 73, "GncP12_41HandleClearPosData", v13);
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v8 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
            size = v19.__r_.__value_.__l.__size_;
            v9 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          }

          if (v9 >= 0)
          {
            v14 = &v19;
          }

          else
          {
            v14 = v19.__r_.__value_.__r.__words[0];
          }

          if (v9 >= 0)
          {
            v15 = v8;
          }

          else
          {
            v15 = size;
          }

          GncP16_27UpdateStateClearNVReqRcvd(v14, v15, a3);
          if (g_GncPStateInfo > 0x10u)
          {
            goto LABEL_53;
          }

          v16 = 1;
          if (((1 << g_GncPStateInfo) & 0x10C08) != 0)
          {
            goto LABEL_56;
          }

          if (((1 << g_GncPStateInfo) & 0x14) == 0)
          {
LABEL_53:
            v16 = 0;
          }

          GncP04_21SendClearGnssAck(v16);
        }

        else
        {
          GncP04_21SendClearGnssAck(1);
        }

LABEL_56:
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        goto LABEL_58;
      }

      v7 = "WARM";
    }

    MEMORY[0x29C296100](&v19, v7);
    goto LABEL_35;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP12_41HandleClearPosData", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_58:
  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_298FE3670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP12_04HandleGpsRefTime(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_04HandleGpsRefTime");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    v5 = *(a1 + 32);
    v4 = *(a1 + 36);
    v16[0] = v5;
    v16[1] = v3;
    v17 = 0;
    v6 = *(a1 + 24);
    LOWORD(v17) = *(a1 + 24);
    if ((v4 - 3) < 4 || v4 == 8)
    {
      v8 = *(a1 + 16);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Src\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP12_04HandleGpsRefTime", 770);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v8 = 0xFFFF;
    }

    HIWORD(v17) = v8;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G RefTime OSTime,%u,TOW,%d,WeekNo,%d,RMS,%d\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP12_04HandleGpsRefTime", v5, v3, v6, v8);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if ((GN_AGPS_Set_Ref_Time(v16) & 1) == 0 && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:G Time\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP12_04HandleGpsRefTime", 257);
      v11 = 2;
LABEL_17:
      gnssOsa_PrintLog(__str, v11, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_04HandleGpsRefTime", 517);
    v11 = 1;
    goto LABEL_17;
  }

  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_02HandleGpsNavModel(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_02HandleGpsNavModel");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP12_02HandleGpsNavModel", 517);
    v14 = 1;
LABEL_22:
    gnssOsa_PrintLog(__str, v14, 1, 0);
    goto LABEL_23;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP12_02HandleGpsNavModel", 513);
    v14 = 2;
    goto LABEL_22;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = g_LbsOsaTrace_Config;
  v6 = v3 + 38;
  do
  {
    memset(&v25[16], 0, 20);
    *v25 = 0u;
    v24 = 0u;
    *&v23[1] = 0u;
    v18 = *(v6 - 38) + 1;
    v19 = *(v6 - 37);
    v20 = *(v6 - 18);
    v21 = *(v6 + 10);
    v22 = *(v6 - 34);
    *v23 = *(v6 - 5);
    *&v23[5] = *(v6 - 15);
    *&v23[7] = *(v6 + 9);
    *&v23[9] = *(v6 - 16);
    *&v23[11] = *(v6 - 4);
    *&v23[13] = *v6;
    *&v23[15] = *(v6 + 17);
    LOWORD(v24) = *(v6 - 1);
    WORD1(v24) = *(v6 + 18);
    WORD2(v24) = *(v6 + 4);
    WORD3(v24) = *(v6 + 3);
    WORD4(v24) = *(v6 + 12);
    WORD5(v24) = *(v6 + 11);
    HIDWORD(v24) = *(v6 - 6);
    *v25 = *(v6 + 2);
    *&v7 = *(v6 + 10);
    *(&v7 + 1) = *(v6 + 26);
    *&v25[4] = v7;
    *&v25[20] = *(v6 + 38);
    *&v25[28] = 0;
    *&v25[31] = 0;
    if (v5 >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Eph SvId,%d,CodeOnL2,%d,URA,%d,SVHealth,%d,FitIntFlag,%d,AODA,%d,L2PFlag,%d,TGD,%d,AF2,%d,Week,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_02HandleGpsNavModel", v18, v19, v20, HIBYTE(v20), v21, HIBYTE(v21), v22, v23[0], v23[1], *&v23[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Eph TOC,%d,TOE,%d,IODC,%d,Af1,%d,dn,%d,IDot,%d,Crs,%d,Crc,%d,Cus,%d,Cuc,%d\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP12_02HandleGpsNavModel", *&v23[5], *&v23[7], *&v23[9], *&v23[11], *&v23[13], *&v23[15], v24, SWORD1(v24), SWORD2(v24), SWORD3(v24));
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Eph Cis,%d,Cic,%d,af0,%d,M0,%d,e,%d,APowHalf,%d,Omega0,%d,I0,%d,W,%d,OmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP12_02HandleGpsNavModel", SWORD4(v24), SWORD5(v24), HIDWORD(v24), *v25, *&v25[4], *&v25[8], *&v25[12], *&v25[16], *&v25[20], *&v25[24]);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }
      }
    }

    v11 = GN_AGPS_Set_Eph_El(&v18);
    v5 = g_LbsOsaTrace_Config;
    if ((v11 & 1) == 0 && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:G EPH SatID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP12_02HandleGpsNavModel", 257, v18);
      gnssOsa_PrintLog(__str, 2, 1, 0);
      v5 = g_LbsOsaTrace_Config;
    }

    ++v4;
    v6 += 84;
  }

  while (v4 < *(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
LABEL_16:
    free(v3);
  }

  *(a1 + 16) = 0;
LABEL_23:
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

void GNS_AsstGpsNavModel(uint64_t a1, int a2, int a3, const void *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GNS_AsstGpsNavModel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a3 || !a4)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:NavModelElm NumSv,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GNS_AsstGpsNavModel", 513, a3);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      goto LABEL_20;
    }

LABEL_19:
    bzero(__str, 0x3C6uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "GNS_AsstGpsNavModel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    goto LABEL_20;
  }

  if ((a2 - 1) >= 2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GNS_AsstGpsNavModel", 515, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 390, 1, 0x20uLL);
  if (!v8)
  {
    if (g_LbsOsaTrace_Config < 5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = v8;
  *(v8 + 3) = a2;
  *(v8 + 24) = a3;
  v10 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 401, a3, 0x54uLL);
  v9[2] = v10;
  if (!v10)
  {
    free(v9);
    goto LABEL_20;
  }

  memcpy_s("GNS_AsstGpsNavModel", 412, v10, 84 * a3, a4, (84 * a3));
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GNS_AsstGpsNavModel");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  AgpsSendFsmMsg(132, 132, 8657923, v9);
  if (g_LbsOsaTrace_Config >= 5)
  {
    goto LABEL_19;
  }

LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
}

void GNS_AsstGpsRefTime(uint64_t a1, int a2, unsigned int *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GNS_AsstGpsRefTime");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:RefTime\n");
    goto LABEL_12;
  }

  if ((a2 & 0xFFFFFFFE) != 4)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x3C6uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v14);
LABEL_12:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (*a3 < 0x240C8400)
  {
    if (*(a3 + 6) < 0x2000u)
    {
      v10 = gnssOsa_Calloc("GNS_AsstGpsRefTime", 493, 1, 0x28uLL);
      if (v10)
      {
        v11 = v10;
        v12 = *a3;
        *(v10 + 28) = *(a3 + 2);
        *(v10 + 12) = v12;
        *(v10 + 9) = a2;
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v13 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND =>GNCP,Src,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GNS_AsstGpsRefTime", *(v11 + 9));
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        AgpsSendFsmMsg(132, 132, 8657667, v11);
        if (g_LbsOsaTrace_Config >= 5)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_19;
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    v16 = *(a3 + 6);
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:GpsWkNum,%u\n", (*&g_MacClockTicksToMsRelation * v7));
  }

  else
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    v15 = *a3;
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:GpsTow,%u\n", (*&g_MacClockTicksToMsRelation * v6));
  }

  gnssOsa_PrintLog(__str, 2, 1, 0);
  if (g_LbsOsaTrace_Config >= 5)
  {
LABEL_18:
    bzero(__str, 0x3C6uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v8, "GNC", 68, "GNS_AsstGpsRefTime");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

LABEL_19:
  v9 = *MEMORY[0x29EDCA608];
}

BOOL G5K_ME_Poll_New_Meas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  result = 0;
  v64[1] = *MEMORY[0x29EDCA608];
  v64[0] = 0.0;
  *a6 = 0;
  if (*(a1 + 402) == 1)
  {
    v13 = (a1 + 28216);
    API_Get_UTC_Cor(1, v64);
    v15 = -0.5;
    if (v64[0] > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v64[0] + v15;
    if (v64[0] + v15 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = -1;
    }

    if (*a3 && *(a1 + 440) - *a3 < 0 || *(a1 + 403) == 1 && *a4 && *(a1 + 520) - *a4 < 0 || *(a1 + 407) == 1 && (v18 = a5[3968]) != 0 && *v13 - v18 < 0 || *(a1 + 411) == 1 && (v19 = a5[3969]) != 0 && *(a1 + 28220) - v19 < 0 || *(a1 + 415) == 1 && (v20 = a5[3970]) != 0 && *(a1 + 28224) - v20 < 0 || *(a1 + 419) == 1 && (v21 = a5[3971]) != 0 && *(a1 + 28228) - v21 < 0 || *(a1 + 423) == 1 && (v22 = a5[3972]) != 0 && *(a1 + 28232) - v22 < 0)
    {
      *(a1 + 403) = 0;
      *(a1 + 407) = 0;
      *(a1 + 411) = 0;
      *(a1 + 415) = 0;
      *(a1 + 419) = 0;
      *(a1 + 423) = 0;
      *(a1 + 457) = 0;
      *(a1 + 472) = 0;
      *(a1 + 28240) = 0;
      *(a4 + 11820) = 0;
      *a6 = 1;
    }

    v23 = *(a1 + 516);
    if (v23 && v23 == *(a1 + 440) && *(a1 + 452) > *(a2 + 1668))
    {
      EvCrt_d("ME_Poll_New: Invalid TTick", v23);
    }

    else
    {
      *(a1 + 516) = 0;
      v24 = *(a1 + 520);
      if (*(a1 + 403) == 1 && v24 == *(a1 + 440))
      {
        v25 = a4 + 7208;
        memcpy((a4 + 7208), (a1 + 7736), 0x1200uLL);
        memcpy((a4 + 40), (a1 + 568), 0x1C00uLL);
        *a4 = *(a1 + 520);
        *(a4 + 8) = *(a1 + 528);
        *(a4 + 16) = *(a1 + 536);
        *(a4 + 24) = *(a1 + 544);
        *(a4 + 32) = *(a1 + 552);
        *(a4 + 34) = *(a1 + 556);
        *(a4 + 38) = *(a1 + 560);
        *(a4 + 11816) = *(a1 + 28236);
        *(a2 + 2044) = *(a1 + 554);
        if (*(a1 + 452))
        {
          ++*(a4 + 11820);
        }

        v27 = *(a1 + 404);
        v28 = *(a1 + 405);
        v29 = (v27 - v28);
        if (v29 < 1)
        {
          if ((v29 & 0x80000000) != 0)
          {
            v60 = (v29 + 128);
            v61 = *(a1 + 400) + v60;
            *(a1 + 400) = v61;
            v62 = *(a1 + 396) + 1;
            *(a1 + 396) = v62;
            EvLog_nd("G5K_ME_Poll_New_Meas: Missed {M & {T", 3, v26, v60, v61, v62);
            bzero((a4 + 40), 0x1C00uLL);
            v63 = 128;
            do
            {
              *(v25 + 32) = 0;
              *v25 = 0uLL;
              *(v25 + 16) = 0uLL;
              v25 += 36;
              --v63;
            }

            while (v63);
            EvCrt_v("ME_Poll_New: Flushing due to missed {T");
          }
        }

        else
        {
          v30 = *(a1 + 400) + v27 - v28;
          *(a1 + 400) = v30;
          EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {M", 4, v26, v29, v30, v27, v28);
        }
      }

      else
      {
        if (v24)
        {
          v31 = *(a1 + 398) + 1;
          *(a1 + 398) = v31;
          EvLog_nd("G5K_ME_Poll_New_Meas: Missed {H", 5, v14, v31, *(a1 + 405), *(a1 + 400), v24, *(a1 + 440));
        }

        v32 = *(a1 + 460);
        *a4 = *(a1 + 440);
        *(a4 + 4) = v32;
        *(a4 + 8) = *(a1 + 464);
        v33 = a4 + 7208;
        v34 = 128;
        do
        {
          *(v33 + 32) = 0;
          *v33 = 0uLL;
          *(v33 + 16) = 0uLL;
          v33 += 36;
          --v34;
        }

        while (v34);
        *(a4 + 11816) = 0;
        *(a4 + 11817) = v17;
      }

      if (*(a1 + 407) == 1 && *v13 == *(a1 + 440) || *(a1 + 411) == 1 && *(a1 + 28220) == *(a1 + 440) || *(a1 + 415) == 1 && *(a1 + 28224) == *(a1 + 440) || *(a1 + 419) == 1 && *(a1 + 28228) == *(a1 + 440) || *(a1 + 423) == 1 && *(a1 + 28232) == *(a1 + 440))
      {
        memcpy(a5, (a1 + 12344), 0x3E00uLL);
        if (*(a1 + 407) == 1)
        {
          a5[3968] = *v13;
          v36 = *(a1 + 408);
          v37 = *(a1 + 409);
          v38 = (v36 - v37);
          if (v38 >= 1)
          {
            v39 = *(a1 + 410) + v36 - v37;
            *(a1 + 410) = v39;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {G", 4, v35, v38, v39, v36, v37);
          }
        }

        if (*(a1 + 411) == 1)
        {
          a5[3969] = *(a1 + 28220);
          v40 = *(a1 + 412);
          v41 = *(a1 + 413);
          v42 = (v40 - v41);
          if (v42 >= 1)
          {
            v43 = *(a1 + 414) + v40 - v41;
            *(a1 + 414) = v43;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {F", 4, v35, v42, v43, v40, v41);
          }
        }

        if (*(a1 + 415) == 1)
        {
          a5[3970] = *(a1 + 28224);
          v44 = *(a1 + 416);
          v45 = *(a1 + 417);
          v46 = (v44 - v45);
          if (v46 >= 1)
          {
            v47 = *(a1 + 418) + v44 - v45;
            *(a1 + 418) = v47;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {A I", 4, v35, v46, v47, v44, v45);
          }
        }

        if (*(a1 + 419) == 1)
        {
          a5[3971] = *(a1 + 28228);
          v48 = *(a1 + 420);
          v49 = *(a1 + 421);
          v50 = (v48 - v49);
          if (v50 >= 1)
          {
            v51 = *(a1 + 422) + v48 - v49;
            *(a1 + 422) = v51;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {C", 4, v35, v50, v51, v48, v49);
          }
        }

        if (*(a1 + 423) == 1)
        {
          a5[3972] = *(a1 + 28232);
          v52 = *(a1 + 424);
          v53 = *(a1 + 425);
          v54 = (v52 - v53);
          if (v54 >= 1)
          {
            v55 = *(a1 + 426) + v52 - v53;
            *(a1 + 426) = v55;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {I", 4, v35, v54, v55, v52, v53);
          }
        }
      }

      *a3 = *(a1 + 440);
      *(a3 + 16) = *(a1 + 460);
      *(a3 + 24) = *(a1 + 464);
      *(a2 + 244) = *(a1 + 472);
    }

    *(a1 + 411) = 0;
    *(a1 + 415) = 0;
    *(a1 + 419) = 0;
    *(a1 + 423) = 0;
    *(a1 + 413) = 0;
    *(a1 + 416) = 0;
    *(a1 + 420) = 0;
    *(a1 + 424) = 0;
    v56 = a1 + 7736;
    v57 = (a1 + 12344);
    *(a1 + 402) = 0;
    bzero((a1 + 568), 0x1C00uLL);
    v58 = 128;
    do
    {
      *(v56 + 32) = 0;
      *v56 = 0uLL;
      *(v56 + 16) = 0uLL;
      *(v57 + 105) = 0uLL;
      v57[5] = 0uLL;
      v57[6] = 0uLL;
      v57[3] = 0uLL;
      v57[4] = 0uLL;
      v57[1] = 0uLL;
      v57[2] = 0uLL;
      *v57 = 0uLL;
      v57 = (v57 + 124);
      v56 += 36;
      --v58;
    }

    while (v58);
    *(a1 + 28236) = 0;
    *(a1 + 28237) = v17;
    *(a1 + 28216) = 0u;
    *(a1 + 28232) = 0;
    result = *(a1 + 516) == 0;
  }

  v59 = *MEMORY[0x29EDCA608];
  return result;
}

void *G5K_ME_Flush_Data(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  __src[3532] = *MEMORY[0x29EDCA608];
  *(v1 + 411) = 0;
  *(v1 + 415) = 0;
  *(v1 + 419) = 0;
  *(v1 + 423) = 0;
  *(v1 + 508) = 0;
  *(v1 + 413) = 0;
  *(v1 + 416) = 0;
  *(v1 + 420) = 0;
  *(v1 + 424) = 0;
  *(v1 + 504) = 0;
  *(v1 + 457) = 0;
  *(v1 + 472) = 0;
  *(v1 + 28240) = 0;
  *(v1 + 402) = 0;
  v2 = *(v1 + 512);
  v3 = *(v1 + 394);
  v4 = *(v1 + 410);
  v5 = *(v1 + 414);
  v6 = *(v1 + 418);
  v7 = *(v1 + 422);
  v8 = *(v1 + 426);
  bzero(__src, 0x6E60uLL);
  v9 = 0x1FFFFFFFFFFFFC80;
  do
  {
    v10 = &__src[v9];
    v10[967] = 0;
    *(v10 + 7748) = 0;
    *(v10 + 3872) = 0;
    v10[973] = 0;
    *(v10 + 485) = 0uLL;
    *(&__src[v9 + 971] + 6) = 0;
    v9 += 7;
  }

  while (v9 * 8);
  v11 = &__src[971];
  v12 = 4608;
  do
  {
    *(v11 - 2) = 0;
    *(v11 - 3) = 0;
    *(v11 - 2) = 0;
    *(v11 - 4) = 0;
    *(v11 - 11) = 0;
    v11 = (v11 + 36);
    v12 -= 36;
  }

  while (v12);
  v13 = -15872;
  do
  {
    v14 = (&__src[3527] + v13);
    *(v14 + 105) = 0uLL;
    v14[5] = 0uLL;
    v14[6] = 0uLL;
    v14[3] = 0uLL;
    v14[4] = 0uLL;
    v14[1] = 0uLL;
    v14[2] = 0uLL;
    *v14 = 0uLL;
    v13 += 124;
  }

  while (v13);
  __src[3530] = 0;
  LODWORD(__src[3531]) = 0;
  memset(&__src[3527], 0, 22);
  result = memcpy(v1, __src, 0x6E5CuLL);
  *(v1 + 384) = v1;
  *(v1 + 512) = v2;
  *(v1 + 394) = v3;
  *(v1 + 410) = v4;
  *(v1 + 414) = v5;
  *(v1 + 418) = v6;
  *(v1 + 422) = v7;
  *(v1 + 426) = v8;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm_SendFWExtendedDbgConfig(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v19 = *MEMORY[0x29EDCA608];
  v1 = fopen("/var/db/gpsd/zxDfP.bin", "rb");
  if (!v1)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_11;
    }

    bzero(__ptr, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__ptr, 0x3C5uLL, "%10u %s%c %s: CP extended debug disabled\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    v6 = __ptr;
    v7 = 4;
LABEL_10:
    gnssOsa_PrintLog(v6, v7, 1, 0);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = fread(__ptr, 1uLL, 0x1000uLL, v1);
  fclose(v2);
  if ((Hal_SendData(__ptr, v3) & 1) == 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_11;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CP extended debug send failed\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm_SendFWExtendedDbgConfig");
    v6 = __str;
    v7 = 1;
    goto LABEL_10;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CP extended debug CFG\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  g_LbsOsaTrace_Config = 5;
LABEL_11:
  v9 = fopen("/var/db/gpsd/zxDmM.bin", "rb");
  if (!v9)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_21;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME extended debug disabled\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    v14 = 4;
LABEL_20:
    gnssOsa_PrintLog(__str, v14, 1, 0);
    goto LABEL_21;
  }

  v10 = v9;
  v11 = fread(__ptr, 1uLL, 0x1000uLL, v9);
  fclose(v10);
  if ((Hal_SendData(__ptr, v11) & 1) == 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_21;
    }

    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME extended debug send failed\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 69, "Gnm_SendFWExtendedDbgConfig");
    v14 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME extended debug CFG\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  g_LbsOsaTrace_Config = 5;
LABEL_21:
  v16 = *MEMORY[0x29EDCA608];
}

void Gnm35_15SendDbgCfg(void)
{
  v9[5] = *MEMORY[0x29EDCA608];
  *v9 = xmmword_299052AB0;
  *(&v9[1] + 3) = *(&xmmword_299052AB0 + 11);
  *v8 = xmmword_299052ACB;
  *&v8[11] = *(&xmmword_299052ACB + 11);
  if (g_LbsOsaTrace_Config >= 6uLL)
  {
    v0 = 0;
  }

  else
  {
    v0 = 0x40403020100uLL >> (8 * g_LbsOsaTrace_Config);
  }

  if (((*(*gp_Logger + 72))(gp_Logger) & 4) != 0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  BYTE4(v9[2]) = v1;
  v8[20] = v1;
  BYTE5(v9[2]) = v0;
  LOWORD(v9[3]) = vaddvq_s16(vpaddlq_u8(*&v9[1]));
  Hal00_06ReadBufNtf(0x1BuLL, v9);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (((*(*gp_Logger + 72))(gp_Logger) & 4) != 0)
    {
      v3 = "EN";
    }

    else
    {
      v3 = "DIS";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GCPU DEBUG CFG, mixedmode logging %s,loglevel %d\n", v2, "GNM", 73, "Gnm35_15SendDbgCfg", v3, v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v8[21] = v0;
  *&v8[24] = vaddvq_s16(vpaddlq_u8(*&v8[8]));
  Hal00_06ReadBufNtf(0x1BuLL, v8);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (((*(*gp_Logger + 72))(gp_Logger) & 4) != 0)
    {
      v5 = "EN";
    }

    else
    {
      v5 = "DIS";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME DEBUG CFG, mixedmode logging %s,loglevel %d\n", v4, "GNM", 73, "Gnm35_15SendDbgCfg", v5, v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm35_zxFirmwareDebugConf(unsigned __int8 *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1[8] == 32)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a1[4] == 80)
      {
        v3 = "GNSSCPCFG";
      }

      else
      {
        v3 = "GNSSMECFG";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s Success\n", v2, "GNM", 73, "Gnm35_zxFirmwareDebugConf", v3);
      v4 = 4;
LABEL_11:
      gnssOsa_PrintLog(__str, v4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = "GNSSMECFG";
    if (a1[4] == 80)
    {
      v6 = "GNSSCPCFG";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx %s Status,%u\n", v5, "GNM", 87, "Gnm35_zxFirmwareDebugConf", 257, v6, a1[8]);
    v4 = 2;
    goto LABEL_11;
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

void Gnm35_EnableBCTInTimeMarkMessage(void)
{
  v4 = *MEMORY[0x29EDCA608];
  *v3 = __const__Z32Gnm35_EnableBCTInTimeMarkMessagev_a_ConfigurationCommand;
  *&v3[12] = *(&__const__Z32Gnm35_EnableBCTInTimeMarkMessagev_a_ConfigurationCommand + 12);
  Hal00_06ReadBufNtf(0x1CuLL, v3);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: BCT-TimeMark enabled\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm35_EnableBCTInTimeMarkMessage");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = *MEMORY[0x29EDCA608];
}

void gncP01_01DeInitPeUpdate(void)
{
  v1 = *MEMORY[0x29EDCA608];
  GN_GPS_Shutdown();
  gnssOsa_MacDeinitCriticalSection("gncP01_01DeInitPeUpdate", 93, &g_PosUpdateCritic);
  if (qword_2A13EDF58)
  {
    free(qword_2A13EDF58);
  }

  qword_2A13EDF58 = 0;
  v0 = *MEMORY[0x29EDCA608];
}

uint64_t GncP01_32ExecutePE(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v37[271] = *MEMORY[0x29EDCA608];
  GN_GPS_Update();
  memset_s(__s, 0x18E0uLL, 0, 0x18E0uLL);
  if (*qword_2A1454210)
  {
    v1 = *qword_2A1454210 == Last_Published_Nav_Data_TTag;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    goto LABEL_34;
  }

  memcpy(__s, qword_2A1454210, sizeof(__s));
  Last_Published_Nav_Data_TTag = __s[0];
  if (*(*(p_api + 80) + 32) != __s[0])
  {
    memcpy(__s, qword_2A1454210, sizeof(__s));
    Last_Published_Nav_Data_TTag = __s[0];
  }

  if (gnssOsa_MacEnterCriticalSection("GncP01_31Update", 336, &g_PosUpdateCritic))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(v35, 0x3C6uLL);
      v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = 1550;
LABEL_33:
      snprintf(v35, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v2, "GNC", 69, "GncP01_31Update", v3);
      gnssOsa_PrintLog(v35, 1, 1, 0);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  LOWORD(v35[0]) = 0;
  BYTE2(v35[0]) = 0;
  HIDWORD(v35[0]) = 0;
  v35[797] = 0;
  memset_s(v35, 0x18F0uLL, 0, 0x18F0uLL);
  HIDWORD(v35[0]) = v4;
  LOBYTE(v35[0]) = 0;
  if (qword_2A1454210 && *qword_2A1454210)
  {
    memcpy(&v35[1], qword_2A1454210, 0x18E0uLL);
    LOBYTE(v35[0]) = WORD1(v35[3]) != 0;
    BYTE1(v35[0]) = *(*(p_api + 56) + 8972) != 0;
  }

  v5 = 0;
  v6 = BYTE5(v35[42]);
  LOBYTE(v37[0]) = 0;
  *(v37 + 2) = 0;
  memset(&v37[1], 0, 27);
  v7 = 1;
  while (1)
  {
    v8 = v7;
    if (!GncP04_08GetNextSessInstn(v5, v37, 1u))
    {
      break;
    }

    v7 = 0;
    v9 = &v35[797] + 4 * v5;
    v9[1] = v37[0];
    *(v9 + 1) = WORD1(v37[0]);
    *v9 = v6;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      LOBYTE(v5) = 2;
      break;
    }
  }

  BYTE2(v35[0]) = v5;
  if ((v35[0] & 1) == 0 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(v37, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(v37, 0x3C5uLL, "%10u %s%c %s: No Valid Nav\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP01_18UpdateNavData");
    gnssOsa_PrintLog(v37, 2, 1, 0);
  }

  memcpy(g_GncP_PEUpdate, v35, 0x18F0uLL);
  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      v13 = v12;
      v14 = &g_GncPCntxtInfo + 36 * v11;
      if (v14[8] == 1)
      {
        break;
      }

      v12 = 0;
      v11 = 1;
      if ((v13 & 1) == 0)
      {
        v16 = qword_2A13EDF58;
LABEL_27:
        if (v16)
        {
          free(v16);
        }

        qword_2A13EDF58 = 0;
        goto LABEL_30;
      }
    }

    v12 = 0;
    v15 = v14[9];
    v11 = 1;
  }

  while ((v13 & ((v15 & 2) == 0)) != 0);
  v16 = qword_2A13EDF58;
  if ((v15 & 2) == 0)
  {
    goto LABEL_27;
  }

  if (qword_2A13EDF58 || (v16 = gnssOsa_Calloc("GncP01_28UpdateRawMeas", 301, 1, 0x271A0uLL), (qword_2A13EDF58 = v16) != 0))
  {
    v25 = *(*(p_api + 80) + 32);
    if (v25)
    {
      v26 = v25 == Last_Published_Raw_Meas_TTag;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if (!v26)
    {
      API_Get_Raw_Meas_Data(v16);
      Last_Published_Raw_Meas_TTag = v25;
    }

    byte_2A13EDF50 = v27;
    if (g_LbsOsaTrace_Config >= 5)
    {
      v28 = qword_2A13EDF58;
      bzero(v35, 0x3C6uLL);
      v29 = mach_continuous_time();
      snprintf(v35, 0x3C5uLL, "%10u %s%c %s: Klobuchar GPS_secs,%10d,alpha,%10.3e,%10.3e,%10.3e,%10.3e,beta,%9.1f,%9.1f,%9.1f,%9.1f\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 68, "GncP01_28UpdateRawMeas", *(v28 + 160080), *(v28 + 160088), *(v28 + 160096), *(v28 + 160104), *(v28 + 160112), *(v28 + 160120), *(v28 + 160128), *(v28 + 160136), *(v28 + 160144));
      gnssOsa_PrintLog(v35, 5, 1, 0);
    }
  }

LABEL_30:
  if (!gnssOsa_MacExitCriticalSection("GncP01_31Update", 347, &g_PosUpdateCritic))
  {
    GncP03_10SndNewUpdtSM();
    v19 = word_2A13C3B68;
    if (word_2A13C3B68)
    {
      if (qword_2A1454210)
      {
        if (*qword_2A1454210)
        {
          memcpy(v35, qword_2A1454210, 0x18E0uLL);
          v20 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 498, 1, 0x18uLL);
          if (v20)
          {
            v21 = v20;
            v22 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 504, 20480, 1uLL);
            v21[2] = v22;
            if (v22)
            {
              v23 = v22;
              if ((v19 & 0x200) != 0 && qword_2A1454218 && *qword_2A1454218)
              {
                v24 = v37;
                memcpy(v37, qword_2A1454218, 0x878uLL);
              }

              else
              {
                v24 = 0;
              }

              v30 = GN_GPS_Encode_NMEA(0x5000u, v23, v19, v35, v24);
              *(v21 + 6) = v30;
              if (v30)
              {
                if (g_LbsOsaTrace_Config >= 4)
                {
                  bzero(v36, 0x3C6uLL);
                  v31 = mach_continuous_time();
                  snprintf(v36, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 73, "GncP01_51SndNmeaUpdt", *(v21 + 6));
                  gnssOsa_PrintLog(v36, 4, 1, 0);
                }

                AgpsSendFsmMsg(132, 128, 8653571, v21);
                goto LABEL_67;
              }

              if (g_LbsOsaTrace_Config >= 2)
              {
                bzero(v36, 0x3C6uLL);
                v32 = mach_continuous_time();
                snprintf(v36, 0x3C5uLL, "%10u %s%c %s: Encode Failed\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 87, "GncP01_51SndNmeaUpdt");
                gnssOsa_PrintLog(v36, 2, 1, 0);
              }

              v33 = v21[2];
              if (v33)
              {
                free(v33);
              }
            }

            free(v21);
          }
        }
      }
    }

LABEL_67:
    GncP24_55UpdateBceOrbitAssistance(0);
    result = 1;
    goto LABEL_35;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(v35, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = 1551;
    goto LABEL_33;
  }

LABEL_34:
  result = 0;
LABEL_35:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP01_34HandleRespSentInd(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND ID,%u,Type,%u,OSTtag,%u,BBTtag,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP01_34HandleRespSentInd", *(a1 + 14), *(a1 + 12), *(a1 + 16), *(a1 + 20));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 = *(a1 + 12);
    if ((v3 | 2) == 3)
    {
      GN_AGPS_Mark_Response_Sent(*(a1 + 16), *(a1 + 20));
    }

    else
    {
      GN_GPS_Mark_Single_Pos_Used(v3 != 2, *(a1 + 14), *(a1 + 16), *(a1 + 20));
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP01_34HandleRespSentInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}