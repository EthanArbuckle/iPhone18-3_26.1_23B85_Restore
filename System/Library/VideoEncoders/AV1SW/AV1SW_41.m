uint64_t sub_277B5BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 33;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x38);
        v36 += 128;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 32;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 128];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x38);
        v80 += 128;
        v81 += 128;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 32;
      sub_2779725E0(v165 >> 1, v15, 64, 32, v164 >> 1, 64, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x38);
        v87 += 128;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 33;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v36 += 128;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 32;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 128];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x38);
        v114 += 128;
        v115 += 128;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 32;
      sub_2779725E0(v165 >> 1, v15, 64, 32, v164 >> 1, 64, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x38);
        v121 += 128;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 32;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x38);
        v36 += 128;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 32;
      sub_2779725E0(v164 >> 1, v15, 64, 32, v166 >> 1, 64, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v42 += 128;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 33;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x38);
        v51 += 128;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 32;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 128];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x38);
        v132 += 128;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 32;
      sub_2779725E0(v165 >> 1, v15, 64, 32, v164 >> 1, 64, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x38);
        v138 += 128;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 33;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x38);
        v51 += 128;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 32;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 128];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x38);
        v147 += 128;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 32;
      sub_2779725E0(v165 >> 1, v15, 64, 32, v164 >> 1, 64, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x38);
        v155 += 128;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 32;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v51 += 128;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 32;
      sub_2779725E0(v164 >> 1, v15, 64, 32, v166 >> 1, 64, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v57 += 128;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 32;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x38);
      v64 += 128;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 32;
    sub_2779725E0(v164 >> 1, v15, 64, 32, v166 >> 1, 64, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x38);
      v71 += 128;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 32;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x38);
      v97 += 128;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 32;
    sub_2779725E0(v164 >> 1, v15, 64, 32, v166 >> 1, 64, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x38);
      v103 += 128;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 32;
    sub_2779725E0(v166 >> 1, v15, 64, 32, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x38);
      v26 += 128;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 11);
}

uint64_t sub_277B5C424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 65;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x38);
        v36 += 128;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 64;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 128];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x38);
        v80 += 128;
        v81 += 128;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 64;
      sub_2779725E0(v165 >> 1, v15, 64, 64, v164 >> 1, 64, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x38);
        v87 += 128;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 65;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v36 += 128;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 64;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 128];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x38);
        v114 += 128;
        v115 += 128;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 64;
      sub_2779725E0(v165 >> 1, v15, 64, 64, v164 >> 1, 64, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x38);
        v121 += 128;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 64;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x38);
        v36 += 128;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 64;
      sub_2779725E0(v164 >> 1, v15, 64, 64, v166 >> 1, 64, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v42 += 128;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 65;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x38);
        v51 += 128;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 64;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 128];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x38);
        v132 += 128;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 64;
      sub_2779725E0(v165 >> 1, v15, 64, 64, v164 >> 1, 64, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x38);
        v138 += 128;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 65;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x38);
        v51 += 128;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 64;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 128];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x38);
        v147 += 128;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 64;
      sub_2779725E0(v165 >> 1, v15, 64, 64, v164 >> 1, 64, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x38);
        v155 += 128;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 64;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v51 += 128;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 64;
      sub_2779725E0(v164 >> 1, v15, 64, 64, v166 >> 1, 64, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v57 += 128;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 64;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x38);
      v64 += 128;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 64;
    sub_2779725E0(v164 >> 1, v15, 64, 64, v166 >> 1, 64, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x38);
      v71 += 128;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 64;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x38);
      v97 += 128;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 64;
    sub_2779725E0(v164 >> 1, v15, 64, 64, v166 >> 1, 64, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x38);
      v103 += 128;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 64;
    sub_2779725E0(v166 >> 1, v15, 64, 64, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x38);
      v26 += 128;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 12);
}

uint64_t sub_277B5CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 129;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x38);
        v36 += 128;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 128;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 128];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x38);
        v80 += 128;
        v81 += 128;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 128;
      sub_2779725E0(v165 >> 1, v15, 64, 128, v164 >> 1, 64, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x38);
        v87 += 128;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 129;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v36 += 128;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 128;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 128];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x38);
        v114 += 128;
        v115 += 128;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 128;
      sub_2779725E0(v165 >> 1, v15, 64, 128, v164 >> 1, 64, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x38);
        v121 += 128;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 128;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x38);
        v36 += 128;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 128;
      sub_2779725E0(v164 >> 1, v15, 64, 128, v166 >> 1, 64, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v42 += 128;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 129;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x38);
        v51 += 128;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 128;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 128];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x38);
        v132 += 128;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 128;
      sub_2779725E0(v165 >> 1, v15, 64, 128, v164 >> 1, 64, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x38);
        v138 += 128;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 129;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x38);
        v51 += 128;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 128;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 128];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x38);
        v147 += 128;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 128;
      sub_2779725E0(v165 >> 1, v15, 64, 128, v164 >> 1, 64, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x38);
        v155 += 128;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 128;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v51 += 128;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 128;
      sub_2779725E0(v164 >> 1, v15, 64, 128, v166 >> 1, 64, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v57 += 128;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 128;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x38);
      v64 += 128;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 128;
    sub_2779725E0(v164 >> 1, v15, 64, 128, v166 >> 1, 64, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x38);
      v71 += 128;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 128;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x38);
      v97 += 128;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 128;
    sub_2779725E0(v164 >> 1, v15, 64, 128, v166 >> 1, 64, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x38);
      v103 += 128;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 128;
    sub_2779725E0(v166 >> 1, v15, 64, 128, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x38);
      v26 += 128;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 13);
}

uint64_t sub_277B5D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 65;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x78);
        v36 += 256;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 64;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 256];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x78);
        v80 += 256;
        v81 += 256;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 64;
      sub_2779725E0(v165 >> 1, v15, 128, 64, v164 >> 1, 128, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x78);
        v87 += 256;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 65;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x78);
        v36 += 256;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 64;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 256];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x78);
        v114 += 256;
        v115 += 256;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 64;
      sub_2779725E0(v165 >> 1, v15, 128, 64, v164 >> 1, 128, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x78);
        v121 += 256;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 64;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x78);
        v36 += 256;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 64;
      sub_2779725E0(v164 >> 1, v15, 128, 64, v166 >> 1, 128, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x78);
        v42 += 256;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 65;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x78);
        v51 += 256;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 64;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 256];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x78);
        v132 += 256;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 64;
      sub_2779725E0(v165 >> 1, v15, 128, 64, v164 >> 1, 128, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x78);
        v138 += 256;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 65;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x78);
        v51 += 256;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 64;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 256];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x78);
        v147 += 256;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 64;
      sub_2779725E0(v165 >> 1, v15, 128, 64, v164 >> 1, 128, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x78);
        v155 += 256;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 64;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x78);
        v51 += 256;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 64;
      sub_2779725E0(v164 >> 1, v15, 128, 64, v166 >> 1, 128, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x78);
        v57 += 256;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 64;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x78);
      v64 += 256;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 64;
    sub_2779725E0(v164 >> 1, v15, 128, 64, v166 >> 1, 128, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x78);
      v71 += 256;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 64;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x78);
      v97 += 256;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 64;
    sub_2779725E0(v164 >> 1, v15, 128, 64, v166 >> 1, 128, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x78);
      v103 += 256;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 64;
    sub_2779725E0(v166 >> 1, v15, 128, 64, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x78);
      v26 += 256;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 13);
}

uint64_t sub_277B5E110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 129;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x78);
        v36 += 256;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 128;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 256];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x78);
        v80 += 256;
        v81 += 256;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 128;
      sub_2779725E0(v165 >> 1, v15, 128, 128, v164 >> 1, 128, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x78);
        v87 += 256;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 129;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x78);
        v36 += 256;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 128;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 256];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x78);
        v114 += 256;
        v115 += 256;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 128;
      sub_2779725E0(v165 >> 1, v15, 128, 128, v164 >> 1, 128, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x78);
        v121 += 256;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 128;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x78);
        v36 += 256;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 128;
      sub_2779725E0(v164 >> 1, v15, 128, 128, v166 >> 1, 128, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x78);
        v42 += 256;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 129;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x78);
        v51 += 256;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 128;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 256];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x78);
        v132 += 256;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 128;
      sub_2779725E0(v165 >> 1, v15, 128, 128, v164 >> 1, 128, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x78);
        v138 += 256;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 129;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x78);
        v51 += 256;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 128;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 256];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x78);
        v147 += 256;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 128;
      sub_2779725E0(v165 >> 1, v15, 128, 128, v164 >> 1, 128, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x78);
        v155 += 256;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 128;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x78);
        v51 += 256;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 128;
      sub_2779725E0(v164 >> 1, v15, 128, 128, v166 >> 1, 128, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x78);
        v57 += 256;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 128;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x78);
      v64 += 256;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 128;
    sub_2779725E0(v164 >> 1, v15, 128, 128, v166 >> 1, 128, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x78);
      v71 += 256;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 128;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x78);
      v97 += 256;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 128;
    sub_2779725E0(v164 >> 1, v15, 128, 128, v166 >> 1, 128, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x78);
      v103 += 256;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 128;
    sub_2779725E0(v166 >> 1, v15, 128, 128, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x78);
      v26 += 256;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 14);
}

