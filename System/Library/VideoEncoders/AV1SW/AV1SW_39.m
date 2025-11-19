uint64_t sub_277B4653C()
{
  v0 = MEMORY[0x28223BE20]();
  v138 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 33;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49), *(v8 + v49 + 2));
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x18);
        v47 += 64;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 32;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 64]), *(v51 + v55));
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x18);
        v51 += v55;
        v52 += 64;
        v53 += 64;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v58 += 64;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 33;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79), *(v8 + v79 + 2));
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 32;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v90 += 64;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 32;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x18);
        v14 += v17;
        v15 += 64;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 16;
        }

        while (v26 < 0x18);
        v20 += 64;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 33;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99), v95), *(v8 + v99 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 16;
        }

        while (v100 < 0x18);
        v97 += 64;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 32;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 64]), *(v101 + v105));
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v101 += v105;
        v102 += 64;
        v103 += 64;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v108 += 64;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 33;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117), v113), *(v8 + v117 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x18);
        v115 += 64;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 32;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 64], v121), 3uLL), *(v120 + v125));
          v126 += 8;
          v125 += 16;
        }

        while (v126 < 0x18);
        v120 += v125;
        v122 += 64;
        v123 += 64;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x18);
        v128 += 64;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 32;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v28 += v33;
        v31 += 64;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v36 += 64;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 32;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v9 += v45;
        v43 += 64;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v9 += v69;
        v67 += 64;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 32;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x18);
        v9 += v12;
        v10 += 64;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 32;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x18);
      v72 += 64;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 10);
}

uint64_t sub_277B46D68()
{
  v0 = MEMORY[0x28223BE20]();
  v137[520] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 65;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49 * 8), *(v8 + v49 * 8 + 2));
          v50 += 8;
          v49 += 2;
        }

        while (v50 < 0x18);
        v47 += 8;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 64;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55 * 8] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 8]), *(v51 + v55 * 8));
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x18);
        v51 += v55 * 8;
        v52 += 8;
        v53 += 64;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v58 += 64;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79 * 8), *(v8 + v79 * 8 + 2));
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x18);
        v77 += 8;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 8], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x18);
        v82 += v87 * 8;
        v84 += 8;
        v85 += 64;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v90 += 64;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 64;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x18);
        v14 += v17;
        v15 += 8;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25 * 8));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 2;
        }

        while (v26 < 0x18);
        v20 += 8;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 65;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99 * 8), v95), *(v8 + v99 * 8 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 2;
        }

        while (v100 < 0x18);
        v97 += 8;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 64;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105 * 8] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 8]), *(v101 + v105 * 8));
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x18);
        v101 += v105 * 8;
        v102 += 8;
        v103 += 64;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v108 += 64;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 65;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117 * 8), v113), *(v8 + v117 * 8 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 2;
        }

        while (v118 < 0x18);
        v115 += 8;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 64;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 8], v121), 3uLL), *(v120 + v125 * 8));
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x18);
        v120 += v125 * 8;
        v122 += 8;
        v123 += 64;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x18);
        v128 += 64;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 64;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v28 += v33;
        v31 += 8;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38 * 8));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 2;
        }

        while (v39 < 0x18);
        v36 += 8;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 64;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v9 += v45;
        v43 += 8;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v9 += v69;
        v67 += 8;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 64;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x18);
        v9 += v12;
        v10 += 8;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 64;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74 * 8));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 2;
      }

      while (v75 < 0x18);
      v72 += 8;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 11);
}

uint64_t sub_277B475D4()
{
  v0 = MEMORY[0x28223BE20]();
  v137[528] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 33;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49 * 8), *(v8 + v49 * 8 + 2));
          v50 += 8;
          v49 += 2;
        }

        while (v50 < 0x38);
        v47 += 16;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 32;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55 * 8] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 16]), *(v51 + v55 * 8));
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x38);
        v51 += v55 * 8;
        v52 += 16;
        v53 += 128;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v58 += 128;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 33;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79 * 8), *(v8 + v79 * 8 + 2));
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 32;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x38);
        v90 += 128;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 32;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x38);
        v14 += v17;
        v15 += 16;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25 * 8));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 2;
        }

        while (v26 < 0x38);
        v20 += 16;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 33;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99 * 8), v95), *(v8 + v99 * 8 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 2;
        }

        while (v100 < 0x38);
        v97 += 16;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 32;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105 * 8] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 16]), *(v101 + v105 * 8));
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x38);
        v101 += v105 * 8;
        v102 += 16;
        v103 += 128;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v108 += 128;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 33;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117 * 8), v113), *(v8 + v117 * 8 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 2;
        }

        while (v118 < 0x38);
        v115 += 16;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 32;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 16], v121), 3uLL), *(v120 + v125 * 8));
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x38);
        v120 += v125 * 8;
        v122 += 16;
        v123 += 128;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x38);
        v128 += 128;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 32;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x38);
        v28 += v33;
        v31 += 16;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 32;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38 * 8));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 2;
        }

        while (v39 < 0x38);
        v36 += 16;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 32;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v9 += v45;
        v43 += 16;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v9 += v69;
        v67 += 16;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 32;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x38);
        v9 += v12;
        v10 += 16;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 32;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74 * 8));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 2;
      }

      while (v75 < 0x38);
      v72 += 16;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 11);
}

uint64_t sub_277B47E40()
{
  v0 = MEMORY[0x28223BE20]();
  v137[1040] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 65;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49 * 8), *(v8 + v49 * 8 + 2));
          v50 += 8;
          v49 += 2;
        }

        while (v50 < 0x38);
        v47 += 16;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 64;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55 * 8] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 16]), *(v51 + v55 * 8));
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x38);
        v51 += v55 * 8;
        v52 += 16;
        v53 += 128;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v58 += 128;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79 * 8), *(v8 + v79 * 8 + 2));
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x38);
        v90 += 128;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 64;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x38);
        v14 += v17;
        v15 += 16;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25 * 8));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 2;
        }

        while (v26 < 0x38);
        v20 += 16;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 65;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99 * 8), v95), *(v8 + v99 * 8 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 2;
        }

        while (v100 < 0x38);
        v97 += 16;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 64;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105 * 8] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 16]), *(v101 + v105 * 8));
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x38);
        v101 += v105 * 8;
        v102 += 16;
        v103 += 128;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v108 += 128;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 65;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117 * 8), v113), *(v8 + v117 * 8 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 2;
        }

        while (v118 < 0x38);
        v115 += 16;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 64;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 16], v121), 3uLL), *(v120 + v125 * 8));
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x38);
        v120 += v125 * 8;
        v122 += 16;
        v123 += 128;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x38);
        v128 += 128;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 64;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x38);
        v28 += v33;
        v31 += 16;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38 * 8));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 2;
        }

        while (v39 < 0x38);
        v36 += 16;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 64;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v9 += v45;
        v43 += 16;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v9 += v69;
        v67 += 16;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 64;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x38);
        v9 += v12;
        v10 += 16;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 64;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74 * 8));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 2;
      }

      while (v75 < 0x38);
      v72 += 16;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 12);
}

