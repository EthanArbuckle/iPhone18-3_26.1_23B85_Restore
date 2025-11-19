uint64_t sub_277B7D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[1040] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 65;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x38);
        v55 += 16;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 16]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 16;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          v72 = vsubq_s16(*&v68[v70], *(v67 + v70));
          v38 = vpadalq_s16(v38, v72);
          v35 = vmlal_s16(v35, *v72.i8, *v72.i8);
          v37 = vmlal_high_s16(v37, v72, v72);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x38);
        v68 += 128;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v79 += 16;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 64;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 64, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v87 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          v90 = vsubq_s16(*&v85[v88], *(v87 + v88));
          v38 = vpadalq_s16(v38, v90);
          v35 = vmlal_s16(v35, *v90.i8, *v90.i8);
          v37 = vmlal_high_s16(v37, v90, v90);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x38);
        v85 += 128;
        v87 += 2 * v19;
        --v86;
      }

      while (v86);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v28 = v125;
      v29 = 64;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x38);
        v23 += v30;
        v28 += 16;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x38);
        v34 += 16;
        v33 += 2 * v14;
        --v36;
      }

      while (v36);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v125;
      v94 = 65;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v93 += 16;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 64;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 16]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 16;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v106 = 0;
        v107 = -8;
        do
        {
          v108 = vsubq_s16(*&v104[v106], *(v103 + v106));
          v38 = vpadalq_s16(v38, v108);
          v35 = vmlal_s16(v35, *v108.i8, *v108.i8);
          v37 = vmlal_high_s16(v37, v108, v108);
          v107 += 8;
          v106 += 16;
        }

        while (v107 < 0x38);
        v104 += 128;
        v103 += 2 * v14;
        --v105;
      }

      while (v105);
    }

    else if (v12)
    {
      v109 = vdupq_n_s16(8 - v11);
      v110 = vdupq_n_s16(v11);
      v111 = v125;
      v112 = 65;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v111 += 16;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 64;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 64, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v117 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v115[v118], *(v117 + v118));
          v38 = vpadalq_s16(v38, v120);
          v35 = vmlal_s16(v35, *v120.i8, *v120.i8);
          v37 = vmlal_high_s16(v37, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x38);
        v115 += 128;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 64;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v44 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v42 += 16;
        v44 += 2 * v19;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v48 = 2 * v10;
      v49 = v21 + v48;
      v50 = v125;
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 16;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
          v27 += 8;
          v26 += 16;
        }

        while (v27 < 0x38);
        v23 += v26;
        v24 += 16;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 64;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x38);
      v74 += 16;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 12);
}

uint64_t sub_277B7DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[2064] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 129;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x38);
        v55 += 16;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 128;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 16]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 16;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          v72 = vsubq_s16(*&v68[v70], *(v67 + v70));
          v38 = vpadalq_s16(v38, v72);
          v35 = vmlal_s16(v35, *v72.i8, *v72.i8);
          v37 = vmlal_high_s16(v37, v72, v72);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x38);
        v68 += 128;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 129;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v79 += 16;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 128;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 128, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v87 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          v90 = vsubq_s16(*&v85[v88], *(v87 + v88));
          v38 = vpadalq_s16(v38, v90);
          v35 = vmlal_s16(v35, *v90.i8, *v90.i8);
          v37 = vmlal_high_s16(v37, v90, v90);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x38);
        v85 += 128;
        v87 += 2 * v19;
        --v86;
      }

      while (v86);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v28 = v125;
      v29 = 128;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x38);
        v23 += v30;
        v28 += 16;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x38);
        v34 += 16;
        v33 += 2 * v14;
        --v36;
      }

      while (v36);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v125;
      v94 = 129;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v93 += 16;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 128;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 16]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 16;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v106 = 0;
        v107 = -8;
        do
        {
          v108 = vsubq_s16(*&v104[v106], *(v103 + v106));
          v38 = vpadalq_s16(v38, v108);
          v35 = vmlal_s16(v35, *v108.i8, *v108.i8);
          v37 = vmlal_high_s16(v37, v108, v108);
          v107 += 8;
          v106 += 16;
        }

        while (v107 < 0x38);
        v104 += 128;
        v103 += 2 * v14;
        --v105;
      }

      while (v105);
    }

    else if (v12)
    {
      v109 = vdupq_n_s16(8 - v11);
      v110 = vdupq_n_s16(v11);
      v111 = v125;
      v112 = 129;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v111 += 16;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 128;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 128, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v117 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v115[v118], *(v117 + v118));
          v38 = vpadalq_s16(v38, v120);
          v35 = vmlal_s16(v35, *v120.i8, *v120.i8);
          v37 = vmlal_high_s16(v37, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x38);
        v115 += 128;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 128;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 128, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v44 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v42 += 16;
        v44 += 2 * v19;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v48 = 2 * v10;
      v49 = v21 + v48;
      v50 = v125;
      v51 = 128;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 16;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 128, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 128;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
          v27 += 8;
          v26 += 16;
        }

        while (v27 < 0x38);
        v23 += v26;
        v24 += 16;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 128;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x38);
      v74 += 16;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 13);
}