uint64_t sub_277B5EAB8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, int *a12)
{
  v12 = 0;
  v28[17] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 136);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 128);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 128);
  return sub_277997618(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B5EC18(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v34 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v33[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 528);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v33[0];
  do
  {
    v21 = v33[v17 + 1];
    *&v32[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 512);
  sub_2779725E0(v31 >> 1, a7, 8, 32, v32 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  v22 = 0;
  v23 = (2 * a5);
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  do
  {
    v27 = vsubq_s16(*&v31[v22], *v23);
    v26 = vpadalq_s16(v26, v27);
    v24 = vmlal_s16(v24, *v27.i8, *v27.i8);
    v25 = vmlal_high_s16(v25, v27, v27);
    v22 += 16;
    v23 = (v23 + 2 * a6);
  }

  while (v22 != 512);
  v28 = vaddlvq_u32(vaddq_s32(v25, v24));
  *a11 = v28;
  v29 = vaddvq_s32(v26);
  return v28 - ((v29 * v29) >> 8);
}

uint64_t sub_277B5EDB0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13, int a14, _DWORD *a15)
{
  v154[15] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v115 = 0;
      v116 = (v17 + 18);
      do
      {
        v117 = &v153[v115];
        *v117 = vrhaddq_u16(*(v116 - 18), v116[-1]);
        v117[1] = vrhaddq_u16(*(v116 - 2), *v116);
        v115 += 2;
        v116 = (v116 + 2 * a2);
      }

      while ((v115 * 16) != 160);
      v118 = v153[0];
      v119 = v154;
      v120 = 32;
      do
      {
        v121 = &v151[v120];
        v123 = v119[-2];
        v122 = v119[-1];
        v124 = *v119;
        v119 += 2;
        v125 = *v124.i8;
        v126 = vrhaddq_u16(v123, v124);
        v121[-2] = vrhaddq_u16(v118, v122);
        v121[-1] = v126;
        v120 += 32;
        v118 = v122;
      }

      while (v120 != 160);
      v127 = v152;
      v128 = 4;
      sub_2779725E0(v152 >> 1, a7, 16, 4, v151 >> 1, 16, a8, a13, v122, *v122.i64, *v126.i64, v125, a14);
      v129 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v130 = 0;
        v131 = 1;
        do
        {
          v132 = v131;
          v133 = vsubq_s16(*&v127[2 * v130], *(v129 + 2 * v130));
          v23 = vpadalq_s16(v23, v133);
          v21 = vmlal_s16(v21, *v133.i8, *v133.i8);
          v22 = vmlal_high_s16(v22, v133, v133);
          v130 = 8;
          v131 = 0;
        }

        while ((v132 & 1) != 0);
        v127 += 32;
        v129 += 2 * a6;
        --v128;
      }

      while (v128);
    }

    else
    {
      v28 = 0;
      v29 = (v17 + 18);
      v30 = 2 * a2;
      if (a4)
      {
        do
        {
          v41 = &v153[v28];
          *v41 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v41[1] = vrhaddq_u16(*(v29 - 2), *v29);
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 160);
        v42 = vdupq_n_s16(8 - a4);
        v43 = vdupq_n_s16(a4);
        v44 = v153[0];
        v45 = v154;
        v46 = 32;
        do
        {
          v48 = v45[-2];
          v47 = v45[-1];
          v49 = *v45;
          v45 += 2;
          v50 = &v151[v46];
          v50[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v42), v47, v43), 3uLL);
          v50[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48, v42), v49, v43), 3uLL);
          v46 += 32;
          v44 = v47;
        }

        while (v46 != 160);
        v51 = v152;
        v52 = 4;
        sub_2779725E0(v152 >> 1, a7, 16, 4, v151 >> 1, 16, a8, a13, v42, *v43.i64, *v47.i64, *v47.i8, a14);
        v53 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v54 = 0;
          v55 = 1;
          do
          {
            v56 = v55;
            v57 = vsubq_s16(*&v51[2 * v54], *(v53 + 2 * v54));
            v23 = vpadalq_s16(v23, v57);
            v21 = vmlal_s16(v21, *v57.i8, *v57.i8);
            v22 = vmlal_high_s16(v22, v57, v57);
            v54 = 8;
            v55 = 0;
          }

          while ((v56 & 1) != 0);
          v51 += 32;
          v53 += 2 * a6;
          --v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v31 = &v153[v28];
          *v31 = vrhaddq_u16(*(v29 - 18), v29[-1]);
          v32 = *v29;
          v33 = vrhaddq_u16(*(v29 - 2), *v29);
          v31[1] = v33;
          v28 += 2;
          v29 = (v29 + v30);
        }

        while ((v28 * 16) != 128);
        v34 = v151;
        v35 = 4;
        sub_2779725E0(v151 >> 1, a7, 16, 4, v153 >> 1, 16, a8, a13, v33, *v32.i64, a11, a12, a14);
        v36 = 2 * a5;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v37 = 0;
          v38 = 1;
          do
          {
            v39 = v38;
            v40 = vsubq_s16(*&v34[2 * v37], *(v36 + 2 * v37));
            v23 = vpadalq_s16(v23, v40);
            v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
            v22 = vmlal_high_s16(v22, v40, v40);
            v37 = 8;
            v38 = 0;
          }

          while ((v39 & 1) != 0);
          v34 += 32;
          v36 += 2 * a6;
          --v35;
        }

        while (v35);
      }
    }
  }

  else if (a3)
  {
    v58 = 0;
    v59 = vdupq_n_s16(8 - a3);
    v60 = vdupq_n_s16(a3);
    v61 = (v17 + 18);
    v62 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v73 = &v153[v58];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 160);
      v74 = 0;
      v75 = v153[0];
      do
      {
        v76 = &v151[v74 * 16];
        v77 = v153[v74 + 2];
        v78 = v153[v74 + 3];
        v79 = vrhaddq_u16(v153[v74 + 1], v78);
        *v76 = vrhaddq_u16(v75, v77);
        v76[1] = v79;
        v74 += 2;
        v75 = v77;
      }

      while ((v74 * 16) != 128);
      v80 = v152;
      v81 = 4;
      sub_2779725E0(v152 >> 1, a7, 16, 4, v151 >> 1, 16, a8, a13, v77, *v77.i64, *v79.i64, *v78.i8, a14);
      v82 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = v84;
          v86 = vsubq_s16(*&v80[2 * v83], *(v82 + 2 * v83));
          v23 = vpadalq_s16(v23, v86);
          v21 = vmlal_s16(v21, *v86.i8, *v86.i8);
          v22 = vmlal_high_s16(v22, v86, v86);
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
        v80 += 32;
        v82 += 2 * a6;
        --v81;
      }

      while (v81);
    }

    else if (a4)
    {
      do
      {
        v87 = &v153[v58];
        *v87 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v87[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 160);
      v88 = 0;
      v89 = vdupq_n_s16(8 - a4);
      v90 = vdupq_n_s16(a4);
      v91 = v153[0];
      do
      {
        v92 = v153[v88 + 2];
        v93 = &v151[v88 * 16];
        v94 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v153[v88 + 1], v89), v153[v88 + 3], v90), 3uLL);
        *v93 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v91, v89), v92, v90), 3uLL);
        v93[1] = v94;
        v88 += 2;
        v91 = v92;
      }

      while ((v88 * 16) != 128);
      v95 = v152;
      v96 = 4;
      sub_2779725E0(v152 >> 1, a7, 16, 4, v151 >> 1, 16, a8, a13, v89, *v90.i64, *v92.i64, *v92.i8, a14);
      v97 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v98 = 0;
        v99 = 1;
        do
        {
          v100 = v99;
          v101 = vsubq_s16(*&v95[2 * v98], *(v97 + 2 * v98));
          v23 = vpadalq_s16(v23, v101);
          v21 = vmlal_s16(v21, *v101.i8, *v101.i8);
          v22 = vmlal_high_s16(v22, v101, v101);
          v98 = 8;
          v99 = 0;
        }

        while ((v100 & 1) != 0);
        v95 += 32;
        v97 += 2 * a6;
        --v96;
      }

      while (v96);
    }

    else
    {
      do
      {
        v63 = &v153[v58];
        *v63 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 18), v59), v61[-1], v60), 3uLL);
        v64 = *v61;
        v65 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v61 - 2), v59), *v61, v60), 3uLL);
        v63[1] = v65;
        v58 += 2;
        v61 = (v61 + v62);
      }

      while ((v58 * 16) != 128);
      v66 = v151;
      v67 = 4;
      sub_2779725E0(v151 >> 1, a7, 16, 4, v153 >> 1, 16, a8, a13, v59, *v60.i64, *v65.i64, *v64.i8, a14);
      v68 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v66[2 * v69], *(v68 + 2 * v69));
          v23 = vpadalq_s16(v23, v72);
          v21 = vmlal_s16(v21, *v72.i8, *v72.i8);
          v22 = vmlal_high_s16(v22, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v68 += 2 * a6;
        --v67;
      }

      while (v67);
    }
  }

  else if (a4 == 4)
  {
    v102 = 0;
    v103 = *v17;
    v104 = 2 * a2;
    do
    {
      v105 = &v153[v102];
      v106 = *(v17 + 2 * a2);
      *v105 = vrhaddq_u16(v103, v106);
      v107 = *(v17 + v104 + 16);
      v105[1] = vrhaddq_u16(*(v17 + 16), v107);
      v102 += 2;
      v17 += v104;
      v103 = v106;
    }

    while ((v102 * 16) != 128);
    v108 = v151;
    v109 = 4;
    sub_2779725E0(v151 >> 1, a7, 16, 4, v153 >> 1, 16, a8, a13, v106, *v106.i64, *v107.i64, a12, a14);
    v110 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v111 = 0;
      v112 = 1;
      do
      {
        v113 = v112;
        v114 = vsubq_s16(*&v108[2 * v111], *(v110 + 2 * v111));
        v23 = vpadalq_s16(v23, v114);
        v21 = vmlal_s16(v21, *v114.i8, *v114.i8);
        v22 = vmlal_high_s16(v22, v114, v114);
        v111 = 8;
        v112 = 0;
      }

      while ((v113 & 1) != 0);
      v108 += 32;
      v110 += 2 * a6;
      --v109;
    }

    while (v109);
  }

  else if (a4)
  {
    v134 = 0;
    v135 = vdupq_n_s16(8 - a4);
    v136 = vdupq_n_s16(a4);
    v137 = *v17;
    v138 = 2 * a2;
    do
    {
      v139 = &v153[v134];
      v140 = *(v17 + 2 * a2);
      *v139 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v137, v135), v140, v136), 3uLL);
      v139[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v135), *(v17 + v138 + 16), v136), 3uLL);
      v134 += 2;
      v17 += v138;
      v137 = v140;
    }

    while ((v134 * 16) != 128);
    v141 = v151;
    v142 = 4;
    sub_2779725E0(v151 >> 1, a7, 16, 4, v153 >> 1, 16, a8, a13, v135, *v136.i64, *v140.i64, *v140.i8, a14);
    v143 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v144 = 0;
      v145 = 1;
      do
      {
        v146 = v145;
        v147 = vsubq_s16(*&v141[2 * v144], *(v143 + 2 * v144));
        v23 = vpadalq_s16(v23, v147);
        v21 = vmlal_s16(v21, *v147.i8, *v147.i8);
        v22 = vmlal_high_s16(v22, v147, v147);
        v144 = 8;
        v145 = 0;
      }

      while ((v146 & 1) != 0);
      v141 += 32;
      v143 += 2 * a6;
      --v142;
    }

    while (v142);
  }

  else
  {
    v18 = v153;
    v19 = 4;
    sub_2779725E0(v153 >> 1, a7, 16, 4, a1, a2, a8, a13, a9, a10, a11, a12, a14);
    v20 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v25;
        v27 = vsubq_s16(v18[v24 / 8], *(v20 + 2 * v24));
        v23 = vpadalq_s16(v23, v27);
        v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
        v22 = vmlal_high_s16(v22, v27, v27);
        v24 = 8;
        v25 = 0;
      }

      while ((v26 & 1) != 0);
      v18 += 2;
      v20 += 2 * a6;
      --v19;
    }

    while (v19);
  }

  v148 = vaddvq_s32(v23);
  v149 = vaddlvq_u32(vaddq_s32(v22, v21));
  *a15 = v149;
  return v149 - ((v148 * v148) >> 6);
}