uint64_t sub_277B486AC()
{
  v0 = MEMORY[0x28223BE20]();
  v137[2064] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 129;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49 * 8), *(v8 + v49 * 8 + 2));
          v50 += 8;
          v49 += 2;
        }

        while (v50 < 0x38);
        v47 += 16;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 128;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55 * 8] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 16]), *(v51 + v55 * 8));
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x38);
        v51 += v55 * 8;
        v52 += 16;
        v53 += 128;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v58 += 128;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 129;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79 * 8), *(v8 + v79 * 8 + 2));
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 128;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x38);
        v90 += 128;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 128;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x38);
        v14 += v17;
        v15 += 16;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25 * 8));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 2;
        }

        while (v26 < 0x38);
        v20 += 16;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 129;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99 * 8), v95), *(v8 + v99 * 8 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 2;
        }

        while (v100 < 0x38);
        v97 += 16;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 128;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105 * 8] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 16]), *(v101 + v105 * 8));
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x38);
        v101 += v105 * 8;
        v102 += 16;
        v103 += 128;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v108 += 128;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 129;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117 * 8), v113), *(v8 + v117 * 8 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 2;
        }

        while (v118 < 0x38);
        v115 += 16;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 128;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 16], v121), 3uLL), *(v120 + v125 * 8));
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x38);
        v120 += v125 * 8;
        v122 += 16;
        v123 += 128;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x38);
        v128 += 128;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 128;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x38);
        v28 += v33;
        v31 += 16;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38 * 8));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 2;
        }

        while (v39 < 0x38);
        v36 += 16;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 128;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v9 += v45;
        v43 += 16;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v9 += v69;
        v67 += 16;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 128;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x38);
        v9 += v12;
        v10 += 16;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 128;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74 * 8));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 2;
      }

      while (v75 < 0x38);
      v72 += 16;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 13);
}

uint64_t sub_277B48F18()
{
  v0 = MEMORY[0x28223BE20]();
  v137[2080] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 65;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49 * 8), *(v8 + v49 * 8 + 2));
          v50 += 8;
          v49 += 2;
        }

        while (v50 < 0x78);
        v47 += 32;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 64;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55 * 8] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 32]), *(v51 + v55 * 8));
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x78);
        v51 += v55 * 8;
        v52 += 32;
        v53 += 256;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x78);
        v58 += 256;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79 * 8), *(v8 + v79 * 8 + 2));
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v77 += 32;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 32], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v82 += v87 * 8;
        v84 += 32;
        v85 += 256;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x78);
        v90 += 256;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 64;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x78);
        v14 += v17;
        v15 += 32;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25 * 8));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 2;
        }

        while (v26 < 0x78);
        v20 += 32;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 65;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99 * 8), v95), *(v8 + v99 * 8 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 2;
        }

        while (v100 < 0x78);
        v97 += 32;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 64;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105 * 8] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 32]), *(v101 + v105 * 8));
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x78);
        v101 += v105 * 8;
        v102 += 32;
        v103 += 256;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x78);
        v108 += 256;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 65;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117 * 8), v113), *(v8 + v117 * 8 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 2;
        }

        while (v118 < 0x78);
        v115 += 32;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 64;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 32], v121), 3uLL), *(v120 + v125 * 8));
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x78);
        v120 += v125 * 8;
        v122 += 32;
        v123 += 256;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x78);
        v128 += 256;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 64;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x78);
        v28 += v33;
        v31 += 32;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 64;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38 * 8));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 2;
        }

        while (v39 < 0x78);
        v36 += 32;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 64;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x78);
        v9 += v45;
        v43 += 32;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x78);
        v9 += v69;
        v67 += 32;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 64;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x78);
        v9 += v12;
        v10 += 32;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 64;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74 * 8));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 2;
      }

      while (v75 < 0x78);
      v72 += 32;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 13);
}

uint64_t sub_277B49784()
{
  v0 = MEMORY[0x28223BE20]();
  v137[4128] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 129;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49 * 8), *(v8 + v49 * 8 + 2));
          v50 += 8;
          v49 += 2;
        }

        while (v50 < 0x78);
        v47 += 32;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 128;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55 * 8] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 32]), *(v51 + v55 * 8));
          v56 += 8;
          v55 += 2;
        }

        while (v56 < 0x78);
        v51 += v55 * 8;
        v52 += 32;
        v53 += 256;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x78);
        v58 += 256;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 129;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79 * 8), *(v8 + v79 * 8 + 2));
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v77 += 32;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 128;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 32], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v82 += v87 * 8;
        v84 += 32;
        v85 += 256;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x78);
        v90 += 256;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 128;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x78);
        v14 += v17;
        v15 += 32;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25 * 8));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 2;
        }

        while (v26 < 0x78);
        v20 += 32;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 129;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99 * 8), v95), *(v8 + v99 * 8 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 2;
        }

        while (v100 < 0x78);
        v97 += 32;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 128;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105 * 8] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 32]), *(v101 + v105 * 8));
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x78);
        v101 += v105 * 8;
        v102 += 32;
        v103 += 256;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x78);
        v108 += 256;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 129;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117 * 8), v113), *(v8 + v117 * 8 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 2;
        }

        while (v118 < 0x78);
        v115 += 32;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 128;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 32], v121), 3uLL), *(v120 + v125 * 8));
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x78);
        v120 += v125 * 8;
        v122 += 32;
        v123 += 256;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x78);
        v128 += 256;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 128;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x78);
        v28 += v33;
        v31 += 32;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 128;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38 * 8));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 2;
        }

        while (v39 < 0x78);
        v36 += 32;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 128;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x78);
        v9 += v45;
        v43 += 32;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x78);
        v9 += v69;
        v67 += 32;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 128;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x78);
        v9 += v12;
        v10 += 32;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 128;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74 * 8));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 2;
      }

      while (v75 < 0x78);
      v72 += 32;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 14);
}

