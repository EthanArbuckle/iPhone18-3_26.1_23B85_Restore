uint64_t reset_skip_tx_size(uint64_t result)
{
  v1 = *(result + 1312);
  if (v1 >= 1)
  {
    v2 = *(result + 1320);
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(result + 1480);
      v5 = 8 * v2;
      v6 = 8 * *(result + 1324);
      do
      {
        v7 = 0;
        do
        {
          v8 = *(v4 + v7);
          if (*(v8 + 2) >= 3u)
          {
            *(v8 + 2) = 2;
          }

          v7 += 8;
        }

        while (v5 != v7);
        ++v3;
        v4 += v6;
      }

      while (v3 != v1);
    }
  }

  return result;
}

uint64_t set_segment_index(uint64_t a1, uint64_t a2, int a3, int a4, int a5, double a6, int32x4_t a7)
{
  v8 = (a1 + 173008);
  v9 = **(a2 + 25360);
  v10 = *(a1 + 190148);
  v11 = 740224;
  if (!*(a1 + 176473))
  {
    v11 = 173232;
  }

  v12 = *(a1 + v11);
  *(v9 + 4) = 0;
  if (!*(a1 + 176472))
  {
    return a1;
  }

  if (v10 == 7)
  {
    v85 = *(a1 + 173016);
    if (v85 - a4 >= num_8x8_blocks_wide_lookup[a5])
    {
      v86 = num_8x8_blocks_wide_lookup[a5];
    }

    else
    {
      v86 = (v85 - a4);
    }

    v87 = *v8 - a3;
    if (v87 >= num_8x8_blocks_high_lookup[a5])
    {
      v87 = num_8x8_blocks_high_lookup[a5];
    }

    if (v87 < 1 || v86 < 1)
    {
LABEL_56:
      LOBYTE(v19) = 8;
      goto LABEL_57;
    }

    v163 = 0;
    v164 = v86 & 0x7FFFFFE0;
    v19 = 8;
    v165 = a4 + v85 * a3;
    while (v86 >= 4)
    {
      if (a4 + v85 * a3 + v85 * v163 + v86 - 1 < a4 + v85 * a3 + v85 * v163 || (v86 - 1) >> 32 != 0)
      {
        break;
      }

      if (v86 >= 0x20)
      {
        v171 = a4 + (v163 + a3) * v85;
        v172 = vdupq_n_s32(v19);
        v173 = v12 + v171;
        v174 = *(v173 + 16);
        v175 = vmovl_u8(*v173);
        v176 = vmovl_high_u8(*v173);
        v177 = vmovl_u8(*v174.i8);
        v178 = vmovl_u16(*v177.i8);
        v179 = vmovl_high_u16(v177);
        v180 = vmovl_high_u8(v174);
        v181 = vmovl_u16(*v180.i8);
        v182 = vmovl_high_u16(v180);
        v183 = vminq_s32(v172, vmovl_high_u16(v176));
        v184 = vminq_s32(v172, vmovl_u16(*v176.i8));
        v185 = vminq_s32(v172, vmovl_high_u16(v175));
        v186 = vminq_s32(v172, vmovl_u16(*v175.i8));
        v187 = vminq_s32(v172, v182);
        v188 = vminq_s32(v172, v181);
        v189 = vminq_s32(v172, v179);
        v190 = vminq_s32(v172, v178);
        if (v164 != 32)
        {
          v191 = v12 + v171 + 32;
          v192 = *(v191 + 16);
          v193 = vmovl_u8(*v191);
          v194 = vmovl_high_u8(*v191);
          v195 = vmovl_u8(*v192.i8);
          v196 = vmovl_high_u8(v192);
          v183 = vminq_s32(v183, vmovl_high_u16(v194));
          v184 = vminq_s32(v184, vmovl_u16(*v194.i8));
          v185 = vminq_s32(v185, vmovl_high_u16(v193));
          v186 = vminq_s32(v186, vmovl_u16(*v193.i8));
          v187 = vminq_s32(v187, vmovl_high_u16(v196));
          v188 = vminq_s32(v188, vmovl_u16(*v196.i8));
          v189 = vminq_s32(v189, vmovl_high_u16(v195));
          v190 = vminq_s32(v190, vmovl_u16(*v195.i8));
          if (v164 != 64)
          {
            v197 = v12 + v171 + 64;
            v198 = *(v197 + 16);
            v199 = vmovl_u8(*v197);
            v200 = vmovl_high_u8(*v197);
            v201 = vmovl_u8(*v198.i8);
            v202 = vmovl_high_u8(v198);
            v183 = vminq_s32(v183, vmovl_high_u16(v200));
            v184 = vminq_s32(v184, vmovl_u16(*v200.i8));
            v185 = vminq_s32(v185, vmovl_high_u16(v199));
            v186 = vminq_s32(v186, vmovl_u16(*v199.i8));
            v187 = vminq_s32(v187, vmovl_high_u16(v202));
            v188 = vminq_s32(v188, vmovl_u16(*v202.i8));
            v189 = vminq_s32(v189, vmovl_high_u16(v201));
            v190 = vminq_s32(v190, vmovl_u16(*v201.i8));
            if (v164 != 96)
            {
              v203 = v12 + v171 + 96;
              v204 = *(v203 + 16);
              v205 = vmovl_u8(*v203);
              v206 = vmovl_high_u8(*v203);
              v207 = vmovl_u8(*v204.i8);
              v208 = vmovl_high_u8(v204);
              v183 = vminq_s32(v183, vmovl_high_u16(v206));
              v184 = vminq_s32(v184, vmovl_u16(*v206.i8));
              v185 = vminq_s32(v185, vmovl_high_u16(v205));
              v186 = vminq_s32(v186, vmovl_u16(*v205.i8));
              v187 = vminq_s32(v187, vmovl_high_u16(v208));
              v188 = vminq_s32(v188, vmovl_u16(*v208.i8));
              v189 = vminq_s32(v189, vmovl_high_u16(v207));
              v190 = vminq_s32(v190, vmovl_u16(*v207.i8));
              if (v164 != 128)
              {
                v209 = v12 + v171 + 128;
                v210 = *(v209 + 16);
                v211 = vmovl_u8(*v209);
                v212 = vmovl_high_u8(*v209);
                v213 = vmovl_u8(*v210.i8);
                v214 = vmovl_high_u8(v210);
                v183 = vminq_s32(v183, vmovl_high_u16(v212));
                v184 = vminq_s32(v184, vmovl_u16(*v212.i8));
                v185 = vminq_s32(v185, vmovl_high_u16(v211));
                v186 = vminq_s32(v186, vmovl_u16(*v211.i8));
                v187 = vminq_s32(v187, vmovl_high_u16(v214));
                v188 = vminq_s32(v188, vmovl_u16(*v214.i8));
                v189 = vminq_s32(v189, vmovl_high_u16(v213));
                v190 = vminq_s32(v190, vmovl_u16(*v213.i8));
                if (v164 != 160)
                {
                  v215 = v12 + v171 + 160;
                  v216 = *(v215 + 16);
                  v217 = vmovl_u8(*v215);
                  v218 = vmovl_high_u8(*v215);
                  v219 = vmovl_u8(*v216.i8);
                  v220 = vmovl_high_u8(v216);
                  v183 = vminq_s32(v183, vmovl_high_u16(v218));
                  v184 = vminq_s32(v184, vmovl_u16(*v218.i8));
                  v185 = vminq_s32(v185, vmovl_high_u16(v217));
                  v186 = vminq_s32(v186, vmovl_u16(*v217.i8));
                  v187 = vminq_s32(v187, vmovl_high_u16(v220));
                  v188 = vminq_s32(v188, vmovl_u16(*v220.i8));
                  v189 = vminq_s32(v189, vmovl_high_u16(v219));
                  v190 = vminq_s32(v190, vmovl_u16(*v219.i8));
                  if (v164 != 192)
                  {
                    v221 = v12 + v171 + 192;
                    v222 = *(v221 + 16);
                    v223 = vmovl_u8(*v221);
                    v224 = vmovl_high_u8(*v221);
                    v225 = vmovl_u8(*v222.i8);
                    v226 = vmovl_high_u8(v222);
                    v183 = vminq_s32(v183, vmovl_high_u16(v224));
                    v184 = vminq_s32(v184, vmovl_u16(*v224.i8));
                    v185 = vminq_s32(v185, vmovl_high_u16(v223));
                    v186 = vminq_s32(v186, vmovl_u16(*v223.i8));
                    v187 = vminq_s32(v187, vmovl_high_u16(v226));
                    v188 = vminq_s32(v188, vmovl_u16(*v226.i8));
                    v189 = vminq_s32(v189, vmovl_high_u16(v225));
                    v190 = vminq_s32(v190, vmovl_u16(*v225.i8));
                  }
                }
              }
            }
          }
        }

        a7 = vminq_s32(vminq_s32(v185, v189), vminq_s32(v183, v187));
        v19 = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v186, v190), vminq_s32(v184, v188)), a7));
        if (v164 == v86)
        {
          goto LABEL_102;
        }

        v170 = v86 & 0x7FFFFFE0;
        v167 = v170;
        if ((v86 & 0x1C) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v170 = 0;
      }

      v227 = vdupq_n_s32(v19);
      v228 = v170 - (v86 & 0x7FFFFFFC);
      v229 = v165 + v170;
      do
      {
        a7.i32[0] = *(v12 + v229);
        a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
        v227 = vminq_s32(v227, a7);
        v229 += 4;
        v228 += 4;
      }

      while (v228);
      v19 = vminvq_s32(v227);
      v167 = v86 & 0x7FFFFFFC;
      if (v167 != v86)
      {
        goto LABEL_109;
      }

LABEL_102:
      ++v163;
      v165 += v85;
      if (v163 == v87)
      {
        goto LABEL_57;
      }
    }

    v167 = 0;
LABEL_109:
    v168 = v86 - v167;
    v169 = v165 + v167;
    do
    {
      if (v19 >= *(v12 + v169))
      {
        v19 = *(v12 + v169);
      }

      ++v169;
      --v168;
    }

    while (v168);
    goto LABEL_102;
  }

  if (v10 != 5)
  {
    if (v10 != 3)
    {
      goto LABEL_58;
    }

    v13 = *(a1 + 173016);
    if (v13 - a4 >= num_8x8_blocks_wide_lookup[a5])
    {
      v14 = num_8x8_blocks_wide_lookup[a5];
    }

    else
    {
      v14 = (v13 - a4);
    }

    v15 = *v8 - a3;
    if (v15 >= num_8x8_blocks_high_lookup[a5])
    {
      v15 = num_8x8_blocks_high_lookup[a5];
    }

    if (v15 >= 1 && v14 >= 1)
    {
      v17 = 0;
      v18 = v14 & 0x7FFFFFE0;
      v19 = 8;
      v20 = a4 + v13 * a3;
      while (v14 >= 4)
      {
        if (a4 + v13 * a3 + v13 * v17 + v14 - 1 < a4 + v13 * a3 + v13 * v17 || (v14 - 1) >> 32 != 0)
        {
          break;
        }

        if (v14 >= 0x20)
        {
          v26 = a4 + (v17 + a3) * v13;
          v27 = vdupq_n_s32(v19);
          v28 = v12 + v26;
          v29 = *(v28 + 16);
          v30 = vmovl_u8(*v28);
          v31 = vmovl_high_u8(*v28);
          v32 = vmovl_u8(*v29.i8);
          v33 = vmovl_u16(*v32.i8);
          v34 = vmovl_high_u16(v32);
          v35 = vmovl_high_u8(v29);
          v36 = vmovl_u16(*v35.i8);
          v37 = vmovl_high_u16(v35);
          v38 = vminq_s32(v27, vmovl_high_u16(v31));
          v39 = vminq_s32(v27, vmovl_u16(*v31.i8));
          v40 = vminq_s32(v27, vmovl_high_u16(v30));
          v41 = vminq_s32(v27, vmovl_u16(*v30.i8));
          v42 = vminq_s32(v27, v37);
          v43 = vminq_s32(v27, v36);
          v44 = vminq_s32(v27, v34);
          v45 = vminq_s32(v27, v33);
          if (v18 != 32)
          {
            v46 = v12 + v26 + 32;
            v47 = *(v46 + 16);
            v48 = vmovl_u8(*v46);
            v49 = vmovl_high_u8(*v46);
            v50 = vmovl_u8(*v47.i8);
            v51 = vmovl_high_u8(v47);
            v38 = vminq_s32(v38, vmovl_high_u16(v49));
            v39 = vminq_s32(v39, vmovl_u16(*v49.i8));
            v40 = vminq_s32(v40, vmovl_high_u16(v48));
            v41 = vminq_s32(v41, vmovl_u16(*v48.i8));
            v42 = vminq_s32(v42, vmovl_high_u16(v51));
            v43 = vminq_s32(v43, vmovl_u16(*v51.i8));
            v44 = vminq_s32(v44, vmovl_high_u16(v50));
            v45 = vminq_s32(v45, vmovl_u16(*v50.i8));
            if (v18 != 64)
            {
              v52 = v12 + v26 + 64;
              v53 = *(v52 + 16);
              v54 = vmovl_u8(*v52);
              v55 = vmovl_high_u8(*v52);
              v56 = vmovl_u8(*v53.i8);
              v57 = vmovl_high_u8(v53);
              v38 = vminq_s32(v38, vmovl_high_u16(v55));
              v39 = vminq_s32(v39, vmovl_u16(*v55.i8));
              v40 = vminq_s32(v40, vmovl_high_u16(v54));
              v41 = vminq_s32(v41, vmovl_u16(*v54.i8));
              v42 = vminq_s32(v42, vmovl_high_u16(v57));
              v43 = vminq_s32(v43, vmovl_u16(*v57.i8));
              v44 = vminq_s32(v44, vmovl_high_u16(v56));
              v45 = vminq_s32(v45, vmovl_u16(*v56.i8));
              if (v18 != 96)
              {
                v58 = v12 + v26 + 96;
                v59 = *(v58 + 16);
                v60 = vmovl_u8(*v58);
                v61 = vmovl_high_u8(*v58);
                v62 = vmovl_u8(*v59.i8);
                v63 = vmovl_high_u8(v59);
                v38 = vminq_s32(v38, vmovl_high_u16(v61));
                v39 = vminq_s32(v39, vmovl_u16(*v61.i8));
                v40 = vminq_s32(v40, vmovl_high_u16(v60));
                v41 = vminq_s32(v41, vmovl_u16(*v60.i8));
                v42 = vminq_s32(v42, vmovl_high_u16(v63));
                v43 = vminq_s32(v43, vmovl_u16(*v63.i8));
                v44 = vminq_s32(v44, vmovl_high_u16(v62));
                v45 = vminq_s32(v45, vmovl_u16(*v62.i8));
                if (v18 != 128)
                {
                  v64 = v12 + v26 + 128;
                  v65 = *(v64 + 16);
                  v66 = vmovl_u8(*v64);
                  v67 = vmovl_high_u8(*v64);
                  v68 = vmovl_u8(*v65.i8);
                  v69 = vmovl_high_u8(v65);
                  v38 = vminq_s32(v38, vmovl_high_u16(v67));
                  v39 = vminq_s32(v39, vmovl_u16(*v67.i8));
                  v40 = vminq_s32(v40, vmovl_high_u16(v66));
                  v41 = vminq_s32(v41, vmovl_u16(*v66.i8));
                  v42 = vminq_s32(v42, vmovl_high_u16(v69));
                  v43 = vminq_s32(v43, vmovl_u16(*v69.i8));
                  v44 = vminq_s32(v44, vmovl_high_u16(v68));
                  v45 = vminq_s32(v45, vmovl_u16(*v68.i8));
                  if (v18 != 160)
                  {
                    v70 = v12 + v26 + 160;
                    v71 = *(v70 + 16);
                    v72 = vmovl_u8(*v70);
                    v73 = vmovl_high_u8(*v70);
                    v74 = vmovl_u8(*v71.i8);
                    v75 = vmovl_high_u8(v71);
                    v38 = vminq_s32(v38, vmovl_high_u16(v73));
                    v39 = vminq_s32(v39, vmovl_u16(*v73.i8));
                    v40 = vminq_s32(v40, vmovl_high_u16(v72));
                    v41 = vminq_s32(v41, vmovl_u16(*v72.i8));
                    v42 = vminq_s32(v42, vmovl_high_u16(v75));
                    v43 = vminq_s32(v43, vmovl_u16(*v75.i8));
                    v44 = vminq_s32(v44, vmovl_high_u16(v74));
                    v45 = vminq_s32(v45, vmovl_u16(*v74.i8));
                    if (v18 != 192)
                    {
                      v76 = v12 + v26 + 192;
                      v77 = *(v76 + 16);
                      v78 = vmovl_u8(*v76);
                      v79 = vmovl_high_u8(*v76);
                      v80 = vmovl_u8(*v77.i8);
                      v81 = vmovl_high_u8(v77);
                      v38 = vminq_s32(v38, vmovl_high_u16(v79));
                      v39 = vminq_s32(v39, vmovl_u16(*v79.i8));
                      v40 = vminq_s32(v40, vmovl_high_u16(v78));
                      v41 = vminq_s32(v41, vmovl_u16(*v78.i8));
                      v42 = vminq_s32(v42, vmovl_high_u16(v81));
                      v43 = vminq_s32(v43, vmovl_u16(*v81.i8));
                      v44 = vminq_s32(v44, vmovl_high_u16(v80));
                      v45 = vminq_s32(v45, vmovl_u16(*v80.i8));
                    }
                  }
                }
              }
            }
          }

          a7 = vminq_s32(vminq_s32(v40, v44), vminq_s32(v38, v42));
          v19 = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v41, v45), vminq_s32(v39, v43)), a7));
          if (v18 == v14)
          {
            goto LABEL_17;
          }

          v25 = v14 & 0x7FFFFFE0;
          v22 = v25;
          if ((v14 & 0x1C) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v25 = 0;
        }

        v82 = vdupq_n_s32(v19);
        v83 = v25 - (v14 & 0x7FFFFFFC);
        v84 = v20 + v25;
        do
        {
          a7.i32[0] = *(v12 + v84);
          a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
          v82 = vminq_s32(v82, a7);
          v84 += 4;
          v83 += 4;
        }

        while (v83);
        v19 = vminvq_s32(v82);
        v22 = v14 & 0x7FFFFFFC;
        if (v22 != v14)
        {
          goto LABEL_24;
        }

LABEL_17:
        ++v17;
        v20 += v13;
        if (v17 == v15)
        {
          goto LABEL_57;
        }
      }

      v22 = 0;
LABEL_24:
      v23 = v14 - v22;
      v24 = v20 + v22;
      do
      {
        if (v19 >= *(v12 + v24))
        {
          v19 = *(v12 + v24);
        }

        ++v24;
        --v23;
      }

      while (v23);
      goto LABEL_17;
    }

    goto LABEL_56;
  }

  v19 = *(a2 + 25644);
LABEL_57:
  *(v9 + 4) = v19;
LABEL_58:
  if (*(a1 + 942152) || *(a1 + 740280))
  {
    v89 = *v8;
    v90 = *(a1 + 173016);
    v91 = num_8x8_blocks_high_lookup[a5];
    if (v90 - a4 >= num_8x8_blocks_wide_lookup[a5])
    {
      v92 = num_8x8_blocks_wide_lookup[a5];
    }

    else
    {
      v92 = (v90 - a4);
    }

    v93 = v89 - a3;
    if (v93 < v91)
    {
      v91 = v93;
    }

    if (v91 >= 1 && v92 >= 1)
    {
      v95 = 0;
      v96 = v92 & 0x7FFFFFE0;
      v97 = 8;
      v98 = a4 + v90 * a3;
      while (v92 >= 4)
      {
        if (a4 + v90 * a3 + v90 * v95 + v92 - 1 < a4 + v90 * a3 + v90 * v95 || (v92 - 1) >> 32 != 0)
        {
          break;
        }

        if (v92 >= 0x20)
        {
          v104 = a4 + (v95 + a3) * v90;
          v105 = vdupq_n_s32(v97);
          v106 = v12 + v104;
          v107 = *(v106 + 16);
          v108 = vmovl_u8(*v106);
          v109 = vmovl_high_u8(*v106);
          v110 = vmovl_u8(*v107.i8);
          v111 = vmovl_u16(*v110.i8);
          v112 = vmovl_high_u16(v110);
          v113 = vmovl_high_u8(v107);
          v114 = vmovl_u16(*v113.i8);
          v115 = vmovl_high_u16(v113);
          v116 = vminq_s32(v105, vmovl_high_u16(v109));
          v117 = vminq_s32(v105, vmovl_u16(*v109.i8));
          v118 = vminq_s32(v105, vmovl_high_u16(v108));
          v119 = vminq_s32(v105, vmovl_u16(*v108.i8));
          v120 = vminq_s32(v105, v115);
          v121 = vminq_s32(v105, v114);
          v122 = vminq_s32(v105, v112);
          v123 = vminq_s32(v105, v111);
          if (v96 != 32)
          {
            v124 = v12 + v104 + 32;
            v125 = *(v124 + 16);
            v126 = vmovl_u8(*v124);
            v127 = vmovl_high_u8(*v124);
            v128 = vmovl_u8(*v125.i8);
            v129 = vmovl_high_u8(v125);
            v116 = vminq_s32(v116, vmovl_high_u16(v127));
            v117 = vminq_s32(v117, vmovl_u16(*v127.i8));
            v118 = vminq_s32(v118, vmovl_high_u16(v126));
            v119 = vminq_s32(v119, vmovl_u16(*v126.i8));
            v120 = vminq_s32(v120, vmovl_high_u16(v129));
            v121 = vminq_s32(v121, vmovl_u16(*v129.i8));
            v122 = vminq_s32(v122, vmovl_high_u16(v128));
            v123 = vminq_s32(v123, vmovl_u16(*v128.i8));
            if (v96 != 64)
            {
              v130 = v12 + v104 + 64;
              v131 = *(v130 + 16);
              v132 = vmovl_u8(*v130);
              v133 = vmovl_high_u8(*v130);
              v134 = vmovl_u8(*v131.i8);
              v135 = vmovl_high_u8(v131);
              v116 = vminq_s32(v116, vmovl_high_u16(v133));
              v117 = vminq_s32(v117, vmovl_u16(*v133.i8));
              v118 = vminq_s32(v118, vmovl_high_u16(v132));
              v119 = vminq_s32(v119, vmovl_u16(*v132.i8));
              v120 = vminq_s32(v120, vmovl_high_u16(v135));
              v121 = vminq_s32(v121, vmovl_u16(*v135.i8));
              v122 = vminq_s32(v122, vmovl_high_u16(v134));
              v123 = vminq_s32(v123, vmovl_u16(*v134.i8));
              if (v96 != 96)
              {
                v136 = v12 + v104 + 96;
                v137 = *(v136 + 16);
                v138 = vmovl_u8(*v136);
                v139 = vmovl_high_u8(*v136);
                v140 = vmovl_u8(*v137.i8);
                v141 = vmovl_high_u8(v137);
                v116 = vminq_s32(v116, vmovl_high_u16(v139));
                v117 = vminq_s32(v117, vmovl_u16(*v139.i8));
                v118 = vminq_s32(v118, vmovl_high_u16(v138));
                v119 = vminq_s32(v119, vmovl_u16(*v138.i8));
                v120 = vminq_s32(v120, vmovl_high_u16(v141));
                v121 = vminq_s32(v121, vmovl_u16(*v141.i8));
                v122 = vminq_s32(v122, vmovl_high_u16(v140));
                v123 = vminq_s32(v123, vmovl_u16(*v140.i8));
                if (v96 != 128)
                {
                  v142 = v12 + v104 + 128;
                  v143 = *(v142 + 16);
                  v144 = vmovl_u8(*v142);
                  v145 = vmovl_high_u8(*v142);
                  v146 = vmovl_u8(*v143.i8);
                  v147 = vmovl_high_u8(v143);
                  v116 = vminq_s32(v116, vmovl_high_u16(v145));
                  v117 = vminq_s32(v117, vmovl_u16(*v145.i8));
                  v118 = vminq_s32(v118, vmovl_high_u16(v144));
                  v119 = vminq_s32(v119, vmovl_u16(*v144.i8));
                  v120 = vminq_s32(v120, vmovl_high_u16(v147));
                  v121 = vminq_s32(v121, vmovl_u16(*v147.i8));
                  v122 = vminq_s32(v122, vmovl_high_u16(v146));
                  v123 = vminq_s32(v123, vmovl_u16(*v146.i8));
                  if (v96 != 160)
                  {
                    v148 = v12 + v104 + 160;
                    v149 = *(v148 + 16);
                    v150 = vmovl_u8(*v148);
                    v151 = vmovl_high_u8(*v148);
                    v152 = vmovl_u8(*v149.i8);
                    v153 = vmovl_high_u8(v149);
                    v116 = vminq_s32(v116, vmovl_high_u16(v151));
                    v117 = vminq_s32(v117, vmovl_u16(*v151.i8));
                    v118 = vminq_s32(v118, vmovl_high_u16(v150));
                    v119 = vminq_s32(v119, vmovl_u16(*v150.i8));
                    v120 = vminq_s32(v120, vmovl_high_u16(v153));
                    v121 = vminq_s32(v121, vmovl_u16(*v153.i8));
                    v122 = vminq_s32(v122, vmovl_high_u16(v152));
                    v123 = vminq_s32(v123, vmovl_u16(*v152.i8));
                    if (v96 != 192)
                    {
                      v154 = v12 + v104 + 192;
                      v155 = *(v154 + 16);
                      v156 = vmovl_u8(*v154);
                      v157 = vmovl_high_u8(*v154);
                      v158 = vmovl_u8(*v155.i8);
                      v159 = vmovl_high_u8(v155);
                      v116 = vminq_s32(v116, vmovl_high_u16(v157));
                      v117 = vminq_s32(v117, vmovl_u16(*v157.i8));
                      v118 = vminq_s32(v118, vmovl_high_u16(v156));
                      v119 = vminq_s32(v119, vmovl_u16(*v156.i8));
                      v120 = vminq_s32(v120, vmovl_high_u16(v159));
                      v121 = vminq_s32(v121, vmovl_u16(*v159.i8));
                      v122 = vminq_s32(v122, vmovl_high_u16(v158));
                      v123 = vminq_s32(v123, vmovl_u16(*v158.i8));
                    }
                  }
                }
              }
            }
          }

          a7 = vminq_s32(vminq_s32(v118, v122), vminq_s32(v116, v120));
          v97 = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v119, v123), vminq_s32(v117, v121)), a7));
          if (v96 == v92)
          {
            goto LABEL_75;
          }

          v103 = v92 & 0x7FFFFFE0;
          v100 = v103;
          if ((v92 & 0x1C) == 0)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v103 = 0;
        }

        v160 = vdupq_n_s32(v97);
        v161 = v103 - (v92 & 0x7FFFFFFC);
        v162 = v98 + v103;
        do
        {
          a7.i32[0] = *(v12 + v162);
          a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
          v160 = vminq_s32(v160, a7);
          v162 += 4;
          v161 += 4;
        }

        while (v161);
        v97 = vminvq_s32(v160);
        v100 = v92 & 0x7FFFFFFC;
        if (v100 != v92)
        {
          goto LABEL_82;
        }

LABEL_75:
        ++v95;
        v98 += v90;
        if (v95 == v91)
        {
          goto LABEL_71;
        }
      }

      v100 = 0;
LABEL_82:
      v101 = v92 - v100;
      v102 = v98 + v100;
      do
      {
        if (v97 >= *(v12 + v102))
        {
          v97 = *(v12 + v102);
        }

        ++v102;
        --v101;
      }

      while (v101);
      goto LABEL_75;
    }

    LOBYTE(v97) = 8;
LABEL_71:
    *(v9 + 4) = v97;
  }

  return vp9_init_plane_quantizers(a1, a2);
}

void choose_partitioning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v646 = v7;
  v8 = v6;
  v9 = v3;
  v735[8] = *MEMORY[0x277D85DE8];
  v10 = (v3 + 754540);
  v11 = v3 + 189944;
  v12 = *(v3 + 933896);
  v728 = *(v3 + 933880);
  v729 = v12;
  v641 = v3 + 738576;
  if (*(v3 + 739064) || *v10 && *(v3 + 926856))
  {
    v637 = 1;
    v13 = 1;
  }

  else if (*(v3 + 190380) == 1 && *(v3 + 942104) && *(v3 + 740124))
  {
    v637 = 0;
    v13 = *(v5 + 82376) == 0;
  }

  else
  {
    v637 = 0;
    v13 = 0;
  }

  if (*(v3 + 172972) && !*(v3 + 172988))
  {
    if ((!*v10 || *(v3 + 190076) || !*(v3 + 13936 * *(v3 + 754548) + 772756)) && *(v3 + 172128) != -1 && *(v3 + 172132) != -1)
    {
      v674 = 0;
      v642 = 0;
      goto LABEL_7;
    }

    v642 = 0;
  }

  else
  {
    v642 = *(v3 + 740148) == 0;
  }

  v674 = 1;
LABEL_7:
  v636 = v3 + 942056;
  v14 = (v3 + 194512);
  v15 = *(v3 + 171988);
  v696 = v5;
  v16 = v15 <= 352 && *(v3 + 171992) < 289;
  memset(v703, 0, 352);
  v701 = 0u;
  memset(v702, 0, sizeof(v702));
  v699 = 0u;
  v700 = 0u;
  v17 = *(v3 + 173020) >> 3;
  v18 = v6 >> 3;
  v697 = 0u;
  v698 = 0u;
  v19 = v17 * (v6 >> 3);
  v20 = v7 >> 3;
  v647 = v5 + 82340;
  v640 = (v3 + 754540);
  v659 = v3 + 933792;
  v689 = v3 + 926372;
  v21 = v16;
  if (*v10)
  {
    v22 = *v14;
    if (v22 == -1 || (v23 = *(v3 + 4 * v22 + 172048), v23 == -1) || (v24 = *v11 + 224 * v23, *(v24 + 100) != *(v3 + 171992)) || *(v24 + 96) != v15)
    {
      v674 = 1;
    }
  }

  v654 = v3 + 171988;
  v633 = v20 + v19;
  *&v25 = set_offsets_0(v3, v4, v5, v6, v7, 12).n128_u64[0];
  v645 = v8;
  set_segment_index(v9, v696, v8, v646, 12, v25, v26);
  v27 = *(**(v696 + 25360) + 4);
  v634 = *(**(v696 + 25360) + 4);
  v28 = v647;
  v29 = v659;
  v30 = v689;
  v650 = *(v11 + 112) <= 7 && (!*v640 || !*(v689 + 24));
  v31 = 0;
  *(v647 + 41) = 0;
  *(v647 + 65) = 0;
  *(v647 + 49) = 0;
  *(v647 + 57) = 0;
  v632 = (v647 + 41);
  v32 = v654;
  if (!v674 && *(v641 + 1548))
  {
    v33 = *(v654 + 1028);
    v31 = *(v647 + 40);
    v34 = v31 - 1 < 2;
    *(v647 + 15) = v34;
    *(v647 + 16) = v31 == 5;
    v35 = *(v636 + 40);
    if (v35)
    {
      *(v647 + 17) = *(v35 + v20 + ((v33 + 7) >> 3) * v18);
    }

    if (*(v641 + 1576) && v640[1] == v640[3] - 1 && *(v689 + 68) && v31 != 6)
    {
      v36 = v31;
      if (!scale_partitioning_svc(v9, v696, v696 + 24912, 12, (v8 >> 1), (v646 >> 1), v8, v646))
      {
        if (!*(v641 + 1544))
        {
          return;
        }

        update_prev_partition_helper(v9, 0xCu, v8, v646);
        v103 = v636;
        v104 = v633;
        *(*(v636 + 8) + v633) = v634;
        goto LABEL_222;
      }

      v28 = v647;
      v34 = *(v647 + 15);
      v31 = v36;
      v32 = v654;
      v29 = v659;
    }

    if (v34 && *(v641 + 1544) && !v13)
    {
      if (*v640)
      {
        if (*(v9 + 13936 * v640[2] + 772756) || !*(v689 + 24))
        {
          goto LABEL_64;
        }

        v37 = 2 * v640[3];
      }

      else
      {
        v37 = 1;
      }

      if (*v641 > v37 && !(*v29 | v27) && !*(*(v636 + 8) + v633) && *(*(v636 + 24) + v633) < *(v636 + 32) && *v636)
      {
        v38 = v28;
        copy_partitioning_helper(v9, v696, v696 + 24912, 0xCu, v8, v646);
        ++*(*(v636 + 24) + v633);
        v39 = (*(v636 + 16) + 25 * v633);
        v40 = *v39;
        *(v647 + 50) = *(v39 + 9);
        *v632 = v40;
        *(v38 + 20) = 1;
        if (*(v641 + 1576) && v640[1] == v640[3] - 2)
        {

          update_partition_svc(v9, 0xCu, v8, v646);
        }

        return;
      }
    }
  }

LABEL_64:
  v41 = v696;
  if (*(v11 + 204) == 3 && *(v9 + 176472) && (v27 - 3) >= 0xFFFFFFFE)
  {
    v42 = *(v32 + 1040);
    if (*(v9 + 4 * v27 + 176552))
    {
      if (*(v9 + 176475) == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v32 + 1040);
      }

      v44 = v43 + *(v9 + 8 * v27 + 176488);
      if (v44 >= 0xFF)
      {
        v45 = 255;
      }

      else
      {
        v45 = v44;
      }

      if (v44 >= 0)
      {
        v42 = v45;
      }

      else
      {
        v42 = 0;
      }
    }
  }

  else
  {
    v42 = *(v32 + 1040);
  }

  set_vbp_thresholds(v9, &v728, v42, v31);
  if (*(v11 + 436) != 1)
  {
    v649 = v728.i64[1];
    v47 = v8;
    v48 = v654;
    v46 = v640;
LABEL_83:
    v49 = v21;
    goto LABEL_84;
  }

  v46 = v640;
  v649 = v728.i64[1];
  v47 = v8;
  if (v640[1])
  {
    v48 = v654;
    goto LABEL_83;
  }

  v48 = v654;
  v49 = v21;
  if (v13)
  {
    v649 = (3 * v728.i64[1]) >> 2;
    v728.i64[1] = v649;
  }