uint64_t sub_277B7E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[2080] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 65;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x78);
        v55 += 32;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 32]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x78);
        v23 += v64;
        v61 += 32;
        v62 += 256;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          v72 = vsubq_s16(*&v68[v70], *(v67 + v70));
          v38 = vpadalq_s16(v38, v72);
          v35 = vmlal_s16(v35, *v72.i8, *v72.i8);
          v37 = vmlal_high_s16(v37, v72, v72);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x78);
        v68 += 256;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v79 += 32;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 64;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 64, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v87 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          v90 = vsubq_s16(*&v85[v88], *(v87 + v88));
          v38 = vpadalq_s16(v38, v90);
          v35 = vmlal_s16(v35, *v90.i8, *v90.i8);
          v37 = vmlal_high_s16(v37, v90, v90);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x78);
        v85 += 256;
        v87 += 2 * v19;
        --v86;
      }

      while (v86);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v28 = v125;
      v29 = 64;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x78);
        v23 += v30;
        v28 += 32;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x78);
        v34 += 32;
        v33 += 2 * v14;
        --v36;
      }

      while (v36);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v125;
      v94 = 65;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v93 += 32;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 64;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 32]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x78);
        v23 += v100;
        v97 += 32;
        v98 += 256;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v106 = 0;
        v107 = -8;
        do
        {
          v108 = vsubq_s16(*&v104[v106], *(v103 + v106));
          v38 = vpadalq_s16(v38, v108);
          v35 = vmlal_s16(v35, *v108.i8, *v108.i8);
          v37 = vmlal_high_s16(v37, v108, v108);
          v107 += 8;
          v106 += 16;
        }

        while (v107 < 0x78);
        v104 += 256;
        v103 += 2 * v14;
        --v105;
      }

      while (v105);
    }

    else if (v12)
    {
      v109 = vdupq_n_s16(8 - v11);
      v110 = vdupq_n_s16(v11);
      v111 = v125;
      v112 = 65;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x78);
        v111 += 32;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 64;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 64, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v117 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v115[v118], *(v117 + v118));
          v38 = vpadalq_s16(v38, v120);
          v35 = vmlal_s16(v35, *v120.i8, *v120.i8);
          v37 = vmlal_high_s16(v37, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x78);
        v115 += 256;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 64;
      sub_277B79A68(v21, v125, v10, 1, 0x80u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v44 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v42 += 32;
        v44 += 2 * v19;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v48 = 2 * v10;
      v49 = v21 + v48;
      v50 = v125;
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x78);
        v23 += v52;
        v50 += 32;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x80u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
          v27 += 8;
          v26 += 16;
        }

        while (v27 < 0x78);
        v23 += v26;
        v24 += 32;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 64;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x78);
      v74 += 32;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 13);
}

uint64_t sub_277B7EA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[4128] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 129;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x78);
        v55 += 32;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 128;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 32]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x78);
        v23 += v64;
        v61 += 32;
        v62 += 256;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          v72 = vsubq_s16(*&v68[v70], *(v67 + v70));
          v38 = vpadalq_s16(v38, v72);
          v35 = vmlal_s16(v35, *v72.i8, *v72.i8);
          v37 = vmlal_high_s16(v37, v72, v72);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x78);
        v68 += 256;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 129;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v79 += 32;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 128;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 128, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v87 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          v90 = vsubq_s16(*&v85[v88], *(v87 + v88));
          v38 = vpadalq_s16(v38, v90);
          v35 = vmlal_s16(v35, *v90.i8, *v90.i8);
          v37 = vmlal_high_s16(v37, v90, v90);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x78);
        v85 += 256;
        v87 += 2 * v19;
        --v86;
      }

      while (v86);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v28 = v125;
      v29 = 128;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x78);
        v23 += v30;
        v28 += 32;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x78);
        v34 += 32;
        v33 += 2 * v14;
        --v36;
      }

      while (v36);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v125;
      v94 = 129;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v93 += 32;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 128;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 32]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x78);
        v23 += v100;
        v97 += 32;
        v98 += 256;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v106 = 0;
        v107 = -8;
        do
        {
          v108 = vsubq_s16(*&v104[v106], *(v103 + v106));
          v38 = vpadalq_s16(v38, v108);
          v35 = vmlal_s16(v35, *v108.i8, *v108.i8);
          v37 = vmlal_high_s16(v37, v108, v108);
          v107 += 8;
          v106 += 16;
        }

        while (v107 < 0x78);
        v104 += 256;
        v103 += 2 * v14;
        --v105;
      }

      while (v105);
    }

    else if (v12)
    {
      v109 = vdupq_n_s16(8 - v11);
      v110 = vdupq_n_s16(v11);
      v111 = v125;
      v112 = 129;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x78);
        v111 += 32;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 128;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 128, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v117 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v115[v118], *(v117 + v118));
          v38 = vpadalq_s16(v38, v120);
          v35 = vmlal_s16(v35, *v120.i8, *v120.i8);
          v37 = vmlal_high_s16(v37, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x78);
        v115 += 256;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 128;
      sub_277B79A68(v21, v125, v10, 1, 0x80u, 128, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v44 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v42 += 32;
        v44 += 2 * v19;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v48 = 2 * v10;
      v49 = v21 + v48;
      v50 = v125;
      v51 = 128;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x78);
        v23 += v52;
        v50 += 32;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x80u, 128, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 128;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
          v27 += 8;
          v26 += 16;
        }

        while (v27 < 0x78);
        v23 += v26;
        v24 += 32;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 128;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x78);
      v74 += 32;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 14);
}

uint64_t sub_277B7F248(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[17] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 136);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 128);
  return sub_277997618(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B7F368(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v26[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 528);
  sub_277B79A68(v26, v25, 8, 8, 8u, 32, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 512);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 8);
}