uint64_t sub_277B49FF4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8)
{
  v8 = 0;
  v19[17] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 136);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277997618(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B4A100(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v27[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 528);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v27[0];
  do
  {
    v16 = v27[v12 / 0x10 + 1];
    *&v26[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 512);
  v17 = 0;
  v18 = (2 * a5);
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  do
  {
    v22 = vsubq_s16(*&v26[v17], *v18);
    v21 = vpadalq_s16(v21, v22);
    v19 = vmlal_s16(v19, *v22.i8, *v22.i8);
    v20 = vmlal_high_s16(v20, v22, v22);
    v17 += 16;
    v18 = (v18 + 2 * a6);
  }

  while (v17 != 512);
  v23 = vaddlvq_u32(vaddq_s32(v20, v19));
  *a7 = v23;
  v24 = vaddvq_s32(v21);
  return v23 - ((v24 * v24) >> 8);
}

uint64_t sub_277B4A258(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v157 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v8 + 18);
      do
      {
        v55 = &v156[v53];
        v56 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = v56;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 160);
      v57 = (2 * a8);
      v58 = v156;
      v59 = v155;
      v60 = 4;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v57++;
          *&v59[2 * v61] = vrhaddq_u16(vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]), v64);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v65 = 2 * a5;
      v66 = v155;
      v23 = 0uLL;
      v67 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v68 = 0;
        v69 = 1;
        do
        {
          v70 = v69;
          v71 = vsubq_s16(*&v66[2 * v68], *(v65 + 2 * v68));
          v26 = vpadalq_s16(v26, v71);
          v23 = vmlal_s16(v23, *v71.i8, *v71.i8);
          v25 = vmlal_high_s16(v25, v71, v71);
          v68 = 8;
          v69 = 0;
        }

        while ((v70 & 1) != 0);
        v66 += 32;
        v65 += 2 * a6;
        --v67;
      }

      while (v67);
    }

    else if (a4)
    {
      v87 = 0;
      v88 = (v8 + 18);
      do
      {
        v89 = &v156[v87];
        v90 = vrhaddq_u16(*(v88 - 2), *v88);
        *v89 = vrhaddq_u16(*(v88 - 18), v88[-1]);
        v89[1] = v90;
        v87 += 32;
        v88 = (v88 + 2 * a2);
      }

      while (v87 != 160);
      v91 = vdupq_n_s16(8 - a4);
      v92 = (2 * a8);
      v93 = vdupq_n_s16(a4);
      v94 = v156;
      v95 = v155;
      v96 = 4;
      do
      {
        v97 = 0;
        v98 = 1;
        do
        {
          v99 = v98;
          v100 = *v92++;
          *&v95[2 * v97] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v94[2 * v97], v91), *&v94[2 * v97 + 32], v93), 3uLL), v100);
          v97 = 8;
          v98 = 0;
        }

        while ((v99 & 1) != 0);
        v94 += 32;
        v95 += 32;
        --v96;
      }

      while (v96);
      v101 = 2 * a5;
      v102 = v155;
      v23 = 0uLL;
      v103 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v104 = 0;
        v105 = 1;
        do
        {
          v106 = v105;
          v107 = vsubq_s16(*&v102[2 * v104], *(v101 + 2 * v104));
          v26 = vpadalq_s16(v26, v107);
          v23 = vmlal_s16(v23, *v107.i8, *v107.i8);
          v25 = vmlal_high_s16(v25, v107, v107);
          v104 = 8;
          v105 = 0;
        }

        while ((v106 & 1) != 0);
        v102 += 32;
        v101 += 2 * a6;
        --v103;
      }

      while (v103);
    }

    else
    {
      v14 = (2 * a8);
      v15 = v156;
      v16 = 4;
      do
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = v18;
          v20 = *v14++;
          *&v15[2 * v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v17), *(v8 + 2 * v17 + 2)), v20);
          v17 = 8;
          v18 = 0;
        }

        while ((v19 & 1) != 0);
        v8 += 2 * a2;
        v15 += 32;
        --v16;
      }

      while (v16);
      v21 = 2 * a5;
      v22 = v156;
      v23 = 0uLL;
      v24 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = 0;
        v28 = 1;
        do
        {
          v29 = v28;
          v30 = vsubq_s16(*&v22[2 * v27], *(v21 + 2 * v27));
          v26 = vpadalq_s16(v26, v30);
          v23 = vmlal_s16(v23, *v30.i8, *v30.i8);
          v25 = vmlal_high_s16(v25, v30, v30);
          v27 = 8;
          v28 = 0;
        }

        while ((v29 & 1) != 0);
        v22 += 32;
        v21 += 2 * a6;
        --v24;
      }

      while (v24);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v108 = 0;
      v109 = vdupq_n_s16(8 - a3);
      v110 = vdupq_n_s16(a3);
      v111 = (v8 + 18);
      do
      {
        v112 = &v156[v108];
        v113 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 - 2), v109), *v111, v110), 3uLL);
        *v112 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 - 18), v109), v111[-1], v110), 3uLL);
        v112[1] = v113;
        v108 += 32;
        v111 = (v111 + 2 * a2);
      }

      while (v108 != 160);
      v114 = (2 * a8);
      v115 = v156;
      v116 = v155;
      v117 = 4;
      do
      {
        v118 = 0;
        v119 = 1;
        do
        {
          v120 = v119;
          v121 = *v114++;
          *&v116[2 * v118] = vrhaddq_u16(vrhaddq_u16(*&v115[2 * v118], *&v115[2 * v118 + 32]), v121);
          v118 = 8;
          v119 = 0;
        }

        while ((v120 & 1) != 0);
        v115 += 32;
        v116 += 32;
        --v117;
      }

      while (v117);
      v122 = 2 * a5;
      v123 = v155;
      v23 = 0uLL;
      v124 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v125 = 0;
        v126 = 1;
        do
        {
          v127 = v126;
          v128 = vsubq_s16(*&v123[2 * v125], *(v122 + 2 * v125));
          v26 = vpadalq_s16(v26, v128);
          v23 = vmlal_s16(v23, *v128.i8, *v128.i8);
          v25 = vmlal_high_s16(v25, v128, v128);
          v125 = 8;
          v126 = 0;
        }

        while ((v127 & 1) != 0);
        v123 += 32;
        v122 += 2 * a6;
        --v124;
      }

      while (v124);
    }

    else if (a4)
    {
      v129 = 0;
      v130 = vdupq_n_s16(8 - a3);
      v131 = vdupq_n_s16(a3);
      v132 = (v8 + 18);
      do
      {
        v133 = &v156[v129];
        v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v132 - 2), v130), *v132, v131), 3uLL);
        *v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v132 - 18), v130), v132[-1], v131), 3uLL);
        v133[1] = v134;
        v129 += 32;
        v132 = (v132 + 2 * a2);
      }

      while (v129 != 160);
      v135 = vdupq_n_s16(8 - a4);
      v136 = (2 * a8);
      v137 = vdupq_n_s16(a4);
      v138 = v156;
      v139 = v155;
      v140 = 4;
      do
      {
        v141 = 0;
        v142 = 1;
        do
        {
          v143 = v142;
          v144 = *v136++;
          *&v139[2 * v141] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v138[2 * v141], v135), *&v138[2 * v141 + 32], v137), 3uLL), v144);
          v141 = 8;
          v142 = 0;
        }

        while ((v143 & 1) != 0);
        v138 += 32;
        v139 += 32;
        --v140;
      }

      while (v140);
      v145 = 2 * a5;
      v146 = v155;
      v23 = 0uLL;
      v147 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v148 = 0;
        v149 = 1;
        do
        {
          v150 = v149;
          v151 = vsubq_s16(*&v146[2 * v148], *(v145 + 2 * v148));
          v26 = vpadalq_s16(v26, v151);
          v23 = vmlal_s16(v23, *v151.i8, *v151.i8);
          v25 = vmlal_high_s16(v25, v151, v151);
          v148 = 8;
          v149 = 0;
        }

        while ((v150 & 1) != 0);
        v146 += 32;
        v145 += 2 * a6;
        --v147;
      }

      while (v147);
    }

    else
    {
      v31 = (2 * a8);
      v32 = vdupq_n_s16(8 - a3);
      v33 = vdupq_n_s16(a3);
      v34 = v156;
      v35 = 4;
      do
      {
        v36 = 0;
        v37 = 1;
        do
        {
          v38 = v37;
          v39 = *v31++;
          *&v34[2 * v36] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v36), v32), *(v8 + 2 * v36 + 2), v33), 3uLL), v39);
          v36 = 8;
          v37 = 0;
        }

        while ((v38 & 1) != 0);
        v8 += 2 * a2;
        v34 += 32;
        --v35;
      }

      while (v35);
      v40 = 2 * a5;
      v41 = v156;
      v23 = 0uLL;
      v42 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = v44;
          v46 = vsubq_s16(*&v41[2 * v43], *(v40 + 2 * v43));
          v26 = vpadalq_s16(v26, v46);
          v23 = vmlal_s16(v23, *v46.i8, *v46.i8);
          v25 = vmlal_high_s16(v25, v46, v46);
          v43 = 8;
          v44 = 0;
        }

        while ((v45 & 1) != 0);
        v41 += 32;
        v40 += 2 * a6;
        --v42;
      }

      while (v42);
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v47 = v156;
      v48 = 4;
      do
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v51 = v50;
          v52 = *v9++;
          *&v47[2 * v49] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v49), *(v8 + 2 * v49 + 2 * a2)), v52);
          v49 = 8;
          v50 = 0;
        }

        while ((v51 & 1) != 0);
        v8 += 2 * a2;
        v47 += 32;
        --v48;
      }

      while (v48);
    }

    else if (a4)
    {
      v72 = vdupq_n_s16(8 - a4);
      v73 = vdupq_n_s16(a4);
      v74 = v156;
      v75 = 4;
      do
      {
        v76 = 0;
        v77 = 1;
        do
        {
          v78 = v77;
          v79 = *v9++;
          *&v74[2 * v76] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v76), v72), *(v8 + 2 * v76 + 2 * a2), v73), 3uLL), v79);
          v76 = 8;
          v77 = 0;
        }

        while ((v78 & 1) != 0);
        v8 += 2 * a2;
        v74 += 32;
        --v75;
      }

      while (v75);
    }

    else
    {
      v10 = 0;
      v11 = (v8 + 16);
      do
      {
        v12 = &v156[v10 * 16];
        v13 = vrhaddq_u16(*v11, v9[v10 + 1]);
        *v12 = vrhaddq_u16(v11[-1], v9[v10]);
        v12[1] = v13;
        v10 += 2;
        v11 = (v11 + 2 * a2);
      }

      while ((v10 * 16) != 128);
    }

    v80 = 2 * a5;
    v81 = v156;
    v23 = 0uLL;
    v82 = 4;
    v25 = 0uLL;
    v26 = 0uLL;
    do
    {
      v83 = 0;
      v84 = 1;
      do
      {
        v85 = v84;
        v86 = vsubq_s16(*&v81[2 * v83], *(v80 + 2 * v83));
        v26 = vpadalq_s16(v26, v86);
        v23 = vmlal_s16(v23, *v86.i8, *v86.i8);
        v25 = vmlal_high_s16(v25, v86, v86);
        v83 = 8;
        v84 = 0;
      }

      while ((v85 & 1) != 0);
      v81 += 32;
      v80 += 2 * a6;
      --v82;
    }

    while (v82);
  }

  v152 = vaddvq_s32(v26);
  v153 = vaddlvq_u32(vaddq_s32(v25, v23));
  *a7 = v153;
  return v153 - ((v152 * v152) >> 6);
}