LABEL_84:
  v50 = *(v11 + 112);
  v51 = *(v696 + 25404);
  v52 = (v51 >> 3) + 64;
  if (v51 >= 0)
  {
    v52 = 64;
  }

  v671 = v52;
  v53 = *(v696 + 25412);
  if (v53 >= 0)
  {
    v54 = 64;
  }

  else
  {
    v54 = (v53 >> 3) + 64;
  }

  v669 = v54;
  v686 = *(v696 + 8216);
  v693 = *(v696 + 8224);
  v733 = v13;
  v653 = v9;
  if (v674)
  {
    if ((*(*(v696 + 25440) + 152) & 8) != 0)
    {
      v59 = *(v696 + 25536);
      if (v59 == 12)
      {
        v651 = 0;
        v60 = &VP9_HIGH_VAR_OFFS_12;
      }

      else
      {
        v651 = 0;
        if (v59 == 10)
        {
          v60 = &VP9_HIGH_VAR_OFFS_10;
        }

        else
        {
          v60 = &VP9_HIGH_VAR_OFFS_8;
        }
      }

      v690 = (v60 >> 1);
      v639 = -1;
      LOBYTE(v638) = 12;
      v635 = 1;
    }

    else
    {
      v651 = 0;
      v639 = -1;
      LOBYTE(v638) = 12;
      v635 = 1;
      v690 = &VP9_VAR_OFFS_0;
    }

    goto LABEL_239;
  }

  v55 = **(v696 + 25360);
  v56 = *v14;
  if (v56 == -1 || (v57 = *(v653 + 4 * v56 + 172048), v57 == -1))
  {
    v58 = 0;
  }

  else
  {
    v58 = *v11 + 224 * v57 + 88;
  }

  if (v646 + 4 >= *(v48 + 1028))
  {
    LODWORD(v61) = 9;
  }

  else
  {
    LODWORD(v61) = 11;
  }

  v681 = v47 + 4;
  if (v47 + 4 >= *(v48 + 1020))
  {
    v61 = v61;
  }

  else
  {
    v61 = (v61 + 1);
  }

  v638 = v61;
  if (!*v46 || *(v11 + 132) || !v46[1] || *v689)
  {
    v62 = v14[1];
    if (v62 == -1 || (LODWORD(v62) = *(v653 + 4 * v62 + 172048), v62 == -1))
    {
      v63 = 0;
      v639 = v62;
    }

    else
    {
      v63 = *v11 + 224 * v62 + 88;
      v639 = -1;
      if (v50 <= 7 && v63 != v58)
      {
        if ((*(v641 + 952) & 2) == 0)
        {
          goto LABEL_151;
        }

        v64 = v58;
        vp9_setup_pre_planes(v696 + 24912, 0, v63, v645, v646, v653 + 172304);
        v30 = v689;
        v65 = (*(v653 + (v638 << 6) + 740472))(*(v696 + 8216), *(v696 + 8224), *(v696 + 24944), *(v696 + 24952));
        v47 = v645;
        v58 = v64;
        v639 = v65;
        v66 = 172128;
        if (*(v11 + 144) >= 1)
        {
          goto LABEL_116;
        }

LABEL_117:
        v67 = 1;
        goto LABEL_118;
      }
    }

    v66 = 172128;
    if (*(v11 + 144) >= 1)
    {
      goto LABEL_116;
    }

    goto LABEL_117;
  }

  v63 = 0;
LABEL_151:
  v639 = -1;
  v66 = 172128;
  if (*(v11 + 144) < 1)
  {
    goto LABEL_117;
  }

LABEL_116:
  if (*(v11 + 148) || !*(v641 + 20))
  {
    goto LABEL_117;
  }

  v78 = v14[2];
  if (v78 == -1 || (v79 = *(v653 + 4 * v78 + 172048), v79 == -1))
  {
    v58 = 0;
    v639 = -1;
    v67 = 3;
    v66 = 172480;
  }

  else
  {
    v58 = *v11 + 224 * v79 + 88;
    v66 = 172480;
    v639 = -1;
    v67 = 3;
  }

LABEL_118:
  vp9_setup_pre_planes(v696 + 24912, 0, v58, v47, v646, v653 + v66);
  *(v55 + 8) = v67;
  *(v55 + 9) = -1;
  *v55 = 12;
  *(v55 + 12) = 0;
  *(v55 + 7) = 3;
  if (*(v11 + 112) < 8 || v49 || *(v647 + 40) == 6)
  {
    v727[0] = 0;
    v68 = vp9_int_pro_motion_estimation(v653, v696, v638, v645, v646, v727);
    v69 = v68;
    v70 = v647;
    *(v647 + 20) = 1;
    v71 = *(v55 + 14);
    *(v647 + 24) = v71;
    v72 = *(v55 + 12);
    *(v647 + 28) = v72;
    if (*(v11 + 436) == 1)
    {
      v73 = v645;
      if (v640[1] == v30[164] && v30[122])
      {
        v70 = v647;
        if (*(v647 + 36) || *v654 < 641 || *(v654 + 4) < 481)
        {
          goto LABEL_141;
        }

        if (v72 < 0)
        {
          v72 = -v72;
        }

        if (v71 < 0)
        {
          v71 = -v71;
        }

        if (v72 < 0x30 || v71 >= 9)
        {
          if (v71 < 0x30 || v72 > 8 || v68 >= 0x186A0)
          {
            goto LABEL_141;
          }
        }

        else if (v68 >> 5 > 0xC34)
        {
          goto LABEL_141;
        }

        v650 = 0;
        *&v729 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v70 = v647;
      }
    }

    else
    {
      v73 = v645;
    }
  }

  else
  {
    v69 = (*(v653 + (v638 << 6) + 740472))(*(v696 + 8216), *(v696 + 8224), *(v696 + 24944), *(v696 + 24952));
    v70 = v647;
    v73 = v645;
  }

LABEL_141:
  if (*(v641 + 1528))
  {
    v74 = (7 * v69) >> 3;
  }

  else
  {
    v74 = v69;
  }

  v75 = v653 + 172112;
  if (v639 >= v74)
  {
    *v70 = *(v55 + 12);
    v76 = *(v55 + 9);
    v635 = 1;
    if (*(v55 + 8) < 1)
    {
      v77 = 0;
    }

    else
    {
      v77 = *(v55 + 8) - 1;
    }

    v639 = v69;
    v9 = v653;
    v41 = v696;
  }

  else
  {
    vp9_setup_pre_planes(v696 + 24912, 0, v63, v645, v646, v653 + 172304);
    v73 = v645;
    v635 = 2;
    *(v55 + 8) = 2;
    *(v55 + 12) = 0;
    v76 = *(v55 + 9);
    v77 = 1;
    v9 = v653;
    v41 = v696;
    v30 = v689;
  }

  v41[3178] = v75 + 176 * v77;
  v80 = v76;
  v81 = v76 - 1;
  if (v80 <= 0)
  {
    v81 = 0;
  }

  v41[3179] = v75 + 176 * v81;
  build_inter_predictors_for_planes((v41 + 3114), 12, v73, v646, 0, 2);
  v82 = v640;
  if (*(v659 + 32))
  {
    v83 = 0;
    v84 = v646 < 8 || v49;
    if (!*(v654 + 32) && (v84 & 1) == 0)
    {
      v83 = 0;
      if (v645 >= 8)
      {
        v85 = *(v654 + 1028);
        if (v646 + 8 < v85)
        {
          v86 = *(v654 + 1020);
          if ((v645 + 8) >= v86)
          {
            v83 = 0;
          }

          else
          {
            v83 = 0;
            v87 = v86 - v645;
            if ((v86 - v645) >= 8)
            {
              v88 = 8;
            }

            else
            {
              v88 = v86 - v645;
            }

            if (v87 >= 1)
            {
              v89 = v85 - v646;
              if (v85 - v646 >= 1)
              {
                v90 = 0;
                v91 = 0;
                v92 = 0;
                v93 = *(v641 + 1656);
                do
                {
                  v94 = v646 + (v90 + v645) * v85;
                  v95 = *(v93 + v94);
                  v91 += v95;
                  v92 = v92 - v95 + 1;
                  if (v92 <= 3)
                  {
                    v96 = v90;
                  }

                  else
                  {
                    v96 = v88;
                  }

                  if (v92 <= 3 && v89 >= 3)
                  {
                    v98 = *(v93 + v94 + 2);
                    v91 += v98;
                    v92 = v92 - v98 + 1;
                    v96 = v92 <= 3 ? v90 : v88;
                    if (v92 <= 3 && v89 >= 5)
                    {
                      v100 = *(v93 + v94 + 4);
                      v91 += v100;
                      v92 = v92 - v100 + 1;
                      v96 = v92 <= 3 ? v90 : v88;
                      if (v92 <= 3 && v89 >= 7)
                      {
                        v102 = *(v93 + v94 + 6);
                        v91 += v102;
                        v92 = v92 - v102 + 1;
                        if (v92 <= 3)
                        {
                          v96 = v90;
                        }

                        else
                        {
                          v96 = v88;
                        }
                      }
                    }
                  }

                  v90 = v96 + 2;
                }

                while (v96 + 2 < v88);
                if (v91 >= 13)
                {
                  v83 = 1;
                  v733 = 1;
                }

                else
                {
                  v83 = 0;
                }

                v82 = v640;
              }
            }
          }
        }
      }
    }

    *(v647 + 14) = v83;
  }

  v690 = v41[3116];
  v651 = *(v696 + 24936);
  if (v634 || *(v659 + 128) <= v639 || (v105 = *(v654 + 1028), v646 + 4 >= v105) || v681 >= *(v654 + 1020))
  {
    if (!*(v641 + 1544) || *(v659 + 136) <= v69)
    {
      goto LABEL_239;
    }

    if (*v82)
    {
      if (*(v9 + 13936 * v82[2] + 772756) || !v30[6])
      {
        goto LABEL_239;
      }

      v111 = 2 * v82[3];
    }

    else
    {
      v111 = 1;
    }

    if (*v641 <= v111 || *v659 | v27 || *(*(v636 + 8) + v633) || *(*(v636 + 24) + v633) >= *(v636 + 32) || !*v636)
    {
LABEL_239:
      v114 = v50 < 8 && v49;
      v655 = v114;
      if (v114)
      {
        v115 = malloc_type_malloc(0xA917uLL, 0xD93B561uLL);
        if (v115)
        {
          v116 = (v115 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v116 - 8) = v115;
          if (v116)
          {
            bzero(((v115 + 23) & 0xFFFFFFFFFFFFFFF0), 0xA900uLL);
            v660 = v116;
            if (!v674)
            {
              goto LABEL_257;
            }

LABEL_248:
            v732[0] = 0;
            v732[1] = 0;
            v731[0] = 0;
            v731[1] = 0;
            memset_pattern16(__b, &xmmword_273BCF730, 0x10uLL);
            v117 = 0;
            v118 = 0;
            v119 = v735;
            v120 = &v734;
            v121 = &v697;
            v122 = v727;
            do
            {
              v682 = v122;
              v675 = v118;
              v679 = v117;
              *v120 = 0;
              v665 = (v120 + 4);
              v667 = v119;
              v123 = v117 & 0x20;
              v124 = v118 & 0x20;
              *v119 = 0;
              v119[1] = 0;
              memset_pattern16(v122, &unk_273BA37F0, 0x10uLL);
              fill_variance_4x4avg(v686, v693, v690, v651, v123, v124, v121 + 60, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 8, v124, v121 + 224, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123, v124 | 8, v121 + 388, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 8, v124 | 8, v121 + 552, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x10, v124, v121 + 736, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x18, v124, v121 + 900, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x10, v124 | 8, v121 + 1064, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x18, v124 | 8, v121 + 1228, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123, v124 | 0x10, v121 + 1412, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 8, v124 | 0x10, v121 + 1576, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123, v124 | 0x18, v121 + 1740, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 8, v124 | 0x18, v121 + 1904, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x10, v124 | 0x10, v121 + 2088, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x18, v124 | 0x10, v121 + 2252, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x10, v124 | 0x18, v121 + 2416, *(v41[3180] + 152), v671, v669, 1);
              fill_variance_4x4avg(v686, v693, v690, v651, v123 | 0x18, v124 | 0x18, v121 + 2580, *(v41[3180] + 152), v671, v669, 1);
              v120 = v665;
              v121 += 681;
              v119 = v667 + 2;
              v122 = v682 + 4;
              v118 = v675 + 16;
              v117 = v679 + 32;
            }

            while (v675 != 48);
LABEL_250:
            if (*(v659 + 40))
            {
              v125 = *(v659 + 48);
              v126 = *(v659 + 52);
              if (v125 <= 2 * v126)
              {
                if (v125 <= v126)
                {
                  v127 = v125 > v126 >> 1;
                }

                else
                {
                  v127 = 2;
                }
              }

              else
              {
                v127 = 3;
              }
            }

            else
            {
              v127 = 1;
            }

            v432 = 0;
            v684 = 0;
            v677 = 0;
            v664 = v127;
            v670 = v127 | v674;
            v672 = 0x7FFFFFFF;
            do
            {
              while (1)
              {
                v452 = 0;
                v453 = 4 * v432;
                v454 = v729;
                v691 = 4 * v432 + 5;
                v694 = v432 + 1;
                v687 = v432;
                v455 = &v702[681 * v432];
                do
                {
                  if (v727[v452 | v453] == 1)
                  {
                    v456 = (v660 + 2704 * (v452 | v453));
                    if (v674)
                    {
                      v456 = &v455[169 * v452 + 5];
                    }

                    v457 = v456[76];
                    v458 = v456[77];
                    v459 = v456[40];
                    v460 = v456[41];
                    v461 = v456[42];
                    v456[24] = v459 + v457;
                    v456[25] = v460 + v458;
                    v456[26] = v461 + 1;
                    v462 = v456[148];
                    v463 = v456[149];
                    v464 = v456[112];
                    v465 = v456[113];
                    v466 = v456[114] + 1;
                    v456[28] = v464 + v462;
                    v456[29] = v465 + v463;
                    v456[30] = v466;
                    v467 = v465 + v460;
                    v456[32] = v464 + v459;
                    v456[33] = v467;
                    v456[34] = v461 + 1;
                    v468 = v456[78] + 1;
                    v456[36] = v462 + v457;
                    v456[37] = v463 + v458;
                    v456[38] = v468;
                    v469 = v464 + v459 + v462 + v457;
                    v470 = v467 + v463 + v458;
                    v456[20] = v469;
                    v456[21] = v470;
                    v456[22] = v461 + 2;
                    v471 = v456[240];
                    v472 = v456[241];
                    v473 = v456[204];
                    v474 = v456[205];
                    v475 = v456[206];
                    v456[188] = v473 + v471;
                    v456[189] = v474 + v472;
                    v456[190] = v475 + 1;
                    v476 = v456[312];
                    v477 = v456[313];
                    v478 = v456[276];
                    v479 = v456[277];
                    v480 = v456[278] + 1;
                    v456[192] = v478 + v476;
                    v456[193] = v479 + v477;
                    v456[194] = v480;
                    v481 = v479 + v474;
                    v456[196] = v478 + v473;
                    v456[197] = v479 + v474;
                    v456[198] = v475 + 1;
                    v482 = v476 + v471;
                    v483 = v477 + v472;
                    v484 = v456[242] + 1;
                    v456[200] = v482;
                    v456[201] = v483;
                    v456[202] = v484;
                    v485 = v478 + v473 + v482;
                    v486 = v481 + v483;
                    v456[184] = v485;
                    v456[185] = v481 + v483;
                    v456[186] = v475 + 2;
                    v487 = v456[404];
                    v488 = v456[405];
                    v489 = v456[368];
                    v490 = v456[369];
                    v491 = v456[370];
                    v456[352] = v489 + v487;
                    v456[353] = v490 + v488;
                    v456[354] = v491 + 1;
                    v492 = v456[476];
                    v493 = v456[477];
                    v494 = v456[440];
                    v495 = v456[441];
                    v496 = v456[442] + 1;
                    v456[356] = v494 + v492;
                    v456[357] = v495 + v493;
                    v456[358] = v496;
                    v497 = v494 + v489;
                    v498 = v495 + v490;
                    v456[360] = v497;
                    v456[361] = v498;
                    v456[362] = v491 + 1;
                    v499 = v492 + v487;
                    v500 = v493 + v488;
                    v501 = v456[406] + 1;
                    v456[364] = v499;
                    v456[365] = v500;
                    v456[366] = v501;
                    v502 = v497 + v499;
                    v503 = v498 + v500;
                    v456[348] = v502;
                    v456[349] = v503;
                    v456[350] = v491 + 2;
                    v504 = v456[568];
                    v505 = v456[569];
                    v506 = v456[532];
                    v507 = v456[533];
                    v508 = v456[534];
                    v456[516] = v506 + v504;
                    v456[517] = v507 + v505;
                    v456[518] = v508 + 1;
                    v509 = v456[640];
                    v510 = v456[641];
                    v511 = v456[604];
                    v512 = v456[605];
                    v513 = v456[606] + 1;
                    v456[520] = v511 + v509;
                    v456[521] = v512 + v510;
                    v456[522] = v513;
                    v514 = v511 + v506;
                    v515 = v512 + v507;
                    v456[524] = v511 + v506;
                    v456[525] = v515;
                    v456[526] = v508 + 1;
                    v516 = v509 + v504;
                    v517 = v510 + v505;
                    v518 = v456[570] + 1;
                    v456[528] = v516;
                    v456[529] = v517;
                    v456[530] = v518;
                    v519 = v514 + v516;
                    v520 = v515 + v517;
                    v456[512] = v519;
                    v456[513] = v520;
                    v456[514] = v508 + 2;
                    v456[4] = v485 + v469;
                    v456[5] = v486 + v470;
                    v456[6] = v461 + 3;
                    v456[8] = v519 + v502;
                    v456[9] = v520 + v503;
                    v456[10] = v491 + 3;
                    v521 = v502 + v469;
                    v522 = v503 + v470;
                    v456[12] = v521;
                    v456[13] = v522;
                    v456[14] = v461 + 3;
                    v523 = v519 + v485;
                    v524 = v520 + v486;
                    v525 = v523 + v521;
                    v526 = v524 + v522;
                    v456[16] = v523;
                    v456[17] = v524;
                    v456[18] = v475 + 3;
                    *v456 = v525;
                    v456[1] = v526;
                    v527 = (v525 - ((v526 * v526) >> (v461 + 4))) << 8 >> (v461 + 4);
                    v456[2] = v461 + 4;
                    v456[3] = v527;
                    if (v454 < v527)
                    {
                      *(&v733 + v691 + v452) = 1;
                      *(&v733 + v694) = 1;
                      v733 = 1;
                    }
                  }

                  ++v452;
                }

                while (v452 != 4);
                v433 = &v702[681 * v687];
                v434 = v433[696];
                v435 = v433[697];
                v436 = v433[20];
                v437 = v433[21];
                v438 = v433[22];
                v433[4] = v436 + v434;
                v433[5] = v437 + v435;
                v433[6] = v438 + 1;
                v439 = v433[2048];
                v440 = v433[2049];
                v441 = v433[1372];
                v442 = v433[1373];
                v443 = v433[1374] + 1;
                v433[8] = v441 + v439;
                v433[9] = v442 + v440;
                v433[10] = v443;
                v444 = v441 + v436;
                v445 = v442 + v437;
                v433[12] = v444;
                v433[13] = v445;
                v433[14] = v438 + 1;
                v446 = v439 + v434;
                v447 = v440 + v435;
                v448 = v433[698] + 1;
                v433[16] = v446;
                v433[17] = v447;
                v433[18] = v448;
                *v433 = v444 + v446;
                v433[1] = v445 + v447;
                v433[2] = v438 + 2;
                v432 = v694;
                if (!*(&v733 + v694))
                {
                  break;
                }

                if (v694 == 4)
                {
                  goto LABEL_382;
                }
              }

              v449 = v444 + v446;
              v451 = v438 + 2;
              v450 = v445 + v447;
              v528 = (v444 + v446 - ((v450 * v450) >> v451)) << 8 >> v451;
              v433[3] = v528;
              v529 = v677;
              if (v528 > v677)
              {
                v529 = (v449 - ((v450 * v450) >> v451)) << 8 >> v451;
              }

              v530 = v672;
              if (v528 < v672)
              {
                v530 = (v449 - ((v450 * v450) >> v451)) << 8 >> v451;
              }

              v672 = v530;
              v677 = v529;
              if (v728.i64[1] < v528 || (v531 = v728.i64[1] >> 1, !v674) && v531 < v528 && v528 > *(v732 + v687) >> 1 || !v670 && *(v654 + 4) <= 360 && (v532 = *(v731 + v687), v728.i64[1] < v532) && v531 < v532 - __b[v687])
              {
                *(&v733 + v694) = 1;
                v733 = 1;
              }

              v684 += v528;
            }

            while (v694 != 4);
LABEL_382:
            v533 = v733;
            v534 = v654;
            if (v733)
            {
LABEL_383:
              if (v646 + 8 > *(v654 + 1028) || (v645 + 8) > *(v654 + 1020) || (v535 = set_vt_partitioning(v653, v696, v696 + 24912, &v697, 0xCu, v645, v646, v728.i64[0], 6u, v533), v534 = v654, !v535))
              {
                v544 = 0;
                v685 = (v534 + 1132);
                v688 = (v534 + 1188);
                v545 = v735;
                v678 = v703;
                v695 = v727;
                do
                {
                  v692 = 4 * v544;
                  v546 = ((2 * v544) & 4) + v645;
                  v547 = ((4 * v544) & 4) + v646;
                  v673 = v544 + 1;
                  v548 = set_vt_partitioning(v653, v696, v696 + 24912, &v702[681 * v544], 9u, v546, v547, v728.i64[1], 6u, *(&v733 + v544 + 1));
                  v534 = v654;
                  if (!v548)
                  {
                    if (v642)
                    {
                      v549 = 0;
                      v550 = 0;
                      v551 = v678;
                      do
                      {
                        v552 = v551;
                        if (!v674)
                        {
                          if (v695[v550] == 1)
                          {
                            v552 = (v660 + 2704 * (v550 | v692));
                          }

                          else
                          {
                            v552 = v551;
                          }
                        }

                        v553 = (v550 & 2) + v546;
                        v554 = (v549 & 2) + v547;
                        v555 = set_vt_partitioning(v653, v696, v696 + 24912, v552, 6u, v553, v554, v729, *(v659 + 144), *(v545 + v550));
                        v534 = v654;
                        if (!v555)
                        {
                          v556 = *(v654 + 984);
                          v557 = *(v654 + 1028);
                          if (!v556 || *(v654 + 1000))
                          {
                            v552[23] = (v552[20] - ((v552[21] * v552[21]) >> v552[22])) << 8 >> v552[22];
                          }

                          v558 = *(&v729 + 1);
                          if (v554 < v557 && v553 < *(v654 + 1020))
                          {
                            v559 = v552[23];
                            v560 = v554 + *(v696 + 25352) * v553;
                            v561 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v560;
                            v562 = (*v685 + 68 * v560);
                            *(v561 + 8 * v560) = v562;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v554 + v557 * v553);
                            if (v558 <= v559)
                            {
                              v563 = 0;
                            }

                            else
                            {
                              v563 = 3;
                            }

                            *v562 = v563;
                          }

                          if (!v556 || *(v654 + 1000))
                          {
                            v552[187] = (v552[184] - ((v552[185] * v552[185]) >> v552[186])) << 8 >> v552[186];
                          }

                          v564 = v554 + 1;
                          if (v554 + 1 < v557 && v553 < *(v654 + 1020))
                          {
                            v565 = v552[187];
                            v566 = v564 + *(v696 + 25352) * v553;
                            v567 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v566;
                            v568 = (*v685 + 68 * v566);
                            *(v567 + 8 * v566) = v568;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v564 + v557 * v553);
                            if (v558 <= v565)
                            {
                              v569 = 0;
                            }

                            else
                            {
                              v569 = 3;
                            }

                            *v568 = v569;
                          }

                          if (!v556 || *(v654 + 1000))
                          {
                            v552[351] = (v552[348] - ((v552[349] * v552[349]) >> v552[350])) << 8 >> v552[350];
                          }

                          v570 = v553 + 1;
                          if (v554 < v557 && v570 < *(v654 + 1020))
                          {
                            v571 = v552[351];
                            v572 = v554 + *(v696 + 25352) * v570;
                            v573 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v572;
                            v574 = (*v685 + 68 * v572);
                            *(v573 + 8 * v572) = v574;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v554 + v557 * v570);
                            if (v558 <= v571)
                            {
                              v575 = 0;
                            }

                            else
                            {
                              v575 = 3;
                            }

                            *v574 = v575;
                          }

                          if (!v556 || *(v654 + 1000))
                          {
                            v552[515] = (v552[512] - ((v552[513] * v552[513]) >> v552[514])) << 8 >> v552[514];
                          }

                          if (v564 < v557 && v570 < *(v654 + 1020))
                          {
                            v147 = v558 <= v552[515];
                            v576 = v564 + *(v696 + 25352) * v570;
                            v577 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v576;
                            v578 = (*v685 + 68 * v576);
                            *(v577 + 8 * v576) = v578;
                            if (v147)
                            {
                              v579 = 0;
                            }

                            else
                            {
                              v579 = 3;
                            }

                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v564 + v557 * v570);
                            *v578 = v579;
                          }
                        }

                        ++v550;
                        v551 += 676;
                        v549 += 2;
                      }

                      while (v550 != 4);
                    }

                    else
                    {
                      v580 = 0;
                      v581 = 0;
                      v582 = v678;
                      do
                      {
                        v583 = v582;
                        if (!v674)
                        {
                          if (v695[v581] == 1)
                          {
                            v583 = (v660 + 2704 * (v581 | v692));
                          }

                          else
                          {
                            v583 = v582;
                          }
                        }

                        v584 = (v581 & 2) + v546;
                        v585 = (v580 & 2) + v547;
                        v586 = set_vt_partitioning(v653, v696, v696 + 24912, v583, 6u, v584, v585, v729, *(v659 + 144), *(v545 + v581));
                        v534 = v654;
                        if (!v586)
                        {
                          v587 = *(v654 + 1028);
                          if (v587 > v585 && *(v654 + 1020) > v584)
                          {
                            v588 = v585 + *(v696 + 25352) * v584;
                            v589 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v588;
                            v590 = (*v685 + 68 * v588);
                            *(v589 + 8 * v588) = v590;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v585 + v587 * v584);
                            *v590 = 3;
                          }

                          v591 = v585 + 1;
                          if (v587 > v585 + 1 && *(v654 + 1020) > v584)
                          {
                            v592 = v591 + *(v696 + 25352) * v584;
                            v593 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v592;
                            v594 = (*v685 + 68 * v592);
                            *(v593 + 8 * v592) = v594;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v591 + v587 * v584);
                            *v594 = 3;
                          }

                          v595 = v584 + 1;
                          if (v587 > v585 && *(v654 + 1020) > v595)
                          {
                            v596 = v585 + *(v696 + 25352) * v595;
                            v597 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v596;
                            v598 = (*v685 + 68 * v596);
                            *(v597 + 8 * v596) = v598;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v585 + v587 * v595);
                            *v598 = 3;
                          }

                          if (v587 > v591 && *(v654 + 1020) > v595)
                          {
                            v599 = v591 + *(v696 + 25352) * v595;
                            v600 = *v688;
                            *(v696 + 25360) = *v688 + 8 * v599;
                            v601 = (*v685 + 68 * v599);
                            *(v600 + 8 * v599) = v601;
                            *(v696 + 25568) = *(v696 + 25576) + 36 * (v591 + v587 * v595);
                            *v601 = 3;
                          }
                        }

                        ++v581;
                        v582 += 676;
                        v580 += 2;
                      }

                      while (v581 != 4);
                    }
                  }

                  v545 += 2;
                  v678 += 681;
                  v695 += 4;
                  v544 = v673;
                }

                while (v673 != 4);
              }

              v536 = v653;
              if (*(v534 + 984))
              {
                if (!*(v534 + 1000))
                {
                  if (!*(v641 + 1544) || (update_prev_partition_helper(v653, 0xCu, v645, v646), v534 = v654, v536 = v653, *(*(v636 + 8) + v633) = v634, v602 = (*(v636 + 16) + 25 * v633), v603 = *v632, *(v602 + 9) = *(v647 + 50), *v602 = v603, *(*(v636 + 24) + v633) = 0, *(v654 + 984)) && !*(v654 + 1000))
                  {
                    if (*(v641 + 1576) && v640[1] == v640[3] - 2)
                    {
                      v604 = v536;
                      update_partition_svc(v536, 0xCu, v645, v646);
                      v534 = v654;
                      v536 = v604;
                    }
                  }
                }
              }

              v537 = *(v641 + 1528);
              if (!v537)
              {
                goto LABEL_587;
              }

              v538 = *v534 <= 640 ? -4 : -8;
              v539 = *v534 <= 640 ? 4 : 8;
              if (v635 != 1)
              {
                goto LABEL_587;
              }

              v540 = **(v696 + 25360);
              if (v537 != 1)
              {
                v605 = *(v540 + 7);
                if (v539 <= v605 || v538 >= v605)
                {
                  goto LABEL_587;
                }

                v607 = *(v540 + 6);
                if (v539 <= v607 || v538 >= v607)
                {
                  goto LABEL_587;
                }
              }

              v541 = *v540;
              switch(v541)
              {
                case 12:
                  if (SHIDWORD(v697) >= v728.i64[0] >> 1)
                  {
                    goto LABEL_587;
                  }

                  v543 = 82381;
                  goto LABEL_501;
                case 11:
                  v609 = v728.i64[0] >> 2;
                  if (v728.i64[0] >> 2 > SHIDWORD(v698))
                  {
                    *(v647 + 42) = 1;
                  }

                  if (v609 <= SHIDWORD(v699))
                  {
                    goto LABEL_587;
                  }

                  v543 = 82383;
                  goto LABEL_501;
                case 10:
                  v542 = v728.i64[0] >> 2;
                  if (v728.i64[0] >> 2 > SHIDWORD(v700))
                  {
                    *(v647 + 44) = 1;
                  }

                  if (v542 <= SHIDWORD(v701))
                  {
                    goto LABEL_587;
                  }

                  v543 = 82385;
                  goto LABEL_501;
              }

              v610 = (v534 + 1188);
              if (*(v534 + 1028) <= v646 || *(v534 + 1020) <= v645)
              {
                goto LABEL_526;
              }

              v611 = **(*v610 + 8 * (v646 + *(v534 + 1032) * v645));
              if (v611 == 9)
              {
                if ((v537 | 2) == 3)
                {
                  v612 = (5 * v728.i64[1]) >> 3;
                }

                else
                {
                  v612 = v728.i64[1] >> 1;
                }

                if (v612 > SHIDWORD(v702[0]))
                {
                  v614 = 82386;
                  goto LABEL_525;
                }

LABEL_526:
                v615 = v646 + 4;
                if (*(v534 + 1028) <= v646 + 4 || *(v534 + 1020) <= v645)
                {
                  goto LABEL_548;
                }

                v616 = **(*v610 + 8 * (v615 + *(v534 + 1032) * v645));
                v617 = *(v641 + 1528);
                if (v616 == 9)
                {
                  if ((v617 | 2) == 3)
                  {
                    v618 = (5 * v728.i64[1]) >> 3;
                  }

                  else
                  {
                    v618 = v728.i64[1] >> 1;
                  }

                  if (v618 > v709)
                  {
                    v621 = 82387;
                    goto LABEL_547;
                  }

LABEL_548:
                  v622 = v645 + 4;
                  if (*(v534 + 1028) <= v646 || *(v534 + 1020) <= v622)
                  {
                    goto LABEL_568;
                  }

                  v623 = **(*v610 + 8 * (v646 + *(v534 + 1032) * v622));
                  v624 = *(v641 + 1528);
                  if (v623 == 9)
                  {
                    if ((v624 | 2) == 3)
                    {
                      v625 = (5 * v728.i64[1]) >> 3;
                    }

                    else
                    {
                      v625 = v728.i64[1] >> 1;
                    }

                    if (v625 > v716)
                    {
                      v627 = 82388;
                      goto LABEL_567;
                    }

LABEL_568:
                    if (*(v534 + 1028) <= v615 || *(v534 + 1020) <= v622)
                    {
                      goto LABEL_587;
                    }

                    v628 = **(*v610 + 8 * (v615 + *(v534 + 1032) * v622));
                    v629 = *(v641 + 1528);
                    if (v628 == 9)
                    {
                      if ((v629 | 2) == 3)
                      {
                        v630 = (5 * v728.i64[1]) >> 3;
                      }

                      else
                      {
                        v630 = v728.i64[1] >> 1;
                      }

                      if (v630 <= v722)
                      {
                        goto LABEL_587;
                      }

                      v543 = 82389;
                      goto LABEL_501;
                    }

                    if ((v628 - 6) > 2 || v629 < 2)
                    {
                      goto LABEL_587;
                    }

                    v631 = v729 >> 8;
                    if (v729 >> 8 <= v723)
                    {
                      if (v631 <= v724)
                      {
LABEL_577:
                        if (v631 > v725)
                        {
                          goto LABEL_578;
                        }

                        goto LABEL_582;
                      }
                    }

                    else
                    {
                      *(v647 + 62) = 1;
                      if (v631 <= v724)
                      {
                        goto LABEL_577;
                      }
                    }

                    *(v647 + 63) = 1;
                    if (v631 > v725)
                    {
LABEL_578:
                      *(v647 + 64) = 1;
                      if (v631 > v726)
                      {
                        goto LABEL_583;
                      }

                      goto LABEL_587;
                    }

LABEL_582:
                    if (v631 > v726)
                    {
LABEL_583:
                      v543 = 82405;
LABEL_501:
                      *(v696 + v543) = 1;
                    }

LABEL_587:
                    chroma_check(v536, v696, v638, v639, v674, v637);
                    if (v660)
                    {
                      free(*(v660 - 8));
                    }

                    return;
                  }

                  if ((v623 - 6) > 2 || v624 < 2)
                  {
                    goto LABEL_568;
                  }

                  v626 = v729 >> 8;
                  if (v729 >> 8 <= v717)
                  {
                    if (v626 <= v718)
                    {
LABEL_557:
                      if (v626 > v719)
                      {
                        goto LABEL_558;
                      }

                      goto LABEL_562;
                    }
                  }

                  else
                  {
                    *(v647 + 58) = 1;
                    if (v626 <= v718)
                    {
                      goto LABEL_557;
                    }
                  }

                  *(v647 + 59) = 1;
                  if (v626 > v719)
                  {
LABEL_558:
                    *(v647 + 60) = 1;
                    if (v626 <= v720)
                    {
                      goto LABEL_568;
                    }

LABEL_563:
                    v627 = 82401;
LABEL_567:
                    *(v696 + v627) = 1;
                    goto LABEL_568;
                  }

LABEL_562:
                  if (v626 <= v720)
                  {
                    goto LABEL_568;
                  }

                  goto LABEL_563;
                }

                if ((v616 - 6) > 2 || v617 < 2)
                {
                  goto LABEL_548;
                }

                v620 = v729 >> 8;
                if (v729 >> 8 <= v710)
                {
                  if (v620 <= v711)
                  {
LABEL_537:
                    if (v620 > v712)
                    {
                      goto LABEL_538;
                    }

                    goto LABEL_542;
                  }
                }

                else
                {
                  *(v647 + 54) = 1;
                  if (v620 <= v711)
                  {
                    goto LABEL_537;
                  }
                }

                *(v647 + 55) = 1;
                if (v620 > v712)
                {
LABEL_538:
                  *(v647 + 56) = 1;
                  if (v620 <= v713)
                  {
                    goto LABEL_548;
                  }

LABEL_543:
                  v621 = 82397;
LABEL_547:
                  *(v696 + v621) = 1;
                  goto LABEL_548;
                }

LABEL_542:
                if (v620 <= v713)
                {
                  goto LABEL_548;
                }

                goto LABEL_543;
              }

              if (v537 < 2 || (v611 - 6) > 2)
              {
                goto LABEL_526;
              }

              v613 = v729 >> 8;
              if (v729 >> 8 <= SHIDWORD(v703[0]))
              {
                if (v613 <= v704)
                {
LABEL_511:
                  if (v613 > v705)
                  {
                    goto LABEL_512;
                  }

                  goto LABEL_516;
                }
              }

              else
              {
                *(v647 + 50) = 1;
                if (v613 <= v704)
                {
                  goto LABEL_511;
                }
              }

              *(v647 + 51) = 1;
              if (v613 > v705)
              {
LABEL_512:
                *(v647 + 52) = 1;
                if (v613 <= v706)
                {
                  goto LABEL_526;
                }

LABEL_517:
                v614 = 82393;
LABEL_525:
                *(v696 + v614) = 1;
                goto LABEL_526;
              }