uint64_t sub_277B7F4B8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v131 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v14 + 18);
      do
      {
        v55 = &v130[v53];
        v56 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v57 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = v56;
        v55[1] = v57;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 160);
      v56.i16[0] = *(a11 + 4);
      v57.i16[0] = *(a11 + 8);
      v58 = v130;
      v59 = v129;
      v60 = 4;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v15++;
          v65 = vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]);
          *&v59[2 * v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v64.i8, *v57.i8, 0), *v65.i8, *v56.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v64, *v57.i8, 0), v65, *v56.i8, 0), 4uLL);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v66 = 2 * a5;
      v67 = v129;
      v31 = 0uLL;
      v68 = 4;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v34 = vpadalq_s16(v34, v72);
          v31 = vmlal_s16(v31, *v72.i8, *v72.i8);
          v33 = vmlal_high_s16(v33, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      v80 = 0;
      v81 = (v14 + 18);
      do
      {
        v82 = &v130[v80];
        v83 = vrhaddq_u16(*(v81 - 18), v81[-1]);
        v84 = vrhaddq_u16(*(v81 - 2), *v81);
        *v82 = v83;
        v82[1] = v84;
        v80 += 32;
        v81 = (v81 + 2 * a2);
      }

      while (v80 != 160);
      v85 = v129;
      v86 = 4;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 4, a4, v15, *v83.i8, *v84.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v87 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v88 = 0;
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = vsubq_s16(*&v85[2 * v88], *(v87 + 2 * v88));
          v34 = vpadalq_s16(v34, v91);
          v31 = vmlal_s16(v31, *v91.i8, *v91.i8);
          v33 = vmlal_high_s16(v33, v91, v91);
          v88 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
        v85 += 32;
        v87 += 2 * a6;
        --v86;
      }

      while (v86);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v22 = v130;
      v23 = 4;
      do
      {
        v24 = 0;
        v25 = 1;
        do
        {
          v26 = v25;
          v27 = *v15++;
          v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
          *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
          v24 = 8;
          v25 = 0;
        }

        while ((v26 & 1) != 0);
        v14 += 2 * a2;
        v22 += 32;
        --v23;
      }

      while (v23);
      v29 = 2 * a5;
      v30 = v130;
      v31 = 0uLL;
      v32 = 4;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v35 = 0;
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = vsubq_s16(*&v30[2 * v35], *(v29 + 2 * v35));
          v34 = vpadalq_s16(v34, v38);
          v31 = vmlal_s16(v31, *v38.i8, *v38.i8);
          v33 = vmlal_high_s16(v33, v38, v38);
          v35 = 8;
          v36 = 0;
        }

        while ((v37 & 1) != 0);
        v30 += 32;
        v29 += 2 * a6;
        --v32;
      }

      while (v32);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v92 = 0;
      v93 = vdupq_n_s16(8 - a3);
      v94 = vdupq_n_s16(a3);
      v95 = (v14 + 18);
      do
      {
        v96 = &v130[v92];
        v97 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 2), v93), *v95, v94), 3uLL);
        *v96 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 18), v93), v95[-1], v94), 3uLL);
        v96[1] = v97;
        v92 += 32;
        v95 = (v95 + 2 * a2);
      }

      while (v92 != 160);
      v93.i16[0] = *(a11 + 4);
      v94.i16[0] = *(a11 + 8);
      v98 = v130;
      v99 = v129;
      v100 = 4;
      do
      {
        v101 = 0;
        v102 = 1;
        do
        {
          v103 = v102;
          v104 = *v15++;
          v105 = vrhaddq_u16(*&v98[2 * v101], *&v98[2 * v101 + 32]);
          *&v99[2 * v101] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v104.i8, *v94.i8, 0), *v105.i8, *v93.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v104, *v94.i8, 0), v105, *v93.i8, 0), 4uLL);
          v101 = 8;
          v102 = 0;
        }

        while ((v103 & 1) != 0);
        v98 += 32;
        v99 += 32;
        --v100;
      }

      while (v100);
      v106 = 2 * a5;
      v107 = v129;
      v31 = 0uLL;
      v108 = 4;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = vsubq_s16(*&v107[2 * v109], *(v106 + 2 * v109));
          v34 = vpadalq_s16(v34, v112);
          v31 = vmlal_s16(v31, *v112.i8, *v112.i8);
          v33 = vmlal_high_s16(v33, v112, v112);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v107 += 32;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v113 = 0;
      v114 = vdupq_n_s16(8 - a3);
      v115 = vdupq_n_s16(a3);
      v116 = (v14 + 18);
      do
      {
        v117 = &v130[v113];
        v118 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 2), v114), *v116, v115), 3uLL);
        *v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 18), v114), v116[-1], v115), 3uLL);
        v117[1] = v118;
        v113 += 32;
        v116 = (v116 + 2 * a2);
      }

      while (v113 != 160);
      v119 = v129;
      v120 = 4;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 4, a4, v15, *v114.i8, *v115.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v121 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v122 = 0;
        v123 = 1;
        do
        {
          v124 = v123;
          v125 = vsubq_s16(*&v119[2 * v122], *(v121 + 2 * v122));
          v34 = vpadalq_s16(v34, v125);
          v31 = vmlal_s16(v31, *v125.i8, *v125.i8);
          v33 = vmlal_high_s16(v33, v125, v125);
          v122 = 8;
          v123 = 0;
        }

        while ((v124 & 1) != 0);
        v119 += 32;
        v121 += 2 * a6;
        --v120;
      }

      while (v120);
    }

    else
    {
      v39 = v130;
      v40 = 4;
      sub_277B79A68(v14, v130, a2, 1, 0x10u, 4, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v41 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = vsubq_s16(*&v39[2 * v42], *(v41 + 2 * v42));
          v34 = vpadalq_s16(v34, v45);
          v31 = vmlal_s16(v31, *v45.i8, *v45.i8);
          v33 = vmlal_high_s16(v33, v45, v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v41 += 2 * a6;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v46 = v130;
      v47 = 4;
      do
      {
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = v49;
          v51 = *v15++;
          v52 = vrhaddq_u16(*(v14 + 2 * v48), *(v14 + 2 * v48 + 2 * a2));
          *&v46[2 * v48] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v51.i8, a10, 0), *v52.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v51, a10, 0), v52, a9, 0), 4uLL);
          v48 = 8;
          v49 = 0;
        }

        while ((v50 & 1) != 0);
        v14 += 2 * a2;
        v46 += 32;
        --v47;
      }

      while (v47);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v130, a2, a2, 0x10u, 4, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v130;
      v17 = 4;
      do
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = v19;
          v21 = *v15++;
          *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
          v18 = 8;
          v19 = 0;
        }

        while ((v20 & 1) != 0);
        v14 += 2 * a2;
        v16 += 32;
        --v17;
      }

      while (v17);
    }

    v73 = 2 * a5;
    v74 = v130;
    v31 = 0uLL;
    v75 = 4;
    v33 = 0uLL;
    v34 = 0uLL;
    do
    {
      v76 = 0;
      v77 = 1;
      do
      {
        v78 = v77;
        v79 = vsubq_s16(*&v74[2 * v76], *(v73 + 2 * v76));
        v34 = vpadalq_s16(v34, v79);
        v31 = vmlal_s16(v31, *v79.i8, *v79.i8);
        v33 = vmlal_high_s16(v33, v79, v79);
        v76 = 8;
        v77 = 0;
      }

      while ((v78 & 1) != 0);
      v74 += 32;
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  v126 = vaddvq_s32(v34);
  v127 = vaddlvq_u32(vaddq_s32(v33, v31));
  *a7 = v127;
  return v127 - ((v126 * v126) >> 6);
}