uint64_t sub_277B4AA50()
{
  v0 = MEMORY[0x28223BE20]();
  v157 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v53 = 0;
      v54 = (v8 + 18);
      do
      {
        v55 = &v156[v53];
        v56 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = v56;
        v53 += 32;
        v54 = (v54 + 2 * v1);
      }

      while (v53 != 2080);
      v57 = (2 * v7);
      v58 = v156;
      v59 = v155;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v57++;
          *&v59[2 * v61] = vrhaddq_u16(vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]), v64);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v65 = 2 * v4;
      v66 = v155;
      v23 = 0uLL;
      v67 = 64;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v68 = 0;
        v69 = 1;
        do
        {
          v70 = v69;
          v71 = vsubq_s16(*&v66[2 * v68], *(v65 + 2 * v68));
          v26 = vpadalq_s16(v26, v71);
          v23 = vmlal_s16(v23, *v71.i8, *v71.i8);
          v25 = vmlal_high_s16(v25, v71, v71);
          v68 = 8;
          v69 = 0;
        }

        while ((v70 & 1) != 0);
        v66 += 32;
        v65 += 2 * v5;
        --v67;
      }

      while (v67);
    }

    else if (v3)
    {
      v87 = 0;
      v88 = (v8 + 18);
      do
      {
        v89 = &v156[v87];
        v90 = vrhaddq_u16(*(v88 - 2), *v88);
        *v89 = vrhaddq_u16(*(v88 - 18), v88[-1]);
        v89[1] = v90;
        v87 += 32;
        v88 = (v88 + 2 * v1);
      }

      while (v87 != 2080);
      v91 = vdupq_n_s16(8 - v3);
      v92 = (2 * v7);
      v93 = vdupq_n_s16(v3);
      v94 = v156;
      v95 = v155;
      v96 = 64;
      do
      {
        v97 = 0;
        v98 = 1;
        do
        {
          v99 = v98;
          v100 = *v92++;
          *&v95[2 * v97] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v94[2 * v97], v91), *&v94[2 * v97 + 32], v93), 3uLL), v100);
          v97 = 8;
          v98 = 0;
        }

        while ((v99 & 1) != 0);
        v94 += 32;
        v95 += 32;
        --v96;
      }

      while (v96);
      v101 = 2 * v4;
      v102 = v155;
      v23 = 0uLL;
      v103 = 64;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v104 = 0;
        v105 = 1;
        do
        {
          v106 = v105;
          v107 = vsubq_s16(*&v102[2 * v104], *(v101 + 2 * v104));
          v26 = vpadalq_s16(v26, v107);
          v23 = vmlal_s16(v23, *v107.i8, *v107.i8);
          v25 = vmlal_high_s16(v25, v107, v107);
          v104 = 8;
          v105 = 0;
        }

        while ((v106 & 1) != 0);
        v102 += 32;
        v101 += 2 * v5;
        --v103;
      }

      while (v103);
    }

    else
    {
      v14 = (2 * v7);
      v15 = v156;
      v16 = 64;
      do
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = v18;
          v20 = *v14++;
          *&v15[2 * v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v17), *(v8 + 2 * v17 + 2)), v20);
          v17 = 8;
          v18 = 0;
        }

        while ((v19 & 1) != 0);
        v8 += 2 * v1;
        v15 += 32;
        --v16;
      }

      while (v16);
      v21 = 2 * v4;
      v22 = v156;
      v23 = 0uLL;
      v24 = 64;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = 0;
        v28 = 1;
        do
        {
          v29 = v28;
          v30 = vsubq_s16(*&v22[2 * v27], *(v21 + 2 * v27));
          v26 = vpadalq_s16(v26, v30);
          v23 = vmlal_s16(v23, *v30.i8, *v30.i8);
          v25 = vmlal_high_s16(v25, v30, v30);
          v27 = 8;
          v28 = 0;
        }

        while ((v29 & 1) != 0);
        v22 += 32;
        v21 += 2 * v5;
        --v24;
      }

      while (v24);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v108 = 0;
      v109 = vdupq_n_s16(8 - v2);
      v110 = vdupq_n_s16(v2);
      v111 = (v8 + 18);
      do
      {
        v112 = &v156[v108];
        v113 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 - 2), v109), *v111, v110), 3uLL);
        *v112 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 - 18), v109), v111[-1], v110), 3uLL);
        v112[1] = v113;
        v108 += 32;
        v111 = (v111 + 2 * v1);
      }

      while (v108 != 2080);
      v114 = (2 * v7);
      v115 = v156;
      v116 = v155;
      v117 = 64;
      do
      {
        v118 = 0;
        v119 = 1;
        do
        {
          v120 = v119;
          v121 = *v114++;
          *&v116[2 * v118] = vrhaddq_u16(vrhaddq_u16(*&v115[2 * v118], *&v115[2 * v118 + 32]), v121);
          v118 = 8;
          v119 = 0;
        }

        while ((v120 & 1) != 0);
        v115 += 32;
        v116 += 32;
        --v117;
      }

      while (v117);
      v122 = 2 * v4;
      v123 = v155;
      v23 = 0uLL;
      v124 = 64;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v125 = 0;
        v126 = 1;
        do
        {
          v127 = v126;
          v128 = vsubq_s16(*&v123[2 * v125], *(v122 + 2 * v125));
          v26 = vpadalq_s16(v26, v128);
          v23 = vmlal_s16(v23, *v128.i8, *v128.i8);
          v25 = vmlal_high_s16(v25, v128, v128);
          v125 = 8;
          v126 = 0;
        }

        while ((v127 & 1) != 0);
        v123 += 32;
        v122 += 2 * v5;
        --v124;
      }

      while (v124);
    }

    else if (v3)
    {
      v129 = 0;
      v130 = vdupq_n_s16(8 - v2);
      v131 = vdupq_n_s16(v2);
      v132 = (v8 + 18);
      do
      {
        v133 = &v156[v129];
        v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v132 - 2), v130), *v132, v131), 3uLL);
        *v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v132 - 18), v130), v132[-1], v131), 3uLL);
        v133[1] = v134;
        v129 += 32;
        v132 = (v132 + 2 * v1);
      }

      while (v129 != 2080);
      v135 = vdupq_n_s16(8 - v3);
      v136 = (2 * v7);
      v137 = vdupq_n_s16(v3);
      v138 = v156;
      v139 = v155;
      v140 = 64;
      do
      {
        v141 = 0;
        v142 = 1;
        do
        {
          v143 = v142;
          v144 = *v136++;
          *&v139[2 * v141] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v138[2 * v141], v135), *&v138[2 * v141 + 32], v137), 3uLL), v144);
          v141 = 8;
          v142 = 0;
        }

        while ((v143 & 1) != 0);
        v138 += 32;
        v139 += 32;
        --v140;
      }

      while (v140);
      v145 = 2 * v4;
      v146 = v155;
      v23 = 0uLL;
      v147 = 64;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v148 = 0;
        v149 = 1;
        do
        {
          v150 = v149;
          v151 = vsubq_s16(*&v146[2 * v148], *(v145 + 2 * v148));
          v26 = vpadalq_s16(v26, v151);
          v23 = vmlal_s16(v23, *v151.i8, *v151.i8);
          v25 = vmlal_high_s16(v25, v151, v151);
          v148 = 8;
          v149 = 0;
        }

        while ((v150 & 1) != 0);
        v146 += 32;
        v145 += 2 * v5;
        --v147;
      }

      while (v147);
    }

    else
    {
      v31 = (2 * v7);
      v32 = vdupq_n_s16(8 - v2);
      v33 = vdupq_n_s16(v2);
      v34 = v156;
      v35 = 64;
      do
      {
        v36 = 0;
        v37 = 1;
        do
        {
          v38 = v37;
          v39 = *v31++;
          *&v34[2 * v36] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v36), v32), *(v8 + 2 * v36 + 2), v33), 3uLL), v39);
          v36 = 8;
          v37 = 0;
        }

        while ((v38 & 1) != 0);
        v8 += 2 * v1;
        v34 += 32;
        --v35;
      }

      while (v35);
      v40 = 2 * v4;
      v41 = v156;
      v23 = 0uLL;
      v42 = 64;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = v44;
          v46 = vsubq_s16(*&v41[2 * v43], *(v40 + 2 * v43));
          v26 = vpadalq_s16(v26, v46);
          v23 = vmlal_s16(v23, *v46.i8, *v46.i8);
          v25 = vmlal_high_s16(v25, v46, v46);
          v43 = 8;
          v44 = 0;
        }

        while ((v45 & 1) != 0);
        v41 += 32;
        v40 += 2 * v5;
        --v42;
      }

      while (v42);
    }
  }

  else
  {
    v9 = (2 * v7);
    if (v3 == 4)
    {
      v47 = v156;
      v48 = 64;
      do
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v51 = v50;
          v52 = *v9++;
          *&v47[2 * v49] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v49), *(v8 + 2 * v49 + 2 * v1)), v52);
          v49 = 8;
          v50 = 0;
        }

        while ((v51 & 1) != 0);
        v8 += 2 * v1;
        v47 += 32;
        --v48;
      }

      while (v48);
    }

    else if (v3)
    {
      v72 = vdupq_n_s16(8 - v3);
      v73 = vdupq_n_s16(v3);
      v74 = v156;
      v75 = 64;
      do
      {
        v76 = 0;
        v77 = 1;
        do
        {
          v78 = v77;
          v79 = *v9++;
          *&v74[2 * v76] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v76), v72), *(v8 + 2 * v76 + 2 * v1), v73), 3uLL), v79);
          v76 = 8;
          v77 = 0;
        }

        while ((v78 & 1) != 0);
        v8 += 2 * v1;
        v74 += 32;
        --v75;
      }

      while (v75);
    }

    else
    {
      v10 = 0;
      v11 = (v8 + 16);
      do
      {
        v12 = &v156[v10 * 16];
        v13 = vrhaddq_u16(*v11, v9[v10 + 1]);
        *v12 = vrhaddq_u16(v11[-1], v9[v10]);
        v12[1] = v13;
        v10 += 2;
        v11 = (v11 + 2 * v1);
      }

      while ((v10 * 16) != 2048);
    }

    v80 = 2 * v4;
    v81 = v156;
    v23 = 0uLL;
    v82 = 64;
    v25 = 0uLL;
    v26 = 0uLL;
    do
    {
      v83 = 0;
      v84 = 1;
      do
      {
        v85 = v84;
        v86 = vsubq_s16(*&v81[2 * v83], *(v80 + 2 * v83));
        v26 = vpadalq_s16(v26, v86);
        v23 = vmlal_s16(v23, *v86.i8, *v86.i8);
        v25 = vmlal_high_s16(v25, v86, v86);
        v83 = 8;
        v84 = 0;
      }

      while ((v85 & 1) != 0);
      v81 += 32;
      v80 += 2 * v5;
      --v82;
    }

    while (v82);
  }

  v152 = vaddvq_s32(v26);
  v153 = vaddlvq_u32(vaddq_s32(v25, v23));
  *v6 = v153;
  return v153 - ((v152 * v152) >> 10);
}

