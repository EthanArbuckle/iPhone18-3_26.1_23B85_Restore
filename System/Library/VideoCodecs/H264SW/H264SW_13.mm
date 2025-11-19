uint64_t sub_27735DE10(uint64_t a1, uint64_t a2)
{
  v220 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 72);
  v11 = *(a1 + 824);
  v12 = *(a1 + 828);
  if (!*(a2 + 20) || !*(a2 + 22))
  {
    v13 = v10 + 408;
    v15 = *(v10 + 34);
    if (*(a2 + 23) == 1)
    {
      v21 = *(a1 + 820);
      v17 = *(v10 + 4) + 32 * v15 * (v21 / (2 * *(a2 + 16))) + ((8 * (v21 % (2 * *(a2 + 16)))) & 0xFFFFFFF0);
      if (v21)
      {
        v19 = 16 * v15;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_16;
    }

    v17 = *(v10 + 4) + (16 * v11);
    v20 = v12 * v15;
LABEL_10:
    v19 = (16 * v20);
    goto LABEL_16;
  }

  v13 = v10 + 472;
  v14 = *(v10 + 34);
  v15 = 2 * v14;
  v16 = *v10;
  v17 = *(v10 + 4) + (16 * v11);
  if (!*(a2 + 21))
  {
    v20 = v12 * v14;
    if (v16)
    {
      v19 = (32 * v20);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v16)
  {
    v18 = 5;
  }

  else
  {
    v18 = 4;
  }

  v19 = ((v12 << v18) * v14);
  v17 += v14;
LABEL_16:
  v22 = v17 + v19;
  v23 = *(a1 + 816);
  v24 = *(a2 + 968);
  v25 = *(a2 + 936);
  v26 = *(a2 + 944);
  v27 = *(a2 + 952);
  v28 = *(a2 + 960);
  v218 = 0;
  v219 = 0;
  v216 = v24;
  v217 = 0;
  if (v25)
  {
    v217 = &v25[16 * (v25[32] != 0)];
    v29 = 1;
    if (v26)
    {
LABEL_18:
      v30 = &v26[16 * (v26[32] != 0)];
      v31 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v29 = 0;
    if (v26)
    {
      goto LABEL_18;
    }
  }

  v30 = 0;
  v31 = 0;
LABEL_21:
  v218 = v30;
  v32 = v27 != 0;
  v33 = v28 != 0;
  if (*(a2 + 928))
  {
    if (v25)
    {
      if (v25[16] == 34)
      {
        v29 = *v25 != 34;
        if (!v26)
        {
          goto LABEL_25;
        }

LABEL_30:
        if (v26[16] == 34)
        {
          v31 = *v26 != 34;
          if (!v27)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v31 = 1;
          if (!v27)
          {
            goto LABEL_32;
          }
        }

LABEL_26:
        if (v27[16] == 34)
        {
          v32 = *v27 != 34;
          if (!v28)
          {
LABEL_28:
            v33 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          v32 = 1;
          if (!v28)
          {
            goto LABEL_28;
          }
        }

LABEL_33:
        v33 = v28[16] != 34 || *v28 != 34;
        goto LABEL_42;
      }

      v29 = 1;
      if (v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v29 = 0;
      if (v26)
      {
        goto LABEL_30;
      }
    }

LABEL_25:
    v31 = 0;
    if (v27)
    {
      goto LABEL_26;
    }

LABEL_32:
    v32 = 0;
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_42:
  v34 = 0;
  v35 = (2 * v32) | (4 * v31) | (8 * v29) | v33;
  v36 = a2 + 112;
  v37 = a1 + 1142;
  v38 = 2 * v15;
  result = 3 * v15;
  v40 = (&unk_2773B4980 + 4 * v35);
  v41.i64[0] = -1;
  v41.i64[1] = -1;
  v42 = vshrq_n_u16(v41, 0xFuLL);
  v43 = vaddq_s16(v42, v42);
  v44 = vdupq_n_s64(0xFFFFFFF0uLL);
  v45 = vdupq_n_s64(0xFFFFFFF8uLL);
  v46.i64[0] = 0x1000100010001;
  v46.i64[1] = 0x1000100010001;
  v47 = vaddq_s16(v46, v46);
  v48 = vdupq_n_s64(0xFFFFFFD0uLL);
  do
  {
    v49 = byte_280A6AA70[v34];
    v50 = byte_280A6AA70[v34 + 16];
    v51 = *(&v216 + (~(2 * v50) & 2));
    v52 = *(&v216 + ((v49 & 1) == 0));
    if (v51)
    {
      v53 = v52 == 0;
    }

    else
    {
      v53 = 1;
    }

    if (v53 || (v54 = *(v52 + ((v49 >> 1) & 0xF)), v55 = *(v51 + ((v50 >> 1) & 0xF)), (*(a2 + 928) & ((v55 | v54) >> 5) & 1) != 0))
    {
      v56 = 2;
    }

    else
    {
      v56 = (((v54 & 0xF) - (v55 & 0xF)) & (((v54 & 0xF) - (v55 & 0xF)) >> 31)) + (v55 & 0xF);
    }

    v58 = *v40;
    v40 += 16;
    v57 = v58;
    v59 = *(v37 + v34);
    if (v56 <= v59)
    {
      ++v59;
    }

    v60 = v59 & (*(v37 + v34 - 20) - 1) | v56 & -*(v37 + v34 - 20);
    *(v24 + v34) = v60;
    v61 = (v22 + *&v13[4 * v34]);
    if (v60 <= 3)
    {
      if (v60 <= 1)
      {
        if (v60)
        {
          if (v60 != 1)
          {
            goto LABEL_187;
          }

          if (v23)
          {
            v70 = (v36 + 2 * byte_2773B4D80[v34]);
            v71 = v61 - v57;
            v72 = *v71 | (*v71 << 8);
            v73 = v71[v15] | (v71[v15] << 8);
            v2.i64[0] = *v70;
            v3.i64[0] = v70[4];
            v4.i32[0] = v72 | (v72 << 16);
            v4 = vzip1q_s8(v4, 0);
            v5.i32[0] = v73 | (v73 << 16);
            v5 = vzip1q_s8(v5, 0);
            v74 = vaddq_s16(v2, v4);
            v75 = vaddq_s16(v3, v5);
            *v74.i8 = vqmovun_s16(v74);
            *v75.i8 = vqmovun_s16(v75);
            *v61 = v74.i32[0];
            *(v61 + v15) = v75.i32[0];
            v76 = v71[v38] | (v71[v38] << 8);
            LODWORD(v71) = v71[result] | (v71[result] << 8);
            v74.i32[0] = v76 | (v76 << 16);
            v75.i32[0] = v71 | (v71 << 16);
            v4.i64[0] = v70[8];
            v5.i64[0] = v70[12];
            v2 = vaddq_s16(v4, vzip1q_s8(v74, 0));
            v3 = vaddq_s16(v5, vzip1q_s8(v75, 0));
            goto LABEL_128;
          }

          v98 = v61 - v57;
          v99 = *v98 | (*v98 << 8);
          v100 = v98[v15] | (v98[v15] << 8);
          *v61 = v99 | (v99 << 16);
          *(v61 + v15) = v100 | (v100 << 16);
          v101 = v98[v38] | (v98[v38] << 8);
          LODWORD(v98) = v98[result] | (v98[result] << 8);
          v102 = v98 | (v98 << 16);
          *(v61 + v38) = v101 | (v101 << 16);
          goto LABEL_180;
        }

        if (v23)
        {
          v82 = (v36 + 2 * byte_2773B4D80[v34]);
          v2.i64[0] = *v82;
          v3.i64[0] = v82[4];
          v4.i64[0] = v82[8];
          v5.i64[0] = v82[12];
          LODWORD(v6) = *(v61 - BYTE1(v57) * v15);
LABEL_161:
          v6 = vzip1q_s8(v6, 0);
          v2 = vaddq_s16(v2, v6);
          v3 = vaddq_s16(v3, v6);
          v4 = vaddq_s16(v4, v6);
          v5 = vaddq_s16(v5, v6);
          *v61 = vqmovun_s16(v2).u32[0];
          *(v61 + v15) = vqmovun_s16(v3).u32[0];
          *v2.i8 = vqmovun_s16(v4);
          *v3.i8 = vqmovun_s16(v5);
          goto LABEL_162;
        }

        v102 = *(v61 - BYTE1(v57) * v15);
LABEL_179:
        *v61 = v102;
        *(v61 + v15) = v102;
        *(v61 + v38) = v102;
LABEL_180:
        *(v61 + result) = v102;
        goto LABEL_187;
      }

      if (v60 != 2)
      {
        if ((v57 & 0xFF00) != 0)
        {
          v77 = -v15;
        }

        else
        {
          v77 = 0;
        }

        if (v23)
        {
          v78 = *(v61 + v77);
          if ((v57 & 0xFF0000) != 0)
          {
            v79 = *(v61 - v15 + 4);
          }

          else
          {
            v79 = v78 & 0xFF000000 | ((v78 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v78 & 0xFF000000 | ((v78 & 0xFF000000) >> 8)) >> 16);
          }

          v124 = (v36 + 2 * byte_2773B4D80[v34]);
          v3.i32[0] = v79;
          v125 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v78), 0);
          v126 = vaddq_s16(v43, vqtbl1q_s8(vextq_s8(v125, 0, 4uLL), xmmword_2773B4240));
          v127 = vaddq_s16(v126, vaddq_s16(vextq_s8(vaddq_s16(v125, v125), 0, 2uLL), v125));
          v128 = vshrq_n_u16(v127, 2uLL);
          v126.i64[0] = *v124;
          v5.i64[0] = v124[4];
          *&v6 = v124[8];
          v7.i64[0] = v124[12];
          v4 = vsraq_n_u16(v126, v127, 2uLL);
          v2 = vaddq_s16(v5, vextq_s8(v128, 0, 2uLL));
          v5 = vaddq_s16(v6, vextq_s8(v128, 0, 4uLL));
          v3 = vaddq_s16(v7, vextq_s8(v128, 0, 6uLL));
          *v4.i8 = vqmovun_s16(v4);
          *v61 = v4.i32[0];
          *(v61 + v15) = vqmovun_s16(v2).u32[0];
          *v2.i8 = vqmovun_s16(v5);
          goto LABEL_129;
        }

        v103 = *(v61 + v77);
        if ((v57 & 0xFF0000) != 0)
        {
          v104 = *(v61 - v15 + 4);
        }

        else
        {
          v104 = v103 & 0xFF000000 | ((v103 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v103 & 0xFF000000 | ((v103 & 0xFF000000) >> 8)) >> 16);
        }

        v3.i32[0] = v104;
        v153 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v103), 0);
        v3 = vextq_s8(vaddq_s16(v153, v153), 0, 2uLL);
        v154 = vshrq_n_u16(vaddq_s16(vaddq_s16(v43, vqtbl1q_s8(vextq_s8(v153, 0, 4uLL), xmmword_2773B4240)), vaddq_s16(v3, v153)), 2uLL);
        *v3.i8 = vqmovun_s16(v154);
        v4 = vextq_s8(v154, 0, 2uLL);
        *v4.i8 = vqmovun_s16(v4);
        v5 = vextq_s8(v154, 0, 4uLL);
        *v5.i8 = vqmovun_s16(v5);
        *v61 = v3.i32[0];
        *(v61 + v15) = v4.i32[0];
        v2 = vextq_s8(v154, 0, 6uLL);
LABEL_151:
        *v2.i8 = vqmovun_s16(v2);
        *(v61 + v38) = v5.i32[0];
LABEL_186:
        *(v61 + result) = v2.i32[0];
        goto LABEL_187;
      }

      v83 = BYTE1(v57);
      if (v23)
      {
        if (v57)
        {
          v84 = *(v61 - 1);
          v85 = *(v61 + v15 - 1);
          v86 = *(v61 + v38 - 1);
          v87 = *(v61 + result - 1);
          if (v83)
          {
            v2.i32[0] = *(v61 - v15);
            v2 = vmovl_u16(*&vmovl_u8(*v2.i8));
            v88 = (vaddvq_s32(v2) + v87 + v86 + v85 + v84 + 4) >> 3;
LABEL_160:
            v183 = (v36 + 2 * byte_2773B4D80[v34]);
            v2.i64[0] = *v183;
            v3.i64[0] = v183[4];
            v4.i64[0] = v183[8];
            v5.i64[0] = v183[12];
            v6 = v88 | (v88 << 8) | ((v88 | (v88 << 8)) << 16);
            goto LABEL_161;
          }

          v130 = v84 + v85 + v86 + v87;
        }

        else
        {
          if (!BYTE1(v57))
          {
            v88 = 128;
            goto LABEL_160;
          }

          v2.i32[0] = *(v61 - v15);
          v2 = vmovl_u8(*v2.i8);
          v2.i16[0] = vaddv_s16(*v2.i8);
          v130 = v2.i32[0];
        }

        v88 = (v130 + 2) >> 2;
        goto LABEL_160;
      }

      if (v57)
      {
        v107 = *(v61 - 1);
        v108 = *(v61 + v15 - 1);
        v109 = *(v61 + v38 - 1);
        v110 = *(v61 + result - 1);
        if (v83)
        {
          v2.i32[0] = *(v61 - v15);
          v2 = vmovl_u16(*&vmovl_u8(*v2.i8));
          v111 = (vaddvq_s32(v2) + v110 + v109 + v108 + v107 + 4) >> 3;
LABEL_178:
          v102 = v111 | (v111 << 8) | ((v111 | (v111 << 8)) << 16);
          goto LABEL_179;
        }

        v156 = v107 + v108 + v109 + v110;
      }

      else
      {
        if (!BYTE1(v57))
        {
          v111 = 128;
          goto LABEL_178;
        }

        v2.i32[0] = *(v61 - v15);
        v2 = vmovl_u8(*v2.i8);
        v2.i16[0] = vaddv_s16(*v2.i8);
        v156 = v2.i32[0];
      }

      v111 = (v156 + 2) >> 2;
      goto LABEL_178;
    }

    if (v60 <= 5)
    {
      if (v60 != 4)
      {
        if (v23)
        {
          if (v57)
          {
            if (BYTE1(v57))
            {
              v80 = *(v61 - v15);
              v81 = v80 | (*(v61 - v15 - 1) << 8);
            }

            else
            {
              v80 = *v61;
              v81 = *v61 | (*v61 << 8);
            }

            v143 = *(v61 - 1) | (*(v61 + v15 - 1) << 8);
            v144 = v61 + v38 - 1;
          }

          else
          {
            if (BYTE1(v57))
            {
              v80 = *(v61 - v15);
              v81 = v80 | (v80 << 8);
              v129 = *v61;
            }

            else
            {
              v80 = *v61;
              v129 = *v61;
              v81 = v129 | (v129 << 8);
            }

            v143 = v129 | (*(v61 + v15) << 8);
            v144 = v61 + v38;
          }

          v169 = v81;
          v170 = vdupq_n_s64(0xFFFFFFF8uLL);
          v171 = (v36 + 2 * byte_2773B4D80[v34]);
          v172 = vorrq_s8(vshlq_n_s64(v80, 8uLL), vshlq_u64(v169, v170));
          v173 = vorrq_s8(vshlq_n_s64((v143 | (*v144 << 16)), 0x10uLL), v169);
          v174 = vzip1q_s8(vshlq_u64(v172, v170), 0);
          v7 = vdupq_n_s64(0xFFFFFFF0uLL);
          v175 = vaddq_s16(v174, vzip1q_s8(v172, 0));
          v176 = vaddq_s16(v175, v46);
          v9 = vshrq_n_u16(v176, 1uLL);
          v6 = vaddq_s16(v47, v174);
          v177 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v175), vzip1q_s8(vshlq_u64(v172, v7), 0)), 2uLL);
          v178 = vzip1q_s8(vshlq_u64(v173, v170), 0);
          v179 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v173, 0)), vzip1q_s8(vshlq_u64(v173, v7), 0)), vaddq_s16(v178, v178)), 2uLL);
          v180 = vextq_s8(0, v9, 0xEuLL);
          v181 = vorrq_s8(v180, vshlq_u64(vshlq_n_s64(v179, 0x20uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
          v182 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v179, xmmword_2773B4480), 0), v177, 0xCuLL);
          v177.i64[0] = *v171;
          v180.i64[0] = v171[4];
          *&v6 = v171[8];
          v7.i64[0] = v171[12];
          v3 = vsraq_n_u16(v177, v176, 1uLL);
          v8 = vextq_s8(v182, 0, 2uLL);
          v5 = vaddq_s16(v8, v180);
          v4 = vaddq_s16(v6, v181);
          v2 = vaddq_s16(v7, v182);
          v3.i32[0] = vqmovun_s16(v3).u32[0];
        }

        else
        {
          if (v57)
          {
            if (BYTE1(v57))
            {
              v105 = *(v61 - v15);
              v106 = v105 | (*(v61 - v15 - 1) << 8);
            }

            else
            {
              v105 = *v61;
              v106 = *v61 | (*v61 << 8);
            }

            v167 = *(v61 - 1) | (*(v61 + v15 - 1) << 8);
            v168 = v61 + v38 - 1;
          }

          else
          {
            if (BYTE1(v57))
            {
              v105 = *(v61 - v15);
              v106 = v105 | (v105 << 8);
              v155 = *v61;
            }

            else
            {
              v105 = *v61;
              v155 = *v61;
              v106 = v155 | (v155 << 8);
            }

            v167 = v155 | (*(v61 + v15) << 8);
            v168 = v61 + v38;
          }

          v201 = vdupq_n_s64(0xFFFFFFF8uLL);
          v202 = vorrq_s8(vshlq_n_s64(v105, 8uLL), vshlq_u64(v106, v201));
          v203 = vorrq_s8(vshlq_n_s64((v167 | (*v168 << 16)), 0x10uLL), v106);
          v204 = vzip1q_s8(vshlq_u64(v202, v201), 0);
          v7 = vdupq_n_s64(0xFFFFFFF0uLL);
          v205 = vaddq_s16(v204, vzip1q_s8(v202, 0));
          v8 = vshrq_n_u16(vaddq_s16(v205, v46), 1uLL);
          v6 = vaddq_s16(v47, v204);
          v3 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v205), vzip1q_s8(vshlq_u64(v202, v7), 0)), 2uLL);
          v206 = vzip1q_s8(vshlq_u64(v203, v201), 0);
          v207 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v203, 0)), vzip1q_s8(vshlq_u64(v203, v7), 0)), vaddq_s16(v206, v206)), 2uLL);
          v4 = vorrq_s8(vextq_s8(0, v8, 0xEuLL), vshlq_u64(vshlq_n_s64(v207, 0x20uLL), v48));
          v2 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v207, xmmword_2773B4480), 0), v3, 0xCuLL);
          v3.i32[0] = vqmovun_s16(v8).u32[0];
          v5 = vextq_s8(v2, 0, 2uLL);
        }

        *v5.i8 = vqmovun_s16(v5);
        *v61 = v3.i32[0];
        *(v61 + v15) = v5.i32[0];
        *v3.i8 = vqmovun_s16(v4);
        goto LABEL_185;
      }

      if (v23)
      {
        if (v57)
        {
          if (BYTE1(v57))
          {
            v93 = *(v61 - v15);
            v94 = *(v61 - v15 - 1);
          }

          else
          {
            v93 = *v61;
            v94 = *v61;
          }

          v135 = *(v61 + result - 1) | (*(v61 + v38 - 1) << 8) | (*(v61 + v15 - 1) << 16);
          v136 = *(v61 - 1);
        }

        else if (BYTE1(v57))
        {
          v93 = *(v61 - v15);
          v94 = v93;
          v135 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
          v136 = *v61;
        }

        else
        {
          v136 = *v61;
          v94 = *v61;
          v135 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
          v93 = *v61;
        }

        v145 = (v36 + 2 * byte_2773B4D80[v34]);
        v146 = v135 | (v136 << 24);
        v147 = vorrq_s8(vshlq_n_s64(v93, 8uLL), v94);
        v148 = vdupq_n_s64(0xFFFFFFF0uLL);
        v149 = vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v146, v148), vshlq_n_s64(v147, 0x10uLL)), xmmword_2773B3E30), 0);
        v150 = vshlq_u64(v146, vdupq_n_s64(0xFFFFFFF8uLL));
        v151 = vzip1q_s8(vorrq_s8(v150, vshlq_n_s64(v147, 0x18uLL)), 0);
        v6 = vaddq_s16(v151, v151);
        v2 = vaddq_s16(vaddq_s16(v6, v149), vaddq_s16(v43, vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v147, v148), 0x20uLL), v146), 0)));
        v152 = vshrq_n_u16(v2, 2uLL);
        v149.i64[0] = v145[4];
        *&v6 = v145[8];
        v150.i64[0] = v145[12];
        v4 = vaddq_s16(*v145, vextq_s8(v152, 0, 6uLL));
        v8 = vextq_s8(v152, 0, 4uLL);
        v5 = vaddq_s16(v149, v8);
        v3 = vaddq_s16(v6, vextq_s8(v152, 0, 2uLL));
        v7 = vsraq_n_u16(v150, v2, 2uLL);
        v2.i32[0] = vqmovun_s16(v4).u32[0];
        *v4.i8 = vqmovun_s16(v5);
        *v61 = v2.i32[0];
        *(v61 + v15) = v4.i32[0];
        *v2.i8 = vqmovun_s16(v3);
        *v3.i8 = vqmovun_s16(v7);
        goto LABEL_162;
      }

      if (v57)
      {
        if (BYTE1(v57))
        {
          v116 = *(v61 - v15);
          v117 = *(v61 - v15 - 1);
        }

        else
        {
          v116 = *v61;
          v117 = *v61;
        }

        v161 = *(v61 + result - 1) | (*(v61 + v38 - 1) << 8) | (*(v61 + v15 - 1) << 16);
        v162 = *(v61 - 1);
      }

      else if (BYTE1(v57))
      {
        v116 = *(v61 - v15);
        v117 = v116;
        v161 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
        v162 = *v61;
      }

      else
      {
        v162 = *v61;
        v117 = *v61;
        v161 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
        v116 = *v61;
      }

      v198 = v161 | (v162 << 24);
      v199 = vorrq_s8(vshlq_n_s64(v116, 8uLL), v117);
      v6 = vshlq_u64(v198, v45);
      v200 = vzip1q_s8(vorrq_s8(v6, vshlq_n_s64(v199, 0x18uLL)), 0);
      v2 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v200, v200), vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v198, v44), vshlq_n_s64(v199, 0x10uLL)), xmmword_2773B3E30), 0)), vaddq_s16(v43, vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v199, v44), 0x20uLL), v198), 0))), 2uLL);
      v3 = vextq_s8(v2, 0, 6uLL);
      v3.i32[0] = vqmovun_s16(v3).u32[0];
      v4 = vextq_s8(v2, 0, 4uLL);
      *v4.i8 = vqmovun_s16(v4);
      v5 = vextq_s8(v2, 0, 2uLL);
      goto LABEL_171;
    }

    switch(v60)
    {
      case 6:
        if (v23)
        {
          if (v57)
          {
            if (BYTE1(v57))
            {
              v89 = *(v61 - v15);
              v90 = *(v61 - 1);
              v91 = (*(v61 + v38 - 1) << 16) | (*(v61 + v15 - 1) << 8) | (*(v61 + result - 1) << 24) | v90;
              v92 = v90 | (*(v61 - v15 - 1) << 8);
LABEL_167:
              v184 = v92;
              v185 = (v36 + 2 * byte_2773B4D80[v34]);
              v186 = vdupq_n_s64(0xFFFFFFF8uLL);
              v187 = vorrq_s8(vshlq_n_s64(v91, 8uLL), vshlq_u64(v184, v186));
              v188 = vorrq_s8(vshlq_n_s64(v89, 0x10uLL), v184);
              v189 = vzip1q_s8(vshlq_u64(v187, v186), 0);
              v7 = vdupq_n_s64(0xFFFFFFF0uLL);
              v190 = vaddq_s16(v189, vzip1q_s8(v187, 0));
              v8 = vshrq_n_u16(vaddq_s16(v190, v46), 1uLL);
              v6 = vaddq_s16(v47, v189);
              v191 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v190), vzip1q_s8(vshlq_u64(v187, v7), 0)), 2uLL);
              v192 = vzip1q_s8(vshlq_u64(v188, v186), 0);
              v193 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v188, 0)), vzip1q_s8(vshlq_u64(v188, v7), 0)), vaddq_s16(v192, v192)), 2uLL);
              v194 = vorrq_s8(vshlq_n_s64(v193, 0x10uLL), vshlq_u64(vshlq_n_s64(v8, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
              v195 = vzip1q_s32(vqtbl1q_s8(v8, xmmword_2773B4450), 0);
              v196 = vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v191, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v193, 2uLL), 0x10uLL), v195)), xmmword_2773B4460);
              v191.i64[1] = 0xF0E0D0C0B0A0908;
              v197 = vqtbl1q_s8(v196, xmmword_2773B4470);
              v191.i64[0] = *v185;
              v195.i64[0] = v185[4];
              *&v6 = v185[8];
              v7.i64[0] = v185[12];
              v3 = vaddq_s16(v191, v194);
              v4 = vaddq_s16(v195, vdupq_laneq_s64(v197, 1));
              v5 = vaddq_s16(v6, vextq_s8(v197, 0, 4uLL));
              v2 = vaddq_s16(v7, v197);
              v3.i32[0] = vqmovun_s16(v3).u32[0];
              *v4.i8 = vqmovun_s16(v4);
LABEL_171:
              *v61 = v3.i32[0];
              *(v61 + v15) = v4.i32[0];
LABEL_184:
              *v3.i8 = vqmovun_s16(v5);
LABEL_185:
              *v2.i8 = vqmovun_s16(v2);
              *(v61 + v38) = v3.i32[0];
              goto LABEL_186;
            }

            v89 = *v61;
            v131 = *(v61 - 1);
            v132 = *(v61 + v15 - 1);
            v133 = *(v61 + v38 - 1) << 16;
            v134 = *(v61 + result - 1);
LABEL_135:
            v91 = v133 | (v132 << 8) | (v134 << 24) | v131;
          }

          else
          {
            if (BYTE1(v57))
            {
              v89 = *(v61 - v15);
              v131 = *v61;
              v132 = *(v61 + v15);
              v133 = *(v61 + v38) << 16;
              v134 = *(v61 + result);
              goto LABEL_135;
            }

            v89 = *v61;
            v131 = *v61;
            v91 = (*(v61 + v38) << 16) | (*(v61 + v15) << 8) | (*(v61 + result) << 24) | v131;
          }

          v92 = v131 & 0xFFFF00FF | (v89 << 8);
          goto LABEL_167;
        }

        if (v57)
        {
          if (BYTE1(v57))
          {
            v112 = *(v61 - v15);
            v113 = *(v61 - 1);
            v114 = (*(v61 + v38 - 1) << 16) | (*(v61 + v15 - 1) << 8) | (*(v61 + result - 1) << 24) | v113;
            v115 = v113 | (*(v61 - v15 - 1) << 8);
LABEL_183:
            v208 = vdupq_n_s64(0xFFFFFFF8uLL);
            v209 = vorrq_s8(vshlq_n_s64(v114, 8uLL), vshlq_u64(v115, v208));
            v210 = vorrq_s8(vshlq_n_s64(v112, 0x10uLL), v115);
            v211 = vzip1q_s8(vshlq_u64(v209, v208), 0);
            v7 = vdupq_n_s64(0xFFFFFFF0uLL);
            v212 = vaddq_s16(v211, vzip1q_s8(v209, 0));
            v8 = vshrq_n_u16(vaddq_s16(v212, v46), 1uLL);
            v6 = vaddq_s16(v47, v211);
            v213 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v212), vzip1q_s8(vshlq_u64(v209, v7), 0)), 2uLL);
            v214 = vzip1q_s8(vshlq_u64(v210, v208), 0);
            v215 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v210, 0)), vzip1q_s8(vshlq_u64(v210, v7), 0)), vaddq_s16(v214, v214)), 2uLL);
            v4 = vorrq_s8(vshlq_n_s64(v215, 0x10uLL), vshlq_u64(vshlq_n_s64(v8, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
            v2 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v213, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v215, 2uLL), 0x10uLL), vzip1q_s32(vqtbl1q_s8(v8, xmmword_2773B4450), 0))), xmmword_2773B4460), xmmword_2773B4470);
            v3 = vdupq_laneq_s64(v2, 1);
            *v4.i8 = vqmovun_s16(v4);
            v5 = vextq_s8(v2, 0, 4uLL);
            *v61 = v4.i32[0];
            *(v61 + v15) = vqmovun_s16(v3).u32[0];
            goto LABEL_184;
          }

          v112 = *v61;
          v157 = *(v61 - 1);
          v158 = *(v61 + v15 - 1);
          v159 = *(v61 + v38 - 1) << 16;
          v160 = *(v61 + result - 1);
LABEL_164:
          v114 = v159 | (v158 << 8) | (v160 << 24) | v157;
        }

        else
        {
          if (BYTE1(v57))
          {
            v112 = *(v61 - v15);
            v157 = *v61;
            v158 = *(v61 + v15);
            v159 = *(v61 + v38) << 16;
            v160 = *(v61 + result);
            goto LABEL_164;
          }

          v112 = *v61;
          v157 = *v61;
          v114 = (*(v61 + v38) << 16) | (*(v61 + v15) << 8) | (*(v61 + result) << 24) | v157;
        }

        v115 = v157 & 0xFFFF00FF | (v112 << 8);
        goto LABEL_183;
      case 7:
        if ((v57 & 0xFF00) != 0)
        {
          v95 = -v15;
        }

        else
        {
          v95 = 0;
        }

        if (v23)
        {
          v96 = *(v61 + v95);
          if ((v57 & 0xFF0000) != 0)
          {
            v97 = *(v61 - v15 + 4);
          }

          else
          {
            v97 = v96 & 0xFF000000 | ((v96 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v96 & 0xFF000000 | ((v96 & 0xFF000000) >> 8)) >> 16);
          }

          v137 = (v36 + 2 * byte_2773B4D80[v34]);
          v3.i32[0] = v97;
          v138 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v96), 0);
          v139 = vextq_s8(v138, 0, 2uLL);
          v140 = vaddq_s16(v139, v138);
          v5 = vaddq_s16(v140, v46);
          v6 = vshrq_n_u16(v5, 1uLL);
          v141 = vaddq_s16(vaddq_s16(vaddq_s16(v47, v139), vextq_s8(v138, 0, 4uLL)), v140);
          v142 = vshrq_n_u16(v141, 2uLL);
          v140.i64[0] = *v137;
          v7.i64[0] = v137[4];
          v8.i64[0] = v137[8];
          v9.i64[0] = v137[12];
          v4 = vsraq_n_u16(v140, v5, 1uLL);
          v7 = vsraq_n_u16(v7, v141, 2uLL);
          v2 = vaddq_s16(v8, vextq_s8(v6, 0, 2uLL));
          v3 = vaddq_s16(v9, vextq_s8(v142, 0, 2uLL));
          *v4.i8 = vqmovun_s16(v4);
          *v5.i8 = vqmovun_s16(v7);
          *v61 = v4.i32[0];
          *(v61 + v15) = v5.i32[0];
LABEL_128:
          *v2.i8 = vqmovun_s16(v2);
LABEL_129:
          *v3.i8 = vqmovun_s16(v3);
LABEL_162:
          *(v61 + v38) = v2.i32[0];
          *(v61 + result) = v3.i32[0];
          break;
        }

        v122 = *(v61 + v95);
        if ((v57 & 0xFF0000) != 0)
        {
          v123 = *(v61 - v15 + 4);
        }

        else
        {
          v123 = v122 & 0xFF000000 | ((v122 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v122 & 0xFF000000 | ((v122 & 0xFF000000) >> 8)) >> 16);
        }

        v3.i32[0] = v123;
        v163 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v122), 0);
        v164 = vextq_s8(v163, 0, 2uLL);
        v4 = vaddq_s16(v164, v163);
        v165 = vshrq_n_u16(vaddq_s16(v4, v46), 1uLL);
        v3 = vaddq_s16(v47, v164);
        v166 = vshrq_n_u16(vaddq_s16(vaddq_s16(v3, vextq_s8(v163, 0, 4uLL)), v4), 2uLL);
        *v3.i8 = vqmovun_s16(v165);
        *v4.i8 = vqmovun_s16(v166);
        v5 = vextq_s8(v165, 0, 2uLL);
        *v5.i8 = vqmovun_s16(v5);
        *v61 = v3.i32[0];
        *(v61 + v15) = v4.i32[0];
        v2 = vextq_s8(v166, 0, 2uLL);
        goto LABEL_151;
      case 8:
        if (v23)
        {
          v62 = (v36 + 2 * byte_2773B4D80[v34]);
          v63 = vzip1q_s8((*(v61 - v57) | (*(v61 + v15 - v57) << 8) | (*(v61 + v38 - v57) << 16) | (*(v61 + result - v57) << 24)), 0);
          v64 = vextq_s8(v63, 0, 2uLL);
          v65 = vaddq_s16(v64, v63);
          v66 = vqtbl1q_s8(vextq_s8(v63, 0, 4uLL), xmmword_2773B4250);
          v6 = vshrq_n_u16(vaddq_s16(v65, v46), 1uLL);
          v67 = vqtbl1q_s8(v63, xmmword_2773B4430);
          v68 = vzip1q_s16(v6, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, v64), v66), v65), 2uLL));
          v69 = vextq_s8(vdupq_laneq_s32(v68, 2), v67, 0xCuLL);
          v66.i64[0] = *v62;
          *&v6 = v62[4];
          v7.i64[0] = v62[8];
          v8.i64[0] = v62[12];
          v5 = vaddq_s16(v68, v66);
          v3 = vaddq_s16(v6, vextq_s8(v68, 0, 4uLL));
          v4 = vaddq_s16(v7, v69);
          v2 = vaddq_s16(v8, v67);
          *v5.i8 = vqmovun_s16(v5);
        }

        else
        {
          v118 = vzip1q_s8((*(v61 - v57) | (*(v61 + v15 - v57) << 8) | (*(v61 + v38 - v57) << 16) | (*(v61 + result - v57) << 24)), 0);
          v119 = vextq_s8(v118, 0, 2uLL);
          v120 = vaddq_s16(v119, v118);
          v5 = vqtbl1q_s8(vextq_s8(v118, 0, 4uLL), xmmword_2773B4250);
          v6 = vshrq_n_u16(vaddq_s16(v120, v46), 1uLL);
          v2 = vqtbl1q_s8(v118, xmmword_2773B4430);
          v121 = vzip1q_s16(v6, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, v119), v5), v120), 2uLL));
          v4 = vextq_s8(vdupq_laneq_s32(v121, 2), v2, 0xCuLL);
          *v5.i8 = vqmovun_s16(v121);
          v3 = vextq_s8(v121, 0, 4uLL);
        }

        *v3.i8 = vqmovun_s16(v3);
        *v4.i8 = vqmovun_s16(v4);
        *v61 = v5.i32[0];
        *(v61 + v15) = v3.i32[0];
        *v2.i8 = vqmovun_s16(v2);
        *(v61 + v38) = v4.i32[0];
        *(v61 + result) = v2.i32[0];
        break;
    }

LABEL_187:
    ++v34;
  }

  while (v34 != 16);
  return result;
}

uint64_t sub_27735F1F8(uint64_t a1, uint64_t a2)
{
  v220 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 72);
  v11 = *(a1 + 824);
  v12 = *(a1 + 828);
  if (!*(a2 + 20) || !*(a2 + 22))
  {
    v13 = v10 + 408;
    v15 = *(v10 + 34);
    if (*(a2 + 23) == 1)
    {
      v21 = *(a1 + 820);
      v17 = *(v10 + 4) + 32 * v15 * (v21 / (2 * *(a2 + 16))) + ((8 * (v21 % (2 * *(a2 + 16)))) & 0xFFFFFFF0);
      if (v21)
      {
        v19 = 16 * v15;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_16;
    }

    v17 = *(v10 + 4) + (16 * v11);
    v20 = v12 * v15;
LABEL_10:
    v19 = (16 * v20);
    goto LABEL_16;
  }

  v13 = v10 + 472;
  v14 = *(v10 + 34);
  v15 = 2 * v14;
  v16 = *v10;
  v17 = *(v10 + 4) + (16 * v11);
  if (!*(a2 + 21))
  {
    v20 = v12 * v14;
    if (v16)
    {
      v19 = (32 * v20);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v16)
  {
    v18 = 5;
  }

  else
  {
    v18 = 4;
  }

  v19 = ((v12 << v18) * v14);
  v17 += v14;
LABEL_16:
  v22 = v17 + v19;
  v23 = *(a1 + 816);
  v24 = *(a2 + 968);
  v25 = *(a2 + 936);
  v26 = *(a2 + 944);
  v27 = *(a2 + 952);
  v28 = *(a2 + 960);
  v218 = 0;
  v219 = 0;
  v216 = v24;
  v217 = 0;
  if (v25)
  {
    v217 = &v25[16 * (v25[32] != 0)];
    v29 = 1;
    if (v26)
    {
LABEL_18:
      v30 = &v26[16 * (v26[32] != 0)];
      v31 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v29 = 0;
    if (v26)
    {
      goto LABEL_18;
    }
  }

  v30 = 0;
  v31 = 0;
LABEL_21:
  v218 = v30;
  v32 = v27 != 0;
  v33 = v28 != 0;
  if (*(a2 + 928))
  {
    if (!v25 || v25[16] == 34 || *v25 == 34)
    {
      v29 = 0;
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = 1;
      if (!v26)
      {
        goto LABEL_31;
      }
    }

    if (v26[16] != 34 && *v26 != 34)
    {
      v31 = 1;
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    v31 = 0;
    if (!v27)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (v27[16] != 34 && *v27 != 34)
    {
      v32 = 1;
      if (!v28)
      {
        goto LABEL_39;
      }

LABEL_35:
      if (v28[16] != 34 && *v28 != 34)
      {
        v33 = 1;
        goto LABEL_40;
      }

LABEL_39:
      v33 = 0;
      goto LABEL_40;
    }

LABEL_34:
    v32 = 0;
    if (!v28)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_40:
  v34 = 0;
  v35 = (2 * v32) | (4 * v31) | (8 * v29) | v33;
  v36 = a2 + 112;
  v37 = a1 + 1142;
  v38 = 2 * v15;
  result = 3 * v15;
  v40 = (&unk_2773B4980 + 4 * v35);
  v41.i64[0] = -1;
  v41.i64[1] = -1;
  v42 = vshrq_n_u16(v41, 0xFuLL);
  v43 = vaddq_s16(v42, v42);
  v44 = vdupq_n_s64(0xFFFFFFF0uLL);
  v45 = vdupq_n_s64(0xFFFFFFF8uLL);
  v46.i64[0] = 0x1000100010001;
  v46.i64[1] = 0x1000100010001;
  v47 = vaddq_s16(v46, v46);
  v48 = vdupq_n_s64(0xFFFFFFD0uLL);
  do
  {
    v49 = byte_280A6AA70[v34];
    v50 = byte_280A6AA70[v34 + 16];
    v51 = *(&v216 + (~(2 * v50) & 2));
    v52 = *(&v216 + ((v49 & 1) == 0));
    if (v51)
    {
      v53 = v52 == 0;
    }

    else
    {
      v53 = 1;
    }

    if (v53 || (v54 = *(v52 + ((v49 >> 1) & 0xF)), v55 = *(v51 + ((v50 >> 1) & 0xF)), (*(a2 + 928) & ((v55 | v54) >> 5) & 1) != 0))
    {
      v56 = 2;
    }

    else
    {
      v56 = (((v54 & 0xF) - (v55 & 0xF)) & (((v54 & 0xF) - (v55 & 0xF)) >> 31)) + (v55 & 0xF);
    }

    v58 = *v40;
    v40 += 16;
    v57 = v58;
    v59 = *(v37 + v34);
    if (v56 <= v59)
    {
      ++v59;
    }

    v60 = v59 & (*(v37 + v34 - 20) - 1) | v56 & -*(v37 + v34 - 20);
    *(v24 + v34) = v60;
    v61 = (v22 + *&v13[4 * v34]);
    if (v60 <= 3)
    {
      if (v60 <= 1)
      {
        if (v60)
        {
          if (v60 != 1)
          {
            goto LABEL_185;
          }

          if (v23)
          {
            v70 = (v36 + 2 * byte_2773B4D80[v34]);
            v71 = v61 - v57;
            v72 = *v71 | (*v71 << 8);
            v73 = v71[v15] | (v71[v15] << 8);
            v2.i64[0] = *v70;
            v3.i64[0] = v70[4];
            v4.i32[0] = v72 | (v72 << 16);
            v4 = vzip1q_s8(v4, 0);
            v5.i32[0] = v73 | (v73 << 16);
            v5 = vzip1q_s8(v5, 0);
            v74 = vaddq_s16(v2, v4);
            v75 = vaddq_s16(v3, v5);
            *v74.i8 = vqmovun_s16(v74);
            *v75.i8 = vqmovun_s16(v75);
            *v61 = v74.i32[0];
            *(v61 + v15) = v75.i32[0];
            v76 = v71[v38] | (v71[v38] << 8);
            LODWORD(v71) = v71[result] | (v71[result] << 8);
            v74.i32[0] = v76 | (v76 << 16);
            v75.i32[0] = v71 | (v71 << 16);
            v4.i64[0] = v70[8];
            v5.i64[0] = v70[12];
            v2 = vaddq_s16(v4, vzip1q_s8(v74, 0));
            v3 = vaddq_s16(v5, vzip1q_s8(v75, 0));
            goto LABEL_126;
          }

          v98 = v61 - v57;
          v99 = *v98 | (*v98 << 8);
          v100 = v98[v15] | (v98[v15] << 8);
          *v61 = v99 | (v99 << 16);
          *(v61 + v15) = v100 | (v100 << 16);
          v101 = v98[v38] | (v98[v38] << 8);
          LODWORD(v98) = v98[result] | (v98[result] << 8);
          v102 = v98 | (v98 << 16);
          *(v61 + v38) = v101 | (v101 << 16);
          goto LABEL_178;
        }

        if (v23)
        {
          v82 = (v36 + 2 * byte_2773B4D80[v34]);
          v2.i64[0] = *v82;
          v3.i64[0] = v82[4];
          v4.i64[0] = v82[8];
          v5.i64[0] = v82[12];
          LODWORD(v6) = *(v61 - BYTE1(v57) * v15);
LABEL_159:
          v6 = vzip1q_s8(v6, 0);
          v2 = vaddq_s16(v2, v6);
          v3 = vaddq_s16(v3, v6);
          v4 = vaddq_s16(v4, v6);
          v5 = vaddq_s16(v5, v6);
          *v61 = vqmovun_s16(v2).u32[0];
          *(v61 + v15) = vqmovun_s16(v3).u32[0];
          *v2.i8 = vqmovun_s16(v4);
          *v3.i8 = vqmovun_s16(v5);
          goto LABEL_160;
        }

        v102 = *(v61 - BYTE1(v57) * v15);
LABEL_177:
        *v61 = v102;
        *(v61 + v15) = v102;
        *(v61 + v38) = v102;
LABEL_178:
        *(v61 + result) = v102;
        goto LABEL_185;
      }

      if (v60 != 2)
      {
        if ((v57 & 0xFF00) != 0)
        {
          v77 = -v15;
        }

        else
        {
          v77 = 0;
        }

        if (v23)
        {
          v78 = *(v61 + v77);
          if ((v57 & 0xFF0000) != 0)
          {
            v79 = *(v61 - v15 + 4);
          }

          else
          {
            v79 = v78 & 0xFF000000 | ((v78 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v78 & 0xFF000000 | ((v78 & 0xFF000000) >> 8)) >> 16);
          }

          v124 = (v36 + 2 * byte_2773B4D80[v34]);
          v3.i32[0] = v79;
          v125 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v78), 0);
          v126 = vaddq_s16(v43, vqtbl1q_s8(vextq_s8(v125, 0, 4uLL), xmmword_2773B4240));
          v127 = vaddq_s16(v126, vaddq_s16(vextq_s8(vaddq_s16(v125, v125), 0, 2uLL), v125));
          v128 = vshrq_n_u16(v127, 2uLL);
          v126.i64[0] = *v124;
          v5.i64[0] = v124[4];
          *&v6 = v124[8];
          v7.i64[0] = v124[12];
          v4 = vsraq_n_u16(v126, v127, 2uLL);
          v2 = vaddq_s16(v5, vextq_s8(v128, 0, 2uLL));
          v5 = vaddq_s16(v6, vextq_s8(v128, 0, 4uLL));
          v3 = vaddq_s16(v7, vextq_s8(v128, 0, 6uLL));
          *v4.i8 = vqmovun_s16(v4);
          *v61 = v4.i32[0];
          *(v61 + v15) = vqmovun_s16(v2).u32[0];
          *v2.i8 = vqmovun_s16(v5);
          goto LABEL_127;
        }

        v103 = *(v61 + v77);
        if ((v57 & 0xFF0000) != 0)
        {
          v104 = *(v61 - v15 + 4);
        }

        else
        {
          v104 = v103 & 0xFF000000 | ((v103 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v103 & 0xFF000000 | ((v103 & 0xFF000000) >> 8)) >> 16);
        }

        v3.i32[0] = v104;
        v153 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v103), 0);
        v3 = vextq_s8(vaddq_s16(v153, v153), 0, 2uLL);
        v154 = vshrq_n_u16(vaddq_s16(vaddq_s16(v43, vqtbl1q_s8(vextq_s8(v153, 0, 4uLL), xmmword_2773B4240)), vaddq_s16(v3, v153)), 2uLL);
        *v3.i8 = vqmovun_s16(v154);
        v4 = vextq_s8(v154, 0, 2uLL);
        *v4.i8 = vqmovun_s16(v4);
        v5 = vextq_s8(v154, 0, 4uLL);
        *v5.i8 = vqmovun_s16(v5);
        *v61 = v3.i32[0];
        *(v61 + v15) = v4.i32[0];
        v2 = vextq_s8(v154, 0, 6uLL);
LABEL_149:
        *v2.i8 = vqmovun_s16(v2);
        *(v61 + v38) = v5.i32[0];
LABEL_184:
        *(v61 + result) = v2.i32[0];
        goto LABEL_185;
      }

      v83 = BYTE1(v57);
      if (v23)
      {
        if (v57)
        {
          v84 = *(v61 - 1);
          v85 = *(v61 + v15 - 1);
          v86 = *(v61 + v38 - 1);
          v87 = *(v61 + result - 1);
          if (v83)
          {
            v2.i32[0] = *(v61 - v15);
            v2 = vmovl_u16(*&vmovl_u8(*v2.i8));
            v88 = (vaddvq_s32(v2) + v87 + v86 + v85 + v84 + 4) >> 3;
LABEL_158:
            v183 = (v36 + 2 * byte_2773B4D80[v34]);
            v2.i64[0] = *v183;
            v3.i64[0] = v183[4];
            v4.i64[0] = v183[8];
            v5.i64[0] = v183[12];
            v6 = v88 | (v88 << 8) | ((v88 | (v88 << 8)) << 16);
            goto LABEL_159;
          }

          v130 = v84 + v85 + v86 + v87;
        }

        else
        {
          if (!BYTE1(v57))
          {
            v88 = 128;
            goto LABEL_158;
          }

          v2.i32[0] = *(v61 - v15);
          v2 = vmovl_u8(*v2.i8);
          v2.i16[0] = vaddv_s16(*v2.i8);
          v130 = v2.i32[0];
        }

        v88 = (v130 + 2) >> 2;
        goto LABEL_158;
      }

      if (v57)
      {
        v107 = *(v61 - 1);
        v108 = *(v61 + v15 - 1);
        v109 = *(v61 + v38 - 1);
        v110 = *(v61 + result - 1);
        if (v83)
        {
          v2.i32[0] = *(v61 - v15);
          v2 = vmovl_u16(*&vmovl_u8(*v2.i8));
          v111 = (vaddvq_s32(v2) + v110 + v109 + v108 + v107 + 4) >> 3;
LABEL_176:
          v102 = v111 | (v111 << 8) | ((v111 | (v111 << 8)) << 16);
          goto LABEL_177;
        }

        v156 = v107 + v108 + v109 + v110;
      }

      else
      {
        if (!BYTE1(v57))
        {
          v111 = 128;
          goto LABEL_176;
        }

        v2.i32[0] = *(v61 - v15);
        v2 = vmovl_u8(*v2.i8);
        v2.i16[0] = vaddv_s16(*v2.i8);
        v156 = v2.i32[0];
      }

      v111 = (v156 + 2) >> 2;
      goto LABEL_176;
    }

    if (v60 <= 5)
    {
      if (v60 != 4)
      {
        if (v23)
        {
          if (v57)
          {
            if (BYTE1(v57))
            {
              v80 = *(v61 - v15);
              v81 = v80 | (*(v61 - v15 - 1) << 8);
            }

            else
            {
              v80 = *v61;
              v81 = *v61 | (*v61 << 8);
            }

            v143 = *(v61 - 1) | (*(v61 + v15 - 1) << 8);
            v144 = v61 + v38 - 1;
          }

          else
          {
            if (BYTE1(v57))
            {
              v80 = *(v61 - v15);
              v81 = v80 | (v80 << 8);
              v129 = *v61;
            }

            else
            {
              v80 = *v61;
              v129 = *v61;
              v81 = v129 | (v129 << 8);
            }

            v143 = v129 | (*(v61 + v15) << 8);
            v144 = v61 + v38;
          }

          v169 = v81;
          v170 = vdupq_n_s64(0xFFFFFFF8uLL);
          v171 = (v36 + 2 * byte_2773B4D80[v34]);
          v172 = vorrq_s8(vshlq_n_s64(v80, 8uLL), vshlq_u64(v169, v170));
          v173 = vorrq_s8(vshlq_n_s64((v143 | (*v144 << 16)), 0x10uLL), v169);
          v174 = vzip1q_s8(vshlq_u64(v172, v170), 0);
          v7 = vdupq_n_s64(0xFFFFFFF0uLL);
          v175 = vaddq_s16(v174, vzip1q_s8(v172, 0));
          v176 = vaddq_s16(v175, v46);
          v9 = vshrq_n_u16(v176, 1uLL);
          v6 = vaddq_s16(v47, v174);
          v177 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v175), vzip1q_s8(vshlq_u64(v172, v7), 0)), 2uLL);
          v178 = vzip1q_s8(vshlq_u64(v173, v170), 0);
          v179 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v173, 0)), vzip1q_s8(vshlq_u64(v173, v7), 0)), vaddq_s16(v178, v178)), 2uLL);
          v180 = vextq_s8(0, v9, 0xEuLL);
          v181 = vorrq_s8(v180, vshlq_u64(vshlq_n_s64(v179, 0x20uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
          v182 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v179, xmmword_2773B4480), 0), v177, 0xCuLL);
          v177.i64[0] = *v171;
          v180.i64[0] = v171[4];
          *&v6 = v171[8];
          v7.i64[0] = v171[12];
          v3 = vsraq_n_u16(v177, v176, 1uLL);
          v8 = vextq_s8(v182, 0, 2uLL);
          v5 = vaddq_s16(v8, v180);
          v4 = vaddq_s16(v6, v181);
          v2 = vaddq_s16(v7, v182);
          v3.i32[0] = vqmovun_s16(v3).u32[0];
        }

        else
        {
          if (v57)
          {
            if (BYTE1(v57))
            {
              v105 = *(v61 - v15);
              v106 = v105 | (*(v61 - v15 - 1) << 8);
            }

            else
            {
              v105 = *v61;
              v106 = *v61 | (*v61 << 8);
            }

            v167 = *(v61 - 1) | (*(v61 + v15 - 1) << 8);
            v168 = v61 + v38 - 1;
          }

          else
          {
            if (BYTE1(v57))
            {
              v105 = *(v61 - v15);
              v106 = v105 | (v105 << 8);
              v155 = *v61;
            }

            else
            {
              v105 = *v61;
              v155 = *v61;
              v106 = v155 | (v155 << 8);
            }

            v167 = v155 | (*(v61 + v15) << 8);
            v168 = v61 + v38;
          }

          v201 = vdupq_n_s64(0xFFFFFFF8uLL);
          v202 = vorrq_s8(vshlq_n_s64(v105, 8uLL), vshlq_u64(v106, v201));
          v203 = vorrq_s8(vshlq_n_s64((v167 | (*v168 << 16)), 0x10uLL), v106);
          v204 = vzip1q_s8(vshlq_u64(v202, v201), 0);
          v7 = vdupq_n_s64(0xFFFFFFF0uLL);
          v205 = vaddq_s16(v204, vzip1q_s8(v202, 0));
          v8 = vshrq_n_u16(vaddq_s16(v205, v46), 1uLL);
          v6 = vaddq_s16(v47, v204);
          v3 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v205), vzip1q_s8(vshlq_u64(v202, v7), 0)), 2uLL);
          v206 = vzip1q_s8(vshlq_u64(v203, v201), 0);
          v207 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v203, 0)), vzip1q_s8(vshlq_u64(v203, v7), 0)), vaddq_s16(v206, v206)), 2uLL);
          v4 = vorrq_s8(vextq_s8(0, v8, 0xEuLL), vshlq_u64(vshlq_n_s64(v207, 0x20uLL), v48));
          v2 = vextq_s8(vdupq_lane_s32(*&vqtbl1q_s8(v207, xmmword_2773B4480), 0), v3, 0xCuLL);
          v3.i32[0] = vqmovun_s16(v8).u32[0];
          v5 = vextq_s8(v2, 0, 2uLL);
        }

        *v5.i8 = vqmovun_s16(v5);
        *v61 = v3.i32[0];
        *(v61 + v15) = v5.i32[0];
        *v3.i8 = vqmovun_s16(v4);
        goto LABEL_183;
      }

      if (v23)
      {
        if (v57)
        {
          if (BYTE1(v57))
          {
            v93 = *(v61 - v15);
            v94 = *(v61 - v15 - 1);
          }

          else
          {
            v93 = *v61;
            v94 = *v61;
          }

          v135 = *(v61 + result - 1) | (*(v61 + v38 - 1) << 8) | (*(v61 + v15 - 1) << 16);
          v136 = *(v61 - 1);
        }

        else if (BYTE1(v57))
        {
          v93 = *(v61 - v15);
          v94 = v93;
          v135 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
          v136 = *v61;
        }

        else
        {
          v136 = *v61;
          v94 = *v61;
          v135 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
          v93 = *v61;
        }

        v145 = (v36 + 2 * byte_2773B4D80[v34]);
        v146 = v135 | (v136 << 24);
        v147 = vorrq_s8(vshlq_n_s64(v93, 8uLL), v94);
        v148 = vdupq_n_s64(0xFFFFFFF0uLL);
        v149 = vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v146, v148), vshlq_n_s64(v147, 0x10uLL)), xmmword_2773B3E30), 0);
        v150 = vshlq_u64(v146, vdupq_n_s64(0xFFFFFFF8uLL));
        v151 = vzip1q_s8(vorrq_s8(v150, vshlq_n_s64(v147, 0x18uLL)), 0);
        v6 = vaddq_s16(v151, v151);
        v2 = vaddq_s16(vaddq_s16(v6, v149), vaddq_s16(v43, vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v147, v148), 0x20uLL), v146), 0)));
        v152 = vshrq_n_u16(v2, 2uLL);
        v149.i64[0] = v145[4];
        *&v6 = v145[8];
        v150.i64[0] = v145[12];
        v4 = vaddq_s16(*v145, vextq_s8(v152, 0, 6uLL));
        v8 = vextq_s8(v152, 0, 4uLL);
        v5 = vaddq_s16(v149, v8);
        v3 = vaddq_s16(v6, vextq_s8(v152, 0, 2uLL));
        v7 = vsraq_n_u16(v150, v2, 2uLL);
        v2.i32[0] = vqmovun_s16(v4).u32[0];
        *v4.i8 = vqmovun_s16(v5);
        *v61 = v2.i32[0];
        *(v61 + v15) = v4.i32[0];
        *v2.i8 = vqmovun_s16(v3);
        *v3.i8 = vqmovun_s16(v7);
        goto LABEL_160;
      }

      if (v57)
      {
        if (BYTE1(v57))
        {
          v116 = *(v61 - v15);
          v117 = *(v61 - v15 - 1);
        }

        else
        {
          v116 = *v61;
          v117 = *v61;
        }

        v161 = *(v61 + result - 1) | (*(v61 + v38 - 1) << 8) | (*(v61 + v15 - 1) << 16);
        v162 = *(v61 - 1);
      }

      else if (BYTE1(v57))
      {
        v116 = *(v61 - v15);
        v117 = v116;
        v161 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
        v162 = *v61;
      }

      else
      {
        v162 = *v61;
        v117 = *v61;
        v161 = *(v61 + result) | (*(v61 + v38) << 8) | (*(v61 + v15) << 16);
        v116 = *v61;
      }

      v198 = v161 | (v162 << 24);
      v199 = vorrq_s8(vshlq_n_s64(v116, 8uLL), v117);
      v6 = vshlq_u64(v198, v45);
      v200 = vzip1q_s8(vorrq_s8(v6, vshlq_n_s64(v199, 0x18uLL)), 0);
      v2 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v200, v200), vzip1q_s8(vqtbl1q_s8(vorrq_s8(vshlq_u64(v198, v44), vshlq_n_s64(v199, 0x10uLL)), xmmword_2773B3E30), 0)), vaddq_s16(v43, vzip1q_s8(vorrq_s8(vshlq_n_s64(vshlq_u64(v199, v44), 0x20uLL), v198), 0))), 2uLL);
      v3 = vextq_s8(v2, 0, 6uLL);
      v3.i32[0] = vqmovun_s16(v3).u32[0];
      v4 = vextq_s8(v2, 0, 4uLL);
      *v4.i8 = vqmovun_s16(v4);
      v5 = vextq_s8(v2, 0, 2uLL);
      goto LABEL_169;
    }

    switch(v60)
    {
      case 6:
        if (v23)
        {
          if (v57)
          {
            if (BYTE1(v57))
            {
              v89 = *(v61 - v15);
              v90 = *(v61 - 1);
              v91 = (*(v61 + v38 - 1) << 16) | (*(v61 + v15 - 1) << 8) | (*(v61 + result - 1) << 24) | v90;
              v92 = v90 | (*(v61 - v15 - 1) << 8);
LABEL_165:
              v184 = v92;
              v185 = (v36 + 2 * byte_2773B4D80[v34]);
              v186 = vdupq_n_s64(0xFFFFFFF8uLL);
              v187 = vorrq_s8(vshlq_n_s64(v91, 8uLL), vshlq_u64(v184, v186));
              v188 = vorrq_s8(vshlq_n_s64(v89, 0x10uLL), v184);
              v189 = vzip1q_s8(vshlq_u64(v187, v186), 0);
              v7 = vdupq_n_s64(0xFFFFFFF0uLL);
              v190 = vaddq_s16(v189, vzip1q_s8(v187, 0));
              v8 = vshrq_n_u16(vaddq_s16(v190, v46), 1uLL);
              v6 = vaddq_s16(v47, v189);
              v191 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v190), vzip1q_s8(vshlq_u64(v187, v7), 0)), 2uLL);
              v192 = vzip1q_s8(vshlq_u64(v188, v186), 0);
              v193 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v188, 0)), vzip1q_s8(vshlq_u64(v188, v7), 0)), vaddq_s16(v192, v192)), 2uLL);
              v194 = vorrq_s8(vshlq_n_s64(v193, 0x10uLL), vshlq_u64(vshlq_n_s64(v8, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
              v195 = vzip1q_s32(vqtbl1q_s8(v8, xmmword_2773B4450), 0);
              v196 = vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v191, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v193, 2uLL), 0x10uLL), v195)), xmmword_2773B4460);
              v191.i64[1] = 0xF0E0D0C0B0A0908;
              v197 = vqtbl1q_s8(v196, xmmword_2773B4470);
              v191.i64[0] = *v185;
              v195.i64[0] = v185[4];
              *&v6 = v185[8];
              v7.i64[0] = v185[12];
              v3 = vaddq_s16(v191, v194);
              v4 = vaddq_s16(v195, vdupq_laneq_s64(v197, 1));
              v5 = vaddq_s16(v6, vextq_s8(v197, 0, 4uLL));
              v2 = vaddq_s16(v7, v197);
              v3.i32[0] = vqmovun_s16(v3).u32[0];
              *v4.i8 = vqmovun_s16(v4);
LABEL_169:
              *v61 = v3.i32[0];
              *(v61 + v15) = v4.i32[0];
LABEL_182:
              *v3.i8 = vqmovun_s16(v5);
LABEL_183:
              *v2.i8 = vqmovun_s16(v2);
              *(v61 + v38) = v3.i32[0];
              goto LABEL_184;
            }

            v89 = *v61;
            v131 = *(v61 - 1);
            v132 = *(v61 + v15 - 1);
            v133 = *(v61 + v38 - 1) << 16;
            v134 = *(v61 + result - 1);
LABEL_133:
            v91 = v133 | (v132 << 8) | (v134 << 24) | v131;
          }

          else
          {
            if (BYTE1(v57))
            {
              v89 = *(v61 - v15);
              v131 = *v61;
              v132 = *(v61 + v15);
              v133 = *(v61 + v38) << 16;
              v134 = *(v61 + result);
              goto LABEL_133;
            }

            v89 = *v61;
            v131 = *v61;
            v91 = (*(v61 + v38) << 16) | (*(v61 + v15) << 8) | (*(v61 + result) << 24) | v131;
          }

          v92 = v131 & 0xFFFF00FF | (v89 << 8);
          goto LABEL_165;
        }

        if (v57)
        {
          if (BYTE1(v57))
          {
            v112 = *(v61 - v15);
            v113 = *(v61 - 1);
            v114 = (*(v61 + v38 - 1) << 16) | (*(v61 + v15 - 1) << 8) | (*(v61 + result - 1) << 24) | v113;
            v115 = v113 | (*(v61 - v15 - 1) << 8);
LABEL_181:
            v208 = vdupq_n_s64(0xFFFFFFF8uLL);
            v209 = vorrq_s8(vshlq_n_s64(v114, 8uLL), vshlq_u64(v115, v208));
            v210 = vorrq_s8(vshlq_n_s64(v112, 0x10uLL), v115);
            v211 = vzip1q_s8(vshlq_u64(v209, v208), 0);
            v7 = vdupq_n_s64(0xFFFFFFF0uLL);
            v212 = vaddq_s16(v211, vzip1q_s8(v209, 0));
            v8 = vshrq_n_u16(vaddq_s16(v212, v46), 1uLL);
            v6 = vaddq_s16(v47, v211);
            v213 = vshrq_n_u16(vaddq_s16(vaddq_s16(v6, v212), vzip1q_s8(vshlq_u64(v209, v7), 0)), 2uLL);
            v214 = vzip1q_s8(vshlq_u64(v210, v208), 0);
            v215 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, vzip1q_s8(v210, 0)), vzip1q_s8(vshlq_u64(v210, v7), 0)), vaddq_s16(v214, v214)), 2uLL);
            v4 = vorrq_s8(vshlq_n_s64(v215, 0x10uLL), vshlq_u64(vshlq_n_s64(v8, 0x30uLL), vdupq_n_s64(0xFFFFFFD0uLL)));
            v2 = vqtbl1q_s8(vqtbl1q_s8(vorrq_s8(vqtbl1q_s8(vextq_s8(vextq_s8(0, v213, 6uLL), 0, 8uLL), xmmword_2773B4440), vorrq_s8(vshrq_n_u32(vextq_s8(0, v215, 2uLL), 0x10uLL), vzip1q_s32(vqtbl1q_s8(v8, xmmword_2773B4450), 0))), xmmword_2773B4460), xmmword_2773B4470);
            v3 = vdupq_laneq_s64(v2, 1);
            *v4.i8 = vqmovun_s16(v4);
            v5 = vextq_s8(v2, 0, 4uLL);
            *v61 = v4.i32[0];
            *(v61 + v15) = vqmovun_s16(v3).u32[0];
            goto LABEL_182;
          }

          v112 = *v61;
          v157 = *(v61 - 1);
          v158 = *(v61 + v15 - 1);
          v159 = *(v61 + v38 - 1) << 16;
          v160 = *(v61 + result - 1);
LABEL_162:
          v114 = v159 | (v158 << 8) | (v160 << 24) | v157;
        }

        else
        {
          if (BYTE1(v57))
          {
            v112 = *(v61 - v15);
            v157 = *v61;
            v158 = *(v61 + v15);
            v159 = *(v61 + v38) << 16;
            v160 = *(v61 + result);
            goto LABEL_162;
          }

          v112 = *v61;
          v157 = *v61;
          v114 = (*(v61 + v38) << 16) | (*(v61 + v15) << 8) | (*(v61 + result) << 24) | v157;
        }

        v115 = v157 & 0xFFFF00FF | (v112 << 8);
        goto LABEL_181;
      case 7:
        if ((v57 & 0xFF00) != 0)
        {
          v95 = -v15;
        }

        else
        {
          v95 = 0;
        }

        if (v23)
        {
          v96 = *(v61 + v95);
          if ((v57 & 0xFF0000) != 0)
          {
            v97 = *(v61 - v15 + 4);
          }

          else
          {
            v97 = v96 & 0xFF000000 | ((v96 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v96 & 0xFF000000 | ((v96 & 0xFF000000) >> 8)) >> 16);
          }

          v137 = (v36 + 2 * byte_2773B4D80[v34]);
          v3.i32[0] = v97;
          v138 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v96), 0);
          v139 = vextq_s8(v138, 0, 2uLL);
          v140 = vaddq_s16(v139, v138);
          v5 = vaddq_s16(v140, v46);
          v6 = vshrq_n_u16(v5, 1uLL);
          v141 = vaddq_s16(vaddq_s16(vaddq_s16(v47, v139), vextq_s8(v138, 0, 4uLL)), v140);
          v142 = vshrq_n_u16(v141, 2uLL);
          v140.i64[0] = *v137;
          v7.i64[0] = v137[4];
          v8.i64[0] = v137[8];
          v9.i64[0] = v137[12];
          v4 = vsraq_n_u16(v140, v5, 1uLL);
          v7 = vsraq_n_u16(v7, v141, 2uLL);
          v2 = vaddq_s16(v8, vextq_s8(v6, 0, 2uLL));
          v3 = vaddq_s16(v9, vextq_s8(v142, 0, 2uLL));
          *v4.i8 = vqmovun_s16(v4);
          *v5.i8 = vqmovun_s16(v7);
          *v61 = v4.i32[0];
          *(v61 + v15) = v5.i32[0];
LABEL_126:
          *v2.i8 = vqmovun_s16(v2);
LABEL_127:
          *v3.i8 = vqmovun_s16(v3);
LABEL_160:
          *(v61 + v38) = v2.i32[0];
          *(v61 + result) = v3.i32[0];
          break;
        }

        v122 = *(v61 + v95);
        if ((v57 & 0xFF0000) != 0)
        {
          v123 = *(v61 - v15 + 4);
        }

        else
        {
          v123 = v122 & 0xFF000000 | ((v122 & 0xFF000000) >> 8) & 0xFFFF0000 | ((v122 & 0xFF000000 | ((v122 & 0xFF000000) >> 8)) >> 16);
        }

        v3.i32[0] = v123;
        v163 = vzip1q_s8(vorrq_s8(vextq_s8(0, v3, 0xCuLL), v122), 0);
        v164 = vextq_s8(v163, 0, 2uLL);
        v4 = vaddq_s16(v164, v163);
        v165 = vshrq_n_u16(vaddq_s16(v4, v46), 1uLL);
        v3 = vaddq_s16(v47, v164);
        v166 = vshrq_n_u16(vaddq_s16(vaddq_s16(v3, vextq_s8(v163, 0, 4uLL)), v4), 2uLL);
        *v3.i8 = vqmovun_s16(v165);
        *v4.i8 = vqmovun_s16(v166);
        v5 = vextq_s8(v165, 0, 2uLL);
        *v5.i8 = vqmovun_s16(v5);
        *v61 = v3.i32[0];
        *(v61 + v15) = v4.i32[0];
        v2 = vextq_s8(v166, 0, 2uLL);
        goto LABEL_149;
      case 8:
        if (v23)
        {
          v62 = (v36 + 2 * byte_2773B4D80[v34]);
          v63 = vzip1q_s8((*(v61 - v57) | (*(v61 + v15 - v57) << 8) | (*(v61 + v38 - v57) << 16) | (*(v61 + result - v57) << 24)), 0);
          v64 = vextq_s8(v63, 0, 2uLL);
          v65 = vaddq_s16(v64, v63);
          v66 = vqtbl1q_s8(vextq_s8(v63, 0, 4uLL), xmmword_2773B4250);
          v6 = vshrq_n_u16(vaddq_s16(v65, v46), 1uLL);
          v67 = vqtbl1q_s8(v63, xmmword_2773B4430);
          v68 = vzip1q_s16(v6, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, v64), v66), v65), 2uLL));
          v69 = vextq_s8(vdupq_laneq_s32(v68, 2), v67, 0xCuLL);
          v66.i64[0] = *v62;
          *&v6 = v62[4];
          v7.i64[0] = v62[8];
          v8.i64[0] = v62[12];
          v5 = vaddq_s16(v68, v66);
          v3 = vaddq_s16(v6, vextq_s8(v68, 0, 4uLL));
          v4 = vaddq_s16(v7, v69);
          v2 = vaddq_s16(v8, v67);
          *v5.i8 = vqmovun_s16(v5);
        }

        else
        {
          v118 = vzip1q_s8((*(v61 - v57) | (*(v61 + v15 - v57) << 8) | (*(v61 + v38 - v57) << 16) | (*(v61 + result - v57) << 24)), 0);
          v119 = vextq_s8(v118, 0, 2uLL);
          v120 = vaddq_s16(v119, v118);
          v5 = vqtbl1q_s8(vextq_s8(v118, 0, 4uLL), xmmword_2773B4250);
          v6 = vshrq_n_u16(vaddq_s16(v120, v46), 1uLL);
          v2 = vqtbl1q_s8(v118, xmmword_2773B4430);
          v121 = vzip1q_s16(v6, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v47, v119), v5), v120), 2uLL));
          v4 = vextq_s8(vdupq_laneq_s32(v121, 2), v2, 0xCuLL);
          *v5.i8 = vqmovun_s16(v121);
          v3 = vextq_s8(v121, 0, 4uLL);
        }

        *v3.i8 = vqmovun_s16(v3);
        *v4.i8 = vqmovun_s16(v4);
        *v61 = v5.i32[0];
        *(v61 + v15) = v3.i32[0];
        *v2.i8 = vqmovun_s16(v2);
        *(v61 + v38) = v4.i32[0];
        *(v61 + result) = v2.i32[0];
        break;
    }

LABEL_185:
    ++v34;
  }

  while (v34 != 16);
  return result;
}

uint64_t sub_2773605C8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int16x8_t a7, int16x8_t a8)
{
  v234 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 72);
  v9 = *(a1 + 824);
  v10 = *(a1 + 828);
  if (!*(a2 + 20) || !*(a2 + 22))
  {
    v11 = v8 + 408;
    v13 = *(v8 + 34);
    if (*(a2 + 23) == 1)
    {
      v19 = *(a1 + 820);
      v15 = *(v8 + 4) + 32 * v13 * (v19 / (2 * *(a2 + 16))) + ((8 * (v19 % (2 * *(a2 + 16)))) & 0xFFFFFFF0);
      if (v19)
      {
        v17 = 16 * v13;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_16;
    }

    v15 = *(v8 + 4) + (16 * v9);
    v18 = v10 * v13;
LABEL_10:
    v17 = (16 * v18);
    goto LABEL_16;
  }

  v11 = v8 + 472;
  v12 = *(v8 + 34);
  v13 = 2 * v12;
  v14 = *v8;
  v15 = *(v8 + 4) + (16 * v9);
  if (!*(a2 + 21))
  {
    v18 = v10 * v12;
    if (v14)
    {
      v17 = (32 * v18);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  v17 = ((v10 << v16) * v12);
  v15 += v12;
LABEL_16:
  v20 = v15 + v17;
  v21 = *(a1 + 816);
  v22 = *(a2 + 968) + 16;
  v23 = *(a2 + 936);
  v24 = *(a2 + 944);
  v25 = *(a2 + 952);
  v26 = *(a2 + 960);
  v232 = 0;
  v233 = 0;
  v230 = v22;
  v231 = 0;
  if (v23)
  {
    v231 = &v23[16 * (v23[32] != 0)];
    v27 = 1;
    if (v24)
    {
LABEL_18:
      v28 = &v24[16 * (v24[32] != 0)];
      v29 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v27 = 0;
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v28 = 0;
  v29 = 0;
LABEL_21:
  v232 = v28;
  v30 = v25 != 0;
  v31 = v26 != 0;
  if (*(a2 + 928))
  {
    if (v23)
    {
      if (v23[16] == 34)
      {
        v27 = *v23 != 34;
        if (!v24)
        {
LABEL_31:
          v29 = 0;
          if (v25)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v27 = 1;
        if (!v24)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v27 = 0;
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    if (v24[16] == 34)
    {
      v29 = *v24 != 34;
      if (v25)
      {
LABEL_32:
        if (v25[16] == 34)
        {
          v30 = *v25 != 34;
          if (!v26)
          {
            goto LABEL_40;
          }

LABEL_37:
          v31 = v26[16] != 34 || *v26 != 34;
          goto LABEL_42;
        }

        v30 = 1;
        if (v26)
        {
          goto LABEL_37;
        }

LABEL_40:
        v31 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v29 = 1;
      if (v25)
      {
        goto LABEL_32;
      }
    }

LABEL_36:
    v30 = 0;
    if (v26)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

LABEL_42:
  v32 = 0;
  v33 = (2 * v30) | (4 * v29) | (8 * v27);
  v34 = 3 * v13;
  v35 = v33 | v31;
  v36 = a2 + 112;
  v37 = (a1 + 1158);
  v38 = 2 * v13;
  result = 4 * v13;
  v40 = 6 * v13;
  v41 = 7 * v13;
  v42.i64[0] = 0x2000200020002;
  v42.i64[1] = 0x2000200020002;
  v43 = 5 * v13;
  v44 = (&unk_2773B4DA4 + 4 * v35);
  v45.i64[0] = 0x1000100010001;
  v45.i64[1] = 0x1000100010001;
  v46 = &byte_2773B4DA0;
  do
  {
    v47 = byte_280A6AA70[v32];
    v48 = byte_280A6AA70[v32 + 16];
    v49 = *(&v230 + (~(2 * v48) & 2));
    v50 = *(&v230 + ((v47 & 1) == 0));
    if (v49)
    {
      v51 = v50 == 0;
    }

    else
    {
      v51 = 1;
    }

    if (v51 || (v52 = *(v50 + ((v47 >> 1) & 0xF)), v53 = *(v49 + ((v48 >> 1) & 0xF)), (*(a2 + 928) & ((v53 | v52) >> 5) & 1) != 0))
    {
      v54 = 2;
    }

    else
    {
      v54 = (((v52 & 0xF) - (v53 & 0xF)) & (((v52 & 0xF) - (v53 & 0xF)) >> 31)) + (v53 & 0xF);
    }

    v56 = *v44;
    v44 += 16;
    v55 = v56;
    v57 = *v37;
    if (v54 <= v57)
    {
      ++v57;
    }

    v58 = v57 & (*(v37 - 20) - 1) | v54 & -*(v37 - 20);
    *(v22 + v32) = vdup_n_s8(v58).u32[0];
    v59 = v55 >> 24;
    v60 = (v20 + *&v11[4 * v32]);
    v61 = v55;
    v62 = BYTE1(v55);
    v63 = BYTE2(v55);
    if (v58 <= 3)
    {
      if (v58 <= 1)
      {
        if (v58)
        {
          if (v58 != 1)
          {
            goto LABEL_120;
          }

          v82 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v60->u8[v13 - v61], 0xEuLL), vextq_s8(0, v60->u8[v38 - v61], 0xDuLL)), vextq_s8(0, v60->u8[v34 - v61], 0xCuLL)), vextq_s8(0, v60->u8[result - v61], 0xBuLL)), vextq_s8(0, v60->u8[v40 - v61], 9uLL)), vorrq_s8(vzip1q_s8(v60->u8[~(v59 * v13)], v60->u8[-v61]), vextq_s8(0, v60->u8[v43 - v61], 0xAuLL)));
          v83 = vextq_s8(0, v60->u8[v41 - v61], 8uLL);
          v84 = vorrq_s8(v82, vorrq_s8(vextq_s8(0, v83, 0xFuLL), v83));
          v85 = vzip1q_s8(vextq_s8(v84, 0, 1uLL), 0);
          v86 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v82, 0), vzip1q_s8(vextq_s8(v84, 0, 2uLL), 0)), vaddq_s16(v85, v85)), v42), 2uLL);
          v87 = vdupq_lane_s16(*v86.i8, 0);
          v88 = vdupq_lane_s16(*v86.i8, 1);
          v89 = vdupq_lane_s16(*v86.i8, 2);
          v90 = vdupq_lane_s16(*v86.i8, 3);
          v91 = vdupq_laneq_s16(v86, 4);
          v92 = vdupq_laneq_s16(v86, 5);
          a8 = vdupq_laneq_s16(v86, 6);
          a7 = vdupq_laneq_s16(v86, 7);
          if (v21)
          {
            v93 = (v36 + 2 * *v46);
            *v60 = vqmovun_s16(vaddq_s16(*v93, v87));
            v94 = vaddq_s16(v93[2], v88);
LABEL_86:
            *(v60 + v13) = vqmovun_s16(v94);
            *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], v89));
            *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], v90));
            *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], v91));
            *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], v92));
            v179 = vaddq_s16(v93[12], a8);
LABEL_115:
            *(v60 + v40) = vqmovun_s16(v179);
            goto LABEL_116;
          }

          *v60 = vqmovun_s16(v87);
          v161 = vqmovun_s16(v88);
          goto LABEL_88;
        }

        *a7.i8 = *(v60 - v62 * v13);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v114 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
        a8 = vzip1q_s8(v114, 0);
        v115 = vzip1q_s8(vextq_s8(v114, 0, 1uLL), 0);
        a7 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v114, 0, 2uLL), 0)), vaddq_s16(v115, v115)), v42), 2uLL);
        if (!v21)
        {
          *a7.i8 = vqmovun_s16(a7);
LABEL_123:
          *v60 = *a7.i8;
          *(v60 + v13) = *a7.i8;
          *(v60 + v38) = *a7.i8;
          *(v60 + v34) = *a7.i8;
          *(v60 + result) = *a7.i8;
          *(v60 + v43) = *a7.i8;
          *(v60 + v40) = *a7.i8;
          goto LABEL_119;
        }

        v93 = (v36 + 2 * *v46);
LABEL_114:
        *v60 = vqmovun_s16(vaddq_s16(*v93, a7));
        *(v60 + v13) = vqmovun_s16(vaddq_s16(v93[2], a7));
        *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], a7));
        *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], a7));
        *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], a7));
        *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], a7));
        v179 = vaddq_s16(v93[12], a7);
        goto LABEL_115;
      }

      if (v58 != 2)
      {
        *a8.i8 = *(v60 - v62 * v13);
        v95 = v60 - v13;
        if (v63)
        {
          a7.i64[0] = *(v95 + 1);
        }

        else
        {
          v162 = vextq_s8(a8, 0, 7uLL);
          v163 = vzip1q_s8(v162, v162);
          v164 = vzip1q_s16(v163, v163);
          a7 = vzip1q_s32(v164, v164);
        }

        v165 = vorrq_s8(vextq_s8(0, a8, 0xFuLL), v95[-v59]);
        v166 = vorrq_s8(v165, vextq_s8(0, a7, 7uLL));
        v167 = vzip1q_s8(v165, 0);
        v168 = vzip1q_s8(vextq_s8(v165, 0, 1uLL), 0);
        v169 = vaddq_s16(vaddq_s16(v167, vzip1q_s8(vextq_s8(v166, 0, 2uLL), 0)), vaddq_s16(vaddq_s16(v168, v168), v42));
        v170 = vshrq_n_u16(v169, 2uLL);
        v171 = vzip1q_s8(a7, 0);
        v172 = vaddq_s16(vaddq_s16(vaddq_s16(v171, v171), vzip2q_s8(v166, 0)), vaddq_s16(vzip1q_s8(vorrq_s8(vextq_s8(0, vdupq_lane_s8(*a7.i8, 7), 9uLL), vextq_s8(a7, 0, 1uLL)), 0), v42));
        v173 = vshrq_n_u16(v172, 2uLL);
        v174 = vextq_s8(v170, v173, 2uLL);
        v175 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vextq_s8(v170, v173, 4uLL), v169, 2uLL), vaddq_s16(vaddq_s16(v174, v174), v42)), 2uLL);
        v176 = vextq_s8(v173, 0, 2uLL);
        v177 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vqtbl1q_s8(vextq_s8(v173, 0, 4uLL), xmmword_2773B4510), v172, 2uLL), vaddq_s16(vaddq_s16(v176, v176), v42)), 2uLL);
        v178 = vextq_s8(v175, v177, 2uLL);
        v89 = vextq_s8(v175, v177, 4uLL);
        v90 = vextq_s8(v175, v177, 6uLL);
        v91 = vextq_s8(v175, v177, 8uLL);
        v92 = vextq_s8(v175, v177, 0xAuLL);
        a8 = vextq_s8(v175, v177, 0xCuLL);
        a7 = vextq_s8(v175, v177, 0xEuLL);
        if (v21)
        {
          v93 = (v36 + 2 * *v46);
          *v60 = vqmovun_s16(vaddq_s16(*v93, v175));
          v94 = vaddq_s16(v93[2], v178);
          goto LABEL_86;
        }

        *v60 = vqmovun_s16(v175);
        v161 = vqmovun_s16(v178);
LABEL_88:
        *(v60 + v13) = v161;
        *(v60 + v38) = vqmovun_s16(v89);
        *(v60 + v34) = vqmovun_s16(v90);
        *(v60 + result) = vqmovun_s16(v91);
        *(v60 + v43) = vqmovun_s16(v92);
LABEL_108:
        *(v60 + v40) = vqmovun_s16(a8);
        goto LABEL_118;
      }

      if (v61)
      {
        if (v62)
        {
          *a7.i8 = *(v60 - v13);
          a7.i16[4] = v60->u8[v63 - v13 + 7];
          v116 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
          v117 = vzip1q_s8(vextq_s8(v116, 0, 1uLL), 0);
          v118 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v116, 0), vzip1q_s8(vextq_s8(v116, 0, 2uLL), 0)), vaddq_s16(v117, v117)), v42);
          v119 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v60[-1].u8[v13 + 7], 0xEuLL), vextq_s8(0, v60[-1].u8[v38 + 7], 0xDuLL)), vextq_s8(0, v60[-1].u8[v34 + 7], 0xCuLL)), vextq_s8(0, v60[-1].u8[result + 7], 0xBuLL)), vextq_s8(0, v60[-1].u8[v40 + 7], 9uLL)), vorrq_s8(vzip1q_s8(v60[-1].u8[-(v59 * v13) + 7], v60[-1].u8[7]), vextq_s8(0, v60[-1].u8[v43 + 7], 0xAuLL)));
          v120 = vextq_s8(0, v60[-1].u8[v41 + 7], 8uLL);
          v121 = vorrq_s8(v119, vorrq_s8(vextq_s8(0, v120, 0xFuLL), v120));
          v122 = vzip1q_s8(vextq_s8(v121, 0, 1uLL), 0);
          a8 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v119, 0), vzip1q_s8(vextq_s8(v121, 0, 2uLL), 0)), vaddq_s16(v122, v122)), v42), 2uLL);
          v123 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v118, 2uLL)), a8))));
          v124 = ((v123.u16[4] + v123.u16[0] + 8) >> 4 << 8) | ((v123.u16[4] + v123.u16[0] + 8) >> 4);
LABEL_111:
          a7 = vzip1q_s32((v124 | (v124 << 16)), (v124 | (v124 << 16)));
          goto LABEL_112;
        }

        v223 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v60[-1].u8[v13 + 7], 0xEuLL), vextq_s8(0, v60[-1].u8[v38 + 7], 0xDuLL)), vextq_s8(0, v60[-1].u8[v34 + 7], 0xCuLL)), vextq_s8(0, v60[-1].u8[result + 7], 0xBuLL)), vextq_s8(0, v60[-1].u8[v40 + 7], 9uLL)), vorrq_s8(vzip1q_s8(v60[-1].u8[-(v59 * v13) + 7], v60[-1].u8[7]), vextq_s8(0, v60[-1].u8[v43 + 7], 0xAuLL)));
        v224 = vextq_s8(0, v60[-1].u8[v41 + 7], 8uLL);
        v225 = vorrq_s8(v223, vorrq_s8(vextq_s8(0, v224, 0xFuLL), v224));
        v226 = vzip1q_s8(vextq_s8(v225, 0, 1uLL), 0);
        v184 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v223, 0), vzip1q_s8(vextq_s8(v225, 0, 2uLL), 0)), vaddq_s16(v226, v226)), v42);
      }

      else
      {
        a7 = xmmword_2773B4520;
        if (!v62)
        {
LABEL_112:
          if (!v21)
          {
            goto LABEL_123;
          }

          v93 = (v36 + 2 * *v46);
          a7 = vzip1q_s8(a7, 0);
          goto LABEL_114;
        }

        *a7.i8 = *(v60 - v13);
        v182 = vzip1q_s8(a7, 0);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v183 = vextq_s8(0, v182, 0xEuLL);
        v183.i16[0] = v60->u8[-v13 - v59];
        v184 = vaddq_s16(vaddq_s16(vzip1q_s8(vextq_s8(a7, 0, 1uLL), 0), vaddq_s16(v182, v182)), vaddq_s16(v183, v42));
      }

      v227 = vshrq_n_u16(v184, 2uLL);
      a8 = vqmovun_high_s16(vqmovun_s16(v227), v227);
      v228 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(a8))).u16[0] + 4;
      v124 = (v228 >> 3 << 8) | (v228 >> 3);
      goto LABEL_111;
    }

    if (v58 <= 5)
    {
      if (v58 == 4)
      {
        *a7.i8 = *(v60 - v62 * v13);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v145 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
        v146 = vzip1q_s8(vextq_s8(v145, 0, 1uLL), 0);
        v147 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v145, 0), vzip1q_s8(vextq_s8(v145, 0, 2uLL), 0)), vaddq_s16(v146, v146)), v42), 2uLL);
        v148 = (v60 - v61);
        v149 = vzip1q_s8(v60->u8[~(v59 * v13)], v148->u8[0]);
        v150 = (v148->u8[0] + 2 * v60->u8[~(v59 * v13)] + *(v60 - v62 * v13) + 2) >> 2;
        v151 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v148->u8[v13], 0xEuLL), vextq_s8(0, v148->u8[v38], 0xDuLL)), vextq_s8(0, v148->u8[v34], 0xCuLL)), v149), vorrq_s8(vorrq_s8(vextq_s8(0, v148->u8[result], 0xBuLL), vextq_s8(0, v148->u8[v43], 0xAuLL)), vextq_s8(0, v148->u8[v40], 9uLL)));
        v152 = vextq_s8(0, v148->u8[v41], 8uLL);
        v153 = vorrq_s8(v151, vorrq_s8(vextq_s8(0, v152, 0xFuLL), v152));
        v154 = vzip1q_s8(vextq_s8(v153, 0, 1uLL), 0);
        v155 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v151, 0), vzip1q_s8(vextq_s8(v153, 0, 2uLL), 0)), vaddq_s16(v154, v154)), v42), 2uLL);
        v156 = vextq_s8(0, v147, 0xEuLL);
        v156.i16[0] = v150;
        v157 = vextq_s8(0, v155, 0xEuLL);
        v157.i16[0] = v150;
        v158 = ((v147.i16[0] & 0x1FF) + 2 * v150 + (v155.i16[0] & 0x1FF) + 2) >> 2;
        v159 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v147, v147), vextq_s8(v147, 0, 2uLL)), v42), v156), 2uLL), 0xEuLL);
        v159.i16[0] = v158;
        a8 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v155, v155), vextq_s8(v155, 0, 2uLL)), v42), v157), 2uLL), xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
        if (v21)
        {
          v93 = (v36 + 2 * *v46);
          *v60 = vqmovun_s16(vaddq_s16(*v93, v159));
          *(v60 + v13) = vqmovun_s16(vaddq_s16(v93[2], vextq_s8(a8, v159, 0xEuLL)));
          *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], vextq_s8(a8, v159, 0xCuLL)));
          *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], vextq_s8(a8, v159, 0xAuLL)));
          *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], vextq_s8(a8, v159, 8uLL)));
          *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], vextq_s8(a8, v159, 6uLL)));
          *(v60 + v40) = vqmovun_s16(vaddq_s16(v93[12], vextq_s8(a8, v159, 4uLL)));
          a7 = vextq_s8(a8, v159, 2uLL);
          goto LABEL_116;
        }

        *v60 = vqmovun_s16(v159);
        *(v60 + v13) = vqmovun_s16(vextq_s8(a8, v159, 0xEuLL));
        *(v60 + v38) = vqmovun_s16(vextq_s8(a8, v159, 0xCuLL));
        *(v60 + v34) = vqmovun_s16(vextq_s8(a8, v159, 0xAuLL));
        *(v60 + result) = vqmovun_s16(vextq_s8(a8, v159, 8uLL));
        *(v60 + v43) = vqmovun_s16(vextq_s8(a8, v159, 6uLL));
        *(v60 + v40) = vqmovun_s16(vextq_s8(a8, v159, 4uLL));
        a7 = vextq_s8(a8, v159, 2uLL);
      }

      else
      {
        *a7.i8 = *(v60 - v62 * v13);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v96 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
        v97 = vzip1q_s8(vextq_s8(v96, 0, 1uLL), 0);
        v98 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v96, 0), vzip1q_s8(vextq_s8(v96, 0, 2uLL), 0)), vaddq_s16(v97, v97)), v42), 2uLL);
        v99 = (v60 - v61);
        v100 = vzip1q_s8(v60->u8[~(v59 * v13)], v99->u8[0]);
        v101 = (v99->u8[0] + 2 * v60->u8[~(v59 * v13)] + *(v60 - v62 * v13) + 2) >> 2;
        v102 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v99->u8[v13], 0xEuLL), vextq_s8(0, v99->u8[v38], 0xDuLL)), vextq_s8(0, v99->u8[v34], 0xCuLL)), v100), vorrq_s8(vorrq_s8(vextq_s8(0, v99->u8[result], 0xBuLL), vextq_s8(0, v99->u8[v43], 0xAuLL)), vextq_s8(0, v99->u8[v40], 9uLL)));
        v103 = vextq_s8(0, v99->u8[v41], 8uLL);
        v104 = vorrq_s8(v102, vorrq_s8(vextq_s8(0, v103, 0xFuLL), v103));
        v105 = vzip1q_s8(vextq_s8(v104, 0, 1uLL), 0);
        v106 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v102, 0), vzip1q_s8(vextq_s8(v104, 0, 2uLL), 0)), vaddq_s16(v105, v105)), v42), 2uLL);
        v107 = vextq_s8(0, v98, 0xEuLL);
        v107.i16[0] = v101;
        v108 = vshrq_n_u16(vsubq_s16(v98, vmvnq_s8(v107)), 1uLL);
        v109 = vextq_s8(0, v106, 0xEuLL);
        v109.i16[0] = v101;
        v110 = ((v98.i16[0] & 0x1FF) + 2 * v101 + (v106.i16[0] & 0x1FF) + 2) >> 2;
        a8 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v98, v98), vextq_s8(v98, 0, 2uLL)), v42), v107), 2uLL), 0xEuLL);
        a8.i16[0] = v110;
        v111 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v106, v106), vextq_s8(v106, 0, 2uLL)), v42), v109), 2uLL), xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
        if (v21)
        {
          v76 = (v36 + 2 * *v46);
          *v60 = vqmovun_s16(vaddq_s16(*v76, v108));
          *(v60 + v13) = vqmovun_s16(vaddq_s16(v76[2], a8));
          *(v60 + v38) = vqmovun_s16(vaddq_s16(v76[4], vextq_s8(v111, v108, 0xEuLL)));
          *(v60 + v34) = vqmovun_s16(vaddq_s16(v76[6], vextq_s8(vdupq_laneq_s16(v111, 6), a8, 0xEuLL)));
          v112 = vqtbl1q_s8(v111, xmmword_2773B44D0);
          *(v60 + result) = vqmovun_s16(vaddq_s16(v76[8], vextq_s8(v112, v108, 0xCuLL)));
          v113 = vqtbl1q_s8(v111, xmmword_2773B44E0);
          *(v60 + v43) = vqmovun_s16(vaddq_s16(v76[10], vextq_s8(v113, a8, 0xCuLL)));
          *(v60 + v40) = vqmovun_s16(vaddq_s16(v76[12], vextq_s8(vqtbl1q_s8(v112, xmmword_2773B44F0), v108, 0xAuLL)));
          a7 = vextq_s8(vqtbl1q_s8(vqtbl1q_s8(v113, xmmword_2773B44F0), xmmword_2773B4500), a8, 0xAuLL);
          goto LABEL_69;
        }

        *v60 = vqmovun_s16(v108);
        *(v60 + v13) = vqmovun_s16(a8);
        *(v60 + v38) = vqmovun_s16(vextq_s8(v111, v108, 0xEuLL));
        *(v60 + v34) = vqmovun_s16(vextq_s8(vdupq_laneq_s16(v111, 6), a8, 0xEuLL));
        v180 = vqtbl1q_s8(v111, xmmword_2773B44D0);
        *(v60 + result) = vqmovun_s16(vextq_s8(v180, v108, 0xCuLL));
        v181 = vqtbl1q_s8(v111, xmmword_2773B44E0);
        *(v60 + v43) = vqmovun_s16(vextq_s8(v181, a8, 0xCuLL));
        *(v60 + v40) = vqmovun_s16(vextq_s8(vqtbl1q_s8(v180, xmmword_2773B44F0), v108, 0xAuLL));
        a7 = vextq_s8(vqtbl1q_s8(vqtbl1q_s8(v181, xmmword_2773B44F0), xmmword_2773B4500), a8, 0xAuLL);
      }
    }

    else
    {
      if (v58 != 6)
      {
        if (v58 == 7)
        {
          *a8.i8 = *(v60 - v62 * v13);
          v160 = v60 - v13;
          if (v63)
          {
            a7.i64[0] = *(v160 + 1);
          }

          else
          {
            v190 = vextq_s8(a8, 0, 7uLL);
            v191 = vzip1q_s8(v190, v190);
            v192 = vzip1q_s16(v191, v191);
            a7 = vzip1q_s32(v192, v192);
          }

          v193 = (v36 + 2 * *v46);
          v194 = vorrq_s8(vextq_s8(0, a8, 0xFuLL), v160[-v59]);
          v195 = vorrq_s8(v194, vextq_s8(0, a7, 7uLL));
          v196 = vzip1q_s8(v194, 0);
          v197 = vzip1q_s8(vextq_s8(v194, 0, 1uLL), 0);
          v198 = vshrq_n_u16(vaddq_s16(vaddq_s16(v196, vzip1q_s8(vextq_s8(v195, 0, 2uLL), 0)), vaddq_s16(vaddq_s16(v197, v197), v42)), 2uLL);
          v199 = vzip1q_s8(a7, 0);
          v200 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v199, v199), vzip2q_s8(v195, 0)), vaddq_s16(vzip1q_s8(vorrq_s8(vextq_s8(0, vdupq_lane_s8(*a7.i8, 7), 9uLL), vextq_s8(a7, 0, 1uLL)), 0), v42)), 2uLL);
          v201 = vqmovun_s16(v198);
          v202 = vqmovun_s16(v200);
          v203 = vext_s8(v201, v202, 1uLL);
          v204 = vext_s8(v201, v202, 2uLL);
          v205 = vaddl_u8(v203, v201);
          v206 = vaddw_u8(v42, v204);
          v207 = vshrq_n_u16(vaddq_s16(vaddw_u8(v206, v203), v205), 2uLL);
          v208 = vshrq_n_u16(vaddq_s16(v205, v45), 1uLL);
          if (v21)
          {
            *v60 = vqmovun_s16(vaddq_s16(*v193, v208));
            v207 = vaddq_s16(v193[2], v207);
          }

          else
          {
            *v60 = vqmovun_s16(v208);
          }

          v209 = vmovl_u8(v203);
          v210 = vmovl_u8(v204);
          *(v60 + v13) = vqmovun_s16(v207);
          v211 = vext_s8(v201, v202, 3uLL);
          v212 = vaddq_s16(v209, v210);
          v213 = vshrq_n_u16(vaddq_s16(vaddw_u8(v206, v211), v212), 2uLL);
          v214 = vshrq_n_u16(vaddq_s16(v212, v45), 1uLL);
          if (v21)
          {
            *(v60 + v38) = vqmovun_s16(vaddq_s16(v193[4], v214));
            v213 = vaddq_s16(v193[6], v213);
          }

          else
          {
            *(v60 + v38) = vqmovun_s16(v214);
          }

          v215 = vmovl_u8(v211);
          *(v60 + v34) = vqmovun_s16(v213);
          v216 = vext_s8(v201, v202, 4uLL);
          v217 = vaddq_s16(v210, v215);
          v218 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddw_u8(v215, v216), v217), v42), 2uLL);
          v219 = vshrq_n_u16(vaddq_s16(v217, v45), 1uLL);
          if (v21)
          {
            *(v60 + result) = vqmovun_s16(vaddq_s16(v193[8], v219));
            v218 = vaddq_s16(v193[10], v218);
          }

          else
          {
            *(v60 + result) = vqmovun_s16(v219);
          }

          v220 = vmovl_u8(v216);
          *(v60 + v43) = vqmovun_s16(v218);
          v221 = vext_s8(v201, v202, 5uLL);
          v222 = vaddq_s16(v215, v220);
          a7 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddw_u8(v220, v221), v222), v42), 2uLL);
          a8 = vshrq_n_u16(vaddq_s16(v222, v45), 1uLL);
          if (v21)
          {
            *(v60 + v40) = vqmovun_s16(vaddq_s16(v193[12], a8));
            a8 = v193[14];
            goto LABEL_117;
          }
        }

        else
        {
          if (v58 != 8)
          {
            goto LABEL_120;
          }

          v64 = (v60 - v61);
          v65 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v64->u8[v13], 0xEuLL), vextq_s8(0, v64->u8[v38], 0xDuLL)), vextq_s8(0, v64->u8[v34], 0xCuLL)), vzip1q_s8(v60->u8[~(v59 * v13)], v64->u8[0])), vorrq_s8(vorrq_s8(vextq_s8(0, v64->u8[result], 0xBuLL), vextq_s8(0, v64->u8[v43], 0xAuLL)), vextq_s8(0, v64->u8[v40], 9uLL)));
          v66 = vextq_s8(0, v64->u8[v41], 8uLL);
          v67 = vorrq_s8(v65, vorrq_s8(vextq_s8(0, v66, 0xFuLL), v66));
          v68 = vzip1q_s8(vextq_s8(v67, 0, 1uLL), 0);
          v69 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v65, 0), vzip1q_s8(vextq_s8(v67, 0, 2uLL), 0)), vaddq_s16(v68, v68)), v42);
          v70 = vshrq_n_u16(v69, 2uLL);
          v71 = vextq_s8(v70, 0, 2uLL);
          v72 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vextq_s8(v70, 0, 4uLL), v69, 2uLL), vaddq_s16(vaddq_s16(v71, v71), v42)), 2uLL);
          v73 = v70.i16[7] & 0x1FF;
          v72.i16[6] = ((v70.i16[6] & 0x1FFu) + 3 * v73 + 2) >> 2;
          v74 = vextq_s8(vextq_s8(0, vshrq_n_u16(vsubq_s16(v71, vmvnq_s8(v70)), 1uLL), 0xEuLL), 0, 2uLL);
          v75 = vextq_s8(vextq_s8(0, v72, 0xEuLL), 0, 2uLL);
          a7 = vdupq_n_s32(v73 | (v73 << 16));
          if (v21)
          {
            v76 = (v36 + 2 * *v46);
            *v60 = vqmovun_s16(vaddq_s16(*v76, vzip1q_s16(v74, v75)));
            v77 = vextq_s8(v75, 0, 2uLL);
            *(v60 + v13) = vqmovun_s16(vaddq_s16(v76[2], vzip1q_s16(vextq_s8(v74, 0, 2uLL), v77)));
            v78 = vextq_s8(v77, 0, 2uLL);
            *(v60 + v38) = vqmovun_s16(vaddq_s16(v76[4], vzip1q_s16(vextq_s8(v74, 0, 4uLL), v78)));
            v79 = vextq_s8(v78, 0, 2uLL);
            *(v60 + v34) = vqmovun_s16(vaddq_s16(v76[6], vzip1q_s16(vextq_s8(v74, 0, 6uLL), v79)));
            v80 = vextq_s8(v79, 0, 2uLL);
            *(v60 + result) = vqmovun_s16(vaddq_s16(v76[8], vorrq_s8(vzip1q_s16(vdupq_laneq_s64(v74, 1), v80), vextq_s8(0, a7, 4uLL))));
            v81 = vextq_s8(v80, 0, 2uLL);
            *(v60 + v43) = vqmovun_s16(vaddq_s16(v76[10], vorrq_s8(vzip1q_s16(vextq_s8(v74, 0, 0xAuLL), v81), vextq_s8(0, a7, 8uLL))));
            v235.val[1] = vextq_s8(v74, 0, 0xCuLL);
            v235.val[0] = vextq_s8(v81, 0, 2uLL);
            *(v60 + v40) = vqmovun_s16(vaddq_s16(v76[12], vorrq_s8(vqtbl2q_s8(v235, xmmword_2773B4490), vextq_s8(0, a7, 0xCuLL))));
LABEL_69:
            a8 = v76[14];
LABEL_117:
            a7 = vaddq_s16(a8, a7);
            goto LABEL_118;
          }

          *v60 = vqmovun_s16(vzip1q_s16(v74, v75));
          v185 = vextq_s8(v75, 0, 2uLL);
          *(v60 + v13) = vqmovun_s16(vzip1q_s16(vextq_s8(v74, 0, 2uLL), v185));
          v186 = vextq_s8(v185, 0, 2uLL);
          *(v60 + v38) = vqmovun_s16(vzip1q_s16(vextq_s8(v74, 0, 4uLL), v186));
          v187 = vextq_s8(v186, 0, 2uLL);
          *(v60 + v34) = vqmovun_s16(vzip1q_s16(vextq_s8(v74, 0, 6uLL), v187));
          v188 = vextq_s8(v187, 0, 2uLL);
          *(v60 + result) = vqmovun_s16(vorrq_s8(vzip1q_s16(vdupq_laneq_s64(v74, 1), v188), vextq_s8(0, a7, 4uLL)));
          v189 = vextq_s8(v188, 0, 2uLL);
          *(v60 + v43) = vqmovun_s16(vorrq_s8(vzip1q_s16(vextq_s8(v74, 0, 0xAuLL), v189), vextq_s8(0, a7, 8uLL)));
          v236.val[1] = vextq_s8(v74, 0, 0xCuLL);
          v236.val[0] = vextq_s8(v189, 0, 2uLL);
          a8 = vorrq_s8(vqtbl2q_s8(v236, xmmword_2773B4490), vextq_s8(0, a7, 0xCuLL));
        }

        goto LABEL_108;
      }

      *a7.i8 = *(v60 - v62 * v13);
      a7.i16[4] = v60->u8[v63 - v13 + 7];
      v125 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
      v126 = vzip1q_s8(vextq_s8(v125, 0, 1uLL), 0);
      v127 = (v60 - v61);
      v128 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v125, 0), vzip1q_s8(vextq_s8(v125, 0, 2uLL), 0)), vaddq_s16(v126, v126)), v42), 2uLL);
      v129 = vzip1q_s8(v60->u8[~(v59 * v13)], v127->u8[0]);
      v130 = (v127->u8[0] + 2 * v60->u8[~(v59 * v13)] + *(v60 - v62 * v13) + 2) >> 2;
      v131 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v127->u8[v13], 0xEuLL), vextq_s8(0, v127->u8[v38], 0xDuLL)), vextq_s8(0, v127->u8[v34], 0xCuLL)), v129), vorrq_s8(vorrq_s8(vextq_s8(0, v127->u8[result], 0xBuLL), vextq_s8(0, v127->u8[v43], 0xAuLL)), vextq_s8(0, v127->u8[v40], 9uLL)));
      v132 = vextq_s8(0, v127->u8[v41], 8uLL);
      v133 = vorrq_s8(v131, vorrq_s8(vextq_s8(0, v132, 0xFuLL), v132));
      v134 = vzip1q_s8(vextq_s8(v133, 0, 1uLL), 0);
      v135 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v131, 0), vzip1q_s8(vextq_s8(v133, 0, 2uLL), 0)), vaddq_s16(v134, v134)), v42), 2uLL);
      v136 = vextq_s8(0, v135, 0xEuLL);
      v136.i16[0] = v130;
      v137 = vshrq_n_u16(vsubq_s16(v136, vmvnq_s8(v135)), 1uLL);
      v138 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v135, v135), vextq_s8(v135, 0, 2uLL)), v42), v136), 2uLL);
      v139 = vextq_s8(0, v128, 0xEuLL);
      v139.i16[0] = v130;
      v140 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v128, v128), vextq_s8(v128, 0, 2uLL)), v42), v139), 2uLL), 0xEuLL);
      v140.i16[0] = ((v128.i16[0] & 0x1FF) + 2 * v130 + (v135.i16[0] & 0x1FF) + 2) >> 2;
      v141 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v137, xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
      v142 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v138, xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
      v143 = vextq_s8(v141, v140, 0xEuLL);
      v144 = vzip2q_s16(v142, v141);
      a8 = vdupq_lane_s64(v141.i64[0], 0);
      if (v21)
      {
        v93 = (v36 + 2 * *v46);
        *v60 = vqmovun_s16(vaddq_s16(*v93, v143));
        *(v60 + v13) = vqmovun_s16(vaddq_s16(v93[2], vextq_s8(v144, v140, 0xAuLL)));
        *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], vextq_s8(v144, v140, 6uLL)));
        *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], vextq_s8(v144, v140, 2uLL)));
        *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], vzip2q_s16(vextq_s8(0, v141, 0xEuLL), v142)));
        *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], vzip2q_s16(vextq_s8(0, v141, 0xCuLL), vextq_s8(0, v142, 0xEuLL))));
        *(v60 + v40) = vqmovun_s16(vaddq_s16(v93[12], vzip2q_s16(vextq_s8(0, v141, 0xAuLL), vextq_s8(0, v142, 0xCuLL))));
        a7 = vzip2q_s16(a8, vextq_s8(0, v142, 0xAuLL));
LABEL_116:
        a8 = v93[14];
        goto LABEL_117;
      }

      *v60 = vqmovun_s16(v143);
      *(v60 + v13) = vqmovun_s16(vextq_s8(v144, v140, 0xAuLL));
      *(v60 + v38) = vqmovun_s16(vextq_s8(v144, v140, 6uLL));
      *(v60 + v34) = vqmovun_s16(vextq_s8(v144, v140, 2uLL));
      *(v60 + result) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v141, 0xEuLL), v142));
      *(v60 + v43) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v141, 0xCuLL), vextq_s8(0, v142, 0xEuLL)));
      *(v60 + v40) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v141, 0xAuLL), vextq_s8(0, v142, 0xCuLL)));
      a7 = vzip2q_s16(a8, vextq_s8(0, v142, 0xAuLL));
    }

LABEL_118:
    *a7.i8 = vqmovun_s16(a7);
LABEL_119:
    *(v60 + v41) = *a7.i8;
LABEL_120:
    ++v37;
    ++v46;
    v229 = v32 >= 0xC;
    v32 += 4;
  }

  while (!v229);
  return result;
}

uint64_t sub_277361EE8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int16x8_t a7, int16x8_t a8)
{
  v234 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 72);
  v9 = *(a1 + 824);
  v10 = *(a1 + 828);
  if (!*(a2 + 20) || !*(a2 + 22))
  {
    v11 = v8 + 408;
    v13 = *(v8 + 34);
    if (*(a2 + 23) == 1)
    {
      v19 = *(a1 + 820);
      v15 = *(v8 + 4) + 32 * v13 * (v19 / (2 * *(a2 + 16))) + ((8 * (v19 % (2 * *(a2 + 16)))) & 0xFFFFFFF0);
      if (v19)
      {
        v17 = 16 * v13;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_16;
    }

    v15 = *(v8 + 4) + (16 * v9);
    v18 = v10 * v13;
LABEL_10:
    v17 = (16 * v18);
    goto LABEL_16;
  }

  v11 = v8 + 472;
  v12 = *(v8 + 34);
  v13 = 2 * v12;
  v14 = *v8;
  v15 = *(v8 + 4) + (16 * v9);
  if (!*(a2 + 21))
  {
    v18 = v10 * v12;
    if (v14)
    {
      v17 = (32 * v18);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  v17 = ((v10 << v16) * v12);
  v15 += v12;
LABEL_16:
  v20 = v15 + v17;
  v21 = *(a1 + 816);
  v22 = *(a2 + 968) + 16;
  v23 = *(a2 + 936);
  v24 = *(a2 + 944);
  v25 = *(a2 + 952);
  v26 = *(a2 + 960);
  v232 = 0;
  v233 = 0;
  v230 = v22;
  v231 = 0;
  if (v23)
  {
    v231 = &v23[16 * (v23[32] != 0)];
    v27 = 1;
    if (v24)
    {
LABEL_18:
      v28 = &v24[16 * (v24[32] != 0)];
      v29 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v27 = 0;
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v28 = 0;
  v29 = 0;
LABEL_21:
  v232 = v28;
  v30 = v25 != 0;
  v31 = v26 != 0;
  if (*(a2 + 928))
  {
    if (!v23 || v23[16] == 34 || *v23 == 34)
    {
      v27 = 0;
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v27 = 1;
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    if (v24[16] != 34 && *v24 != 34)
    {
      v29 = 1;
      if (!v25)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    v29 = 0;
    if (!v25)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (v25[16] != 34 && *v25 != 34)
    {
      v30 = 1;
      if (!v26)
      {
        goto LABEL_39;
      }

LABEL_35:
      if (v26[16] != 34 && *v26 != 34)
      {
        v31 = 1;
        goto LABEL_40;
      }

LABEL_39:
      v31 = 0;
      goto LABEL_40;
    }

LABEL_34:
    v30 = 0;
    if (!v26)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_40:
  v32 = 0;
  v33 = (2 * v30) | (4 * v29) | (8 * v27);
  v34 = 3 * v13;
  v35 = v33 | v31;
  v36 = a2 + 112;
  v37 = (a1 + 1158);
  v38 = 2 * v13;
  result = 4 * v13;
  v40 = 6 * v13;
  v41 = 7 * v13;
  v42.i64[0] = 0x2000200020002;
  v42.i64[1] = 0x2000200020002;
  v43 = 5 * v13;
  v44 = (&unk_2773B4DA4 + 4 * v35);
  v45.i64[0] = 0x1000100010001;
  v45.i64[1] = 0x1000100010001;
  v46 = &byte_2773B4DA0;
  do
  {
    v47 = byte_280A6AA70[v32];
    v48 = byte_280A6AA70[v32 + 16];
    v49 = *(&v230 + (~(2 * v48) & 2));
    v50 = *(&v230 + ((v47 & 1) == 0));
    if (v49)
    {
      v51 = v50 == 0;
    }

    else
    {
      v51 = 1;
    }

    if (v51 || (v52 = *(v50 + ((v47 >> 1) & 0xF)), v53 = *(v49 + ((v48 >> 1) & 0xF)), (*(a2 + 928) & ((v53 | v52) >> 5) & 1) != 0))
    {
      v54 = 2;
    }

    else
    {
      v54 = (((v52 & 0xF) - (v53 & 0xF)) & (((v52 & 0xF) - (v53 & 0xF)) >> 31)) + (v53 & 0xF);
    }

    v56 = *v44;
    v44 += 16;
    v55 = v56;
    v57 = *v37;
    if (v54 <= v57)
    {
      ++v57;
    }

    v58 = v57 & (*(v37 - 20) - 1) | v54 & -*(v37 - 20);
    *(v22 + v32) = vdup_n_s8(v58).u32[0];
    v59 = v55 >> 24;
    v60 = (v20 + *&v11[4 * v32]);
    v61 = v55;
    v62 = BYTE1(v55);
    v63 = BYTE2(v55);
    if (v58 <= 3)
    {
      if (v58 <= 1)
      {
        if (v58)
        {
          if (v58 != 1)
          {
            goto LABEL_118;
          }

          v82 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v60->u8[v13 - v61], 0xEuLL), vextq_s8(0, v60->u8[v38 - v61], 0xDuLL)), vextq_s8(0, v60->u8[v34 - v61], 0xCuLL)), vextq_s8(0, v60->u8[result - v61], 0xBuLL)), vextq_s8(0, v60->u8[v40 - v61], 9uLL)), vorrq_s8(vzip1q_s8(v60->u8[~(v59 * v13)], v60->u8[-v61]), vextq_s8(0, v60->u8[v43 - v61], 0xAuLL)));
          v83 = vextq_s8(0, v60->u8[v41 - v61], 8uLL);
          v84 = vorrq_s8(v82, vorrq_s8(vextq_s8(0, v83, 0xFuLL), v83));
          v85 = vzip1q_s8(vextq_s8(v84, 0, 1uLL), 0);
          v86 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v82, 0), vzip1q_s8(vextq_s8(v84, 0, 2uLL), 0)), vaddq_s16(v85, v85)), v42), 2uLL);
          v87 = vdupq_lane_s16(*v86.i8, 0);
          v88 = vdupq_lane_s16(*v86.i8, 1);
          v89 = vdupq_lane_s16(*v86.i8, 2);
          v90 = vdupq_lane_s16(*v86.i8, 3);
          v91 = vdupq_laneq_s16(v86, 4);
          v92 = vdupq_laneq_s16(v86, 5);
          a8 = vdupq_laneq_s16(v86, 6);
          a7 = vdupq_laneq_s16(v86, 7);
          if (v21)
          {
            v93 = (v36 + 2 * *v46);
            *v60 = vqmovun_s16(vaddq_s16(*v93, v87));
            v94 = vaddq_s16(v93[2], v88);
LABEL_84:
            *(v60 + v13) = vqmovun_s16(v94);
            *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], v89));
            *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], v90));
            *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], v91));
            *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], v92));
            v179 = vaddq_s16(v93[12], a8);
LABEL_113:
            *(v60 + v40) = vqmovun_s16(v179);
            goto LABEL_114;
          }

          *v60 = vqmovun_s16(v87);
          v161 = vqmovun_s16(v88);
          goto LABEL_86;
        }

        *a7.i8 = *(v60 - v62 * v13);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v114 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
        a8 = vzip1q_s8(v114, 0);
        v115 = vzip1q_s8(vextq_s8(v114, 0, 1uLL), 0);
        a7 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v114, 0, 2uLL), 0)), vaddq_s16(v115, v115)), v42), 2uLL);
        if (!v21)
        {
          *a7.i8 = vqmovun_s16(a7);
LABEL_121:
          *v60 = *a7.i8;
          *(v60 + v13) = *a7.i8;
          *(v60 + v38) = *a7.i8;
          *(v60 + v34) = *a7.i8;
          *(v60 + result) = *a7.i8;
          *(v60 + v43) = *a7.i8;
          *(v60 + v40) = *a7.i8;
          goto LABEL_117;
        }

        v93 = (v36 + 2 * *v46);
LABEL_112:
        *v60 = vqmovun_s16(vaddq_s16(*v93, a7));
        *(v60 + v13) = vqmovun_s16(vaddq_s16(v93[2], a7));
        *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], a7));
        *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], a7));
        *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], a7));
        *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], a7));
        v179 = vaddq_s16(v93[12], a7);
        goto LABEL_113;
      }

      if (v58 != 2)
      {
        *a8.i8 = *(v60 - v62 * v13);
        v95 = v60 - v13;
        if (v63)
        {
          a7.i64[0] = *(v95 + 1);
        }

        else
        {
          v162 = vextq_s8(a8, 0, 7uLL);
          v163 = vzip1q_s8(v162, v162);
          v164 = vzip1q_s16(v163, v163);
          a7 = vzip1q_s32(v164, v164);
        }

        v165 = vorrq_s8(vextq_s8(0, a8, 0xFuLL), v95[-v59]);
        v166 = vorrq_s8(v165, vextq_s8(0, a7, 7uLL));
        v167 = vzip1q_s8(v165, 0);
        v168 = vzip1q_s8(vextq_s8(v165, 0, 1uLL), 0);
        v169 = vaddq_s16(vaddq_s16(v167, vzip1q_s8(vextq_s8(v166, 0, 2uLL), 0)), vaddq_s16(vaddq_s16(v168, v168), v42));
        v170 = vshrq_n_u16(v169, 2uLL);
        v171 = vzip1q_s8(a7, 0);
        v172 = vaddq_s16(vaddq_s16(vaddq_s16(v171, v171), vzip2q_s8(v166, 0)), vaddq_s16(vzip1q_s8(vorrq_s8(vextq_s8(0, vdupq_lane_s8(*a7.i8, 7), 9uLL), vextq_s8(a7, 0, 1uLL)), 0), v42));
        v173 = vshrq_n_u16(v172, 2uLL);
        v174 = vextq_s8(v170, v173, 2uLL);
        v175 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vextq_s8(v170, v173, 4uLL), v169, 2uLL), vaddq_s16(vaddq_s16(v174, v174), v42)), 2uLL);
        v176 = vextq_s8(v173, 0, 2uLL);
        v177 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vqtbl1q_s8(vextq_s8(v173, 0, 4uLL), xmmword_2773B4510), v172, 2uLL), vaddq_s16(vaddq_s16(v176, v176), v42)), 2uLL);
        v178 = vextq_s8(v175, v177, 2uLL);
        v89 = vextq_s8(v175, v177, 4uLL);
        v90 = vextq_s8(v175, v177, 6uLL);
        v91 = vextq_s8(v175, v177, 8uLL);
        v92 = vextq_s8(v175, v177, 0xAuLL);
        a8 = vextq_s8(v175, v177, 0xCuLL);
        a7 = vextq_s8(v175, v177, 0xEuLL);
        if (v21)
        {
          v93 = (v36 + 2 * *v46);
          *v60 = vqmovun_s16(vaddq_s16(*v93, v175));
          v94 = vaddq_s16(v93[2], v178);
          goto LABEL_84;
        }

        *v60 = vqmovun_s16(v175);
        v161 = vqmovun_s16(v178);
LABEL_86:
        *(v60 + v13) = v161;
        *(v60 + v38) = vqmovun_s16(v89);
        *(v60 + v34) = vqmovun_s16(v90);
        *(v60 + result) = vqmovun_s16(v91);
        *(v60 + v43) = vqmovun_s16(v92);
LABEL_106:
        *(v60 + v40) = vqmovun_s16(a8);
        goto LABEL_116;
      }

      if (v61)
      {
        if (v62)
        {
          *a7.i8 = *(v60 - v13);
          a7.i16[4] = v60->u8[v63 - v13 + 7];
          v116 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
          v117 = vzip1q_s8(vextq_s8(v116, 0, 1uLL), 0);
          v118 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v116, 0), vzip1q_s8(vextq_s8(v116, 0, 2uLL), 0)), vaddq_s16(v117, v117)), v42);
          v119 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v60[-1].u8[v13 + 7], 0xEuLL), vextq_s8(0, v60[-1].u8[v38 + 7], 0xDuLL)), vextq_s8(0, v60[-1].u8[v34 + 7], 0xCuLL)), vextq_s8(0, v60[-1].u8[result + 7], 0xBuLL)), vextq_s8(0, v60[-1].u8[v40 + 7], 9uLL)), vorrq_s8(vzip1q_s8(v60[-1].u8[-(v59 * v13) + 7], v60[-1].u8[7]), vextq_s8(0, v60[-1].u8[v43 + 7], 0xAuLL)));
          v120 = vextq_s8(0, v60[-1].u8[v41 + 7], 8uLL);
          v121 = vorrq_s8(v119, vorrq_s8(vextq_s8(0, v120, 0xFuLL), v120));
          v122 = vzip1q_s8(vextq_s8(v121, 0, 1uLL), 0);
          a8 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v119, 0), vzip1q_s8(vextq_s8(v121, 0, 2uLL), 0)), vaddq_s16(v122, v122)), v42), 2uLL);
          v123 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v118, 2uLL)), a8))));
          v124 = ((v123.u16[4] + v123.u16[0] + 8) >> 4 << 8) | ((v123.u16[4] + v123.u16[0] + 8) >> 4);
LABEL_109:
          a7 = vzip1q_s32((v124 | (v124 << 16)), (v124 | (v124 << 16)));
          goto LABEL_110;
        }

        v223 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v60[-1].u8[v13 + 7], 0xEuLL), vextq_s8(0, v60[-1].u8[v38 + 7], 0xDuLL)), vextq_s8(0, v60[-1].u8[v34 + 7], 0xCuLL)), vextq_s8(0, v60[-1].u8[result + 7], 0xBuLL)), vextq_s8(0, v60[-1].u8[v40 + 7], 9uLL)), vorrq_s8(vzip1q_s8(v60[-1].u8[-(v59 * v13) + 7], v60[-1].u8[7]), vextq_s8(0, v60[-1].u8[v43 + 7], 0xAuLL)));
        v224 = vextq_s8(0, v60[-1].u8[v41 + 7], 8uLL);
        v225 = vorrq_s8(v223, vorrq_s8(vextq_s8(0, v224, 0xFuLL), v224));
        v226 = vzip1q_s8(vextq_s8(v225, 0, 1uLL), 0);
        v184 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v223, 0), vzip1q_s8(vextq_s8(v225, 0, 2uLL), 0)), vaddq_s16(v226, v226)), v42);
      }

      else
      {
        a7 = xmmword_2773B4520;
        if (!v62)
        {
LABEL_110:
          if (!v21)
          {
            goto LABEL_121;
          }

          v93 = (v36 + 2 * *v46);
          a7 = vzip1q_s8(a7, 0);
          goto LABEL_112;
        }

        *a7.i8 = *(v60 - v13);
        v182 = vzip1q_s8(a7, 0);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v183 = vextq_s8(0, v182, 0xEuLL);
        v183.i16[0] = v60->u8[-v13 - v59];
        v184 = vaddq_s16(vaddq_s16(vzip1q_s8(vextq_s8(a7, 0, 1uLL), 0), vaddq_s16(v182, v182)), vaddq_s16(v183, v42));
      }

      v227 = vshrq_n_u16(v184, 2uLL);
      a8 = vqmovun_high_s16(vqmovun_s16(v227), v227);
      v228 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(a8))).u16[0] + 4;
      v124 = (v228 >> 3 << 8) | (v228 >> 3);
      goto LABEL_109;
    }

    if (v58 <= 5)
    {
      if (v58 == 4)
      {
        *a7.i8 = *(v60 - v62 * v13);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v145 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
        v146 = vzip1q_s8(vextq_s8(v145, 0, 1uLL), 0);
        v147 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v145, 0), vzip1q_s8(vextq_s8(v145, 0, 2uLL), 0)), vaddq_s16(v146, v146)), v42), 2uLL);
        v148 = (v60 - v61);
        v149 = vzip1q_s8(v60->u8[~(v59 * v13)], v148->u8[0]);
        v150 = (v148->u8[0] + 2 * v60->u8[~(v59 * v13)] + *(v60 - v62 * v13) + 2) >> 2;
        v151 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v148->u8[v13], 0xEuLL), vextq_s8(0, v148->u8[v38], 0xDuLL)), vextq_s8(0, v148->u8[v34], 0xCuLL)), v149), vorrq_s8(vorrq_s8(vextq_s8(0, v148->u8[result], 0xBuLL), vextq_s8(0, v148->u8[v43], 0xAuLL)), vextq_s8(0, v148->u8[v40], 9uLL)));
        v152 = vextq_s8(0, v148->u8[v41], 8uLL);
        v153 = vorrq_s8(v151, vorrq_s8(vextq_s8(0, v152, 0xFuLL), v152));
        v154 = vzip1q_s8(vextq_s8(v153, 0, 1uLL), 0);
        v155 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v151, 0), vzip1q_s8(vextq_s8(v153, 0, 2uLL), 0)), vaddq_s16(v154, v154)), v42), 2uLL);
        v156 = vextq_s8(0, v147, 0xEuLL);
        v156.i16[0] = v150;
        v157 = vextq_s8(0, v155, 0xEuLL);
        v157.i16[0] = v150;
        v158 = ((v147.i16[0] & 0x1FF) + 2 * v150 + (v155.i16[0] & 0x1FF) + 2) >> 2;
        v159 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v147, v147), vextq_s8(v147, 0, 2uLL)), v42), v156), 2uLL), 0xEuLL);
        v159.i16[0] = v158;
        a8 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v155, v155), vextq_s8(v155, 0, 2uLL)), v42), v157), 2uLL), xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
        if (v21)
        {
          v93 = (v36 + 2 * *v46);
          *v60 = vqmovun_s16(vaddq_s16(*v93, v159));
          *(v60 + v13) = vqmovun_s16(vaddq_s16(v93[2], vextq_s8(a8, v159, 0xEuLL)));
          *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], vextq_s8(a8, v159, 0xCuLL)));
          *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], vextq_s8(a8, v159, 0xAuLL)));
          *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], vextq_s8(a8, v159, 8uLL)));
          *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], vextq_s8(a8, v159, 6uLL)));
          *(v60 + v40) = vqmovun_s16(vaddq_s16(v93[12], vextq_s8(a8, v159, 4uLL)));
          a7 = vextq_s8(a8, v159, 2uLL);
          goto LABEL_114;
        }

        *v60 = vqmovun_s16(v159);
        *(v60 + v13) = vqmovun_s16(vextq_s8(a8, v159, 0xEuLL));
        *(v60 + v38) = vqmovun_s16(vextq_s8(a8, v159, 0xCuLL));
        *(v60 + v34) = vqmovun_s16(vextq_s8(a8, v159, 0xAuLL));
        *(v60 + result) = vqmovun_s16(vextq_s8(a8, v159, 8uLL));
        *(v60 + v43) = vqmovun_s16(vextq_s8(a8, v159, 6uLL));
        *(v60 + v40) = vqmovun_s16(vextq_s8(a8, v159, 4uLL));
        a7 = vextq_s8(a8, v159, 2uLL);
      }

      else
      {
        *a7.i8 = *(v60 - v62 * v13);
        a7.i16[4] = v60->u8[v63 - v13 + 7];
        v96 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
        v97 = vzip1q_s8(vextq_s8(v96, 0, 1uLL), 0);
        v98 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v96, 0), vzip1q_s8(vextq_s8(v96, 0, 2uLL), 0)), vaddq_s16(v97, v97)), v42), 2uLL);
        v99 = (v60 - v61);
        v100 = vzip1q_s8(v60->u8[~(v59 * v13)], v99->u8[0]);
        v101 = (v99->u8[0] + 2 * v60->u8[~(v59 * v13)] + *(v60 - v62 * v13) + 2) >> 2;
        v102 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v99->u8[v13], 0xEuLL), vextq_s8(0, v99->u8[v38], 0xDuLL)), vextq_s8(0, v99->u8[v34], 0xCuLL)), v100), vorrq_s8(vorrq_s8(vextq_s8(0, v99->u8[result], 0xBuLL), vextq_s8(0, v99->u8[v43], 0xAuLL)), vextq_s8(0, v99->u8[v40], 9uLL)));
        v103 = vextq_s8(0, v99->u8[v41], 8uLL);
        v104 = vorrq_s8(v102, vorrq_s8(vextq_s8(0, v103, 0xFuLL), v103));
        v105 = vzip1q_s8(vextq_s8(v104, 0, 1uLL), 0);
        v106 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v102, 0), vzip1q_s8(vextq_s8(v104, 0, 2uLL), 0)), vaddq_s16(v105, v105)), v42), 2uLL);
        v107 = vextq_s8(0, v98, 0xEuLL);
        v107.i16[0] = v101;
        v108 = vshrq_n_u16(vsubq_s16(v98, vmvnq_s8(v107)), 1uLL);
        v109 = vextq_s8(0, v106, 0xEuLL);
        v109.i16[0] = v101;
        v110 = ((v98.i16[0] & 0x1FF) + 2 * v101 + (v106.i16[0] & 0x1FF) + 2) >> 2;
        a8 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v98, v98), vextq_s8(v98, 0, 2uLL)), v42), v107), 2uLL), 0xEuLL);
        a8.i16[0] = v110;
        v111 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v106, v106), vextq_s8(v106, 0, 2uLL)), v42), v109), 2uLL), xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
        if (v21)
        {
          v76 = (v36 + 2 * *v46);
          *v60 = vqmovun_s16(vaddq_s16(*v76, v108));
          *(v60 + v13) = vqmovun_s16(vaddq_s16(v76[2], a8));
          *(v60 + v38) = vqmovun_s16(vaddq_s16(v76[4], vextq_s8(v111, v108, 0xEuLL)));
          *(v60 + v34) = vqmovun_s16(vaddq_s16(v76[6], vextq_s8(vdupq_laneq_s16(v111, 6), a8, 0xEuLL)));
          v112 = vqtbl1q_s8(v111, xmmword_2773B44D0);
          *(v60 + result) = vqmovun_s16(vaddq_s16(v76[8], vextq_s8(v112, v108, 0xCuLL)));
          v113 = vqtbl1q_s8(v111, xmmword_2773B44E0);
          *(v60 + v43) = vqmovun_s16(vaddq_s16(v76[10], vextq_s8(v113, a8, 0xCuLL)));
          *(v60 + v40) = vqmovun_s16(vaddq_s16(v76[12], vextq_s8(vqtbl1q_s8(v112, xmmword_2773B44F0), v108, 0xAuLL)));
          a7 = vextq_s8(vqtbl1q_s8(vqtbl1q_s8(v113, xmmword_2773B44F0), xmmword_2773B4500), a8, 0xAuLL);
          goto LABEL_67;
        }

        *v60 = vqmovun_s16(v108);
        *(v60 + v13) = vqmovun_s16(a8);
        *(v60 + v38) = vqmovun_s16(vextq_s8(v111, v108, 0xEuLL));
        *(v60 + v34) = vqmovun_s16(vextq_s8(vdupq_laneq_s16(v111, 6), a8, 0xEuLL));
        v180 = vqtbl1q_s8(v111, xmmword_2773B44D0);
        *(v60 + result) = vqmovun_s16(vextq_s8(v180, v108, 0xCuLL));
        v181 = vqtbl1q_s8(v111, xmmword_2773B44E0);
        *(v60 + v43) = vqmovun_s16(vextq_s8(v181, a8, 0xCuLL));
        *(v60 + v40) = vqmovun_s16(vextq_s8(vqtbl1q_s8(v180, xmmword_2773B44F0), v108, 0xAuLL));
        a7 = vextq_s8(vqtbl1q_s8(vqtbl1q_s8(v181, xmmword_2773B44F0), xmmword_2773B4500), a8, 0xAuLL);
      }
    }

    else
    {
      if (v58 != 6)
      {
        if (v58 == 7)
        {
          *a8.i8 = *(v60 - v62 * v13);
          v160 = v60 - v13;
          if (v63)
          {
            a7.i64[0] = *(v160 + 1);
          }

          else
          {
            v190 = vextq_s8(a8, 0, 7uLL);
            v191 = vzip1q_s8(v190, v190);
            v192 = vzip1q_s16(v191, v191);
            a7 = vzip1q_s32(v192, v192);
          }

          v193 = (v36 + 2 * *v46);
          v194 = vorrq_s8(vextq_s8(0, a8, 0xFuLL), v160[-v59]);
          v195 = vorrq_s8(v194, vextq_s8(0, a7, 7uLL));
          v196 = vzip1q_s8(v194, 0);
          v197 = vzip1q_s8(vextq_s8(v194, 0, 1uLL), 0);
          v198 = vshrq_n_u16(vaddq_s16(vaddq_s16(v196, vzip1q_s8(vextq_s8(v195, 0, 2uLL), 0)), vaddq_s16(vaddq_s16(v197, v197), v42)), 2uLL);
          v199 = vzip1q_s8(a7, 0);
          v200 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v199, v199), vzip2q_s8(v195, 0)), vaddq_s16(vzip1q_s8(vorrq_s8(vextq_s8(0, vdupq_lane_s8(*a7.i8, 7), 9uLL), vextq_s8(a7, 0, 1uLL)), 0), v42)), 2uLL);
          v201 = vqmovun_s16(v198);
          v202 = vqmovun_s16(v200);
          v203 = vext_s8(v201, v202, 1uLL);
          v204 = vext_s8(v201, v202, 2uLL);
          v205 = vaddl_u8(v203, v201);
          v206 = vaddw_u8(v42, v204);
          v207 = vshrq_n_u16(vaddq_s16(vaddw_u8(v206, v203), v205), 2uLL);
          v208 = vshrq_n_u16(vaddq_s16(v205, v45), 1uLL);
          if (v21)
          {
            *v60 = vqmovun_s16(vaddq_s16(*v193, v208));
            v207 = vaddq_s16(v193[2], v207);
          }

          else
          {
            *v60 = vqmovun_s16(v208);
          }

          v209 = vmovl_u8(v203);
          v210 = vmovl_u8(v204);
          *(v60 + v13) = vqmovun_s16(v207);
          v211 = vext_s8(v201, v202, 3uLL);
          v212 = vaddq_s16(v209, v210);
          v213 = vshrq_n_u16(vaddq_s16(vaddw_u8(v206, v211), v212), 2uLL);
          v214 = vshrq_n_u16(vaddq_s16(v212, v45), 1uLL);
          if (v21)
          {
            *(v60 + v38) = vqmovun_s16(vaddq_s16(v193[4], v214));
            v213 = vaddq_s16(v193[6], v213);
          }

          else
          {
            *(v60 + v38) = vqmovun_s16(v214);
          }

          v215 = vmovl_u8(v211);
          *(v60 + v34) = vqmovun_s16(v213);
          v216 = vext_s8(v201, v202, 4uLL);
          v217 = vaddq_s16(v210, v215);
          v218 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddw_u8(v215, v216), v217), v42), 2uLL);
          v219 = vshrq_n_u16(vaddq_s16(v217, v45), 1uLL);
          if (v21)
          {
            *(v60 + result) = vqmovun_s16(vaddq_s16(v193[8], v219));
            v218 = vaddq_s16(v193[10], v218);
          }

          else
          {
            *(v60 + result) = vqmovun_s16(v219);
          }

          v220 = vmovl_u8(v216);
          *(v60 + v43) = vqmovun_s16(v218);
          v221 = vext_s8(v201, v202, 5uLL);
          v222 = vaddq_s16(v215, v220);
          a7 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddw_u8(v220, v221), v222), v42), 2uLL);
          a8 = vshrq_n_u16(vaddq_s16(v222, v45), 1uLL);
          if (v21)
          {
            *(v60 + v40) = vqmovun_s16(vaddq_s16(v193[12], a8));
            a8 = v193[14];
            goto LABEL_115;
          }
        }

        else
        {
          if (v58 != 8)
          {
            goto LABEL_118;
          }

          v64 = (v60 - v61);
          v65 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v64->u8[v13], 0xEuLL), vextq_s8(0, v64->u8[v38], 0xDuLL)), vextq_s8(0, v64->u8[v34], 0xCuLL)), vzip1q_s8(v60->u8[~(v59 * v13)], v64->u8[0])), vorrq_s8(vorrq_s8(vextq_s8(0, v64->u8[result], 0xBuLL), vextq_s8(0, v64->u8[v43], 0xAuLL)), vextq_s8(0, v64->u8[v40], 9uLL)));
          v66 = vextq_s8(0, v64->u8[v41], 8uLL);
          v67 = vorrq_s8(v65, vorrq_s8(vextq_s8(0, v66, 0xFuLL), v66));
          v68 = vzip1q_s8(vextq_s8(v67, 0, 1uLL), 0);
          v69 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v65, 0), vzip1q_s8(vextq_s8(v67, 0, 2uLL), 0)), vaddq_s16(v68, v68)), v42);
          v70 = vshrq_n_u16(v69, 2uLL);
          v71 = vextq_s8(v70, 0, 2uLL);
          v72 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vextq_s8(v70, 0, 4uLL), v69, 2uLL), vaddq_s16(vaddq_s16(v71, v71), v42)), 2uLL);
          v73 = v70.i16[7] & 0x1FF;
          v72.i16[6] = ((v70.i16[6] & 0x1FFu) + 3 * v73 + 2) >> 2;
          v74 = vextq_s8(vextq_s8(0, vshrq_n_u16(vsubq_s16(v71, vmvnq_s8(v70)), 1uLL), 0xEuLL), 0, 2uLL);
          v75 = vextq_s8(vextq_s8(0, v72, 0xEuLL), 0, 2uLL);
          a7 = vdupq_n_s32(v73 | (v73 << 16));
          if (v21)
          {
            v76 = (v36 + 2 * *v46);
            *v60 = vqmovun_s16(vaddq_s16(*v76, vzip1q_s16(v74, v75)));
            v77 = vextq_s8(v75, 0, 2uLL);
            *(v60 + v13) = vqmovun_s16(vaddq_s16(v76[2], vzip1q_s16(vextq_s8(v74, 0, 2uLL), v77)));
            v78 = vextq_s8(v77, 0, 2uLL);
            *(v60 + v38) = vqmovun_s16(vaddq_s16(v76[4], vzip1q_s16(vextq_s8(v74, 0, 4uLL), v78)));
            v79 = vextq_s8(v78, 0, 2uLL);
            *(v60 + v34) = vqmovun_s16(vaddq_s16(v76[6], vzip1q_s16(vextq_s8(v74, 0, 6uLL), v79)));
            v80 = vextq_s8(v79, 0, 2uLL);
            *(v60 + result) = vqmovun_s16(vaddq_s16(v76[8], vorrq_s8(vzip1q_s16(vdupq_laneq_s64(v74, 1), v80), vextq_s8(0, a7, 4uLL))));
            v81 = vextq_s8(v80, 0, 2uLL);
            *(v60 + v43) = vqmovun_s16(vaddq_s16(v76[10], vorrq_s8(vzip1q_s16(vextq_s8(v74, 0, 0xAuLL), v81), vextq_s8(0, a7, 8uLL))));
            v235.val[1] = vextq_s8(v74, 0, 0xCuLL);
            v235.val[0] = vextq_s8(v81, 0, 2uLL);
            *(v60 + v40) = vqmovun_s16(vaddq_s16(v76[12], vorrq_s8(vqtbl2q_s8(v235, xmmword_2773B4490), vextq_s8(0, a7, 0xCuLL))));
LABEL_67:
            a8 = v76[14];
LABEL_115:
            a7 = vaddq_s16(a8, a7);
            goto LABEL_116;
          }

          *v60 = vqmovun_s16(vzip1q_s16(v74, v75));
          v185 = vextq_s8(v75, 0, 2uLL);
          *(v60 + v13) = vqmovun_s16(vzip1q_s16(vextq_s8(v74, 0, 2uLL), v185));
          v186 = vextq_s8(v185, 0, 2uLL);
          *(v60 + v38) = vqmovun_s16(vzip1q_s16(vextq_s8(v74, 0, 4uLL), v186));
          v187 = vextq_s8(v186, 0, 2uLL);
          *(v60 + v34) = vqmovun_s16(vzip1q_s16(vextq_s8(v74, 0, 6uLL), v187));
          v188 = vextq_s8(v187, 0, 2uLL);
          *(v60 + result) = vqmovun_s16(vorrq_s8(vzip1q_s16(vdupq_laneq_s64(v74, 1), v188), vextq_s8(0, a7, 4uLL)));
          v189 = vextq_s8(v188, 0, 2uLL);
          *(v60 + v43) = vqmovun_s16(vorrq_s8(vzip1q_s16(vextq_s8(v74, 0, 0xAuLL), v189), vextq_s8(0, a7, 8uLL)));
          v236.val[1] = vextq_s8(v74, 0, 0xCuLL);
          v236.val[0] = vextq_s8(v189, 0, 2uLL);
          a8 = vorrq_s8(vqtbl2q_s8(v236, xmmword_2773B4490), vextq_s8(0, a7, 0xCuLL));
        }

        goto LABEL_106;
      }

      *a7.i8 = *(v60 - v62 * v13);
      a7.i16[4] = v60->u8[v63 - v13 + 7];
      v125 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v60->u8[-v13 - v59]);
      v126 = vzip1q_s8(vextq_s8(v125, 0, 1uLL), 0);
      v127 = (v60 - v61);
      v128 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v125, 0), vzip1q_s8(vextq_s8(v125, 0, 2uLL), 0)), vaddq_s16(v126, v126)), v42), 2uLL);
      v129 = vzip1q_s8(v60->u8[~(v59 * v13)], v127->u8[0]);
      v130 = (v127->u8[0] + 2 * v60->u8[~(v59 * v13)] + *(v60 - v62 * v13) + 2) >> 2;
      v131 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v127->u8[v13], 0xEuLL), vextq_s8(0, v127->u8[v38], 0xDuLL)), vextq_s8(0, v127->u8[v34], 0xCuLL)), v129), vorrq_s8(vorrq_s8(vextq_s8(0, v127->u8[result], 0xBuLL), vextq_s8(0, v127->u8[v43], 0xAuLL)), vextq_s8(0, v127->u8[v40], 9uLL)));
      v132 = vextq_s8(0, v127->u8[v41], 8uLL);
      v133 = vorrq_s8(v131, vorrq_s8(vextq_s8(0, v132, 0xFuLL), v132));
      v134 = vzip1q_s8(vextq_s8(v133, 0, 1uLL), 0);
      v135 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v131, 0), vzip1q_s8(vextq_s8(v133, 0, 2uLL), 0)), vaddq_s16(v134, v134)), v42), 2uLL);
      v136 = vextq_s8(0, v135, 0xEuLL);
      v136.i16[0] = v130;
      v137 = vshrq_n_u16(vsubq_s16(v136, vmvnq_s8(v135)), 1uLL);
      v138 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v135, v135), vextq_s8(v135, 0, 2uLL)), v42), v136), 2uLL);
      v139 = vextq_s8(0, v128, 0xEuLL);
      v139.i16[0] = v130;
      v140 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v128, v128), vextq_s8(v128, 0, 2uLL)), v42), v139), 2uLL), 0xEuLL);
      v140.i16[0] = ((v128.i16[0] & 0x1FF) + 2 * v130 + (v135.i16[0] & 0x1FF) + 2) >> 2;
      v141 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v137, xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
      v142 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v138, xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
      v143 = vextq_s8(v141, v140, 0xEuLL);
      v144 = vzip2q_s16(v142, v141);
      a8 = vdupq_lane_s64(v141.i64[0], 0);
      if (v21)
      {
        v93 = (v36 + 2 * *v46);
        *v60 = vqmovun_s16(vaddq_s16(*v93, v143));
        *(v60 + v13) = vqmovun_s16(vaddq_s16(v93[2], vextq_s8(v144, v140, 0xAuLL)));
        *(v60 + v38) = vqmovun_s16(vaddq_s16(v93[4], vextq_s8(v144, v140, 6uLL)));
        *(v60 + v34) = vqmovun_s16(vaddq_s16(v93[6], vextq_s8(v144, v140, 2uLL)));
        *(v60 + result) = vqmovun_s16(vaddq_s16(v93[8], vzip2q_s16(vextq_s8(0, v141, 0xEuLL), v142)));
        *(v60 + v43) = vqmovun_s16(vaddq_s16(v93[10], vzip2q_s16(vextq_s8(0, v141, 0xCuLL), vextq_s8(0, v142, 0xEuLL))));
        *(v60 + v40) = vqmovun_s16(vaddq_s16(v93[12], vzip2q_s16(vextq_s8(0, v141, 0xAuLL), vextq_s8(0, v142, 0xCuLL))));
        a7 = vzip2q_s16(a8, vextq_s8(0, v142, 0xAuLL));
LABEL_114:
        a8 = v93[14];
        goto LABEL_115;
      }

      *v60 = vqmovun_s16(v143);
      *(v60 + v13) = vqmovun_s16(vextq_s8(v144, v140, 0xAuLL));
      *(v60 + v38) = vqmovun_s16(vextq_s8(v144, v140, 6uLL));
      *(v60 + v34) = vqmovun_s16(vextq_s8(v144, v140, 2uLL));
      *(v60 + result) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v141, 0xEuLL), v142));
      *(v60 + v43) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v141, 0xCuLL), vextq_s8(0, v142, 0xEuLL)));
      *(v60 + v40) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v141, 0xAuLL), vextq_s8(0, v142, 0xCuLL)));
      a7 = vzip2q_s16(a8, vextq_s8(0, v142, 0xAuLL));
    }

LABEL_116:
    *a7.i8 = vqmovun_s16(a7);
LABEL_117:
    *(v60 + v41) = *a7.i8;
LABEL_118:
    ++v37;
    ++v46;
    v229 = v32 >= 0xC;
    v32 += 4;
  }

  while (!v229);
  return result;
}

uint64_t sub_2773637F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 936);
  v4 = v3 != 0;
  v5 = *(a2 + 944);
  v6 = v5 != 0;
  if (!*(a2 + 928))
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if (*v3 == 34)
    {
      v4 = 0;
    }

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (v5)
    {
LABEL_6:
      v6 = *v5 != 34;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = *(a2 + 72);
  v8 = *(v7 + 136);
  if (*(a2 + 23) == 1)
  {
    v11 = *(a1 + 820);
    v9 = *(v7 + 32) + 32 * v8 * (v11 / (2 * *(a2 + 16))) + ((8 * (v11 % (2 * *(a2 + 16)))) & 0xFFFFFFF0);
    if (v11)
    {
      v10 = 16 * v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = *(v7 + 32) + (16 * *(a1 + 824));
    v10 = 16 * *(a1 + 828) * v8;
  }

  result = sub_27729FA50((v9 + v10), v8, a2 + 112, v6, v4, byte_2773BA2F0[*(a1 + 834)]);
  v13 = *(a2 + 968);
  *v13 = 0x1212121212121212;
  v13[1] = 0x1212121212121212;
  return result;
}

uint64_t sub_2773638FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 936);
  v4 = v3 != 0;
  v5 = *(a2 + 944);
  v6 = v5 != 0;
  if (!*(a2 + 928))
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if (*v3 == 34)
    {
      v4 = 0;
    }

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (v5)
    {
LABEL_6:
      v6 = *v5 != 34;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = *(a2 + 72);
  v8 = *(a1 + 828);
  v9 = *(v7 + 34);
  v10 = *v7;
  v11 = *(v7 + 4) + (16 * *(a1 + 824));
  v12 = 32 * v8 * v9;
  if (v10)
  {
    v13 = 5;
  }

  else
  {
    v12 = 16 * v8 * v9;
    v13 = 4;
  }

  v14 = v11 + (v8 << v13) * v9;
  if (*(a2 + 21))
  {
    v12 = v9;
    v11 = v14;
  }

  result = sub_27729FA50((v11 + v12), 2 * v9, a2 + 112, v6, v4, byte_2773BA2F0[*(a1 + 834)]);
  v16 = *(a2 + 968);
  *v16 = 0x1212121212121212;
  v16[1] = 0x1212121212121212;
  return result;
}

uint64_t sub_2773639F8(uint64_t a1, int16x8_t *a2)
{
  v2 = a2[58].i64[1];
  v3 = v2 != 0;
  v4 = a2[59].i64[0];
  v5 = v4 != 0;
  if (a2[58].i8[0])
  {
    if (v2)
    {
      if (*v2 == 34)
      {
        v3 = 0;
      }

      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = 0;
      if (v4)
      {
LABEL_6:
        v5 = *v4 != 34;
        return sub_27729FDF8(a1, a2, a2 + 39, v5, v3, *(a1 + 1121));
      }
    }

    v5 = 0;
  }

  return sub_27729FDF8(a1, a2, a2 + 39, v5, v3, *(a1 + 1121));
}

int *sub_277363A54(int *result, uint64_t a2, double a3, double a4, double a5, double a6, int16x8_t a7, int16x8_t a8)
{
  v233 = *MEMORY[0x277D85DE8];
  v8 = *(result + 27);
  v10 = *result;
  v9 = result[1];
  if (*(result + 29) && *(v8 + 1363))
  {
    v11 = v8 + 504;
    v12 = *(v8 + 168);
    v13 = 2 * v12;
    v14 = *(v8 + 32);
    v15 = *(v8 + 64) + (16 * v10);
    if (*(result + 30))
    {
      if (v14)
      {
        v16 = 5;
      }

      else
      {
        v16 = 4;
      }

      v17 = ((v9 << v16) * v12);
      v15 += v12;
      goto LABEL_21;
    }

    v18 = v9 * v12;
    if (v14)
    {
      v17 = (32 * v18);
LABEL_21:
      v23 = v15 + v17;
      goto LABEL_22;
    }

LABEL_20:
    v17 = (16 * v18);
    goto LABEL_21;
  }

  v11 = v8 + 440;
  v13 = *(v8 + 168);
  if (*(result + 31) == 1)
  {
    v19 = result[4];
    v15 = *(v8 + 64) + 32 * v13 * (v19 / (2 * result[5])) + ((8 * (v19 % (2 * result[5]))) & 0xFFFFFFF0);
    if (v19)
    {
      v17 = 16 * v13;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_21;
  }

  if (!*(result + 31))
  {
    v15 = *(v8 + 64) + (16 * v10);
    v18 = v9 * v13;
    goto LABEL_20;
  }

  v20 = result[4];
  v21 = *(v8 + 64) + 32 * v13 * (v20 / (2 * result[5])) + ((8 * (v20 % (2 * result[5]))) & 0xFFFFFFF0);
  if (v20)
  {
    v22 = *(v8 + 168);
  }

  else
  {
    v22 = 0;
  }

  v23 = v21 + v22;
  v11 = v8 + 504;
  v13 *= 2;
LABEL_22:
  v24 = *(*(result + 5) + 52);
  v25 = *(result + 21);
  v26 = *(result + 22) + 48;
  v28 = *(result + 16);
  v27 = *(result + 17);
  v30 = *(result + 18);
  v29 = *(result + 19);
  v231 = 0;
  v232 = 0;
  v229 = v26;
  v230 = 0;
  if (v28)
  {
    v31 = 48;
    if (!v28[64])
    {
      v31 = 32;
    }

    v230 = &v28[v31];
    v32 = 1;
    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    if (v27)
    {
LABEL_26:
      if (v27[64])
      {
        v33 = v27 + 48;
      }

      else
      {
        v33 = v27 + 32;
      }

      v231 = v33;
      v34 = 1;
      goto LABEL_32;
    }
  }

  v34 = 0;
  v231 = 0;
LABEL_32:
  v35 = v30 != 0;
  v36 = v29 != 0;
  if (v25)
  {
    if (*(v25 + 64))
    {
      v37 = v25 + 48;
    }

    else
    {
      v37 = v25 + 32;
    }

    v232 = v37;
  }

  else
  {
    v232 = 0;
  }

  v38 = *(result + 6);
  if (!*(v38 + 4))
  {
    goto LABEL_59;
  }

  if (!v28)
  {
    v32 = 0;
    if (v27)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v28[48] != 34)
  {
    v32 = 1;
    if (v27)
    {
      goto LABEL_47;
    }

LABEL_42:
    v34 = 0;
    if (v30)
    {
      goto LABEL_43;
    }

LABEL_49:
    v35 = 0;
    if (!v29)
    {
      goto LABEL_45;
    }

LABEL_50:
    v36 = *(v29 + 48) != 34 || *(v29 + 32) != 34;
    goto LABEL_59;
  }

  v32 = v28[32] != 34;
  if (!v27)
  {
    goto LABEL_42;
  }

LABEL_47:
  if (v27[48] == 34)
  {
    v34 = v27[32] != 34;
    if (!v30)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v34 = 1;
    if (!v30)
    {
      goto LABEL_49;
    }
  }

LABEL_43:
  if (*(v30 + 48) != 34)
  {
    v35 = 1;
    if (!v29)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  v35 = *(v30 + 32) != 34;
  if (v29)
  {
    goto LABEL_50;
  }

LABEL_45:
  v36 = 0;
LABEL_59:
  v39 = (2 * v35) | (4 * v34) | (8 * v32) | v36;
  v40 = byte_280A6AA70;
  if (v28 && (*(result + 185) & 1) != 0)
  {
    v41 = *(result + 31);
    if (v41 != 2 || v28[144])
    {
      if (v41 == 1 && v28[144] == 1)
      {
        if (result[4])
        {
          v40 = &unk_280A6AB08;
        }

        else
        {
          v40 = &unk_280A6AAD8;
        }
      }
    }

    else
    {
      v40 = &unk_280A6AAA8;
    }
  }

  v42 = 0;
  v43 = v40 + 16;
  v44 = (v38 + 326);
  v45 = 2 * v13;
  v46 = 3 * v13;
  v47 = 4 * v13;
  v48 = 6 * v13;
  v49 = 7 * v13;
  v50 = 5 * v13;
  v51.i64[0] = 0x2000200020002;
  v51.i64[1] = 0x2000200020002;
  v52 = (&unk_2773B4DA4 + 4 * v39);
  v53.i64[0] = 0x1000100010001;
  v53.i64[1] = 0x1000100010001;
  v54 = &byte_2773B4DA0;
  do
  {
    v55 = v43[v42 - 16];
    if (v28 && v42 >= 8 && *(result + 31) == 2 && !v28[144])
    {
      v56 = !(v55 & 1) | (2 * !(v55 & 1));
    }

    else
    {
      v56 = !(v55 & 1);
    }

    v57 = v43[v42];
    v58 = *(&v229 + (~(2 * v57) & 2));
    v59 = *(&v229 + v56);
    if (v58)
    {
      v60 = v59 == 0;
    }

    else
    {
      v60 = 1;
    }

    if (v60 || (v61 = *(v59 + ((v55 >> 1) & 0xF)), v62 = *(v58 + ((v57 >> 1) & 0xF)), (*(*(result + 6) + 4) & ((v62 | v61) >> 5) & 1) != 0))
    {
      v63 = 2;
    }

    else
    {
      v63 = (((v61 & 0xF) - (v62 & 0xF)) & (((v61 & 0xF) - (v62 & 0xF)) >> 31)) + (v62 & 0xF);
    }

    v65 = *v52;
    v52 += 16;
    v64 = v65;
    v66 = *v44;
    if (v63 <= v66)
    {
      ++v66;
    }

    v67 = v66 & (*(v44 - 20) - 1) | v63 & -*(v44 - 20);
    *(v26 + v42) = vdup_n_s8(v67).u32[0];
    v68 = v64 >> 24;
    v69 = (v23 + *(v11 + 4 * v42));
    if (v67 <= 3)
    {
      if (v67 <= 1)
      {
        if (v67)
        {
          if (v67 != 1)
          {
            goto LABEL_152;
          }

          v89 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v69->u8[v13 - v64], 0xEuLL), vextq_s8(0, v69->u8[v45 - v64], 0xDuLL)), vextq_s8(0, v69->u8[v46 - v64], 0xCuLL)), vextq_s8(0, v69->u8[v47 - v64], 0xBuLL)), vextq_s8(0, v69->u8[v48 - v64], 9uLL)), vorrq_s8(vzip1q_s8(v69->u8[~(v68 * v13)], v69->u8[-v64]), vextq_s8(0, v69->u8[v50 - v64], 0xAuLL)));
          v90 = vextq_s8(0, v69->u8[v49 - v64], 8uLL);
          v91 = vorrq_s8(v89, vorrq_s8(vextq_s8(0, v90, 0xFuLL), v90));
          v92 = vzip1q_s8(vextq_s8(v91, 0, 1uLL), 0);
          v93 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v89, 0), vzip1q_s8(vextq_s8(v91, 0, 2uLL), 0)), vaddq_s16(v92, v92)), v51), 2uLL);
          v94 = vdupq_lane_s16(*v93.i8, 0);
          v95 = vdupq_lane_s16(*v93.i8, 1);
          v96 = vdupq_lane_s16(*v93.i8, 2);
          v97 = vdupq_lane_s16(*v93.i8, 3);
          v98 = vdupq_laneq_s16(v93, 4);
          v99 = vdupq_laneq_s16(v93, 5);
          a8 = vdupq_laneq_s16(v93, 6);
          a7 = vdupq_laneq_s16(v93, 7);
          if (v24)
          {
            v82 = (a2 + 2 * *v54);
            *v69 = vqmovun_s16(vaddq_s16(*v82, v94));
            v100 = vaddq_s16(v82[2], v95);
LABEL_118:
            *(v69 + v13) = vqmovun_s16(v100);
            *(v69 + v45) = vqmovun_s16(vaddq_s16(v82[4], v96));
            *(v69 + v46) = vqmovun_s16(vaddq_s16(v82[6], v97));
            *(v69 + v47) = vqmovun_s16(vaddq_s16(v82[8], v98));
            *(v69 + v50) = vqmovun_s16(vaddq_s16(v82[10], v99));
            v88 = vaddq_s16(v82[12], a8);
            goto LABEL_147;
          }

          *v69 = vqmovun_s16(v94);
          v161 = vqmovun_s16(v95);
          goto LABEL_120;
        }

        *a7.i8 = *(v69 - BYTE1(v64) * v13);
        a7.i16[4] = v69->u8[BYTE2(v64) - v13 + 7];
        v118 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v69->u8[-v13 - v68]);
        a8 = vzip1q_s8(v118, 0);
        v119 = vzip1q_s8(vextq_s8(v118, 0, 1uLL), 0);
        a7 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(a8, vzip1q_s8(vextq_s8(v118, 0, 2uLL), 0)), vaddq_s16(v119, v119)), v51), 2uLL);
        if (!v24)
        {
          *a7.i8 = vqmovun_s16(a7);
LABEL_155:
          *v69 = *a7.i8;
          *(v69 + v13) = *a7.i8;
          *(v69 + v45) = *a7.i8;
          *(v69 + v46) = *a7.i8;
          *(v69 + v47) = *a7.i8;
          *(v69 + v50) = *a7.i8;
          *(v69 + v48) = *a7.i8;
          goto LABEL_151;
        }

        v82 = (a2 + 2 * *v54);
LABEL_146:
        *v69 = vqmovun_s16(vaddq_s16(*v82, a7));
        *(v69 + v13) = vqmovun_s16(vaddq_s16(v82[2], a7));
        *(v69 + v45) = vqmovun_s16(vaddq_s16(v82[4], a7));
        *(v69 + v46) = vqmovun_s16(vaddq_s16(v82[6], a7));
        *(v69 + v47) = vqmovun_s16(vaddq_s16(v82[8], a7));
        *(v69 + v50) = vqmovun_s16(vaddq_s16(v82[10], a7));
        v88 = vaddq_s16(v82[12], a7);
        goto LABEL_147;
      }

      if (v67 != 2)
      {
        *a8.i8 = *(v69 - BYTE1(v64) * v13);
        v101 = v69 - v13;
        if (BYTE2(v64))
        {
          a7.i64[0] = *(v101 + 1);
        }

        else
        {
          v162 = vextq_s8(a8, 0, 7uLL);
          v163 = vzip1q_s8(v162, v162);
          v164 = vzip1q_s16(v163, v163);
          a7 = vzip1q_s32(v164, v164);
        }

        v165 = vorrq_s8(vextq_s8(0, a8, 0xFuLL), v101[-v68]);
        v166 = vorrq_s8(v165, vextq_s8(0, a7, 7uLL));
        v167 = vzip1q_s8(v165, 0);
        v168 = vzip1q_s8(vextq_s8(v165, 0, 1uLL), 0);
        v169 = vaddq_s16(vaddq_s16(v167, vzip1q_s8(vextq_s8(v166, 0, 2uLL), 0)), vaddq_s16(vaddq_s16(v168, v168), v51));
        v170 = vshrq_n_u16(v169, 2uLL);
        v171 = vzip1q_s8(a7, 0);
        v172 = vaddq_s16(vaddq_s16(vaddq_s16(v171, v171), vzip2q_s8(v166, 0)), vaddq_s16(vzip1q_s8(vorrq_s8(vextq_s8(0, vdupq_lane_s8(*a7.i8, 7), 9uLL), vextq_s8(a7, 0, 1uLL)), 0), v51));
        v173 = vshrq_n_u16(v172, 2uLL);
        v174 = vextq_s8(v170, v173, 2uLL);
        v175 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vextq_s8(v170, v173, 4uLL), v169, 2uLL), vaddq_s16(vaddq_s16(v174, v174), v51)), 2uLL);
        v176 = vextq_s8(v173, 0, 2uLL);
        v177 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vqtbl1q_s8(vextq_s8(v173, 0, 4uLL), xmmword_2773B4510), v172, 2uLL), vaddq_s16(vaddq_s16(v176, v176), v51)), 2uLL);
        v178 = vextq_s8(v175, v177, 2uLL);
        v96 = vextq_s8(v175, v177, 4uLL);
        v97 = vextq_s8(v175, v177, 6uLL);
        v98 = vextq_s8(v175, v177, 8uLL);
        v99 = vextq_s8(v175, v177, 0xAuLL);
        a8 = vextq_s8(v175, v177, 0xCuLL);
        a7 = vextq_s8(v175, v177, 0xEuLL);
        if (v24)
        {
          v82 = (a2 + 2 * *v54);
          *v69 = vqmovun_s16(vaddq_s16(*v82, v175));
          v100 = vaddq_s16(v82[2], v178);
          goto LABEL_118;
        }

        *v69 = vqmovun_s16(v175);
        v161 = vqmovun_s16(v178);
LABEL_120:
        *(v69 + v13) = v161;
        *(v69 + v45) = vqmovun_s16(v96);
        *(v69 + v46) = vqmovun_s16(v97);
        *(v69 + v47) = vqmovun_s16(v98);
        *(v69 + v50) = vqmovun_s16(v99);
LABEL_140:
        *(v69 + v48) = vqmovun_s16(a8);
        goto LABEL_150;
      }

      if (v64)
      {
        if (BYTE1(v64))
        {
          *a7.i8 = *(v69 - v13);
          a7.i16[4] = v69->u8[BYTE2(v64) - v13 + 7];
          v120 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v69->u8[-v13 - v68]);
          v121 = vzip1q_s8(vextq_s8(v120, 0, 1uLL), 0);
          v122 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v120, 0), vzip1q_s8(vextq_s8(v120, 0, 2uLL), 0)), vaddq_s16(v121, v121)), v51);
          v123 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v69[-1].u8[v13 + 7], 0xEuLL), vextq_s8(0, v69[-1].u8[v45 + 7], 0xDuLL)), vextq_s8(0, v69[-1].u8[v46 + 7], 0xCuLL)), vextq_s8(0, v69[-1].u8[v47 + 7], 0xBuLL)), vextq_s8(0, v69[-1].u8[v48 + 7], 9uLL)), vorrq_s8(vzip1q_s8(v69[-1].u8[-(v68 * v13) + 7], v69[-1].u8[7]), vextq_s8(0, v69[-1].u8[v50 + 7], 0xAuLL)));
          v124 = vextq_s8(0, v69[-1].u8[v49 + 7], 8uLL);
          v125 = vorrq_s8(v123, vorrq_s8(vextq_s8(0, v124, 0xFuLL), v124));
          v126 = vzip1q_s8(vextq_s8(v125, 0, 1uLL), 0);
          a8 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v123, 0), vzip1q_s8(vextq_s8(v125, 0, 2uLL), 0)), vaddq_s16(v126, v126)), v51), 2uLL);
          v127 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vqmovun_high_s16(vqmovun_s16(vshrq_n_u16(v122, 2uLL)), a8))));
          v128 = ((v127.u16[4] + v127.u16[0] + 8) >> 4 << 8) | ((v127.u16[4] + v127.u16[0] + 8) >> 4);
LABEL_143:
          a7 = vzip1q_s32((v128 | (v128 << 16)), (v128 | (v128 << 16)));
          goto LABEL_144;
        }

        v222 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v69[-1].u8[v13 + 7], 0xEuLL), vextq_s8(0, v69[-1].u8[v45 + 7], 0xDuLL)), vextq_s8(0, v69[-1].u8[v46 + 7], 0xCuLL)), vextq_s8(0, v69[-1].u8[v47 + 7], 0xBuLL)), vextq_s8(0, v69[-1].u8[v48 + 7], 9uLL)), vorrq_s8(vzip1q_s8(v69[-1].u8[-(v68 * v13) + 7], v69[-1].u8[7]), vextq_s8(0, v69[-1].u8[v50 + 7], 0xAuLL)));
        v223 = vextq_s8(0, v69[-1].u8[v49 + 7], 8uLL);
        v224 = vorrq_s8(v222, vorrq_s8(vextq_s8(0, v223, 0xFuLL), v223));
        v225 = vzip1q_s8(vextq_s8(v224, 0, 1uLL), 0);
        v183 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v222, 0), vzip1q_s8(vextq_s8(v224, 0, 2uLL), 0)), vaddq_s16(v225, v225)), v51);
      }

      else
      {
        a7 = xmmword_2773B4520;
        if (!BYTE1(v64))
        {
LABEL_144:
          if (!v24)
          {
            goto LABEL_155;
          }

          v82 = (a2 + 2 * *v54);
          a7 = vzip1q_s8(a7, 0);
          goto LABEL_146;
        }

        *a7.i8 = *(v69 - v13);
        v181 = vzip1q_s8(a7, 0);
        a7.i16[4] = v69->u8[BYTE2(v64) - v13 + 7];
        v182 = vextq_s8(0, v181, 0xEuLL);
        v182.i16[0] = v69->u8[-v13 - v68];
        v183 = vaddq_s16(vaddq_s16(vzip1q_s8(vextq_s8(a7, 0, 1uLL), 0), vaddq_s16(v181, v181)), vaddq_s16(v182, v51));
      }

      v226 = vshrq_n_u16(v183, 2uLL);
      a8 = vqmovun_high_s16(vqmovun_s16(v226), v226);
      v227 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(a8))).u16[0] + 4;
      v128 = (v227 >> 3 << 8) | (v227 >> 3);
      goto LABEL_143;
    }

    if (v67 <= 5)
    {
      if (v67 == 4)
      {
        *a7.i8 = *(v69 - BYTE1(v64) * v13);
        a7.i16[4] = v69->u8[BYTE2(v64) - v13 + 7];
        v147 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v69->u8[-v13 - v68]);
        v148 = vzip1q_s8(vextq_s8(v147, 0, 1uLL), 0);
        v149 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v147, 0), vzip1q_s8(vextq_s8(v147, 0, 2uLL), 0)), vaddq_s16(v148, v148)), v51), 2uLL);
        v150 = (v69 - v64);
        v151 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v150->u8[v13], 0xEuLL), vextq_s8(0, v150->u8[v45], 0xDuLL)), vextq_s8(0, v150->u8[v46], 0xCuLL)), vzip1q_s8(v69->u8[~(v68 * v13)], v150->u8[0])), vorrq_s8(vorrq_s8(vextq_s8(0, v150->u8[v47], 0xBuLL), vextq_s8(0, v150->u8[v50], 0xAuLL)), vextq_s8(0, v150->u8[v48], 9uLL)));
        v152 = vextq_s8(0, v150->u8[v49], 8uLL);
        v153 = vorrq_s8(v151, vorrq_s8(vextq_s8(0, v152, 0xFuLL), v152));
        v154 = vzip1q_s8(vextq_s8(v153, 0, 1uLL), 0);
        v155 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v151, 0), vzip1q_s8(vextq_s8(v153, 0, 2uLL), 0)), vaddq_s16(v154, v154)), v51), 2uLL);
        v156 = vextq_s8(0, v149, 0xEuLL);
        v156.i16[0] = (v150->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2;
        v157 = vextq_s8(0, v155, 0xEuLL);
        v157.i16[0] = v156.i16[0];
        v158 = v149.i16[0] & 0x1FF;
        v159 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v149, v149), vextq_s8(v149, 0, 2uLL)), v51), v156), 2uLL), 0xEuLL);
        v159.i16[0] = (v158 + 2 * ((v150->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2) + (v155.i16[0] & 0x1FF) + 2) >> 2;
        a8 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v155, v155), vextq_s8(v155, 0, 2uLL)), v51), v157), 2uLL), xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
        if (v24)
        {
          v82 = (a2 + 2 * *v54);
          *v69 = vqmovun_s16(vaddq_s16(*v82, v159));
          *(v69 + v13) = vqmovun_s16(vaddq_s16(v82[2], vextq_s8(a8, v159, 0xEuLL)));
          *(v69 + v45) = vqmovun_s16(vaddq_s16(v82[4], vextq_s8(a8, v159, 0xCuLL)));
          *(v69 + v46) = vqmovun_s16(vaddq_s16(v82[6], vextq_s8(a8, v159, 0xAuLL)));
          *(v69 + v47) = vqmovun_s16(vaddq_s16(v82[8], vextq_s8(a8, v159, 8uLL)));
          *(v69 + v50) = vqmovun_s16(vaddq_s16(v82[10], vextq_s8(a8, v159, 6uLL)));
          *(v69 + v48) = vqmovun_s16(vaddq_s16(v82[12], vextq_s8(a8, v159, 4uLL)));
          a7 = vextq_s8(a8, v159, 2uLL);
          goto LABEL_148;
        }

        *v69 = vqmovun_s16(v159);
        *(v69 + v13) = vqmovun_s16(vextq_s8(a8, v159, 0xEuLL));
        *(v69 + v45) = vqmovun_s16(vextq_s8(a8, v159, 0xCuLL));
        *(v69 + v46) = vqmovun_s16(vextq_s8(a8, v159, 0xAuLL));
        *(v69 + v47) = vqmovun_s16(vextq_s8(a8, v159, 8uLL));
        *(v69 + v50) = vqmovun_s16(vextq_s8(a8, v159, 6uLL));
        *(v69 + v48) = vqmovun_s16(vextq_s8(a8, v159, 4uLL));
        a7 = vextq_s8(a8, v159, 2uLL);
      }

      else
      {
        *a7.i8 = *(v69 - BYTE1(v64) * v13);
        a7.i16[4] = v69->u8[BYTE2(v64) - v13 + 7];
        v102 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v69->u8[-v13 - v68]);
        v103 = vzip1q_s8(vextq_s8(v102, 0, 1uLL), 0);
        v104 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v102, 0), vzip1q_s8(vextq_s8(v102, 0, 2uLL), 0)), vaddq_s16(v103, v103)), v51), 2uLL);
        v105 = (v69 - v64);
        v106 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v105->u8[v13], 0xEuLL), vextq_s8(0, v105->u8[v45], 0xDuLL)), vextq_s8(0, v105->u8[v46], 0xCuLL)), vzip1q_s8(v69->u8[~(v68 * v13)], v105->u8[0])), vorrq_s8(vorrq_s8(vextq_s8(0, v105->u8[v47], 0xBuLL), vextq_s8(0, v105->u8[v50], 0xAuLL)), vextq_s8(0, v105->u8[v48], 9uLL)));
        v107 = vextq_s8(0, v105->u8[v49], 8uLL);
        v108 = vorrq_s8(v106, vorrq_s8(vextq_s8(0, v107, 0xFuLL), v107));
        v109 = vzip1q_s8(vextq_s8(v108, 0, 1uLL), 0);
        v110 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v106, 0), vzip1q_s8(vextq_s8(v108, 0, 2uLL), 0)), vaddq_s16(v109, v109)), v51), 2uLL);
        v111 = vextq_s8(0, v104, 0xEuLL);
        v111.i16[0] = (v105->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2;
        v112 = vshrq_n_u16(vsubq_s16(v104, vmvnq_s8(v111)), 1uLL);
        v113 = vextq_s8(0, v110, 0xEuLL);
        v113.i16[0] = v111.i16[0];
        v114 = v104.i16[0] & 0x1FF;
        a8 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v104, v104), vextq_s8(v104, 0, 2uLL)), v51), v111), 2uLL), 0xEuLL);
        a8.i16[0] = (v114 + 2 * ((v105->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2) + (v110.i16[0] & 0x1FF) + 2) >> 2;
        v115 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v110, v110), vextq_s8(v110, 0, 2uLL)), v51), v113), 2uLL), xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
        if (v24)
        {
          v82 = (a2 + 2 * *v54);
          *v69 = vqmovun_s16(vaddq_s16(*v82, v112));
          *(v69 + v13) = vqmovun_s16(vaddq_s16(v82[2], a8));
          *(v69 + v45) = vqmovun_s16(vaddq_s16(v82[4], vextq_s8(v115, v112, 0xEuLL)));
          *(v69 + v46) = vqmovun_s16(vaddq_s16(v82[6], vextq_s8(vdupq_laneq_s16(v115, 6), a8, 0xEuLL)));
          v116 = vqtbl1q_s8(v115, xmmword_2773B44D0);
          *(v69 + v47) = vqmovun_s16(vaddq_s16(v82[8], vextq_s8(v116, v112, 0xCuLL)));
          v117 = vqtbl1q_s8(v115, xmmword_2773B44E0);
          *(v69 + v50) = vqmovun_s16(vaddq_s16(v82[10], vextq_s8(v117, a8, 0xCuLL)));
          *(v69 + v48) = vqmovun_s16(vaddq_s16(v82[12], vextq_s8(vqtbl1q_s8(v116, xmmword_2773B44F0), v112, 0xAuLL)));
          a7 = vextq_s8(vqtbl1q_s8(vqtbl1q_s8(v117, xmmword_2773B44F0), xmmword_2773B4500), a8, 0xAuLL);
LABEL_148:
          a8 = v82[14];
          goto LABEL_149;
        }

        *v69 = vqmovun_s16(v112);
        *(v69 + v13) = vqmovun_s16(a8);
        *(v69 + v45) = vqmovun_s16(vextq_s8(v115, v112, 0xEuLL));
        *(v69 + v46) = vqmovun_s16(vextq_s8(vdupq_laneq_s16(v115, 6), a8, 0xEuLL));
        v179 = vqtbl1q_s8(v115, xmmword_2773B44D0);
        *(v69 + v47) = vqmovun_s16(vextq_s8(v179, v112, 0xCuLL));
        v180 = vqtbl1q_s8(v115, xmmword_2773B44E0);
        *(v69 + v50) = vqmovun_s16(vextq_s8(v180, a8, 0xCuLL));
        *(v69 + v48) = vqmovun_s16(vextq_s8(vqtbl1q_s8(v179, xmmword_2773B44F0), v112, 0xAuLL));
        a7 = vextq_s8(vqtbl1q_s8(vqtbl1q_s8(v180, xmmword_2773B44F0), xmmword_2773B4500), a8, 0xAuLL);
      }
    }

    else
    {
      if (v67 != 6)
      {
        if (v67 == 7)
        {
          *a8.i8 = *(v69 - BYTE1(v64) * v13);
          v160 = v69 - v13;
          if (BYTE2(v64))
          {
            a7.i64[0] = *(v160 + 1);
          }

          else
          {
            v189 = vextq_s8(a8, 0, 7uLL);
            v190 = vzip1q_s8(v189, v189);
            v191 = vzip1q_s16(v190, v190);
            a7 = vzip1q_s32(v191, v191);
          }

          v192 = (a2 + 2 * *v54);
          v193 = vorrq_s8(vextq_s8(0, a8, 0xFuLL), v160[-v68]);
          v194 = vorrq_s8(v193, vextq_s8(0, a7, 7uLL));
          v195 = vzip1q_s8(v193, 0);
          v196 = vzip1q_s8(vextq_s8(v193, 0, 1uLL), 0);
          v197 = vshrq_n_u16(vaddq_s16(vaddq_s16(v195, vzip1q_s8(vextq_s8(v194, 0, 2uLL), 0)), vaddq_s16(vaddq_s16(v196, v196), v51)), 2uLL);
          v198 = vzip1q_s8(a7, 0);
          v199 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(v198, v198), vzip2q_s8(v194, 0)), vaddq_s16(vzip1q_s8(vorrq_s8(vextq_s8(0, vdupq_lane_s8(*a7.i8, 7), 9uLL), vextq_s8(a7, 0, 1uLL)), 0), v51)), 2uLL);
          v200 = vqmovun_s16(v197);
          v201 = vqmovun_s16(v199);
          v202 = vext_s8(v200, v201, 1uLL);
          v203 = vext_s8(v200, v201, 2uLL);
          v204 = vaddl_u8(v202, v200);
          v205 = vaddw_u8(v51, v203);
          v206 = vshrq_n_u16(vaddq_s16(vaddw_u8(v205, v202), v204), 2uLL);
          v207 = vshrq_n_u16(vaddq_s16(v204, v53), 1uLL);
          if (v24)
          {
            *v69 = vqmovun_s16(vaddq_s16(*v192, v207));
            v206 = vaddq_s16(v192[2], v206);
          }

          else
          {
            *v69 = vqmovun_s16(v207);
          }

          v208 = vmovl_u8(v202);
          v209 = vmovl_u8(v203);
          *(v69 + v13) = vqmovun_s16(v206);
          v210 = vext_s8(v200, v201, 3uLL);
          v211 = vaddq_s16(v208, v209);
          v212 = vshrq_n_u16(vaddq_s16(vaddw_u8(v205, v210), v211), 2uLL);
          v213 = vshrq_n_u16(vaddq_s16(v211, v53), 1uLL);
          if (v24)
          {
            *(v69 + v45) = vqmovun_s16(vaddq_s16(v192[4], v213));
            v212 = vaddq_s16(v192[6], v212);
          }

          else
          {
            *(v69 + v45) = vqmovun_s16(v213);
          }

          v214 = vmovl_u8(v210);
          *(v69 + v46) = vqmovun_s16(v212);
          v215 = vext_s8(v200, v201, 4uLL);
          v216 = vaddq_s16(v209, v214);
          v217 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddw_u8(v214, v215), v216), v51), 2uLL);
          v218 = vshrq_n_u16(vaddq_s16(v216, v53), 1uLL);
          if (v24)
          {
            *(v69 + v47) = vqmovun_s16(vaddq_s16(v192[8], v218));
            v217 = vaddq_s16(v192[10], v217);
          }

          else
          {
            *(v69 + v47) = vqmovun_s16(v218);
          }

          v219 = vmovl_u8(v215);
          *(v69 + v50) = vqmovun_s16(v217);
          v220 = vext_s8(v200, v201, 5uLL);
          v221 = vaddq_s16(v214, v219);
          a7 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddw_u8(v219, v220), v221), v51), 2uLL);
          a8 = vshrq_n_u16(vaddq_s16(v221, v53), 1uLL);
          if (v24)
          {
            *(v69 + v48) = vqmovun_s16(vaddq_s16(v192[12], a8));
            a8 = v192[14];
LABEL_149:
            a7 = vaddq_s16(a8, a7);
            goto LABEL_150;
          }
        }

        else
        {
          if (v67 != 8)
          {
            goto LABEL_152;
          }

          v70 = (v69 - v64);
          v71 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v70->u8[v13], 0xEuLL), vextq_s8(0, v70->u8[v45], 0xDuLL)), vextq_s8(0, v70->u8[v46], 0xCuLL)), vzip1q_s8(v69->u8[~(v68 * v13)], v70->u8[0])), vorrq_s8(vorrq_s8(vextq_s8(0, v70->u8[v47], 0xBuLL), vextq_s8(0, v70->u8[v50], 0xAuLL)), vextq_s8(0, v70->u8[v48], 9uLL)));
          v72 = vextq_s8(0, v70->u8[v49], 8uLL);
          v73 = vorrq_s8(v71, vorrq_s8(vextq_s8(0, v72, 0xFuLL), v72));
          v74 = vzip1q_s8(vextq_s8(v73, 0, 1uLL), 0);
          v75 = vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v71, 0), vzip1q_s8(vextq_s8(v73, 0, 2uLL), 0)), vaddq_s16(v74, v74)), v51);
          v76 = vshrq_n_u16(v75, 2uLL);
          v77 = vextq_s8(v76, 0, 2uLL);
          v78 = vshrq_n_u16(vaddq_s16(vsraq_n_u16(vextq_s8(v76, 0, 4uLL), v75, 2uLL), vaddq_s16(vaddq_s16(v77, v77), v51)), 2uLL);
          v79 = v76.i16[7] & 0x1FF;
          v78.i16[6] = ((v76.i16[6] & 0x1FFu) + 3 * v79 + 2) >> 2;
          v80 = vextq_s8(vextq_s8(0, vshrq_n_u16(vsubq_s16(v77, vmvnq_s8(v76)), 1uLL), 0xEuLL), 0, 2uLL);
          v81 = vextq_s8(vextq_s8(0, v78, 0xEuLL), 0, 2uLL);
          a7 = vdupq_n_s32(v79 | (v79 << 16));
          if (v24)
          {
            v82 = (a2 + 2 * *v54);
            *v69 = vqmovun_s16(vaddq_s16(*v82, vzip1q_s16(v80, v81)));
            v83 = vextq_s8(v81, 0, 2uLL);
            *(v69 + v13) = vqmovun_s16(vaddq_s16(v82[2], vzip1q_s16(vextq_s8(v80, 0, 2uLL), v83)));
            v84 = vextq_s8(v83, 0, 2uLL);
            *(v69 + v45) = vqmovun_s16(vaddq_s16(v82[4], vzip1q_s16(vextq_s8(v80, 0, 4uLL), v84)));
            v85 = vextq_s8(v84, 0, 2uLL);
            *(v69 + v46) = vqmovun_s16(vaddq_s16(v82[6], vzip1q_s16(vextq_s8(v80, 0, 6uLL), v85)));
            v86 = vextq_s8(v85, 0, 2uLL);
            *(v69 + v47) = vqmovun_s16(vaddq_s16(v82[8], vorrq_s8(vzip1q_s16(vdupq_laneq_s64(v80, 1), v86), vextq_s8(0, a7, 4uLL))));
            v87 = vextq_s8(v86, 0, 2uLL);
            *(v69 + v50) = vqmovun_s16(vaddq_s16(v82[10], vorrq_s8(vzip1q_s16(vextq_s8(v80, 0, 0xAuLL), v87), vextq_s8(0, a7, 8uLL))));
            v234.val[1] = vextq_s8(v80, 0, 0xCuLL);
            v234.val[0] = vextq_s8(v87, 0, 2uLL);
            v88 = vaddq_s16(v82[12], vorrq_s8(vqtbl2q_s8(v234, xmmword_2773B4490), vextq_s8(0, a7, 0xCuLL)));
LABEL_147:
            *(v69 + v48) = vqmovun_s16(v88);
            goto LABEL_148;
          }

          *v69 = vqmovun_s16(vzip1q_s16(v80, v81));
          v184 = vextq_s8(v81, 0, 2uLL);
          *(v69 + v13) = vqmovun_s16(vzip1q_s16(vextq_s8(v80, 0, 2uLL), v184));
          v185 = vextq_s8(v184, 0, 2uLL);
          *(v69 + v45) = vqmovun_s16(vzip1q_s16(vextq_s8(v80, 0, 4uLL), v185));
          v186 = vextq_s8(v185, 0, 2uLL);
          *(v69 + v46) = vqmovun_s16(vzip1q_s16(vextq_s8(v80, 0, 6uLL), v186));
          v187 = vextq_s8(v186, 0, 2uLL);
          *(v69 + v47) = vqmovun_s16(vorrq_s8(vzip1q_s16(vdupq_laneq_s64(v80, 1), v187), vextq_s8(0, a7, 4uLL)));
          v188 = vextq_s8(v187, 0, 2uLL);
          *(v69 + v50) = vqmovun_s16(vorrq_s8(vzip1q_s16(vextq_s8(v80, 0, 0xAuLL), v188), vextq_s8(0, a7, 8uLL)));
          v235.val[1] = vextq_s8(v80, 0, 0xCuLL);
          v235.val[0] = vextq_s8(v188, 0, 2uLL);
          a8 = vorrq_s8(vqtbl2q_s8(v235, xmmword_2773B4490), vextq_s8(0, a7, 0xCuLL));
        }

        goto LABEL_140;
      }

      *a7.i8 = *(v69 - BYTE1(v64) * v13);
      a7.i16[4] = v69->u8[BYTE2(v64) - v13 + 7];
      v129 = vorrq_s8(vextq_s8(0, a7, 0xFuLL), v69->u8[-v13 - v68]);
      v130 = vzip1q_s8(vextq_s8(v129, 0, 1uLL), 0);
      v131 = (v69 - v64);
      v132 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v129, 0), vzip1q_s8(vextq_s8(v129, 0, 2uLL), 0)), vaddq_s16(v130, v130)), v51), 2uLL);
      v133 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vextq_s8(0, v131->u8[v13], 0xEuLL), vextq_s8(0, v131->u8[v45], 0xDuLL)), vextq_s8(0, v131->u8[v46], 0xCuLL)), vzip1q_s8(v69->u8[~(v68 * v13)], v131->u8[0])), vorrq_s8(vorrq_s8(vextq_s8(0, v131->u8[v47], 0xBuLL), vextq_s8(0, v131->u8[v50], 0xAuLL)), vextq_s8(0, v131->u8[v48], 9uLL)));
      v134 = vextq_s8(0, v131->u8[v49], 8uLL);
      v135 = vorrq_s8(v133, vorrq_s8(vextq_s8(0, v134, 0xFuLL), v134));
      v136 = vzip1q_s8(vextq_s8(v135, 0, 1uLL), 0);
      v137 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vzip1q_s8(v133, 0), vzip1q_s8(vextq_s8(v135, 0, 2uLL), 0)), vaddq_s16(v136, v136)), v51), 2uLL);
      v138 = vextq_s8(0, v137, 0xEuLL);
      v138.i16[0] = (v131->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2;
      v139 = vshrq_n_u16(vsubq_s16(v138, vmvnq_s8(v137)), 1uLL);
      v140 = vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v137, v137), vextq_s8(v137, 0, 2uLL)), v51), v138), 2uLL);
      v141 = vextq_s8(0, v132, 0xEuLL);
      v141.i16[0] = (v131->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2;
      v142 = vextq_s8(0, vshrq_n_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v132, v132), vextq_s8(v132, 0, 2uLL)), v51), v141), 2uLL), 0xEuLL);
      v142.i16[0] = ((v132.i16[0] & 0x1FF) + 2 * ((v131->u8[0] + 2 * v69->u8[~(v68 * v13)] + *(v69 - BYTE1(v64) * v13) + 2) >> 2) + (v137.i16[0] & 0x1FF) + 2) >> 2;
      v143 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v139, xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
      v144 = vqtbl1q_s8(vqtbl1q_s8(vqtbl1q_s8(v140, xmmword_2773B44A0), xmmword_2773B44B0), xmmword_2773B44C0);
      v145 = vextq_s8(v143, v142, 0xEuLL);
      v146 = vzip2q_s16(v144, v143);
      a8 = vdupq_lane_s64(v143.i64[0], 0);
      if (v24)
      {
        v82 = (a2 + 2 * *v54);
        *v69 = vqmovun_s16(vaddq_s16(*v82, v145));
        *(v69 + v13) = vqmovun_s16(vaddq_s16(v82[2], vextq_s8(v146, v142, 0xAuLL)));
        *(v69 + v45) = vqmovun_s16(vaddq_s16(v82[4], vextq_s8(v146, v142, 6uLL)));
        *(v69 + v46) = vqmovun_s16(vaddq_s16(v82[6], vextq_s8(v146, v142, 2uLL)));
        *(v69 + v47) = vqmovun_s16(vaddq_s16(v82[8], vzip2q_s16(vextq_s8(0, v143, 0xEuLL), v144)));
        *(v69 + v50) = vqmovun_s16(vaddq_s16(v82[10], vzip2q_s16(vextq_s8(0, v143, 0xCuLL), vextq_s8(0, v144, 0xEuLL))));
        *(v69 + v48) = vqmovun_s16(vaddq_s16(v82[12], vzip2q_s16(vextq_s8(0, v143, 0xAuLL), vextq_s8(0, v144, 0xCuLL))));
        a7 = vzip2q_s16(a8, vextq_s8(0, v144, 0xAuLL));
        goto LABEL_148;
      }

      *v69 = vqmovun_s16(v145);
      *(v69 + v13) = vqmovun_s16(vextq_s8(v146, v142, 0xAuLL));
      *(v69 + v45) = vqmovun_s16(vextq_s8(v146, v142, 6uLL));
      *(v69 + v46) = vqmovun_s16(vextq_s8(v146, v142, 2uLL));
      *(v69 + v47) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v143, 0xEuLL), v144));
      *(v69 + v50) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v143, 0xCuLL), vextq_s8(0, v144, 0xEuLL)));
      *(v69 + v48) = vqmovun_s16(vzip2q_s16(vextq_s8(0, v143, 0xAuLL), vextq_s8(0, v144, 0xCuLL)));
      a7 = vzip2q_s16(a8, vextq_s8(0, v144, 0xAuLL));
    }

LABEL_150:
    *a7.i8 = vqmovun_s16(a7);
LABEL_151:
    *(v69 + v49) = *a7.i8;
LABEL_152:
    ++v44;
    ++v54;
    v228 = v42 >= 0xC;
    v42 += 4;
  }

  while (!v228);
  return result;
}

int *sub_277365474(int *result, uint64_t a2, int32x4_t a3)
{
  *(&v203[1] + 5) = *MEMORY[0x277D85DE8];
  v3 = *(result + 27);
  v5 = *result;
  v4 = result[1];
  if (*(result + 29) && *(v3 + 1363))
  {
    v141 = v3 + 504;
    v6 = *(v3 + 168);
    v143 = 2 * v6;
    v7 = *(v3 + 32);
    v8 = *(v3 + 64) + (16 * v5);
    if (*(result + 30))
    {
      if (v7)
      {
        v9 = 5;
      }

      else
      {
        v9 = 4;
      }

      v10 = ((v4 << v9) * v6);
      v8 += v6;
      goto LABEL_21;
    }

    v11 = v4 * v6;
    if (v7)
    {
      v10 = (32 * v11);
LABEL_21:
      v139 = v8 + v10;
      goto LABEL_22;
    }

LABEL_20:
    v10 = (16 * v11);
    goto LABEL_21;
  }

  v141 = v3 + 440;
  v143 = *(v3 + 168);
  if (*(result + 31) == 1)
  {
    v12 = result[4];
    v8 = *(v3 + 64) + 32 * v143 * (v12 / (2 * result[5])) + ((8 * (v12 % (2 * result[5]))) & 0xFFFFFFF0);
    if (v12)
    {
      v10 = 16 * v143;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_21;
  }

  if (!*(result + 31))
  {
    v8 = *(v3 + 64) + (16 * v5);
    v11 = v4 * v143;
    goto LABEL_20;
  }

  v13 = result[4];
  v14 = *(v3 + 64) + 32 * v143 * (v13 / (2 * result[5])) + ((8 * (v13 % (2 * result[5]))) & 0xFFFFFFF0);
  if (v13)
  {
    v15 = *(v3 + 168);
  }

  else
  {
    v15 = 0;
  }

  v139 = v14 + v15;
  v141 = v3 + 504;
  v143 *= 2;
LABEL_22:
  v134 = *(result + 21);
  v16 = *(result + 22) + 32;
  v18 = *(result + 16);
  v17 = *(result + 17);
  v20 = *(result + 18);
  v19 = *(result + 19);
  v173 = 0;
  v174 = 0;
  v171 = v16;
  v172 = 0;
  v138 = v16;
  if (v18)
  {
    v21 = 48;
    if (!v18[64])
    {
      v21 = 32;
    }

    v172 = &v18[v21];
    v22 = 1;
    if (v17)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = 0;
    if (v17)
    {
LABEL_26:
      if (v17[64])
      {
        v23 = v17 + 48;
      }

      else
      {
        v23 = v17 + 32;
      }

      v173 = v23;
      v24 = 1;
      goto LABEL_32;
    }
  }

  v24 = 0;
  v173 = 0;
LABEL_32:
  v25 = v20 != 0;
  v26 = v19 != 0;
  if (v134)
  {
    if (v134[64])
    {
      v27 = v134 + 48;
    }

    else
    {
      v27 = v134 + 32;
    }

    v174 = v27;
  }

  else
  {
    v174 = 0;
  }

  v28 = *(result + 6);
  if (!*(v28 + 4))
  {
    goto LABEL_59;
  }

  if (!v18)
  {
    v22 = 0;
    if (v17)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v18[48] != 34)
  {
    v22 = 1;
    if (v17)
    {
      goto LABEL_47;
    }

LABEL_42:
    v24 = 0;
    if (v20)
    {
      goto LABEL_43;
    }

LABEL_49:
    v25 = 0;
    if (!v19)
    {
      goto LABEL_45;
    }

LABEL_50:
    v26 = *(v19 + 48) != 34 || *(v19 + 32) != 34;
    goto LABEL_59;
  }

  v22 = v18[32] != 34;
  if (!v17)
  {
    goto LABEL_42;
  }

LABEL_47:
  if (v17[48] == 34)
  {
    v24 = v17[32] != 34;
    if (!v20)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v24 = 1;
    if (!v20)
    {
      goto LABEL_49;
    }
  }

LABEL_43:
  if (*(v20 + 48) != 34)
  {
    v25 = 1;
    if (!v19)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  v25 = *(v20 + 32) != 34;
  if (v19)
  {
    goto LABEL_50;
  }

LABEL_45:
  v26 = 0;
LABEL_59:
  v29 = v26 | (2 * v25) | (4 * v24);
  v30 = v29 | (8 * v22);
  v142 = byte_280A6AA70;
  if (v18 && (*(result + 185) & 1) != 0)
  {
    v31 = *(result + 31);
    if (v31 != 2 || v18[144])
    {
      v142 = byte_280A6AA70;
      if (v31 == 1 && v18[144] == 1)
      {
        v132 = ((result[4] & 1) != 0 ? &unk_280A6AB08 : &unk_280A6AAD8);
        v142 = v132;
        if (*(v28 + 4))
        {
          if (v22 && v134[48] == 34 && v134[32] == 34)
          {
            v30 = v29;
          }
        }
      }
    }

    else
    {
      v142 = &unk_280A6AAA8;
    }
  }

  v32 = 0;
  v136 = v28 + 290;
  v135 = v28 + 310;
  v33 = v143;
  v146 = 2;
  a3.i32[0] = 2;
  v34 = 0;
  v35.i64[0] = 0x1000100010001;
  v35.i64[1] = 0x1000100010001;
  v36 = &unk_2773B51B0;
  v140 = result;
  v137 = v18;
  do
  {
    v133 = v34;
    v37 = (a2 + word_2773B4D90[v34]);
    *&v38 = *v37;
    *&v39 = v37[1];
    v40 = v37[5];
    *&v41 = v37[8];
    *&v42 = v37[9];
    v43 = v37[13];
    *(&v38 + 1) = v37[4];
    *(&v41 + 1) = v37[12];
    v170[0] = v38;
    v170[1] = v41;
    *(&v39 + 1) = v40;
    *(&v42 + 1) = v43;
    v170[2] = v39;
    v170[3] = v42;
    v44 = v170;
    v45 = v32;
    v144 = v32;
    do
    {
      v46 = v142[v45];
      v47 = v46 & 1;
      v167 = v44;
      if (!v18)
      {
        v49 = 1;
LABEL_74:
        v50 = !(v46 & 1);
        v47 = 1;
        goto LABEL_75;
      }

      v48 = *(result + 31);
      if (v48 == 1 && v18[144] == 1 && v45 >= 8)
      {
        if (*(*(result + 6) + 4))
        {
          v49 = v46 & 1;
        }

        else
        {
          v49 = 1;
        }

        goto LABEL_74;
      }

      v49 = 1;
      if (v48 != 2 || v18[144] || v45 < 8)
      {
        goto LABEL_74;
      }

      v50 = !(v46 & 1) | (2 * !(v46 & 1));
      if (!*(*(result + 6) + 4))
      {
        v47 = 1;
      }

      v49 = 1;
LABEL_75:
      v51 = v142[v45 + 16];
      v52 = *(&v171 + (~(2 * v51) & 2));
      v53 = *(&v171 + v50);
      if (v52)
      {
        v54 = v53 == 0;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        v55 = 0;
LABEL_82:
        v58 = 2;
        goto LABEL_83;
      }

      v56 = *(v53 + ((v46 >> 1) & 0xF));
      v57 = *(v52 + ((v51 >> 1) & 0xF));
      v55 = (v56 >> 5) & 1;
      if (*(*(result + 6) + 4) & ((v57 | v56) >> 5))
      {
        goto LABEL_82;
      }

      v58 = (((v56 & 0xF) - (v57 & 0xF)) & (((v56 & 0xF) - (v57 & 0xF)) >> 31)) + (v57 & 0xF);
LABEL_83:
      v59 = 16 * v45;
      if (v47)
      {
        v60 = bswap32(dword_2773B4580[v59 + v30]);
        if ((v49 & 1) == 0)
        {
          if (v134[48] == 34 && v134[32] == 34)
          {
            v30 &= 0xEu;
          }

          else
          {
            v30 |= 1u;
          }
        }

        v168 = v30;
      }

      else
      {
        v61 = (v30 & 7 | (8 * v55)) ^ 8;
        v60 = bswap32(dword_2773B4580[v61 | v59]);
        if (v18[48] == 34 && v18[32] == 34)
        {
          v62 = v61 & 0xE;
        }

        else
        {
          v62 = v61 | 1;
        }

        v168 = v62;
      }

      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = *(v135 + v45);
      if (v58 <= v67)
      {
        ++v67;
      }

      v169 = v67 & (*(v136 + v45) - 1) | v58 & -*(v136 + v45);
      *(v138 + v45) = v169;
      v68 = v139 + *(v141 + 4 * v45);
      v69 = v68 & 0xF;
      v70 = (v68 - v60 + 2 * v143);
      v71 = *(v68 - v60);
      v72 = *(v68 - v60 + v33);
      v73 = *v70;
      v74 = v70[v33];
      if (v69 <= 3)
      {
        v63 = *(v68 - v60);
        v64 = *(v68 - v60 + v33);
        v65 = v73;
        v66 = v74;
      }

      v75 = v36;
      if (((v68 >> 2) & 3) - 1 >= 3)
      {
        v71 = v63;
        v72 = v64;
        v73 = v65;
        v74 = v66;
      }

      v160 = v74;
      v76 = v71;
      v163 = BYTE1(v60);
      v165 = (v139 + *(v141 + 4 * v45));
      v77 = v68 - (v143 & -BYTE1(v60));
      v145 = *((v77 - v60) & 0xFFFFFFFFFFFFFFF0);
      v147 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 1);
      v148 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 2);
      v149 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 3);
      v150 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 4);
      v151 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 5);
      v152 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 6);
      v159 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 8);
      v158 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 9);
      v157 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 0xA);
      v156 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 0xB);
      v155 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 0xC);
      v153 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 7);
      v154 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 0xD);
      v78 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 0xE);
      v79 = *(((v77 - v60) & 0xFFFFFFFFFFFFFFF0) + 0xF);
      v80 = ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[2];
      v84 = BYTE2(v60);
      v85 = v80[3];
      v166 = v45;
      v164 = v60;
      v161 = v73;
      v162 = v72;
      if (BYTE2(v60) == 1)
      {
        v88 = v80[4];
        v87 = v80[5];
        v96 = v80[7];
        v86 = v80[6];
        v89 = v80[3];
        v90 = v80[2];
        v91 = v80[1];
        v92 = *v80;
        v93 = v79;
        v94 = v78;
        v95 = v76;
        v36 = v75;
        v97 = v96;
        switch(v69)
        {
          case 1u:
            v97 = v159;
            v87 = v152;
            v86 = v153;
            v85 = v150;
            v88 = v151;
            v82 = v148;
            v83 = v149;
            v81 = v147;
            v79 = v145;
            goto LABEL_141;
          case 2u:
            v97 = v158;
            v86 = v159;
            v88 = v152;
            v87 = v153;
            v83 = v150;
            v85 = v151;
            v81 = v148;
            v82 = v149;
            v79 = v147;
            goto LABEL_141;
          case 3u:
            v97 = v157;
            v86 = v158;
            v87 = v159;
            v85 = v152;
            v88 = v153;
            v82 = v150;
            v83 = v151;
            v79 = v148;
            v81 = v149;
            goto LABEL_141;
          case 4u:
            v97 = v156;
            v86 = v157;
            v87 = v158;
            v88 = v159;
            v83 = v152;
            v85 = v153;
            v81 = v150;
            v82 = v151;
            v79 = v149;
            goto LABEL_141;
          case 5u:
            v97 = v155;
            v86 = v156;
            v87 = v157;
            v88 = v158;
            v85 = v159;
            v82 = v152;
            v83 = v153;
            v79 = v150;
            v81 = v151;
            goto LABEL_141;
          case 6u:
            v97 = v154;
            v86 = v155;
            v87 = v156;
            v88 = v157;
            v85 = v158;
            v83 = v159;
            v81 = v152;
            v82 = v153;
            v79 = v151;
            goto LABEL_141;
          case 7u:
            v97 = v78;
            v86 = v154;
            v87 = v155;
            v88 = v156;
            v85 = v157;
            v83 = v158;
            v82 = v159;
            v79 = v152;
            v81 = v153;
            goto LABEL_141;
          case 8u:
            v97 = v79;
            v86 = v78;
            v87 = v154;
            v88 = v155;
            v85 = v156;
            v83 = v157;
            v82 = v158;
            v81 = v159;
            v79 = v153;
            goto LABEL_141;
          case 9u:
            v97 = v81;
            v86 = v79;
            v87 = v78;
            v88 = v154;
            v85 = v155;
            v83 = v156;
            v82 = v157;
            v81 = v158;
            v79 = v159;
            goto LABEL_141;
          case 0xAu:
            v97 = v82;
            v86 = v81;
            v87 = v79;
            v88 = v78;
            v85 = v154;
            v83 = v155;
            v82 = v156;
            v81 = v157;
            v79 = v158;
            goto LABEL_141;
          case 0xBu:
            v97 = v83;
            v86 = v82;
            v87 = v81;
            v88 = v79;
            v85 = v78;
            v83 = v154;
            v82 = v155;
            v81 = v156;
            v79 = v157;
            goto LABEL_141;
          case 0xCu:
            v97 = v85;
            v86 = v83;
            v87 = v82;
            v88 = v81;
            v85 = v79;
            v83 = v78;
            v82 = v154;
            v81 = v155;
            v79 = v156;
            goto LABEL_141;
          case 0xDu:
            v97 = v88;
            v86 = v85;
            v87 = v83;
            v88 = v82;
            v85 = v81;
            v83 = v79;
            v82 = v78;
            v81 = v154;
            v79 = v155;
            goto LABEL_141;
          case 0xEu:
            v97 = v87;
            v86 = v88;
            v87 = v85;
            v88 = v83;
            v85 = v82;
            v83 = v81;
            v82 = v79;
            v81 = v78;
            v79 = v154;
            goto LABEL_141;
          case 0xFu:
            goto LABEL_143;
          default:
LABEL_141:
            v89 = v88;
            v88 = v87;
            v87 = v86;
            v86 = v97;
            break;
        }

        goto LABEL_142;
      }

      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = v76;
      v36 = v75;
      if (!v84)
      {
        v86 = v83;
        v87 = v83;
        v88 = v83;
        v89 = v83;
        v90 = v83;
        v91 = v82;
        v92 = v81;
        v93 = v79;
        v94 = v78;
        switch(v69)
        {
          case 1u:
            v83 = v149;
            v85 = v150;
            v81 = v147;
            v82 = v148;
            v79 = v145;
            goto LABEL_136;
          case 2u:
            v83 = v150;
            v85 = v151;
            v81 = v148;
            v82 = v149;
            v79 = v147;
            goto LABEL_136;
          case 3u:
            v83 = v151;
            v85 = v152;
            v81 = v149;
            v82 = v150;
            v79 = v148;
            goto LABEL_136;
          case 4u:
            v83 = v152;
            v85 = v153;
            v81 = v150;
            v82 = v151;
            v79 = v149;
            goto LABEL_136;
          case 5u:
            v85 = v159;
            v82 = v152;
            v83 = v153;
            v79 = v150;
            v81 = v151;
            goto LABEL_136;
          case 6u:
            v85 = v158;
            v83 = v159;
            v81 = v152;
            v82 = v153;
            v79 = v151;
            goto LABEL_136;
          case 7u:
            v85 = v157;
            v83 = v158;
            v82 = v159;
            v79 = v152;
            v81 = v153;
            goto LABEL_136;
          case 8u:
            v85 = v156;
            v83 = v157;
            v82 = v158;
            v81 = v159;
            v79 = v153;
            goto LABEL_136;
          case 9u:
            v85 = v155;
            v83 = v156;
            v82 = v157;
            v81 = v158;
            v79 = v159;
            goto LABEL_136;
          case 0xAu:
            v85 = v154;
            v83 = v155;
            v82 = v156;
            v81 = v157;
            v79 = v158;
            goto LABEL_136;
          case 0xBu:
            v85 = v78;
            v83 = v154;
            v82 = v155;
            v81 = v156;
            v79 = v157;
            goto LABEL_136;
          case 0xCu:
            v85 = v79;
            v83 = v78;
            v82 = v154;
            v81 = v155;
            v79 = v156;
            goto LABEL_136;
          case 0xDu:
            v85 = v81;
            v83 = v79;
            v82 = v78;
            v81 = v154;
            v79 = v155;
            goto LABEL_136;
          case 0xEu:
            v85 = v82;
            v83 = v81;
            v82 = v79;
            v81 = v78;
            v79 = v154;
            goto LABEL_136;
          case 0xFu:
            goto LABEL_143;
          default:
LABEL_136:
            v86 = v85;
            v87 = v85;
            v88 = v85;
            v89 = v85;
            break;
        }

LABEL_142:
        v90 = v85;
        v91 = v83;
        v92 = v82;
        v93 = v81;
        v94 = v79;
      }

LABEL_143:
      v98 = 0;
      v202[0] = v160;
      v202[1] = v161;
      v202[2] = v162;
      v203[0] = 0x101010101010101 * v95;
      *(v203 + 5) = v203[0];
      v200[0] = v94;
      v200[1] = v93;
      v200[2] = v92;
      v200[3] = v91;
      v200[4] = v90;
      v200[5] = v89;
      v200[6] = v88;
      v200[7] = v87;
      v200[8] = v86;
      *v201 = 16843009 * v94;
      *&v201[3] = 16843009 * v94;
      v183 = *&v36[16 * v169 + 96];
      do
      {
        if ((*(&v183 + v98) & 0x10) != 0)
        {
          v99 = v200;
        }

        else
        {
          v99 = v202;
        }

        *(&v184 + v98) = v99[*(&v183 + v98) & 0xF];
        ++v98;
      }

      while (v98 != 16);
      v100 = 0;
      v101 = *&v36[((16 * v164) | (32 * v163)) + 528];
      v181 = v101;
      v102 = v185;
      v103 = v185 + v184;
      v104 = v186;
      v105 = v187;
      v106 = v188;
      v107 = v189;
      v108 = v189 + v188;
      v109 = v190;
      v110 = v191;
      v111 = v191 + v190;
      v112 = v108 + v111 + 2;
      v113 = v192;
      v114 = v193 + v192;
      v115 = v194 + v195 + v114 + 2;
      v116 = v197 + v196 + v198 + v199;
      v117 = v187 + v186;
      v179 = _byteswap_uint64(__PAIR64__(v112 >> 2, v115 >> 2));
      v180 = bswap32((v116 + 2) >> 2) | 0x8000000000000000;
      v178.i64[0] = _byteswap_uint64(__PAIR64__((v103 + v117 + v112 + 2) >> 3, (v115 + v112) >> 3));
      v178.i64[1] = _byteswap_uint64(__PAIR64__((v116 + 2 + v115) >> 3, (v116 + 514) >> 3));
      do
      {
        if ((v181.i8[v100] & 0x10) != 0)
        {
          v118 = &v178;
        }

        else
        {
          v118 = &v179;
        }

        *(&v183 + v100) = v118->i8[v181.i8[v100] & 0xF];
        ++v100;
      }

      while (v100 != 16);
      v119 = 0;
      v101.i32[0] = v169;
      v182 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v101, a3), 0), xmmword_2773B4530, xmmword_2773B3DD0);
      v120 = &v36[32 * v169];
      v121 = v120[15];
      v177 = v120[16];
      v178 = v121;
      v121.i32[0] = v108;
      v121.i32[1] = v109 + v107;
      v121.i32[2] = v111;
      v121.i32[3] = v113 + v110;
      v122.i32[0] = v103;
      v122.i32[1] = v104 + v102;
      v122.i64[1] = __PAIR64__(v106 + v105, v117);
      v176 = vrev16q_s8(vhaddq_u16(vuzp1q_s16(v122, v121), v35));
      v175[0] = __rev16((v104 + v102 + v103 + 2) >> 2);
      v175[1] = __rev16((v117 + v104 + v102 + 2) >> 2);
      v175[2] = __rev16((v106 + v105 + v117 + 2) >> 2);
      v175[3] = __rev16((v108 + v106 + v105 + 2) >> 2);
      v175[4] = __rev16((v109 + v107 + v108 + 2) >> 2);
      v175[5] = __rev16((v111 + v109 + v107 + 2) >> 2);
      v175[6] = __rev16((v113 + v110 + v111 + 2) >> 2);
      v175[7] = __rev16((v114 + v113 + v110 + 2) >> 2);
      do
      {
        if ((v182.i8[v119] & 0x10) != 0)
        {
          v123 = &v183;
        }

        else
        {
          v123 = &v176;
        }

        v176.i8[v119] = v123->i8[v182.i8[v119] & 0xF];
        ++v119;
      }

      while (v119 != 16);
      v124 = 0;
      result = v140;
      v30 = v168;
      v33 = v143;
      do
      {
        if ((v178.i8[v124] & 0x10) != 0)
        {
          v125 = v175;
        }

        else
        {
          v125 = &v176;
        }

        v181.i8[v124] = v125->i8[v178.i8[v124] & 0xF];
        ++v124;
      }

      while (v124 != 16);
      v126 = 0;
      v18 = v137;
      do
      {
        if ((v177.i8[v126] & 0x10) != 0)
        {
          v127 = v175;
        }

        else
        {
          v127 = &v176;
        }

        v179.i8[v126] = v127->i8[v177.i8[v126] & 0xF];
        ++v126;
      }

      while (v126 != 16);
      v44 = v167 + 4;
      v128 = vmin_s16(vmax_s16(vadd_s16(v167[3], vrev16_s8(v180)), 0), 0xFF00FF00FF00FFLL);
      v129 = vmin_s16(vmax_s16(vadd_s16(v167[2], vrev16_s8(v179)), 0), 0xFF00FF00FF00FFLL);
      v130 = vmin_s16(vmax_s16(vadd_s16(v167[1], vrev16_s8(v181.u64[1])), 0), 0xFF00FF00FF00FFLL);
      *v165 = vuzp1_s8(vmin_s16(vmax_s16(vadd_s16(*v167, vrev16_s8(*v181.i8)), 0), 0xFF00FF00FF00FFLL), *a3.i8).u32[0];
      *(v165 + v143) = vuzp1_s8(v130, *a3.i8).u32[0];
      v131 = (v165 + v143 + v143);
      *v131 = vuzp1_s8(v129, *a3.i8).u32[0];
      *(v131 + v143) = vuzp1_s8(v128, *a3.i8).u32[0];
      v45 = v166 + 1;
    }

    while (v166 + 1 != v146);
    v34 = v133 + 1;
    v32 = v144 + 2;
    v146 += 2;
  }

  while (v133 != 7);
  return result;
}

unint64_t sub_2773663D4(unint64_t result, uint64_t a2)
{
  v2 = result;
  v1227 = *MEMORY[0x277D85DE8];
  v3 = *(result + 216);
  v5 = *result;
  v4 = *(result + 4);
  if (*(result + 29) && *(v3 + 1363))
  {
    v6 = v3 + 504;
    v7 = *(v3 + 168);
    v1199 = 2 * v7;
    v8 = *(v3 + 32);
    v9 = *(v3 + 64) + (16 * v5);
    if (*(result + 30))
    {
      if (v8)
      {
        v10 = 5;
      }

      else
      {
        v10 = 4;
      }

      v11 = ((v4 << v10) * v7);
      v9 += v7;
      goto LABEL_21;
    }

    v12 = v4 * v7;
    if (v8)
    {
      v11 = (32 * v12);
LABEL_21:
      v17 = v9 + v11;
      goto LABEL_22;
    }

LABEL_20:
    v11 = (16 * v12);
    goto LABEL_21;
  }

  v6 = v3 + 440;
  v1199 = *(v3 + 168);
  if (*(result + 31) == 1)
  {
    v13 = *(result + 16);
    v9 = *(v3 + 64) + 32 * v1199 * (v13 / (2 * *(result + 20))) + ((8 * (v13 % (2 * *(result + 20)))) & 0xFFFFFFF0);
    if (v13)
    {
      v11 = 16 * v1199;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  if (!*(result + 31))
  {
    v9 = *(v3 + 64) + (16 * v5);
    v12 = v4 * v1199;
    goto LABEL_20;
  }

  v14 = *(result + 16);
  v15 = *(v3 + 64) + 32 * v1199 * (v14 / (2 * *(result + 20))) + ((8 * (v14 % (2 * *(result + 20)))) & 0xFFFFFFF0);
  if (v14)
  {
    v16 = *(v3 + 168);
  }

  else
  {
    v16 = 0;
  }

  v17 = v15 + v16;
  v6 = v3 + 504;
  v1199 *= 2;
LABEL_22:
  v18 = *(result + 168);
  v19 = *(result + 176) + 48;
  v20 = *(result + 128);
  v21 = *(result + 136);
  v23 = *(result + 144);
  v22 = *(result + 152);
  v1225 = 0;
  v1226 = 0;
  v1223 = v19;
  v1224 = 0;
  v1222 = v20;
  if (v20)
  {
    v24 = 48;
    if (!v1222[64])
    {
      v24 = 32;
    }

    v1224 = &v1222[v24];
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v1215 = v17;
  if (v21)
  {
    if (v21[64])
    {
      v26 = v21 + 48;
    }

    else
    {
      v26 = v21 + 32;
    }

    v1225 = v26;
    v27 = 1;
  }

  else
  {
    v27 = 0;
    v1225 = 0;
  }

  v28 = v23 != 0;
  v29 = v22 != 0;
  if (v18)
  {
    if (v18[64])
    {
      v30 = v18 + 48;
    }

    else
    {
      v30 = v18 + 32;
    }

    v1226 = v30;
  }

  else
  {
    v1226 = 0;
  }

  v31 = *(result + 48);
  if (!*(v31 + 4))
  {
    goto LABEL_57;
  }

  v25 = v1222;
  if (v1222)
  {
    if (v1222[48] != 34)
    {
      v25 = 1;
      if (v21)
      {
        goto LABEL_44;
      }

LABEL_50:
      v27 = 0;
      if (v23)
      {
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    v25 = v1222[32] != 34;
  }

  if (!v21)
  {
    goto LABEL_50;
  }

LABEL_44:
  if (v21[48] == 34)
  {
    v27 = v21[32] != 34;
    if (!v23)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (*(v23 + 48) == 34)
    {
      v28 = *(v23 + 32) != 34;
      if (!v22)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v28 = 1;
      if (!v22)
      {
        goto LABEL_53;
      }
    }

LABEL_47:
    v29 = *(v22 + 48) != 34 || *(v22 + 32) != 34;
    goto LABEL_57;
  }

  v27 = 1;
  if (v23)
  {
    goto LABEL_51;
  }

LABEL_46:
  v28 = 0;
  if (v22)
  {
    goto LABEL_47;
  }

LABEL_53:
  v29 = 0;
LABEL_57:
  v32 = v29 | (2 * v28) | (4 * v27);
  v1221 = v32 | (8 * v25);
  v33 = byte_280A6AA70;
  v1193 = v18;
  if (v1222 && (*(result + 185) & 1) != 0)
  {
    v34 = *(result + 31);
    if (v34 != 2 || v1222[144])
    {
      v33 = byte_280A6AA70;
      if (v34 == 1 && v1222[144] == 1)
      {
        v33 = ((*(result + 16) & 1) != 0 ? &unk_280A6AB08 : &unk_280A6AAD8);
        if (*(v31 + 4) && v25 && v18[48] == 34)
        {
          v1182 = v32 | (8 * v25);
          if (v18[32] == 34)
          {
            v1182 = v29 | (2 * v28) | (4 * v27);
          }

          v1221 = v1182;
        }
      }
    }

    else
    {
      v33 = &unk_280A6AAA8;
    }
  }

  v35 = 0;
  v36 = v1199;
  v37 = 3 * v1199;
  v1214 = v33 + 16;
  v38 = (v31 + 326);
  v1220 = 7 * v1199;
  v39 = 2 * v1199;
  v1218 = 4 * v1199;
  v40 = 6 * v1199;
  v41.i64[0] = 0x200000002;
  v41.i64[1] = 0x200000002;
  v42 = &byte_2773B4DA0;
  v1216 = v39;
  v1217 = 5 * v1199;
  v43 = 0;
  v1200 = v19;
  v1198 = result;
  v1194 = v6;
  v1202 = v37;
  v1219 = v40;
  do
  {
    v44 = v1214[v43 - 16];
    if (!v1222)
    {
      v46 = 1;
      goto LABEL_69;
    }

    v45 = *(v2 + 31);
    if (v45 == 1 && v1222[144] == 1 && v43 == 8)
    {
      v46 = *(*(v2 + 48) + 4) == 0;
LABEL_69:
      v47 = *(&v1223 + !(v44 & 1));
      v48 = 1;
      goto LABEL_70;
    }

    v46 = 1;
    if (v45 != 2 || v1222[144] || v43 != 8)
    {
      goto LABEL_69;
    }

    v47 = v1226;
    v48 = *(*(v2 + 48) + 4) == 0;
    v46 = 1;
LABEL_70:
    v49 = v1214[v43];
    v50 = *(&v1223 + (~(2 * v49) & 2));
    if (v50)
    {
      v51 = v47 == 0;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      v52 = 0;
LABEL_77:
      v56 = 2;
      if (v48)
      {
        goto LABEL_78;
      }

      goto LABEL_88;
    }

    v53 = (v49 >> 1) & 0xF;
    v54 = v47[(v44 >> 1) & 0xF];
    v55 = *(v50 + v53);
    v52 = (v54 >> 5) & 1;
    if (*(*(v2 + 48) + 4) & ((v55 | v54) >> 5))
    {
      goto LABEL_77;
    }

    v56 = (((v54 & 0xF) - (v55 & 0xF)) & (((v54 & 0xF) - (v55 & 0xF)) >> 31)) + (v55 & 0xF);
    if (v48)
    {
LABEL_78:
      v57 = dword_2773B4DA4[v35 + v1221];
      if (v46)
      {
        v58 = HIBYTE(v57);
        goto LABEL_95;
      }

      if (v1193[48] == 34 && v1193[32] == 34)
      {
        v58 = 0;
        LOBYTE(v59) = v1221;
LABEL_91:
        v1221 = v59 & 0xE;
        goto LABEL_95;
      }

      v60 = v1221 | 1;
      goto LABEL_94;
    }

LABEL_88:
    v59 = (v1221 & 7 | (8 * v52)) ^ 8;
    v57 = dword_2773B4DA4[(v35 + v59)];
    if (v1222[48] == 34 && v1222[32] == 34)
    {
      v58 = 0;
      goto LABEL_91;
    }

    v60 = v59 | 1;
LABEL_94:
    v1221 = v60;
    v58 = 1;
LABEL_95:
    v61 = *v38;
    if (v56 <= v61)
    {
      ++v61;
    }

    v62 = v61 & (*(v38 - 20) - 1) | v56 & -*(v38 - 20);
    v63 = vdup_n_s8(v62);
    *(v19 + v43) = v63.i32[0];
    v64 = (v1215 + *(v6 + 4 * v43));
    v65 = BYTE2(v57);
    if (v62 <= 3)
    {
      if (v62 <= 1)
      {
        if (v62)
        {
          if (v62 != 1)
          {
            goto LABEL_1269;
          }

          v188 = (a2 + 2 * *v42);
          v189 = *(v64 - 1);
          v190 = v64[v36 - 1];
          v191 = v64[v39 - 1];
          v192 = v64[v37 - 1];
          v193 = v64[v1218 - 1];
          v194 = v19;
          v195 = v37;
          v196 = v36;
          v197 = v2;
          v198 = v42;
          v199 = v64[v1217 - 1];
          v200 = v64[v1219 - 1];
          v201 = v39;
          v202 = v6;
          v203 = v64[v1220 - 1];
          v204 = v190 + 2 + v64[-(v58 * v1199) - 1] + 2 * v189;
          v205 = v191 + 2;
          v206 = v191 + 2 + v189 + 2 * v190;
          v207 = v190 + 2 + 2 * v191 + v192;
          v208 = v205 + 2 * v192 + v193;
          v209 = v192 + 2 * v193 + v199 + 2;
          v210 = v193 + 2 * v199 + v200 + 2;
          v211 = v199 + 2 * v200;
          v42 = v198;
          v2 = v197;
          v36 = v196;
          v37 = v195;
          v19 = v194;
          v212 = v211 + v203 + 2;
          v213 = v200 + v203;
          v40 = 6 * v1199;
          v214 = v213 + 2 * v203;
          v6 = v202;
          v39 = v201;
          v215 = v214 + 2;
          v216 = (*v188 + (v204 >> 2));
          if (v216 >= 255)
          {
            v216 = 255;
          }

          *v64 = v216 & ~(v216 >> 31);
          v217 = (v188[1] + (v204 >> 2));
          if (v217 >= 255)
          {
            v217 = 255;
          }

          v64[1] = v217 & ~(v217 >> 31);
          v218 = (v188[2] + (v204 >> 2));
          if (v218 >= 255)
          {
            v218 = 255;
          }

          v64[2] = v218 & ~(v218 >> 31);
          v219 = (v188[3] + (v204 >> 2));
          if (v219 >= 255)
          {
            v219 = 255;
          }

          v64[3] = v219 & ~(v219 >> 31);
          v220 = (v188[4] + (v204 >> 2));
          if (v220 >= 255)
          {
            v220 = 255;
          }

          v64[4] = v220 & ~(v220 >> 31);
          v221 = (v188[5] + (v204 >> 2));
          if (v221 >= 255)
          {
            v221 = 255;
          }

          v64[5] = v221 & ~(v221 >> 31);
          v222 = (v188[6] + (v204 >> 2));
          if (v222 >= 255)
          {
            v222 = 255;
          }

          v64[6] = v222 & ~(v222 >> 31);
          v223 = (v188[7] + (v204 >> 2));
          if (v223 >= 255)
          {
            v223 = 255;
          }

          v64[7] = v223 & ~(v223 >> 31);
          v224 = (v188[16] + (v206 >> 2));
          if (v224 >= 255)
          {
            v224 = 255;
          }

          result = &v64[v36];
          v64[v36] = v224 & ~(v224 >> 31);
          v225 = (v188[17] + (v206 >> 2));
          if (v225 >= 255)
          {
            v225 = 255;
          }

          *(result + 1) = v225 & ~(v225 >> 31);
          v226 = (v188[18] + (v206 >> 2));
          if (v226 >= 255)
          {
            v226 = 255;
          }

          *(result + 2) = v226 & ~(v226 >> 31);
          v227 = (v188[19] + (v206 >> 2));
          if (v227 >= 255)
          {
            v227 = 255;
          }

          *(result + 3) = v227 & ~(v227 >> 31);
          v228 = (v188[20] + (v206 >> 2));
          if (v228 >= 255)
          {
            v228 = 255;
          }

          *(result + 4) = v228 & ~(v228 >> 31);
          v229 = (v188[21] + (v206 >> 2));
          if (v229 >= 255)
          {
            v229 = 255;
          }

          *(result + 5) = v229 & ~(v229 >> 31);
          v230 = (v188[22] + (v206 >> 2));
          if (v230 >= 255)
          {
            v230 = 255;
          }

          *(result + 6) = v230 & ~(v230 >> 31);
          v231 = (v188[23] + (v206 >> 2));
          if (v231 >= 255)
          {
            v231 = 255;
          }

          *(result + 7) = v231 & ~(v231 >> 31);
          v232 = (v188[32] + (v207 >> 2));
          if (v232 >= 255)
          {
            v232 = 255;
          }

          v233 = &v64[v201];
          v64[v201] = v232 & ~(v232 >> 31);
          v234 = (v188[33] + (v207 >> 2));
          if (v234 >= 255)
          {
            v234 = 255;
          }

          v233[1] = v234 & ~(v234 >> 31);
          v235 = (v188[34] + (v207 >> 2));
          if (v235 >= 255)
          {
            v235 = 255;
          }

          v233[2] = v235 & ~(v235 >> 31);
          v236 = (v188[35] + (v207 >> 2));
          if (v236 >= 255)
          {
            v236 = 255;
          }

          v233[3] = v236 & ~(v236 >> 31);
          v237 = (v188[36] + (v207 >> 2));
          if (v237 >= 255)
          {
            v237 = 255;
          }

          v233[4] = v237 & ~(v237 >> 31);
          v238 = (v188[37] + (v207 >> 2));
          if (v238 >= 255)
          {
            v238 = 255;
          }

          v233[5] = v238 & ~(v238 >> 31);
          v239 = (v188[38] + (v207 >> 2));
          if (v239 >= 255)
          {
            v239 = 255;
          }

          v233[6] = v239 & ~(v239 >> 31);
          v240 = (v188[39] + (v207 >> 2));
          if (v240 >= 255)
          {
            v240 = 255;
          }

          v233[7] = v240 & ~(v240 >> 31);
          v241 = (v188[48] + (v208 >> 2));
          if (v241 >= 255)
          {
            v241 = 255;
          }

          v242 = &v64[v37];
          v64[v37] = v241 & ~(v241 >> 31);
          v243 = (v188[49] + (v208 >> 2));
          if (v243 >= 255)
          {
            v243 = 255;
          }

          v242[1] = v243 & ~(v243 >> 31);
          v244 = (v188[50] + (v208 >> 2));
          if (v244 >= 255)
          {
            v244 = 255;
          }

          v242[2] = v244 & ~(v244 >> 31);
          v245 = (v188[51] + (v208 >> 2));
          if (v245 >= 255)
          {
            v245 = 255;
          }

          v242[3] = v245 & ~(v245 >> 31);
          v246 = (v188[52] + (v208 >> 2));
          if (v246 >= 255)
          {
            v246 = 255;
          }

          v242[4] = v246 & ~(v246 >> 31);
          v247 = (v188[53] + (v208 >> 2));
          if (v247 >= 255)
          {
            v247 = 255;
          }

          v242[5] = v247 & ~(v247 >> 31);
          v248 = (v188[54] + (v208 >> 2));
          if (v248 >= 255)
          {
            v248 = 255;
          }

          v242[6] = v248 & ~(v248 >> 31);
          v249 = (v188[55] + (v208 >> 2));
          if (v249 >= 255)
          {
            v249 = 255;
          }

          v242[7] = v249 & ~(v249 >> 31);
          v250 = (v188[64] + (v209 >> 2));
          if (v250 >= 255)
          {
            v250 = 255;
          }

          v251 = &v64[v1218];
          v64[v1218] = v250 & ~(v250 >> 31);
          v252 = (v188[65] + (v209 >> 2));
          if (v252 >= 255)
          {
            v252 = 255;
          }

          v251[1] = v252 & ~(v252 >> 31);
          v253 = (v188[66] + (v209 >> 2));
          if (v253 >= 255)
          {
            v253 = 255;
          }

          v251[2] = v253 & ~(v253 >> 31);
          v254 = (v188[67] + (v209 >> 2));
          if (v254 >= 255)
          {
            v254 = 255;
          }

          v251[3] = v254 & ~(v254 >> 31);
          v255 = (v188[68] + (v209 >> 2));
          if (v255 >= 255)
          {
            v255 = 255;
          }

          v251[4] = v255 & ~(v255 >> 31);
          v256 = (v188[69] + (v209 >> 2));
          if (v256 >= 255)
          {
            v256 = 255;
          }

          v251[5] = v256 & ~(v256 >> 31);
          v257 = (v188[70] + (v209 >> 2));
          if (v257 >= 255)
          {
            v257 = 255;
          }

          v251[6] = v257 & ~(v257 >> 31);
          v258 = (v188[71] + (v209 >> 2));
          if (v258 >= 255)
          {
            v258 = 255;
          }

          v251[7] = v258 & ~(v258 >> 31);
          v259 = (v188[80] + (v210 >> 2));
          if (v259 >= 255)
          {
            v259 = 255;
          }

          v260 = &v64[v1217];
          v64[v1217] = v259 & ~(v259 >> 31);
          v261 = (v188[81] + (v210 >> 2));
          if (v261 >= 255)
          {
            v261 = 255;
          }

          v260[1] = v261 & ~(v261 >> 31);
          v262 = (v188[82] + (v210 >> 2));
          if (v262 >= 255)
          {
            v262 = 255;
          }

          v260[2] = v262 & ~(v262 >> 31);
          v263 = (v188[83] + (v210 >> 2));
          if (v263 >= 255)
          {
            v263 = 255;
          }

          v260[3] = v263 & ~(v263 >> 31);
          v264 = (v188[84] + (v210 >> 2));
          if (v264 >= 255)
          {
            v264 = 255;
          }

          v260[4] = v264 & ~(v264 >> 31);
          v265 = (v188[85] + (v210 >> 2));
          if (v265 >= 255)
          {
            v265 = 255;
          }

          v260[5] = v265 & ~(v265 >> 31);
          v266 = (v188[86] + (v210 >> 2));
          if (v266 >= 255)
          {
            v266 = 255;
          }

          v260[6] = v266 & ~(v266 >> 31);
          v267 = (v188[87] + (v210 >> 2));
          if (v267 >= 255)
          {
            v267 = 255;
          }

          v260[7] = v267 & ~(v267 >> 31);
          v268 = (v188[96] + (v212 >> 2));
          if (v268 >= 255)
          {
            v268 = 255;
          }

          v269 = &v64[v1219];
          v64[v1219] = v268 & ~(v268 >> 31);
          v270 = (v188[97] + (v212 >> 2));
          if (v270 >= 255)
          {
            v270 = 255;
          }

          v269[1] = v270 & ~(v270 >> 31);
          v271 = (v188[98] + (v212 >> 2));
          if (v271 >= 255)
          {
            v271 = 255;
          }

          v269[2] = v271 & ~(v271 >> 31);
          v272 = (v188[99] + (v212 >> 2));
          if (v272 >= 255)
          {
            v272 = 255;
          }

          v269[3] = v272 & ~(v272 >> 31);
          v273 = (v188[100] + (v212 >> 2));
          if (v273 >= 255)
          {
            v273 = 255;
          }

          v269[4] = v273 & ~(v273 >> 31);
          v274 = (v188[101] + (v212 >> 2));
          if (v274 >= 255)
          {
            v274 = 255;
          }

          v269[5] = v274 & ~(v274 >> 31);
          v275 = (v188[102] + (v212 >> 2));
          if (v275 >= 255)
          {
            v275 = 255;
          }

          v269[6] = v275 & ~(v275 >> 31);
          v276 = (v188[103] + (v212 >> 2));
          if (v276 >= 255)
          {
            v276 = 255;
          }

          v269[7] = v276 & ~(v276 >> 31);
          v277 = (v188[112] + (v215 >> 2));
          if (v277 >= 255)
          {
            v277 = 255;
          }

          v278 = &v64[v1220];
          v64[v1220] = v277 & ~(v277 >> 31);
          v279 = (v188[113] + (v215 >> 2));
          if (v279 >= 255)
          {
            v279 = 255;
          }

          v278[1] = v279 & ~(v279 >> 31);
          v280 = (v188[114] + (v215 >> 2));
          if (v280 >= 255)
          {
            v280 = 255;
          }

          v278[2] = v280 & ~(v280 >> 31);
          v281 = (v188[115] + (v215 >> 2));
          if (v281 >= 255)
          {
            v281 = 255;
          }

          v278[3] = v281 & ~(v281 >> 31);
          v282 = (v188[116] + (v215 >> 2));
          if (v282 >= 255)
          {
            v282 = 255;
          }

          v278[4] = v282 & ~(v282 >> 31);
          v283 = (v188[117] + (v215 >> 2));
          if (v283 >= 255)
          {
            v283 = 255;
          }

          v278[5] = v283 & ~(v283 >> 31);
          v284 = (v188[118] + (v215 >> 2));
          if (v284 >= 255)
          {
            v284 = 255;
          }

          v278[6] = v284 & ~(v284 >> 31);
        }

        else
        {
          v188 = (a2 + 2 * *v42);
          v443 = v64[-v1199];
          v444 = v64[-v1199 + 1];
          v445 = v64[-v1199 + 2];
          v446 = v64[-v1199 + 3];
          result = v64[-v1199 + 4];
          v447 = v64[-v1199 + 5];
          v448 = v64[-v1199 + 6];
          v449 = v38;
          v450 = v64[-v1199 + 7];
          v451 = v64[v65 + 7 - v1199];
          v452 = v6;
          v453 = v444 + 2 + 2 * v443 + v64[-v1199 - v58];
          v454 = v42;
          v455 = v445 + 2 + v443 + 2 * v444;
          v456 = v444 + 2 + 2 * v445 + v446;
          v457 = v445 + 2 + 2 * v446 + result;
          v458 = v446 + 2 * result + v447 + 2;
          v459 = result + 2 * v447 + v448 + 2;
          v460 = v447 + 2 * v448;
          v40 = 6 * v1199;
          v461 = v460 + v450 + 2;
          v462 = v448 + 2 * v450;
          v39 = 2 * v1199;
          v38 = v449;
          v215 = v462 + v451 + 2;
          v463 = (*v188 + (v453 >> 2));
          if (v463 >= 255)
          {
            v463 = 255;
          }

          *v64 = v463 & ~(v463 >> 31);
          v464 = (v188[1] + (v455 >> 2));
          if (v464 >= 255)
          {
            v464 = 255;
          }

          v64[1] = v464 & ~(v464 >> 31);
          v465 = (v188[2] + (v456 >> 2));
          if (v465 >= 255)
          {
            v465 = 255;
          }

          v64[2] = v465 & ~(v465 >> 31);
          v466 = (v188[3] + (v457 >> 2));
          if (v466 >= 255)
          {
            v466 = 255;
          }

          v64[3] = v466 & ~(v466 >> 31);
          v467 = (v188[4] + (v458 >> 2));
          if (v467 >= 255)
          {
            v467 = 255;
          }

          v64[4] = v467 & ~(v467 >> 31);
          v468 = (v188[5] + (v459 >> 2));
          if (v468 >= 255)
          {
            v468 = 255;
          }

          v64[5] = v468 & ~(v468 >> 31);
          v469 = (v188[6] + (v461 >> 2));
          if (v469 >= 255)
          {
            v469 = 255;
          }

          v64[6] = v469 & ~(v469 >> 31);
          v470 = (v188[7] + (v215 >> 2));
          if (v470 >= 255)
          {
            v470 = 255;
          }

          v64[7] = v470 & ~(v470 >> 31);
          v471 = (v188[16] + (v453 >> 2));
          if (v471 >= 255)
          {
            v471 = 255;
          }

          v472 = &v64[v36];
          v64[v36] = v471 & ~(v471 >> 31);
          v473 = (v188[17] + (v455 >> 2));
          if (v473 >= 255)
          {
            v473 = 255;
          }

          v472[1] = v473 & ~(v473 >> 31);
          v474 = (v188[18] + (v456 >> 2));
          if (v474 >= 255)
          {
            v474 = 255;
          }

          v472[2] = v474 & ~(v474 >> 31);
          v475 = (v188[19] + (v457 >> 2));
          if (v475 >= 255)
          {
            v475 = 255;
          }

          v472[3] = v475 & ~(v475 >> 31);
          v476 = (v188[20] + (v458 >> 2));
          if (v476 >= 255)
          {
            v476 = 255;
          }

          v472[4] = v476 & ~(v476 >> 31);
          v477 = (v188[21] + (v459 >> 2));
          if (v477 >= 255)
          {
            v477 = 255;
          }

          v472[5] = v477 & ~(v477 >> 31);
          v478 = (v188[22] + (v461 >> 2));
          if (v478 >= 255)
          {
            v478 = 255;
          }

          v472[6] = v478 & ~(v478 >> 31);
          v479 = (v188[23] + (v215 >> 2));
          if (v479 >= 255)
          {
            v479 = 255;
          }

          v472[7] = v479 & ~(v479 >> 31);
          v480 = (v188[32] + (v453 >> 2));
          if (v480 >= 255)
          {
            v480 = 255;
          }

          v481 = &v64[v1216];
          v64[v1216] = v480 & ~(v480 >> 31);
          v482 = (v188[33] + (v455 >> 2));
          if (v482 >= 255)
          {
            v482 = 255;
          }

          v481[1] = v482 & ~(v482 >> 31);
          v483 = (v188[34] + (v456 >> 2));
          if (v483 >= 255)
          {
            v483 = 255;
          }

          v481[2] = v483 & ~(v483 >> 31);
          v484 = (v188[35] + (v457 >> 2));
          if (v484 >= 255)
          {
            v484 = 255;
          }

          v481[3] = v484 & ~(v484 >> 31);
          v485 = (v188[36] + (v458 >> 2));
          if (v485 >= 255)
          {
            v485 = 255;
          }

          v481[4] = v485 & ~(v485 >> 31);
          v486 = (v188[37] + (v459 >> 2));
          if (v486 >= 255)
          {
            v486 = 255;
          }

          v481[5] = v486 & ~(v486 >> 31);
          v487 = (v188[38] + (v461 >> 2));
          if (v487 >= 255)
          {
            v487 = 255;
          }

          v481[6] = v487 & ~(v487 >> 31);
          v488 = (v188[39] + (v215 >> 2));
          if (v488 >= 255)
          {
            v488 = 255;
          }

          v481[7] = v488 & ~(v488 >> 31);
          v489 = (v188[48] + (v453 >> 2));
          if (v489 >= 255)
          {
            v489 = 255;
          }

          v490 = &v64[v37];
          v64[v37] = v489 & ~(v489 >> 31);
          v491 = (v188[49] + (v455 >> 2));
          if (v491 >= 255)
          {
            v491 = 255;
          }

          v490[1] = v491 & ~(v491 >> 31);
          v492 = (v188[50] + (v456 >> 2));
          if (v492 >= 255)
          {
            v492 = 255;
          }

          v490[2] = v492 & ~(v492 >> 31);
          v493 = (v188[51] + (v457 >> 2));
          if (v493 >= 255)
          {
            v493 = 255;
          }

          v490[3] = v493 & ~(v493 >> 31);
          v494 = (v188[52] + (v458 >> 2));
          if (v494 >= 255)
          {
            v494 = 255;
          }

          v490[4] = v494 & ~(v494 >> 31);
          v495 = (v188[53] + (v459 >> 2));
          if (v495 >= 255)
          {
            v495 = 255;
          }

          v490[5] = v495 & ~(v495 >> 31);
          v496 = (v188[54] + (v461 >> 2));
          if (v496 >= 255)
          {
            v496 = 255;
          }

          v490[6] = v496 & ~(v496 >> 31);
          v497 = (v188[55] + (v215 >> 2));
          if (v497 >= 255)
          {
            v497 = 255;
          }

          v490[7] = v497 & ~(v497 >> 31);
          v498 = (v188[64] + (v453 >> 2));
          if (v498 >= 255)
          {
            v498 = 255;
          }

          v499 = &v64[v1218];
          v64[v1218] = v498 & ~(v498 >> 31);
          v500 = (v188[65] + (v455 >> 2));
          if (v500 >= 255)
          {
            v500 = 255;
          }

          v499[1] = v500 & ~(v500 >> 31);
          v501 = (v188[66] + (v456 >> 2));
          if (v501 >= 255)
          {
            v501 = 255;
          }

          v499[2] = v501 & ~(v501 >> 31);
          v502 = (v188[67] + (v457 >> 2));
          if (v502 >= 255)
          {
            v502 = 255;
          }

          v499[3] = v502 & ~(v502 >> 31);
          v503 = (v188[68] + (v458 >> 2));
          if (v503 >= 255)
          {
            v503 = 255;
          }

          v499[4] = v503 & ~(v503 >> 31);
          v504 = (v188[69] + (v459 >> 2));
          if (v504 >= 255)
          {
            v504 = 255;
          }

          v499[5] = v504 & ~(v504 >> 31);
          v505 = (v188[70] + (v461 >> 2));
          if (v505 >= 255)
          {
            v505 = 255;
          }

          v499[6] = v505 & ~(v505 >> 31);
          v506 = (v188[71] + (v215 >> 2));
          if (v506 >= 255)
          {
            v506 = 255;
          }

          v499[7] = v506 & ~(v506 >> 31);
          v507 = (v188[80] + (v453 >> 2));
          if (v507 >= 255)
          {
            v507 = 255;
          }

          v508 = &v64[v1217];
          v64[v1217] = v507 & ~(v507 >> 31);
          v509 = (v188[81] + (v455 >> 2));
          if (v509 >= 255)
          {
            v509 = 255;
          }

          v508[1] = v509 & ~(v509 >> 31);
          v510 = (v188[82] + (v456 >> 2));
          if (v510 >= 255)
          {
            v510 = 255;
          }

          v508[2] = v510 & ~(v510 >> 31);
          v511 = (v188[83] + (v457 >> 2));
          if (v511 >= 255)
          {
            v511 = 255;
          }

          v508[3] = v511 & ~(v511 >> 31);
          v512 = (v188[84] + (v458 >> 2));
          if (v512 >= 255)
          {
            v512 = 255;
          }

          v508[4] = v512 & ~(v512 >> 31);
          v513 = (v188[85] + (v459 >> 2));
          if (v513 >= 255)
          {
            v513 = 255;
          }

          v508[5] = v513 & ~(v513 >> 31);
          v514 = (v188[86] + (v461 >> 2));
          if (v514 >= 255)
          {
            v514 = 255;
          }

          v508[6] = v514 & ~(v514 >> 31);
          v515 = (v188[87] + (v215 >> 2));
          if (v515 >= 255)
          {
            v515 = 255;
          }

          v508[7] = v515 & ~(v515 >> 31);
          v516 = (v188[96] + (v453 >> 2));
          if (v516 >= 255)
          {
            v516 = 255;
          }

          v517 = &v64[v1219];
          v64[v1219] = v516 & ~(v516 >> 31);
          v518 = (v188[97] + (v455 >> 2));
          if (v518 >= 255)
          {
            v518 = 255;
          }

          v517[1] = v518 & ~(v518 >> 31);
          v519 = (v188[98] + (v456 >> 2));
          if (v519 >= 255)
          {
            v519 = 255;
          }

          v517[2] = v519 & ~(v519 >> 31);
          v520 = (v188[99] + (v457 >> 2));
          if (v520 >= 255)
          {
            v520 = 255;
          }

          v517[3] = v520 & ~(v520 >> 31);
          v521 = (v188[100] + (v458 >> 2));
          if (v521 >= 255)
          {
            v521 = 255;
          }

          v517[4] = v521 & ~(v521 >> 31);
          v522 = (v188[101] + (v459 >> 2));
          if (v522 >= 255)
          {
            v522 = 255;
          }

          v517[5] = v522 & ~(v522 >> 31);
          v523 = (v188[102] + (v461 >> 2));
          if (v523 >= 255)
          {
            v523 = 255;
          }

          v517[6] = v523 & ~(v523 >> 31);
          v524 = (v188[103] + (v215 >> 2));
          if (v524 >= 255)
          {
            v524 = 255;
          }

          v517[7] = v524 & ~(v524 >> 31);
          LOWORD(v525) = v188[112] + (v453 >> 2);
          v6 = v452;
          v19 = v1200;
          v525 = v525;
          if (v525 >= 255)
          {
            v525 = 255;
          }

          v526 = &v64[v1220];
          v64[v1220] = v525 & ~(v525 >> 31);
          LOWORD(v527) = v188[113] + (v455 >> 2);
          v42 = v454;
          v2 = v1198;
          v527 = v527;
          if (v527 >= 255)
          {
            v527 = 255;
          }

          v526[1] = v527 & ~(v527 >> 31);
          v528 = (v188[114] + (v456 >> 2));
          if (v528 >= 255)
          {
            v528 = 255;
          }

          v526[2] = v528 & ~(v528 >> 31);
          v529 = (v188[115] + (v457 >> 2));
          if (v529 >= 255)
          {
            v529 = 255;
          }

          v526[3] = v529 & ~(v529 >> 31);
          v530 = (v188[116] + (v458 >> 2));
          if (v530 >= 255)
          {
            v530 = 255;
          }

          v526[4] = v530 & ~(v530 >> 31);
          v531 = (v188[117] + (v459 >> 2));
          if (v531 >= 255)
          {
            v531 = 255;
          }

          v526[5] = v531 & ~(v531 >> 31);
          v532 = (v188[118] + (v461 >> 2));
          if (v532 >= 255)
          {
            v532 = 255;
          }

          v526[6] = v532 & ~(v532 >> 31);
        }

        v442 = v188[119] + (v215 >> 2);
        goto LABEL_1266;
      }

      if (v62 != 2)
      {
        v1204 = v42;
        v1209 = v38;
        v285 = &v64[-v1199];
        v286 = v285[-v58];
        v287 = (a2 + 2 * *v42);
        v288 = *v285;
        v289 = v285[1];
        v290 = v285[2];
        v291 = v285[3];
        v292 = v285[4];
        v293 = v285[5];
        v294 = v285[6];
        v295 = v285[7];
        v1195 = v35;
        v296 = v36;
        if (v65)
        {
          v297 = v285[8];
          v298 = v285[9];
          v299 = v285[10];
          v300 = v285[11];
          v301 = v285[12];
          v302 = v285[13];
          v303 = v285[14];
          v304 = v285[15];
        }

        else
        {
          v304 = v64[-v1199 + 7];
          v303 = v304;
          v302 = v304;
          v301 = v304;
          v300 = v304;
          v299 = v304;
          v298 = v304;
          v297 = v304;
        }

        v870 = v289 + 2 + v286 + 2 * v288;
        v871 = v290 + 2 + v288 + 2 * v289;
        v872 = (v289 + 2 + 2 * v290 + v291) >> 2;
        v873 = (v290 + 2 + 2 * v291 + v292) >> 2;
        v874 = (v291 + 2 * v292 + v293 + 2) >> 2;
        v875 = v292 + 2 * v293 + v294 + 2;
        v876 = v872 + 2;
        v877 = v872 + 2 + (v870 >> 2) + 2 * (v871 >> 2);
        v878 = v873 + 2;
        v879 = v873 + 2 + (v871 >> 2) + 2 * v872;
        v880 = v875 >> 2;
        v881 = v876 + 2 * v873;
        v882 = (v293 + 2 * v294 + v295 + 2) >> 2;
        v883 = v294 + 2 * v295 + v297 + 2;
        v884 = v881 + v874;
        v885 = v883 >> 2;
        v886 = v295 + v298 + 2 * v297 + 2;
        v887 = v878 + 2 * v874 + (v875 >> 2);
        v888 = v299 + v297 + 2 * v298 + 2;
        v889 = v874 + 2 * v880 + v882;
        v890 = v880 + 2 * v882 + (v883 >> 2);
        v891 = v300 + 2;
        v892 = v300 + 2 + v298 + 2 * v299;
        v893 = (v892 >> 2) + 2 * (v888 >> 2) + (v886 >> 2);
        v894 = *v287 + (v877 >> 2);
        v895 = v889 + 2;
        v896 = v890 + 2;
        v897 = v882 + 2 * v885 + (v886 >> 2) + 2;
        v898 = v885 + (v888 >> 2) + 2 * (v886 >> 2) + 2;
        v899 = v893 + 2;
        v900 = v894;
        if (v894 >= 255)
        {
          v900 = 255;
        }

        *v64 = v900 & ~(v900 >> 31);
        v901 = (v287[1] + (v879 >> 2));
        if (v901 >= 255)
        {
          v901 = 255;
        }

        v64[1] = v901 & ~(v901 >> 31);
        v902 = (v287[2] + (v884 >> 2));
        if (v902 >= 255)
        {
          v902 = 255;
        }

        v64[2] = v902 & ~(v902 >> 31);
        v903 = (v287[3] + (v887 >> 2));
        if (v903 >= 255)
        {
          v903 = 255;
        }

        v64[3] = v903 & ~(v903 >> 31);
        v904 = (v287[4] + (v895 >> 2));
        if (v904 >= 255)
        {
          v904 = 255;
        }

        v64[4] = v904 & ~(v904 >> 31);
        v905 = (v287[5] + (v896 >> 2));
        if (v905 >= 255)
        {
          v905 = 255;
        }

        v64[5] = v905 & ~(v905 >> 31);
        v906 = (v287[6] + (v897 >> 2));
        if (v906 >= 255)
        {
          v906 = 255;
        }

        v64[6] = v906 & ~(v906 >> 31);
        v907 = (v287[7] + (v898 >> 2));
        if (v907 >= 255)
        {
          v907 = 255;
        }

        v64[7] = v907 & ~(v907 >> 31);
        v908 = (v287[16] + (v879 >> 2));
        if (v908 >= 255)
        {
          v908 = 255;
        }

        v36 = v296;
        v909 = &v64[v296];
        v64[v296] = v908 & ~(v908 >> 31);
        v910 = (v287[17] + (v884 >> 2));
        if (v910 >= 255)
        {
          v910 = 255;
        }

        v909[1] = v910 & ~(v910 >> 31);
        v911 = (v287[18] + (v887 >> 2));
        if (v911 >= 255)
        {
          v911 = 255;
        }

        v909[2] = v911 & ~(v911 >> 31);
        v912 = (v287[19] + (v895 >> 2));
        if (v912 >= 255)
        {
          v912 = 255;
        }

        v909[3] = v912 & ~(v912 >> 31);
        v913 = (v287[20] + (v896 >> 2));
        if (v913 >= 255)
        {
          v913 = 255;
        }

        v909[4] = v913 & ~(v913 >> 31);
        v914 = (v287[21] + (v897 >> 2));
        if (v914 >= 255)
        {
          v914 = 255;
        }

        v909[5] = v914 & ~(v914 >> 31);
        v915 = (v287[22] + (v898 >> 2));
        if (v915 >= 255)
        {
          v915 = 255;
        }

        v909[6] = v915 & ~(v915 >> 31);
        v916 = (v287[23] + (v899 >> 2));
        if (v916 >= 255)
        {
          v916 = 255;
        }

        v909[7] = v916 & ~(v916 >> 31);
        v917 = v301 + 2;
        v918 = (v301 + 2 + v299 + 2 * v300) >> 2;
        v919 = v918 + 2;
        v920 = v918 + 2 + 2 * (v892 >> 2) + (v888 >> 2);
        v921 = (v287[32] + (v884 >> 2));
        if (v921 >= 255)
        {
          v921 = 255;
        }

        v922 = &v64[v1216];
        v64[v1216] = v921 & ~(v921 >> 31);
        v923 = (v287[33] + (v887 >> 2));
        if (v923 >= 255)
        {
          v923 = 255;
        }

        v922[1] = v923 & ~(v923 >> 31);
        v924 = (v287[34] + (v895 >> 2));
        if (v924 >= 255)
        {
          v924 = 255;
        }

        v922[2] = v924 & ~(v924 >> 31);
        v925 = (v287[35] + (v896 >> 2));
        if (v925 >= 255)
        {
          v925 = 255;
        }

        v922[3] = v925 & ~(v925 >> 31);
        v926 = (v287[36] + (v897 >> 2));
        if (v926 >= 255)
        {
          v926 = 255;
        }

        v922[4] = v926 & ~(v926 >> 31);
        v927 = (v287[37] + (v898 >> 2));
        if (v927 >= 255)
        {
          v927 = 255;
        }

        v922[5] = v927 & ~(v927 >> 31);
        v928 = (v287[38] + (v899 >> 2));
        if (v928 >= 255)
        {
          v928 = 255;
        }

        v922[6] = v928 & ~(v928 >> 31);
        v929 = (v287[39] + (v920 >> 2));
        if (v929 >= 255)
        {
          v929 = 255;
        }

        v922[7] = v929 & ~(v929 >> 31);
        v930 = (v891 + v302 + 2 * v301) >> 2;
        v931 = v930 + 2;
        v932 = v930 + 2 + 2 * v918 + (v892 >> 2);
        v933 = (v287[48] + (v887 >> 2));
        if (v933 >= 255)
        {
          v933 = 255;
        }

        v37 = 3 * v1199;
        v934 = &v64[v1202];
        v64[v1202] = v933 & ~(v933 >> 31);
        v935 = (v287[49] + (v895 >> 2));
        if (v935 >= 255)
        {
          v935 = 255;
        }

        v934[1] = v935 & ~(v935 >> 31);
        v936 = (v287[50] + (v896 >> 2));
        if (v936 >= 255)
        {
          v936 = 255;
        }

        v934[2] = v936 & ~(v936 >> 31);
        v937 = (v287[51] + (v897 >> 2));
        if (v937 >= 255)
        {
          v937 = 255;
        }

        v934[3] = v937 & ~(v937 >> 31);
        v938 = (v287[52] + (v898 >> 2));
        if (v938 >= 255)
        {
          v938 = 255;
        }

        v934[4] = v938 & ~(v938 >> 31);
        v939 = (v287[53] + (v899 >> 2));
        if (v939 >= 255)
        {
          v939 = 255;
        }

        v934[5] = v939 & ~(v939 >> 31);
        v940 = (v287[54] + (v920 >> 2));
        if (v940 >= 255)
        {
          v940 = 255;
        }

        v934[6] = v940 & ~(v940 >> 31);
        v941 = (v287[55] + (v932 >> 2));
        if (v941 >= 255)
        {
          v941 = 255;
        }

        v934[7] = v941 & ~(v941 >> 31);
        v942 = v917 + v303 + 2 * v302;
        v943 = v919 + (v942 >> 2) + 2 * v930;
        v944 = (v287[64] + (v895 >> 2));
        if (v944 >= 255)
        {
          v944 = 255;
        }

        v945 = &v64[v1218];
        v64[v1218] = v944 & ~(v944 >> 31);
        v946 = (v287[65] + (v896 >> 2));
        if (v946 >= 255)
        {
          v946 = 255;
        }

        v945[1] = v946 & ~(v946 >> 31);
        v947 = (v287[66] + (v897 >> 2));
        if (v947 >= 255)
        {
          v947 = 255;
        }

        v945[2] = v947 & ~(v947 >> 31);
        v948 = (v287[67] + (v898 >> 2));
        if (v948 >= 255)
        {
          v948 = 255;
        }

        v945[3] = v948 & ~(v948 >> 31);
        v949 = (v287[68] + (v899 >> 2));
        if (v949 >= 255)
        {
          v949 = 255;
        }

        v945[4] = v949 & ~(v949 >> 31);
        v950 = (v287[69] + (v920 >> 2));
        if (v950 >= 255)
        {
          v950 = 255;
        }

        v945[5] = v950 & ~(v950 >> 31);
        v951 = (v287[70] + (v932 >> 2));
        if (v951 >= 255)
        {
          v951 = 255;
        }

        v945[6] = v951 & ~(v951 >> 31);
        v952 = (v287[71] + (v943 >> 2));
        if (v952 >= 255)
        {
          v952 = 255;
        }

        v945[7] = v952 & ~(v952 >> 31);
        v953 = v304 + 2 + v302 + 2 * v303;
        v954 = v931 + (v953 >> 2) + 2 * (v942 >> 2);
        v955 = (v287[80] + (v896 >> 2));
        if (v955 >= 255)
        {
          v955 = 255;
        }

        v956 = &v64[v1217];
        v64[v1217] = v955 & ~(v955 >> 31);
        v957 = (v287[81] + (v897 >> 2));
        if (v957 >= 255)
        {
          v957 = 255;
        }

        v956[1] = v957 & ~(v957 >> 31);
        v958 = (v287[82] + (v898 >> 2));
        if (v958 >= 255)
        {
          v958 = 255;
        }

        v956[2] = v958 & ~(v958 >> 31);
        v959 = (v287[83] + (v899 >> 2));
        if (v959 >= 255)
        {
          v959 = 255;
        }

        v956[3] = v959 & ~(v959 >> 31);
        v960 = (v287[84] + (v920 >> 2));
        if (v960 >= 255)
        {
          v960 = 255;
        }

        v956[4] = v960 & ~(v960 >> 31);
        v961 = (v287[85] + (v932 >> 2));
        if (v961 >= 255)
        {
          v961 = 255;
        }

        v956[5] = v961 & ~(v961 >> 31);
        v962 = (v287[86] + (v943 >> 2));
        if (v962 >= 255)
        {
          v962 = 255;
        }

        v956[6] = v962 & ~(v962 >> 31);
        v963 = (v287[87] + (v954 >> 2));
        if (v963 >= 255)
        {
          v963 = 255;
        }

        v956[7] = v963 & ~(v963 >> 31);
        v39 = 2 * v1199;
        v964 = (v304 + 2 + v303 + 2 * v304) >> 2;
        result = v964 + 2 + 2 * (v953 >> 2) + (v942 >> 2);
        v965 = (v287[96] + (v897 >> 2));
        if (v965 >= 255)
        {
          v965 = 255;
        }

        v40 = 6 * v1199;
        v966 = &v64[v1219];
        v64[v1219] = v965 & ~(v965 >> 31);
        v967 = (v287[97] + (v898 >> 2));
        if (v967 >= 255)
        {
          v967 = 255;
        }

        v966[1] = v967 & ~(v967 >> 31);
        v968 = (v287[98] + (v899 >> 2));
        if (v968 >= 255)
        {
          v968 = 255;
        }

        v966[2] = v968 & ~(v968 >> 31);
        v969 = (v287[99] + (v920 >> 2));
        if (v969 >= 255)
        {
          v969 = 255;
        }

        v966[3] = v969 & ~(v969 >> 31);
        v970 = (v287[100] + (v932 >> 2));
        if (v970 >= 255)
        {
          v970 = 255;
        }

        v966[4] = v970 & ~(v970 >> 31);
        v971 = (v287[101] + (v943 >> 2));
        if (v971 >= 255)
        {
          v971 = 255;
        }

        v966[5] = v971 & ~(v971 >> 31);
        v972 = (v287[102] + (v954 >> 2));
        if (v972 >= 255)
        {
          v972 = 255;
        }

        v966[6] = v972 & ~(v972 >> 31);
        v973 = (v287[103] + (result >> 2));
        if (v973 >= 255)
        {
          v973 = 255;
        }

        v966[7] = v973 & ~(v973 >> 31);
        v974 = (v287[112] + (v898 >> 2));
        if (v974 >= 255)
        {
          v974 = 255;
        }

        v975 = &v64[v1220];
        v64[v1220] = v974 & ~(v974 >> 31);
        v976 = (v287[113] + (v899 >> 2));
        if (v976 >= 255)
        {
          v976 = 255;
        }

        v975[1] = v976 & ~(v976 >> 31);
        v977 = (v287[114] + (v920 >> 2));
        if (v977 >= 255)
        {
          v977 = 255;
        }

        v975[2] = v977 & ~(v977 >> 31);
        v978 = (v287[115] + (v932 >> 2));
        if (v978 >= 255)
        {
          v978 = 255;
        }

        v975[3] = v978 & ~(v978 >> 31);
        v979 = (v287[116] + (v943 >> 2));
        if (v979 >= 255)
        {
          v979 = 255;
        }

        v975[4] = v979 & ~(v979 >> 31);
        v980 = (v287[117] + (v954 >> 2));
        if (v980 >= 255)
        {
          v980 = 255;
        }

        v975[5] = v980 & ~(v980 >> 31);
        v981 = (v287[118] + (result >> 2));
        if (v981 >= 255)
        {
          v981 = 255;
        }

        v975[6] = v981 & ~(v981 >> 31);
        v442 = v287[119] + ((v964 + 2 + 2 * v964 + (v953 >> 2)) >> 2);
        v6 = v1194;
        v35 = v1195;
        v19 = v1200;
        v42 = v1204;
        v38 = v1209;
        v2 = v1198;
        goto LABEL_1266;
      }

      v533 = (a2 + 2 * *v42);
      if (v57)
      {
        if ((v57 & 0xFF00) != 0)
        {
          v534 = v64[-v1199];
          v535 = v64[-v1199 + 6];
          v63.i32[0] = *&v64[-v1199 + 1];
          v536 = v64[-v1199 + 7];
          v537 = vmovl_u8(v63).u64[0];
          v538 = vmovl_u16(v537);
          v539 = vaddw_u16(v41, v537);
          v540 = v538.i32[0];
          v541.i64[0] = vdupq_laneq_s64(v538, 1).u64[0];
          v538.i32[0] = v64[-v1199 + 5];
          v542 = vaddq_s32(v538, v538);
          v543 = v539.i32[0] + v64[-v1199 - v58] + 2 * v534;
          v544 = (v539.i32[1] + v534 + 2 * v540) >> 2;
          v545 = v64[-v1199 + 5] + 2 * v535;
          v546 = (v535 + v64[BYTE2(v57) + 7 - v1199] + 2 * v536 + 2) >> 2;
          v547 = *(v64 - 1);
          v548 = v64[v36 - 1];
          v541.i32[2] = v64[-v1199 + 5];
          v541.i32[3] = v535;
          v549 = v64[v39 - 1];
          v550 = v64[v37 - 1];
          v551 = v37;
          v552 = v36;
          v553 = v2;
          v554 = v42;
          v555 = v64[v1218 - 1];
          v556 = v64[v1217 - 1];
          v557 = v6;
          v558 = v64[v1219 - 1];
          v559 = v64[v1220 - 1];
          v560 = v548 + 2 + v64[-(v58 * v1199) - 1] + 2 * v547;
          v561 = v545 + v536 + 2;
          v562 = v549 + 2;
          result = (v549 + 2 + v547 + 2 * v548) >> 2;
          v563 = v548 + 2 + 2 * v549 + v550;
          v564 = (v562 + 2 * v550 + v555) >> 2;
          v565 = v550 + 2 * v555 + v556 + 2;
          v566 = (v555 + 2 * v556 + v558 + 2) >> 2;
          v567 = v556 + 2 * v558 + v559 + 2;
          v568 = v558 + v559;
          v6 = v557;
          v569 = v568 + 2 * v559;
          v39 = 2 * v1199;
          v40 = 6 * v1199;
          v570 = v564 + (v565 >> 2) + v566 + (v567 >> 2) + ((v569 + 2) >> 2);
          v42 = v554;
          v2 = v553;
          v36 = v552;
          v37 = v551;
          v19 = v1200;
          v442 = (v570 + v544 + (v561 >> 2) + v546 + (v560 >> 2) + result + (v563 >> 2) + vaddvq_s32(vshrq_n_u32(vaddq_s32(vaddq_s32(v539, vextq_s8(v542, v542, 4uLL)), v541), 2uLL)) + (v543 >> 2) + 8) >> 4;
LABEL_1139:
          v1111 = (*v533 + v442);
          if (v1111 >= 255)
          {
            v1111 = 255;
          }

          *v64 = v1111 & ~(v1111 >> 31);
          v1112 = (v533[1] + v442);
          if (v1112 >= 255)
          {
            v1112 = 255;
          }

          v64[1] = v1112 & ~(v1112 >> 31);
          v1113 = (v533[2] + v442);
          if (v1113 >= 255)
          {
            v1113 = 255;
          }

          v64[2] = v1113 & ~(v1113 >> 31);
          v1114 = (v533[3] + v442);
          if (v1114 >= 255)
          {
            v1114 = 255;
          }

          v64[3] = v1114 & ~(v1114 >> 31);
          v1115 = (v533[4] + v442);
          if (v1115 >= 255)
          {
            v1115 = 255;
          }

          v64[4] = v1115 & ~(v1115 >> 31);
          v1116 = (v533[5] + v442);
          if (v1116 >= 255)
          {
            v1116 = 255;
          }

          v64[5] = v1116 & ~(v1116 >> 31);
          v1117 = (v533[6] + v442);
          if (v1117 >= 255)
          {
            v1117 = 255;
          }

          v64[6] = v1117 & ~(v1117 >> 31);
          v1118 = (v533[7] + v442);
          if (v1118 >= 255)
          {
            v1118 = 255;
          }

          v64[7] = v1118 & ~(v1118 >> 31);
          v1119 = (v533[16] + v442);
          if (v1119 >= 255)
          {
            v1119 = 255;
          }

          v1120 = &v64[v36];
          v64[v36] = v1119 & ~(v1119 >> 31);
          v1121 = (v533[17] + v442);
          if (v1121 >= 255)
          {
            v1121 = 255;
          }

          v1120[1] = v1121 & ~(v1121 >> 31);
          v1122 = (v533[18] + v442);
          if (v1122 >= 255)
          {
            v1122 = 255;
          }

          v1120[2] = v1122 & ~(v1122 >> 31);
          v1123 = (v533[19] + v442);
          if (v1123 >= 255)
          {
            v1123 = 255;
          }

          v1120[3] = v1123 & ~(v1123 >> 31);
          v1124 = (v533[20] + v442);
          if (v1124 >= 255)
          {
            v1124 = 255;
          }

          v1120[4] = v1124 & ~(v1124 >> 31);
          v1125 = (v533[21] + v442);
          if (v1125 >= 255)
          {
            v1125 = 255;
          }

          v1120[5] = v1125 & ~(v1125 >> 31);
          v1126 = (v533[22] + v442);
          if (v1126 >= 255)
          {
            v1126 = 255;
          }

          v1120[6] = v1126 & ~(v1126 >> 31);
          v1127 = (v533[23] + v442);
          if (v1127 >= 255)
          {
            v1127 = 255;
          }

          v1120[7] = v1127 & ~(v1127 >> 31);
          v1128 = (v533[32] + v442);
          if (v1128 >= 255)
          {
            v1128 = 255;
          }

          v1129 = &v64[v39];
          v64[v39] = v1128 & ~(v1128 >> 31);
          v1130 = (v533[33] + v442);
          if (v1130 >= 255)
          {
            v1130 = 255;
          }

          v1129[1] = v1130 & ~(v1130 >> 31);
          v1131 = (v533[34] + v442);
          if (v1131 >= 255)
          {
            v1131 = 255;
          }

          v1129[2] = v1131 & ~(v1131 >> 31);
          v1132 = (v533[35] + v442);
          if (v1132 >= 255)
          {
            v1132 = 255;
          }

          v1129[3] = v1132 & ~(v1132 >> 31);
          v1133 = (v533[36] + v442);
          if (v1133 >= 255)
          {
            v1133 = 255;
          }

          v1129[4] = v1133 & ~(v1133 >> 31);
          v1134 = (v533[37] + v442);
          if (v1134 >= 255)
          {
            v1134 = 255;
          }

          v1129[5] = v1134 & ~(v1134 >> 31);
          v1135 = (v533[38] + v442);
          if (v1135 >= 255)
          {
            v1135 = 255;
          }

          v1129[6] = v1135 & ~(v1135 >> 31);
          v1136 = (v533[39] + v442);
          if (v1136 >= 255)
          {
            v1136 = 255;
          }

          v1129[7] = v1136 & ~(v1136 >> 31);
          v1137 = (v533[48] + v442);
          if (v1137 >= 255)
          {
            v1137 = 255;
          }

          v1138 = &v64[v37];
          v64[v37] = v1137 & ~(v1137 >> 31);
          v1139 = (v533[49] + v442);
          if (v1139 >= 255)
          {
            v1139 = 255;
          }

          v1138[1] = v1139 & ~(v1139 >> 31);
          v1140 = (v533[50] + v442);
          if (v1140 >= 255)
          {
            v1140 = 255;
          }

          v1138[2] = v1140 & ~(v1140 >> 31);
          v1141 = (v533[51] + v442);
          if (v1141 >= 255)
          {
            v1141 = 255;
          }

          v1138[3] = v1141 & ~(v1141 >> 31);
          v1142 = (v533[52] + v442);
          if (v1142 >= 255)
          {
            v1142 = 255;
          }

          v1138[4] = v1142 & ~(v1142 >> 31);
          v1143 = (v533[53] + v442);
          if (v1143 >= 255)
          {
            v1143 = 255;
          }

          v1138[5] = v1143 & ~(v1143 >> 31);
          v1144 = (v533[54] + v442);
          if (v1144 >= 255)
          {
            v1144 = 255;
          }

          v1138[6] = v1144 & ~(v1144 >> 31);
          v1145 = (v533[55] + v442);
          if (v1145 >= 255)
          {
            v1145 = 255;
          }

          v1138[7] = v1145 & ~(v1145 >> 31);
          v1146 = (v533[64] + v442);
          if (v1146 >= 255)
          {
            v1146 = 255;
          }

          v1147 = &v64[v1218];
          v64[v1218] = v1146 & ~(v1146 >> 31);
          v1148 = (v533[65] + v442);
          if (v1148 >= 255)
          {
            v1148 = 255;
          }

          v1147[1] = v1148 & ~(v1148 >> 31);
          v1149 = (v533[66] + v442);
          if (v1149 >= 255)
          {
            v1149 = 255;
          }

          v1147[2] = v1149 & ~(v1149 >> 31);
          v1150 = (v533[67] + v442);
          if (v1150 >= 255)
          {
            v1150 = 255;
          }

          v1147[3] = v1150 & ~(v1150 >> 31);
          v1151 = (v533[68] + v442);
          if (v1151 >= 255)
          {
            v1151 = 255;
          }

          v1147[4] = v1151 & ~(v1151 >> 31);
          v1152 = (v533[69] + v442);
          if (v1152 >= 255)
          {
            v1152 = 255;
          }

          v1147[5] = v1152 & ~(v1152 >> 31);
          v1153 = (v533[70] + v442);
          if (v1153 >= 255)
          {
            v1153 = 255;
          }

          v1147[6] = v1153 & ~(v1153 >> 31);
          v1154 = (v533[71] + v442);
          if (v1154 >= 255)
          {
            v1154 = 255;
          }

          v1147[7] = v1154 & ~(v1154 >> 31);
          v1155 = (v533[80] + v442);
          if (v1155 >= 255)
          {
            v1155 = 255;
          }

          v1156 = &v64[v1217];
          v64[v1217] = v1155 & ~(v1155 >> 31);
          v1157 = (v533[81] + v442);
          if (v1157 >= 255)
          {
            v1157 = 255;
          }

          v1156[1] = v1157 & ~(v1157 >> 31);
          v1158 = (v533[82] + v442);
          if (v1158 >= 255)
          {
            v1158 = 255;
          }

          v1156[2] = v1158 & ~(v1158 >> 31);
          v1159 = (v533[83] + v442);
          if (v1159 >= 255)
          {
            v1159 = 255;
          }

          v1156[3] = v1159 & ~(v1159 >> 31);
          v1160 = (v533[84] + v442);
          if (v1160 >= 255)
          {
            v1160 = 255;
          }

          v1156[4] = v1160 & ~(v1160 >> 31);
          v1161 = (v533[85] + v442);
          if (v1161 >= 255)
          {
            v1161 = 255;
          }

          v1156[5] = v1161 & ~(v1161 >> 31);
          v1162 = (v533[86] + v442);
          if (v1162 >= 255)
          {
            v1162 = 255;
          }

          v1156[6] = v1162 & ~(v1162 >> 31);
          v1163 = (v533[87] + v442);
          if (v1163 >= 255)
          {
            v1163 = 255;
          }

          v1156[7] = v1163 & ~(v1163 >> 31);
          v1164 = (v533[96] + v442);
          if (v1164 >= 255)
          {
            v1164 = 255;
          }

          v1165 = &v64[v40];
          v64[v40] = v1164 & ~(v1164 >> 31);
          v1166 = (v533[97] + v442);
          if (v1166 >= 255)
          {
            v1166 = 255;
          }

          v1165[1] = v1166 & ~(v1166 >> 31);
          v1167 = (v533[98] + v442);
          if (v1167 >= 255)
          {
            v1167 = 255;
          }

          v1165[2] = v1167 & ~(v1167 >> 31);
          v1168 = (v533[99] + v442);
          if (v1168 >= 255)
          {
            v1168 = 255;
          }

          v1165[3] = v1168 & ~(v1168 >> 31);
          v1169 = (v533[100] + v442);
          if (v1169 >= 255)
          {
            v1169 = 255;
          }

          v1165[4] = v1169 & ~(v1169 >> 31);
          v1170 = (v533[101] + v442);
          if (v1170 >= 255)
          {
            v1170 = 255;
          }

          v1165[5] = v1170 & ~(v1170 >> 31);
          v1171 = (v533[102] + v442);
          if (v1171 >= 255)
          {
            v1171 = 255;
          }

          v1165[6] = v1171 & ~(v1171 >> 31);
          v1172 = (v533[103] + v442);
          if (v1172 >= 255)
          {
            v1172 = 255;
          }

          v1165[7] = v1172 & ~(v1172 >> 31);
          v1173 = (v533[112] + v442);
          if (v1173 >= 255)
          {
            v1173 = 255;
          }

          v1174 = &v64[v1220];
          v64[v1220] = v1173 & ~(v1173 >> 31);
          v1175 = (v533[113] + v442);
          if (v1175 >= 255)
          {
            v1175 = 255;
          }

          v1174[1] = v1175 & ~(v1175 >> 31);
          v1176 = (v533[114] + v442);
          if (v1176 >= 255)
          {
            v1176 = 255;
          }

          v1174[2] = v1176 & ~(v1176 >> 31);
          v1177 = (v533[115] + v442);
          if (v1177 >= 255)
          {
            v1177 = 255;
          }

          v1174[3] = v1177 & ~(v1177 >> 31);
          v1178 = (v533[116] + v442);
          if (v1178 >= 255)
          {
            v1178 = 255;
          }

          v1174[4] = v1178 & ~(v1178 >> 31);
          v1179 = (v533[117] + v442);
          if (v1179 >= 255)
          {
            v1179 = 255;
          }

          v1174[5] = v1179 & ~(v1179 >> 31);
          v1180 = (v533[118] + v442);
          if (v1180 >= 255)
          {
            v1180 = 255;
          }

          v1174[6] = v1180 & ~(v1180 >> 31);
          LOWORD(v442) = v533[119] + v442;
          goto LABEL_1266;
        }

        v1103 = v58 * v1199;
        v1104 = v64[v36 - 1];
        v1105 = v64[v39 - 1];
        v1106 = v64[v37 - 1];
        v1107 = v64[v1218 - 1];
        v1108 = v64[v1217 - 1];
        v1109 = v64[v40 - 1];
        v1110 = v64[v1220 - 1];
        result = (v1104 + 2);
        v988 = ((result + v64[-v1103 - 1] + 2 * *(v64 - 1)) >> 2) + ((v1105 + 2 + *(v64 - 1) + 2 * v1104) >> 2) + ((result + 2 * v1105 + v1106) >> 2) + ((v1105 + 2 + 2 * v1106 + v1107) >> 2) + ((v1106 + 2 * v1107 + v1108 + 2) >> 2) + ((v1107 + 2 * v1108 + v1109 + 2) >> 2) + ((v1108 + 2 * v1109 + v1110 + 2) >> 2) + ((v1109 + v1110 + 2 * v1110 + 2) >> 2);
      }

      else
      {
        if ((v57 & 0xFF00) == 0)
        {
          LOWORD(v442) = 128;
          goto LABEL_1139;
        }

        v63.i32[0] = *&v64[-v1199 + 1];
        v982 = vmovl_u8(v63).u64[0];
        v983 = vmovl_u16(v982);
        v984 = vaddw_u16(v41, v982);
        v985 = v983.i32[0];
        v986.i64[0] = vdupq_laneq_s64(v983, 1).u64[0];
        v983.i32[0] = v64[-v1199 + 5];
        v987 = vaddq_s32(v983, v983);
        v986.i32[2] = v64[-v1199 + 5];
        v986.i32[3] = v64[-v1199 + 6];
        v1201 = -v1199;
        v988 = vaddvq_s32(vshrq_n_u32(vaddq_s32(vaddq_s32(v984, vextq_s8(v987, v987, 4uLL)), v986), 2uLL)) + ((v984.i32[0] + v64[v1201 - v58] + 2 * v64[v1201]) >> 2) + ((v984.i32[1] + v64[v1201] + 2 * v985) >> 2) + ((v64[v1201 + 5] + 2 * v64[v1201 + 6] + v64[v1201 + 7] + 2) >> 2) + ((v64[v1201 + 6] + v64[v1201 + 7 + BYTE2(v57)] + 2 * v64[v1201 + 7] + 2) >> 2);
      }

      v442 = (v988 + 4) >> 3;
      goto LABEL_1139;
    }

    if (v62 <= 5)
    {
      if (v62 != 4)
      {
        v305 = (a2 + 2 * *v42);
        v306 = v64[-v1199];
        v307 = v64[-v1199 + 1];
        v308 = v64[-v1199 + 2];
        v309 = v64[-v1199 + 3];
        v310 = v64[-v1199 + 4];
        v311 = v64[-v1199 + 5];
        v312 = v64[-v1199 + 6];
        v313 = v64[-v1199 + 7];
        v314 = v64[-v1199 - v58];
        v315 = (v307 + 2 + v314 + 2 * v306) >> 2;
        v316 = v306 + 2;
        v317 = (v306 + 2 + 2 * v307 + v308) >> 2;
        v1205 = v42;
        v1210 = v38;
        v318 = (v307 + 2 + 2 * v308 + v309) >> 2;
        v319 = v308 + 2 * v309 + v310 + 2;
        v1196 = v35;
        v320 = v309 + 2 * v310 + v311 + 2;
        v321 = v310 + 2 * v311 + v312 + 2;
        v322 = v311 + 2 * v312 + v313 + 2;
        v323 = v312 + v64[BYTE2(v57) + 7 - v1199] + 2 * v313 + 2;
        v324 = v36;
        v325 = *(v64 - 1);
        LODWORD(v324) = v64[v324 - 1];
        v326 = v64[v1216 - 1];
        v1183 = v64[v1202 - 1];
        v1184 = v64[v1218 - 1];
        v1185 = v64[v1217 - 1];
        v1187 = v64[v1219 - 1];
        v1189 = v64[v1220 - 1];
        v327 = v324 + 2;
        v328 = v324 + 2 + v64[-(v58 * v1199) - 1] + 2 * v325;
        v329 = v325 + 2 * v324;
        v330 = v316 + 2 * v314 + v325;
        LODWORD(v324) = v315 + (v330 >> 2);
        v331 = v315 + v317;
        v332 = v315 + 2;
        v333 = v315 + 2 + 2 * v317 + v318;
        v334 = v317 + v318;
        v335 = v317 + 2;
        v336 = v317 + 2 + 2 * v315 + (v330 >> 2);
        v337 = v330 >> 2;
        v338 = v324 + 1;
        v339 = v331 + 1;
        v340 = v334 + 1;
        v341 = v335 + 2 * v318 + (v319 >> 2);
        v342 = v318 + (v319 >> 2) + 1;
        v343 = v318 + 2 * (v319 >> 2) + (v320 >> 2);
        v344 = (v319 >> 2) + (v320 >> 2) + 1;
        v345 = (v319 >> 2) + 2 * (v320 >> 2) + (v321 >> 2);
        v346 = (v320 >> 2) + (v321 >> 2) + 1;
        v347 = (v320 >> 2) + 2 * (v321 >> 2) + (v322 >> 2);
        v348 = (v321 >> 2) + (v322 >> 2) + 1;
        v349 = (v321 >> 2) + 2 * (v322 >> 2);
        v350 = (v322 >> 2) + (v323 >> 2) + 1;
        v351 = v343 + 2;
        v352 = v345 + 2;
        v353 = v347 + 2;
        v354 = v349 + (v323 >> 2) + 2;
        v355 = v332 + 2 * v337 + (v328 >> 2);
        v356 = (*v305 + (v338 >> 1));
        if (v356 >= 255)
        {
          v356 = 255;
        }

        *v64 = v356 & ~(v356 >> 31);
        v357 = (v305[1] + (v339 >> 1));
        if (v357 >= 255)
        {
          v357 = 255;
        }

        v64[1] = v357 & ~(v357 >> 31);
        v358 = (v305[2] + (v340 >> 1));
        if (v358 >= 255)
        {
          v358 = 255;
        }

        v64[2] = v358 & ~(v358 >> 31);
        v359 = (v305[3] + (v342 >> 1));
        if (v359 >= 255)
        {
          v359 = 255;
        }

        v64[3] = v359 & ~(v359 >> 31);
        v360 = (v305[4] + (v344 >> 1));
        if (v360 >= 255)
        {
          v360 = 255;
        }

        v64[4] = v360 & ~(v360 >> 31);
        v361 = (v305[5] + (v346 >> 1));
        if (v361 >= 255)
        {
          v361 = 255;
        }

        v64[5] = v361 & ~(v361 >> 31);
        v362 = (v305[6] + (v348 >> 1));
        if (v362 >= 255)
        {
          v362 = 255;
        }

        v64[6] = v362 & ~(v362 >> 31);
        LOWORD(v363) = v305[7] + (v350 >> 1);
        v35 = v1196;
        v363 = v363;
        if (v363 >= 255)
        {
          v363 = 255;
        }

        v64[7] = v363 & ~(v363 >> 31);
        v364 = (v305[16] + (v355 >> 2));
        if (v364 >= 255)
        {
          v364 = 255;
        }

        v365 = &v64[v1199];
        *v365 = v364 & ~(v364 >> 31);
        v366 = (v305[17] + (v336 >> 2));
        if (v366 >= 255)
        {
          v366 = 255;
        }

        v365[1] = v366 & ~(v366 >> 31);
        v367 = (v305[18] + (v333 >> 2));
        if (v367 >= 255)
        {
          v367 = 255;
        }

        v365[2] = v367 & ~(v367 >> 31);
        v368 = (v305[19] + (v341 >> 2));
        if (v368 >= 255)
        {
          v368 = 255;
        }

        v365[3] = v368 & ~(v368 >> 31);
        v369 = (v305[20] + (v351 >> 2));
        if (v369 >= 255)
        {
          v369 = 255;
        }

        v365[4] = v369 & ~(v369 >> 31);
        v370 = (v305[21] + (v352 >> 2));
        if (v370 >= 255)
        {
          v370 = 255;
        }

        v365[5] = v370 & ~(v370 >> 31);
        v371 = (v305[22] + (v353 >> 2));
        if (v371 >= 255)
        {
          v371 = 255;
        }

        v365[6] = v371 & ~(v371 >> 31);
        v372 = v305[23] + (v354 >> 2);
        v373 = v328 >> 2;
        v374 = v329 + v326 + 2;
        result = v337 + 2 * (v328 >> 2) + (v374 >> 2) + 2;
        v375 = v372;
        v39 = 2 * v1199;
        if (v375 >= 255)
        {
          v375 = 255;
        }

        v365[7] = v375 & ~(v375 >> 31);
        v376 = (v305[32] + (result >> 2));
        if (v376 >= 255)
        {
          v376 = 255;
        }

        v377 = &v64[v1216];
        v64[v1216] = v376 & ~(v376 >> 31);
        v378 = (v305[33] + (v338 >> 1));
        if (v378 >= 255)
        {
          v378 = 255;
        }

        v377[1] = v378 & ~(v378 >> 31);
        v379 = (v305[34] + (v339 >> 1));
        if (v379 >= 255)
        {
          v379 = 255;
        }

        v377[2] = v379 & ~(v379 >> 31);
        v380 = (v305[35] + (v340 >> 1));
        if (v380 >= 255)
        {
          v380 = 255;
        }

        v377[3] = v380 & ~(v380 >> 31);
        v381 = (v305[36] + (v342 >> 1));
        if (v381 >= 255)
        {
          v381 = 255;
        }

        v377[4] = v381 & ~(v381 >> 31);
        v382 = (v305[37] + (v344 >> 1));
        if (v382 >= 255)
        {
          v382 = 255;
        }

        v377[5] = v382 & ~(v382 >> 31);
        v383 = (v305[38] + (v346 >> 1));
        if (v383 >= 255)
        {
          v383 = 255;
        }

        v377[6] = v383 & ~(v383 >> 31);
        v384 = v305[39] + (v348 >> 1);
        v385 = v374 >> 2;
        v386 = v327 + 2 * v326 + v1183;
        v387 = v373 + 2 * v385 + (v386 >> 2) + 2;
        v388 = v384;
        if (v384 >= 255)
        {
          v388 = 255;
        }

        v377[7] = v388 & ~(v388 >> 31);
        v389 = (v305[48] + (v387 >> 2));
        if (v389 >= 255)
        {
          v389 = 255;
        }

        v390 = &v64[v1202];
        v64[v1202] = v389 & ~(v389 >> 31);
        v391 = (v305[49] + (v355 >> 2));
        if (v391 >= 255)
        {
          v391 = 255;
        }

        v390[1] = v391 & ~(v391 >> 31);
        v392 = (v305[50] + (v336 >> 2));
        if (v392 >= 255)
        {
          v392 = 255;
        }

        v390[2] = v392 & ~(v392 >> 31);
        v393 = (v305[51] + (v333 >> 2));
        if (v393 >= 255)
        {
          v393 = 255;
        }

        v390[3] = v393 & ~(v393 >> 31);
        v394 = (v305[52] + (v341 >> 2));
        if (v394 >= 255)
        {
          v394 = 255;
        }

        v390[4] = v394 & ~(v394 >> 31);
        v395 = (v305[53] + (v351 >> 2));
        if (v395 >= 255)
        {
          v395 = 255;
        }

        v390[5] = v395 & ~(v395 >> 31);
        v396 = (v305[54] + (v352 >> 2));
        if (v396 >= 255)
        {
          v396 = 255;
        }

        v390[6] = v396 & ~(v396 >> 31);
        v397 = v386 >> 2;
        v398 = v326 + 2 * v1183 + v1184 + 2;
        v399 = v385 + 2 * v397 + (v398 >> 2) + 2;
        v400 = (v305[55] + (v353 >> 2));
        if (v400 >= 255)
        {
          v400 = 255;
        }

        v390[7] = v400 & ~(v400 >> 31);
        v401 = (v305[64] + (v399 >> 2));
        if (v401 >= 255)
        {
          v401 = 255;
        }

        v402 = &v64[v1218];
        v64[v1218] = v401 & ~(v401 >> 31);
        v403 = (v305[65] + (result >> 2));
        if (v403 >= 255)
        {
          v403 = 255;
        }

        v402[1] = v403 & ~(v403 >> 31);
        v404 = (v305[66] + (v338 >> 1));
        if (v404 >= 255)
        {
          v404 = 255;
        }

        v402[2] = v404 & ~(v404 >> 31);
        v405 = (v305[67] + (v339 >> 1));
        if (v405 >= 255)
        {
          v405 = 255;
        }

        v402[3] = v405 & ~(v405 >> 31);
        v406 = (v305[68] + (v340 >> 1));
        if (v406 >= 255)
        {
          v406 = 255;
        }

        v402[4] = v406 & ~(v406 >> 31);
        v407 = (v305[69] + (v342 >> 1));
        if (v407 >= 255)
        {
          v407 = 255;
        }

        v402[5] = v407 & ~(v407 >> 31);
        v408 = (v305[70] + (v344 >> 1));
        if (v408 >= 255)
        {
          v408 = 255;
        }

        v402[6] = v408 & ~(v408 >> 31);
        v409 = v305[71] + (v346 >> 1);
        v410 = v398 >> 2;
        v411 = v1183 + 2 * v1184 + v1185 + 2;
        v412 = v397 + 2 * v410 + (v411 >> 2) + 2;
        v413 = v409;
        v40 = 6 * v1199;
        if (v413 >= 255)
        {
          v413 = 255;
        }

        v402[7] = v413 & ~(v413 >> 31);
        v414 = (v305[80] + (v412 >> 2));
        if (v414 >= 255)
        {
          v414 = 255;
        }

        v415 = &v64[v1217];
        v64[v1217] = v414 & ~(v414 >> 31);
        v416 = (v305[81] + (v387 >> 2));
        if (v416 >= 255)
        {
          v416 = 255;
        }

        v415[1] = v416 & ~(v416 >> 31);
        v417 = (v305[82] + (v355 >> 2));
        if (v417 >= 255)
        {
          v417 = 255;
        }

        v415[2] = v417 & ~(v417 >> 31);
        v418 = (v305[83] + (v336 >> 2));
        if (v418 >= 255)
        {
          v418 = 255;
        }

        v415[3] = v418 & ~(v418 >> 31);
        v419 = (v305[84] + (v333 >> 2));
        if (v419 >= 255)
        {
          v419 = 255;
        }

        v415[4] = v419 & ~(v419 >> 31);
        v420 = (v305[85] + (v341 >> 2));
        if (v420 >= 255)
        {
          v420 = 255;
        }

        v415[5] = v420 & ~(v420 >> 31);
        v421 = (v305[86] + (v351 >> 2));
        if (v421 >= 255)
        {
          v421 = 255;
        }

        v415[6] = v421 & ~(v421 >> 31);
        LOWORD(v422) = v305[87] + (v352 >> 2);
        v19 = v1200;
        v422 = v422;
        if (v422 >= 255)
        {
          v422 = 255;
        }

        v415[7] = v422 & ~(v422 >> 31);
        v423 = v411 >> 2;
        v424 = v1184 + 2 * v1185 + v1187 + 2;
        v425 = (v305[96] + ((v410 + 2 * v423 + (v424 >> 2) + 2) >> 2));
        if (v425 >= 255)
        {
          v425 = 255;
        }

        v426 = &v64[v1219];
        v64[v1219] = v425 & ~(v425 >> 31);
        v427 = (v305[97] + (v399 >> 2));
        if (v427 >= 255)
        {
          v427 = 255;
        }

        v426[1] = v427 & ~(v427 >> 31);
        v428 = (v305[98] + (result >> 2));
        if (v428 >= 255)
        {
          v428 = 255;
        }

        v426[2] = v428 & ~(v428 >> 31);
        v429 = (v305[99] + (v338 >> 1));
        if (v429 >= 255)
        {
          v429 = 255;
        }

        v426[3] = v429 & ~(v429 >> 31);
        v430 = (v305[100] + (v339 >> 1));
        if (v430 >= 255)
        {
          v430 = 255;
        }

        v426[4] = v430 & ~(v430 >> 31);
        LOWORD(v431) = v305[101] + (v340 >> 1);
        v42 = v1205;
        v431 = v431;
        if (v431 >= 255)
        {
          v431 = 255;
        }

        v426[5] = v431 & ~(v431 >> 31);
        v432 = (v305[102] + (v342 >> 1));
        if (v432 >= 255)
        {
          v432 = 255;
        }

        v426[6] = v432 & ~(v432 >> 31);
        v433 = (v305[103] + (v344 >> 1));
        if (v433 >= 255)
        {
          v433 = 255;
        }

        v426[7] = v433 & ~(v433 >> 31);
        v2 = v1198;
        v434 = (v305[112] + ((v423 + 2 * (v424 >> 2) + ((v1185 + 2 * v1187 + v1189 + 2) >> 2) + 2) >> 2));
        if (v434 >= 255)
        {
          v434 = 255;
        }

        v435 = &v64[v1220];
        v64[v1220] = v434 & ~(v434 >> 31);
        v436 = (v305[113] + (v412 >> 2));
        if (v436 >= 255)
        {
          v436 = 255;
        }

        v435[1] = v436 & ~(v436 >> 31);
        v437 = (v305[114] + (v387 >> 2));
        if (v437 >= 255)
        {
          v437 = 255;
        }

        v435[2] = v437 & ~(v437 >> 31);
        v438 = (v305[115] + (v355 >> 2));
        if (v438 >= 255)
        {
          v438 = 255;
        }

        v435[3] = v438 & ~(v438 >> 31);
        v439 = (v305[116] + (v336 >> 2));
        if (v439 >= 255)
        {
          v439 = 255;
        }

        v435[4] = v439 & ~(v439 >> 31);
        v440 = (v305[117] + (v333 >> 2));
        if (v440 >= 255)
        {
          v440 = 255;
        }

        v435[5] = v440 & ~(v440 >> 31);
        LOWORD(v441) = v305[118] + (v341 >> 2);
        v36 = v1199;
        v37 = 3 * v1199;
        v6 = v1194;
        v441 = v441;
        if (v441 >= 255)
        {
          v441 = 255;
        }

        v435[6] = v441 & ~(v441 >> 31);
        v442 = v305[119] + (v351 >> 2);
        v38 = v1210;
        goto LABEL_1266;
      }

      v718 = (a2 + 2 * *v42);
      v719 = v64[-v1199];
      v720 = v64[-v1199 + 1];
      v721 = v64[-v1199 + 2];
      v722 = v64[-v1199 + 3];
      v723 = v64[-v1199 + 4];
      v1207 = v42;
      v1212 = v38;
      v724 = v64[-v1199 + 5];
      v725 = v64[-v1199 + 6];
      v726 = v64[-v1199 + 7];
      v727 = v64[-v1199 - v58];
      v728 = (v720 + 2 + v727 + 2 * v719) >> 2;
      v729 = (v719 + 2 + 2 * v720 + v721) >> 2;
      v730 = v720 + 2 + 2 * v721 + v722;
      v731 = v721 + 2 * v722 + v723 + 2;
      v732 = v722 + 2 * v723 + v724 + 2;
      v733 = (v723 + 2 * v724 + v725 + 2) >> 2;
      v734 = v724 + 2 * v725 + v726 + 2;
      v735 = v725 + v64[v65 + 7 - v1199] + 2 * v726;
      v736 = *(v64 - 1);
      v737 = v64[v36 - 1];
      v738 = v737 + 2;
      v739 = v737 + 2 + v64[-(v58 * v1199) - 1] + 2 * v736;
      v740 = v736 + 2 * v737;
      v741 = v719 + 2 + 2 * v727;
      v742 = v43;
      v743 = v2;
      v744 = v35;
      v745 = v741 + v736;
      v746 = v728 + 2;
      v747 = v728 + 2 + 2 * v729 + (v730 >> 2);
      v729 += 2;
      v748 = v729 + 2 * v728;
      v749 = v729 + 2 * (v730 >> 2) + (v731 >> 2);
      v750 = v64[v1216 - 1];
      v751 = (v730 >> 2) + 2 * (v731 >> 2) + (v732 >> 2);
      v752 = v64[v1202 - 1];
      v753 = (v731 >> 2) + 2 * (v732 >> 2) + v733;
      v754 = v64[v1218 - 1];
      v755 = (v732 >> 2) + 2 * v733 + (v734 >> 2);
      v756 = v64[v1217 - 1];
      v757 = v733 + 2 * (v734 >> 2);
      v1191 = v64[v1219 - 1];
      v758 = v64[v1220 - 1];
      v759 = v748 + (v745 >> 2);
      v745 >>= 2;
      v127 = v746 + 2 * v745 + (v739 >> 2);
      v760 = v739 >> 2;
      v761 = v740 + v750 + 2;
      v762 = v751 + 2;
      v763 = v753 + 2;
      v764 = v755 + 2;
      v37 = 3 * v1199;
      v765 = v757 + ((v735 + 2) >> 2) + 2;
      v766 = v745 + 2 * (v739 >> 2);
      v35 = v744;
      v2 = v743;
      v43 = v742;
      v36 = v1199;
      v767 = v766 + (v761 >> 2) + 2;
      v768 = (*v718 + (v127 >> 2));
      if (v768 >= 255)
      {
        v768 = 255;
      }

      *v64 = v768 & ~(v768 >> 31);
      v769 = (v718[1] + (v759 >> 2));
      if (v769 >= 255)
      {
        v769 = 255;
      }

      v64[1] = v769 & ~(v769 >> 31);
      v770 = (v718[2] + (v747 >> 2));
      if (v770 >= 255)
      {
        v770 = 255;
      }

      v64[2] = v770 & ~(v770 >> 31);
      v771 = (v718[3] + (v749 >> 2));
      if (v771 >= 255)
      {
        v771 = 255;
      }

      v64[3] = v771 & ~(v771 >> 31);
      v772 = (v718[4] + (v762 >> 2));
      if (v772 >= 255)
      {
        v772 = 255;
      }

      v64[4] = v772 & ~(v772 >> 31);
      v773 = (v718[5] + (v763 >> 2));
      if (v773 >= 255)
      {
        v773 = 255;
      }

      v64[5] = v773 & ~(v773 >> 31);
      v774 = (v718[6] + (v764 >> 2));
      if (v774 >= 255)
      {
        v774 = 255;
      }

      v64[6] = v774 & ~(v774 >> 31);
      v775 = (v718[7] + (v765 >> 2));
      if (v775 >= 255)
      {
        v775 = 255;
      }

      v64[7] = v775 & ~(v775 >> 31);
      v776 = (v718[16] + (v767 >> 2));
      if (v776 >= 255)
      {
        v776 = 255;
      }

      v777 = &v64[v1199];
      *v777 = v776 & ~(v776 >> 31);
      v778 = (v718[17] + (v127 >> 2));
      if (v778 >= 255)
      {
        v778 = 255;
      }

      v777[1] = v778 & ~(v778 >> 31);
      v779 = (v718[18] + (v759 >> 2));
      if (v779 >= 255)
      {
        v779 = 255;
      }

      v777[2] = v779 & ~(v779 >> 31);
      v780 = v747;
      v781 = (v718[19] + (v747 >> 2));
      if (v781 >= 255)
      {
        v781 = 255;
      }

      v777[3] = v781 & ~(v781 >> 31);
      v782 = (v718[20] + (v749 >> 2));
      if (v782 >= 255)
      {
        v782 = 255;
      }

      v777[4] = v782 & ~(v782 >> 31);
      v783 = (v718[21] + (v762 >> 2));
      if (v783 >= 255)
      {
        v783 = 255;
      }

      v777[5] = v783 & ~(v783 >> 31);
      v784 = (v718[22] + (v763 >> 2));
      if (v784 >= 255)
      {
        v784 = 255;
      }

      v777[6] = v784 & ~(v784 >> 31);
      v785 = v761 >> 2;
      v786 = v738 + 2 * v750 + v752;
      v787 = v760 + 2 * v785 + (v786 >> 2) + 2;
      v788 = (v718[23] + (v764 >> 2));
      if (v788 >= 255)
      {
        v788 = 255;
      }

      v777[7] = v788 & ~(v788 >> 31);
      v789 = (v718[32] + (v787 >> 2));
      if (v789 >= 255)
      {
        v789 = 255;
      }

      v790 = &v64[v1216];
      v64[v1216] = v789 & ~(v789 >> 31);
      v791 = (v718[33] + (v767 >> 2));
      if (v791 >= 255)
      {
        v791 = 255;
      }

      v790[1] = v791 & ~(v791 >> 31);
      v792 = (v718[34] + (v127 >> 2));
      if (v792 >= 255)
      {
        v792 = 255;
      }

      v790[2] = v792 & ~(v792 >> 31);
      v793 = (v718[35] + (v759 >> 2));
      if (v793 >= 255)
      {
        v793 = 255;
      }

      v790[3] = v793 & ~(v793 >> 31);
      v794 = (v718[36] + (v780 >> 2));
      if (v794 >= 255)
      {
        v794 = 255;
      }

      v790[4] = v794 & ~(v794 >> 31);
      v795 = (v718[37] + (v749 >> 2));
      if (v795 >= 255)
      {
        v795 = 255;
      }

      v790[5] = v795 & ~(v795 >> 31);
      v796 = (v718[38] + (v762 >> 2));
      if (v796 >= 255)
      {
        v796 = 255;
      }

      v790[6] = v796 & ~(v796 >> 31);
      v797 = v718[39] + (v763 >> 2);
      v798 = v786 >> 2;
      v799 = v750 + 2 * v752 + v754 + 2;
      v800 = v785 + 2 * v798 + (v799 >> 2) + 2;
      v801 = v797;
      if (v797 >= 255)
      {
        v801 = 255;
      }

      v790[7] = v801 & ~(v801 >> 31);
      v802 = (v718[48] + (v800 >> 2));
      if (v802 >= 255)
      {
        v802 = 255;
      }

      v803 = &v64[v1202];
      v64[v1202] = v802 & ~(v802 >> 31);
      v804 = (v718[49] + (v787 >> 2));
      if (v804 >= 255)
      {
        v804 = 255;
      }

      v803[1] = v804 & ~(v804 >> 31);
      v805 = (v718[50] + (v767 >> 2));
      if (v805 >= 255)
      {
        v805 = 255;
      }

      v803[2] = v805 & ~(v805 >> 31);
      v806 = (v718[51] + (v127 >> 2));
      if (v806 >= 255)
      {
        v806 = 255;
      }

      v803[3] = v806 & ~(v806 >> 31);
      v807 = (v718[52] + (v759 >> 2));
      if (v807 >= 255)
      {
        v807 = 255;
      }

      v803[4] = v807 & ~(v807 >> 31);
      v808 = (v718[53] + (v780 >> 2));
      if (v808 >= 255)
      {
        v808 = 255;
      }

      v803[5] = v808 & ~(v808 >> 31);
      v809 = (v718[54] + (v749 >> 2));
      if (v809 >= 255)
      {
        v809 = 255;
      }

      v803[6] = v809 & ~(v809 >> 31);
      v810 = v718[55] + (v762 >> 2);
      v811 = v799 >> 2;
      v812 = v752 + 2 * v754 + v756 + 2;
      v813 = v798 + 2 * v811 + (v812 >> 2) + 2;
      v814 = v810;
      v19 = v1200;
      if (v814 >= 255)
      {
        v814 = 255;
      }

      v803[7] = v814 & ~(v814 >> 31);
      v815 = (v718[64] + (v813 >> 2));
      if (v815 >= 255)
      {
        v815 = 255;
      }

      v816 = &v64[v1218];
      v64[v1218] = v815 & ~(v815 >> 31);
      v817 = (v718[65] + (v800 >> 2));
      if (v817 >= 255)
      {
        v817 = 255;
      }

      v816[1] = v817 & ~(v817 >> 31);
      v818 = (v718[66] + (v787 >> 2));
      if (v818 >= 255)
      {
        v818 = 255;
      }

      v816[2] = v818 & ~(v818 >> 31);
      v819 = (v718[67] + (v767 >> 2));
      if (v819 >= 255)
      {
        v819 = 255;
      }

      v816[3] = v819 & ~(v819 >> 31);
      v820 = (v718[68] + (v127 >> 2));
      if (v820 >= 255)
      {
        v820 = 255;
      }

      v816[4] = v820 & ~(v820 >> 31);
      v821 = (v718[69] + (v759 >> 2));
      if (v821 >= 255)
      {
        v821 = 255;
      }

      v816[5] = v821 & ~(v821 >> 31);
      v822 = (v718[70] + (v780 >> 2));
      if (v822 >= 255)
      {
        v822 = 255;
      }

      v816[6] = v822 & ~(v822 >> 31);
      v823 = v718[71] + (v749 >> 2);
      v824 = v812 >> 2;
      v825 = v754 + 2 * v756 + v1191 + 2;
      v826 = v811 + 2 * v824 + (v825 >> 2) + 2;
      v827 = v823;
      if (v823 >= 255)
      {
        v827 = 255;
      }

      v816[7] = v827 & ~(v827 >> 31);
      v828 = (v718[80] + (v826 >> 2));
      if (v828 >= 255)
      {
        v828 = 255;
      }

      v829 = &v64[v1217];
      v64[v1217] = v828 & ~(v828 >> 31);
      v830 = (v718[81] + (v813 >> 2));
      if (v830 >= 255)
      {
        v830 = 255;
      }

      v829[1] = v830 & ~(v830 >> 31);
      v831 = (v718[82] + (v800 >> 2));
      if (v831 >= 255)
      {
        v831 = 255;
      }

      v829[2] = v831 & ~(v831 >> 31);
      v832 = (v718[83] + (v787 >> 2));
      if (v832 >= 255)
      {
        v832 = 255;
      }

      v829[3] = v832 & ~(v832 >> 31);
      v833 = (v718[84] + (v767 >> 2));
      if (v833 >= 255)
      {
        v833 = 255;
      }

      v829[4] = v833 & ~(v833 >> 31);
      v834 = (v718[85] + (v127 >> 2));
      if (v834 >= 255)
      {
        v834 = 255;
      }

      v829[5] = v834 & ~(v834 >> 31);
      v835 = (v718[86] + (v759 >> 2));
      if (v835 >= 255)
      {
        v835 = 255;
      }

      v829[6] = v835 & ~(v835 >> 31);
      result = v825 >> 2;
      v836 = v756 + 2 * v1191 + v758 + 2;
      v837 = v824 + 2 * result + (v836 >> 2) + 2;
      v838 = (v718[87] + (v780 >> 2));
      v38 = v1212;
      if (v838 >= 255)
      {
        v838 = 255;
      }

      v829[7] = v838 & ~(v838 >> 31);
      v39 = 2 * v1199;
      v839 = (v718[96] + (v837 >> 2));
      if (v839 >= 255)
      {
        v839 = 255;
      }

      v840 = &v64[v1219];
      v64[v1219] = v839 & ~(v839 >> 31);
      v841 = (v718[97] + (v826 >> 2));
      if (v841 >= 255)
      {
        v841 = 255;
      }

      v840[1] = v841 & ~(v841 >> 31);
      v842 = (v718[98] + (v813 >> 2));
      if (v842 >= 255)
      {
        v842 = 255;
      }

      v840[2] = v842 & ~(v842 >> 31);
      v843 = (v718[99] + (v800 >> 2));
      if (v843 >= 255)
      {
        v843 = 255;
      }

      v840[3] = v843 & ~(v843 >> 31);
      v844 = (v718[100] + (v787 >> 2));
      if (v844 >= 255)
      {
        v844 = 255;
      }

      v840[4] = v844 & ~(v844 >> 31);
      v845 = (v718[101] + (v767 >> 2));
      if (v845 >= 255)
      {
        v845 = 255;
      }

      v840[5] = v845 & ~(v845 >> 31);
      v846 = (v718[102] + (v127 >> 2));
      if (v846 >= 255)
      {
        v846 = 255;
      }

      v840[6] = v846 & ~(v846 >> 31);
      v40 = 6 * v1199;
      v847 = (v718[103] + (v759 >> 2));
      if (v847 >= 255)
      {
        v847 = 255;
      }

      v840[7] = v847 & ~(v847 >> 31);
      v6 = v1194;
      v848 = (v718[112] + ((result + 2 * (v836 >> 2) + ((v1191 + v758 + 2 * v758 + 2) >> 2) + 2) >> 2));
      if (v848 >= 255)
      {
        v848 = 255;
      }

      v849 = &v64[v1220];
      v64[v1220] = v848 & ~(v848 >> 31);
      v850 = (v718[113] + (v837 >> 2));
      if (v850 >= 255)
      {
        v850 = 255;
      }

      v849[1] = v850 & ~(v850 >> 31);
      v851 = (v718[114] + (v826 >> 2));
      if (v851 >= 255)
      {
        v851 = 255;
      }

      v849[2] = v851 & ~(v851 >> 31);
      v852 = (v718[115] + (v813 >> 2));
      if (v852 >= 255)
      {
        v852 = 255;
      }

      v849[3] = v852 & ~(v852 >> 31);
      v853 = (v718[116] + (v800 >> 2));
      if (v853 >= 255)
      {
        v853 = 255;
      }

      v849[4] = v853 & ~(v853 >> 31);
      LOWORD(v854) = v718[117] + (v787 >> 2);
      v42 = v1207;
      v854 = v854;
      if (v854 >= 255)
      {
        v854 = 255;
      }

      v849[5] = v854 & ~(v854 >> 31);
      v855 = (v718[118] + (v767 >> 2));
      if (v855 >= 255)
      {
        v855 = 255;
      }

      v849[6] = v855 & ~(v855 >> 31);
      v187 = v718[119];
    }

    else
    {
      if (v62 == 6)
      {
        v571 = (a2 + 2 * *v42);
        v572 = v64[-v1199 - v58];
        v573 = v64[-v1199];
        v574 = v64[-v1199 + 1];
        v575 = v64[-v1199 + 2];
        v576 = v64[-v1199 + 3];
        v577 = v64[-v1199 + 4];
        v578 = v64[-v1199 + 5];
        v579 = v64[-v1199 + 6];
        v580 = v574 + 2;
        v581 = (v574 + 2 + v572 + 2 * v573) >> 2;
        v582 = v573 + 2;
        v583 = (v573 + 2 + 2 * v574 + v575) >> 2;
        v584 = (v580 + 2 * v575 + v576) >> 2;
        v1206 = v42;
        v585 = (v575 + 2 * v576 + v577 + 2) >> 2;
        v586 = v576 + 2 * v577 + v578 + 2;
        v587 = v577 + 2 * v578 + v579 + 2;
        v588 = v578 + 2 * v579 + v64[-v1199 + 7] + 2;
        v589 = *(v64 - 1);
        v590 = v64[v1199 - 1];
        v1211 = v38;
        v591 = v64[v1216 - 1];
        v592 = v590 + 2;
        v593 = v590 + 2 + v64[-(v58 * v1199) - 1] + 2 * v589;
        v594 = v589 + 2 * v590;
        v595 = v582 + 2 * v572 + v589;
        v596 = v581 + 2 + 2 * v583 + v584;
        v597 = v64[v37 - 1];
        v583 += 2;
        v598 = v583 + 2 * v581;
        v599 = v583 + 2 * v584 + v585;
        v600 = v64[v1218 - 1];
        v601 = v584 + 2 * v585 + (v586 >> 2);
        v602 = v64[v1217 - 1];
        v603 = v35;
        v604 = v585 + 2 * (v586 >> 2) + (v587 >> 2);
        v1190 = v64[v1219 - 1];
        v605 = v64[v1220 - 1];
        v606 = (v586 >> 2) + 2 * (v587 >> 2);
        v607 = v581 + 2 + 2 * (v595 >> 2) + (v593 >> 2);
        v608 = v593 >> 2;
        v609 = v594 + v591 + 2;
        v610 = v598 + (v595 >> 2);
        v611 = (v593 >> 2) + (v595 >> 2) + 1;
        v612 = v601 + 2;
        v613 = v604 + 2;
        v35 = v603;
        v37 = 3 * v1199;
        v614 = v606 + (v588 >> 2);
        v615 = (*v571 + (v611 >> 1));
        if (v615 >= 255)
        {
          v615 = 255;
        }

        *v64 = v615 & ~(v615 >> 31);
        v616 = (v571[1] + (v607 >> 2));
        if (v616 >= 255)
        {
          v616 = 255;
        }

        v64[1] = v616 & ~(v616 >> 31);
        v617 = (v571[2] + (v610 >> 2));
        if (v617 >= 255)
        {
          v617 = 255;
        }

        v64[2] = v617 & ~(v617 >> 31);
        v618 = (v571[3] + (v596 >> 2));
        if (v618 >= 255)
        {
          v618 = 255;
        }

        v64[3] = v618 & ~(v618 >> 31);
        v619 = (v571[4] + (v599 >> 2));
        if (v619 >= 255)
        {
          v619 = 255;
        }

        v64[4] = v619 & ~(v619 >> 31);
        v620 = (v571[5] + (v612 >> 2));
        if (v620 >= 255)
        {
          v620 = 255;
        }

        v64[5] = v620 & ~(v620 >> 31);
        v621 = v608 + (v609 >> 2) + 1;
        v622 = (v595 >> 2) + 2 * v608 + (v609 >> 2) + 2;
        v623 = v614 + 2;
        v624 = (v571[6] + (v613 >> 2));
        if (v624 >= 255)
        {
          v624 = 255;
        }

        v64[6] = v624 & ~(v624 >> 31);
        v625 = (v571[7] + (v623 >> 2));
        if (v625 >= 255)
        {
          v625 = 255;
        }

        v64[7] = v625 & ~(v625 >> 31);
        v626 = (v571[16] + (v621 >> 1));
        if (v626 >= 255)
        {
          v626 = 255;
        }

        v627 = &v64[v1199];
        *v627 = v626 & ~(v626 >> 31);
        v628 = (v571[17] + (v622 >> 2));
        if (v628 >= 255)
        {
          v628 = 255;
        }

        v627[1] = v628 & ~(v628 >> 31);
        v629 = (v571[18] + (v611 >> 1));
        if (v629 >= 255)
        {
          v629 = 255;
        }

        v627[2] = v629 & ~(v629 >> 31);
        v630 = (v571[19] + (v607 >> 2));
        if (v630 >= 255)
        {
          v630 = 255;
        }

        v627[3] = v630 & ~(v630 >> 31);
        v631 = (v571[20] + (v610 >> 2));
        if (v631 >= 255)
        {
          v631 = 255;
        }

        v627[4] = v631 & ~(v631 >> 31);
        v632 = (v571[21] + (v596 >> 2));
        if (v632 >= 255)
        {
          v632 = 255;
        }

        v627[5] = v632 & ~(v632 >> 31);
        v633 = v609 >> 2;
        v634 = v592 + 2 * v591 + v597;
        v635 = (v571[22] + (v599 >> 2));
        if (v635 >= 255)
        {
          v635 = 255;
        }

        v627[6] = v635 & ~(v635 >> 31);
        v636 = v633 + (v634 >> 2) + 1;
        v637 = v608 + 2 * v633 + (v634 >> 2) + 2;
        v638 = (v571[23] + (v612 >> 2));
        if (v638 >= 255)
        {
          v638 = 255;
        }

        v627[7] = v638 & ~(v638 >> 31);
        v36 = v1199;
        v2 = v1198;
        v639 = (v571[32] + (v636 >> 1));
        if (v639 >= 255)
        {
          v639 = 255;
        }

        v640 = &v64[v1216];
        v64[v1216] = v639 & ~(v639 >> 31);
        v641 = (v571[33] + (v637 >> 2));
        if (v641 >= 255)
        {
          v641 = 255;
        }

        v640[1] = v641 & ~(v641 >> 31);
        v642 = (v571[34] + (v621 >> 1));
        if (v642 >= 255)
        {
          v642 = 255;
        }

        v640[2] = v642 & ~(v642 >> 31);
        v643 = (v571[35] + (v622 >> 2));
        if (v643 >= 255)
        {
          v643 = 255;
        }

        v640[3] = v643 & ~(v643 >> 31);
        v644 = (v571[36] + (v611 >> 1));
        if (v644 >= 255)
        {
          v644 = 255;
        }

        v640[4] = v644 & ~(v644 >> 31);
        v645 = (v571[37] + (v607 >> 2));
        if (v645 >= 255)
        {
          v645 = 255;
        }

        v640[5] = v645 & ~(v645 >> 31);
        v646 = v571[38] + (v610 >> 2);
        v647 = v634 >> 2;
        v19 = v1200;
        v648 = v591 + 2 * v597 + v600 + 2;
        v649 = v646;
        if (v646 >= 255)
        {
          v649 = 255;
        }

        v640[6] = v649 & ~(v649 >> 31);
        LOWORD(v652) = v571[39] + (v596 >> 2);
        v650 = v647 + (v648 >> 2) + 1;
        v651 = v633 + 2 * v647 + (v648 >> 2) + 2;
        v652 = v652;
        if (v652 >= 255)
        {
          v652 = 255;
        }

        v640[7] = v652 & ~(v652 >> 31);
        v653 = (v571[48] + (v650 >> 1));
        if (v653 >= 255)
        {
          v653 = 255;
        }

        v654 = &v64[v1202];
        v64[v1202] = v653 & ~(v653 >> 31);
        v655 = (v571[49] + (v651 >> 2));
        if (v655 >= 255)
        {
          v655 = 255;
        }

        v654[1] = v655 & ~(v655 >> 31);
        v656 = (v571[50] + (v636 >> 1));
        if (v656 >= 255)
        {
          v656 = 255;
        }

        v654[2] = v656 & ~(v656 >> 31);
        v657 = (v571[51] + (v637 >> 2));
        if (v657 >= 255)
        {
          v657 = 255;
        }

        v654[3] = v657 & ~(v657 >> 31);
        v658 = (v571[52] + (v621 >> 1));
        if (v658 >= 255)
        {
          v658 = 255;
        }

        v654[4] = v658 & ~(v658 >> 31);
        v659 = (v571[53] + (v622 >> 2));
        if (v659 >= 255)
        {
          v659 = 255;
        }

        v654[5] = v659 & ~(v659 >> 31);
        v660 = v571[54] + (v611 >> 1);
        v661 = v648 >> 2;
        v662 = v597 + 2 * v600 + v602 + 2;
        v663 = v660;
        if (v660 >= 255)
        {
          v663 = 255;
        }

        v654[6] = v663 & ~(v663 >> 31);
        v664 = v571[55] + (v607 >> 2);
        result = v661 + (v662 >> 2) + 1;
        v665 = v647 + 2 * v661 + (v662 >> 2) + 2;
        v666 = v664;
        if (v664 >= 255)
        {
          v666 = 255;
        }

        v654[7] = v666 & ~(v666 >> 31);
        v667 = (v571[64] + (result >> 1));
        if (v667 >= 255)
        {
          v667 = 255;
        }

        v668 = &v64[v1218];
        v64[v1218] = v667 & ~(v667 >> 31);
        v669 = (v571[65] + (v665 >> 2));
        if (v669 >= 255)
        {
          v669 = 255;
        }

        v668[1] = v669 & ~(v669 >> 31);
        v670 = (v571[66] + (v650 >> 1));
        if (v670 >= 255)
        {
          v670 = 255;
        }

        v668[2] = v670 & ~(v670 >> 31);
        v671 = (v571[67] + (v651 >> 2));
        if (v671 >= 255)
        {
          v671 = 255;
        }

        v668[3] = v671 & ~(v671 >> 31);
        v672 = (v571[68] + (v636 >> 1));
        if (v672 >= 255)
        {
          v672 = 255;
        }

        v668[4] = v672 & ~(v672 >> 31);
        v673 = (v571[69] + (v637 >> 2));
        if (v673 >= 255)
        {
          v673 = 255;
        }

        v668[5] = v673 & ~(v673 >> 31);
        v674 = v571[70] + (v621 >> 1);
        v675 = v662 >> 2;
        v676 = v600 + 2 * v602 + v1190 + 2;
        v677 = v674;
        if (v674 >= 255)
        {
          v677 = 255;
        }

        v668[6] = v677 & ~(v677 >> 31);
        v678 = v675 + (v676 >> 2) + 1;
        v679 = v661 + 2 * v675 + (v676 >> 2) + 2;
        v680 = (v571[71] + (v622 >> 2));
        if (v680 >= 255)
        {
          v680 = 255;
        }

        v668[7] = v680 & ~(v680 >> 31);
        v38 = v1211;
        v681 = (v571[80] + (v678 >> 1));
        if (v681 >= 255)
        {
          v681 = 255;
        }

        v682 = &v64[v1217];
        v64[v1217] = v681 & ~(v681 >> 31);
        v683 = (v571[81] + (v679 >> 2));
        if (v683 >= 255)
        {
          v683 = 255;
        }

        v682[1] = v683 & ~(v683 >> 31);
        v684 = (v571[82] + (result >> 1));
        if (v684 >= 255)
        {
          v684 = 255;
        }

        v682[2] = v684 & ~(v684 >> 31);
        v685 = (v571[83] + (v665 >> 2));
        if (v685 >= 255)
        {
          v685 = 255;
        }

        v682[3] = v685 & ~(v685 >> 31);
        v686 = (v571[84] + (v650 >> 1));
        if (v686 >= 255)
        {
          v686 = 255;
        }

        v682[4] = v686 & ~(v686 >> 31);
        v687 = (v571[85] + (v651 >> 2));
        if (v687 >= 255)
        {
          v687 = 255;
        }

        v682[5] = v687 & ~(v687 >> 31);
        v688 = v571[86] + (v636 >> 1);
        v689 = v676 >> 2;
        v690 = v602 + 2 * v1190 + v605 + 2;
        v691 = v688;
        if (v688 >= 255)
        {
          v691 = 255;
        }

        v682[6] = v691 & ~(v691 >> 31);
        v692 = v689 + (v690 >> 2) + 1;
        v693 = v675 + 2 * v689;
        v39 = 2 * v1199;
        v694 = v693 + (v690 >> 2) + 2;
        v695 = (v571[87] + (v637 >> 2));
        if (v695 >= 255)
        {
          v695 = 255;
        }

        v682[7] = v695 & ~(v695 >> 31);
        v6 = v1194;
        v696 = (v571[96] + (v692 >> 1));
        if (v696 >= 255)
        {
          v696 = 255;
        }

        v697 = &v64[v1219];
        v64[v1219] = v696 & ~(v696 >> 31);
        v698 = (v571[97] + (v694 >> 2));
        if (v698 >= 255)
        {
          v698 = 255;
        }

        v697[1] = v698 & ~(v698 >> 31);
        v699 = (v571[98] + (v678 >> 1));
        if (v699 >= 255)
        {
          v699 = 255;
        }

        v697[2] = v699 & ~(v699 >> 31);
        v700 = (v571[99] + (v679 >> 2));
        if (v700 >= 255)
        {
          v700 = 255;
        }

        v697[3] = v700 & ~(v700 >> 31);
        v701 = (v571[100] + (result >> 1));
        if (v701 >= 255)
        {
          v701 = 255;
        }

        v697[4] = v701 & ~(v701 >> 31);
        v702 = (v571[101] + (v665 >> 2));
        if (v702 >= 255)
        {
          v702 = 255;
        }

        v697[5] = v702 & ~(v702 >> 31);
        LOWORD(v703) = v571[102] + (v650 >> 1);
        v40 = 6 * v1199;
        v703 = v703;
        if (v703 >= 255)
        {
          v703 = 255;
        }

        v697[6] = v703 & ~(v703 >> 31);
        v704 = (v571[103] + (v651 >> 2));
        if (v704 >= 255)
        {
          v704 = 255;
        }

        v697[7] = v704 & ~(v704 >> 31);
        v705 = v1190 + v605 + 2 * v605;
        v706 = v690 >> 2;
        v42 = v1206;
        v705 += 2;
        v707 = v689 + 2 * v706;
        v708 = v706 + (v705 >> 2) + 1;
        v709 = v707 + (v705 >> 2) + 2;
        v710 = (v571[112] + (v708 >> 1));
        if (v710 >= 255)
        {
          v710 = 255;
        }

        v711 = &v64[v1220];
        v64[v1220] = v710 & ~(v710 >> 31);
        v712 = (v571[113] + (v709 >> 2));
        if (v712 >= 255)
        {
          v712 = 255;
        }

        v711[1] = v712 & ~(v712 >> 31);
        v713 = (v571[114] + (v692 >> 1));
        if (v713 >= 255)
        {
          v713 = 255;
        }

        v711[2] = v713 & ~(v713 >> 31);
        v714 = (v571[115] + (v694 >> 2));
        if (v714 >= 255)
        {
          v714 = 255;
        }

        v711[3] = v714 & ~(v714 >> 31);
        v715 = (v571[116] + (v678 >> 1));
        if (v715 >= 255)
        {
          v715 = 255;
        }

        v711[4] = v715 & ~(v715 >> 31);
        v716 = (v571[117] + (v679 >> 2));
        if (v716 >= 255)
        {
          v716 = 255;
        }

        v711[5] = v716 & ~(v716 >> 31);
        v717 = (v571[118] + (result >> 1));
        if (v717 >= 255)
        {
          v717 = 255;
        }

        v711[6] = v717 & ~(v717 >> 31);
        v442 = v571[119] + (v665 >> 2);
        goto LABEL_1266;
      }

      if (v62 == 7)
      {
        v1208 = v42;
        v1213 = v38;
        v856 = &v64[-v1199];
        v857 = v856[-v58];
        v858 = (a2 + 2 * *v42);
        v859 = *v856;
        v860 = v856[1];
        v861 = v856[2];
        v862 = v856[3];
        v863 = v856[4];
        v864 = v856[5];
        v865 = v856[6];
        v866 = v856[7];
        v1197 = v35;
        if (BYTE2(v57))
        {
          v867 = v856[8];
          v868 = v856[9];
          v869 = v856[10];
          v1188 = v856[12];
          v1192 = v856[11];
          v1186 = v856[13];
        }

        else
        {
          v867 = v64[-v1199 + 7];
          v868 = v867;
          v869 = v867;
          v1188 = v867;
          v1192 = v867;
          v1186 = v867;
        }

        v989 = v860 + 2;
        v990 = v860 + 2 + v857 + 2 * v859;
        v991 = v861 + 2 + v859 + 2 * v860;
        v992 = (v989 + 2 * v861 + v862) >> 2;
        v993 = (v861 + 2 + 2 * v862 + v863) >> 2;
        v994 = (v862 + 2 * v863 + v864 + 2) >> 2;
        v995 = (v863 + 2 * v864 + v865 + 2) >> 2;
        v996 = (v864 + 2 * v865 + v866 + 2) >> 2;
        v997 = v865 + 2 * v866 + v867 + 2;
        v998 = v992 + 2;
        v999 = v992 + 2 + (v990 >> 2) + 2 * (v991 >> 2);
        v1000 = (v991 >> 2) + (v990 >> 2);
        v1001 = (v991 >> 2) + v992;
        v1002 = v993 + 2;
        v1003 = v993 + 2 + (v991 >> 2) + 2 * v992;
        v1004 = v992 + v993;
        v1005 = v997 >> 2;
        v1006 = v998 + 2 * v993 + v994;
        v1007 = v993 + v994;
        v1008 = (v866 + 2 * v867 + v868 + 2) >> 2;
        v1009 = v867 + 2 * v868 + v869 + 2;
        v1010 = v1002 + 2 * v994 + v995;
        v1011 = v994 + v995;
        v1012 = v994 + 2 * v995 + v996 + 2;
        v1013 = v995 + v996;
        v1014 = v995 + 2 * v996 + (v997 >> 2) + 2;
        v1015 = v996 + (v997 >> 2);
        v1016 = v996 + 2 * (v997 >> 2) + v1008 + 2;
        v1017 = (v997 >> 2) + 2 * v1008 + (v1009 >> 2) + 2;
        v1018 = v1001 + 1;
        v1019 = v1004 + 1;
        v1020 = v1007 + 1;
        v1021 = v1011 + 1;
        v1022 = v1013 + 1;
        v1023 = v1015 + 1;
        v1024 = v1005 + v1008 + 1;
        v1025 = (*v858 + ((v1000 + 1) >> 1));
        if (v1025 >= 255)
        {
          v1025 = 255;
        }

        *v64 = v1025 & ~(v1025 >> 31);
        v1026 = (v858[1] + (v1018 >> 1));
        if (v1026 >= 255)
        {
          v1026 = 255;
        }

        v64[1] = v1026 & ~(v1026 >> 31);
        v1027 = (v858[2] + (v1019 >> 1));
        if (v1027 >= 255)
        {
          v1027 = 255;
        }

        v64[2] = v1027 & ~(v1027 >> 31);
        v1028 = (v858[3] + (v1020 >> 1));
        if (v1028 >= 255)
        {
          v1028 = 255;
        }

        v64[3] = v1028 & ~(v1028 >> 31);
        v1029 = (v858[4] + (v1021 >> 1));
        if (v1029 >= 255)
        {
          v1029 = 255;
        }

        v64[4] = v1029 & ~(v1029 >> 31);
        v1030 = (v858[5] + (v1022 >> 1));
        if (v1030 >= 255)
        {
          v1030 = 255;
        }

        v64[5] = v1030 & ~(v1030 >> 31);
        v1031 = (v858[6] + (v1023 >> 1));
        if (v1031 >= 255)
        {
          v1031 = 255;
        }

        v64[6] = v1031 & ~(v1031 >> 31);
        v1032 = (v858[7] + (v1024 >> 1));
        if (v1032 >= 255)
        {
          v1032 = 255;
        }

        v64[7] = v1032 & ~(v1032 >> 31);
        v1033 = (v858[16] + (v999 >> 2));
        if (v1033 >= 255)
        {
          v1033 = 255;
        }

        v1034 = &v64[v1199];
        *v1034 = v1033 & ~(v1033 >> 31);
        v1035 = (v858[17] + (v1003 >> 2));
        if (v1035 >= 255)
        {
          v1035 = 255;
        }

        v1034[1] = v1035 & ~(v1035 >> 31);
        v1036 = (v858[18] + (v1006 >> 2));
        if (v1036 >= 255)
        {
          v1036 = 255;
        }

        v1034[2] = v1036 & ~(v1036 >> 31);
        v1037 = (v858[19] + (v1010 >> 2));
        if (v1037 >= 255)
        {
          v1037 = 255;
        }

        v1034[3] = v1037 & ~(v1037 >> 31);
        v1038 = (v858[20] + (v1012 >> 2));
        if (v1038 >= 255)
        {
          v1038 = 255;
        }

        v1034[4] = v1038 & ~(v1038 >> 31);
        v1039 = (v858[21] + (v1014 >> 2));
        if (v1039 >= 255)
        {
          v1039 = 255;
        }

        v1034[5] = v1039 & ~(v1039 >> 31);
        v1040 = (v858[22] + (v1016 >> 2));
        if (v1040 >= 255)
        {
          v1040 = 255;
        }

        v1034[6] = v1040 & ~(v1040 >> 31);
        v1041 = (v858[23] + (v1017 >> 2));
        if (v1041 >= 255)
        {
          v1041 = 255;
        }

        v1034[7] = v1041 & ~(v1041 >> 31);
        v1042 = v1008 + (v1009 >> 2) + 1;
        v1043 = (v858[32] + (v1018 >> 1));
        if (v1043 >= 255)
        {
          v1043 = 255;
        }

        v1044 = &v64[v1216];
        v64[v1216] = v1043 & ~(v1043 >> 31);
        v1045 = (v858[33] + (v1019 >> 1));
        if (v1045 >= 255)
        {
          v1045 = 255;
        }

        v1044[1] = v1045 & ~(v1045 >> 31);
        v1046 = (v858[34] + (v1020 >> 1));
        if (v1046 >= 255)
        {
          v1046 = 255;
        }

        v1044[2] = v1046 & ~(v1046 >> 31);
        v1047 = (v858[35] + (v1021 >> 1));
        if (v1047 >= 255)
        {
          v1047 = 255;
        }

        v1044[3] = v1047 & ~(v1047 >> 31);
        v1048 = (v858[36] + (v1022 >> 1));
        if (v1048 >= 255)
        {
          v1048 = 255;
        }

        v1044[4] = v1048 & ~(v1048 >> 31);
        v1049 = (v858[37] + (v1023 >> 1));
        if (v1049 >= 255)
        {
          v1049 = 255;
        }

        v1044[5] = v1049 & ~(v1049 >> 31);
        v1050 = (v858[38] + (v1024 >> 1));
        if (v1050 >= 255)
        {
          v1050 = 255;
        }

        v1044[6] = v1050 & ~(v1050 >> 31);
        v1051 = (v858[39] + (v1042 >> 1));
        if (v1051 >= 255)
        {
          v1051 = 255;
        }

        v1044[7] = v1051 & ~(v1051 >> 31);
        v1052 = v1009 >> 2;
        v1053 = v868 + 2 * v869 + v1192 + 2;
        v1054 = v1008 + 2 * (v1009 >> 2) + (v1053 >> 2) + 2;
        v1055 = (v858[48] + (v1003 >> 2));
        if (v1055 >= 255)
        {
          v1055 = 255;
        }

        v1056 = &v64[v1202];
        v64[v1202] = v1055 & ~(v1055 >> 31);
        v1057 = (v858[49] + (v1006 >> 2));
        if (v1057 >= 255)
        {
          v1057 = 255;
        }

        v1056[1] = v1057 & ~(v1057 >> 31);
        v1058 = (v858[50] + (v1010 >> 2));
        if (v1058 >= 255)
        {
          v1058 = 255;
        }

        v1056[2] = v1058 & ~(v1058 >> 31);
        v1059 = (v858[51] + (v1012 >> 2));
        if (v1059 >= 255)
        {
          v1059 = 255;
        }

        v1056[3] = v1059 & ~(v1059 >> 31);
        v1060 = (v858[52] + (v1014 >> 2));
        if (v1060 >= 255)
        {
          v1060 = 255;
        }

        v1056[4] = v1060 & ~(v1060 >> 31);
        v1061 = (v858[53] + (v1016 >> 2));
        if (v1061 >= 255)
        {
          v1061 = 255;
        }

        v1056[5] = v1061 & ~(v1061 >> 31);
        v1062 = (v858[54] + (v1017 >> 2));
        if (v1062 >= 255)
        {
          v1062 = 255;
        }

        v1056[6] = v1062 & ~(v1062 >> 31);
        v1063 = (v858[55] + (v1054 >> 2));
        if (v1063 >= 255)
        {
          v1063 = 255;
        }

        v1056[7] = v1063 & ~(v1063 >> 31);
        v1064 = v1052 + (v1053 >> 2) + 1;
        v1065 = (v858[64] + (v1019 >> 1));
        if (v1065 >= 255)
        {
          v1065 = 255;
        }

        v1066 = &v64[v1218];
        v64[v1218] = v1065 & ~(v1065 >> 31);
        v1067 = (v858[65] + (v1020 >> 1));
        if (v1067 >= 255)
        {
          v1067 = 255;
        }

        v1066[1] = v1067 & ~(v1067 >> 31);
        v1068 = (v858[66] + (v1021 >> 1));
        if (v1068 >= 255)
        {
          v1068 = 255;
        }

        v1066[2] = v1068 & ~(v1068 >> 31);
        v1069 = (v858[67] + (v1022 >> 1));
        if (v1069 >= 255)
        {
          v1069 = 255;
        }

        v1066[3] = v1069 & ~(v1069 >> 31);
        v1070 = (v858[68] + (v1023 >> 1));
        if (v1070 >= 255)
        {
          v1070 = 255;
        }

        v1066[4] = v1070 & ~(v1070 >> 31);
        v1071 = (v858[69] + (v1024 >> 1));
        if (v1071 >= 255)
        {
          v1071 = 255;
        }

        v1066[5] = v1071 & ~(v1071 >> 31);
        v1072 = (v858[70] + (v1042 >> 1));
        if (v1072 >= 255)
        {
          v1072 = 255;
        }

        v1066[6] = v1072 & ~(v1072 >> 31);
        v1073 = (v858[71] + (v1064 >> 1));
        if (v1073 >= 255)
        {
          v1073 = 255;
        }

        v1066[7] = v1073 & ~(v1073 >> 31);
        v1074 = v1053 >> 2;
        v1075 = v869 + 2 * v1192 + v1188 + 2;
        v1076 = v1052 + 2 * (v1053 >> 2);
        v36 = v1199;
        result = v1076 + (v1075 >> 2) + 2;
        LOWORD(v1077) = v858[80] + (v1006 >> 2);
        v37 = 3 * v1199;
        v1077 = v1077;
        if (v1077 >= 255)
        {
          v1077 = 255;
        }

        v1078 = &v64[v1217];
        v64[v1217] = v1077 & ~(v1077 >> 31);
        v1079 = (v858[81] + (v1010 >> 2));
        if (v1079 >= 255)
        {
          v1079 = 255;
        }

        v1078[1] = v1079 & ~(v1079 >> 31);
        v1080 = (v858[82] + (v1012 >> 2));
        if (v1080 >= 255)
        {
          v1080 = 255;
        }

        v1078[2] = v1080 & ~(v1080 >> 31);
        v1081 = (v858[83] + (v1014 >> 2));
        if (v1081 >= 255)
        {
          v1081 = 255;
        }

        v1078[3] = v1081 & ~(v1081 >> 31);
        v1082 = (v858[84] + (v1016 >> 2));
        if (v1082 >= 255)
        {
          v1082 = 255;
        }

        v1078[4] = v1082 & ~(v1082 >> 31);
        v1083 = (v858[85] + (v1017 >> 2));
        if (v1083 >= 255)
        {
          v1083 = 255;
        }

        v1078[5] = v1083 & ~(v1083 >> 31);
        v1084 = (v858[86] + (v1054 >> 2));
        if (v1084 >= 255)
        {
          v1084 = 255;
        }

        v1078[6] = v1084 & ~(v1084 >> 31);
        v1085 = (v858[87] + (result >> 2));
        if (v1085 >= 255)
        {
          v1085 = 255;
        }

        v1078[7] = v1085 & ~(v1085 >> 31);
        v1086 = (v858[96] + (v1020 >> 1));
        if (v1086 >= 255)
        {
          v1086 = 255;
        }

        v1087 = &v64[v1219];
        v64[v1219] = v1086 & ~(v1086 >> 31);
        v1088 = (v858[97] + (v1021 >> 1));
        if (v1088 >= 255)
        {
          v1088 = 255;
        }

        v1087[1] = v1088 & ~(v1088 >> 31);
        v1089 = (v858[98] + (v1022 >> 1));
        if (v1089 >= 255)
        {
          v1089 = 255;
        }

        v1087[2] = v1089 & ~(v1089 >> 31);
        LOWORD(v1090) = v858[99] + (v1023 >> 1);
        v39 = 2 * v1199;
        v1090 = v1090;
        if (v1090 >= 255)
        {
          v1090 = 255;
        }

        v1087[3] = v1090 & ~(v1090 >> 31);
        v1091 = (v858[100] + (v1024 >> 1));
        if (v1091 >= 255)
        {
          v1091 = 255;
        }

        v1087[4] = v1091 & ~(v1091 >> 31);
        v1092 = (v858[101] + (v1042 >> 1));
        if (v1092 >= 255)
        {
          v1092 = 255;
        }

        v1087[5] = v1092 & ~(v1092 >> 31);
        LOWORD(v1093) = v858[102] + (v1064 >> 1);
        v40 = 6 * v1199;
        v1093 = v1093;
        if (v1093 >= 255)
        {
          v1093 = 255;
        }

        v1087[6] = v1093 & ~(v1093 >> 31);
        v1094 = (v858[103] + ((v1074 + (v1075 >> 2) + 1) >> 1));
        if (v1094 >= 255)
        {
          v1094 = 255;
        }

        v1087[7] = v1094 & ~(v1094 >> 31);
        v1095 = (v858[112] + (v1010 >> 2));
        if (v1095 >= 255)
        {
          v1095 = 255;
        }

        v1096 = &v64[v1220];
        v64[v1220] = v1095 & ~(v1095 >> 31);
        v1097 = (v858[113] + (v1012 >> 2));
        if (v1097 >= 255)
        {
          v1097 = 255;
        }

        v1096[1] = v1097 & ~(v1097 >> 31);
        v1098 = (v858[114] + (v1014 >> 2));
        if (v1098 >= 255)
        {
          v1098 = 255;
        }

        v1096[2] = v1098 & ~(v1098 >> 31);
        v1099 = (v858[115] + (v1016 >> 2));
        if (v1099 >= 255)
        {
          v1099 = 255;
        }

        v1096[3] = v1099 & ~(v1099 >> 31);
        v1100 = (v858[116] + (v1017 >> 2));
        if (v1100 >= 255)
        {
          v1100 = 255;
        }

        v1096[4] = v1100 & ~(v1100 >> 31);
        v1101 = (v858[117] + (v1054 >> 2));
        if (v1101 >= 255)
        {
          v1101 = 255;
        }

        v1096[5] = v1101 & ~(v1101 >> 31);
        v1102 = (v858[118] + (result >> 2));
        if (v1102 >= 255)
        {
          v1102 = 255;
        }

        v1096[6] = v1102 & ~(v1102 >> 31);
        v442 = v858[119] + ((v1074 + 2 * (v1075 >> 2) + ((v1192 + 2 * v1188 + v1186 + 2) >> 2) + 2) >> 2);
        v35 = v1197;
        v2 = v1198;
        v6 = v1194;
        v19 = v1200;
        v42 = v1208;
        v38 = v1213;
        goto LABEL_1266;
      }

      v40 = 6 * v1199;
      if (v62 != 8)
      {
        goto LABEL_1269;
      }

      v66 = (a2 + 2 * *v42);
      v67 = *(v64 - 1);
      v68 = &v64[-(v58 * v1199) - 1];
      v69 = v39;
      v70 = v64[v36 - 1];
      v71 = v64[v39 - 1];
      v72 = v64[v37 - 1];
      v73 = v64[v1218 - 1];
      v74 = v64[v1217 - 1];
      LODWORD(v68) = v70 + 2 + *v68 + 2 * v67;
      v75 = v71 + 2;
      v76 = v71 + 2 + v67 + 2 * v70;
      v77 = v70 + 2 + 2 * v71 + v72;
      v78 = (v75 + 2 * v72 + v73) >> 2;
      v79 = v19;
      v80 = v37;
      v81 = v42;
      v82 = (v76 >> 2) + (v68 >> 2) + 1;
      v83 = (v76 >> 2) + (v77 >> 2);
      v84 = (v77 >> 2) + v78;
      v85 = (v77 >> 2) + 2;
      v86 = v85 + (v68 >> 2) + 2 * (v76 >> 2);
      v87 = v6;
      v88 = v78 + 2;
      v89 = v78 + 2 + (v76 >> 2) + 2 * (v77 >> 2);
      v90 = v64[v1219 - 1];
      v91 = v64[v1220 - 1];
      v92 = (*v66 + (v82 >> 1));
      if (v92 >= 255)
      {
        v92 = 255;
      }

      *v64 = v92 & ~(v92 >> 31);
      v93 = v72 + 2 * v73 + v74 + 2;
      v94 = v78 + (v93 >> 2);
      v95 = v85 + 2 * v78 + (v93 >> 2);
      v96 = v93 >> 2;
      v97 = v73 + 2 * v74 + v90 + 2;
      v98 = v83 + 1;
      v99 = v84 + 1;
      v100 = v94 + 1;
      v101 = v88 + 2 * v96 + (v97 >> 2);
      v102 = (v66[1] + (v86 >> 2));
      if (v102 >= 255)
      {
        v102 = 255;
      }

      v64[1] = v102 & ~(v102 >> 31);
      v103 = (v66[2] + (v98 >> 1));
      if (v103 >= 255)
      {
        v103 = 255;
      }

      v64[2] = v103 & ~(v103 >> 31);
      v104 = (v66[3] + (v89 >> 2));
      if (v104 >= 255)
      {
        v104 = 255;
      }

      v64[3] = v104 & ~(v104 >> 31);
      v105 = (v66[4] + (v99 >> 1));
      if (v105 >= 255)
      {
        v105 = 255;
      }

      v64[4] = v105 & ~(v105 >> 31);
      v106 = (v66[5] + (v95 >> 2));
      if (v106 >= 255)
      {
        v106 = 255;
      }

      v64[5] = v106 & ~(v106 >> 31);
      v107 = (v66[6] + (v100 >> 1));
      if (v107 >= 255)
      {
        v107 = 255;
      }

      v64[6] = v107 & ~(v107 >> 31);
      v108 = (v66[7] + (v101 >> 2));
      if (v108 >= 255)
      {
        v108 = 255;
      }

      v64[7] = v108 & ~(v108 >> 31);
      LOWORD(v109) = v66[16] + (v98 >> 1);
      v36 = v1199;
      v2 = v1198;
      v109 = v109;
      if (v109 >= 255)
      {
        v109 = 255;
      }

      v110 = &v64[v1199];
      *v110 = v109 & ~(v109 >> 31);
      v111 = v66[17] + (v89 >> 2);
      v112 = v97 >> 2;
      v113 = v74 + 2 * v90 + v91 + 2;
      v114 = v96 + (v97 >> 2) + 1;
      v115 = v96 + 2 * v112 + (v113 >> 2) + 2;
      v116 = v111;
      if (v111 >= 255)
      {
        v116 = 255;
      }

      v110[1] = v116 & ~(v116 >> 31);
      v117 = (v66[18] + (v99 >> 1));
      if (v117 >= 255)
      {
        v117 = 255;
      }

      v110[2] = v117 & ~(v117 >> 31);
      v118 = (v66[19] + (v95 >> 2));
      if (v118 >= 255)
      {
        v118 = 255;
      }

      v110[3] = v118 & ~(v118 >> 31);
      v119 = (v66[20] + (v100 >> 1));
      if (v119 >= 255)
      {
        v119 = 255;
      }

      v110[4] = v119 & ~(v119 >> 31);
      v120 = (v66[21] + (v101 >> 2));
      if (v120 >= 255)
      {
        v120 = 255;
      }

      v110[5] = v120 & ~(v120 >> 31);
      v121 = (v66[22] + (v114 >> 1));
      if (v121 >= 255)
      {
        v121 = 255;
      }

      v110[6] = v121 & ~(v121 >> 31);
      v122 = (v66[23] + (v115 >> 2));
      if (v122 >= 255)
      {
        v122 = 255;
      }

      v110[7] = v122 & ~(v122 >> 31);
      v6 = v87;
      v123 = v90 + v91 + 2 * v91;
      v124 = (v66[32] + (v99 >> 1));
      if (v124 >= 255)
      {
        v124 = 255;
      }

      v125 = &v64[v69];
      v64[v69] = v124 & ~(v124 >> 31);
      LOWORD(v132) = v66[33] + (v95 >> 2);
      v126 = v113 >> 2;
      v127 = v123 + 2;
      v128 = v112 + (v113 >> 2);
      v40 = 6 * v1199;
      v129 = v128 + 1;
      v130 = v112 + 2 * v126;
      v42 = v81;
      v37 = v80;
      v19 = v79;
      v131 = v130 + (v127 >> 2) + 2;
      v132 = v132;
      if (v132 >= 255)
      {
        v132 = 255;
      }

      v125[1] = v132 & ~(v132 >> 31);
      v133 = (v66[34] + (v100 >> 1));
      if (v133 >= 255)
      {
        v133 = 255;
      }

      v125[2] = v133 & ~(v133 >> 31);
      v134 = (v66[35] + (v101 >> 2));
      if (v134 >= 255)
      {
        v134 = 255;
      }

      v125[3] = v134 & ~(v134 >> 31);
      v135 = (v66[36] + (v114 >> 1));
      if (v135 >= 255)
      {
        v135 = 255;
      }

      v125[4] = v135 & ~(v135 >> 31);
      v136 = (v66[37] + (v115 >> 2));
      if (v136 >= 255)
      {
        v136 = 255;
      }

      v125[5] = v136 & ~(v136 >> 31);
      v137 = (v66[38] + (v129 >> 1));
      if (v137 >= 255)
      {
        v137 = 255;
      }

      v125[6] = v137 & ~(v137 >> 31);
      v138 = (v66[39] + (v131 >> 2));
      if (v138 >= 255)
      {
        v138 = 255;
      }

      v125[7] = v138 & ~(v138 >> 31);
      v139 = (v66[48] + (v100 >> 1));
      if (v139 >= 255)
      {
        v139 = 255;
      }

      v140 = &v64[v37];
      v64[v37] = v139 & ~(v139 >> 31);
      result = v66[49] + (v101 >> 2);
      v141 = v126 + (v127 >> 2);
      v142 = v141 + 2 * (v127 >> 2);
      v143 = v141 + 1;
      v144 = v142 + 2;
      v145 = result;
      if (result >= 255)
      {
        v145 = 255;
      }

      v140[1] = v145 & ~(v145 >> 31);
      v146 = (v66[50] + (v114 >> 1));
      if (v146 >= 255)
      {
        v146 = 255;
      }

      v140[2] = v146 & ~(v146 >> 31);
      v147 = (v66[51] + (v115 >> 2));
      if (v147 >= 255)
      {
        v147 = 255;
      }

      v140[3] = v147 & ~(v147 >> 31);
      v148 = (v66[52] + (v129 >> 1));
      if (v148 >= 255)
      {
        v148 = 255;
      }

      v140[4] = v148 & ~(v148 >> 31);
      v149 = (v66[53] + (v131 >> 2));
      if (v149 >= 255)
      {
        v149 = 255;
      }

      v140[5] = v149 & ~(v149 >> 31);
      v150 = (v66[54] + (v143 >> 1));
      if (v150 >= 255)
      {
        v150 = 255;
      }

      v140[6] = v150 & ~(v150 >> 31);
      v151 = (v66[55] + (v144 >> 2));
      if (v151 >= 255)
      {
        v151 = 255;
      }

      v140[7] = v151 & ~(v151 >> 31);
      v152 = (v66[64] + (v114 >> 1));
      if (v152 >= 255)
      {
        v152 = 255;
      }

      v153 = &v64[v1218];
      v64[v1218] = v152 & ~(v152 >> 31);
      v154 = (v66[65] + (v115 >> 2));
      if (v154 >= 255)
      {
        v154 = 255;
      }

      v153[1] = v154 & ~(v154 >> 31);
      v155 = (v66[66] + (v129 >> 1));
      if (v155 >= 255)
      {
        v155 = 255;
      }

      v153[2] = v155 & ~(v155 >> 31);
      v156 = (v66[67] + (v131 >> 2));
      if (v156 >= 255)
      {
        v156 = 255;
      }

      v153[3] = v156 & ~(v156 >> 31);
      v157 = (v66[68] + (v143 >> 1));
      if (v157 >= 255)
      {
        v157 = 255;
      }

      v153[4] = v157 & ~(v157 >> 31);
      v158 = (v66[69] + (v144 >> 2));
      if (v158 >= 255)
      {
        v158 = 255;
      }

      v153[5] = v158 & ~(v158 >> 31);
      v159 = (v66[70] + (v127 >> 2));
      if (v159 >= 255)
      {
        v159 = 255;
      }

      v153[6] = v159 & ~(v159 >> 31);
      v160 = (v66[71] + (v127 >> 2));
      if (v160 >= 255)
      {
        v160 = 255;
      }

      v153[7] = v160 & ~(v160 >> 31);
      v39 = v69;
      v161 = (v66[80] + (v129 >> 1));
      if (v161 >= 255)
      {
        v161 = 255;
      }

      v162 = &v64[v1217];
      v64[v1217] = v161 & ~(v161 >> 31);
      v163 = (v66[81] + (v131 >> 2));
      if (v163 >= 255)
      {
        v163 = 255;
      }

      v162[1] = v163 & ~(v163 >> 31);
      v164 = (v66[82] + (v143 >> 1));
      if (v164 >= 255)
      {
        v164 = 255;
      }

      v162[2] = v164 & ~(v164 >> 31);
      v165 = (v66[83] + (v144 >> 2));
      if (v165 >= 255)
      {
        v165 = 255;
      }

      v162[3] = v165 & ~(v165 >> 31);
      v166 = (v66[84] + (v127 >> 2));
      if (v166 >= 255)
      {
        v166 = 255;
      }

      v162[4] = v166 & ~(v166 >> 31);
      v167 = (v66[85] + (v127 >> 2));
      if (v167 >= 255)
      {
        v167 = 255;
      }

      v162[5] = v167 & ~(v167 >> 31);
      v168 = (v66[86] + (v127 >> 2));
      if (v168 >= 255)
      {
        v168 = 255;
      }

      v162[6] = v168 & ~(v168 >> 31);
      v169 = (v66[87] + (v127 >> 2));
      if (v169 >= 255)
      {
        v169 = 255;
      }

      v162[7] = v169 & ~(v169 >> 31);
      v170 = (v66[96] + (v143 >> 1));
      if (v170 >= 255)
      {
        v170 = 255;
      }

      v171 = &v64[v1219];
      v64[v1219] = v170 & ~(v170 >> 31);
      v172 = (v66[97] + (v144 >> 2));
      if (v172 >= 255)
      {
        v172 = 255;
      }

      v171[1] = v172 & ~(v172 >> 31);
      v173 = (v66[98] + (v127 >> 2));
      if (v173 >= 255)
      {
        v173 = 255;
      }

      v171[2] = v173 & ~(v173 >> 31);
      v174 = (v66[99] + (v127 >> 2));
      if (v174 >= 255)
      {
        v174 = 255;
      }

      v171[3] = v174 & ~(v174 >> 31);
      v175 = (v66[100] + (v127 >> 2));
      if (v175 >= 255)
      {
        v175 = 255;
      }

      v171[4] = v175 & ~(v175 >> 31);
      v176 = (v66[101] + (v127 >> 2));
      if (v176 >= 255)
      {
        v176 = 255;
      }

      v171[5] = v176 & ~(v176 >> 31);
      v177 = (v66[102] + (v127 >> 2));
      if (v177 >= 255)
      {
        v177 = 255;
      }

      v171[6] = v177 & ~(v177 >> 31);
      v178 = (v66[103] + (v127 >> 2));
      if (v178 >= 255)
      {
        v178 = 255;
      }

      v171[7] = v178 & ~(v178 >> 31);
      v179 = (v66[112] + (v127 >> 2));
      if (v179 >= 255)
      {
        v179 = 255;
      }

      v180 = &v64[v1220];
      v64[v1220] = v179 & ~(v179 >> 31);
      v181 = (v66[113] + (v127 >> 2));
      if (v181 >= 255)
      {
        v181 = 255;
      }

      v180[1] = v181 & ~(v181 >> 31);
      v182 = (v66[114] + (v127 >> 2));
      if (v182 >= 255)
      {
        v182 = 255;
      }

      v180[2] = v182 & ~(v182 >> 31);
      v183 = (v66[115] + (v127 >> 2));
      if (v183 >= 255)
      {
        v183 = 255;
      }

      v180[3] = v183 & ~(v183 >> 31);
      v184 = (v66[116] + (v127 >> 2));
      if (v184 >= 255)
      {
        v184 = 255;
      }

      v180[4] = v184 & ~(v184 >> 31);
      v185 = (v66[117] + (v127 >> 2));
      if (v185 >= 255)
      {
        v185 = 255;
      }

      v180[5] = v185 & ~(v185 >> 31);
      v186 = (v66[118] + (v127 >> 2));
      if (v186 >= 255)
      {
        v186 = 255;
      }

      v180[6] = v186 & ~(v186 >> 31);
      v187 = v66[119];
    }

    v442 = v187 + (v127 >> 2);
LABEL_1266:
    v442 = v442;
    if (v442 >= 255)
    {
      v442 = 255;
    }

    v64[v1220 + 7] = v442 & ~(v442 >> 31);
LABEL_1269:
    v35 += 16;
    ++v38;
    ++v42;
    v1181 = v43 >= 0xC;
    v43 += 4;
  }

  while (!v1181);
  return result;
}