uint64_t sub_277B7FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v139 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = (2 * v22);
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v61 = 0;
      v62 = (v21 + 18);
      do
      {
        v63 = &v138[v61];
        v64 = vrhaddq_u16(*(v62 - 18), v62[-1]);
        v65 = vrhaddq_u16(*(v62 - 2), *v62);
        *v63 = v64;
        v63[1] = v65;
        v61 += 32;
        v62 = (v62 + 2 * v10);
      }

      while (v61 != 2080);
      v64.i16[0] = *(a9 + 4);
      v65.i16[0] = *(a9 + 8);
      v66 = v138;
      v67 = v137;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = *v23++;
          v73 = vrhaddq_u16(*&v66[2 * v69], *&v66[2 * v69 + 32]);
          *&v67[2 * v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v72.i8, *v65.i8, 0), *v73.i8, *v64.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v72, *v65.i8, 0), v73, *v64.i8, 0), 4uLL);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v67 += 32;
        --v68;
      }

      while (v68);
      v74 = 2 * v13;
      v75 = v137;
      v39 = 0uLL;
      v76 = 64;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = vsubq_s16(*&v75[2 * v77], *(v74 + 2 * v77));
          v42 = vpadalq_s16(v42, v80);
          v39 = vmlal_s16(v39, *v80.i8, *v80.i8);
          v41 = vmlal_high_s16(v41, v80, v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v75 += 32;
        v74 += 2 * v14;
        --v76;
      }

      while (v76);
    }

    else if (v12)
    {
      v88 = 0;
      v89 = (v21 + 18);
      do
      {
        v90 = &v138[v88];
        v91 = vrhaddq_u16(*(v89 - 18), v89[-1]);
        v92 = vrhaddq_u16(*(v89 - 2), *v89);
        *v90 = v91;
        v90[1] = v92;
        v88 += 32;
        v89 = (v89 + 2 * v10);
      }

      while (v88 != 2080);
      v93 = v137;
      v94 = 64;
      sub_277B79A68(v138, v137, 16, 16, 0x10u, 64, v12, v23, *v91.i8, *v92.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v95 = 2 * v20;
      v39 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v96 = 0;
        v97 = 1;
        do
        {
          v98 = v97;
          v99 = vsubq_s16(*&v93[2 * v96], *(v95 + 2 * v96));
          v42 = vpadalq_s16(v42, v99);
          v39 = vmlal_s16(v39, *v99.i8, *v99.i8);
          v41 = vmlal_high_s16(v41, v99, v99);
          v96 = 8;
          v97 = 0;
        }

        while ((v98 & 1) != 0);
        v93 += 32;
        v95 += 2 * v19;
        --v94;
      }

      while (v94);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v30 = v138;
      v31 = 64;
      do
      {
        v32 = 0;
        v33 = 1;
        do
        {
          v34 = v33;
          v35 = *v23++;
          v36 = vrhaddq_u16(*(v21 + 2 * v32), *(v21 + 2 * v32 + 2));
          *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, v16, 0), *v36.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, v16, 0), v36, v15, 0), 4uLL);
          v32 = 8;
          v33 = 0;
        }

        while ((v34 & 1) != 0);
        v21 += 2 * v10;
        v30 += 32;
        --v31;
      }

      while (v31);
      v37 = 2 * v13;
      v38 = v138;
      v39 = 0uLL;
      v40 = 64;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = v44;
          v46 = vsubq_s16(*&v38[2 * v43], *(v37 + 2 * v43));
          v42 = vpadalq_s16(v42, v46);
          v39 = vmlal_s16(v39, *v46.i8, *v46.i8);
          v41 = vmlal_high_s16(v41, v46, v46);
          v43 = 8;
          v44 = 0;
        }

        while ((v45 & 1) != 0);
        v38 += 32;
        v37 += 2 * v14;
        --v40;
      }

      while (v40);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v100 = 0;
      v101 = vdupq_n_s16(8 - v11);
      v102 = vdupq_n_s16(v11);
      v103 = (v21 + 18);
      do
      {
        v104 = &v138[v100];
        v105 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v103 - 2), v101), *v103, v102), 3uLL);
        *v104 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v103 - 18), v101), v103[-1], v102), 3uLL);
        v104[1] = v105;
        v100 += 32;
        v103 = (v103 + 2 * v10);
      }

      while (v100 != 2080);
      v101.i16[0] = *(a9 + 4);
      v102.i16[0] = *(a9 + 8);
      v106 = v138;
      v107 = v137;
      v108 = 64;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = *v23++;
          v113 = vrhaddq_u16(*&v106[2 * v109], *&v106[2 * v109 + 32]);
          *&v107[2 * v109] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v112.i8, *v102.i8, 0), *v113.i8, *v101.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v112, *v102.i8, 0), v113, *v101.i8, 0), 4uLL);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v106 += 32;
        v107 += 32;
        --v108;
      }

      while (v108);
      v114 = 2 * v13;
      v115 = v137;
      v39 = 0uLL;
      v116 = 64;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v117 = 0;
        v118 = 1;
        do
        {
          v119 = v118;
          v120 = vsubq_s16(*&v115[2 * v117], *(v114 + 2 * v117));
          v42 = vpadalq_s16(v42, v120);
          v39 = vmlal_s16(v39, *v120.i8, *v120.i8);
          v41 = vmlal_high_s16(v41, v120, v120);
          v117 = 8;
          v118 = 0;
        }

        while ((v119 & 1) != 0);
        v115 += 32;
        v114 += 2 * v14;
        --v116;
      }

      while (v116);
    }

    else if (v12)
    {
      v121 = 0;
      v122 = vdupq_n_s16(8 - v11);
      v123 = vdupq_n_s16(v11);
      v124 = (v21 + 18);
      do
      {
        v125 = &v138[v121];
        v126 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v124 - 2), v122), *v124, v123), 3uLL);
        *v125 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v124 - 18), v122), v124[-1], v123), 3uLL);
        v125[1] = v126;
        v121 += 32;
        v124 = (v124 + 2 * v10);
      }

      while (v121 != 2080);
      v127 = v137;
      v128 = 64;
      sub_277B79A68(v138, v137, 16, 16, 0x10u, 64, v12, v23, *v122.i8, *v123.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v129 = 2 * v20;
      v39 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v130 = 0;
        v131 = 1;
        do
        {
          v132 = v131;
          v133 = vsubq_s16(*&v127[2 * v130], *(v129 + 2 * v130));
          v42 = vpadalq_s16(v42, v133);
          v39 = vmlal_s16(v39, *v133.i8, *v133.i8);
          v41 = vmlal_high_s16(v41, v133, v133);
          v130 = 8;
          v131 = 0;
        }

        while ((v132 & 1) != 0);
        v127 += 32;
        v129 += 2 * v19;
        --v128;
      }

      while (v128);
    }

    else
    {
      v47 = v138;
      v48 = 64;
      sub_277B79A68(v21, v138, v10, 1, 0x10u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v49 = 2 * v20;
      v39 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v50 = 0;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = vsubq_s16(*&v47[2 * v50], *(v49 + 2 * v50));
          v42 = vpadalq_s16(v42, v53);
          v39 = vmlal_s16(v39, *v53.i8, *v53.i8);
          v41 = vmlal_high_s16(v41, v53, v53);
          v50 = 8;
          v51 = 0;
        }

        while ((v52 & 1) != 0);
        v47 += 32;
        v49 += 2 * v19;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v54 = v138;
      v55 = 64;
      do
      {
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = v57;
          v59 = *v23++;
          v60 = vrhaddq_u16(*(v21 + 2 * v56), *(v21 + 2 * v56 + 2 * v10));
          *&v54[2 * v56] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v59.i8, v16, 0), *v60.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v59, v16, 0), v60, v15, 0), 4uLL);
          v56 = 8;
          v57 = 0;
        }

        while ((v58 & 1) != 0);
        v21 += 2 * v10;
        v54 += 32;
        --v55;
      }

      while (v55);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v138, v10, v10, 0x10u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v138;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = 1;
        do
        {
          v28 = v27;
          v29 = *v23++;
          *&v24[2 * v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v29.i8, v16, 0), *(v21 + 2 * v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v29, v16, 0), *(v21 + 2 * v26), v15, 0), 4uLL);
          v26 = 8;
          v27 = 0;
        }

        while ((v28 & 1) != 0);
        v21 += 2 * v10;
        v24 += 32;
        --v25;
      }

      while (v25);
    }

    v81 = 2 * v20;
    v82 = v138;
    v39 = 0uLL;
    v83 = 64;
    v41 = 0uLL;
    v42 = 0uLL;
    do
    {
      v84 = 0;
      v85 = 1;
      do
      {
        v86 = v85;
        v87 = vsubq_s16(*&v82[2 * v84], *(v81 + 2 * v84));
        v42 = vpadalq_s16(v42, v87);
        v39 = vmlal_s16(v39, *v87.i8, *v87.i8);
        v41 = vmlal_high_s16(v41, v87, v87);
        v84 = 8;
        v85 = 0;
      }

      while ((v86 & 1) != 0);
      v82 += 32;
      v81 += 2 * v19;
      --v83;
    }

    while (v83);
  }

  v134 = vaddvq_s32(v42);
  v135 = vaddlvq_u32(vaddq_s32(v41, v39));
  *v18 = v135;
  return v135 - ((v134 * v134) >> 10);
}