LABEL_516:
              if (v613 <= v706)
              {
                goto LABEL_526;
              }

              goto LABEL_517;
            }

            DWORD2(v698) = DWORD2(v702[0]) + 1;
            *&v699 = vadd_s32(v714, v721);
            DWORD2(v699) = v715 + 1;
            *&v700 = vadd_s32(v714, *&v702[0]);
            DWORD2(v700) = DWORD2(v702[0]) + 1;
            *&v698 = vadd_s32(*&v702[0], v707);
            *&v701 = vadd_s32(v721, v707);
            DWORD2(v701) = v708 + 1;
            *&v697 = vadd_s32(*&v700, *&v701);
            DWORD2(v697) = DWORD2(v702[0]) + 2;
            HIDWORD(v697) = (v697 - ((SDWORD1(v697) * SDWORD1(v697)) >> (BYTE8(v702[0]) + 2))) << 8 >> (BYTE8(v702[0]) + 2);
            if (v674 || v664 < 2)
            {
              v533 = 0;
              if (v674)
              {
                goto LABEL_383;
              }

              if (v664 > 1)
              {
                goto LABEL_383;
              }

              v533 = 0;
              if (3 * (v728.i64[0] >> 3) >= v677 - v672 || v728.i64[0] >> 1 >= v677)
              {
                goto LABEL_383;
              }
            }

            else if (((v697 - ((SDWORD1(v697) * SDWORD1(v697)) >> (BYTE8(v702[0]) + 2))) << 8 >> (BYTE8(v702[0]) + 2)) <= (9 * v684) >> 5)
            {
              v533 = 0;
              goto LABEL_383;
            }

            v533 = 1;
            v733 = 1;
            goto LABEL_383;
          }
        }

        vpx_internal_error(v9 + 171696, 2, "Failed to allocate vt2");
        v116 = 0;
        v660 = 0;
        if (v674)
        {
          goto LABEL_248;
        }
      }

      else
      {
        v116 = 0;
        v660 = 0;
        if (v674)
        {
          goto LABEL_248;
        }
      }

LABEL_257:
      v128 = 0;
      v648 = v27 - 3;
      v129 = v727;
      v130 = &v697;
      v131 = 2 * v693;
      v132 = 20;
      v652 = v116;
      v133 = v690;
      while (1)
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v668 = 0;
        v666 = 0;
        v137 = v128;
        v657 = 32 * (v128 & 1);
        v138 = 16 * v128++;
        *(&v733 + v128) = 0;
        *(v732 + v137) = 0;
        *(v731 + v137) = 0;
        v656 = v138 & 0x20;
        v658 = v137;
        v663 = 0x7FFFFFFF;
        __b[v137] = 0x7FFFFFFF;
        v643 = v132;
        v644 = v129;
        v139 = v132;
        v140 = v671;
        v141 = v669;
        v142 = v686;
        do
        {
          v680 = v139;
          v683 = v129;
          v662 = v134;
          v143 = v134 & 0x10 | v657;
          v661 = v136;
          v144 = v136 & 0x10 | v656;
          v145 = v130 + v135;
          *(&v733 + v139) = 0;
          *v129 = 0;
          v146 = *(v41[3180] + 152);
          v147 = v143 < v140 && v144 < v141;
          v148 = v147;
          v149 = v136 & 0x10 | v656;
          if ((v146 & 8) != 0)
          {
            if (v148)
            {
              v165 = (2 * (v142 + v144 * v693 + v143));
              v166 = *v165;
              v167 = (v165 + v131);
              v168 = *v167;
              v169 = (v167 + v131);
              v170 = *v169;
              v171 = (v169 + v131);
              LODWORD(v171) = (vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v168, v166), v170), *(v171 + v131 + v131)), *(v171 + v131 + v131 + v131 + v131)), vaddq_s16(vaddq_s16(*v171, *(v171 + v131)), *(v171 + v131 + v131 + v131)))) + 32) >> 6;
              v172 = (2 * (v133 + v144 * v651 + v143));
              v173 = *v172;
              v174 = (v172 + 2 * v651);
              v175 = *v174;
              v176 = (v174 + 2 * v651);
              v177 = *v176;
              v178 = (v176 + 2 * v651);
              v179 = *v178;
              v180 = (v178 + 2 * v651);
              v163 = v171 - ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v175, v173), v177), *(v180 + 2 * v651)), *(v180 + 2 * v651 + 2 * v651 + 2 * v651)), vaddq_s16(vaddq_s16(v179, *v180), *(v180 + 2 * v651 + 2 * v651)))) + 32) >> 6);
              v164 = v163 * v163;
            }

            else
            {
              v164 = 0;
              v163 = 0;
            }

            v181 = 0;
            *(v145 + 60) = v164;
            v231 = (v130 + v135);
            v231[61] = v163;
            v231[62] = 0;
            v232 = v143 | 8;
            v184 = 0;
            if (v144 < v141 && v232 < v140)
            {
              v233 = (2 * (v142 + v144 * v693 + v232));
              v234 = *v233;
              v235 = (v233 + v131);
              v236 = *v235;
              v237 = (v235 + v131);
              v238 = *v237;
              v239 = (v237 + v131);
              LODWORD(v239) = (vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v236, v234), v238), *(v239 + v131 + v131)), *(v239 + v131 + v131 + v131 + v131)), vaddq_s16(vaddq_s16(*v239, *(v239 + v131)), *(v239 + v131 + v131 + v131)))) + 32) >> 6;
              v240 = (2 * (v133 + v144 * v651 + v232));
              v241 = *v240;
              v242 = (v240 + 2 * v651);
              v243 = *v242;
              v244 = (v242 + 2 * v651);
              v245 = *v244;
              v246 = (v244 + 2 * v651);
              v247 = *v246;
              v248 = (v246 + 2 * v651);
              v184 = v239 - ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v243, v241), v245), *(v248 + 2 * v651)), *(v248 + 2 * v651 + 2 * v651 + 2 * v651)), vaddq_s16(vaddq_s16(v247, *v248), *(v248 + 2 * v651 + 2 * v651)))) + 32) >> 6);
              v181 = v184 * v184;
            }

            v198 = 0;
            v231[224] = v181;
            v231[225] = v184;
            v249 = v144 | 8;
            v231[226] = 0;
            v200 = 0;
            if (v143 < v140 && v249 < v141)
            {
              v250 = (2 * (v142 + v249 * v693 + v143));
              v251 = *v250;
              v252 = (v250 + v131);
              v253 = *v252;
              v254 = (v252 + v131);
              v255 = *v254;
              v256 = (v254 + v131);
              LODWORD(v256) = (vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v253, v251), v255), *(v256 + v131 + v131)), *(v256 + v131 + v131 + v131 + v131)), vaddq_s16(vaddq_s16(*v256, *(v256 + v131)), *(v256 + v131 + v131 + v131)))) + 32) >> 6;
              v257 = (2 * (v133 + v249 * v651 + v143));
              v258 = *v257;
              v259 = (v257 + 2 * v651);
              v260 = *v259;
              v261 = (v259 + 2 * v651);
              v262 = *v261;
              v263 = (v261 + 2 * v651);
              v264 = *v263;
              v265 = (v263 + 2 * v651);
              v200 = v256 - ((vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v260, v258), v262), *(v265 + 2 * v651)), *(v265 + 2 * v651 + 2 * v651 + 2 * v651)), vaddq_s16(vaddq_s16(v264, *v265), *(v265 + 2 * v651 + 2 * v651)))) + 32) >> 6);
              v198 = v200 * v200;
            }

            v214 = 0;
            v266 = (v130 + v135);
            v266[388] = v198;
            v266[389] = v200;
            v266[390] = 0;
            if (v232 < v140 && v249 < v141)
            {
              v267 = (2 * (v142 + v249 * v693 + v232));
              v268 = *v267;
              v269 = (v267 + v131);
              v270 = *v269;
              v271 = (v269 + v131);
              v272 = *v271;
              v273 = (v271 + v131);
              v223 = vaddlvq_u16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v270, v268), v272), *(v273 + v131 + v131)), *(v273 + v131 + v131 + v131 + v131)), vaddq_s16(vaddq_s16(*v273, *(v273 + v131)), *(v273 + v131 + v131 + v131))));
              v274 = (2 * (v133 + v249 * v651 + v232));
              v275 = *v274;
              v276 = (v274 + 2 * v651);
              v277 = *v276;
              v278 = (v276 + 2 * v651);
              v279 = *v278;
              v280 = (v278 + 2 * v651);
              v230 = vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v277, v275), v279), *(v280 + 2 * v651 + 2 * v651)), *(v280 + 2 * v651 + 2 * v651 + 2 * v651 + 2 * v651)), vaddq_s16(vaddq_s16(*v280, *(v280 + 2 * v651)), *(v280 + 2 * v651 + 2 * v651 + 2 * v651)));
              goto LABEL_292;
            }
          }

          else
          {
            if (v148)
            {
              v150 = (v142 + v144 * v693 + v143);
              v151 = *v150;
              v152 = (v150 + v693);
              v153 = vaddl_u8(*v152, v151);
              v154 = (v152 + v693);
              v155 = vaddw_u8(v153, *v154);
              v156 = (v154 + v693);
              LODWORD(v156) = (vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v155, *v156), *(v156 + v693)), *(v156 + v693 + v693)), *(v156 + v693 + v693 + v693)), *(v156 + v693 + v693 + v693 + v693))) + 32) >> 6;
              v157 = (v133 + v144 * v651 + v143);
              v155.i64[0] = *v157;
              v158 = (v157 + v651);
              v159 = vaddl_u8(*v158, *v155.i8);
              v160 = (v158 + v651);
              v161 = vaddw_u8(v159, *v160);
              v162 = (v160 + v651);
              v163 = v156 - ((vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v161, *v162), *(v162 + v651)), *(v162 + v651 + v651)), *(v162 + v651 + v651 + v651)), *(v162 + v651 + v651 + v651 + v651))) + 32) >> 6);
              v164 = v163 * v163;
            }

            else
            {
              v164 = 0;
              v163 = 0;
            }

            v181 = 0;
            *(v145 + 60) = v164;
            v182 = (v130 + v135);
            v182[61] = v163;
            v182[62] = 0;
            v183 = v143 | 8;
            v184 = 0;
            if (v144 < v141 && v183 < v140)
            {
              v185 = (v142 + v144 * v693 + v183);
              v186 = *v185;
              v187 = (v185 + v693);
              v188 = vaddl_u8(*v187, v186);
              v189 = (v187 + v693);
              v190 = vaddw_u8(v188, *v189);
              v191 = (v189 + v693);
              LODWORD(v191) = (vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v190, *v191), *(v191 + v693)), *(v191 + v693 + v693)), *(v191 + v693 + v693 + v693)), *(v191 + v693 + v693 + v693 + v693))) + 32) >> 6;
              v192 = (v133 + v144 * v651 + v183);
              v190.i64[0] = *v192;
              v193 = (v192 + v651);
              v194 = vaddl_u8(*v193, *v190.i8);
              v195 = (v193 + v651);
              v196 = vaddw_u8(v194, *v195);
              v197 = (v195 + v651);
              v184 = v191 - ((vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v196, *v197), *(v197 + v651)), *(v197 + v651 + v651)), *(v197 + v651 + v651 + v651)), *(v197 + v651 + v651 + v651 + v651))) + 32) >> 6);
              v181 = v184 * v184;
            }

            v198 = 0;
            v182[224] = v181;
            v182[225] = v184;
            v199 = v144 | 8;
            v182[226] = 0;
            v200 = 0;
            if (v143 < v140 && v199 < v141)
            {
              v201 = (v142 + v199 * v693 + v143);
              v202 = *v201;
              v203 = (v201 + v693);
              v204 = vaddl_u8(*v203, v202);
              v205 = (v203 + v693);
              v206 = vaddw_u8(v204, *v205);
              v207 = (v205 + v693);
              LODWORD(v207) = (vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v206, *v207), *(v207 + v693)), *(v207 + v693 + v693)), *(v207 + v693 + v693 + v693)), *(v207 + v693 + v693 + v693 + v693))) + 32) >> 6;
              v208 = (v133 + v199 * v651 + v143);
              v206.i64[0] = *v208;
              v209 = (v208 + v651);
              v210 = vaddl_u8(*v209, *v206.i8);
              v211 = (v209 + v651);
              v212 = vaddw_u8(v210, *v211);
              v213 = (v211 + v651);
              v200 = v207 - ((vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v212, *v213), *(v213 + v651)), *(v213 + v651 + v651)), *(v213 + v651 + v651 + v651)), *(v213 + v651 + v651 + v651 + v651))) + 32) >> 6);
              v198 = v200 * v200;
            }

            v214 = 0;
            v215 = (v130 + v135);
            v215[388] = v198;
            v215[389] = v200;
            v215[390] = 0;
            if (v183 < v140 && v199 < v141)
            {
              v216 = (v142 + v199 * v693 + v183);
              v217 = *v216;
              v218 = (v216 + v693);
              v219 = vaddl_u8(*v218, v217);
              v220 = (v218 + v693);
              v221 = vaddw_u8(v219, *v220);
              v222 = (v220 + v693);
              v223 = vaddlvq_u16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v221, *v222), *(v222 + v693)), *(v222 + v693 + v693)), *(v222 + v693 + v693 + v693)), *(v222 + v693 + v693 + v693 + v693)));
              v224 = (v133 + v199 * v651 + v183);
              v221.i64[0] = *v224;
              v225 = (v224 + v651);
              v226 = vaddl_u8(*v225, *v221.i8);
              v227 = (v225 + v651);
              v228 = vaddw_u8(v226, *v227);
              v229 = (v227 + v651);
              v230 = vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v228, *v229), *(v229 + v651)), *(v229 + v651 + v651)), *(v229 + v651 + v651 + v651)), *(v229 + v651 + v651 + v651 + v651));
LABEL_292:
              v281 = ((v223 + 32) >> 6) - ((vaddlvq_u16(v230) + 32) >> 6);
              v214 = v281 * v281;
              goto LABEL_294;
            }
          }

          v281 = 0;
LABEL_294:
          v676 = v135;
          v282 = (v130 + v135);
          v282[552] = v214;
          v282[553] = v281;
          v282[554] = 0;
          v283 = v164 + v181;
          v282[45] = v163 + v184;
          v282[46] = 1;
          v282[48] = v198 + v214;
          v282[49] = v200 + v281;
          v282[50] = 1;
          v284 = v198 + v164;
          v285 = v200 + v163;
          v282[52] = v284;
          v282[53] = v285;
          v282[54] = 1;
          v286 = v181 + v214;
          v287 = v184 + v281;
          v282[56] = v286;
          v282[57] = v287;
          v282[58] = 1;
          v288 = v284 + v286;
          v289 = v285 + v287;
          *(v145 + 40) = v288;
          v282[41] = v289;
          v282[42] = 2;
          v290 = ((v288 - ((v289 * v289) >> 2)) & 0xFFFFFF) << 6;
          v282[43] = v290;
          v282[44] = v283;
          v666 += v290;
          *(v732 + v658) = v666;
          v291 = v663;
          if (v290 < v663)
          {
            v291 = v290;
          }

          v663 = v291;
          __b[v658] = v291;
          v292 = v668;
          if (v290 > v668)
          {
            v292 = v290;
          }

          v668 = v292;
          *(v731 + v658) = v292;
          if (v729 < v290)
          {
            v293 = v680;
LABEL_300:
            *(&v733 + v293) = 1;
            *(&v733 + v128) = 1;
            v733 = 1;
            goto LABEL_301;
          }

          v293 = v680;
          if (v650 && v649 < v290 && v648 <= 0xFFFFFFFD)
          {
            if ((v146 & 8) == 0)
            {
              if (v148)
              {
                v297 = (v142 + v149 * v693 + v143);
                v298.i64[0] = *v297;
                v298.i64[1] = *(v297 + v693);
                v299.i64[0] = *(v297 + 2 * v693);
                v299.i64[1] = *(v297 + 3 * v693);
                v300.i64[0] = *(v297 + 4 * v693);
                v300.i64[1] = *(v297 + 5 * v693);
                v301.i64[0] = *(v297 + 6 * v693);
                v302 = *(v297 + 7 * v693);
                v303 = (v133 + v149 * v651 + v143);
                v301.i64[1] = v302;
                v304.i64[0] = *v303;
                v304.i64[1] = *(v303 + v651);
                v305.i64[0] = *(v303 + 2 * v651);
                v305.i64[1] = *(v303 + 3 * v651);
                v306.i64[0] = *(v303 + 4 * v651);
                v306.i64[1] = *(v303 + 5 * v651);
                v307.i64[0] = *(v303 + 6 * v651);
                v307.i64[1] = *(v303 + 7 * v651);
                v308 = vabdq_u8(v298, v304);
                v309 = vabdq_u8(v299, v305);
                v310 = vabdq_u8(v300, v306);
                v311 = vabdq_u8(v301, v307);
                v312 = vmaxq_u8(v308, v309);
                v313 = vminq_u8(v308, v309);
                v314 = vminq_u8(v310, v311);
                v315 = vminq_u8(v313, v314);
                v314.i8[0] = vmaxvq_u8(vmaxq_u8(v312, vmaxq_u8(v310, v311)));
                v315.i8[0] = vminvq_u8(v315);
                v316 = v314.i32[0] - v315.i32[0];
                v148 = v316 & ~(v316 >> 31);
                v317 = v143 | 8;
                if (v149 >= v141)
                {
LABEL_325:
                  v351 = v149 | 8;
                  if (v143 < v140)
                  {
                    goto LABEL_326;
                  }

                  goto LABEL_331;
                }
              }

              else
              {
                v316 = 255;
                v317 = v143 | 8;
                if (v149 >= v141)
                {
                  goto LABEL_325;
                }
              }

              if (v317 >= v140)
              {
                goto LABEL_325;
              }

              v333 = (v142 + v149 * v693 + v317);
              v334.i64[0] = *v333;
              v334.i64[1] = *(v333 + v693);
              v335.i64[0] = *(v333 + 2 * v693);
              v335.i64[1] = *(v333 + 3 * v693);
              v336.i64[0] = *(v333 + 4 * v693);
              v336.i64[1] = *(v333 + 5 * v693);
              v337.i64[0] = *(v333 + 6 * v693);
              v338 = (v133 + v149 * v651 + v317);
              v337.i64[1] = *(v333 + 7 * v693);
              v339.i64[0] = *v338;
              v339.i64[1] = *(v338 + v651);
              v340.i64[0] = *(v338 + 2 * v651);
              v340.i64[1] = *(v338 + 3 * v651);
              v341.i64[0] = *(v338 + 4 * v651);
              v341.i64[1] = *(v338 + 5 * v651);
              v342.i64[0] = *(v338 + 6 * v651);
              v342.i64[1] = *(v338 + 7 * v651);
              v343 = vabdq_u8(v334, v339);
              v344 = vabdq_u8(v335, v340);
              v345 = vabdq_u8(v336, v341);
              v346 = vabdq_u8(v337, v342);
              v347 = vmaxq_u8(v343, v344);
              v348 = vminq_u8(v343, v344);
              v349 = vminq_u8(v345, v346);
              v350 = vminq_u8(v348, v349);
              v349.i8[0] = vmaxvq_u8(vmaxq_u8(v347, vmaxq_u8(v345, v346)));
              v350.i8[0] = vminvq_u8(v350);
              if (v349.i32[0] - v350.i32[0] > v148)
              {
                v148 = v349.i32[0] - v350.i32[0];
              }

              if (v349.i32[0] - v350.i32[0] < v316)
              {
                v316 = v349.i32[0] - v350.i32[0];
              }

              v351 = v149 | 8;
              if (v143 < v140)
              {
LABEL_326:
                if (v351 < v141)
                {
                  v352 = (v142 + v351 * v693 + v143);
                  v353.i64[0] = *v352;
                  v353.i64[1] = *(v352 + v693);
                  v354.i64[0] = *(v352 + 2 * v693);
                  v354.i64[1] = *(v352 + 3 * v693);
                  v355.i64[0] = *(v352 + 4 * v693);
                  v355.i64[1] = *(v352 + 5 * v693);
                  v356.i64[0] = *(v352 + 6 * v693);
                  v357 = (v133 + v351 * v651 + v143);
                  v356.i64[1] = *(v352 + 7 * v693);
                  v358.i64[0] = *v357;
                  v358.i64[1] = *(v357 + v651);
                  v359.i64[0] = *(v357 + 2 * v651);
                  v359.i64[1] = *(v357 + 3 * v651);
                  v360.i64[0] = *(v357 + 4 * v651);
                  v360.i64[1] = *(v357 + 5 * v651);
                  v361.i64[0] = *(v357 + 6 * v651);
                  v361.i64[1] = *(v357 + 7 * v651);
                  v362 = vabdq_u8(v353, v358);
                  v363 = vabdq_u8(v354, v359);
                  v364 = vabdq_u8(v355, v360);
                  v365 = vabdq_u8(v356, v361);
                  v366 = vmaxq_u8(v362, v363);
                  v367 = vminq_u8(v362, v363);
                  v368 = vminq_u8(v364, v365);
                  v369 = vminq_u8(v367, v368);
                  v368.i8[0] = vmaxvq_u8(vmaxq_u8(v366, vmaxq_u8(v364, v365)));
                  v369.i8[0] = vminvq_u8(v369);
                  if (v368.i32[0] - v369.i32[0] > v148)
                  {
                    v148 = v368.i32[0] - v369.i32[0];
                  }

                  if (v368.i32[0] - v369.i32[0] < v316)
                  {
                    v316 = v368.i32[0] - v369.i32[0];
                  }
                }
              }

LABEL_331:
              if (v317 < v140 && v351 < v141)
              {
                v370 = (v142 + v351 * v693 + v317);
                v371.i64[0] = *v370;
                v371.i64[1] = *(v370 + v693);
                v372.i64[0] = *(v370 + 2 * v693);
                v372.i64[1] = *(v370 + 3 * v693);
                v373.i64[0] = *(v370 + 4 * v693);
                v373.i64[1] = *(v370 + 5 * v693);
                v374.i64[0] = *(v370 + 6 * v693);
                v375 = (v133 + v351 * v651 + v317);
                v374.i64[1] = *(v370 + 7 * v693);
                v376.i64[0] = *v375;
                v376.i64[1] = *(v375 + v651);
                v377.i64[0] = *(v375 + 2 * v651);
                v377.i64[1] = *(v375 + 3 * v651);
                v378.i64[0] = *(v375 + 4 * v651);
                v378.i64[1] = *(v375 + 5 * v651);
                v379.i64[0] = *(v375 + 6 * v651);
                v379.i64[1] = *(v375 + 7 * v651);
                v380 = vabdq_u8(v371, v376);
                v381 = vabdq_u8(v372, v377);
                v382 = vabdq_u8(v373, v378);
                v383 = vabdq_u8(v374, v379);
                v384 = vmaxq_u8(v380, v381);
                v385 = vminq_u8(v380, v381);
                v386 = vminq_u8(v382, v383);
                v388 = vminq_u8(v385, v386);
                v386.i8[0] = vmaxvq_u8(vmaxq_u8(v384, vmaxq_u8(v382, v383)));
                v387 = v386.i32[0];
                v388.i8[0] = vminvq_u8(v388);
                goto LABEL_351;
              }

              goto LABEL_355;
            }

            if (v148)
            {
              v318 = (2 * (v142 + v149 * v693 + v143));
              v319 = (2 * (v133 + v149 * v651 + v143));
              v320 = vabdq_u16(*v318, *v319);
              v321 = vabdq_u16(*(v318 + 2 * v693), *(v319 + 2 * v651));
              v322 = vabdq_u16(*(v318 + 4 * v693), *(v319 + 4 * v651));
              v323 = vabdq_u16(*(v318 + 6 * v693), *(v319 + 6 * v651));
              v324 = vabdq_u16(*(v318 + 8 * v693), *(v319 + 8 * v651));
              v325 = vabdq_u16(*(v318 + 10 * v693), *(v319 + 10 * v651));
              v326 = vabdq_u16(*(v318 + 12 * v693), *(v319 + 12 * v651));
              v327 = vabdq_u16(*(v318 + 14 * v693), *(v319 + 14 * v651));
              v328 = vmaxq_u16(vmaxq_u16(vmaxq_u16(v320, v321), vmaxq_u16(v322, v323)), vmaxq_u16(vmaxq_u16(v324, v325), vmaxq_u16(v326, v327)));
              v329 = vminq_u16(vminq_u16(v320, v321), vminq_u16(v322, v323));
              v330 = vminq_u16(vminq_u16(v324, v325), vminq_u16(v326, v327));
              v331 = vminq_u16(v329, v330);
              v330.i16[0] = vmaxvq_u16(v328);
              v331.i16[0] = vminvq_u16(v331);
              v316 = v330.i32[0] - v331.i32[0];
              v148 = v316 & ~(v316 >> 31);
              if (v330.i32[0] - v331.i32[0] >= 255)
              {
                v316 = 255;
              }

              v332 = v143 | 8;
              if (v149 >= v141)
              {
LABEL_342:
                v403 = v149 | 8;
                if (v143 < v140)
                {
                  goto LABEL_343;
                }

                goto LABEL_348;
              }
            }

            else
            {
              v148 = 0;
              v316 = 255;
              v332 = v143 | 8;
              if (v149 >= v141)
              {
                goto LABEL_342;
              }
            }

            if (v332 >= v140)
            {
              goto LABEL_342;
            }

            v389 = (2 * (v142 + v149 * v693 + v332));
            v390 = (2 * (v133 + v149 * v651 + v332));
            v391 = vabdq_u16(*v389, *v390);
            v392 = vabdq_u16(*(v389 + 2 * v693), *(v390 + 2 * v651));
            v393 = vabdq_u16(*(v389 + 4 * v693), *(v390 + 4 * v651));
            v394 = vabdq_u16(*(v389 + 6 * v693), *(v390 + 6 * v651));
            v395 = vabdq_u16(*(v389 + 8 * v693), *(v390 + 8 * v651));
            v396 = vabdq_u16(*(v389 + 10 * v693), *(v390 + 10 * v651));
            v397 = vabdq_u16(*(v389 + 12 * v693), *(v390 + 12 * v651));
            v398 = vabdq_u16(*(v389 + 14 * v693), *(v390 + 14 * v651));
            v399 = vmaxq_u16(vmaxq_u16(vmaxq_u16(v391, v392), vmaxq_u16(v393, v394)), vmaxq_u16(vmaxq_u16(v395, v396), vmaxq_u16(v397, v398)));
            v400 = vminq_u16(vminq_u16(v391, v392), vminq_u16(v393, v394));
            v401 = vminq_u16(vminq_u16(v395, v396), vminq_u16(v397, v398));
            v402 = vminq_u16(v400, v401);
            v401.i16[0] = vmaxvq_u16(v399);
            v402.i16[0] = vminvq_u16(v402);
            if (v401.i32[0] - v402.i32[0] > v148)
            {
              v148 = v401.i32[0] - v402.i32[0];
            }

            if (v401.i32[0] - v402.i32[0] < v316)
            {
              v316 = v401.i32[0] - v402.i32[0];
            }

            v403 = v149 | 8;
            if (v143 < v140)
            {
LABEL_343:
              if (v403 < v141)
              {
                v404 = (2 * (v142 + v403 * v693 + v143));
                v405 = (2 * (v133 + v403 * v651 + v143));
                v406 = vabdq_u16(*v404, *v405);
                v407 = vabdq_u16(*(v404 + 2 * v693), *(v405 + 2 * v651));
                v408 = vabdq_u16(*(v404 + 4 * v693), *(v405 + 4 * v651));
                v409 = vabdq_u16(*(v404 + 6 * v693), *(v405 + 6 * v651));
                v410 = vabdq_u16(*(v404 + 8 * v693), *(v405 + 8 * v651));
                v411 = vabdq_u16(*(v404 + 10 * v693), *(v405 + 10 * v651));
                v412 = vabdq_u16(*(v404 + 12 * v693), *(v405 + 12 * v651));
                v413 = vabdq_u16(*(v404 + 14 * v693), *(v405 + 14 * v651));
                v414 = vmaxq_u16(vmaxq_u16(vmaxq_u16(v406, v407), vmaxq_u16(v408, v409)), vmaxq_u16(vmaxq_u16(v410, v411), vmaxq_u16(v412, v413)));
                v415 = vminq_u16(vminq_u16(v406, v407), vminq_u16(v408, v409));
                v416 = vminq_u16(vminq_u16(v410, v411), vminq_u16(v412, v413));
                v417 = vminq_u16(v415, v416);
                v416.i16[0] = vmaxvq_u16(v414);
                v417.i16[0] = vminvq_u16(v417);
                if (v416.i32[0] - v417.i32[0] > v148)
                {
                  v148 = v416.i32[0] - v417.i32[0];
                }

                if (v416.i32[0] - v417.i32[0] < v316)
                {
                  v316 = v416.i32[0] - v417.i32[0];
                }
              }
            }

LABEL_348:
            if (v332 < v140 && v403 < v141)
            {
              v418 = v142 + v403 * v693 + v332;
              v419 = (2 * (v133 + v403 * v651 + v332));
              v420 = vabdq_u16(*(2 * v418), *v419);
              v421 = vabdq_u16(*(2 * v418 + 2 * v693), *(v419 + 2 * v651));
              v422 = vabdq_u16(*(2 * v418 + 4 * v693), *(v419 + 4 * v651));
              v423 = vabdq_u16(*(2 * v418 + 6 * v693), *(v419 + 6 * v651));
              v424 = vabdq_u16(*(2 * v418 + 8 * v693), *(v419 + 8 * v651));
              v425 = vabdq_u16(*(2 * v418 + 10 * v693), *(v419 + 10 * v651));
              v426 = vabdq_u16(*(2 * v418 + 12 * v693), *(v419 + 12 * v651));
              v427 = vabdq_u16(*(2 * v418 + 14 * v693), *(v419 + 14 * v651));
              v428 = vmaxq_u16(vmaxq_u16(vmaxq_u16(v420, v421), vmaxq_u16(v422, v423)), vmaxq_u16(vmaxq_u16(v424, v425), vmaxq_u16(v426, v427)));
              v429 = vminq_u16(vminq_u16(v420, v421), vminq_u16(v422, v423));
              v430 = vminq_u16(vminq_u16(v424, v425), vminq_u16(v426, v427));
              v388 = vminq_u16(v429, v430);
              v430.i16[0] = vmaxvq_u16(v428);
              v387 = v430.i32[0];
              v388.i16[0] = vminvq_u16(v388);
LABEL_351:
              v431 = v387 - v388.i32[0];
              if (v431 > v148)
              {
                v148 = v431;
              }

              if (v431 < v316)
              {
                v316 = v431;
              }
            }

LABEL_355:
            if (v148 - v316 > *(v659 + 120) << (*(v647 + 40) == 6))
            {
              goto LABEL_300;
            }
          }

LABEL_301:
          v294 = v655;
          if (2 * v649 >= v290)
          {
            v294 = 0;
          }

          if (v294)
          {
            *(&v733 + v293) = 0;
            *v683 = 1;
            v295 = (v652 + v135);
            fill_variance_4x4avg(v686, v693, v133, v651, v143, v149, (v652 + v135 + 80), v146, v140, v141, 0);
            fill_variance_4x4avg(v686, v693, v690, v651, v143 | 8, v149, v295 + 184, *(*(v696 + 25440) + 152), v671, v669, 0);
            fill_variance_4x4avg(v686, v693, v690, v651, v143, v149 | 8, v295 + 348, *(*(v696 + 25440) + 152), v671, v669, 0);
            v296 = v295 + 512;
            v41 = v696;
            v133 = v690;
            fill_variance_4x4avg(v686, v693, v690, v651, v143 | 8, v149 | 8, v296, *(*(v696 + 25440) + 152), v671, v669, 0);
            v135 = v676;
            v293 = v680;
            v142 = v686;
            v141 = v669;
            v140 = v671;
          }

          v136 = v661 + 8;
          v135 += 2704;
          v129 = v683 + 1;
          v134 = v662 + 16;
          v139 = v293 + 4;
        }

        while (v661 != 24);
        v652 += 10816;
        v129 = v644 + 4;
        v130 += 681;
        v132 = v643 + 16;
        if (v128 == 4)
        {
          goto LABEL_250;
        }
      }
    }

    copy_partitioning_helper(v9, v41, (v41 + 3114), 0xCu, v645, v646);
    ++*(*(v636 + 24) + v633);
    v112 = (*(v636 + 16) + 25 * v633);
    v113 = *v112;
    *(v647 + 50) = *(v112 + 9);
    *v632 = v113;
    chroma_check(v9, v41, v638, v639, 0, v637);
    if (*(v641 + 1576) && v640[1] == v640[3] - 2)
    {
      update_partition_svc(v9, 0xCu, v645, v646);
    }
  }

  else
  {
    v106 = v646 + *(v696 + 25352) * v645;
    v107 = *(v654 + 1188);
    v41[3170] = v107 + 8 * v106;
    v108 = (*(v654 + 1132) + 68 * v106);
    *(v107 + 8 * v106) = v108;
    v41[3196] = v41[3197] + 36 * (v646 + v105 * v645);
    *v108 = 12;
    *v632 = 1;
    chroma_check(v9, v41, v638, v639, 0, v637);
    if (*(v641 + 1576) && v640[1] == v640[3] - 2)
    {
      update_partition_svc(v9, 0xCu, v645, v646);
    }

    if (*(v641 + 1544))
    {
      update_prev_partition_helper(v9, 0xCu, v645, v646);
      v103 = v636;
      v104 = v633;
      *(*(v636 + 8) + v633) = 0;
LABEL_222:
      v109 = (*(v103 + 16) + 25 * v104);
      v110 = *v632;
      *(v109 + 9) = *(v647 + 50);
      *v109 = v110;
      *(*(v103 + 24) + v104) = 0;
    }
  }
}