uint64_t sub_277B5F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v162[255] = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    if (v14 == 4)
    {
      v123 = 0;
      v124 = (v25 + 18);
      do
      {
        v125 = &v161[v123];
        *v125 = vrhaddq_u16(*(v124 - 18), v124[-1]);
        v125[1] = vrhaddq_u16(*(v124 - 2), *v124);
        v123 += 2;
        v124 = (v124 + 2 * v12);
      }

      while ((v123 * 16) != 2080);
      v126 = v161[0];
      v127 = v162;
      v128 = 32;
      do
      {
        v129 = &v159[v128];
        v131 = v127[-2];
        v130 = v127[-1];
        v132 = *v127;
        v127 += 2;
        v133 = *v132.i8;
        v134 = vrhaddq_u16(v131, v132);
        v129[-2] = vrhaddq_u16(v126, v130);
        v129[-1] = v134;
        v128 += 32;
        v126 = v130;
      }

      while (v128 != 2080);
      v135 = v160;
      v136 = 64;
      sub_2779725E0(v160 >> 1, v15, 16, 64, v159 >> 1, 16, v16, a9, v130, *v130.i64, *v134.i64, v133, a10);
      v137 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v138 = 0;
        v139 = 1;
        do
        {
          v140 = v139;
          v141 = vsubq_s16(*&v135[2 * v138], *(v137 + 2 * v138));
          v31 = vpadalq_s16(v31, v141);
          v29 = vmlal_s16(v29, *v141.i8, *v141.i8);
          v30 = vmlal_high_s16(v30, v141, v141);
          v138 = 8;
          v139 = 0;
        }

        while ((v140 & 1) != 0);
        v135 += 32;
        v137 += 2 * v22;
        --v136;
      }

      while (v136);
    }

    else
    {
      v36 = 0;
      v37 = (v25 + 18);
      v38 = 2 * v12;
      if (v14)
      {
        do
        {
          v49 = &v161[v36];
          *v49 = vrhaddq_u16(*(v37 - 18), v37[-1]);
          v49[1] = vrhaddq_u16(*(v37 - 2), *v37);
          v36 += 2;
          v37 = (v37 + v38);
        }

        while ((v36 * 16) != 2080);
        v50 = vdupq_n_s16(8 - v14);
        v51 = vdupq_n_s16(v14);
        v52 = v161[0];
        v53 = v162;
        v54 = 32;
        do
        {
          v56 = v53[-2];
          v55 = v53[-1];
          v57 = *v53;
          v53 += 2;
          v58 = &v159[v54];
          v58[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v52, v50), v55, v51), 3uLL);
          v58[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v56, v50), v57, v51), 3uLL);
          v54 += 32;
          v52 = v55;
        }

        while (v54 != 2080);
        v59 = v160;
        v60 = 64;
        sub_2779725E0(v160 >> 1, v15, 16, 64, v159 >> 1, 16, v16, a9, v50, *v51.i64, *v55.i64, *v55.i8, a10);
        v61 = 2 * v24;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        do
        {
          v62 = 0;
          v63 = 1;
          do
          {
            v64 = v63;
            v65 = vsubq_s16(*&v59[2 * v62], *(v61 + 2 * v62));
            v31 = vpadalq_s16(v31, v65);
            v29 = vmlal_s16(v29, *v65.i8, *v65.i8);
            v30 = vmlal_high_s16(v30, v65, v65);
            v62 = 8;
            v63 = 0;
          }

          while ((v64 & 1) != 0);
          v59 += 32;
          v61 += 2 * v22;
          --v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v39 = &v161[v36];
          *v39 = vrhaddq_u16(*(v37 - 18), v37[-1]);
          v40 = *v37;
          v41 = vrhaddq_u16(*(v37 - 2), *v37);
          v39[1] = v41;
          v36 += 2;
          v37 = (v37 + v38);
        }

        while ((v36 * 16) != 2048);
        v42 = v159;
        v43 = 64;
        sub_2779725E0(v159 >> 1, v15, 16, 64, v161 >> 1, 16, v16, a9, v41, *v40.i64, v19, v20, a10);
        v44 = 2 * v24;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        do
        {
          v45 = 0;
          v46 = 1;
          do
          {
            v47 = v46;
            v48 = vsubq_s16(*&v42[2 * v45], *(v44 + 2 * v45));
            v31 = vpadalq_s16(v31, v48);
            v29 = vmlal_s16(v29, *v48.i8, *v48.i8);
            v30 = vmlal_high_s16(v30, v48, v48);
            v45 = 8;
            v46 = 0;
          }

          while ((v47 & 1) != 0);
          v42 += 32;
          v44 += 2 * v22;
          --v43;
        }

        while (v43);
      }
    }
  }

  else if (v13)
  {
    v66 = 0;
    v67 = vdupq_n_s16(8 - v13);
    v68 = vdupq_n_s16(v13);
    v69 = (v25 + 18);
    v70 = 2 * v12;
    if (v14 == 4)
    {
      do
      {
        v81 = &v161[v66];
        *v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 18), v67), v69[-1], v68), 3uLL);
        v81[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 2), v67), *v69, v68), 3uLL);
        v66 += 2;
        v69 = (v69 + v70);
      }

      while ((v66 * 16) != 2080);
      v82 = 0;
      v83 = v161[0];
      do
      {
        v84 = &v159[v82 * 16];
        v85 = v161[v82 + 2];
        v86 = v161[v82 + 3];
        v87 = vrhaddq_u16(v161[v82 + 1], v86);
        *v84 = vrhaddq_u16(v83, v85);
        v84[1] = v87;
        v82 += 2;
        v83 = v85;
      }

      while ((v82 * 16) != 2048);
      v88 = v160;
      v89 = 64;
      sub_2779725E0(v160 >> 1, v15, 16, 64, v159 >> 1, 16, v16, a9, v85, *v85.i64, *v87.i64, *v86.i8, a10);
      v90 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v91 = 0;
        v92 = 1;
        do
        {
          v93 = v92;
          v94 = vsubq_s16(*&v88[2 * v91], *(v90 + 2 * v91));
          v31 = vpadalq_s16(v31, v94);
          v29 = vmlal_s16(v29, *v94.i8, *v94.i8);
          v30 = vmlal_high_s16(v30, v94, v94);
          v91 = 8;
          v92 = 0;
        }

        while ((v93 & 1) != 0);
        v88 += 32;
        v90 += 2 * v22;
        --v89;
      }

      while (v89);
    }

    else if (v14)
    {
      do
      {
        v95 = &v161[v66];
        *v95 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 18), v67), v69[-1], v68), 3uLL);
        v95[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 2), v67), *v69, v68), 3uLL);
        v66 += 2;
        v69 = (v69 + v70);
      }

      while ((v66 * 16) != 2080);
      v96 = 0;
      v97 = vdupq_n_s16(8 - v14);
      v98 = vdupq_n_s16(v14);
      v99 = v161[0];
      do
      {
        v100 = v161[v96 + 2];
        v101 = &v159[v96 * 16];
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v161[v96 + 1], v97), v161[v96 + 3], v98), 3uLL);
        *v101 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v99, v97), v100, v98), 3uLL);
        v101[1] = v102;
        v96 += 2;
        v99 = v100;
      }

      while ((v96 * 16) != 2048);
      v103 = v160;
      v104 = 64;
      sub_2779725E0(v160 >> 1, v15, 16, 64, v159 >> 1, 16, v16, a9, v97, *v98.i64, *v100.i64, *v100.i8, a10);
      v105 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v106 = 0;
        v107 = 1;
        do
        {
          v108 = v107;
          v109 = vsubq_s16(*&v103[2 * v106], *(v105 + 2 * v106));
          v31 = vpadalq_s16(v31, v109);
          v29 = vmlal_s16(v29, *v109.i8, *v109.i8);
          v30 = vmlal_high_s16(v30, v109, v109);
          v106 = 8;
          v107 = 0;
        }

        while ((v108 & 1) != 0);
        v103 += 32;
        v105 += 2 * v22;
        --v104;
      }

      while (v104);
    }

    else
    {
      do
      {
        v71 = &v161[v66];
        *v71 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 18), v67), v69[-1], v68), 3uLL);
        v72 = *v69;
        v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v69 - 2), v67), *v69, v68), 3uLL);
        v71[1] = v73;
        v66 += 2;
        v69 = (v69 + v70);
      }

      while ((v66 * 16) != 2048);
      v74 = v159;
      v75 = 64;
      sub_2779725E0(v159 >> 1, v15, 16, 64, v161 >> 1, 16, v16, a9, v67, *v68.i64, *v73.i64, *v72.i8, a10);
      v76 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = vsubq_s16(*&v74[2 * v77], *(v76 + 2 * v77));
          v31 = vpadalq_s16(v31, v80);
          v29 = vmlal_s16(v29, *v80.i8, *v80.i8);
          v30 = vmlal_high_s16(v30, v80, v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v76 += 2 * v22;
        --v75;
      }

      while (v75);
    }
  }

  else if (v14 == 4)
  {
    v110 = 0;
    v111 = *v25;
    v112 = 2 * v12;
    do
    {
      v113 = &v161[v110];
      v114 = *(v25 + 2 * v12);
      *v113 = vrhaddq_u16(v111, v114);
      v115 = *(v25 + v112 + 16);
      v113[1] = vrhaddq_u16(*(v25 + 16), v115);
      v110 += 2;
      v25 += v112;
      v111 = v114;
    }

    while ((v110 * 16) != 2048);
    v116 = v159;
    v117 = 64;
    sub_2779725E0(v159 >> 1, v15, 16, 64, v161 >> 1, 16, v16, a9, v114, *v114.i64, *v115.i64, v20, a10);
    v118 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v119 = 0;
      v120 = 1;
      do
      {
        v121 = v120;
        v122 = vsubq_s16(*&v116[2 * v119], *(v118 + 2 * v119));
        v31 = vpadalq_s16(v31, v122);
        v29 = vmlal_s16(v29, *v122.i8, *v122.i8);
        v30 = vmlal_high_s16(v30, v122, v122);
        v119 = 8;
        v120 = 0;
      }

      while ((v121 & 1) != 0);
      v116 += 32;
      v118 += 2 * v22;
      --v117;
    }

    while (v117);
  }

  else if (v14)
  {
    v142 = 0;
    v143 = vdupq_n_s16(8 - v14);
    v144 = vdupq_n_s16(v14);
    v145 = *v25;
    v146 = 2 * v12;
    do
    {
      v147 = &v161[v142];
      v148 = *(v25 + 2 * v12);
      *v147 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v145, v143), v148, v144), 3uLL);
      v147[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + 16), v143), *(v25 + v146 + 16), v144), 3uLL);
      v142 += 2;
      v25 += v146;
      v145 = v148;
    }

    while ((v142 * 16) != 2048);
    v149 = v159;
    v150 = 64;
    sub_2779725E0(v159 >> 1, v15, 16, 64, v161 >> 1, 16, v16, a9, v143, *v144.i64, *v148.i64, *v148.i8, a10);
    v151 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v152 = 0;
      v153 = 1;
      do
      {
        v154 = v153;
        v155 = vsubq_s16(*&v149[2 * v152], *(v151 + 2 * v152));
        v31 = vpadalq_s16(v31, v155);
        v29 = vmlal_s16(v29, *v155.i8, *v155.i8);
        v30 = vmlal_high_s16(v30, v155, v155);
        v152 = 8;
        v153 = 0;
      }

      while ((v154 & 1) != 0);
      v149 += 32;
      v151 += 2 * v22;
      --v150;
    }

    while (v150);
  }

  else
  {
    v26 = v161;
    v27 = 64;
    sub_2779725E0(v161 >> 1, v15, 16, 64, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = vsubq_s16(v26[v32 / 8], *(v28 + 2 * v32));
        v31 = vpadalq_s16(v31, v35);
        v29 = vmlal_s16(v29, *v35.i8, *v35.i8);
        v30 = vmlal_high_s16(v30, v35, v35);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v26 += 2;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v156 = vaddvq_s32(v31);
  v157 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v157;
  return v157 - ((v156 * v156) >> 10);
}

uint64_t sub_277B6006C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13, int a14, _DWORD *a15)
{
  v164 = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    v27 = 2 * a2;
    v28 = v163;
    if (a4 == 4)
    {
      v68 = 9;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v28[v69] = vrhaddq_u16(*(v17 + v69), *(v17 + v69 + 2));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v28 += 64;
        v17 += v27;
        --v68;
      }

      while (v68);
      v71 = v163;
      v72 = v161;
      v73 = 8;
      do
      {
        v74 = 0;
        v75 = -8;
        do
        {
          v76 = *&v71[v74 + 64];
          v77 = vrhaddq_u16(*&v71[v74], v76);
          *&v72[v74] = v77;
          v75 += 8;
          v74 += 16;
        }

        while (v75 < 0x18);
        v71 += 64;
        v72 += 64;
        --v73;
      }

      while (v73);
      v78 = v162;
      v79 = 8;
      sub_2779725E0(v162 >> 1, a7, 32, 8, v161 >> 1, 32, a8, a13, v77, *v76.i64, a11, a12, a14);
      v80 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = vsubq_s16(*&v78[v81], *(v80 + v81));
          v23 = vpadalq_s16(v23, v83);
          v21 = vmlal_s16(v21, *v83.i8, *v83.i8);
          v22 = vmlal_high_s16(v22, v83, v83);
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x18);
        v78 += 64;
        v80 += 2 * a6;
        --v79;
      }

      while (v79);
    }

    else if (a4)
    {
      v100 = 9;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          *&v28[v101] = vrhaddq_u16(*(v17 + v101), *(v17 + v101 + 2));
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x18);
        v28 += 64;
        v17 += v27;
        --v100;
      }

      while (v100);
      v103 = 8;
      v104 = vdupq_n_s16(8 - a4);
      v105 = vdupq_n_s16(a4);
      v106 = v163;
      v107 = v161;
      do
      {
        v108 = 0;
        v109 = -8;
        do
        {
          v110 = *&v106[v108 + 64];
          v111 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v106[v108], v104), v110, v105), 3uLL);
          *&v107[v108] = v111;
          v109 += 8;
          v108 += 16;
        }

        while (v109 < 0x18);
        v106 += 64;
        v107 += 64;
        --v103;
      }

      while (v103);
      v112 = v162;
      v113 = 8;
      sub_2779725E0(v162 >> 1, a7, 32, 8, v161 >> 1, 32, a8, a13, v104, *v105.i64, *v111.i64, *v110.i8, a14);
      v114 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v112[v115], *(v114 + v115));
          v23 = vpadalq_s16(v23, v117);
          v21 = vmlal_s16(v21, *v117.i8, *v117.i8);
          v22 = vmlal_high_s16(v22, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x18);
        v112 += 64;
        v114 += 2 * a6;
        --v113;
      }

      while (v113);
    }

    else
    {
      v29 = 8;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = *(v17 + v30 + 2);
          v33 = vrhaddq_u16(*(v17 + v30), v32);
          *&v28[v30] = v33;
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x18);
        v28 += 64;
        v17 += v27;
        --v29;
      }

      while (v29);
      v34 = v161;
      v35 = 8;
      sub_2779725E0(v161 >> 1, a7, 32, 8, v163 >> 1, 32, a8, a13, v33, *v32.i64, a11, a12, a14);
      v36 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v34[v37], *(v36 + v37));
          v23 = vpadalq_s16(v23, v39);
          v21 = vmlal_s16(v21, *v39.i8, *v39.i8);
          v22 = vmlal_high_s16(v22, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v34 += 64;
        v36 += 2 * a6;
        --v35;
      }

      while (v35);
    }
  }

  else if (a3)
  {
    v40 = 8;
    if (a4 == 4)
    {
      v118 = vdupq_n_s16(8 - a3);
      v119 = vdupq_n_s16(a3);
      v120 = v163;
      v121 = 9;
      do
      {
        v122 = 0;
        v123 = -8;
        do
        {
          v124 = *(v17 + v122 + 2);
          v125 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v122), v118), v124, v119), 3uLL);
          *&v120[v122] = v125;
          v123 += 8;
          v122 += 16;
        }

        while (v123 < 0x18);
        v120 += 64;
        v17 += 2 * a2;
        --v121;
      }

      while (v121);
      v126 = 0;
      v127 = 8;
      do
      {
        v128 = -8;
        v129 = v126;
        do
        {
          v130 = *&v163[v129 + 64];
          v131 = vrhaddq_u16(*&v163[v129], v130);
          *&v161[v129] = v131;
          v128 += 8;
          v129 += 16;
        }

        while (v128 < 0x18);
        v126 += 64;
        --v127;
      }

      while (v127);
      v132 = v162;
      v133 = 8;
      sub_2779725E0(v162 >> 1, a7, 32, 8, v161 >> 1, 32, a8, a13, v131, *v130.i64, *v125.i64, *v124.i8, a14);
      v134 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v135 = 0;
        v136 = -8;
        do
        {
          v137 = vsubq_s16(*&v132[v135], *(v134 + v135));
          v23 = vpadalq_s16(v23, v137);
          v21 = vmlal_s16(v21, *v137.i8, *v137.i8);
          v22 = vmlal_high_s16(v22, v137, v137);
          v136 += 8;
          v135 += 16;
        }

        while (v136 < 0x18);
        v132 += 64;
        v134 += 2 * a6;
        --v133;
      }

      while (v133);
    }

    else if (a4)
    {
      v138 = vdupq_n_s16(8 - a3);
      v139 = vdupq_n_s16(a3);
      v140 = v163;
      v141 = 9;
      do
      {
        v142 = 0;
        v143 = -8;
        do
        {
          *&v140[v142] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v142), v138), *(v17 + v142 + 2), v139), 3uLL);
          v143 += 8;
          v142 += 16;
        }

        while (v143 < 0x18);
        v140 += 64;
        v17 += 2 * a2;
        --v141;
      }

      while (v141);
      v144 = 0;
      v145 = 8;
      v146 = vdupq_n_s16(8 - a4);
      v147 = vdupq_n_s16(a4);
      do
      {
        v148 = -8;
        v149 = v144;
        do
        {
          v150 = *&v163[v149 + 64];
          v151 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v163[v149], v146), v150, v147), 3uLL);
          *&v161[v149] = v151;
          v148 += 8;
          v149 += 16;
        }

        while (v148 < 0x18);
        v144 += 64;
        --v145;
      }

      while (v145);
      v152 = v162;
      v153 = 8;
      sub_2779725E0(v162 >> 1, a7, 32, 8, v161 >> 1, 32, a8, a13, v146, *v147.i64, *v151.i64, *v150.i8, a14);
      v154 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v155 = 0;
        v156 = -8;
        do
        {
          v157 = vsubq_s16(*&v152[v155], *(v154 + v155));
          v23 = vpadalq_s16(v23, v157);
          v21 = vmlal_s16(v21, *v157.i8, *v157.i8);
          v22 = vmlal_high_s16(v22, v157, v157);
          v156 += 8;
          v155 += 16;
        }

        while (v156 < 0x18);
        v152 += 64;
        v154 += 2 * a6;
        --v153;
      }

      while (v153);
    }

    else
    {
      v41 = vdupq_n_s16(8 - a3);
      v42 = vdupq_n_s16(a3);
      v43 = v163;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          v46 = *(v17 + v44 + 2);
          v47 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v44), v41), v46, v42), 3uLL);
          *&v43[v44] = v47;
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v43 += 64;
        v17 += 2 * a2;
        --v40;
      }

      while (v40);
      v48 = v161;
      v49 = 8;
      sub_2779725E0(v161 >> 1, a7, 32, 8, v163 >> 1, 32, a8, a13, v41, *v42.i64, *v47.i64, *v46.i8, a14);
      v50 = 2 * a5;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v53 = vsubq_s16(*&v48[v51], *(v50 + v51));
          v23 = vpadalq_s16(v23, v53);
          v21 = vmlal_s16(v21, *v53.i8, *v53.i8);
          v22 = vmlal_high_s16(v22, v53, v53);
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v48 += 64;
        v50 += 2 * a6;
        --v49;
      }

      while (v49);
    }
  }

  else if (a4 == 4)
  {
    v54 = 2 * a2;
    v55 = v163;
    v56 = 8;
    v57 = v17 + v54;
    do
    {
      v58 = 0;
      v59 = -8;
      do
      {
        v60 = *(v57 + v58);
        v61 = vrhaddq_u16(*(v17 + v58), v60);
        *&v55[v58] = v61;
        v59 += 8;
        v58 += 16;
      }

      while (v59 < 0x18);
      v55 += 64;
      v57 += v54;
      v17 += v54;
      --v56;
    }

    while (v56);
    v62 = v161;
    v63 = 8;
    sub_2779725E0(v161 >> 1, a7, 32, 8, v163 >> 1, 32, a8, a13, v61, *v60.i64, a11, a12, a14);
    v64 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v65 = 0;
      v66 = -8;
      do
      {
        v67 = vsubq_s16(*&v62[v65], *(v64 + v65));
        v23 = vpadalq_s16(v23, v67);
        v21 = vmlal_s16(v21, *v67.i8, *v67.i8);
        v22 = vmlal_high_s16(v22, v67, v67);
        v66 += 8;
        v65 += 16;
      }

      while (v66 < 0x18);
      v62 += 64;
      v64 += 2 * a6;
      --v63;
    }

    while (v63);
  }

  else if (a4)
  {
    v84 = 8;
    v85 = vdupq_n_s16(8 - a4);
    v86 = vdupq_n_s16(a4);
    v87 = 2 * a2;
    v88 = v17 + v87;
    v89 = v163;
    do
    {
      v90 = 0;
      v91 = -8;
      do
      {
        v92 = *(v88 + v90);
        v93 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v90), v85), v92, v86), 3uLL);
        *&v89[v90] = v93;
        v91 += 8;
        v90 += 16;
      }

      while (v91 < 0x18);
      v89 += 64;
      v88 += v87;
      v17 += v87;
      --v84;
    }

    while (v84);
    v94 = v161;
    v95 = 8;
    sub_2779725E0(v161 >> 1, a7, 32, 8, v163 >> 1, 32, a8, a13, v85, *v86.i64, *v93.i64, *v92.i8, a14);
    v96 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v97 = 0;
      v98 = -8;
      do
      {
        v99 = vsubq_s16(*&v94[v97], *(v96 + v97));
        v23 = vpadalq_s16(v23, v99);
        v21 = vmlal_s16(v21, *v99.i8, *v99.i8);
        v22 = vmlal_high_s16(v22, v99, v99);
        v98 += 8;
        v97 += 16;
      }

      while (v98 < 0x18);
      v94 += 64;
      v96 += 2 * a6;
      --v95;
    }

    while (v95);
  }

  else
  {
    v18 = v163;
    v19 = 8;
    sub_2779725E0(v163 >> 1, a7, 32, 8, a1, a2, a8, a13, a9, a10, a11, a12, a14);
    v20 = 2 * a5;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = 0;
      v25 = -8;
      do
      {
        v26 = vsubq_s16(*&v18[v24], *(v20 + v24));
        v23 = vpadalq_s16(v23, v26);
        v21 = vmlal_s16(v21, *v26.i8, *v26.i8);
        v22 = vmlal_high_s16(v22, v26, v26);
        v25 += 8;
        v24 += 16;
      }

      while (v25 < 0x18);
      v18 += 64;
      v20 += 2 * a6;
      --v19;
    }

    while (v19);
  }

  v158 = vaddvq_s32(v23);
  v159 = vaddlvq_u32(vaddq_s32(v22, v21));
  *a15 = v159;
  return v159 - ((v158 * v158) >> 8);
}