uint64_t sub_277B4B264(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v138 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v47 = v137;
      v48 = 9;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49), *(v8 + v49 + 2));
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x18);
        v47 += 64;
        v8 += 2 * a2;
        --v48;
      }

      while (v48);
      v51 = 2 * a8;
      v52 = v137;
      v53 = v136;
      v54 = 8;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 64]), *(v51 + v55));
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x18);
        v51 += v55;
        v52 += 64;
        v53 += 64;
        --v54;
      }

      while (v54);
      v57 = 2 * a5;
      v58 = v136;
      v21 = 0uLL;
      v59 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v58 += 64;
        v57 += 2 * a6;
        --v59;
      }

      while (v59);
    }

    else if (a4)
    {
      v77 = v137;
      v78 = 9;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79), *(v8 + v79 + 2));
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = 2 * a8;
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v137;
      v86 = v136;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL), *(v81 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v81 += v87;
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
      v89 = 2 * a5;
      v90 = v136;
      v21 = 0uLL;
      v91 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v90 += 64;
        v89 += 2 * a6;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * a8;
      v15 = v137;
      v16 = 8;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x18);
        v14 += v17;
        v15 += 64;
        v8 += 2 * a2;
        --v16;
      }

      while (v16);
      v19 = 2 * a5;
      v20 = v137;
      v21 = 0uLL;
      v22 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 16;
        }

        while (v26 < 0x18);
        v20 += 64;
        v19 += 2 * a6;
        --v22;
      }

      while (v22);
    }
  }

  else if (a3)
  {
    v28 = 8;
    if (a4 == 4)
    {
      v95 = vdupq_n_s16(8 - a3);
      v96 = vdupq_n_s16(a3);
      v97 = v137;
      v98 = 9;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99), v95), *(v8 + v99 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 16;
        }

        while (v100 < 0x18);
        v97 += 64;
        v8 += 2 * a2;
        --v98;
      }

      while (v98);
      v101 = 2 * a8;
      v102 = v137;
      v103 = v136;
      v104 = 8;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 64]), *(v101 + v105));
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v101 += v105;
        v102 += 64;
        v103 += 64;
        --v104;
      }

      while (v104);
      v107 = 2 * a5;
      v108 = v136;
      v21 = 0uLL;
      v109 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v108 += 64;
        v107 += 2 * a6;
        --v109;
      }

      while (v109);
    }

    else if (a4)
    {
      v113 = vdupq_n_s16(8 - a3);
      v114 = vdupq_n_s16(a3);
      v115 = v137;
      v116 = 9;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117), v113), *(v8 + v117 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x18);
        v115 += 64;
        v8 += 2 * a2;
        --v116;
      }

      while (v116);
      v119 = 2 * a8;
      v120 = 8;
      v121 = vdupq_n_s16(8 - a4);
      v122 = vdupq_n_s16(a4);
      v123 = v137;
      v124 = v136;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v124[v125] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v125], v121), *&v123[v125 + 64], v122), 3uLL), *(v119 + v125));
          v126 += 8;
          v125 += 16;
        }

        while (v126 < 0x18);
        v119 += v125;
        v123 += 64;
        v124 += 64;
        --v120;
      }

      while (v120);
      v127 = 2 * a5;
      v128 = v136;
      v21 = 0uLL;
      v129 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x18);
        v128 += 64;
        v127 += 2 * a6;
        --v129;
      }

      while (v129);
    }

    else
    {
      v29 = vdupq_n_s16(8 - a3);
      v30 = 2 * a8;
      v31 = vdupq_n_s16(a3);
      v32 = v137;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v32[v33] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v31), 3uLL), *(v30 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v30 += v33;
        v32 += 64;
        v8 += 2 * a2;
        --v28;
      }

      while (v28);
      v35 = 2 * a5;
      v36 = v137;
      v21 = 0uLL;
      v37 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v36 += 64;
        v35 += 2 * a6;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * a8;
    if (a4 == 4)
    {
      v41 = 2 * a2;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 8;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v9 += v45;
        v43 += 64;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (a4)
    {
      v63 = 8;
      v64 = vdupq_n_s16(8 - a4);
      v65 = vdupq_n_s16(a4);
      v66 = 2 * a2;
      v67 = v8 + v66;
      v68 = v137;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v68[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v64), *(v67 + v69), v65), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v9 += v69;
        v68 += 64;
        v67 += v66;
        v8 += v66;
        --v63;
      }

      while (v63);
    }

    else
    {
      v10 = v137;
      v11 = 8;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x18);
        v9 += v12;
        v10 += 64;
        v8 += 2 * a2;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * a5;
    v72 = v137;
    v21 = 0uLL;
    v73 = 8;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x18);
      v72 += 64;
      v71 += 2 * a6;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 8);
}