int32x2_t *nonrd_use_partition(int32x2_t *result, unint64_t a2, __n128 *a3, unsigned __int8 **a4, uint64_t *a5, int a6, signed __int32 a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v10 = result + 21504;
  v11 = a8;
  v12 = (1 << b_width_log2_lookup[a8]) + (1 << b_width_log2_lookup[a8] < 0 ? 3 : 0);
  if (result[21626].i32[0] <= a6 || result[21627].i32[0] <= a7)
  {
    return result;
  }

  if (a8 >= 3)
  {
    v16 = **a4;
    v17 = partition_lookup[13 * b_width_log2_lookup[a8] + v16];
LABEL_6:
    v19 = *(a2 + 114248) + 16 * ((*(*(a2 + 25520) + a7) >> mi_width_log2_lookup[a8]) & 1 | (2 * ((*(a2 + (a6 & 7) + 25528) >> mi_width_log2_lookup[a8]) & 1)) | (4 * mi_width_log2_lookup[a8])) + 4 * v17;
    ++*(v19 + 560);
    v18 = v16;
    goto LABEL_7;
  }

  LODWORD(v16) = 0;
  v18 = 0;
  v17 = partition_lookup[13 * b_width_log2_lookup[a8]];
  if (a8)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v17 == 2)
  {
    v81 = v12 >> 2;
    *(a10 + 3260) = 1;
    v52 = result;
    v86 = v18;
    nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, v18, a10 + 2560);
    v55 = **(a2 + 25360);
    *(a10 + 2560) = *v55;
    v56 = *(v55 + 16);
    v57 = *(v55 + 32);
    v58 = *(v55 + 48);
    *(a10 + 2624) = *(v55 + 64);
    *(a10 + 2608) = v58;
    *(a10 + 2592) = v57;
    *(a10 + 2576) = v56;
    v59 = *(a2 + 25568);
    v61 = *v59;
    v60 = v59[1];
    *(a10 + 2660) = *(v59 + 8);
    *(a10 + 2628) = v61;
    *(a10 + 2644) = v60;
    *(a10 + 3268) = *(a2 + 82228);
    *(a10 + 3256) = *(a2 + 26904);
    v84 = a5;
    v62 = a5;
    v33 = v86;
    encode_b_rt(v52, a2, a3, v62, a6, a7, 1, v86, a10 + 2560);
    if (a8 >= 4 && v81 + a7 < v10[123].i32[0])
    {
      *(a10 + 4108) = 1;
      nonrd_pick_sb_modes(v52, a3, a2, a6, v81 + a7, a9, v86, a10 + 3408);
      v63 = **(a2 + 25360);
      *(a10 + 3408) = *v63;
      v64 = *(v63 + 16);
      v65 = *(v63 + 32);
      v66 = *(v63 + 48);
      *(a10 + 3472) = *(v63 + 64);
      *(a10 + 3456) = v66;
      *(a10 + 3440) = v65;
      *(a10 + 3424) = v64;
      v67 = *(a2 + 25568);
      v69 = *v67;
      v68 = v67[1];
      *(a10 + 3508) = *(v67 + 8);
      *(a10 + 3476) = v69;
      *(a10 + 3492) = v68;
      *(a10 + 4116) = *(a2 + 82228);
      *(a10 + 4104) = *(a2 + 26904);
      v33 = v86;
      encode_b_rt(v52, a2, a3, v84, a6, v81 + a7, 1, v86, a10 + 3408);
    }
  }

  else if (v17 == 1)
  {
    v80 = v12 >> 2;
    *(a10 + 1564) = 1;
    v34 = result;
    v85 = v18;
    nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, v18, a10 + 864);
    v37 = **(a2 + 25360);
    *(a10 + 864) = *v37;
    v38 = *(v37 + 16);
    v39 = *(v37 + 32);
    v40 = *(v37 + 48);
    *(a10 + 928) = *(v37 + 64);
    *(a10 + 896) = v39;
    *(a10 + 912) = v40;
    *(a10 + 880) = v38;
    v41 = *(a2 + 25568);
    v43 = *v41;
    v42 = v41[1];
    *(a10 + 964) = *(v41 + 8);
    *(a10 + 932) = v43;
    *(a10 + 948) = v42;
    *(a10 + 1572) = *(a2 + 82228);
    *(a10 + 1560) = *(a2 + 26904);
    v83 = a5;
    v44 = a5;
    v33 = v85;
    encode_b_rt(v34, a2, a3, v44, a6, a7, 1, v85, a10 + 864);
    if (a8 >= 4 && v80 + a6 < v10[122].i32[0])
    {
      *(a10 + 2412) = 1;
      nonrd_pick_sb_modes(v34, a3, a2, v80 + a6, a7, a9, v85, a10 + 1712);
      v45 = **(a2 + 25360);
      *(a10 + 1712) = *v45;
      v46 = *(v45 + 16);
      v47 = *(v45 + 32);
      v48 = *(v45 + 48);
      *(a10 + 1776) = *(v45 + 64);
      *(a10 + 1760) = v48;
      *(a10 + 1744) = v47;
      *(a10 + 1728) = v46;
      v49 = *(a2 + 25568);
      v51 = *v49;
      v50 = v49[1];
      *(a10 + 1812) = *(v49 + 8);
      *(a10 + 1780) = v51;
      *(a10 + 1796) = v50;
      *(a10 + 2420) = *(a2 + 82228);
      *(a10 + 2408) = *(a2 + 26904);
      v33 = v85;
      encode_b_rt(v34, a2, a3, v83, v80 + a6, a7, 1, v85, a10 + 1712);
    }
  }

  else if (v17)
  {
    v33 = subsize_lookup[a8 + 39];
    if (a8 == 3)
    {
      v70 = result;
      nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, subsize_lookup[42], *(a10 + 4256));
      encode_b_rt(v70, a2, a3, a5, a6, a7, 1, v33, *(a10 + 4256));
    }

    else
    {
      v82 = result;
      nonrd_use_partition(result, a2);
      nonrd_use_partition(v82, a2);
      nonrd_use_partition(v82, a2);
      result = nonrd_use_partition(v82, a2);
      if (v17 == 3)
      {
        return result;
      }
    }
  }

  else
  {
    *(a10 + 716) = 1;
    v21 = result;
    v23 = v18;
    nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, v18, a10 + 16);
    v25 = **(a2 + 25360);
    *(a10 + 16) = *v25;
    v26 = *(v25 + 16);
    v27 = *(v25 + 32);
    v28 = *(v25 + 48);
    *(a10 + 80) = *(v25 + 64);
    *(a10 + 48) = v27;
    *(a10 + 64) = v28;
    *(a10 + 32) = v26;
    v29 = *(a2 + 25568);
    v30 = *(v29 + 32);
    v31 = *(v29 + 16);
    *(a10 + 84) = *v29;
    *(a10 + 116) = v30;
    *(a10 + 100) = v31;
    *(a10 + 724) = *(a2 + 82228);
    *(a10 + 712) = *(a2 + 26904);
    v32 = a5;
    v33 = v23;
    encode_b_rt(v21, a2, a3, v32, a6, a7, 1, v23, a10 + 16);
  }

  v73 = (*(a2 + 25520) + a7);
  v74 = a6 & 7;
  v75 = a2 + 25528;
  v76 = num_8x8_blocks_wide_lookup[v11];
  v77 = &partition_context_lookup[2 * v33];
  memset(v73, *v77, v76);
  v78 = v77[1];

  return memset((v75 + v74), v78, v76);
}

uint64_t nonrd_pick_partition(int32x2_t *a1, uint64_t a2, __n128 *a3, uint64_t *a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11)
{
  v133 = a1 + 21626;
  v144 = a7;
  v13 = num_8x8_blocks_wide_lookup[a7] >> 1;
  v14 = a7 > 2;
  v15 = v13 + a5;
  v16 = a1[21626].i32[0];
  v17 = v13 + a5 >= v16;
  v126 = v13;
  v18 = v13 + a6;
  v19 = a1[21627].i32[0];
  v20 = v18 >= v19;
  v21 = *(a2 + 25056);
  v22 = *(a2 + 25060);
  v23 = v18 >= v19 || v17;
  v24 = v23 ^ 1;
  if (v22 > v21)
  {
    v20 = 1;
  }

  v25 = !v20 && a7 > 2;
  if (v21 > v22)
  {
    v17 = 1;
  }

  v26 = !v17 && a7 > 2;
  v27 = a1[92462].i32[0];
  v28 = a1[23757].i32[0] < 5;
  v150 = 0uLL;
  v136 = (a2 + 25056);
  if (!a1[92465].i32[0])
  {
    v30 = a7;
    goto LABEL_37;
  }

  if (*(a2 + 25653) < a7)
  {
    v24 = 0;
    if (v15 < v16)
    {
      v25 = 0;
    }

    v29 = *(a2 + 25652);
LABEL_30:
    v32 = v18 >= v19;
    goto LABEL_31;
  }

  v29 = *(a2 + 25652);
  if (v15 < v16 && v29 >= a7)
  {
    v25 = 0;
  }

  if (v29 > a7)
  {
    v24 = 0;
  }

  if (v29 >= a7)
  {
    goto LABEL_30;
  }

  v32 = 1;
LABEL_31:
  v26 &= v32;
  v30 = a7;
  v14 = a7 > 2 && v29 < a7;
LABEL_37:
  v147 = a10;
  v132 = a1 + 92462;
  v129 = v15;
  v130 = v18;
  v34 = v18 >= v19 || a1[92463].i32[1] == 0;
  v35 = v15 >= v16 || a1[92463].i32[1] == 0;
  v127 = v27;
  if (v27 == 5)
  {
    if ((v24 | v14))
    {
      v28 = 0;
    }

    if ((v24 & v14) == 1)
    {
      v36 = ml_predict_var_partitioning(a1, a2, v30, a5, a6);
      v14 = v36 != 0;
      v24 = v36 != 3;
    }
  }

  v151 = 0;
  v152 = 0;
  v153 = 0;
  v149 = 0;
  v37 = ((v24 | v14) & 1) == 0 || v28;
  if (v26)
  {
    v38 = v34;
  }

  else
  {
    v38 = 0;
  }

  result = v25 && v35;
  v134 = v38;
  *(a11 + 716) = ((v38 | result | v14) & 1) == 0;
  v145 = 0x7FFFFFFF;
  v142 = v30;
  if (v24)
  {
    v40 = result;
    v41 = v24;
    v42 = v37;
    v43 = a6;
    nonrd_pick_sb_modes(a1, a3, a2, a5, a6, &v151, v30, a11 + 16);
    v44 = **(a2 + 25360);
    *(a11 + 16) = *v44;
    v45 = *(v44 + 16);
    v46 = *(v44 + 32);
    v47 = *(v44 + 48);
    *(a11 + 80) = *(v44 + 64);
    *(a11 + 48) = v46;
    *(a11 + 64) = v47;
    *(a11 + 32) = v45;
    v48 = *(a2 + 25568);
    v49 = *(v48 + 32);
    v50 = *(v48 + 16);
    *(a11 + 84) = *v48;
    *(a11 + 116) = v49;
    *(a11 + 100) = v50;
    *(a11 + 724) = *(a2 + 82228);
    *(a11 + 712) = v136[462];
    if (v151 == 0x7FFFFFFF)
    {
      v51 = 0;
      v141 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = a1;
      v53 = a2;
      v54 = v144;
      v37 = v42;
      v24 = v41;
      result = v40;
      v55 = a5;
      v56 = v136;
    }

    else
    {
      v57 = a5;
      v54 = v144;
      v58 = a1[2 * ((*(*(a2 + 25520) + a6) >> mi_width_log2_lookup[v144]) & 1 | (2 * ((*(a2 + (a5 & 7) + 25528) >> mi_width_log2_lookup[v144]) & 1)) | (4 * mi_width_log2_lookup[v144])) + 116654].i32[0] + v151;
      LODWORD(v151) = a1[2 * ((*(*(a2 + 25520) + a6) >> mi_width_log2_lookup[v144]) & 1 | (2 * ((*(a2 + (a5 & 7) + 25528) >> mi_width_log2_lookup[v144]) & 1)) | (4 * mi_width_log2_lookup[v144])) + 116654].i32[0] + v151;
      v145 = v58;
      v141 = v152;
      v59 = (v152 << v136[144]) + ((v136[145] * v58 + 256) >> 9);
      v153 = v59;
      v52 = a1;
      v56 = v136;
      if (v59 >= a10)
      {
        v51 = 0;
        v141 = 0x7FFFFFFFFFFFFFFFLL;
        v145 = 0x7FFFFFFF;
        v53 = a2;
        v37 = v42;
        v24 = v41;
        result = v40;
        v55 = v57;
      }

      else
      {
        v51 = HIDWORD(v151);
        if (v142 >= 3)
        {
          *(a11 + 4) = 0;
        }

        v53 = a2;
        v37 = v42;
        v24 = v41;
        result = v40;
        if (v127 == 5)
        {
          v147 = v59;
          v55 = v57;
        }

        else
        {
          v55 = v57;
          if (!v136[121] && num_pels_log2_lookup[v144] * v132[44].i32[0] > v58 && v141 < *&v132[43] >> (8 - (b_width_log2_lookup[v144] + b_height_log2_lookup[v144])))
          {
            *(a11 + 836) = *(a2 + 82336);
            v62 = v59;
            goto LABEL_130;
          }

          v147 = v59;
        }
      }
    }
  }

  else
  {
    v51 = 0;
    v141 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = a6;
    v55 = a5;
    v52 = a1;
    v53 = a2;
    v54 = v144;
    v56 = v136;
  }

  v60 = (a11 + 836);
  *(a11 + 836) = *(v53 + 82336);
  if (v14)
  {
    v61 = v52[2 * ((*(*(v53 + 25520) + v43) >> mi_width_log2_lookup[v54]) & 1 | (2 * ((*(v53 + (v55 & 7) + 25528) >> mi_width_log2_lookup[v54]) & 1)) | (4 * mi_width_log2_lookup[v54])) + 116655].i32[1];
    LODWORD(v149) = v61;
    v62 = (v56[145] * v61 + 256) >> 9;
    *&v150.f64[1] = v62;
    if (v147 <= v62)
    {
      goto LABEL_106;
    }

    if (v133->i32[0] <= v55 || v133[1].i32[0] <= v43)
    {
      v64 = 0;
      v65 = v147 > v62;
      if (v147 <= v62)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v63 = v61;
      v124 = result;
      v125 = v37;
      v128 = v24;
      v138 = v51;
      *(v53 + 82336) = *v60;
      nonrd_pick_partition(v52, v53, a3, a4, v55, v43);
      if (v151 == 0x7FFFFFFF)
      {
        goto LABEL_91;
      }

      v61 = v63 + v151;
      LODWORD(v149) = v63 + v151;
      v64 = v152;
      v62 += v153;
      *&v150.f64[0] = v152;
      *&v150.f64[1] = v62;
      v51 = v138;
      result = v124;
      v37 = v125;
      v24 = v128;
      v54 = v144;
      v65 = v147 > v62;
      if (v147 <= v62)
      {
LABEL_93:
        if (v65)
        {
          goto LABEL_94;
        }

        goto LABEL_106;
      }
    }

    v128 = v24;
    v124 = result;
    v125 = v37;
    v138 = v51;
    if (v133->i32[0] <= v55)
    {
      v66 = v126;
    }

    else
    {
      v66 = v126;
      v67 = (v126 + v43);
      if (v67 < v133[1].i32[0])
      {
        v121 = v61;
        *(v53 + 82336) = *v60;
        nonrd_pick_partition(v52, v53, a3, a4, v55, v67);
        if (v151 == 0x7FFFFFFF)
        {
          goto LABEL_91;
        }

        v61 = v121 + v151;
        LODWORD(v149) = v121 + v151;
        v64 += v152;
        v62 += v153;
        *&v150.f64[0] = v64;
        *&v150.f64[1] = v62;
        v54 = v144;
        v66 = v126;
      }
    }

    v65 = v147 > v62;
    if (v147 <= v62)
    {
      goto LABEL_92;
    }

    v68 = (v66 + v55);
    if (v68 >= v133->i32[0] || v133[1].i32[0] <= v43)
    {
LABEL_87:
      v65 = v147 > v62;
      if (v147 > v62)
      {
        v69 = (v66 + v55);
        if (v69 >= v133->i32[0] || (v70 = (v66 + v43), v70 >= v133[1].i32[0]))
        {
          v51 = v138;
          result = v124;
          v37 = v125;
          v24 = v128;
          if (v62 >= v147)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v123 = v61;
          *(v53 + 82336) = *v60;
          nonrd_pick_partition(v52, v53, a3, a4, v69, v70);
          if (v151 == 0x7FFFFFFF)
          {
            goto LABEL_91;
          }

          v61 = v123 + v151;
          LODWORD(v149) = v123 + v151;
          v64 += v152;
          v62 += v153;
          *&v150.f64[0] = v64;
          *&v150.f64[1] = v62;
          v51 = v138;
          result = v124;
          v37 = v125;
          v24 = v128;
          v54 = v144;
          if (v62 >= v147)
          {
LABEL_106:
            if (v24)
            {
              v74 = 0;
            }

            else
            {
              v74 = v37;
            }

            if (v132[1].i32[0])
            {
              v37 = v74;
            }

            goto LABEL_111;
          }
        }

LABEL_94:
        v51 = 0;
        *(a11 + 4) = 3;
        v145 = v61;
        v141 = v64;
        if (v37)
        {
          v72 = result;
        }

        else
        {
          v72 = 0;
        }

        if (v72 != 1)
        {
          goto LABEL_98;
        }

        goto LABEL_115;
      }

LABEL_92:
      v51 = v138;
      result = v124;
      v37 = v125;
      v24 = v128;
      goto LABEL_93;
    }

    v122 = v61;
    *(v53 + 82336) = *v60;
    nonrd_pick_partition(v52, v53, a3, a4, v68, v43);
    if (v151 != 0x7FFFFFFF)
    {
      v61 = v122 + v151;
      LODWORD(v149) = v122 + v151;
      v64 += v152;
      v62 += v153;
      *&v150.f64[0] = v64;
      *&v150.f64[1] = v62;
      v54 = v144;
      v66 = v126;
      goto LABEL_87;
    }

LABEL_91:
    LODWORD(v149) = 0x7FFFFFFF;
    v71.f64[0] = NAN;
    v71.f64[1] = NAN;
    v150 = vnegq_f64(v71);
    v51 = v138;
    result = v124;
    v37 = v125;
    v24 = v128;
    v54 = v144;
    goto LABEL_106;
  }

LABEL_111:
  v62 = v147;
  if (v37)
  {
    v75 = result;
  }

  else
  {
    v75 = 0;
  }

  if (v75 != 1)
  {
LABEL_98:
    v73 = v134;
    if (!v37)
    {
      v73 = 0;
    }

    if (!v73)
    {
      goto LABEL_130;
    }

LABEL_126:
    v140 = v51;
    v97 = v54;
    v98 = v62;
    v99 = v56;
    v100 = subsize_lookup[v54 + 26];
    *(v53 + 82336) = *v60;
    *(a11 + 3260) = 1;
    result = nonrd_pick_sb_modes(v52, a3, v53, v55, v43, &v149, v100, a11 + 2560);
    v101 = **(v53 + 25360);
    *(a11 + 2560) = *v101;
    v102 = *(v101 + 16);
    v103 = *(v101 + 32);
    v104 = *(v101 + 48);
    *(a11 + 2624) = *(v101 + 64);
    *(a11 + 2608) = v104;
    *(a11 + 2592) = v103;
    *(a11 + 2576) = v102;
    v105 = *(v53 + 25568);
    v107 = *v105;
    v106 = v105[1];
    *(a11 + 2660) = *(v105 + 8);
    *(a11 + 2628) = v107;
    *(a11 + 2644) = v106;
    *(a11 + 3268) = *(v53 + 82228);
    *(a11 + 3256) = v99[462];
    v108 = *&v150.f64[1];
    if (*&v150.f64[1] < v98 && v130 < v133[1].i32[0])
    {
      *(v53 + 82336) = *v60;
      *(a11 + 4108) = 1;
      result = nonrd_pick_sb_modes(v52, a3, v53, v55, v130, &v151, v100, a11 + 3408);
      v109 = **(v53 + 25360);
      *(a11 + 3408) = *v109;
      v110 = *(v109 + 16);
      v111 = *(v109 + 32);
      v112 = *(v109 + 48);
      *(a11 + 3472) = *(v109 + 64);
      *(a11 + 3456) = v112;
      *(a11 + 3440) = v111;
      *(a11 + 3424) = v110;
      v113 = *(v53 + 25568);
      v115 = *v113;
      v114 = v113[1];
      *(a11 + 3508) = *(v113 + 8);
      *(a11 + 3476) = v115;
      *(a11 + 3492) = v114;
      *(a11 + 4116) = *(v53 + 82228);
      *(a11 + 4104) = v136[462];
      if (v151 == 0x7FFFFFFF)
      {
        LODWORD(v149) = 0x7FFFFFFF;
        v116.f64[0] = NAN;
        v116.f64[1] = NAN;
        v150 = vnegq_f64(v116);
        goto LABEL_136;
      }

      LODWORD(v149) = v52[2 * ((*(*(v53 + 25520) + v43) >> mi_width_log2_lookup[v97]) & 1 | (2 * ((*(v53 + (v55 & 7) + 25528) >> mi_width_log2_lookup[v97]) & 1)) | (4 * mi_width_log2_lookup[v97])) + 116655].i32[0] + v151 + v149;
      v108 = ((*&v150.f64[0] + v152) << v136[144]) + ((v136[145] * v149 + 256) >> 9);
      *&v150.f64[0] += v152;
      *&v150.f64[1] = v108;
    }

    if (v108 < v98)
    {
      v120 = HIDWORD(v149);
      v146 = v149;
      v118 = *&v150.f64[0];
      *(a11 + 4) = 2;
      v117 = a8;
      *a8 = v146;
      *(a8 + 4) = v120;
      *(a8 + 8) = v118;
      *(a8 + 16) = v108;
      if (v146 == 0x7FFFFFFF)
      {
        goto LABEL_131;
      }

      goto LABEL_137;
    }

LABEL_136:
    result = pred_pixel_ready_reset(a11, v142);
    v117 = a8;
    v118 = v141;
    *a8 = v145;
    *(a8 + 4) = v140;
    *(a8 + 8) = v141;
    *(a8 + 16) = v98;
    if (v145 == 0x7FFFFFFF)
    {
      goto LABEL_131;
    }

    goto LABEL_137;
  }

LABEL_115:
  v76 = v37;
  v139 = v51;
  v77 = subsize_lookup[v54 + 13];
  *(v53 + 82336) = *v60;
  *(a11 + 1564) = 1;
  result = nonrd_pick_sb_modes(v52, a3, v53, v55, v43, &v149, v77, a11 + 864);
  v78 = **(v53 + 25360);
  *(a11 + 864) = *v78;
  v79 = *(v78 + 16);
  v80 = *(v78 + 32);
  v81 = *(v78 + 48);
  *(a11 + 928) = *(v78 + 64);
  *(a11 + 896) = v80;
  *(a11 + 912) = v81;
  *(a11 + 880) = v79;
  v82 = *(v53 + 25568);
  v84 = *v82;
  v83 = v82[1];
  *(a11 + 964) = *(v82 + 8);
  *(a11 + 932) = v84;
  *(a11 + 948) = v83;
  *(a11 + 1572) = *(v53 + 82228);
  *(a11 + 1560) = v56[462];
  v85 = *&v150.f64[1];
  if (*&v150.f64[1] < v62 && v129 < v133->i32[0])
  {
    *(v53 + 82336) = *v60;
    *(a11 + 2412) = 1;
    result = nonrd_pick_sb_modes(v52, a3, v53, v129, v43, &v151, v77, a11 + 1712);
    v86 = **(v53 + 25360);
    *(a11 + 1712) = *v86;
    v87 = *(v86 + 16);
    v88 = *(v86 + 32);
    v89 = *(v86 + 48);
    *(a11 + 1776) = *(v86 + 64);
    *(a11 + 1760) = v89;
    *(a11 + 1744) = v88;
    *(a11 + 1728) = v87;
    v90 = *(v53 + 25568);
    v92 = *v90;
    v91 = v90[1];
    *(a11 + 1812) = *(v90 + 8);
    *(a11 + 1780) = v92;
    *(a11 + 1796) = v91;
    *(a11 + 2420) = *(v53 + 82228);
    *(a11 + 2408) = v56[462];
    if (v151 == 0x7FFFFFFF)
    {
      LODWORD(v149) = 0x7FFFFFFF;
      v93.f64[0] = NAN;
      v93.f64[1] = NAN;
      v150 = vnegq_f64(v93);
      goto LABEL_122;
    }

    v94 = v52[2 * ((*(*(v53 + 25520) + v43) >> mi_width_log2_lookup[v144]) & 1 | (2 * ((*(v53 + (v55 & 7) + 25528) >> mi_width_log2_lookup[v144]) & 1)) | (4 * mi_width_log2_lookup[v144])) + 116654].i32[1] + v151;
    LODWORD(v151) = v52[2 * ((*(*(v53 + 25520) + v43) >> mi_width_log2_lookup[v144]) & 1 | (2 * ((*(v53 + (v55 & 7) + 25528) >> mi_width_log2_lookup[v144]) & 1)) | (4 * mi_width_log2_lookup[v144])) + 116654].i32[1] + v151;
    v95 = v149 + v94;
    LODWORD(v149) = v95;
    v85 = ((*&v150.f64[0] + v152) << v56[144]) + ((v56[145] * v95 + 256) >> 9);
    *&v150.f64[0] += v152;
    *&v150.f64[1] = v85;
  }

  if (v85 < v62)
  {
    v51 = HIDWORD(v149);
    v145 = v149;
    v141 = *&v150.f64[0];
    *(a11 + 4) = 1;
    v62 = v85;
    v54 = v144;
    goto LABEL_123;
  }

LABEL_122:
  result = pred_pixel_ready_reset(a11, v142);
  v54 = v144;
  v51 = v139;
LABEL_123:
  v96 = v134;
  if (!v76)
  {
    v96 = 0;
  }

  if (v96)
  {
    goto LABEL_126;
  }

LABEL_130:
  v117 = a8;
  v118 = v141;
  *a8 = v145;
  *(a8 + 4) = v51;
  *(a8 + 8) = v141;
  *(a8 + 16) = v62;
  if (v145 == 0x7FFFFFFF)
  {
LABEL_131:
    *v117 = 0x7FFFFFFF;
    v119.f64[0] = NAN;
    v119.f64[1] = NAN;
    *(v117 + 8) = vnegq_f64(v119);
    return result;
  }

LABEL_137:
  result = fill_mode_info_sb(&v52[21462], v53, v55, v43, v142, a11);
  if (a9)
  {
    if (v118 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return encode_sb_rt(v52, v53, a3, a4, v55, v43, v142 == 12, v142, a11);
    }
  }

  return result;
}

__n128 set_offsets_0(int32x2_t *a1, __n128 *a2, uint64_t a3, int a4, signed __int32 a5, int a6)
{
  v8 = num_8x8_blocks_wide_lookup[a6];
  v9 = num_8x8_blocks_high_lookup[a6];
  v10 = (a3 + 24832);
  v11 = *(a3 + 24920);
  v12 = *(a3 + 24924);
  *(a3 + 24976) = *(a3 + 25448) + ((2 * a5) >> v11);
  v13 = 2 * (a4 & 7);
  v14 = a3 + 25472;
  *(a3 + 24984) = a3 + 25472 + (v13 >> v12);
  v15 = *(a3 + 25456);
  v16 = *(a3 + 25056);
  v17 = v10[57];
  *(a3 + 25112) = v15 + ((2 * a5) >> v16);
  *(a3 + 25120) = v14 + (v13 >> v17) + 16;
  v18 = v10[90];
  *(a3 + 25248) = *(a3 + 25464) + ((2 * a5) >> v18);
  v19 = v10[91];
  *(a3 + 25256) = v14 + (v13 >> v19) + 32;
  v20 = v10[130];
  v21 = a5 + v20 * a4;
  v22 = (*&a1[21647] + 8 * v21);
  *(a3 + 25360) = v22;
  *v22 = *&a1[21640] + 68 * v21;
  v23 = a1[21627].i32[0];
  *(a3 + 25568) = *(a3 + 25576) + 36 * (a5 + v23 * a4);
  v24 = (8 * a5) >> v11;
  v25 = *&a1[23743] + 224 * a1[21580].i32[0];
  v26 = *(v25 + 144);
  v27 = *(v25 + 152);
  v28 = *(v25 + 160);
  v29 = *(v25 + 104);
  v30 = (8 * a4) >> v12;
  v31 = v24;
  v32 = (8 * a5) >> v16;
  v33 = (8 * a4) >> v17;
  LODWORD(v25) = *(v25 + 124);
  *(a3 + 24928) = v26 + v29 * v30 + v31;
  v10[26] = v29;
  *(a3 + 25064) = v27 + v25 * v33 + v32;
  v10[60] = v25;
  LODWORD(v26) = (8 * a5) >> v18;
  v34 = (8 * a4) >> v19;
  v35 = v26;
  *(a3 + 25200) = v28 + v25 * v34 + v26;
  v36 = a1[21626].i32[0];
  v10[94] = v25;
  v10[256] = (8 * (v9 + a4)) ^ 0xFFFFFFFC;
  v10[254] = (8 * (v8 + a5)) ^ 0xFFFFFFFC;
  v10[257] = (8 * (v36 - a4)) | 4;
  v10[255] = (8 * (v23 - a5)) | 4;
  v10[144] = -64 * a4;
  v10[145] = (v36 - (v9 + a4)) << 6;
  v10[142] = -64 * a5;
  v10[143] = (v23 - (v8 + a5)) << 6;
  if (a4)
  {
    *(a3 + 25376) = v22[-v20];
    if (a2->n128_u32[2] < a5)
    {
LABEL_3:
      v37 = *(v22 - 1);
      goto LABEL_6;
    }
  }

  else
  {
    *(a3 + 25376) = 0;
    if (a2->n128_u32[2] < a5)
    {
      goto LABEL_3;
    }
  }

  v37 = 0;
LABEL_6:
  *(a3 + 25368) = v37;
  v38 = a1[23805];
  v39 = *(*&v38 + 56);
  v40 = *(*&v38 + 64);
  v41 = *(*&v38 + 72);
  v42 = *(*&v38 + 16);
  v43 = *(*&v38 + 36);
  *(a3 + 25440) = v38;
  *(a3 + 8216) = v39 + v42 * v30 + v31;
  *(a3 + 8224) = v42;
  *(a3 + 16520) = v40 + v43 * v33 + v32;
  *(a3 + 16528) = v43;
  *(a3 + 24824) = v41 + v43 * v34 + v35;
  *v10 = v43;
  v44 = a1[26499];
  *(a3 + 25632) = vrev64_s32(v44);
  if (a1[23797].i32[0] == 1)
  {
    v45 = a4 / 2;
    v46 = a4 / 2 + ((v9 + 1) >> 1);
    if ((v36 + 1) / 2 < v46)
    {
      v46 = (v36 + 1) / 2;
    }

    v47 = 0.0;
    v67 = v44.i32[0];
    if (v45 >= v46)
    {
      v52 = 0.0;
    }

    else
    {
      v48 = (v23 + 1) / 2;
      v49 = v8 + 1;
      v50 = a5 / 2;
      v51 = a5 / 2 + (v49 >> 1);
      if (v48 < v51)
      {
        v51 = (v23 + 1) / 2;
      }

      v52 = 0.0;
      if (v50 < v51)
      {
        v53 = v45;
        v54 = v46;
        v55 = v50 - v51;
        v56 = *&a1[24327] + 8 * v45 * v48 + 8 * v50;
        v57 = 8 * v48;
        do
        {
          v58 = v56;
          v59 = v55;
          do
          {
            v60 = *v58++;
            v52 = v52 + log(v60);
            v47 = v47 + 1.0;
          }

          while (!__CFADD__(v59++, 1));
          ++v53;
          v56 += v57;
        }

        while (v53 != v54);
      }
    }

    v62 = (exp(v52 / v47) * v67);
    v63 = v62 & ~(v62 >> 31);
    *(a3 + 25636) = v63;
    v64 = v63 >> 6;
    if (v62 >= 64)
    {
      v65 = v64;
    }

    else
    {
      v65 = v64 + 1;
    }

    *(a3 + 25620) = v65;
  }

  result = *a2;
  *(a3 + 25336) = *a2;
  return result;
}

int32x2_t *nonrd_select_partition(int32x2_t *result, uint64_t a2, __n128 *a3, unsigned __int8 **a4, uint64_t *a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v10 = b_width_log2_lookup[a8];
  v11 = result + 21626;
  v12 = (1 << v10) + (1 << v10 < 0 ? 3 : 0);
  v77 = 0;
  v13 = result[92516].i32[1];
  LODWORD(v77) = 0x7FFFFFFF;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v78 = vnegq_f64(v14);
  if (result[21626].i32[0] > a6 && result[21627].i32[0] > a7)
  {
    v15 = a2 + 25652;
    if (a8 <= 2)
    {
      LODWORD(v16) = 0;
      v17 = partition_lookup[13 * v10];
    }

    else
    {
      v16 = **a4;
      v17 = partition_lookup[13 * v10 + v16];
      if (a8 == 9 && v16 == 9)
      {
        v18 = 2310;
LABEL_21:
        *v15 = v18;
        return nonrd_pick_partition(result, a2, a3, a5, a6, a7, 9u, a9, 0, 0x7FFFFFFFFFFFFFFFLL, a10);
      }

      if (v13)
      {
        v31 = 3;
      }

      else
      {
        v31 = 6;
      }

      if (a8 == 9 && v17 && v31 <= v16)
      {
        v18 = 2307;
        goto LABEL_21;
      }

      if (a8 == 6 && v17)
      {
        *v15 = 1539;
        return nonrd_pick_partition(result, a2, a3, a5, a6, a7, 6u, a9, 0, 0x7FFFFFFFFFFFFFFFLL, a10);
      }
    }

    v73 = v12 >> 2;
    if (v17 == 2)
    {
      *(a10 + 3260) = 1;
      v19 = result;
      v20 = a3;
      v21 = a6;
      result = nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, v16, a10 + 2560);
      v22 = a2;
      v23 = a7;
      v50 = **(a2 + 25360);
      *(a10 + 2560) = *v50;
      v51 = *(v50 + 16);
      v52 = *(v50 + 32);
      v53 = *(v50 + 48);
      *(a10 + 2624) = *(v50 + 64);
      *(a10 + 2608) = v53;
      *(a10 + 2592) = v52;
      *(a10 + 2576) = v51;
      v54 = *(a2 + 25568);
      v56 = *v54;
      v55 = v54[1];
      *(a10 + 2660) = *(v54 + 8);
      *(a10 + 2628) = v56;
      *(a10 + 2644) = v55;
      *(a10 + 3268) = *(a2 + 82228);
      *(a10 + 3256) = *(v15 + 1252);
      if (v73 + a7 < v11[1].i32[0])
      {
        *(a10 + 4108) = 1;
        result = nonrd_pick_sb_modes(v19, v20, a2, v21, v73 + a7, &v77, v16, a10 + 3408);
        v22 = a2;
        v23 = a7;
        v57 = **(a2 + 25360);
        *(a10 + 3408) = *v57;
        v58 = *(v57 + 16);
        v59 = *(v57 + 32);
        v60 = *(v57 + 48);
        *(a10 + 3472) = *(v57 + 64);
        *(a10 + 3456) = v60;
        *(a10 + 3440) = v59;
        *(a10 + 3424) = v58;
        v61 = *(a2 + 25568);
        v63 = *v61;
        v62 = v61[1];
        *(a10 + 3508) = *(v61 + 8);
        *(a10 + 3476) = v63;
        *(a10 + 3492) = v62;
        *(a10 + 4116) = *(a2 + 82228);
        *(a10 + 4104) = *(v15 + 1252);
        if (v77 != 0x7FFFFFFF)
        {
          v64 = v78.f64[0];
          if (*&v78.f64[0] != 0x7FFFFFFFFFFFFFFFLL && *a9 != 0x7FFFFFFF)
          {
            v65 = *(a9 + 8);
            if (v65 != 0x7FFFFFFFFFFFFFFFLL)
            {
              *a9 += v77;
              *(a9 + 8) = v65 + *&v64;
            }
          }
        }
      }
    }

    else if (v17 == 1)
    {
      *(a10 + 1564) = 1;
      v19 = result;
      v20 = a3;
      v33 = a6;
      result = nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, v16, a10 + 864);
      v22 = a2;
      v23 = a7;
      v34 = **(a2 + 25360);
      *(a10 + 864) = *v34;
      v35 = *(v34 + 16);
      v36 = *(v34 + 32);
      v37 = *(v34 + 48);
      *(a10 + 928) = *(v34 + 64);
      *(a10 + 896) = v36;
      *(a10 + 912) = v37;
      *(a10 + 880) = v35;
      v38 = *(a2 + 25568);
      v40 = *v38;
      v39 = v38[1];
      *(a10 + 964) = *(v38 + 8);
      *(a10 + 932) = v40;
      *(a10 + 948) = v39;
      *(a10 + 1572) = *(a2 + 82228);
      *(a10 + 1560) = *(v15 + 1252);
      v21 = v33;
      if (v73 + v33 < v11->i32[0])
      {
        *(a10 + 2412) = 1;
        result = nonrd_pick_sb_modes(v19, v20, a2, v73 + v33, a7, &v77, v16, a10 + 1712);
        v22 = a2;
        v23 = a7;
        v41 = **(a2 + 25360);
        *(a10 + 1712) = *v41;
        v42 = *(v41 + 16);
        v43 = *(v41 + 32);
        v44 = *(v41 + 48);
        *(a10 + 1776) = *(v41 + 64);
        *(a10 + 1760) = v44;
        *(a10 + 1744) = v43;
        *(a10 + 1728) = v42;
        v45 = *(a2 + 25568);
        v47 = *v45;
        v46 = v45[1];
        *(a10 + 1812) = *(v45 + 8);
        *(a10 + 1780) = v47;
        *(a10 + 1796) = v46;
        *(a10 + 2420) = *(a2 + 82228);
        *(a10 + 2408) = *(v15 + 1252);
        if (v77 != 0x7FFFFFFF)
        {
          v48 = v78.f64[0];
          if (*&v78.f64[0] != 0x7FFFFFFFFFFFFFFFLL && *a9 != 0x7FFFFFFF)
          {
            v49 = *(a9 + 8);
            if (v49 != 0x7FFFFFFFFFFFFFFFLL)
            {
              *a9 += v77;
              *(a9 + 8) = v49 + *&v48;
            }
          }
        }
      }
    }

    else if (v17)
    {
      v66 = result;
      v69 = a6;
      nonrd_select_partition(result, a2);
      v19 = v66;
      v70 = v66;
      v71 = a2;
      v20 = a3;
      v21 = v69;
      nonrd_select_partition(v70, v71);
      nonrd_select_partition(v19, a2);
      result = nonrd_select_partition(v19, a2);
      v22 = a2;
      v23 = a7;
    }

    else
    {
      *(a10 + 716) = 1;
      v19 = result;
      v20 = a3;
      v21 = a6;
      result = nonrd_pick_sb_modes(result, a3, a2, a6, a7, a9, v16, a10 + 16);
      v22 = a2;
      v23 = a7;
      v24 = **(a2 + 25360);
      *(a10 + 16) = *v24;
      v25 = *(v24 + 16);
      v26 = *(v24 + 32);
      v27 = *(v24 + 48);
      *(a10 + 80) = *(v24 + 64);
      *(a10 + 48) = v26;
      *(a10 + 64) = v27;
      *(a10 + 32) = v25;
      v28 = *(a2 + 25568);
      v29 = *(v28 + 32);
      v30 = *(v28 + 16);
      *(a10 + 84) = *v28;
      *(a10 + 116) = v29;
      *(a10 + 100) = v30;
      *(a10 + 724) = *(a2 + 82228);
      *(a10 + 712) = *(v15 + 1252);
    }

    if (a8 == 12)
    {
      return encode_sb_rt(v19, v22, v20, a5, v21, v23, 1, 0xCu, a10);
    }
  }

  return result;
}