uint64_t sub_277B803C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v118 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v47 = v117;
      v48 = 9;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          v51 = *(v14 + v49 + 2);
          v52 = vrhaddq_u16(*(v14 + v49), v51);
          *&v47[v49] = v52;
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x18);
        v47 += 64;
        v14 += 2 * a2;
        --v48;
      }

      while (v48);
      v52.i16[0] = *(a11 + 4);
      v51.i16[0] = *(a11 + 8);
      v53 = v117;
      v54 = v116;
      v55 = 8;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = vrhaddq_u16(*&v53[v56], *&v53[v56 + 64]);
          *&v54[v56] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v56), *v51.i8, 0), *v58.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v56), *v51.i8, 0), v58, *v52.i8, 0), 4uLL);
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v15 += v56;
        v53 += 64;
        v54 += 64;
        --v55;
      }

      while (v55);
      v59 = 2 * a5;
      v60 = v116;
      v27 = 0uLL;
      v61 = 8;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          v64 = vsubq_s16(*&v60[v62], *(v59 + v62));
          v30 = vpadalq_s16(v30, v64);
          v27 = vmlal_s16(v27, *v64.i8, *v64.i8);
          v29 = vmlal_high_s16(v29, v64, v64);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v60 += 64;
        v59 += 2 * a6;
        --v61;
      }

      while (v61);
    }

    else if (a4)
    {
      v71 = v117;
      v72 = 9;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          v75 = *(v14 + v73 + 2);
          v76 = vrhaddq_u16(*(v14 + v73), v75);
          *&v71[v73] = v76;
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v71 += 64;
        v14 += 2 * a2;
        --v72;
      }

      while (v72);
      v77 = v116;
      v78 = 8;
      sub_277B79A68(v117, v116, 32, 32, 0x20u, 8, a4, v15, *v76.i8, *v75.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v79 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v80 = 0;
        v81 = -8;
        do
        {
          v82 = vsubq_s16(*&v77[v80], *(v79 + v80));
          v30 = vpadalq_s16(v30, v82);
          v27 = vmlal_s16(v27, *v82.i8, *v82.i8);
          v29 = vmlal_high_s16(v29, v82, v82);
          v81 += 8;
          v80 += 16;
        }

        while (v81 < 0x18);
        v77 += 64;
        v79 += 2 * a6;
        --v78;
      }

      while (v78);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v20 = v117;
      v21 = 8;
      do
      {
        v22 = 0;
        v23 = -8;
        do
        {
          v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
          *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
          v23 += 8;
          v22 += 16;
        }

        while (v23 < 0x18);
        v15 += v22;
        v20 += 64;
        v14 += 2 * a2;
        --v21;
      }

      while (v21);
      v25 = 2 * a5;
      v26 = v117;
      v27 = 0uLL;
      v28 = 8;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = 0;
        v32 = -8;
        do
        {
          v33 = vsubq_s16(*&v26[v31], *(v25 + v31));
          v30 = vpadalq_s16(v30, v33);
          v27 = vmlal_s16(v27, *v33.i8, *v33.i8);
          v29 = vmlal_high_s16(v29, v33, v33);
          v32 += 8;
          v31 += 16;
        }

        while (v32 < 0x18);
        v26 += 64;
        v25 += 2 * a6;
        --v28;
      }

      while (v28);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v83 = vdupq_n_s16(8 - a3);
      v84 = vdupq_n_s16(a3);
      v85 = v117;
      v86 = 9;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v87), v83), *(v14 + v87 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v14 += 2 * a2;
        --v86;
      }

      while (v86);
      v83.i16[0] = *(a11 + 4);
      v84.i16[0] = *(a11 + 8);
      v89 = v117;
      v90 = v116;
      v91 = 8;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vrhaddq_u16(*&v89[v92], *&v89[v92 + 64]);
          *&v90[v92] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v92), *v84.i8, 0), *v94.i8, *v83.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v92), *v84.i8, 0), v94, *v83.i8, 0), 4uLL);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v15 += v92;
        v89 += 64;
        v90 += 64;
        --v91;
      }

      while (v91);
      v95 = 2 * a5;
      v96 = v116;
      v27 = 0uLL;
      v97 = 8;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v98 = 0;
        v99 = -8;
        do
        {
          v100 = vsubq_s16(*&v96[v98], *(v95 + v98));
          v30 = vpadalq_s16(v30, v100);
          v27 = vmlal_s16(v27, *v100.i8, *v100.i8);
          v29 = vmlal_high_s16(v29, v100, v100);
          v99 += 8;
          v98 += 16;
        }

        while (v99 < 0x18);
        v96 += 64;
        v95 += 2 * a6;
        --v97;
      }

      while (v97);
    }

    else if (a4)
    {
      v101 = vdupq_n_s16(8 - a3);
      v102 = vdupq_n_s16(a3);
      v103 = v117;
      v104 = 9;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v105), v101), *(v14 + v105 + 2), v102), 3uLL);
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v103 += 64;
        v14 += 2 * a2;
        --v104;
      }

      while (v104);
      v107 = v116;
      v108 = 8;
      sub_277B79A68(v117, v116, 32, 32, 0x20u, 8, a4, v15, *v101.i8, *v102.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v109 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v107[v110], *(v109 + v110));
          v30 = vpadalq_s16(v30, v112);
          v27 = vmlal_s16(v27, *v112.i8, *v112.i8);
          v29 = vmlal_high_s16(v29, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v107 += 64;
        v109 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else
    {
      v34 = v117;
      v35 = 8;
      sub_277B79A68(v14, v117, a2, 1, 0x20u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v36 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v34[v37], *(v36 + v37));
          v30 = vpadalq_s16(v30, v39);
          v27 = vmlal_s16(v27, *v39.i8, *v39.i8);
          v29 = vmlal_high_s16(v29, v39, v39);
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

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v40 = 2 * a2;
      v41 = v14 + v40;
      v42 = v117;
      v43 = 8;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          v46 = vrhaddq_u16(*(v14 + v44), *(v41 + v44));
          *&v42[v44] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v44), a10, 0), *v46.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v44), a10, 0), v46, a9, 0), 4uLL);
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v15 += v44;
        v42 += 64;
        v41 += v40;
        v14 += v40;
        --v43;
      }

      while (v43);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v117, a2, a2, 0x20u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v117;
      v17 = 8;
      do
      {
        v18 = 0;
        v19 = -8;
        do
        {
          *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
          v19 += 8;
          v18 += 16;
        }

        while (v19 < 0x18);
        v15 += v18;
        v16 += 64;
        v14 += 2 * a2;
        --v17;
      }

      while (v17);
    }

    v65 = 2 * a5;
    v66 = v117;
    v27 = 0uLL;
    v67 = 8;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v68 = 0;
      v69 = -8;
      do
      {
        v70 = vsubq_s16(*&v66[v68], *(v65 + v68));
        v30 = vpadalq_s16(v30, v70);
        v27 = vmlal_s16(v27, *v70.i8, *v70.i8);
        v29 = vmlal_high_s16(v29, v70, v70);
        v69 += 8;
        v68 += 16;
      }

      while (v69 < 0x18);
      v66 += 64;
      v65 += 2 * a6;
      --v67;
    }

    while (v67);
  }

  v113 = vaddvq_s32(v30);
  v114 = vaddlvq_u32(vaddq_s32(v29, v27));
  *a7 = v114;
  return v114 - ((v113 * v113) >> 8);
}