uint64_t sub_277B609C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v167 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v35 = 2 * v12;
    v36 = v166;
    if (v14 == 4)
    {
      v77 = 17;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v36[v78] = vrhaddq_u16(*(v25 + v78), *(v25 + v78 + 2));
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x38);
        v36 += 128;
        v25 += v35;
        --v77;
      }

      while (v77);
      v80 = v166;
      v81 = v164;
      v82 = 16;
      do
      {
        v83 = 0;
        v84 = -8;
        do
        {
          v85 = *&v80[v83 + 128];
          v86 = vrhaddq_u16(*&v80[v83], v85);
          *&v81[v83] = v86;
          v84 += 8;
          v83 += 16;
        }

        while (v84 < 0x38);
        v80 += 128;
        v81 += 128;
        --v82;
      }

      while (v82);
      v87 = v165;
      v88 = 16;
      sub_2779725E0(v165 >> 1, v15, 64, 16, v164 >> 1, 64, v16, a9, v86, *v85.i64, v19, v20, a10);
      v89 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v90 = 0;
        v91 = -8;
        do
        {
          v92 = vsubq_s16(*&v87[v90], *(v89 + v90));
          v31 = vpadalq_s16(v31, v92);
          v29 = vmlal_s16(v29, *v92.i8, *v92.i8);
          v30 = vmlal_high_s16(v30, v92, v92);
          v91 += 8;
          v90 += 16;
        }

        while (v91 < 0x38);
        v87 += 128;
        v89 += 2 * v22;
        --v88;
      }

      while (v88);
    }

    else if (v14)
    {
      v109 = 17;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v36[v110] = vrhaddq_u16(*(v25 + v110), *(v25 + v110 + 2));
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v36 += 128;
        v25 += v35;
        --v109;
      }

      while (v109);
      v112 = vdupq_n_s16(8 - v14);
      v113 = vdupq_n_s16(v14);
      v114 = v166;
      v115 = v164;
      v116 = 16;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          v119 = *&v114[v117 + 128];
          v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v114[v117], v112), v119, v113), 3uLL);
          *&v115[v117] = v120;
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x38);
        v114 += 128;
        v115 += 128;
        --v116;
      }

      while (v116);
      v121 = v165;
      v122 = 16;
      sub_2779725E0(v165 >> 1, v15, 64, 16, v164 >> 1, 64, v16, a9, v112, *v113.i64, *v120.i64, *v119.i8, a10);
      v123 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v124 = 0;
        v125 = -8;
        do
        {
          v126 = vsubq_s16(*&v121[v124], *(v123 + v124));
          v31 = vpadalq_s16(v31, v126);
          v29 = vmlal_s16(v29, *v126.i8, *v126.i8);
          v30 = vmlal_high_s16(v30, v126, v126);
          v125 += 8;
          v124 += 16;
        }

        while (v125 < 0x38);
        v121 += 128;
        v123 += 2 * v22;
        --v122;
      }

      while (v122);
    }

    else
    {
      v37 = 16;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = *(v25 + v38 + 2);
          v41 = vrhaddq_u16(*(v25 + v38), v40);
          *&v36[v38] = v41;
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x38);
        v36 += 128;
        v25 += v35;
        --v37;
      }

      while (v37);
      v42 = v164;
      v43 = 16;
      sub_2779725E0(v164 >> 1, v15, 64, 16, v166 >> 1, 64, v16, a9, v41, *v40.i64, v19, v20, a10);
      v44 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v31 = vpadalq_s16(v31, v47);
          v29 = vmlal_s16(v29, *v47.i8, *v47.i8);
          v30 = vmlal_high_s16(v30, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v42 += 128;
        v44 += 2 * v22;
        --v43;
      }

      while (v43);
    }
  }

  else if (v13)
  {
    v48 = vdupq_n_s16(8 - v13);
    v49 = vdupq_n_s16(v13);
    v50 = 2 * v12;
    v51 = v166;
    if (v14 == 4)
    {
      v127 = 17;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = *(v25 + v128 + 2);
          v131 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v128), v48), v130, v49), 3uLL);
          *&v51[v128] = v131;
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x38);
        v51 += 128;
        v25 += v50;
        --v127;
      }

      while (v127);
      v132 = 0;
      v133 = 16;
      do
      {
        v134 = -8;
        v135 = v132;
        do
        {
          v136 = *&v166[v135 + 128];
          v137 = vrhaddq_u16(*&v166[v135], v136);
          *&v164[v135] = v137;
          v134 += 8;
          v135 += 16;
        }

        while (v134 < 0x38);
        v132 += 128;
        --v133;
      }

      while (v133);
      v138 = v165;
      v139 = 16;
      sub_2779725E0(v165 >> 1, v15, 64, 16, v164 >> 1, 64, v16, a9, v137, *v136.i64, *v131.i64, *v130.i8, a10);
      v140 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v141 = 0;
        v142 = -8;
        do
        {
          v143 = vsubq_s16(*&v138[v141], *(v140 + v141));
          v31 = vpadalq_s16(v31, v143);
          v29 = vmlal_s16(v29, *v143.i8, *v143.i8);
          v30 = vmlal_high_s16(v30, v143, v143);
          v142 += 8;
          v141 += 16;
        }

        while (v142 < 0x38);
        v138 += 128;
        v140 += 2 * v22;
        --v139;
      }

      while (v139);
    }

    else if (v14)
    {
      v144 = 17;
      do
      {
        v145 = 0;
        v146 = -8;
        do
        {
          *&v51[v145] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v145), v48), *(v25 + v145 + 2), v49), 3uLL);
          v146 += 8;
          v145 += 16;
        }

        while (v146 < 0x38);
        v51 += 128;
        v25 += v50;
        --v144;
      }

      while (v144);
      v147 = 0;
      v148 = vdupq_n_s16(8 - v14);
      v149 = vdupq_n_s16(v14);
      v150 = 16;
      do
      {
        v151 = -8;
        v152 = v147;
        do
        {
          v153 = *&v166[v152 + 128];
          v154 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v166[v152], v148), v153, v149), 3uLL);
          *&v164[v152] = v154;
          v151 += 8;
          v152 += 16;
        }

        while (v151 < 0x38);
        v147 += 128;
        --v150;
      }

      while (v150);
      v155 = v165;
      v156 = 16;
      sub_2779725E0(v165 >> 1, v15, 64, 16, v164 >> 1, 64, v16, a9, v148, *v149.i64, *v154.i64, *v153.i8, a10);
      v157 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v158 = 0;
        v159 = -8;
        do
        {
          v160 = vsubq_s16(*&v155[v158], *(v157 + v158));
          v31 = vpadalq_s16(v31, v160);
          v29 = vmlal_s16(v29, *v160.i8, *v160.i8);
          v30 = vmlal_high_s16(v30, v160, v160);
          v159 += 8;
          v158 += 16;
        }

        while (v159 < 0x38);
        v155 += 128;
        v157 += 2 * v22;
        --v156;
      }

      while (v156);
    }

    else
    {
      v52 = 16;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          v55 = *(v25 + v53 + 2);
          v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v53), v48), v55, v49), 3uLL);
          *&v51[v53] = v56;
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v51 += 128;
        v25 += v50;
        --v52;
      }

      while (v52);
      v57 = v164;
      v58 = 16;
      sub_2779725E0(v164 >> 1, v15, 64, 16, v166 >> 1, 64, v16, a9, v48, *v49.i64, *v56.i64, *v55.i8, a10);
      v59 = 2 * v24;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v57[v60], *(v59 + v60));
          v31 = vpadalq_s16(v31, v62);
          v29 = vmlal_s16(v29, *v62.i8, *v62.i8);
          v30 = vmlal_high_s16(v30, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v57 += 128;
        v59 += 2 * v22;
        --v58;
      }

      while (v58);
    }
  }

  else if (v14 == 4)
  {
    v63 = 2 * v12;
    v64 = v166;
    v65 = 16;
    v66 = v25 + v63;
    do
    {
      v67 = 0;
      v68 = -8;
      do
      {
        v69 = *(v66 + v67);
        v70 = vrhaddq_u16(*(v25 + v67), v69);
        *&v64[v67] = v70;
        v68 += 8;
        v67 += 16;
      }

      while (v68 < 0x38);
      v64 += 128;
      v66 += v63;
      v25 += v63;
      --v65;
    }

    while (v65);
    v71 = v164;
    v72 = 16;
    sub_2779725E0(v164 >> 1, v15, 64, 16, v166 >> 1, 64, v16, a9, v70, *v69.i64, v19, v20, a10);
    v73 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v71[v74], *(v73 + v74));
        v31 = vpadalq_s16(v31, v76);
        v29 = vmlal_s16(v29, *v76.i8, *v76.i8);
        v30 = vmlal_high_s16(v30, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x38);
      v71 += 128;
      v73 += 2 * v22;
      --v72;
    }

    while (v72);
  }

  else if (v14)
  {
    v93 = vdupq_n_s16(8 - v14);
    v94 = vdupq_n_s16(v14);
    v95 = 2 * v12;
    v96 = v25 + v95;
    v97 = v166;
    v98 = 16;
    do
    {
      v99 = 0;
      v100 = -8;
      do
      {
        v101 = *(v96 + v99);
        v102 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v99), v93), v101, v94), 3uLL);
        *&v97[v99] = v102;
        v100 += 8;
        v99 += 16;
      }

      while (v100 < 0x38);
      v97 += 128;
      v96 += v95;
      v25 += v95;
      --v98;
    }

    while (v98);
    v103 = v164;
    v104 = 16;
    sub_2779725E0(v164 >> 1, v15, 64, 16, v166 >> 1, 64, v16, a9, v93, *v94.i64, *v102.i64, *v101.i8, a10);
    v105 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v106 = 0;
      v107 = -8;
      do
      {
        v108 = vsubq_s16(*&v103[v106], *(v105 + v106));
        v31 = vpadalq_s16(v31, v108);
        v29 = vmlal_s16(v29, *v108.i8, *v108.i8);
        v30 = vmlal_high_s16(v30, v108, v108);
        v107 += 8;
        v106 += 16;
      }

      while (v107 < 0x38);
      v103 += 128;
      v105 += 2 * v22;
      --v104;
    }

    while (v104);
  }

  else
  {
    v26 = v166;
    v27 = 16;
    sub_2779725E0(v166 >> 1, v15, 64, 16, v11, v12, v16, a9, v17, v18, v19, v20, a10);
    v28 = 2 * v24;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    do
    {
      v32 = 0;
      v33 = -8;
      do
      {
        v34 = vsubq_s16(*&v26[v32], *(v28 + v32));
        v31 = vpadalq_s16(v31, v34);
        v29 = vmlal_s16(v29, *v34.i8, *v34.i8);
        v30 = vmlal_high_s16(v30, v34, v34);
        v33 += 8;
        v32 += 16;
      }

      while (v33 < 0x38);
      v26 += 128;
      v28 += 2 * v22;
      --v27;
    }

    while (v27);
  }

  v161 = vaddvq_s32(v31);
  v162 = vaddlvq_u32(vaddq_s32(v30, v29));
  *a11 = v162;
  return v162 - ((v161 * v161) >> 10);
}