uint64_t scale_partitioning_svc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v8 = 1;
  v9 = (a1 + 4 * (*(a1 + 754544) - 1));
  if (v9[231624] > a5)
  {
    v10 = 1 << b_width_log2_lookup[a4];
    v11 = ((v10 >> 2) + a7);
    v12 = *(a1 + 173008);
    v13 = ((v10 >> 2) + a8);
    v14 = *(a1 + 173016);
    if (v9[231636] > a6 && v11 < v12 && v13 < v14)
    {
      v17 = *(*(a1 + 926440) + a6 + v9[231612] * a5);
      if (*(a1 + 926396) || *(a2 + 82355) || v17 >= 9)
      {
        if (v17 >= 9)
        {
          v18 = 12;
        }

        else
        {
          v18 = v17 + 3;
        }

        v19 = partition_lookup[13 * b_width_log2_lookup[a4] + v18];
        v20 = subsize_lookup[13 * v19 + a4];
        if (v20 <= 2)
        {
LABEL_15:
          if (v14 <= a8)
          {
            return 0;
          }

          LODWORD(v13) = a8;
          LOBYTE(v20) = v18;
          if (v12 <= a7)
          {
            return 0;
          }

          goto LABEL_17;
        }

        switch(v19)
        {
          case 2:
            if (v14 > a8 && v12 > a7)
            {
              v35 = a8 + *(a3 + 440) * a7;
              v36 = *(a1 + 173176);
              *(a3 + 448) = v36 + 8 * v35;
              v37 = (*(a1 + 173120) + 68 * v35);
              *(v36 + 8 * v35) = v37;
              *(a2 + 25568) = *(a2 + 25576) + 36 * (a8 + v14 * a7);
              *v37 = v20;
            }

            if (v20 > 0xB || v12 <= a7)
            {
              return 0;
            }

            break;
          case 1:
            if (v14 <= a8)
            {
              return 0;
            }

            if (v12 > a7)
            {
              v32 = a8 + *(a3 + 440) * a7;
              v33 = *(a1 + 173176);
              *(a3 + 448) = v33 + 8 * v32;
              v34 = (*(a1 + 173120) + 68 * v32);
              *(v33 + 8 * v32) = v34;
              *(a2 + 25568) = *(a2 + 25576) + 36 * (a8 + v14 * a7);
              *v34 = v20;
            }

            a7 += v10 >> 2;
            LODWORD(v13) = a8;
            if (v20 > 0xB)
            {
              return 0;
            }

            break;
          case 0:
            goto LABEL_15;
          default:
            v39 = a7;
            if (!(scale_partitioning_svc)())
            {
              v31 = v10 >> 3;
              if (!scale_partitioning_svc(a1, a2, a3, v20, (v31 + a5), a6, v11, a8) && !scale_partitioning_svc(a1, a2, a3, v20, a5, (v31 + a6), v39, v13) && !scale_partitioning_svc(a1, a2, a3, v20, (v31 + a5), (v31 + a6), v11, v13))
              {
                return 0;
              }
            }

            return 1;
        }

LABEL_17:
        v21 = v13 + *(a3 + 440) * a7;
        v22 = *(a1 + 173176);
        *(a3 + 448) = v22 + 8 * v21;
        v23 = (*(a1 + 173120) + 68 * v21);
        *(v22 + 8 * v21) = v23;
        *(a2 + 25568) = *(a2 + 25576) + 36 * (v13 + a7 * v14);
        *v23 = v20;
        return 0;
      }
    }

    return 1;
  }

  return v8;
}

uint64_t update_partition_svc(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = result + 173008;
  if (*(result + 173008) <= a3)
  {
    return result;
  }

  v5 = a4;
  v6 = a3;
  v7 = result;
  v8 = a4 + *(result + 173020) * a3;
  while (1)
  {
    if (*(v4 + 8) <= v5)
    {
      return result;
    }

    v9 = *(v7 + 926440);
    v10 = v8;
    v11 = partition_lookup[13 * b_width_log2_lookup[a2] + **(*(v4 + 168) + 8 * v8)];
    v12 = subsize_lookup[13 * v11 + a2];
    if (v12 < 3)
    {
      LOBYTE(v12) = a2;
LABEL_29:
      *(v9 + v10) = v12;
      return result;
    }

    v13 = 1 << b_width_log2_lookup[a2] >> 2;
    if (v11 == 2)
    {
      *(v9 + v8) = v12;
      if (v13 + v5 >= *(v4 + 8))
      {
        return result;
      }

      v15 = v13 + v8;
LABEL_28:
      v10 = v15;
      goto LABEL_29;
    }

    if (v11 == 1)
    {
      *(v9 + v8) = v12;
      if (v13 + v6 >= *v4)
      {
        return result;
      }

      v15 = v8 + *(v4 + 12) * v13;
      goto LABEL_28;
    }

    if (!v11)
    {
      break;
    }

    update_partition_svc(v7, subsize_lookup[13 * v11 + a2], v6, v5);
    v14 = v13 + v6;
    update_partition_svc(v7, v12, (v13 + v6), v5);
    v5 = (v13 + v5);
    result = update_partition_svc(v7, v12, v6, v5);
    v8 = v5 + *(v4 + 12) * (v13 + v6);
    v6 = (v13 + v6);
    a2 = v12;
    if (*v4 <= v14)
    {
      return result;
    }
  }

  *(v9 + v8) = a2;
  if (a2 == 12)
  {
    v16 = *v4;
    if (v6 < *v4)
    {
      if (v5 < *(v4 + 8))
      {
        *(v9 + v8) = 12;
        v16 = *v4;
      }

      if (v6 < v16 && v5 + 4 < *(v4 + 8))
      {
        *(v9 + v8 + 4) = 12;
        v16 = *v4;
      }
    }

    if (v6 + 4 < v16)
    {
      if (v5 < *(v4 + 8))
      {
        *(v9 + v8 + 4 * *(v4 + 12)) = 12;
        v16 = *v4;
      }

      if (v6 + 4 < v16 && v5 + 4 < *(v4 + 8))
      {
        v10 = v8 + 4 * *(v4 + 12) + 4;
        LOBYTE(v12) = 12;
        goto LABEL_29;
      }
    }
  }

  return result;
}

uint64_t chroma_check(uint64_t result, uint64_t a2, unsigned __int8 a3, unsigned int a4, int a5, int a6)
{
  if (!a5)
  {
    if (*(result + 190056) < 9 || *(result + 933888) >= a4 || *(result + 933832) && ((v7 = *(result + 933840), v6 = *(result + 933844), v7 <= v6) ? (v8 = v7 <= 2 * v6) : (v8 = 0), !v8))
    {
      v9 = (a2 + 82352);
      v10 = (a2 + 24832);
      if (*(result + 190380) != 1 || a6 == 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 5;
      }

      v13 = a3;
      v14 = result + 740472;
      v15 = a4 >> v12;
      v16 = ss_size_lookup[4 * a3 + 2 * *(a2 + 25056) + *(a2 + 25060)];
      if (v16 == 13)
      {
        v18 = -1;
      }

      else
      {
        v18 = (*(v14 + (v16 << 6)))(*(a2 + 16520), *(a2 + 16528), *(a2 + 25064), *(a2 + 25072));
      }

      *v9 = v18 > v15;
      v19 = ss_size_lookup[4 * v13 + 2 * v10[90] + v10[91]];
      if (v19 == 13)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = (*(v14 + (v19 << 6)))(*(a2 + 24824), *v10, *(a2 + 25200), v10[94]);
      }

      v9[1] = result > v15;
    }
  }

  return result;
}