uint64_t sub_277B4BA5C()
{
  v0 = MEMORY[0x28223BE20]();
  v138 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v47 = v137;
      v48 = 17;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49), *(v8 + v49 + 2));
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x38);
        v47 += 128;
        v8 += 2 * v1;
        --v48;
      }

      while (v48);
      v51 = 2 * v7;
      v52 = v137;
      v53 = v136;
      v54 = 16;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 128]), *(v51 + v55));
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x38);
        v51 += v55;
        v52 += 128;
        v53 += 128;
        --v54;
      }

      while (v54);
      v57 = 2 * v4;
      v58 = v136;
      v21 = 0uLL;
      v59 = 16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v58 += 128;
        v57 += 2 * v5;
        --v59;
      }

      while (v59);
    }

    else if (v3)
    {
      v77 = v137;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79), *(v8 + v79 + 2));
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x38);
        v77 += 128;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v137;
      v85 = v136;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 128], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x38);
        v82 += v87;
        v84 += 128;
        v85 += 128;
        --v86;
      }

      while (v86);
      v89 = 2 * v4;
      v90 = v136;
      v21 = 0uLL;
      v91 = 16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x38);
        v90 += 128;
        v89 += 2 * v5;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * v7;
      v15 = v137;
      v16 = 16;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x38);
        v14 += v17;
        v15 += 128;
        v8 += 2 * v1;
        --v16;
      }

      while (v16);
      v19 = 2 * v4;
      v20 = v137;
      v21 = 0uLL;
      v22 = 16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 16;
        }

        while (v26 < 0x38);
        v20 += 128;
        v19 += 2 * v5;
        --v22;
      }

      while (v22);
    }
  }

  else if (v2)
  {
    if (v3 == 4)
    {
      v95 = vdupq_n_s16(8 - v2);
      v96 = vdupq_n_s16(v2);
      v97 = v137;
      v98 = 17;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99), v95), *(v8 + v99 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 16;
        }

        while (v100 < 0x38);
        v97 += 128;
        v8 += 2 * v1;
        --v98;
      }

      while (v98);
      v101 = 2 * v7;
      v102 = v137;
      v103 = v136;
      v104 = 16;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 128]), *(v101 + v105));
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x38);
        v101 += v105;
        v102 += 128;
        v103 += 128;
        --v104;
      }

      while (v104);
      v107 = 2 * v4;
      v108 = v136;
      v21 = 0uLL;
      v109 = 16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v108 += 128;
        v107 += 2 * v5;
        --v109;
      }

      while (v109);
    }

    else if (v3)
    {
      v113 = vdupq_n_s16(8 - v2);
      v114 = vdupq_n_s16(v2);
      v115 = v137;
      v116 = 17;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117), v113), *(v8 + v117 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x38);
        v115 += 128;
        v8 += 2 * v1;
        --v116;
      }

      while (v116);
      v119 = vdupq_n_s16(8 - v3);
      v120 = 2 * v7;
      v121 = vdupq_n_s16(v3);
      v122 = v137;
      v123 = v136;
      v124 = 16;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 128], v121), 3uLL), *(v120 + v125));
          v126 += 8;
          v125 += 16;
        }

        while (v126 < 0x38);
        v120 += v125;
        v122 += 128;
        v123 += 128;
        --v124;
      }

      while (v124);
      v127 = 2 * v4;
      v128 = v136;
      v21 = 0uLL;
      v129 = 16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x38);
        v128 += 128;
        v127 += 2 * v5;
        --v129;
      }

      while (v129);
    }

    else
    {
      v28 = 2 * v7;
      v29 = vdupq_n_s16(8 - v2);
      v30 = vdupq_n_s16(v2);
      v31 = v137;
      v32 = 16;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x38);
        v28 += v33;
        v31 += 128;
        v8 += 2 * v1;
        --v32;
      }

      while (v32);
      v35 = 2 * v4;
      v36 = v137;
      v21 = 0uLL;
      v37 = 16;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x38);
        v36 += 128;
        v35 += 2 * v5;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * v7;
    if (v3 == 4)
    {
      v41 = 2 * v1;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 16;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v9 += v45;
        v43 += 128;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (v3)
    {
      v63 = vdupq_n_s16(8 - v3);
      v64 = vdupq_n_s16(v3);
      v65 = 2 * v1;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 16;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v9 += v69;
        v67 += 128;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
      v11 = 16;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x38);
        v9 += v12;
        v10 += 128;
        v8 += 2 * v1;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * v4;
    v72 = v137;
    v21 = 0uLL;
    v73 = 16;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x38);
      v72 += 128;
      v71 += 2 * v5;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 10);
}