uint64_t sub_277B80B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v126 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 17;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 + 2);
          v60 = vrhaddq_u16(*(v21 + v57), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x38);
        v55 += 128;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 16;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64], *&v61[v64 + 128]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 128;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 16;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          v72 = vsubq_s16(*&v68[v70], *(v67 + v70));
          v38 = vpadalq_s16(v38, v72);
          v35 = vmlal_s16(v35, *v72.i8, *v72.i8);
          v37 = vmlal_high_s16(v37, v72, v72);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x38);
        v68 += 128;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 17;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 + 2);
          v84 = vrhaddq_u16(*(v21 + v81), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x38);
        v79 += 128;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 16;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 16, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v87 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          v90 = vsubq_s16(*&v85[v88], *(v87 + v88));
          v38 = vpadalq_s16(v38, v90);
          v35 = vmlal_s16(v35, *v90.i8, *v90.i8);
          v37 = vmlal_high_s16(v37, v90, v90);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x38);
        v85 += 128;
        v87 += 2 * v19;
        --v86;
      }

      while (v86);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v28 = v125;
      v29 = 16;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x38);
        v23 += v30;
        v28 += 128;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 16;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 16;
        }

        while (v40 < 0x38);
        v34 += 128;
        v33 += 2 * v14;
        --v36;
      }

      while (v36);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v125;
      v94 = 17;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95), v91), *(v21 + v95 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 16;
        }

        while (v96 < 0x38);
        v93 += 128;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 16;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100], *&v97[v100 + 128]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 128;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 16;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v106 = 0;
        v107 = -8;
        do
        {
          v108 = vsubq_s16(*&v104[v106], *(v103 + v106));
          v38 = vpadalq_s16(v38, v108);
          v35 = vmlal_s16(v35, *v108.i8, *v108.i8);
          v37 = vmlal_high_s16(v37, v108, v108);
          v107 += 8;
          v106 += 16;
        }

        while (v107 < 0x38);
        v104 += 128;
        v103 += 2 * v14;
        --v105;
      }

      while (v105);
    }

    else if (v12)
    {
      v109 = vdupq_n_s16(8 - v11);
      v110 = vdupq_n_s16(v11);
      v111 = v125;
      v112 = 17;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113), v109), *(v21 + v113 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 16;
        }

        while (v114 < 0x38);
        v111 += 128;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 16;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 16, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v117 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v115[v118], *(v117 + v118));
          v38 = vpadalq_s16(v38, v120);
          v35 = vmlal_s16(v35, *v120.i8, *v120.i8);
          v37 = vmlal_high_s16(v37, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x38);
        v115 += 128;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 16;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 16, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v44 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v42 += 128;
        v44 += 2 * v19;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v48 = 2 * v10;
      v49 = v21 + v48;
      v50 = v125;
      v51 = 16;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 128;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 16, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 16;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
          v27 += 8;
          v26 += 16;
        }

        while (v27 < 0x38);
        v23 += v26;
        v24 += 128;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 16;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 16;
      }

      while (v77 < 0x38);
      v74 += 128;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 10);
}