uint64_t fill_variance_4x4avg(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5, int a6, _DWORD *a7, char a8, int a9, int a10, int a11)
{
  v12 = a5 < a9 && a6 < a10;
  if ((a8 & 8) == 0)
  {
    if (a11)
    {
      if (v12)
      {
        v13 = (result + a6 * a2 + a5);
        v14 = (v13 + a2);
        v15.i32[0] = *v13;
        v15.i32[1] = *v14;
        v16 = (v14 + a2);
        v17.i32[0] = *v16;
        v17.i32[1] = *(v16 + a2);
        v18 = ((vaddlvq_u16(vaddl_u8(v15, v17)) + 8) >> 4) - 128;
        v19 = v18 * v18;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      v48 = 0;
      v49 = 0;
      a7[20] = v19;
      a7[21] = v18;
      a7[22] = 0;
      v50 = a5 + 4;
      if (v50 < a9 && a6 < a10)
      {
        v52 = (result + a6 * a2 + v50);
        v53 = (v52 + a2);
        v54.i32[0] = *v52;
        v54.i32[1] = *v53;
        v55 = (v53 + a2);
        v56.i32[0] = *v55;
        v56.i32[1] = *(v55 + a2);
        v49 = ((vaddlvq_u16(vaddl_u8(v54, v56)) + 8) >> 4) - 128;
        v48 = v49 * v49;
      }

      v57 = 0;
      a7[56] = v48;
      a7[57] = v49;
      a7[58] = 0;
      v58 = a6 + 4;
      v59 = 0;
      if (a5 < a9 && v58 < a10)
      {
        v60 = (result + v58 * a2 + a5);
        v61 = (v60 + a2);
        v62.i32[0] = *v60;
        v62.i32[1] = *v61;
        v63 = (v61 + a2);
        v64.i32[0] = *v63;
        v64.i32[1] = *(v63 + a2);
        v59 = ((vaddlvq_u16(vaddl_u8(v62, v64)) + 8) >> 4) - 128;
        v57 = v59 * v59;
      }

      v65 = 0;
      a7[92] = v57;
      a7[93] = v59;
      a7[94] = 0;
      if (v50 < a9)
      {
        v66 = 0;
        if (v58 < a10)
        {
          v67 = (result + v58 * a2 + v50);
          v68 = (v67 + a2);
          v69.i32[0] = *v67;
          v69.i32[1] = *v68;
          v70 = (v68 + a2);
          v71.i32[0] = *v70;
          v71.i32[1] = *(v70 + a2);
          v72 = vaddl_u8(v69, v71);
LABEL_44:
          v66 = ((vaddlvq_u16(v72) + 8) >> 4) - 128;
LABEL_72:
          v65 = v66 * v66;
          goto LABEL_73;
        }

        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (v12)
    {
      v28 = (result + a6 * a2 + a5);
      v29 = (v28 + a2);
      v30.i32[0] = *v28;
      v30.i32[1] = *v29;
      v31 = (v29 + a2);
      v32.i32[0] = *v31;
      v32.i32[1] = *(v31 + a2);
      v33 = vaddlvq_u16(vaddl_u8(v30, v32));
      v34 = (a3 + a6 * a4 + a5);
      v35 = (v34 + a4);
      v30.i32[0] = *v34;
      v30.i32[1] = *v35;
      v36 = (v35 + a4);
      v32.i32[0] = *v36;
      v32.i32[1] = *(v36 + a4);
      v12 = ((v33 + 8) >> 4) - ((vaddlvq_u16(vaddl_u8(v30, v32)) + 8) >> 4);
      v37 = v12 * v12;
    }

    else
    {
      v37 = 0;
    }

    v95 = 0;
    v96 = 0;
    a7[20] = v37;
    a7[21] = v12;
    a7[22] = 0;
    v97 = a5 + 4;
    if (v97 < a9 && a6 < a10)
    {
      v99 = (result + a6 * a2 + v97);
      v100 = (v99 + a2);
      v101.i32[0] = *v99;
      v101.i32[1] = *v100;
      v102 = (v100 + a2);
      v103.i32[0] = *v102;
      v103.i32[1] = *(v102 + a2);
      v104 = vaddlvq_u16(vaddl_u8(v101, v103));
      v105 = (a3 + a6 * a4 + v97);
      v106 = (v105 + a4);
      v101.i32[0] = *v105;
      v101.i32[1] = *v106;
      v107 = (v106 + a4);
      v103.i32[0] = *v107;
      v103.i32[1] = *(v107 + a4);
      v96 = ((v104 + 8) >> 4) - ((vaddlvq_u16(vaddl_u8(v101, v103)) + 8) >> 4);
      v95 = v96 * v96;
    }

    v108 = 0;
    a7[56] = v95;
    a7[57] = v96;
    a7[58] = 0;
    v109 = a6 + 4;
    v110 = 0;
    if (a5 < a9 && v109 < a10)
    {
      v111 = (result + v109 * a2 + a5);
      v112 = (v111 + a2);
      v113.i32[0] = *v111;
      v113.i32[1] = *v112;
      v114 = (v112 + a2);
      v115.i32[0] = *v114;
      v115.i32[1] = *(v114 + a2);
      v116 = vaddlvq_u16(vaddl_u8(v113, v115));
      v117 = (a3 + v109 * a4 + a5);
      v118 = (v117 + a4);
      v113.i32[0] = *v117;
      v113.i32[1] = *v118;
      v119 = (v118 + a4);
      v115.i32[0] = *v119;
      v115.i32[1] = *(v119 + a4);
      v110 = ((v116 + 8) >> 4) - ((vaddlvq_u16(vaddl_u8(v113, v115)) + 8) >> 4);
      v108 = v110 * v110;
    }

    v65 = 0;
    a7[92] = v108;
    a7[93] = v110;
    a7[94] = 0;
    if (v97 >= a9)
    {
      goto LABEL_74;
    }

    v66 = 0;
    if (v109 >= a10)
    {
      goto LABEL_73;
    }

    v120 = (result + v109 * a2 + v97);
    v121 = (v120 + a2);
    v122.i32[0] = *v120;
    v122.i32[1] = *v121;
    v123 = (v121 + a2);
    v124.i32[0] = *v123;
    v124.i32[1] = *(v123 + a2);
    v125 = vaddlvq_u16(vaddl_u8(v122, v124));
    v126 = (a3 + v109 * a4 + v97);
    v127 = (v126 + a4);
    v122.i32[0] = *v126;
    v122.i32[1] = *v127;
    v128 = (v127 + a4);
    v129 = (v125 + 8) >> 4;
    v124.i32[0] = *v128;
    v124.i32[1] = *(v128 + a4);
    v130 = vaddl_u8(v122, v124);
LABEL_71:
    v66 = v129 - ((vaddlvq_u16(v130) + 8) >> 4);
    goto LABEL_72;
  }

  if (!a11)
  {
    v38 = a3 + a6 * a4;
    if (v12)
    {
      v39 = (2 * (result + a6 * a2 + a5));
      v40 = 2 * a2;
      v41.i64[0] = *v39;
      v41.i64[1] = *(v39 + v40);
      v42 = (v39 + 4 * a2);
      v43.i64[0] = *v42;
      v43.i64[1] = *(v42 + v40);
      LODWORD(v42) = vaddlvq_u16(vaddq_s16(v43, v41)) + 8;
      v44 = (2 * (v38 + a5));
      v45 = 2 * a4;
      v41.i64[0] = *v44;
      v41.i64[1] = *(v44 + v45);
      v46 = (v44 + 4 * a4);
      v43.i64[0] = *v46;
      v43.i64[1] = *(v46 + v45);
      v12 = (v42 >> 4) - ((vaddlvq_u16(vaddq_s16(v43, v41)) + 8) >> 4);
      v47 = v12 * v12;
    }

    else
    {
      v47 = 0;
    }

    v131 = 0;
    v132 = 0;
    a7[20] = v47;
    a7[21] = v12;
    a7[22] = 0;
    v133 = a5 + 4;
    if (v133 < a9 && a6 < a10)
    {
      v135 = (2 * (result + a6 * a2 + v133));
      v136 = 2 * a2;
      v137.i64[0] = *v135;
      v137.i64[1] = *(v135 + v136);
      v138 = (v135 + 4 * a2);
      v139.i64[0] = *v138;
      v139.i64[1] = *(v138 + v136);
      LODWORD(v138) = vaddlvq_u16(vaddq_s16(v139, v137)) + 8;
      v140 = (2 * (v38 + v133));
      v141 = 2 * a4;
      v137.i64[0] = *v140;
      v137.i64[1] = *(v140 + v141);
      v142 = (v140 + 4 * a4);
      v139.i64[0] = *v142;
      v139.i64[1] = *(v142 + v141);
      v132 = (v138 >> 4) - ((vaddlvq_u16(vaddq_s16(v139, v137)) + 8) >> 4);
      v131 = v132 * v132;
    }

    v143 = 0;
    a7[56] = v131;
    a7[57] = v132;
    a7[58] = 0;
    v144 = a6 + 4;
    v145 = 0;
    if (a5 < a9 && v144 < a10)
    {
      v146 = (2 * (result + v144 * a2 + a5));
      v147 = 2 * a2;
      v148.i64[0] = *v146;
      v148.i64[1] = *(v146 + v147);
      v149 = (v146 + 4 * a2);
      v150.i64[0] = *v149;
      v150.i64[1] = *(v149 + v147);
      LODWORD(v147) = vaddlvq_u16(vaddq_s16(v150, v148)) + 8;
      v151 = (2 * (a3 + v144 * a4 + a5));
      v152 = 2 * a4;
      v148.i64[0] = *v151;
      v148.i64[1] = *(v151 + v152);
      v153 = (v151 + 4 * a4);
      v150.i64[0] = *v153;
      v150.i64[1] = *(v153 + v152);
      v145 = (v147 >> 4) - ((vaddlvq_u16(vaddq_s16(v150, v148)) + 8) >> 4);
      v143 = v145 * v145;
    }

    v65 = 0;
    a7[92] = v143;
    a7[93] = v145;
    a7[94] = 0;
    if (v133 >= a9)
    {
      goto LABEL_74;
    }

    v66 = 0;
    if (v144 >= a10)
    {
      goto LABEL_73;
    }

    v154 = (2 * (result + v144 * a2 + v133));
    v155 = 2 * a2;
    v156.i64[0] = *v154;
    v156.i64[1] = *(v154 + v155);
    v157 = (v154 + 4 * a2);
    v158.i64[0] = *v157;
    v158.i64[1] = *(v157 + v155);
    LODWORD(v157) = vaddlvq_u16(vaddq_s16(v158, v156)) + 8;
    v159 = (2 * (a3 + v144 * a4 + v133));
    v160 = 2 * a4;
    v156.i64[0] = *v159;
    v156.i64[1] = *(v159 + v160);
    v129 = v157 >> 4;
    v161 = (v159 + 4 * a4);
    v158.i64[0] = *v161;
    v158.i64[1] = *(v161 + v160);
    v130 = vaddq_s16(v158, v156);
    goto LABEL_71;
  }

  v20 = result + a6 * a2;
  if (v12)
  {
    v21 = (2 * (v20 + a5));
    v22 = 2 * a2;
    v23.i64[0] = *v21;
    v23.i64[1] = *(v21 + v22);
    v24 = (v21 + 4 * a2);
    v25.i64[0] = *v24;
    v25.i64[1] = *(v24 + v22);
    v26 = ((vaddlvq_u16(vaddq_s16(v25, v23)) + 8) >> 4) - 128;
    v27 = v26 * v26;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v73 = 0;
  v74 = 0;
  a7[20] = v27;
  a7[21] = v26;
  a7[22] = 0;
  v75 = a5 + 4;
  if ((a5 + 4) < a9 && a6 < a10)
  {
    v77 = (2 * (v20 + v75));
    v78 = 2 * a2;
    v79.i64[0] = *v77;
    v79.i64[1] = *(v77 + v78);
    v80 = (v77 + 4 * a2);
    v81.i64[0] = *v80;
    v81.i64[1] = *(v80 + v78);
    v74 = ((vaddlvq_u16(vaddq_s16(v81, v79)) + 8) >> 4) - 128;
    v73 = v74 * v74;
  }

  v82 = 0;
  a7[56] = v73;
  a7[57] = v74;
  a7[58] = 0;
  v83 = a6 + 4;
  v84 = 0;
  if (a5 < a9 && v83 < a10)
  {
    v85 = (2 * (result + v83 * a2 + a5));
    v86 = 2 * a2;
    v87.i64[0] = *v85;
    v87.i64[1] = *(v85 + v86);
    v88 = (v85 + 4 * a2);
    v89.i64[0] = *v88;
    v89.i64[1] = *(v88 + v86);
    v84 = ((vaddlvq_u16(vaddq_s16(v89, v87)) + 8) >> 4) - 128;
    v82 = v84 * v84;
  }

  v65 = 0;
  a7[92] = v82;
  a7[93] = v84;
  a7[94] = 0;
  if (v75 < a9)
  {
    v66 = 0;
    if (v83 < a10)
    {
      v90 = (2 * (result + v83 * a2 + v75));
      v91 = 2 * a2;
      v92.i64[0] = *v90;
      v92.i64[1] = *(v90 + v91);
      v93 = (v90 + 4 * a2);
      v94.i64[0] = *v93;
      v94.i64[1] = *(v93 + v91);
      v72 = vaddq_s16(v94, v92);
      goto LABEL_44;
    }

LABEL_73:
    a7[128] = v65;
    a7[129] = v66;
    a7[130] = 0;
    return result;
  }

LABEL_74:
  a7[128] = 0;
  *(a7 + 129) = 0;
  return result;
}

uint64_t set_vt_partitioning(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, int a10)
{
  if (a10 == 1)
  {
    return 0;
  }

  v11 = num_8x8_blocks_wide_lookup[a5];
  v12 = a1 + 172032;
  v13 = num_8x8_blocks_high_lookup[a5];
  if (a5 == a9)
  {
    if (!*(a1 + 172972) || *(a1 + 172988))
    {
      a4[3] = (*a4 - ((a4[1] * a4[1]) >> a4[2])) << 8 >> a4[2];
    }

    v14 = a7 + (v11 >> 1);
    v15 = *(a1 + 173016);
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = *(a1 + 173008);
    if ((a6 + (v13 >> 1)) >= v16 || a4[3] >= a8)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (a5 <= a9)
  {
    return 0;
  }

  v17 = *(a1 + 172972);
  if (!v17 || *(a1 + 172988))
  {
    v18 = (*a4 - ((a4[1] * a4[1]) >> a4[2])) << 8 >> a4[2];
    a4[3] = v18;
    if ((!v17 || *(a1 + 172988)) && (a5 > 9 || v18 > 16 * a8))
    {
      return 0;
    }
  }

  v19 = a7 + (v11 >> 1);
  v15 = *(a1 + 173016);
  if (v19 >= v15)
  {
    v16 = *(a1 + 173008);
    v20 = a6 + (v13 >> 1);
  }

  else
  {
    v20 = a6 + (v13 >> 1);
    v16 = *(a1 + 173008);
    if (v20 < v16 && a4[3] < a8)
    {
LABEL_21:
      result = 1;
      if (v15 > a7 && v16 > a6)
      {
        v21 = a7 + *(a3 + 440) * a6;
        v22 = *(v12 + 1144);
        *(a3 + 448) = v22 + 8 * v21;
        v23 = (*(v12 + 1088) + 68 * v21);
        *(v22 + 8 * v21) = v23;
        *(a2 + 25568) = *(a2 + 25576) + 36 * (a7 + v15 * a6);
        *v23 = a5;
      }

      return result;
    }
  }

  if (v20 < v16 && ((v24 = subsize_lookup[a5 + 26], v25 = (a4[12] - ((a4[13] * a4[13]) >> a4[14])) << 8 >> a4[14], a4[15] = v25, v26 = (a4[16] - ((a4[17] * a4[17]) >> a4[18])) << 8 >> a4[18], a4[19] = v26, v25 < a8) ? (v27 = v26 < a8) : (v27 = 0), v27 && ss_size_lookup[4 * v24 + 2 * *(a3 + 144) + *(a3 + 148)] <= 0xCu))
  {
    if (v15 > a7 && v16 > a6)
    {
      v28 = a7 + *(a3 + 440) * a6;
      v29 = *(a1 + 173176);
      *(a3 + 448) = v29 + 8 * v28;
      v30 = (*(a1 + 173120) + 68 * v28);
      *(v29 + 8 * v28) = v30;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (a7 + v15 * a6);
      *v30 = v24;
    }

    result = 1;
    if (v19 < v15 && v16 > a6)
    {
      v31 = v19 + *(a3 + 440) * a6;
      v32 = *(v12 + 1144);
      *(a3 + 448) = v32 + 8 * v31;
      v33 = (*(v12 + 1088) + 68 * v31);
      *(v32 + 8 * v31) = v33;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (v19 + v15 * a6);
      *v33 = v24;
    }
  }

  else
  {
    if (v19 >= v15)
    {
      return 0;
    }

    v34 = subsize_lookup[a5 + 13];
    v35 = (a4[4] - ((a4[5] * a4[5]) >> a4[6])) << 8 >> a4[6];
    a4[7] = v35;
    v36 = (a4[8] - ((a4[9] * a4[9]) >> a4[10])) << 8 >> a4[10];
    a4[11] = v36;
    v37 = v35 < a8 && v36 < a8;
    if (!v37 || ss_size_lookup[4 * v34 + 2 * *(a3 + 144) + *(a3 + 148)] > 0xCu)
    {
      return 0;
    }

    if (v15 > a7)
    {
      if (v16 > a6)
      {
        v38 = a7 + *(a3 + 440) * a6;
        v39 = *(a1 + 173176);
        *(a3 + 448) = v39 + 8 * v38;
        v40 = (*(a1 + 173120) + 68 * v38);
        *(v39 + 8 * v38) = v40;
        *(a2 + 25568) = *(a2 + 25576) + 36 * (a7 + v15 * a6);
        *v40 = v34;
      }

      if (v20 < v16)
      {
        v41 = a7 + *(a3 + 440) * v20;
        v42 = *(a1 + 173176);
        *(a3 + 448) = v42 + 8 * v41;
        v43 = (*(a1 + 173120) + 68 * v41);
        *(v42 + 8 * v41) = v43;
        *(a2 + 25568) = *(a2 + 25576) + 36 * (a7 + v20 * v15);
        *v43 = v34;
      }
    }

    return 1;
  }

  return result;
}

uint64_t update_prev_partition_helper(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = result + 173008;
  if (*(result + 173008) > a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = result;
    v8 = a4 + *(result + 173020) * a3;
    while (1)
    {
      if (*(v4 + 8) <= v5)
      {
        return result;
      }

      v9 = *(v7 + 942056);
      v10 = partition_lookup[13 * b_width_log2_lookup[a2] + **(*(v4 + 168) + 8 * v8)];
      v11 = v8;
      v12 = &subsize_lookup[13 * v10];
      v13 = v12[a2];
      if (v13 < 3 || v10 == 0)
      {
        break;
      }

      v15 = 1 << b_width_log2_lookup[a2] >> 2;
      if (v10 == 2)
      {
        *(v9 + v8) = v13;
        if (v15 + v5 >= *(v4 + 8))
        {
          return result;
        }

        v17 = v15 + v8;
LABEL_17:
        v11 = v17;
LABEL_18:
        *(v9 + v11) = v13;
        return result;
      }

      if (v10 == 1)
      {
        *(v9 + v8) = v13;
        if (v15 + v6 >= *v4)
        {
          return result;
        }

        v17 = v8 + *(v4 + 12) * v15;
        goto LABEL_17;
      }

      update_prev_partition_helper(v7, v12[a2], v6, v5);
      v16 = v15 + v6;
      update_prev_partition_helper(v7, v13, (v15 + v6), v5);
      v5 = (v15 + v5);
      result = update_prev_partition_helper(v7, v13, v6, v5);
      v8 = v5 + *(v4 + 12) * (v15 + v6);
      v6 = (v15 + v6);
      a2 = v13;
      if (*v4 <= v16)
      {
        return result;
      }
    }

    LOBYTE(v13) = a2;
    goto LABEL_18;
  }

  return result;
}

uint64_t copy_partitioning_helper(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v6 = result + 173008;
  v7 = *(result + 173008);
  if (v7 > a5)
  {
    v8 = a6;
    v9 = a5;
    v12 = result;
    v13 = a6 + *(result + 173020) * a5;
    do
    {
      v14 = *(v6 + 8);
      if (v14 <= v8)
      {
        break;
      }

      v15 = partition_lookup[13 * b_width_log2_lookup[a4] + *(*(v12 + 942056) + v13)];
      v16 = subsize_lookup[13 * v15 + a4];
      if (v16 <= 2)
      {
        goto LABEL_10;
      }

      v17 = 1 << b_width_log2_lookup[a4] >> 2;
      switch(v15)
      {
        case 2:
          v22 = *(a3 + 440) * v9;
          v23 = *(v6 + 168);
          *(a3 + 448) = v23 + 8 * (v22 + v8);
          v24 = (*(v6 + 112) + 68 * (v22 + v8));
          *(v23 + 8 * (v22 + v8)) = v24;
          v25 = *(a2 + 25576);
          v26 = v14 * v9;
          *(a2 + 25568) = v25 + 36 * (v14 * v9 + v8);
          *v24 = v16;
          v27 = v17 + v8;
          if (v14 > v17 + v8)
          {
            v28 = v22 + v27;
            v29 = (v23 + 8 * (v22 + v27));
            *(a3 + 448) = v29;
            v30 = (*(v6 + 112) + 68 * v28);
            *v29 = v30;
            *(a2 + 25568) = v25 + 36 * (v27 + v26);
            *v30 = v16;
          }

          return result;
        case 1:
          v31 = *(a3 + 440);
          v32 = v8 + v31 * v9;
          v33 = *(v6 + 168);
          *(a3 + 448) = v33 + 8 * v32;
          v34 = (*(v6 + 112) + 68 * v32);
          *(v33 + 8 * v32) = v34;
          v35 = *(a2 + 25576);
          *(a2 + 25568) = v35 + 36 * (v8 + v14 * v9);
          *v34 = v16;
          v36 = v17 + v9;
          if (v7 > v17 + v9)
          {
            v37 = v8 + v31 * v36;
            v38 = (v33 + 8 * v37);
            *(a3 + 448) = v38;
            v39 = (*(v6 + 112) + 68 * v37);
            *v38 = v39;
            *(a2 + 25568) = v35 + 36 * (v8 + v36 * v14);
            *v39 = v16;
          }

          return result;
        case 0:
LABEL_10:
          v19 = v8 + *(a3 + 440) * v9;
          v20 = *(v6 + 168);
          *(a3 + 448) = v20 + 8 * v19;
          v21 = (*(v6 + 112) + 68 * v19);
          *(v20 + 8 * v19) = v21;
          *(a2 + 25568) = *(a2 + 25576) + 36 * (v8 + v14 * v9);
          *v21 = a4;
          return result;
      }

      copy_partitioning_helper(v12, a2, a3, subsize_lookup[13 * v15 + a4], v9, v8);
      v18 = v17 + v9;
      copy_partitioning_helper(v12, a2, a3, v16, (v17 + v9), v8);
      v8 = (v17 + v8);
      result = copy_partitioning_helper(v12, a2, a3, v16, v9, v8);
      v13 = v8 + *(v6 + 12) * (v17 + v9);
      v7 = *v6;
      v9 = (v17 + v9);
      a4 = v16;
    }

    while (*v6 > v18);
  }

  return result;
}

void *nonrd_pick_sb_modes(int32x2_t *a1, __n128 *a2, uint64_t a3, int a4, signed __int32 a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  v62 = *MEMORY[0x277D85DE8];
  v56 = a1 + 92384;
  v13 = &a1[21621] + 4;
  v14 = (a3 + 24576);
  if (a7 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = a7;
  }

  v16 = num_4x4_blocks_wide_lookup[v15];
  v17 = num_4x4_blocks_high_lookup[v15];
  *&v18 = set_offsets_0(a1, a2, a3, a4, a5, a7).n128_u64[0];
  v59 = a5;
  set_segment_index(a1, a3, a4, a5, a7, v18, v19);
  v14[254] = 0;
  v55 = **(a3 + 25360);
  *v55 = a7;
  __memcpy_chk();
  __memcpy_chk();
  memcpy(&__src[v16], *(a3 + 25112), v16 >> v14[120]);
  memcpy(&v61[v17], *(a3 + 25120), v17 >> v14[121]);
  memcpy(&__src[2 * v16], *(a3 + 25248), v16 >> v14[154]);
  memcpy(&v61[2 * v17], *(a3 + 25256), v17 >> v14[155]);
  if (a1[23768].i32[1] == 3 && v13[3500] && (*(v55 + 4) - 3) >= 0xFFFFFFFE)
  {
    v14[265] = *(*&v56[150] + 28);
  }

  if (!*v13 || v13[16])
  {
    if (a7 <= 5 && !v56[134].i32[1])
    {
LABEL_12:
      v20 = a8;
      vp9_rd_pick_intra_mode_sb(a1, a3, a6, a7, a8, 0x7FFFFFFFFFFFFFFFLL);
      goto LABEL_15;
    }

    v21 = a3;
    v22 = a6;
    v23 = a7;
    v20 = a8;
    goto LABEL_14;
  }

  if (a1[1742 * a1[94318].i32[1] + 96594].i32[1])
  {
    if (a7 <= 3 && !v56[134].i32[1])
    {
      goto LABEL_12;
    }

    v20 = a8;
    if (a1[115856].i32[1] == 1)
    {
      v21 = a3;
      v22 = a6;
      v23 = a7;
LABEL_14:
      vp9_pick_intra_mode(a1, v21, v22, v23);
      goto LABEL_15;
    }

    if (a7 >= 3)
    {
LABEL_48:
      vp9_pick_inter_mode(a1, a3, a2);
      goto LABEL_15;
    }

    v42 = a3;
    v43 = a4;
    v44 = v59;
    v45 = a6;
    v46 = a7;
LABEL_53:
    vp9_pick_inter_mode_sub8x8(a1, v42, v43, v44, v45, v46, v20);
    goto LABEL_15;
  }

  if (!v13[3500] || (a1[22069].i32[*(v55 + 4)] & 8) == 0)
  {
    if (a7 >= 3)
    {
      v20 = a8;
      if (v56->i32[0])
      {
        hybrid_search_scene_change(a1, a3, a6, a7, a8, a2);
        goto LABEL_15;
      }

      goto LABEL_48;
    }

    v42 = a3;
    v43 = a4;
    v44 = a5;
    v45 = a6;
    v46 = a7;
    v20 = a8;
    goto LABEL_53;
  }

  v47 = *(a3 + 25368);
  if (v47)
  {
    v48 = *(v47 + 7);
  }

  else
  {
    v48 = 3;
  }

  v49 = *(v13 + 13);
  v50 = *(a3 + 25376);
  if (v50)
  {
    v51 = *(v50 + 7);
  }

  else
  {
    v51 = 3;
  }

  v52 = v13[280];
  if (v48 != v51)
  {
    if (v48 == 3)
    {
      v48 = v51;
    }

    else if (v51 != 3)
    {
      v48 = 3;
    }
  }

  if (v48 == 3)
  {
    LOBYTE(v48) = 0;
  }

  *v55 = a7;
  *(v55 + 1) = 12;
  v53 = tx_mode_to_biggest_tx_size[v49];
  if (v52 == 3)
  {
    LOBYTE(v48) = 3;
  }

  if (max_txsize_lookup[a7] < v53)
  {
    LOBYTE(v53) = max_txsize_lookup[a7];
  }

  *(v55 + 2) = v53;
  *(v55 + 3) = 1;
  *(v55 + 6) = 0;
  *(v55 + 8) = -255;
  *(v55 + 12) = 0;
  *(v55 + 7) = v48;
  *(**(a3 + 25360) + 24) = 0;
  v14[582] = 1;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v20 = a8;
LABEL_15:
  v24 = *(v13 + 11) - v59;
  if (v24 >= num_8x8_blocks_wide_lookup[a7])
  {
    v25 = num_8x8_blocks_wide_lookup[a7];
  }

  else
  {
    v25 = v24;
  }

  LODWORD(v26) = *(v13 + 9) - a4;
  if (v26 >= num_8x8_blocks_high_lookup[a7])
  {
    v26 = num_8x8_blocks_high_lookup[a7];
  }

  else
  {
    v26 = v26;
  }

  if (v26 >= 1 && v25 >= 1)
  {
    v27 = 0;
    v28 = *(a3 + 25360);
    v29 = *v28;
    v30 = vdupq_n_s64(*v28);
    v31 = v28 + 2;
    v32 = 8 * v14[194];
    do
    {
      if (v25 >= 4)
      {
        v34 = v25 & 0x7FFFFFFC;
        v35 = v31;
        do
        {
          v35[-1] = v30;
          *v35 = v30;
          v35 += 2;
          v34 -= 4;
        }

        while (v34);
        v33 = v25 & 0x7FFFFFFC;
        if (v33 == v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = 0;
      }

      v36 = v25 - v33;
      v37 = &v28[v33];
      do
      {
        *v37++ = v29;
        --v36;
      }

      while (v36);
LABEL_24:
      ++v27;
      v31 = (v31 + v32);
      v28 = (v28 + v32);
    }

    while (v27 != v26);
  }

  memcpy(*(a3 + 24976), __src, v16 >> v14[86]);
  memcpy(*(a3 + 24984), v61, v17 >> v14[87]);
  memcpy(*(a3 + 25112), &__src[v16], v16 >> v14[120]);
  memcpy(*(a3 + 25120), &v61[v17], v17 >> v14[121]);
  memcpy(*(a3 + 25248), &__src[2 * v16], v16 >> v14[154]);
  result = memcpy(*(a3 + 25256), &v61[2 * v17], v17 >> v14[155]);
  v39 = *a6;
  if (*a6 == 0x7FFFFFFF)
  {
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    *(a6 + 8) = vnegq_f64(v40);
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = *(a6 + 8);
  }

  *(v20 + 768) = v39;
  *(v20 + 776) = v41;
  return result;
}

void encode_b_rt(int32x2_t *a1, unint64_t a2, __n128 *a3, uint64_t *a4, int a5, signed __int32 a6, int a7, unsigned int a8, uint64_t a9)
{
  v225 = (a2 + 25056);
  v231 = a1 + 92452;
  v229 = a1 + 23740;
  v13 = a1 + 22059;
  v14 = a1 + 21505;
  set_offsets_0(a1, a3, a2, a5, a6, a8);
  v15 = **(a2 + 25360);
  v16 = *v15;
  v17 = num_8x8_blocks_wide_lookup[v16];
  v18 = num_8x8_blocks_high_lookup[v16];
  v19 = v14[122].i32[0] - a6;
  if (v19 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  if (v14[121].i32[0] - a5 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v14[121].i32[0] - a5;
  }

  v22 = *(a9 + 16);
  v23 = *(a9 + 32);
  v24 = *(a9 + 48);
  *(v15 + 16) = *(a9 + 64);
  *(v15 + 2) = v23;
  *(v15 + 3) = v24;
  *(v15 + 1) = v22;
  *v15 = *a9;
  v25 = *(a2 + 25568);
  v26 = *(a9 + 68);
  v27 = *(a9 + 84);
  *(v25 + 32) = *(a9 + 100);
  *v25 = v26;
  *(v25 + 16) = v27;
  v230 = v13;
  if (v13->i8[0])
  {
    v28 = v229[28].i32[1];
    if (v28 == 3)
    {
      if (*(*&v231[82] + 132))
      {
        vp9_cyclic_refresh_update_segment(a1, v15, a5, a6, a8, *(a9 + 768), *(a9 + 776), v225[462], a2);
        goto LABEL_54;
      }
    }

    else if (!v28 && !a1[117769].i8[0] && !v231[83].i32[0])
    {
      goto LABEL_55;
    }

    if (v13->i8[1])
    {
      v29 = 92528;
    }

    else
    {
      v29 = 21654;
    }

    v30 = v14[122].i32[0];
    if (v30 - a6 >= num_8x8_blocks_wide_lookup[a8])
    {
      v31 = num_8x8_blocks_wide_lookup[a8];
    }

    else
    {
      v31 = (v30 - a6);
    }

    v32 = v14[121].i32[0] - a5;
    if (v32 >= num_8x8_blocks_high_lookup[a8])
    {
      v32 = num_8x8_blocks_high_lookup[a8];
    }

    v33 = 8;
    if (v32 >= 1 && v31 >= 1)
    {
      v34 = 0;
      v35 = a1[v29];
      v36 = v31 & 0x7FFFFFE0;
      v37 = a6 + v30 * a5;
      while (v31 >= 4)
      {
        if (a6 + v30 * a5 + v30 * v34 + v31 - 1 < a6 + v30 * a5 + v30 * v34 || (v31 - 1) >> 32 != 0)
        {
          break;
        }

        if (v31 >= 0x20)
        {
          v43 = a6 + (v34 + a5) * v30;
          v44 = vdupq_n_s32(v33);
          v45 = *&v35 + v43;
          v46 = *(v45 + 16);
          v47 = vmovl_u8(*v45);
          v48 = vmovl_high_u8(*v45);
          v49 = vmovl_u8(*v46.i8);
          v50 = vmovl_u16(*v49.i8);
          v51 = vmovl_high_u16(v49);
          v52 = vmovl_high_u8(v46);
          v53 = vmovl_u16(*v52.i8);
          v54 = vmovl_high_u16(v52);
          v55 = vminq_s32(v44, vmovl_high_u16(v48));
          v56 = vminq_s32(v44, vmovl_u16(*v48.i8));
          v57 = vminq_s32(v44, vmovl_high_u16(v47));
          v58 = vminq_s32(v44, vmovl_u16(*v47.i8));
          v59 = vminq_s32(v44, v54);
          v60 = vminq_s32(v44, v53);
          v61 = vminq_s32(v44, v51);
          v62 = vminq_s32(v44, v50);
          if (v36 != 32)
          {
            v63 = *&v35 + v43 + 32;
            v64 = *(v63 + 16);
            v65 = vmovl_u8(*v63);
            v66 = vmovl_high_u8(*v63);
            v67 = vmovl_u8(*v64.i8);
            v68 = vmovl_high_u8(v64);
            v55 = vminq_s32(v55, vmovl_high_u16(v66));
            v56 = vminq_s32(v56, vmovl_u16(*v66.i8));
            v57 = vminq_s32(v57, vmovl_high_u16(v65));
            v58 = vminq_s32(v58, vmovl_u16(*v65.i8));
            v59 = vminq_s32(v59, vmovl_high_u16(v68));
            v60 = vminq_s32(v60, vmovl_u16(*v68.i8));
            v61 = vminq_s32(v61, vmovl_high_u16(v67));
            v62 = vminq_s32(v62, vmovl_u16(*v67.i8));
            if (v36 != 64)
            {
              v69 = *&v35 + v43 + 64;
              v70 = *(v69 + 16);
              v71 = vmovl_u8(*v69);
              v72 = vmovl_high_u8(*v69);
              v73 = vmovl_u8(*v70.i8);
              v74 = vmovl_high_u8(v70);
              v55 = vminq_s32(v55, vmovl_high_u16(v72));
              v56 = vminq_s32(v56, vmovl_u16(*v72.i8));
              v57 = vminq_s32(v57, vmovl_high_u16(v71));
              v58 = vminq_s32(v58, vmovl_u16(*v71.i8));
              v59 = vminq_s32(v59, vmovl_high_u16(v74));
              v60 = vminq_s32(v60, vmovl_u16(*v74.i8));
              v61 = vminq_s32(v61, vmovl_high_u16(v73));
              v62 = vminq_s32(v62, vmovl_u16(*v73.i8));
              if (v36 != 96)
              {
                v75 = *&v35 + v43 + 96;
                v76 = *(v75 + 16);
                v77 = vmovl_u8(*v75);
                v78 = vmovl_high_u8(*v75);
                v79 = vmovl_u8(*v76.i8);
                v80 = vmovl_high_u8(v76);
                v55 = vminq_s32(v55, vmovl_high_u16(v78));
                v56 = vminq_s32(v56, vmovl_u16(*v78.i8));
                v57 = vminq_s32(v57, vmovl_high_u16(v77));
                v58 = vminq_s32(v58, vmovl_u16(*v77.i8));
                v59 = vminq_s32(v59, vmovl_high_u16(v80));
                v60 = vminq_s32(v60, vmovl_u16(*v80.i8));
                v61 = vminq_s32(v61, vmovl_high_u16(v79));
                v62 = vminq_s32(v62, vmovl_u16(*v79.i8));
                if (v36 != 128)
                {
                  v81 = *&v35 + v43 + 128;
                  v82 = *(v81 + 16);
                  v83 = vmovl_u8(*v81);
                  v84 = vmovl_high_u8(*v81);
                  v85 = vmovl_u8(*v82.i8);
                  v86 = vmovl_high_u8(v82);
                  v55 = vminq_s32(v55, vmovl_high_u16(v84));
                  v56 = vminq_s32(v56, vmovl_u16(*v84.i8));
                  v57 = vminq_s32(v57, vmovl_high_u16(v83));
                  v58 = vminq_s32(v58, vmovl_u16(*v83.i8));
                  v59 = vminq_s32(v59, vmovl_high_u16(v86));
                  v60 = vminq_s32(v60, vmovl_u16(*v86.i8));
                  v61 = vminq_s32(v61, vmovl_high_u16(v85));
                  v62 = vminq_s32(v62, vmovl_u16(*v85.i8));
                  if (v36 != 160)
                  {
                    v87 = *&v35 + v43 + 160;
                    v88 = *(v87 + 16);
                    v89 = vmovl_u8(*v87);
                    v90 = vmovl_high_u8(*v87);
                    v91 = vmovl_u8(*v88.i8);
                    v92 = vmovl_high_u8(v88);
                    v55 = vminq_s32(v55, vmovl_high_u16(v90));
                    v56 = vminq_s32(v56, vmovl_u16(*v90.i8));
                    v57 = vminq_s32(v57, vmovl_high_u16(v89));
                    v58 = vminq_s32(v58, vmovl_u16(*v89.i8));
                    v59 = vminq_s32(v59, vmovl_high_u16(v92));
                    v60 = vminq_s32(v60, vmovl_u16(*v92.i8));
                    v61 = vminq_s32(v61, vmovl_high_u16(v91));
                    v62 = vminq_s32(v62, vmovl_u16(*v91.i8));
                    if (v36 != 192)
                    {
                      v93 = *&v35 + v43 + 192;
                      v94 = *(v93 + 16);
                      v95 = vmovl_u8(*v93);
                      v96 = vmovl_high_u8(*v93);
                      v97 = vmovl_u8(*v94.i8);
                      v98 = vmovl_high_u8(v94);
                      v55 = vminq_s32(v55, vmovl_high_u16(v96));
                      v56 = vminq_s32(v56, vmovl_u16(*v96.i8));
                      v57 = vminq_s32(v57, vmovl_high_u16(v95));
                      v58 = vminq_s32(v58, vmovl_u16(*v95.i8));
                      v59 = vminq_s32(v59, vmovl_high_u16(v98));
                      v60 = vminq_s32(v60, vmovl_u16(*v98.i8));
                      v61 = vminq_s32(v61, vmovl_high_u16(v97));
                      v62 = vminq_s32(v62, vmovl_u16(*v97.i8));
                    }
                  }
                }
              }
            }
          }

          v27 = vminq_s32(vminq_s32(v57, v61), vminq_s32(v55, v59));
          v33 = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v58, v62), vminq_s32(v56, v60)), v27));
          if (v36 == v31)
          {
            goto LABEL_26;
          }

          v42 = v31 & 0x7FFFFFE0;
          v39 = v42;
          if ((v31 & 0x1C) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v42 = 0;
        }

        v99 = vdupq_n_s32(v33);
        v100 = v42 - (v31 & 0x7FFFFFFC);
        v101 = v37 + v42;
        do
        {
          v27.i32[0] = *(*&v35 + v101);
          v27 = vmovl_u16(*&vmovl_u8(*v27.i8));
          v99 = vminq_s32(v99, v27);
          v101 += 4;
          v100 += 4;
        }

        while (v100);
        v33 = vminvq_s32(v99);
        v39 = v31 & 0x7FFFFFFC;
        if (v39 != v31)
        {
          goto LABEL_33;
        }

LABEL_26:
        ++v34;
        v37 += v30;
        if (v34 == v32)
        {
          goto LABEL_53;
        }
      }

      v39 = 0;
LABEL_33:
      v40 = v31 - v39;
      v41 = v37 + v39;
      do
      {
        if (v33 >= *(*&v35 + v41))
        {
          v33 = *(*&v35 + v41);
        }

        ++v41;
        --v40;
      }

      while (v40);
      goto LABEL_26;
    }

LABEL_53:
    v15[4] = v33;
LABEL_54:
    vp9_init_plane_quantizers(a1, a2);
  }

LABEL_55:
  v102 = &a1[94317] + 1;
  if (v15[8] < 1)
  {
    goto LABEL_70;
  }

  vp9_update_mv_count(a2);
  if (v14[151].i8[4] == 4)
  {
    v103 = *(a2 + 25368);
    if (v103)
    {
      v104 = *(v103 + 7);
      v105 = *(a2 + 25376);
      if (v105)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v104 = 3;
      v105 = *(a2 + 25376);
      if (v105)
      {
LABEL_59:
        v106 = *(v105 + 7);
        if (v104 == v106)
        {
          goto LABEL_67;
        }

        goto LABEL_63;
      }
    }

    v106 = 3;
    if (v104 == 3)
    {
LABEL_67:
      v107 = *(a2 + 114248) + 12 * v104 + 4 * v15[7];
      ++*(v107 + 12336);
      goto LABEL_68;
    }

LABEL_63:
    if (v104 == 3)
    {
      v104 = v106;
    }

    else if (v106 != 3)
    {
      v104 = 3;
    }

    goto LABEL_67;
  }

LABEL_68:
  if (*v15 <= 2u)
  {
    *(v15 + 12) = *(v15 + 60);
  }

LABEL_70:
  if (v14[145].i32[0] || !v229->i32[0] || a1[115800].i32[0] && (v113 = a1[94319].i32[0], v113 >= 2) && a1[94318].i32[0] != v113 - 1)
  {
    v108 = v21 < 1 || v20 < 1;
    if (!v108)
    {
      v109 = 0;
      v110 = 12 * v14[122].i32[0] * a5 + 12 * a6 + *(*v14 + 8) + 9;
      do
      {
        v111 = (v110 + 12 * v14[122].i32[0] * v109);
        v112 = v20;
        do
        {
          *(v111 - 1) = v15[8];
          *v111 = v15[9];
          *(v111 - 9) = *(v15 + 3);
          *(v111 - 5) = *(v15 + 4);
          v111 += 12;
          --v112;
        }

        while (v112);
        ++v109;
      }

      while (v109 != v21);
    }
  }

  v114 = v225;
  v225[462] = *(a9 + 696);
  if (v15[4] || v225[121])
  {
    v115 = 0;
  }

  else
  {
    v115 = *(a9 + 708);
  }

  *(a2 + 82228) = v115;
  v116 = **(a2 + 25360);
  if (v13->i8[0])
  {
    v117 = (a1[22069].i32[v116[4]] >> 3) & 1;
    if (v225[133])
    {
      goto LABEL_93;
    }
  }

  else
  {
    v117 = 0;
    if (v225[133])
    {
      goto LABEL_93;
    }
  }

  if (*v116 >= 3u && (v229[28].i32[1] & 0xFFFFFFFE) != 2)
  {
    v182 = v231->i32[1];
    v225[134] = v182 != 0;
    if (v182)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

LABEL_93:
  v225[134] = 0;
LABEL_94:
  if (!v231[40].i32[1])
  {
    *(a2 + 82236) = 0;
    *(a2 + 82228) = 0;
  }

LABEL_96:
  v225[135] = *(a9 + 688);
  *(a9 + 688) = 1;
  *(a2 + 82212) = v231[8].i32[1];
  if (a7 || !v231->i32[0])
  {
    *(a2 + 82216) = 0;
  }

  else
  {
    v108 = v225[136] < 115;
    *(a2 + 82216) = v108;
    if (v108)
    {
      goto LABEL_189;
    }
  }

  if (v116[8] > 0)
  {
    v118 = v116[9];
    v119 = v118;
    v120 = &a1[22 * v116[8] + 21492];
    *(a2 + 25424) = v120;
    v121 = v118 - 1;
    if (v119 <= 0)
    {
      v121 = 0;
    }

    *(a2 + 25432) = &a1[22 * v121 + 21514];
    v122 = a1 + 21506;
    v123 = v116[8];
    v124 = 194516;
    if (v123 != 2)
    {
      v124 = 194520;
    }

    if (v123 == 1)
    {
      v125 = 194512;
    }

    else
    {
      v125 = v124;
    }

    v126 = *(a1->i32 + v125);
    if (v119 < 1)
    {
      if (v126 == -1 || (v148 = v122->i32[v126], v148 == -1))
      {
        v149 = 0;
      }

      else
      {
        v149 = *&v229[3] + 224 * v148 + 88;
      }

      vp9_setup_pre_planes(a2 + 24912, 0, v149, a5, a6, v120 + 16);
      if (!v231[50].i32[0])
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v126 == -1 || (v127 = v122->i32[v126], v127 == -1))
      {
        v128 = 0;
      }

      else
      {
        v128 = *&v229[3] + 224 * v127 + 88;
      }

      vp9_setup_pre_planes(a2 + 24912, 0, v128, a5, a6, v120 + 16);
      v142 = v116[9];
      v143 = 194516;
      if (v142 != 2)
      {
        v143 = 194520;
      }

      if (v142 == 1)
      {
        v144 = 194512;
      }

      else
      {
        v144 = v143;
      }

      v145 = *(a1->i32 + v144);
      if (v145 == -1 || (v146 = v122->i32[v145], v146 == -1))
      {
        v147 = 0;
      }

      else
      {
        v147 = *&v229[3] + 224 * v146 + 88;
      }

      vp9_setup_pre_planes(a2 + 24912, 1, v147, a5, a6, *(a2 + 25432) + 16);
      if (!v231[50].i32[0])
      {
        goto LABEL_153;
      }
    }

    if (*(a9 + 700) && !v117)
    {
      if (a8 <= 3)
      {
        v150 = 3;
      }

      else
      {
        v150 = a8;
      }

      goto LABEL_157;
    }

LABEL_153:
    if (a8 <= 3)
    {
      v150 = 3;
    }

    else
    {
      v150 = a8;
    }

    build_inter_predictors_for_planes(a2 + 24912, v150, a5, a6, 0, 0);
LABEL_157:
    build_inter_predictors_for_planes(a2 + 24912, v150, a5, a6, 1, 2);
    vp9_encode_sb(a2, v150);
    vp9_tokenize_sb(a1, a2, a4, a7 == 0, v117, v150);
    v102 = &a1[94317] + 1;
    v114 = v225;
    if (!a7)
    {
      goto LABEL_189;
    }

    goto LABEL_162;
  }

  v116[3] = 1;
  if (a8 <= 3)
  {
    v129 = 3;
  }

  else
  {
    v129 = a8;
  }

  vp9_encode_intra_block_plane(a2, v129, 0, 1u);
  vp9_encode_intra_block_plane(a2, v129, 1, 1u);
  vp9_encode_intra_block_plane(a2, v129, 2, 1u);
  if (a7)
  {
    v130 = *(a2 + 114248);
    v131 = v116[1];
    v132 = v116[6];
    v133 = *v116;
    if (v133 > 2)
    {
      v151 = v130 + 40 * size_group_lookup[v133];
      ++*(v151 + 4 * v131);
    }

    else
    {
      v134 = num_4x4_blocks_wide_lookup[v133];
      v135 = num_4x4_blocks_high_lookup[v133];
      v136 = v116 + 20;
      ++*(v130 + 4 * v116[20]);
      if (v134 <= 1)
      {
        v137 = v136[12 * v134];
        ++*(v130 + 4 * v137);
        if (!v134)
        {
          ++*(v130 + 4 * *v136);
        }
      }

      if (v135 <= 1)
      {
        v138 = v136[24 * v135];
        ++*(v130 + 4 * v138);
        if (v134 <= 1)
        {
          v139 = v136[12 * ((2 * v135) | v134)];
          ++*(v130 + 4 * v139);
          if (!v134)
          {
            v140 = v136[24 * v135];
            ++*(v130 + 4 * v140);
          }
        }

        if (!v135)
        {
          ++*(v130 + 4 * *v136);
          if (v134 <= 1)
          {
            v141 = v136[12 * v134];
            ++*(v130 + 4 * v141);
            if (!v134)
            {
              ++*(v130 + 4 * *v136);
            }
          }
        }
      }
    }

    v152 = v130 + 40 * v131 + 4 * v132;
    ++*(v152 + 160);
  }

  vp9_tokenize_sb(a1, a2, a4, a7 == 0, v117, v129);
  if (!a7)
  {
    goto LABEL_189;
  }

LABEL_162:
  v153 = v14[123].u32[0];
  if (v153 != 4)
  {
    LOBYTE(v154) = v116[8];
LABEL_179:
    if (v154 < 1)
    {
      if (a8 < 3)
      {
        v165 = 0;
      }

      else
      {
        v165 = v116[2];
      }

LABEL_182:
      v116[2] = v165;
      goto LABEL_183;
    }

LABEL_180:
    v165 = tx_mode_to_biggest_tx_size[v153];
    if (v165 >= max_txsize_lookup[a8])
    {
      v165 = max_txsize_lookup[a8];
    }

    goto LABEL_182;
  }

  v154 = v116[8];
  if (*v116 < 3u)
  {
    goto LABEL_179;
  }

  if (v154 >= 1 && v116[3])
  {
    goto LABEL_180;
  }

  v155 = *(a2 + 25376);
  v156 = *(a2 + 25368);
  v157 = max_txsize_lookup[***(a2 + 25360)];
  if (v155)
  {
    v157 = max_txsize_lookup[***(a2 + 25360)];
    if (!*(v155 + 3))
    {
      v157 = *(v155 + 2);
    }
  }

  v158 = max_txsize_lookup[a8];
  v159 = v157;
  if (v156)
  {
    v159 = max_txsize_lookup[***(a2 + 25360)];
    if (!*(v156 + 3))
    {
      v159 = *(v156 + 2);
    }
  }

  if (v155)
  {
    v160 = v157;
  }

  else
  {
    v160 = v159;
  }

  v161 = v160 + v159 > max_txsize_lookup[***(a2 + 25360)];
  v162 = *(a2 + 114248);
  if (v158 == 3)
  {
    v163 = v162 + 16 * v161;
    v164 = 12688;
  }

  else if (v158 == 2)
  {
    v163 = v162 + 12 * v161;
    v164 = 12720;
  }

  else
  {
    v163 = v162 + 8 * v161;
    v164 = 12744;
  }

  v199 = v163 + v164;
  v200 = v116[2];
  ++*(v199 + 4 * v200);
  v165 = v200;
LABEL_183:
  v166 = *(a2 + 114248) + 12760;
  v167 = 4 * v165;
  ++*(v166 + v167);
  v168 = uv_txsize_lookup[16 * *v116 + 2 * *v114 + v167 + v114[1]];
  ++*(v166 + 4 * v168);
  if (v13->i8[0] && v229[28].i32[1] == 3 && *(*&v231[82] + 132))
  {
    vp9_cyclic_refresh_update_sb_postencode(a1, v116, a5, a6, a8);
  }

  if (!v229[19].i32[1] && !v102[2] && (!*v102 || !a1[96594].i32[1] && v102[1] == v102[3] - 1))
  {
    v187 = num_8x8_blocks_wide_lookup[a8];
    v188 = num_8x8_blocks_high_lookup[a8];
    v189 = v14[122].i32[0];
    if (v189 - a6 < v187)
    {
      v187 = v189 - a6;
    }

    if (v14[121].i32[0] - a5 < v188)
    {
      v188 = v14[121].i32[0] - a5;
    }

    if (v188 >= 1 && v187 >= 1 && v116[8] == 1)
    {
      v190 = a6 + v189 * a5;
      v191.i32[0] = *(v116 + 6);
      v191.i32[1] = *(v116 + 7);
      v192 = vcgt_u32(0x800000008, vand_s8(vabs_s32(v191), 0xFFFF0000FFFFLL));
      if (v192.i32[0] & v192.i32[1])
      {
        v193 = 0;
LABEL_234:
        v194 = v190;
        v195 = v187;
        do
        {
          if (v116[8] == 1 && v116[4] <= 2)
          {
            v196 = v194 + v193 * v14[122].i32[0];
            v197 = a1[116734];
            v198 = *(*&v197 + v196);
            if (v198 != 255)
            {
              *(*&v197 + v196) = v198 + 1;
            }
          }

          ++v194;
          --v195;
        }

        while (v195);
        while (++v193 != v188)
        {
          if (v116[8] == 1)
          {
            goto LABEL_234;
          }
        }
      }

      else
      {
        v204 = 0;
LABEL_262:
        v205 = v190;
        v206 = v187;
        do
        {
          if (v116[8] == 1 && v116[4] <= 2)
          {
            *(*&a1[116734] + v205 + v204 * v14[122].i32[0]) = 0;
          }

          ++v205;
          --v206;
        }

        while (v206);
        while (++v204 != v188)
        {
          if (v116[8] == 1)
          {
            goto LABEL_262;
          }
        }
      }
    }
  }

LABEL_189:
  if (!v14[116].i32[1] || v14[118].i8[4])
  {
    goto LABEL_191;
  }

  v170 = **(a2 + 25360);
  v171 = *(a2 + 25568);
  v172 = *v170;
  v173 = *(a2 + 114248);
  v175 = (v170 + 8);
  v174 = v170[8];
  if (v230->i8[0] && (a1[22069].i32[v170[4]] & 4) != 0)
  {
    if (v174 <= 0)
    {
      goto LABEL_191;
    }

    goto LABEL_280;
  }

  v176 = *(a2 + 25368);
  v177 = *(a2 + 25376);
  if (v177)
  {
    v178 = v176 == 0;
  }

  else
  {
    v178 = 1;
  }

  v179 = !v178;
  if (v178)
  {
    v181 = v177 | v176;
    if (v177 | v176)
    {
      if (v177)
      {
        v183 = *(a2 + 25376);
      }

      else
      {
        v183 = *(a2 + 25368);
      }

      v181 = 2 * (*(v183 + 8) < 1);
    }
  }

  else
  {
    v180 = *(v177 + 8) < 1 || *(v176 + 8) < 1;
    v181 = 3;
    if (*(v176 + 8) >= 1 || *(v177 + 8) >= 1)
    {
      v181 = v180;
    }
  }

  ++*(v173 + 12496 + 8 * v181 + 4 * (v174 > 0));
  if (v174 < 1)
  {
    goto LABEL_191;
  }

  v184 = *v175;
  if (v230[15].i32[0] == 2)
  {
    if (v179)
    {
      v185 = *(v176 + 9);
      if (*(v177 + 9) <= 0)
      {
        v201 = *(v177 + 8);
        v202 = v230[14].u8[4];
        if (v185 <= 0)
        {
          v186 = (v201 == v202) ^ (*(v176 + 8) == v202);
        }

        else
        {
          v186 = 3;
          if (v201 != v202)
          {
            v186 = (v201 > 0) ^ 3;
          }
        }

        goto LABEL_271;
      }

      if (v185 > 0)
      {
        v186 = 4;
LABEL_271:
        v207 = v170[9] > 0;
        ++*(v173 + 12528 + 8 * v186 + 4 * v207);
        goto LABEL_272;
      }

      v203 = *(v176 + 8);
      if (v203 != v230[14].u8[4])
      {
        v186 = (v203 > 0) ^ 3;
        goto LABEL_271;
      }
    }

    else
    {
      if (!(v177 | v176))
      {
        v186 = 1;
        goto LABEL_271;
      }

      if (v177)
      {
        v176 = v177;
      }

      if (*(v176 + 9) <= 0)
      {
        v186 = *(v176 + 8) == v230[14].u8[4];
        goto LABEL_271;
      }
    }

    v186 = 3;
    goto LABEL_271;
  }

LABEL_272:
  if (v170[9] < 1)
  {
    pred_context_single_ref_p1 = vp9_get_pred_context_single_ref_p1(a2 + 24912);
    ++*(v173 + 12568 + 16 * pred_context_single_ref_p1 + 4 * (v184 != 1));
    if (v184 == 1)
    {
      goto LABEL_280;
    }

    v211 = (v173 + 12568 + 16 * vp9_get_pred_context_single_ref_p2(a2 + 24912) + 4 * (v184 != 2) + 8);
  }

  else
  {
    v208 = a1[22050].i32[v230[14].i8[4] + 1];
    pred_context_comp_ref_p = vp9_get_pred_context_comp_ref_p(&a1[21462], a2 + 24912);
    if (v208)
    {
      v210 = v170 + 8;
    }

    else
    {
      v210 = v170 + 9;
    }

    v211 = (v173 + 8 * pred_context_comp_ref_p + 4 * (*v210 == v230[14].u8[6]) + 12648);
  }

  ++*v211;
LABEL_280:
  if (v230->i8[0] && (a1[22069].i32[v170[4]] & 8) != 0)
  {
    goto LABEL_191;
  }

  v213 = *(v171 + *v175 + 32);
  if (v172 >= 3)
  {
    v214 = (v173 + 16 * v213 + 4 * v170[1] + 12344);
LABEL_284:
    ++*v214;
    goto LABEL_191;
  }

  v215 = num_4x4_blocks_wide_lookup[v172];
  v216 = num_4x4_blocks_high_lookup[v172];
  v218 = v170[20];
  v217 = v170 + 20;
  v219 = v173 + 12384 + 16 * v213;
  ++*(v219 + 4 * v218 - 40);
  if (v215 <= 1)
  {
    v220 = v219 + 4 * v217[12 * v215];
    ++*(v220 - 40);
    if (!v215)
    {
      ++*(v219 + 4 * *v217 - 40);
    }
  }

  if (v216 <= 1)
  {
    v221 = v219 + 4 * v217[24 * v216];
    ++*(v221 - 40);
    if (v215 <= 1)
    {
      v222 = v219 + 4 * v217[12 * ((2 * v216) | v215)];
      ++*(v222 - 40);
      if (!v215)
      {
        v223 = v219 + 4 * v217[24 * v216];
        ++*(v223 - 40);
      }
    }

    if (!v216)
    {
      ++*(v219 + 4 * *v217 - 40);
      if (v215 <= 1)
      {
        v224 = v219 + 4 * v217[12 * v215];
        ++*(v224 - 40);
        if (!v215)
        {
          v214 = (v219 + 4 * *v217 - 40);
          goto LABEL_284;
        }
      }
    }
  }

LABEL_191:
  v169 = *a4;
  *(v169 + 8) = 127;
  *a4 = v169 + 16;
}

void hybrid_search_scene_change(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (a4 > 3 || *(a1 + 740148))
  {
    vp9_pick_inter_mode(a1, a2, a6);
  }

  else
  {
    vp9_rd_pick_intra_mode_sb(a1, a2, a3, 3u, a5, 0x7FFFFFFFFFFFFFFFLL);
  }
}

uint64_t ml_predict_var_partitioning(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v107 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 6u:
      v10 = &vp9_var_part_nnconfig_16;
      break;
    case 0xCu:
      v10 = &vp9_var_part_nnconfig_64;
      break;
    case 9u:
      v10 = &vp9_var_part_nnconfig_32;
      break;
    default:
      return 0xFFFFFFFFLL;
  }

  v102 = v10;
  if (*(a1 + 190056) >= 6)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.25;
  }

  v105.i32[3] = 0;
  v12 = *(a1 + 173028);
  v13 = *(a1 + 189856);
  switch(v13)
  {
    case 8:
      v14 = dc_qlookup_0;
      break;
    case 12:
      v14 = &dc_qlookup_12;
      break;
    case 10:
      v14 = &dc_qlookup_10;
      break;
    default:
      v18 = -1;
      goto LABEL_25;
  }

  if (v12 >= 0xFF)
  {
    v16 = 255;
  }

  else
  {
    v16 = *(a1 + 173028);
  }

  if (v12 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v14[v17];
LABEL_25:
  v104[0] = logf(vcvts_n_f32_u32(v18 * v18, 8uLL) + 1.0);
  v19 = *(a1 + 190440);
  v20 = *(v19 + 56);
  v21 = *(v19 + 64);
  v22 = *(v19 + 72);
  v23 = *(v19 + 16);
  v24 = *(v19 + 36);
  *(a2 + 25440) = v19;
  LODWORD(v19) = 8 * a5;
  v25 = v20 + v23 * ((8 * a4) >> *(a2 + 24924)) + ((8 * a5) >> *(a2 + 24920));
  *(a2 + 8216) = v25;
  *(a2 + 8224) = v23;
  *(a2 + 16520) = v21 + v24 * ((8 * a4) >> *(a2 + 25060)) + (v19 >> *(a2 + 25056));
  *(a2 + 16528) = v24;
  *(a2 + 24824) = v22 + v24 * ((8 * a4) >> *(a2 + 25196)) + (v19 >> *(a2 + 25192));
  *(a2 + 24832) = v24;
  v26 = num_4x4_blocks_wide_lookup[a3];
  v27 = subsize_lookup[a3 + 39];
  v28 = a2 + ((a4 & 7) << 9) + (v19 & 0x38) + 82432;
  v106[0] = 0;
  v29 = a1 + 740472;
  v30 = (*(v29 + (a3 << 6) + 24))(v25, v23, v28, 64, v106);
  v31 = v30;
  v32 = logf(v30 + 1.0);
  v33 = 2 * v26;
  v34 = v29 + (v27 << 6);
  v36 = *(v34 + 24);
  v35 = (v34 + 24);
  v37 = v36(v25, v23, v28, 64, v106);
  v38 = (*v35)(v25 + v33, v23, v28 + v33, 64, v106);
  v39 = 2 * v26 * v23;
  if (v30)
  {
    v40 = v38;
    v41 = (*v35)(v25 + v39, v23, v28 + (v26 << 7), 64, v106);
    v42 = (*v35)(v25 + v33 + v39, v23, v28 + 130 * v26, 64, v106);
    v43.i64[0] = __PAIR64__(v40, v37);
    v43.i64[1] = __PAIR64__(v42, v41);
    _Q0 = vmulq_n_f32(vcvtq_f32_u32(v43), 1.0 / v31);
  }

  else
  {
    (*v35)(v25 + v39, v23, v28 + (v26 << 7), 64, v106);
    (*v35)(v25 + v39 + v33, v23, v28 + 130 * v26, 64, v106);
    __asm { FMOV            V0.4S, #1.0 }
  }

  *&v104[1] = v32;
  v105 = _Q0;
  LODWORD(v49) = *v102;
  v50 = v102[2];
  if (v50 >= 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = v104;
    v54 = *v102;
    while (1)
    {
      v55 = v53;
      v53 = &v106[128 * v52];
      v49 = v102[v51 + 3];
      if (v49 >= 1)
      {
        v56 = *&v102[2 * v51 + 36];
        if (v54 > 0)
        {
          v57 = 0;
          v58 = *&v102[2 * v51 + 14];
          v59 = v58 + 1;
          v60 = 4 * v54;
          while (1)
          {
            if (v54 >= 8)
            {
              v62 = 0.0;
              v63 = v54 & 0x7FFFFFF8;
              v64 = v55 + 1;
              v65 = v59;
              do
              {
                v66 = vmulq_f32(v65[-1], v64[-1]);
                v67 = vmulq_f32(*v65, *v64);
                v62 = (((((((v62 + v66.f32[0]) + v66.f32[1]) + v66.f32[2]) + v66.f32[3]) + v67.f32[0]) + v67.f32[1]) + v67.f32[2]) + v67.f32[3];
                v65 += 2;
                v64 += 2;
                v63 -= 8;
              }

              while (v63);
              v61 = v54 & 0x7FFFFFF8;
              if (v61 == v54)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v61 = 0;
              v62 = 0.0;
            }

            do
            {
              v62 = v62 + (v58->f32[v61] * v55->f32[v61]);
              ++v61;
            }

            while (v54 != v61);
LABEL_34:
            v53->f32[v57] = fmaxf(v62 + v56->f32[v57], 0.0);
            ++v57;
            v59 = (v59 + v60);
            v58 = (v58 + v60);
            if (v57 == v49)
            {
              goto LABEL_30;
            }
          }
        }

        if (v49 > 7)
        {
          v68 = v49 & 0x7FFFFFF8;
          v69 = v56 + 1;
          v70 = &v106[128 * v52 + 4];
          v71 = v68;
          do
          {
            v72 = vmaxnmq_f32(vaddq_f32(*v69, 0), 0);
            v70[-1] = vmaxnmq_f32(vaddq_f32(v69[-1], 0), 0);
            *v70 = v72;
            v69 += 2;
            v70 += 2;
            v71 -= 8;
          }

          while (v71);
          if (v68 == v49)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v68 = 0;
        }

        v73 = v49 - v68;
        v74 = v68;
        v75 = &v106[128 * v52 + v68];
        v76 = &v56->f32[v74];
        do
        {
          v77 = *v76++;
          *v75++ = fmaxf(v77 + 0.0, 0.0);
          --v73;
        }

        while (v73);
      }

LABEL_30:
      v52 = 1 - v52;
      ++v51;
      v54 = v49;
      if (v51 == v50)
      {
        goto LABEL_51;
      }
    }
  }

  v53 = v104;
LABEL_51:
  v78 = v102[1];
  if (v78 < 1)
  {
    goto LABEL_69;
  }

  v79 = *&v102[2 * v50 + 36];
  if (v49 > 0)
  {
    v80 = 0;
    v81 = *&v102[2 * v50 + 14];
    v82 = v81 + 1;
    v83 = 4 * v49;
    while (1)
    {
      if (v49 >= 8)
      {
        v85 = 0.0;
        v86 = v49 & 0x7FFFFFF8;
        v87 = v53 + 1;
        v88 = v82;
        do
        {
          v89 = vmulq_f32(v88[-1], v87[-1]);
          v90 = vmulq_f32(*v88, *v87);
          v85 = (((((((v85 + v89.f32[0]) + v89.f32[1]) + v89.f32[2]) + v89.f32[3]) + v90.f32[0]) + v90.f32[1]) + v90.f32[2]) + v90.f32[3];
          v88 += 2;
          v87 += 2;
          v86 -= 8;
        }

        while (v86);
        v84 = v49 & 0x7FFFFFF8;
        if (v84 == v49)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v84 = 0;
        v85 = 0.0;
      }

      do
      {
        v85 = v85 + (v81->f32[v84] * v53->f32[v84]);
        ++v84;
      }

      while (v49 != v84);
LABEL_54:
      v103[v80] = v85 + v79->f32[v80];
      ++v80;
      v82 = (v82 + v83);
      v81 = (v81 + v83);
      if (v80 == v78)
      {
        goto LABEL_69;
      }
    }
  }

  if (v78 <= 7)
  {
    v91 = 0;
LABEL_67:
    v96 = v78 - v91;
    v97 = v91;
    v98 = &v103[v91];
    v99 = &v79->f32[v97];
    do
    {
      v100 = *v99++;
      *v98++ = v100 + 0.0;
      --v96;
    }

    while (v96);
    goto LABEL_69;
  }

  v91 = v78 & 0x7FFFFFF8;
  v92 = v79 + 1;
  v93 = &v105;
  v94 = v91;
  do
  {
    v95 = vaddq_f32(*v92, 0);
    v93[-1] = vaddq_f32(v92[-1], 0);
    *v93 = v95;
    v92 += 2;
    v93 += 2;
    v94 -= 8;
  }

  while (v94);
  if (v91 != v78)
  {
    goto LABEL_67;
  }

LABEL_69:
  if (v103[0] < -v11)
  {
    v101 = 0;
  }

  else
  {
    v101 = -1;
  }

  if (v103[0] <= v11)
  {
    return v101;
  }

  else
  {
    return 3;
  }
}

_DWORD *pred_pixel_ready_reset(_DWORD *result, unsigned int a2)
{
  result[179] = 0;
  result[391] = 0;
  result[603] = 0;
  result[815] = 0;
  result[1027] = 0;
  if (a2 >= 4)
  {
    LOBYTE(v2) = a2;
    v3 = result;
    do
    {
      v2 = subsize_lookup[v2 + 39];
      pred_pixel_ready_reset(*(v3 + 532), v2);
      pred_pixel_ready_reset(*(v3 + 533), v2);
      result = pred_pixel_ready_reset(*(v3 + 534), v2);
      v3 = *(v3 + 535);
      v3[179] = 0;
      v3[391] = 0;
      v3[603] = 0;
      v3[815] = 0;
      v3[1027] = 0;
    }

    while (v2 > 3);
  }

  return result;
}

uint64_t fill_mode_info_sb(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (*(result + 1312) <= a3)
  {
    return result;
  }

  v6 = a6;
  v8 = a3;
  v10 = result;
  v11 = *(a6 + 4);
  v12 = a5;
  v13 = &subsize_lookup[13 * v11 + a5];
  while (1)
  {
    v14 = 1 << b_width_log2_lookup[v12];
    v15 = v14 + 3;
    if (v14 >= 0)
    {
      v15 = 1 << b_width_log2_lookup[v12];
    }

    v16 = *(v10 + 1320);
    if (v16 <= a4)
    {
      return result;
    }

    v17 = v15 >> 2;
    v18 = *v13;
    if (v11 != 3)
    {
      break;
    }

    v19 = a4;
    fill_mode_info_sb(v10, a2, v8, a4, *v13, *(v6 + 4256));
    a4 = (v17 + a4);
    fill_mode_info_sb(v10, a2, v8, a4, v18, *(v6 + 4264));
    v8 = (v17 + v8);
    result = fill_mode_info_sb(v10, a2, v8, v19, v18, *(v6 + 4272));
    v6 = *(v6 + 4280);
    v11 = *(v6 + 4);
    v13 = &subsize_lookup[13 * v11 + v18];
    v12 = v18;
    if (*(v10 + 1312) <= v8)
    {
      return result;
    }
  }

  switch(v11)
  {
    case 2u:
      v43 = a4 + *(a2 + 25352) * v8;
      v44 = *(v10 + 1480);
      *(a2 + 25360) = v44 + 8 * v43;
      v45 = *(v10 + 1424) + 68 * v43;
      *(v44 + 8 * v43) = v45;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (a4 + v16 * v8);
      *v45 = *(v6 + 2560);
      v46 = *(v6 + 2576);
      v47 = *(v6 + 2592);
      v48 = *(v6 + 2608);
      *(v45 + 64) = *(v6 + 2624);
      *(v45 + 32) = v47;
      *(v45 + 48) = v48;
      *(v45 + 16) = v46;
      v52 = *(a2 + 25568);
      v49 = *(v6 + 2628);
      v50 = *(v6 + 2644);
      *(v52 + 32) = *(v6 + 2660);
      *v52 = v49;
      *(v52 + 16) = v50;
      v51 = *(a2 + 25352);
      LODWORD(v52) = num_8x8_blocks_wide_lookup[v18];
      v53 = *(v10 + 1320);
      if (v53 - a4 >= v52)
      {
        v54 = num_8x8_blocks_wide_lookup[v18];
      }

      else
      {
        v54 = (v53 - a4);
      }

      LODWORD(v55) = num_8x8_blocks_high_lookup[v18];
      LODWORD(v56) = *(v10 + 1312) - v8;
      if (v56 >= v55)
      {
        v56 = num_8x8_blocks_high_lookup[v18];
      }

      else
      {
        v56 = v56;
      }

      if (v56 >= 1 && v54 >= 1)
      {
        v57 = 0;
        v58 = *(a2 + 25360);
        v59 = *v58;
        result = v54 & 0x7FFFFFFC;
        v60 = vdupq_n_s64(*v58);
        v61 = v58 + 2;
        v62 = 8 * v51;
        do
        {
          if (v54 >= 4)
          {
            v64 = v54 & 0x7FFFFFFC;
            v65 = v61;
            do
            {
              v65[-1] = v60;
              *v65 = v60;
              v65 += 2;
              v64 -= 4;
            }

            while (v64);
            v63 = v54 & 0x7FFFFFFC;
            if (result == v54)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v63 = 0;
          }

          v66 = v54 - v63;
          v67 = &v58[v63];
          do
          {
            *v67++ = v59;
            --v66;
          }

          while (v66);
LABEL_39:
          ++v57;
          v61 = (v61 + v62);
          v58 = (v58 + v62);
        }

        while (v57 != v56);
      }

      v68 = v17 + a4;
      if (v17 + a4 >= v53)
      {
        return result;
      }

      v69 = v68 + v51 * v8;
      v70 = *(v10 + 1480);
      *(a2 + 25360) = v70 + 8 * v69;
      v71 = *(v10 + 1424) + 68 * v69;
      *(v70 + 8 * v69) = v71;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (v68 + v53 * v8);
      *v71 = *(v6 + 3408);
      v72 = *(v6 + 3424);
      v73 = *(v6 + 3440);
      v74 = *(v6 + 3456);
      *(v71 + 64) = *(v6 + 3472);
      *(v71 + 32) = v73;
      *(v71 + 48) = v74;
      *(v71 + 16) = v72;
      v75 = *(a2 + 25568);
      v76 = *(v6 + 3476);
      v77 = *(v6 + 3492);
      *(v75 + 32) = *(v6 + 3508);
      *v75 = v76;
      *(v75 + 16) = v77;
      v78 = *(v10 + 1320) - v68;
      v52 = v78 >= v52 ? v52 : v78;
      v79 = *(v10 + 1312) - v8;
      v55 = v79 >= v55 ? v55 : v79;
      if (v55 < 1 || v52 < 1)
      {
        return result;
      }

      v80 = 0;
      v81 = *(a2 + 25360);
      v82 = *v81;
      v83 = vdupq_n_s64(*v81);
      v84 = v81 + 2;
      v85 = 8 * *(a2 + 25352);
      while (1)
      {
        if (v52 >= 4)
        {
          v86 = v52 & 0x7FFFFFFC;
          v87 = v84;
          do
          {
            v87[-1] = v83;
            *v87 = v83;
            v87 += 2;
            v86 -= 4;
          }

          while (v86);
          result = v52 & 0x7FFFFFFC;
          if (result == v52)
          {
            goto LABEL_58;
          }
        }

        else
        {
          result = 0;
        }

        v88 = result - v52;
        result = &v81[result];
        do
        {
          *result = v82;
          result += 8;
        }

        while (!__CFADD__(v88++, 1));
LABEL_58:
        ++v80;
        v84 = (v84 + v85);
        v81 = (v81 + v85);
        if (v80 == v55)
        {
          return result;
        }
      }

    case 1u:
      v90 = a4 + *(a2 + 25352) * v8;
      v91 = *(v10 + 1480);
      *(a2 + 25360) = v91 + 8 * v90;
      v92 = *(v10 + 1424) + 68 * v90;
      *(v91 + 8 * v90) = v92;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (a4 + v16 * v8);
      *v92 = *(v6 + 864);
      v93 = *(v6 + 880);
      v94 = *(v6 + 896);
      v95 = *(v6 + 912);
      *(v92 + 64) = *(v6 + 928);
      *(v92 + 32) = v94;
      *(v92 + 48) = v95;
      *(v92 + 16) = v93;
      v100 = *(a2 + 25568);
      v96 = *(v6 + 932);
      v97 = *(v6 + 948);
      *(v100 + 32) = *(v6 + 964);
      *v100 = v96;
      *(v100 + 16) = v97;
      v98 = *(v10 + 1312);
      v99 = *(a2 + 25352);
      LODWORD(v100) = num_8x8_blocks_wide_lookup[v18];
      v101 = *(v10 + 1320);
      if (v101 - a4 >= v100)
      {
        v102 = num_8x8_blocks_wide_lookup[v18];
      }

      else
      {
        v102 = (v101 - a4);
      }

      LODWORD(v103) = num_8x8_blocks_high_lookup[v18];
      LODWORD(v104) = v98 - v8;
      if (v98 - v8 >= v103)
      {
        v104 = num_8x8_blocks_high_lookup[v18];
      }

      else
      {
        v104 = v104;
      }

      if (v104 >= 1 && v102 >= 1)
      {
        v105 = 0;
        v106 = *(a2 + 25360);
        result = *v106;
        v107 = vdupq_n_s64(*v106);
        v108 = v106 + 2;
        v109 = 8 * v99;
        do
        {
          if (v102 >= 4)
          {
            v111 = v102 & 0x7FFFFFFC;
            v112 = v108;
            do
            {
              v112[-1] = v107;
              *v112 = v107;
              v112 += 2;
              v111 -= 4;
            }

            while (v111);
            v110 = v102 & 0x7FFFFFFC;
            if (v110 == v102)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v110 = 0;
          }

          v113 = v102 - v110;
          v114 = &v106[v110];
          do
          {
            *v114++ = result;
            --v113;
          }

          while (v113);
LABEL_77:
          ++v105;
          v108 = (v108 + v109);
          v106 = (v106 + v109);
        }

        while (v105 != v104);
      }

      v115 = v17 + v8;
      if (v17 + v8 >= v98)
      {
        return result;
      }

      v116 = a4 + v99 * v115;
      v117 = *(v10 + 1480);
      *(a2 + 25360) = v117 + 8 * v116;
      v118 = *(v10 + 1424) + 68 * v116;
      *(v117 + 8 * v116) = v118;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (a4 + v101 * v115);
      *v118 = *(v6 + 1712);
      v119 = *(v6 + 1728);
      v120 = *(v6 + 1744);
      v121 = *(v6 + 1760);
      *(v118 + 64) = *(v6 + 1776);
      *(v118 + 32) = v120;
      *(v118 + 48) = v121;
      *(v118 + 16) = v119;
      v122 = *(a2 + 25568);
      v123 = *(v6 + 1780);
      v124 = *(v6 + 1796);
      *(v122 + 32) = *(v6 + 1812);
      *v122 = v123;
      *(v122 + 16) = v124;
      v125 = *(v10 + 1320) - a4;
      v100 = v125 >= v100 ? v100 : v125;
      v126 = *(v10 + 1312) - v115;
      v103 = v126 >= v103 ? v103 : v126;
      if (v103 < 1 || v100 < 1)
      {
        return result;
      }

      v127 = 0;
      v128 = *(a2 + 25360);
      v129 = *v128;
      v130 = vdupq_n_s64(*v128);
      v131 = v128 + 2;
      v132 = 8 * *(a2 + 25352);
      while (1)
      {
        if (v100 >= 4)
        {
          v134 = v100 & 0x7FFFFFFC;
          v135 = v131;
          do
          {
            v135[-1] = v130;
            *v135 = v130;
            v135 += 2;
            v134 -= 4;
          }

          while (v134);
          v133 = v100 & 0x7FFFFFFC;
          if (v133 == v100)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v133 = 0;
        }

        v136 = v100 - v133;
        v137 = &v128[v133];
        do
        {
          *v137++ = v129;
          --v136;
        }

        while (v136);
LABEL_96:
        ++v127;
        v131 = (v131 + v132);
        v128 = (v128 + v132);
        if (v127 == v103)
        {
          return result;
        }
      }

    case 0u:
      v20 = a4 + *(a2 + 25352) * v8;
      v21 = *(v10 + 1480);
      *(a2 + 25360) = v21 + 8 * v20;
      v22 = *(v10 + 1424) + 68 * v20;
      *(v21 + 8 * v20) = v22;
      *(a2 + 25568) = *(a2 + 25576) + 36 * (a4 + v16 * v8);
      *v22 = *(v6 + 16);
      v23 = *(v6 + 32);
      v24 = *(v6 + 48);
      v25 = *(v6 + 64);
      *(v22 + 64) = *(v6 + 80);
      *(v22 + 32) = v24;
      *(v22 + 48) = v25;
      *(v22 + 16) = v23;
      v26 = *(a2 + 25568);
      v27 = *(v6 + 84);
      v28 = *(v6 + 100);
      *(v26 + 32) = *(v6 + 116);
      *v26 = v27;
      *(v26 + 16) = v28;
      v29 = *(v10 + 1320) - a4;
      v30 = v29 >= num_8x8_blocks_wide_lookup[v12] ? num_8x8_blocks_wide_lookup[v12] : v29;
      LODWORD(v12) = num_8x8_blocks_high_lookup[v12];
      v31 = *(v10 + 1312) - v8;
      v12 = v31 >= v12 ? v12 : v31;
      if (v12 >= 1 && v30 >= 1)
      {
        v32 = 0;
        v33 = *(a2 + 25360);
        v34 = *v33;
        v35 = vdupq_n_s64(*v33);
        v36 = v33 + 2;
        v37 = 8 * *(a2 + 25352);
        do
        {
          if (v30 >= 4)
          {
            v39 = v30 & 0x7FFFFFFC;
            v40 = v36;
            do
            {
              v40[-1] = v35;
              *v40 = v35;
              v40 += 2;
              v39 -= 4;
            }

            while (v39);
            v38 = v30 & 0x7FFFFFFC;
            if (v38 == v30)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v38 = 0;
          }

          v41 = v30 - v38;
          v42 = &v33[v38];
          do
          {
            *v42++ = v34;
            --v41;
          }

          while (v41);
LABEL_21:
          ++v32;
          v36 = (v36 + v37);
          v33 = (v33 + v37);
        }

        while (v32 != v12);
      }

      break;
  }

  return result;
}

int32x2_t *encode_sb_rt(int32x2_t *result, unint64_t a2, __n128 *a3, uint64_t *a4, int a5, signed __int32 a6, int a7, unsigned int a8, uint64_t a9)
{
  v9 = result + 21504;
  v10 = a8;
  v11 = (1 << b_width_log2_lookup[a8]) + (1 << b_width_log2_lookup[a8] < 0 ? 3 : 0);
  if (result[21626].i32[0] <= a5 || result[21627].i32[0] <= a6)
  {
    return result;
  }

  if (a8 < 3)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v13 = (*(*(a2 + 25520) + a6) >> mi_width_log2_lookup[a8]) & 1 | (2 * ((*(a2 + (a5 & 7) + 25528) >> mi_width_log2_lookup[a8]) & 1)) | (4 * mi_width_log2_lookup[a8]);
    v14 = **(*&result[21647] + 8 * (a6 + *(a2 + 25352) * a5));
  }

  v15 = v14;
  v16 = partition_lookup[13 * b_width_log2_lookup[a8] + v14];
  if (a7 && a8)
  {
    v17 = *(a2 + 114248) + 16 * v13 + 4 * v16;
    ++*(v17 + 560);
  }

  v18 = v11 >> 2;
  if (v16 == 2)
  {
    v38 = result;
    v19 = a2;
    v20 = a6;
    encode_b_rt(result, a2, a3, a4, a5, a6, a7, v14, a9 + 2560);
    if (a8 >= 4 && v18 + v20 < v9[123].i32[0])
    {
      encode_b_rt(v38, v19, a3, a4, a5, v18 + v20, a7, v15, a9 + 3408);
    }
  }

  else if (v16 == 1)
  {
    v37 = result;
    v19 = a2;
    v20 = a6;
    encode_b_rt(result, a2, a3, a4, a5, a6, a7, v14, a9 + 864);
    if (a8 >= 4 && v18 + a5 < v9[122].i32[0])
    {
      encode_b_rt(v37, v19, a3, a4, v18 + a5, v20, a7, v15, a9 + 1712);
    }
  }

  else
  {
    if (v16)
    {
      v34 = subsize_lookup[a8 + 39];
      v30 = result;
      v19 = a2;
      encode_sb_rt(result);
      v39 = v30;
      encode_sb_rt(v30);
      v32 = v30;
      v15 = v34;
      encode_sb_rt(v32);
      result = encode_sb_rt(v39);
      v25 = a6;
      if (a8 != 3 && v16 == 3)
      {
        return result;
      }

      goto LABEL_20;
    }

    v19 = a2;
    v20 = a6;
    encode_b_rt(result, a2, a3, a4, a5, a6, a7, v14, a9 + 16);
  }

  v25 = v20;
LABEL_20:
  v26 = a5 & 7;
  v27 = num_8x8_blocks_wide_lookup[v10];
  v28 = &partition_context_lookup[2 * v15];
  memset((*(v19 + 25520) + v25), *v28, v27);
  v29 = v28[1];

  return memset((v19 + 25528 + v26), v29, v27);
}

uint64_t vp9_subtract_plane(uint64_t a1, int a2, int a3)
{
  v5 = (a1 + 8304 * a3);
  v6 = a1 + 136 * a3;
  v7 = ss_size_lookup[4 * a2 + 2 * *(v6 + 24920) + *(v6 + 24924)];
  v8 = num_4x4_blocks_wide_lookup[v7];
  v9 = 4 * v8;
  result = 4 * num_4x4_blocks_high_lookup[v7];
  v11 = v5[513].i64[1];
  v12 = v5[514].i32[0];
  v13 = *(v6 + 24928);
  v14 = *(v6 + 24936);
  if ((*(*(a1 + 25440) + 152) & 8) == 0)
  {
    return vpx_subtract_block_neon(result, v9, v5, 4 * v8, v11, v12, v13, v14);
  }

  v15 = 2 * v11;
  v16 = 2 * v13;
  if ((v7 - 5) > 7)
  {
    if (v7 <= 1)
    {
      do
      {
        v24 = 0;
        v25 = 0;
        do
        {
          *&v5->i8[v24] = vsub_s16(*(v15 + v24), *(v16 + v24));
          v25 += 4;
          v24 += 8;
        }

        while (v25 < v9);
        v5 = (v5 + 8 * v8);
        v16 += 2 * v14;
        v15 += 2 * v12;
        result = (result - 1);
      }

      while (result);
    }

    else
    {
      do
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v5[v22] = vsubq_s16(*(v15 + v22 * 16), *(v16 + v22 * 16));
          v23 += 8;
          ++v22;
        }

        while (v23 < v9);
        v5 = (v5 + 8 * v8);
        v16 += 2 * v14;
        v15 += 2 * v12;
        result = (result - 1);
      }

      while (result);
    }
  }

  else
  {
    v17 = 8 * v8;
    do
    {
      v18 = 0;
      v19 = 16;
      do
      {
        v20 = vsubq_s16(*(v15 + v19), *(v16 + v19));
        i8 = v5[v19 / 0x10].i8;
        *(i8 - 1) = vsubq_s16(*(v15 + v19 - 16), *(v16 + v19 - 16));
        *i8 = v20;
        v18 += 16;
        v19 += 32;
      }

      while (v18 < v9);
      v15 += 2 * v12;
      v16 += 2 * v14;
      v5 = (v5 + v17);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

uint64_t vp9_optimize_b(uint64_t a1, int a2, int a3, unsigned int a4, signed int a5)
{
  v147 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 24576);
  v7 = a1 + 136 * a2;
  v8 = (a1 + 8304 * a2);
  v9 = **(a1 + 25360);
  v10 = v9[8];
  v11 = a3;
  v12 = a3 << 6;
  v13 = v8[1026];
  v14 = *(v13 + 2 * a3);
  v15 = a4 == 3;
  if (a4)
  {
    v16 = &vp9_coefband_trans_8x8plus;
  }

  else
  {
    v16 = &vp9_coefband_trans_4x4;
  }

  if (a2 > 0 || v10 > 0 || *(a1 + 25540))
  {
    v17 = (&vp9_default_scan_orders + 3 * a4);
  }

  else
  {
    v114 = v9 + 1;
    if (*v9 < 3u)
    {
      v114 = &v9[12 * v11 + 20];
    }

    v17 = (&vp9_scan_orders + 12 * a4 + 3 * intra_mode_to_tx_type_lookup[*v114]);
  }

  v18 = v8[1024] + v12;
  v19 = *(v7 + 24912) + v12;
  v20 = v10 > 0;
  v21 = *(a1 + 25840);
  v22 = plane_rd_mult_0[2 * v20 + (a2 > 0)] * v6[265];
  if (v21)
  {
    v23 = (v22 * (v9[4] - v21 + 8)) >> 4;
  }

  else
  {
    v23 = v22 >> 1;
  }

  v138 = v23;
  v24 = *v17;
  v25 = v6[240];
  v26 = &vp9_cat6_high12_high_cost;
  if (v25 == 10)
  {
    v26 = &vp9_cat6_high10_high_cost;
  }

  if (v25 == 8)
  {
    v27 = &vp9_cat6_high_cost;
  }

  else
  {
    v27 = v26;
  }

  v135 = v27;
  if (!v14)
  {
    result = 0;
LABEL_109:
    if (result < v14)
    {
      v111 = v14 - result;
      v112 = &v24[result];
      do
      {
        v113 = *v112++;
        *(v18 + 4 * v113) = 0;
        *(v19 + 4 * v113) = 0;
        --v111;
      }

      while (v111);
    }

    goto LABEL_114;
  }

  v121 = v11;
  v131 = v8[1025] + v12;
  v130 = *(v7 + 25032);
  v28 = v17[2];
  v137 = v6[264];
  v29 = a1 + 13824 * a4 + 6912 * (a2 > 0) + 3456 * v20 + 26912;
  v144 = vp9_dct_cat_lt_10_value_tokens;
  v30 = *v17;
  v31 = v14;
  do
  {
    while (1)
    {
      v33 = *v30++;
      v32 = v33;
      v34 = *(v18 + 4 * v33);
      if ((v34 - 67) < 0xFFFFFF7B)
      {
        break;
      }

      v146[v32] = *(&vp9_pt_energy_class + v144[4 * v34]);
      if (!--v31)
      {
        goto LABEL_21;
      }
    }

    v146[v32] = *(&vp9_pt_energy_class + 10);
    --v31;
  }

  while (v31);
LABEL_21:
  v125 = v6;
  v120 = v13;
  v35 = 0;
  v145 = 0;
  v117 = 0;
  v143 = v29;
  v36 = 0x4000000000000;
  v136 = (0x4000000000000 << v137) + ((v138 * *(v29 + 576 * *v16 + 48 * a5 + 44) + 256) >> 9);
  v127 = (16 << (2 * a4)) - 1;
  v128 = vp9_dct_cat_lt_10_value_cost;
  v118 = v24;
  v119 = v14;
  v142 = -v14;
  v37 = v24 + 1;
  v38 = v28 + 4;
  v39 = 1;
  v124 = a5;
  v123 = v18;
  v133 = v16;
  v134 = v19;
  v132 = v21;
  v129 = a4 == 3;
  v115 = v38;
  v116 = v24 + 1;
LABEL_22:
  v122 = v31;
  v140 = 0;
  v40 = &v37[v35];
  v41 = &v38[4 * v35++];
  do
  {
    v42 = a5;
    v43 = v35 - 1;
    if (v35 != 1)
    {
      v42 = (v146[*(v41 - 2)] + v146[*(v41 - 1)] + 1) >> 1;
    }

    v44 = *(v40 - 1);
    v45 = *(v18 + 4 * v44);
    v46 = v16[v35 - 1];
    if (!v45)
    {
      v145 += *(v143 + 576 * v16[v35 - 1] + 288 * (v39 == 0) + 48 * v42 + 4 * *v144);
      v39 = 0;
      goto LABEL_24;
    }

    v47 = *(v131 + 4 * v44);
    v48 = -(v47 << v15);
    v49 = *(*(a1 + 25440) + 152);
    v50 = (v19 + 4 * v44);
    if ((v49 & 8) != 0)
    {
      v53 = v125[240] - 8;
      if (v47 << v15 > 0)
      {
        v54 = -((v47 << v15) >> (*(v125 + 960) - 8));
      }

      else
      {
        v54 = v48 >> (*(v125 + 960) - 8);
      }

      v51 = v54 * v54;
      v126 = *v50;
      v56 = *v50 - v47;
      v55 = v56 < 0;
      v57 = v56 << v15;
      if (v55)
      {
        v52 = -(-v57 >> v53);
      }

      else
      {
        v52 = v57 >> v53;
      }
    }

    else
    {
      v51 = v48 * v48;
      v126 = *v50;
      v52 = (*v50 - v47) << v15;
    }

    v58 = *(v130 + 2 * (v44 != 0));
    v59 = v51;
    v60 = v45 + ~(2 * (v45 >> 31));
    if (v60)
    {
      v61 = *(v130 + 2 * (v44 != 0));
      if ((v49 & 8) != 0)
      {
        v61 = v58 >> (v125[240] - 8);
      }

      v59 = (v52 - ((v61 + (v45 >> 31)) ^ (v45 >> 31))) * (v52 - ((v61 + (v45 >> 31)) ^ (v45 >> 31)));
    }

    if ((v45 - 67) > 0xFFFFFF7A)
    {
      v64 = v144[4 * v45];
      v63 = v128[v45];
      if ((v60 - 67) > 0xFFFFFF7A)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v45 >= 0)
      {
        v62 = *(v18 + 4 * v44);
      }

      else
      {
        v62 = -v45;
      }

      v63 = v135[(v62 - 67) >> 8] + vp9_cat6_low_cost[(v62 - 67)];
      v64 = 0xAu;
      if ((v60 - 67) > 0xFFFFFF7A)
      {
LABEL_45:
        v65 = v144[4 * v60];
        v66 = v128[v60];
        v67 = v39 == 0;
        v141 = (v19 + 4 * v44);
        if (v43 >= v127)
        {
          goto LABEL_46;
        }

        goto LABEL_52;
      }
    }

    if (v60 >= 0)
    {
      v72 = v45 + ~(2 * (v45 >> 31));
    }

    else
    {
      v72 = -v60;
    }

    v66 = v135[(v72 - 67) >> 8] + vp9_cat6_low_cost[(v72 - 67)];
    v65 = 0xAu;
    v67 = v39 == 0;
    v141 = (v19 + 4 * v44);
    if (v43 >= v127)
    {
LABEL_46:
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      goto LABEL_61;
    }

LABEL_52:
    if (v142 + v35)
    {
      v73 = *(v18 + 4 * *v40);
      if ((v73 - 67) >= 0xFFFFFF7B)
      {
        v74 = v144[4 * v73];
      }

      else
      {
        v74 = 10;
      }
    }

    else
    {
      v74 = 11;
    }

    v75 = v16[v35];
    v76 = v143 + 576 * v16[v35];
    v77 = v146;
    v146[v44] = *(&vp9_pt_energy_class + v64);
    v78 = *v41;
    v79 = *(v41 + 1);
    v80 = v76 + 48 * ((v77[v78] + v77[v79] + 1) >> 1);
    v68 = *(v80 + 4 * v74);
    v146[v44] = *(&vp9_pt_energy_class + v65);
    v70 = *(v80 + 44);
    v81 = (v77[v78] + v77[v79] + 1) >> 1;
    v69 = *(v76 + 288 * (v60 == 0) + 48 * v81 + 4 * v74);
    if (v60)
    {
      v71 = *(v143 + 576 * v75 + 288 * (v60 == 0) + 48 * v81 + 44);
    }

    else
    {
      v71 = 0;
    }

    a5 = v124;
    v18 = v123;
LABEL_61:
    v82 = v52 * v52;
    v83 = v143 + 576 * v46 + 288 * v67 + 48 * v42;
    v84 = *(v83 + 4 * v64) + v63;
    v85 = *(v83 + 4 * v65) + v66;
    v86 = (v82 << v137) + (((v84 + v68) * v138 + 256) >> 9);
    v87 = (v59 << v137) + (((v85 + v69) * v138 + 256) >> 9);
    v88 = v84 + v145;
    v89 = ((v82 + v36 - v51) << v137) + (((v84 + v145 + v70) * v138 + 256) >> 9);
    v90 = v85 + v145;
    v91 = ((v59 + v36 - v51) << v137) + (((v85 + v145 + v71) * v138 + 256) >> 9);
    v92 = v91 < v89;
    v15 = v129;
    if (v60 * v58 < 0)
    {
      v93 = -(-(v60 * v58) >> v129);
    }

    else
    {
      v93 = (v60 * v58) >> v129;
    }

    v94 = v87 < v86 || v91 < v89;
    if (v94)
    {
      v95 = v93;
    }

    else
    {
      v92 = 0;
      v95 = 0;
    }

    if (v60)
    {
      v96 = v92;
    }

    else
    {
      v96 = 0;
    }

    if (v60)
    {
      v97 = v91;
    }

    else
    {
      v97 = v89;
    }

    if (v60)
    {
      v98 = v95;
    }

    else
    {
      v98 = 0;
    }

    if (v87 >= v86)
    {
      v39 = v45;
      v59 = v82;
      v145 = v88;
    }

    else
    {
      v145 = v90;
      *(v18 + 4 * v44) = v60;
      *v141 = v98;
      v39 = *(v18 + 4 * v44);
      v64 = v65;
    }

    v16 = v133;
    v19 = v134;
    v146[v44] = *(&vp9_pt_energy_class + v64);
    if (v132 >= 1)
    {
      if (v39 >= 0)
      {
        v99 = v39;
      }

      else
      {
        v99 = -v39;
      }

      v94 = v99 > 1;
      v100 = v140;
      if (v94)
      {
        v100 = v140 + 1;
      }

      v140 = v100;
    }

    v36 += v59 - v51;
    v101 = v60 != 0;
    v102 = v101 && v96;
    if (v101 && v96)
    {
      v103 = v97;
    }

    else
    {
      v103 = v89;
    }

    if (v103 < v136)
    {
      if (v102)
      {
        v104 = v98;
      }

      else
      {
        v104 = v126;
      }

      if (v102)
      {
        v105 = v45 + ~(2 * (v45 >> 31));
      }

      else
      {
        v105 = v45;
      }

      v117 = __PAIR64__(v104, v105);
      LODWORD(v31) = v35;
      v136 = v103;
      v38 = v115;
      v37 = v116;
      if (v142 + v35)
      {
        goto LABEL_22;
      }

      v122 = v35;
      goto LABEL_107;
    }

LABEL_24:
    ++v40;
    ++v35;
    v41 += 4;
  }

  while (v142 + v35 != 1);
  if (v140 < 1)
  {
LABEL_107:
    result = v122;
    v13 = v120;
    v11 = v121;
    v24 = v118;
    v14 = v119;
    if (v122 >= 1)
    {
      v110 = v118[v122 - 1];
      *(v18 + 4 * v110) = v117;
      *(v19 + 4 * v110) = HIDWORD(v117);
    }

    goto LABEL_109;
  }

  v106 = v119;
  v13 = v120;
  v11 = v121;
  while (1)
  {
    v107 = v106 - 1;
    if (v106 < 1)
    {
      break;
    }

    if (*(v18 + 4 * v118[--v106]))
    {
      result = (v107 + 1);
      goto LABEL_114;
    }
  }

  result = 0;
LABEL_114:
  *(v13 + 2 * v11) = result;
  return result;
}

void vp9_xform_quant_dc(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v9 = a1 + 8304 * a2;
  v10 = a1 + 136 * a2 + 24912;
  v11 = a3 << 6;
  v12 = *(v9 + 8200) + v11;
  v13 = (*(v9 + 0x2000) + v11);
  v14 = (*v10 + v11);
  v15 = *(v9 + 8208);
  v16 = num_4x4_blocks_wide_lookup[a6];
  v17 = 4 * v16;
  v18 = 4 * (a5 + 4 * v16 * a4);
  v19 = (v9 + 2 * v18);
  if ((*(*(a1 + 25440) + 152) & 8) != 0)
  {
    switch(a7)
    {
      case 1:
        *v12 = vaddlvq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(*(v19 + 2 * v17), *v19), vaddq_s16(v19[v17 / 4], *(v19 + 6 * v17))), vaddq_s16(vaddq_s16(v19[v17 / 2], *(v19 + 10 * v17)), v19[12 * v17 / 0x10])), *(v19 + 14 * v17)));
        *(v12 + 4) = 0;
        v73 = *(v9 + 8272);
        v74 = **(v9 + 8240);
        v75 = **(v10 + 120);
        v76 = 0uLL;
        v13[2] = 0u;
        v13[3] = 0u;
        v13[4] = 0u;
        v13[5] = 0u;
        v13[6] = 0u;
        v13[7] = 0u;
        v13[8] = 0u;
        v13[9] = 0u;
        v13[10] = 0u;
        v13[11] = 0u;
        v13[12] = 0u;
        v13[13] = 0u;
        v13[14] = 0u;
        v13[15] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v14[14] = 0u;
        v14[15] = 0u;
        v14[12] = 0u;
        v14[13] = 0u;
        v14[10] = 0u;
        v14[11] = 0u;
        v14[8] = 0u;
        v14[9] = 0u;
        v14[6] = 0u;
        v14[7] = 0u;
        v14[4] = 0u;
        v14[5] = 0u;
        break;
      case 2:
        v54 = (8304 * a2 + 2 * v18 + a1 + 16);
        v55 = 8 * v16;
        v56 = 0uLL;
        v57 = 16;
        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        do
        {
          v61 = *v54[-2].i8;
          v56 = vaddw_s16(v56, *v61.i8);
          v58 = vaddw_high_s16(v58, v61);
          v59 = vaddw_s16(v59, *v54);
          v60 = vaddw_high_s16(v60, *v54->i8);
          v54 = (v54 + v55);
          --v57;
        }

        while (v57);
        *v12 = vaddvq_s32(vaddq_s32(vaddq_s32(v56, v58), vaddq_s32(v60, v59))) >> 1;
        *(v12 + 4) = 0;
        v62 = *(v9 + 8272);
        v63 = **(v9 + 8240);
        v64 = **(v10 + 120);
        bzero(v13, 0x400uLL);
        bzero(v14, 0x400uLL);
        v65 = *v12 >> 31;
        v41 = ((*v62 + ((v65 ^ *v12) + (*v12 >> 31))) * v63) >> 16;
        v66 = (v65 ^ v41) - v65;
        *v13 = v66;
        v43 = v66 * v64;
        goto LABEL_38;
      case 3:
        v30 = (8304 * a2 + 2 * v18 + a1 + 32);
        v31 = 8 * v16;
        v32 = 0uLL;
        v33 = 32;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        do
        {
          v32 = vaddw_high_s16(vaddw_s16(v32, v30[-4]), *v30[-4].i8);
          v34 = vaddw_high_s16(vaddw_s16(v34, v30[-2]), *v30[-2].i8);
          v35 = vaddw_high_s16(vaddw_s16(v35, *v30), *v30->i8);
          v36 = vaddw_high_s16(vaddw_s16(v36, v30[2]), *v30[2].i8);
          v30 = (v30 + v31);
          --v33;
        }

        while (v33);
        *v12 = vaddvq_s32(vaddq_s32(vaddq_s32(v34, v32), vaddq_s32(v35, v36))) >> 3;
        *(v12 + 4) = 0;
        v37 = *(v9 + 8272);
        v38 = **(v9 + 8240);
        v39 = **(v10 + 120);
        bzero(v13, 0x1000uLL);
        bzero(v14, 0x1000uLL);
        v40 = *v12 >> 31;
        v41 = (v38 * ((v40 ^ *v12) + (*v12 >> 31) + ((*v37 + 1) >> 1))) >> 15;
        v42 = (v40 ^ v41) - v40;
        *v13 = v42;
        v43 = v42 * v39 / 2;
        goto LABEL_38;
      default:
        (*(a1 + 82408))(v19, v12);
        v73 = *(v9 + 8272);
        v74 = **(v9 + 8240);
        v75 = **(v10 + 120);
        v76 = 0uLL;
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        break;
    }

    v14[2] = v76;
    v14[3] = v76;
    *v14 = v76;
    v14[1] = v76;
    v84 = *v12 >> 31;
    v41 = ((*v73 + ((v84 ^ *v12) + (*v12 >> 31))) * v74) >> 16;
    v85 = (v84 ^ v41) - v84;
    *v13 = v85;
    v43 = v85 * v75;