uint64_t sub_277B4C288(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[5] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 40);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 32);
  return sub_2779960F8(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B4C38C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[9] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 72);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_2779961A0(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B4C490(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 80);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_277996248(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B4C594(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 144);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_2779962D4(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B4C6A0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 272);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 256);
  return sub_277996360(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B4C7AC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 288);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 8;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 8;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 288);
      v58 = (2 * a8);
      v59 = 8;
      v60 = vdupq_n_s16(8 - a4);
      v61 = vdupq_n_s16(a4);
      v62 = v98;
      v63 = v97;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v58++;
          *&v63[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v62[2 * v64], v60), *&v62[2 * v64 + 32], v61), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v62 += 32;
        v63 += 32;
        --v59;
      }

      while (v59);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 288);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 8;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = 8;
        v21 = vdupq_n_s16(8 - a3);
        v22 = (2 * a8);
        v23 = vdupq_n_s16(a3);
        v24 = v98;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v22++;
            *&v24[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v23), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v24 += 32;
          --v20;
        }

        while (v20);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 288);
      v86 = (2 * a8);
      v87 = 8;
      v88 = vdupq_n_s16(8 - a4);
      v89 = vdupq_n_s16(a4);
      v90 = v98;
      v91 = v97;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v86++;
          *&v91[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v90[2 * v92], v88), *&v90[2 * v92 + 32], v89), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v90 += 32;
        v91 += 32;
        --v87;
      }

      while (v87);
    }

LABEL_59:
    v54 = v97;
    return sub_2779963EC(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 8;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = 8;
    v47 = vdupq_n_s16(8 - a4);
    v48 = vdupq_n_s16(a4);
    v49 = v98;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v49[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v47), *(v8 + 2 * v50 + 2 * a2), v48), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v49 += 32;
      --v46;
    }

    while (v46);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 256);
  }

LABEL_38:
  v54 = v98;
  return sub_2779963EC(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B4CD1C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 544);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 16;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 16;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 544);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 16;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 544);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 16;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 16;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 544);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 16;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277996494(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 16;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 512);
  }

LABEL_38:
  v54 = v98;
  return sub_277996494(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B4D29C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 1056);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 32;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 1056);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 32;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 1056);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 32;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 1056);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 32;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_27799653C(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 32;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 1024);
  }

LABEL_38:
  v54 = v98;
  return sub_27799653C(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B4D81C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 17;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 16;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - a4);
      v56 = 2 * a8;
      v57 = vdupq_n_s16(a4);
      v58 = v91;
      v59 = v90;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 64], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v56 += v61;
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 16;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v19 = 2 * a8;
        v20 = vdupq_n_s16(8 - a3);
        v21 = vdupq_n_s16(a3);
        v22 = v91;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 64;
          v8 += 2 * a2;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - a4);
      v82 = 2 * a8;
      v83 = vdupq_n_s16(a4);
      v84 = v91;
      v85 = v90;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_2779965E4(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = vdupq_n_s16(8 - a4);
    v43 = vdupq_n_s16(a4);
    v44 = 2 * a2;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 16;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 64;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_2779965E4(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B4DDA4()
{
  v0 = MEMORY[0x28223BE20]();
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 33;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 32;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 32;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 64], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v56 += v61;
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 33;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 32;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 64;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 33;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 32;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277996688(v50 >> 1, 32, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 32;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 32;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 64;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 32;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277996688(v50 >> 1, 32, v4, v5, v6);
}

uint64_t sub_277B4E348()
{
  v0 = MEMORY[0x28223BE20]();
  v91[520] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 65;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x18);
        v32 += 8;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 8]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x18);
        v36 += v40 * 8;
        v37 += 8;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 64;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 8;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x18);
        v51 += 8;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 8], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v56 += v61 * 8;
        v58 += 8;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 65;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x18);
        v65 += 8;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 64;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 8]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x18);
        v69 += v73 * 8;
        v70 += 8;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 8;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x18);
        v77 += 8;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 8], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x18);
        v82 += v87 * 8;
        v84 += 8;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_27799672C(v50 >> 1, 32, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 64;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 8;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 64;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 8;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 64;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 8;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_27799672C(v50 >> 1, 32, v4, v5, v6);
}