uint64_t sub_277B6135C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = 0;
  v28[5] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 40);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 32);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 32);
  return sub_2779960F8(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B614B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = 0;
  v28[9] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 72);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 64);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 64);
  return sub_2779961A0(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B6160C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 80);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 64);
  sub_2779725E0(v23 >> 1, a7, 8, 4, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_277996248(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B6175C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 144);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 128);
  sub_2779725E0(v23 >> 1, a7, 8, 8, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_2779962D4(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B618AC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 272);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 256);
  sub_2779725E0(v23 >> 1, a7, 8, 16, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_277996360(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B619FC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[31] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 288);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 288);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 256);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 288);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 288);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 288);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 256);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 256);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 288);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 256);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 8, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_2779963EC(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 256);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 256);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 8, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_2779963EC(v18, 16, a5, a6, a15);
}

uint64_t sub_277B61EC0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[63] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 544);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 544);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 512);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 544);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 544);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 544);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 512);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 512);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 544);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 512);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 16, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_277996494(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 512);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 512);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 16, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_277996494(v18, 16, a5, a6, a15);
}

uint64_t sub_277B62384(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[127] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 1056);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 1056);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 1024);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 1056);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 1056);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 1056);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 1024);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 1024);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 1056);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 1024);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 32, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_27799653C(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 1024);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 1024);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 32, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_27799653C(v18, 16, a5, a6, a15);
}

