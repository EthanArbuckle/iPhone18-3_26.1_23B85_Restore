uint64_t vpx_highbd_10_sub_pixel_avg_variance32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v217[257] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v66 = 0;
      v67 = v11 + 2;
      do
      {
        v68 = &v216[v66];
        *v68 = vrhaddq_u16(*(v67 - 2), *(v67 - 30));
        v68[1] = vrhaddq_u16(*(v67 - 1), *(v67 - 14));
        v68[2] = vrhaddq_u16(*v67, *(v67 + 2));
        v68[3] = vrhaddq_u16(*(v67 + 1), *(v67 + 18));
        v66 += 4;
        v67 = (v67 + 2 * v4);
      }

      while ((v66 * 16) != 2112);
      v69 = 2 * v10;
      v70 = v216[0];
      v71 = v217;
      v72 = 112;
      do
      {
        v74 = v71[-1];
        v73 = *v71;
        v75 = v71[-2];
        v76 = v71[2];
        v77 = vrhaddq_u16(vrhaddq_u16(v71[-3], v71[1]), *(v69 + v72 - 96));
        v78 = &v215[v72];
        v78[-7] = vrhaddq_u16(vrhaddq_u16(v70, *v71), *(v69 + v72 - 112));
        v78[-6] = v77;
        v79 = vrhaddq_u16(vrhaddq_u16(v74, v71[3]), *(v69 + v72 - 64));
        v78[-5] = vrhaddq_u16(vrhaddq_u16(v75, v76), *(v69 + v72 - 80));
        v78[-4] = v79;
        v72 += 64;
        v71 += 4;
        v70 = v73;
      }

      while (v72 != 2160);
      v80 = 0;
      v81 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v82 = vsubq_s16(*&v215[v80], v81[-2]);
        v83 = vpadalq_s16(v24, v82);
        v84 = vmlal_s16(v22, *v82.i8, *v82.i8);
        v85 = vmlal_high_s16(v23, v82, v82);
        v86 = vsubq_s16(*&v215[v80 + 16], v81[-1]);
        v87 = vpadalq_s16(v83, v86);
        v88 = vmlal_s16(v84, *v86.i8, *v86.i8);
        v89 = vmlal_high_s16(v85, v86, v86);
        v90 = vsubq_s16(*&v215[v80 + 32], *v81);
        v91 = vpadalq_s16(v87, v90);
        v92 = vmlal_s16(v88, *v90.i8, *v90.i8);
        v93 = vmlal_high_s16(v89, v90, v90);
        v94 = vsubq_s16(*&v215[v80 + 48], v81[1]);
        v24 = vpadalq_s16(v91, v94);
        v22 = vmlal_s16(v92, *v94.i8, *v94.i8);
        v23 = vmlal_high_s16(v93, v94, v94);
        v80 += 64;
        v81 = (v81 + 2 * v8);
      }

      while (v80 != 2048);
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        v118 = v11 + 2;
        do
        {
          v119 = &v216[v16 / 0x10];
          *v119 = vrhaddq_u16(*(v118 - 2), *(v118 - 30));
          v119[1] = vrhaddq_u16(*(v118 - 1), *(v118 - 14));
          v119[2] = vrhaddq_u16(*v118, *(v118 + 2));
          v119[3] = vrhaddq_u16(*(v118 + 1), *(v118 + 18));
          v16 += 64;
          v118 = (v118 + 2 * v4);
        }

        while (v16 != 2112);
        v120 = vdupq_n_s16(8 - v6);
        v121 = vdupq_n_s16(v6);
        v122 = 2 * v10;
        v123 = v216[0];
        v124 = v217;
        v125 = 112;
        do
        {
          v127 = v124[-1];
          v126 = *v124;
          v128 = v124[-2];
          v129 = v124[2];
          v130 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124[-3], v120), v124[1], v121), 3uLL), *(v122 + v125 - 96));
          v131 = &v215[v125];
          v131[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v123, v120), *v124, v121), 3uLL), *(v122 + v125 - 112));
          v131[-6] = v130;
          v132 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v127, v120), v124[3], v121), 3uLL), *(v122 + v125 - 64));
          v131[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v120), v129, v121), 3uLL), *(v122 + v125 - 80));
          v131[-4] = v132;
          v125 += 64;
          v124 += 4;
          v123 = v126;
        }

        while (v125 != 2160);
        v133 = 0;
        v134 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v135 = vsubq_s16(*&v215[v133], v134[-2]);
          v136 = vpadalq_s16(v24, v135);
          v137 = vmlal_s16(v22, *v135.i8, *v135.i8);
          v138 = vmlal_high_s16(v23, v135, v135);
          v139 = vsubq_s16(*&v215[v133 + 16], v134[-1]);
          v140 = vpadalq_s16(v136, v139);
          v141 = vmlal_s16(v137, *v139.i8, *v139.i8);
          v142 = vmlal_high_s16(v138, v139, v139);
          v143 = vsubq_s16(*&v215[v133 + 32], *v134);
          v144 = vpadalq_s16(v140, v143);
          v145 = vmlal_s16(v141, *v143.i8, *v143.i8);
          v146 = vmlal_high_s16(v142, v143, v143);
          v147 = vsubq_s16(*&v215[v133 + 48], v134[1]);
          v24 = vpadalq_s16(v144, v147);
          v22 = vmlal_s16(v145, *v147.i8, *v147.i8);
          v23 = vmlal_high_s16(v146, v147, v147);
          v133 += 64;
          v134 = (v134 + 2 * v8);
        }

        while (v133 != 2048);
      }

      else
      {
        v17 = 2 * v10;
        v18 = v11 + 2;
        do
        {
          v19 = &v216[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 48));
          v16 += 64;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 2048);
        v20 = 0;
        v21 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = vsubq_s16(v216[v20], v21[-2]);
          v26 = vpadalq_s16(v24, v25);
          v27 = vmlal_s16(v22, *v25.i8, *v25.i8);
          v28 = vmlal_high_s16(v23, v25, v25);
          v29 = vsubq_s16(v216[v20 + 1], v21[-1]);
          v30 = vpadalq_s16(v26, v29);
          v31 = vmlal_s16(v27, *v29.i8, *v29.i8);
          v32 = vmlal_high_s16(v28, v29, v29);
          v33 = vsubq_s16(v216[v20 + 2], *v21);
          v34 = vpadalq_s16(v30, v33);
          v35 = vmlal_s16(v31, *v33.i8, *v33.i8);
          v36 = vmlal_high_s16(v32, v33, v33);
          v37 = vsubq_s16(v216[v20 + 3], v21[1]);
          v24 = vpadalq_s16(v34, v37);
          v22 = vmlal_s16(v35, *v37.i8, *v37.i8);
          v23 = vmlal_high_s16(v36, v37, v37);
          v20 += 4;
          v21 = (v21 + 2 * v8);
        }

        while ((v20 * 16) != 2048);
      }
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v148 = 0;
      v149 = vdupq_n_s16(8 - v5);
      v150 = vdupq_n_s16(v5);
      v151 = v11 + 2;
      do
      {
        v152 = &v216[v148];
        *v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 - 2), v149), *(v151 - 30), v150), 3uLL);
        v152[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 - 1), v149), *(v151 - 14), v150), 3uLL);
        v152[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v151, v149), *(v151 + 2), v150), 3uLL);
        v152[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 + 1), v149), *(v151 + 18), v150), 3uLL);
        v148 += 4;
        v151 = (v151 + 2 * v4);
      }

      while ((v148 * 16) != 2112);
      v153 = 2 * v10;
      v154 = v216[0];
      v155 = v217;
      v156 = 112;
      do
      {
        v158 = v155[-1];
        v157 = *v155;
        v159 = v155[-2];
        v160 = v155[2];
        v161 = vrhaddq_u16(vrhaddq_u16(v155[-3], v155[1]), *(v153 + v156 - 96));
        v162 = &v215[v156];
        v162[-7] = vrhaddq_u16(vrhaddq_u16(v154, *v155), *(v153 + v156 - 112));
        v162[-6] = v161;
        v163 = vrhaddq_u16(vrhaddq_u16(v158, v155[3]), *(v153 + v156 - 64));
        v162[-5] = vrhaddq_u16(vrhaddq_u16(v159, v160), *(v153 + v156 - 80));
        v162[-4] = v163;
        v156 += 64;
        v155 += 4;
        v154 = v157;
      }

      while (v156 != 2160);
      v164 = 0;
      v165 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v166 = vsubq_s16(*&v215[v164], v165[-2]);
        v167 = vpadalq_s16(v24, v166);
        v168 = vmlal_s16(v22, *v166.i8, *v166.i8);
        v169 = vmlal_high_s16(v23, v166, v166);
        v170 = vsubq_s16(*&v215[v164 + 16], v165[-1]);
        v171 = vpadalq_s16(v167, v170);
        v172 = vmlal_s16(v168, *v170.i8, *v170.i8);
        v173 = vmlal_high_s16(v169, v170, v170);
        v174 = vsubq_s16(*&v215[v164 + 32], *v165);
        v175 = vpadalq_s16(v171, v174);
        v176 = vmlal_s16(v172, *v174.i8, *v174.i8);
        v177 = vmlal_high_s16(v173, v174, v174);
        v178 = vsubq_s16(*&v215[v164 + 48], v165[1]);
        v24 = vpadalq_s16(v175, v178);
        v22 = vmlal_s16(v176, *v178.i8, *v178.i8);
        v23 = vmlal_high_s16(v177, v178, v178);
        v164 += 64;
        v165 = (v165 + 2 * v8);
      }

      while (v164 != 2048);
    }

    else
    {
      v38 = 0;
      if (v6)
      {
        v179 = vdupq_n_s16(8 - v5);
        v180 = vdupq_n_s16(v5);
        v181 = v11 + 2;
        do
        {
          v182 = &v216[v38 / 0x10];
          *v182 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 - 2), v179), *(v181 - 30), v180), 3uLL);
          v182[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 - 1), v179), *(v181 - 14), v180), 3uLL);
          v182[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v181, v179), *(v181 + 2), v180), 3uLL);
          v182[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 + 1), v179), *(v181 + 18), v180), 3uLL);
          v38 += 64;
          v181 = (v181 + 2 * v4);
        }

        while (v38 != 2112);
        v183 = vdupq_n_s16(8 - v6);
        v184 = vdupq_n_s16(v6);
        v185 = 2 * v10;
        v186 = v216[0];
        v187 = v217;
        v188 = 112;
        do
        {
          v190 = v187[-1];
          v189 = *v187;
          v191 = v187[-2];
          v192 = v187[2];
          v193 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187[-3], v183), v187[1], v184), 3uLL), *(v185 + v188 - 96));
          v194 = &v215[v188];
          v194[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v186, v183), *v187, v184), 3uLL), *(v185 + v188 - 112));
          v194[-6] = v193;
          v195 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190, v183), v187[3], v184), 3uLL), *(v185 + v188 - 64));
          v194[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v191, v183), v192, v184), 3uLL), *(v185 + v188 - 80));
          v194[-4] = v195;
          v188 += 64;
          v187 += 4;
          v186 = v189;
        }

        while (v188 != 2160);
        v196 = 0;
        v197 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v198 = vsubq_s16(*&v215[v196], v197[-2]);
          v199 = vpadalq_s16(v24, v198);
          v200 = vmlal_s16(v22, *v198.i8, *v198.i8);
          v201 = vmlal_high_s16(v23, v198, v198);
          v202 = vsubq_s16(*&v215[v196 + 16], v197[-1]);
          v203 = vpadalq_s16(v199, v202);
          v204 = vmlal_s16(v200, *v202.i8, *v202.i8);
          v205 = vmlal_high_s16(v201, v202, v202);
          v206 = vsubq_s16(*&v215[v196 + 32], *v197);
          v207 = vpadalq_s16(v203, v206);
          v208 = vmlal_s16(v204, *v206.i8, *v206.i8);
          v209 = vmlal_high_s16(v205, v206, v206);
          v210 = vsubq_s16(*&v215[v196 + 48], v197[1]);
          v24 = vpadalq_s16(v207, v210);
          v22 = vmlal_s16(v208, *v210.i8, *v210.i8);
          v23 = vmlal_high_s16(v209, v210, v210);
          v196 += 64;
          v197 = (v197 + 2 * v8);
        }

        while (v196 != 2048);
      }

      else
      {
        v39 = 2 * v10;
        v40 = vdupq_n_s16(8 - v5);
        v41 = vdupq_n_s16(v5);
        v42 = v11 + 2;
        do
        {
          v43 = &v216[v38 / 0x10];
          *v43 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 2), v40), *(v42 - 30), v41), 3uLL), *(v39 + v38));
          v43[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 1), v40), *(v42 - 14), v41), 3uLL), *(v39 + v38 + 16));
          v43[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v42, v40), *(v42 + 2), v41), 3uLL), *(v39 + v38 + 32));
          v43[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 + 1), v40), *(v42 + 18), v41), 3uLL), *(v39 + v38 + 48));
          v38 += 64;
          v42 = (v42 + 2 * v4);
        }

        while (v38 != 2048);
        v44 = 0;
        v45 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v46 = vsubq_s16(v216[v44], v45[-2]);
          v47 = vpadalq_s16(v24, v46);
          v48 = vmlal_s16(v22, *v46.i8, *v46.i8);
          v49 = vmlal_high_s16(v23, v46, v46);
          v50 = vsubq_s16(v216[v44 + 1], v45[-1]);
          v51 = vpadalq_s16(v47, v50);
          v52 = vmlal_s16(v48, *v50.i8, *v50.i8);
          v53 = vmlal_high_s16(v49, v50, v50);
          v54 = vsubq_s16(v216[v44 + 2], *v45);
          v55 = vpadalq_s16(v51, v54);
          v56 = vmlal_s16(v52, *v54.i8, *v54.i8);
          v57 = vmlal_high_s16(v53, v54, v54);
          v58 = vsubq_s16(v216[v44 + 3], v45[1]);
          v24 = vpadalq_s16(v55, v58);
          v22 = vmlal_s16(v56, *v58.i8, *v58.i8);
          v23 = vmlal_high_s16(v57, v58, v58);
          v44 += 4;
          v45 = (v45 + 2 * v8);
        }

        while ((v44 * 16) != 2048);
      }
    }
  }

  else
  {
    v12 = 2 * v10;
    if (v6 == 4)
    {
      v59 = 0;
      v61 = *v11;
      v60 = (v11 + 2);
      v62 = v61;
      v63 = 2 * v4;
      do
      {
        v64 = &v216[v59 / 0x10];
        v65 = *(&v60[-2] + v63);
        *v64 = vrhaddq_u16(vrhaddq_u16(v62, v65), *(v12 + v59));
        v64[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(&v60[-1] + v63)), *(v12 + v59 + 16));
        v64[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2 * v4)), *(v12 + v59 + 32));
        v64[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(&v60[1] + v63)), *(v12 + v59 + 48));
        v59 += 64;
        v60 = (v60 + v63);
        v62 = v65;
      }

      while (v59 != 2048);
    }

    else
    {
      v13 = 0;
      if (v6)
      {
        v95 = vdupq_n_s16(8 - v6);
        v96 = vdupq_n_s16(v6);
        v98 = *v11;
        v97 = (v11 + 2);
        v99 = v98;
        v100 = 2 * v4;
        do
        {
          v101 = &v216[v13 / 0x10];
          v102 = *(&v97[-2] + v100);
          *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v99, v95), v102, v96), 3uLL), *(v12 + v13));
          v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97[-1], v95), *(&v97[-1] + v100), v96), 3uLL), *(v12 + v13 + 16));
          v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v97, v95), *(v97 + 2 * v4), v96), 3uLL), *(v12 + v13 + 32));
          v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97[1], v95), *(&v97[1] + v100), v96), 3uLL), *(v12 + v13 + 48));
          v13 += 64;
          v97 = (v97 + v100);
          v99 = v102;
        }

        while (v13 != 2048);
      }

      else
      {
        v14 = (v11 + 2);
        do
        {
          v15 = &v216[v13 / 0x10];
          *v15 = vrhaddq_u16(v14[-2], *(v12 + v13));
          v15[1] = vrhaddq_u16(v14[-1], *(v12 + v13 + 16));
          v15[2] = vrhaddq_u16(*v14, *(v12 + v13 + 32));
          v15[3] = vrhaddq_u16(v14[1], *(v12 + v13 + 48));
          v13 += 64;
          v14 = (v14 + 2 * v4);
        }

        while (v13 != 2048);
      }
    }

    v103 = 0;
    v104 = (2 * v7 + 32);
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v105 = vsubq_s16(v216[v103], v104[-2]);
      v106 = vpadalq_s16(v24, v105);
      v107 = vmlal_s16(v22, *v105.i8, *v105.i8);
      v108 = vmlal_high_s16(v23, v105, v105);
      v109 = vsubq_s16(v216[v103 + 1], v104[-1]);
      v110 = vpadalq_s16(v106, v109);
      v111 = vmlal_s16(v107, *v109.i8, *v109.i8);
      v112 = vmlal_high_s16(v108, v109, v109);
      v113 = vsubq_s16(v216[v103 + 2], *v104);
      v114 = vpadalq_s16(v110, v113);
      v115 = vmlal_s16(v111, *v113.i8, *v113.i8);
      v116 = vmlal_high_s16(v112, v113, v113);
      v117 = vsubq_s16(v216[v103 + 3], v104[1]);
      v24 = vpadalq_s16(v114, v117);
      v22 = vmlal_s16(v115, *v117.i8, *v117.i8);
      v23 = vmlal_high_s16(v116, v117, v117);
      v103 += 4;
      v104 = (v104 + 2 * v8);
    }

    while ((v103 * 16) != 2048);
  }

  v211 = vaddvq_s32(v24);
  v212 = vaddlvq_u32(vaddq_s32(v23, v22));
  *v9 = (v212 + 8) >> 4;
  v213 = ((v212 + 8) >> 4) - (((((v211 << 30) + 0x80000000) >> 32) * (((v211 << 30) + 0x80000000) >> 32)) >> 10);
  return v213 & ~(v213 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v220[513] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v66 = v11 + 2;
      v67 = v219;
      v68 = -65;
      do
      {
        *v67 = vrhaddq_u16(*(v66 - 2), *(v66 - 30));
        v67[1] = vrhaddq_u16(*(v66 - 1), *(v66 - 14));
        v67[2] = vrhaddq_u16(*v66, *(v66 + 2));
        v67[3] = vrhaddq_u16(*(v66 + 1), *(v66 + 18));
        v67 += 4;
        v66 = (v66 + 2 * v4);
        v69 = __CFADD__(v68++, 1);
      }

      while (!v69);
      v70 = 2 * v10;
      v71 = v219[0];
      v72 = v220;
      v73 = 112;
      do
      {
        v75 = v72[-1];
        v74 = *v72;
        v76 = v72[-2];
        v77 = v72[2];
        v78 = vrhaddq_u16(vrhaddq_u16(v72[-3], v72[1]), *(v70 + v73 - 96));
        v79 = (&v218 + v73);
        v79[-7] = vrhaddq_u16(vrhaddq_u16(v71, *v72), *(v70 + v73 - 112));
        v79[-6] = v78;
        v80 = vrhaddq_u16(vrhaddq_u16(v75, v72[3]), *(v70 + v73 - 64));
        v79[-5] = vrhaddq_u16(vrhaddq_u16(v76, v77), *(v70 + v73 - 80));
        v79[-4] = v80;
        v73 += 64;
        v72 += 4;
        v71 = v74;
      }

      while (v73 != 4208);
      v81 = 0;
      v82 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v83 = vsubq_s16(*(&v218 + v81), v82[-2]);
        v84 = vpadalq_s16(v24, v83);
        v85 = vmlal_s16(v22, *v83.i8, *v83.i8);
        v86 = vmlal_high_s16(v23, v83, v83);
        v87 = vsubq_s16(*(&v218 + v81 + 16), v82[-1]);
        v88 = vpadalq_s16(v84, v87);
        v89 = vmlal_s16(v85, *v87.i8, *v87.i8);
        v90 = vmlal_high_s16(v86, v87, v87);
        v91 = vsubq_s16(*(&v218 + v81 + 32), *v82);
        v92 = vpadalq_s16(v88, v91);
        v93 = vmlal_s16(v89, *v91.i8, *v91.i8);
        v94 = vmlal_high_s16(v90, v91, v91);
        v95 = vsubq_s16(*(&v218 + v81 + 48), v82[1]);
        v24 = vpadalq_s16(v92, v95);
        v22 = vmlal_s16(v93, *v95.i8, *v95.i8);
        v23 = vmlal_high_s16(v94, v95, v95);
        v81 += 64;
        v82 = (v82 + 2 * v8);
      }

      while (v81 != 4096);
    }

    else if (v6)
    {
      v119 = v11 + 2;
      v120 = v219;
      v121 = -65;
      do
      {
        *v120 = vrhaddq_u16(*(v119 - 2), *(v119 - 30));
        v120[1] = vrhaddq_u16(*(v119 - 1), *(v119 - 14));
        v120[2] = vrhaddq_u16(*v119, *(v119 + 2));
        v120[3] = vrhaddq_u16(*(v119 + 1), *(v119 + 18));
        v120 += 4;
        v119 = (v119 + 2 * v4);
        v69 = __CFADD__(v121++, 1);
      }

      while (!v69);
      v122 = 2 * v10;
      v123 = vdupq_n_s16(8 - v6);
      v124 = vdupq_n_s16(v6);
      v125 = v219[0];
      v126 = v220;
      v127 = 112;
      do
      {
        v129 = v126[-1];
        v128 = *v126;
        v130 = v126[-2];
        v131 = v126[2];
        v132 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v126[-3], v123), v126[1], v124), 3uLL), *(v122 + v127 - 96));
        v133 = (&v218 + v127);
        v133[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v125, v123), *v126, v124), 3uLL), *(v122 + v127 - 112));
        v133[-6] = v132;
        v134 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v129, v123), v126[3], v124), 3uLL), *(v122 + v127 - 64));
        v133[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v130, v123), v131, v124), 3uLL), *(v122 + v127 - 80));
        v133[-4] = v134;
        v127 += 64;
        v126 += 4;
        v125 = v128;
      }

      while (v127 != 4208);
      v135 = 0;
      v136 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v137 = vsubq_s16(*(&v218 + v135), v136[-2]);
        v138 = vpadalq_s16(v24, v137);
        v139 = vmlal_s16(v22, *v137.i8, *v137.i8);
        v140 = vmlal_high_s16(v23, v137, v137);
        v141 = vsubq_s16(*(&v218 + v135 + 16), v136[-1]);
        v142 = vpadalq_s16(v138, v141);
        v143 = vmlal_s16(v139, *v141.i8, *v141.i8);
        v144 = vmlal_high_s16(v140, v141, v141);
        v145 = vsubq_s16(*(&v218 + v135 + 32), *v136);
        v146 = vpadalq_s16(v142, v145);
        v147 = vmlal_s16(v143, *v145.i8, *v145.i8);
        v148 = vmlal_high_s16(v144, v145, v145);
        v149 = vsubq_s16(*(&v218 + v135 + 48), v136[1]);
        v24 = vpadalq_s16(v146, v149);
        v22 = vmlal_s16(v147, *v149.i8, *v149.i8);
        v23 = vmlal_high_s16(v148, v149, v149);
        v135 += 64;
        v136 = (v136 + 2 * v8);
      }

      while (v135 != 4096);
    }

    else
    {
      v16 = 0;
      v17 = 2 * v10;
      v18 = v11 + 2;
      do
      {
        v19 = &v219[v16 / 0x10];
        *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16));
        v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 16));
        v19[2] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 32));
        v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 48));
        v16 += 64;
        v18 = (v18 + 2 * v4);
      }

      while (v16 != 4096);
      v20 = 0;
      v21 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = vsubq_s16(v219[v20], v21[-2]);
        v26 = vpadalq_s16(v24, v25);
        v27 = vmlal_s16(v22, *v25.i8, *v25.i8);
        v28 = vmlal_high_s16(v23, v25, v25);
        v29 = vsubq_s16(v219[v20 + 1], v21[-1]);
        v30 = vpadalq_s16(v26, v29);
        v31 = vmlal_s16(v27, *v29.i8, *v29.i8);
        v32 = vmlal_high_s16(v28, v29, v29);
        v33 = vsubq_s16(v219[v20 + 2], *v21);
        v34 = vpadalq_s16(v30, v33);
        v35 = vmlal_s16(v31, *v33.i8, *v33.i8);
        v36 = vmlal_high_s16(v32, v33, v33);
        v37 = vsubq_s16(v219[v20 + 3], v21[1]);
        v24 = vpadalq_s16(v34, v37);
        v22 = vmlal_s16(v35, *v37.i8, *v37.i8);
        v23 = vmlal_high_s16(v36, v37, v37);
        v20 += 4;
        v21 = (v21 + 2 * v8);
      }

      while ((v20 * 16) != 4096);
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v150 = vdupq_n_s16(8 - v5);
      v151 = vdupq_n_s16(v5);
      v152 = v11 + 2;
      v153 = v219;
      v154 = -65;
      do
      {
        *v153 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v152 - 2), v150), *(v152 - 30), v151), 3uLL);
        v153[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v152 - 1), v150), *(v152 - 14), v151), 3uLL);
        v153[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v152, v150), *(v152 + 2), v151), 3uLL);
        v153[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v152 + 1), v150), *(v152 + 18), v151), 3uLL);
        v153 += 4;
        v152 = (v152 + 2 * v4);
        v69 = __CFADD__(v154++, 1);
      }

      while (!v69);
      v155 = 2 * v10;
      v156 = v219[0];
      v157 = v220;
      v158 = 112;
      do
      {
        v160 = v157[-1];
        v159 = *v157;
        v161 = v157[-2];
        v162 = v157[2];
        v163 = vrhaddq_u16(vrhaddq_u16(v157[-3], v157[1]), *(v155 + v158 - 96));
        v164 = (&v218 + v158);
        v164[-7] = vrhaddq_u16(vrhaddq_u16(v156, *v157), *(v155 + v158 - 112));
        v164[-6] = v163;
        v165 = vrhaddq_u16(vrhaddq_u16(v160, v157[3]), *(v155 + v158 - 64));
        v164[-5] = vrhaddq_u16(vrhaddq_u16(v161, v162), *(v155 + v158 - 80));
        v164[-4] = v165;
        v158 += 64;
        v157 += 4;
        v156 = v159;
      }

      while (v158 != 4208);
      v166 = 0;
      v167 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v168 = vsubq_s16(*(&v218 + v166), v167[-2]);
        v169 = vpadalq_s16(v24, v168);
        v170 = vmlal_s16(v22, *v168.i8, *v168.i8);
        v171 = vmlal_high_s16(v23, v168, v168);
        v172 = vsubq_s16(*(&v218 + v166 + 16), v167[-1]);
        v173 = vpadalq_s16(v169, v172);
        v174 = vmlal_s16(v170, *v172.i8, *v172.i8);
        v175 = vmlal_high_s16(v171, v172, v172);
        v176 = vsubq_s16(*(&v218 + v166 + 32), *v167);
        v177 = vpadalq_s16(v173, v176);
        v178 = vmlal_s16(v174, *v176.i8, *v176.i8);
        v179 = vmlal_high_s16(v175, v176, v176);
        v180 = vsubq_s16(*(&v218 + v166 + 48), v167[1]);
        v24 = vpadalq_s16(v177, v180);
        v22 = vmlal_s16(v178, *v180.i8, *v180.i8);
        v23 = vmlal_high_s16(v179, v180, v180);
        v166 += 64;
        v167 = (v167 + 2 * v8);
      }

      while (v166 != 4096);
    }

    else if (v6)
    {
      v181 = vdupq_n_s16(8 - v5);
      v182 = vdupq_n_s16(v5);
      v183 = v11 + 2;
      v184 = v219;
      v185 = -65;
      do
      {
        *v184 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v183 - 2), v181), *(v183 - 30), v182), 3uLL);
        v184[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v183 - 1), v181), *(v183 - 14), v182), 3uLL);
        v184[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v183, v181), *(v183 + 2), v182), 3uLL);
        v184[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v183 + 1), v181), *(v183 + 18), v182), 3uLL);
        v184 += 4;
        v183 = (v183 + 2 * v4);
        v69 = __CFADD__(v185++, 1);
      }

      while (!v69);
      v186 = 2 * v10;
      v187 = vdupq_n_s16(8 - v6);
      v188 = vdupq_n_s16(v6);
      v189 = v219[0];
      v190 = v220;
      v191 = 112;
      do
      {
        v193 = v190[-1];
        v192 = *v190;
        v194 = v190[-2];
        v195 = v190[2];
        v196 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190[-3], v187), v190[1], v188), 3uLL), *(v186 + v191 - 96));
        v197 = (&v218 + v191);
        v197[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v189, v187), *v190, v188), 3uLL), *(v186 + v191 - 112));
        v197[-6] = v196;
        v198 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v193, v187), v190[3], v188), 3uLL), *(v186 + v191 - 64));
        v197[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v194, v187), v195, v188), 3uLL), *(v186 + v191 - 80));
        v197[-4] = v198;
        v191 += 64;
        v190 += 4;
        v189 = v192;
      }

      while (v191 != 4208);
      v199 = 0;
      v200 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v201 = vsubq_s16(*(&v218 + v199), v200[-2]);
        v202 = vpadalq_s16(v24, v201);
        v203 = vmlal_s16(v22, *v201.i8, *v201.i8);
        v204 = vmlal_high_s16(v23, v201, v201);
        v205 = vsubq_s16(*(&v218 + v199 + 16), v200[-1]);
        v206 = vpadalq_s16(v202, v205);
        v207 = vmlal_s16(v203, *v205.i8, *v205.i8);
        v208 = vmlal_high_s16(v204, v205, v205);
        v209 = vsubq_s16(*(&v218 + v199 + 32), *v200);
        v210 = vpadalq_s16(v206, v209);
        v211 = vmlal_s16(v207, *v209.i8, *v209.i8);
        v212 = vmlal_high_s16(v208, v209, v209);
        v213 = vsubq_s16(*(&v218 + v199 + 48), v200[1]);
        v24 = vpadalq_s16(v210, v213);
        v22 = vmlal_s16(v211, *v213.i8, *v213.i8);
        v23 = vmlal_high_s16(v212, v213, v213);
        v199 += 64;
        v200 = (v200 + 2 * v8);
      }

      while (v199 != 4096);
    }

    else
    {
      v38 = 0;
      v39 = 2 * v10;
      v40 = vdupq_n_s16(8 - v5);
      v41 = vdupq_n_s16(v5);
      v42 = v11 + 2;
      do
      {
        v43 = &v219[v38 / 0x10];
        *v43 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 2), v40), *(v42 - 30), v41), 3uLL), *(v39 + v38));
        v43[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 1), v40), *(v42 - 14), v41), 3uLL), *(v39 + v38 + 16));
        v43[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v42, v40), *(v42 + 2), v41), 3uLL), *(v39 + v38 + 32));
        v43[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 + 1), v40), *(v42 + 18), v41), 3uLL), *(v39 + v38 + 48));
        v38 += 64;
        v42 = (v42 + 2 * v4);
      }

      while (v38 != 4096);
      v44 = 0;
      v45 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v46 = vsubq_s16(v219[v44], v45[-2]);
        v47 = vpadalq_s16(v24, v46);
        v48 = vmlal_s16(v22, *v46.i8, *v46.i8);
        v49 = vmlal_high_s16(v23, v46, v46);
        v50 = vsubq_s16(v219[v44 + 1], v45[-1]);
        v51 = vpadalq_s16(v47, v50);
        v52 = vmlal_s16(v48, *v50.i8, *v50.i8);
        v53 = vmlal_high_s16(v49, v50, v50);
        v54 = vsubq_s16(v219[v44 + 2], *v45);
        v55 = vpadalq_s16(v51, v54);
        v56 = vmlal_s16(v52, *v54.i8, *v54.i8);
        v57 = vmlal_high_s16(v53, v54, v54);
        v58 = vsubq_s16(v219[v44 + 3], v45[1]);
        v24 = vpadalq_s16(v55, v58);
        v22 = vmlal_s16(v56, *v58.i8, *v58.i8);
        v23 = vmlal_high_s16(v57, v58, v58);
        v44 += 4;
        v45 = (v45 + 2 * v8);
      }

      while ((v44 * 16) != 4096);
    }
  }

  else
  {
    v12 = 2 * v10;
    if (v6 == 4)
    {
      v59 = 0;
      v61 = *v11;
      v60 = (v11 + 2);
      v62 = v61;
      v63 = 2 * v4;
      do
      {
        v64 = &v219[v59 / 0x10];
        v65 = *(&v60[-2] + v63);
        *v64 = vrhaddq_u16(vrhaddq_u16(v62, v65), *(v12 + v59));
        v64[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(&v60[-1] + v63)), *(v12 + v59 + 16));
        v64[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2 * v4)), *(v12 + v59 + 32));
        v64[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(&v60[1] + v63)), *(v12 + v59 + 48));
        v59 += 64;
        v60 = (v60 + v63);
        v62 = v65;
      }

      while (v59 != 4096);
    }

    else
    {
      v13 = 0;
      if (v6)
      {
        v96 = vdupq_n_s16(8 - v6);
        v97 = vdupq_n_s16(v6);
        v99 = *v11;
        v98 = (v11 + 2);
        v100 = v99;
        v101 = 2 * v4;
        do
        {
          v102 = &v219[v13 / 0x10];
          v103 = *(&v98[-2] + v101);
          *v102 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v100, v96), v103, v97), 3uLL), *(v12 + v13));
          v102[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v98[-1], v96), *(&v98[-1] + v101), v97), 3uLL), *(v12 + v13 + 16));
          v102[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v98, v96), *(v98 + 2 * v4), v97), 3uLL), *(v12 + v13 + 32));
          v102[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v98[1], v96), *(&v98[1] + v101), v97), 3uLL), *(v12 + v13 + 48));
          v13 += 64;
          v98 = (v98 + v101);
          v100 = v103;
        }

        while (v13 != 4096);
      }

      else
      {
        v14 = (v11 + 2);
        do
        {
          v15 = &v219[v13 / 0x10];
          *v15 = vrhaddq_u16(v14[-2], *(v12 + v13));
          v15[1] = vrhaddq_u16(v14[-1], *(v12 + v13 + 16));
          v15[2] = vrhaddq_u16(*v14, *(v12 + v13 + 32));
          v15[3] = vrhaddq_u16(v14[1], *(v12 + v13 + 48));
          v13 += 64;
          v14 = (v14 + 2 * v4);
        }

        while (v13 != 4096);
      }
    }

    v104 = 0;
    v105 = (2 * v7 + 32);
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v106 = vsubq_s16(v219[v104], v105[-2]);
      v107 = vpadalq_s16(v24, v106);
      v108 = vmlal_s16(v22, *v106.i8, *v106.i8);
      v109 = vmlal_high_s16(v23, v106, v106);
      v110 = vsubq_s16(v219[v104 + 1], v105[-1]);
      v111 = vpadalq_s16(v107, v110);
      v112 = vmlal_s16(v108, *v110.i8, *v110.i8);
      v113 = vmlal_high_s16(v109, v110, v110);
      v114 = vsubq_s16(v219[v104 + 2], *v105);
      v115 = vpadalq_s16(v111, v114);
      v116 = vmlal_s16(v112, *v114.i8, *v114.i8);
      v117 = vmlal_high_s16(v113, v114, v114);
      v118 = vsubq_s16(v219[v104 + 3], v105[1]);
      v24 = vpadalq_s16(v115, v118);
      v22 = vmlal_s16(v116, *v118.i8, *v118.i8);
      v23 = vmlal_high_s16(v117, v118, v118);
      v104 += 4;
      v105 = (v105 + 2 * v8);
    }

    while ((v104 * 16) != 4096);
  }

  v214 = vaddvq_s32(v24);
  v215 = vaddlvq_u32(vaddq_s32(v23, v22));
  *v9 = (v215 + 8) >> 4;
  v216 = ((v215 + 8) >> 4) - (((((v214 << 30) + 0x80000000) >> 32) * (((v214 << 30) + 0x80000000) >> 32)) >> 11);
  return v216 & ~(v216 >> 63);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v115[513] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 4;
      v34 = v114;
      v35 = -33;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 4), *(v33 - 62));
        v34[1] = vrhaddq_u16(*(v33 - 3), *(v33 - 46));
        v34[2] = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[3] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[4] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[5] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34[6] = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
        v34[7] = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
        v34 += 8;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v114[0];
      v39 = v115;
      v40 = 240;
      do
      {
        v41 = (&v113 + v40);
        v43 = v39[-1];
        v42 = *v39;
        v41[-15] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 240));
        v44 = v39[2];
        v45 = v39[-6];
        v41[-14] = vrhaddq_u16(vrhaddq_u16(v39[-7], v39[1]), *(v37 + v40 - 224));
        v41[-13] = vrhaddq_u16(vrhaddq_u16(v45, v44), *(v37 + v40 - 208));
        v46 = v39[4];
        v47 = v39[-4];
        v41[-12] = vrhaddq_u16(vrhaddq_u16(v39[-5], v39[3]), *(v37 + v40 - 192));
        v41[-11] = vrhaddq_u16(vrhaddq_u16(v47, v46), *(v37 + v40 - 176));
        v48 = v39[6];
        v49 = v39[-2];
        v41[-10] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[5]), *(v37 + v40 - 160));
        v41[-9] = vrhaddq_u16(vrhaddq_u16(v49, v48), *(v37 + v40 - 144));
        v41[-8] = vrhaddq_u16(vrhaddq_u16(v43, v39[7]), *(v37 + v40 - 128));
        v40 += 128;
        v39 += 8;
        v38 = v42;
      }

      while (v40 != 4336);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 4;
        do
        {
          v19 = &v114[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 4), *(v18 - 62)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 3), *(v18 - 46)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 48));
          v19[4] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 64));
          v19[5] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 80));
          v19[6] = vrhaddq_u16(vrhaddq_u16(*(v18 + 2), *(v18 + 34)), *(v17 + v16 + 96));
          v19[7] = vrhaddq_u16(vrhaddq_u16(*(v18 + 3), *(v18 + 50)), *(v17 + v16 + 112));
          v16 += 128;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 4096);
        goto LABEL_29;
      }

      v56 = v11 + 4;
      v57 = v114;
      v58 = -33;
      do
      {
        *v57 = vrhaddq_u16(*(v56 - 4), *(v56 - 62));
        v57[1] = vrhaddq_u16(*(v56 - 3), *(v56 - 46));
        v57[2] = vrhaddq_u16(*(v56 - 2), *(v56 - 30));
        v57[3] = vrhaddq_u16(*(v56 - 1), *(v56 - 14));
        v57[4] = vrhaddq_u16(*v56, *(v56 + 2));
        v57[5] = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
        v57[6] = vrhaddq_u16(*(v56 + 2), *(v56 + 34));
        v57[7] = vrhaddq_u16(*(v56 + 3), *(v56 + 50));
        v57 += 8;
        v56 = (v56 + 2 * v4);
        v36 = __CFADD__(v58++, 1);
      }

      while (!v36);
      v59 = 0;
      v60 = 2 * v10;
      v61 = vdupq_n_s16(8 - v6);
      v62 = vdupq_n_s16(v6);
      do
      {
        v63 = (&v113 + v59);
        v64 = v114[v59 / 0x10 + 1];
        v65 = *&v115[v59 / 8 + 2];
        *v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10], v61), v114[v59 / 0x10 + 8], v62), 3uLL), *(v60 + v59));
        v63[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v61), v65, v62), 3uLL), *(v60 + v59 + 16));
        v66 = v114[v59 / 0x10 + 3];
        v67 = *&v115[v59 / 8 + 6];
        v63[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 2], v61), *&v115[v59 / 8 + 4], v62), 3uLL), *(v60 + v59 + 32));
        v63[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v61), v67, v62), 3uLL), *(v60 + v59 + 48));
        v68 = v114[v59 / 0x10 + 5];
        v69 = *&v115[v59 / 8 + 10];
        v63[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 4], v61), *&v115[v59 / 8 + 8], v62), 3uLL), *(v60 + v59 + 64));
        v70 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v61), v69, v62), 3uLL), *(v60 + v59 + 80));
        v71 = v114[v59 / 0x10 + 7];
        v72 = *&v115[v59 / 8 + 14];
        v73 = vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 6], v61), *&v115[v59 / 8 + 12], v62);
        v63[5] = v70;
        v63[6] = vrhaddq_u16(vrshrq_n_u16(v73, 3uLL), *(v60 + v59 + 96));
        v63[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v61), v72, v62), 3uLL), *(v60 + v59 + 112));
        v59 += 128;
      }

      while (v59 != 4096);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v74 = vdupq_n_s16(8 - v5);
      v75 = vdupq_n_s16(v5);
      v76 = v11 + 4;
      v77 = v114;
      v78 = -33;
      do
      {
        *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 4), v74), *(v76 - 62), v75), 3uLL);
        v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 3), v74), *(v76 - 46), v75), 3uLL);
        v77[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 2), v74), *(v76 - 30), v75), 3uLL);
        v77[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 1), v74), *(v76 - 14), v75), 3uLL);
        v77[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v76, v74), *(v76 + 2), v75), 3uLL);
        v77[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 1), v74), *(v76 + 18), v75), 3uLL);
        v77[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 2), v74), *(v76 + 34), v75), 3uLL);
        v77[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 3), v74), *(v76 + 50), v75), 3uLL);
        v77 += 8;
        v76 = (v76 + 2 * v4);
        v36 = __CFADD__(v78++, 1);
      }

      while (!v36);
      v79 = 2 * v10;
      v80 = v114[0];
      v81 = v115;
      v82 = 240;
      do
      {
        v83 = (&v113 + v82);
        v85 = v81[-1];
        v84 = *v81;
        v83[-15] = vrhaddq_u16(vrhaddq_u16(v80, *v81), *(v79 + v82 - 240));
        v86 = v81[2];
        v87 = v81[-6];
        v83[-14] = vrhaddq_u16(vrhaddq_u16(v81[-7], v81[1]), *(v79 + v82 - 224));
        v83[-13] = vrhaddq_u16(vrhaddq_u16(v87, v86), *(v79 + v82 - 208));
        v88 = v81[4];
        v89 = v81[-4];
        v83[-12] = vrhaddq_u16(vrhaddq_u16(v81[-5], v81[3]), *(v79 + v82 - 192));
        v83[-11] = vrhaddq_u16(vrhaddq_u16(v89, v88), *(v79 + v82 - 176));
        v90 = v81[6];
        v91 = v81[-2];
        v83[-10] = vrhaddq_u16(vrhaddq_u16(v81[-3], v81[5]), *(v79 + v82 - 160));
        v83[-9] = vrhaddq_u16(vrhaddq_u16(v91, v90), *(v79 + v82 - 144));
        v83[-8] = vrhaddq_u16(vrhaddq_u16(v85, v81[7]), *(v79 + v82 - 128));
        v82 += 128;
        v81 += 8;
        v80 = v84;
      }

      while (v82 != 4336);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 4;
        do
        {
          v25 = &v114[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 4), v22), *(v24 - 62), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 3), v22), *(v24 - 46), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 48));
          v25[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 64));
          v25[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 80));
          v25[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 2), v22), *(v24 + 34), v23), 3uLL), *(v21 + v20 + 96));
          v25[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 3), v22), *(v24 + 50), v23), 3uLL), *(v21 + v20 + 112));
          v20 += 128;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 4096);
        goto LABEL_29;
      }

      v92 = vdupq_n_s16(8 - v5);
      v93 = vdupq_n_s16(v5);
      v94 = v11 + 4;
      v95 = v114;
      v96 = -33;
      do
      {
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 4), v92), *(v94 - 62), v93), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 3), v92), *(v94 - 46), v93), 3uLL);
        v95[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 2), v92), *(v94 - 30), v93), 3uLL);
        v95[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 1), v92), *(v94 - 14), v93), 3uLL);
        v95[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v94, v92), *(v94 + 2), v93), 3uLL);
        v95[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 1), v92), *(v94 + 18), v93), 3uLL);
        v95[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 2), v92), *(v94 + 34), v93), 3uLL);
        v95[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 3), v92), *(v94 + 50), v93), 3uLL);
        v95 += 8;
        v94 = (v94 + 2 * v4);
        v36 = __CFADD__(v96++, 1);
      }

      while (!v36);
      v97 = 0;
      v98 = 2 * v10;
      v99 = vdupq_n_s16(8 - v6);
      v100 = vdupq_n_s16(v6);
      do
      {
        v101 = (&v113 + v97);
        v102 = v114[v97 / 0x10 + 1];
        v103 = *&v115[v97 / 8 + 2];
        *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10], v99), v114[v97 / 0x10 + 8], v100), 3uLL), *(v98 + v97));
        v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102, v99), v103, v100), 3uLL), *(v98 + v97 + 16));
        v104 = v114[v97 / 0x10 + 3];
        v105 = *&v115[v97 / 8 + 6];
        v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 2], v99), *&v115[v97 / 8 + 4], v100), 3uLL), *(v98 + v97 + 32));
        v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v104, v99), v105, v100), 3uLL), *(v98 + v97 + 48));
        v106 = v114[v97 / 0x10 + 5];
        v107 = *&v115[v97 / 8 + 10];
        v101[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 4], v99), *&v115[v97 / 8 + 8], v100), 3uLL), *(v98 + v97 + 64));
        v108 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v106, v99), v107, v100), 3uLL), *(v98 + v97 + 80));
        v109 = v114[v97 / 0x10 + 7];
        v110 = *&v115[v97 / 8 + 14];
        v111 = vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 6], v99), *&v115[v97 / 8 + 12], v100);
        v101[5] = v108;
        v101[6] = vrhaddq_u16(vrshrq_n_u16(v111, 3uLL), *(v98 + v97 + 96));
        v101[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v109, v99), v110, v100), 3uLL), *(v98 + v97 + 112));
        v97 += 128;
      }

      while (v97 != 4096);
    }

LABEL_47:
    v55 = &v113;
    return vpx_highbd_10_variance64x32_neon(v55 >> 1, 64, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 4);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v114[v26 / 0x10];
      v32 = *(&v27[-4] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-3], *(&v27[-3] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(v27[-2], *(&v27[-2] + v30)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 48));
      v31[4] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 64));
      v31[5] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 80));
      v31[6] = vrhaddq_u16(vrhaddq_u16(v27[2], *(&v27[2] + v30)), *(v12 + v26 + 96));
      v31[7] = vrhaddq_u16(vrhaddq_u16(v27[3], *(&v27[3] + v30)), *(v12 + v26 + 112));
      v26 += 128;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 4096);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v50 = vdupq_n_s16(8 - v6);
      v51 = vdupq_n_s16(v6);
      v52 = 2 * v4;
      v53 = (v11 + 4);
      do
      {
        v54 = &v114[v13 / 0x10];
        *v54 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-4], v50), *(&v53[-4] + v52), v51), 3uLL), *(v12 + v13));
        v54[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v50), *(&v53[-3] + v52), v51), 3uLL), *(v12 + v13 + 16));
        v54[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v50), *(&v53[-2] + v52), v51), 3uLL), *(v12 + v13 + 32));
        v54[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v50), *(&v53[-1] + v52), v51), 3uLL), *(v12 + v13 + 48));
        v54[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v50), *(v53 + 2 * v4), v51), 3uLL), *(v12 + v13 + 64));
        v54[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v50), *(&v53[1] + v52), v51), 3uLL), *(v12 + v13 + 80));
        v54[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v50), *(&v53[2] + v52), v51), 3uLL), *(v12 + v13 + 96));
        v54[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v50), *(&v53[3] + v52), v51), 3uLL), *(v12 + v13 + 112));
        v13 += 128;
        v53 = (v53 + v52);
      }

      while (v13 != 4096);
    }

    else
    {
      v14 = (v11 + 4);
      do
      {
        v15 = &v114[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-4], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-3], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(v14[-2], *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[-1], *(v12 + v13 + 48));
        v15[4] = vrhaddq_u16(*v14, *(v12 + v13 + 64));
        v15[5] = vrhaddq_u16(v14[1], *(v12 + v13 + 80));
        v15[6] = vrhaddq_u16(v14[2], *(v12 + v13 + 96));
        v15[7] = vrhaddq_u16(v14[3], *(v12 + v13 + 112));
        v13 += 128;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 4096);
    }
  }

LABEL_29:
  v55 = v114;
  return vpx_highbd_10_variance64x32_neon(v55 >> 1, 64, v7, v8, v9);
}

uint64_t vpx_highbd_10_sub_pixel_avg_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v115[1025] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 4;
      v34 = v114;
      v35 = -65;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 4), *(v33 - 62));
        v34[1] = vrhaddq_u16(*(v33 - 3), *(v33 - 46));
        v34[2] = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[3] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[4] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[5] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34[6] = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
        v34[7] = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
        v34 += 8;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v114[0];
      v39 = v115;
      v40 = 240;
      do
      {
        v41 = &v113[v40];
        v43 = v39[-1];
        v42 = *v39;
        v41[-15] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 240));
        v44 = v39[2];
        v45 = v39[-6];
        v41[-14] = vrhaddq_u16(vrhaddq_u16(v39[-7], v39[1]), *(v37 + v40 - 224));
        v41[-13] = vrhaddq_u16(vrhaddq_u16(v45, v44), *(v37 + v40 - 208));
        v46 = v39[4];
        v47 = v39[-4];
        v41[-12] = vrhaddq_u16(vrhaddq_u16(v39[-5], v39[3]), *(v37 + v40 - 192));
        v41[-11] = vrhaddq_u16(vrhaddq_u16(v47, v46), *(v37 + v40 - 176));
        v48 = v39[6];
        v49 = v39[-2];
        v41[-10] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[5]), *(v37 + v40 - 160));
        v41[-9] = vrhaddq_u16(vrhaddq_u16(v49, v48), *(v37 + v40 - 144));
        v41[-8] = vrhaddq_u16(vrhaddq_u16(v43, v39[7]), *(v37 + v40 - 128));
        v40 += 128;
        v39 += 8;
        v38 = v42;
      }

      while (v40 != 8432);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 4;
        do
        {
          v19 = &v114[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 4), *(v18 - 62)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 3), *(v18 - 46)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 48));
          v19[4] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 64));
          v19[5] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 80));
          v19[6] = vrhaddq_u16(vrhaddq_u16(*(v18 + 2), *(v18 + 34)), *(v17 + v16 + 96));
          v19[7] = vrhaddq_u16(vrhaddq_u16(*(v18 + 3), *(v18 + 50)), *(v17 + v16 + 112));
          v16 += 128;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 0x2000);
        goto LABEL_29;
      }

      v56 = v11 + 4;
      v57 = v114;
      v58 = -65;
      do
      {
        *v57 = vrhaddq_u16(*(v56 - 4), *(v56 - 62));
        v57[1] = vrhaddq_u16(*(v56 - 3), *(v56 - 46));
        v57[2] = vrhaddq_u16(*(v56 - 2), *(v56 - 30));
        v57[3] = vrhaddq_u16(*(v56 - 1), *(v56 - 14));
        v57[4] = vrhaddq_u16(*v56, *(v56 + 2));
        v57[5] = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
        v57[6] = vrhaddq_u16(*(v56 + 2), *(v56 + 34));
        v57[7] = vrhaddq_u16(*(v56 + 3), *(v56 + 50));
        v57 += 8;
        v56 = (v56 + 2 * v4);
        v36 = __CFADD__(v58++, 1);
      }

      while (!v36);
      v59 = 0;
      v60 = 2 * v10;
      v61 = vdupq_n_s16(8 - v6);
      v62 = vdupq_n_s16(v6);
      do
      {
        v63 = &v113[v59];
        v64 = v114[v59 / 0x10 + 1];
        v65 = *&v115[v59 / 8 + 2];
        *v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10], v61), v114[v59 / 0x10 + 8], v62), 3uLL), *(v60 + v59));
        v63[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v61), v65, v62), 3uLL), *(v60 + v59 + 16));
        v66 = v114[v59 / 0x10 + 3];
        v67 = *&v115[v59 / 8 + 6];
        v63[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 2], v61), *&v115[v59 / 8 + 4], v62), 3uLL), *(v60 + v59 + 32));
        v63[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v61), v67, v62), 3uLL), *(v60 + v59 + 48));
        v68 = v114[v59 / 0x10 + 5];
        v69 = *&v115[v59 / 8 + 10];
        v63[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 4], v61), *&v115[v59 / 8 + 8], v62), 3uLL), *(v60 + v59 + 64));
        v70 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v61), v69, v62), 3uLL), *(v60 + v59 + 80));
        v71 = v114[v59 / 0x10 + 7];
        v72 = *&v115[v59 / 8 + 14];
        v73 = vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 6], v61), *&v115[v59 / 8 + 12], v62);
        v63[5] = v70;
        v63[6] = vrhaddq_u16(vrshrq_n_u16(v73, 3uLL), *(v60 + v59 + 96));
        v63[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v61), v72, v62), 3uLL), *(v60 + v59 + 112));
        v59 += 128;
      }

      while (v59 != 0x2000);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v74 = vdupq_n_s16(8 - v5);
      v75 = vdupq_n_s16(v5);
      v76 = v11 + 4;
      v77 = v114;
      v78 = -65;
      do
      {
        *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 4), v74), *(v76 - 62), v75), 3uLL);
        v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 3), v74), *(v76 - 46), v75), 3uLL);
        v77[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 2), v74), *(v76 - 30), v75), 3uLL);
        v77[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 1), v74), *(v76 - 14), v75), 3uLL);
        v77[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v76, v74), *(v76 + 2), v75), 3uLL);
        v77[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 1), v74), *(v76 + 18), v75), 3uLL);
        v77[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 2), v74), *(v76 + 34), v75), 3uLL);
        v77[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 3), v74), *(v76 + 50), v75), 3uLL);
        v77 += 8;
        v76 = (v76 + 2 * v4);
        v36 = __CFADD__(v78++, 1);
      }

      while (!v36);
      v79 = 2 * v10;
      v80 = v114[0];
      v81 = v115;
      v82 = 240;
      do
      {
        v83 = &v113[v82];
        v85 = v81[-1];
        v84 = *v81;
        v83[-15] = vrhaddq_u16(vrhaddq_u16(v80, *v81), *(v79 + v82 - 240));
        v86 = v81[2];
        v87 = v81[-6];
        v83[-14] = vrhaddq_u16(vrhaddq_u16(v81[-7], v81[1]), *(v79 + v82 - 224));
        v83[-13] = vrhaddq_u16(vrhaddq_u16(v87, v86), *(v79 + v82 - 208));
        v88 = v81[4];
        v89 = v81[-4];
        v83[-12] = vrhaddq_u16(vrhaddq_u16(v81[-5], v81[3]), *(v79 + v82 - 192));
        v83[-11] = vrhaddq_u16(vrhaddq_u16(v89, v88), *(v79 + v82 - 176));
        v90 = v81[6];
        v91 = v81[-2];
        v83[-10] = vrhaddq_u16(vrhaddq_u16(v81[-3], v81[5]), *(v79 + v82 - 160));
        v83[-9] = vrhaddq_u16(vrhaddq_u16(v91, v90), *(v79 + v82 - 144));
        v83[-8] = vrhaddq_u16(vrhaddq_u16(v85, v81[7]), *(v79 + v82 - 128));
        v82 += 128;
        v81 += 8;
        v80 = v84;
      }

      while (v82 != 8432);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 4;
        do
        {
          v25 = &v114[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 4), v22), *(v24 - 62), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 3), v22), *(v24 - 46), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 48));
          v25[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 64));
          v25[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 80));
          v25[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 2), v22), *(v24 + 34), v23), 3uLL), *(v21 + v20 + 96));
          v25[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 3), v22), *(v24 + 50), v23), 3uLL), *(v21 + v20 + 112));
          v20 += 128;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 0x2000);
        goto LABEL_29;
      }

      v92 = vdupq_n_s16(8 - v5);
      v93 = vdupq_n_s16(v5);
      v94 = v11 + 4;
      v95 = v114;
      v96 = -65;
      do
      {
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 4), v92), *(v94 - 62), v93), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 3), v92), *(v94 - 46), v93), 3uLL);
        v95[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 2), v92), *(v94 - 30), v93), 3uLL);
        v95[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 1), v92), *(v94 - 14), v93), 3uLL);
        v95[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v94, v92), *(v94 + 2), v93), 3uLL);
        v95[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 1), v92), *(v94 + 18), v93), 3uLL);
        v95[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 2), v92), *(v94 + 34), v93), 3uLL);
        v95[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 3), v92), *(v94 + 50), v93), 3uLL);
        v95 += 8;
        v94 = (v94 + 2 * v4);
        v36 = __CFADD__(v96++, 1);
      }

      while (!v36);
      v97 = 0;
      v98 = 2 * v10;
      v99 = vdupq_n_s16(8 - v6);
      v100 = vdupq_n_s16(v6);
      do
      {
        v101 = &v113[v97];
        v102 = v114[v97 / 0x10 + 1];
        v103 = *&v115[v97 / 8 + 2];
        *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10], v99), v114[v97 / 0x10 + 8], v100), 3uLL), *(v98 + v97));
        v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102, v99), v103, v100), 3uLL), *(v98 + v97 + 16));
        v104 = v114[v97 / 0x10 + 3];
        v105 = *&v115[v97 / 8 + 6];
        v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 2], v99), *&v115[v97 / 8 + 4], v100), 3uLL), *(v98 + v97 + 32));
        v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v104, v99), v105, v100), 3uLL), *(v98 + v97 + 48));
        v106 = v114[v97 / 0x10 + 5];
        v107 = *&v115[v97 / 8 + 10];
        v101[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 4], v99), *&v115[v97 / 8 + 8], v100), 3uLL), *(v98 + v97 + 64));
        v108 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v106, v99), v107, v100), 3uLL), *(v98 + v97 + 80));
        v109 = v114[v97 / 0x10 + 7];
        v110 = *&v115[v97 / 8 + 14];
        v111 = vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 6], v99), *&v115[v97 / 8 + 12], v100);
        v101[5] = v108;
        v101[6] = vrhaddq_u16(vrshrq_n_u16(v111, 3uLL), *(v98 + v97 + 96));
        v101[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v109, v99), v110, v100), 3uLL), *(v98 + v97 + 112));
        v97 += 128;
      }

      while (v97 != 0x2000);
    }

LABEL_47:
    v55 = v113;
    return vpx_highbd_10_variance64x64_neon(v55 >> 1, 64, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 4);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v114[v26 / 0x10];
      v32 = *(&v27[-4] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-3], *(&v27[-3] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(v27[-2], *(&v27[-2] + v30)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 48));
      v31[4] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 64));
      v31[5] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 80));
      v31[6] = vrhaddq_u16(vrhaddq_u16(v27[2], *(&v27[2] + v30)), *(v12 + v26 + 96));
      v31[7] = vrhaddq_u16(vrhaddq_u16(v27[3], *(&v27[3] + v30)), *(v12 + v26 + 112));
      v26 += 128;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 0x2000);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v50 = vdupq_n_s16(8 - v6);
      v51 = vdupq_n_s16(v6);
      v52 = 2 * v4;
      v53 = (v11 + 4);
      do
      {
        v54 = &v114[v13 / 0x10];
        *v54 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-4], v50), *(&v53[-4] + v52), v51), 3uLL), *(v12 + v13));
        v54[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v50), *(&v53[-3] + v52), v51), 3uLL), *(v12 + v13 + 16));
        v54[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v50), *(&v53[-2] + v52), v51), 3uLL), *(v12 + v13 + 32));
        v54[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v50), *(&v53[-1] + v52), v51), 3uLL), *(v12 + v13 + 48));
        v54[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v50), *(v53 + 2 * v4), v51), 3uLL), *(v12 + v13 + 64));
        v54[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v50), *(&v53[1] + v52), v51), 3uLL), *(v12 + v13 + 80));
        v54[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v50), *(&v53[2] + v52), v51), 3uLL), *(v12 + v13 + 96));
        v54[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v50), *(&v53[3] + v52), v51), 3uLL), *(v12 + v13 + 112));
        v13 += 128;
        v53 = (v53 + v52);
      }

      while (v13 != 0x2000);
    }

    else
    {
      v14 = (v11 + 4);
      do
      {
        v15 = &v114[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-4], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-3], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(v14[-2], *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[-1], *(v12 + v13 + 48));
        v15[4] = vrhaddq_u16(*v14, *(v12 + v13 + 64));
        v15[5] = vrhaddq_u16(v14[1], *(v12 + v13 + 80));
        v15[6] = vrhaddq_u16(v14[2], *(v12 + v13 + 96));
        v15[7] = vrhaddq_u16(v14[3], *(v12 + v13 + 112));
        v13 += 128;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 0x2000);
    }
  }

LABEL_29:
  v55 = v114;
  return vpx_highbd_10_variance64x64_neon(v55 >> 1, 64, v7, v8, v9);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance4x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshr_n_u16(vmla_s16(vmul_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshr_n_u16(vmla_s16(vmul_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshr_n_u16(vmla_s16(vmul_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = vrshr_n_u16(vmla_s16(vmul_s16(*(v16 + v11), v8), *(v16 + v11 + 2), v9), 3uLL);
  v19 = vdup_n_s16(8 - a4);
  v20 = vdup_n_s16(a4);
  *v21.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v10, v19), v13, v20), 3uLL);
  v22.i64[0] = *(2 * a8);
  v23 = vrshr_n_u16(vmla_s16(vmul_s16(v13, v19), v15, v20), 3uLL);
  *v24.i8 = vrshr_n_u16(vmla_s16(vmul_s16(v15, v19), v17, v20), 3uLL);
  v25.i64[0] = *(2 * a8 + 0x10);
  v26 = vrshr_n_u16(vmla_s16(vmul_s16(v17, v19), v18, v20), 3uLL);
  v21.u64[1] = v23;
  v27 = 2 * a6;
  v22.i64[1] = *(2 * a8 + 8);
  v28 = vrhaddq_u16(v21, v22);
  v21.i64[0] = *(2 * a5);
  v21.i64[1] = *(2 * a5 + v27);
  v29 = vsubq_s16(v28, v21);
  v30 = (2 * a5 + 4 * a6);
  v24.u64[1] = v26;
  v25.i64[1] = *(2 * a8 + 0x18);
  v31.i64[0] = *v30;
  v31.i64[1] = *(v30 + v27);
  v32 = vsubq_s16(vrhaddq_u16(v24, v25), v31);
  LODWORD(v30) = vaddlvq_s16(vaddq_s16(v32, v29));
  v33 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v29.i8, *v29.i8), v29, v29), *v32.i8, *v32.i8), v32, v32)) + 128;
  *a7 = v33 >> 8;
  v34 = (v33 >> 8) - (((((v30 << 28) + 0x80000000) >> 32) * (((v30 << 28) + 0x80000000) >> 32)) >> 4);
  return v34 & ~(v34 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance4x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = vrshr_n_u16(vmla_s16(vmul_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshr_n_u16(vmla_s16(vmul_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vmla_s16(vmul_s16(*v14, v8), *(v14 + 2), v9);
  v16 = v14 + v11;
  v17 = vmla_s16(vmul_s16(*v16, v8), *(v16 + 2), v9);
  v18 = v16 + v11;
  v19 = vmla_s16(vmul_s16(*v18, v8), *(v18 + 2), v9);
  v20 = v18 + v11;
  v21 = vmla_s16(vmul_s16(*v20, v8), *(v20 + 2), v9);
  v22 = v20 + v11;
  v23 = vmla_s16(vmul_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmla_s16(vmul_s16(*v24, v8), *(v24 + 2), v9);
  v26 = vmla_s16(vmul_s16(*(v24 + v11), v8), *(v24 + v11 + 2), v9);
  v27 = vdup_n_s16(8 - a4);
  v28 = vdup_n_s16(a4);
  v29 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v10, v27), v13, v28), 3uLL), *(2 * a8));
  v30 = vrshr_n_u16(v15, 3uLL);
  v31 = vrshr_n_u16(v17, 3uLL);
  v32 = vrshr_n_u16(v19, 3uLL);
  v33 = vrshr_n_u16(v21, 3uLL);
  v34 = vrshr_n_u16(v23, 3uLL);
  v35 = vrshr_n_u16(v25, 3uLL);
  v36 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v13, v27), v30, v28), 3uLL), *(2 * a8 + 8));
  v42[0] = v29;
  v42[1] = v36;
  v37 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v31, v27), v32, v28), 3uLL), *(2 * a8 + 0x18));
  v42[2] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v30, v27), v31, v28), 3uLL), *(2 * a8 + 0x10));
  v42[3] = v37;
  v38 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v33, v27), v34, v28), 3uLL), *(2 * a8 + 0x28));
  v42[4] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v32, v27), v33, v28), 3uLL), *(2 * a8 + 0x20));
  v42[5] = v38;
  v39 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v34, v27), v35, v28), 3uLL), *(2 * a8 + 0x30));
  v40 = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v35, v27), vrshr_n_u16(v26, 3uLL), v28), 3uLL), *(2 * a8 + 0x38));
  v42[6] = v39;
  v42[7] = v40;
  return vpx_highbd_12_variance4x8_neon(v42 >> 1, 4, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance8x4_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = vmlaq_s16(vmulq_s16(*(v16 + v11), v8), *(v16 + v11 + 2), v9);
  v19 = vdupq_n_s16(8 - a4);
  v20 = vdupq_n_s16(a4);
  v21 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v19), v13, v20), 3uLL), *(2 * a8));
  v22 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v19), v15, v20), 3uLL), *(2 * a8 + 0x10));
  v23 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v19), v17, v20), 3uLL), *(2 * a8 + 0x20));
  v24 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v19), vrshrq_n_u16(v18, 3uLL), v20), 3uLL), *(2 * a8 + 0x30));
  v25 = vsubq_s16(v21, *(2 * a5));
  v26 = 2 * a6;
  v27 = (2 * a5 + v26);
  v28 = vsubq_s16(v22, *v27);
  v29 = (v27 + v26);
  v30 = vsubq_s16(v23, *v29);
  v31 = vsubq_s16(v24, *(v29 + v26));
  v17.i32[0] = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v28), v25), v30), v31));
  v31.i64[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v25.i8, *v25.i8), v25, v25), *v28.i8, *v28.i8), v28, v28), *v30.i8, *v30.i8), v30, v30), *v31.i8, *v31.i8), v31, v31));
  *a7 = (v31.i64[0] + 128) >> 8;
  v32 = ((v31.i64[0] + 128) >> 8) - (((((v17.i32[0] << 28) + 0x80000000) >> 32) * (((v17.i32[0] << 28) + 0x80000000) >> 32)) >> 5);
  return v32 & ~(v32 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance8x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9);
  v16 = v14 + v11;
  v17 = vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9);
  v18 = v16 + v11;
  v19 = vmlaq_s16(vmulq_s16(*v18, v8), *(v18 + 2), v9);
  v20 = v18 + v11;
  v21 = vmlaq_s16(vmulq_s16(*v20, v8), *(v20 + 2), v9);
  v22 = v20 + v11;
  v23 = vmlaq_s16(vmulq_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmlaq_s16(vmulq_s16(*v24, v8), *(v24 + 2), v9);
  v26 = vmlaq_s16(vmulq_s16(*(v24 + v11), v8), *(v24 + v11 + 2), v9);
  v27 = vdupq_n_s16(8 - a4);
  v28 = vdupq_n_s16(a4);
  v29 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v27), v13, v28), 3uLL), *(2 * a8));
  v30 = vrshrq_n_u16(v15, 3uLL);
  v31 = vrshrq_n_u16(v17, 3uLL);
  v32 = vrshrq_n_u16(v19, 3uLL);
  v33 = vrshrq_n_u16(v21, 3uLL);
  v34 = vrshrq_n_u16(v23, 3uLL);
  v35 = vrshrq_n_u16(v25, 3uLL);
  v36 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v27), v30, v28), 3uLL), *(2 * a8 + 0x10));
  v42[0] = v29;
  v42[1] = v36;
  v37 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v27), v32, v28), 3uLL), *(2 * a8 + 0x30));
  v42[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v30, v27), v31, v28), 3uLL), *(2 * a8 + 0x20));
  v42[3] = v37;
  v38 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v33, v27), v34, v28), 3uLL), *(2 * a8 + 0x50));
  v42[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v32, v27), v33, v28), 3uLL), *(2 * a8 + 0x40));
  v42[5] = v38;
  v39 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v34, v27), v35, v28), 3uLL), *(2 * a8 + 0x60));
  v40 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v27), vrshrq_n_u16(v26, 3uLL), v28), 3uLL), *(2 * a8 + 0x70));
  v42[6] = v39;
  v42[7] = v40;
  return vpx_highbd_12_variance8x8_neon(v42 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance8x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1), v8), *(2 * a1 + 2), v9), 3uLL);
  v11 = 2 * a2;
  v12 = 2 * a1 + v11;
  v13 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v12, v8), *(v12 + 2), v9), 3uLL);
  v14 = v12 + v11;
  v15 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v14, v8), *(v14 + 2), v9), 3uLL);
  v16 = v14 + v11;
  v17 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v16, v8), *(v16 + 2), v9), 3uLL);
  v18 = v16 + v11;
  v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v18, v8), *(v18 + 2), v9), 3uLL);
  v20 = v18 + v11;
  v21 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v20, v8), *(v20 + 2), v9), 3uLL);
  v22 = v20 + v11;
  v23 = vmlaq_s16(vmulq_s16(*v22, v8), *(v22 + 2), v9);
  v24 = v22 + v11;
  v25 = vmlaq_s16(vmulq_s16(*v24, v8), *(v24 + 2), v9);
  v26 = v24 + v11;
  v27 = vmlaq_s16(vmulq_s16(*v26, v8), *(v26 + 2), v9);
  v28 = v26 + v11;
  v29 = vmlaq_s16(vmulq_s16(*v28, v8), *(v28 + 2), v9);
  v30 = v28 + v11;
  v31 = vmlaq_s16(vmulq_s16(*v30, v8), *(v30 + 2), v9);
  v32 = v30 + v11;
  v33 = vmlaq_s16(vmulq_s16(*v32, v8), *(v32 + 2), v9);
  v34 = v32 + v11;
  v35 = vmlaq_s16(vmulq_s16(*v34, v8), *(v34 + 2), v9);
  v36 = v34 + v11;
  v37 = vmlaq_s16(vmulq_s16(*v36, v8), *(v36 + 2), v9);
  v38 = v36 + v11;
  v39 = vmlaq_s16(vmulq_s16(*v38, v8), *(v38 + 2), v9);
  v40 = v38 + v11;
  v41 = vmlaq_s16(vmulq_s16(*v40, v8), *(v40 + 2), v9);
  v42 = vmlaq_s16(vmulq_s16(*(v40 + v11), v8), *(v40 + v11 + 2), v9);
  v43 = vdupq_n_s16(8 - a4);
  v44 = vdupq_n_s16(a4);
  v45 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v10, v43), v13, v44), 3uLL), *(2 * a8));
  v46 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v13, v43), v15, v44), 3uLL), *(2 * a8 + 0x10));
  v47 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v43), v17, v44), 3uLL), *(2 * a8 + 0x20));
  v48 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v43), v19, v44), 3uLL), *(2 * a8 + 0x30));
  v49 = *(2 * a8 + 0x50);
  v50 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v43), v21, v44), 3uLL), *(2 * a8 + 0x40));
  v51 = vrshrq_n_u16(v23, 3uLL);
  v52 = vrshrq_n_u16(v25, 3uLL);
  v53 = vrshrq_n_u16(v27, 3uLL);
  v54 = vrshrq_n_u16(v29, 3uLL);
  v55 = vrshrq_n_u16(v31, 3uLL);
  v56 = vrshrq_n_u16(v33, 3uLL);
  v57 = vrshrq_n_u16(v35, 3uLL);
  v58 = vrshrq_n_u16(v37, 3uLL);
  v59 = vrshrq_n_u16(v39, 3uLL);
  v60 = vrshrq_n_u16(v41, 3uLL);
  v69[0] = v45;
  v69[1] = v46;
  v69[2] = v47;
  v69[3] = v48;
  v69[4] = v50;
  v69[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v43), v51, v44), 3uLL), v49);
  v61 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v52, v43), v53, v44), 3uLL), *(2 * a8 + 0x70));
  v69[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v51, v43), v52, v44), 3uLL), *(2 * a8 + 0x60));
  v69[7] = v61;
  v62 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v54, v43), v55, v44), 3uLL), *(2 * a8 + 0x90));
  v69[8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53, v43), v54, v44), 3uLL), *(2 * a8 + 0x80));
  v69[9] = v62;
  v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v56, v43), v57, v44), 3uLL), *(2 * a8 + 0xB0));
  v69[10] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v55, v43), v56, v44), 3uLL), *(2 * a8 + 0xA0));
  v69[11] = v63;
  v64 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v57, v43), v58, v44), 3uLL), *(2 * a8 + 0xC0));
  v65 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v58, v43), v59, v44), 3uLL), *(2 * a8 + 0xD0));
  v69[12] = v64;
  v69[13] = v65;
  v66 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v59, v43), v60, v44), 3uLL), *(2 * a8 + 0xE0));
  v67 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60, v43), vrshrq_n_u16(v42, 3uLL), v44), 3uLL), *(2 * a8 + 0xF0));
  v69[14] = v66;
  v69[15] = v67;
  return vpx_highbd_12_variance8x16_neon(v69 >> 1, 8, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance16x8_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v244 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 != 4)
  {
    if (!a3)
    {
      v9 = (2 * a8);
      if (a4 == 4)
      {
        v61 = 2 * a2;
        v62 = *(v8 + v61);
        v63 = *(2 * a8 + 0x10);
        v226 = vrhaddq_u16(vrhaddq_u16(*v8, v62), *v9);
        v64 = *(v8 + v61 + 16);
        v227 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), v64), v63);
        v65 = (v8 + v61 + v61);
        v66 = *v65;
        v67 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrhaddq_u16(v62, *v65), *(2 * a8 + 0x20));
        v68 = v65[1];
        v229 = vrhaddq_u16(vrhaddq_u16(v64, v68), v67);
        v69 = (v65 + v61);
        v70 = *v69;
        v71 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrhaddq_u16(v66, *v69), *(2 * a8 + 0x40));
        v72 = v69[1];
        v231 = vrhaddq_u16(vrhaddq_u16(v68, v72), v71);
        v73 = (v69 + v61);
        v74 = *v73;
        v75 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrhaddq_u16(v70, *v73), *(2 * a8 + 0x60));
        v76 = v73[1];
        v233 = vrhaddq_u16(vrhaddq_u16(v72, v76), v75);
        v77 = (v73 + v61);
        v78 = *v77;
        v79 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrhaddq_u16(v74, *v77), *(2 * a8 + 0x80));
        v80 = v77[1];
        v235 = vrhaddq_u16(vrhaddq_u16(v76, v80), v79);
        v81 = (v77 + v61);
        v82 = *v81;
        v83 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrhaddq_u16(v78, *v81), *(2 * a8 + 0xA0));
        v84 = v81[1];
        v237 = vrhaddq_u16(vrhaddq_u16(v80, v84), v83);
        v85 = (v81 + v61);
        v86 = *v85;
        v87 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrhaddq_u16(v82, *v85), *(2 * a8 + 0xC0));
        v88 = v85[1];
        v239 = vrhaddq_u16(vrhaddq_u16(v84, v88), v87);
        v89 = (v85 + v61);
        v90 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrhaddq_u16(v86, *v89), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrhaddq_u16(v88, v89[1]), v90);
      }

      else if (a4)
      {
        v111 = vdupq_n_s16(8 - a4);
        v112 = vdupq_n_s16(a4);
        v113 = 2 * a2;
        v114 = *(v8 + v113);
        v115 = *(2 * a8 + 0x10);
        v226 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v111), v114, v112), 3uLL), *v9);
        v116 = *(&v8[1] + v113);
        v227 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v111), v116, v112), 3uLL), v115);
        v117 = &v8->i8[v113 + v113];
        v118 = *v117;
        v119 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114, v111), *v117, v112), 3uLL), *(2 * a8 + 0x20));
        v120 = v117[1];
        v229 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v116, v111), v120, v112), 3uLL), v119);
        v121 = (v117 + v113);
        v122 = *v121;
        v123 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v118, v111), *v121, v112), 3uLL), *(2 * a8 + 0x40));
        v124 = v121[1];
        v231 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v120, v111), v124, v112), 3uLL), v123);
        v125 = (v121 + v113);
        v126 = *v125;
        v127 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v111), *v125, v112), 3uLL), *(2 * a8 + 0x60));
        v128 = v125[1];
        v233 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124, v111), v128, v112), 3uLL), v127);
        v129 = (v125 + v113);
        v130 = *v129;
        v131 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v126, v111), *v129, v112), 3uLL), *(2 * a8 + 0x80));
        v132 = v129[1];
        v235 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v111), v132, v112), 3uLL), v131);
        v133 = (v129 + v113);
        v134 = *v133;
        v135 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v130, v111), *v133, v112), 3uLL), *(2 * a8 + 0xA0));
        v136 = v133[1];
        v237 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v132, v111), v136, v112), 3uLL), v135);
        v137 = (v133 + v113);
        v138 = *v137;
        v139 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v134, v111), *v137, v112), 3uLL), *(2 * a8 + 0xC0));
        v140 = v137[1];
        v239 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v136, v111), v140, v112), 3uLL), v139);
        v141 = (v137 + v113);
        v142 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v138, v111), *v141, v112), 3uLL), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v140, v111), v141[1], v112), 3uLL), v142);
      }

      else
      {
        v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
        v226 = vrhaddq_u16(*v8, *v9);
        v227 = v10;
        v11 = 2 * a2;
        v12 = (v8 + v11);
        v13 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(*v12, *(2 * a8 + 0x20));
        v229 = vrhaddq_u16(v12[1], v13);
        v14 = (v12 + v11);
        v15 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(*v14, *(2 * a8 + 0x40));
        v231 = vrhaddq_u16(v14[1], v15);
        v16 = (v14 + v11);
        v17 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(*v16, *(2 * a8 + 0x60));
        v233 = vrhaddq_u16(v16[1], v17);
        v18 = (v16 + v11);
        v19 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(*v18, *(2 * a8 + 0x80));
        v235 = vrhaddq_u16(v18[1], v19);
        v20 = (v18 + v11);
        v21 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(*v20, *(2 * a8 + 0xA0));
        v237 = vrhaddq_u16(v20[1], v21);
        v22 = (v20 + v11);
        v23 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(*v22, *(2 * a8 + 0xC0));
        v239 = vrhaddq_u16(v22[1], v23);
        v24 = (v22 + v11);
        v25 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(*v24, *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(v24[1], v25);
      }

      goto LABEL_15;
    }

    if (a4 == 4)
    {
      v166 = vdupq_n_s16(8 - a3);
      v167 = vdupq_n_s16(a3);
      v168 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v166), *(2 * a1 + 0x12), v167), 3uLL);
      v226 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v166), *(2 * a1 + 2), v167), 3uLL);
      v227 = v168;
      v169 = 2 * a2;
      v170 = &v8->i8[v169];
      v228 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v170, v166), *(v170 + 2), v167), 3uLL);
      v229 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v170 + 1), v166), *(v170 + 18), v167), 3uLL);
      v171 = &v170[v169];
      v230 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v171, v166), *(v171 + 2), v167), 3uLL);
      v231 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v171 + 1), v166), *(v171 + 18), v167), 3uLL);
      v172 = &v171[v169];
      v232 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v172, v166), *(v172 + 2), v167), 3uLL);
      v233 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v172 + 1), v166), *(v172 + 18), v167), 3uLL);
      v173 = &v172[v169];
      v234 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v173, v166), *(v173 + 2), v167), 3uLL);
      v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v173 + 1), v166), *(v173 + 18), v167), 3uLL);
      v174 = &v173[v169];
      v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v174, v166), *(v174 + 2), v167), 3uLL);
      v237 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v174 + 1), v166), *(v174 + 18), v167), 3uLL);
      v175 = &v174[v169];
      v238 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v175, v166), *(v175 + 2), v167), 3uLL);
      v239 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v175 + 1), v166), *(v175 + 18), v167), 3uLL);
      v176 = &v175[v169];
      v240 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v176, v166), *(v176 + 2), v167), 3uLL);
      v241 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v176 + 1), v166), *(v176 + 18), v167), 3uLL);
      v177 = &v176[v169];
      v242 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v177, v166), *(v177 + 2), v167), 3uLL);
      v243 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v177 + 1), v166), *(v177 + 18), v167), 3uLL);
      v178 = vrhaddq_u16(vrhaddq_u16(v168, v229), *(2 * a8 + 0x10));
      v210 = vrhaddq_u16(vrhaddq_u16(v226, v228), *(2 * a8));
      v211 = v178;
      v179 = vrhaddq_u16(vrhaddq_u16(v229, v231), *(2 * a8 + 0x30));
      v212 = vrhaddq_u16(vrhaddq_u16(v228, v230), *(2 * a8 + 0x20));
      v213 = v179;
      v180 = vrhaddq_u16(vrhaddq_u16(v231, v233), *(2 * a8 + 0x50));
      v214 = vrhaddq_u16(vrhaddq_u16(v230, v232), *(2 * a8 + 0x40));
      v215 = v180;
      v181 = vrhaddq_u16(vrhaddq_u16(v233, v235), *(2 * a8 + 0x70));
      v216 = vrhaddq_u16(vrhaddq_u16(v232, v234), *(2 * a8 + 0x60));
      v217 = v181;
      v182 = vrhaddq_u16(vrhaddq_u16(v235, v237), *(2 * a8 + 0x90));
      v218 = vrhaddq_u16(vrhaddq_u16(v234, v236), *(2 * a8 + 0x80));
      v219 = v182;
      v183 = vrhaddq_u16(vrhaddq_u16(v237, v239), *(2 * a8 + 0xB0));
      v220 = vrhaddq_u16(vrhaddq_u16(v236, v238), *(2 * a8 + 0xA0));
      v221 = v183;
      v184 = vrhaddq_u16(vrhaddq_u16(v239, v241), *(2 * a8 + 0xD0));
      v222 = vrhaddq_u16(vrhaddq_u16(v238, v240), *(2 * a8 + 0xC0));
      v223 = v184;
      v108 = *(2 * a8 + 0xF0);
      v109 = vrhaddq_u16(vrhaddq_u16(v240, v242), *(2 * a8 + 0xE0));
      v110 = vrhaddq_u16(v241, v243);
    }

    else
    {
      if (!a4)
      {
        v43 = vdupq_n_s16(8 - a3);
        v44 = vdupq_n_s16(a3);
        v45 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v43), *(2 * a1 + 0x12), v44), 3uLL), *(2 * a8 + 0x10));
        v226 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v43), *(2 * a1 + 2), v44), 3uLL), *(2 * a8));
        v227 = v45;
        v46 = 2 * a2;
        v47 = &v8->i8[v46];
        v48 = *(2 * a8 + 0x30);
        v228 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v47, v43), *(v47 + 2), v44), 3uLL), *(2 * a8 + 0x20));
        v229 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v47 + 1), v43), *(v47 + 18), v44), 3uLL), v48);
        v49 = &v47[v46];
        v50 = *(2 * a8 + 0x50);
        v230 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v49, v43), *(v49 + 2), v44), 3uLL), *(2 * a8 + 0x40));
        v231 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v49 + 1), v43), *(v49 + 18), v44), 3uLL), v50);
        v51 = &v49[v46];
        v52 = *(2 * a8 + 0x70);
        v232 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v51, v43), *(v51 + 2), v44), 3uLL), *(2 * a8 + 0x60));
        v233 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v51 + 1), v43), *(v51 + 18), v44), 3uLL), v52);
        v53 = &v51[v46];
        v54 = *(2 * a8 + 0x90);
        v234 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v43), *(v53 + 2), v44), 3uLL), *(2 * a8 + 0x80));
        v235 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v53 + 1), v43), *(v53 + 18), v44), 3uLL), v54);
        v55 = &v53[v46];
        v56 = *(2 * a8 + 0xB0);
        v236 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v55, v43), *(v55 + 2), v44), 3uLL), *(2 * a8 + 0xA0));
        v237 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v55 + 1), v43), *(v55 + 18), v44), 3uLL), v56);
        v57 = &v55[v46];
        v58 = *(2 * a8 + 0xD0);
        v238 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v57, v43), *(v57 + 2), v44), 3uLL), *(2 * a8 + 0xC0));
        v239 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v57 + 1), v43), *(v57 + 18), v44), 3uLL), v58);
        v59 = &v57[v46];
        v60 = *(2 * a8 + 0xF0);
        v240 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v59, v43), *(v59 + 2), v44), 3uLL), *(2 * a8 + 0xE0));
        v26 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 + 1), v43), *(v59 + 18), v44), 3uLL), v60);
        goto LABEL_15;
      }

      v185 = vdupq_n_s16(8 - a3);
      v186 = vdupq_n_s16(a3);
      v187 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v185), *(2 * a1 + 0x12), v186), 3uLL);
      v226 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v185), *(2 * a1 + 2), v186), 3uLL);
      v227 = v187;
      v188 = 2 * a2;
      v189 = &v8->i8[v188];
      v228 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v189, v185), *(v189 + 2), v186), 3uLL);
      v229 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v189 + 1), v185), *(v189 + 18), v186), 3uLL);
      v190 = &v189[v188];
      v230 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v190, v185), *(v190 + 2), v186), 3uLL);
      v231 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v190 + 1), v185), *(v190 + 18), v186), 3uLL);
      v191 = &v190[v188];
      v232 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v191, v185), *(v191 + 2), v186), 3uLL);
      v233 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v191 + 1), v185), *(v191 + 18), v186), 3uLL);
      v192 = &v191[v188];
      v234 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v192, v185), *(v192 + 2), v186), 3uLL);
      v235 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v192 + 1), v185), *(v192 + 18), v186), 3uLL);
      v193 = &v192[v188];
      v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v193, v185), *(v193 + 2), v186), 3uLL);
      v237 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v193 + 1), v185), *(v193 + 18), v186), 3uLL);
      v194 = &v193[v188];
      v238 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v194, v185), *(v194 + 2), v186), 3uLL);
      v239 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v194 + 1), v185), *(v194 + 18), v186), 3uLL);
      v195 = &v194[v188];
      v240 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v195, v185), *(v195 + 2), v186), 3uLL);
      v241 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v195 + 1), v185), *(v195 + 18), v186), 3uLL);
      v196 = &v195[v188];
      v242 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v196, v185), *(v196 + 2), v186), 3uLL);
      v197 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v196 + 1), v185), *(v196 + 18), v186), 3uLL);
      v198 = vdupq_n_s16(8 - a4);
      v199 = vdupq_n_s16(a4);
      v243 = v197;
      v200 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187, v198), v229, v199), 3uLL), *(2 * a8 + 0x10));
      v201 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v198), v230, v199), 3uLL), *(2 * a8 + 0x20));
      v202 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v229, v198), v231, v199), 3uLL), *(2 * a8 + 0x30));
      v203 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v230, v198), v232, v199), 3uLL), *(2 * a8 + 0x40));
      v204 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v198), v233, v199), 3uLL), *(2 * a8 + 0x50));
      v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v226, v198), v228, v199), 3uLL), *(2 * a8));
      v211 = v200;
      v212 = v201;
      v213 = v202;
      v214 = v203;
      v215 = v204;
      v205 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v233, v198), v235, v199), 3uLL), *(2 * a8 + 0x70));
      v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v232, v198), v234, v199), 3uLL), *(2 * a8 + 0x60));
      v217 = v205;
      v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v235, v198), v237, v199), 3uLL), *(2 * a8 + 0x90));
      v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v198), v236, v199), 3uLL), *(2 * a8 + 0x80));
      v219 = v206;
      v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v237, v198), v239, v199), 3uLL), *(2 * a8 + 0xB0));
      v220 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v236, v198), v238, v199), 3uLL), *(2 * a8 + 0xA0));
      v221 = v207;
      v208 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v239, v198), v241, v199), 3uLL), *(2 * a8 + 0xD0));
      v222 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v238, v198), v240, v199), 3uLL), *(2 * a8 + 0xC0));
      v223 = v208;
      v108 = *(2 * a8 + 0xF0);
      v109 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v240, v198), v242, v199), 3uLL), *(2 * a8 + 0xE0));
      v110 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v198), v197, v199), 3uLL);
    }

    goto LABEL_19;
  }

  if (a4 == 4)
  {
    v91 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v226 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v227 = v91;
    v92 = 2 * a2;
    v93 = &v8->i8[v92];
    v228 = vrhaddq_u16(*v93, *(v93 + 2));
    v229 = vrhaddq_u16(*(v93 + 1), *(v93 + 18));
    v94 = &v93[v92];
    v230 = vrhaddq_u16(*v94, *(v94 + 2));
    v231 = vrhaddq_u16(*(v94 + 1), *(v94 + 18));
    v95 = &v94[v92];
    v232 = vrhaddq_u16(*v95, *(v95 + 2));
    v233 = vrhaddq_u16(*(v95 + 1), *(v95 + 18));
    v96 = &v95[v92];
    v234 = vrhaddq_u16(*v96, *(v96 + 2));
    v235 = vrhaddq_u16(*(v96 + 1), *(v96 + 18));
    v97 = &v96[v92];
    v236 = vrhaddq_u16(*v97, *(v97 + 2));
    v237 = vrhaddq_u16(*(v97 + 1), *(v97 + 18));
    v98 = &v97[v92];
    v238 = vrhaddq_u16(*v98, *(v98 + 2));
    v239 = vrhaddq_u16(*(v98 + 1), *(v98 + 18));
    v99 = &v98[v92];
    v240 = vrhaddq_u16(*v99, *(v99 + 2));
    v241 = vrhaddq_u16(*(v99 + 1), *(v99 + 18));
    v100 = &v99[v92];
    v242 = vrhaddq_u16(*v100, *(v100 + 2));
    v243 = vrhaddq_u16(*(v100 + 1), *(v100 + 18));
    v101 = vrhaddq_u16(vrhaddq_u16(v91, v229), *(2 * a8 + 0x10));
    v210 = vrhaddq_u16(vrhaddq_u16(v226, v228), *(2 * a8));
    v211 = v101;
    v102 = vrhaddq_u16(vrhaddq_u16(v229, v231), *(2 * a8 + 0x30));
    v212 = vrhaddq_u16(vrhaddq_u16(v228, v230), *(2 * a8 + 0x20));
    v213 = v102;
    v103 = vrhaddq_u16(vrhaddq_u16(v231, v233), *(2 * a8 + 0x50));
    v214 = vrhaddq_u16(vrhaddq_u16(v230, v232), *(2 * a8 + 0x40));
    v215 = v103;
    v104 = vrhaddq_u16(vrhaddq_u16(v233, v235), *(2 * a8 + 0x70));
    v216 = vrhaddq_u16(vrhaddq_u16(v232, v234), *(2 * a8 + 0x60));
    v217 = v104;
    v105 = vrhaddq_u16(vrhaddq_u16(v235, v237), *(2 * a8 + 0x90));
    v218 = vrhaddq_u16(vrhaddq_u16(v234, v236), *(2 * a8 + 0x80));
    v219 = v105;
    v106 = vrhaddq_u16(vrhaddq_u16(v237, v239), *(2 * a8 + 0xB0));
    v220 = vrhaddq_u16(vrhaddq_u16(v236, v238), *(2 * a8 + 0xA0));
    v221 = v106;
    v107 = vrhaddq_u16(vrhaddq_u16(v239, v241), *(2 * a8 + 0xD0));
    v222 = vrhaddq_u16(vrhaddq_u16(v238, v240), *(2 * a8 + 0xC0));
    v223 = v107;
    v108 = *(2 * a8 + 0xF0);
    v109 = vrhaddq_u16(vrhaddq_u16(v240, v242), *(2 * a8 + 0xE0));
    v110 = vrhaddq_u16(v241, v243);
LABEL_19:
    v165 = vrhaddq_u16(v110, v108);
    goto LABEL_20;
  }

  if (a4)
  {
    v144 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
    v226 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
    v227 = v144;
    v145 = 2 * a2;
    v146 = &v8->i8[v145];
    v228 = vrhaddq_u16(*v146, *(v146 + 2));
    v229 = vrhaddq_u16(*(v146 + 1), *(v146 + 18));
    v147 = &v146[v145];
    v230 = vrhaddq_u16(*v147, *(v147 + 2));
    v231 = vrhaddq_u16(*(v147 + 1), *(v147 + 18));
    v148 = &v147[v145];
    v232 = vrhaddq_u16(*v148, *(v148 + 2));
    v233 = vrhaddq_u16(*(v148 + 1), *(v148 + 18));
    v149 = &v148[v145];
    v234 = vrhaddq_u16(*v149, *(v149 + 2));
    v235 = vrhaddq_u16(*(v149 + 1), *(v149 + 18));
    v150 = &v149[v145];
    v236 = vrhaddq_u16(*v150, *(v150 + 2));
    v237 = vrhaddq_u16(*(v150 + 1), *(v150 + 18));
    v151 = &v150[v145];
    v238 = vrhaddq_u16(*v151, *(v151 + 2));
    v239 = vrhaddq_u16(*(v151 + 1), *(v151 + 18));
    v152 = &v151[v145];
    v240 = vrhaddq_u16(*v152, *(v152 + 2));
    v241 = vrhaddq_u16(*(v152 + 1), *(v152 + 18));
    v153 = &v152[v145];
    v242 = vrhaddq_u16(*v153, *(v153 + 2));
    v154 = vdupq_n_s16(8 - a4);
    v155 = vdupq_n_s16(a4);
    v243 = vrhaddq_u16(*(v153 + 1), *(v153 + 18));
    v156 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v144, v154), v229, v155), 3uLL), *(2 * a8 + 0x10));
    v157 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v228, v154), v230, v155), 3uLL), *(2 * a8 + 0x20));
    v158 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v229, v154), v231, v155), 3uLL), *(2 * a8 + 0x30));
    v159 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v230, v154), v232, v155), 3uLL), *(2 * a8 + 0x40));
    v160 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v231, v154), v233, v155), 3uLL), *(2 * a8 + 0x50));
    v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v226, v154), v228, v155), 3uLL), *(2 * a8));
    v211 = v156;
    v212 = v157;
    v213 = v158;
    v214 = v159;
    v215 = v160;
    v161 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v233, v154), v235, v155), 3uLL), *(2 * a8 + 0x70));
    v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v232, v154), v234, v155), 3uLL), *(2 * a8 + 0x60));
    v217 = v161;
    v162 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v235, v154), v237, v155), 3uLL), *(2 * a8 + 0x90));
    v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v234, v154), v236, v155), 3uLL), *(2 * a8 + 0x80));
    v219 = v162;
    v163 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v237, v154), v239, v155), 3uLL), *(2 * a8 + 0xB0));
    v220 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v236, v154), v238, v155), 3uLL), *(2 * a8 + 0xA0));
    v221 = v163;
    v164 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v239, v154), v241, v155), 3uLL), *(2 * a8 + 0xD0));
    v222 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v238, v154), v240, v155), 3uLL), *(2 * a8 + 0xC0));
    v223 = v164;
    v109 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v240, v154), v242, v155), 3uLL), *(2 * a8 + 0xE0));
    v165 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v154), v243, v155), 3uLL), *(2 * a8 + 0xF0));
LABEL_20:
    v224 = v109;
    v225 = v165;
    v143 = &v210;
    return vpx_highbd_12_variance16x8_neon(v143 >> 1, 16, a5, a6, a7);
  }

  v27 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12)), *(2 * a8 + 0x10));
  v226 = vrhaddq_u16(vrhaddq_u16(*(2 * a1), *(2 * a1 + 2)), *(2 * a8));
  v227 = v27;
  v28 = 2 * a2;
  v29 = &v8->i8[v28];
  v30 = *(2 * a8 + 0x30);
  v228 = vrhaddq_u16(vrhaddq_u16(*v29, *(v29 + 2)), *(2 * a8 + 0x20));
  v229 = vrhaddq_u16(vrhaddq_u16(*(v29 + 1), *(v29 + 18)), v30);
  v31 = &v29[v28];
  v32 = *(2 * a8 + 0x50);
  v230 = vrhaddq_u16(vrhaddq_u16(*v31, *(v31 + 2)), *(2 * a8 + 0x40));
  v231 = vrhaddq_u16(vrhaddq_u16(*(v31 + 1), *(v31 + 18)), v32);
  v33 = &v31[v28];
  v34 = *(2 * a8 + 0x70);
  v232 = vrhaddq_u16(vrhaddq_u16(*v33, *(v33 + 2)), *(2 * a8 + 0x60));
  v233 = vrhaddq_u16(vrhaddq_u16(*(v33 + 1), *(v33 + 18)), v34);
  v35 = &v33[v28];
  v36 = *(2 * a8 + 0x90);
  v234 = vrhaddq_u16(vrhaddq_u16(*v35, *(v35 + 2)), *(2 * a8 + 0x80));
  v235 = vrhaddq_u16(vrhaddq_u16(*(v35 + 1), *(v35 + 18)), v36);
  v37 = &v35[v28];
  v38 = *(2 * a8 + 0xB0);
  v236 = vrhaddq_u16(vrhaddq_u16(*v37, *(v37 + 2)), *(2 * a8 + 0xA0));
  v237 = vrhaddq_u16(vrhaddq_u16(*(v37 + 1), *(v37 + 18)), v38);
  v39 = &v37[v28];
  v40 = *(2 * a8 + 0xD0);
  v238 = vrhaddq_u16(vrhaddq_u16(*v39, *(v39 + 2)), *(2 * a8 + 0xC0));
  v239 = vrhaddq_u16(vrhaddq_u16(*(v39 + 1), *(v39 + 18)), v40);
  v41 = &v39[v28];
  v42 = *(2 * a8 + 0xF0);
  v240 = vrhaddq_u16(vrhaddq_u16(*v41, *(v41 + 2)), *(2 * a8 + 0xE0));
  v26 = vrhaddq_u16(vrhaddq_u16(*(v41 + 1), *(v41 + 18)), v42);
LABEL_15:
  v241 = v26;
  v143 = &v226;
  return vpx_highbd_12_variance16x8_neon(v143 >> 1, 16, a5, a6, a7);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance16x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v384 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v133 = 0;
      v316 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v350 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v351 = v316;
      v134 = 2 * a2;
      v352 = vrhaddq_u16(*(v8 + v134), *(v8 + v134 + 2));
      v353 = vrhaddq_u16(*(v8 + v134 + 16), *(v8 + v134 + 18));
      v135 = v8 + v134 + v134;
      v354 = vrhaddq_u16(*v135, *(v135 + 2));
      v355 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v134;
      v356 = vrhaddq_u16(*v136, *(v136 + 2));
      v357 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v137 = v136 + v134;
      v358 = vrhaddq_u16(*v137, *(v137 + 2));
      v359 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v138 = v137 + v134;
      v360 = vrhaddq_u16(*v138, *(v138 + 2));
      v361 = vrhaddq_u16(*(v138 + 16), *(v138 + 18));
      v139 = v138 + v134;
      v362 = vrhaddq_u16(*v139, *(v139 + 2));
      v363 = vrhaddq_u16(*(v139 + 16), *(v139 + 18));
      v140 = v139 + v134;
      v364 = vrhaddq_u16(*v140, *(v140 + 2));
      v365 = vrhaddq_u16(*(v140 + 16), *(v140 + 18));
      v141 = v140 + v134;
      v366 = vrhaddq_u16(*v141, *(v141 + 2));
      v367 = vrhaddq_u16(*(v141 + 16), *(v141 + 18));
      v142 = v141 + v134;
      v368 = vrhaddq_u16(*v142, *(v142 + 2));
      v369 = vrhaddq_u16(*(v142 + 16), *(v142 + 18));
      v143 = v142 + v134;
      v370 = vrhaddq_u16(*v143, *(v143 + 2));
      v371 = vrhaddq_u16(*(v143 + 16), *(v143 + 18));
      v144 = v143 + v134;
      v372 = vrhaddq_u16(*v144, *(v144 + 2));
      v373 = vrhaddq_u16(*(v144 + 16), *(v144 + 18));
      v145 = v144 + v134;
      v374 = vrhaddq_u16(*v145, *(v145 + 2));
      v375 = vrhaddq_u16(*(v145 + 16), *(v145 + 18));
      v146 = v145 + v134;
      v376 = vrhaddq_u16(*v146, *(v146 + 2));
      v377 = vrhaddq_u16(*(v146 + 16), *(v146 + 18));
      v147 = v146 + v134;
      v378 = vrhaddq_u16(*v147, *(v147 + 2));
      v379 = vrhaddq_u16(*(v147 + 16), *(v147 + 18));
      v148 = v147 + v134;
      v380 = vrhaddq_u16(*v148, *(v148 + 2));
      v149 = v148 + v134;
      v381 = vrhaddq_u16(*(v148 + 16), *(v148 + 18));
      v382 = vrhaddq_u16(*v149, *(v149 + 2));
      v383 = vrhaddq_u16(*(v149 + 16), *(v149 + 18));
      v150 = vrhaddq_u16(vrhaddq_u16(v316, v353), *(2 * a8 + 0x10));
      v318 = vrhaddq_u16(vrhaddq_u16(v350, v352), *(2 * a8));
      v319 = v150;
      v151 = vrhaddq_u16(vrhaddq_u16(v353, v355), *(2 * a8 + 0x30));
      v320 = vrhaddq_u16(vrhaddq_u16(v352, v354), *(2 * a8 + 0x20));
      v321 = v151;
      v152 = vrhaddq_u16(vrhaddq_u16(v355, v357), *(2 * a8 + 0x50));
      v322 = vrhaddq_u16(vrhaddq_u16(v354, v356), *(2 * a8 + 0x40));
      v323 = v152;
      v153 = vrhaddq_u16(vrhaddq_u16(v357, v359), *(2 * a8 + 0x70));
      v324 = vrhaddq_u16(vrhaddq_u16(v356, v358), *(2 * a8 + 0x60));
      v325 = v153;
      v154 = vrhaddq_u16(vrhaddq_u16(v359, v361), *(2 * a8 + 0x90));
      v326 = vrhaddq_u16(vrhaddq_u16(v358, v360), *(2 * a8 + 0x80));
      v327 = v154;
      v155 = vrhaddq_u16(vrhaddq_u16(v361, v363), *(2 * a8 + 0xB0));
      v328 = vrhaddq_u16(vrhaddq_u16(v360, v362), *(2 * a8 + 0xA0));
      v329 = v155;
      v156 = vrhaddq_u16(vrhaddq_u16(v363, v365), *(2 * a8 + 0xD0));
      v330 = vrhaddq_u16(vrhaddq_u16(v362, v364), *(2 * a8 + 0xC0));
      v331 = v156;
      v157 = vrhaddq_u16(vrhaddq_u16(v365, v367), *(2 * a8 + 0xF0));
      v332 = vrhaddq_u16(vrhaddq_u16(v364, v366), *(2 * a8 + 0xE0));
      v333 = v157;
      v158 = vrhaddq_u16(vrhaddq_u16(v367, v369), *(2 * a8 + 0x110));
      v334 = vrhaddq_u16(vrhaddq_u16(v366, v368), *(2 * a8 + 0x100));
      v335 = v158;
      v159 = vrhaddq_u16(vrhaddq_u16(v369, v371), *(2 * a8 + 0x130));
      v336 = vrhaddq_u16(vrhaddq_u16(v368, v370), *(2 * a8 + 0x120));
      v337 = v159;
      v160 = vrhaddq_u16(vrhaddq_u16(v371, v373), *(2 * a8 + 0x150));
      v338 = vrhaddq_u16(vrhaddq_u16(v370, v372), *(2 * a8 + 0x140));
      v339 = v160;
      v161 = vrhaddq_u16(vrhaddq_u16(v373, v375), *(2 * a8 + 0x170));
      v340 = vrhaddq_u16(vrhaddq_u16(v372, v374), *(2 * a8 + 0x160));
      v341 = v161;
      v162 = vrhaddq_u16(vrhaddq_u16(v375, v377), *(2 * a8 + 0x190));
      v342 = vrhaddq_u16(vrhaddq_u16(v374, v376), *(2 * a8 + 0x180));
      v343 = v162;
      v163 = vrhaddq_u16(vrhaddq_u16(v377, v379), *(2 * a8 + 0x1B0));
      v344 = vrhaddq_u16(vrhaddq_u16(v376, v378), *(2 * a8 + 0x1A0));
      v345 = v163;
      v164 = vrhaddq_u16(vrhaddq_u16(v379, v381), *(2 * a8 + 0x1D0));
      v346 = vrhaddq_u16(vrhaddq_u16(v378, v380), *(2 * a8 + 0x1C0));
      v347 = v164;
      v165 = vrhaddq_u16(vrhaddq_u16(v381, v383), *(2 * a8 + 0x1F0));
      v348 = vrhaddq_u16(vrhaddq_u16(v380, v382), *(2 * a8 + 0x1E0));
      v349 = v165;
      v166 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v167 = vsubq_s16(*(&v318 + v133), v166[-1]);
        v168 = vpadalq_s16(v77, v167);
        v169 = vmlal_s16(v75, *v167.i8, *v167.i8);
        v170 = vmlal_high_s16(v76, v167, v167);
        v171 = vsubq_s16(*(&v318 + v133 + 16), *v166);
        v77 = vpadalq_s16(v168, v171);
        v75 = vmlal_s16(v169, *v171.i8, *v171.i8);
        v76 = vmlal_high_s16(v170, v171, v171);
        v133 += 32;
        v166 = (v166 + 2 * a6);
      }

      while (v133 != 512);
    }

    else
    {
      v41 = 0;
      if (a4)
      {
        v184 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v350 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v351 = v184;
        v185 = 2 * a2;
        v352 = vrhaddq_u16(*(v8 + v185), *(v8 + v185 + 2));
        v353 = vrhaddq_u16(*(v8 + v185 + 16), *(v8 + v185 + 18));
        v186 = v8 + v185 + v185;
        v354 = vrhaddq_u16(*v186, *(v186 + 2));
        v355 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
        v187 = v186 + v185;
        v356 = vrhaddq_u16(*v187, *(v187 + 2));
        v357 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
        v188 = v187 + v185;
        v358 = vrhaddq_u16(*v188, *(v188 + 2));
        v359 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
        v189 = v188 + v185;
        v360 = vrhaddq_u16(*v189, *(v189 + 2));
        v361 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
        v190 = v189 + v185;
        v362 = vrhaddq_u16(*v190, *(v190 + 2));
        v363 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
        v191 = v190 + v185;
        v364 = vrhaddq_u16(*v191, *(v191 + 2));
        v365 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
        v192 = v191 + v185;
        v366 = vrhaddq_u16(*v192, *(v192 + 2));
        v367 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
        v193 = v192 + v185;
        v368 = vrhaddq_u16(*v193, *(v193 + 2));
        v369 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
        v194 = v193 + v185;
        v370 = vrhaddq_u16(*v194, *(v194 + 2));
        v371 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
        v195 = v194 + v185;
        v372 = vrhaddq_u16(*v195, *(v195 + 2));
        v373 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
        v196 = v195 + v185;
        v374 = vrhaddq_u16(*v196, *(v196 + 2));
        v375 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
        v197 = v196 + v185;
        v376 = vrhaddq_u16(*v197, *(v197 + 2));
        v377 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
        v198 = v197 + v185;
        v378 = vrhaddq_u16(*v198, *(v198 + 2));
        v379 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
        v199 = v198 + v185;
        v380 = vrhaddq_u16(*v199, *(v199 + 2));
        v200 = v199 + v185;
        v381 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
        v382 = vrhaddq_u16(*v200, *(v200 + 2));
        v383 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
        v201 = vdupq_n_s16(8 - a4);
        v202 = vdupq_n_s16(a4);
        v203 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v351, v201), v353, v202), 3uLL), *(2 * a8 + 0x10));
        v318 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v350, v201), v352, v202), 3uLL), *(2 * a8));
        v319 = v203;
        v204 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v353, v201), v355, v202), 3uLL), *(2 * a8 + 0x30));
        v320 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v352, v201), v354, v202), 3uLL), *(2 * a8 + 0x20));
        v321 = v204;
        v205 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v355, v201), v357, v202), 3uLL), *(2 * a8 + 0x50));
        v322 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v354, v201), v356, v202), 3uLL), *(2 * a8 + 0x40));
        v323 = v205;
        v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v357, v201), v359, v202), 3uLL), *(2 * a8 + 0x70));
        v324 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v356, v201), v358, v202), 3uLL), *(2 * a8 + 0x60));
        v325 = v206;
        v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v359, v201), v361, v202), 3uLL), *(2 * a8 + 0x90));
        v326 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v358, v201), v360, v202), 3uLL), *(2 * a8 + 0x80));
        v327 = v207;
        v208 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v361, v201), v363, v202), 3uLL), *(2 * a8 + 0xB0));
        v328 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v360, v201), v362, v202), 3uLL), *(2 * a8 + 0xA0));
        v329 = v208;
        v209 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v363, v201), v365, v202), 3uLL), *(2 * a8 + 0xD0));
        v330 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v362, v201), v364, v202), 3uLL), *(2 * a8 + 0xC0));
        v331 = v209;
        v210 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v365, v201), v367, v202), 3uLL), *(2 * a8 + 0xF0));
        v332 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v364, v201), v366, v202), 3uLL), *(2 * a8 + 0xE0));
        v333 = v210;
        v211 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v367, v201), v369, v202), 3uLL), *(2 * a8 + 0x110));
        v334 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v366, v201), v368, v202), 3uLL), *(2 * a8 + 0x100));
        v335 = v211;
        v212 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v369, v201), v371, v202), 3uLL), *(2 * a8 + 0x130));
        v336 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v368, v201), v370, v202), 3uLL), *(2 * a8 + 0x120));
        v337 = v212;
        v213 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v371, v201), v373, v202), 3uLL), *(2 * a8 + 0x150));
        v338 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v370, v201), v372, v202), 3uLL), *(2 * a8 + 0x140));
        v339 = v213;
        v214 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v373, v201), v375, v202), 3uLL), *(2 * a8 + 0x170));
        v340 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v372, v201), v374, v202), 3uLL), *(2 * a8 + 0x160));
        v341 = v214;
        v215 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v375, v201), v377, v202), 3uLL), *(2 * a8 + 0x190));
        v342 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v374, v201), v376, v202), 3uLL), *(2 * a8 + 0x180));
        v343 = v215;
        v216 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v377, v201), v379, v202), 3uLL), *(2 * a8 + 0x1B0));
        v344 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v376, v201), v378, v202), 3uLL), *(2 * a8 + 0x1A0));
        v345 = v216;
        v217 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v379, v201), v381, v202), 3uLL), *(2 * a8 + 0x1D0));
        v346 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v378, v201), v380, v202), 3uLL), *(2 * a8 + 0x1C0));
        v347 = v217;
        v218 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v380, v201), v382, v202), 3uLL), *(2 * a8 + 0x1E0));
        v219 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v381, v201), v383, v202), 3uLL), *(2 * a8 + 0x1F0));
        v348 = v218;
        v349 = v219;
        v220 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v221 = vsubq_s16(*(&v318 + v41), v220[-1]);
          v222 = vpadalq_s16(v77, v221);
          v223 = vmlal_s16(v75, *v221.i8, *v221.i8);
          v224 = vmlal_high_s16(v76, v221, v221);
          v225 = vsubq_s16(*(&v318 + v41 + 16), *v220);
          v77 = vpadalq_s16(v222, v225);
          v75 = vmlal_s16(v223, *v225.i8, *v225.i8);
          v76 = vmlal_high_s16(v224, v225, v225);
          v41 += 32;
          v220 = (v220 + 2 * a6);
        }

        while (v41 != 512);
      }

      else
      {
        v42 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12)), *(2 * a8 + 0x10));
        v350 = vrhaddq_u16(vrhaddq_u16(*(2 * a1), *(2 * a1 + 2)), *(2 * a8));
        v351 = v42;
        v43 = 2 * a2;
        v44 = v8 + v43;
        v45 = *(2 * a8 + 0x30);
        v352 = vrhaddq_u16(vrhaddq_u16(*v44, *(v44 + 2)), *(2 * a8 + 0x20));
        v353 = vrhaddq_u16(vrhaddq_u16(*(v44 + 16), *(v44 + 18)), v45);
        v46 = v44 + v43;
        v47 = *(2 * a8 + 0x50);
        v354 = vrhaddq_u16(vrhaddq_u16(*v46, *(v46 + 2)), *(2 * a8 + 0x40));
        v355 = vrhaddq_u16(vrhaddq_u16(*(v46 + 16), *(v46 + 18)), v47);
        v48 = v46 + v43;
        v49 = *(2 * a8 + 0x70);
        v356 = vrhaddq_u16(vrhaddq_u16(*v48, *(v48 + 2)), *(2 * a8 + 0x60));
        v357 = vrhaddq_u16(vrhaddq_u16(*(v48 + 16), *(v48 + 18)), v49);
        v50 = v48 + v43;
        v51 = *(2 * a8 + 0x90);
        v358 = vrhaddq_u16(vrhaddq_u16(*v50, *(v50 + 2)), *(2 * a8 + 0x80));
        v359 = vrhaddq_u16(vrhaddq_u16(*(v50 + 16), *(v50 + 18)), v51);
        v52 = v50 + v43;
        v53 = *(2 * a8 + 0xB0);
        v360 = vrhaddq_u16(vrhaddq_u16(*v52, *(v52 + 2)), *(2 * a8 + 0xA0));
        v361 = vrhaddq_u16(vrhaddq_u16(*(v52 + 16), *(v52 + 18)), v53);
        v54 = v52 + v43;
        v55 = *(2 * a8 + 0xD0);
        v362 = vrhaddq_u16(vrhaddq_u16(*v54, *(v54 + 2)), *(2 * a8 + 0xC0));
        v363 = vrhaddq_u16(vrhaddq_u16(*(v54 + 16), *(v54 + 18)), v55);
        v56 = v54 + v43;
        v57 = *(2 * a8 + 0xF0);
        v364 = vrhaddq_u16(vrhaddq_u16(*v56, *(v56 + 2)), *(2 * a8 + 0xE0));
        v365 = vrhaddq_u16(vrhaddq_u16(*(v56 + 16), *(v56 + 18)), v57);
        v58 = v56 + v43;
        v59 = *(2 * a8 + 0x110);
        v366 = vrhaddq_u16(vrhaddq_u16(*v58, *(v58 + 2)), *(2 * a8 + 0x100));
        v367 = vrhaddq_u16(vrhaddq_u16(*(v58 + 16), *(v58 + 18)), v59);
        v60 = v58 + v43;
        v61 = *(2 * a8 + 0x130);
        v368 = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2)), *(2 * a8 + 0x120));
        v369 = vrhaddq_u16(vrhaddq_u16(*(v60 + 16), *(v60 + 18)), v61);
        v62 = v60 + v43;
        v63 = *(2 * a8 + 0x150);
        v370 = vrhaddq_u16(vrhaddq_u16(*v62, *(v62 + 2)), *(2 * a8 + 0x140));
        v371 = vrhaddq_u16(vrhaddq_u16(*(v62 + 16), *(v62 + 18)), v63);
        v64 = v62 + v43;
        v65 = *(2 * a8 + 0x170);
        v372 = vrhaddq_u16(vrhaddq_u16(*v64, *(v64 + 2)), *(2 * a8 + 0x160));
        v373 = vrhaddq_u16(vrhaddq_u16(*(v64 + 16), *(v64 + 18)), v65);
        v66 = v64 + v43;
        v67 = *(2 * a8 + 0x190);
        v374 = vrhaddq_u16(vrhaddq_u16(*v66, *(v66 + 2)), *(2 * a8 + 0x180));
        v375 = vrhaddq_u16(vrhaddq_u16(*(v66 + 16), *(v66 + 18)), v67);
        v68 = v66 + v43;
        v69 = *(2 * a8 + 0x1B0);
        v376 = vrhaddq_u16(vrhaddq_u16(*v68, *(v68 + 2)), *(2 * a8 + 0x1A0));
        v377 = vrhaddq_u16(vrhaddq_u16(*(v68 + 16), *(v68 + 18)), v69);
        v70 = v68 + v43;
        v71 = *(2 * a8 + 0x1D0);
        v378 = vrhaddq_u16(vrhaddq_u16(*v70, *(v70 + 2)), *(2 * a8 + 0x1C0));
        v72 = v70 + v43;
        v379 = vrhaddq_u16(vrhaddq_u16(*(v70 + 16), *(v70 + 18)), v71);
        v73 = *(2 * a8 + 0x1F0);
        v380 = vrhaddq_u16(vrhaddq_u16(*v72, *(v72 + 2)), *(2 * a8 + 0x1E0));
        v381 = vrhaddq_u16(vrhaddq_u16(*(v72 + 16), *(v72 + 18)), v73);
        v74 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v78 = vsubq_s16(*(&v350 + v41), v74[-1]);
          v79 = vpadalq_s16(v77, v78);
          v80 = vmlal_s16(v75, *v78.i8, *v78.i8);
          v81 = vmlal_high_s16(v76, v78, v78);
          v82 = vsubq_s16(*(&v350 + v41 + 16), *v74);
          v77 = vpadalq_s16(v79, v82);
          v75 = vmlal_s16(v80, *v82.i8, *v82.i8);
          v76 = vmlal_high_s16(v81, v82, v82);
          v41 += 32;
          v74 = (v74 + 2 * a6);
        }

        while (v41 != 512);
      }
    }
  }

  else
  {
    if (!a3)
    {
      v9 = (2 * a8);
      if (a4 == 4)
      {
        v96 = 2 * a2;
        v97 = (v8 + v96);
        v98 = *(2 * a8 + 0x10);
        v350 = vrhaddq_u16(vrhaddq_u16(*v8, *(v8 + v96)), *v9);
        v351 = vrhaddq_u16(vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x10 + v96)), v98);
        v99 = *(v8 + v96);
        v100 = (v8 + v96 + v96);
        v101 = *(2 * a8 + 0x30);
        v352 = vrhaddq_u16(vrhaddq_u16(v99, *v100), *(2 * a8 + 0x20));
        v353 = vrhaddq_u16(vrhaddq_u16(v97[1], *(v97 + v96 + 16)), v101);
        v102 = (v100 + v96);
        v103 = *(2 * a8 + 0x50);
        v354 = vrhaddq_u16(vrhaddq_u16(*v100, *(v100 + v96)), *(2 * a8 + 0x40));
        v355 = vrhaddq_u16(vrhaddq_u16(v100[1], *(v100 + v96 + 16)), v103);
        v104 = *(v100 + v96);
        v105 = (v100 + v96 + v96);
        v106 = *(2 * a8 + 0x70);
        v356 = vrhaddq_u16(vrhaddq_u16(v104, *v105), *(2 * a8 + 0x60));
        v357 = vrhaddq_u16(vrhaddq_u16(v102[1], *(v102 + v96 + 16)), v106);
        v107 = (v105 + v96);
        v108 = *(2 * a8 + 0x90);
        v358 = vrhaddq_u16(vrhaddq_u16(*v105, *(v105 + v96)), *(2 * a8 + 0x80));
        v359 = vrhaddq_u16(vrhaddq_u16(v105[1], *(v105 + v96 + 16)), v108);
        v109 = *(v105 + v96);
        v110 = (v105 + v96 + v96);
        v111 = *(2 * a8 + 0xB0);
        v360 = vrhaddq_u16(vrhaddq_u16(v109, *v110), *(2 * a8 + 0xA0));
        v361 = vrhaddq_u16(vrhaddq_u16(v107[1], *(v107 + v96 + 16)), v111);
        v112 = (v110 + v96);
        v113 = *(2 * a8 + 0xD0);
        v362 = vrhaddq_u16(vrhaddq_u16(*v110, *(v110 + v96)), *(2 * a8 + 0xC0));
        v363 = vrhaddq_u16(vrhaddq_u16(v110[1], *(v110 + v96 + 16)), v113);
        v114 = *(v110 + v96);
        v115 = (v110 + v96 + v96);
        v116 = *(2 * a8 + 0xF0);
        v364 = vrhaddq_u16(vrhaddq_u16(v114, *v115), *(2 * a8 + 0xE0));
        v365 = vrhaddq_u16(vrhaddq_u16(v112[1], *(v112 + v96 + 16)), v116);
        v117 = (v115 + v96);
        v118 = *(2 * a8 + 0x110);
        v366 = vrhaddq_u16(vrhaddq_u16(*v115, *(v115 + v96)), *(2 * a8 + 0x100));
        v367 = vrhaddq_u16(vrhaddq_u16(v115[1], *(v115 + v96 + 16)), v118);
        v119 = *(v115 + v96);
        v120 = (v115 + v96 + v96);
        v121 = *(2 * a8 + 0x130);
        v368 = vrhaddq_u16(vrhaddq_u16(v119, *v120), *(2 * a8 + 0x120));
        v369 = vrhaddq_u16(vrhaddq_u16(v117[1], *(v117 + v96 + 16)), v121);
        v122 = (v120 + v96);
        v123 = *(2 * a8 + 0x150);
        v370 = vrhaddq_u16(vrhaddq_u16(*v120, *(v120 + v96)), *(2 * a8 + 0x140));
        v371 = vrhaddq_u16(vrhaddq_u16(v120[1], *(v120 + v96 + 16)), v123);
        v124 = *(v120 + v96);
        v125 = (v120 + v96 + v96);
        v126 = *(2 * a8 + 0x170);
        v372 = vrhaddq_u16(vrhaddq_u16(v124, *v125), *(2 * a8 + 0x160));
        v373 = vrhaddq_u16(vrhaddq_u16(v122[1], *(v122 + v96 + 16)), v126);
        v127 = (v125 + v96);
        v128 = *(2 * a8 + 0x190);
        v374 = vrhaddq_u16(vrhaddq_u16(*v125, *(v125 + v96)), *(2 * a8 + 0x180));
        v375 = vrhaddq_u16(vrhaddq_u16(v125[1], *(v125 + v96 + 16)), v128);
        v129 = *(v125 + v96);
        v130 = (v125 + v96 + v96);
        v131 = *(2 * a8 + 0x1B0);
        v376 = vrhaddq_u16(vrhaddq_u16(v129, *v130), *(2 * a8 + 0x1A0));
        v377 = vrhaddq_u16(vrhaddq_u16(v127[1], *(v127 + v96 + 16)), v131);
        v132 = *(2 * a8 + 0x1D0);
        v378 = vrhaddq_u16(vrhaddq_u16(*v130, *(v130 + v96)), *(2 * a8 + 0x1C0));
        v379 = vrhaddq_u16(vrhaddq_u16(v130[1], *(v130 + v96 + 16)), v132);
        v380 = vrhaddq_u16(vrhaddq_u16(*(v130 + v96), *(v130 + v96 + v96)), *(2 * a8 + 0x1E0));
        v40 = vrhaddq_u16(*(&v130[1] + v96), *(&v130[1] + v96 + v96));
      }

      else
      {
        if (a4)
        {
          v172 = 0;
          v173 = vdupq_n_s16(8 - a4);
          v174 = vdupq_n_s16(a4);
          v175 = 2 * a2;
          do
          {
            v176 = (&v350 + v172 * 16);
            *v176 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v173), *(v8 + 2 * a2), v174), 3uLL), v9[v172]);
            v176[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 16), v173), *(v8 + v175 + 16), v174), 3uLL), v9[v172 + 1]);
            v172 += 2;
            v8 += v175;
          }

          while ((v172 * 16) != 512);
          goto LABEL_25;
        }

        v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
        v350 = vrhaddq_u16(*v8, *v9);
        v351 = v10;
        v11 = 2 * a2;
        v12 = *(2 * a8 + 0x30);
        v352 = vrhaddq_u16(*(v8 + v11), *(2 * a8 + 0x20));
        v353 = vrhaddq_u16(*(v8 + v11 + 16), v12);
        v13 = (v8 + v11 + v11);
        v14 = *(2 * a8 + 0x50);
        v354 = vrhaddq_u16(*v13, *(2 * a8 + 0x40));
        v355 = vrhaddq_u16(v13[1], v14);
        v15 = (v13 + v11);
        v16 = *(2 * a8 + 0x70);
        v356 = vrhaddq_u16(*v15, *(2 * a8 + 0x60));
        v357 = vrhaddq_u16(v15[1], v16);
        v17 = (v15 + v11);
        v18 = *(2 * a8 + 0x90);
        v358 = vrhaddq_u16(*v17, *(2 * a8 + 0x80));
        v359 = vrhaddq_u16(v17[1], v18);
        v19 = (v17 + v11);
        v20 = *(2 * a8 + 0xB0);
        v360 = vrhaddq_u16(*v19, *(2 * a8 + 0xA0));
        v361 = vrhaddq_u16(v19[1], v20);
        v21 = (v19 + v11);
        v22 = *(2 * a8 + 0xD0);
        v362 = vrhaddq_u16(*v21, *(2 * a8 + 0xC0));
        v363 = vrhaddq_u16(v21[1], v22);
        v23 = (v21 + v11);
        v24 = *(2 * a8 + 0xF0);
        v364 = vrhaddq_u16(*v23, *(2 * a8 + 0xE0));
        v365 = vrhaddq_u16(v23[1], v24);
        v25 = (v23 + v11);
        v26 = *(2 * a8 + 0x110);
        v366 = vrhaddq_u16(*v25, *(2 * a8 + 0x100));
        v367 = vrhaddq_u16(v25[1], v26);
        v27 = (v25 + v11);
        v28 = *(2 * a8 + 0x130);
        v368 = vrhaddq_u16(*v27, *(2 * a8 + 0x120));
        v369 = vrhaddq_u16(v27[1], v28);
        v29 = (v27 + v11);
        v30 = *(2 * a8 + 0x150);
        v370 = vrhaddq_u16(*v29, *(2 * a8 + 0x140));
        v371 = vrhaddq_u16(v29[1], v30);
        v31 = (v29 + v11);
        v32 = *(2 * a8 + 0x170);
        v372 = vrhaddq_u16(*v31, *(2 * a8 + 0x160));
        v373 = vrhaddq_u16(v31[1], v32);
        v33 = (v31 + v11);
        v34 = *(2 * a8 + 0x190);
        v374 = vrhaddq_u16(*v33, *(2 * a8 + 0x180));
        v375 = vrhaddq_u16(v33[1], v34);
        v35 = (v33 + v11);
        v36 = *(2 * a8 + 0x1B0);
        v376 = vrhaddq_u16(*v35, *(2 * a8 + 0x1A0));
        v377 = vrhaddq_u16(v35[1], v36);
        v37 = (v35 + v11);
        v38 = *(2 * a8 + 0x1D0);
        v378 = vrhaddq_u16(*v37, *(2 * a8 + 0x1C0));
        v379 = vrhaddq_u16(v37[1], v38);
        v39 = (v37 + v11);
        v380 = vrhaddq_u16(*v39, *(2 * a8 + 0x1E0));
        v40 = v39[1];
      }

      v381 = vrhaddq_u16(v40, *(2 * a8 + 0x1F0));
LABEL_25:
      v177 = 0;
      v178 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v179 = vsubq_s16(*(&v350 + v177), v178[-1]);
        v180 = vpadalq_s16(v77, v179);
        v181 = vmlal_s16(v75, *v179.i8, *v179.i8);
        v182 = vmlal_high_s16(v76, v179, v179);
        v183 = vsubq_s16(*(&v350 + v177 + 16), *v178);
        v77 = vpadalq_s16(v180, v183);
        v75 = vmlal_s16(v181, *v183.i8, *v183.i8);
        v76 = vmlal_high_s16(v182, v183, v183);
        v177 += 32;
        v178 = (v178 + 2 * a6);
      }

      while (v177 != 512);
      goto LABEL_36;
    }

    if (a4 == 4)
    {
      v226 = 0;
      v227 = vdupq_n_s16(8 - a3);
      v228 = vdupq_n_s16(a3);
      v317 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v227), *(2 * a1 + 0x12), v228), 3uLL);
      v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v227), *(2 * a1 + 2), v228), 3uLL);
      v351 = v317;
      v229 = 2 * a2;
      v352 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v229), v227), *(v8 + v229 + 2), v228), 3uLL);
      v353 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v229 + 16), v227), *(v8 + v229 + 18), v228), 3uLL);
      v230 = v8 + v229 + v229;
      v354 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v230, v227), *(v230 + 2), v228), 3uLL);
      v355 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v230 + 16), v227), *(v230 + 18), v228), 3uLL);
      v231 = v230 + v229;
      v356 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v231, v227), *(v231 + 2), v228), 3uLL);
      v357 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v231 + 16), v227), *(v231 + 18), v228), 3uLL);
      v232 = v231 + v229;
      v358 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v232, v227), *(v232 + 2), v228), 3uLL);
      v359 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v232 + 16), v227), *(v232 + 18), v228), 3uLL);
      v233 = v232 + v229;
      v360 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v233, v227), *(v233 + 2), v228), 3uLL);
      v361 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v233 + 16), v227), *(v233 + 18), v228), 3uLL);
      v234 = v233 + v229;
      v362 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v234, v227), *(v234 + 2), v228), 3uLL);
      v363 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v234 + 16), v227), *(v234 + 18), v228), 3uLL);
      v235 = v234 + v229;
      v364 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v235, v227), *(v235 + 2), v228), 3uLL);
      v365 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 + 16), v227), *(v235 + 18), v228), 3uLL);
      v236 = v235 + v229;
      v366 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v236, v227), *(v236 + 2), v228), 3uLL);
      v367 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v236 + 16), v227), *(v236 + 18), v228), 3uLL);
      v237 = v236 + v229;
      v368 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v237, v227), *(v237 + 2), v228), 3uLL);
      v369 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v237 + 16), v227), *(v237 + 18), v228), 3uLL);
      v238 = v237 + v229;
      v370 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v238, v227), *(v238 + 2), v228), 3uLL);
      v371 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v238 + 16), v227), *(v238 + 18), v228), 3uLL);
      v239 = v238 + v229;
      v372 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v239, v227), *(v239 + 2), v228), 3uLL);
      v373 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v239 + 16), v227), *(v239 + 18), v228), 3uLL);
      v240 = v239 + v229;
      v374 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v240, v227), *(v240 + 2), v228), 3uLL);
      v375 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v240 + 16), v227), *(v240 + 18), v228), 3uLL);
      v241 = v240 + v229;
      v376 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v241, v227), *(v241 + 2), v228), 3uLL);
      v377 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v241 + 16), v227), *(v241 + 18), v228), 3uLL);
      v242 = v241 + v229;
      v378 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v242, v227), *(v242 + 2), v228), 3uLL);
      v379 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v242 + 16), v227), *(v242 + 18), v228), 3uLL);
      v243 = v242 + v229;
      v380 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v243, v227), *(v243 + 2), v228), 3uLL);
      v381 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v243 + 16), v227), *(v243 + 18), v228), 3uLL);
      v244 = v243 + v229;
      v382 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v244, v227), *(v244 + 2), v228), 3uLL);
      v383 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v244 + 16), v227), *(v244 + 18), v228), 3uLL);
      v245 = vrhaddq_u16(vrhaddq_u16(v317, v353), *(2 * a8 + 0x10));
      v318 = vrhaddq_u16(vrhaddq_u16(v350, v352), *(2 * a8));
      v319 = v245;
      v246 = vrhaddq_u16(vrhaddq_u16(v353, v355), *(2 * a8 + 0x30));
      v320 = vrhaddq_u16(vrhaddq_u16(v352, v354), *(2 * a8 + 0x20));
      v321 = v246;
      v247 = vrhaddq_u16(vrhaddq_u16(v355, v357), *(2 * a8 + 0x50));
      v322 = vrhaddq_u16(vrhaddq_u16(v354, v356), *(2 * a8 + 0x40));
      v323 = v247;
      v248 = vrhaddq_u16(vrhaddq_u16(v357, v359), *(2 * a8 + 0x70));
      v324 = vrhaddq_u16(vrhaddq_u16(v356, v358), *(2 * a8 + 0x60));
      v325 = v248;
      v249 = vrhaddq_u16(vrhaddq_u16(v359, v361), *(2 * a8 + 0x90));
      v326 = vrhaddq_u16(vrhaddq_u16(v358, v360), *(2 * a8 + 0x80));
      v327 = v249;
      v250 = vrhaddq_u16(vrhaddq_u16(v361, v363), *(2 * a8 + 0xB0));
      v328 = vrhaddq_u16(vrhaddq_u16(v360, v362), *(2 * a8 + 0xA0));
      v329 = v250;
      v251 = vrhaddq_u16(vrhaddq_u16(v363, v365), *(2 * a8 + 0xD0));
      v330 = vrhaddq_u16(vrhaddq_u16(v362, v364), *(2 * a8 + 0xC0));
      v331 = v251;
      v252 = vrhaddq_u16(vrhaddq_u16(v365, v367), *(2 * a8 + 0xF0));
      v332 = vrhaddq_u16(vrhaddq_u16(v364, v366), *(2 * a8 + 0xE0));
      v333 = v252;
      v253 = vrhaddq_u16(vrhaddq_u16(v367, v369), *(2 * a8 + 0x110));
      v334 = vrhaddq_u16(vrhaddq_u16(v366, v368), *(2 * a8 + 0x100));
      v335 = v253;
      v254 = vrhaddq_u16(vrhaddq_u16(v369, v371), *(2 * a8 + 0x130));
      v336 = vrhaddq_u16(vrhaddq_u16(v368, v370), *(2 * a8 + 0x120));
      v337 = v254;
      v255 = vrhaddq_u16(vrhaddq_u16(v371, v373), *(2 * a8 + 0x150));
      v338 = vrhaddq_u16(vrhaddq_u16(v370, v372), *(2 * a8 + 0x140));
      v339 = v255;
      v256 = vrhaddq_u16(vrhaddq_u16(v373, v375), *(2 * a8 + 0x170));
      v340 = vrhaddq_u16(vrhaddq_u16(v372, v374), *(2 * a8 + 0x160));
      v341 = v256;
      v257 = vrhaddq_u16(vrhaddq_u16(v375, v377), *(2 * a8 + 0x190));
      v342 = vrhaddq_u16(vrhaddq_u16(v374, v376), *(2 * a8 + 0x180));
      v343 = v257;
      v258 = vrhaddq_u16(vrhaddq_u16(v377, v379), *(2 * a8 + 0x1B0));
      v344 = vrhaddq_u16(vrhaddq_u16(v376, v378), *(2 * a8 + 0x1A0));
      v345 = v258;
      v259 = vrhaddq_u16(vrhaddq_u16(v379, v381), *(2 * a8 + 0x1D0));
      v346 = vrhaddq_u16(vrhaddq_u16(v378, v380), *(2 * a8 + 0x1C0));
      v347 = v259;
      v260 = vrhaddq_u16(vrhaddq_u16(v381, v383), *(2 * a8 + 0x1F0));
      v348 = vrhaddq_u16(vrhaddq_u16(v380, v382), *(2 * a8 + 0x1E0));
      v349 = v260;
      v261 = (2 * a5 + 16);
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      do
      {
        v262 = vsubq_s16(*(&v318 + v226), v261[-1]);
        v263 = vpadalq_s16(v77, v262);
        v264 = vmlal_s16(v75, *v262.i8, *v262.i8);
        v265 = vmlal_high_s16(v76, v262, v262);
        v266 = vsubq_s16(*(&v318 + v226 + 16), *v261);
        v77 = vpadalq_s16(v263, v266);
        v75 = vmlal_s16(v264, *v266.i8, *v266.i8);
        v76 = vmlal_high_s16(v265, v266, v266);
        v226 += 32;
        v261 = (v261 + 2 * a6);
      }

      while (v226 != 512);
    }

    else
    {
      v83 = 0;
      if (a4)
      {
        v267 = vdupq_n_s16(8 - a3);
        v268 = vdupq_n_s16(a3);
        v269 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(2 * a1 + 0x10), v267), *(2 * a1 + 0x12), v268), 3uLL);
        v350 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v8, v267), *(2 * a1 + 2), v268), 3uLL);
        v351 = v269;
        v270 = 2 * a2;
        v271 = v8 + v270;
        v352 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v271, v267), *(v271 + 2), v268), 3uLL);
        v353 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v271 + 16), v267), *(v271 + 18), v268), 3uLL);
        v272 = v271 + v270;
        v354 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v272, v267), *(v272 + 2), v268), 3uLL);
        v355 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v272 + 16), v267), *(v272 + 18), v268), 3uLL);
        v273 = v272 + v270;
        v356 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v273, v267), *(v273 + 2), v268), 3uLL);
        v357 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v273 + 16), v267), *(v273 + 18), v268), 3uLL);
        v274 = v273 + v270;
        v358 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v274, v267), *(v274 + 2), v268), 3uLL);
        v359 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v274 + 16), v267), *(v274 + 18), v268), 3uLL);
        v275 = v274 + v270;
        v360 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v275, v267), *(v275 + 2), v268), 3uLL);
        v361 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v275 + 16), v267), *(v275 + 18), v268), 3uLL);
        v276 = v275 + v270;
        v362 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v276, v267), *(v276 + 2), v268), 3uLL);
        v363 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v276 + 16), v267), *(v276 + 18), v268), 3uLL);
        v277 = v276 + v270;
        v364 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v277, v267), *(v277 + 2), v268), 3uLL);
        v365 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v277 + 16), v267), *(v277 + 18), v268), 3uLL);
        v278 = v277 + v270;
        v366 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v278, v267), *(v278 + 2), v268), 3uLL);
        v367 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v278 + 16), v267), *(v278 + 18), v268), 3uLL);
        v279 = v278 + v270;
        v368 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v279, v267), *(v279 + 2), v268), 3uLL);
        v369 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v279 + 16), v267), *(v279 + 18), v268), 3uLL);
        v280 = v279 + v270;
        v370 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v280, v267), *(v280 + 2), v268), 3uLL);
        v371 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v280 + 16), v267), *(v280 + 18), v268), 3uLL);
        v281 = v280 + v270;
        v372 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v281, v267), *(v281 + 2), v268), 3uLL);
        v373 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v281 + 16), v267), *(v281 + 18), v268), 3uLL);
        v282 = v281 + v270;
        v374 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v282, v267), *(v282 + 2), v268), 3uLL);
        v375 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v282 + 16), v267), *(v282 + 18), v268), 3uLL);
        v283 = v282 + v270;
        v376 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v283, v267), *(v283 + 2), v268), 3uLL);
        v377 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v283 + 16), v267), *(v283 + 18), v268), 3uLL);
        v284 = v283 + v270;
        v378 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v284, v267), *(v284 + 2), v268), 3uLL);
        v379 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v284 + 16), v267), *(v284 + 18), v268), 3uLL);
        v285 = v284 + v270;
        v380 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v285, v267), *(v285 + 2), v268), 3uLL);
        v381 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v285 + 16), v267), *(v285 + 18), v268), 3uLL);
        v286 = v285 + v270;
        v382 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v286, v267), *(v286 + 2), v268), 3uLL);
        v383 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v286 + 16), v267), *(v286 + 18), v268), 3uLL);
        v287 = vdupq_n_s16(8 - a4);
        v288 = vdupq_n_s16(a4);
        v289 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v269, v287), v353, v288), 3uLL), *(2 * a8 + 0x10));
        v318 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v350, v287), v352, v288), 3uLL), *(2 * a8));
        v319 = v289;
        v290 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v353, v287), v355, v288), 3uLL), *(2 * a8 + 0x30));
        v320 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v352, v287), v354, v288), 3uLL), *(2 * a8 + 0x20));
        v321 = v290;
        v291 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v355, v287), v357, v288), 3uLL), *(2 * a8 + 0x50));
        v322 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v354, v287), v356, v288), 3uLL), *(2 * a8 + 0x40));
        v323 = v291;
        v292 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v357, v287), v359, v288), 3uLL), *(2 * a8 + 0x70));
        v324 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v356, v287), v358, v288), 3uLL), *(2 * a8 + 0x60));
        v325 = v292;
        v293 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v359, v287), v361, v288), 3uLL), *(2 * a8 + 0x90));
        v326 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v358, v287), v360, v288), 3uLL), *(2 * a8 + 0x80));
        v327 = v293;
        v294 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v361, v287), v363, v288), 3uLL), *(2 * a8 + 0xB0));
        v328 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v360, v287), v362, v288), 3uLL), *(2 * a8 + 0xA0));
        v329 = v294;
        v295 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v363, v287), v365, v288), 3uLL), *(2 * a8 + 0xD0));
        v330 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v362, v287), v364, v288), 3uLL), *(2 * a8 + 0xC0));
        v331 = v295;
        v296 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v365, v287), v367, v288), 3uLL), *(2 * a8 + 0xF0));
        v332 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v364, v287), v366, v288), 3uLL), *(2 * a8 + 0xE0));
        v333 = v296;
        v297 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v367, v287), v369, v288), 3uLL), *(2 * a8 + 0x110));
        v334 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v366, v287), v368, v288), 3uLL), *(2 * a8 + 0x100));
        v335 = v297;
        v298 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v369, v287), v371, v288), 3uLL), *(2 * a8 + 0x130));
        v336 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v368, v287), v370, v288), 3uLL), *(2 * a8 + 0x120));
        v337 = v298;
        v299 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v371, v287), v373, v288), 3uLL), *(2 * a8 + 0x150));
        v338 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v370, v287), v372, v288), 3uLL), *(2 * a8 + 0x140));
        v339 = v299;
        v300 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v373, v287), v375, v288), 3uLL), *(2 * a8 + 0x170));
        v340 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v372, v287), v374, v288), 3uLL), *(2 * a8 + 0x160));
        v341 = v300;
        v301 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v375, v287), v377, v288), 3uLL), *(2 * a8 + 0x190));
        v342 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v374, v287), v376, v288), 3uLL), *(2 * a8 + 0x180));
        v343 = v301;
        v302 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v377, v287), v379, v288), 3uLL), *(2 * a8 + 0x1B0));
        v344 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v376, v287), v378, v288), 3uLL), *(2 * a8 + 0x1A0));
        v345 = v302;
        v303 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v379, v287), v381, v288), 3uLL), *(2 * a8 + 0x1D0));
        v346 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v378, v287), v380, v288), 3uLL), *(2 * a8 + 0x1C0));
        v347 = v303;
        v304 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v380, v287), v382, v288), 3uLL), *(2 * a8 + 0x1E0));
        v305 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v381, v287), v383, v288), 3uLL), *(2 * a8 + 0x1F0));
        v348 = v304;
        v349 = v305;
        v306 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v307 = vsubq_s16(*(&v318 + v83), v306[-1]);
          v308 = vpadalq_s16(v77, v307);
          v309 = vmlal_s16(v75, *v307.i8, *v307.i8);
          v310 = vmlal_high_s16(v76, v307, v307);
          v311 = vsubq_s16(*(&v318 + v83 + 16), *v306);
          v77 = vpadalq_s16(v308, v311);
          v75 = vmlal_s16(v309, *v311.i8, *v311.i8);
          v76 = vmlal_high_s16(v310, v311, v311);
          v83 += 32;
          v306 = (v306 + 2 * a6);
        }

        while (v83 != 512);
      }

      else
      {
        v84 = 2 * a8;
        v85 = vdupq_n_s16(8 - a3);
        v86 = vdupq_n_s16(a3);
        v87 = (v8 + 18);
        do
        {
          v88 = (&v350 + v83);
          *v88 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v87 - 18), v85), v87[-1], v86), 3uLL), *(v84 + v83));
          v88[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v87 - 2), v85), *v87, v86), 3uLL), *(v84 + v83 + 16));
          v83 += 32;
          v87 = (v87 + 2 * a2);
        }

        while (v83 != 512);
        v89 = 0;
        v90 = (2 * a5 + 16);
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        do
        {
          v91 = vsubq_s16(*(&v350 + v89), v90[-1]);
          v92 = vpadalq_s16(v77, v91);
          v93 = vmlal_s16(v75, *v91.i8, *v91.i8);
          v94 = vmlal_high_s16(v76, v91, v91);
          v95 = vsubq_s16(*(&v350 + v89 + 16), *v90);
          v77 = vpadalq_s16(v92, v95);
          v75 = vmlal_s16(v93, *v95.i8, *v95.i8);
          v76 = vmlal_high_s16(v94, v95, v95);
          v89 += 32;
          v90 = (v90 + 2 * a6);
        }

        while (v89 != 512);
      }
    }
  }

LABEL_36:
  v312 = vaddvq_s32(v77);
  v313 = vaddlvq_u32(vaddq_s32(v76, v75));
  *a7 = (v313 + 128) >> 8;
  v314 = ((v313 + 128) >> 8) - (((((v312 << 28) + 0x80000000) >> 32) * (((v312 << 28) + 0x80000000) >> 32)) >> 8);
  return v314 & ~(v314 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance16x32_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v323 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v106 = 0;
      v107 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v257 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v258 = v107;
      v108 = 2 * a2;
      v109 = &v8->i8[v108];
      v259 = vrhaddq_u16(*v109, *(v109 + 2));
      v260 = vrhaddq_u16(*(v109 + 1), *(v109 + 18));
      v110 = &v109[v108];
      v261 = vrhaddq_u16(*v110, *(v110 + 2));
      v262 = vrhaddq_u16(*(v110 + 1), *(v110 + 18));
      v111 = &v110[v108];
      v263 = vrhaddq_u16(*v111, *(v111 + 2));
      v264 = vrhaddq_u16(*(v111 + 1), *(v111 + 18));
      v112 = &v111[v108];
      v265 = vrhaddq_u16(*v112, *(v112 + 2));
      v266 = vrhaddq_u16(*(v112 + 1), *(v112 + 18));
      v113 = &v112[v108];
      v267 = vrhaddq_u16(*v113, *(v113 + 2));
      v268 = vrhaddq_u16(*(v113 + 1), *(v113 + 18));
      v114 = &v113[v108];
      v269 = vrhaddq_u16(*v114, *(v114 + 2));
      v270 = vrhaddq_u16(*(v114 + 1), *(v114 + 18));
      v115 = &v114[v108];
      v271 = vrhaddq_u16(*v115, *(v115 + 2));
      v272 = vrhaddq_u16(*(v115 + 1), *(v115 + 18));
      v116 = &v115[v108];
      v273 = vrhaddq_u16(*v116, *(v116 + 2));
      v274 = vrhaddq_u16(*(v116 + 1), *(v116 + 18));
      v117 = &v116[v108];
      v275 = vrhaddq_u16(*v117, *(v117 + 2));
      v276 = vrhaddq_u16(*(v117 + 16), *(v117 + 18));
      v118 = v117 + v108;
      v277 = vrhaddq_u16(*v118, *(v118 + 2));
      v278 = vrhaddq_u16(*(v118 + 16), *(v118 + 18));
      v119 = v118 + v108;
      v279 = vrhaddq_u16(*v119, *(v119 + 2));
      v280 = vrhaddq_u16(*(v119 + 16), *(v119 + 18));
      v120 = v119 + v108;
      v281 = vrhaddq_u16(*v120, *(v120 + 2));
      v282 = vrhaddq_u16(*(v120 + 16), *(v120 + 18));
      v121 = v120 + v108;
      v283 = vrhaddq_u16(*v121, *(v121 + 2));
      v284 = vrhaddq_u16(*(v121 + 16), *(v121 + 18));
      v122 = v121 + v108;
      v285 = vrhaddq_u16(*v122, *(v122 + 2));
      v286 = vrhaddq_u16(*(v122 + 16), *(v122 + 18));
      v123 = v122 + v108;
      v287 = vrhaddq_u16(*v123, *(v123 + 2));
      v288 = vrhaddq_u16(*(v123 + 16), *(v123 + 18));
      v124 = v123 + v108;
      v289 = vrhaddq_u16(*v124, *(v124 + 2));
      v290 = vrhaddq_u16(*(v124 + 16), *(v124 + 18));
      v125 = v124 + v108;
      v291 = vrhaddq_u16(*v125, *(v125 + 2));
      v292 = vrhaddq_u16(*(v125 + 16), *(v125 + 18));
      v126 = v125 + v108;
      v293 = vrhaddq_u16(*v126, *(v126 + 2));
      v294 = vrhaddq_u16(*(v126 + 16), *(v126 + 18));
      v127 = v126 + v108;
      v295 = vrhaddq_u16(*v127, *(v127 + 2));
      v296 = vrhaddq_u16(*(v127 + 16), *(v127 + 18));
      v128 = v127 + v108;
      v297 = vrhaddq_u16(*v128, *(v128 + 2));
      v298 = vrhaddq_u16(*(v128 + 16), *(v128 + 18));
      v129 = v128 + v108;
      v299 = vrhaddq_u16(*v129, *(v129 + 2));
      v300 = vrhaddq_u16(*(v129 + 16), *(v129 + 18));
      v130 = v129 + v108;
      v301 = vrhaddq_u16(*v130, *(v130 + 2));
      v302 = vrhaddq_u16(*(v130 + 16), *(v130 + 18));
      v131 = v130 + v108;
      v303 = vrhaddq_u16(*v131, *(v131 + 2));
      v304 = vrhaddq_u16(*(v131 + 16), *(v131 + 18));
      v132 = v131 + v108;
      v305 = vrhaddq_u16(*v132, *(v132 + 2));
      v306 = vrhaddq_u16(*(v132 + 16), *(v132 + 18));
      v133 = v132 + v108;
      v307 = vrhaddq_u16(*v133, *(v133 + 2));
      v308 = vrhaddq_u16(*(v133 + 16), *(v133 + 18));
      v134 = v133 + v108;
      v309 = vrhaddq_u16(*v134, *(v134 + 2));
      v310 = vrhaddq_u16(*(v134 + 16), *(v134 + 18));
      v135 = v134 + v108;
      v311 = vrhaddq_u16(*v135, *(v135 + 2));
      v312 = vrhaddq_u16(*(v135 + 16), *(v135 + 18));
      v136 = v135 + v108;
      v313 = vrhaddq_u16(*v136, *(v136 + 2));
      v314 = vrhaddq_u16(*(v136 + 16), *(v136 + 18));
      v137 = v136 + v108;
      v315 = vrhaddq_u16(*v137, *(v137 + 2));
      v316 = vrhaddq_u16(*(v137 + 16), *(v137 + 18));
      v138 = v137 + v108;
      v317 = vrhaddq_u16(*v138, *(v138 + 2));
      v318 = vrhaddq_u16(*(v138 + 16), *(v138 + 18));
      v139 = v138 + v108;
      v319 = vrhaddq_u16(*v139, *(v139 + 2));
      v320 = vrhaddq_u16(*(v139 + 16), *(v139 + 18));
      v140 = v139 + v108;
      v321 = vrhaddq_u16(*v140, *(v140 + 2));
      v322 = vrhaddq_u16(*(v140 + 16), *(v140 + 18));
      v141 = 2 * a8;
      v142 = v257;
      do
      {
        v143 = *(&v259 + v106);
        v144 = vrhaddq_u16(vrhaddq_u16(*(&v257 + v106 + 16), *(&v260 + v106)), *(v141 + v106 + 16));
        v145 = &v256[v106];
        *v145 = vrhaddq_u16(vrhaddq_u16(v142, v143), *(v141 + v106));
        v145[1] = v144;
        v106 += 32;
        v142 = v143;
      }

      while (v106 != 1024);
      v146 = 0;
      v147 = (2 * a5 + 16);
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      do
      {
        v148 = vsubq_s16(*&v256[v146], v147[-1]);
        v149 = vpadalq_s16(v82, v148);
        v150 = vmlal_s16(v80, *v148.i8, *v148.i8);
        v151 = vmlal_high_s16(v81, v148, v148);
        v152 = vsubq_s16(*&v256[v146 + 16], *v147);
        v82 = vpadalq_s16(v149, v152);
        v80 = vmlal_s16(v150, *v152.i8, *v152.i8);
        v81 = vmlal_high_s16(v151, v152, v152);
        v146 += 32;
        v147 = (v147 + 2 * a6);
      }

      while (v146 != 1024);
    }

    else
    {
      v74 = 0;
      if (a4)
      {
        v167 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
        v257 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
        v258 = v167;
        v168 = 2 * a2;
        v169 = &v8->i8[v168];
        v259 = vrhaddq_u16(*v169, *(v169 + 2));
        v260 = vrhaddq_u16(*(v169 + 1), *(v169 + 18));
        v170 = &v169[v168];
        v261 = vrhaddq_u16(*v170, *(v170 + 2));
        v262 = vrhaddq_u16(*(v170 + 1), *(v170 + 18));
        v171 = &v170[v168];
        v263 = vrhaddq_u16(*v171, *(v171 + 2));
        v264 = vrhaddq_u16(*(v171 + 1), *(v171 + 18));
        v172 = &v171[v168];
        v265 = vrhaddq_u16(*v172, *(v172 + 2));
        v266 = vrhaddq_u16(*(v172 + 1), *(v172 + 18));
        v173 = &v172[v168];
        v267 = vrhaddq_u16(*v173, *(v173 + 2));
        v268 = vrhaddq_u16(*(v173 + 1), *(v173 + 18));
        v174 = &v173[v168];
        v269 = vrhaddq_u16(*v174, *(v174 + 2));
        v270 = vrhaddq_u16(*(v174 + 1), *(v174 + 18));
        v175 = &v174[v168];
        v271 = vrhaddq_u16(*v175, *(v175 + 2));
        v272 = vrhaddq_u16(*(v175 + 1), *(v175 + 18));
        v176 = &v175[v168];
        v273 = vrhaddq_u16(*v176, *(v176 + 2));
        v274 = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
        v177 = &v176[v168];
        v275 = vrhaddq_u16(*v177, *(v177 + 2));
        v276 = vrhaddq_u16(*(v177 + 16), *(v177 + 18));
        v178 = v177 + v168;
        v277 = vrhaddq_u16(*v178, *(v178 + 2));
        v278 = vrhaddq_u16(*(v178 + 16), *(v178 + 18));
        v179 = v178 + v168;
        v279 = vrhaddq_u16(*v179, *(v179 + 2));
        v280 = vrhaddq_u16(*(v179 + 16), *(v179 + 18));
        v180 = v179 + v168;
        v281 = vrhaddq_u16(*v180, *(v180 + 2));
        v282 = vrhaddq_u16(*(v180 + 16), *(v180 + 18));
        v181 = v180 + v168;
        v283 = vrhaddq_u16(*v181, *(v181 + 2));
        v284 = vrhaddq_u16(*(v181 + 16), *(v181 + 18));
        v182 = v181 + v168;
        v285 = vrhaddq_u16(*v182, *(v182 + 2));
        v286 = vrhaddq_u16(*(v182 + 16), *(v182 + 18));
        v183 = v182 + v168;
        v287 = vrhaddq_u16(*v183, *(v183 + 2));
        v288 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
        v184 = v183 + v168;
        v289 = vrhaddq_u16(*v184, *(v184 + 2));
        v290 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
        v185 = v184 + v168;
        v291 = vrhaddq_u16(*v185, *(v185 + 2));
        v292 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
        v186 = v185 + v168;
        v293 = vrhaddq_u16(*v186, *(v186 + 2));
        v294 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
        v187 = v186 + v168;
        v295 = vrhaddq_u16(*v187, *(v187 + 2));
        v296 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
        v188 = v187 + v168;
        v297 = vrhaddq_u16(*v188, *(v188 + 2));
        v298 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
        v189 = v188 + v168;
        v299 = vrhaddq_u16(*v189, *(v189 + 2));
        v300 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
        v190 = v189 + v168;
        v301 = vrhaddq_u16(*v190, *(v190 + 2));
        v302 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
        v191 = v190 + v168;
        v303 = vrhaddq_u16(*v191, *(v191 + 2));
        v304 = vrhaddq_u16(*(v191 + 16), *(v191 + 18));
        v192 = v191 + v168;
        v305 = vrhaddq_u16(*v192, *(v192 + 2));
        v306 = vrhaddq_u16(*(v192 + 16), *(v192 + 18));
        v193 = v192 + v168;
        v307 = vrhaddq_u16(*v193, *(v193 + 2));
        v308 = vrhaddq_u16(*(v193 + 16), *(v193 + 18));
        v194 = v193 + v168;
        v309 = vrhaddq_u16(*v194, *(v194 + 2));
        v310 = vrhaddq_u16(*(v194 + 16), *(v194 + 18));
        v195 = v194 + v168;
        v311 = vrhaddq_u16(*v195, *(v195 + 2));
        v312 = vrhaddq_u16(*(v195 + 16), *(v195 + 18));
        v196 = v195 + v168;
        v313 = vrhaddq_u16(*v196, *(v196 + 2));
        v314 = vrhaddq_u16(*(v196 + 16), *(v196 + 18));
        v197 = v196 + v168;
        v315 = vrhaddq_u16(*v197, *(v197 + 2));
        v316 = vrhaddq_u16(*(v197 + 16), *(v197 + 18));
        v198 = v197 + v168;
        v317 = vrhaddq_u16(*v198, *(v198 + 2));
        v318 = vrhaddq_u16(*(v198 + 16), *(v198 + 18));
        v199 = v198 + v168;
        v319 = vrhaddq_u16(*v199, *(v199 + 2));
        v200 = v199 + v168;
        v320 = vrhaddq_u16(*(v199 + 16), *(v199 + 18));
        v321 = vrhaddq_u16(*v200, *(v200 + 2));
        v322 = vrhaddq_u16(*(v200 + 16), *(v200 + 18));
        v201 = vdupq_n_s16(8 - a4);
        v202 = 2 * a8;
        v203 = vdupq_n_s16(a4);
        v204 = v257;
        do
        {
          v205 = *(&v259 + v74);
          v206 = &v256[v74];
          v207 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v257 + v74 + 16), v201), *(&v260 + v74), v203), 3uLL), *(v202 + v74 + 16));
          *v206 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v204, v201), v205, v203), 3uLL), *(v202 + v74));
          v206[1] = v207;
          v74 += 32;
          v204 = v205;
        }

        while (v74 != 1024);
        v208 = 0;
        v209 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v210 = vsubq_s16(*&v256[v208], v209[-1]);
          v211 = vpadalq_s16(v82, v210);
          v212 = vmlal_s16(v80, *v210.i8, *v210.i8);
          v213 = vmlal_high_s16(v81, v210, v210);
          v214 = vsubq_s16(*&v256[v208 + 16], *v209);
          v82 = vpadalq_s16(v211, v214);
          v80 = vmlal_s16(v212, *v214.i8, *v214.i8);
          v81 = vmlal_high_s16(v213, v214, v214);
          v208 += 32;
          v209 = (v209 + 2 * a6);
        }

        while (v208 != 1024);
      }

      else
      {
        v75 = 2 * a8;
        v76 = (v8 + 18);
        do
        {
          v77 = (&v257 + v74);
          *v77 = vrhaddq_u16(vrhaddq_u16(*(v76 - 18), v76[-1]), *(v75 + v74));
          v77[1] = vrhaddq_u16(vrhaddq_u16(*(v76 - 2), *v76), *(v75 + v74 + 16));
          v74 += 32;
          v76 = (v76 + 2 * a2);
        }

        while (v74 != 1024);
        v78 = 0;
        v79 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v83 = vsubq_s16(*(&v257 + v78), v79[-1]);
          v84 = vpadalq_s16(v82, v83);
          v85 = vmlal_s16(v80, *v83.i8, *v83.i8);
          v86 = vmlal_high_s16(v81, v83, v83);
          v87 = vsubq_s16(*(&v257 + v78 + 16), *v79);
          v82 = vpadalq_s16(v84, v87);
          v80 = vmlal_s16(v85, *v87.i8, *v87.i8);
          v81 = vmlal_high_s16(v86, v87, v87);
          v78 += 32;
          v79 = (v79 + 2 * a6);
        }

        while (v78 != 1024);
      }
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v215 = 0;
      v216 = vdupq_n_s16(8 - a3);
      v217 = vdupq_n_s16(a3);
      v218 = &v8[1].i16[1];
      do
      {
        v219 = (&v257 + v215);
        *v219 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v218 - 18), v216), v218[-1], v217), 3uLL);
        v219[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v218 - 2), v216), *v218, v217), 3uLL);
        v215 += 32;
        v218 = (v218 + 2 * a2);
      }

      while (v215 != 1056);
      v220 = 0;
      v221 = 2 * a8;
      v222 = v257;
      do
      {
        v223 = *(&v259 + v220);
        v224 = vrhaddq_u16(vrhaddq_u16(*(&v257 + v220 + 16), *(&v260 + v220)), *(v221 + v220 + 16));
        v225 = &v256[v220];
        *v225 = vrhaddq_u16(vrhaddq_u16(v222, v223), *(v221 + v220));
        v225[1] = v224;
        v220 += 32;
        v222 = v223;
      }

      while (v220 != 1024);
      v226 = 0;
      v227 = (2 * a5 + 16);
      v80 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      do
      {
        v228 = vsubq_s16(*&v256[v226], v227[-1]);
        v229 = vpadalq_s16(v82, v228);
        v230 = vmlal_s16(v80, *v228.i8, *v228.i8);
        v231 = vmlal_high_s16(v81, v228, v228);
        v232 = vsubq_s16(*&v256[v226 + 16], *v227);
        v82 = vpadalq_s16(v229, v232);
        v80 = vmlal_s16(v230, *v232.i8, *v232.i8);
        v81 = vmlal_high_s16(v231, v232, v232);
        v226 += 32;
        v227 = (v227 + 2 * a6);
      }

      while (v226 != 1024);
    }

    else
    {
      v88 = 0;
      if (a4)
      {
        v233 = vdupq_n_s16(8 - a3);
        v234 = vdupq_n_s16(a3);
        v235 = &v8[1].i16[1];
        do
        {
          v236 = (&v257 + v88);
          *v236 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 - 18), v233), v235[-1], v234), 3uLL);
          v236[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v235 - 2), v233), *v235, v234), 3uLL);
          v88 += 32;
          v235 = (v235 + 2 * a2);
        }

        while (v88 != 1056);
        v237 = 0;
        v238 = vdupq_n_s16(8 - a4);
        v239 = 2 * a8;
        v240 = vdupq_n_s16(a4);
        v241 = v257;
        do
        {
          v242 = *(&v259 + v237);
          v243 = &v256[v237];
          v244 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(&v257 + v237 + 16), v238), *(&v260 + v237), v240), 3uLL), *(v239 + v237 + 16));
          *v243 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v241, v238), v242, v240), 3uLL), *(v239 + v237));
          v243[1] = v244;
          v237 += 32;
          v241 = v242;
        }

        while (v237 != 1024);
        v245 = 0;
        v246 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v247 = vsubq_s16(*&v256[v245], v246[-1]);
          v248 = vpadalq_s16(v82, v247);
          v249 = vmlal_s16(v80, *v247.i8, *v247.i8);
          v250 = vmlal_high_s16(v81, v247, v247);
          v251 = vsubq_s16(*&v256[v245 + 16], *v246);
          v82 = vpadalq_s16(v248, v251);
          v80 = vmlal_s16(v249, *v251.i8, *v251.i8);
          v81 = vmlal_high_s16(v250, v251, v251);
          v245 += 32;
          v246 = (v246 + 2 * a6);
        }

        while (v245 != 1024);
      }

      else
      {
        v89 = 2 * a8;
        v90 = vdupq_n_s16(8 - a3);
        v91 = vdupq_n_s16(a3);
        v92 = &v8[1].i16[1];
        do
        {
          v93 = (&v257 + v88);
          *v93 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 18), v90), v92[-1], v91), 3uLL), *(v89 + v88));
          v93[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 2), v90), *v92, v91), 3uLL), *(v89 + v88 + 16));
          v88 += 32;
          v92 = (v92 + 2 * a2);
        }

        while (v88 != 1024);
        v94 = 0;
        v95 = (2 * a5 + 16);
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        do
        {
          v96 = vsubq_s16(*(&v257 + v94), v95[-1]);
          v97 = vpadalq_s16(v82, v96);
          v98 = vmlal_s16(v80, *v96.i8, *v96.i8);
          v99 = vmlal_high_s16(v81, v96, v96);
          v100 = vsubq_s16(*(&v257 + v94 + 16), *v95);
          v82 = vpadalq_s16(v97, v100);
          v80 = vmlal_s16(v98, *v100.i8, *v100.i8);
          v81 = vmlal_high_s16(v99, v100, v100);
          v94 += 32;
          v95 = (v95 + 2 * a6);
        }

        while (v94 != 1024);
      }
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v101 = 0;
      v102 = *v8;
      v103 = 2 * a2;
      do
      {
        v104 = (&v257 + v101 * 16);
        v105 = *(v8 + 2 * a2);
        *v104 = vrhaddq_u16(vrhaddq_u16(v102, v105), v9[v101]);
        v104[1] = vrhaddq_u16(vrhaddq_u16(v8[1], *(&v8[1] + v103)), v9[v101 + 1]);
        v101 += 2;
        v8 = (v8 + v103);
        v102 = v105;
      }

      while ((v101 * 16) != 1024);
    }

    else if (a4)
    {
      v153 = 0;
      v154 = vdupq_n_s16(8 - a4);
      v155 = vdupq_n_s16(a4);
      v156 = *v8;
      v157 = 2 * a2;
      do
      {
        v158 = (&v257 + v153 * 16);
        v159 = *(v8 + 2 * a2);
        *v158 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v156, v154), v159, v155), 3uLL), v9[v153]);
        v158[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v8[1], v154), *(&v8[1] + v157), v155), 3uLL), v9[v153 + 1]);
        v153 += 2;
        v8 = (v8 + v157);
        v156 = v159;
      }

      while ((v153 * 16) != 1024);
    }

    else
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
      v257 = vrhaddq_u16(*v8, *v9);
      v258 = v10;
      v11 = 2 * a2;
      v12 = (v8 + v11);
      v13 = *(2 * a8 + 0x30);
      v259 = vrhaddq_u16(*v12, *(2 * a8 + 0x20));
      v260 = vrhaddq_u16(v12[1], v13);
      v14 = (v12 + v11);
      v15 = *(2 * a8 + 0x50);
      v261 = vrhaddq_u16(*v14, *(2 * a8 + 0x40));
      v262 = vrhaddq_u16(v14[1], v15);
      v16 = (v14 + v11);
      v17 = *(2 * a8 + 0x70);
      v263 = vrhaddq_u16(*v16, *(2 * a8 + 0x60));
      v264 = vrhaddq_u16(v16[1], v17);
      v18 = (v16 + v11);
      v19 = *(2 * a8 + 0x90);
      v265 = vrhaddq_u16(*v18, *(2 * a8 + 0x80));
      v266 = vrhaddq_u16(v18[1], v19);
      v20 = (v18 + v11);
      v21 = *(2 * a8 + 0xB0);
      v267 = vrhaddq_u16(*v20, *(2 * a8 + 0xA0));
      v268 = vrhaddq_u16(v20[1], v21);
      v22 = (v20 + v11);
      v23 = *(2 * a8 + 0xD0);
      v269 = vrhaddq_u16(*v22, *(2 * a8 + 0xC0));
      v270 = vrhaddq_u16(v22[1], v23);
      v24 = (v22 + v11);
      v25 = *(2 * a8 + 0xF0);
      v271 = vrhaddq_u16(*v24, *(2 * a8 + 0xE0));
      v272 = vrhaddq_u16(v24[1], v25);
      v26 = (v24 + v11);
      v27 = *(2 * a8 + 0x110);
      v273 = vrhaddq_u16(*v26, *(2 * a8 + 0x100));
      v274 = vrhaddq_u16(v26[1], v27);
      v28 = (v26 + v11);
      v29 = *(2 * a8 + 0x130);
      v275 = vrhaddq_u16(*v28, *(2 * a8 + 0x120));
      v276 = vrhaddq_u16(v28[1], v29);
      v30 = (v28 + v11);
      v31 = *(2 * a8 + 0x150);
      v277 = vrhaddq_u16(*v30, *(2 * a8 + 0x140));
      v278 = vrhaddq_u16(v30[1], v31);
      v32 = (v30 + v11);
      v33 = *(2 * a8 + 0x170);
      v279 = vrhaddq_u16(*v32, *(2 * a8 + 0x160));
      v280 = vrhaddq_u16(v32[1], v33);
      v34 = (v32 + v11);
      v35 = *(2 * a8 + 0x190);
      v281 = vrhaddq_u16(*v34, *(2 * a8 + 0x180));
      v282 = vrhaddq_u16(v34[1], v35);
      v36 = (v34 + v11);
      v37 = *(2 * a8 + 0x1B0);
      v283 = vrhaddq_u16(*v36, *(2 * a8 + 0x1A0));
      v284 = vrhaddq_u16(v36[1], v37);
      v38 = (v36 + v11);
      v39 = *(2 * a8 + 0x1D0);
      v285 = vrhaddq_u16(*v38, *(2 * a8 + 0x1C0));
      v286 = vrhaddq_u16(v38[1], v39);
      v40 = (v38 + v11);
      v41 = *(2 * a8 + 0x1F0);
      v287 = vrhaddq_u16(*v40, *(2 * a8 + 0x1E0));
      v288 = vrhaddq_u16(v40[1], v41);
      v42 = (v40 + v11);
      v43 = *(2 * a8 + 0x210);
      v289 = vrhaddq_u16(*v42, *(2 * a8 + 0x200));
      v290 = vrhaddq_u16(v42[1], v43);
      v44 = (v42 + v11);
      v45 = *(2 * a8 + 0x230);
      v291 = vrhaddq_u16(*v44, *(2 * a8 + 0x220));
      v292 = vrhaddq_u16(v44[1], v45);
      v46 = (v44 + v11);
      v47 = *(2 * a8 + 0x250);
      v293 = vrhaddq_u16(*v46, *(2 * a8 + 0x240));
      v294 = vrhaddq_u16(v46[1], v47);
      v48 = (v46 + v11);
      v49 = *(2 * a8 + 0x270);
      v295 = vrhaddq_u16(*v48, *(2 * a8 + 0x260));
      v296 = vrhaddq_u16(v48[1], v49);
      v50 = (v48 + v11);
      v51 = *(2 * a8 + 0x290);
      v297 = vrhaddq_u16(*v50, *(2 * a8 + 0x280));
      v298 = vrhaddq_u16(v50[1], v51);
      v52 = (v50 + v11);
      v53 = *(2 * a8 + 0x2B0);
      v299 = vrhaddq_u16(*v52, *(2 * a8 + 0x2A0));
      v300 = vrhaddq_u16(v52[1], v53);
      v54 = (v52 + v11);
      v55 = *(2 * a8 + 0x2D0);
      v301 = vrhaddq_u16(*v54, *(2 * a8 + 0x2C0));
      v302 = vrhaddq_u16(v54[1], v55);
      v56 = (v54 + v11);
      v57 = *(2 * a8 + 0x2F0);
      v303 = vrhaddq_u16(*v56, *(2 * a8 + 0x2E0));
      v304 = vrhaddq_u16(v56[1], v57);
      v58 = (v56 + v11);
      v59 = *(2 * a8 + 0x310);
      v305 = vrhaddq_u16(*v58, *(2 * a8 + 0x300));
      v306 = vrhaddq_u16(v58[1], v59);
      v60 = (v58 + v11);
      v61 = *(2 * a8 + 0x330);
      v307 = vrhaddq_u16(*v60, *(2 * a8 + 0x320));
      v308 = vrhaddq_u16(v60[1], v61);
      v62 = (v60 + v11);
      v63 = *(2 * a8 + 0x350);
      v309 = vrhaddq_u16(*v62, *(2 * a8 + 0x340));
      v310 = vrhaddq_u16(v62[1], v63);
      v64 = (v62 + v11);
      v65 = *(2 * a8 + 0x370);
      v311 = vrhaddq_u16(*v64, *(2 * a8 + 0x360));
      v312 = vrhaddq_u16(v64[1], v65);
      v66 = (v64 + v11);
      v67 = *(2 * a8 + 0x390);
      v313 = vrhaddq_u16(*v66, *(2 * a8 + 0x380));
      v314 = vrhaddq_u16(v66[1], v67);
      v68 = (v66 + v11);
      v69 = *(2 * a8 + 0x3B0);
      v315 = vrhaddq_u16(*v68, *(2 * a8 + 0x3A0));
      v316 = vrhaddq_u16(v68[1], v69);
      v70 = (v68 + v11);
      v71 = *(2 * a8 + 0x3D0);
      v317 = vrhaddq_u16(*v70, *(2 * a8 + 0x3C0));
      v318 = vrhaddq_u16(v70[1], v71);
      v72 = (v70 + v11);
      v73 = *(2 * a8 + 0x3F0);
      v319 = vrhaddq_u16(*v72, *(2 * a8 + 0x3E0));
      v320 = vrhaddq_u16(v72[1], v73);
    }

    v160 = 0;
    v161 = (2 * a5 + 16);
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    do
    {
      v162 = vsubq_s16(*(&v257 + v160), v161[-1]);
      v163 = vpadalq_s16(v82, v162);
      v164 = vmlal_s16(v80, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v81, v162, v162);
      v166 = vsubq_s16(*(&v257 + v160 + 16), *v161);
      v82 = vpadalq_s16(v163, v166);
      v80 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v81 = vmlal_high_s16(v165, v166, v166);
      v160 += 32;
      v161 = (v161 + 2 * a6);
    }

    while (v160 != 1024);
  }

  v252 = vaddvq_s32(v82);
  v253 = vaddlvq_u32(vaddq_s32(v81, v80));
  *a7 = (v253 + 128) >> 8;
  v254 = ((v253 + 128) >> 8) - (((((v252 << 28) + 0x80000000) >> 32) * (((v252 << 28) + 0x80000000) >> 32)) >> 9);
  return v254 & ~(v254 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance32x16_neon(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v354 = *MEMORY[0x277D85DE8];
  v8 = (2 * a1);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v105 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v286 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v287 = v105;
      v106 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v288 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v289 = v106;
      v107 = 2 * a2;
      v108 = &v8->i8[v107];
      v109 = &v290;
      v290 = vrhaddq_u16(*v108, *(v108 + 2));
      v291 = vrhaddq_u16(*(v108 + 1), *(v108 + 18));
      v292 = vrhaddq_u16(*(v108 + 2), *(v108 + 34));
      v293 = vrhaddq_u16(*(v108 + 3), *(v108 + 50));
      v110 = &v108[v107];
      v294 = vrhaddq_u16(*v110, *(v110 + 2));
      v295 = vrhaddq_u16(*(v110 + 1), *(v110 + 18));
      v296 = vrhaddq_u16(*(v110 + 2), *(v110 + 34));
      v297 = vrhaddq_u16(*(v110 + 3), *(v110 + 50));
      v111 = &v110[v107];
      v298 = vrhaddq_u16(*v111, *(v111 + 2));
      v299 = vrhaddq_u16(*(v111 + 1), *(v111 + 18));
      v300 = vrhaddq_u16(*(v111 + 2), *(v111 + 34));
      v301 = vrhaddq_u16(*(v111 + 3), *(v111 + 50));
      v112 = &v111[v107];
      v302 = vrhaddq_u16(*v112, *(v112 + 2));
      v303 = vrhaddq_u16(*(v112 + 1), *(v112 + 18));
      v304 = vrhaddq_u16(*(v112 + 2), *(v112 + 34));
      v305 = vrhaddq_u16(*(v112 + 3), *(v112 + 50));
      v113 = &v112[v107];
      v306 = vrhaddq_u16(*v113, *(v113 + 2));
      v307 = vrhaddq_u16(*(v113 + 1), *(v113 + 18));
      v308 = vrhaddq_u16(*(v113 + 2), *(v113 + 34));
      v309 = vrhaddq_u16(*(v113 + 3), *(v113 + 50));
      v114 = &v113[v107];
      v310 = vrhaddq_u16(*v114, *(v114 + 2));
      v311 = vrhaddq_u16(*(v114 + 1), *(v114 + 18));
      v312 = vrhaddq_u16(*(v114 + 2), *(v114 + 34));
      v313 = vrhaddq_u16(*(v114 + 3), *(v114 + 50));
      v115 = &v114[v107];
      v314 = vrhaddq_u16(*v115, *(v115 + 2));
      v315 = vrhaddq_u16(*(v115 + 1), *(v115 + 18));
      v316 = vrhaddq_u16(*(v115 + 2), *(v115 + 34));
      v317 = vrhaddq_u16(*(v115 + 3), *(v115 + 50));
      v116 = &v115[v107];
      v318 = vrhaddq_u16(*v116, *(v116 + 2));
      v319 = vrhaddq_u16(*(v116 + 1), *(v116 + 18));
      v320 = vrhaddq_u16(*(v116 + 2), *(v116 + 34));
      v321 = vrhaddq_u16(*(v116 + 3), *(v116 + 50));
      v117 = &v116[v107];
      v322 = vrhaddq_u16(*v117, *(v117 + 2));
      v323 = vrhaddq_u16(*(v117 + 16), *(v117 + 18));
      v324 = vrhaddq_u16(*(v117 + 32), *(v117 + 34));
      v325 = vrhaddq_u16(*(v117 + 48), *(v117 + 50));
      v118 = v117 + v107;
      v326 = vrhaddq_u16(*v118, *(v118 + 2));
      v327 = vrhaddq_u16(*(v118 + 16), *(v118 + 18));
      v328 = vrhaddq_u16(*(v118 + 32), *(v118 + 34));
      v329 = vrhaddq_u16(*(v118 + 48), *(v118 + 50));
      v119 = v118 + v107;
      v330 = vrhaddq_u16(*v119, *(v119 + 2));
      v331 = vrhaddq_u16(*(v119 + 16), *(v119 + 18));
      v332 = vrhaddq_u16(*(v119 + 32), *(v119 + 34));
      v333 = vrhaddq_u16(*(v119 + 48), *(v119 + 50));
      v120 = v119 + v107;
      v334 = vrhaddq_u16(*v120, *(v120 + 2));
      v335 = vrhaddq_u16(*(v120 + 16), *(v120 + 18));
      v336 = vrhaddq_u16(*(v120 + 32), *(v120 + 34));
      v337 = vrhaddq_u16(*(v120 + 48), *(v120 + 50));
      v121 = v120 + v107;
      v338 = vrhaddq_u16(*v121, *(v121 + 2));
      v339 = vrhaddq_u16(*(v121 + 16), *(v121 + 18));
      v340 = vrhaddq_u16(*(v121 + 32), *(v121 + 34));
      v341 = vrhaddq_u16(*(v121 + 48), *(v121 + 50));
      v122 = v121 + v107;
      v342 = vrhaddq_u16(*v122, *(v122 + 2));
      v343 = vrhaddq_u16(*(v122 + 16), *(v122 + 18));
      v344 = vrhaddq_u16(*(v122 + 32), *(v122 + 34));
      v345 = vrhaddq_u16(*(v122 + 48), *(v122 + 50));
      v123 = v122 + v107;
      v346 = vrhaddq_u16(*v123, *(v123 + 2));
      v347 = vrhaddq_u16(*(v123 + 16), *(v123 + 18));
      v348 = vrhaddq_u16(*(v123 + 32), *(v123 + 34));
      v349 = vrhaddq_u16(*(v123 + 48), *(v123 + 50));
      v124 = v123 + v107;
      v350 = vrhaddq_u16(*v124, *(v124 + 2));
      v351 = vrhaddq_u16(*(v124 + 16), *(v124 + 18));
      v352 = vrhaddq_u16(*(v124 + 32), *(v124 + 34));
      v353 = vrhaddq_u16(*(v124 + 48), *(v124 + 50));
      v125 = 2 * a8;
      v126 = v286;
      v127 = 112;
      do
      {
        v129 = v109[-1];
        v128 = *v109;
        v130 = v109[-2];
        v131 = v109[2];
        v132 = vrhaddq_u16(vrhaddq_u16(v109[-3], v109[1]), *(v125 + v127 - 96));
        v133 = &v285[v127];
        v133[-7] = vrhaddq_u16(vrhaddq_u16(v126, *v109), *(v125 + v127 - 112));
        v133[-6] = v132;
        v134 = vrhaddq_u16(vrhaddq_u16(v129, v109[3]), *(v125 + v127 - 64));
        v133[-5] = vrhaddq_u16(vrhaddq_u16(v130, v131), *(v125 + v127 - 80));
        v133[-4] = v134;
        v127 += 64;
        v109 += 4;
        v126 = v128;
      }

      while (v127 != 1136);
      v135 = 0;
      v136 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v137 = vsubq_s16(*&v285[v135], v136[-2]);
        v138 = vpadalq_s16(v66, v137);
        v139 = vmlal_s16(v64, *v137.i8, *v137.i8);
        v140 = vmlal_high_s16(v65, v137, v137);
        v141 = vsubq_s16(*&v285[v135 + 16], v136[-1]);
        v142 = vpadalq_s16(v138, v141);
        v143 = vmlal_s16(v139, *v141.i8, *v141.i8);
        v144 = vmlal_high_s16(v140, v141, v141);
        v145 = vsubq_s16(*&v285[v135 + 32], *v136);
        v146 = vpadalq_s16(v142, v145);
        v147 = vmlal_s16(v143, *v145.i8, *v145.i8);
        v148 = vmlal_high_s16(v144, v145, v145);
        v149 = vsubq_s16(*&v285[v135 + 48], v136[1]);
        v66 = vpadalq_s16(v146, v149);
        v64 = vmlal_s16(v147, *v149.i8, *v149.i8);
        v65 = vmlal_high_s16(v148, v149, v149);
        v135 += 64;
        v136 = (v136 + 2 * a6);
      }

      while (v135 != 1024);
    }

    else if (a4)
    {
      v171 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a1 + 0x12));
      v286 = vrhaddq_u16(*(2 * a1), *(2 * a1 + 2));
      v287 = v171;
      v172 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a1 + 0x32));
      v288 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a1 + 0x22));
      v289 = v172;
      v173 = 2 * a2;
      v174 = &v8->i8[v173];
      v175 = &v290;
      v290 = vrhaddq_u16(*v174, *(v174 + 2));
      v291 = vrhaddq_u16(*(v174 + 1), *(v174 + 18));
      v292 = vrhaddq_u16(*(v174 + 2), *(v174 + 34));
      v293 = vrhaddq_u16(*(v174 + 3), *(v174 + 50));
      v176 = &v174[v173];
      v294 = vrhaddq_u16(*v176, *(v176 + 2));
      v295 = vrhaddq_u16(*(v176 + 1), *(v176 + 18));
      v296 = vrhaddq_u16(*(v176 + 2), *(v176 + 34));
      v297 = vrhaddq_u16(*(v176 + 3), *(v176 + 50));
      v177 = &v176[v173];
      v298 = vrhaddq_u16(*v177, *(v177 + 2));
      v299 = vrhaddq_u16(*(v177 + 1), *(v177 + 18));
      v300 = vrhaddq_u16(*(v177 + 2), *(v177 + 34));
      v301 = vrhaddq_u16(*(v177 + 3), *(v177 + 50));
      v178 = &v177[v173];
      v302 = vrhaddq_u16(*v178, *(v178 + 2));
      v303 = vrhaddq_u16(*(v178 + 1), *(v178 + 18));
      v304 = vrhaddq_u16(*(v178 + 2), *(v178 + 34));
      v305 = vrhaddq_u16(*(v178 + 3), *(v178 + 50));
      v179 = &v178[v173];
      v306 = vrhaddq_u16(*v179, *(v179 + 2));
      v307 = vrhaddq_u16(*(v179 + 1), *(v179 + 18));
      v308 = vrhaddq_u16(*(v179 + 2), *(v179 + 34));
      v309 = vrhaddq_u16(*(v179 + 3), *(v179 + 50));
      v180 = &v179[v173];
      v310 = vrhaddq_u16(*v180, *(v180 + 2));
      v311 = vrhaddq_u16(*(v180 + 1), *(v180 + 18));
      v312 = vrhaddq_u16(*(v180 + 2), *(v180 + 34));
      v313 = vrhaddq_u16(*(v180 + 3), *(v180 + 50));
      v181 = &v180[v173];
      v314 = vrhaddq_u16(*v181, *(v181 + 2));
      v315 = vrhaddq_u16(*(v181 + 1), *(v181 + 18));
      v316 = vrhaddq_u16(*(v181 + 2), *(v181 + 34));
      v317 = vrhaddq_u16(*(v181 + 3), *(v181 + 50));
      v182 = &v181[v173];
      v318 = vrhaddq_u16(*v182, *(v182 + 2));
      v319 = vrhaddq_u16(*(v182 + 1), *(v182 + 18));
      v320 = vrhaddq_u16(*(v182 + 2), *(v182 + 34));
      v321 = vrhaddq_u16(*(v182 + 3), *(v182 + 50));
      v183 = &v182[v173];
      v322 = vrhaddq_u16(*v183, *(v183 + 2));
      v323 = vrhaddq_u16(*(v183 + 16), *(v183 + 18));
      v324 = vrhaddq_u16(*(v183 + 32), *(v183 + 34));
      v325 = vrhaddq_u16(*(v183 + 48), *(v183 + 50));
      v184 = v183 + v173;
      v326 = vrhaddq_u16(*v184, *(v184 + 2));
      v327 = vrhaddq_u16(*(v184 + 16), *(v184 + 18));
      v328 = vrhaddq_u16(*(v184 + 32), *(v184 + 34));
      v329 = vrhaddq_u16(*(v184 + 48), *(v184 + 50));
      v185 = v184 + v173;
      v330 = vrhaddq_u16(*v185, *(v185 + 2));
      v331 = vrhaddq_u16(*(v185 + 16), *(v185 + 18));
      v332 = vrhaddq_u16(*(v185 + 32), *(v185 + 34));
      v333 = vrhaddq_u16(*(v185 + 48), *(v185 + 50));
      v186 = v185 + v173;
      v334 = vrhaddq_u16(*v186, *(v186 + 2));
      v335 = vrhaddq_u16(*(v186 + 16), *(v186 + 18));
      v336 = vrhaddq_u16(*(v186 + 32), *(v186 + 34));
      v337 = vrhaddq_u16(*(v186 + 48), *(v186 + 50));
      v187 = v186 + v173;
      v338 = vrhaddq_u16(*v187, *(v187 + 2));
      v339 = vrhaddq_u16(*(v187 + 16), *(v187 + 18));
      v340 = vrhaddq_u16(*(v187 + 32), *(v187 + 34));
      v341 = vrhaddq_u16(*(v187 + 48), *(v187 + 50));
      v188 = v187 + v173;
      v342 = vrhaddq_u16(*v188, *(v188 + 2));
      v343 = vrhaddq_u16(*(v188 + 16), *(v188 + 18));
      v344 = vrhaddq_u16(*(v188 + 32), *(v188 + 34));
      v345 = vrhaddq_u16(*(v188 + 48), *(v188 + 50));
      v189 = v188 + v173;
      v346 = vrhaddq_u16(*v189, *(v189 + 2));
      v347 = vrhaddq_u16(*(v189 + 16), *(v189 + 18));
      v348 = vrhaddq_u16(*(v189 + 32), *(v189 + 34));
      v349 = vrhaddq_u16(*(v189 + 48), *(v189 + 50));
      v190 = v189 + v173;
      v350 = vrhaddq_u16(*v190, *(v190 + 2));
      v351 = vrhaddq_u16(*(v190 + 16), *(v190 + 18));
      v352 = vrhaddq_u16(*(v190 + 32), *(v190 + 34));
      v353 = vrhaddq_u16(*(v190 + 48), *(v190 + 50));
      v191 = vdupq_n_s16(8 - a4);
      v192 = 2 * a8;
      v193 = vdupq_n_s16(a4);
      v194 = v286;
      v195 = 112;
      do
      {
        v197 = v175[-1];
        v196 = *v175;
        v198 = v175[-2];
        v199 = v175[2];
        v200 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v175[-3], v191), v175[1], v193), 3uLL), *(v192 + v195 - 96));
        v201 = &v285[v195];
        v201[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v194, v191), *v175, v193), 3uLL), *(v192 + v195 - 112));
        v201[-6] = v200;
        v202 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v197, v191), v175[3], v193), 3uLL), *(v192 + v195 - 64));
        v201[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v198, v191), v199, v193), 3uLL), *(v192 + v195 - 80));
        v201[-4] = v202;
        v195 += 64;
        v175 += 4;
        v194 = v196;
      }

      while (v195 != 1136);
      v203 = 0;
      v204 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v205 = vsubq_s16(*&v285[v203], v204[-2]);
        v206 = vpadalq_s16(v66, v205);
        v207 = vmlal_s16(v64, *v205.i8, *v205.i8);
        v208 = vmlal_high_s16(v65, v205, v205);
        v209 = vsubq_s16(*&v285[v203 + 16], v204[-1]);
        v210 = vpadalq_s16(v206, v209);
        v211 = vmlal_s16(v207, *v209.i8, *v209.i8);
        v212 = vmlal_high_s16(v208, v209, v209);
        v213 = vsubq_s16(*&v285[v203 + 32], *v204);
        v214 = vpadalq_s16(v210, v213);
        v215 = vmlal_s16(v211, *v213.i8, *v213.i8);
        v216 = vmlal_high_s16(v212, v213, v213);
        v217 = vsubq_s16(*&v285[v203 + 48], v204[1]);
        v66 = vpadalq_s16(v214, v217);
        v64 = vmlal_s16(v215, *v217.i8, *v217.i8);
        v65 = vmlal_high_s16(v216, v217, v217);
        v203 += 64;
        v204 = (v204 + 2 * a6);
      }

      while (v203 != 1024);
    }

    else
    {
      v58 = 0;
      v59 = 2 * a8;
      v60 = v8 + 2;
      do
      {
        v61 = (&v286 + v58);
        *v61 = vrhaddq_u16(vrhaddq_u16(v60[-2], *(v60 - 30)), *(v59 + v58));
        v61[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(v60 - 14)), *(v59 + v58 + 16));
        v61[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2)), *(v59 + v58 + 32));
        v61[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(v60 + 18)), *(v59 + v58 + 48));
        v58 += 64;
        v60 = (v60 + 2 * a2);
      }

      while (v58 != 1024);
      v62 = 0;
      v63 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v67 = vsubq_s16(*(&v286 + v62), v63[-2]);
        v68 = vpadalq_s16(v66, v67);
        v69 = vmlal_s16(v64, *v67.i8, *v67.i8);
        v70 = vmlal_high_s16(v65, v67, v67);
        v71 = vsubq_s16(*(&v286 + v62 + 16), v63[-1]);
        v72 = vpadalq_s16(v68, v71);
        v73 = vmlal_s16(v69, *v71.i8, *v71.i8);
        v74 = vmlal_high_s16(v70, v71, v71);
        v75 = vsubq_s16(*(&v288 + v62), *v63);
        v76 = vpadalq_s16(v72, v75);
        v77 = vmlal_s16(v73, *v75.i8, *v75.i8);
        v78 = vmlal_high_s16(v74, v75, v75);
        v79 = vsubq_s16(*(&v289 + v62), v63[1]);
        v66 = vpadalq_s16(v76, v79);
        v64 = vmlal_s16(v77, *v79.i8, *v79.i8);
        v65 = vmlal_high_s16(v78, v79, v79);
        v62 += 64;
        v63 = (v63 + 2 * a6);
      }

      while (v62 != 1024);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v218 = 0;
      v219 = vdupq_n_s16(8 - a3);
      v220 = vdupq_n_s16(a3);
      v221 = v8 + 2;
      do
      {
        v222 = (&v286 + v218);
        *v222 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[-2], v219), *(&v221[-2] + 2), v220), 3uLL);
        v222[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[-1], v219), *(&v221[-1] + 2), v220), 3uLL);
        v222[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v221, v219), *(v221 + 2), v220), 3uLL);
        v222[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v221[1], v219), *(&v221[1] + 2), v220), 3uLL);
        v218 += 64;
        v221 = (v221 + 2 * a2);
      }

      while (v218 != 1088);
      v223 = 2 * a8;
      v224 = v286;
      v225 = &v290;
      v226 = 112;
      do
      {
        v228 = v225[-1];
        v227 = *v225;
        v229 = v225[-2];
        v230 = v225[2];
        v231 = vrhaddq_u16(vrhaddq_u16(v225[-3], v225[1]), *(v223 + v226 - 96));
        v232 = &v285[v226];
        v232[-7] = vrhaddq_u16(vrhaddq_u16(v224, *v225), *(v223 + v226 - 112));
        v232[-6] = v231;
        v233 = vrhaddq_u16(vrhaddq_u16(v228, v225[3]), *(v223 + v226 - 64));
        v232[-5] = vrhaddq_u16(vrhaddq_u16(v229, v230), *(v223 + v226 - 80));
        v232[-4] = v233;
        v226 += 64;
        v225 += 4;
        v224 = v227;
      }

      while (v226 != 1136);
      v234 = 0;
      v235 = (2 * a5 + 32);
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      do
      {
        v236 = vsubq_s16(*&v285[v234], v235[-2]);
        v237 = vpadalq_s16(v66, v236);
        v238 = vmlal_s16(v64, *v236.i8, *v236.i8);
        v239 = vmlal_high_s16(v65, v236, v236);
        v240 = vsubq_s16(*&v285[v234 + 16], v235[-1]);
        v241 = vpadalq_s16(v237, v240);
        v242 = vmlal_s16(v238, *v240.i8, *v240.i8);
        v243 = vmlal_high_s16(v239, v240, v240);
        v244 = vsubq_s16(*&v285[v234 + 32], *v235);
        v245 = vpadalq_s16(v241, v244);
        v246 = vmlal_s16(v242, *v244.i8, *v244.i8);
        v247 = vmlal_high_s16(v243, v244, v244);
        v248 = vsubq_s16(*&v285[v234 + 48], v235[1]);
        v66 = vpadalq_s16(v245, v248);
        v64 = vmlal_s16(v246, *v248.i8, *v248.i8);
        v65 = vmlal_high_s16(v247, v248, v248);
        v234 += 64;
        v235 = (v235 + 2 * a6);
      }

      while (v234 != 1024);
    }

    else
    {
      v80 = 0;
      if (a4)
      {
        v249 = vdupq_n_s16(8 - a3);
        v250 = vdupq_n_s16(a3);
        v251 = v8 + 2;
        do
        {
          v252 = (&v286 + v80);
          *v252 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[-2], v249), *(&v251[-2] + 2), v250), 3uLL);
          v252[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[-1], v249), *(&v251[-1] + 2), v250), 3uLL);
          v252[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v251, v249), *(v251 + 2), v250), 3uLL);
          v252[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v251[1], v249), *(&v251[1] + 2), v250), 3uLL);
          v80 += 64;
          v251 = (v251 + 2 * a2);
        }

        while (v80 != 1088);
        v253 = vdupq_n_s16(8 - a4);
        v254 = vdupq_n_s16(a4);
        v255 = 2 * a8;
        v256 = v286;
        v257 = &v290;
        v258 = 112;
        do
        {
          v260 = v257[-1];
          v259 = *v257;
          v261 = v257[-2];
          v262 = v257[2];
          v263 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v257[-3], v253), v257[1], v254), 3uLL), *(v255 + v258 - 96));
          v264 = &v285[v258];
          v264[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v256, v253), *v257, v254), 3uLL), *(v255 + v258 - 112));
          v264[-6] = v263;
          v265 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v260, v253), v257[3], v254), 3uLL), *(v255 + v258 - 64));
          v264[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v261, v253), v262, v254), 3uLL), *(v255 + v258 - 80));
          v264[-4] = v265;
          v258 += 64;
          v257 += 4;
          v256 = v259;
        }

        while (v258 != 1136);
        v266 = 0;
        v267 = (2 * a5 + 32);
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v268 = vsubq_s16(*&v285[v266], v267[-2]);
          v269 = vpadalq_s16(v66, v268);
          v270 = vmlal_s16(v64, *v268.i8, *v268.i8);
          v271 = vmlal_high_s16(v65, v268, v268);
          v272 = vsubq_s16(*&v285[v266 + 16], v267[-1]);
          v273 = vpadalq_s16(v269, v272);
          v274 = vmlal_s16(v270, *v272.i8, *v272.i8);
          v275 = vmlal_high_s16(v271, v272, v272);
          v276 = vsubq_s16(*&v285[v266 + 32], *v267);
          v277 = vpadalq_s16(v273, v276);
          v278 = vmlal_s16(v274, *v276.i8, *v276.i8);
          v279 = vmlal_high_s16(v275, v276, v276);
          v280 = vsubq_s16(*&v285[v266 + 48], v267[1]);
          v66 = vpadalq_s16(v277, v280);
          v64 = vmlal_s16(v278, *v280.i8, *v280.i8);
          v65 = vmlal_high_s16(v279, v280, v280);
          v266 += 64;
          v267 = (v267 + 2 * a6);
        }

        while (v266 != 1024);
      }

      else
      {
        v81 = 2 * a8;
        v82 = vdupq_n_s16(8 - a3);
        v83 = vdupq_n_s16(a3);
        v84 = v8 + 2;
        do
        {
          v85 = (&v286 + v80);
          *v85 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[-2], v82), *(&v84[-2] + 2), v83), 3uLL), *(v81 + v80));
          v85[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[-1], v82), *(&v84[-1] + 2), v83), 3uLL), *(v81 + v80 + 16));
          v85[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v84, v82), *(v84 + 2), v83), 3uLL), *(v81 + v80 + 32));
          v85[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84[1], v82), *(&v84[1] + 2), v83), 3uLL), *(v81 + v80 + 48));
          v80 += 64;
          v84 = (v84 + 2 * a2);
        }

        while (v80 != 1024);
        v86 = 0;
        v87 = (2 * a5 + 32);
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v88 = vsubq_s16(*(&v286 + v86), v87[-2]);
          v89 = vpadalq_s16(v66, v88);
          v90 = vmlal_s16(v64, *v88.i8, *v88.i8);
          v91 = vmlal_high_s16(v65, v88, v88);
          v92 = vsubq_s16(*(&v286 + v86 + 16), v87[-1]);
          v93 = vpadalq_s16(v89, v92);
          v94 = vmlal_s16(v90, *v92.i8, *v92.i8);
          v95 = vmlal_high_s16(v91, v92, v92);
          v96 = vsubq_s16(*(&v288 + v86), *v87);
          v97 = vpadalq_s16(v93, v96);
          v98 = vmlal_s16(v94, *v96.i8, *v96.i8);
          v99 = vmlal_high_s16(v95, v96, v96);
          v100 = vsubq_s16(*(&v289 + v86), v87[1]);
          v66 = vpadalq_s16(v97, v100);
          v64 = vmlal_s16(v98, *v100.i8, *v100.i8);
          v65 = vmlal_high_s16(v99, v100, v100);
          v86 += 64;
          v87 = (v87 + 2 * a6);
        }

        while (v86 != 1024);
      }
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v101 = 0;
      v102 = 2 * a2;
      v103 = v8 + 2;
      do
      {
        v104 = (&v286 + v101 * 16);
        *v104 = vrhaddq_u16(vrhaddq_u16(v103[-2], *(&v103[-2] + v102)), v9[v101]);
        v104[1] = vrhaddq_u16(vrhaddq_u16(v103[-1], *(&v103[-1] + v102)), v9[v101 + 1]);
        v104[2] = vrhaddq_u16(vrhaddq_u16(*v103, *(v103 + 2 * a2)), v9[v101 + 2]);
        v104[3] = vrhaddq_u16(vrhaddq_u16(v103[1], *(&v103[1] + v102)), v9[v101 + 3]);
        v101 += 4;
        v103 = (v103 + v102);
      }

      while ((v101 * 16) != 1024);
    }

    else if (a4)
    {
      v150 = 0;
      v151 = vdupq_n_s16(8 - a4);
      v152 = vdupq_n_s16(a4);
      v153 = 2 * a2;
      v154 = &v8[2];
      do
      {
        v155 = (&v286 + v150 * 16);
        *v155 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[-2], v151), *(&v154[-2] + v153), v152), 3uLL), v9[v150]);
        v155[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[-1], v151), *(&v154[-1] + v153), v152), 3uLL), v9[v150 + 1]);
        v155[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v154, v151), *(v154 + 2 * a2), v152), 3uLL), v9[v150 + 2]);
        v155[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v154[1], v151), *(&v154[1] + v153), v152), 3uLL), v9[v150 + 3]);
        v150 += 4;
        v154 = (v154 + v153);
      }

      while ((v150 * 16) != 1024);
    }

    else
    {
      v10 = vrhaddq_u16(*(2 * a1 + 0x10), *(2 * a8 + 0x10));
      v286 = vrhaddq_u16(*v8, *v9);
      v287 = v10;
      v11 = vrhaddq_u16(*(2 * a1 + 0x30), *(2 * a8 + 0x30));
      v288 = vrhaddq_u16(*(2 * a1 + 0x20), *(2 * a8 + 0x20));
      v289 = v11;
      v12 = 2 * a2;
      v13 = (v8 + v12);
      v14 = *(2 * a8 + 0x50);
      v290 = vrhaddq_u16(*v13, *(2 * a8 + 0x40));
      v291 = vrhaddq_u16(v13[1], v14);
      v15 = *(2 * a8 + 0x70);
      v292 = vrhaddq_u16(v13[2], *(2 * a8 + 0x60));
      v293 = vrhaddq_u16(v13[3], v15);
      v16 = (v13 + v12);
      v17 = *(2 * a8 + 0x90);
      v294 = vrhaddq_u16(*v16, *(2 * a8 + 0x80));
      v295 = vrhaddq_u16(v16[1], v17);
      v18 = *(2 * a8 + 0xB0);
      v296 = vrhaddq_u16(v16[2], *(2 * a8 + 0xA0));
      v297 = vrhaddq_u16(v16[3], v18);
      v19 = (v16 + v12);
      v20 = *(2 * a8 + 0xD0);
      v298 = vrhaddq_u16(*v19, *(2 * a8 + 0xC0));
      v299 = vrhaddq_u16(v19[1], v20);
      v21 = *(2 * a8 + 0xF0);
      v300 = vrhaddq_u16(v19[2], *(2 * a8 + 0xE0));
      v301 = vrhaddq_u16(v19[3], v21);
      v22 = (v19 + v12);
      v23 = *(2 * a8 + 0x110);
      v302 = vrhaddq_u16(*v22, *(2 * a8 + 0x100));
      v303 = vrhaddq_u16(v22[1], v23);
      v24 = *(2 * a8 + 0x130);
      v304 = vrhaddq_u16(v22[2], *(2 * a8 + 0x120));
      v305 = vrhaddq_u16(v22[3], v24);
      v25 = (v22 + v12);
      v26 = *(2 * a8 + 0x150);
      v306 = vrhaddq_u16(*v25, *(2 * a8 + 0x140));
      v307 = vrhaddq_u16(v25[1], v26);
      v27 = *(2 * a8 + 0x170);
      v308 = vrhaddq_u16(v25[2], *(2 * a8 + 0x160));
      v309 = vrhaddq_u16(v25[3], v27);
      v28 = (v25 + v12);
      v29 = *(2 * a8 + 0x190);
      v310 = vrhaddq_u16(*v28, *(2 * a8 + 0x180));
      v311 = vrhaddq_u16(v28[1], v29);
      v30 = *(2 * a8 + 0x1B0);
      v312 = vrhaddq_u16(v28[2], *(2 * a8 + 0x1A0));
      v313 = vrhaddq_u16(v28[3], v30);
      v31 = (v28 + v12);
      v32 = *(2 * a8 + 0x1D0);
      v314 = vrhaddq_u16(*v31, *(2 * a8 + 0x1C0));
      v315 = vrhaddq_u16(v31[1], v32);
      v33 = *(2 * a8 + 0x1F0);
      v316 = vrhaddq_u16(v31[2], *(2 * a8 + 0x1E0));
      v317 = vrhaddq_u16(v31[3], v33);
      v34 = (v31 + v12);
      v35 = *(2 * a8 + 0x210);
      v318 = vrhaddq_u16(*v34, *(2 * a8 + 0x200));
      v319 = vrhaddq_u16(v34[1], v35);
      v36 = *(2 * a8 + 0x230);
      v320 = vrhaddq_u16(v34[2], *(2 * a8 + 0x220));
      v321 = vrhaddq_u16(v34[3], v36);
      v37 = (v34 + v12);
      v38 = *(2 * a8 + 0x250);
      v322 = vrhaddq_u16(*v37, *(2 * a8 + 0x240));
      v323 = vrhaddq_u16(v37[1], v38);
      v39 = *(2 * a8 + 0x270);
      v324 = vrhaddq_u16(v37[2], *(2 * a8 + 0x260));
      v325 = vrhaddq_u16(v37[3], v39);
      v40 = (v37 + v12);
      v41 = *(2 * a8 + 0x290);
      v326 = vrhaddq_u16(*v40, *(2 * a8 + 0x280));
      v327 = vrhaddq_u16(v40[1], v41);
      v42 = *(2 * a8 + 0x2B0);
      v328 = vrhaddq_u16(v40[2], *(2 * a8 + 0x2A0));
      v329 = vrhaddq_u16(v40[3], v42);
      v43 = (v40 + v12);
      v44 = *(2 * a8 + 0x2D0);
      v330 = vrhaddq_u16(*v43, *(2 * a8 + 0x2C0));
      v331 = vrhaddq_u16(v43[1], v44);
      v45 = *(2 * a8 + 0x2F0);
      v332 = vrhaddq_u16(v43[2], *(2 * a8 + 0x2E0));
      v333 = vrhaddq_u16(v43[3], v45);
      v46 = (v43 + v12);
      v47 = *(2 * a8 + 0x310);
      v334 = vrhaddq_u16(*v46, *(2 * a8 + 0x300));
      v335 = vrhaddq_u16(v46[1], v47);
      v48 = *(2 * a8 + 0x330);
      v336 = vrhaddq_u16(v46[2], *(2 * a8 + 0x320));
      v337 = vrhaddq_u16(v46[3], v48);
      v49 = (v46 + v12);
      v50 = *(2 * a8 + 0x350);
      v338 = vrhaddq_u16(*v49, *(2 * a8 + 0x340));
      v339 = vrhaddq_u16(v49[1], v50);
      v51 = *(2 * a8 + 0x370);
      v340 = vrhaddq_u16(v49[2], *(2 * a8 + 0x360));
      v341 = vrhaddq_u16(v49[3], v51);
      v52 = (v49 + v12);
      v53 = *(2 * a8 + 0x390);
      v342 = vrhaddq_u16(*v52, *(2 * a8 + 0x380));
      v343 = vrhaddq_u16(v52[1], v53);
      v54 = *(2 * a8 + 0x3B0);
      v344 = vrhaddq_u16(v52[2], *(2 * a8 + 0x3A0));
      v345 = vrhaddq_u16(v52[3], v54);
      v55 = (v52 + v12);
      v56 = *(2 * a8 + 0x3D0);
      v346 = vrhaddq_u16(*v55, *(2 * a8 + 0x3C0));
      v347 = vrhaddq_u16(v55[1], v56);
      v57 = *(2 * a8 + 0x3F0);
      v348 = vrhaddq_u16(v55[2], *(2 * a8 + 0x3E0));
      v349 = vrhaddq_u16(v55[3], v57);
    }

    v156 = 0;
    v157 = (2 * a5 + 32);
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    do
    {
      v158 = vsubq_s16(*(&v286 + v156), v157[-2]);
      v159 = vpadalq_s16(v66, v158);
      v160 = vmlal_s16(v64, *v158.i8, *v158.i8);
      v161 = vmlal_high_s16(v65, v158, v158);
      v162 = vsubq_s16(*(&v286 + v156 + 16), v157[-1]);
      v163 = vpadalq_s16(v159, v162);
      v164 = vmlal_s16(v160, *v162.i8, *v162.i8);
      v165 = vmlal_high_s16(v161, v162, v162);
      v166 = vsubq_s16(*(&v288 + v156), *v157);
      v167 = vpadalq_s16(v163, v166);
      v168 = vmlal_s16(v164, *v166.i8, *v166.i8);
      v169 = vmlal_high_s16(v165, v166, v166);
      v170 = vsubq_s16(*(&v289 + v156), v157[1]);
      v66 = vpadalq_s16(v167, v170);
      v64 = vmlal_s16(v168, *v170.i8, *v170.i8);
      v65 = vmlal_high_s16(v169, v170, v170);
      v156 += 64;
      v157 = (v157 + 2 * a6);
    }

    while (v156 != 1024);
  }

  v281 = vaddvq_s32(v66);
  v282 = vaddlvq_u32(vaddq_s32(v65, v64));
  *a7 = (v282 + 128) >> 8;
  v283 = ((v282 + 128) >> 8) - (((((v281 << 28) + 0x80000000) >> 32) * (((v281 << 28) + 0x80000000) >> 32)) >> 9);
  return v283 & ~(v283 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v217[257] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v66 = 0;
      v67 = v11 + 2;
      do
      {
        v68 = &v216[v66];
        *v68 = vrhaddq_u16(*(v67 - 2), *(v67 - 30));
        v68[1] = vrhaddq_u16(*(v67 - 1), *(v67 - 14));
        v68[2] = vrhaddq_u16(*v67, *(v67 + 2));
        v68[3] = vrhaddq_u16(*(v67 + 1), *(v67 + 18));
        v66 += 4;
        v67 = (v67 + 2 * v4);
      }

      while ((v66 * 16) != 2112);
      v69 = 2 * v10;
      v70 = v216[0];
      v71 = v217;
      v72 = 112;
      do
      {
        v74 = v71[-1];
        v73 = *v71;
        v75 = v71[-2];
        v76 = v71[2];
        v77 = vrhaddq_u16(vrhaddq_u16(v71[-3], v71[1]), *(v69 + v72 - 96));
        v78 = &v215[v72];
        v78[-7] = vrhaddq_u16(vrhaddq_u16(v70, *v71), *(v69 + v72 - 112));
        v78[-6] = v77;
        v79 = vrhaddq_u16(vrhaddq_u16(v74, v71[3]), *(v69 + v72 - 64));
        v78[-5] = vrhaddq_u16(vrhaddq_u16(v75, v76), *(v69 + v72 - 80));
        v78[-4] = v79;
        v72 += 64;
        v71 += 4;
        v70 = v73;
      }

      while (v72 != 2160);
      v80 = 0;
      v81 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v82 = vsubq_s16(*&v215[v80], v81[-2]);
        v83 = vpadalq_s16(v24, v82);
        v84 = vmlal_s16(v22, *v82.i8, *v82.i8);
        v85 = vmlal_high_s16(v23, v82, v82);
        v86 = vsubq_s16(*&v215[v80 + 16], v81[-1]);
        v87 = vpadalq_s16(v83, v86);
        v88 = vmlal_s16(v84, *v86.i8, *v86.i8);
        v89 = vmlal_high_s16(v85, v86, v86);
        v90 = vsubq_s16(*&v215[v80 + 32], *v81);
        v91 = vpadalq_s16(v87, v90);
        v92 = vmlal_s16(v88, *v90.i8, *v90.i8);
        v93 = vmlal_high_s16(v89, v90, v90);
        v94 = vsubq_s16(*&v215[v80 + 48], v81[1]);
        v24 = vpadalq_s16(v91, v94);
        v22 = vmlal_s16(v92, *v94.i8, *v94.i8);
        v23 = vmlal_high_s16(v93, v94, v94);
        v80 += 64;
        v81 = (v81 + 2 * v8);
      }

      while (v80 != 2048);
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        v118 = v11 + 2;
        do
        {
          v119 = &v216[v16 / 0x10];
          *v119 = vrhaddq_u16(*(v118 - 2), *(v118 - 30));
          v119[1] = vrhaddq_u16(*(v118 - 1), *(v118 - 14));
          v119[2] = vrhaddq_u16(*v118, *(v118 + 2));
          v119[3] = vrhaddq_u16(*(v118 + 1), *(v118 + 18));
          v16 += 64;
          v118 = (v118 + 2 * v4);
        }

        while (v16 != 2112);
        v120 = vdupq_n_s16(8 - v6);
        v121 = vdupq_n_s16(v6);
        v122 = 2 * v10;
        v123 = v216[0];
        v124 = v217;
        v125 = 112;
        do
        {
          v127 = v124[-1];
          v126 = *v124;
          v128 = v124[-2];
          v129 = v124[2];
          v130 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v124[-3], v120), v124[1], v121), 3uLL), *(v122 + v125 - 96));
          v131 = &v215[v125];
          v131[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v123, v120), *v124, v121), 3uLL), *(v122 + v125 - 112));
          v131[-6] = v130;
          v132 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v127, v120), v124[3], v121), 3uLL), *(v122 + v125 - 64));
          v131[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v128, v120), v129, v121), 3uLL), *(v122 + v125 - 80));
          v131[-4] = v132;
          v125 += 64;
          v124 += 4;
          v123 = v126;
        }

        while (v125 != 2160);
        v133 = 0;
        v134 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v135 = vsubq_s16(*&v215[v133], v134[-2]);
          v136 = vpadalq_s16(v24, v135);
          v137 = vmlal_s16(v22, *v135.i8, *v135.i8);
          v138 = vmlal_high_s16(v23, v135, v135);
          v139 = vsubq_s16(*&v215[v133 + 16], v134[-1]);
          v140 = vpadalq_s16(v136, v139);
          v141 = vmlal_s16(v137, *v139.i8, *v139.i8);
          v142 = vmlal_high_s16(v138, v139, v139);
          v143 = vsubq_s16(*&v215[v133 + 32], *v134);
          v144 = vpadalq_s16(v140, v143);
          v145 = vmlal_s16(v141, *v143.i8, *v143.i8);
          v146 = vmlal_high_s16(v142, v143, v143);
          v147 = vsubq_s16(*&v215[v133 + 48], v134[1]);
          v24 = vpadalq_s16(v144, v147);
          v22 = vmlal_s16(v145, *v147.i8, *v147.i8);
          v23 = vmlal_high_s16(v146, v147, v147);
          v133 += 64;
          v134 = (v134 + 2 * v8);
        }

        while (v133 != 2048);
      }

      else
      {
        v17 = 2 * v10;
        v18 = v11 + 2;
        do
        {
          v19 = &v216[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 48));
          v16 += 64;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 2048);
        v20 = 0;
        v21 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = vsubq_s16(v216[v20], v21[-2]);
          v26 = vpadalq_s16(v24, v25);
          v27 = vmlal_s16(v22, *v25.i8, *v25.i8);
          v28 = vmlal_high_s16(v23, v25, v25);
          v29 = vsubq_s16(v216[v20 + 1], v21[-1]);
          v30 = vpadalq_s16(v26, v29);
          v31 = vmlal_s16(v27, *v29.i8, *v29.i8);
          v32 = vmlal_high_s16(v28, v29, v29);
          v33 = vsubq_s16(v216[v20 + 2], *v21);
          v34 = vpadalq_s16(v30, v33);
          v35 = vmlal_s16(v31, *v33.i8, *v33.i8);
          v36 = vmlal_high_s16(v32, v33, v33);
          v37 = vsubq_s16(v216[v20 + 3], v21[1]);
          v24 = vpadalq_s16(v34, v37);
          v22 = vmlal_s16(v35, *v37.i8, *v37.i8);
          v23 = vmlal_high_s16(v36, v37, v37);
          v20 += 4;
          v21 = (v21 + 2 * v8);
        }

        while ((v20 * 16) != 2048);
      }
    }
  }

  else if (v5)
  {
    if (v6 == 4)
    {
      v148 = 0;
      v149 = vdupq_n_s16(8 - v5);
      v150 = vdupq_n_s16(v5);
      v151 = v11 + 2;
      do
      {
        v152 = &v216[v148];
        *v152 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 - 2), v149), *(v151 - 30), v150), 3uLL);
        v152[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 - 1), v149), *(v151 - 14), v150), 3uLL);
        v152[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v151, v149), *(v151 + 2), v150), 3uLL);
        v152[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v151 + 1), v149), *(v151 + 18), v150), 3uLL);
        v148 += 4;
        v151 = (v151 + 2 * v4);
      }

      while ((v148 * 16) != 2112);
      v153 = 2 * v10;
      v154 = v216[0];
      v155 = v217;
      v156 = 112;
      do
      {
        v158 = v155[-1];
        v157 = *v155;
        v159 = v155[-2];
        v160 = v155[2];
        v161 = vrhaddq_u16(vrhaddq_u16(v155[-3], v155[1]), *(v153 + v156 - 96));
        v162 = &v215[v156];
        v162[-7] = vrhaddq_u16(vrhaddq_u16(v154, *v155), *(v153 + v156 - 112));
        v162[-6] = v161;
        v163 = vrhaddq_u16(vrhaddq_u16(v158, v155[3]), *(v153 + v156 - 64));
        v162[-5] = vrhaddq_u16(vrhaddq_u16(v159, v160), *(v153 + v156 - 80));
        v162[-4] = v163;
        v156 += 64;
        v155 += 4;
        v154 = v157;
      }

      while (v156 != 2160);
      v164 = 0;
      v165 = (2 * v7 + 32);
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v166 = vsubq_s16(*&v215[v164], v165[-2]);
        v167 = vpadalq_s16(v24, v166);
        v168 = vmlal_s16(v22, *v166.i8, *v166.i8);
        v169 = vmlal_high_s16(v23, v166, v166);
        v170 = vsubq_s16(*&v215[v164 + 16], v165[-1]);
        v171 = vpadalq_s16(v167, v170);
        v172 = vmlal_s16(v168, *v170.i8, *v170.i8);
        v173 = vmlal_high_s16(v169, v170, v170);
        v174 = vsubq_s16(*&v215[v164 + 32], *v165);
        v175 = vpadalq_s16(v171, v174);
        v176 = vmlal_s16(v172, *v174.i8, *v174.i8);
        v177 = vmlal_high_s16(v173, v174, v174);
        v178 = vsubq_s16(*&v215[v164 + 48], v165[1]);
        v24 = vpadalq_s16(v175, v178);
        v22 = vmlal_s16(v176, *v178.i8, *v178.i8);
        v23 = vmlal_high_s16(v177, v178, v178);
        v164 += 64;
        v165 = (v165 + 2 * v8);
      }

      while (v164 != 2048);
    }

    else
    {
      v38 = 0;
      if (v6)
      {
        v179 = vdupq_n_s16(8 - v5);
        v180 = vdupq_n_s16(v5);
        v181 = v11 + 2;
        do
        {
          v182 = &v216[v38 / 0x10];
          *v182 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 - 2), v179), *(v181 - 30), v180), 3uLL);
          v182[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 - 1), v179), *(v181 - 14), v180), 3uLL);
          v182[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v181, v179), *(v181 + 2), v180), 3uLL);
          v182[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v181 + 1), v179), *(v181 + 18), v180), 3uLL);
          v38 += 64;
          v181 = (v181 + 2 * v4);
        }

        while (v38 != 2112);
        v183 = vdupq_n_s16(8 - v6);
        v184 = vdupq_n_s16(v6);
        v185 = 2 * v10;
        v186 = v216[0];
        v187 = v217;
        v188 = 112;
        do
        {
          v190 = v187[-1];
          v189 = *v187;
          v191 = v187[-2];
          v192 = v187[2];
          v193 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v187[-3], v183), v187[1], v184), 3uLL), *(v185 + v188 - 96));
          v194 = &v215[v188];
          v194[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v186, v183), *v187, v184), 3uLL), *(v185 + v188 - 112));
          v194[-6] = v193;
          v195 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v190, v183), v187[3], v184), 3uLL), *(v185 + v188 - 64));
          v194[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v191, v183), v192, v184), 3uLL), *(v185 + v188 - 80));
          v194[-4] = v195;
          v188 += 64;
          v187 += 4;
          v186 = v189;
        }

        while (v188 != 2160);
        v196 = 0;
        v197 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v198 = vsubq_s16(*&v215[v196], v197[-2]);
          v199 = vpadalq_s16(v24, v198);
          v200 = vmlal_s16(v22, *v198.i8, *v198.i8);
          v201 = vmlal_high_s16(v23, v198, v198);
          v202 = vsubq_s16(*&v215[v196 + 16], v197[-1]);
          v203 = vpadalq_s16(v199, v202);
          v204 = vmlal_s16(v200, *v202.i8, *v202.i8);
          v205 = vmlal_high_s16(v201, v202, v202);
          v206 = vsubq_s16(*&v215[v196 + 32], *v197);
          v207 = vpadalq_s16(v203, v206);
          v208 = vmlal_s16(v204, *v206.i8, *v206.i8);
          v209 = vmlal_high_s16(v205, v206, v206);
          v210 = vsubq_s16(*&v215[v196 + 48], v197[1]);
          v24 = vpadalq_s16(v207, v210);
          v22 = vmlal_s16(v208, *v210.i8, *v210.i8);
          v23 = vmlal_high_s16(v209, v210, v210);
          v196 += 64;
          v197 = (v197 + 2 * v8);
        }

        while (v196 != 2048);
      }

      else
      {
        v39 = 2 * v10;
        v40 = vdupq_n_s16(8 - v5);
        v41 = vdupq_n_s16(v5);
        v42 = v11 + 2;
        do
        {
          v43 = &v216[v38 / 0x10];
          *v43 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 2), v40), *(v42 - 30), v41), 3uLL), *(v39 + v38));
          v43[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 - 1), v40), *(v42 - 14), v41), 3uLL), *(v39 + v38 + 16));
          v43[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v42, v40), *(v42 + 2), v41), 3uLL), *(v39 + v38 + 32));
          v43[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v42 + 1), v40), *(v42 + 18), v41), 3uLL), *(v39 + v38 + 48));
          v38 += 64;
          v42 = (v42 + 2 * v4);
        }

        while (v38 != 2048);
        v44 = 0;
        v45 = (2 * v7 + 32);
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v46 = vsubq_s16(v216[v44], v45[-2]);
          v47 = vpadalq_s16(v24, v46);
          v48 = vmlal_s16(v22, *v46.i8, *v46.i8);
          v49 = vmlal_high_s16(v23, v46, v46);
          v50 = vsubq_s16(v216[v44 + 1], v45[-1]);
          v51 = vpadalq_s16(v47, v50);
          v52 = vmlal_s16(v48, *v50.i8, *v50.i8);
          v53 = vmlal_high_s16(v49, v50, v50);
          v54 = vsubq_s16(v216[v44 + 2], *v45);
          v55 = vpadalq_s16(v51, v54);
          v56 = vmlal_s16(v52, *v54.i8, *v54.i8);
          v57 = vmlal_high_s16(v53, v54, v54);
          v58 = vsubq_s16(v216[v44 + 3], v45[1]);
          v24 = vpadalq_s16(v55, v58);
          v22 = vmlal_s16(v56, *v58.i8, *v58.i8);
          v23 = vmlal_high_s16(v57, v58, v58);
          v44 += 4;
          v45 = (v45 + 2 * v8);
        }

        while ((v44 * 16) != 2048);
      }
    }
  }

  else
  {
    v12 = 2 * v10;
    if (v6 == 4)
    {
      v59 = 0;
      v61 = *v11;
      v60 = (v11 + 2);
      v62 = v61;
      v63 = 2 * v4;
      do
      {
        v64 = &v216[v59 / 0x10];
        v65 = *(&v60[-2] + v63);
        *v64 = vrhaddq_u16(vrhaddq_u16(v62, v65), *(v12 + v59));
        v64[1] = vrhaddq_u16(vrhaddq_u16(v60[-1], *(&v60[-1] + v63)), *(v12 + v59 + 16));
        v64[2] = vrhaddq_u16(vrhaddq_u16(*v60, *(v60 + 2 * v4)), *(v12 + v59 + 32));
        v64[3] = vrhaddq_u16(vrhaddq_u16(v60[1], *(&v60[1] + v63)), *(v12 + v59 + 48));
        v59 += 64;
        v60 = (v60 + v63);
        v62 = v65;
      }

      while (v59 != 2048);
    }

    else
    {
      v13 = 0;
      if (v6)
      {
        v95 = vdupq_n_s16(8 - v6);
        v96 = vdupq_n_s16(v6);
        v98 = *v11;
        v97 = (v11 + 2);
        v99 = v98;
        v100 = 2 * v4;
        do
        {
          v101 = &v216[v13 / 0x10];
          v102 = *(&v97[-2] + v100);
          *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v99, v95), v102, v96), 3uLL), *(v12 + v13));
          v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97[-1], v95), *(&v97[-1] + v100), v96), 3uLL), *(v12 + v13 + 16));
          v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v97, v95), *(v97 + 2 * v4), v96), 3uLL), *(v12 + v13 + 32));
          v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97[1], v95), *(&v97[1] + v100), v96), 3uLL), *(v12 + v13 + 48));
          v13 += 64;
          v97 = (v97 + v100);
          v99 = v102;
        }

        while (v13 != 2048);
      }

      else
      {
        v14 = (v11 + 2);
        do
        {
          v15 = &v216[v13 / 0x10];
          *v15 = vrhaddq_u16(v14[-2], *(v12 + v13));
          v15[1] = vrhaddq_u16(v14[-1], *(v12 + v13 + 16));
          v15[2] = vrhaddq_u16(*v14, *(v12 + v13 + 32));
          v15[3] = vrhaddq_u16(v14[1], *(v12 + v13 + 48));
          v13 += 64;
          v14 = (v14 + 2 * v4);
        }

        while (v13 != 2048);
      }
    }

    v103 = 0;
    v104 = (2 * v7 + 32);
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v105 = vsubq_s16(v216[v103], v104[-2]);
      v106 = vpadalq_s16(v24, v105);
      v107 = vmlal_s16(v22, *v105.i8, *v105.i8);
      v108 = vmlal_high_s16(v23, v105, v105);
      v109 = vsubq_s16(v216[v103 + 1], v104[-1]);
      v110 = vpadalq_s16(v106, v109);
      v111 = vmlal_s16(v107, *v109.i8, *v109.i8);
      v112 = vmlal_high_s16(v108, v109, v109);
      v113 = vsubq_s16(v216[v103 + 2], *v104);
      v114 = vpadalq_s16(v110, v113);
      v115 = vmlal_s16(v111, *v113.i8, *v113.i8);
      v116 = vmlal_high_s16(v112, v113, v113);
      v117 = vsubq_s16(v216[v103 + 3], v104[1]);
      v24 = vpadalq_s16(v114, v117);
      v22 = vmlal_s16(v115, *v117.i8, *v117.i8);
      v23 = vmlal_high_s16(v116, v117, v117);
      v103 += 4;
      v104 = (v104 + 2 * v8);
    }

    while ((v103 * 16) != 2048);
  }

  v211 = vaddvq_s32(v24);
  v212 = vaddlvq_u32(vaddq_s32(v23, v22));
  *v9 = (v212 + 128) >> 8;
  v213 = ((v212 + 128) >> 8) - (((((v211 << 28) + 0x80000000) >> 32) * (((v211 << 28) + 0x80000000) >> 32)) >> 10);
  return v213 & ~(v213 >> 63);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance32x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v104[513] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 2;
      v34 = v103;
      v35 = -65;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[1] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[2] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[3] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34 += 4;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v103[0];
      v39 = v104;
      v40 = 112;
      do
      {
        v41 = (&v102 + v40);
        v43 = v39[-1];
        v42 = *v39;
        v41[-7] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 112));
        v44 = v39[-2];
        v45 = v39[2];
        v41[-6] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[1]), *(v37 + v40 - 96));
        v41[-5] = vrhaddq_u16(vrhaddq_u16(v44, v45), *(v37 + v40 - 80));
        v41[-4] = vrhaddq_u16(vrhaddq_u16(v43, v39[3]), *(v37 + v40 - 64));
        v40 += 64;
        v39 += 4;
        v38 = v42;
      }

      while (v40 != 4208);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 2;
        do
        {
          v19 = &v103[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 48));
          v16 += 64;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 4096);
        goto LABEL_29;
      }

      v55 = v11 + 2;
      v56 = v103;
      v57 = -65;
      do
      {
        *v56 = vrhaddq_u16(*(v55 - 2), *(v55 - 30));
        v56[1] = vrhaddq_u16(*(v55 - 1), *(v55 - 14));
        v56[2] = vrhaddq_u16(*v55, *(v55 + 2));
        v56[3] = vrhaddq_u16(*(v55 + 1), *(v55 + 18));
        v56 += 4;
        v55 = (v55 + 2 * v4);
        v36 = __CFADD__(v57++, 1);
      }

      while (!v36);
      v58 = 2 * v10;
      v59 = vdupq_n_s16(8 - v6);
      v60 = vdupq_n_s16(v6);
      v61 = v103[0];
      v62 = v104;
      v63 = 112;
      do
      {
        v64 = (&v102 + v63);
        v66 = v62[-1];
        v65 = *v62;
        v67 = v62[-2];
        v68 = vmulq_s16(v62[-3], v59);
        v64[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v61, v59), *v62, v60), 3uLL), *(v58 + v63 - 112));
        v69 = v62[2];
        v64[-6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(v68, v62[1], v60), 3uLL), *(v58 + v63 - 96));
        v64[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v59), v69, v60), 3uLL), *(v58 + v63 - 80));
        v64[-4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v59), v62[3], v60), 3uLL), *(v58 + v63 - 64));
        v63 += 64;
        v62 += 4;
        v61 = v65;
      }

      while (v63 != 4208);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v70 = vdupq_n_s16(8 - v5);
      v71 = vdupq_n_s16(v5);
      v72 = v11 + 2;
      v73 = v103;
      v74 = -65;
      do
      {
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v72 - 2), v70), *(v72 - 30), v71), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v72 - 1), v70), *(v72 - 14), v71), 3uLL);
        v73[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v72, v70), *(v72 + 2), v71), 3uLL);
        v73[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v72 + 1), v70), *(v72 + 18), v71), 3uLL);
        v73 += 4;
        v72 = (v72 + 2 * v4);
        v36 = __CFADD__(v74++, 1);
      }

      while (!v36);
      v75 = 2 * v10;
      v76 = v103[0];
      v77 = v104;
      v78 = 112;
      do
      {
        v79 = (&v102 + v78);
        v81 = v77[-1];
        v80 = *v77;
        v79[-7] = vrhaddq_u16(vrhaddq_u16(v76, *v77), *(v75 + v78 - 112));
        v82 = v77[-2];
        v83 = v77[2];
        v79[-6] = vrhaddq_u16(vrhaddq_u16(v77[-3], v77[1]), *(v75 + v78 - 96));
        v79[-5] = vrhaddq_u16(vrhaddq_u16(v82, v83), *(v75 + v78 - 80));
        v79[-4] = vrhaddq_u16(vrhaddq_u16(v81, v77[3]), *(v75 + v78 - 64));
        v78 += 64;
        v77 += 4;
        v76 = v80;
      }

      while (v78 != 4208);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 2;
        do
        {
          v25 = &v103[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 48));
          v20 += 64;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 4096);
        goto LABEL_29;
      }

      v84 = vdupq_n_s16(8 - v5);
      v85 = vdupq_n_s16(v5);
      v86 = v11 + 2;
      v87 = v103;
      v88 = -65;
      do
      {
        *v87 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v86 - 2), v84), *(v86 - 30), v85), 3uLL);
        v87[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v86 - 1), v84), *(v86 - 14), v85), 3uLL);
        v87[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v86, v84), *(v86 + 2), v85), 3uLL);
        v87[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v86 + 1), v84), *(v86 + 18), v85), 3uLL);
        v87 += 4;
        v86 = (v86 + 2 * v4);
        v36 = __CFADD__(v88++, 1);
      }

      while (!v36);
      v89 = 2 * v10;
      v90 = vdupq_n_s16(8 - v6);
      v91 = vdupq_n_s16(v6);
      v92 = v103[0];
      v93 = v104;
      v94 = 112;
      do
      {
        v95 = (&v102 + v94);
        v97 = v93[-1];
        v96 = *v93;
        v98 = v93[-2];
        v99 = vmulq_s16(v93[-3], v90);
        v95[-7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v92, v90), *v93, v91), 3uLL), *(v89 + v94 - 112));
        v100 = v93[2];
        v95[-6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(v99, v93[1], v91), 3uLL), *(v89 + v94 - 96));
        v95[-5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v98, v90), v100, v91), 3uLL), *(v89 + v94 - 80));
        v95[-4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v97, v90), v93[3], v91), 3uLL), *(v89 + v94 - 64));
        v94 += 64;
        v93 += 4;
        v92 = v96;
      }

      while (v94 != 4208);
    }

LABEL_47:
    v54 = &v102;
    return vpx_highbd_12_variance32x64_neon(v54 >> 1, 32, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 2);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v103[v26 / 0x10];
      v32 = *(&v27[-2] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 48));
      v26 += 64;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 4096);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v46 = vdupq_n_s16(8 - v6);
      v47 = vdupq_n_s16(v6);
      v49 = *v11;
      v48 = (v11 + 2);
      v50 = v49;
      v51 = 2 * v4;
      do
      {
        v52 = &v103[v13 / 0x10];
        v53 = *(&v48[-2] + v51);
        *v52 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v50, v46), v53, v47), 3uLL), *(v12 + v13));
        v52[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48[-1], v46), *(&v48[-1] + v51), v47), 3uLL), *(v12 + v13 + 16));
        v52[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v48, v46), *(v48 + 2 * v4), v47), 3uLL), *(v12 + v13 + 32));
        v52[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48[1], v46), *(&v48[1] + v51), v47), 3uLL), *(v12 + v13 + 48));
        v13 += 64;
        v48 = (v48 + v51);
        v50 = v53;
      }

      while (v13 != 4096);
    }

    else
    {
      v14 = (v11 + 2);
      do
      {
        v15 = &v103[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-2], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-1], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(*v14, *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[1], *(v12 + v13 + 48));
        v13 += 64;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 4096);
    }
  }

LABEL_29:
  v54 = v103;
  return vpx_highbd_12_variance32x64_neon(v54 >> 1, 32, v7, v8, v9);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance64x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v115[513] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 4;
      v34 = v114;
      v35 = -33;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 4), *(v33 - 62));
        v34[1] = vrhaddq_u16(*(v33 - 3), *(v33 - 46));
        v34[2] = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[3] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[4] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[5] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34[6] = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
        v34[7] = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
        v34 += 8;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v114[0];
      v39 = v115;
      v40 = 240;
      do
      {
        v41 = (&v113 + v40);
        v43 = v39[-1];
        v42 = *v39;
        v41[-15] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 240));
        v44 = v39[2];
        v45 = v39[-6];
        v41[-14] = vrhaddq_u16(vrhaddq_u16(v39[-7], v39[1]), *(v37 + v40 - 224));
        v41[-13] = vrhaddq_u16(vrhaddq_u16(v45, v44), *(v37 + v40 - 208));
        v46 = v39[4];
        v47 = v39[-4];
        v41[-12] = vrhaddq_u16(vrhaddq_u16(v39[-5], v39[3]), *(v37 + v40 - 192));
        v41[-11] = vrhaddq_u16(vrhaddq_u16(v47, v46), *(v37 + v40 - 176));
        v48 = v39[6];
        v49 = v39[-2];
        v41[-10] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[5]), *(v37 + v40 - 160));
        v41[-9] = vrhaddq_u16(vrhaddq_u16(v49, v48), *(v37 + v40 - 144));
        v41[-8] = vrhaddq_u16(vrhaddq_u16(v43, v39[7]), *(v37 + v40 - 128));
        v40 += 128;
        v39 += 8;
        v38 = v42;
      }

      while (v40 != 4336);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 4;
        do
        {
          v19 = &v114[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 4), *(v18 - 62)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 3), *(v18 - 46)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 48));
          v19[4] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 64));
          v19[5] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 80));
          v19[6] = vrhaddq_u16(vrhaddq_u16(*(v18 + 2), *(v18 + 34)), *(v17 + v16 + 96));
          v19[7] = vrhaddq_u16(vrhaddq_u16(*(v18 + 3), *(v18 + 50)), *(v17 + v16 + 112));
          v16 += 128;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 4096);
        goto LABEL_29;
      }

      v56 = v11 + 4;
      v57 = v114;
      v58 = -33;
      do
      {
        *v57 = vrhaddq_u16(*(v56 - 4), *(v56 - 62));
        v57[1] = vrhaddq_u16(*(v56 - 3), *(v56 - 46));
        v57[2] = vrhaddq_u16(*(v56 - 2), *(v56 - 30));
        v57[3] = vrhaddq_u16(*(v56 - 1), *(v56 - 14));
        v57[4] = vrhaddq_u16(*v56, *(v56 + 2));
        v57[5] = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
        v57[6] = vrhaddq_u16(*(v56 + 2), *(v56 + 34));
        v57[7] = vrhaddq_u16(*(v56 + 3), *(v56 + 50));
        v57 += 8;
        v56 = (v56 + 2 * v4);
        v36 = __CFADD__(v58++, 1);
      }

      while (!v36);
      v59 = 0;
      v60 = 2 * v10;
      v61 = vdupq_n_s16(8 - v6);
      v62 = vdupq_n_s16(v6);
      do
      {
        v63 = (&v113 + v59);
        v64 = v114[v59 / 0x10 + 1];
        v65 = *&v115[v59 / 8 + 2];
        *v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10], v61), v114[v59 / 0x10 + 8], v62), 3uLL), *(v60 + v59));
        v63[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v61), v65, v62), 3uLL), *(v60 + v59 + 16));
        v66 = v114[v59 / 0x10 + 3];
        v67 = *&v115[v59 / 8 + 6];
        v63[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 2], v61), *&v115[v59 / 8 + 4], v62), 3uLL), *(v60 + v59 + 32));
        v63[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v61), v67, v62), 3uLL), *(v60 + v59 + 48));
        v68 = v114[v59 / 0x10 + 5];
        v69 = *&v115[v59 / 8 + 10];
        v63[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 4], v61), *&v115[v59 / 8 + 8], v62), 3uLL), *(v60 + v59 + 64));
        v70 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v61), v69, v62), 3uLL), *(v60 + v59 + 80));
        v71 = v114[v59 / 0x10 + 7];
        v72 = *&v115[v59 / 8 + 14];
        v73 = vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 6], v61), *&v115[v59 / 8 + 12], v62);
        v63[5] = v70;
        v63[6] = vrhaddq_u16(vrshrq_n_u16(v73, 3uLL), *(v60 + v59 + 96));
        v63[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v61), v72, v62), 3uLL), *(v60 + v59 + 112));
        v59 += 128;
      }

      while (v59 != 4096);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v74 = vdupq_n_s16(8 - v5);
      v75 = vdupq_n_s16(v5);
      v76 = v11 + 4;
      v77 = v114;
      v78 = -33;
      do
      {
        *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 4), v74), *(v76 - 62), v75), 3uLL);
        v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 3), v74), *(v76 - 46), v75), 3uLL);
        v77[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 2), v74), *(v76 - 30), v75), 3uLL);
        v77[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 1), v74), *(v76 - 14), v75), 3uLL);
        v77[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v76, v74), *(v76 + 2), v75), 3uLL);
        v77[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 1), v74), *(v76 + 18), v75), 3uLL);
        v77[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 2), v74), *(v76 + 34), v75), 3uLL);
        v77[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 3), v74), *(v76 + 50), v75), 3uLL);
        v77 += 8;
        v76 = (v76 + 2 * v4);
        v36 = __CFADD__(v78++, 1);
      }

      while (!v36);
      v79 = 2 * v10;
      v80 = v114[0];
      v81 = v115;
      v82 = 240;
      do
      {
        v83 = (&v113 + v82);
        v85 = v81[-1];
        v84 = *v81;
        v83[-15] = vrhaddq_u16(vrhaddq_u16(v80, *v81), *(v79 + v82 - 240));
        v86 = v81[2];
        v87 = v81[-6];
        v83[-14] = vrhaddq_u16(vrhaddq_u16(v81[-7], v81[1]), *(v79 + v82 - 224));
        v83[-13] = vrhaddq_u16(vrhaddq_u16(v87, v86), *(v79 + v82 - 208));
        v88 = v81[4];
        v89 = v81[-4];
        v83[-12] = vrhaddq_u16(vrhaddq_u16(v81[-5], v81[3]), *(v79 + v82 - 192));
        v83[-11] = vrhaddq_u16(vrhaddq_u16(v89, v88), *(v79 + v82 - 176));
        v90 = v81[6];
        v91 = v81[-2];
        v83[-10] = vrhaddq_u16(vrhaddq_u16(v81[-3], v81[5]), *(v79 + v82 - 160));
        v83[-9] = vrhaddq_u16(vrhaddq_u16(v91, v90), *(v79 + v82 - 144));
        v83[-8] = vrhaddq_u16(vrhaddq_u16(v85, v81[7]), *(v79 + v82 - 128));
        v82 += 128;
        v81 += 8;
        v80 = v84;
      }

      while (v82 != 4336);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 4;
        do
        {
          v25 = &v114[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 4), v22), *(v24 - 62), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 3), v22), *(v24 - 46), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 48));
          v25[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 64));
          v25[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 80));
          v25[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 2), v22), *(v24 + 34), v23), 3uLL), *(v21 + v20 + 96));
          v25[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 3), v22), *(v24 + 50), v23), 3uLL), *(v21 + v20 + 112));
          v20 += 128;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 4096);
        goto LABEL_29;
      }

      v92 = vdupq_n_s16(8 - v5);
      v93 = vdupq_n_s16(v5);
      v94 = v11 + 4;
      v95 = v114;
      v96 = -33;
      do
      {
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 4), v92), *(v94 - 62), v93), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 3), v92), *(v94 - 46), v93), 3uLL);
        v95[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 2), v92), *(v94 - 30), v93), 3uLL);
        v95[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 1), v92), *(v94 - 14), v93), 3uLL);
        v95[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v94, v92), *(v94 + 2), v93), 3uLL);
        v95[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 1), v92), *(v94 + 18), v93), 3uLL);
        v95[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 2), v92), *(v94 + 34), v93), 3uLL);
        v95[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 3), v92), *(v94 + 50), v93), 3uLL);
        v95 += 8;
        v94 = (v94 + 2 * v4);
        v36 = __CFADD__(v96++, 1);
      }

      while (!v36);
      v97 = 0;
      v98 = 2 * v10;
      v99 = vdupq_n_s16(8 - v6);
      v100 = vdupq_n_s16(v6);
      do
      {
        v101 = (&v113 + v97);
        v102 = v114[v97 / 0x10 + 1];
        v103 = *&v115[v97 / 8 + 2];
        *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10], v99), v114[v97 / 0x10 + 8], v100), 3uLL), *(v98 + v97));
        v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102, v99), v103, v100), 3uLL), *(v98 + v97 + 16));
        v104 = v114[v97 / 0x10 + 3];
        v105 = *&v115[v97 / 8 + 6];
        v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 2], v99), *&v115[v97 / 8 + 4], v100), 3uLL), *(v98 + v97 + 32));
        v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v104, v99), v105, v100), 3uLL), *(v98 + v97 + 48));
        v106 = v114[v97 / 0x10 + 5];
        v107 = *&v115[v97 / 8 + 10];
        v101[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 4], v99), *&v115[v97 / 8 + 8], v100), 3uLL), *(v98 + v97 + 64));
        v108 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v106, v99), v107, v100), 3uLL), *(v98 + v97 + 80));
        v109 = v114[v97 / 0x10 + 7];
        v110 = *&v115[v97 / 8 + 14];
        v111 = vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 6], v99), *&v115[v97 / 8 + 12], v100);
        v101[5] = v108;
        v101[6] = vrhaddq_u16(vrshrq_n_u16(v111, 3uLL), *(v98 + v97 + 96));
        v101[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v109, v99), v110, v100), 3uLL), *(v98 + v97 + 112));
        v97 += 128;
      }

      while (v97 != 4096);
    }

LABEL_47:
    v55 = &v113;
    return vpx_highbd_12_variance64x32_neon(v55 >> 1, 64, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 4);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v114[v26 / 0x10];
      v32 = *(&v27[-4] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-3], *(&v27[-3] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(v27[-2], *(&v27[-2] + v30)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 48));
      v31[4] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 64));
      v31[5] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 80));
      v31[6] = vrhaddq_u16(vrhaddq_u16(v27[2], *(&v27[2] + v30)), *(v12 + v26 + 96));
      v31[7] = vrhaddq_u16(vrhaddq_u16(v27[3], *(&v27[3] + v30)), *(v12 + v26 + 112));
      v26 += 128;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 4096);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v50 = vdupq_n_s16(8 - v6);
      v51 = vdupq_n_s16(v6);
      v52 = 2 * v4;
      v53 = (v11 + 4);
      do
      {
        v54 = &v114[v13 / 0x10];
        *v54 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-4], v50), *(&v53[-4] + v52), v51), 3uLL), *(v12 + v13));
        v54[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v50), *(&v53[-3] + v52), v51), 3uLL), *(v12 + v13 + 16));
        v54[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v50), *(&v53[-2] + v52), v51), 3uLL), *(v12 + v13 + 32));
        v54[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v50), *(&v53[-1] + v52), v51), 3uLL), *(v12 + v13 + 48));
        v54[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v50), *(v53 + 2 * v4), v51), 3uLL), *(v12 + v13 + 64));
        v54[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v50), *(&v53[1] + v52), v51), 3uLL), *(v12 + v13 + 80));
        v54[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v50), *(&v53[2] + v52), v51), 3uLL), *(v12 + v13 + 96));
        v54[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v50), *(&v53[3] + v52), v51), 3uLL), *(v12 + v13 + 112));
        v13 += 128;
        v53 = (v53 + v52);
      }

      while (v13 != 4096);
    }

    else
    {
      v14 = (v11 + 4);
      do
      {
        v15 = &v114[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-4], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-3], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(v14[-2], *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[-1], *(v12 + v13 + 48));
        v15[4] = vrhaddq_u16(*v14, *(v12 + v13 + 64));
        v15[5] = vrhaddq_u16(v14[1], *(v12 + v13 + 80));
        v15[6] = vrhaddq_u16(v14[2], *(v12 + v13 + 96));
        v15[7] = vrhaddq_u16(v14[3], *(v12 + v13 + 112));
        v13 += 128;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 4096);
    }
  }

LABEL_29:
  v55 = v114;
  return vpx_highbd_12_variance64x32_neon(v55 >> 1, 64, v7, v8, v9);
}

uint64_t vpx_highbd_12_sub_pixel_avg_variance64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v115[1025] = *MEMORY[0x277D85DE8];
  v11 = (2 * v3);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      v33 = v11 + 4;
      v34 = v114;
      v35 = -65;
      do
      {
        *v34 = vrhaddq_u16(*(v33 - 4), *(v33 - 62));
        v34[1] = vrhaddq_u16(*(v33 - 3), *(v33 - 46));
        v34[2] = vrhaddq_u16(*(v33 - 2), *(v33 - 30));
        v34[3] = vrhaddq_u16(*(v33 - 1), *(v33 - 14));
        v34[4] = vrhaddq_u16(*v33, *(v33 + 2));
        v34[5] = vrhaddq_u16(*(v33 + 1), *(v33 + 18));
        v34[6] = vrhaddq_u16(*(v33 + 2), *(v33 + 34));
        v34[7] = vrhaddq_u16(*(v33 + 3), *(v33 + 50));
        v34 += 8;
        v33 = (v33 + 2 * v4);
        v36 = __CFADD__(v35++, 1);
      }

      while (!v36);
      v37 = 2 * v10;
      v38 = v114[0];
      v39 = v115;
      v40 = 240;
      do
      {
        v41 = &v113[v40];
        v43 = v39[-1];
        v42 = *v39;
        v41[-15] = vrhaddq_u16(vrhaddq_u16(v38, *v39), *(v37 + v40 - 240));
        v44 = v39[2];
        v45 = v39[-6];
        v41[-14] = vrhaddq_u16(vrhaddq_u16(v39[-7], v39[1]), *(v37 + v40 - 224));
        v41[-13] = vrhaddq_u16(vrhaddq_u16(v45, v44), *(v37 + v40 - 208));
        v46 = v39[4];
        v47 = v39[-4];
        v41[-12] = vrhaddq_u16(vrhaddq_u16(v39[-5], v39[3]), *(v37 + v40 - 192));
        v41[-11] = vrhaddq_u16(vrhaddq_u16(v47, v46), *(v37 + v40 - 176));
        v48 = v39[6];
        v49 = v39[-2];
        v41[-10] = vrhaddq_u16(vrhaddq_u16(v39[-3], v39[5]), *(v37 + v40 - 160));
        v41[-9] = vrhaddq_u16(vrhaddq_u16(v49, v48), *(v37 + v40 - 144));
        v41[-8] = vrhaddq_u16(vrhaddq_u16(v43, v39[7]), *(v37 + v40 - 128));
        v40 += 128;
        v39 += 8;
        v38 = v42;
      }

      while (v40 != 8432);
    }

    else
    {
      if (!v6)
      {
        v16 = 0;
        v17 = 2 * v10;
        v18 = v11 + 4;
        do
        {
          v19 = &v114[v16 / 0x10];
          *v19 = vrhaddq_u16(vrhaddq_u16(*(v18 - 4), *(v18 - 62)), *(v17 + v16));
          v19[1] = vrhaddq_u16(vrhaddq_u16(*(v18 - 3), *(v18 - 46)), *(v17 + v16 + 16));
          v19[2] = vrhaddq_u16(vrhaddq_u16(*(v18 - 2), *(v18 - 30)), *(v17 + v16 + 32));
          v19[3] = vrhaddq_u16(vrhaddq_u16(*(v18 - 1), *(v18 - 14)), *(v17 + v16 + 48));
          v19[4] = vrhaddq_u16(vrhaddq_u16(*v18, *(v18 + 2)), *(v17 + v16 + 64));
          v19[5] = vrhaddq_u16(vrhaddq_u16(*(v18 + 1), *(v18 + 18)), *(v17 + v16 + 80));
          v19[6] = vrhaddq_u16(vrhaddq_u16(*(v18 + 2), *(v18 + 34)), *(v17 + v16 + 96));
          v19[7] = vrhaddq_u16(vrhaddq_u16(*(v18 + 3), *(v18 + 50)), *(v17 + v16 + 112));
          v16 += 128;
          v18 = (v18 + 2 * v4);
        }

        while (v16 != 0x2000);
        goto LABEL_29;
      }

      v56 = v11 + 4;
      v57 = v114;
      v58 = -65;
      do
      {
        *v57 = vrhaddq_u16(*(v56 - 4), *(v56 - 62));
        v57[1] = vrhaddq_u16(*(v56 - 3), *(v56 - 46));
        v57[2] = vrhaddq_u16(*(v56 - 2), *(v56 - 30));
        v57[3] = vrhaddq_u16(*(v56 - 1), *(v56 - 14));
        v57[4] = vrhaddq_u16(*v56, *(v56 + 2));
        v57[5] = vrhaddq_u16(*(v56 + 1), *(v56 + 18));
        v57[6] = vrhaddq_u16(*(v56 + 2), *(v56 + 34));
        v57[7] = vrhaddq_u16(*(v56 + 3), *(v56 + 50));
        v57 += 8;
        v56 = (v56 + 2 * v4);
        v36 = __CFADD__(v58++, 1);
      }

      while (!v36);
      v59 = 0;
      v60 = 2 * v10;
      v61 = vdupq_n_s16(8 - v6);
      v62 = vdupq_n_s16(v6);
      do
      {
        v63 = &v113[v59];
        v64 = v114[v59 / 0x10 + 1];
        v65 = *&v115[v59 / 8 + 2];
        *v63 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10], v61), v114[v59 / 0x10 + 8], v62), 3uLL), *(v60 + v59));
        v63[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v64, v61), v65, v62), 3uLL), *(v60 + v59 + 16));
        v66 = v114[v59 / 0x10 + 3];
        v67 = *&v115[v59 / 8 + 6];
        v63[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 2], v61), *&v115[v59 / 8 + 4], v62), 3uLL), *(v60 + v59 + 32));
        v63[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v61), v67, v62), 3uLL), *(v60 + v59 + 48));
        v68 = v114[v59 / 0x10 + 5];
        v69 = *&v115[v59 / 8 + 10];
        v63[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 4], v61), *&v115[v59 / 8 + 8], v62), 3uLL), *(v60 + v59 + 64));
        v70 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68, v61), v69, v62), 3uLL), *(v60 + v59 + 80));
        v71 = v114[v59 / 0x10 + 7];
        v72 = *&v115[v59 / 8 + 14];
        v73 = vmlaq_s16(vmulq_s16(v114[v59 / 0x10 + 6], v61), *&v115[v59 / 8 + 12], v62);
        v63[5] = v70;
        v63[6] = vrhaddq_u16(vrshrq_n_u16(v73, 3uLL), *(v60 + v59 + 96));
        v63[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v71, v61), v72, v62), 3uLL), *(v60 + v59 + 112));
        v59 += 128;
      }

      while (v59 != 0x2000);
    }

    goto LABEL_47;
  }

  if (v5)
  {
    if (v6 == 4)
    {
      v74 = vdupq_n_s16(8 - v5);
      v75 = vdupq_n_s16(v5);
      v76 = v11 + 4;
      v77 = v114;
      v78 = -65;
      do
      {
        *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 4), v74), *(v76 - 62), v75), 3uLL);
        v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 3), v74), *(v76 - 46), v75), 3uLL);
        v77[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 2), v74), *(v76 - 30), v75), 3uLL);
        v77[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 - 1), v74), *(v76 - 14), v75), 3uLL);
        v77[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v76, v74), *(v76 + 2), v75), 3uLL);
        v77[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 1), v74), *(v76 + 18), v75), 3uLL);
        v77[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 2), v74), *(v76 + 34), v75), 3uLL);
        v77[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v76 + 3), v74), *(v76 + 50), v75), 3uLL);
        v77 += 8;
        v76 = (v76 + 2 * v4);
        v36 = __CFADD__(v78++, 1);
      }

      while (!v36);
      v79 = 2 * v10;
      v80 = v114[0];
      v81 = v115;
      v82 = 240;
      do
      {
        v83 = &v113[v82];
        v85 = v81[-1];
        v84 = *v81;
        v83[-15] = vrhaddq_u16(vrhaddq_u16(v80, *v81), *(v79 + v82 - 240));
        v86 = v81[2];
        v87 = v81[-6];
        v83[-14] = vrhaddq_u16(vrhaddq_u16(v81[-7], v81[1]), *(v79 + v82 - 224));
        v83[-13] = vrhaddq_u16(vrhaddq_u16(v87, v86), *(v79 + v82 - 208));
        v88 = v81[4];
        v89 = v81[-4];
        v83[-12] = vrhaddq_u16(vrhaddq_u16(v81[-5], v81[3]), *(v79 + v82 - 192));
        v83[-11] = vrhaddq_u16(vrhaddq_u16(v89, v88), *(v79 + v82 - 176));
        v90 = v81[6];
        v91 = v81[-2];
        v83[-10] = vrhaddq_u16(vrhaddq_u16(v81[-3], v81[5]), *(v79 + v82 - 160));
        v83[-9] = vrhaddq_u16(vrhaddq_u16(v91, v90), *(v79 + v82 - 144));
        v83[-8] = vrhaddq_u16(vrhaddq_u16(v85, v81[7]), *(v79 + v82 - 128));
        v82 += 128;
        v81 += 8;
        v80 = v84;
      }

      while (v82 != 8432);
    }

    else
    {
      if (!v6)
      {
        v20 = 0;
        v21 = 2 * v10;
        v22 = vdupq_n_s16(8 - v5);
        v23 = vdupq_n_s16(v5);
        v24 = v11 + 4;
        do
        {
          v25 = &v114[v20 / 0x10];
          *v25 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 4), v22), *(v24 - 62), v23), 3uLL), *(v21 + v20));
          v25[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 3), v22), *(v24 - 46), v23), 3uLL), *(v21 + v20 + 16));
          v25[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 2), v22), *(v24 - 30), v23), 3uLL), *(v21 + v20 + 32));
          v25[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 - 1), v22), *(v24 - 14), v23), 3uLL), *(v21 + v20 + 48));
          v25[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v24, v22), *(v24 + 2), v23), 3uLL), *(v21 + v20 + 64));
          v25[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 1), v22), *(v24 + 18), v23), 3uLL), *(v21 + v20 + 80));
          v25[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 2), v22), *(v24 + 34), v23), 3uLL), *(v21 + v20 + 96));
          v25[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v24 + 3), v22), *(v24 + 50), v23), 3uLL), *(v21 + v20 + 112));
          v20 += 128;
          v24 = (v24 + 2 * v4);
        }

        while (v20 != 0x2000);
        goto LABEL_29;
      }

      v92 = vdupq_n_s16(8 - v5);
      v93 = vdupq_n_s16(v5);
      v94 = v11 + 4;
      v95 = v114;
      v96 = -65;
      do
      {
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 4), v92), *(v94 - 62), v93), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 3), v92), *(v94 - 46), v93), 3uLL);
        v95[2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 2), v92), *(v94 - 30), v93), 3uLL);
        v95[3] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 - 1), v92), *(v94 - 14), v93), 3uLL);
        v95[4] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v94, v92), *(v94 + 2), v93), 3uLL);
        v95[5] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 1), v92), *(v94 + 18), v93), 3uLL);
        v95[6] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 2), v92), *(v94 + 34), v93), 3uLL);
        v95[7] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v94 + 3), v92), *(v94 + 50), v93), 3uLL);
        v95 += 8;
        v94 = (v94 + 2 * v4);
        v36 = __CFADD__(v96++, 1);
      }

      while (!v36);
      v97 = 0;
      v98 = 2 * v10;
      v99 = vdupq_n_s16(8 - v6);
      v100 = vdupq_n_s16(v6);
      do
      {
        v101 = &v113[v97];
        v102 = v114[v97 / 0x10 + 1];
        v103 = *&v115[v97 / 8 + 2];
        *v101 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10], v99), v114[v97 / 0x10 + 8], v100), 3uLL), *(v98 + v97));
        v101[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v102, v99), v103, v100), 3uLL), *(v98 + v97 + 16));
        v104 = v114[v97 / 0x10 + 3];
        v105 = *&v115[v97 / 8 + 6];
        v101[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 2], v99), *&v115[v97 / 8 + 4], v100), 3uLL), *(v98 + v97 + 32));
        v101[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v104, v99), v105, v100), 3uLL), *(v98 + v97 + 48));
        v106 = v114[v97 / 0x10 + 5];
        v107 = *&v115[v97 / 8 + 10];
        v101[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 4], v99), *&v115[v97 / 8 + 8], v100), 3uLL), *(v98 + v97 + 64));
        v108 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v106, v99), v107, v100), 3uLL), *(v98 + v97 + 80));
        v109 = v114[v97 / 0x10 + 7];
        v110 = *&v115[v97 / 8 + 14];
        v111 = vmlaq_s16(vmulq_s16(v114[v97 / 0x10 + 6], v99), *&v115[v97 / 8 + 12], v100);
        v101[5] = v108;
        v101[6] = vrhaddq_u16(vrshrq_n_u16(v111, 3uLL), *(v98 + v97 + 96));
        v101[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v109, v99), v110, v100), 3uLL), *(v98 + v97 + 112));
        v97 += 128;
      }

      while (v97 != 0x2000);
    }

LABEL_47:
    v55 = v113;
    return vpx_highbd_12_variance64x64_neon(v55 >> 1, 64, v7, v8, v9);
  }

  v12 = 2 * v10;
  if (v6 == 4)
  {
    v26 = 0;
    v28 = *v11;
    v27 = (v11 + 4);
    v29 = v28;
    v30 = 2 * v4;
    do
    {
      v31 = &v114[v26 / 0x10];
      v32 = *(&v27[-4] + v30);
      *v31 = vrhaddq_u16(vrhaddq_u16(v29, v32), *(v12 + v26));
      v31[1] = vrhaddq_u16(vrhaddq_u16(v27[-3], *(&v27[-3] + v30)), *(v12 + v26 + 16));
      v31[2] = vrhaddq_u16(vrhaddq_u16(v27[-2], *(&v27[-2] + v30)), *(v12 + v26 + 32));
      v31[3] = vrhaddq_u16(vrhaddq_u16(v27[-1], *(&v27[-1] + v30)), *(v12 + v26 + 48));
      v31[4] = vrhaddq_u16(vrhaddq_u16(*v27, *(v27 + 2 * v4)), *(v12 + v26 + 64));
      v31[5] = vrhaddq_u16(vrhaddq_u16(v27[1], *(&v27[1] + v30)), *(v12 + v26 + 80));
      v31[6] = vrhaddq_u16(vrhaddq_u16(v27[2], *(&v27[2] + v30)), *(v12 + v26 + 96));
      v31[7] = vrhaddq_u16(vrhaddq_u16(v27[3], *(&v27[3] + v30)), *(v12 + v26 + 112));
      v26 += 128;
      v27 = (v27 + v30);
      v29 = v32;
    }

    while (v26 != 0x2000);
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      v50 = vdupq_n_s16(8 - v6);
      v51 = vdupq_n_s16(v6);
      v52 = 2 * v4;
      v53 = (v11 + 4);
      do
      {
        v54 = &v114[v13 / 0x10];
        *v54 = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-4], v50), *(&v53[-4] + v52), v51), 3uLL), *(v12 + v13));
        v54[1] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-3], v50), *(&v53[-3] + v52), v51), 3uLL), *(v12 + v13 + 16));
        v54[2] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-2], v50), *(&v53[-2] + v52), v51), 3uLL), *(v12 + v13 + 32));
        v54[3] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[-1], v50), *(&v53[-1] + v52), v51), 3uLL), *(v12 + v13 + 48));
        v54[4] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*v53, v50), *(v53 + 2 * v4), v51), 3uLL), *(v12 + v13 + 64));
        v54[5] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[1], v50), *(&v53[1] + v52), v51), 3uLL), *(v12 + v13 + 80));
        v54[6] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[2], v50), *(&v53[2] + v52), v51), 3uLL), *(v12 + v13 + 96));
        v54[7] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53[3], v50), *(&v53[3] + v52), v51), 3uLL), *(v12 + v13 + 112));
        v13 += 128;
        v53 = (v53 + v52);
      }

      while (v13 != 0x2000);
    }

    else
    {
      v14 = (v11 + 4);
      do
      {
        v15 = &v114[v13 / 0x10];
        *v15 = vrhaddq_u16(v14[-4], *(v12 + v13));
        v15[1] = vrhaddq_u16(v14[-3], *(v12 + v13 + 16));
        v15[2] = vrhaddq_u16(v14[-2], *(v12 + v13 + 32));
        v15[3] = vrhaddq_u16(v14[-1], *(v12 + v13 + 48));
        v15[4] = vrhaddq_u16(*v14, *(v12 + v13 + 64));
        v15[5] = vrhaddq_u16(v14[1], *(v12 + v13 + 80));
        v15[6] = vrhaddq_u16(v14[2], *(v12 + v13 + 96));
        v15[7] = vrhaddq_u16(v14[3], *(v12 + v13 + 112));
        v13 += 128;
        v14 = (v14 + 2 * v4);
      }

      while (v13 != 0x2000);
    }
  }

LABEL_29:
  v55 = v114;
  return vpx_highbd_12_variance64x64_neon(v55 >> 1, 64, v7, v8, v9);
}

uint64_t vpx_highbd_8_variance4x4_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i64[0] = *(2 * a1);
  v7.i64[1] = *(2 * a1 + v5);
  v8.i64[0] = *(2 * a3);
  v8.i64[1] = *(2 * a3 + v6);
  v9 = vsubq_s16(v7, v8);
  v10 = (2 * a1 + 4 * a2);
  v11.i64[0] = *v10;
  v11.i64[1] = *(v10 + v5);
  v12 = (2 * a3 + 4 * a4);
  v13.i64[0] = *v12;
  v13.i64[1] = *(v12 + v6);
  v14 = vsubq_s16(v11, v13);
  LODWORD(v12) = vaddlvq_s16(vaddq_s16(v14, v9));
  v9.i32[0] = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9), *v14.i8, *v14.i8), v14, v14));
  *a5 = v9.i32[0];
  return v9.i32[0] - ((v12 * v12) >> 4);
}

uint64_t vpx_highbd_8_variance4x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i64[0] = *(2 * a1);
  v7.i64[1] = *(2 * a1 + v5);
  v8.i64[0] = *(2 * a3);
  v8.i64[1] = *(2 * a3 + v6);
  v9 = vsubq_s16(v7, v8);
  v10 = 4 * a2;
  v11 = (2 * a1 + v10);
  v12 = 4 * a4;
  v13 = (2 * a3 + v12);
  v14.i64[0] = *v11;
  v14.i64[1] = *(v11 + v5);
  v15.i64[0] = *v13;
  v15.i64[1] = *(v13 + v6);
  v16 = vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9);
  v17 = vsubq_s16(v14, v15);
  v18 = vaddq_s16(v17, v9);
  v19 = vmlal_high_s16(vmlal_s16(v16, *v17.i8, *v17.i8), v17, v17);
  v20 = (v11 + v10);
  v21 = (v13 + v12);
  v17.i64[0] = *v20;
  v17.i64[1] = *(v20 + v5);
  v15.i64[0] = *v21;
  v15.i64[1] = *(v21 + v6);
  v22 = vsubq_s16(v17, v15);
  v23 = vaddq_s16(v18, v22);
  v24 = vmlal_high_s16(vmlal_s16(v19, *v22.i8, *v22.i8), v22, v22);
  v25 = (v20 + v10);
  v22.i64[0] = *v25;
  v22.i64[1] = *(v25 + v5);
  v15.i64[0] = *(v21 + v12);
  v15.i64[1] = *(v21 + v12 + v6);
  v26 = vsubq_s16(v22, v15);
  v23.i32[0] = vaddlvq_s16(vaddq_s16(v23, v26));
  v24.i32[0] = vaddvq_s32(vmlal_high_s16(vmlal_s16(v24, *v26.i8, *v26.i8), v26, v26));
  *a5 = v24.i32[0];
  return v24.i32[0] - ((v23.i32[0] * v23.i32[0]) >> 5);
}

uint64_t vpx_highbd_8_variance8x4_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = vsubq_s16(*(v11 + v6), *(v12 + v8));
  v15 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v14));
  v5.i32[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v14.i8, *v14.i8), v14, v14));
  *a5 = v5.i32[0];
  return v5.i32[0] - ((v15 * v15) >> 5);
}

uint64_t vpx_highbd_8_variance8x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = (v11 + v6);
  v15 = (v12 + v8);
  v16 = vsubq_s16(*v14, *v15);
  v17 = (v14 + v6);
  v18 = (v15 + v8);
  v19 = vsubq_s16(*v17, *v18);
  v20 = (v17 + v6);
  v21 = (v18 + v8);
  v22 = vsubq_s16(*v20, *v21);
  v23 = (v20 + v6);
  v24 = (v21 + v8);
  v25 = vsubq_s16(*v23, *v24);
  v26 = vsubq_s16(*(v23 + v6), *(v24 + v8));
  v27 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v16), v19), v22), v25), v26));
  v28 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v22.i8, *v22.i8), v22, v22), *v25.i8, *v25.i8), v25, v25), *v26.i8, *v26.i8), v26, v26));
  *a5 = v28;
  return v28 - ((v27 * v27) >> 6);
}

uint64_t vpx_highbd_8_variance8x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = (v11 + v6);
  v15 = (v12 + v8);
  v16 = vsubq_s16(*v14, *v15);
  v17 = (v14 + v6);
  v18 = (v15 + v8);
  v19 = vsubq_s16(*v17, *v18);
  v20 = (v17 + v6);
  v21 = (v18 + v8);
  v22 = vsubq_s16(*v20, *v21);
  v23 = (v20 + v6);
  v24 = (v21 + v8);
  v25 = vsubq_s16(*v23, *v24);
  v26 = (v23 + v6);
  v27 = (v24 + v8);
  v28 = vsubq_s16(*v26, *v27);
  v29 = (v26 + v6);
  v30 = (v27 + v8);
  v31 = vsubq_s16(*v29, *v30);
  v32 = (v29 + v6);
  v33 = (v30 + v8);
  v34 = vsubq_s16(*v32, *v33);
  v35 = (v32 + v6);
  v36 = (v33 + v8);
  v37 = vsubq_s16(*v35, *v36);
  v38 = (v35 + v6);
  v39 = (v36 + v8);
  v40 = vsubq_s16(*v38, *v39);
  v41 = (v38 + v6);
  v42 = (v39 + v8);
  v43 = vsubq_s16(*v41, *v42);
  v44 = (v41 + v6);
  v45 = (v42 + v8);
  v46 = vsubq_s16(*v44, *v45);
  v47 = (v44 + v6);
  v48 = (v45 + v8);
  v49 = vsubq_s16(*v47, *v48);
  v50 = vsubq_s16(*(v47 + v6), *(v48 + v8));
  v51 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v16), v19), v22), v25), v28), v31), v34), v37), v40), v43), v46), v49), v50));
  v52 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v22.i8, *v22.i8), v22, v22), *v25.i8, *v25.i8), v25, v25), *v28.i8, *v28.i8), v28, v28), *v31.i8, *v31.i8), v31, v31), *v34.i8, *v34.i8), v34, v34), *v37.i8, *v37.i8), v37, v37), *v40.i8, *v40.i8), v40, v40), *v43.i8, *v43.i8), v43, v43), *v46.i8, *v46.i8), v46, v46), *v49.i8, *v49.i8), v49, v49), *v50.i8, *v50.i8), v50, v50));
  *a5 = v52;
  return v52 - ((v51 * v51) >> 7);
}

uint64_t vpx_highbd_8_variance16x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = vsubq_s16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
  v7 = 2 * a2;
  v8 = (2 * a1 + v7);
  v9 = 2 * a4;
  v10 = (2 * a3 + v9);
  v11 = vsubq_s16(*v8, *v10);
  v12 = vsubq_s16(v8[1], v10[1]);
  v13 = (v8 + v7);
  v14 = (v10 + v9);
  v15 = vsubq_s16(*v13, *v14);
  v16 = vsubq_s16(v13[1], v14[1]);
  v17 = (v13 + v7);
  v18 = (v14 + v9);
  v19 = vsubq_s16(*v17, *v18);
  v20 = vsubq_s16(v17[1], v18[1]);
  v21 = (v17 + v7);
  v22 = (v18 + v9);
  v23 = vsubq_s16(*v21, *v22);
  v24 = vsubq_s16(v21[1], v22[1]);
  v25 = (v21 + v7);
  v26 = (v22 + v9);
  v27 = vsubq_s16(*v25, *v26);
  v28 = vsubq_s16(v25[1], v26[1]);
  v29 = (v25 + v7);
  v30 = (v26 + v9);
  v31 = vsubq_s16(*v29, *v30);
  v32 = vsubq_s16(v29[1], v30[1]);
  v33 = (v29 + v7);
  v34 = (v30 + v9);
  v35 = vsubq_s16(*v33, *v34);
  v36 = vsubq_s16(v33[1], v34[1]);
  v37 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v6), v5), v11), v12), v15), v16), v19), v20), v23), v24), v27), v28), v31), v32), v35), v36));
  v38 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v6.i8, *v6.i8), v6, v6), *v11.i8, *v11.i8), v11, v11), *v12.i8, *v12.i8), v12, v12), *v15.i8, *v15.i8), v15, v15), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v24.i8, *v24.i8), v24, v24), *v27.i8, *v27.i8), v27, v27), *v28.i8, *v28.i8), v28, v28), *v31.i8, *v31.i8), v31, v31), *v32.i8, *v32.i8), v32, v32), *v35.i8, *v35.i8), v35, v35), *v36.i8, *v36.i8), v36, v36));
  *a5 = v38;
  return v38 - ((v37 * v37) >> 7);
}

uint64_t vpx_highbd_8_variance16x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a3 + 16);
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = -16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v6[-1], v5[-1]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(*v6, *v5);
    v10 = vpadalq_s16(v12, v15);
    v7 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v9 = vmlal_high_s16(v14, v15, v15);
    v5 = (v5 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (!__CFADD__(v8++, 1));
  v17 = vaddvq_s32(v10);
  v18 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 8);
}

uint64_t vpx_highbd_8_variance16x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a3 + 16);
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v6[-1], v5[-1]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(*v6, *v5);
    v10 = vpadalq_s16(v12, v15);
    v7 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v9 = vmlal_high_s16(v14, v15, v15);
    v5 = (v5 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (!__CFADD__(v8++, 1));
  v17 = vaddvq_s32(v10);
  v18 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 9);
}

uint64_t vpx_highbd_8_variance32x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v26;
  return v26 - ((v25 * v25) >> 9);
}

uint64_t vpx_highbd_8_variance32x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v26;
  return v26 - ((v25 * v25) >> 10);
}

uint64_t vpx_highbd_8_variance32x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -64;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v26;
  return v26 - ((v25 * v25) >> 11);
}

uint64_t vpx_highbd_8_variance64x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 64);
  v6 = (2 * a3 + 64);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-4], v6[-4]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-3], v6[-3]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(v5[-2], v6[-2]);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[-1], v6[-1]);
    v24 = vpadalq_s16(v20, v23);
    v25 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v26 = vmlal_high_s16(v22, v23, v23);
    v27 = vsubq_s16(*v5, *v6);
    v28 = vpadalq_s16(v24, v27);
    v29 = vmlal_s16(v25, *v27.i8, *v27.i8);
    v30 = vmlal_high_s16(v26, v27, v27);
    v31 = vsubq_s16(v5[1], v6[1]);
    v32 = vpadalq_s16(v28, v31);
    v33 = vmlal_s16(v29, *v31.i8, *v31.i8);
    v34 = vmlal_high_s16(v30, v31, v31);
    v35 = vsubq_s16(v5[2], v6[2]);
    v36 = vpadalq_s16(v32, v35);
    v37 = vmlal_s16(v33, *v35.i8, *v35.i8);
    v38 = vmlal_high_s16(v34, v35, v35);
    v39 = vsubq_s16(v5[3], v6[3]);
    v10 = vpadalq_s16(v36, v39);
    v7 = vmlal_s16(v37, *v39.i8, *v39.i8);
    v9 = vmlal_high_s16(v38, v39, v39);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v41 = vaddvq_s32(v10);
  v42 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v42;
  return v42 - ((v41 * v41) >> 11);
}

uint64_t vpx_highbd_8_variance64x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 64);
  v6 = (2 * a3 + 64);
  v7 = 0uLL;
  v8 = -64;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-4], v6[-4]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-3], v6[-3]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(v5[-2], v6[-2]);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[-1], v6[-1]);
    v24 = vpadalq_s16(v20, v23);
    v25 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v26 = vmlal_high_s16(v22, v23, v23);
    v27 = vsubq_s16(*v5, *v6);
    v28 = vpadalq_s16(v24, v27);
    v29 = vmlal_s16(v25, *v27.i8, *v27.i8);
    v30 = vmlal_high_s16(v26, v27, v27);
    v31 = vsubq_s16(v5[1], v6[1]);
    v32 = vpadalq_s16(v28, v31);
    v33 = vmlal_s16(v29, *v31.i8, *v31.i8);
    v34 = vmlal_high_s16(v30, v31, v31);
    v35 = vsubq_s16(v5[2], v6[2]);
    v36 = vpadalq_s16(v32, v35);
    v37 = vmlal_s16(v33, *v35.i8, *v35.i8);
    v38 = vmlal_high_s16(v34, v35, v35);
    v39 = vsubq_s16(v5[3], v6[3]);
    v10 = vpadalq_s16(v36, v39);
    v7 = vmlal_s16(v37, *v39.i8, *v39.i8);
    v9 = vmlal_high_s16(v38, v39, v39);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v41 = vaddvq_s32(v10);
  v42 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = v42;
  return v42 - ((v41 * v41) >> 12);
}

uint64_t vpx_highbd_10_variance4x4_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i64[0] = *(2 * a1);
  v7.i64[1] = *(2 * a1 + v5);
  v8.i64[0] = *(2 * a3);
  v8.i64[1] = *(2 * a3 + v6);
  v9 = vsubq_s16(v7, v8);
  v10 = (2 * a1 + 4 * a2);
  v11 = (2 * a3 + 4 * a4);
  v12.i64[0] = *v10;
  v12.i64[1] = *(v10 + v5);
  v13.i64[0] = *v11;
  v13.i64[1] = *(v11 + v6);
  v14 = vsubq_s16(v12, v13);
  LODWORD(v10) = vaddlvq_s16(vaddq_s16(v14, v9));
  v15 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9), *v14.i8, *v14.i8), v14, v14)) + 8;
  *a5 = v15 >> 4;
  v16 = (v15 >> 4) - (((((v10 << 30) + 0x80000000) >> 32) * (((v10 << 30) + 0x80000000) >> 32)) >> 4);
  return v16 & ~(v16 >> 63);
}

uint64_t vpx_highbd_10_variance4x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i64[0] = *(2 * a1);
  v7.i64[1] = *(2 * a1 + v5);
  v8.i64[0] = *(2 * a3);
  v8.i64[1] = *(2 * a3 + v6);
  v9 = vsubq_s16(v7, v8);
  v10 = vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9);
  v11 = 4 * a2;
  v12 = (2 * a1 + v11);
  v13 = 4 * a4;
  v14.i64[0] = *v12;
  v14.i64[1] = *(v12 + v5);
  v15 = (2 * a3 + v13);
  v16.i64[0] = *v15;
  v16.i64[1] = *(v15 + v6);
  v17 = vsubq_s16(v14, v16);
  v18 = vaddq_s16(v17, v9);
  v19 = (v12 + v11);
  v20 = (v15 + v13);
  v16.i64[0] = *v19;
  v16.i64[1] = *(v19 + v5);
  v21.i64[0] = *v20;
  v21.i64[1] = *(v20 + v6);
  v22 = vmlal_high_s16(vmlal_s16(v10, *v17.i8, *v17.i8), v17, v17);
  v23 = vsubq_s16(v16, v21);
  v24 = vaddq_s16(v18, v23);
  v25 = vmlal_high_s16(vmlal_s16(v22, *v23.i8, *v23.i8), v23, v23);
  v26 = (v19 + v11);
  v27 = (v20 + v13);
  v23.i64[0] = *v26;
  v23.i64[1] = *(v26 + v5);
  v16.i64[0] = *v27;
  v16.i64[1] = *(v27 + v6);
  v28 = vsubq_s16(v23, v16);
  v24.i32[0] = vaddlvq_s16(vaddq_s16(v24, v28));
  v29 = vaddvq_s32(vmlal_high_s16(vmlal_s16(v25, *v28.i8, *v28.i8), v28, v28)) + 8;
  *a5 = v29 >> 4;
  v30 = (v29 >> 4) - (((((v24.i32[0] << 30) + 0x80000000) >> 32) * (((v24.i32[0] << 30) + 0x80000000) >> 32)) >> 5);
  return v30 & ~(v30 >> 63);
}

uint64_t vpx_highbd_10_variance8x4_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = vsubq_s16(*(v11 + v6), *(v12 + v8));
  v15 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v14));
  v5.i64[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v14.i8, *v14.i8), v14, v14));
  *a5 = (v5.i64[0] + 8) >> 4;
  v16 = ((v5.i64[0] + 8) >> 4) - (((((v15 << 30) + 0x80000000) >> 32) * (((v15 << 30) + 0x80000000) >> 32)) >> 5);
  return v16 & ~(v16 >> 63);
}

uint64_t vpx_highbd_10_variance8x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = (v11 + v6);
  v15 = (v12 + v8);
  v16 = vsubq_s16(*v14, *v15);
  v17 = (v14 + v6);
  v18 = (v15 + v8);
  v19 = vsubq_s16(*v17, *v18);
  v20 = (v17 + v6);
  v21 = (v18 + v8);
  v22 = vsubq_s16(*v20, *v21);
  v23 = (v20 + v6);
  v24 = (v21 + v8);
  v25 = vsubq_s16(*v23, *v24);
  v26 = vsubq_s16(*(v23 + v6), *(v24 + v8));
  v27 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v16), v19), v22), v25), v26));
  v28 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v22.i8, *v22.i8), v22, v22), *v25.i8, *v25.i8), v25, v25), *v26.i8, *v26.i8), v26, v26));
  *a5 = (v28 + 8) >> 4;
  v29 = ((v28 + 8) >> 4) - (((((v27 << 30) + 0x80000000) >> 32) * (((v27 << 30) + 0x80000000) >> 32)) >> 6);
  return v29 & ~(v29 >> 63);
}

uint64_t vpx_highbd_10_variance8x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = (v11 + v6);
  v15 = (v12 + v8);
  v16 = vsubq_s16(*v14, *v15);
  v17 = (v14 + v6);
  v18 = (v15 + v8);
  v19 = vsubq_s16(*v17, *v18);
  v20 = (v17 + v6);
  v21 = (v18 + v8);
  v22 = vsubq_s16(*v20, *v21);
  v23 = (v20 + v6);
  v24 = (v21 + v8);
  v25 = vsubq_s16(*v23, *v24);
  v26 = (v23 + v6);
  v27 = (v24 + v8);
  v28 = vsubq_s16(*v26, *v27);
  v29 = (v26 + v6);
  v30 = (v27 + v8);
  v31 = vsubq_s16(*v29, *v30);
  v32 = (v29 + v6);
  v33 = (v30 + v8);
  v34 = vsubq_s16(*v32, *v33);
  v35 = (v32 + v6);
  v36 = (v33 + v8);
  v37 = vsubq_s16(*v35, *v36);
  v38 = (v35 + v6);
  v39 = (v36 + v8);
  v40 = vsubq_s16(*v38, *v39);
  v41 = (v38 + v6);
  v42 = (v39 + v8);
  v43 = vsubq_s16(*v41, *v42);
  v44 = (v41 + v6);
  v45 = (v42 + v8);
  v46 = vsubq_s16(*v44, *v45);
  v47 = (v44 + v6);
  v48 = (v45 + v8);
  v49 = vsubq_s16(*v47, *v48);
  v50 = vsubq_s16(*(v47 + v6), *(v48 + v8));
  v51 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v16), v19), v22), v25), v28), v31), v34), v37), v40), v43), v46), v49), v50));
  v52 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v22.i8, *v22.i8), v22, v22), *v25.i8, *v25.i8), v25, v25), *v28.i8, *v28.i8), v28, v28), *v31.i8, *v31.i8), v31, v31), *v34.i8, *v34.i8), v34, v34), *v37.i8, *v37.i8), v37, v37), *v40.i8, *v40.i8), v40, v40), *v43.i8, *v43.i8), v43, v43), *v46.i8, *v46.i8), v46, v46), *v49.i8, *v49.i8), v49, v49), *v50.i8, *v50.i8), v50, v50));
  *a5 = (v52 + 8) >> 4;
  v53 = ((v52 + 8) >> 4) - (((((v51 << 30) + 0x80000000) >> 32) * (((v51 << 30) + 0x80000000) >> 32)) >> 7);
  return v53 & ~(v53 >> 63);
}

uint64_t vpx_highbd_10_variance16x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = vsubq_s16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
  v7 = 2 * a2;
  v8 = (2 * a1 + v7);
  v9 = 2 * a4;
  v10 = (2 * a3 + v9);
  v11 = vsubq_s16(*v8, *v10);
  v12 = vsubq_s16(v8[1], v10[1]);
  v13 = (v8 + v7);
  v14 = (v10 + v9);
  v15 = vsubq_s16(*v13, *v14);
  v16 = vsubq_s16(v13[1], v14[1]);
  v17 = (v13 + v7);
  v18 = (v14 + v9);
  v19 = vsubq_s16(*v17, *v18);
  v20 = vsubq_s16(v17[1], v18[1]);
  v21 = (v17 + v7);
  v22 = (v18 + v9);
  v23 = vsubq_s16(*v21, *v22);
  v24 = vsubq_s16(v21[1], v22[1]);
  v25 = (v21 + v7);
  v26 = (v22 + v9);
  v27 = vsubq_s16(*v25, *v26);
  v28 = vsubq_s16(v25[1], v26[1]);
  v29 = (v25 + v7);
  v30 = (v26 + v9);
  v31 = vsubq_s16(*v29, *v30);
  v32 = vsubq_s16(v29[1], v30[1]);
  v33 = (v29 + v7);
  v34 = (v30 + v9);
  v35 = vsubq_s16(*v33, *v34);
  v36 = vsubq_s16(v33[1], v34[1]);
  v37 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v6), v5), v11), v12), v15), v16), v19), v20), v23), v24), v27), v28), v31), v32), v35), v36));
  v38 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v6.i8, *v6.i8), v6, v6), *v11.i8, *v11.i8), v11, v11), *v12.i8, *v12.i8), v12, v12), *v15.i8, *v15.i8), v15, v15), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v24.i8, *v24.i8), v24, v24), *v27.i8, *v27.i8), v27, v27), *v28.i8, *v28.i8), v28, v28), *v31.i8, *v31.i8), v31, v31), *v32.i8, *v32.i8), v32, v32), *v35.i8, *v35.i8), v35, v35), *v36.i8, *v36.i8), v36, v36));
  *a5 = (v38 + 8) >> 4;
  v39 = ((v38 + 8) >> 4) - (((((v37 << 30) + 0x80000000) >> 32) * (((v37 << 30) + 0x80000000) >> 32)) >> 7);
  return v39 & ~(v39 >> 63);
}

uint64_t vpx_highbd_10_variance16x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a3 + 16);
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = -16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v6[-1], v5[-1]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(*v6, *v5);
    v10 = vpadalq_s16(v12, v15);
    v7 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v9 = vmlal_high_s16(v14, v15, v15);
    v5 = (v5 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (!__CFADD__(v8++, 1));
  v17 = vaddvq_s32(v10);
  v18 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v18 + 8) >> 4;
  v19 = ((v18 + 8) >> 4) - (((((v17 << 30) + 0x80000000) >> 32) * (((v17 << 30) + 0x80000000) >> 32)) >> 8);
  return v19 & ~(v19 >> 63);
}

uint64_t vpx_highbd_10_variance16x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a3 + 16);
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v6[-1], v5[-1]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(*v6, *v5);
    v10 = vpadalq_s16(v12, v15);
    v7 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v9 = vmlal_high_s16(v14, v15, v15);
    v5 = (v5 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (!__CFADD__(v8++, 1));
  v17 = vaddvq_s32(v10);
  v18 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v18 + 8) >> 4;
  v19 = ((v18 + 8) >> 4) - (((((v17 << 30) + 0x80000000) >> 32) * (((v17 << 30) + 0x80000000) >> 32)) >> 9);
  return v19 & ~(v19 >> 63);
}

uint64_t vpx_highbd_10_variance32x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v26 + 8) >> 4;
  v27 = ((v26 + 8) >> 4) - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 9);
  return v27 & ~(v27 >> 63);
}

uint64_t vpx_highbd_10_variance32x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v26 + 8) >> 4;
  v27 = ((v26 + 8) >> 4) - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 10);
  return v27 & ~(v27 >> 63);
}

uint64_t vpx_highbd_10_variance32x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -64;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v26 + 8) >> 4;
  v27 = ((v26 + 8) >> 4) - (((((v25 << 30) + 0x80000000) >> 32) * (((v25 << 30) + 0x80000000) >> 32)) >> 11);
  return v27 & ~(v27 >> 63);
}

uint64_t vpx_highbd_10_variance64x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 64);
  v6 = (2 * a3 + 64);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-4], v6[-4]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-3], v6[-3]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(v5[-2], v6[-2]);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[-1], v6[-1]);
    v24 = vpadalq_s16(v20, v23);
    v25 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v26 = vmlal_high_s16(v22, v23, v23);
    v27 = vsubq_s16(*v5, *v6);
    v28 = vpadalq_s16(v24, v27);
    v29 = vmlal_s16(v25, *v27.i8, *v27.i8);
    v30 = vmlal_high_s16(v26, v27, v27);
    v31 = vsubq_s16(v5[1], v6[1]);
    v32 = vpadalq_s16(v28, v31);
    v33 = vmlal_s16(v29, *v31.i8, *v31.i8);
    v34 = vmlal_high_s16(v30, v31, v31);
    v35 = vsubq_s16(v5[2], v6[2]);
    v36 = vpadalq_s16(v32, v35);
    v37 = vmlal_s16(v33, *v35.i8, *v35.i8);
    v38 = vmlal_high_s16(v34, v35, v35);
    v39 = vsubq_s16(v5[3], v6[3]);
    v10 = vpadalq_s16(v36, v39);
    v7 = vmlal_s16(v37, *v39.i8, *v39.i8);
    v9 = vmlal_high_s16(v38, v39, v39);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v41 = vaddvq_s32(v10);
  v42 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v42 + 8) >> 4;
  v43 = ((v42 + 8) >> 4) - (((((v41 << 30) + 0x80000000) >> 32) * (((v41 << 30) + 0x80000000) >> 32)) >> 11);
  return v43 & ~(v43 >> 63);
}

uint64_t vpx_highbd_10_variance64x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 64);
  v6 = (2 * a3 + 64);
  v7 = 0uLL;
  v8 = -64;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-4], v6[-4]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-3], v6[-3]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(v5[-2], v6[-2]);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[-1], v6[-1]);
    v24 = vpadalq_s16(v20, v23);
    v25 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v26 = vmlal_high_s16(v22, v23, v23);
    v27 = vsubq_s16(*v5, *v6);
    v28 = vpadalq_s16(v24, v27);
    v29 = vmlal_s16(v25, *v27.i8, *v27.i8);
    v30 = vmlal_high_s16(v26, v27, v27);
    v31 = vsubq_s16(v5[1], v6[1]);
    v32 = vpadalq_s16(v28, v31);
    v33 = vmlal_s16(v29, *v31.i8, *v31.i8);
    v34 = vmlal_high_s16(v30, v31, v31);
    v35 = vsubq_s16(v5[2], v6[2]);
    v36 = vpadalq_s16(v32, v35);
    v37 = vmlal_s16(v33, *v35.i8, *v35.i8);
    v38 = vmlal_high_s16(v34, v35, v35);
    v39 = vsubq_s16(v5[3], v6[3]);
    v10 = vpadalq_s16(v36, v39);
    v7 = vmlal_s16(v37, *v39.i8, *v39.i8);
    v9 = vmlal_high_s16(v38, v39, v39);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v41 = vaddvq_s32(v10);
  v42 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v42 + 8) >> 4;
  v43 = ((v42 + 8) >> 4) - (((((v41 << 30) + 0x80000000) >> 32) * (((v41 << 30) + 0x80000000) >> 32)) >> 12);
  return v43 & ~(v43 >> 63);
}

uint64_t vpx_highbd_12_variance4x4_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i64[0] = *(2 * a1);
  v7.i64[1] = *(2 * a1 + v5);
  v8.i64[0] = *(2 * a3);
  v8.i64[1] = *(2 * a3 + v6);
  v9 = vsubq_s16(v7, v8);
  v10 = (2 * a1 + 4 * a2);
  v11 = (2 * a3 + 4 * a4);
  v12.i64[0] = *v10;
  v12.i64[1] = *(v10 + v5);
  v13.i64[0] = *v11;
  v13.i64[1] = *(v11 + v6);
  v14 = vsubq_s16(v12, v13);
  LODWORD(v10) = vaddlvq_s16(vaddq_s16(v14, v9));
  v15 = vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9), *v14.i8, *v14.i8), v14, v14)) + 128;
  *a5 = v15 >> 8;
  v16 = (v15 >> 8) - (((((v10 << 28) + 0x80000000) >> 32) * (((v10 << 28) + 0x80000000) >> 32)) >> 4);
  return v16 & ~(v16 >> 63);
}

uint64_t vpx_highbd_12_variance4x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7.i64[0] = *(2 * a1);
  v7.i64[1] = *(2 * a1 + v5);
  v8.i64[0] = *(2 * a3);
  v8.i64[1] = *(2 * a3 + v6);
  v9 = vsubq_s16(v7, v8);
  v10 = vmlal_high_s16(vmull_s16(*v9.i8, *v9.i8), v9, v9);
  v11 = 4 * a2;
  v12 = (2 * a1 + v11);
  v13 = 4 * a4;
  v14.i64[0] = *v12;
  v14.i64[1] = *(v12 + v5);
  v15 = (2 * a3 + v13);
  v16.i64[0] = *v15;
  v16.i64[1] = *(v15 + v6);
  v17 = vsubq_s16(v14, v16);
  v18 = vaddq_s16(v17, v9);
  v19 = (v12 + v11);
  v20 = (v15 + v13);
  v16.i64[0] = *v19;
  v16.i64[1] = *(v19 + v5);
  v21.i64[0] = *v20;
  v21.i64[1] = *(v20 + v6);
  v22 = vmlal_high_s16(vmlal_s16(v10, *v17.i8, *v17.i8), v17, v17);
  v23 = vsubq_s16(v16, v21);
  v24 = vaddq_s16(v18, v23);
  v25 = vmlal_high_s16(vmlal_s16(v22, *v23.i8, *v23.i8), v23, v23);
  v26 = (v19 + v11);
  v27 = (v20 + v13);
  v23.i64[0] = *v26;
  v23.i64[1] = *(v26 + v5);
  v16.i64[0] = *v27;
  v16.i64[1] = *(v27 + v6);
  v28 = vsubq_s16(v23, v16);
  v24.i32[0] = vaddlvq_s16(vaddq_s16(v24, v28));
  v29 = vaddvq_s32(vmlal_high_s16(vmlal_s16(v25, *v28.i8, *v28.i8), v28, v28)) + 128;
  *a5 = v29 >> 8;
  v30 = (v29 >> 8) - (((((v24.i32[0] << 28) + 0x80000000) >> 32) * (((v24.i32[0] << 28) + 0x80000000) >> 32)) >> 5);
  return v30 & ~(v30 >> 63);
}

uint64_t vpx_highbd_12_variance8x4_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = vsubq_s16(*(v11 + v6), *(v12 + v8));
  v15 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v14));
  v5.i64[0] = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v14.i8, *v14.i8), v14, v14));
  *a5 = (v5.i64[0] + 128) >> 8;
  v16 = ((v5.i64[0] + 128) >> 8) - (((((v15 << 28) + 0x80000000) >> 32) * (((v15 << 28) + 0x80000000) >> 32)) >> 5);
  return v16 & ~(v16 >> 63);
}

uint64_t vpx_highbd_12_variance8x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = (v11 + v6);
  v15 = (v12 + v8);
  v16 = vsubq_s16(*v14, *v15);
  v17 = (v14 + v6);
  v18 = (v15 + v8);
  v19 = vsubq_s16(*v17, *v18);
  v20 = (v17 + v6);
  v21 = (v18 + v8);
  v22 = vsubq_s16(*v20, *v21);
  v23 = (v20 + v6);
  v24 = (v21 + v8);
  v25 = vsubq_s16(*v23, *v24);
  v26 = vsubq_s16(*(v23 + v6), *(v24 + v8));
  v27 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v16), v19), v22), v25), v26));
  v28 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v22.i8, *v22.i8), v22, v22), *v25.i8, *v25.i8), v25, v25), *v26.i8, *v26.i8), v26, v26));
  *a5 = (v28 + 128) >> 8;
  v29 = ((v28 + 128) >> 8) - (((((v27 << 28) + 0x80000000) >> 32) * (((v27 << 28) + 0x80000000) >> 32)) >> 6);
  return v29 & ~(v29 >> 63);
}

uint64_t vpx_highbd_12_variance8x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = 2 * a2;
  v7 = (2 * a1 + v6);
  v8 = 2 * a4;
  v9 = (2 * a3 + v8);
  v10 = vsubq_s16(*v7, *v9);
  v11 = (v7 + v6);
  v12 = (v9 + v8);
  v13 = vsubq_s16(*v11, *v12);
  v14 = (v11 + v6);
  v15 = (v12 + v8);
  v16 = vsubq_s16(*v14, *v15);
  v17 = (v14 + v6);
  v18 = (v15 + v8);
  v19 = vsubq_s16(*v17, *v18);
  v20 = (v17 + v6);
  v21 = (v18 + v8);
  v22 = vsubq_s16(*v20, *v21);
  v23 = (v20 + v6);
  v24 = (v21 + v8);
  v25 = vsubq_s16(*v23, *v24);
  v26 = (v23 + v6);
  v27 = (v24 + v8);
  v28 = vsubq_s16(*v26, *v27);
  v29 = (v26 + v6);
  v30 = (v27 + v8);
  v31 = vsubq_s16(*v29, *v30);
  v32 = (v29 + v6);
  v33 = (v30 + v8);
  v34 = vsubq_s16(*v32, *v33);
  v35 = (v32 + v6);
  v36 = (v33 + v8);
  v37 = vsubq_s16(*v35, *v36);
  v38 = (v35 + v6);
  v39 = (v36 + v8);
  v40 = vsubq_s16(*v38, *v39);
  v41 = (v38 + v6);
  v42 = (v39 + v8);
  v43 = vsubq_s16(*v41, *v42);
  v44 = (v41 + v6);
  v45 = (v42 + v8);
  v46 = vsubq_s16(*v44, *v45);
  v47 = (v44 + v6);
  v48 = (v45 + v8);
  v49 = vsubq_s16(*v47, *v48);
  v50 = vsubq_s16(*(v47 + v6), *(v48 + v8));
  v51 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v10), v5), v13), v16), v19), v22), v25), v28), v31), v34), v37), v40), v43), v46), v49), v50));
  v52 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v10.i8, *v10.i8), v10, v10), *v13.i8, *v13.i8), v13, v13), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v22.i8, *v22.i8), v22, v22), *v25.i8, *v25.i8), v25, v25), *v28.i8, *v28.i8), v28, v28), *v31.i8, *v31.i8), v31, v31), *v34.i8, *v34.i8), v34, v34), *v37.i8, *v37.i8), v37, v37), *v40.i8, *v40.i8), v40, v40), *v43.i8, *v43.i8), v43, v43), *v46.i8, *v46.i8), v46, v46), *v49.i8, *v49.i8), v49, v49), *v50.i8, *v50.i8), v50, v50));
  *a5 = (v52 + 128) >> 8;
  v53 = ((v52 + 128) >> 8) - (((((v51 << 28) + 0x80000000) >> 32) * (((v51 << 28) + 0x80000000) >> 32)) >> 7);
  return v53 & ~(v53 >> 63);
}

uint64_t vpx_highbd_12_variance16x8_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = vsubq_s16(*(2 * a1), *(2 * a3));
  v6 = vsubq_s16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
  v7 = 2 * a2;
  v8 = (2 * a1 + v7);
  v9 = 2 * a4;
  v10 = (2 * a3 + v9);
  v11 = vsubq_s16(*v8, *v10);
  v12 = vsubq_s16(v8[1], v10[1]);
  v13 = (v8 + v7);
  v14 = (v10 + v9);
  v15 = vsubq_s16(*v13, *v14);
  v16 = vsubq_s16(v13[1], v14[1]);
  v17 = (v13 + v7);
  v18 = (v14 + v9);
  v19 = vsubq_s16(*v17, *v18);
  v20 = vsubq_s16(v17[1], v18[1]);
  v21 = (v17 + v7);
  v22 = (v18 + v9);
  v23 = vsubq_s16(*v21, *v22);
  v24 = vsubq_s16(v21[1], v22[1]);
  v25 = (v21 + v7);
  v26 = (v22 + v9);
  v27 = vsubq_s16(*v25, *v26);
  v28 = vsubq_s16(v25[1], v26[1]);
  v29 = (v25 + v7);
  v30 = (v26 + v9);
  v31 = vsubq_s16(*v29, *v30);
  v32 = vsubq_s16(v29[1], v30[1]);
  v33 = (v29 + v7);
  v34 = (v30 + v9);
  v35 = vsubq_s16(*v33, *v34);
  v36 = vsubq_s16(v33[1], v34[1]);
  v37 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v6), v5), v11), v12), v15), v16), v19), v20), v23), v24), v27), v28), v31), v32), v35), v36));
  v38 = vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v5.i8, *v5.i8), v5, v5), *v6.i8, *v6.i8), v6, v6), *v11.i8, *v11.i8), v11, v11), *v12.i8, *v12.i8), v12, v12), *v15.i8, *v15.i8), v15, v15), *v16.i8, *v16.i8), v16, v16), *v19.i8, *v19.i8), v19, v19), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v24.i8, *v24.i8), v24, v24), *v27.i8, *v27.i8), v27, v27), *v28.i8, *v28.i8), v28, v28), *v31.i8, *v31.i8), v31, v31), *v32.i8, *v32.i8), v32, v32), *v35.i8, *v35.i8), v35, v35), *v36.i8, *v36.i8), v36, v36));
  *a5 = (v38 + 128) >> 8;
  v39 = ((v38 + 128) >> 8) - (((((v37 << 28) + 0x80000000) >> 32) * (((v37 << 28) + 0x80000000) >> 32)) >> 7);
  return v39 & ~(v39 >> 63);
}

uint64_t vpx_highbd_12_variance16x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a3 + 16);
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = -16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v6[-1], v5[-1]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(*v6, *v5);
    v10 = vpadalq_s16(v12, v15);
    v7 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v9 = vmlal_high_s16(v14, v15, v15);
    v5 = (v5 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (!__CFADD__(v8++, 1));
  v17 = vaddvq_s32(v10);
  v18 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 8);
  return v19 & ~(v19 >> 63);
}

uint64_t vpx_highbd_12_variance16x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a3 + 16);
  v6 = (2 * a1 + 16);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v6[-1], v5[-1]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(*v6, *v5);
    v10 = vpadalq_s16(v12, v15);
    v7 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v9 = vmlal_high_s16(v14, v15, v15);
    v5 = (v5 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (!__CFADD__(v8++, 1));
  v17 = vaddvq_s32(v10);
  v18 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 9);
  return v19 & ~(v19 >> 63);
}

uint64_t vpx_highbd_12_variance32x16_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -16;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v26 + 128) >> 8;
  v27 = ((v26 + 128) >> 8) - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 9);
  return v27 & ~(v27 >> 63);
}

uint64_t vpx_highbd_12_variance32x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1 + 32);
  v6 = (2 * a3 + 32);
  v7 = 0uLL;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsubq_s16(v5[-2], v6[-2]);
    v12 = vpadalq_s16(v10, v11);
    v13 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v14 = vmlal_high_s16(v9, v11, v11);
    v15 = vsubq_s16(v5[-1], v6[-1]);
    v16 = vpadalq_s16(v12, v15);
    v17 = vmlal_s16(v13, *v15.i8, *v15.i8);
    v18 = vmlal_high_s16(v14, v15, v15);
    v19 = vsubq_s16(*v5, *v6);
    v20 = vpadalq_s16(v16, v19);
    v21 = vmlal_s16(v17, *v19.i8, *v19.i8);
    v22 = vmlal_high_s16(v18, v19, v19);
    v23 = vsubq_s16(v5[1], v6[1]);
    v10 = vpadalq_s16(v20, v23);
    v7 = vmlal_s16(v21, *v23.i8, *v23.i8);
    v9 = vmlal_high_s16(v22, v23, v23);
    v5 = (v5 + 2 * a2);
    v6 = (v6 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  v25 = vaddvq_s32(v10);
  v26 = vaddlvq_u32(vaddq_s32(v9, v7));
  *a5 = (v26 + 128) >> 8;
  v27 = ((v26 + 128) >> 8) - (((((v25 << 28) + 0x80000000) >> 32) * (((v25 << 28) + 0x80000000) >> 32)) >> 10);
  return v27 & ~(v27 >> 63);
}

uint64_t vpx_highbd_12_variance32x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = vsubq_s16(*v6, *v7);
      v15 = vpadalq_s16(v8, v14);
      v16 = vmlal_s16(v11, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(v6[1], v7[1]);
      v19 = vpadalq_s16(v15, v18);
      v20 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v21 = vmlal_high_s16(v17, v18, v18);
      v22 = vsubq_s16(v6[2], v7[2]);
      v23 = vpadalq_s16(v19, v22);
      v24 = vmlal_s16(v20, *v22.i8, *v22.i8);
      v25 = vmlal_high_s16(v21, v22, v22);
      v26 = vsubq_s16(v6[3], v7[3]);
      v8 = vpadalq_s16(v23, v26);
      v11 = vmlal_s16(v24, *v26.i8, *v26.i8);
      v12 = vmlal_high_s16(v25, v26, v26);
      ++v13;
      v7 = (v7 + 2 * a4);
      v6 = (v6 + 2 * a2);
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 32;
  }

  while (v5 < 0x40);
  v27 = vaddvq_s32(v8);
  v28 = vaddvq_s64(v9);
  *a5 = (v28 + 128) >> 8;
  v29 = ((v28 + 128) >> 8) - (((((v27 << 28) + 0x80000000) >> 32) * (((v27 << 28) + 0x80000000) >> 32)) >> 11);
  return v29 & ~(v29 >> 63);
}

uint64_t vpx_highbd_12_variance64x32_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = vsubq_s16(*v6, *v7);
      v15 = vpadalq_s16(v8, v14);
      v16 = vmlal_s16(v11, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(v6[1], v7[1]);
      v19 = vpadalq_s16(v15, v18);
      v20 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v21 = vmlal_high_s16(v17, v18, v18);
      v22 = vsubq_s16(v6[2], v7[2]);
      v23 = vpadalq_s16(v19, v22);
      v24 = vmlal_s16(v20, *v22.i8, *v22.i8);
      v25 = vmlal_high_s16(v21, v22, v22);
      v26 = vsubq_s16(v6[3], v7[3]);
      v27 = vpadalq_s16(v23, v26);
      v28 = vmlal_s16(v24, *v26.i8, *v26.i8);
      v29 = vmlal_high_s16(v25, v26, v26);
      v30 = vsubq_s16(v6[4], v7[4]);
      v31 = vpadalq_s16(v27, v30);
      v32 = vmlal_s16(v28, *v30.i8, *v30.i8);
      v33 = vmlal_high_s16(v29, v30, v30);
      v34 = vsubq_s16(v6[5], v7[5]);
      v35 = vpadalq_s16(v31, v34);
      v36 = vmlal_s16(v32, *v34.i8, *v34.i8);
      v37 = vmlal_high_s16(v33, v34, v34);
      v38 = vsubq_s16(v6[6], v7[6]);
      v39 = vpadalq_s16(v35, v38);
      v40 = vmlal_s16(v36, *v38.i8, *v38.i8);
      v41 = vmlal_high_s16(v37, v38, v38);
      v42 = vsubq_s16(v6[7], v7[7]);
      v8 = vpadalq_s16(v39, v42);
      v11 = vmlal_s16(v40, *v42.i8, *v42.i8);
      v12 = vmlal_high_s16(v41, v42, v42);
      ++v13;
      v7 = (v7 + 2 * a4);
      v6 = (v6 + 2 * a2);
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 16;
  }

  while (v5 < 0x20);
  v43 = vaddvq_s32(v8);
  v44 = vaddvq_s64(v9);
  *a5 = (v44 + 128) >> 8;
  v45 = ((v44 + 128) >> 8) - (((((v43 << 28) + 0x80000000) >> 32) * (((v43 << 28) + 0x80000000) >> 32)) >> 11);
  return v45 & ~(v45 >> 63);
}

uint64_t vpx_highbd_12_variance64x64_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = vsubq_s16(*v6, *v7);
      v15 = vpadalq_s16(v8, v14);
      v16 = vmlal_s16(v11, *v14.i8, *v14.i8);
      v17 = vmlal_high_s16(v12, v14, v14);
      v18 = vsubq_s16(v6[1], v7[1]);
      v19 = vpadalq_s16(v15, v18);
      v20 = vmlal_s16(v16, *v18.i8, *v18.i8);
      v21 = vmlal_high_s16(v17, v18, v18);
      v22 = vsubq_s16(v6[2], v7[2]);
      v23 = vpadalq_s16(v19, v22);
      v24 = vmlal_s16(v20, *v22.i8, *v22.i8);
      v25 = vmlal_high_s16(v21, v22, v22);
      v26 = vsubq_s16(v6[3], v7[3]);
      v27 = vpadalq_s16(v23, v26);
      v28 = vmlal_s16(v24, *v26.i8, *v26.i8);
      v29 = vmlal_high_s16(v25, v26, v26);
      v30 = vsubq_s16(v6[4], v7[4]);
      v31 = vpadalq_s16(v27, v30);
      v32 = vmlal_s16(v28, *v30.i8, *v30.i8);
      v33 = vmlal_high_s16(v29, v30, v30);
      v34 = vsubq_s16(v6[5], v7[5]);
      v35 = vpadalq_s16(v31, v34);
      v36 = vmlal_s16(v32, *v34.i8, *v34.i8);
      v37 = vmlal_high_s16(v33, v34, v34);
      v38 = vsubq_s16(v6[6], v7[6]);
      v39 = vpadalq_s16(v35, v38);
      v40 = vmlal_s16(v36, *v38.i8, *v38.i8);
      v41 = vmlal_high_s16(v37, v38, v38);
      v42 = vsubq_s16(v6[7], v7[7]);
      v8 = vpadalq_s16(v39, v42);
      v11 = vmlal_s16(v40, *v42.i8, *v42.i8);
      v12 = vmlal_high_s16(v41, v42, v42);
      ++v13;
      v7 = (v7 + 2 * a4);
      v6 = (v6 + 2 * a2);
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 16;
  }

  while (v5 < 0x40);
  v43 = vaddvq_s32(v8);
  v44 = vaddvq_s64(v9);
  *a5 = (v44 + 128) >> 8;
  v45 = ((v44 + 128) >> 8) - (((((v43 << 28) + 0x80000000) >> 32) * (((v43 << 28) + 0x80000000) >> 32)) >> 12);
  return v45 & ~(v45 >> 63);
}

double vpx_highbd_8_get8x8var_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v6 = vsubq_s16(*(2 * a1), *(2 * a3));
  v7 = 2 * a2;
  v8 = (2 * a1 + v7);
  v9 = 2 * a4;
  v10 = (2 * a3 + v9);
  v11 = vsubq_s16(*v8, *v10);
  v12 = (v8 + v7);
  v13 = (v10 + v9);
  v14 = vsubq_s16(*v12, *v13);
  v15 = (v12 + v7);
  v16 = (v13 + v9);
  v17 = vsubq_s16(*v15, *v16);
  v18 = (v15 + v7);
  v19 = (v16 + v9);
  v20 = vsubq_s16(*v18, *v19);
  v21 = (v18 + v7);
  v22 = (v19 + v9);
  v23 = vsubq_s16(*v21, *v22);
  v24 = (v21 + v7);
  v25 = (v22 + v9);
  v26 = vsubq_s16(*v24, *v25);
  v27 = vsubq_s16(*(v24 + v7), *(v25 + v9));
  result = COERCE_DOUBLE(vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v6.i8, *v6.i8), v6, v6), *v11.i8, *v11.i8), v11, v11), *v14.i8, *v14.i8), v14, v14), *v17.i8, *v17.i8), v17, v17), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v26.i8, *v26.i8), v26, v26), *v27.i8, *v27.i8), v27, v27)));
  *a5 = LODWORD(result);
  *a6 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v11), v6), v14), v17), v20), v23), v26), v27));
  return result;
}

double vpx_highbd_10_get8x8var_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v6 = vsubq_s16(*(2 * a1), *(2 * a3));
  v7 = 2 * a2;
  v8 = (2 * a1 + v7);
  v9 = 2 * a4;
  v10 = (2 * a3 + v9);
  v11 = vsubq_s16(*v8, *v10);
  v12 = (v8 + v7);
  v13 = (v10 + v9);
  v14 = vsubq_s16(*v12, *v13);
  v15 = (v12 + v7);
  v16 = (v13 + v9);
  v17 = vsubq_s16(*v15, *v16);
  v18 = (v15 + v7);
  v19 = (v16 + v9);
  v20 = vsubq_s16(*v18, *v19);
  v21 = (v18 + v7);
  v22 = (v19 + v9);
  v23 = vsubq_s16(*v21, *v22);
  v24 = (v21 + v7);
  v25 = (v22 + v9);
  v26 = vsubq_s16(*v24, *v25);
  v27 = vsubq_s16(*(v24 + v7), *(v25 + v9));
  v28 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v11), v6), v14), v17), v20), v23), v26), v27));
  result = COERCE_DOUBLE(vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v6.i8, *v6.i8), v6, v6), *v11.i8, *v11.i8), v11, v11), *v14.i8, *v14.i8), v14, v14), *v17.i8, *v17.i8), v17, v17), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v26.i8, *v26.i8), v26, v26), *v27.i8, *v27.i8), v27, v27)));
  *a5 = (*&result + 8) >> 4;
  *a6 = (v28 + 2) >> 2;
  return result;
}

double vpx_highbd_12_get8x8var_neon(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v6 = vsubq_s16(*(2 * a1), *(2 * a3));
  v7 = 2 * a2;
  v8 = (2 * a1 + v7);
  v9 = 2 * a4;
  v10 = (2 * a3 + v9);
  v11 = vsubq_s16(*v8, *v10);
  v12 = (v8 + v7);
  v13 = (v10 + v9);
  v14 = vsubq_s16(*v12, *v13);
  v15 = (v12 + v7);
  v16 = (v13 + v9);
  v17 = vsubq_s16(*v15, *v16);
  v18 = (v15 + v7);
  v19 = (v16 + v9);
  v20 = vsubq_s16(*v18, *v19);
  v21 = (v18 + v7);
  v22 = (v19 + v9);
  v23 = vsubq_s16(*v21, *v22);
  v24 = (v21 + v7);
  v25 = (v22 + v9);
  v26 = vsubq_s16(*v24, *v25);
  v27 = vsubq_s16(*(v24 + v7), *(v25 + v9));
  v28 = vaddvq_s32(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpadalq_s16(vpaddlq_s16(v11), v6), v14), v17), v20), v23), v26), v27));
  result = COERCE_DOUBLE(vaddlvq_u32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v6.i8, *v6.i8), v6, v6), *v11.i8, *v11.i8), v11, v11), *v14.i8, *v14.i8), v14, v14), *v17.i8, *v17.i8), v17, v17), *v20.i8, *v20.i8), v20, v20), *v23.i8, *v23.i8), v23, v23), *v26.i8, *v26.i8), v26, v26), *v27.i8, *v27.i8), v27, v27)));
  *a5 = (*&result + 128) >> 8;
  *a6 = (v28 + 8) >> 4;
  return result;
}

uint64_t vpx_highbd_convolve8_horiz_neon(uint64_t result, uint64_t a2, uint16x4_t *a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, unsigned int a10, int a11, int a12)
{
  v12 = a11;
  if (a7 != 16)
  {
    return highbd_convolve_horiz(result, a2, a3, a4, a5, a6, a7, a10, a11, a12);
  }

  v13 = (a5 + 16 * a6);
  if (v13[7] | *v13 || v13[6] | v13[1])
  {
    v14 = *v13;
    v15 = result - 6;
    v16 = ~(-1 << a12);
    if (a10 == 4)
    {
      v17 = vdup_n_s16(v16);
      v18 = 2 * a2;
      v19 = 2 * a4;
      do
      {
        v20 = v15 + v18;
        v21 = *(v15 + 14);
        v22 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v15 + 2 * a2 + 2), *v14.i8, 1), *(v15 + 2 * a2), *v14.i8, 0), *(v15 + 2 * a2 + 4), *v14.i8, 2), *(v15 + 2 * a2 + 6), *v14.i8, 3);
        v23 = *(v15 + v18 + 8);
        v24 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v15 + 2), *v14.i8, 1), *v15, *v14.i8, 0), *(v15 + 4), *v14.i8, 2), *(v15 + 6), *v14.i8, 3), *(v15 + 8), v14, 4), *(v15 + 10), v14, 5), *(v15 + 12), v14, 6);
        v25 = *(v15 + v18 + 10);
        v26 = v15 + v18 + v18;
        v27 = v26 + v18;
        v28 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v22, v23, v14, 4), v25, v14, 5), *(v20 + 12), v14, 6), *(v20 + 14), v14, 7);
        v29 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v26 + 2), *v14.i8, 1), *v26, *v14.i8, 0), *(v26 + 4), *v14.i8, 2), *(v26 + 6), *v14.i8, 3), *(v26 + 8), v14, 4), *(v26 + 10), v14, 5), *(v26 + 12), v14, 6), *(v26 + 14), v14, 7);
        v30 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v26 + v18 + 2), *v14.i8, 1), *(v26 + 2 * a2), *v14.i8, 0), *(v26 + v18 + 4), *v14.i8, 2), *(v26 + v18 + 6), *v14.i8, 3), *(v26 + v18 + 8), v14, 4), *(v26 + v18 + 10), v14, 5), *(v26 + v18 + 12), v14, 6), *(v26 + v18 + 14), v14, 7);
        *a3 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v24, v21, v14, 7), 7uLL), v17);
        *(a3 + 2 * a4) = vmin_u16(vqrshrun_n_s32(v28, 7uLL), v17);
        v31 = (a3 + v19 + v19);
        *v31 = vmin_u16(vqrshrun_n_s32(v29, 7uLL), v17);
        v32 = (v31 + v19);
        *v32 = vmin_u16(vqrshrun_n_s32(v30, 7uLL), v17);
        v15 = v27 + v18;
        a3 = (v32 + v19);
        v12 -= 4;
      }

      while (v12);
    }

    else
    {
      v33 = 8 * a4;
      v34 = vdupq_n_s16(v16);
      v35 = a3 + 6 * a4;
      v36 = a3 + 4 * a4;
      v37 = 2 * a2;
      v38 = a3 + 2 * a4;
      do
      {
        v39 = 0;
        v40 = a10;
        do
        {
          v41 = *(v15 + v39);
          v42 = *(v15 + v39 + 2);
          v43 = *(v15 + v39 + 4);
          v44 = *(v15 + v39 + 6);
          v45 = *(v15 + v39 + 8);
          v46 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v14.i8, 1), *v41.i8, *v14.i8, 0);
          v47 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v14.i8, 1), v41, *v14.i8, 0);
          v48 = *(v15 + v39 + 10);
          v49 = vmlal_lane_s16(v46, *v43.i8, *v14.i8, 2);
          v50 = vmlal_high_lane_s16(v47, v43, *v14.i8, 2);
          v51 = *(v15 + v39 + 12);
          v52 = vmlal_lane_s16(v49, *v44.i8, *v14.i8, 3);
          v53 = vmlal_high_lane_s16(v50, v44, *v14.i8, 3);
          v54 = *(v15 + v39 + 14);
          v55 = v15 + v39 + v37;
          v56 = vmlal_laneq_s16(vmlal_laneq_s16(v52, *v45.i8, v14, 4), *v48.i8, v14, 5);
          v57 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v53, v45, v14, 4), v48, v14, 5);
          v58 = *(v55 + 2);
          v59 = vmlal_laneq_s16(v56, *v51.i8, v14, 6);
          v60 = vmlal_high_laneq_s16(v57, v51, v14, 6);
          v61 = *(v55 + 4);
          v62 = vmlal_laneq_s16(v59, *v54.i8, v14, 7);
          v63 = vmlal_high_laneq_s16(v60, v54, v14, 7);
          v64 = *(v55 + 6);
          v65 = vqrshrun_high_n_s32(vqrshrun_n_s32(v62, 7uLL), v63, 7uLL);
          v66 = *(v55 + 8);
          v67 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v58.i8, *v14.i8, 1), *v55, *v14.i8, 0), *v61.i8, *v14.i8, 2);
          v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v58, *v14.i8, 1), *v55, *v14.i8, 0), v61, *v14.i8, 2);
          v69 = *(v55 + 10);
          v70 = vmlal_lane_s16(v67, *v64.i8, *v14.i8, 3);
          v71 = vmlal_high_lane_s16(v68, v64, *v14.i8, 3);
          v72 = *(v55 + 12);
          v73 = vmlal_laneq_s16(v70, *v66.i8, v14, 4);
          v74 = vmlal_high_laneq_s16(v71, v66, v14, 4);
          v75 = *(v55 + 14);
          v76 = v55 + v37;
          v77 = *(v76 + 2);
          v78 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v73, *v69.i8, v14, 5), *v72.i8, v14, 6), *v75.i8, v14, 7);
          v79 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v74, v69, v14, 5), v72, v14, 6), v75, v14, 7);
          v80 = *(v76 + 4);
          v81 = vqrshrun_high_n_s32(vqrshrun_n_s32(v78, 7uLL), v79, 7uLL);
          v82 = *(v76 + 6);
          v83 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, *v14.i8, 1), *v76, *v14.i8, 0), *v80.i8, *v14.i8, 2);
          v84 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v77, *v14.i8, 1), *v76, *v14.i8, 0), v80, *v14.i8, 2);
          v85 = *(v76 + 8);
          v86 = vmlal_lane_s16(v83, *v82.i8, *v14.i8, 3);
          v87 = vmlal_high_lane_s16(v84, v82, *v14.i8, 3);
          v88 = *(v76 + 10);
          v89 = vmlal_laneq_s16(v86, *v85.i8, v14, 4);
          v90 = vmlal_high_laneq_s16(v87, v85, v14, 4);
          v91 = *(v76 + 12);
          v92 = vmlal_laneq_s16(v89, *v88.i8, v14, 5);
          v93 = vmlal_high_laneq_s16(v90, v88, v14, 5);
          v94 = *(v76 + 14);
          result = v76 + v37;
          v95 = vmlal_laneq_s16(vmlal_laneq_s16(v92, *v91.i8, v14, 6), *v94.i8, v14, 7);
          v96 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v93, v91, v14, 6), v94, v14, 7);
          v97 = *(result + 2);
          v98 = vqrshrun_high_n_s32(vqrshrun_n_s32(v95, 7uLL), v96, 7uLL);
          v99 = *(result + 4);
          v100 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v14.i8, 1), *result, *v14.i8, 0), *v99.i8, *v14.i8, 2);
          v101 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v14.i8, 1), *result, *v14.i8, 0), v99, *v14.i8, 2);
          v102 = *(result + 6);
          v103 = vmlal_lane_s16(v100, *v102.i8, *v14.i8, 3);
          v104 = vmlal_high_lane_s16(v101, v102, *v14.i8, 3);
          v105 = *(result + 8);
          v106 = vmlal_laneq_s16(v103, *v105.i8, v14, 4);
          v107 = vmlal_high_laneq_s16(v104, v105, v14, 4);
          v108 = *(result + 10);
          v109 = vmlal_laneq_s16(v106, *v108.i8, v14, 5);
          v110 = vmlal_high_laneq_s16(v107, v108, v14, 5);
          v111 = *(result + 12);
          v112 = vmlal_laneq_s16(v109, *v111.i8, v14, 6);
          v113 = vmlal_high_laneq_s16(v110, v111, v14, 6);
          v114 = *(result + 14);
          *a3[v39 / 8].i8 = vminq_u16(v65, v34);
          *&v38[v39] = vminq_u16(v81, v34);
          *&v36[v39] = vminq_u16(v98, v34);
          *&v35[v39] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v112, *v114.i8, v14, 7), 7uLL), vmlal_high_laneq_s16(v113, v114, v14, 7), 7uLL), v34);
          v39 += 16;
          v40 -= 8;
        }

        while (v40);
        v15 += 8 * a2;
        a3 = (a3 + v33);
        v35 += v33;
        v36 += v33;
        v38 += v33;
        v12 -= 4;
      }

      while (v12);
    }
  }

  else
  {
    v115 = *(v13 + 2);
    v116 = (result - 2);
    v117 = ~(-1 << a12);
    if (a10 == 4)
    {
      v118 = vdup_n_s16(v117);
      v119 = 2 * a2;
      v120 = 2 * a4;
      do
      {
        v121 = *v116;
        v122 = *(v116 + 2);
        v123 = *(v116 + 4);
        v124 = *(v116 + 6);
        v125 = &v116[v119];
        v126 = *v125;
        v127 = *(v125 + 2);
        v128 = *(v125 + 4);
        v129 = *(v125 + 6);
        v130 = &v125[v119];
        v131 = *v130;
        v132 = *(v130 + 2);
        v133 = *(v130 + 4);
        v134 = *(v130 + 6);
        v135 = &v130[v119];
        v136 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v122, v115, 1), v121, v115, 0), v123, v115, 2), v124, v115, 3), 7uLL), v118);
        v137 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v135 + 2), v115, 1), *v135, v115, 0), *(v135 + 4), v115, 2), *(v135 + 6), v115, 3), 7uLL), v118);
        *a3 = v136;
        *(a3 + 2 * a4) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v127, v115, 1), v126, v115, 0), v128, v115, 2), v129, v115, 3), 7uLL), v118);
        v138 = (a3 + v120 + v120);
        *v138 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v132, v115, 1), v131, v115, 0), v133, v115, 2), v134, v115, 3), 7uLL), v118);
        v139 = (v138 + v120);
        *v139 = v137;
        v116 = &v135[v119];
        a3 = (v139 + v120);
        v12 -= 4;
      }

      while (v12);
    }

    else
    {
      v140 = 8 * a4;
      v141 = vdupq_n_s16(v117);
      v142 = a3 + 6 * a4;
      v143 = a3 + 4 * a4;
      v144 = 2 * a2;
      v145 = a3 + 2 * a4;
      do
      {
        v146 = 0;
        v147 = a10;
        do
        {
          v148 = &v116[v146 + v144];
          v149 = *v148;
          v150 = *(v148 + 2);
          v151 = *(v148 + 4);
          v152 = *(v148 + 6);
          v153 = &v148[v144];
          v154 = *v153;
          v155 = *(v153 + 2);
          v156 = *(v153 + 4);
          v157 = *(v153 + 6);
          result = &v153[v144];
          v158 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(result + 2), v115, 1), *result, v115, 0), *(result + 4), v115, 2), *(result + 6), v115, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(result + 2), v115, 1), *result, v115, 0), *(result + 4), v115, 2), *(result + 6), v115, 3), 7uLL), v141);
          *a3[v146 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*&v116[v146 + 2], v115, 1), *&v116[v146], v115, 0), *&v116[v146 + 4], v115, 2), *&v116[v146 + 6], v115, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*&v116[v146 + 2], v115, 1), *&v116[v146], v115, 0), *&v116[v146 + 4], v115, 2), *&v116[v146 + 6], v115, 3), 7uLL), v141);
          *&v145[v146] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v150.i8, v115, 1), *v149.i8, v115, 0), *v151.i8, v115, 2), *v152.i8, v115, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v150, v115, 1), v149, v115, 0), v151, v115, 2), v152, v115, 3), 7uLL), v141);
          *&v143[v146] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v155.i8, v115, 1), *v154.i8, v115, 0), *v156.i8, v115, 2), *v157.i8, v115, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v155, v115, 1), v154, v115, 0), v156, v115, 2), v157, v115, 3), 7uLL), v141);
          *&v142[v146] = v158;
          v146 += 16;
          v147 -= 8;
        }

        while (v147);
        v116 += 8 * a2;
        a3 = (a3 + v140);
        v142 += v140;
        v143 += v140;
        v145 += v140;
        v12 -= 4;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t vpx_highbd_convolve8_avg_horiz_neon(uint64_t result, uint64_t a2, uint16x4_t *a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, unsigned int a10, int a11, int a12)
{
  v12 = a11;
  if (a7 != 16)
  {
    return vpx_highbd_convolve8_avg_horiz_c(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  v13 = *(a5 + 16 * a6);
  v14 = result - 6;
  v15 = ~(-1 << a12);
  v16 = 8 * a4;
  if (a10 == 4)
  {
    v17 = vdup_n_s16(v15);
    v18 = 2 * a2;
    do
    {
      v19 = *(v14 + 8);
      v20 = *(v14 + 10);
      v21 = *(v14 + 12);
      v22 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v14 + 2), *v13.i8, 1), *v14, *v13.i8, 0), *(v14 + 4), *v13.i8, 2), *(v14 + 6), *v13.i8, 3);
      v23 = *(v14 + 14);
      v24 = v14 + v18;
      v25 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v22, v19, v13, 4), v20, v13, 5), v21, v13, 6), v23, v13, 7);
      v26 = *(v24 + 10);
      v27 = *(v24 + 12);
      v28 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v24 + 2), *v13.i8, 1), *v24, *v13.i8, 0), *(v24 + 4), *v13.i8, 2), *(v24 + 6), *v13.i8, 3), *(v24 + 8), v13, 4);
      v29 = *(v24 + 14);
      v30 = v24 + v18;
      v31 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v28, v26, v13, 5), v27, v13, 6), v29, v13, 7);
      v32 = *(v30 + 12);
      v33 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v30 + 2), *v13.i8, 1), *v30, *v13.i8, 0), *(v30 + 4), *v13.i8, 2), *(v30 + 6), *v13.i8, 3), *(v30 + 8), v13, 4), *(v30 + 10), v13, 5);
      v34 = *(v30 + 14);
      v35 = v30 + v18;
      v36 = vmlal_laneq_s16(vmlal_laneq_s16(v33, v32, v13, 6), v34, v13, 7);
      v37 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v35 + 2), *v13.i8, 1), *v35, *v13.i8, 0), *(v35 + 4), *v13.i8, 2), *(v35 + 6), *v13.i8, 3), *(v35 + 8), v13, 4), *(v35 + 10), v13, 5), *(v35 + 12), v13, 6), *(v35 + 14), v13, 7);
      *v31.i8 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(v31, 7uLL), v17), *(a3 + 2 * a4));
      *v36.i8 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(v36, 7uLL), v17), *(a3 + 4 * a4));
      v38 = *(a3 + 6 * a4);
      *a3 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(v25, 7uLL), v17), *a3);
      *(a3 + 2 * a4) = *v31.i8;
      *(a3 + 4 * a4) = *v36.i8;
      *(a3 + 6 * a4) = vrhadd_u16(vmin_u16(vqrshrun_n_s32(v37, 7uLL), v17), v38);
      a3 = (a3 + v16);
      v14 = v35 + v18;
      v12 -= 4;
    }

    while (v12);
  }

  else
  {
    v39 = vdupq_n_s16(v15);
    v40 = 8 * a2;
    v41 = 4 * a4;
    v42 = 2 * a4;
    v43 = 6 * a4;
    v44 = 2 * a2;
    do
    {
      v45 = 0;
      LODWORD(result) = a10;
      v46 = a3;
      do
      {
        v47 = *(v14 + v45);
        v48 = *(v14 + v45 + 2);
        v49 = *(v14 + v45 + 4);
        v50 = *(v14 + v45 + 6);
        v51 = *(v14 + v45 + 8);
        v52 = *(v14 + v45 + 10);
        v53 = vmlal_lane_s16(vmull_lane_s16(*v48.i8, *v13.i8, 1), *v47.i8, *v13.i8, 0);
        v54 = vmlal_high_lane_s16(vmull_high_lane_s16(v48, *v13.i8, 1), v47, *v13.i8, 0);
        v55 = *(v14 + v45 + 12);
        v56 = vmlal_lane_s16(v53, *v49.i8, *v13.i8, 2);
        v57 = vmlal_high_lane_s16(v54, v49, *v13.i8, 2);
        v58 = *(v14 + v45 + 14);
        v59 = v14 + v45 + v44;
        v60 = vmlal_laneq_s16(vmlal_lane_s16(v56, *v50.i8, *v13.i8, 3), *v51.i8, v13, 4);
        v61 = vmlal_high_laneq_s16(vmlal_high_lane_s16(v57, v50, *v13.i8, 3), v51, v13, 4);
        v62 = *(v59 + 2);
        v63 = *(v59 + 4);
        v64 = vmlal_laneq_s16(vmlal_laneq_s16(v60, *v52.i8, v13, 5), *v55.i8, v13, 6);
        v65 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v61, v52, v13, 5), v55, v13, 6);
        v66 = *(v59 + 6);
        v67 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v13.i8, 1), *v59, *v13.i8, 0), *v63.i8, *v13.i8, 2);
        v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v13.i8, 1), *v59, *v13.i8, 0), v63, *v13.i8, 2);
        v69 = *(v59 + 8);
        v70 = vmlal_laneq_s16(v64, *v58.i8, v13, 7);
        v71 = vmlal_high_laneq_s16(v65, v58, v13, 7);
        v72 = *(v59 + 10);
        v73 = vmlal_lane_s16(v67, *v66.i8, *v13.i8, 3);
        v74 = vmlal_high_lane_s16(v68, v66, *v13.i8, 3);
        v75 = *(v59 + 12);
        v76 = vqrshrun_high_n_s32(vqrshrun_n_s32(v70, 7uLL), v71, 7uLL);
        v77 = *(v59 + 14);
        v78 = v59 + v44;
        v79 = vmlal_laneq_s16(vmlal_laneq_s16(v73, *v69.i8, v13, 4), *v72.i8, v13, 5);
        v80 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v74, v69, v13, 4), v72, v13, 5);
        v81 = *(v78 + 2);
        v82 = vmlal_laneq_s16(v79, *v75.i8, v13, 6);
        v83 = vmlal_high_laneq_s16(v80, v75, v13, 6);
        v84 = *(v78 + 4);
        v85 = vmlal_laneq_s16(v82, *v77.i8, v13, 7);
        v86 = vmlal_high_laneq_s16(v83, v77, v13, 7);
        v87 = *(v78 + 6);
        v88 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v81.i8, *v13.i8, 1), *v78, *v13.i8, 0), *v84.i8, *v13.i8, 2);
        v89 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v81, *v13.i8, 1), *v78, *v13.i8, 0), v84, *v13.i8, 2);
        v90 = *(v78 + 8);
        v91 = vmlal_lane_s16(v88, *v87.i8, *v13.i8, 3);
        v92 = vmlal_high_lane_s16(v89, v87, *v13.i8, 3);
        v93 = *(v78 + 10);
        v94 = vmlal_laneq_s16(v91, *v90.i8, v13, 4);
        v95 = vmlal_high_laneq_s16(v92, v90, v13, 4);
        v96 = *(v78 + 12);
        v97 = vmlal_laneq_s16(v94, *v93.i8, v13, 5);
        v98 = vmlal_high_laneq_s16(v95, v93, v13, 5);
        v99 = *(v78 + 14);
        v100 = v78 + v44;
        v101 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v97, *v96.i8, v13, 6), *v99.i8, v13, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v98, v96, v13, 6), v99, v13, 7), 7uLL);
        v102 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v100 + 2), *v13.i8, 1), *v100, *v13.i8, 0), *(v100 + 4), *v13.i8, 2), *(v100 + 6), *v13.i8, 3), *(v100 + 8), v13, 4), *(v100 + 10), v13, 5), *(v100 + 12), v13, 6), *(v100 + 14), v13, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v100 + 2), *v13.i8, 1), *v100, *v13.i8, 0), *(v100 + 4), *v13.i8, 2), *(v100 + 6), *v13.i8, 3), *(v100 + 8), v13, 4), *(v100 + 10), v13, 5), *(v100 + 12), v13, 6), *(v100 + 14), v13, 7), 7uLL);
        v103 = vrhaddq_u16(vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v85, 7uLL), v86, 7uLL), v39), *(v46 + v42));
        v104 = vrhaddq_u16(vminq_u16(v101, v39), *(v46 + v41));
        v105 = *(v46 + v43);
        *v46 = vrhaddq_u16(vminq_u16(v76, v39), *v46);
        *(v46 + v42) = v103;
        *(v46 + v41) = v104;
        *(v46++ + v43) = vrhaddq_u16(vminq_u16(v102, v39), v105);
        v45 += 16;
        result = (result - 8);
      }

      while (result);
      v14 += v40;
      a3 = (a3 + v16);
      v12 -= 4;
    }

    while (v12);
  }

  return result;
}

int16x4_t *vpx_highbd_convolve8_vert_neon(int16x4_t *result, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, unsigned int a11, int a12)
{
  v13 = a11;
  v14 = a10;
  if (a9 != 16)
  {
    return highbd_convolve_vert(result, a2, a3, a4, a5, a8, a9, a10, a11, a12);
  }

  v15 = (a5 + 16 * a8);
  if (v15[7] | *v15 || v15[6] | v15[1])
  {
    v16 = *v15;
    v17 = (result - 6 * a2);
    v18 = ~(-1 << a12);
    if (a10 == 4)
    {
      v19 = vdup_n_s16(v18);
      v20 = *v17;
      v21 = 2 * a2;
      v22 = (v17 + 2 * a2);
      v23 = *v22;
      v24 = (v22 + 2 * a2);
      v25 = *v24;
      v26 = (v24 + 2 * a2);
      v27 = *v26;
      v28 = (v26 + 2 * a2);
      v29 = *v28;
      v30 = (v28 + 2 * a2);
      v31 = *v30;
      v32 = *(v30 + 2 * a2);
      v33 = (v17 + 14 * a2);
      v34 = a4;
      do
      {
        v35 = vmlal_lane_s16(vmull_lane_s16(v23, *v16.i8, 1), v20, *v16.i8, 0);
        v20 = v29;
        v36 = vmlal_lane_s16(vmull_lane_s16(v27, *v16.i8, 1), v25, *v16.i8, 0);
        v37 = vmlal_lane_s16(vmlal_lane_s16(v35, v25, *v16.i8, 2), v27, *v16.i8, 3);
        v38 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v25, *v16.i8, 1), v23, *v16.i8, 0), v27, *v16.i8, 2);
        v39 = vmlal_lane_s16(vmull_lane_s16(v29, *v16.i8, 1), v27, *v16.i8, 0);
        v27 = *v33;
        v40 = (v33 + v21);
        v41 = vmlal_laneq_s16(v37, v29, v16, 4);
        v42 = vmlal_lane_s16(v38, v29, *v16.i8, 3);
        v43 = vmlal_lane_s16(v36, v29, *v16.i8, 2);
        v29 = *v40;
        v44 = (v40 + v21);
        v45 = vmlal_laneq_s16(v41, v31, v16, 5);
        v46 = vmlal_laneq_s16(v42, v31, v16, 4);
        v47 = vmlal_lane_s16(v43, v31, *v16.i8, 3);
        v48 = vmlal_lane_s16(v39, v31, *v16.i8, 2);
        v23 = v31;
        v31 = *v44;
        v49 = (v44 + v21);
        v50 = vmlal_laneq_s16(v45, v32, v16, 6);
        v51 = vmlal_laneq_s16(v46, v32, v16, 5);
        v52 = vmlal_laneq_s16(v47, v32, v16, 4);
        v53 = vmlal_lane_s16(v48, v32, *v16.i8, 3);
        v25 = v32;
        v32 = *v49;
        *v53.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v53, v27, v16, 4), v29, v16, 5), v31, v16, 6), *v49, v16, 7), 7uLL);
        *a3 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v50, v27, v16, 7), 7uLL), v19);
        *&a3[a4] = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v51, v27, v16, 6), v29, v16, 7), 7uLL), v19);
        v54 = &a3[v34 + v34];
        *v54 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v52, v27, v16, 5), v29, v16, 6), v31, v16, 7), 7uLL), v19);
        v55 = (v54 + v34 * 2);
        *v55 = vmin_u16(*v53.i8, v19);
        v33 = (v49 + v21);
        a3 = (v55 + v34 * 2);
        v13 -= 4;
      }

      while (v13);
    }

    else
    {
      v56 = vdupq_n_s16(v18);
      v57 = 2 * a2;
      v58 = 2 * a4;
      do
      {
        v59 = *v17->i8;
        v60 = *&v17->i8[2 * a2];
        v61 = (v17 + v57 + v57);
        v62 = *v61;
        v63 = (v61 + v57);
        v64 = *v63;
        v65 = (v63 + v57);
        v66 = *v65;
        v67 = (v65 + v57);
        v68 = *v67;
        v69 = *(v67 + 2 * a2);
        v70 = (v17 + 14 * a2);
        v71 = a3;
        v72 = a11;
        do
        {
          v73 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v60.i8, *v16.i8, 1), *v59.i8, *v16.i8, 0), *v62.i8, *v16.i8, 2), *v64.i8, *v16.i8, 3);
          v74 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v60, *v16.i8, 1), v59, *v16.i8, 0), v62, *v16.i8, 2), v64, *v16.i8, 3);
          v75 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v16.i8, 1), *v60.i8, *v16.i8, 0), *v64.i8, *v16.i8, 2);
          v76 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v16.i8, 1), v60, *v16.i8, 0), v64, *v16.i8, 2);
          v77 = vmull_lane_s16(*v64.i8, *v16.i8, 1);
          v78 = vmull_high_lane_s16(v64, *v16.i8, 1);
          v79 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v16.i8, 1), *v64.i8, *v16.i8, 0);
          v80 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v16.i8, 1), v64, *v16.i8, 0);
          v64 = *v70;
          v81 = (v70 + v57);
          v82 = vmlal_laneq_s16(v73, *v66.i8, v16, 4);
          v83 = vmlal_high_laneq_s16(v74, v66, v16, 4);
          v84 = vmlal_lane_s16(v75, *v66.i8, *v16.i8, 3);
          v85 = vmlal_high_lane_s16(v76, v66, *v16.i8, 3);
          v86 = vmlal_lane_s16(vmlal_lane_s16(v77, *v62.i8, *v16.i8, 0), *v66.i8, *v16.i8, 2);
          v87 = vmlal_high_lane_s16(vmlal_high_lane_s16(v78, v62, *v16.i8, 0), v66, *v16.i8, 2);
          v59 = v66;
          v66 = *v81;
          v88 = (v81 + v57);
          v89 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v82, *v68.i8, v16, 5), *v69.i8, v16, 6), *v64.i8, v16, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v83, v68, v16, 5), v69, v16, 6), v64, v16, 7), 7uLL);
          v90 = vmlal_laneq_s16(v84, *v68.i8, v16, 4);
          v91 = vmlal_high_laneq_s16(v85, v68, v16, 4);
          v92 = vmlal_lane_s16(v86, *v68.i8, *v16.i8, 3);
          v93 = vmlal_high_lane_s16(v87, v68, *v16.i8, 3);
          v94 = vmlal_lane_s16(v79, *v68.i8, *v16.i8, 2);
          v95 = vmlal_high_lane_s16(v80, v68, *v16.i8, 2);
          v60 = v68;
          v68 = *v88;
          v96 = &v88->i8[v57];
          v97 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v90, *v69.i8, v16, 5), *v64.i8, v16, 6), *v66.i8, v16, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v91, v69, v16, 5), v64, v16, 6), v66, v16, 7), 7uLL);
          v98 = vmlal_laneq_s16(v92, *v69.i8, v16, 4);
          v99 = vmlal_high_laneq_s16(v93, v69, v16, 4);
          v100 = vmlal_lane_s16(v94, *v69.i8, *v16.i8, 3);
          v101 = vmlal_high_lane_s16(v95, v69, *v16.i8, 3);
          v62 = v69;
          v69 = *v96->i8;
          v102 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v100, *v64.i8, v16, 4), *v66.i8, v16, 5), *v68.i8, v16, 6), *v96, v16, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v101, v64, v16, 4), v66, v16, 5), v68, v16, 6), *v96->i8, v16, 7), 7uLL);
          *v71 = vminq_u16(v89, v56);
          v103 = (v71 + v58);
          *v103 = vminq_u16(v97, v56);
          v104 = (v103 + v58);
          *v104 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v98, *v64.i8, v16, 5), *v66.i8, v16, 6), *v68.i8, v16, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v99, v64, v16, 5), v66, v16, 6), v68, v16, 7), 7uLL), v56);
          v105 = (v104 + v58);
          *v105 = vminq_u16(v102, v56);
          v70 = (v96 + v57);
          v71 = (v105 + v58);
          v72 -= 4;
        }

        while (v72);
        v17 += 2;
        a3 += 8;
        v14 -= 8;
      }

      while (v14);
    }
  }

  else
  {
    v106 = *(v15 + 2);
    v107 = (result - 2 * a2);
    v108 = ~(-1 << a12);
    if (a10 == 4)
    {
      v109 = vdup_n_s16(v108);
      v110 = *v107;
      v111 = *result;
      v112 = 2 * a2;
      v113 = *(result + 2 * a2);
      v114 = (v107 + 6 * a2);
      v115 = a4;
      do
      {
        v116 = *v114;
        v117 = (v114 + v112);
        v118 = vmlal_lane_s16(vmull_lane_s16(v111, v106, 1), v110, v106, 0);
        v110 = *v117;
        v119 = (v117 + v112);
        v120 = vmlal_lane_s16(vmull_lane_s16(v113, v106, 1), v111, v106, 0);
        v111 = *v119;
        v121 = (v119 + v112);
        v122 = vmlal_lane_s16(v118, v113, v106, 2);
        v123 = vmlal_lane_s16(vmull_lane_s16(v116, v106, 1), v113, v106, 0);
        v113 = *v121;
        *v122.i8 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v122, v116, v106, 3), 7uLL), v109);
        *v120.i8 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v120, v116, v106, 2), v110, v106, 3), 7uLL), v109);
        v124 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v110, v106, 1), v116, v106, 0), v111, v106, 2), *v121, v106, 3), 7uLL), v109);
        *a3 = v122.i64[0];
        *&a3[a4] = v120.i64[0];
        v125 = &a3[v115 + v115];
        *v125 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v123, v110, v106, 2), v111, v106, 3), 7uLL), v109);
        v126 = (v125 + v115 * 2);
        v114 = (v121 + v112);
        *v126 = v124;
        a3 = (v126 + v115 * 2);
        v13 -= 4;
      }

      while (v13);
    }

    else
    {
      v127 = vdupq_n_s16(v108);
      v128 = 2 * a2;
      v129 = 2 * a4;
      do
      {
        v130 = *v107->i8;
        v131 = *&v107->i8[2 * a2];
        v132 = *&v107->i8[2 * a2 + 2 * a2];
        v133 = (v107 + 6 * a2);
        v134 = a3;
        v135 = a11;
        do
        {
          v136 = *v133;
          v137 = (v133 + v128);
          v138 = vmlal_lane_s16(vmull_lane_s16(*v131.i8, v106, 1), *v130.i8, v106, 0);
          v139 = vmlal_high_lane_s16(vmull_high_lane_s16(v131, v106, 1), v130, v106, 0);
          v130 = *v137;
          v140 = (v137 + v128);
          v141 = vmlal_lane_s16(vmull_lane_s16(*v132.i8, v106, 1), *v131.i8, v106, 0);
          v142 = vmlal_high_lane_s16(vmull_high_lane_s16(v132, v106, 1), v131, v106, 0);
          v131 = *v140;
          v143 = &v140->i8[v128];
          v144 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v138, *v132.i8, v106, 2), *v136.i8, v106, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v139, v132, v106, 2), v136, v106, 3), 7uLL);
          v145 = vmlal_lane_s16(vmull_lane_s16(*v136.i8, v106, 1), *v132.i8, v106, 0);
          v146 = vmlal_high_lane_s16(vmull_high_lane_s16(v136, v106, 1), v132, v106, 0);
          v132 = *v143->i8;
          v147 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v141, *v136.i8, v106, 2), *v130.i8, v106, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v142, v136, v106, 2), v130, v106, 3), 7uLL), v127);
          v148 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v130.i8, v106, 1), *v136.i8, v106, 0), *v131.i8, v106, 2), *v143, v106, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v130, v106, 1), v136, v106, 0), v131, v106, 2), *v143->i8, v106, 3), 7uLL), v127);
          *v134 = vminq_u16(v144, v127);
          v149 = (v134 + v129);
          *v149 = v147;
          v150 = (v149 + v129);
          *v150 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v145, *v130.i8, v106, 2), *v131.i8, v106, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v146, v130, v106, 2), v131, v106, 3), 7uLL), v127);
          v151 = (v150 + v129);
          v133 = (v143 + v128);
          *v151 = v148;
          v134 = (v151 + v129);
          v135 -= 4;
        }

        while (v135);
        v107 += 2;
        a3 += 8;
        v14 -= 8;
      }

      while (v14);
    }
  }

  return result;
}

uint16x8_t *vpx_highbd_convolve8_avg_vert_neon(uint16x8_t *result, uint64_t a2, uint16x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11, int a12)
{
  v12 = a11;
  v13 = a10;
  if (a9 != 16)
  {
    return vpx_highbd_convolve8_avg_vert_c(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  v14 = *(a5 + 16 * a8);
  v15 = (result - 6 * a2);
  v16 = ~(-1 << a12);
  if (a10 == 4)
  {
    v17 = vdup_n_s16(v16);
    v18 = *v15;
    v19 = 2 * a2;
    v20 = (v15 + 2 * a2);
    v21 = *v20;
    v22 = (v20 + 2 * a2);
    v23 = *v22;
    v24 = (v22 + 2 * a2);
    v25 = *v24;
    v26 = (v24 + 2 * a2);
    v27 = *v26;
    v28 = (v26 + 2 * a2);
    v29 = *v28;
    v30 = *(v28 + 2 * a2);
    v31 = (v15 + 14 * a2);
    do
    {
      v32 = vmlal_lane_s16(vmull_lane_s16(v25, *v14.i8, 1), v23, *v14.i8, 0);
      v33 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v21, *v14.i8, 1), v18, *v14.i8, 0), v23, *v14.i8, 2), v25, *v14.i8, 3);
      v34 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v23, *v14.i8, 1), v21, *v14.i8, 0), v25, *v14.i8, 2);
      v35 = vmlal_lane_s16(vmull_lane_s16(v27, *v14.i8, 1), v25, *v14.i8, 0);
      v25 = *v31;
      v36 = (v31 + v19);
      v37 = vmlal_laneq_s16(v33, v27, v14, 4);
      v38 = vmlal_lane_s16(v34, v27, *v14.i8, 3);
      v39 = vmlal_lane_s16(v32, v27, *v14.i8, 2);
      v18 = v27;
      v27 = *v36;
      v40 = (v36 + v19);
      v41 = vmlal_laneq_s16(v37, v29, v14, 5);
      v42 = vmlal_laneq_s16(v38, v29, v14, 4);
      v43 = vmlal_lane_s16(v39, v29, *v14.i8, 3);
      v44 = vmlal_lane_s16(v35, v29, *v14.i8, 2);
      v21 = v29;
      v29 = *v40;
      v45 = (v40 + v19);
      v46 = vmlal_laneq_s16(v41, v30, v14, 6);
      v47 = vmlal_laneq_s16(v42, v30, v14, 5);
      v48 = vmlal_laneq_s16(v43, v30, v14, 4);
      v49 = vmlal_lane_s16(v44, v30, *v14.i8, 3);
      v23 = v30;
      v30 = *v45;
      *v47.i8 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v47, v25, v14, 6), v27, v14, 7), 7uLL), v17), *(a3 + 2 * a4));
      *v48.i8 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v48, v25, v14, 5), v27, v14, 6), v29, v14, 7), 7uLL), v17), *(a3 + 4 * a4));
      *v49.i8 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v49, v25, v14, 4), v27, v14, 5), v29, v14, 6), *v45, v14, 7), 7uLL), v17), *(a3 + 6 * a4));
      *a3 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v46, v25, v14, 7), 7uLL), v17), *a3);
      *(a3 + 2 * a4) = *v47.i8;
      *(a3 + 4 * a4) = *v48.i8;
      *(a3 + 6 * a4) = *v49.i8;
      a3 += a4;
      v31 = (v45 + v19);
      v12 -= 4;
    }

    while (v12);
  }

  else
  {
    v50 = vdupq_n_s16(v16);
    v51 = 2 * a2;
    v52 = 14 * a2;
    do
    {
      v53 = *v15->i8;
      v54 = *&v15->i8[v51];
      v55 = (v15 + v51 + v51);
      v56 = *v55;
      v57 = (v55 + v51);
      v58 = *v57;
      v59 = (v57 + v51);
      v60 = *v59;
      v61 = (v59 + v51);
      v62 = *v61;
      v63 = *(v61 + v51);
      v64 = (v15 + v52);
      v65 = a11;
      result = a3;
      do
      {
        v66 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v54.i8, *v14.i8, 1), *v53.i8, *v14.i8, 0), *v56.i8, *v14.i8, 2), *v58.i8, *v14.i8, 3);
        v67 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v14.i8, 1), *v54.i8, *v14.i8, 0), *v58.i8, *v14.i8, 2);
        v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v14.i8, 1), v54, *v14.i8, 0), v58, *v14.i8, 2);
        v69 = vmull_lane_s16(*v58.i8, *v14.i8, 1);
        v70 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v54, *v14.i8, 1), v53, *v14.i8, 0), v56, *v14.i8, 2), v58, *v14.i8, 3);
        v71 = vmull_high_lane_s16(v58, *v14.i8, 1);
        v72 = vmlal_lane_s16(vmull_lane_s16(*v60.i8, *v14.i8, 1), *v58.i8, *v14.i8, 0);
        v73 = vmlal_high_lane_s16(vmull_high_lane_s16(v60, *v14.i8, 1), v58, *v14.i8, 0);
        v58 = *v64;
        v74 = (v64 + v51);
        v75 = vmlal_laneq_s16(v66, *v60.i8, v14, 4);
        v76 = vmlal_lane_s16(v67, *v60.i8, *v14.i8, 3);
        v77 = vmlal_high_lane_s16(v68, v60, *v14.i8, 3);
        v78 = vmlal_high_laneq_s16(v70, v60, v14, 4);
        v79 = vmlal_lane_s16(vmlal_lane_s16(v69, *v56.i8, *v14.i8, 0), *v60.i8, *v14.i8, 2);
        v80 = vmlal_high_lane_s16(vmlal_high_lane_s16(v71, v56, *v14.i8, 0), v60, *v14.i8, 2);
        v53 = v60;
        v60 = *v74;
        v81 = vmlal_laneq_s16(v75, *v62.i8, v14, 5);
        v82 = vmlal_laneq_s16(v76, *v62.i8, v14, 4);
        v83 = vmlal_high_laneq_s16(v77, v62, v14, 4);
        v84 = vmlal_lane_s16(v79, *v62.i8, *v14.i8, 3);
        v85 = vmlal_high_lane_s16(v80, v62, *v14.i8, 3);
        v86 = vmlal_high_laneq_s16(v78, v62, v14, 5);
        v87 = vmlal_lane_s16(v72, *v62.i8, *v14.i8, 2);
        v88 = vmlal_high_lane_s16(v73, v62, *v14.i8, 2);
        v54 = v62;
        v62 = *(v74 + v51);
        v89 = &v74->i8[v51 + v51];
        v90 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v81, *v63.i8, v14, 6), *v58.i8, v14, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v86, v63, v14, 6), v58, v14, 7), 7uLL);
        v91 = vmlal_laneq_s16(v84, *v63.i8, v14, 4);
        v92 = vmlal_high_laneq_s16(v85, v63, v14, 4);
        v93 = vmlal_lane_s16(v87, *v63.i8, *v14.i8, 3);
        v94 = vmlal_high_lane_s16(v88, v63, *v14.i8, 3);
        v56 = v63;
        v95 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v82, *v63.i8, v14, 5), *v58.i8, v14, 6), *v60.i8, v14, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v83, v63, v14, 5), v58, v14, 6), v60, v14, 7), 7uLL);
        v63 = *v89->i8;
        v96 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v93, *v58.i8, v14, 4), *v60.i8, v14, 5), *v62.i8, v14, 6), *v89, v14, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v94, v58, v14, 4), v60, v14, 5), v62, v14, 6), *v89->i8, v14, 7), 7uLL), v50);
        v97 = vrhaddq_u16(vminq_u16(v95, v50), *(result + 2 * a4));
        v98 = vrhaddq_u16(vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v91, *v58.i8, v14, 5), *v60.i8, v14, 6), *v62.i8, v14, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v92, v58, v14, 5), v60, v14, 6), v62, v14, 7), 7uLL), v50), *(result + 4 * a4));
        v99 = *(result + 6 * a4);
        *result = vrhaddq_u16(vminq_u16(v90, v50), *result);
        *(result + 2 * a4) = v97;
        *(result + 4 * a4) = v98;
        *(result + 6 * a4) = vrhaddq_u16(v96, v99);
        result = (result + 8 * a4);
        v64 = (v89 + v51);
        v65 -= 4;
      }

      while (v65);
      v15 += 2;
      a3 += 2;
      v13 -= 8;
    }

    while (v13);
  }

  return result;
}

uint64_t vpx_highbd_convolve8_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v20 = a11;
  v21 = a10;
  v355[2112] = *MEMORY[0x277D85DE8];
  if (v18 != 16 || a9 != 16)
  {
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v28 = v19;
    highbd_convolve_horiz(result - 6 * v13, v13, v354, 64, v16, v17, v18, a10, ((v19 + (a11 - 1) * a9) >> 4) + 8, a12);
    return highbd_convolve_vert(v355, 64, v25, v26, v27, v28, a9, a10, a11, a12);
  }

  v22 = (v16 + 16 * v17);
  if (!(v22[7] | *v22))
  {
    v23 = (v22[6] | v22[1]) == 0;
    v24 = (v16 + 16 * v19);
    if (!(v24[7] | *v24))
    {
      goto LABEL_8;
    }

LABEL_9:
    v29 = 3 * v13;
LABEL_10:
    if (v23)
    {
      v30 = -1;
    }

    else
    {
      v30 = -3;
    }

    v31 = *v22;
    v32 = *v24;
    v33 = result + 2 * v30 - 2 * v29;
    v34 = ~(-1 << a12);
    if (a10 == 4)
    {
      v35 = vdup_n_s16(v34);
      v36 = 2 * v13;
      v37 = v33 + 2 * v13;
      v38 = *(v37 + 4);
      v39 = *(v37 + 6);
      v40 = *(v37 + 8);
      v41 = *(v37 + 10);
      v42 = *(v37 + 12);
      v43 = vmlal_lane_s16(vmull_lane_s16(*(v37 + 2), *v31.i8, 1), *v37, *v31.i8, 0);
      v44 = *(v37 + 14);
      v45 = v33 + 4 * v13;
      v46 = *(v45 + 6);
      v47 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v43, v38, *v31.i8, 2), v39, *v31.i8, 3), v40, v31, 4), v41, v31, 5), v42, v31, 6);
      v48 = *(v45 + 8);
      v49 = vmlal_laneq_s16(v47, v44, v31, 7);
      v50 = *(v45 + 10);
      v51 = *(v45 + 12);
      v52 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v45 + 2), *v31.i8, 1), *v45, *v31.i8, 0), *(v45 + 4), *v31.i8, 2);
      v53 = *(v45 + 14);
      v54 = v33 + 6 * v13;
      v55 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v52, v46, *v31.i8, 3), v48, v31, 4), v50, v31, 5), v51, v31, 6), v53, v31, 7);
      v56 = *(v54 + 8);
      v57 = *(v54 + 10);
      v58 = *(v54 + 12);
      v59 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v54 + 2), *v31.i8, 1), *v54, *v31.i8, 0), *(v54 + 4), *v31.i8, 2), *(v54 + 6), *v31.i8, 3);
      v60 = *(v54 + 14);
      v61 = v33 + 8 * v13;
      v62 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v59, v56, v31, 4), v57, v31, 5), v58, v31, 6), v60, v31, 7);
      v63 = *(v61 + 10);
      v64 = *(v61 + 12);
      v65 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v61 + 2), *v31.i8, 1), *v61, *v31.i8, 0), *(v61 + 4), *v31.i8, 2), *(v61 + 6), *v31.i8, 3), *(v61 + 8), v31, 4);
      v66 = *(v61 + 14);
      v67 = v33 + 10 * v13;
      v68 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v65, v63, v31, 5), v64, v31, 6), v66, v31, 7);
      v69 = *(v67 + 12);
      v70 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v67 + 2), *v31.i8, 1), *v67, *v31.i8, 0), *(v67 + 4), *v31.i8, 2), *(v67 + 6), *v31.i8, 3), *(v67 + 8), v31, 4), *(v67 + 10), v31, 5);
      v71 = *(v67 + 14);
      v72 = v33 + 12 * v13;
      v73 = vmlal_laneq_s16(vmlal_laneq_s16(v70, v69, v31, 6), v71, v31, 7);
      v74 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v33 + 2), *v31.i8, 1), *v33, *v31.i8, 0), *(v33 + 4), *v31.i8, 2), *(v33 + 6), *v31.i8, 3), *(v33 + 8), v31, 4), *(v33 + 10), v31, 5), *(v33 + 12), v31, 6), *(v33 + 14), v31, 7), 7uLL), v35);
      v75 = vmin_u16(vqrshrun_n_s32(v49, 7uLL), v35);
      v76 = vmin_u16(vqrshrun_n_s32(v55, 7uLL), v35);
      v77 = vmin_u16(vqrshrun_n_s32(v62, 7uLL), v35);
      v78 = vmin_u16(vqrshrun_n_s32(v68, 7uLL), v35);
      v79 = vmin_u16(vqrshrun_n_s32(v73, 7uLL), v35);
      v80 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v72 + 2), *v31.i8, 1), *v72, *v31.i8, 0), *(v72 + 4), *v31.i8, 2), *(v72 + 6), *v31.i8, 3), *(v72 + 8), v31, 4), *(v72 + 10), v31, 5), *(v72 + 12), v31, 6), *(v72 + 14), v31, 7), 7uLL), v35);
      v81 = v33 + 14 * v13;
      v82 = 2 * v15;
      do
      {
        v83 = *(v81 + 8);
        v84 = *(v81 + 10);
        v85 = *(v81 + 12);
        v86 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v81 + 2), *v31.i8, 1), *v81, *v31.i8, 0), *(v81 + 4), *v31.i8, 2), *(v81 + 6), *v31.i8, 3);
        v87 = *(v81 + 14);
        v88 = v81 + v36;
        v89 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v86, v83, v31, 4), v84, v31, 5), v85, v31, 6), v87, v31, 7);
        v90 = *(v88 + 14);
        v91 = v88 + v36;
        v92 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v88 + 2), *v31.i8, 1), *v88, *v31.i8, 0), *(v88 + 4), *v31.i8, 2), *(v88 + 6), *v31.i8, 3), *(v88 + 8), v31, 4), *(v88 + 10), v31, 5), *(v88 + 12), v31, 6);
        v93 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v88 + v36 + 2), *v31.i8, 1), *(v88 + 2 * v13), *v31.i8, 0), *(v88 + v36 + 4), *v31.i8, 2), *(v88 + v36 + 6), *v31.i8, 3), *(v88 + v36 + 8), v31, 4), *(v88 + v36 + 10), v31, 5);
        v94 = *(v88 + v36 + 12);
        v95 = v88 + v36 + v36;
        v96 = vmlal_laneq_s16(v92, v90, v31, 7);
        v97 = vmlal_lane_s16(vmull_lane_s16(v75, *v32.i8, 1), v74, *v32.i8, 0);
        v74 = v78;
        v98 = vmlal_laneq_s16(vmlal_laneq_s16(v93, v94, v31, 6), *(v91 + 14), v31, 7);
        v99 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v95 + 2), *v31.i8, 1), *v95, *v31.i8, 0), *(v95 + 4), *v31.i8, 2), *(v95 + 6), *v31.i8, 3), *(v95 + 8), v31, 4), *(v95 + 10), v31, 5), *(v95 + 12), v31, 6), *(v95 + 14), v31, 7);
        v100 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v76, *v32.i8, 1), v75, *v32.i8, 0), v77, *v32.i8, 2);
        v101 = vmlal_lane_s16(vmull_lane_s16(v77, *v32.i8, 1), v76, *v32.i8, 0);
        v102 = vmlal_lane_s16(vmlal_lane_s16(v97, v76, *v32.i8, 2), v77, *v32.i8, 3);
        v103 = vmlal_lane_s16(vmull_lane_s16(v78, *v32.i8, 1), v77, *v32.i8, 0);
        v75 = v79;
        v76 = v80;
        v77 = vmin_u16(vqrshrun_n_s32(v89, 7uLL), v35);
        *v14 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v102, v78, v32, 4), v79, v32, 5), v80, v32, 6), v77, v32, 7), 7uLL), v35);
        v104 = vmlal_lane_s16(v100, v78, *v32.i8, 3);
        v78 = vmin_u16(vqrshrun_n_s32(v96, 7uLL), v35);
        *(v14 + 2 * v15) = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v104, v79, v32, 4), v80, v32, 5), v77, v32, 6), v78, v32, 7), 7uLL), v35);
        v79 = vmin_u16(vqrshrun_n_s32(v98, 7uLL), v35);
        v105 = (v14 + v82 + v82);
        *v105 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v101, v74, *v32.i8, 2), v75, *v32.i8, 3), v80, v32, 4), v77, v32, 5), v78, v32, 6), v79, v32, 7), 7uLL), v35);
        v80 = vmin_u16(vqrshrun_n_s32(v99, 7uLL), v35);
        v106 = (v105 + v82);
        *v106 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v103, v75, *v32.i8, 2), v76, *v32.i8, 3), v77, v32, 4), v78, v32, 5), v79, v32, 6), v80, v32, 7), 7uLL), v35);
        v81 = v95 + v36;
        v14 = (v106 + v82);
        v20 -= 4;
      }

      while (v20);
    }

    else
    {
      v107 = vdupq_n_s16(v34);
      v108 = 2 * v13;
      v109 = 10 * v13;
      v111 = result + 14 * v13 + 2 * v30 - 2 * v29;
      v112 = 2 * v15;
      do
      {
        v113 = *(v33 + 2);
        v114 = *(v33 + 4);
        v115 = *(v33 + 6);
        v116 = *(v33 + 8);
        v117 = *(v33 + 10);
        v118 = *(v33 + 12);
        v119 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v113.i8, *v31.i8, 1), *v33, *v31.i8, 0), *v114.i8, *v31.i8, 2), *v115.i8, *v31.i8, 3), *v116.i8, v31, 4), *v117.i8, v31, 5), *v118.i8, v31, 6);
        v120 = v33 + 2 * v13;
        v121 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v113, *v31.i8, 1), *v33, *v31.i8, 0), v114, *v31.i8, 2);
        v122 = *(v120 + 2);
        v123 = vmlal_high_lane_s16(v121, v115, *v31.i8, 3);
        v124 = *(v120 + 4);
        v125 = vmlal_high_laneq_s16(v123, v116, v31, 4);
        v126 = *(v120 + 6);
        v127 = vmlal_high_laneq_s16(v125, v117, v31, 5);
        v128 = *(v120 + 8);
        v129 = vmlal_high_laneq_s16(v127, v118, v31, 6);
        v130 = *(v120 + 10);
        v131 = *(v120 + 12);
        v132 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v119, *(v33 + 14), v31, 7), 7uLL), vmlal_high_laneq_s16(v129, *(v33 + 14), v31, 7), 7uLL);
        v133 = vmlal_lane_s16(vmull_lane_s16(*v122.i8, *v31.i8, 1), *v120, *v31.i8, 0);
        v134 = vmlal_high_lane_s16(vmull_high_lane_s16(v122, *v31.i8, 1), *v120, *v31.i8, 0);
        v135 = *(v120 + 14);
        v136 = v33 + 4 * v13;
        v137 = vmlal_lane_s16(vmlal_lane_s16(v133, *v124.i8, *v31.i8, 2), *v126.i8, *v31.i8, 3);
        v138 = vmlal_high_lane_s16(vmlal_high_lane_s16(v134, v124, *v31.i8, 2), v126, *v31.i8, 3);
        v139 = *(v136 + 2);
        v140 = vmlal_laneq_s16(v137, *v128.i8, v31, 4);
        v141 = vmlal_high_laneq_s16(v138, v128, v31, 4);
        v142 = *(v136 + 4);
        v143 = vmlal_laneq_s16(v140, *v130.i8, v31, 5);
        v144 = vmlal_high_laneq_s16(v141, v130, v31, 5);
        v145 = *(v136 + 6);
        v146 = *(v136 + 8);
        v147 = vmlal_laneq_s16(vmlal_laneq_s16(v143, *v131.i8, v31, 6), *v135.i8, v31, 7);
        v148 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v144, v131, v31, 6), v135, v31, 7);
        v149 = *(v136 + 10);
        v150 = vqrshrun_high_n_s32(vqrshrun_n_s32(v147, 7uLL), v148, 7uLL);
        v151 = *(v136 + 12);
        v152 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v139.i8, *v31.i8, 1), *v136, *v31.i8, 0), *v142.i8, *v31.i8, 2);
        v153 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v139, *v31.i8, 1), *v136, *v31.i8, 0), v142, *v31.i8, 2);
        v154 = *(v136 + 14);
        v155 = v33 + 6 * v13;
        v156 = vmlal_laneq_s16(vmlal_lane_s16(v152, *v145.i8, *v31.i8, 3), *v146.i8, v31, 4);
        v157 = vmlal_high_laneq_s16(vmlal_high_lane_s16(v153, v145, *v31.i8, 3), v146, v31, 4);
        v158 = *(v155 + 2);
        v159 = *(v155 + 4);
        v160 = vmlal_laneq_s16(vmlal_laneq_s16(v156, *v149.i8, v31, 5), *v151.i8, v31, 6);
        v161 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v157, v149, v31, 5), v151, v31, 6);
        v162 = *(v155 + 6);
        v163 = vmlal_laneq_s16(v160, *v154.i8, v31, 7);
        v164 = vmlal_high_laneq_s16(v161, v154, v31, 7);
        v165 = *(v155 + 8);
        v166 = vqrshrun_high_n_s32(vqrshrun_n_s32(v163, 7uLL), v164, 7uLL);
        v167 = *(v155 + 10);
        v168 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v158.i8, *v31.i8, 1), *v155, *v31.i8, 0), *v159.i8, *v31.i8, 2);
        v169 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v158, *v31.i8, 1), *v155, *v31.i8, 0), v159, *v31.i8, 2);
        v170 = *(v155 + 12);
        v171 = vmlal_lane_s16(v168, *v162.i8, *v31.i8, 3);
        v172 = vmlal_high_lane_s16(v169, v162, *v31.i8, 3);
        v173 = *(v155 + 14);
        v174 = v33 + 8 * v13;
        v175 = vmlal_laneq_s16(vmlal_laneq_s16(v171, *v165.i8, v31, 4), *v167.i8, v31, 5);
        v176 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v172, v165, v31, 4), v167, v31, 5);
        v177 = *(v174 + 2);
        v178 = vmlal_laneq_s16(v175, *v170.i8, v31, 6);
        v179 = vmlal_high_laneq_s16(v176, v170, v31, 6);
        v180 = *(v174 + 4);
        v181 = *(v174 + 6);
        v182 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v178, *v173.i8, v31, 7), 7uLL), vmlal_high_laneq_s16(v179, v173, v31, 7), 7uLL);
        v183 = *(v174 + 8);
        v184 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v177.i8, *v31.i8, 1), *v174, *v31.i8, 0), *v180.i8, *v31.i8, 2);
        v185 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v177, *v31.i8, 1), *v174, *v31.i8, 0), v180, *v31.i8, 2);
        v186 = *(v174 + 10);
        v187 = *(v174 + 12);
        v188 = vmlal_laneq_s16(vmlal_lane_s16(v184, *v181.i8, *v31.i8, 3), *v183.i8, v31, 4);
        v189 = vmlal_high_laneq_s16(vmlal_high_lane_s16(v185, v181, *v31.i8, 3), v183, v31, 4);
        v190 = *(v174 + 14);
        v191 = *(v33 + 10 * v13);
        v192 = vmlal_laneq_s16(vmlal_laneq_s16(v188, *v186.i8, v31, 5), *v187.i8, v31, 6);
        v193 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v189, v186, v31, 5), v187, v31, 6);
        v194 = *(v33 + v109 + 2);
        v195 = vmlal_laneq_s16(v192, *v190.i8, v31, 7);
        v196 = vmlal_high_laneq_s16(v193, v190, v31, 7);
        v197 = *(v33 + v109 + 4);
        v198 = vqrshrun_high_n_s32(vqrshrun_n_s32(v195, 7uLL), v196, 7uLL);
        v199 = vmlal_lane_s16(vmull_lane_s16(*v194.i8, *v31.i8, 1), *v191.i8, *v31.i8, 0);
        v200 = vmlal_high_lane_s16(vmull_high_lane_s16(v194, *v31.i8, 1), v191, *v31.i8, 0);
        v201 = *(v33 + v109 + 6);
        v202 = vmlal_lane_s16(v199, *v197.i8, *v31.i8, 2);
        v203 = vmlal_high_lane_s16(v200, v197, *v31.i8, 2);
        v204 = *(v33 + v109 + 8);
        v205 = vmlal_lane_s16(v202, *v201.i8, *v31.i8, 3);
        v206 = vmlal_high_lane_s16(v203, v201, *v31.i8, 3);
        v207 = *(v33 + v109 + 10);
        v208 = vmlal_laneq_s16(v205, *v204.i8, v31, 4);
        v209 = vmlal_high_laneq_s16(v206, v204, v31, 4);
        v210 = *(v33 + v109 + 12);
        v211 = vmlal_laneq_s16(vmlal_laneq_s16(v208, *v207.i8, v31, 5), *v210.i8, v31, 6);
        v212 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v209, v207, v31, 5), v210, v31, 6);
        v213 = *(v33 + 12 * v13);
        v214 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v211, *(v33 + v109 + 14), v31, 7), 7uLL), vmlal_high_laneq_s16(v212, *(v33 + v109 + 14), v31, 7), 7uLL);
        v110 = 12 * v13;
        v215 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v33 + v110 + 2), *v31.i8, 1), *v213.i8, *v31.i8, 0), *(v33 + v110 + 4), *v31.i8, 2), *(v33 + v110 + 6), *v31.i8, 3), *(v33 + v110 + 8), v31, 4), *(v33 + v110 + 10), v31, 5), *(v33 + v110 + 12), v31, 6), *(v33 + v110 + 14), v31, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v33 + v110 + 2), *v31.i8, 1), v213, *v31.i8, 0), *(v33 + v110 + 4), *v31.i8, 2), *(v33 + v110 + 6), *v31.i8, 3), *(v33 + v110 + 8), v31, 4), *(v33 + v110 + 10), v31, 5), *(v33 + v110 + 12), v31, 6), *(v33 + v110 + 14), v31, 7), 7uLL);
        v216 = vminq_u16(v132, v107);
        v217 = vminq_u16(v150, v107);
        v218 = vminq_u16(v166, v107);
        v219 = vminq_u16(v182, v107);
        v220 = vminq_u16(v198, v107);
        v221 = vminq_u16(v214, v107);
        v222 = vminq_u16(v215, v107);
        result = v111;
        v223 = v14;
        v224 = a11;
        do
        {
          v225 = *(result + 2);
          v226 = *(result + 4);
          v227 = *(result + 6);
          v228 = *(result + 8);
          v229 = *(result + 10);
          v230 = *(result + 12);
          v231 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v225.i8, *v31.i8, 1), *result, *v31.i8, 0), *v226.i8, *v31.i8, 2);
          v232 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v225, *v31.i8, 1), *result, *v31.i8, 0), v226, *v31.i8, 2);
          v233 = *(result + 14);
          v234 = result + v108;
          v235 = *(v234 + 2);
          v236 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v231, *v227.i8, *v31.i8, 3), *v228.i8, v31, 4), *v229.i8, v31, 5);
          v237 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v232, v227, *v31.i8, 3), v228, v31, 4), v229, v31, 5);
          v238 = *(v234 + 4);
          v239 = vmlal_laneq_s16(v236, *v230.i8, v31, 6);
          v240 = vmlal_high_laneq_s16(v237, v230, v31, 6);
          v241 = *(v234 + 6);
          v242 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v235.i8, *v31.i8, 1), *v234, *v31.i8, 0), *v238.i8, *v31.i8, 2);
          v243 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v235, *v31.i8, 1), *v234, *v31.i8, 0), v238, *v31.i8, 2);
          v244 = *(v234 + 8);
          v245 = *(v234 + 10);
          v246 = vmlal_lane_s16(v242, *v241.i8, *v31.i8, 3);
          v247 = vmlal_high_lane_s16(v243, v241, *v31.i8, 3);
          v248 = *(v234 + 12);
          v249 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v239, *v233.i8, v31, 7), 7uLL), vmlal_high_laneq_s16(v240, v233, v31, 7), 7uLL);
          v250 = *(v234 + 14);
          v251 = v234 + v108;
          v252 = vmlal_laneq_s16(vmlal_laneq_s16(v246, *v244.i8, v31, 4), *v245.i8, v31, 5);
          v253 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v247, v244, v31, 4), v245, v31, 5);
          v254 = *(v251 + 2);
          v255 = *(v251 + 4);
          v256 = vmlal_laneq_s16(vmlal_laneq_s16(v252, *v248.i8, v31, 6), *v250.i8, v31, 7);
          v257 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v253, v248, v31, 6), v250, v31, 7);
          v258 = *(v251 + 6);
          v259 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v254.i8, *v31.i8, 1), *v251, *v31.i8, 0), *v255.i8, *v31.i8, 2);
          v260 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v254, *v31.i8, 1), *v251, *v31.i8, 0), v255, *v31.i8, 2);
          v261 = *(v251 + 8);
          v262 = vmlal_lane_s16(v259, *v258.i8, *v31.i8, 3);
          v263 = vmlal_high_lane_s16(v260, v258, *v31.i8, 3);
          v264 = *(v251 + 10);
          v265 = vmlal_laneq_s16(v262, *v261.i8, v31, 4);
          v266 = vmlal_high_laneq_s16(v263, v261, v31, 4);
          v267 = *(v251 + 12);
          v268 = vmlal_laneq_s16(v265, *v264.i8, v31, 5);
          v269 = vmlal_high_laneq_s16(v266, v264, v31, 5);
          v270 = *(v251 + 14);
          v271 = v251 + v108;
          v272 = vminq_u16(v249, v107);
          v273 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v256, 7uLL), v257, 7uLL), v107);
          v274 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v268, *v267.i8, v31, 6), *v270.i8, v31, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v269, v267, v31, 6), v270, v31, 7), 7uLL), v107);
          v275 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v271 + 2), *v31.i8, 1), *v271, *v31.i8, 0), *(v271 + 4), *v31.i8, 2), *(v271 + 6), *v31.i8, 3), *(v271 + 8), v31, 4), *(v271 + 10), v31, 5), *(v271 + 12), v31, 6), *(v271 + 14), v31, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v271 + 2), *v31.i8, 1), *v271, *v31.i8, 0), *(v271 + 4), *v31.i8, 2), *(v271 + 6), *v31.i8, 3), *(v271 + 8), v31, 4), *(v271 + 10), v31, 5), *(v271 + 12), v31, 6), *(v271 + 14), v31, 7), 7uLL), v107);
          *v223 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v217.i8, *v32.i8, 1), *v216.i8, *v32.i8, 0), *v218.i8, *v32.i8, 2), *v219.i8, *v32.i8, 3), *v220.i8, v32, 4), *v221.i8, v32, 5), *v222.i8, v32, 6), *v272.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v217, *v32.i8, 1), v216, *v32.i8, 0), v218, *v32.i8, 2), v219, *v32.i8, 3), v220, v32, 4), v221, v32, 5), v222, v32, 6), v272, v32, 7), 7uLL), v107);
          v276 = (v223 + v112);
          *v276 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v218.i8, *v32.i8, 1), *v217.i8, *v32.i8, 0), *v219.i8, *v32.i8, 2), *v220.i8, *v32.i8, 3), *v221.i8, v32, 4), *v222.i8, v32, 5), *v272.i8, v32, 6), *v273.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v218, *v32.i8, 1), v217, *v32.i8, 0), v219, *v32.i8, 2), v220, *v32.i8, 3), v221, v32, 4), v222, v32, 5), v272, v32, 6), v273, v32, 7), 7uLL), v107);
          v277 = (v276 + v112);
          *v277 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v219.i8, *v32.i8, 1), *v218.i8, *v32.i8, 0), *v220.i8, *v32.i8, 2), *v221.i8, *v32.i8, 3), *v222.i8, v32, 4), *v272.i8, v32, 5), *v273.i8, v32, 6), *v274.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v219, *v32.i8, 1), v218, *v32.i8, 0), v220, *v32.i8, 2), v221, *v32.i8, 3), v222, v32, 4), v272, v32, 5), v273, v32, 6), v274, v32, 7), 7uLL), v107);
          v278 = (v277 + v112);
          *v278 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v220.i8, *v32.i8, 1), *v219.i8, *v32.i8, 0), *v221.i8, *v32.i8, 2), *v222.i8, *v32.i8, 3), *v272.i8, v32, 4), *v273.i8, v32, 5), *v274.i8, v32, 6), *v275.i8, v32, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v220, *v32.i8, 1), v219, *v32.i8, 0), v221, *v32.i8, 2), v222, *v32.i8, 3), v272, v32, 4), v273, v32, 5), v274, v32, 6), v275, v32, 7), 7uLL), v107);
          v216 = v220;
          v217 = v221;
          v218 = v222;
          result = v271 + v108;
          v223 = (v278 + v112);
          v219 = v272;
          v220 = v273;
          v221 = v274;
          v222 = v275;
          v224 -= 4;
        }

        while (v224);
        v33 += 16;
        v14 += 2;
        v111 += 16;
        v21 -= 8;
      }

      while (v21);
    }

    return result;
  }

  v23 = 0;
  v24 = (v16 + 16 * v19);
  if (v24[7] | *v24)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (v24[6] | v24[1])
  {
    goto LABEL_9;
  }

  v29 = v13;
  if (!v23)
  {
    goto LABEL_10;
  }

  v279 = *(v22 + 2);
  v280 = *(v24 + 2);
  v281 = result - 2 * v13 - 2;
  v282 = ~(-1 << a12);
  if (a10 == 4)
  {
    v283 = vdup_n_s16(v282);
    v284 = 2 * v13;
    v285 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(result - 2 * v13), v279, 1), *v281, v279, 0), *(result - 2 * v13 + 2), v279, 2), *(result - 2 * v13 + 4), v279, 3), 7uLL), v283);
    v286 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*result, v279, 1), *(result - 2), v279, 0), *(result + 2), v279, 2), *(result + 4), v279, 3), 7uLL), v283);
    v287 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v281 + 4 * v13 + 2), v279, 1), *(v281 + 4 * v13), v279, 0), *(v281 + 4 * v13 + 4), v279, 2), *(v281 + 4 * v13 + 6), v279, 3), 7uLL), v283);
    v288 = (v281 + 6 * v13);
    v289 = 2 * v15;
    do
    {
      v290 = *v288;
      v291 = *(v288 + 2);
      v292 = *(v288 + 4);
      v293 = *(v288 + 6);
      v294 = &v288[v284];
      v295 = *v294;
      v296 = *(v294 + 2);
      v297 = *(v294 + 4);
      v298 = *(v294 + 6);
      v299 = &v294[v284];
      v300 = *v299;
      v301 = *(v299 + 2);
      v302 = *(v299 + 4);
      v303 = *(v299 + 6);
      v304 = &v299[v284];
      v305 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v291, v279, 1), v290, v279, 0), v292, v279, 2), v293, v279, 3), 7uLL), v283);
      v306 = vmlal_lane_s16(vmull_lane_s16(v286, v280, 1), v285, v280, 0);
      v285 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v296, v279, 1), v295, v279, 0), v297, v279, 2), v298, v279, 3), 7uLL), v283);
      v307 = vmlal_lane_s16(vmull_lane_s16(v287, v280, 1), v286, v280, 0);
      v286 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v301, v279, 1), v300, v279, 0), v302, v279, 2), v303, v279, 3), 7uLL), v283);
      v308 = vmlal_lane_s16(v306, v287, v280, 2);
      v309 = vmlal_lane_s16(vmull_lane_s16(v305, v280, 1), v287, v280, 0);
      v287 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v304 + 2), v279, 1), *v304, v279, 0), *(v304 + 4), v279, 2), *(v304 + 6), v279, 3), 7uLL), v283);
      *v14 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v308, v305, v280, 3), 7uLL), v283);
      *(v14 + 2 * v15) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v307, v305, v280, 2), v285, v280, 3), 7uLL), v283);
      v310 = (v14 + v289 + v289);
      *v310 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v309, v285, v280, 2), v286, v280, 3), 7uLL), v283);
      v311 = (v310 + v289);
      v288 = &v304[v284];
      *v311 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v285, v280, 1), v305, v280, 0), v286, v280, 2), v287, v280, 3), 7uLL), v283);
      v14 = (v311 + v289);
      v20 -= 4;
    }

    while (v20);
  }

  else
  {
    v312 = vdupq_n_s16(v282);
    v313 = 2 * v13;
    v314 = 2 * v15;
    do
    {
      v315 = (v281 + 2 * v13);
      v316 = *v315;
      v317 = *(v315 + 2);
      v318 = *(v315 + 4);
      v319 = *(v315 + 6);
      v320 = v281 + 4 * v13;
      v321 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v281 + 2), v279, 1), *v281, v279, 0), *(v281 + 4), v279, 2), *(v281 + 6), v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v281 + 2), v279, 1), *v281, v279, 0), *(v281 + 4), v279, 2), *(v281 + 6), v279, 3), 7uLL), v312);
      v322 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v317.i8, v279, 1), *v316.i8, v279, 0), *v318.i8, v279, 2), *v319.i8, v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v317, v279, 1), v316, v279, 0), v318, v279, 2), v319, v279, 3), 7uLL), v312);
      v323 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v320 + 2), v279, 1), *v320, v279, 0), *(v320 + 4), v279, 2), *(v320 + 6), v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v320 + 2), v279, 1), *v320, v279, 0), *(v320 + 4), v279, 2), *(v320 + 6), v279, 3), 7uLL), v312);
      v324 = (v281 + 6 * v13);
      v325 = v14;
      v326 = a11;
      do
      {
        v327 = *v324;
        v328 = *(v324 + 2);
        v329 = *(v324 + 4);
        v330 = *(v324 + 6);
        v331 = &v324[v313];
        v332 = *v331;
        v333 = *(v331 + 2);
        v334 = *(v331 + 4);
        v335 = *(v331 + 6);
        v336 = &v331[v313];
        v337 = *v336;
        v338 = *(v336 + 2);
        v339 = *(v336 + 4);
        v340 = *(v336 + 6);
        v341 = &v336[v313];
        v342 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v338.i8, v279, 1), *v337.i8, v279, 0), *v339.i8, v279, 2), *v340.i8, v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v338, v279, 1), v337, v279, 0), v339, v279, 2), v340, v279, 3), 7uLL);
        v343 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v328.i8, v279, 1), *v327.i8, v279, 0), *v329.i8, v279, 2), *v330.i8, v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v328, v279, 1), v327, v279, 0), v329, v279, 2), v330, v279, 3), 7uLL), v312);
        v344 = vmlal_lane_s16(vmull_lane_s16(*v322.i8, v280, 1), *v321.i8, v280, 0);
        v345 = vmlal_high_lane_s16(vmull_high_lane_s16(v322, v280, 1), v321, v280, 0);
        v321 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v333.i8, v279, 1), *v332.i8, v279, 0), *v334.i8, v279, 2), *v335.i8, v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v333, v279, 1), v332, v279, 0), v334, v279, 2), v335, v279, 3), 7uLL), v312);
        v346 = vmlal_lane_s16(vmull_lane_s16(*v323.i8, v280, 1), *v322.i8, v280, 0);
        v347 = vmlal_high_lane_s16(vmull_high_lane_s16(v323, v280, 1), v322, v280, 0);
        v322 = vminq_u16(v342, v312);
        v348 = vmlal_lane_s16(vmlal_lane_s16(v344, *v323.i8, v280, 2), *v343.i8, v280, 3);
        v349 = vmlal_high_lane_s16(v345, v323, v280, 2);
        v350 = vmlal_lane_s16(vmull_lane_s16(*v343.i8, v280, 1), *v323.i8, v280, 0);
        v351 = vmlal_high_lane_s16(vmull_high_lane_s16(v343, v280, 1), v323, v280, 0);
        v323 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v341 + 2), v279, 1), *v341, v279, 0), *(v341 + 4), v279, 2), *(v341 + 6), v279, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v341 + 2), v279, 1), *v341, v279, 0), *(v341 + 4), v279, 2), *(v341 + 6), v279, 3), 7uLL), v312);
        *v325 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v348, 7uLL), vmlal_high_lane_s16(v349, v343, v280, 3), 7uLL), v312);
        v352 = (v325 + v314);
        *v352 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v346, *v343.i8, v280, 2), *v321.i8, v280, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v347, v343, v280, 2), v321, v280, 3), 7uLL), v312);
        v353 = (v352 + v314);
        v324 = &v341[v313];
        *v353 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v350, *v321.i8, v280, 2), *v322.i8, v280, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v351, v321, v280, 2), v322, v280, 3), 7uLL), v312);
        *(v353 + 2 * v15) = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v321.i8, v280, 1), *v343.i8, v280, 0), *v322.i8, v280, 2), *v323.i8, v280, 3), 7uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v321, v280, 1), v343, v280, 0), v322, v280, 2), v323, v280, 3), 7uLL), v312);
        v325 = (v353 + v314 + v314);
        v326 -= 4;
      }

      while (v326);
      v281 += 16;
      v14 += 2;
      v21 -= 8;
    }

    while (v21);
  }

  return result;
}

uint64_t vpx_highbd_convolve8_avg_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, signed int a11, int a12)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v19 = v14;
  v21 = v20;
  v22 = a11;
  v23 = a10;
  v314[2112] = *MEMORY[0x277D85DE8];
  if (v17 != 16 || a9 != 16)
  {
    v94 = v15;
    v95 = v18;
    highbd_convolve_horiz(result - 6 * v13, v13, &v313, 64, v15, v16, v17, a10, ((v18 + (a11 - 1) * a9) >> 4) + 8, a12);
    result = highbd_convolve_vert(v314, 64, v312, 64, v94, v95, a9, a10, a11, a12);
    if (a10 < 1 || a11 < 1)
    {
      return result;
    }

    v96 = 0;
    v97 = v312;
    while (1)
    {
      if (a10 >= 4)
      {
        if (a10 < 0x10)
        {
          v99 = 0;
LABEL_19:
          v103 = v99;
          v104 = v99 - (a10 & 0x7FFFFFFC);
          do
          {
            *(v21 + v103 * 2) = vrhadd_u16(*(v21 + v103 * 2), *&v97[v103]);
            v103 += 4;
            v104 += 4;
          }

          while (v104);
          v98 = a10 & 0x7FFFFFFC;
          if (v98 == a10)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

        v100 = 0;
        do
        {
          v101 = &v21[v100 / 8];
          result = &v97[v100 / 2];
          v102 = vrhaddq_u16(*v21[v100 / 8 + 2].i8, *&v97[v100 / 2 + 8]);
          *v101 = vrhaddq_u16(*v21[v100 / 8].i8, *&v97[v100 / 2]);
          v101[1] = v102;
          v100 += 32;
        }

        while (32 * ((a10 >> 4) & 0x7FFFFFF) != v100);
        if ((a10 & 0x7FFFFFF0) == a10)
        {
          goto LABEL_10;
        }

        v99 = a10 & 0x7FFFFFF0;
        v98 = v99;
        if ((a10 & 0xC) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v98 = 0;
      }

      do
      {
LABEL_22:
        result = v97[v98];
        v21->i16[v98] = (v21->u16[v98] + result + 1) >> 1;
        ++v98;
      }

      while (a10 != v98);
LABEL_10:
      v97 += 64;
      ++v96;
      v21 = (v21 + 2 * v19);
      if (v96 == a11)
      {
        return result;
      }
    }
  }

  v24 = result - 6 * v13 - 6;
  v25 = *(v15 + 16 * v16);
  v26 = *(v15 + 16 * v18);
  v27 = ~(-1 << a12);
  if (a10 == 4)
  {
    v28 = 2 * v13;
    v29 = v24 + 2 * v13;
    v30 = *(v29 + 4);
    v31 = *(v29 + 6);
    v32 = *(v29 + 8);
    v33 = *(v29 + 10);
    v34 = *(v29 + 12);
    v35 = vmlal_lane_s16(vmull_lane_s16(*(v29 + 2), *v25.i8, 1), *v29, *v25.i8, 0);
    v36 = *(v29 + 14);
    v37 = v24 + 4 * v13;
    v38 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v35, v30, *v25.i8, 2), v31, *v25.i8, 3), v32, v25, 4), v33, v25, 5), v34, v25, 6), v36, v25, 7);
    v39 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v37 + 2), *v25.i8, 1), *v37, *v25.i8, 0), *(v37 + 4), *v25.i8, 2), *(v37 + 6), *v25.i8, 3), *(v37 + 8), v25, 4), *(v37 + 10), v25, 5), *(v37 + 12), v25, 6), *(v37 + 14), v25, 7);
    v40 = v24 + 8 * v13;
    v41 = *(v40 + 10);
    v42 = *(v40 + 12);
    v43 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v40 + 2), *v25.i8, 1), *v40, *v25.i8, 0), *(v40 + 4), *v25.i8, 2), *(v40 + 6), *v25.i8, 3), *(v40 + 8), v25, 4);
    v44 = *(v40 + 14);
    v45 = v24 + 10 * v13;
    v46 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v43, v41, v25, 5), v42, v25, 6), v44, v25, 7);
    v47 = *(v45 + 12);
    v48 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v45 + 2), *v25.i8, 1), *v45, *v25.i8, 0), *(v45 + 4), *v25.i8, 2), *(v45 + 6), *v25.i8, 3), *(v45 + 8), v25, 4), *(v45 + 10), v25, 5);
    v49 = *(v45 + 14);
    v50 = v24 + 12 * v13;
    v51 = vmlal_laneq_s16(vmlal_laneq_s16(v48, v47, v25, 6), v49, v25, 7);
    v52 = vdup_n_s16(v27);
    v53 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(result - 6 * v13 - 4), *v25.i8, 1), *v24, *v25.i8, 0), *(result - 6 * v13 - 2), *v25.i8, 2), *(result - 6 * v13), *v25.i8, 3), *(result - 6 * v13 + 2), v25, 4), *(result - 6 * v13 + 4), v25, 5), *(result - 6 * v13 + 6), v25, 6), *(result - 6 * v13 + 8), v25, 7), 7uLL), v52);
    v54 = vmin_u16(vqrshrun_n_s32(v38, 7uLL), v52);
    v55 = vmin_u16(vqrshrun_n_s32(v39, 7uLL), v52);
    v56 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(result - 4), *v25.i8, 1), *(result - 6), *v25.i8, 0), *(result - 2), *v25.i8, 2), *result, *v25.i8, 3), *(result + 2), v25, 4), *(result + 4), v25, 5), *(result + 6), v25, 6), *(result + 8), v25, 7), 7uLL), v52);
    v57 = vmin_u16(vqrshrun_n_s32(v46, 7uLL), v52);
    v58 = vmin_u16(vqrshrun_n_s32(v51, 7uLL), v52);
    v59 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v50 + 2), *v25.i8, 1), *v50, *v25.i8, 0), *(v50 + 4), *v25.i8, 2), *(v50 + 6), *v25.i8, 3), *(v50 + 8), v25, 4), *(v50 + 10), v25, 5), *(v50 + 12), v25, 6), *(v50 + 14), v25, 7), 7uLL), v52);
    v60 = v24 + 14 * v13;
    do
    {
      v61 = *(v60 + 8);
      v62 = *(v60 + 6);
      v63 = *(v60 + 10);
      v64 = *(v60 + 12);
      v65 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v60 + 2), *v25.i8, 1), *v60, *v25.i8, 0), *(v60 + 4), *v25.i8, 2);
      v66 = *(v60 + 14);
      v67 = v60 + v28;
      v68 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v65, v62, *v25.i8, 3), v61, v25, 4), v63, v25, 5), v64, v25, 6);
      v69 = *(v67 + 10);
      v70 = *(v67 + 12);
      v71 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v67 + 2), *v25.i8, 1), *v67, *v25.i8, 0), *(v67 + 4), *v25.i8, 2), *(v67 + 6), *v25.i8, 3), *(v67 + 8), v25, 4);
      v72 = *(v67 + 14);
      v73 = v67 + v28;
      v74 = vmlal_laneq_s16(v71, v69, v25, 5);
      v75 = vmlal_lane_s16(vmull_lane_s16(v54, *v26.i8, 1), v53, *v26.i8, 0);
      v53 = v57;
      v76 = vmlal_laneq_s16(v68, v66, v25, 7);
      v77 = *(v73 + 10);
      v78 = vmlal_laneq_s16(vmlal_laneq_s16(v74, v70, v25, 6), v72, v25, 7);
      v79 = *(v73 + 12);
      v80 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v73 + 2), *v25.i8, 1), *v73, *v25.i8, 0), *(v73 + 4), *v25.i8, 2), *(v73 + 6), *v25.i8, 3), *(v73 + 8), v25, 4);
      v81 = *(v73 + 14);
      v82 = v73 + v28;
      v83 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v80, v77, v25, 5), v79, v25, 6), v81, v25, 7);
      v84 = vmlal_lane_s16(vmull_lane_s16(v55, *v26.i8, 1), v54, *v26.i8, 0);
      v54 = v58;
      v85 = vmlal_lane_s16(v75, v55, *v26.i8, 2);
      v86 = vmlal_lane_s16(vmull_lane_s16(v56, *v26.i8, 1), v55, *v26.i8, 0);
      v55 = v59;
      v87 = vqrshrun_n_s32(v76, 7uLL);
      *v76.i8 = vqrshrun_n_s32(v78, 7uLL);
      v88 = vmlal_lane_s16(v85, v56, *v26.i8, 3);
      v89 = vmlal_lane_s16(v84, v56, *v26.i8, 2);
      v90 = vmlal_lane_s16(vmull_lane_s16(v53, *v26.i8, 1), v56, *v26.i8, 0);
      v56 = vmin_u16(v87, v52);
      v91 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v82 + 2), *v25.i8, 1), *v82, *v25.i8, 0), *(v82 + 4), *v25.i8, 2), *(v82 + 6), *v25.i8, 3), *(v82 + 8), v25, 4), *(v82 + 10), v25, 5), *(v82 + 12), v25, 6), *(v82 + 14), v25, 7);
      v57 = vmin_u16(*v76.i8, v52);
      v92 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v88, v53, v26, 4), v58, v26, 5), v59, v26, 6), v56, v26, 7), 7uLL), v52);
      *v76.i8 = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v89, v53, *v26.i8, 3), v58, v26, 4), v55, v26, 5), v56, v26, 6), v57, v26, 7), 7uLL), v52), *(v21 + 2 * v14));
      *v88.i8 = *(v21 + 4 * v14);
      *v89.i8 = *(v21 + 6 * v14);
      *v21 = vrhadd_u16(v92, *v21);
      v93 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v86, v53, *v26.i8, 2), v58, *v26.i8, 3), v55, v26, 4);
      v58 = vmin_u16(vqrshrun_n_s32(v83, 7uLL), v52);
      *(v21 + 2 * v14) = *v76.i8;
      v59 = vmin_u16(vqrshrun_n_s32(v91, 7uLL), v52);
      *(v21 + 4 * v14) = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v93, v56, v26, 5), v57, v26, 6), v58, v26, 7), 7uLL), v52), *v88.i8);
      *(v21 + 6 * v14) = vrhadd_u16(vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v90, v54, *v26.i8, 2), v55, *v26.i8, 3), v56, v26, 4), v57, v26, 5), v58, v26, 6), v59, v26, 7), 7uLL), v52), *v89.i8);
      v21 += v14;
      v60 = v82 + v28;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v105 = 2 * v13;
    v106 = vdupq_n_s16(v27);
    v107 = 10 * v13;
    v109 = result + 8 * v13 - 6;
    result = 8 * v14;
    do
    {
      v110 = *(v24 + 2);
      v111 = *(v24 + 4);
      v112 = *(v24 + 6);
      v113 = *(v24 + 8);
      v114 = *(v24 + 10);
      v115 = *(v24 + 12);
      v116 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v110.i8, *v25.i8, 1), *v24, *v25.i8, 0), *v111.i8, *v25.i8, 2), *v112.i8, *v25.i8, 3), *v113.i8, v25, 4), *v114.i8, v25, 5), *v115.i8, v25, 6);
      v117 = v24 + 2 * v13;
      v118 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v110, *v25.i8, 1), *v24, *v25.i8, 0), v111, *v25.i8, 2);
      v119 = *(v117 + 2);
      v120 = vmlal_high_lane_s16(v118, v112, *v25.i8, 3);
      v121 = *(v117 + 4);
      v122 = vmlal_high_laneq_s16(v120, v113, v25, 4);
      v123 = *(v117 + 6);
      v124 = vmlal_high_laneq_s16(v122, v114, v25, 5);
      v125 = *(v117 + 8);
      v126 = vmlal_high_laneq_s16(v124, v115, v25, 6);
      v127 = *(v117 + 10);
      v128 = *(v117 + 12);
      v129 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v116, *(v24 + 14), v25, 7), 7uLL), vmlal_high_laneq_s16(v126, *(v24 + 14), v25, 7), 7uLL);
      v130 = vmlal_lane_s16(vmull_lane_s16(*v119.i8, *v25.i8, 1), *v117, *v25.i8, 0);
      v131 = vmlal_high_lane_s16(vmull_high_lane_s16(v119, *v25.i8, 1), *v117, *v25.i8, 0);
      v132 = *(v117 + 14);
      v133 = v24 + 4 * v13;
      v134 = vmlal_lane_s16(vmlal_lane_s16(v130, *v121.i8, *v25.i8, 2), *v123.i8, *v25.i8, 3);
      v135 = vmlal_high_lane_s16(vmlal_high_lane_s16(v131, v121, *v25.i8, 2), v123, *v25.i8, 3);
      v136 = *(v133 + 2);
      v137 = vmlal_laneq_s16(v134, *v125.i8, v25, 4);
      v138 = vmlal_high_laneq_s16(v135, v125, v25, 4);
      v139 = *(v133 + 4);
      v140 = vmlal_laneq_s16(v137, *v127.i8, v25, 5);
      v141 = vmlal_high_laneq_s16(v138, v127, v25, 5);
      v142 = *(v133 + 6);
      v143 = *(v133 + 8);
      v144 = vmlal_laneq_s16(vmlal_laneq_s16(v140, *v128.i8, v25, 6), *v132.i8, v25, 7);
      v145 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v141, v128, v25, 6), v132, v25, 7);
      v146 = *(v133 + 10);
      v147 = vqrshrun_high_n_s32(vqrshrun_n_s32(v144, 7uLL), v145, 7uLL);
      v148 = *(v133 + 12);
      v149 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v136.i8, *v25.i8, 1), *v133, *v25.i8, 0), *v139.i8, *v25.i8, 2);
      v150 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v136, *v25.i8, 1), *v133, *v25.i8, 0), v139, *v25.i8, 2);
      v151 = *(v133 + 14);
      v152 = v24 + 6 * v13;
      v153 = vmlal_laneq_s16(vmlal_lane_s16(v149, *v142.i8, *v25.i8, 3), *v143.i8, v25, 4);
      v154 = vmlal_high_laneq_s16(vmlal_high_lane_s16(v150, v142, *v25.i8, 3), v143, v25, 4);
      v155 = *(v152 + 2);
      v156 = *(v152 + 4);
      v157 = vmlal_laneq_s16(vmlal_laneq_s16(v153, *v146.i8, v25, 5), *v148.i8, v25, 6);
      v158 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v154, v146, v25, 5), v148, v25, 6);
      v159 = *(v152 + 6);
      v160 = vmlal_laneq_s16(v157, *v151.i8, v25, 7);
      v161 = vmlal_high_laneq_s16(v158, v151, v25, 7);
      v162 = *(v152 + 8);
      v163 = vqrshrun_high_n_s32(vqrshrun_n_s32(v160, 7uLL), v161, 7uLL);
      v164 = *(v152 + 10);
      v165 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v155.i8, *v25.i8, 1), *v152, *v25.i8, 0), *v156.i8, *v25.i8, 2);
      v166 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v155, *v25.i8, 1), *v152, *v25.i8, 0), v156, *v25.i8, 2);
      v167 = *(v152 + 12);
      v168 = vmlal_lane_s16(v165, *v159.i8, *v25.i8, 3);
      v169 = vmlal_high_lane_s16(v166, v159, *v25.i8, 3);
      v170 = *(v152 + 14);
      v171 = v24 + 8 * v13;
      v172 = vmlal_laneq_s16(vmlal_laneq_s16(v168, *v162.i8, v25, 4), *v164.i8, v25, 5);
      v173 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v169, v162, v25, 4), v164, v25, 5);
      v174 = *(v171 + 2);
      v175 = vmlal_laneq_s16(v172, *v167.i8, v25, 6);
      v176 = vmlal_high_laneq_s16(v173, v167, v25, 6);
      v177 = *(v171 + 4);
      v178 = *(v171 + 6);
      v179 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v175, *v170.i8, v25, 7), 7uLL), vmlal_high_laneq_s16(v176, v170, v25, 7), 7uLL);
      v180 = *(v171 + 8);
      v181 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v174.i8, *v25.i8, 1), *v171, *v25.i8, 0), *v177.i8, *v25.i8, 2);
      v182 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v174, *v25.i8, 1), *v171, *v25.i8, 0), v177, *v25.i8, 2);
      v183 = *(v171 + 10);
      v184 = *(v171 + 12);
      v185 = vmlal_laneq_s16(vmlal_lane_s16(v181, *v178.i8, *v25.i8, 3), *v180.i8, v25, 4);
      v186 = vmlal_high_laneq_s16(vmlal_high_lane_s16(v182, v178, *v25.i8, 3), v180, v25, 4);
      v187 = *(v171 + 14);
      v188 = *(v24 + 10 * v13);
      v189 = vmlal_laneq_s16(vmlal_laneq_s16(v185, *v183.i8, v25, 5), *v184.i8, v25, 6);
      v190 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v186, v183, v25, 5), v184, v25, 6);
      v191 = *(v24 + v107 + 2);
      v192 = vmlal_laneq_s16(v189, *v187.i8, v25, 7);
      v193 = vmlal_high_laneq_s16(v190, v187, v25, 7);
      v194 = *(v24 + v107 + 4);
      v195 = vqrshrun_high_n_s32(vqrshrun_n_s32(v192, 7uLL), v193, 7uLL);
      v196 = vmlal_lane_s16(vmull_lane_s16(*v191.i8, *v25.i8, 1), *v188.i8, *v25.i8, 0);
      v197 = vmlal_high_lane_s16(vmull_high_lane_s16(v191, *v25.i8, 1), v188, *v25.i8, 0);
      v198 = *(v24 + v107 + 6);
      v199 = vmlal_lane_s16(v196, *v194.i8, *v25.i8, 2);
      v200 = vmlal_high_lane_s16(v197, v194, *v25.i8, 2);
      v201 = *(v24 + v107 + 8);
      v202 = vmlal_lane_s16(v199, *v198.i8, *v25.i8, 3);
      v203 = vmlal_high_lane_s16(v200, v198, *v25.i8, 3);
      v204 = *(v24 + v107 + 10);
      v205 = vmlal_laneq_s16(v202, *v201.i8, v25, 4);
      v206 = vmlal_high_laneq_s16(v203, v201, v25, 4);
      v207 = *(v24 + v107 + 12);
      v208 = vmlal_laneq_s16(vmlal_laneq_s16(v205, *v204.i8, v25, 5), *v207.i8, v25, 6);
      v209 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v206, v204, v25, 5), v207, v25, 6);
      v210 = *(v24 + 12 * v13);
      v211 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v208, *(v24 + v107 + 14), v25, 7), 7uLL), vmlal_high_laneq_s16(v209, *(v24 + v107 + 14), v25, 7), 7uLL);
      v108 = 12 * v13;
      v212 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v24 + v108 + 2), *v25.i8, 1), *v210.i8, *v25.i8, 0), *(v24 + v108 + 4), *v25.i8, 2), *(v24 + v108 + 6), *v25.i8, 3), *(v24 + v108 + 8), v25, 4), *(v24 + v108 + 10), v25, 5), *(v24 + v108 + 12), v25, 6), *(v24 + v108 + 14), v25, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v24 + v108 + 2), *v25.i8, 1), v210, *v25.i8, 0), *(v24 + v108 + 4), *v25.i8, 2), *(v24 + v108 + 6), *v25.i8, 3), *(v24 + v108 + 8), v25, 4), *(v24 + v108 + 10), v25, 5), *(v24 + v108 + 12), v25, 6), *(v24 + v108 + 14), v25, 7), 7uLL);
      v213 = vminq_u16(v129, v106);
      v214 = vminq_u16(v147, v106);
      v215 = vminq_u16(v163, v106);
      v216 = vminq_u16(v179, v106);
      v217 = vminq_u16(v195, v106);
      v218 = vminq_u16(v211, v106);
      v219 = vminq_u16(v212, v106);
      v220 = v109;
      v221 = v21;
      v222 = a11;
      do
      {
        v223 = *(v220 + 2);
        v224 = *(v220 + 4);
        v225 = *(v220 + 6);
        v226 = *(v220 + 8);
        v227 = *(v220 + 10);
        v228 = *(v220 + 12);
        v229 = *(v220 + 2 * v13);
        v230 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v223.i8, *v25.i8, 1), *v220, *v25.i8, 0), *v224.i8, *v25.i8, 2), *v225.i8, *v25.i8, 3);
        v231 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v223, *v25.i8, 1), *v220, *v25.i8, 0), v224, *v25.i8, 2), v225, *v25.i8, 3);
        v232 = *(v220 + v105 + 2);
        v233 = vmlal_laneq_s16(v230, *v226.i8, v25, 4);
        v234 = vmlal_high_laneq_s16(v231, v226, v25, 4);
        v235 = *(v220 + v105 + 4);
        v236 = vmlal_laneq_s16(v233, *v227.i8, v25, 5);
        v237 = vmlal_high_laneq_s16(v234, v227, v25, 5);
        v238 = *(v220 + v105 + 6);
        v239 = vmlal_laneq_s16(v236, *v228.i8, v25, 6);
        v240 = vmlal_high_laneq_s16(v237, v228, v25, 6);
        v241 = vmlal_lane_s16(vmull_lane_s16(*v232.i8, *v25.i8, 1), *v229.i8, *v25.i8, 0);
        v242 = vmlal_high_lane_s16(vmull_high_lane_s16(v232, *v25.i8, 1), v229, *v25.i8, 0);
        v243 = *(v220 + v105 + 8);
        v244 = vmlal_lane_s16(v241, *v235.i8, *v25.i8, 2);
        v245 = vmlal_high_lane_s16(v242, v235, *v25.i8, 2);
        v246 = *(v220 + v105 + 10);
        v247 = vmlal_lane_s16(v244, *v238.i8, *v25.i8, 3);
        v248 = vmlal_high_lane_s16(v245, v238, *v25.i8, 3);
        v249 = *(v220 + v105 + 12);
        v250 = v220 + v105 + v105;
        v251 = vmlal_laneq_s16(vmlal_laneq_s16(v247, *v243.i8, v25, 4), *v246.i8, v25, 5);
        v252 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v248, v243, v25, 4), v246, v25, 5);
        v253 = *(v250 + 2);
        v254 = vmlal_laneq_s16(v251, *v249.i8, v25, 6);
        v255 = vmlal_high_laneq_s16(v252, v249, v25, 6);
        v256 = *(v220 + 14);
        v257 = vmlal_laneq_s16(v239, *v256.i8, v25, 7);
        v258 = vmlal_high_laneq_s16(v240, v256, v25, 7);
        v259 = *(v250 + 4);
        v260 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v253.i8, *v25.i8, 1), *v250, *v25.i8, 0), *v259.i8, *v25.i8, 2);
        v261 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v253, *v25.i8, 1), *v250, *v25.i8, 0), v259, *v25.i8, 2);
        v262 = *(v220 + v105 + 14);
        v263 = vmlal_laneq_s16(v254, *v262.i8, v25, 7);
        v264 = vmlal_high_laneq_s16(v255, v262, v25, 7);
        v265 = *(v250 + 6);
        v266 = vmlal_lane_s16(v260, *v265.i8, *v25.i8, 3);
        v267 = vmlal_high_lane_s16(v261, v265, *v25.i8, 3);
        v268 = *(v250 + 8);
        v269 = vqrshrun_high_n_s32(vqrshrun_n_s32(v257, 7uLL), v258, 7uLL);
        v270 = *(v250 + 10);
        v271 = vmlal_laneq_s16(v266, *v268.i8, v25, 4);
        v272 = vmlal_high_laneq_s16(v267, v268, v25, 4);
        v273 = *(v250 + 12);
        v274 = vqrshrun_high_n_s32(vqrshrun_n_s32(v263, 7uLL), v264, 7uLL);
        v275 = *(v250 + 14);
        v276 = vmlal_laneq_s16(v271, *v270.i8, v25, 5);
        v277 = vmlal_high_laneq_s16(v272, v270, v25, 5);
        v278 = *(v250 + 2 * v13);
        v279 = *(v250 + v105 + 2);
        v280 = vmlal_laneq_s16(vmlal_laneq_s16(v276, *v273.i8, v25, 6), *v275.i8, v25, 7);
        v281 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v277, v273, v25, 6), v275, v25, 7);
        v282 = vmlal_lane_s16(vmull_lane_s16(*v279.i8, *v25.i8, 1), *v278.i8, *v25.i8, 0);
        v283 = vmlal_high_lane_s16(vmull_high_lane_s16(v279, *v25.i8, 1), v278, *v25.i8, 0);
        v284 = *(v250 + v105 + 4);
        v285 = vmlal_lane_s16(v282, *v284.i8, *v25.i8, 2);
        v286 = vmlal_high_lane_s16(v283, v284, *v25.i8, 2);
        v287 = *(v250 + v105 + 6);
        v288 = vmlal_lane_s16(v285, *v287.i8, *v25.i8, 3);
        v289 = vmlal_high_lane_s16(v286, v287, *v25.i8, 3);
        v290 = *(v250 + v105 + 8);
        v291 = vmlal_laneq_s16(v288, *v290.i8, v25, 4);
        v292 = vmlal_high_laneq_s16(v289, v290, v25, 4);
        v293 = *(v250 + v105 + 10);
        v294 = vmlal_laneq_s16(v291, *v293.i8, v25, 5);
        v295 = vmlal_high_laneq_s16(v292, v293, v25, 5);
        v296 = *(v250 + v105 + 12);
        v297 = *(v250 + v105 + 14);
        v298 = vmlal_laneq_s16(vmlal_laneq_s16(v294, *v296.i8, v25, 6), *v297.i8, v25, 7);
        v299 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(v295, v296, v25, 6), v297, v25, 7);
        v300 = vqrshrun_high_n_s32(vqrshrun_n_s32(v280, 7uLL), v281, 7uLL);
        v301 = vqrshrun_high_n_s32(vqrshrun_n_s32(v298, 7uLL), v299, 7uLL);
        v302 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v215.i8, *v26.i8, 1), *v214.i8, *v26.i8, 0), *v216.i8, *v26.i8, 2);
        v303 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v215, *v26.i8, 1), v214, *v26.i8, 0), v216, *v26.i8, 2);
        v304 = vminq_u16(v269, v106);
        v305 = vminq_u16(v274, v106);
        v306 = vminq_u16(v300, v106);
        v307 = vminq_u16(v301, v106);
        v308 = vrhaddq_u16(vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v214.i8, *v26.i8, 1), *v213.i8, *v26.i8, 0), *v215.i8, *v26.i8, 2), *v216.i8, *v26.i8, 3), *v217.i8, v26, 4), *v218.i8, v26, 5), *v219.i8, v26, 6), *v304.i8, v26, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v214, *v26.i8, 1), v213, *v26.i8, 0), v215, *v26.i8, 2), v216, *v26.i8, 3), v217, v26, 4), v218, v26, 5), v219, v26, 6), v304, v26, 7), 7uLL), v106), *v221);
        v309 = *(v221 + 4 * v19);
        v310 = vrhaddq_u16(vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v302, *v217.i8, *v26.i8, 3), *v218.i8, v26, 4), *v219.i8, v26, 5), *v304.i8, v26, 6), *v305.i8, v26, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v303, v217, *v26.i8, 3), v218, v26, 4), v219, v26, 5), v304, v26, 6), v305, v26, 7), 7uLL), v106), *(v221 + 2 * v19));
        v311 = *(v221 + 6 * v19);
        *v221 = v308;
        *(v221 + 2 * v19) = v310;
        *(v221 + 4 * v19) = vrhaddq_u16(vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v216.i8, *v26.i8, 1), *v215.i8, *v26.i8, 0), *v217.i8, *v26.i8, 2), *v218.i8, *v26.i8, 3), *v219.i8, v26, 4), *v304.i8, v26, 5), *v305.i8, v26, 6), *v306.i8, v26, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v216, *v26.i8, 1), v215, *v26.i8, 0), v217, *v26.i8, 2), v218, *v26.i8, 3), v219, v26, 4), v304, v26, 5), v305, v26, 6), v306, v26, 7), 7uLL), v106), v309);
        *(v221 + 6 * v19) = vrhaddq_u16(vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v217.i8, *v26.i8, 1), *v216.i8, *v26.i8, 0), *v218.i8, *v26.i8, 2), *v219.i8, *v26.i8, 3), *v304.i8, v26, 4), *v305.i8, v26, 5), *v306.i8, v26, 6), *v307.i8, v26, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v217, *v26.i8, 1), v216, *v26.i8, 0), v218, *v26.i8, 2), v219, *v26.i8, 3), v304, v26, 4), v305, v26, 5), v306, v26, 6), v307, v26, 7), 7uLL), v106), v311);
        v213 = v217;
        v214 = v218;
        v215 = v219;
        v221 = (v221 + result);
        v220 = v250 + v105 + v105;
        v216 = v304;
        v217 = v305;
        v218 = v306;
        v219 = v307;
        v222 -= 4;
      }

      while (v222);
      v24 += 16;
      v21 += 2;
      v109 += 16;
      v23 -= 8;
    }

    while (v23);
  }

  return result;
}

uint16x8_t vpx_highbd_convolve_avg_neon(uint16x8_t *a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = a11;
  if (a10 > 7)
  {
    if (a10 == 8)
    {
      v16 = a11 + 2;
      do
      {
        result = vrhaddq_u16(*a1, *a3);
        v17 = vrhaddq_u16(*(a1 + 2 * a2), *(a3 + 2 * a4));
        *a3 = result;
        *(a3 + 2 * a4) = v17;
        v16 -= 2;
        a3 = (a3 + 4 * a4);
        a1 = (a1 + 4 * a2);
      }

      while (v16 > 2);
    }

    else if (a10 > 0x1F)
    {
      if (a10 == 32)
      {
        v25 = a11 + 2;
        v26 = 2 * a2;
        v27 = 2 * a4;
        do
        {
          v28 = vrhaddq_u16(a1[1], a3[1]);
          v29 = vrhaddq_u16(a1[2], a3[2]);
          v30 = vrhaddq_u16(a1[3], a3[3]);
          *a3 = vrhaddq_u16(*a1, *a3);
          a3[1] = v28;
          a3[2] = v29;
          a3[3] = v30;
          v31 = (a3 + v27);
          result = vrhaddq_u16(*(a1 + 2 * a2), *(a3 + 2 * a4));
          v32 = vrhaddq_u16(*(&a1[1] + v26), *(&a3[1] + v27));
          v33 = vrhaddq_u16(*(&a1[2] + v26), *(&a3[2] + v27));
          v34 = vrhaddq_u16(*(&a1[3] + v26), *(&a3[3] + v27));
          *v31 = result;
          v31[1] = v32;
          v31[2] = v33;
          v31[3] = v34;
          v25 -= 2;
          a1 = (a1 + v26 + v26);
          a3 = (a3 + v27 + v27);
        }

        while (v25 > 2);
      }

      else
      {
        v35 = a1 + 4;
        v36 = a3 + 4;
        do
        {
          v37 = vrhaddq_u16(v35[-3], v36[-3]);
          v38 = vrhaddq_u16(v35[-2], v36[-2]);
          v39 = vrhaddq_u16(v35[-1], v36[-1]);
          v36[-4] = vrhaddq_u16(v35[-4], v36[-4]);
          v36[-3] = v37;
          v36[-2] = v38;
          v36[-1] = v39;
          result = vrhaddq_u16(*v35, *v36);
          v40 = vrhaddq_u16(v35[1], v36[1]);
          v41 = vrhaddq_u16(v35[2], v36[2]);
          v42 = vrhaddq_u16(v35[3], v36[3]);
          *v36 = result;
          v36[1] = v40;
          v36[2] = v41;
          v36[3] = v42;
          v35 = (v35 + 2 * a2);
          v36 = (v36 + 2 * a4);
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v18 = a11 + 2;
      v19 = 2 * a4;
      v20 = 2 * a2;
      do
      {
        v21 = (a3 + v19);
        result = vrhaddq_u16(*a1, *a3);
        v22 = vrhaddq_u16(a1[1], a3[1]);
        v23 = vrhaddq_u16(*(a1 + 2 * a2), *(a3 + 2 * a4));
        v24 = vrhaddq_u16(*(&a1[1] + v20), *(&a3[1] + v19));
        *a3 = result;
        a3[1] = v22;
        *v21 = v23;
        v21[1] = v24;
        v18 -= 2;
        a3 = (a3 + 4 * a4);
        a1 = (a1 + v20 + v20);
      }

      while (v18 > 2);
    }
  }

  else
  {
    v12 = a11 + 2;
    do
    {
      v13 = *&a1->i8[2 * a2];
      v14 = *&a3->i8[2 * a4];
      *a3->i8 = vrhadd_u16(*a1->i8, *a3->i8);
      *result.i8 = vrhadd_u16(v13, v14);
      *(a3->i64 + 2 * a4) = result.i64[0];
      v12 -= 2;
      a3 = (a3 + 4 * a4);
      a1 = (a1 + 4 * a2);
    }

    while (v12 > 2);
  }

  return result;
}

__n128 vpx_highbd_convolve_copy_neon(__n128 *a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  if (a10 > 7)
  {
    if (a10 == 8)
    {
      do
      {
        result = *a1;
        v14 = *(a1 + 2 * a2);
        *a3 = *a1;
        *(a3 + 2 * a4) = v14;
        a3 = (a3 + 4 * a4);
        a1 = (a1 + 4 * a2);
        a11 -= 2;
      }

      while (a11);
    }

    else if (a10 > 0x1F)
    {
      if (a10 == 32)
      {
        v21 = a1 + 2;
        v22 = a3 + 2;
        do
        {
          result = v21[-2];
          v23 = v21[-1];
          v24 = *v21;
          v25 = v21[1];
          v22[-2] = result;
          v22[-1] = v23;
          *v22 = v24;
          v22[1] = v25;
          v21 = (v21 + 2 * a2);
          v22 = (v22 + 2 * a4);
          --a11;
        }

        while (a11);
      }

      else
      {
        v26 = a1 + 4;
        v27 = a3 + 4;
        do
        {
          result = v26[-4];
          v28 = v26[-3];
          v29 = v26[-2];
          v30 = v26[-1];
          v31 = *v26;
          v32 = v26[1];
          v33 = v26[2];
          v34 = v26[3];
          v27[-4] = result;
          v27[-3] = v28;
          v27[-2] = v29;
          v27[-1] = v30;
          *v27 = v31;
          v27[1] = v32;
          v26 = (v26 + 2 * a2);
          v27[2] = v33;
          v27[3] = v34;
          v27 = (v27 + 2 * a4);
          --a11;
        }

        while (a11);
      }
    }

    else
    {
      v15 = 2 * a2;
      v16 = 2 * a4;
      do
      {
        result = *a1;
        v17 = a1[1];
        v18 = *(a1 + 2 * a2);
        v19 = *(&a1[1] + v15);
        *a3 = *a1;
        a3[1] = v17;
        v20 = (a3->n128_u64 + v16);
        *v20 = v18;
        v20[1] = v19;
        a1 = (a1 + v15 + v15);
        a3 = (a3 + v16 + v16);
        a11 -= 2;
      }

      while (a11);
    }
  }

  else
  {
    do
    {
      result.n128_u64[0] = a1->n128_u64[0];
      v13 = *(a1->n128_u64 + 2 * a2);
      a3->n128_u64[0] = a1->n128_u64[0];
      *(a3->n128_u64 + 2 * a4) = v13;
      a3 = (a3 + 4 * a4);
      a1 = (a1 + 4 * a2);
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

uint8x16_t vpx_idct16x16_1_add_neon(__int16 *a1, uint8x16_t *a2, int a3)
{
  v3 = ((46340 * ((46340 * *a1 + 0x8000) >> 16) + 0x8000) >> 16) + 32;
  if ((v3 & 0x200000) != 0)
  {
    v21 = -(v3 >> 6);
    if (v21 >= 255)
    {
      v21 = 255;
    }

    v22 = vdupq_n_s8(v21 & ~(v21 >> 31));
    *a2 = vqsubq_u8(*a2, v22);
    v23 = (a2 + a3);
    *v23 = vqsubq_u8(*v23, v22);
    v24 = (v23 + a3);
    *v24 = vqsubq_u8(*v24, v22);
    v25 = (v24 + a3);
    *v25 = vqsubq_u8(*v25, v22);
    v26 = (v25 + a3);
    *v26 = vqsubq_u8(*v26, v22);
    v27 = (v26 + a3);
    *v27 = vqsubq_u8(*v27, v22);
    v28 = (v27 + a3);
    *v28 = vqsubq_u8(*v28, v22);
    v29 = (v28 + a3);
    *v29 = vqsubq_u8(*v29, v22);
    v30 = (v29 + a3);
    *v30 = vqsubq_u8(*v30, v22);
    v31 = (v30 + a3);
    *v31 = vqsubq_u8(*v31, v22);
    v32 = (v31 + a3);
    *v32 = vqsubq_u8(*v32, v22);
    v33 = (v32 + a3);
    *v33 = vqsubq_u8(*v33, v22);
    v34 = (v33 + a3);
    *v34 = vqsubq_u8(*v34, v22);
    v35 = (v34 + a3);
    *v35 = vqsubq_u8(*v35, v22);
    v36 = (v35 + a3);
    *v36 = vqsubq_u8(*v36, v22);
    result = vqsubq_u8(*(v36 + a3), v22);
    *(v36 + a3) = result;
  }

  else
  {
    v4 = v3 >> 6;
    if (v4 >= 255)
    {
      v4 = 255;
    }

    v5 = vdupq_n_s8(v4);
    *a2 = vqaddq_u8(*a2, v5);
    v6 = (a2 + a3);
    *v6 = vqaddq_u8(*v6, v5);
    v7 = (v6 + a3);
    *v7 = vqaddq_u8(*v7, v5);
    v8 = (v7 + a3);
    *v8 = vqaddq_u8(*v8, v5);
    v9 = (v8 + a3);
    *v9 = vqaddq_u8(*v9, v5);
    v10 = (v9 + a3);
    *v10 = vqaddq_u8(*v10, v5);
    v11 = (v10 + a3);
    *v11 = vqaddq_u8(*v11, v5);
    v12 = (v11 + a3);
    *v12 = vqaddq_u8(*v12, v5);
    v13 = (v12 + a3);
    *v13 = vqaddq_u8(*v13, v5);
    v14 = (v13 + a3);
    *v14 = vqaddq_u8(*v14, v5);
    v15 = (v14 + a3);
    *v15 = vqaddq_u8(*v15, v5);
    v16 = (v15 + a3);
    *v16 = vqaddq_u8(*v16, v5);
    v17 = (v16 + a3);
    *v17 = vqaddq_u8(*v17, v5);
    v18 = (v17 + a3);
    *v18 = vqaddq_u8(*v18, v5);
    v19 = (v18 + a3);
    *v19 = vqaddq_u8(*v19, v5);
    result = vqaddq_u8(*(v19 + a3), v5);
    *(v19 + a3) = result;
  }

  return result;
}

int16x8_t *vpx_idct16x16_256_add_half1d(int16x8_t *result, int16x8_t *a2, int16x8_t *a3, int a4, int a5)
{
  if (a2)
  {
    v5 = vuzp1q_s16(*result, result[1]);
    v6 = vuzp1q_s16(result[2], result[3]);
    v7 = vuzp1q_s16(result[4], result[5]);
    v8 = vuzp1q_s16(result[6], result[7]);
    v9 = vuzp1q_s16(result[8], result[9]);
    v10 = vuzp1q_s16(result[10], result[11]);
    v11 = vuzp1q_s16(result[12], result[13]);
    v12 = vuzp1q_s16(result[14], result[15]);
    v13 = vuzp1q_s16(result[16], result[17]);
    v14 = vuzp1q_s16(result[18], result[19]);
    v15 = vuzp1q_s16(result[20], result[21]);
    v16 = vuzp1q_s16(result[22], result[23]);
    v17 = vuzp1q_s16(result[24], result[25]);
    v18 = vuzp1q_s16(result[26], result[27]);
    v19 = vuzp1q_s16(result[28], result[29]);
    v20 = vuzp1q_s16(result[30], result[31]);
  }

  else
  {
    v5 = *result;
    v6 = result[1];
    v7 = result[2];
    v8 = result[3];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = result[8];
    v14 = result[9];
    v15 = result[10];
    v16 = result[11];
    v17 = result[12];
    v18 = result[13];
    v19 = result[14];
    v20 = result[15];
  }

  v21 = vtrn1q_s16(v5, v7);
  v22 = vtrn2q_s16(v5, v7);
  v23 = vtrn1q_s16(v9, v11);
  v24 = vtrn2q_s16(v9, v11);
  v25 = vtrn1q_s16(v13, v15);
  v26 = vtrn2q_s16(v13, v15);
  v27 = vtrn1q_s16(v17, v19);
  v28 = vtrn2q_s16(v17, v19);
  v222 = vtrn1q_s32(v21, v23);
  v29 = vtrn2q_s32(v21, v23);
  v30 = vtrn1q_s32(v22, v24);
  v31 = vtrn2q_s32(v22, v24);
  v32 = vtrn1q_s32(v25, v27);
  v33 = vtrn2q_s32(v25, v27);
  v34 = vtrn1q_s32(v26, v28);
  v35 = vtrn2q_s32(v26, v28);
  v36 = vzip2q_s64(v30, v34);
  v37 = vzip2q_s64(v29, v33);
  v38 = vzip2q_s64(v31, v35);
  v39 = vtrn1q_s16(v6, v8);
  v40 = vtrn2q_s16(v6, v8);
  v41 = vtrn1q_s16(v10, v12);
  v42 = vtrn2q_s16(v10, v12);
  v43 = vtrn1q_s16(v14, v16);
  v44 = vtrn2q_s16(v14, v16);
  v45 = vtrn1q_s16(v18, v20);
  v46 = vtrn2q_s16(v18, v20);
  v47 = vtrn1q_s32(v39, v41);
  v48 = vtrn2q_s32(v39, v41);
  v49 = vtrn1q_s32(v40, v42);
  v50 = vtrn2q_s32(v40, v42);
  v51 = vtrn1q_s32(v43, v45);
  v52 = vtrn2q_s32(v43, v45);
  v53 = vtrn1q_s32(v44, v46);
  v54 = vtrn2q_s32(v44, v46);
  v55 = vzip2q_s64(v49, v53);
  v56 = vzip2q_s64(v48, v52);
  v57 = vzip2q_s64(v50, v54);
  v58 = vdupq_n_s16(0x646u);
  v59 = vdupq_n_s16(0x3FB1u);
  v60 = vmlsl_s16(vmull_s16(*v30.i8, *v58.i8), *v57.i8, *v59.i8);
  v215 = vmlsl_high_s16(vmull_s16(*v34.i8, *&vextq_s8(v58, v58, 8uLL)), v57, v59);
  v61 = vmlal_s16(vmull_s16(*v30.i8, *v59.i8), *v57.i8, *v58.i8);
  v62 = vmull_s16(*v34.i8, *&vextq_s8(v59, v59, 8uLL));
  v63 = vdupq_n_s16(0x3179u);
  v207 = vmlal_high_s16(v62, v57, v58);
  v64 = vdupq_n_s16(0xD766u);
  v65 = vmlal_s16(vmull_s16(*v38.i8, *v64.i8), *v49.i8, *v63.i8);
  v206 = vmlal_high_s16(vmull_s16(*v53.i8, *&vextq_s8(v63, v63, 8uLL)), v38, v64);
  v66 = vmlsl_s16(vmull_s16(*v38.i8, *v63.i8), *v49.i8, *v64.i8);
  v67 = vmlsl_s16(vmull_high_s16(v38, v63), *v53.i8, *&vextq_s8(v64, v64, 8uLL));
  v68 = vdupq_n_s16(0x1E2Bu);
  v69 = vdupq_n_s16(0x3871u);
  v70 = vmlsl_s16(vmull_s16(*v36.i8, *v68.i8), *v50.i8, *v69.i8);
  v209 = vmlsl_s16(vmull_high_s16(v36, v68), *v54.i8, *&vextq_s8(v69, v69, 8uLL));
  v71 = vmlal_s16(vmull_s16(*v36.i8, *v69.i8), *v50.i8, *v68.i8);
  v205 = vmlal_high_s16(vmull_s16(*v54.i8, *&vextq_s8(v68, v68, 8uLL)), v36, v69);
  v72 = vdupq_n_s16(0x3D3Fu);
  v73 = vmull_s16(*v35.i8, *&vextq_s8(v72, v72, 8uLL));
  v74 = vdupq_n_s16(0xED6Cu);
  v75 = vmlal_s16(vmull_s16(*v31.i8, *v74.i8), *v55.i8, *v72.i8);
  v76 = vmlal_high_s16(vmull_s16(*v35.i8, *&vextq_s8(v74, v74, 8uLL)), v55, v72);
  v77 = vmlsl_s16(vmull_s16(*v31.i8, *v72.i8), *v55.i8, *v74.i8);
  v78 = vdupq_n_s16(0xC7Cu);
  v79 = vmlsl_high_s16(v73, v55, v74);
  v80 = vdupq_n_s16(0x3EC5u);
  v81 = vmlsl_s16(vmull_s16(*v29.i8, *v78.i8), *v56.i8, *v80.i8);
  v82 = vmlal_s16(vmull_s16(*v29.i8, *v80.i8), *v56.i8, *v78.i8);
  v220 = vmlal_high_s16(vmull_s16(*v33.i8, *&vextq_s8(v80, v80, 8uLL)), v56, v78);
  v221 = vmlsl_high_s16(vmull_s16(*v33.i8, *&vextq_s8(v78, v78, 8uLL)), v56, v80);
  v83 = vdupq_n_s16(0x3537u);
  v84 = vdupq_n_s16(0xDC72u);
  v85 = vmlal_s16(vmull_s16(*v37.i8, *v84.i8), *v48.i8, *v83.i8);
  v203 = vmlal_high_s16(vmull_s16(*v52.i8, *&vextq_s8(v83, v83, 8uLL)), v37, v84);
  v204 = v81;
  v86 = vzip2q_s64(v222, v32);
  v202 = vmlsl_s16(vmull_s16(*v37.i8, *v83.i8), *v48.i8, *v84.i8);
  v87 = vmlsl_s16(vmull_high_s16(v37, v83), *v52.i8, *&vextq_s8(v84, v84, 8uLL));
  v88 = vdupq_n_s16(0x2D41u);
  v83.i64[0] = vextq_s8(v88, v88, 8uLL).u64[0];
  v218 = vmlal_s16(vmull_s16(*v51.i8, *v83.i8), *v32.i8, *v83.i8);
  v219 = v87;
  v217 = vmlsl_s16(vmull_s16(*v32.i8, *v83.i8), *v51.i8, *v83.i8);
  v89 = vdupq_n_s16(0x187Eu);
  v90 = vzip2q_s64(v47, v51);
  v91 = vdupq_n_s16(0x3B21u);
  v214 = vmlsl_s16(vmull_s16(*v86.i8, *v89.i8), *v90.i8, *v91.i8);
  v213 = vmlsl_high_s16(vmull_high_s16(v86, v89), v90, v91);
  v212 = vmlal_s16(vmull_s16(*v86.i8, *v91.i8), *v90.i8, *v89.i8);
  v211 = vmlal_high_s16(vmull_high_s16(v86, v91), v90, v89);
  *v86.i8 = vsub_s16(vrshrn_n_s32(v207, 0xEuLL), vrshrn_n_s32(v67, 0xEuLL));
  *v90.i8 = vsub_s16(vrshrn_n_s32(v215, 0xEuLL), vrshrn_n_s32(v206, 0xEuLL));
  *v80.i8 = vrshrn_n_s32(v60, 0xEuLL);
  *v81.i8 = vrshrn_n_s32(v61, 0xEuLL);
  *v37.i8 = vrshrn_n_s32(v65, 0xEuLL);
  *v74.i8 = vrshrn_n_s32(v66, 0xEuLL);
  *v60.i8 = vsub_s16(*v81.i8, *v74.i8);
  *v61.i8 = vsub_s16(*v80.i8, *v37.i8);
  v92 = vmlsl_s16(vmull_s16(*v60.i8, *v89.i8), *v61.i8, *v91.i8);
  v93 = vmlal_s16(vmull_s16(*v60.i8, *v91.i8), *v61.i8, *v89.i8);
  v94 = vmlsl_s16(vmull_s16(*v86.i8, *v89.i8), *v90.i8, *v91.i8);
  v201 = vmlal_s16(vmull_s16(*v86.i8, *v91.i8), *v90.i8, *v89.i8);
  *v86.i8 = vsub_s16(vrshrn_n_s32(v79, 0xEuLL), vrshrn_n_s32(v205, 0xEuLL));
  *v90.i8 = vsub_s16(vrshrn_n_s32(v76, 0xEuLL), vrshrn_n_s32(v209, 0xEuLL));
  *v52.i8 = vrshrn_n_s32(v70, 0xEuLL);
  *v71.i8 = vrshrn_n_s32(v71, 0xEuLL);
  *v87.i8 = vrshrn_n_s32(v75, 0xEuLL);
  *v62.i8 = vrshrn_n_s32(v77, 0xEuLL);
  *v78.i8 = vsub_s16(*v62.i8, *v71.i8);
  *v70.i8 = vsub_s16(*v87.i8, *v52.i8);
  v95 = vmlsl_s16(vmull_s16(*v78.i8, *v89.i8), *v70.i8, *v91.i8);
  v96 = vmull_s16(*v70.i8, *v89.i8);
  v97 = vmlsl_s16(vmull_s16(*v86.i8, *v89.i8), *v90.i8, *v91.i8);
  v98 = vmlal_s16(v96, *v78.i8, *v91.i8);
  v99 = vmlal_s16(vmull_s16(*v90.i8, *v89.i8), *v86.i8, *v91.i8);
  v100 = vrshrn_high_n_s32(*v74.i8, v67, 0xEuLL);
  v216 = vaddq_s16(vrshrn_high_n_s32(*v37.i8, v206, 0xEuLL), vrshrn_high_n_s32(*v80.i8, v215, 0xEuLL));
  *v74.i8 = vrshrn_n_s32(v204, 0xEuLL);
  v101 = vaddq_s16(vrshrn_high_n_s32(*v87.i8, v76, 0xEuLL), vrshrn_high_n_s32(*v52.i8, v209, 0xEuLL));
  *v53.i8 = vrshrn_n_s32(v82, 0xEuLL);
  v102 = vaddq_s16(vrshrn_high_n_s32(*v62.i8, v79, 0xEuLL), vrshrn_high_n_s32(*v71.i8, v205, 0xEuLL));
  *v79.i8 = vrshrn_n_s32(v85, 0xEuLL);
  v208 = vaddq_s16(v100, vrshrn_high_n_s32(*v81.i8, v207, 0xEuLL));
  v210 = v102;
  v103 = vmlsl_s16(vmull_s16(*v222.i8, *v88.i8), *v47.i8, *v88.i8);
  v104 = vmlal_s16(vmull_s16(*v47.i8, *v88.i8), *v222.i8, *v88.i8);
  *v78.i8 = vsub_s16(vrshrn_n_s32(v220, 0xEuLL), vrshrn_n_s32(v219, 0xEuLL));
  *v82.i8 = vrshrn_n_s32(v202, 0xEuLL);
  *v100.i8 = vsub_s16(vrshrn_n_s32(v221, 0xEuLL), vrshrn_n_s32(v203, 0xEuLL));
  *v86.i8 = vsub_s16(*v53.i8, *v82.i8);
  *v90.i8 = vsub_s16(*v74.i8, *v79.i8);
  v105 = vmlsl_s16(vmull_s16(*v86.i8, *v88.i8), *v90.i8, *v88.i8);
  v106 = vmlal_s16(vmull_s16(*v90.i8, *v88.i8), *v86.i8, *v88.i8);
  v107 = vmlsl_s16(vmull_s16(*v78.i8, *v88.i8), *v100.i8, *v88.i8);
  v108 = vmlal_s16(vmull_s16(*v100.i8, *v88.i8), *v78.i8, *v88.i8);
  *v81.i8 = vsub_s16(vrshrn_n_s32(v201, 0xEuLL), vrshrn_n_s32(v97, 0xEuLL));
  v109 = vnegq_s32(v99);
  *v99.i8 = vsub_s16(vrshrn_n_s32(v94, 0xEuLL), vrshrn_n_s32(v109, 0xEuLL));
  *v102.i8 = vrshrn_n_s32(v92, 0xEuLL);
  *v80.i8 = vrshrn_n_s32(v93, 0xEuLL);
  *v62.i8 = vrshrn_n_s32(v95, 0xEuLL);
  *v98.i8 = vrshrn_n_s32(vnegq_s32(v98), 0xEuLL);
  *v93.i8 = vsub_s16(*v80.i8, *v62.i8);
  *v92.i8 = vsub_s16(*v102.i8, *v98.i8);
  v110 = vmlsl_s16(vmull_s16(*v93.i8, *v88.i8), *v92.i8, *v88.i8);
  v111 = vmlal_s16(vmull_s16(*v92.i8, *v88.i8), *v93.i8, *v88.i8);
  v112 = vmlsl_s16(vmull_s16(*v81.i8, *v88.i8), *v99.i8, *v88.i8);
  v113 = vmlal_s16(vmull_s16(*v99.i8, *v88.i8), *v81.i8, *v88.i8);
  v114 = vsubq_s16(v216, v101);
  v115 = vsubq_s16(v208, v210);
  v116 = vmlsl_s16(vmull_s16(*v115.i8, *v88.i8), *v114.i8, *v88.i8);
  v117 = vmlsl_high_s16(vmull_high_s16(v115, v88), v114, v88);
  v118 = vmlal_s16(vmull_s16(*v114.i8, *v88.i8), *v115.i8, *v88.i8);
  v119 = vmlal_high_s16(vmull_high_s16(v114, v88), v115, v88);
  v120 = vrshrn_high_n_s32(vrshrn_n_s32(v103, 0xEuLL), v217, 0xEuLL);
  v121 = vrshrn_high_n_s32(vrshrn_n_s32(v104, 0xEuLL), v218, 0xEuLL);
  v122 = vrshrn_high_n_s32(vrshrn_n_s32(v214, 0xEuLL), v213, 0xEuLL);
  v123 = vrshrn_high_n_s32(vrshrn_n_s32(v212, 0xEuLL), v211, 0xEuLL);
  v124 = vaddq_s16(vrshrn_high_n_s32(*v79.i8, v203, 0xEuLL), vrshrn_high_n_s32(*v74.i8, v221, 0xEuLL));
  v125 = vaddq_s16(vrshrn_high_n_s32(*v82.i8, v219, 0xEuLL), vrshrn_high_n_s32(*v53.i8, v220, 0xEuLL));
  v126 = vrshrn_high_n_s32(*v98.i8, v109, 0xEuLL);
  v127 = vaddq_s16(v122, v120);
  v128 = vsubq_s16(v120, v122);
  v129 = vaddq_s16(v123, v121);
  v130 = vsubq_s16(v121, v123);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v105, 0xEuLL), v107, 0xEuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v106, 0xEuLL), v108, 0xEuLL);
  v133 = vaddq_s16(v101, v216);
  v134 = vaddq_s16(v126, vrshrn_high_n_s32(*v102.i8, v94, 0xEuLL));
  v135 = vaddq_s16(vrshrn_high_n_s32(*v62.i8, v97, 0xEuLL), vrshrn_high_n_s32(*v80.i8, v201, 0xEuLL));
  v136 = vaddq_s16(v210, v208);
  v137 = vaddq_s16(v130, v124);
  v138 = vsubq_s16(v130, v124);
  v139 = vaddq_s16(v131, v128);
  v140 = vsubq_s16(v128, v131);
  v141 = vaddq_s16(v132, v127);
  v142 = vsubq_s16(v127, v132);
  v143 = vaddq_s16(v129, v125);
  v144 = vsubq_s16(v129, v125);
  v145 = vrshrn_high_n_s32(vrshrn_n_s32(v110, 0xEuLL), v112, 0xEuLL);
  v146 = vrshrn_high_n_s32(vrshrn_n_s32(v111, 0xEuLL), v113, 0xEuLL);
  v147 = vrshrn_high_n_s32(vrshrn_n_s32(v116, 0xEuLL), v117, 0xEuLL);
  v148 = vrshrn_high_n_s32(vrshrn_n_s32(v118, 0xEuLL), v119, 0xEuLL);
  v149 = vqaddq_s16(v144, v133);
  v150 = vqsubq_s16(v144, v133);
  v151 = vqaddq_s16(v142, v134);
  v152 = vqsubq_s16(v142, v134);
  v153 = vqaddq_s16(v140, v145);
  v154 = vqsubq_s16(v140, v145);
  v155 = vqaddq_s16(v138, v147);
  v156 = vqsubq_s16(v138, v147);
  v157 = vqaddq_s16(v137, v148);
  v158 = vqsubq_s16(v137, v148);
  v159 = vqaddq_s16(v139, v146);
  v160 = vqsubq_s16(v139, v146);
  v161 = vqaddq_s16(v141, v135);
  v162 = vqsubq_s16(v141, v135);
  v163 = vqaddq_s16(v143, v136);
  v164 = vqsubq_s16(v143, v136);
  if (a2)
  {
    *a2 = v163;
    a2[2] = v161;
    a2[4] = v159;
    a2[6] = v157;
    a2[8] = v155;
    a2[10] = v153;
    a2[12] = v151;
    a2[14] = v149;
    a2[16] = v150;
    a2[18] = v152;
    a2[20] = v154;
    a2[22] = v156;
    a2[24] = v158;
    a2[26] = v160;
    a2[28] = v162;
    a2[30] = v164;
  }

  else if (a5)
  {
    v165 = vrshrq_n_s16(v150, 6uLL);
    v166 = vrshrq_n_s16(v152, 6uLL);
    v167 = vrshrq_n_s16(v154, 6uLL);
    v168 = vrshrq_n_s16(v156, 6uLL);
    v169 = vrshrq_n_s16(v158, 6uLL);
    v170 = vrshrq_n_s16(v160, 6uLL);
    v171 = vrshrq_n_s16(v162, 6uLL);
    v172.i64[0] = 0xFF00FF00FF00FFLL;
    v172.i64[1] = 0xFF00FF00FF00FFLL;
    *a3 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v163, 6uLL), *a3), v172), 0);
    v173 = 2 * a4;
    *(a3 + v173) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v161, 6uLL), *(a3 + v173)), v172), 0);
    v174 = (a3 + v173 + v173);
    *v174 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v159, 6uLL), *v174), v172), 0);
    v175 = (v174 + v173);
    *v175 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v157, 6uLL), *v175), v172), 0);
    v176 = (v175 + v173);
    *v176 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v155, 6uLL), *v176), v172), 0);
    v177 = (v176 + v173);
    *v177 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v153, 6uLL), *v177), v172), 0);
    v178 = (v177 + v173);
    *v178 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v151, 6uLL), *v178), v172), 0);
    v179 = (v178 + v173);
    *v179 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v149, 6uLL), *v179), v172), 0);
    v180 = (v179 + v173);
    *v180 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v165, *v180), v172), 0);
    v181 = (v180 + v173);
    *v181 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v166, *v181), v172), 0);
    v182 = (v181 + v173);
    *v182 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v167, *v182), v172), 0);
    v183 = (v182 + v173);
    *v183 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v168, *v183), v172), 0);
    v184 = (v183 + v173);
    *v184 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v169, *v184), v172), 0);
    v185 = (v184 + v173);
    *v185 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v170, *v185), v172), 0);
    v186 = (v185 + v173);
    *v186 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v171, *v186), v172), 0);
    *(v186 + v173) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v164, 6uLL), *(v186 + v173)), v172), 0);
  }

  else
  {
    *a3->i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a3->i8), v163, 6uLL));
    v187 = &a3->i8[a4];
    *v187 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v187), v161, 6uLL));
    v188 = (v187 + a4);
    *v188 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v188), v159, 6uLL));
    v189 = (v188 + a4);
    *v189 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v189), v157, 6uLL));
    v190 = (v189 + a4);
    *v190 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v190), v155, 6uLL));
    v191 = (v190 + a4);
    *v191 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v191), v153, 6uLL));
    v192 = (v191 + a4);
    *v192 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v192), v151, 6uLL));
    v193 = (v192 + a4);
    *v193 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v193), v149, 6uLL));
    v194 = (v193 + a4);
    *v194 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v194), v150, 6uLL));
    v195 = (v194 + a4);
    *v195 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v195), v152, 6uLL));
    v196 = (v195 + a4);
    *v196 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v196), v154, 6uLL));
    v197 = (v196 + a4);
    *v197 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v197), v156, 6uLL));
    v198 = (v197 + a4);
    *v198 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v198), v158, 6uLL));
    v199 = (v198 + a4);
    *v199 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v199), v160, 6uLL));
    v200 = (v199 + a4);
    *v200 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v200), v162, 6uLL));
    *(v200 + a4) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v200 + a4)), v164, 6uLL));
  }

  return result;
}