uint64_t sub_277B4E924()
{
  v0 = MEMORY[0x28223BE20]();
  v91[528] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 33;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x38);
        v32 += 16;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 32;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 16]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v36 += v40 * 8;
        v37 += 16;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 32;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 16;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v51 += 16;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 16], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v56 += v61 * 8;
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 33;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x38);
        v65 += 16;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 32;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 16]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x38);
        v69 += v73 * 8;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 16;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 33;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 32;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_2779967D0(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 32;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 16;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 32;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 16;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 32;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 16;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_2779967D0(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B4EF00()
{
  v0 = MEMORY[0x28223BE20]();
  v91[1040] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 65;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x38);
        v32 += 16;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 16]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v36 += v40 * 8;
        v37 += 16;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 64;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 16;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v51 += 16;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 16], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v56 += v61 * 8;
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 65;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x38);
        v65 += 16;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 64;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 16]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x38);
        v69 += v73 * 8;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 16;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277996874(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 64;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 16;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 64;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 16;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 64;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 16;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277996874(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B4F4DC()
{
  v0 = MEMORY[0x28223BE20]();
  v91[2064] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 129;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x38);
        v32 += 16;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 128;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 16]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v36 += v40 * 8;
        v37 += 16;
        v38 += 128;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 128;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x38);
          v14 += v17;
          v15 += 16;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v51 += 16;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 16], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v56 += v61 * 8;
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 129;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x38);
        v65 += 16;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 128;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 16]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x38);
        v69 += v73 * 8;
        v70 += 16;
        v71 += 128;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 128;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x38);
          v19 += v24;
          v22 += 16;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 129;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v77 += 16;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 128;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 16], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v82 += v87 * 8;
        v84 += 16;
        v85 += 128;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277996918(v50 >> 1, 64, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 128;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x38);
      v9 += v30;
      v28 += 16;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 128;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x38);
      v9 += v48;
      v46 += 16;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 128;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x38);
      v9 += v12;
      v10 += 16;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277996918(v50 >> 1, 64, v4, v5, v6);
}

uint64_t sub_277B4FAB8()
{
  v0 = MEMORY[0x28223BE20]();
  v91[2080] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 65;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x78);
        v32 += 32;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 32]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x78);
        v36 += v40 * 8;
        v37 += 32;
        v38 += 256;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 64;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x78);
          v14 += v17;
          v15 += 32;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v51 += 32;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 32], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v56 += v61 * 8;
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 65;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x78);
        v65 += 32;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 64;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 32]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x78);
        v69 += v73 * 8;
        v70 += 32;
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x78);
          v19 += v24;
          v22 += 32;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 65;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v77 += 32;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 64;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 32], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v82 += v87 * 8;
        v84 += 32;
        v85 += 256;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_2779969BC(v50 >> 1, 128, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 64;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x78);
      v9 += v30;
      v28 += 32;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 64;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x78);
      v9 += v48;
      v46 += 32;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 64;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x78);
      v9 += v12;
      v10 += 32;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_2779969BC(v50 >> 1, 128, v4, v5, v6);
}

uint64_t sub_277B50094()
{
  v0 = MEMORY[0x28223BE20]();
  v91[4128] = *MEMORY[0x277D85DE8];
  v8 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v32 = v91;
      v33 = 129;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34 * 8), *(v8 + v34 * 8 + 2));
          v35 += 8;
          v34 += 2;
        }

        while (v35 < 0x78);
        v32 += 32;
        v8 += 2 * v1;
        --v33;
      }

      while (v33);
      v36 = 2 * v7;
      v37 = v91;
      v38 = v90;
      v39 = 128;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40 * 8] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 32]), *(v36 + v40 * 8));
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x78);
        v36 += v40 * 8;
        v37 += 32;
        v38 += 256;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!v3)
      {
        v14 = 2 * v7;
        v15 = v91;
        v16 = 128;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x78);
          v14 += v17;
          v15 += 32;
          v8 += 2 * v1;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53 * 8), *(v8 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v51 += 32;
        v8 += 2 * v1;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v3);
      v56 = 2 * v7;
      v57 = vdupq_n_s16(v3);
      v58 = v91;
      v59 = v90;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 32], v57), 3uLL), *(v56 + v61 * 8));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v56 += v61 * 8;
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (v2)
  {
    if (v3 == 4)
    {
      v63 = vdupq_n_s16(8 - v2);
      v64 = vdupq_n_s16(v2);
      v65 = v91;
      v66 = 129;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67 * 8), v63), *(v8 + v67 * 8 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 2;
        }

        while (v68 < 0x78);
        v65 += 32;
        v8 += 2 * v1;
        --v66;
      }

      while (v66);
      v69 = 2 * v7;
      v70 = v91;
      v71 = v90;
      v72 = 128;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73 * 8] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 32]), *(v69 + v73 * 8));
          v74 += 8;
          v73 += 2;
        }

        while (v74 < 0x78);
        v69 += v73 * 8;
        v70 += 32;
        v71 += 256;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!v3)
      {
        v19 = 2 * v7;
        v20 = vdupq_n_s16(8 - v2);
        v21 = vdupq_n_s16(v2);
        v22 = v91;
        v23 = 128;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x78);
          v19 += v24;
          v22 += 32;
          v8 += 2 * v1;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - v2);
      v76 = vdupq_n_s16(v2);
      v77 = v91;
      v78 = 129;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79 * 8), v75), *(v8 + v79 * 8 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v77 += 32;
        v8 += 2 * v1;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - v3);
      v82 = 2 * v7;
      v83 = vdupq_n_s16(v3);
      v84 = v91;
      v85 = v90;
      v86 = 128;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 32], v83), 3uLL), *(v82 + v87 * 8));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v82 += v87 * 8;
        v84 += 32;
        v85 += 256;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277996A60(v50 >> 1, 128, v4, v5, v6);
  }

  v9 = 2 * v7;
  if (v3 == 4)
  {
    v26 = 2 * v1;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 128;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30 / 8] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x78);
      v9 += v30;
      v28 += 32;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (v3)
  {
    v42 = vdupq_n_s16(8 - v3);
    v43 = vdupq_n_s16(v3);
    v44 = 2 * v1;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 128;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x78);
      v9 += v48;
      v46 += 32;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 128;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12 / 8] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x78);
      v9 += v12;
      v10 += 32;
      v8 += 2 * v1;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277996A60(v50 >> 1, 128, v4, v5, v6);
}

uint64_t sub_277B50674(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[17] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 136);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277997938(v18 >> 1, 4u, a5, a6, a7);
}