uint64_t sub_277B62848(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, int16x8_t a12, int a13, int a14, _DWORD *a15)
{
  v78 = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    v19 = 2 * a2;
    v20 = v77;
    if (a4 == 4)
    {
      v37 = 17;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          *&v20[v38] = vrhaddq_u16(*(v17 + v38), *(v17 + v38 + 2));
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v20 += 64;
        v17 += v19;
        --v37;
      }

      while (v37);
      v40 = v77;
      v41 = v75;
      v42 = 16;
      do
      {
        v43 = 0;
        v44 = -8;
        do
        {
          v24 = *&v40[v43 + 64];
          v25 = vrhaddq_u16(*&v40[v43], v24);
          *&v41[v43] = v25;
          v44 += 8;
          v43 += 16;
        }

        while (v44 < 0x18);
        v40 += 64;
        v41 += 64;
        --v42;
      }

      while (v42);
    }

    else
    {
      if (!a4)
      {
        v21 = 16;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = *(v17 + v22 + 2);
            v25 = vrhaddq_u16(*(v17 + v22), v24);
            *&v20[v22] = v25;
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v20 += 64;
          v17 += v19;
          --v21;
        }

        while (v21);
        goto LABEL_38;
      }

      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v20[v53] = vrhaddq_u16(*(v17 + v53), *(v17 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v20 += 64;
        v17 += v19;
        --v52;
      }

      while (v52);
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      v55 = v77;
      v56 = v75;
      v57 = 16;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          a12 = *&v55[v58 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v55[v58], v25), a12, v24), 3uLL);
          *&v56[v58] = a11;
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x18);
        v55 += 64;
        v56 += 64;
        --v57;
      }

      while (v57);
    }

    goto LABEL_65;
  }

  if (a3)
  {
    v25 = vdupq_n_s16(8 - a3);
    v24 = vdupq_n_s16(a3);
    v26 = 2 * a2;
    v27 = v77;
    if (a4 == 4)
    {
      v60 = 17;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          a12 = *(v17 + v61 + 2);
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v61), v25), a12, v24), 3uLL);
          *&v27[v61] = a11;
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v27 += 64;
        v17 += v26;
        --v60;
      }

      while (v60);
      v63 = 0;
      v64 = 16;
      do
      {
        v65 = -8;
        v66 = v63;
        do
        {
          v24 = *&v77[v66 + 64];
          v25 = vrhaddq_u16(*&v77[v66], v24);
          *&v75[v66] = v25;
          v65 += 8;
          v66 += 16;
        }

        while (v65 < 0x18);
        v63 += 64;
        --v64;
      }

      while (v64);
    }

    else
    {
      if (!a4)
      {
        v28 = 16;
        do
        {
          v29 = 0;
          v30 = -8;
          do
          {
            a12 = *(v17 + v29 + 2);
            a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v29), v25), a12, v24), 3uLL);
            *&v27[v29] = a11;
            v30 += 8;
            v29 += 16;
          }

          while (v30 < 0x18);
          v27 += 64;
          v17 += v26;
          --v28;
        }

        while (v28);
        goto LABEL_38;
      }

      v67 = 17;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v27[v68] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v68), v25), *(v17 + v68 + 2), v24), 3uLL);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x18);
        v27 += 64;
        v17 += v26;
        --v67;
      }

      while (v67);
      v70 = 0;
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      v71 = 16;
      do
      {
        v72 = -8;
        v73 = v70;
        do
        {
          a12 = *&v77[v73 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v77[v73], v25), a12, v24), 3uLL);
          *&v75[v73] = a11;
          v72 += 8;
          v73 += 16;
        }

        while (v72 < 0x18);
        v70 += 64;
        --v71;
      }

      while (v71);
    }

LABEL_65:
    v18 = &v76 >> 1;
    v51 = v75;
    goto LABEL_66;
  }

  if (a4 == 4)
  {
    v31 = 2 * a2;
    v32 = v77;
    v33 = 16;
    v34 = v17 + v31;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v24 = *(v34 + v35);
        v25 = vrhaddq_u16(*(v17 + v35), v24);
        *&v32[v35] = v25;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v32 += 64;
      v34 += v31;
      v17 += v31;
      --v33;
    }

    while (v33);
    goto LABEL_38;
  }

  if (a4)
  {
    v25 = vdupq_n_s16(8 - a4);
    v24 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v17 + v45;
    v47 = v77;
    v48 = 16;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        a12 = *(v46 + v49);
        a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v49), v25), a12, v24), 3uLL);
        *&v47[v49] = a11;
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x18);
      v47 += 64;
      v46 += v45;
      v17 += v45;
      --v48;
    }

    while (v48);
LABEL_38:
    v18 = v75 >> 1;
    v51 = v77;
LABEL_66:
    sub_2779725E0(v18, a7, 32, 16, v51 >> 1, 32, a8, a13, v25, *v24.i64, a11.n128_f64[0], *a12.i8, a14);
    return sub_2779965E4(v18, 32, a5, a6, a15);
  }

  v18 = v77 >> 1;
  sub_2779725E0(v77 >> 1, a7, 32, 16, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], *a12.i8, a14);
  return sub_2779965E4(v18, 32, a5, a6, a15);
}

uint64_t sub_277B62D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 33;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v28 += 64;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 32;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 64];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v48 += 64;
        v49 += 64;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v28 += 64;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v28 += 64;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 32;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x18);
        v63 += 64;
        v64 += 64;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 33;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v35 += 64;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 32;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 64];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x18);
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 32;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x18);
          v35 += 64;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 33;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x18);
        v35 += 64;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 32;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x18);
        v78 += 64;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 32;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v40 += 64;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 32;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x18);
      v55 += 64;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 32, 32, v59 >> 1, 32, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277996688(v26, 32, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 32, 32, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277996688(v26, 32, v24, v22, a11);
}

uint64_t sub_277B6327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 65;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v28 += 64;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 64;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 64];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v48 += 64;
        v49 += 64;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v28 += 64;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v28 += 64;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x18);
        v63 += 64;
        v64 += 64;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 65;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v35 += 64;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 64;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 64];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x18);
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 64;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x18);
          v35 += 64;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 65;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x18);
        v35 += 64;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 64;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 64];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x18);
        v78 += 64;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 64;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v40 += 64;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 64;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x18);
      v55 += 64;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 32, 64, v59 >> 1, 32, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_27799672C(v26, 32, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 32, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_27799672C(v26, 32, v24, v22, a11);
}

uint64_t sub_277B637BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 33;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 32;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 32;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 33;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 32;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 32;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 33;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 32;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 32;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 32;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 32, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_2779967D0(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 32, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_2779967D0(v26, 64, v24, v22, a11);
}

uint64_t sub_277B63CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 65;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 64;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 65;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 64;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 64;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 65;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 64;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 64;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 64;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 64, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277996874(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277996874(v26, 64, v24, v22, a11);
}

uint64_t sub_277B6423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 129;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 128;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 128;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 129;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 128;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 128;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 129;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 128;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 128;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 128;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 128, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277996918(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 128, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277996918(v26, 64, v24, v22, a11);
}

uint64_t sub_277B6477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 65;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x78);
        v28 += 256;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 64;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 256];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x78);
        v48 += 256;
        v49 += 256;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v28 += 256;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x78);
        v28 += 256;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x78);
        v63 += 256;
        v64 += 256;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 65;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x78);
        v35 += 256;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 64;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 256];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x78);
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 64;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x78);
          v35 += 256;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 65;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x78);
        v35 += 256;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 64;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x78);
        v78 += 256;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 64;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x78);
      v40 += 256;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 64;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x78);
      v55 += 256;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 128, 64, v59 >> 1, 128, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_2779969BC(v26, 128, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 128, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_2779969BC(v26, 128, v24, v22, a11);
}

uint64_t sub_277B64CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 129;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x78);
        v28 += 256;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 128;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 256];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x78);
        v48 += 256;
        v49 += 256;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v28 += 256;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x78);
        v28 += 256;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 128;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x78);
        v63 += 256;
        v64 += 256;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 129;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x78);
        v35 += 256;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 128;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 256];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x78);
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 128;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x78);
          v35 += 256;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 129;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x78);
        v35 += 256;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 128;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 256];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x78);
        v78 += 256;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 128;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x78);
      v40 += 256;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 128;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x78);
      v55 += 256;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 128, 128, v59 >> 1, 128, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277996A60(v26, 128, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 128, 128, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277996A60(v26, 128, v24, v22, a11);
}

uint64_t sub_277B65200(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, int a10, int a11, _DWORD *a12)
{
  v12 = 0;
  v28[17] = *MEMORY[0x277D85DE8];
  v13 = vdup_n_s16(8 - a3);
  v14 = vdup_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    v28[v12++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v15 = (v15 + 2 * a2);
  }

  while ((v12 * 8) != 136);
  v16 = 0;
  v17 = vdup_n_s16(8 - a4);
  v18 = vdup_n_s16(a4);
  v19 = v28[0];
  do
  {
    v20 = v28[v16 + 1];
    *&v27[v16 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v19, v17), v20, v18), 3uLL);
    ++v16;
    v19 = v20;
  }

  while ((v16 * 8) != 128);
  v21 = 0;
  v22 = (2 * a7);
  if (a11)
  {
    v23 = (2 * a7);
  }

  else
  {
    v23 = v27;
  }

  if (a11)
  {
    v22 = v27;
  }

  a9.i32[0] = 4194368;
  a9.i16[2] = 64;
  a9.i16[3] = 64;
  do
  {
    v20.i32[0] = *a8;
    v24 = vmovl_u8(v20).u64[0];
    v20 = vsubw_u8(a9, v20).u64[0];
    *&v26[v21] = vrshrn_n_s32(vmlal_u16(vmull_u16(v20, *&v22[v21]), v24, *&v23[v21]), 6uLL);
    a8 = (a8 + a10);
    v21 += 8;
  }

  while (v21 != 128);
  return sub_277997938(v26 >> 1, 4u, a5, a6, a12);
}