uint64_t sub_277B812E0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[5] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 40);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 32);
  return sub_2779960F8(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B813F8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[9] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 72);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 64);
  return sub_2779961A0(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B81510(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 80);
  sub_277B79A68(v18, v17, 8, 8, 8u, 4, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996248(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B8160C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 144);
  sub_277B79A68(v18, v17, 8, 8, 8u, 8, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_2779962D4(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B81710(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 272);
  sub_277B79A68(v18, v17, 8, 8, 8u, 16, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996360(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B81814(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 8;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 288);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 288);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 8;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_2779963EC(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 288);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 8, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 288);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 8;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 8;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_2779963EC(v69, 16, a5, a6, a7);
}

uint64_t sub_277B81CEC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 544);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 544);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 16;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996494(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 544);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 16, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 544);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 16;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 16;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996494(v69, 16, a5, a6, a7);
}

uint64_t sub_277B821C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 1056);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 1056);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 32;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 32, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_27799653C(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 1056);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 32, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 1056);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 32;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 32;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 32, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 32;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_27799653C(v69, 16, a5, a6, a7);
}

uint64_t sub_277B8269C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 16;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 17;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 17;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_2779965E4(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 16, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 17;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 16;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_2779965E4(v64, 32, a5, a6, a7);
}

uint64_t sub_277B82B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 64;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v54 += 64;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v41 += 64;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 64]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 64;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996688(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x18);
      v62 += 64;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 64]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 64;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 64;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 64;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996688(v72, 32, v20, v18, v16);
}

uint64_t sub_277B83070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[520] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 8;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x18);
        v54 += 8;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x18);
      v41 += 8;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 8]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 8;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_27799672C(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x18);
        v73 += 8;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x18);
      v62 += 8;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 8]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 8;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 8;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 8;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_27799672C(v72, 32, v20, v18, v16);
}

uint64_t sub_277B835A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[528] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779967D0(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779967D0(v72, 64, v20, v18, v16);
}

uint64_t sub_277B83AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[1040] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996874(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996874(v72, 64, v20, v18, v16);
}

uint64_t sub_277B84000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2064] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996918(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996918(v72, 64, v20, v18, v16);
}

uint64_t sub_277B84530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2080] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779969BC(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779969BC(v72, 128, v20, v18, v16);
}

uint64_t sub_277B84A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[4128] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996A60(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996A60(v72, 128, v20, v18, v16);
}

uint64_t sub_277B84F94(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[17] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 136);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 128);
  return sub_277997938(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B850B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 528);
  sub_277B79A68(v18, v17, 8, 8, 8u, 32, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_2779979E0(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B851B8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 4;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 160);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 160);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 4;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 4, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277997A6C(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 160);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 4, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 160);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 4;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 4;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 4, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 4;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277997A6C(v69, 16, a5, a6, a7);
}

uint64_t sub_277B85690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v84 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = (2 * v22);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v30 = v83;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = *v23++;
            v36 = vrhaddq_u16(*(v21 + 2 * v32), *(v21 + 2 * v32 + 2));
            *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, v14, 0), *v36.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, v14, 0), v36, v13, 0), 4uLL);
            v32 = 8;
            v33 = 0;
          }

          while ((v34 & 1) != 0);
          v21 += 2 * v10;
          v30 += 32;
          --v31;
        }

        while (v31);
        goto LABEL_33;
      }

      v59 = 0;
      v60 = (v21 + 18);
      do
      {
        v61 = &v83[v59];
        *v61 = vrhaddq_u16(*(v60 - 18), v60[-1]);
        v62 = *v60;
        v63 = vrhaddq_u16(*(v60 - 2), *v60);
        v61[1] = v63;
        v59 += 32;
        v60 = (v60 + 2 * v10);
      }

      while (v59 != 2080);
      goto LABEL_47;
    }

    v45 = 0;
    v46 = (v21 + 18);
    do
    {
      v47 = &v83[v45];
      *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
      v48 = *v46;
      v49 = vrhaddq_u16(*(v46 - 2), *v46);
      v47[1] = v49;
      v45 += 32;
      v46 = (v46 + 2 * v10);
    }

    while (v45 != 2080);
    v49.i16[0] = *(a9 + 4);
    v48.i16[0] = *(a9 + 8);
    v50 = v83;
    v51 = v82;
    v52 = 64;
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v56 = *v23++;
        v57 = vrhaddq_u16(*&v50[2 * v53], *&v50[2 * v53 + 32]);
        *&v51[2 * v53] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v56.i8, *v48.i8, 0), *v57.i8, *v49.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v56, *v48.i8, 0), v57, *v49.i8, 0), 4uLL);
        v53 = 8;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v50 += 32;
      v51 += 32;
      --v52;
    }

    while (v52);