LABEL_38:
    *v14 = v43;
    v29 = v41 == 0;
    goto LABEL_39;
  }

  if (a7 == 1)
  {
    v67 = vaddlvq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(*(v19 + 2 * v17), *v19), vaddq_s16(v19[v17 / 4], *(v19 + 6 * v17))), vaddq_s16(vaddq_s16(v19[v17 / 2], *(v19 + 10 * v17)), v19[12 * v17 / 0x10])), *(v19 + 14 * v17)));
    *v12 = v67;
    *(v12 + 4) = 0;
    v68 = *(v9 + 8272);
    v69 = **(v9 + 8240);
    v70 = **(v10 + 120);
    v13[2] = 0u;
    v13[3] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[6] = 0u;
    v13[7] = 0u;
    v13[8] = 0u;
    v13[9] = 0u;
    v13[10] = 0u;
    v13[11] = 0u;
    v13[12] = 0u;
    v13[13] = 0u;
    v13[14] = 0u;
    v13[15] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    v14[14] = 0u;
    v14[15] = 0u;
    v14[12] = 0u;
    v14[13] = 0u;
    v14[10] = 0u;
    v14[11] = 0u;
    v14[8] = 0u;
    v14[9] = 0u;
    v14[6] = 0u;
    v14[7] = 0u;
    v14[4] = 0u;
    v14[5] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    v71 = ((v67 >> 31) ^ v67) + (v67 >> 31) + *v68;
    if (v71 >= 0x7FFF)
    {
      v71 = 0x7FFF;
    }

    if (v71 <= -32768)
    {
      v71 = -32768;
    }

    v51 = v71 * v69;
    v72 = ((v67 >> 31) ^ (v51 >> 16)) - (v67 >> 31);
    *v13 = v72;
    v53 = v72 * v70;
    goto LABEL_35;
  }

  if (a7 == 2)
  {
    vpx_fdct16x16_1_neon(v19, v12, v17);
    v44 = *(v9 + 8272);
    v45 = **(v9 + 8240);
    v46 = **(v10 + 120);
    v47 = *v12;
    v48 = *v12 >> 31;
    v49 = (v48 ^ v47) + (v47 >> 31);
    bzero(v13, 0x400uLL);
    bzero(v14, 0x400uLL);
    v50 = v49 + *v44;
    if (v50 >= 0x7FFF)
    {
      v50 = 0x7FFF;
    }

    if (v50 <= -32768)
    {
      v50 = -32768;
    }

    v51 = v50 * v45;
    v52 = (v48 ^ (v51 >> 16)) - v48;
    *v13 = v52;
    v53 = v52 * v46;
    goto LABEL_35;
  }

  if (a7 != 3)
  {
    (*(a1 + 82408))(v19, v12);
    v77 = *(v9 + 8272);
    v78 = **(v9 + 8240);
    v79 = **(v10 + 120);
    v80 = *v12 >> 31;
    v81 = (v80 ^ *v12) + (*v12 >> 31);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    v82 = v81 + *v77;
    if (v82 >= 0x7FFF)
    {
      v82 = 0x7FFF;
    }

    if (v82 <= -32768)
    {
      v82 = -32768;
    }

    v51 = v82 * v78;
    v83 = (v80 ^ (v51 >> 16)) - v80;
    *v13 = v83;
    v53 = v83 * v79;
LABEL_35:
    *v14 = v53;
    v29 = (v51 & 0xFFFF0000) == 0;
    goto LABEL_39;
  }

  vpx_fdct32x32_1_neon(v19, v12, v17);
  v20 = *(v9 + 8272);
  v21 = **(v9 + 8240);
  v22 = **(v10 + 120);
  v23 = *v12;
  v24 = *v12 >> 31;
  v25 = (v24 ^ v23) + (v23 >> 31);
  bzero(v13, 0x1000uLL);
  bzero(v14, 0x1000uLL);
  v26 = v25 + ((*v20 + 1) >> 1);
  if (v26 >= 0x7FFF)
  {
    v26 = 0x7FFF;
  }

  if (v26 <= -32768)
  {
    v26 = -32768;
  }

  v27 = v26 * v21;
  v28 = (v24 ^ (v27 >> 15)) - v24;
  *v13 = v28;
  *v14 = v28 * v22 / 2;
  v29 = (v27 & 0xFFFF8000) == 0;