uint64_t sub_277B65360(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, int a9, int a10, _DWORD *a11)
{
  v13 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v14 = vdupq_n_s16(8 - a3);
  v15 = vdupq_n_s16(a3);
  v16 = (2 * a1 + 2);
  do
  {
    v25[v13++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 - 2), v14), *v16, v15), 3uLL);
    v16 = (v16 + 2 * a2);
  }

  while ((v13 * 16) != 528);
  v17 = 0;
  v18 = vdupq_n_s16(8 - a4);
  v19 = vdupq_n_s16(a4);
  v20 = v25[0];
  do
  {
    v21 = v25[v17 + 1];
    *&v24[v17 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v18), v21, v19), 3uLL);
    ++v17;
    v20 = v21;
  }

  while ((v17 * 16) != 512);
  sub_2779725E0(v23 >> 1, a7, 8, 32, v24 >> 1, 8, a8, a9, v18, *v19.i64, *v21.i64, *v21.i8, a10);
  return sub_2779979E0(v23 >> 1, 8, a5, a6, a11);
}

uint64_t sub_277B654B0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, __n128 a12, int a13, int a14, _DWORD *a15)
{
  v61[15] = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v45 = 0;
      v46 = (v17 + 18);
      do
      {
        v47 = &v60[v45];
        *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
        v47[1] = vrhaddq_u16(*(v46 - 2), *v46);
        v45 += 2;
        v46 = (v46 + 2 * a2);
      }

      while ((v45 * 16) != 160);
      v24 = v60[0];
      v48 = v61;
      v49 = 32;
      do
      {
        v50 = &v58[v49];
        v51 = v48[-2];
        v23 = v48[-1];
        v52 = *v48;
        v48 += 2;
        a12.n128_u64[0] = v52.i64[0];
        a11 = vrhaddq_u16(v51, v52);
        v50[-2] = vrhaddq_u16(v24, v23);
        v50[-1] = a11;
        v49 += 32;
        v24 = v23;
      }

      while (v49 != 160);
    }

    else
    {
      v19 = 0;
      v20 = (v17 + 18);
      v21 = 2 * a2;
      if (!a4)
      {
        do
        {
          v22 = &v60[v19];
          *v22 = vrhaddq_u16(*(v20 - 18), v20[-1]);
          v23 = *v20;
          v24 = vrhaddq_u16(*(v20 - 2), *v20);
          v22[1] = v24;
          v19 += 2;
          v20 = (v20 + v21);
        }

        while ((v19 * 16) != 128);
        goto LABEL_36;
      }

      do
      {
        v25 = &v60[v19];
        *v25 = vrhaddq_u16(*(v20 - 18), v20[-1]);
        v25[1] = vrhaddq_u16(*(v20 - 2), *v20);
        v19 += 2;
        v20 = (v20 + v21);
      }

      while ((v19 * 16) != 160);
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      v26 = v61;
      v27 = 32;
      do
      {
        v28 = v26[-2];
        a12 = v26[-1];
        v29 = *v26;
        v26 += 2;
        v30 = &v58[v27];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v24), v29, v23), 3uLL);
        v27 += 32;
        a11 = a12;
      }

      while (v27 != 160);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v31 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v23 = vdupq_n_s16(a3);
    v32 = (v17 + 18);
    v33 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v35 = &v60[v31];
        *v35 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v35[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 160);
      v36 = 0;
      v24 = v60[0];
      do
      {
        v37 = &v58[v36 * 16];
        v23 = v60[v36 + 2];
        a12 = v60[v36 + 3];
        a11 = vrhaddq_u16(v60[v36 + 1], a12);
        *v37 = vrhaddq_u16(v24, v23);
        v37[1] = a11;
        v36 += 2;
        v24 = v23;
      }

      while ((v36 * 16) != 128);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v34 = &v60[v31];
          *v34 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
          a12 = *v32;
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
          v34[1] = a11;
          v31 += 2;
          v32 = (v32 + v33);
        }

        while ((v31 * 16) != 128);
        goto LABEL_36;
      }

      do
      {
        v38 = &v60[v31];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 18), v24), v32[-1], v23), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v32 - 2), v24), *v32, v23), 3uLL);
        v31 += 2;
        v32 = (v32 + v33);
      }

      while ((v31 * 16) != 160);
      v39 = 0;
      v24 = vdupq_n_s16(8 - a4);
      v23 = vdupq_n_s16(a4);
      a11 = v60[0];
      do
      {
        a12 = v60[v39 + 2];
        v40 = &v58[v39 * 16];
        v41 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v60[v39 + 1], v24), v60[v39 + 3], v23), 3uLL);
        *v40 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
        v40[1] = v41;
        v39 += 2;
        a11 = a12;
      }

      while ((v39 * 16) != 128);
    }

LABEL_33:
    v18 = &v59 >> 1;
    v53 = v58;
LABEL_37:
    sub_2779725E0(v18, a7, 16, 4, v53 >> 1, 16, a8, a13, v24, *v23.i64, a11.n128_f64[0], a12.n128_u64[0], a14);
    return sub_277997A6C(v18, 16, a5, a6, a15);
  }

  if (a4 == 4)
  {
    v42 = 0;
    v24 = *v17;
    v43 = 2 * a2;
    do
    {
      v44 = &v60[v42];
      v23 = *(v17 + 2 * a2);
      *v44 = vrhaddq_u16(v24, v23);
      a11 = *(v17 + v43 + 16);
      v44[1] = vrhaddq_u16(*(v17 + 16), a11);
      v42 += 2;
      v17 += v43;
      v24 = v23;
    }

    while ((v42 * 16) != 128);
    goto LABEL_36;
  }

  if (a4)
  {
    v54 = 0;
    v24 = vdupq_n_s16(8 - a4);
    v23 = vdupq_n_s16(a4);
    a11 = *v17;
    v55 = 2 * a2;
    do
    {
      v56 = &v60[v54];
      a12 = *(v17 + 2 * a2);
      *v56 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(a11, v24), a12, v23), 3uLL);
      v56[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + 16), v24), *(v17 + v55 + 16), v23), 3uLL);
      v54 += 2;
      v17 += v55;
      a11 = a12;
    }

    while ((v54 * 16) != 128);
LABEL_36:
    v18 = v58 >> 1;
    v53 = v60;
    goto LABEL_37;
  }

  v18 = v60 >> 1;
  sub_2779725E0(v60 >> 1, a7, 16, 4, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], a12.n128_u64[0], a14);
  return sub_277997A6C(v18, 16, a5, a6, a15);
}

uint64_t sub_277B65974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v69[255] = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    if (v14 == 4)
    {
      v53 = 0;
      v54 = (v25 + 18);
      do
      {
        v55 = &v68[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * v12);
      }

      while ((v53 * 16) != 2080);
      v32 = v68[0];
      v56 = v69;
      v57 = 32;
      do
      {
        v58 = &v66[v57];
        v59 = v56[-2];
        v31 = v56[-1];
        v60 = *v56;
        v56 += 2;
        v20.i64[0] = v60.i64[0];
        v19 = vrhaddq_u16(v59, v60);
        v58[-2] = vrhaddq_u16(v32, v31);
        v58[-1] = v19;
        v57 += 32;
        v32 = v31;
      }

      while (v57 != 2080);
    }

    else
    {
      v27 = 0;
      v28 = (v25 + 18);
      v29 = 2 * v12;
      if (!v14)
      {
        do
        {
          v30 = &v68[v27];
          *v30 = vrhaddq_u16(*(v28 - 18), v28[-1]);
          v31 = *v28;
          v32 = vrhaddq_u16(*(v28 - 2), *v28);
          v30[1] = v32;
          v27 += 2;
          v28 = (v28 + v29);
        }

        while ((v27 * 16) != 2048);
        goto LABEL_36;
      }

      do
      {
        v33 = &v68[v27];
        *v33 = vrhaddq_u16(*(v28 - 18), v28[-1]);
        v33[1] = vrhaddq_u16(*(v28 - 2), *v28);
        v27 += 2;
        v28 = (v28 + v29);
      }

      while ((v27 * 16) != 2080);
      v32 = vdupq_n_s16(8 - v14);
      v31 = vdupq_n_s16(v14);
      v19 = v68[0];
      v34 = v69;
      v35 = 32;
      do
      {
        v36 = v34[-2];
        v20 = v34[-1];
        v37 = *v34;
        v34 += 2;
        v38 = &v66[v35];
        v38[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v32), v20, v31), 3uLL);
        v38[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v36, v32), v37, v31), 3uLL);
        v35 += 32;
        v19 = v20;
      }

      while (v35 != 2080);
    }

    goto LABEL_33;
  }

  if (v13)
  {
    v39 = 0;
    v32 = vdupq_n_s16(8 - v13);
    v31 = vdupq_n_s16(v13);
    v40 = (v25 + 18);
    v41 = 2 * v12;
    if (v14 == 4)
    {
      do
      {
        v43 = &v68[v39];
        *v43 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 18), v32), v40[-1], v31), 3uLL);
        v43[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 2), v32), *v40, v31), 3uLL);
        v39 += 2;
        v40 = (v40 + v41);
      }

      while ((v39 * 16) != 2080);
      v44 = 0;
      v32 = v68[0];
      do
      {
        v45 = &v66[v44 * 16];
        v31 = v68[v44 + 2];
        v20 = v68[v44 + 3];
        v19 = vrhaddq_u16(v68[v44 + 1], v20);
        *v45 = vrhaddq_u16(v32, v31);
        v45[1] = v19;
        v44 += 2;
        v32 = v31;
      }

      while ((v44 * 16) != 2048);
    }

    else
    {
      if (!v14)
      {
        do
        {
          v42 = &v68[v39];
          *v42 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 18), v32), v40[-1], v31), 3uLL);
          v20 = *v40;
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 2), v32), *v40, v31), 3uLL);
          v42[1] = v19;
          v39 += 2;
          v40 = (v40 + v41);
        }

        while ((v39 * 16) != 2048);
        goto LABEL_36;
      }

      do
      {
        v46 = &v68[v39];
        *v46 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 18), v32), v40[-1], v31), 3uLL);
        v46[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v40 - 2), v32), *v40, v31), 3uLL);
        v39 += 2;
        v40 = (v40 + v41);
      }

      while ((v39 * 16) != 2080);
      v47 = 0;
      v32 = vdupq_n_s16(8 - v14);
      v31 = vdupq_n_s16(v14);
      v19 = v68[0];
      do
      {
        v20 = v68[v47 + 2];
        v48 = &v66[v47 * 16];
        v49 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v68[v47 + 1], v32), v68[v47 + 3], v31), 3uLL);
        *v48 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v32), v20, v31), 3uLL);
        v48[1] = v49;
        v47 += 2;
        v19 = v20;
      }

      while ((v47 * 16) != 2048);
    }

LABEL_33:
    v26 = &v67 >> 1;
    v61 = v66;