LABEL_43:
    v58 = v82;
    goto LABEL_44;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v37 = v83;
        sub_277B79A68(v21, v83, v10, 1, 0x10u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_48:
        v77 = v37 >> 1;
        return sub_277997B14(v77, 16, v20, v18, v16);
      }

      v78 = 0;
      v63 = vdupq_n_s16(8 - v11);
      v62 = vdupq_n_s16(v11);
      v79 = (v21 + 18);
      do
      {
        v80 = &v83[v78];
        *v80 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 18), v63), v79[-1], v62), 3uLL);
        v80[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 2), v63), *v79, v62), 3uLL);
        v78 += 32;
        v79 = (v79 + 2 * v10);
      }

      while (v78 != 2080);
LABEL_47:
      v37 = v82;
      sub_277B79A68(v83, v82, 16, 16, 0x10u, 64, v12, v23, *v63.i8, *v62.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_48;
    }

    v64 = 0;
    v65 = vdupq_n_s16(8 - v11);
    v66 = vdupq_n_s16(v11);
    v67 = (v21 + 18);
    do
    {
      v68 = &v83[v64];
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 18), v65), v67[-1], v66), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 2), v65), *v67, v66), 3uLL);
      v64 += 32;
      v67 = (v67 + 2 * v10);
    }

    while (v64 != 2080);
    v65.i16[0] = *(a9 + 4);
    v66.i16[0] = *(a9 + 8);
    v69 = v83;
    v70 = v82;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = 1;
      do
      {
        v74 = v73;
        v75 = *v23++;
        v76 = vrhaddq_u16(*&v69[2 * v72], *&v69[2 * v72 + 32]);
        *&v70[2 * v72] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v75.i8, *v66.i8, 0), *v76.i8, *v65.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v75, *v66.i8, 0), v76, *v65.i8, 0), 4uLL);
        v72 = 8;
        v73 = 0;
      }

      while ((v74 & 1) != 0);
      v69 += 32;
      v70 += 32;
      --v71;
    }

    while (v71);
    goto LABEL_43;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v38 = v83;
    v39 = 64;
    do
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = v41;
        v43 = *v23++;
        v44 = vrhaddq_u16(*(v21 + 2 * v40), *(v21 + 2 * v40 + 2 * v10));
        *&v38[2 * v40] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v43.i8, v14, 0), *v44.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v43, v14, 0), v44, v13, 0), 4uLL);
        v40 = 8;
        v41 = 0;
      }

      while ((v42 & 1) != 0);
      v21 += 2 * v10;
      v38 += 32;
      --v39;
    }

    while (v39);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v83, v10, v10, 0x10u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v83;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = v27;
        v29 = *v23++;
        *&v24[2 * v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v29.i8, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v29, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL);
        v26 = 8;
        v27 = 0;
      }

      while ((v28 & 1) != 0);
      v21 += 2 * v10;
      v24 += 32;
      --v25;
    }

    while (v25);
  }

LABEL_33:
  v58 = v83;
LABEL_44:
  v77 = v58 >> 1;
  return sub_277997B14(v77, 16, v20, v18, v16);
}

uint64_t sub_277B85B84(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 8;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 9;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 9;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 8;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_277997BBC(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 8, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 9;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 8;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_277997BBC(v64, 32, a5, a6, a7);
}

uint64_t sub_277B86060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 16;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 128;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x38);
        v54 += 128;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 17;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v41 += 128;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 128]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 128;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 16, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997C60(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 17;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x38);
        v73 += 128;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 16, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 17;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x38);
      v62 += 128;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 16;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 128]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 128;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 16;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 128;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 16, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 16;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 128;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997C60(v72, 64, v20, v18, v16);
}

uint64_t sub_277B86558(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[5] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 40);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 32);
  return sub_277996B04(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B86670(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[9] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 72);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 64);
  return sub_277996BAC(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B86788(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 80);
  sub_277B79A68(v18, v17, 8, 8, 8u, 4, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996C54(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B86884(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 144);
  sub_277B79A68(v18, v17, 8, 8, 8u, 8, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996CE0(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B86988(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 272);
  sub_277B79A68(v18, v17, 8, 8, 8u, 16, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996D6C(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B86A8C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 8;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 288);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 288);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 8;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996DF8(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 288);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 8, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 288);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 8;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 8;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996DF8(v69, 16, a5, a6, a7);
}

uint64_t sub_277B86F64(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 544);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 544);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 16;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996EA0(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 544);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 16, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 544);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 16;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 16;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996EA0(v69, 16, a5, a6, a7);
}

uint64_t sub_277B8743C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 1056);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 1056);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 32;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 32, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996F48(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 1056);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 32, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 1056);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 32;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 32;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 32, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 32;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996F48(v69, 16, a5, a6, a7);
}

uint64_t sub_277B87914(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 16;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 17;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 17;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_277996FF0(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 16, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 17;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 16;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_277996FF0(v64, 32, a5, a6, a7);
}

uint64_t sub_277B87DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 64;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v54 += 64;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v41 += 64;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 64]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 64;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997094(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x18);
      v62 += 64;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 64]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 64;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 64;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 64;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997094(v72, 32, v20, v18, v16);
}

uint64_t sub_277B882E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[520] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 8;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x18);
        v54 += 8;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x18);
      v41 += 8;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 8]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 8;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997138(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x18);
        v73 += 8;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x18);
      v62 += 8;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 8]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 8;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 8;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 8;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997138(v72, 32, v20, v18, v16);
}

uint64_t sub_277B88818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[528] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997208(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997208(v72, 64, v20, v18, v16);
}

uint64_t sub_277B88D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[1040] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779972D8(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779972D8(v72, 64, v20, v18, v16);
}