LABEL_39:
  v86 = !v29;
  *(v15 + 2 * a3) = v86;
}

unsigned __int16 vp9_xform_quant@<H0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>)
{
  v8 = a1 + 81920;
  v9 = a1 + 8304 * a2;
  v10 = (a1 + 136 * a2 + 24912);
  v11 = &vp9_default_scan_orders + 3 * a7;
  v12 = *(v9 + 8200);
  v13 = a3 << 6;
  v14 = *(v9 + 0x2000);
  v15 = *v10;
  v16 = (*(v9 + 8208) + 2 * a3);
  v17 = 4 * num_4x4_blocks_wide_lookup[a6];
  v18 = (v9 + 8 * (a5 + v17 * a4));
  if ((*(*(a1 + 25440) + 152) & 8) != 0)
  {
    switch(a7)
    {
      case 1u:
        vpx_highbd_fdct8x8_neon(v18, (v12 + v13), v17);
        v24 = v10[15];
        v25 = (v12 + v13);
        v26 = (v14 + v13);
        v27 = (v15 + v13);
        v28 = 64;
        break;
      case 2u:
        vpx_highbd_fdct16x16_neon(v18, (v12 + v13), v17);
        v24 = v10[15];
        v25 = (v12 + v13);
        v26 = (v14 + v13);
        v27 = (v15 + v13);
        v28 = 256;
        break;
      case 3u:
        if (*(v8 + 292))
        {
          vpx_highbd_fdct32x32_rd_neon(v18, v12 + v13, v17);
        }

        else
        {
          vpx_highbd_fdct32x32_neon(v18, v12 + v13, v17);
        }

        v31 = v10[15];

        return vpx_highbd_quantize_b_32x32_neon((v12 + v13), v9, (v14 + v13), (v15 + v13), v31, v16, v11);
      default:
        (*(v8 + 488))(v18, v12 + v13);
        v24 = v10[15];
        v25 = (v12 + v13);
        v26 = (v14 + v13);
        v27 = (v15 + v13);
        v28 = 16;
        break;
    }

    return vpx_highbd_quantize_b_neon(v25, v28, v9, v26, v27, v24, v16, v11);
  }

  else
  {
    switch(a7)
    {
      case 1u:
        vpx_fdct8x8_neon(v18, (v12 + v13), v17);
        v19 = v10[15];
        v20 = (v12 + v13);
        v21 = (v14 + v13);
        v22 = (v15 + v13);
        v23 = 64;
        break;
      case 2u:
        vpx_fdct16x16_neon(v18, v12 + v13, v17);
        v19 = v10[15];
        v20 = (v12 + v13);
        v21 = (v14 + v13);
        v22 = (v15 + v13);
        v23 = 256;
        break;
      case 3u:
        if (*(v8 + 292))
        {
          vpx_fdct32x32_rd_neon(v18, (v12 + v13), v17);
        }

        else
        {
          vpx_fdct32x32_neon(v18, (v12 + v13), v17);
        }

        v30 = v10[15];

        return vpx_quantize_b_32x32_neon((v12 + v13), v9, (v14 + v13), (v15 + v13), v30, v16, v11);
      default:
        (*(v8 + 488))(v18, v12 + v13);
        v19 = v10[15];
        v20 = (v12 + v13);
        v21 = (v14 + v13);
        v22 = (v15 + v13);
        v23 = 16;
        break;
    }

    return vpx_quantize_b_neon(v20, v23, v9, v21, v22, v19, v16, v11);
  }
}

void vp9_encode_sb(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 24832);
  v135 = 0u;
  v136[0] = 0u;
  v133 = 0u;
  v134 = 0u;
  __dst = 0u;
  v132 = 0u;
  v3 = **(a1 + 25360);
  v123 = a1;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v3[3] = 1;
  v130 = v3 + 3;
  if (!*(a1 + 26904))
  {
    v118 = v3;
    v5 = a2;
    if (!*(a1 + 25592))
    {
      v6 = ss_size_lookup[4 * a2 + 2 * *(a1 + 24920) + *(a1 + 24924)];
      v7 = num_4x4_blocks_wide_lookup[v6];
      v8 = 4 * v7;
      v9 = 4 * num_4x4_blocks_high_lookup[v6];
      v10 = *(a1 + 8216);
      v11 = *(a1 + 8224);
      v12 = *(a1 + 24928);
      v13 = v2[26];
      if ((*(*(a1 + 25440) + 152) & 8) != 0)
      {
        v14 = 2 * v10;
        v15 = 2 * v12;
        if ((v6 - 5) > 7)
        {
          if (v6 <= 1)
          {
            v25 = a1;
            do
            {
              v26 = 0;
              v27 = 0;
              do
              {
                *(v25 + v26) = vsub_s16(*(v14 + v26), *(v15 + v26));
                v27 += 4;
                v26 += 8;
              }

              while (v27 < v8);
              v25 += 8 * v7;
              v15 += 2 * v13;
              v14 += 2 * v11;
              LODWORD(v9) = v9 - 1;
            }

            while (v9);
          }

          else
          {
            v22 = a1;
            do
            {
              v23 = 0;
              v24 = 0;
              do
              {
                *(v22 + v23) = vsubq_s16(*(v14 + v23), *(v15 + v23));
                v24 += 8;
                v23 += 16;
              }

              while (v24 < v8);
              v22 += 8 * v7;
              v15 += 2 * v13;
              v14 += 2 * v11;
              LODWORD(v9) = v9 - 1;
            }

            while (v9);
          }
        }

        else
        {
          v16 = a1;
          v17 = 8 * v7;
          do
          {
            v18 = 0;
            v19 = 16;
            do
            {
              v20 = vsubq_s16(*(v14 + v19), *(v15 + v19));
              v21 = (v16 + v19);
              v21[-1] = vsubq_s16(*(v14 + v19 - 16), *(v15 + v19 - 16));
              *v21 = v20;
              v18 += 16;
              v19 += 32;
            }

            while (v18 < v8);
            v14 += 2 * v11;
            v15 += 2 * v13;
            v16 += v17;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
        }
      }

      else
      {
        vpx_subtract_block_neon(v9, v8, a1, 4 * v7, v10, v11, v12, v13);
      }
    }

    v28 = *(a1 + 82208);
    v122 = a1;
    if (v28)
    {
      if (v2[190] && v2[191])
      {
        v28 = 0;
      }

      else
      {
        vp9_get_entropy_contexts(a2, v118[2], a1 + 24912, &__dst, &v134);
        v28 = 1;
      }
    }

    v124 = v28;
    p_dst = &__dst;
    v129 = &v134;
    v29 = v2[22];
    v30 = v2[23];
    v120 = v2;
    v121 = &ss_size_lookup[4 * v5];
    v31 = v121[2 * v29 + v30];
    v32 = (v2[143] >> (v29 + 5)) & (v2[143] >> 31);
    v33 = v32 + num_4x4_blocks_wide_lookup[v31];
    v34 = ((v2[145] >> (v30 + 5)) & (v2[145] >> 31)) + num_4x4_blocks_high_lookup[v31];
    if (v34 >= 1 && v33 >= 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = *(**(a1 + 25360) + 2);
      v39 = -v32 >> v38 << (2 * v38);
      v40 = 1 << v38;
      do
      {
        v41 = 0;
        do
        {
          encode_block(0, v36, v37, v41, v31, v38, &v123);
          v36 += 1 << (2 * v38);
          v41 += v40;
        }

        while (v41 < v33);
        v36 += v39;
        v37 += v40;
      }

      while (v37 < v34);
    }

    if (!v120[190])
    {
      v42 = v121[2 * v120[56] + v120[57]];
      v43 = num_4x4_blocks_wide_lookup[v42];
      v44 = (v122 + 8304);
      v45 = 4 * v43;
      v46 = 4 * num_4x4_blocks_high_lookup[v42];
      v47 = *(v122 + 16520);
      v48 = *(v122 + 16528);
      v49 = *(v122 + 25064);
      v50 = v120[60];
      if ((*(*(v122 + 25440) + 152) & 8) != 0)
      {
        v51 = 2 * v47;
        v52 = 2 * v49;
        if ((v42 - 5) > 7)
        {
          if (v42 <= 1)
          {
            v62 = 8 * v43;
            do
            {
              v63 = 0;
              v64 = 0;
              do
              {
                *&v44->i8[v63] = vsub_s16(*(v51 + v63), *(v52 + v63));
                v64 += 4;
                v63 += 8;
              }

              while (v64 < v45);
              v44 = (v44 + v62);
              v52 += 2 * v50;
              v51 += 2 * v48;
              LODWORD(v46) = v46 - 1;
            }

            while (v46);
          }

          else
          {
            v59 = 8 * v43;
            do
            {
              v60 = 0;
              v61 = 0;
              do
              {
                v44[v60] = vsubq_s16(*(v51 + v60 * 16), *(v52 + v60 * 16));
                v61 += 8;
                ++v60;
              }

              while (v61 < v45);
              v44 = (v44 + v59);
              v52 += 2 * v50;
              v51 += 2 * v48;
              LODWORD(v46) = v46 - 1;
            }

            while (v46);
          }
        }

        else
        {
          v53 = (v122 + 8320);
          v54 = 8 * v43;
          do
          {
            v55 = 0;
            v56 = v53;
            v57 = 16;
            do
            {
              v58 = vsubq_s16(*(v51 + v57), *(v52 + v57));
              v56[-1] = vsubq_s16(*(v51 + v57 - 16), *(v52 + v57 - 16));
              *v56 = v58;
              v55 += 16;
              v57 += 32;
              v56 += 2;
            }

            while (v55 < v45);
            v51 += 2 * v48;
            v52 += 2 * v50;
            v53 = (v53 + v54);
            LODWORD(v46) = v46 - 1;
          }

          while (v46);
        }
      }

      else
      {
        vpx_subtract_block_neon(v46, v45, v44, 4 * v43, v47, v48, v49, v50);
      }
    }

    v65 = *(v122 + 82208);
    if (v65)
    {
      if (v120[190] && v120[191])
      {
        v65 = 0;
      }

      else
      {
        vp9_get_entropy_contexts(a2, uv_txsize_lookup[16 * *v118 + 4 * v118[2] + 2 * v120[56] + v120[57]], v122 + 25048, &v132, &v135);
        v65 = 1;
      }
    }

    LODWORD(v124) = v65;
    p_dst = &v132;
    v129 = &v135;
    v67 = v120[56];
    v66 = v120[57];
    v68 = 2 * v67;
    v69 = v121[2 * v67 + v66];
    v70 = (v120[143] >> (v67 + 5)) & (v120[143] >> 31);
    v71 = v70 + num_4x4_blocks_wide_lookup[v69];
    v72 = ((v120[145] >> (v66 + 5)) & (v120[145] >> 31)) + num_4x4_blocks_high_lookup[v69];
    if (v72 >= 1 && v71 >= 1)
    {
      v74 = 0;
      v75 = 0;
      v76 = uv_txsize_lookup[16 * ***(v122 + 25360) + 4 * *(**(v122 + 25360) + 2) + v68 + v66];
      v77 = -v70 >> v76 << (2 * v76);
      v78 = 1 << v76;
      do
      {
        v79 = 0;
        do
        {
          encode_block(1, v74, v75, v79, v69, v76, &v123);
          v74 += 1 << (2 * v76);
          v79 += v78;
        }

        while (v79 < v71);
        v74 += v77;
        v75 += v78;
      }

      while (v75 < v72);
    }

    if (!v120[190])
    {
      v80 = (v122 + 16608);
      v81 = v121[2 * v120[90] + v120[91]];
      v82 = num_4x4_blocks_wide_lookup[v81];
      v83 = 4 * v82;
      v84 = 4 * num_4x4_blocks_high_lookup[v81];
      v85 = *(v122 + 24824);
      v86 = *v120;
      v87 = *(v122 + 25200);
      v88 = v120[94];
      if ((*(*(v122 + 25440) + 152) & 8) != 0)
      {
        v89 = 2 * v85;
        v90 = 2 * v87;
        if ((v81 - 5) > 7)
        {
          if (v81 <= 1)
          {
            v100 = 8 * v82;
            do
            {
              v101 = 0;
              v102 = 0;
              do
              {
                *&v80->i8[v101] = vsub_s16(*(v89 + v101), *(v90 + v101));
                v102 += 4;
                v101 += 8;
              }

              while (v102 < v83);
              v80 = (v80 + v100);
              v90 += 2 * v88;
              v89 += 2 * v86;
              LODWORD(v84) = v84 - 1;
            }

            while (v84);
          }

          else
          {
            v97 = 8 * v82;
            do
            {
              v98 = 0;
              v99 = 0;
              do
              {
                v80[v98] = vsubq_s16(*(v89 + v98 * 16), *(v90 + v98 * 16));
                v99 += 8;
                ++v98;
              }

              while (v99 < v83);
              v80 = (v80 + v97);
              v90 += 2 * v88;
              v89 += 2 * v86;
              LODWORD(v84) = v84 - 1;
            }

            while (v84);
          }
        }

        else
        {
          v91 = (v122 + 16624);
          v92 = 8 * v82;
          do
          {
            v93 = 0;
            v94 = v91;
            v95 = 16;
            do
            {
              v96 = vsubq_s16(*(v89 + v95), *(v90 + v95));
              v94[-1] = vsubq_s16(*(v89 + v95 - 16), *(v90 + v95 - 16));
              *v94 = v96;
              v93 += 16;
              v95 += 32;
              v94 += 2;
            }

            while (v93 < v83);
            v89 += 2 * v86;
            v90 += 2 * v88;
            v91 = (v91 + v92);
            LODWORD(v84) = v84 - 1;
          }

          while (v84);
        }
      }

      else
      {
        vpx_subtract_block_neon(v84, v83, v80, 4 * v82, v85, v86, v87, v88);
      }
    }

    v103 = *(v122 + 82208);
    if (v103)
    {
      if (v120[190] && v120[191])
      {
        v103 = 0;
      }

      else
      {
        vp9_get_entropy_contexts(a2, uv_txsize_lookup[16 * *v118 + 4 * v118[2] + 2 * v120[90] + v120[91]], v122 + 25184, &v133, v136);
        v103 = 1;
      }
    }

    LODWORD(v124) = v103;
    p_dst = &v133;
    v129 = v136;
    v104 = v120[90];
    v105 = v120[91];
    v106 = 2 * v104;
    v107 = v121[2 * v104 + v105];
    v108 = (v120[143] >> (v104 + 5)) & (v120[143] >> 31);
    v109 = v108 + num_4x4_blocks_wide_lookup[v107];
    v110 = ((v120[145] >> (v105 + 5)) & (v120[145] >> 31)) + num_4x4_blocks_high_lookup[v107];
    if (v110 >= 1 && v109 >= 1)
    {
      v112 = 0;
      v113 = 0;
      v114 = uv_txsize_lookup[16 * ***(v122 + 25360) + 4 * *(**(v122 + 25360) + 2) + v106 + v105];
      v115 = -v108 >> v114 << (2 * v114);
      v116 = 1 << v114;
      do
      {
        v117 = 0;
        do
        {
          encode_block(2, v112, v113, v117, v107, v114, &v123);
          v112 += 1 << (2 * v114);
          v117 += v116;
        }

        while (v117 < v109);
        v112 += v115;
        v113 += v116;
      }

      while (v113 < v110);
    }
  }
}

void encode_block(int a1, int a2, int a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v7 = a4;
  v8 = a3;
  v10 = *a7;
  v11 = *a7 + 136 * a1;
  v12 = (*a7 + 8304 * a1);
  v13 = v11 + 24912;
  v15 = a2;
  v16 = *(v11 + 24928);
  v17 = *(v11 + 24936);
  v18 = *(a7 + 40);
  v19 = *(a7 + 48);
  if (!a1 && *(v10 + (a6 << 8) + a2 + 25864))
  {
    goto LABEL_3;
  }

  v20 = v10 + 82208;
  v21 = (v10 + 25536);
  v14 = *(v11 + 24912);
  v22 = (v14 + (a2 << 6));
  if (!*(v10 + 25592))
  {
    if (*(v10 + 82224))
    {
      if (a1 || *(v10 + 82228) != 1)
      {
        v92 = (v14 + (a2 << 6));
        v90 = &vp9_default_scan_orders + 3 * a6;
        v24 = v12[1025];
        v25 = a2 << 6;
        v86 = v12[1024];
        v88 = (v12[1026] + 2 * a2);
        v26 = 4 * num_4x4_blocks_wide_lookup[a5];
        v95 = a1;
        v82 = *(v11 + 24928);
        v84 = a7;
        v75 = a6;
        v80 = *(a7 + 40);
        v78 = *(v11 + 24936);
        v76 = *(a7 + 48);
        v74 = v24;
        if ((*(*(v10 + 25440) + 152) & 8) != 0)
        {
          switch(a6)
          {
            case 1u:
              vpx_highbd_fdct8x8_neon(&v12[a4 + v26 * v8], (v24 + v25), v26);
              v66 = *(v13 + 120);
              v67 = (v74 + v25);
              v68 = (v86 + v25);
              v69 = 64;
              break;
            case 2u:
              vpx_highbd_fdct16x16_neon(&v12[a4 + v26 * v8], (v24 + v25), v26);
              v66 = *(v13 + 120);
              v67 = (v74 + v25);
              v68 = (v86 + v25);
              v69 = 256;
              break;
            case 3u:
              if (*(v10 + 82212))
              {
                vpx_highbd_fdct32x32_rd_neon(&v12[a4 + v26 * v8], v24 + v25, v26);
              }

              else
              {
                vpx_highbd_fdct32x32_neon(&v12[a4 + v26 * v8], v24 + v25, v26);
              }

              v72 = (v74 + v25);
              v73 = (v86 + v25);
              v22 = v92;
              vp9_highbd_quantize_fp_32x32_neon(v72, 1024, v12, v73, v92, *(v13 + 120), v88, v90);
              goto LABEL_82;
            default:
              (*(v10 + 82408))(&v12[a4 + v26 * v8], v24 + v25);
              v66 = *(v13 + 120);
              v67 = (v74 + v25);
              v68 = (v86 + v25);
              v69 = 16;
              break;
          }

          v22 = v92;
          vp9_highbd_quantize_fp_neon(v67, v69, v12, v68, v92, v66, v88, v90);
        }

        else
        {
          switch(a6)
          {
            case 1u:
              vpx_fdct8x8_neon(&v12[a4 + v26 * v8], (v24 + v25), v26);
              v62 = *(v13 + 120);
              v63 = (v74 + v25);
              v64 = (v86 + v25);
              v65 = 64;
              break;
            case 2u:
              vpx_fdct16x16_neon(&v12[a4 + v26 * v8], v24 + v25, v26);
              v62 = *(v13 + 120);
              v63 = (v74 + v25);
              v64 = (v86 + v25);
              v65 = 256;
              break;
            case 3u:
              if (*(v10 + 82212))
              {
                vpx_fdct32x32_rd_neon(&v12[a4 + v26 * v8], (v24 + v25), v26);
              }

              else
              {
                vpx_fdct32x32_neon(&v12[a4 + v26 * v8], (v24 + v25), v26);
              }

              v70 = (v74 + v25);
              v71 = (v86 + v25);
              v22 = v92;
              vp9_quantize_fp_32x32_neon(v70, 1024, v12, v71, v92, *(v13 + 120), v88, v90);
LABEL_82:
              a6 = v75;
              v16 = v82;
              a7 = v84;
              a1 = v95;
              v18 = v80;
              v17 = v78;
              v19 = v76;
              goto LABEL_5;
            default:
              (*(v10 + 82408))(&v12[a4 + v26 * v8], v24 + v25);
              v62 = *(v13 + 120);
              v63 = (v74 + v25);
              v64 = (v86 + v25);
              v65 = 16;
              break;
          }

          v22 = v92;
          vp9_quantize_fp_neon(v63, v65, v12, v64, v92, v62, v88, v90);
        }

        v19 = v76;
        v17 = v78;
        v18 = v80;
        v16 = v82;
        a1 = v95;
        a7 = v84;
        a6 = v75;
        goto LABEL_5;
      }

LABEL_3:
      *(v12[1026] + 2 * a2) = 0;
      *(v19 + a3) = 0;
      *(v18 + a4) = 0;
      return;
    }

    if (max_txsize_lookup[a5] == a6)
    {
      if (*(v10 + (a2 >> (2 * a6)) + 4 * a1 + 82228) == 2)
      {
        v97 = a1;
        v94 = (v14 + (a2 << 6));
        v48 = a6;
        v83 = *(v11 + 24928);
        v85 = a7;
        v81 = *(a7 + 40);
        v79 = *(v11 + 24936);
        v77 = *(a7 + 48);
        vp9_xform_quant_dc(v10, a1, a2, a3, a4, a5, a6);
        goto LABEL_38;
      }

      if (*(v10 + (a2 >> (2 * a6)) + 4 * a1 + 82228))
      {
        goto LABEL_3;
      }
    }

    v97 = a1;
    v94 = (v14 + (a2 << 6));
    v48 = a6;
    v83 = *(v11 + 24928);
    v85 = a7;
    v81 = *(a7 + 40);
    v79 = *(v11 + 24936);
    v77 = *(a7 + 48);
    vp9_xform_quant(v10, a1, a2, a3, a4, a5, a6);
LABEL_38:
    v19 = v77;
    v17 = v79;
    v18 = v81;
    v16 = v83;
    a1 = v97;
    a7 = v85;
    a6 = v48;
    v22 = v94;
  }

LABEL_5:
  if (!*v20 || *(v10 + 25592) && *(v10 + 25596))
  {
    v23 = *(v12[1026] + 2 * v15) != 0;
    *(v19 + v8) = v23;
    *(v18 + v7) = v23;
    if (*(v12[1026] + 2 * v15))
    {
LABEL_9:
      **(a7 + 56) = 0;
    }
  }

  else
  {
    if (*(v19 + v8))
    {
      v27 = (*(v18 + v7) != 0) + 1;
    }

    else
    {
      v27 = *(v18 + v7) != 0;
    }

    v28 = a1;
    v29 = v10;
    v30 = a2;
    v31 = a6;
    v93 = v12;
    v96 = v15;
    v89 = v7;
    v91 = v8;
    v87 = (v10 + 25536);
    v32 = v10 + 82208;
    v33 = v13;
    v34 = v22;
    v35 = a7;
    v36 = v16;
    v37 = v18;
    v38 = v10;
    v39 = v17;
    v40 = v19;
    v41 = vp9_optimize_b(v29, v28, v30, a6, v27);
    v42 = v40;
    v17 = v39;
    v10 = v38;
    v43 = v37;
    v16 = v36;
    a7 = v35;
    v22 = v34;
    v13 = v33;
    v20 = v32;
    v21 = v87;
    v7 = v89;
    v8 = v91;
    v12 = v93;
    v15 = v96;
    a6 = v31;
    *(v42 + v91) = v41 > 0;
    *(v43 + v89) = v41 > 0;
    if (*(v93[1026] + 2 * v96))
    {
      goto LABEL_9;
    }
  }

  if (!*(v20 + 8))
  {
    v44 = v12[1026];
    v45 = *(v44 + 2 * v15);
    if (*(v44 + 2 * v15))
    {
      v46 = v16 + 4 * (v7 + v17 * v8);
      if ((*(*(v10 + 25440) + 152) & 8) != 0)
      {
        v49 = (2 * v46);
        switch(a6)
        {
          case 1u:
            v56 = *(v13 + 24);
            v57 = *v21;

            vp9_highbd_idct8x8_add(v22, v49, v56, v45, v57);
            break;
          case 2u:
            v53 = *(v13 + 24);
            v54 = *v21;

            vp9_highbd_idct16x16_add(v22, v49, v53, v45, v54);
            break;
          case 3u:
            v50 = *(v13 + 24);
            v51 = *v21;

            vp9_highbd_idct32x32_add(v22, v49, v50, v45, v51);
            break;
          default:
            v60 = *(v20 + 216);
            v61 = *(v13 + 24);

            v60(v22, v49, v61);
            break;
        }
      }

      else
      {
        switch(a6)
        {
          case 1u:
            v55 = *(v13 + 24);

            vp9_idct8x8_add(v22, v46, v55, v45);
            break;
          case 2u:
            v52 = *(v13 + 24);

            vp9_idct16x16_add(v22, v46, v52, v45);
            break;
          case 3u:
            v47 = *(v13 + 24);

            vp9_idct32x32_add(v22, v46, v47, v45);
            break;
          default:
            v58 = *(v20 + 208);
            v59 = *(v13 + 24);

            v58(v22, v46, v59);
            break;
        }
      }
    }
  }
}