LABEL_37:
    sub_2779725E0(v26, v15, 16, 64, v61 >> 1, 16, v16, a9, v32, *v31.i64, *v19.i64, *v20.i8, a10);
    return sub_277997B14(v26, 16, v24, v22, a11);
  }

  if (v14 == 4)
  {
    v50 = 0;
    v32 = *v25;
    v51 = 2 * v12;
    do
    {
      v52 = &v68[v50];
      v31 = *(v25 + 2 * v12);
      *v52 = vrhaddq_u16(v32, v31);
      v19 = *(v25 + v51 + 16);
      v52[1] = vrhaddq_u16(*(v25 + 16), v19);
      v50 += 2;
      v25 += v51;
      v32 = v31;
    }

    while ((v50 * 16) != 2048);
    goto LABEL_36;
  }

  if (v14)
  {
    v62 = 0;
    v32 = vdupq_n_s16(8 - v14);
    v31 = vdupq_n_s16(v14);
    v19 = *v25;
    v63 = 2 * v12;
    do
    {
      v64 = &v68[v62];
      v20 = *(v25 + 2 * v12);
      *v64 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v19, v32), v20, v31), 3uLL);
      v64[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + 16), v32), *(v25 + v63 + 16), v31), 3uLL);
      v62 += 2;
      v25 += v63;
      v19 = v20;
    }

    while ((v62 * 16) != 2048);
LABEL_36:
    v26 = v66 >> 1;
    v61 = v68;
    goto LABEL_37;
  }

  v26 = v68 >> 1;
  sub_2779725E0(v68 >> 1, v15, 16, 64, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997B14(v26, 16, v24, v22, a11);
}

uint64_t sub_277B65E80(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int32 *a8, uint16x8_t a9, double a10, __n128 a11, int16x8_t a12, int a13, int a14, _DWORD *a15)
{
  v83 = *MEMORY[0x277D85DE8];
  v17 = 2 * a1;
  if (a3 == 4)
  {
    v19 = 2 * a2;
    v20 = v82;
    if (a4 == 4)
    {
      v36 = 9;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v20[v37] = vrhaddq_u16(*(v17 + v37), *(v17 + v37 + 2));
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v20 += 64;
        v17 += v19;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v80;
      v41 = 8;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          v24 = *&v39[v42 + 64];
          v25 = vrhaddq_u16(*&v39[v42], v24);
          *&v40[v42] = v25;
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x18);
        v39 += 64;
        v40 += 64;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v21 = 8;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = *(v17 + v22 + 2);
            v25 = vrhaddq_u16(*(v17 + v22), v24);
            *&v20[v22] = v25;
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v20 += 64;
          v17 += v19;
          --v21;
        }

        while (v21);
        goto LABEL_38;
      }

      v51 = 9;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v20[v52] = vrhaddq_u16(*(v17 + v52), *(v17 + v52 + 2));
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v20 += 64;
        v17 += v19;
        --v51;
      }

      while (v51);
      v54 = 8;
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      v55 = v82;
      v56 = v80;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          a12 = *&v55[v57 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v55[v57], v25), a12, v24), 3uLL);
          *&v56[v57] = a11;
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v55 += 64;
        v56 += 64;
        --v54;
      }

      while (v54);
    }

    goto LABEL_65;
  }

  if (a3)
  {
    v26 = 8;
    if (a4 == 4)
    {
      v59 = vdupq_n_s16(8 - a3);
      v60 = vdupq_n_s16(a3);
      v61 = v82;
      v62 = 9;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          a12 = *(v17 + v63 + 2);
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v63), v59), a12, v60), 3uLL);
          *&v61[v63] = a11;
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v61 += 64;
        v17 += 2 * a2;
        --v62;
      }

      while (v62);
      v65 = 0;
      v66 = 8;
      do
      {
        v67 = -8;
        v68 = v65;
        do
        {
          v24 = *&v82[v68 + 64];
          v25 = vrhaddq_u16(*&v82[v68], v24);
          *&v80[v68] = v25;
          v67 += 8;
          v68 += 16;
        }

        while (v67 < 0x18);
        v65 += 64;
        --v66;
      }

      while (v66);
    }

    else
    {
      if (!a4)
      {
        v25 = vdupq_n_s16(8 - a3);
        v24 = vdupq_n_s16(a3);
        v27 = v82;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            a12 = *(v17 + v28 + 2);
            a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v28), v25), a12, v24), 3uLL);
            *&v27[v28] = a11;
            v29 += 8;
            v28 += 16;
          }

          while (v29 < 0x18);
          v27 += 64;
          v17 += 2 * a2;
          --v26;
        }

        while (v26);
        goto LABEL_38;
      }

      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = v82;
      v72 = 9;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v73), v69), *(v17 + v73 + 2), v70), 3uLL);
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v71 += 64;
        v17 += 2 * a2;
        --v72;
      }

      while (v72);
      v75 = 0;
      v76 = 8;
      v25 = vdupq_n_s16(8 - a4);
      v24 = vdupq_n_s16(a4);
      do
      {
        v77 = -8;
        v78 = v75;
        do
        {
          a12 = *&v82[v78 + 64];
          a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v82[v78], v25), a12, v24), 3uLL);
          *&v80[v78] = a11;
          v77 += 8;
          v78 += 16;
        }

        while (v77 < 0x18);
        v75 += 64;
        --v76;
      }

      while (v76);
    }

LABEL_65:
    v18 = &v81 >> 1;
    v50 = v80;
    goto LABEL_66;
  }

  if (a4 == 4)
  {
    v30 = 2 * a2;
    v31 = v82;
    v32 = 8;
    v33 = v17 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        v24 = *(v33 + v34);
        v25 = vrhaddq_u16(*(v17 + v34), v24);
        *&v31[v34] = v25;
        v35 += 8;
        v34 += 16;
      }

      while (v35 < 0x18);
      v31 += 64;
      v33 += v30;
      v17 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_38;
  }

  if (a4)
  {
    v44 = 8;
    v25 = vdupq_n_s16(8 - a4);
    v24 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v17 + v45;
    v47 = v82;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        a12 = *(v46 + v48);
        a11 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v17 + v48), v25), a12, v24), 3uLL);
        *&v47[v48] = a11;
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v47 += 64;
      v46 += v45;
      v17 += v45;
      --v44;
    }

    while (v44);
LABEL_38:
    v18 = v80 >> 1;
    v50 = v82;
LABEL_66:
    sub_2779725E0(v18, a7, 32, 8, v50 >> 1, 32, a8, a13, v25, *v24.i64, a11.n128_f64[0], *a12.i8, a14);
    return sub_277997BBC(v18, 32, a5, a6, a15);
  }

  v18 = v82 >> 1;
  sub_2779725E0(v82 >> 1, a7, 32, 8, a1, a2, a8, a13, a9, a10, a11.n128_f64[0], *a12.i8, a14);
  return sub_277997BBC(v18, 32, a5, a6, a15);
}

uint64_t sub_277B66390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, _DWORD *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v22 = v21;
  v24 = v23;
  v86 = *MEMORY[0x277D85DE8];
  v25 = 2 * v11;
  if (v13 == 4)
  {
    v27 = 2 * v12;
    v28 = v85;
    if (v14 == 4)
    {
      v45 = 17;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v28[v46] = vrhaddq_u16(*(v25 + v46), *(v25 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v28 += 128;
        v25 += v27;
        --v45;
      }

      while (v45);
      v48 = v85;
      v49 = v83;
      v50 = 16;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          v32 = *&v48[v51 + 128];
          v33 = vrhaddq_u16(*&v48[v51], v32);
          *&v49[v51] = v33;
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x38);
        v48 += 128;
        v49 += 128;
        --v50;
      }

      while (v50);
    }

    else
    {
      if (!v14)
      {
        v29 = 16;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = *(v25 + v30 + 2);
            v33 = vrhaddq_u16(*(v25 + v30), v32);
            *&v28[v30] = v33;
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v28 += 128;
          v25 += v27;
          --v29;
        }

        while (v29);
        goto LABEL_38;
      }

      v60 = 17;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v28[v61] = vrhaddq_u16(*(v25 + v61), *(v25 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v28 += 128;
        v25 += v27;
        --v60;
      }

      while (v60);
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v63 = v85;
      v64 = v83;
      v65 = 16;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          v20 = *&v63[v66 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v63[v66], v33), v20, v32), 3uLL);
          *&v64[v66] = v19;
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
    }

    goto LABEL_65;
  }

  if (v13)
  {
    v33 = vdupq_n_s16(8 - v13);
    v32 = vdupq_n_s16(v13);
    v34 = 2 * v12;
    v35 = v85;
    if (v14 == 4)
    {
      v68 = 17;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          v20 = *(v25 + v69 + 2);
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v69), v33), v20, v32), 3uLL);
          *&v35[v69] = v19;
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v35 += 128;
        v25 += v34;
        --v68;
      }

      while (v68);
      v71 = 0;
      v72 = 16;
      do
      {
        v73 = -8;
        v74 = v71;
        do
        {
          v32 = *&v85[v74 + 128];
          v33 = vrhaddq_u16(*&v85[v74], v32);
          *&v83[v74] = v33;
          v73 += 8;
          v74 += 16;
        }

        while (v73 < 0x38);
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v14)
      {
        v36 = 16;
        do
        {
          v37 = 0;
          v38 = -8;
          do
          {
            v20 = *(v25 + v37 + 2);
            v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v37), v33), v20, v32), 3uLL);
            *&v35[v37] = v19;
            v38 += 8;
            v37 += 16;
          }

          while (v38 < 0x38);
          v35 += 128;
          v25 += v34;
          --v36;
        }

        while (v36);
        goto LABEL_38;
      }

      v75 = 17;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v35[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v76), v33), *(v25 + v76 + 2), v32), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x38);
        v35 += 128;
        v25 += v34;
        --v75;
      }

      while (v75);
      v78 = 0;
      v33 = vdupq_n_s16(8 - v14);
      v32 = vdupq_n_s16(v14);
      v79 = 16;
      do
      {
        v80 = -8;
        v81 = v78;
        do
        {
          v20 = *&v85[v81 + 128];
          v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v81], v33), v20, v32), 3uLL);
          *&v83[v81] = v19;
          v80 += 8;
          v81 += 16;
        }

        while (v80 < 0x38);
        v78 += 128;
        --v79;
      }

      while (v79);
    }

LABEL_65:
    v26 = &v84 >> 1;
    v59 = v83;
    goto LABEL_66;
  }

  if (v14 == 4)
  {
    v39 = 2 * v12;
    v40 = v85;
    v41 = 16;
    v42 = v25 + v39;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v32 = *(v42 + v43);
        v33 = vrhaddq_u16(*(v25 + v43), v32);
        *&v40[v43] = v33;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v40 += 128;
      v42 += v39;
      v25 += v39;
      --v41;
    }

    while (v41);
    goto LABEL_38;
  }

  if (v14)
  {
    v33 = vdupq_n_s16(8 - v14);
    v32 = vdupq_n_s16(v14);
    v53 = 2 * v12;
    v54 = v25 + v53;
    v55 = v85;
    v56 = 16;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v20 = *(v54 + v57);
        v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v25 + v57), v33), v20, v32), 3uLL);
        *&v55[v57] = v19;
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += v53;
      v25 += v53;
      --v56;
    }

    while (v56);
LABEL_38:
    v26 = v83 >> 1;
    v59 = v85;
LABEL_66:
    sub_2779725E0(v26, v15, 64, 16, v59 >> 1, 64, v16, a9, v33, *v32.i64, *v19.i64, *v20.i8, a10);
    return sub_277997C60(v26, 64, v24, v22, a11);
  }

  v26 = v85 >> 1;
  sub_2779725E0(v85 >> 1, v15, 64, 16, v11, v12, v16, a9, v17, v18, *v19.i64, *v20.i8, a10);
  return sub_277997C60(v26, 64, v24, v22, a11);
}