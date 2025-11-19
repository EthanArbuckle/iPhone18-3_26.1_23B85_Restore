int *sub_2779F6D80(int *result, _DWORD *a2, uint64_t a3, char *__dst, signed int a5, char a6, char a7, uint64_t a8, int a9, uint64_t a10, unsigned int a11, uint64_t a12, unsigned int a13, uint64_t a14, int a15, uint64_t a16)
{
  v16 = a8;
  v86 = result;
  v17 = result[2];
  v91 = result[3];
  v18 = (v91 - v17);
  v19 = result[1];
  v20 = *result;
  v89 = (v19 - v20);
  v21 = a11;
  v93 = (a10 + v17 * a11 + v20);
  v92 = (a12 + v17 * a13 + v20);
  if (*a2)
  {
    if (v18 >= 1)
    {
      v22 = __dst;
      v23 = 0;
      v84 = *(&off_28866DEA0 + ((*a2 == 2) | (2 * a8)));
      v82 = 0x40u >> a7;
      v83 = 0x40u >> a6;
      v81 = 8u >> a7;
      v24 = a10 + v20 - 4;
      v25 = (v89 + 8) << a8;
      v102 = 2 * a11;
      v98 = __dst + 2352;
      v77 = v24 - 3 * a11;
      v100 = (v19 - v20 + 8) << a8;
      v78 = v20 - 3 * a11 + a10 - 4;
      v88 = v24;
      v76 = v24 + v102;
      v103 = *result;
      v104 = a3;
      v85 = v18;
      v80 = v25;
      do
      {
        v96 = v23;
        v26 = v86[2] + v23;
        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v81;
        }

        v28 = v26 + v82 - v27;
        v29 = (v26 + v81) / v82;
        if (v29)
        {
          v30 = 0;
        }

        else
        {
          v30 = v81;
        }

        v31 = v82 - v30;
        if (v31 >= v91 - v26)
        {
          v31 = v91 - v26;
        }

        v99 = v31;
        v97 = v26;
        v95 = v28;
        if (a15)
        {
          if (v26)
          {
            v32 = v88 + v21 * v26;
            if (v16)
            {
              v33 = (2 * (v32 - 3 * a11));
            }

            else
            {
              v33 = (v32 - 3 * a11);
            }

            v34 = v32 - 2 * a11;
            if (v16)
            {
              v35 = (2 * v34);
            }

            else
            {
              v35 = v34;
            }

            memcpy(v22, v33, v25);
            memcpy(v33, v35, v25);
          }

          v36 = v21;
          if (v28 < a5)
          {
            v37 = v88 + v21 * (v99 + v97);
            if (v16)
            {
              v38 = (2 * (v37 + v102));
            }

            else
            {
              v38 = (v37 + v102);
            }

            v39 = v37 + v21;
            if (v16)
            {
              v40 = 2 * v39;
            }

            else
            {
              v40 = v39;
            }

            memcpy(__dst + 3920, v38, v25);
            v41 = v40;
            v36 = v21;
            memcpy(v38, v41, v25);
          }
        }

        else
        {
          v79 = 2 * v29;
          v42 = *(a3 + 16);
          v43 = v22;
          v44 = v20;
          v45 = v25;
          v101 = v42;
          if (v26)
          {
            v46 = 0;
            v47 = (v78 + a11 * v26);
            v48 = 2 * (v77 + a11 * v26);
            v49 = -3;
            do
            {
              if (v49 == -1)
              {
                v50 = -1;
              }

              else
              {
                v50 = -2;
              }

              v51 = (*a3 + ((v44 + (v79 + 2 + v50) * v42) << v16));
              if (v16)
              {
                v52 = v48;
              }

              else
              {
                v52 = v47;
              }

              memcpy(&v43[v46], v52, v45);
              memcpy(v52, v51, v45);
              v44 = v103;
              a3 = v104;
              v42 = v101;
              v46 += 784;
              v47 += a11;
              v48 += v102;
              ++v49;
            }

            while (v46 != 2352);
          }

          v36 = a11;
          if (v95 < a5)
          {
            v53 = 0;
            v54 = v88 + ((v99 + v97) * a11);
            v55 = 2 * v54;
            do
            {
              if (v53)
              {
                v56 = v79 + 1;
              }

              else
              {
                v56 = v79;
              }

              v57 = (*(a3 + 8) + ((v44 + v56 * v42) << v16));
              v58 = v16 == 0;
              v59 = v16;
              v60 = v36;
              if (v58)
              {
                v61 = v54;
              }

              else
              {
                v61 = v55;
              }

              memcpy(&v98[v53], v61, v45);
              v62 = v61;
              v36 = v60;
              v16 = v59;
              memcpy(v62, v57, v45);
              v44 = v103;
              a3 = v104;
              v42 = v101;
              v53 += 784;
              v54 += v36;
              v55 += v102;
            }

            while (v53 != 2352);
          }
        }

        result = v84(a2, v89, v99, v83, &v93[v36 * v96], a11, &v92[a13 * v96], a13, a14, a9, a16);
        v21 = v36;
        if (a15)
        {
          v22 = __dst;
          v63 = v85;
          if (v97)
          {
            if (v16)
            {
              v64 = (2 * (v77 + v36 * v97));
            }

            else
            {
              v64 = (v77 + v36 * v97);
            }

            result = memcpy(v64, __dst, v100);
          }

          if (v95 < a5 && (v99 + v97) <= v91)
          {
            if (v16)
            {
              v65 = (2 * (v76 + v36 * (v99 + v97)));
            }

            else
            {
              v65 = (v76 + v36 * (v99 + v97));
            }

            result = memcpy(v65, __dst + 3920, v100);
          }
        }

        else
        {
          v22 = __dst;
          v63 = v85;
          if (v97)
          {
            v66 = 0;
            v67 = (v78 + v36 * v97);
            v68 = 2 * (v77 + v36 * v97);
            do
            {
              if (v16)
              {
                v69 = v68;
              }

              else
              {
                v69 = v67;
              }

              result = memcpy(v69, &__dst[v66], v100);
              v66 += 784;
              v67 += v36;
              v68 += v102;
            }

            while (v66 != 2352);
          }

          if (v95 < a5)
          {
            v70 = 0;
            v71 = v88 + ((v99 + v97) * a11);
            v72 = 2 * v71;
            do
            {
              if (784 * ((v91 + 3 - (v99 + v97)) & ~((v91 + 3 - (v99 + v97)) >> 63)) == v70)
              {
                break;
              }

              v73 = (v16 ? v72 : v71);
              result = memcpy(v73, &v98[v70], v100);
              v71 += v36;
              v72 += v102;
              v70 += 784;
            }

            while (v70 != 2352);
          }
        }

        v23 = v99 + v96;
        LODWORD(v20) = v103;
        a3 = v104;
        v25 = v80;
      }

      while ((v99 + v96) < v63);
    }
  }

  else if (a8)
  {
    if (v18 >= 1)
    {
      v74 = (2 * v93);
      v75 = (2 * v92);
      do
      {
        result = memcpy(v75, v74, 2 * v89);
        v74 += 2 * a11;
        v75 += 2 * a13;
        --v18;
      }

      while (v18);
    }
  }

  else if (v18 >= 1)
  {
    do
    {
      result = memcpy(v92, v93, v89);
      v92 += a13;
      v93 += a11;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_2779F73FC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, int a10, uint64_t a11)
{
  if (a2 >= 1)
  {
    v14 = result;
    v15 = 0;
    v16 = a4;
    v17 = a2;
    do
    {
      v18 = a2 - a4;
      if (a2 >= a4)
      {
        a2 = a4;
      }

      else
      {
        a2 = a2;
      }

      result = sub_277B8D688(a5 + v15, a2, a3, a6, *(v14 + 48), v14 + 52, a7 + v15, a8, a9, a10, 1);
      if (result)
      {
        result = sub_2779F5C10(a11, 2, "Error allocating buffer in av1_apply_selfguided_restoration");
      }

      v15 += v16;
      LODWORD(a2) = v18;
    }

    while (v15 < v17);
  }

  return result;
}

int16x4_t *sub_2779F74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  result = MEMORY[0x28223BE20]();
  v166[4289] = *MEMORY[0x277D85DE8];
  if (v11 >= 1)
  {
    v18 = 0;
    if (a10 <= 10)
    {
      v19 = 0xB00000003;
    }

    else
    {
      v19 = (a10 - 7) | ((21 - a10) << 32);
    }

    v20 = HIDWORD(v19);
    v21 = v11 + 15;
    v22 = vdupq_n_s16(~(-1 << (a10 - v19 + 8)));
    v23 = vdupq_n_s32(1 << (a10 + 6));
    v24 = vdupq_n_s16(~(-1 << a10));
    v25 = v11;
    v26 = vdupq_n_s32(-1 << (a10 + v20 - 1));
    v27 = 8 * v17;
    v28 = 2 * v15;
    v29 = 2 * v17;
    do
    {
      v30 = (v21 - v18) & 0xFFFFFFF0;
      if (v30 >= v13)
      {
        v30 = v13;
      }

      if (result[4].i16[0] || result[5].i16[2])
      {
        v31 = 0;
        v32 = -3;
      }

      else
      {
        v32 = -2;
        v31 = 1;
      }

      if (result[2].i16[0] || result[3].i16[2])
      {
        v33 = 0;
        v34 = 7;
      }

      else
      {
        v34 = 5;
        v33 = 1;
      }

      v35 = vadd_s16(result[4], 0x80000000000000);
      v36 = vadd_s16(result[2], 0x80000000000000);
      v37 = v12 - 1 + v34;
      v38 = (v34 >> 1) * v15;
      v39 = 2 * (v16 + v18);
      v40 = 2 * (v14 + v18) + 2 * v32 - 2 * v38;
      v41 = vmovl_s16(v36);
      if (a10 == 12)
      {
        if (v31)
        {
          v42 = v166;
          do
          {
            v43 = 0;
            v44 = v30;
            do
            {
              v45 = vaddq_s16(*(v40 + v43 + 8), *(v40 + v43));
              v46 = vaddq_s16(*(v40 + v43 + 6), *(v40 + v43 + 2));
              *&v42[v43 / 8] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v23, *v45.i8, v35, 1), *v46.i8, v35, 2), *(v40 + v43 + 4), v35, 3), 5uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v23, v45, v35, 1), v46, v35, 2), *(v40 + v43 + 4), v35, 3), 5uLL), v22);
              v43 += 16;
              v44 -= 8;
            }

            while (v44);
            v42 += 32;
            v40 += v28;
            --v37;
          }

          while (v37);
        }

        else
        {
          v52 = v166;
          do
          {
            v53 = 0;
            v54 = v30;
            do
            {
              v55 = vaddq_s16(*(v40 + v53 + 12), *(v40 + v53));
              v56 = vaddq_s16(*(v40 + v53 + 10), *(v40 + v53 + 2));
              v57 = vaddq_s16(*(v40 + v53 + 8), *(v40 + v53 + 4));
              *&v52[v53 / 8] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v23, *v55.i8, v35, 0), *v56.i8, v35, 1), *v57.i8, v35, 2), *(v40 + v53 + 6), v35, 3), 5uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v23, v55, v35, 0), v56, v35, 1), v57, v35, 2), *(v40 + v53 + 6), v35, 3), 5uLL), v22);
              v53 += 16;
              v54 -= 8;
            }

            while (v54);
            v52 += 32;
            v40 += v28;
            --v37;
          }

          while (v37);
        }

        v58 = vdupq_lane_s32(*v41.i8, 1);
        v59 = vdupq_laneq_s32(v41, 2);
        if (v33)
        {
          v60 = v166;
          do
          {
            v61 = v12;
            v62 = v39;
            v63 = v60;
            v64 = v39;
            if (v12 >= 4)
            {
              do
              {
                v65 = v61;
                v66 = v64;
                v67 = *v63;
                v68 = v63[16];
                v69 = v63[32];
                v70 = v63[48];
                v71 = v63[64];
                v72 = v63[80];
                v73 = v63[96];
                v74 = v63[112];
                v63 += 64;
                *v64 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v69.i8, v36, 3), vaddl_s16(*v70.i8, *v68.i8), v59), vaddl_s16(*v71.i8, *v67.i8), v58), 9uLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v69, v36, 3), vaddl_high_s16(v70, v68), v59), vaddl_high_s16(v71, v67), v58), 9uLL), v24);
                *(v64 + v29) = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v70.i8, v36, 3), vaddl_s16(*v71.i8, *v69.i8), v59), vaddl_s16(*v72.i8, *v68.i8), v58), 9uLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v70, v36, 3), vaddl_high_s16(v71, v69), v59), vaddl_high_s16(v72, v68), v58), 9uLL), v24);
                v75 = (v64 + v29 + v29);
                *v75 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v71.i8, v36, 3), vaddl_s16(*v72.i8, *v70.i8), v59), vaddl_s16(*v73.i8, *v69.i8), v58), 9uLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v71, v36, 3), vaddl_high_s16(v72, v70), v59), vaddl_high_s16(v73, v69), v58), 9uLL), v24);
                v76 = (v75 + v29);
                *v76 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v72.i8, v36, 3), vaddl_s16(*v73.i8, *v71.i8), v59), vaddl_s16(*v74.i8, *v70.i8), v58), 9uLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v72, v36, 3), vaddl_high_s16(v73, v71), v59), vaddl_high_s16(v74, v70), v58), 9uLL), v24);
                v61 = v65 - 4;
                v64 = (v76 + v29);
              }

              while (v65 > 7);
              v62 = (v66 + v27);
            }

            for (; v61; --v61)
            {
              v77 = *v63;
              v78 = v63[16];
              v79 = v63[32];
              v80 = v63[48];
              v81 = v63[64];
              v63 += 16;
              *v62 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v79.i8, v36, 3), vaddl_s16(*v80.i8, *v78.i8), v59), vaddl_s16(*v81.i8, *v77.i8), v58), 9uLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v79, v36, 3), vaddl_high_s16(v80, v78), v59), vaddl_high_s16(v81, v77), v58), 9uLL), v24);
              v62 = (v62 + v29);
            }

            ++v60;
            v39 += 16;
            v30 -= 8;
          }

          while (v30);
        }

        else
        {
          v112 = vdupq_lane_s32(*v41.i8, 0);
          v113 = v166;
          do
          {
            v114 = v12;
            v115 = v39;
            v116 = v113;
            v117 = v39;
            if (v12 >= 4)
            {
              do
              {
                v118 = v114;
                v119 = v117;
                v120 = *v116;
                v121 = v116[16];
                v122 = v116[32];
                v123 = v116[48];
                v124 = v116[64];
                v125 = v116[80];
                v126 = v116[96];
                v127 = v116[112];
                v128 = v116[128];
                v129 = v116[144];
                v116 += 64;
                *v117 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v123.i8, v36, 3), vaddl_s16(*v124.i8, *v122.i8), v59), vaddl_s16(*v125.i8, *v121.i8), v58), vaddl_s16(*v126.i8, *v120.i8), v112), 9uLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v123, v36, 3), vaddl_high_s16(v124, v122), v59), vaddl_high_s16(v125, v121), v58), vaddl_high_s16(v126, v120), v112), 9uLL), v24);
                *(v117 + v29) = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v124.i8, v36, 3), vaddl_s16(*v125.i8, *v123.i8), v59), vaddl_s16(*v126.i8, *v122.i8), v58), vaddl_s16(*v127.i8, *v121.i8), v112), 9uLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v124, v36, 3), vaddl_high_s16(v125, v123), v59), vaddl_high_s16(v126, v122), v58), vaddl_high_s16(v127, v121), v112), 9uLL), v24);
                v130 = (v117 + v29 + v29);
                *v130 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v125.i8, v36, 3), vaddl_s16(*v126.i8, *v124.i8), v59), vaddl_s16(*v127.i8, *v123.i8), v58), vaddl_s16(*v128.i8, *v122.i8), v112), 9uLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v125, v36, 3), vaddl_high_s16(v126, v124), v59), vaddl_high_s16(v127, v123), v58), vaddl_high_s16(v128, v122), v112), 9uLL), v24);
                v131 = (v130 + v29);
                *v131 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v126.i8, v36, 3), vaddl_s16(*v127.i8, *v125.i8), v59), vaddl_s16(*v128.i8, *v124.i8), v58), vaddl_s16(*v129.i8, *v123.i8), v112), 9uLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v126, v36, 3), vaddl_high_s16(v127, v125), v59), vaddl_high_s16(v128, v124), v58), vaddl_high_s16(v129, v123), v112), 9uLL), v24);
                v114 = v118 - 4;
                v117 = (v131 + v29);
              }

              while (v118 > 7);
              v115 = (v119 + v27);
            }

            for (; v114; --v114)
            {
              v132 = *v116;
              v133 = v116[16];
              v134 = v116[32];
              v135 = v116[48];
              v136 = v116[64];
              v137 = v116[80];
              v138 = v116[96];
              v116 += 16;
              *v115 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v135.i8, v36, 3), vaddl_s16(*v136.i8, *v134.i8), v59), vaddl_s16(*v137.i8, *v133.i8), v58), vaddl_s16(*v138.i8, *v132.i8), v112), 9uLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v135, v36, 3), vaddl_high_s16(v136, v134), v59), vaddl_high_s16(v137, v133), v58), vaddl_high_s16(v138, v132), v112), 9uLL), v24);
              v115 = (v115 + v29);
            }

            ++v113;
            v39 += 16;
            v30 -= 8;
          }

          while (v30);
        }
      }

      else
      {
        if (v31)
        {
          v47 = v166;
          do
          {
            v48 = 0;
            v49 = v30;
            do
            {
              v50 = vaddq_s16(*(v40 + v48 + 8), *(v40 + v48));
              v51 = vaddq_s16(*(v40 + v48 + 6), *(v40 + v48 + 2));
              *&v47[v48 / 8] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v23, *v50.i8, v35, 1), *v51.i8, v35, 2), *(v40 + v48 + 4), v35, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v23, v50, v35, 1), v51, v35, 2), *(v40 + v48 + 4), v35, 3), 3uLL), v22);
              v48 += 16;
              v49 -= 8;
            }

            while (v49);
            v47 += 32;
            v40 += v28;
            --v37;
          }

          while (v37);
        }

        else
        {
          v82 = v166;
          do
          {
            v83 = 0;
            v84 = v30;
            do
            {
              v85 = vaddq_s16(*(v40 + v83 + 12), *(v40 + v83));
              v86 = vaddq_s16(*(v40 + v83 + 10), *(v40 + v83 + 2));
              v87 = vaddq_s16(*(v40 + v83 + 8), *(v40 + v83 + 4));
              *&v82[v83 / 8] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v23, *v85.i8, v35, 0), *v86.i8, v35, 1), *v87.i8, v35, 2), *(v40 + v83 + 6), v35, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v23, v85, v35, 0), v86, v35, 1), v87, v35, 2), *(v40 + v83 + 6), v35, 3), 3uLL), v22);
              v83 += 16;
              v84 -= 8;
            }

            while (v84);
            v82 += 32;
            v40 += v28;
            --v37;
          }

          while (v37);
        }

        v88 = vdupq_lane_s32(*v41.i8, 1);
        v89 = vdupq_laneq_s32(v41, 2);
        if (v33)
        {
          v90 = v166;
          do
          {
            v91 = v12;
            v92 = v39;
            v93 = v90;
            v94 = v39;
            if (v12 >= 4)
            {
              do
              {
                v95 = v91;
                v96 = v94;
                v97 = *v93;
                v98 = v93[16];
                v99 = v93[32];
                v100 = v93[48];
                v101 = v93[64];
                v102 = v93[80];
                v103 = v93[96];
                v104 = v93[112];
                v93 += 64;
                *v94 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v99.i8, v36, 3), vaddl_s16(*v100.i8, *v98.i8), v89), vaddl_s16(*v101.i8, *v97.i8), v88), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v99, v36, 3), vaddl_high_s16(v100, v98), v89), vaddl_high_s16(v101, v97), v88), 0xBuLL), v24);
                *(v94 + v29) = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v100.i8, v36, 3), vaddl_s16(*v101.i8, *v99.i8), v89), vaddl_s16(*v102.i8, *v98.i8), v88), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v100, v36, 3), vaddl_high_s16(v101, v99), v89), vaddl_high_s16(v102, v98), v88), 0xBuLL), v24);
                v105 = (v94 + v29 + v29);
                *v105 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v101.i8, v36, 3), vaddl_s16(*v102.i8, *v100.i8), v89), vaddl_s16(*v103.i8, *v99.i8), v88), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v101, v36, 3), vaddl_high_s16(v102, v100), v89), vaddl_high_s16(v103, v99), v88), 0xBuLL), v24);
                v106 = (v105 + v29);
                *v106 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v102.i8, v36, 3), vaddl_s16(*v103.i8, *v101.i8), v89), vaddl_s16(*v104.i8, *v100.i8), v88), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v102, v36, 3), vaddl_high_s16(v103, v101), v89), vaddl_high_s16(v104, v100), v88), 0xBuLL), v24);
                v91 = v95 - 4;
                v94 = (v106 + v29);
              }

              while (v95 > 7);
              v92 = (v96 + v27);
            }

            for (; v91; --v91)
            {
              v107 = *v93;
              v108 = v93[16];
              v109 = v93[32];
              v110 = v93[48];
              v111 = v93[64];
              v93 += 16;
              *v92 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v109.i8, v36, 3), vaddl_s16(*v110.i8, *v108.i8), v89), vaddl_s16(*v111.i8, *v107.i8), v88), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v109, v36, 3), vaddl_high_s16(v110, v108), v89), vaddl_high_s16(v111, v107), v88), 0xBuLL), v24);
              v92 = (v92 + v29);
            }

            ++v90;
            v39 += 16;
            v30 -= 8;
          }

          while (v30);
        }

        else
        {
          v139 = vdupq_lane_s32(*v41.i8, 0);
          v140 = v166;
          do
          {
            v141 = v12;
            v142 = v39;
            v143 = v140;
            v144 = v39;
            if (v12 >= 4)
            {
              do
              {
                v145 = v141;
                v146 = v144;
                v147 = *v143;
                v148 = v143[16];
                v149 = v143[32];
                v150 = v143[48];
                v151 = v143[64];
                v152 = v143[80];
                v153 = v143[96];
                v154 = v143[112];
                v155 = v143[128];
                v156 = v143[144];
                v143 += 64;
                *v144 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v150.i8, v36, 3), vaddl_s16(*v151.i8, *v149.i8), v89), vaddl_s16(*v152.i8, *v148.i8), v88), vaddl_s16(*v153.i8, *v147.i8), v139), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v150, v36, 3), vaddl_high_s16(v151, v149), v89), vaddl_high_s16(v152, v148), v88), vaddl_high_s16(v153, v147), v139), 0xBuLL), v24);
                *(v144 + v29) = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v151.i8, v36, 3), vaddl_s16(*v152.i8, *v150.i8), v89), vaddl_s16(*v153.i8, *v149.i8), v88), vaddl_s16(*v154.i8, *v148.i8), v139), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v151, v36, 3), vaddl_high_s16(v152, v150), v89), vaddl_high_s16(v153, v149), v88), vaddl_high_s16(v154, v148), v139), 0xBuLL), v24);
                v157 = (v144 + v29 + v29);
                *v157 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v152.i8, v36, 3), vaddl_s16(*v153.i8, *v151.i8), v89), vaddl_s16(*v154.i8, *v150.i8), v88), vaddl_s16(*v155.i8, *v149.i8), v139), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v152, v36, 3), vaddl_high_s16(v153, v151), v89), vaddl_high_s16(v154, v150), v88), vaddl_high_s16(v155, v149), v139), 0xBuLL), v24);
                v158 = (v157 + v29);
                *v158 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v153.i8, v36, 3), vaddl_s16(*v154.i8, *v152.i8), v89), vaddl_s16(*v155.i8, *v151.i8), v88), vaddl_s16(*v156.i8, *v150.i8), v139), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v153, v36, 3), vaddl_high_s16(v154, v152), v89), vaddl_high_s16(v155, v151), v88), vaddl_high_s16(v156, v150), v139), 0xBuLL), v24);
                v141 = v145 - 4;
                v144 = (v158 + v29);
              }

              while (v145 > 7);
              v142 = (v146 + v27);
            }

            for (; v141; --v141)
            {
              v159 = *v143;
              v160 = v143[16];
              v161 = v143[32];
              v162 = v143[48];
              v163 = v143[64];
              v164 = v143[80];
              v165 = v143[96];
              v143 += 16;
              *v142 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_s16(v26, *v162.i8, v36, 3), vaddl_s16(*v163.i8, *v161.i8), v89), vaddl_s16(*v164.i8, *v160.i8), v88), vaddl_s16(*v165.i8, *v159.i8), v139), 0xBuLL), vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlal_high_lane_s16(v26, v162, v36, 3), vaddl_high_s16(v163, v161), v89), vaddl_high_s16(v164, v160), v88), vaddl_high_s16(v165, v159), v139), 0xBuLL), v24);
              v142 = (v142 + v29);
            }

            ++v140;
            v39 += 16;
            v30 -= 8;
          }

          while (v30);
        }
      }

      v18 += v13;
    }

    while (v18 < v25);
  }

  return result;
}

uint64_t sub_2779F812C(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, int a10, uint64_t a11)
{
  if (a2 >= 1)
  {
    v14 = result;
    v15 = 0;
    v16 = a4;
    v17 = a2;
    do
    {
      v18 = a2 - a4;
      if (a2 >= a4)
      {
        a2 = a4;
      }

      else
      {
        a2 = a2;
      }

      result = sub_277B8D688(a5 + v15, a2, a3, a6, *(v14 + 48), v14 + 52, a7 + v15, a8, a9, a10, 0);
      if (result)
      {
        result = sub_2779F5C10(a11, 2, "Error allocating buffer in av1_apply_selfguided_restoration");
      }

      v15 += v16;
      LODWORD(a2) = v18;
    }

    while (v15 < v17);
  }

  return result;
}

int16x4_t *sub_2779F820C()
{
  result = MEMORY[0x28223BE20]();
  v128[4289] = *MEMORY[0x277D85DE8];
  if (v1 >= 1)
  {
    v8 = 0;
    v9 = v1 + 15;
    v10 = v7;
    v11.i64[0] = 0xE000E000E000E000;
    v11.i64[1] = 0xE000E000E000E000;
    v12 = vdupq_n_s32(0x7FC0400u);
    v13 = 4 * v7;
    v14 = v1 + 15;
    v15 = v1;
    do
    {
      v16 = (v14 & 0xFFFFFFF0);
      if (v3 < v16)
      {
        LODWORD(v16) = v3;
      }

      v17 = (v9 - v8) & 0xFFFFFFF0;
      if (v17 >= v3)
      {
        v17 = v3;
      }

      if (result[4].i16[0] || result[5].i16[2])
      {
        v18 = 0;
        v19 = -3;
      }

      else
      {
        v19 = -2;
        v18 = 1;
      }

      if (result[2].i16[0] || result[3].i16[2])
      {
        v20 = 0;
        v21 = 7;
      }

      else
      {
        v21 = 5;
        v20 = 1;
      }

      v22 = vadd_s16(result[4], 0x80000000000000);
      v23 = v2 - 1 + v21;
      v24 = v4 + v8 + v19 - ((v21 >> 1) * v5);
      if (v18)
      {
        v25 = v128;
        do
        {
          v26 = 0;
          v27 = v25;
          do
          {
            v28 = vaddl_u8(*(v24 + v26 + 4), *(v24 + v26));
            v29 = vaddl_u8(*(v24 + v26 + 3), *(v24 + v26 + 1));
            v30 = vmovl_u8(*(v24 + v26 + 2));
            v31.i64[0] = 0x400000004000;
            v31.i64[1] = 0x400000004000;
            v32.i64[0] = 0x400000004000;
            v32.i64[1] = 0x400000004000;
            *v27++ = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v31, *v28.i8, v22, 1), *v29.i8, v22, 2), *v30.i8, v22, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v32, v28, v22, 1), v29, v22, 2), v30, v22, 3), 3uLL), v11);
            v26 += 8;
          }

          while (v16 != v26);
          v24 += v5;
          v25 += 16;
          --v23;
        }

        while (v23);
      }

      else
      {
        v33 = v128;
        do
        {
          v34 = 0;
          v35 = v33;
          do
          {
            v36 = vaddl_u8(*(v24 + v34 + 6), *(v24 + v34));
            v37 = vaddl_u8(*(v24 + v34 + 5), *(v24 + v34 + 1));
            v38 = vaddl_u8(*(v24 + v34 + 4), *(v24 + v34 + 2));
            v39 = vmovl_u8(*(v24 + v34 + 3));
            v40.i64[0] = 0x400000004000;
            v40.i64[1] = 0x400000004000;
            v41.i64[0] = 0x400000004000;
            v41.i64[1] = 0x400000004000;
            *v35++ = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v40, *v36.i8, v22, 0), *v37.i8, v22, 1), *v38.i8, v22, 2), *v39.i8, v22, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v41, v36, v22, 0), v37, v22, 1), v38, v22, 2), v39, v22, 3), 3uLL), v11);
            v34 += 8;
          }

          while (v16 != v34);
          v24 += v5;
          v33 += 16;
          --v23;
        }

        while (v23);
      }

      v42 = (v6 + v8);
      v43 = vadd_s16(result[2], 0x80000000000000);
      if (v20)
      {
        v44 = v128;
        do
        {
          v45 = v2;
          v46 = v42;
          v47 = v44;
          v48 = v42;
          if (v2 >= 4)
          {
            do
            {
              v49 = v45;
              v50 = v48;
              v51 = *v47;
              v52 = v47[16];
              v53 = v47[32];
              v54 = v47[48];
              v55 = v47[64];
              v56 = v47[80];
              v57 = v47[96];
              v58 = v47[112];
              v47 += 64;
              v59 = vaddq_s16(v55, v51);
              v60 = vaddq_s16(v54, v52);
              *v59.i8 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v59.i8, v43, 1), *v60.i8, v43, 2), *v53.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v59, v43, 1), v60, v43, 2), v53, v43, 3), v12), 0xBuLL));
              v61 = vaddq_s16(v56, v52);
              v62 = vaddq_s16(v55, v53);
              *v61.i8 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v61.i8, v43, 1), *v62.i8, v43, 2), *v54.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v61, v43, 1), v62, v43, 2), v54, v43, 3), v12), 0xBuLL));
              v63 = vaddq_s16(v57, v53);
              v64 = vaddq_s16(v56, v54);
              *v63.i8 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v63.i8, v43, 1), *v64.i8, v43, 2), *v55.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v63, v43, 1), v64, v43, 2), v55, v43, 3), v12), 0xBuLL));
              v65 = vaddq_s16(v58, v54);
              v66 = vaddq_s16(v57, v55);
              *v48 = *v59.i8;
              *(v48 + v10) = *v61.i8;
              v67 = (v48 + v10 + v10);
              *v67 = *v63.i8;
              v68 = (v67 + v10);
              *v68 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v65.i8, v43, 1), *v66.i8, v43, 2), *v56.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v65, v43, 1), v66, v43, 2), v56, v43, 3), v12), 0xBuLL));
              v45 = v49 - 4;
              v48 = (v68 + v10);
            }

            while (v49 > 7);
            v46 = (v50 + v13);
          }

          if (v45)
          {
            v69 = *v47;
            v70 = v47 + 32;
            do
            {
              v71 = vaddq_s16(v70[32], v69);
              v72 = v70[-16];
              v73 = *v70;
              v74 = v70[16];
              v70 += 16;
              v75 = vaddq_s16(v74, v72);
              *v46 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v71.i8, v43, 1), *v75.i8, v43, 2), *v73.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v71, v43, 1), v75, v43, 2), v73, v43, 3), v12), 0xBuLL));
              v46 = (v46 + v10);
              v69 = v72;
              --v45;
            }

            while (v45);
          }

          ++v44;
          ++v42;
          v17 -= 8;
        }

        while (v17);
      }

      else
      {
        v76 = v128;
        do
        {
          v77 = v2;
          v78 = v42;
          v79 = v76;
          v80 = v42;
          if (v2 >= 4)
          {
            do
            {
              v81 = v77;
              v82 = v80;
              v83 = v79[16];
              v84 = v79[32];
              v85 = v79[48];
              v86 = v79[64];
              v87 = v79[80];
              v88 = v79[96];
              v89 = v79[112];
              v90 = v79[128];
              v91 = v79[144];
              v92 = vaddq_s16(v88, *v79);
              v93 = vaddq_s16(v87, v83);
              v94 = vaddq_s16(v86, v84);
              v95 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, v43, 0), *v93.i8, v43, 1);
              v96 = vaddq_s16(v89, v83);
              v97 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v92, v43, 0), v93, v43, 1), v94, v43, 2);
              v98 = vaddq_s16(v88, v84);
              v99 = vaddq_s16(v87, v85);
              v100 = vmlal_lane_s16(vmull_lane_s16(*v96.i8, v43, 0), *v98.i8, v43, 1);
              v101 = vmlal_lane_s16(v95, *v94.i8, v43, 2);
              v102 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v96, v43, 0), v98, v43, 1), v99, v43, 2);
              v103 = vaddq_s16(v90, v84);
              v104 = vaddq_s16(v89, v85);
              v105 = vmlal_lane_s16(vmull_lane_s16(*v103.i8, v43, 0), *v104.i8, v43, 1);
              v106 = vmlal_high_lane_s16(vmull_high_lane_s16(v103, v43, 0), v104, v43, 1);
              v107 = vaddq_s16(v88, v86);
              v108 = vmlal_high_lane_s16(v106, v107, v43, 2);
              v109 = vmlal_lane_s16(v105, *v107.i8, v43, 2);
              v79 += 64;
              v110 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(v101, *v85.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(v97, v85, v43, 3), v12), 0xBuLL);
              v111 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(v100, *v99.i8, v43, 2), *v86.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(v102, v86, v43, 3), v12), 0xBuLL);
              v112 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(v109, *v87.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(v108, v87, v43, 3), v12), 0xBuLL);
              v113 = vaddq_s16(v91, v85);
              v114 = vaddq_s16(v90, v86);
              v115 = vaddq_s16(v89, v87);
              *v80 = vqmovun_s16(v110);
              v116 = (v80 + v10);
              v117 = (v80 + v10 + v10);
              *v116 = vqmovun_s16(v111);
              *v117 = vqmovun_s16(v112);
              v118 = (v117 + v10);
              *v118 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v113.i8, v43, 0), *v114.i8, v43, 1), *v115.i8, v43, 2), *v88.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v113, v43, 0), v114, v43, 1), v115, v43, 2), v88, v43, 3), v12), 0xBuLL));
              v77 = v81 - 4;
              v80 = (v118 + v10);
            }

            while (v81 > 7);
            v78 = (v82 + v13);
          }

          if (v77)
          {
            v119 = *v79;
            do
            {
              v120 = vaddq_s16(v79[96], v119);
              v121 = v79[16];
              v122 = v79[32];
              v123 = v79[48];
              v124 = v79[64];
              v125 = v79[80];
              v79 += 16;
              v126 = vaddq_s16(v125, v121);
              v127 = vaddq_s16(v124, v122);
              *v78 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v120.i8, v43, 0), *v126.i8, v43, 1), *v127.i8, v43, 2), *v123.i8, v43, 3), v12), 0xBuLL), vaddq_s32(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v120, v43, 0), v126, v43, 1), v127, v43, 2), v123, v43, 3), v12), 0xBuLL));
              v78 = (v78 + v10);
              v119 = v121;
              --v77;
            }

            while (v77);
          }

          ++v76;
          ++v42;
          v17 -= 8;
        }

        while (v17);
      }

      v8 += v3;
      v14 -= v3;
    }

    while (v8 < v15);
  }

  return result;
}

uint64_t sub_2779F8860(int *(**a1)(int *a1, int a2, uint64_t a3, uint64_t a4, char *__dst, uint64_t a6), uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, int32x2_t a8)
{
  LODWORD(v8) = a4;
  v12 = *(a3 + 24696);
  v26 = v12[9].i32[0];
  v13 = v12[9].u8[4];
  a1[23] = (a3 + 23264);
  v25 = v12;
  result = sub_27797AC44(a3 + 23264, *(a2 + 16), *(a2 + 24), v12[12].i32[0], v12[12].i32[1], v13, 32, *(a3 + 512), a5, a6, a7, a8, 0, 0);
  if (result)
  {
    result = sub_2779F5C10(*(a3 + 48), 2, "Failed to allocate restoration dst buffer");
  }

  v16 = 0;
  *a1 = sub_2779F8A28;
  a1[22] = a2;
  v17 = (a3 + 23056);
  v18 = a2 + 32;
  v8 = v8;
  v19 = 40;
  do
  {
    v20 = *v17;
    *(v17 + 14) = 0;
    a1[v16 + 1] = v17;
    if (v20)
    {
      if (v16 * 8)
      {
        *&v15 = vbic_s8(0x100000001, vceqz_s32(*(*(a3 + 24696) + 96)));
      }

      else
      {
        v15 = 0uLL;
      }

      v21 = v16 != 0;
      v22.i32[0] = *(a3 + 72);
      v22.i32[1] = *(a3 + 60);
      *&v15 = vshl_s32(vsra_n_u32(v22, vshl_u32(0x100000001, *&v15), 1uLL), vneg_s32(*&v15));
      v27 = v15;
      result = sub_2779F6A74(*(a2 + v19), v15, SDWORD1(v15), *(v18 + 4 * v21), v13);
      if (v16 * 8)
      {
        *&v15 = vbic_s8(0x100000001, vceqz_s32(v25[12]));
      }

      else
      {
        *&v15 = 0;
      }

      v23 = &a1[v16];
      v23[2] = v15;
      *(&v15 + 1) = *(&v27 + 1);
      v23[3] = v27;
      *(v23 + 8) = v13;
      *(v23 + 9) = v26;
      v23[5] = *(a2 + v19);
      v24 = a1[23];
      v23[6] = *(v24 + v19);
      *(v23 + 14) = *(v18 + 4 * v21);
      *(v23 + 15) = *(v24 + v21 + 8);
    }

    v19 += 8;
    v16 += 7;
    v17 = (v17 + 64);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t sub_2779F8AA0(uint64_t result, int a2, void (*a3)(_DWORD *, void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a13)(uint64_t, uint64_t, uint64_t, void, uint64_t), uint64_t a14, uint64_t a15)
{
  if (a2 >= 1)
  {
    v18 = result;
    v19 = 0;
    v20 = 0;
    v24 = a6 * a4;
    v21 = a4 + 1;
    do
    {
      v22 = a2 - v19;
      if (a2 - v19 >= 3 * a5 / 2)
      {
        v22 = a5;
      }

      *v18 = v19;
      v19 += v22;
      v18[1] = v19;
      a12(a14, a4, v20, a8);
      if (v21 < a7)
      {
        a12(a14, (a4 + 2), v20, a8);
      }

      if (a14)
      {
        if (*(a14 + 84) >= 2)
        {
          pthread_mutex_lock(*(a14 + 88));
          v23 = *(a14 + 120);
          result = pthread_mutex_unlock(*(a14 + 88));
          if (v23)
          {
            break;
          }
        }
      }

      a3(v18, (v24 + v20), a9, a10, a11, a15);
      result = a13(a14, a4, v20, a6, a8);
      v20 = (v20 + 1);
    }

    while (v19 < a2);
  }

  return result;
}

BOOL sub_2779F8C28(uint64_t a1, int a2, int a3, int a4, int a5, int *a6, int *a7, int *a8, int *a9)
{
  v9 = *(a1 + 24696);
  if (v9[3].u8[4] != a5)
  {
    return 0;
  }

  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = vtst_s32(v9[12], v9[12]);
  }

  v11 = byte_277C36D60[a5] + a3;
  v12 = byte_277C3F990[a5] + a4;
  v13 = *(a1 + (a2 << 6) + 23060);
  v14 = *(a1 + (a2 << 6) + 23068);
  v15 = *(a1 + (a2 << 6) + 23072);
  v16 = 4u >> (v10.i8[0] & 1);
  v17 = 4u >> (v10.i8[4] & 1);
  if (*(a1 + 56) == *(a1 + 72))
  {
    v18 = *(a1 + (a2 << 6) + 23060);
  }

  else
  {
    v16 *= *(a1 + 80);
    v18 = 8 * v13;
  }

  *a6 = (v18 - 1 + v16 * a4) / v18;
  *a8 = (v13 - 1 + v17 * a3) / v13;
  v19 = (v18 - 1 + v16 * v12) / v18;
  if (v19 < v15)
  {
    v15 = v19;
  }

  *a7 = v15;
  v20 = (v13 - 1 + v17 * v11) / v13;
  if (v20 >= v14)
  {
    v20 = v14;
  }

  *a9 = v20;
  return *a6 < *a7 && *a8 < v20;
}

void sub_2779F8D3C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = *(a2 + 24696);
  v18 = *(v6 + 77);
  v19 = *(v6 + 76);
  v17 = a2 + 23056;
  do
  {
    if (v5)
    {
      v7 = *(*(a2 + 24696) + 100) != 0;
      v8 = 0x40u >> v7;
      v9 = 8u >> v7;
    }

    else
    {
      v7 = 0;
      v8 = 64;
      v9 = 8;
    }

    v10 = (*(a2 + 60) + ((1 << v7) >> 1)) >> v7;
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = v8 - v9;
      v14 = v17 + (v5 << 6);
      while (1)
      {
        if (v13 >= v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = v13;
        }

        if (a3)
        {
          if (!v12)
          {
            sub_2779F90EC(a1, a2, v5, v11, 0, v19, 1, v14 + 32);
          }

          if (v13 >= v10)
          {
            sub_2779F90EC(a1, a2, v5, v15 - 1, v12, v19, 0, v14 + 32);
            break;
          }
        }

        else
        {
          if (v12)
          {
            sub_2779F8EF0(a1, a2, v5, v11 - 2, v12, v19, 1, v14 + 32);
          }

          if (v13 >= v10)
          {
            break;
          }

          sub_2779F8EF0(a1, a2, v5, v15, v12, v19, 0, v14 + 32);
        }

        v11 = ++v12 * v8 - v9;
        v13 += v8;
      }
    }

    if (v18)
    {
      break;
    }
  }

  while (v5++ < 2);
}

void sub_2779F8EF0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v11 = a3 > 0;
  v12 = 2 * *(a1 + 8 * a3 + 40);
  if (!a6)
  {
    v12 = *(a1 + 8 * a3 + 40);
  }

  v13 = a1 + 4 * (a3 > 0);
  v14 = *(v13 + 32);
  v15 = v12 + (v14 << a6) * a4;
  v16 = *(a8 + 16);
  v17 = v16 << a6;
  v18 = *(a8 + 8 * (a7 == 0)) + (4 << a6) + 2 * a5 * (v16 << a6);
  v19 = *(v13 + 24) - a4;
  if (v19 >= 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = *(v13 + 24) - a4;
  }

  v21 = *(a2 + 72);
  if (*(a2 + 56) == v21)
  {
    v22 = *(a1 + 4 * v11 + 16);
    if (v19 < 1)
    {
LABEL_23:
      v32 = v17;
      goto LABEL_24;
    }

    v23 = v14 << a6;
    v41 = v16 << a6;
    v24 = v17;
    if (v20 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v20;
    }

    v26 = v18;
    do
    {
      memcpy(v26, v15, v22 << a6);
      v15 += v23;
      v26 += v24;
      --v25;
    }

    while (v25);
    v27 = v22 << a6;
    v17 = v41;
  }

  else
  {
    v28 = a3 >= 1 && *(*(a2 + 24696) + 96) != 0;
    v22 = (v28 + v21) >> v28;
    v27 = v22 << a6;
    if (a6)
    {
      v29 = v18 >> 1;
      v30 = a2;
      v31 = v15 >> 1;
    }

    else
    {
      v30 = a2;
      v31 = v12 + v14 * a4;
      v29 = v18;
    }

    sub_2779F445C(v30, v31, v14, v29, v16, a3, v20);
  }

  if (v19 != 1)
  {
    goto LABEL_23;
  }

  v32 = v17;
  memcpy((v18 + v17), v18, v27);
LABEL_24:
  v33 = v22 - 1;
  v34 = 1;
  do
  {
    v36 = v34;
    if (a6)
    {
      v37 = v18;
      v39 = vld1_dup_s16(v37);
      v35 = v33;
      v38 = &v37[v35];
      *(v18 - 8) = v39;
      v40 = vld1_dup_s16(v38);
      *(v18 + 2 * v22) = v40;
    }

    else
    {
      *(v18 - 4) = 16843009 * *v18;
      *(v18 + v22) = 16843009 * *(v18 + v33);
    }

    v34 = 0;
    v18 += v32;
  }

  while ((v36 & 1) != 0);
}

void *sub_2779F90EC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v9 = *(a1 + 8 * a3 + 40);
  if (a6)
  {
    v9 *= 2;
  }

  v10 = a1 + 4 * (a3 > 0);
  v11 = (v9 + (*(v10 + 32) << a6) * a4);
  v12 = (*(a8 + 16) << a6);
  v13 = (*(a8 + 8 * (a7 == 0)) + (4 << a6) + 2 * a5 * v12);
  v14 = *(v10 + 16);
  v15 = a3 >= 1 && *(*(a2 + 24696) + 96) != 0;
  v16 = *(a2 + 72);
  v17 = (v16 + v15) >> v15;
  if (*(a2 + 56) == v16)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 << a6;
  memcpy(v13, v11, v19);
  result = memcpy(v13 + v12, v11, v19);
  v21 = v18 - 1;
  v22 = 1;
  do
  {
    v24 = v22;
    if (a6)
    {
      v25 = v13;
      v27 = vld1_dup_s16(v25);
      v23 = v21;
      v26 = &v25[v23];
      v13[-1] = v27;
      v28 = vld1_dup_s16(v26);
      *(v13 + 2 * v18) = v28;
    }

    else
    {
      v13[-1].i32[1] = 16843009 * v13->u8[0];
      *(v13->i32 + v18) = 16843009 * v13->u8[v21];
    }

    v22 = 0;
    v13 = (v13 + v12);
  }

  while ((v24 & 1) != 0);
  return result;
}

double sub_2779F9234(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = -8;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V3.4S, V5.16B, V2.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V1.4S, V5.16B, V2.16B }

    _Q4 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V0.4S, V4.16B, V2.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  *a5 = vaddvq_s32(_Q3);
  _Q1.i32[0] = vaddvq_s32(_Q1);
  _Q0.i32[0] = vaddvq_s32(_Q0);
  *_Q0.i8 = vzip1_s32(*_Q1.i8, *_Q0.i8);
  *(a5 + 4) = _Q0.i64[0];
  return *_Q0.i64;
}

double sub_2779F92B0(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = -16;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V3.4S, V5.16B, V2.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V1.4S, V5.16B, V2.16B }

    _Q4 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V0.4S, V4.16B, V2.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  *a5 = vaddvq_s32(_Q3);
  _Q1.i32[0] = vaddvq_s32(_Q1);
  _Q0.i32[0] = vaddvq_s32(_Q0);
  *_Q0.i8 = vzip1_s32(*_Q1.i8, *_Q0.i8);
  *(a5 + 4) = _Q0.i64[0];
  return *_Q0.i64;
}

double sub_2779F932C(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = -32;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V3.4S, V5.16B, V2.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V1.4S, V5.16B, V2.16B }

    _Q4 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V0.4S, V4.16B, V2.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  *a5 = vaddvq_s32(_Q3);
  _Q1.i32[0] = vaddvq_s32(_Q1);
  _Q0.i32[0] = vaddvq_s32(_Q0);
  *_Q0.i8 = vzip1_s32(*_Q1.i8, *_Q0.i8);
  *(a5 + 4) = _Q0.i64[0];
  return *_Q0.i64;
}

int32x2_t sub_2779F93A8(uint8x16_t *a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a1 + 1;
  v10 = -16;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v12 = v9[-1];
    _Q17 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V5.4S, V17.16B, V3.16B }

    _Q17 = vabdq_u8(v12, *(v7 + v5));
    __asm { UDOT            V2.4S, V17.16B, V3.16B }

    _Q7 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V0.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v6 + v5 + 16));
    __asm { UDOT            V6.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v7 + v5 + 16));
    __asm { UDOT            V4.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v8 + v5 + 16));
    __asm { UDOT            V1.4S, V7.16B, V3.16B }

    v5 += a4;
    v9 = (v9 + a2);
  }

  while (!__CFADD__(v10++, 1));
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v29 = vaddq_s32(_Q4, _Q2);
  v29.i32[0] = vaddvq_s32(v29);
  v30 = vaddq_s32(_Q1, _Q0);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F9464(uint8x16_t *a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a1 + 1;
  v10 = -32;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v12 = v9[-1];
    _Q17 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V5.4S, V17.16B, V3.16B }

    _Q17 = vabdq_u8(v12, *(v7 + v5));
    __asm { UDOT            V2.4S, V17.16B, V3.16B }

    _Q7 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V0.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v6 + v5 + 16));
    __asm { UDOT            V6.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v7 + v5 + 16));
    __asm { UDOT            V4.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v8 + v5 + 16));
    __asm { UDOT            V1.4S, V7.16B, V3.16B }

    v5 += a4;
    v9 = (v9 + a2);
  }

  while (!__CFADD__(v10++, 1));
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v29 = vaddq_s32(_Q4, _Q2);
  v29.i32[0] = vaddvq_s32(v29);
  v30 = vaddq_s32(_Q1, _Q0);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F9520(uint8x16_t *a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a1 + 1;
  v10 = -64;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v12 = v9[-1];
    _Q17 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V5.4S, V17.16B, V3.16B }

    _Q17 = vabdq_u8(v12, *(v7 + v5));
    __asm { UDOT            V2.4S, V17.16B, V3.16B }

    _Q7 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V0.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v6 + v5 + 16));
    __asm { UDOT            V6.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v7 + v5 + 16));
    __asm { UDOT            V4.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v8 + v5 + 16));
    __asm { UDOT            V1.4S, V7.16B, V3.16B }

    v5 += a4;
    v9 = (v9 + a2);
  }

  while (!__CFADD__(v10++, 1));
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v29 = vaddq_s32(_Q4, _Q2);
  v29.i32[0] = vaddvq_s32(v29);
  v30 = vaddq_s32(_Q1, _Q0);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F95DC(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a4;
  v11 = 32;
  *&_Q4 = 0x101010101010101;
  *(&_Q4 + 1) = 0x101010101010101;
  do
  {
    v13 = 0;
    v14 = v7 + v5;
    v15 = v8 + v5;
    v16 = 1;
    do
    {
      v17 = *(a1 + v13);
      v18 = *(a1 + v13 + 16);
      v19 = *(v14 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v14 + v13));
      __asm { UDOT            V5.4S, V17.16B, V4.16B }

      v26 = *(v15 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v15 + v13));
      __asm { UDOT            V2.4S, V17.16B, V4.16B }

      v29 = (v9 + v5 + v13);
      _Q7 = vabdq_u8(v17, *v29);
      __asm { UDOT            V0.4S, V7.16B, V4.16B }

      _Q7 = vabdq_u8(v18, v19);
      __asm { UDOT            V6.4S, V7.16B, V4.16B }

      _Q7 = vabdq_u8(v18, v26);
      __asm { UDOT            V3.4S, V7.16B, V4.16B }

      v36 = v16;
      _Q7 = vabdq_u8(v18, v29[1]);
      __asm { UDOT            V1.4S, V7.16B, V4.16B }

      v13 = 32;
      v16 = 0;
    }

    while ((v36 & 1) != 0);
    a1 += v6;
    v5 += v10;
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v39 = vaddq_s32(_Q3, _Q2);
  v39.i32[0] = vaddvq_s32(v39);
  v40 = vaddq_s32(_Q1, _Q0);
  v40.i32[0] = vaddvq_s32(v40);
  result = vzip1_s32(*v39.i8, *v40.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F96BC(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a4;
  v11 = 64;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v13 = 0;
    v14 = v7 + v5;
    v15 = v8 + v5;
    v16 = 1;
    do
    {
      v17 = *(a1 + v13);
      v18 = *(a1 + v13 + 16);
      v19 = *(v14 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v14 + v13));
      __asm { UDOT            V5.4S, V17.16B, V3.16B }

      v26 = *(v15 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v15 + v13));
      __asm { UDOT            V2.4S, V17.16B, V3.16B }

      v29 = (v9 + v5 + v13);
      _Q7 = vabdq_u8(v17, *v29);
      __asm { UDOT            V0.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v18, v19);
      __asm { UDOT            V6.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v18, v26);
      __asm { UDOT            V4.4S, V7.16B, V3.16B }

      v36 = v16;
      _Q7 = vabdq_u8(v18, v29[1]);
      __asm { UDOT            V1.4S, V7.16B, V3.16B }

      v13 = 32;
      v16 = 0;
    }

    while ((v36 & 1) != 0);
    a1 += v6;
    v5 += v10;
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v39 = vaddq_s32(_Q4, _Q2);
  v39.i32[0] = vaddvq_s32(v39);
  v40 = vaddq_s32(_Q1, _Q0);
  v40.i32[0] = vaddvq_s32(v40);
  result = vzip1_s32(*v39.i8, *v40.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F979C(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a4;
  v11 = 128;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v13 = 0;
    v14 = v7 + v5;
    v15 = v8 + v5;
    v16 = 1;
    do
    {
      v17 = *(a1 + v13);
      v18 = *(a1 + v13 + 16);
      v19 = *(v14 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v14 + v13));
      __asm { UDOT            V5.4S, V17.16B, V3.16B }

      v26 = *(v15 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v15 + v13));
      __asm { UDOT            V2.4S, V17.16B, V3.16B }

      v29 = (v9 + v5 + v13);
      _Q7 = vabdq_u8(v17, *v29);
      __asm { UDOT            V0.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v18, v19);
      __asm { UDOT            V6.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v18, v26);
      __asm { UDOT            V4.4S, V7.16B, V3.16B }

      v36 = v16;
      _Q7 = vabdq_u8(v18, v29[1]);
      __asm { UDOT            V1.4S, V7.16B, V3.16B }

      v13 = 32;
      v16 = 0;
    }

    while ((v36 & 1) != 0);
    a1 += v6;
    v5 += v10;
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v39 = vaddq_s32(_Q4, _Q2);
  v39.i32[0] = vaddvq_s32(v39);
  v40 = vaddq_s32(_Q1, _Q0);
  v40.i32[0] = vaddvq_s32(v40);
  result = vzip1_s32(*v39.i8, *v40.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F987C(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = 64;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v10 = 16;
    do
    {
      v11 = *(a1 + v10 - 16);
      v12 = *(a1 + v10);
      _Q17 = vabdq_u8(v11, *(v5 + v10 - 16));
      __asm { UDOT            V5.4S, V17.16B, V3.16B }

      _Q17 = vabdq_u8(v11, *(v6 + v10 - 16));
      __asm { UDOT            V2.4S, V17.16B, V3.16B }

      _Q7 = vabdq_u8(v11, *(v7 + v10 - 16));
      __asm { UDOT            V0.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v12, *(v5 + v10));
      __asm { UDOT            V6.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v12, *(v6 + v10));
      __asm { UDOT            V4.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v12, *(v7 + v10));
      __asm { UDOT            V1.4S, V7.16B, V3.16B }

      v29 = v10 - 16;
      v10 += 32;
    }

    while (v29 < 0x60);
    a1 += a2;
    v7 += a4;
    v5 += a4;
    v6 += a4;
    --v8;
  }

  while (v8);
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v30 = vaddq_s32(_Q4, _Q2);
  v30.i32[0] = vaddvq_s32(v30);
  v31 = vaddq_s32(_Q1, _Q0);
  v31.i32[0] = vaddvq_s32(v31);
  result = vzip1_s32(*v30.i8, *v31.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F9950(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = 128;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v10 = 16;
    do
    {
      v11 = *(a1 + v10 - 16);
      v12 = *(a1 + v10);
      _Q17 = vabdq_u8(v11, *(v5 + v10 - 16));
      __asm { UDOT            V5.4S, V17.16B, V3.16B }

      _Q17 = vabdq_u8(v11, *(v6 + v10 - 16));
      __asm { UDOT            V2.4S, V17.16B, V3.16B }

      _Q7 = vabdq_u8(v11, *(v7 + v10 - 16));
      __asm { UDOT            V0.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v12, *(v5 + v10));
      __asm { UDOT            V6.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v12, *(v6 + v10));
      __asm { UDOT            V4.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v12, *(v7 + v10));
      __asm { UDOT            V1.4S, V7.16B, V3.16B }

      v29 = v10 - 16;
      v10 += 32;
    }

    while (v29 < 0x60);
    a1 += a2;
    v7 += a4;
    v5 += a4;
    v6 += a4;
    --v8;
  }

  while (v8);
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v30 = vaddq_s32(_Q4, _Q2);
  v30.i32[0] = vaddvq_s32(v30);
  v31 = vaddq_s32(_Q1, _Q0);
  v31.i32[0] = vaddvq_s32(v31);
  result = vzip1_s32(*v30.i8, *v31.i8);
  *(a5 + 4) = result;
  return result;
}

double sub_2779F9A24(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = -4;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V3.4S, V5.16B, V2.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V1.4S, V5.16B, V2.16B }

    _Q4 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V0.4S, V4.16B, V2.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  *a5 = vaddvq_s32(_Q3);
  _Q1.i32[0] = vaddvq_s32(_Q1);
  _Q0.i32[0] = vaddvq_s32(_Q0);
  *_Q0.i8 = vzip1_s32(*_Q1.i8, *_Q0.i8);
  *(a5 + 4) = _Q0.i64[0];
  return *_Q0.i64;
}

double sub_2779F9AA0(uint8x16_t *a1, int a2, void *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = -64;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V3.4S, V5.16B, V2.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V1.4S, V5.16B, V2.16B }

    _Q4 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V0.4S, V4.16B, V2.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  *a5 = vaddvq_s32(_Q3);
  _Q1.i32[0] = vaddvq_s32(_Q1);
  _Q0.i32[0] = vaddvq_s32(_Q0);
  *_Q0.i8 = vzip1_s32(*_Q1.i8, *_Q0.i8);
  *(a5 + 4) = _Q0.i64[0];
  return *_Q0.i64;
}

int32x2_t sub_2779F9B1C(uint8x16_t *a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a1 + 1;
  v10 = -8;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v12 = v9[-1];
    _Q17 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V5.4S, V17.16B, V3.16B }

    _Q17 = vabdq_u8(v12, *(v7 + v5));
    __asm { UDOT            V2.4S, V17.16B, V3.16B }

    _Q7 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V0.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v6 + v5 + 16));
    __asm { UDOT            V6.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v7 + v5 + 16));
    __asm { UDOT            V4.4S, V7.16B, V3.16B }

    _Q7 = vabdq_u8(*v9, *(v8 + v5 + 16));
    __asm { UDOT            V1.4S, V7.16B, V3.16B }

    v5 += a4;
    v9 = (v9 + a2);
  }

  while (!__CFADD__(v10++, 1));
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v29 = vaddq_s32(_Q4, _Q2);
  v29.i32[0] = vaddvq_s32(v29);
  v30 = vaddq_s32(_Q1, _Q0);
  v30.i32[0] = vaddvq_s32(v30);
  result = vzip1_s32(*v29.i8, *v30.i8);
  *(a5 + 4) = result;
  return result;
}

int32x2_t sub_2779F9BD8(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a4;
  v11 = 16;
  *&_Q3 = 0x101010101010101;
  *(&_Q3 + 1) = 0x101010101010101;
  do
  {
    v13 = 0;
    v14 = v7 + v5;
    v15 = v8 + v5;
    v16 = 1;
    do
    {
      v17 = *(a1 + v13);
      v18 = *(a1 + v13 + 16);
      v19 = *(v14 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v14 + v13));
      __asm { UDOT            V5.4S, V17.16B, V3.16B }

      v26 = *(v15 + v13 + 16);
      _Q17 = vabdq_u8(v17, *(v15 + v13));
      __asm { UDOT            V2.4S, V17.16B, V3.16B }

      v29 = (v9 + v5 + v13);
      _Q7 = vabdq_u8(v17, *v29);
      __asm { UDOT            V0.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v18, v19);
      __asm { UDOT            V6.4S, V7.16B, V3.16B }

      _Q7 = vabdq_u8(v18, v26);
      __asm { UDOT            V4.4S, V7.16B, V3.16B }

      v36 = v16;
      _Q7 = vabdq_u8(v18, v29[1]);
      __asm { UDOT            V1.4S, V7.16B, V3.16B }

      v13 = 32;
      v16 = 0;
    }

    while ((v36 & 1) != 0);
    a1 += v6;
    v5 += v10;
    --v11;
  }

  while (v11);
  *a5 = vaddvq_s32(vaddq_s32(_Q6, _Q5));
  v39 = vaddq_s32(_Q4, _Q2);
  v39.i32[0] = vaddvq_s32(v39);
  v40 = vaddq_s32(_Q1, _Q0);
  v40.i32[0] = vaddvq_s32(v40);
  result = vzip1_s32(*v39.i8, *v40.i8);
  *(a5 + 4) = result;
  return result;
}

int32x4_t sub_2779F9CB8(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -8;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  result = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  *a5 = result;
  return result;
}

int32x4_t sub_2779F9D3C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -16;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  result = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  *a5 = result;
  return result;
}

int32x4_t sub_2779F9DC0(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -32;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  result = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  *a5 = result;
  return result;
}

int32x4_t sub_2779F9E44(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -16;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779F9F20(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -32;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779F9FFC(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -64;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA0D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a2;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  v8 = a4;
  v9 = 32;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V2.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V2.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V2.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V2.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V2.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V2.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V1.4S, V17.16B, V2.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V2.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q1, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA1D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a4;
  v9 = 64;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA2D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a4;
  v9 = 128;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA3D8(uint64_t a1, int a2, uint64_t *a3, int a4, int32x4_t *a5)
{
  v5 = *a3;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = 64;
  do
  {
    v11 = 16;
    do
    {
      v12 = *(a1 + v11 - 16);
      v13 = *(a1 + v11);
      _Q19 = vabdq_u8(v12, *(v5 + v11 - 16));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v12, *(v6 + v11 - 16));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v12, *(v8 + v11 - 16));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      _Q17 = vabdq_u8(v12, *(v9 + v11 - 16));
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v5 + v11));
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v6 + v11));
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v8 + v11));
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v9 + v11));
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v34 = v11 - 16;
      v11 += 32;
    }

    while (v34 < 0x60);
    a1 += a2;
    v9 += a4;
    v5 += a4;
    v8 += a4;
    v6 += a4;
    --v10;
  }

  while (v10);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA4CC(uint64_t a1, int a2, uint64_t *a3, int a4, int32x4_t *a5)
{
  v5 = *a3;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = 128;
  do
  {
    v11 = 16;
    do
    {
      v12 = *(a1 + v11 - 16);
      v13 = *(a1 + v11);
      _Q19 = vabdq_u8(v12, *(v5 + v11 - 16));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v12, *(v6 + v11 - 16));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v12, *(v8 + v11 - 16));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      _Q17 = vabdq_u8(v12, *(v9 + v11 - 16));
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v5 + v11));
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v6 + v11));
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v8 + v11));
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v9 + v11));
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v34 = v11 - 16;
      v11 += 32;
    }

    while (v34 < 0x60);
    a1 += a2;
    v9 += a4;
    v5 += a4;
    v8 += a4;
    v6 += a4;
    --v10;
  }

  while (v10);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA5C0(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -4;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  result = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA644(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -64;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + a2);
    v5 += a4;
  }

  while (!__CFADD__(v6++, 1));
  result = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA6C8(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -8;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += a4;
    v10 = (v10 + a2);
  }

  while (!__CFADD__(v11++, 1));
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA7A4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a4;
  v9 = 16;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  result = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA8A4(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -4;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v6++, 1));
  v20 = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA934(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -8;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v6++, 1));
  v20 = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FA9C4(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -16;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v6++, 1));
  v20 = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FAA54(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -8;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += 2 * a4;
    v10 = (v10 + 2 * a2);
  }

  while (!__CFADD__(v11++, 1));
  v33 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v33, v33);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FAB3C(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -16;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += 2 * a4;
    v10 = (v10 + 2 * a2);
  }

  while (!__CFADD__(v11++, 1));
  v33 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v33, v33);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FAC24(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -32;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += 2 * a4;
    v10 = (v10 + 2 * a2);
  }

  while (!__CFADD__(v11++, 1));
  v33 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v33, v33);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FAD0C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = 2 * a4;
  v9 = 16;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  v42 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v42, v42);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FAE18(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a2;
  *&_Q2 = 0x101010101010101;
  *(&_Q2 + 1) = 0x101010101010101;
  v8 = 2 * a4;
  v9 = 32;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V2.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V2.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V2.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V2.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V2.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V2.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V1.4S, V17.16B, V2.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V2.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  v42 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q1, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v42, v42);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FAF24(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = 2 * a4;
  v9 = 64;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  v42 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v42, v42);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FB030(uint64_t a1, int a2, uint64_t *a3, int a4, int32x4_t *a5)
{
  v5 = *a3;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = 2 * a4;
  v11 = 32;
  do
  {
    v12 = 16;
    do
    {
      v13 = *(a1 + v12 - 16);
      v14 = *(a1 + v12);
      _Q19 = vabdq_u8(v13, *(v5 + v12 - 16));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v13, *(v6 + v12 - 16));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v13, *(v8 + v12 - 16));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v9 + v12 - 16));
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v5 + v12));
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v6 + v12));
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v8 + v12));
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v9 + v12));
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v35 = v12 - 16;
      v12 += 32;
    }

    while (v35 < 0x60);
    a1 += 2 * a2;
    v9 += v10;
    v5 += v10;
    v8 += v10;
    v6 += v10;
    --v11;
  }

  while (v11);
  v36 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v36, v36);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FB130(uint64_t a1, int a2, uint64_t *a3, int a4, int32x4_t *a5)
{
  v5 = *a3;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = 2 * a4;
  v11 = 64;
  do
  {
    v12 = 16;
    do
    {
      v13 = *(a1 + v12 - 16);
      v14 = *(a1 + v12);
      _Q19 = vabdq_u8(v13, *(v5 + v12 - 16));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v13, *(v6 + v12 - 16));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      _Q19 = vabdq_u8(v13, *(v8 + v12 - 16));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      _Q17 = vabdq_u8(v13, *(v9 + v12 - 16));
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v5 + v12));
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v6 + v12));
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v8 + v12));
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v14, *(v9 + v12));
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v35 = v12 - 16;
      v12 += 32;
    }

    while (v35 < 0x60);
    a1 += 2 * a2;
    v9 += v10;
    v5 += v10;
    v8 += v10;
    v6 += v10;
    --v11;
  }

  while (v11);
  v36 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v36, v36);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FB230(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v6++, 1));
  v20 = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FB2C0(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = -32;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  do
  {
    _Q5 = vabdq_u8(*a1, *(*a3 + v5));
    __asm { UDOT            V4.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[1] + v5));
    __asm { UDOT            V3.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[2] + v5));
    __asm { UDOT            V2.4S, V5.16B, V1.16B }

    _Q5 = vabdq_u8(*a1, *(a3[3] + v5));
    __asm { UDOT            V0.4S, V5.16B, V1.16B }

    a1 = (a1 + 2 * a2);
    v5 += 2 * a4;
  }

  while (!__CFADD__(v6++, 1));
  v20 = vpaddq_s32(vpaddq_s32(_Q4, _Q3), vpaddq_s32(_Q2, _Q0));
  result = vaddq_s32(v20, v20);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FB350(uint8x16_t *a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = a3[1];
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a1 + 1;
  v11 = -4;
  do
  {
    v12 = v10[-1];
    _Q19 = vabdq_u8(v12, *(*a3 + v5));
    __asm { UDOT            V5.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v6 + v5));
    __asm { UDOT            V6.4S, V19.16B, V1.16B }

    _Q19 = vabdq_u8(v12, *(v8 + v5));
    __asm { UDOT            V7.4S, V19.16B, V1.16B }

    _Q17 = vabdq_u8(v12, *(v9 + v5));
    __asm { UDOT            V16.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(*a3 + 16 + v5));
    __asm { UDOT            V4.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v6 + v5 + 16));
    __asm { UDOT            V3.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v8 + v5 + 16));
    __asm { UDOT            V2.4S, V17.16B, V1.16B }

    _Q17 = vabdq_u8(*v10, *(v9 + v5 + 16));
    __asm { UDOT            V0.4S, V17.16B, V1.16B }

    v5 += 2 * a4;
    v10 = (v10 + 2 * a2);
  }

  while (!__CFADD__(v11++, 1));
  v33 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v33, v33);
  *a5 = result;
  return result;
}

int32x4_t sub_2779FB438(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  v5 = 0;
  v6 = 2 * a2;
  *&_Q1 = 0x101010101010101;
  *(&_Q1 + 1) = 0x101010101010101;
  v8 = 2 * a4;
  v9 = 8;
  do
  {
    v10 = 0;
    v11 = *a3 + v5;
    v12 = a3[1] + v5;
    v13 = a3[2] + v5;
    v14 = 1;
    do
    {
      v15 = *(a1 + v10);
      v16 = *(a1 + v10 + 16);
      v17 = *(v11 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v11 + v10));
      __asm { UDOT            V5.4S, V19.16B, V1.16B }

      v24 = *(v12 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v12 + v10));
      __asm { UDOT            V6.4S, V19.16B, V1.16B }

      v27 = *(v13 + v10 + 16);
      _Q19 = vabdq_u8(v15, *(v13 + v10));
      __asm { UDOT            V7.4S, V19.16B, V1.16B }

      v30 = (a3[3] + v5 + v10);
      _Q17 = vabdq_u8(v15, *v30);
      __asm { UDOT            V16.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v17);
      __asm { UDOT            V4.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v24);
      __asm { UDOT            V3.4S, V17.16B, V1.16B }

      _Q17 = vabdq_u8(v16, v27);
      __asm { UDOT            V2.4S, V17.16B, V1.16B }

      v39 = v14;
      _Q17 = vabdq_u8(v16, v30[1]);
      __asm { UDOT            V0.4S, V17.16B, V1.16B }

      v10 = 32;
      v14 = 0;
    }

    while ((v39 & 1) != 0);
    a1 += v6;
    v5 += v8;
    --v9;
  }

  while (v9);
  v42 = vpaddq_s32(vpaddq_s32(vaddq_s32(_Q4, _Q5), vaddq_s32(_Q3, _Q6)), vpaddq_s32(vaddq_s32(_Q2, _Q7), vaddq_s32(_Q0, _Q16)));
  result = vaddq_s32(v42, v42);
  *a5 = result;
  return result;
}

pthread_mutex_t *sub_2779FB544(pthread_mutex_t *result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock(result);
    LOBYTE(v1[1].__sig) = 0;

    return pthread_mutex_unlock(v1);
  }

  return result;
}

_DWORD *sub_2779FB588(_DWORD *result, int a2)
{
  v2 = 0;
  result[1] = a2;
  result[2] = 24;
  *result = 0;
  result[259] = 0xFFFFFF;
  do
  {
    v3 = 0;
    v4 = 128;
    do
    {
      v3 = a2 & ((v3 ^ (((v4 & v2) != 0) << 23)) << 8 >> 31) ^ (2 * (v3 ^ (((v4 & v2) != 0) << 23)));
      v5 = v4 >= 2;
      v4 >>= 1;
    }

    while (v5);
    result[v2++ + 3] = v3;
  }

  while (v2 != 256);
  return result;
}

uint64_t sub_2779FB5E8(uint64_t result)
{
  v1 = 0;
  v2 = xmmword_277BB7060;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v4 = vdupq_n_s32(0x82F63B78);
  v5.i64[0] = 0x400000004;
  v5.i64[1] = 0x400000004;
  do
  {
    v6 = vshrq_n_u32(v2, 1uLL);
    v7 = vbslq_s8(vceqzq_s32(vandq_s8(v2, v3)), v6, veorq_s8(v6, v4));
    v8 = vceqzq_s32(vandq_s8(v7, v3));
    v9 = vshrq_n_u32(v7, 1uLL);
    v10 = vbslq_s8(v8, v9, veorq_s8(v9, v4));
    v11 = vceqzq_s32(vandq_s8(v10, v3));
    v12 = vshrq_n_u32(v10, 1uLL);
    v13 = vbslq_s8(v11, v12, veorq_s8(v12, v4));
    v14 = vceqzq_s32(vandq_s8(v13, v3));
    v15 = vshrq_n_u32(v13, 1uLL);
    v16 = vbslq_s8(v14, v15, veorq_s8(v15, v4));
    v17 = vceqzq_s32(vandq_s8(v16, v3));
    v18 = vshrq_n_u32(v16, 1uLL);
    v19 = vbslq_s8(v17, v18, veorq_s8(v18, v4));
    v20 = vceqzq_s32(vandq_s8(v19, v3));
    v21 = vshrq_n_u32(v19, 1uLL);
    v22 = vbslq_s8(v20, v21, veorq_s8(v21, v4));
    v23 = vandq_s8(v22, v3);
    v24 = vshrq_n_u32(v22, 1uLL);
    v25 = vbslq_s8(vceqzq_s32(v23), v24, veorq_s8(v24, v4));
    v26 = vceqzq_s32(vandq_s8(v25, v3));
    v27 = vshrq_n_u32(v25, 1uLL);
    *(result + v1) = vbslq_s8(v26, v27, veorq_s8(v27, v4));
    v2 = vaddq_s32(v2, v5);
    v1 += 16;
  }

  while (v1 != 1024);
  v28 = 0;
  v29 = result;
  do
  {
    v30 = *(result + 4 * v28);
    for (i = 1024; i != 0x2000; i += 1024)
    {
      v30 = *(result + 4 * v30) ^ (v30 >> 8);
      *(v29 + i) = v30;
    }

    ++v28;
    v29 += 4;
  }

  while (v28 != 256);
  return result;
}

uint64_t sub_2779FB6FC(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a3 && (a2 & 7) != 0)
  {
    v4 = a2 + 1;
    v3 = 0xFFFFFFFFLL;
    do
    {
      v5 = *a2++;
      v3 = *(a1 + 4 * (v5 ^ v3)) ^ (v3 >> 8);
      if (!--a3)
      {
        break;
      }
    }

    while ((v4++ & 7));
  }

  if (a3 >= 8)
  {
    do
    {
      v7 = *a2;
      a2 += 8;
      v8 = v7 ^ v3;
      v3 = *(a1 + 6144 + 4 * BYTE1(v8)) ^ *(a1 + 7168 + 4 * v8) ^ *(a1 + 5120 + 4 * BYTE2(v8)) ^ *(a1 + 4096 + 4 * BYTE3(v8)) ^ (*(a1 + 3072 + 4 * BYTE4(v8)) ^ *(a1 + 2048 + 4 * BYTE5(v8))) ^ *(a1 + 1024 + 4 * BYTE6(v8)) ^ *(a1 + ((v8 >> 54) & 0x3FC));
      a3 -= 8;
    }

    while (a3 > 7);
  }

  for (; a3; --a3)
  {
    v9 = *a2++;
    v3 = *(a1 + 4 * (v9 ^ v3)) ^ (v3 >> 8);
  }

  return ~v3;
}

uint64_t sub_2779FB808(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v3 = result - a2;
    if (result - a2 >= 0)
    {
      v4 = result - a2;
    }

    else
    {
      v4 = a2 - result;
    }

    v5 = -2 * v3;
    if (v3 >= 1)
    {
      v5 = 2 * v3 - 1;
    }

    if (v4 < a3 - a2)
    {
      v6 = v5;
    }

    else
    {
      v6 = ~result + a3;
    }

    if (v3 >= 1)
    {
      v7 = 2 * v3 - 1;
    }

    else
    {
      v7 = -2 * v3;
    }

    if (v4 > a2)
    {
      v7 = result;
    }

    if (a3 <= 2 * a2)
    {
      v7 = v6;
    }

    if (a3 - 1 <= a2)
    {
      return (~result + a3);
    }

    else
    {
      return v7;
    }
  }

  return result;
}

_DWORD *sub_2779FB868(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  result = sub_277A650D4(a1 + 16, a2, a3, a4);
  if (*(a1 + 48))
  {
    v9 = 0;
    v10 = *(a3 + 2 * a4);
    v11 = v10 >> 4;
    if (a4 > 3)
    {
      LOBYTE(v11) = v11 + 1;
    }

    v12 = v11 + 4;
    LODWORD(v13) = a4 - 1;
    if (a4 - 1 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v13;
    }

    do
    {
      v14 = *(a3 + 2 * v9);
      v15 = v14 - (v14 >> v12);
      v16 = v14 + ((0x8000 - v14) >> v12);
      if (v9 >= v6)
      {
        LOWORD(v16) = v15;
      }

      *(a3 + 2 * v9++) = v16;
    }

    while (v13 != v9);
    v17 = *(a3 + 2 * a4);
    if (v10 < 0x20)
    {
      ++v17;
    }

    *(a3 + 2 * a4) = v17;
  }

  return result;
}

uint64_t sub_2779FB918(int a1, _DWORD *a2, unsigned int a3, int a4, unsigned __int8 a5, _BYTE *a6)
{
  if (a1 && (a3 == 6 || a3 == 3))
  {
    ++*a2;
  }

  v18 = a6;
  v19 = 0;
  if (a4)
  {
    if (a3 > 6 || (v8 = 1, ((1 << a3) & 0x58) == 0))
    {
      v8 = a3 == 7;
    }
  }

  else
  {
    v8 = 0;
  }

  *a6 = 0;
  LODWORD(v19) = 1;
  for (i = 5; i > 1; --i)
  {
    sub_277AB9664(&v18, (a3 >> (i - 2)) & 1);
  }

  sub_277AB9664(&v18, v8);
  sub_277AB9664(&v18, 1);
  v10 = v19 + 1;
  v11 = v19 + 7;
  if (v19 >= 0)
  {
    v11 = v19;
  }

  v12 = v11 & 0xFFFFFFF8;
  v13 = v11 >> 3;
  LOBYTE(v14) = v12 - v19;
  if (v12 != v19)
  {
    v14 = v18[v13] & ~(1 << (v14 + 7));
  }

  v18[v13] = v14;
  LODWORD(v19) = v10;
  if (v8)
  {
    for (j = 9; j > 1; --j)
    {
      sub_277AB9664(&v18, (a5 >> (j - 2)) & 1);
    }

    v10 = v19;
  }

  v16 = v10 >> 3;
  if ((v10 & 7) != 0)
  {
    return v16 + 1;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_2779FBA68(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v99 = 0;
  v3 = *(a1 + 69);
  for (i = 4; i > 1; --i)
  {
    sub_277AB9664(&v98, (v3 >> (i - 2)) & 1);
  }

  sub_277AB9664(&v98, *(a1 + 57));
  sub_277AB9664(&v98, *(a1 + 58));
  if (*(a1 + 58))
  {
    v5 = *(a1 + 289);
    for (j = 6; j > 1; --j)
    {
      sub_277AB9664(&v98, (v5 >> (j - 2)) & 1);
    }
  }

  else
  {
    sub_277AB9664(&v98, *(a1 + 248));
    if (*(a1 + 248))
    {
      v7 = *(a1 + 252);
      for (k = 33; k > 1; --k)
      {
        sub_277AB9664(&v98, (v7 >> (k - 2)) & 1);
      }

      v9 = *(a1 + 256);
      for (m = 33; m > 1; --m)
      {
        sub_277AB9664(&v98, (v9 >> (m - 2)) & 1);
      }

      sub_277AB9664(&v98, *(a1 + 260));
      if (*(a1 + 260))
      {
        v11 = *(a1 + 264);
        if (v11 >= 2)
        {
          v13 = 1;
          v14 = -1;
          v15 = *(a1 + 264);
          do
          {
            ++v13;
            v14 += 2;
            v16 = v15 > 3;
            v15 >>= 1;
          }

          while (v16);
          v17 = v98;
          v18 = v99;
          v19 = 7 - v99;
          do
          {
            v20 = v18 + 7;
            if (v18 >= 0)
            {
              v20 = v18;
            }

            v21 = v20 & 0xFFFFFFF8;
            v22 = v20 >> 3;
            if (v18 == v21)
            {
              LOBYTE(v23) = 0;
            }

            else
            {
              v23 = *(v17 + v22) & ~(1 << (v19 + v21));
            }

            *(v17 + v22) = v23;
            ++v18;
            --v19;
            --v13;
          }

          while (v13 > 1);
          LODWORD(v99) = v18;
          v12 = (v14 + 3) >> 1;
        }

        else
        {
          v12 = 1;
        }

        v24 = v12 + 1;
        do
        {
          sub_277AB9664(&v98, (v11 >> (v24-- - 2)) & 1);
        }

        while (v24 > 1);
      }

      sub_277AB9664(&v98, *(a1 + 268));
      if (*(a1 + 268))
      {
        v25 = *(a1 + 276) - 1;
        for (n = 6; n > 1; --n)
        {
          sub_277AB9664(&v98, (v25 >> (n - 2)) & 1);
        }

        v27 = *(a1 + 272);
        for (ii = 33; ii > 1; --ii)
        {
          sub_277AB9664(&v98, (v27 >> (ii - 2)) & 1);
        }

        v29 = *(a1 + 280) - 1;
        for (jj = 6; jj > 1; --jj)
        {
          sub_277AB9664(&v98, (v29 >> (jj - 2)) & 1);
        }

        v31 = *(a1 + 284) - 1;
        for (kk = 6; kk > 1; --kk)
        {
          sub_277AB9664(&v98, (v31 >> (kk - 2)) & 1);
        }
      }
    }

    sub_277AB9664(&v98, *(a1 + 288));
    v33 = *(a1 + 112);
    for (mm = 6; mm > 1; --mm)
    {
      sub_277AB9664(&v98, (v33 >> (mm - 2)) & 1);
    }

    if ((*(a1 + 112) & 0x80000000) == 0)
    {
      v35 = 0;
      v36 = a1 + 289;
      v37 = a1 + 360;
      do
      {
        v38 = *(a1 + 116 + 4 * v35);
        for (nn = 13; nn > 1; --nn)
        {
          sub_277AB9664(&v98, (v38 >> (nn - 2)) & 1);
        }

        v40 = *(v36 + v35);
        for (i1 = 6; i1 > 1; --i1)
        {
          sub_277AB9664(&v98, (v40 >> (i1 - 2)) & 1);
        }

        if (*(v36 + v35) >= 8u)
        {
          sub_277AB9664(&v98, *(a1 + 321 + v35));
        }

        if (*(a1 + 268))
        {
          v42 = (v37 + 48 * v35);
          sub_277AB9664(&v98, *v42);
          if (*v42)
          {
            v43 = *(a1 + 276);
            if (v43 >= 1)
            {
              v44 = v42[6];
              v45 = v43 + 1;
              v46 = v43 + 1;
              do
              {
                sub_277AB9664(&v98, (v44 >> (v46-- - 2)) & 1);
              }

              while (v46 > 1);
              v47 = v42[7];
              do
              {
                sub_277AB9664(&v98, (v47 >> (v45-- - 2)) & 1);
              }

              while (v45 > 1);
            }

            sub_277AB9664(&v98, v42[8]);
          }
        }

        if (*(a1 + 288))
        {
          v48 = v37 + 48 * v35;
          sub_277AB9664(&v98, *(v48 + 36));
          if (*(v48 + 36))
          {
            v49 = *(v48 + 40) - 1;
            for (i2 = 5; i2 > 1; --i2)
            {
              sub_277AB9664(&v98, (v49 >> (i2 - 2)) & 1);
            }
          }
        }

        v16 = v35++ < *(a1 + 112);
      }

      while (v16);
    }
  }

  v51 = *a1 - 1;
  for (i3 = 5; i3 > 1; --i3)
  {
    sub_277AB9664(&v98, (v51 >> (i3 - 2)) & 1);
  }

  v53 = *(a1 + 4) - 1;
  for (i4 = 5; i4 > 1; --i4)
  {
    sub_277AB9664(&v98, (v53 >> (i4 - 2)) & 1);
  }

  if (*a1 >= 1)
  {
    v55 = *(a1 + 8) - 1;
    v56 = *a1 + 1;
    do
    {
      sub_277AB9664(&v98, (v55 >> (v56-- - 2)) & 1);
    }

    while (v56 > 1);
  }

  v57 = *(a1 + 4);
  if (v57 >= 1)
  {
    v58 = *(a1 + 12) - 1;
    v59 = v57 + 1;
    do
    {
      sub_277AB9664(&v98, (v58 >> (v59-- - 2)) & 1);
    }

    while (v59 > 1);
  }

  if (!*(a1 + 58))
  {
    sub_277AB9664(&v98, *(a1 + 16));
    if (*(a1 + 16))
    {
      v60 = *(a1 + 24) - 2;
      for (i5 = 5; i5 > 1; --i5)
      {
        sub_277AB9664(&v98, (v60 >> (i5 - 2)) & 1);
      }

      v62 = *(a1 + 20) + ~*(a1 + 24);
      for (i6 = 4; i6 > 1; --i6)
      {
        sub_277AB9664(&v98, (v62 >> (i6 - 2)) & 1);
      }
    }
  }

  sub_277AB9664(&v98, *(a1 + 28) == 15);
  sub_277AB9664(&v98, *(a1 + 60));
  sub_277AB9664(&v98, *(a1 + 61));
  if (!*(a1 + 58))
  {
    sub_277AB9664(&v98, *(a1 + 62));
    sub_277AB9664(&v98, *(a1 + 63));
    sub_277AB9664(&v98, *(a1 + 65));
    sub_277AB9664(&v98, *(a1 + 64));
    sub_277AB9664(&v98, *(a1 + 40));
    if (*(a1 + 40))
    {
      sub_277AB9664(&v98, *(a1 + 48));
      sub_277AB9664(&v98, *(a1 + 52));
    }

    if (*(a1 + 56) == 2)
    {
      v64 = 1;
    }

    else
    {
      v65 = v99;
      if (v99 >= 0)
      {
        v66 = v99;
      }

      else
      {
        v66 = v99 + 7;
      }

      v67 = v66 & 0xFFFFFFF8;
      v68 = v66 >> 3;
      v69 = v67 - v99;
      if (v69)
      {
        v69 = *(v98 + v68) & ~(1 << (v69 + 7));
      }

      *(v98 + v68) = v69;
      LODWORD(v99) = v65 + 1;
      v64 = *(a1 + 56);
    }

    sub_277AB9664(&v98, v64);
    if (*(a1 + 56))
    {
      if (*(a1 + 59) == 2)
      {
        v70 = 1;
      }

      else
      {
        v71 = v99;
        if (v99 >= 0)
        {
          v72 = v99;
        }

        else
        {
          v72 = v99 + 7;
        }

        v73 = v72 & 0xFFFFFFF8;
        v74 = v72 >> 3;
        v75 = v73 - v99;
        if (v75)
        {
          v75 = *(v98 + v74) & ~(1 << (v75 + 7));
        }

        *(v98 + v74) = v75;
        LODWORD(v99) = v71 + 1;
        v70 = *(a1 + 59);
      }

      sub_277AB9664(&v98, v70);
    }

    if (*(a1 + 40))
    {
      v76 = *(a1 + 44);
      for (i7 = 4; i7 > 1; --i7)
      {
        sub_277AB9664(&v98, (v76 >> (i7 - 2)) & 1);
      }
    }
  }

  sub_277AB9664(&v98, *(a1 + 66));
  sub_277AB9664(&v98, *(a1 + 67));
  sub_277AB9664(&v98, *(a1 + 68));
  sub_277AB9664(&v98, *(a1 + 72) != 8);
  v78 = *(a1 + 69);
  if (v78 == 2)
  {
    v79 = *(a1 + 72);
    if (v79 == 8)
    {
      v80 = *(a1 + 77);
LABEL_104:
      sub_277AB9664(&v98, v80);
      goto LABEL_105;
    }

    sub_277AB9664(&v98, v79 != 10);
    v78 = *(a1 + 69);
  }

  v80 = *(a1 + 77);
  if (v78 != 1)
  {
    goto LABEL_104;
  }

LABEL_105:
  if (*(a1 + 80) == 2 && *(a1 + 84) == 2 && *(a1 + 88) == 2)
  {
    v81 = v99;
    if (v99 >= 0)
    {
      v82 = v99;
    }

    else
    {
      v82 = v99 + 7;
    }

    v83 = v82 & 0xFFFFFFF8;
    v84 = v82 >> 3;
    v85 = v83 - v99;
    if (v85)
    {
      v85 = *(v98 + v84) & ~(1 << (v85 + 7));
    }

    *(v98 + v84) = v85;
    LODWORD(v99) = v81 + 1;
  }

  else
  {
    sub_277AB9664(&v98, 1);
    v86 = *(a1 + 80);
    for (i8 = 9; i8 > 1; --i8)
    {
      sub_277AB9664(&v98, (v86 >> (i8 - 2)) & 1);
    }

    v88 = *(a1 + 84);
    for (i9 = 9; i9 > 1; --i9)
    {
      sub_277AB9664(&v98, (v88 >> (i9 - 2)) & 1);
    }

    v90 = *(a1 + 88);
    for (i10 = 9; i10 > 1; --i10)
    {
      sub_277AB9664(&v98, (v90 >> (i10 - 2)) & 1);
    }
  }

  if (v80)
  {
    v92 = *(a1 + 92);
  }

  else
  {
    if (*(a1 + 80) != 1 || *(a1 + 84) != 13 || *(a1 + 88))
    {
      sub_277AB9664(&v98, *(a1 + 92));
      if (*(a1 + 69) == 2 && *(a1 + 72) == 12)
      {
        sub_277AB9664(&v98, *(a1 + 96));
        if (*(a1 + 96))
        {
          sub_277AB9664(&v98, *(a1 + 100));
        }
      }

      if (*(a1 + 96) == 1 && *(a1 + 100) == 1)
      {
        v93 = *(a1 + 104);
        for (i11 = 3; i11 > 1; --i11)
        {
          sub_277AB9664(&v98, (v93 >> (i11 - 2)) & 1);
        }
      }
    }

    v92 = *(a1 + 108);
  }

  sub_277AB9664(&v98, v92);
  sub_277AB9664(&v98, *(a1 + 109));
  if ((v99 & 7) != 0)
  {
    sub_277AB9664(&v98, 1);
  }

  else
  {
    for (i12 = 9; i12 > 1; --i12)
    {
      sub_277AB9664(&v98, i12 == 9);
    }
  }

  v96 = v99 >> 3;
  if ((v99 & 7) != 0)
  {
    return v96 + 1;
  }

  else
  {
    return v96;
  }
}

uint64_t sub_2779FC42C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = (a1 + 270312);
  v9 = *(a1 + 644196);
  v10 = (v9 + *(a1 + 270336) * *(a1 + 270340) - 1) / v9;
  v11 = *(*(a1 + 270312) + 244);
  v12 = *(a3 + 56);
  v13 = *(a3 + 40);
  v14 = *(*a1 + 23208);
  if (v9 == 1)
  {
    v15 = 6;
  }

  else
  {
    v15 = 4;
  }

  result = sub_2779FB918(v14, (a1 + 643744), v15, v11, v12, v13);
  *(a3 + 60) = result;
  *(a3 + 64) = result;
  v17 = *(a1 + 644196);
  if (v17 == 1)
  {
    result = *(a3 + 64) + sub_2779FC5E8(a1, a2, *a3, (*(a3 + 40) + result), 0);
    *(a3 + 64) = result;
    v17 = *(a1 + 644196);
  }

  if ((v10 + a4) >= v8[7] * v8[6])
  {
    v18 = v8[7] * v8[6];
  }

  else
  {
    v18 = v10 + a4;
  }

  v20 = v8[12];
  v19 = v8[13];
  v26 = *(a3 + 40) + result;
  if (v20 + v19)
  {
    v27 = 0;
    sub_277AB9664(&v26, v17 > 1);
    if (v17 >= 2 && v20 + v19 >= 1)
    {
      v21 = v18 - 1;
      v22 = v19 + v20 + 1;
      do
      {
        sub_277AB9664(&v26, (a4 >> (v22-- - 2)) & 1);
      }

      while (v22 > 1);
      v23 = v19 + v20 + 1;
      do
      {
        sub_277AB9664(&v26, (v21 >> (v23-- - 2)) & 1);
      }

      while (v23 > 1);
    }

    if ((v27 & 7) != 0)
    {
      v24 = (v27 >> 3) + 1;
    }

    else
    {
      v24 = v27 >> 3;
    }

    result = *(a3 + 64);
  }

  else
  {
    v24 = 0;
  }

  v25 = result + v24;
  *(a3 + 64) = v25;
  **(a3 + 24) += v25;
  return result;
}

uint64_t sub_2779FC5E8(uint64_t a1, uint64_t a2, _OWORD *a3, _BYTE *a4, int a5)
{
  v464 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 245616);
  *&v454 = a4;
  v447 = (a1 + 270312);
  v8 = *(a1 + 270312);
  if (*(a1 + 396681) == 1)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v9 = *(v8 + 52) == 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *(&v454 + 1) = 0;
  *(a1 + 245656) = v9;
  v453 = v8;
  if (*(v8 + 58))
  {
LABEL_6:
    sub_277AB9664(&v454, v7[492]);
    v10 = v453;
    if (*(v453 + 56) == 2)
    {
      sub_277AB9664(&v454, v7[495]);
      v10 = v453;
    }

    v445 = a5;
    if (v7[495] == 1 && *(v10 + 59) == 2)
    {
      sub_277AB9664(&v454, v7[494]);
      v10 = v453;
    }

    v11 = (a1 + 245620);
    v12 = v447;
    v448 = a1;
    if (*(v10 + 58))
    {
      v451 = 0;
    }

    else
    {
      if (*(v10 + 16))
      {
        v18 = *(v453 + 20);
        if (v18 >= 1)
        {
          v19 = v447[170];
          v20 = v18 + 1;
          do
          {
            sub_277AB9664(&v454, (v19 >> (v20-- - 2)) & 1);
          }

          while (v20 > 1);
        }
      }

      v21 = v453;
      if (*(v7 + 18) > *(v453 + 8) || *(v7 + 19) > *(v453 + 12))
      {
        sub_2779F5C10(*(v7 + 6), 5, "Frame dimensions are larger than the maximum values");
        v21 = v453;
      }

      if (*v7 == 3)
      {
        v22 = 1;
      }

      else
      {
        v22 = *(v7 + 18) != v21[2] || *(v7 + 19) != v21[3];
        sub_277AB9664(&v454, v22);
        v21 = v453;
      }

      if (v21[10])
      {
        v31 = *(v453 + 44);
        if ((v31 & 0x80000000) == 0)
        {
          v32 = *(v7 + 1);
          do
          {
            sub_277AB9664(&v454, (v32 >> v31) & 1);
            v33 = v31-- + 1;
          }

          while (v33 > 1);
        }
      }

      v451 = v22;
      if ((v7[502] & 1) == 0 && (*v7 & 0xFD) != 0)
      {
        v34 = *(v7 + 127);
        for (i = 4; i > 1; --i)
        {
          sub_277AB9664(&v454, (v34 >> (i - 2)) & 1);
        }
      }

      v10 = v453;
    }

    v450 = v7;
    if (*(v10 + 268))
    {
      sub_277AB9664(&v454, *(*v448 + 51020));
      v10 = v453;
      if (*(*v448 + 51020) == 1 && (*(v453 + 112) & 0x80000000) == 0)
      {
        v36 = 0;
        v37 = v448 + 245700;
        do
        {
          if (*(v453 + 360 + 48 * v36))
          {
            v38 = *(v453 + 116 + 4 * v36);
            if (!v38 || ((v38 >> v12[193]) & 1) != 0 && ((v38 >> (*(v12 + 776) + 8)) & 1) != 0)
            {
              v39 = *(v37 + 4 * v36);
              v40 = *(v10 + 280);
              if (v40 >= 1)
              {
                v41 = v40 + 1;
                do
                {
                  sub_277AB9664(&v454, (v39 >> (v41-- - 2)) & 1);
                }

                while (v41 > 1);
                v39 = *(v37 + 4 * v36);
                v12 = v447;
                v10 = v453;
              }

              v56 = __CFADD__(v39, 1);
              *(v37 + 4 * v36) = v39 + 1;
              v7 = v450;
              if (v56)
              {
                sub_2779F5C10(*(v11 + 11), 5, "buffer_removal_time overflowed");
                v10 = v453;
              }
            }
          }

          v118 = v36++ < *(v10 + 112);
        }

        while (v118);
      }
    }

    v42 = v448;
    v43 = (v448 + 270356);
    v44 = *v7;
    if (*v7)
    {
      if (v44 > 2)
      {
        goto LABEL_88;
      }
    }

    else if (v11[119])
    {
      v44 = 0;
      goto LABEL_89;
    }

    v45 = v11[8];
    for (j = 9; j > 1; --j)
    {
      sub_277AB9664(&v454, (v45 >> (j - 2)) & 1);
    }

    v44 = *v7;
    v10 = v453;
LABEL_88:
    if ((v44 & 0xFFFFFFFD) != 0)
    {
LABEL_90:
      if (*(v11 + 498) == 1 && *(v10 + 40))
      {
        for (k = 0; k != 8; ++k)
        {
          v48 = *(v10 + 44);
          if ((v48 & 0x80000000) == 0)
          {
            v49 = *(*(v448 + 246032 + 8 * k) + 4);
            do
            {
              sub_277AB9664(&v454, (v49 >> v48) & 1);
              v50 = v48-- + 1;
            }

            while (v50 > 1);
          }

          v10 = v453;
        }

        v44 = *v7;
      }

LABEL_98:
      if (v44 > 1)
      {
        if (v44 != 2)
        {
          if (v44 != 3)
          {
            goto LABEL_244;
          }

          goto LABEL_103;
        }
      }

      else if (v44)
      {
LABEL_103:
        if (!*(v7 + 10))
        {
          v57 = 0;
          goto LABEL_191;
        }

        if (*(v448 + 396681) == 1)
        {
          v51 = *(*v12 + 44) + 1;
          v52 = v11[1] >> v51;
          v53 = *(v448 + 8 * v11[62] + 246032);
          v54 = *(v53 + 36) >> v51;
          v55 = *v11 - *(v53 + 4);
          v56 = v52 != v54 || v55 >= 0x41;
          v57 = !v56;
          goto LABEL_190;
        }

        v59 = 0;
        v457 = 0;
        memset(v456, 0, sizeof(v456));
        v60 = v11 + 59;
        v61 = v448 + 246032;
        v62 = 1;
        while (1)
        {
          v63 = v60[v62 - 1];
          if (v63 != -1)
          {
            v64 = *(v61 + 8 * v63);
            if (v64)
            {
              if (v59 < 1)
              {
LABEL_122:
                *(v456 + v59++) = v64;
              }

              else
              {
                v65 = v59;
                v66 = v456;
                while (*v66 != v64)
                {
                  ++v66;
                  if (!--v65)
                  {
                    goto LABEL_122;
                  }
                }
              }
            }
          }

          if (++v62 == 8)
          {
            if (v59 < 7)
            {
LABEL_187:
              v57 = 0;
              goto LABEL_189;
            }

            v67 = 0;
            v68 = 0;
            v69 = v11[59];
            v70 = v11[62];
            v71 = *v12;
            v72 = 1 << *(*v12 + 44);
            v73 = *v11;
            v458 = 0;
            v459 = 0;
            v461 = 0;
            v460 = 0;
            v74 = -1;
            v75 = -1;
            do
            {
              v76 = &__base[v67];
              *v76 = v68;
              *(v76 + 4) = -1;
              v77 = *(v61 + 8 * v68);
              v76[1] = v77;
              if (v77)
              {
                v78 = *(v77 + 4);
                if (v78 != -1)
                {
                  v79 = ((v72 - 1) & (v78 - v73)) - (v72 & (v78 - v73));
                  if (!*(v71 + 40))
                  {
                    v79 = 0;
                  }

                  v78 = v79 + v72;
                }

                *(v76 + 4) = v78;
                if (3 * v69 == v67)
                {
                  v74 = v78;
                }

                if (3 * v70 == v67)
                {
                  v75 = v78;
                }
              }

              ++v68;
              v67 += 3;
            }

            while (v67 != 24);
            if (v74 == -1 || v74 >= v72)
            {
              sub_2779F5C10(*(v11 + 11), 7, "Inter frame requests a look-ahead frame as LAST");
            }

            if (v75 == -1 || v75 >= v72)
            {
              sub_2779F5C10(*(v11 + 11), 7, "Inter frame requests a look-ahead frame as GOLDEN");
            }

            qsort(__base, 8uLL, 0x18uLL, sub_27797AB8C);
            v82 = 0;
            v83 = 0;
            v84 = 2;
            while (1)
            {
              v85 = __base[v84];
              if (v85 == -1)
              {
                ++v83;
              }

              else if (v85 >= v72)
              {
                v455[6] = v463;
                v461 = 1;
                if (v82 == 7)
                {
                  v86 = 6;
LABEL_151:
                  v7 = v450;
                }

                else
                {
                  v455[4] = __base[3 * v82];
                  LODWORD(v460) = 1;
                  v7 = v450;
                  if (v82 <= 5)
                  {
                    v86 = v82 - 1;
                    v455[5] = __base[3 * v82 + 3];
                    HIDWORD(v460) = 1;
                  }

                  else
                  {
                    v86 = 5;
                  }
                }

                if (v83 <= v86)
                {
                  v89 = 0;
                  v87 = 0;
                  v88 = v83;
                  v90 = v86 - v83 + 1;
                  v91 = &__base[3 * v83];
                  do
                  {
                    v93 = *v91;
                    v91 += 6;
                    v92 = v93;
                    if (v93 == v69)
                    {
                      v81 = v69;
                      v87 = 1;
                    }

                    if (v92 == v70)
                    {
                      v80 = v70;
                      v89 = 1;
                    }

                    --v90;
                  }

                  while (v90);
                  v455[0] = v81;
                  v455[3] = v80;
                  HIDWORD(v459) = v89;
                }

                else
                {
                  v87 = 0;
                  v88 = v83;
                }

                v94 = 0;
                LODWORD(v458) = v87;
                while (1)
                {
                  v95 = byte_277BB8110[v94] - 1;
                  if (*(&v458 + v95) != 1)
                  {
                    if (v83 > v86)
                    {
LABEL_174:
                      if (v94 <= 4)
                      {
                        do
                        {
                          v101 = byte_277BB8110[v94] - 1;
                          if (*(&v458 + v101) != 1)
                          {
                            v455[v101] = __base[3 * v88];
                            *(&v458 + v101) = 1;
                          }

                          ++v94;
                        }

                        while (v94 != 5);
                      }

LABEL_178:
                      v102 = 0;
                      v10 = v453;
                      while (v102 != 7)
                      {
                        v103 = v455[v102];
                        if (v103 == -1)
                        {
                          v104 = 0;
                        }

                        else
                        {
                          v104 = *(v61 + 8 * v103);
                        }

                        v105 = v60[v102];
                        if (v105 == -1)
                        {
                          v106 = 0;
                        }

                        else
                        {
                          v106 = *(v61 + 8 * v105);
                        }

                        ++v102;
                        if (v106 != v104)
                        {
                          goto LABEL_187;
                        }
                      }

                      v57 = 1;
LABEL_189:
                      v42 = v448;
LABEL_190:
                      *(v7 + 10) = v57;
LABEL_191:
                      if (*(v10 + 40))
                      {
                        sub_277AB9664(&v454, v57);
                        v57 = *(v7 + 10);
                      }

                      if (v57)
                      {
                        v107 = v11[59];
                        for (m = 4; m > 1; --m)
                        {
                          sub_277AB9664(&v454, (v107 >> (m - 2)) & 1);
                        }

                        v109 = v11[62];
                        for (n = 4; n > 1; --n)
                        {
                          sub_277AB9664(&v454, (v109 >> (n - 2)) & 1);
                        }
                      }

                      v111 = v42 + 61464;
                      for (ii = 1; ii != 8; ++ii)
                      {
                        if (!*(v7 + 10))
                        {
                          v113 = v111[(ii - 1)];
                          for (jj = 4; jj > 1; --jj)
                          {
                            sub_277AB9664(&v454, (v113 >> (jj - 2)) & 1);
                          }
                        }

                        if (*(v453 + 16))
                        {
                          v115 = *(v453 + 24);
                          v116 = (*(v448 + 270992) + (1 << *(v453 + 20)) - v42[v111[(ii - 1)] + 67749]) % (1 << *(v453 + 20));
                          v117 = v116 - 1;
                          v118 = v116 >= 1 && v116 <= 1 << v115;
                          if (!v118)
                          {
                            sub_2779F5C10(*(v11 + 11), 1, "Invalid delta_frame_id_minus_1");
                          }

                          if (v115 >= 1)
                          {
                            v119 = v115 + 1;
                            do
                            {
                              sub_277AB9664(&v454, (v117 >> (v119-- - 2)) & 1);
                            }

                            while (v119 > 1);
                          }
                        }

                        v7 = v450;
                      }

                      if (!v451 || (*(v11 + 498) & 1) != 0)
                      {
                        sub_2779FF08C(v450, v451, &v454);
                        v42 = v448;
                        goto LABEL_233;
                      }

                      v120 = 0;
                      v42 = v448;
                      while (1)
                      {
                        v121 = v111[v120];
                        if (v121 == -1 || (v122 = *(v448 + 246032 + 8 * v121)) == 0)
                        {
                          v124 = DWORD2(v454);
                          if ((SDWORD2(v454) & 0x80000000) == 0)
                          {
                            v125 = DWORD2(v454);
                          }

                          else
                          {
                            v125 = DWORD2(v454) + 7;
                          }

                          v126 = v125 & 0xFFFFFFF8;
                          v127 = v125 >> 3;
                          v128 = v126 - DWORD2(v454);
                          if (v128)
                          {
                            v128 = *(v454 + v127) & ~(1 << (v128 + 7));
                          }

                          *(v454 + v127) = v128;
                          DWORD2(v454) = v124 + 1;
                        }

                        else
                        {
                          v123 = v11[17] == v122[316] && v11[18] == v122[318];
                          v129 = v11[15] == v122[357] && v11[16] == v122[358];
                          v130 = v129 && v123;
                          sub_277AB9664(&v454, v129 && v123);
                          if (v130)
                          {
                            if (*(*v12 + 66))
                            {
                              if (*(v11 + 76) == 8)
                              {
                                v299 = DWORD2(v454);
                                if ((SDWORD2(v454) & 0x80000000) == 0)
                                {
                                  v300 = DWORD2(v454);
                                }

                                else
                                {
                                  v300 = DWORD2(v454) + 7;
                                }

                                v301 = v300 & 0xFFFFFFF8;
                                v302 = v300 >> 3;
                                v303 = v301 - DWORD2(v454);
                                if (v303)
                                {
                                  v303 = *(v454 + v302) & ~(1 << (v303 + 7));
                                }

                                *(v454 + v302) = v303;
                                DWORD2(v454) = v299 + 1;
                              }

                              else
                              {
                                sub_277AB9664(&v454, 1);
                                v442 = *(v11 + 76) - 9;
                                for (kk = 4; kk > 1; --kk)
                                {
                                  sub_277AB9664(&v454, (v442 >> (kk - 2)) & 1);
                                }
                              }
                            }

LABEL_233:
                            if ((*(v11 + 490) & 1) == 0)
                            {
                              sub_277AB9664(&v454, *(v11 + 489));
                            }

                            v131 = *(v11 + 501);
                            sub_277AB9664(&v454, v131 == 4);
                            if (v131 != 4)
                            {
                              for (mm = 3; mm > 1; --mm)
                              {
                                sub_277AB9664(&v454, (v131 >> (mm - 2)) & 1);
                              }
                            }

                            sub_277AB9664(&v454, *(v11 + 499));
                            v10 = v453;
                            if ((*(v11 + 498) & 1) == 0 && *(*v12 + 52) && *(*v12 + 40) && (*v450 & 0xFD) != 0)
                            {
                              v58 = 246114;
LABEL_243:
                              sub_277AB9664(&v454, *(v42 + v58));
                              v10 = v453;
                            }

                            goto LABEL_244;
                          }
                        }

                        if (++v120 == 7)
                        {
                          sub_2779FF08C(v450, 1, &v454);
                          goto LABEL_233;
                        }
                      }
                    }

                    v96 = v86;
                    v97 = &__base[3 * v86];
                    while (1)
                    {
                      v99 = *v97;
                      v97 -= 6;
                      v98 = v99;
                      if (v99 != v69 && v98 != v70)
                      {
                        break;
                      }

                      v118 = v88 < v96--;
                      if (!v118)
                      {
                        goto LABEL_174;
                      }
                    }

                    v455[v95] = __base[3 * v96];
                    *(&v458 + v95) = 1;
                    v86 = v96 - 1;
                  }

                  if (++v94 == 5)
                  {
                    goto LABEL_178;
                  }
                }
              }

              ++v82;
              v84 += 3;
              if (v82 == 8)
              {
                v86 = 7;
                goto LABEL_151;
              }
            }
          }
        }
      }

      sub_2779FF08C(v7, v451, &v454);
      v10 = v453;
      if (v7[495] == 1 && v11[13] == v11[17])
      {
        v58 = 246112;
        goto LABEL_243;
      }

LABEL_244:
      v449 = v42 + 67185;
      if (!*(v10 + 58) && (v7[492] & 1) == 0)
      {
        sub_277AB9664(&v454, *(v11 + 512) == 0);
      }

      v133 = v11[133];
      v134 = *(*v12 + 36);
      v135 = v11[132];
      sub_277AB9664(&v454, *v43);
      if (*v43)
      {
        v136 = *(v448 + 270360);
        v137 = *(v448 + 270376);
        v138 = v42 + 67185;
        if (v136 != v137)
        {
          v139 = v137 - v136;
          do
          {
            sub_277AB9664(&v454, 1);
            v56 = __CFADD__(v139++, 1);
          }

          while (!v56);
          v136 = *(v448 + 270360);
        }

        if (v136 < v42[67596])
        {
          v140 = DWORD2(v454);
          if ((SDWORD2(v454) & 0x80000000) == 0)
          {
            v141 = DWORD2(v454);
          }

          else
          {
            v141 = DWORD2(v454) + 7;
          }

          v142 = v141 & 0xFFFFFFF8;
          v143 = v141 >> 3;
          v144 = v142 - DWORD2(v454);
          if (v144)
          {
            v144 = *(v454 + v143) & ~(1 << (v144 + 7));
          }

          *(v454 + v143) = v144;
          DWORD2(v454) = v140 + 1;
        }

        v145 = v42[67591];
        v146 = v42[67595];
        if (v145 != v146)
        {
          v147 = v146 - v145;
          do
          {
            sub_277AB9664(&v454, 1);
            v56 = __CFADD__(v147++, 1);
          }

          while (!v56);
          v145 = v42[67591];
        }

        if (v145 < v42[67597])
        {
          v148 = DWORD2(v454);
          if ((SDWORD2(v454) & 0x80000000) == 0)
          {
            v149 = DWORD2(v454);
          }

          else
          {
            v149 = DWORD2(v454) + 7;
          }

          v150 = v149 & 0xFFFFFFF8;
          v151 = v149 >> 3;
          v152 = v150 - DWORD2(v454);
          if (v152)
          {
            v152 = *(v454 + v151) & ~(1 << (v152 + 7));
          }

          *(v454 + v151) = v152;
          DWORD2(v454) = v148 + 1;
        }
      }

      else
      {
        v452 = ~(-1 << v134);
        v153 = v42 + 67185;
        if (v42[67584] >= 1)
        {
          v154 = 0;
          v155 = (v133 + v452) >> v134;
          v156 = v448 + 270396;
          do
          {
            v157 = *(v156 + 4 * v154++);
            v158 = *(v156 + 4 * v154) - v157;
            if (v155 >= v153[401])
            {
              v159 = v153[401];
            }

            else
            {
              v159 = v155;
            }

            v160 = __clz(v159);
            v161 = v160 ^ 0x1F;
            if (v159)
            {
              v162 = v158 - 1;
              v163 = (2 << (v160 ^ 0x1F)) - v159;
              if (v163 >= v158)
              {
                if (v160 != 31)
                {
                  v167 = v161 + 1;
                  do
                  {
                    sub_277AB9664(&v454, (v162 >> (v167-- - 2)) & 1);
                  }

                  while (v167 > 1);
                }
              }

              else
              {
                v164 = v162 - v163;
                if (v160 != 31)
                {
                  v165 = v163 + (v164 >> 1);
                  v166 = v161 + 1;
                  do
                  {
                    sub_277AB9664(&v454, (v165 >> (v166-- - 2)) & 1);
                  }

                  while (v166 > 1);
                }

                sub_277AB9664(&v454, v164 & 1);
              }
            }

            v155 -= v158;
            v153 = v449;
          }

          while (v154 < v449[399]);
        }

        v12 = v447;
        v138 = v153;
        if (v153[400] >= 1)
        {
          v168 = 0;
          v169 = (v135 + v452) >> v134;
          v170 = v448 + 270656;
          do
          {
            v171 = *(v170 + 4 * v168++);
            v172 = *(v170 + 4 * v168) - v171;
            if (v169 >= v138[402])
            {
              v173 = v138[402];
            }

            else
            {
              v173 = v169;
            }

            v174 = __clz(v173);
            v175 = v174 ^ 0x1F;
            if (v173)
            {
              v176 = v172 - 1;
              v177 = (2 << (v174 ^ 0x1F)) - v173;
              if (v177 >= v172)
              {
                if (v174 != 31)
                {
                  v181 = v175 + 1;
                  do
                  {
                    sub_277AB9664(&v454, (v176 >> (v181-- - 2)) & 1);
                  }

                  while (v181 > 1);
                }
              }

              else
              {
                v178 = v176 - v177;
                if (v174 != 31)
                {
                  v179 = v177 + (v178 >> 1);
                  v180 = v175 + 1;
                  do
                  {
                    sub_277AB9664(&v454, (v179 >> (v180-- - 2)) & 1);
                  }

                  while (v180 > 1);
                }

                sub_277AB9664(&v454, v178 & 1);
                v138 = v449;
              }
            }

            v169 -= v172;
          }

          while (v168 < v138[400]);
        }
      }

      v182 = (v448 + 264592);
      *a3 = v454;
      if (v138[399] * v138[400] > 1)
      {
        v183 = v138[405];
        v184 = v138[406];
        if (v184 + v183 >= 1)
        {
          v185 = DWORD2(v454);
          v186 = 7 - BYTE8(v454);
          v187 = v183 + v184 + 1;
          do
          {
            if (v185 >= 0)
            {
              v188 = v185;
            }

            else
            {
              v188 = v185 + 7;
            }

            v189 = v188 & 0xFFFFFFF8;
            v190 = v188 >> 3;
            if (v185 == v189)
            {
              LOBYTE(v191) = 0;
            }

            else
            {
              v191 = *(v454 + v190) & ~(1 << (v186 + v189));
            }

            *(v454 + v190) = v191;
            DWORD2(v454) = ++v185;
            --v186;
            --v187;
          }

          while (v187 > 1);
        }

        for (nn = 3; nn > 1; --nn)
        {
          sub_277AB9664(&v454, (3u >> (nn - 2)) & 1);
        }
      }

      v193 = *(*v12 + 77);
      v194 = *(*v12 + 108);
      v195 = *(v448 + 246232);
      for (i1 = 9; i1 > 1; --i1)
      {
        sub_277AB9664(&v454, (v195 >> (i1 - 2)) & 1);
      }

      v197 = *(v448 + 246236);
      if (v197)
      {
        sub_277AB9664(&v454, 1);
        for (i2 = 8; i2 > 1; --i2)
        {
          sub_277AB9664(&v454, (v197 >> (i2 - 2)) & 1);
        }

        if (v193)
        {
          goto LABEL_373;
        }
      }

      else
      {
        v199 = DWORD2(v454);
        if ((SDWORD2(v454) & 0x80000000) == 0)
        {
          v200 = DWORD2(v454);
        }

        else
        {
          v200 = DWORD2(v454) + 7;
        }

        v201 = v200 & 0xFFFFFFF8;
        v202 = v200 >> 3;
        v203 = v201 - DWORD2(v454);
        if (v203)
        {
          v203 = *(v454 + v202) & ~(1 << (v203 + 7));
        }

        *(v454 + v202) = v203;
        DWORD2(v454) = v199 + 1;
        if (v193)
        {
          goto LABEL_373;
        }
      }

      v204 = *(v448 + 246240);
      v205 = (v448 + 246244);
      if (v204 == *(v448 + 246244))
      {
        v206 = *(v448 + 246248) != *(v448 + 246252);
        if (!v194)
        {
          goto LABEL_332;
        }
      }

      else
      {
        v206 = 1;
        if (!v194)
        {
LABEL_332:
          if (v204)
          {
            sub_277AB9664(&v454, 1);
            for (i3 = 8; i3 > 1; --i3)
            {
              sub_277AB9664(&v454, (v204 >> (i3 - 2)) & 1);
            }
          }

          else
          {
            v208 = DWORD2(v454);
            if ((SDWORD2(v454) & 0x80000000) == 0)
            {
              v209 = DWORD2(v454);
            }

            else
            {
              v209 = DWORD2(v454) + 7;
            }

            v210 = v209 & 0xFFFFFFF8;
            v211 = v209 >> 3;
            v212 = v210 - DWORD2(v454);
            if (v212)
            {
              v212 = *(v454 + v211) & ~(1 << (v212 + 7));
            }

            *(v454 + v211) = v212;
            DWORD2(v454) = v208 + 1;
          }

          v213 = *(v448 + 246248);
          if (v213)
          {
            sub_277AB9664(&v454, 1);
            for (i4 = 8; i4 > 1; --i4)
            {
              sub_277AB9664(&v454, (v213 >> (i4 - 2)) & 1);
            }

            if (!v206)
            {
              goto LABEL_373;
            }

            goto LABEL_353;
          }

          v215 = DWORD2(v454);
          if ((SDWORD2(v454) & 0x80000000) == 0)
          {
            v216 = DWORD2(v454);
          }

          else
          {
            v216 = DWORD2(v454) + 7;
          }

          v217 = v216 & 0xFFFFFFF8;
          v218 = v216 >> 3;
          v219 = v217 - DWORD2(v454);
          if (v219)
          {
            v219 = *(v454 + v218) & ~(1 << (v219 + 7));
          }

          *(v454 + v218) = v219;
          DWORD2(v454) = v215 + 1;
          if (v206)
          {
LABEL_353:
            v220 = *v205;
            if (*v205)
            {
              sub_277AB9664(&v454, 1);
              v221 = 8;
              v222 = v448 + 245617;
              do
              {
                sub_277AB9664(&v454, (v220 >> (v221-- - 2)) & 1);
              }

              while (v221 > 1);
            }

            else
            {
              v223 = DWORD2(v454);
              if ((SDWORD2(v454) & 0x80000000) == 0)
              {
                v224 = DWORD2(v454);
              }

              else
              {
                v224 = DWORD2(v454) + 7;
              }

              v225 = v224 & 0xFFFFFFF8;
              v226 = v224 >> 3;
              v227 = v225 - DWORD2(v454);
              if (v227)
              {
                v227 = *(v454 + v226) & ~(1 << (v227 + 7));
              }

              v222 = v448 + 245617;
              *(v454 + v226) = v227;
              DWORD2(v454) = v223 + 1;
            }

            v228 = *(v222 + 635);
            if (v228)
            {
              sub_277AB9664(&v454, 1);
              for (i5 = 8; i5 > 1; --i5)
              {
                sub_277AB9664(&v454, (v228 >> (i5 - 2)) & 1);
              }
            }

            else
            {
              v230 = DWORD2(v454);
              if ((SDWORD2(v454) & 0x80000000) == 0)
              {
                v231 = DWORD2(v454);
              }

              else
              {
                v231 = DWORD2(v454) + 7;
              }

              v232 = v231 & 0xFFFFFFF8;
              v233 = v231 >> 3;
              v234 = v232 - DWORD2(v454);
              if (v234)
              {
                v234 = *(v454 + v233) & ~(1 << (v234 + 7));
              }

              *(v454 + v233) = v234;
              DWORD2(v454) = v230 + 1;
            }
          }

LABEL_373:
          sub_277AB9664(&v454, *v182);
          if (*v182 == 1)
          {
            v235 = *(v448 + 264596);
            for (i6 = 5; i6 > 1; --i6)
            {
              sub_277AB9664(&v454, (v235 >> (i6 - 2)) & 1);
            }

            v237 = *(v448 + 264600);
            for (i7 = 5; i7 > 1; --i7)
            {
              sub_277AB9664(&v454, (v237 >> (i7 - 2)) & 1);
            }

            if (v194)
            {
              v239 = *(v448 + 264604);
              for (i8 = 5; i8 > 1; --i8)
              {
                sub_277AB9664(&v454, (v239 >> (i8 - 2)) & 1);
              }
            }
          }

          sub_277AB9664(&v454, *(v448 + 264608));
          if (*(v448 + 264608))
          {
            if (*(v448 + 246124) != 7)
            {
              sub_277AB9664(&v454, *(v448 + 264609));
              if (*(v448 + 264609))
              {
                sub_277AB9664(&v454, *(v448 + 264611));
              }

              sub_277AB9664(&v454, *(v448 + 264610));
            }

            if (*(v448 + 264610))
            {
              for (i9 = 0; i9 != 8; ++i9)
              {
                for (i10 = 0; i10 != 8; ++i10)
                {
                  if (*(v448 + 264608))
                  {
                    v243 = *(v448 + 264740 + 4 * i9) >> i10;
                    sub_277AB9664(&v454, v243 & 1);
                    if (v243)
                    {
                      v244 = dword_277C316D8[i10];
                      v245 = __clz(v244) ^ 0x1F;
                      if ((i10 & 0xFE) == 6)
                      {
                        v246 = 0;
                      }

                      else
                      {
                        v246 = v245 + 1;
                      }

                      v247 = *(v448 + 264612 + 16 * i9 + 2 * i10);
                      if (v247 >= v244)
                      {
                        v248 = dword_277C316D8[i10];
                      }

                      else
                      {
                        v248 = *(v448 + 264612 + 16 * i9 + 2 * i10);
                      }

                      if (v247 < -v244)
                      {
                        v249 = -v244;
                      }

                      else
                      {
                        v249 = v248;
                      }

                      if ((i10 - 5) >= 3)
                      {
                        do
                        {
                          sub_277AB9664(&v454, (v249 >> v246) & 1);
                          v251 = v246-- + 1;
                        }

                        while (v251 > 1);
                      }

                      else if ((i10 & 0xFE) != 6)
                      {
                        v250 = v246 + 1;
                        do
                        {
                          sub_277AB9664(&v454, (v249 >> (v250-- - 2)) & 1);
                        }

                        while (v250 > 1);
                      }
                    }
                  }

                  else
                  {
                    v252 = DWORD2(v454);
                    if ((SDWORD2(v454) & 0x80000000) == 0)
                    {
                      v253 = DWORD2(v454);
                    }

                    else
                    {
                      v253 = DWORD2(v454) + 7;
                    }

                    v254 = v253 & 0xFFFFFFF8;
                    v255 = v253 >> 3;
                    v256 = v254 - DWORD2(v454);
                    if (v256)
                    {
                      v256 = *(v454 + v255) & ~(1 << (v256 + 7));
                    }

                    *(v454 + v255) = v256;
                    DWORD2(v454) = v252 + 1;
                  }
                }
              }
            }
          }

          v257 = v447;
          v259 = v450;
          v258 = (v448 + 245617);
          if (*(v448 + 246232) >= 1)
          {
            sub_277AB9664(&v454, v449[315]);
            if (v449[315])
            {
              v260 = __clz(v449[316]) ^ 0x1F;
              for (i11 = 3; i11 > 1; --i11)
              {
                sub_277AB9664(&v454, (v260 >> (i11 - 2)) & 1);
              }

              *(a2 + 10724) = *(v448 + 246232);
              if ((*(v448 + 246112) & 1) == 0)
              {
                sub_277AB9664(&v454, v449[317]);
              }

              if (v449[317])
              {
                v262 = __clz(v449[318]) ^ 0x1F;
                for (i12 = 3; i12 > 1; --i12)
                {
                  sub_277AB9664(&v454, (v262 >> (i12 - 2)) & 1);
                }

                sub_277AB9664(&v454, v449[319]);
                v264 = *(*v447 + 77);
                *(a2 + 10752) = 0;
                if (v264)
                {
                  v265 = 2;
                }

                else
                {
                  v265 = 4;
                }

                bzero((a2 + 10753), v265);
              }
            }
          }

          if ((*(v448 + 246116) & 1) == 0)
          {
            if ((*(v448 + 246115) & 1) == 0)
            {
              if ((*(v448 + 246112) & 1) == 0)
              {
                v266 = *(*v447 + 77);
                v267 = *(v448 + 268640);
                for (i13 = 7; i13 > 1; --i13)
                {
                  sub_277AB9664(&v454, (v267 >> (i13 - 2)) & 1);
                }

                v269 = *(v448 + 268644);
                for (i14 = 7; i14 > 1; --i14)
                {
                  sub_277AB9664(&v454, (v269 >> (i14 - 2)) & 1);
                }

                if (!v266 && (*(v448 + 268640) || *(v448 + 268644)))
                {
                  v271 = *(v448 + 268648);
                  for (i15 = 7; i15 > 1; --i15)
                  {
                    sub_277AB9664(&v454, (v271 >> (i15 - 2)) & 1);
                  }

                  v273 = *(v448 + 268652);
                  for (i16 = 7; i16 > 1; --i16)
                  {
                    sub_277AB9664(&v454, (v273 >> (i16 - 2)) & 1);
                  }
                }

                v275 = *(v448 + 268656);
                for (i17 = 4; i17 > 1; --i17)
                {
                  sub_277AB9664(&v454, (v275 >> (i17 - 2)) & 1);
                }

                sub_277AB9664(&v454, *(v448 + 268660));
                if (*(v448 + 268661))
                {
                  v277 = *(v448 + 246124);
                  v278 = v277 != 7 && (*(v448 + 246124) & 0xF8) == 0;
                  if (v278 && (v279 = *(v448 + 4 * (v277 & 7) + 245856), v279 != -1) && (v280 = *(v448 + 8 * v279 + 246032)) != 0)
                  {
                    __base[0] = *(v280 + 1484);
                    v281 = *(v280 + 1492);
                    v282 = *(v280 + 1493);
                  }

                  else
                  {
                    v281 = 0;
                    v282 = 0;
                    __base[0] = 0xFFFF00FF00000001;
                  }

                  v283 = 0;
                  v284 = v448 + 268662;
                  while (*(v284 + v283) == *(__base + v283))
                  {
                    if (++v283 == 8)
                    {
                      v285 = 0;
                      v286 = 1;
                      while (*(v448 + 268670 + v285) == v281)
                      {
                        v287 = v286;
                        v286 = 0;
                        v281 = v282;
                        v285 = 1;
                        if ((v287 & 1) == 0)
                        {
                          goto LABEL_460;
                        }
                      }

                      break;
                    }
                  }

                  sub_277AB9664(&v454, 1);
                  v293 = *(v448 + 246124);
                  v294 = v293 != 7 && (*(v448 + 246124) & 0xF8) == 0;
                  if (v294 && (v295 = *(v448 + 4 * (v293 & 7) + 245856), v295 != -1) && (v296 = *(v448 + 8 * v295 + 246032)) != 0)
                  {
                    __base[0] = *(v296 + 1484);
                    v297 = *(v296 + 1492);
                    v298 = *(v296 + 1493);
                  }

                  else
                  {
                    v297 = 0;
                    v298 = 0;
                    __base[0] = 0xFFFF00FF00000001;
                  }

                  for (i18 = 0; i18 != 8; ++i18)
                  {
                    v305 = *(v284 + i18);
                    v306 = *(__base + i18);
                    sub_277AB9664(&v454, v305 != v306);
                    if (v305 != v306)
                    {
                      for (i19 = 8; i19 > 1; --i19)
                      {
                        sub_277AB9664(&v454, (v305 >> (i19 - 2)) & 1);
                      }
                    }
                  }

                  v308 = 0;
                  v309 = 1;
                  v259 = v450;
                  do
                  {
                    v310 = v309;
                    v311 = *(v448 + 268670 + v308);
                    sub_277AB9664(&v454, v311 != v297);
                    if (v311 != v297)
                    {
                      v312 = v311;
                      for (i20 = 8; i20 > 1; --i20)
                      {
                        sub_277AB9664(&v454, (v312 >> (i20 - 2)) & 1);
                      }
                    }

                    v309 = 0;
                    v297 = v298;
                    v308 = 1;
                  }

                  while ((v310 & 1) != 0);
                }

                else
                {
LABEL_460:
                  v288 = DWORD2(v454);
                  if ((SDWORD2(v454) & 0x80000000) == 0)
                  {
                    v289 = DWORD2(v454);
                  }

                  else
                  {
                    v289 = DWORD2(v454) + 7;
                  }

                  v290 = v289 & 0xFFFFFFF8;
                  v291 = v289 >> 3;
                  v292 = v290 - DWORD2(v454);
                  if (v292)
                  {
                    v292 = *(v454 + v291) & ~(1 << (v292 + 7));
                  }

                  *(v454 + v291) = v292;
                  DWORD2(v454) = v288 + 1;
                }
              }

              if (*(*v447 + 67))
              {
                if ((*(v448 + 246112) & 1) == 0)
                {
                  v314 = *(*v447 + 77);
                  v315 = v449[115] - 3;
                  for (i21 = 3; i21 > 1; --i21)
                  {
                    sub_277AB9664(&v454, (v315 >> (i21 - 2)) & 1);
                  }

                  v317 = v449[149];
                  for (i22 = 3; i22 > 1; --i22)
                  {
                    sub_277AB9664(&v454, (v317 >> (i22 - 2)) & 1);
                  }

                  if (v449[116] >= 1)
                  {
                    v319 = 0;
                    do
                    {
                      v320 = *(v448 + 269208 + 4 * v319);
                      for (i23 = 7; i23 > 1; --i23)
                      {
                        sub_277AB9664(&v454, (v320 >> (i23 - 2)) & 1);
                      }

                      if (!v314)
                      {
                        v322 = *(v448 + 269272 + 4 * v319);
                        for (i24 = 7; i24 > 1; --i24)
                        {
                          sub_277AB9664(&v454, (v322 >> (i24 - 2)) & 1);
                        }
                      }

                      ++v319;
                    }

                    while (v319 < v449[116]);
                  }
                }
              }
            }

            v258 = (v448 + 245617);
            if (*(*v447 + 68) && (*(v448 + 246112) & 1) == 0)
            {
              v324 = 0;
              v325 = *(*v447 + 77);
              v326 = (v448 + 268672);
              v327 = 1;
              v328 = 1;
              do
              {
                v330 = *v326;
                v326 += 16;
                v329 = v330;
                v331 = v328 & 1;
                if (v324)
                {
                  v331 = 0;
                }

                if (v329)
                {
                  v328 = v331;
                  v327 = 0;
                }

                if (v329 <= 3)
                {
                  v332 = dword_277BB7C50[v329];
                  sub_277AB9664(&v454, dword_277BB7C40[v329]);
                  sub_277AB9664(&v454, v332);
                }

                if (v325)
                {
                  break;
                }

                v56 = v324++ >= 2;
              }

              while (!v56);
              v257 = v447;
              v259 = v450;
              if (!v327)
              {
                if (*(*v447 + 28) != 15)
                {
                  sub_277AB9664(&v454, *(v448 + 268676) > 64);
                }

                v333 = *(v448 + 268676);
                if (v333 >= 65)
                {
                  sub_277AB9664(&v454, v333 > 0x80);
                }
              }

              v258 = (v448 + 245617);
              if (!v325)
              {
                v334 = *(*v447 + 100);
                if (*(*v447 + 96) < v334)
                {
                  v334 = *(*v447 + 96);
                }

                if (v334)
                {
                  v335 = v328 == 0;
                }

                else
                {
                  v335 = 0;
                }

                if (v335)
                {
                  sub_277AB9664(&v454, *v449 != *(v448 + 268676));
                }
              }
            }
          }

          if ((v258[498] & 1) == 0)
          {
            sub_277AB9664(&v454, v258[503] == 2);
          }

          if ((*v259 & 0xFD) != 0)
          {
            sub_277AB9664(&v454, *v258 == 2);
          }

          if (*(v258 + 19))
          {
            sub_277AB9664(&v454, *(v258 + 23));
          }

          if ((v258[501] & 1) == 0 && (*v259 & 0xFD) != 0 && *(*v257 + 65))
          {
            sub_277AB9664(&v454, v258[496]);
          }

          sub_277AB9664(&v454, v258[500]);
          if ((*v259 & 0xFD) != 0)
          {
            v336 = v449 + 329;
            v337 = 7;
            v338 = 312;
            do
            {
              v339 = *(v448 + 245840);
              if (v339)
              {
                v340 = (v339 + v338);
              }

              else
              {
                v340 = &xmmword_277C3A208;
              }

              v341 = *(v448 + 246109);
              v342 = *(v336 + 32);
              sub_277AB9664(&v454, *(v336 + 32) != 0);
              if (v342)
              {
                sub_277AB9664(&v454, v342 == 2);
                if (v342 == 2 || (sub_277AB9664(&v454, v342 == 1), v342 != 1))
                {
                  sub_277AB9750(&v454, 4097, (v340[2] >> 1) ^ 0x8000, (v336[2] >> 1) ^ 0x8000);
                  sub_277AB9750(&v454, 4097, v340[3] >> 1, v336[3] >> 1);
                  if (v342 >= 3)
                  {
                    sub_277AB9750(&v454, 4097, v340[4] >> 1, v336[4] >> 1);
                    sub_277AB9750(&v454, 4097, (v340[5] >> 1) ^ 0x8000, (v336[5] >> 1) ^ 0x8000);
                  }
                }

                if (v341)
                {
                  v343 = 13;
                }

                else
                {
                  v343 = 14;
                }

                if (v341)
                {
                  v344 = 513;
                }

                else
                {
                  v344 = 257;
                }

                if (v342 == 1)
                {
                  v345 = v343;
                }

                else
                {
                  v345 = 10;
                }

                if (v342 == 1)
                {
                  v346 = v344;
                }

                else
                {
                  v346 = 4097;
                }

                sub_277AB9750(&v454, v346, *v340 >> v345, *v336 >> v345);
                sub_277AB9750(&v454, v346, v340[1] >> v345, v336[1] >> v345);
              }

              v336 += 9;
              v338 += 36;
              --v337;
            }

            while (v337);
          }

          a5 = v445;
          v347 = v449;
          if (!*(v453 + 109) || !*(v448 + 246096) && !*(v448 + 246100))
          {
            goto LABEL_689;
          }

          v348 = *(v448 + 245848);
          sub_277AB9664(&v454, *(v348 + 572));
          if (!*(v348 + 572))
          {
            goto LABEL_689;
          }

          v349 = *(v348 + 1216);
          for (i25 = 17; i25 > 1; --i25)
          {
            sub_277AB9664(&v454, (v349 >> (i25 - 2)) & 1);
          }

          if (*v450 == 1)
          {
            sub_277AB9664(&v454, *(v348 + 576));
          }

          if (!*(v348 + 576))
          {
            v388 = (v448 + 245856);
            for (i26 = 1; ; ++i26)
            {
              v391 = *v388++;
              v390 = v391;
              v392 = *(v448 + 246032 + 8 * v391);
              if (*(v392 + 568) && *(v348 + 572) == *(v392 + 572) && (v393 = *(v348 + 692), v393 == *(v392 + 692)) && !memcmp((v348 + 580), (v392 + 580), 16 * v393) && (v394 = *(v348 + 776), v394 == *(v392 + 776)) && !memcmp((v348 + 696), (v392 + 696), 16 * v394) && (v395 = *(v348 + 860), v395 == *(v392 + 860)) && !memcmp((v348 + 780), (v392 + 780), 16 * v395) && *(v348 + 864) == *(v392 + 864) && (v396 = *(v348 + 868), v396 == *(v392 + 868)) && (v397 = 8 * (v396 + v396 * v396), !memcmp((v348 + 872), (v392 + 872), v397)) && !memcmp((v348 + 968), (v392 + 968), v397) && !memcmp((v348 + 1068), (v392 + 1068), v397) && *(v348 + 1168) == *(v392 + 1168) && *(v348 + 1172) == *(v392 + 1172) && *(v348 + 1176) == *(v392 + 1176) && *(v348 + 1180) == *(v392 + 1180) && *(v348 + 1184) == *(v392 + 1184) && *(v348 + 1188) == *(v392 + 1188) && *(v348 + 1192) == *(v392 + 1192) && *(v348 + 1196) == *(v392 + 1196) && *(v348 + 1200) == *(v392 + 1200) && *(v348 + 1204) == *(v392 + 1204) && *(v348 + 1208) == *(v392 + 1208))
              {
                if (i26 > 6 || *(v348 + 1212) == *(v392 + 1212))
                {
LABEL_652:
                  v398 = 4;
                  v347 = v449;
                  do
                  {
                    sub_277AB9664(&v454, (v390 >> (v398-- - 2)) & 1);
                  }

                  while (v398 > 1);
                  goto LABEL_689;
                }
              }

              else if (i26 > 6)
              {
                goto LABEL_652;
              }
            }
          }

          v351 = *(v348 + 692);
          for (i27 = 5; i27 > 1; --i27)
          {
            sub_277AB9664(&v454, (v351 >> (i27 - 2)) & 1);
          }

          if (*(v348 + 692) >= 1)
          {
            v353 = 0;
            do
            {
              v354 = (v348 + 580 + 8 * v353);
              v355 = *v354;
              for (i28 = 9; i28 > 1; --i28)
              {
                sub_277AB9664(&v454, (v355 >> (i28 - 2)) & 1);
              }

              v357 = v354[1];
              for (i29 = 9; i29 > 1; --i29)
              {
                sub_277AB9664(&v454, (v357 >> (i29 - 2)) & 1);
              }

              ++v353;
            }

            while (v353 < *(v348 + 692));
          }

          if (!*(*v447 + 77))
          {
            sub_277AB9664(&v454, *(v348 + 1208));
            v359 = *v447;
            if (!*(*v447 + 77) && !*(v348 + 1208) && (*(v359 + 96) != 1 || *(v359 + 100) != 1 || *(v348 + 692)))
            {
              v360 = *(v348 + 776);
              for (i30 = 5; i30 > 1; --i30)
              {
                sub_277AB9664(&v454, (v360 >> (i30 - 2)) & 1);
              }

              if (*(v348 + 776) >= 1)
              {
                v362 = 0;
                do
                {
                  v363 = (v348 + 696 + 8 * v362);
                  v364 = *v363;
                  for (i31 = 9; i31 > 1; --i31)
                  {
                    sub_277AB9664(&v454, (v364 >> (i31 - 2)) & 1);
                  }

                  v366 = v363[1];
                  for (i32 = 9; i32 > 1; --i32)
                  {
                    sub_277AB9664(&v454, (v366 >> (i32 - 2)) & 1);
                  }

                  ++v362;
                }

                while (v362 < *(v348 + 776));
              }

              v368 = *(v348 + 860);
              for (i33 = 5; i33 > 1; --i33)
              {
                sub_277AB9664(&v454, (v368 >> (i33 - 2)) & 1);
              }

              if (*(v348 + 860) >= 1)
              {
                v370 = 0;
                do
                {
                  v371 = (v348 + 780 + 8 * v370);
                  v372 = *v371;
                  for (i34 = 9; i34 > 1; --i34)
                  {
                    sub_277AB9664(&v454, (v372 >> (i34 - 2)) & 1);
                  }

                  v374 = v371[1];
                  for (i35 = 9; i35 > 1; --i35)
                  {
                    sub_277AB9664(&v454, (v374 >> (i35 - 2)) & 1);
                  }

                  ++v370;
                }

                while (v370 < *(v348 + 860));
              }
            }
          }

          v376 = *(v348 + 864) - 8;
          for (i36 = 3; i36 > 1; --i36)
          {
            sub_277AB9664(&v454, (v376 >> (i36 - 2)) & 1);
          }

          v378 = *(v348 + 868);
          for (i37 = 3; i37 > 1; --i37)
          {
            sub_277AB9664(&v454, (v378 >> (i37 - 2)) & 1);
          }

          v380 = *(v348 + 868) + *(v348 + 868) * *(v348 + 868);
          v381 = *(v348 + 692);
          v382 = v381 > 0;
          if (v381)
          {
            v383 = (2 * v380);
            if (v383 >= 1)
            {
              for (i38 = 0; i38 != v383; ++i38)
              {
                v385 = *(v348 + 872 + 4 * i38) + 128;
                for (i39 = 9; i39 > 1; --i39)
                {
                  sub_277AB9664(&v454, (v385 >> (i39 - 2)) & 1);
                }
              }
            }
          }

          v387 = v382 | (2 * v380);
          if (*(v348 + 776))
          {
            v347 = v449;
            if (v387 < 1)
            {
              goto LABEL_661;
            }
          }

          else
          {
            v347 = v449;
            if (!*(v348 + 1208) || v387 <= 0)
            {
              goto LABEL_661;
            }
          }

          for (i40 = 0; i40 != v387; ++i40)
          {
            v400 = *(v348 + 968 + 4 * i40) + 128;
            for (i41 = 9; i41 > 1; --i41)
            {
              sub_277AB9664(&v454, (v400 >> (i41 - 2)) & 1);
            }
          }

LABEL_661:
          if (*(v348 + 860))
          {
            if (v387 < 1)
            {
LABEL_670:
              v405 = *(v348 + 1168) - 6;
              for (i42 = 3; i42 > 1; --i42)
              {
                sub_277AB9664(&v454, (v405 >> (i42 - 2)) & 1);
              }

              v407 = *(v348 + 1212);
              for (i43 = 3; i43 > 1; --i43)
              {
                sub_277AB9664(&v454, (v407 >> (i43 - 2)) & 1);
              }

              if (*(v348 + 776))
              {
                v409 = *(v348 + 1172);
                for (i44 = 9; i44 > 1; --i44)
                {
                  sub_277AB9664(&v454, (v409 >> (i44 - 2)) & 1);
                }

                v411 = *(v348 + 1176);
                for (i45 = 9; i45 > 1; --i45)
                {
                  sub_277AB9664(&v454, (v411 >> (i45 - 2)) & 1);
                }

                v413 = *(v348 + 1180);
                for (i46 = 10; i46 > 1; --i46)
                {
                  sub_277AB9664(&v454, (v413 >> (i46 - 2)) & 1);
                }
              }

              if (*(v348 + 860))
              {
                v415 = *(v348 + 1184);
                for (i47 = 9; i47 > 1; --i47)
                {
                  sub_277AB9664(&v454, (v415 >> (i47 - 2)) & 1);
                }

                v417 = *(v348 + 1188);
                for (i48 = 9; i48 > 1; --i48)
                {
                  sub_277AB9664(&v454, (v417 >> (i48 - 2)) & 1);
                }

                v419 = *(v348 + 1192);
                for (i49 = 10; i49 > 1; --i49)
                {
                  sub_277AB9664(&v454, (v419 >> (i49 - 2)) & 1);
                }
              }

              sub_277AB9664(&v454, *(v348 + 1196));
              sub_277AB9664(&v454, *(v348 + 1200));
LABEL_689:
              if (v347[544])
              {
                v421 = DWORD2(v454);
                if ((BYTE8(v454) & 7) != 0)
                {
                  v422 = 7 - BYTE8(v454);
                  v423 = 9 - (BYTE8(v454) & 7);
                  do
                  {
                    if (v421 >= 0)
                    {
                      v424 = v421;
                    }

                    else
                    {
                      v424 = v421 + 7;
                    }

                    v425 = v424 & 0xFFFFFFF8;
                    v426 = v424 >> 3;
                    if (v421 == v425)
                    {
                      LOBYTE(v427) = 0;
                    }

                    else
                    {
                      v427 = *(v454 + v426) & ~(1 << (v422 + v425));
                    }

                    *(v454 + v426) = v427;
                    DWORD2(v454) = ++v421;
                    --v422;
                    --v423;
                  }

                  while (v423 > 1);
                }

                *a3 = v454;
                if (v347[399] * v347[400] >= 2)
                {
                  v428 = 7 - v421;
                  for (i50 = 3; i50 > 1; --i50)
                  {
                    if (v421 >= 0)
                    {
                      v430 = v421;
                    }

                    else
                    {
                      v430 = v421 + 7;
                    }

                    v431 = v430 & 0xFFFFFFF8;
                    v432 = v430 >> 3;
                    if (v421 == v431)
                    {
                      LOBYTE(v433) = 0;
                    }

                    else
                    {
                      v433 = *(v454 + v432) & ~(1 << (v428 + v431));
                    }

                    *(v454 + v432) = v433;
                    DWORD2(v454) = ++v421;
                    --v428;
                  }

                  for (i51 = 3; i51 > 1; --i51)
                  {
                    if (v421 >= 0)
                    {
                      v435 = v421;
                    }

                    else
                    {
                      v435 = v421 + 7;
                    }

                    v436 = v435 & 0xFFFFFFF8;
                    v437 = v435 >> 3;
                    if (v421 == v436)
                    {
                      LOBYTE(v438) = 0;
                    }

                    else
                    {
                      v438 = *(v454 + v437) & ~(1 << (v428 + v436));
                    }

                    *(v454 + v437) = v438;
                    DWORD2(v454) = ++v421;
                    --v428;
                  }
                }
              }

              goto LABEL_716;
            }
          }

          else if (!*(v348 + 1208) || v387 <= 0)
          {
            goto LABEL_670;
          }

          for (i52 = 0; i52 != v387; ++i52)
          {
            v403 = *(v348 + 1068 + 4 * i52) + 128;
            for (i53 = 9; i53 > 1; --i53)
            {
              sub_277AB9664(&v454, (v403 >> (i53 - 2)) & 1);
            }
          }

          goto LABEL_670;
        }
      }

      sub_277AB9664(&v454, v206);
      v204 = *(v448 + 246240);
      goto LABEL_332;
    }

LABEL_89:
    if (v11[8] == 255)
    {
      goto LABEL_98;
    }

    goto LABEL_90;
  }

  if (!*(a1 + 246104) || *(a1 + 246118) == 1 && *v7)
  {
    *a4 = 0;
    DWORD2(v454) = 1;
    v13 = *v7;
    for (i54 = 3; i54 > 1; --i54)
    {
      sub_277AB9664(&v454, (v13 >> (i54 - 2)) & 1);
    }

    sub_277AB9664(&v454, *(v7 + 120));
    if (*(v7 + 120))
    {
      if (*(v453 + 268))
      {
        if (!*(v453 + 260))
        {
          v15 = *(*v447 + 284);
          if (v15 >= 1)
          {
            v16 = *(v7 + 54);
            v17 = v15 + 1;
            do
            {
              sub_277AB9664(&v454, (v16 >> (v17-- - 2)) & 1);
            }

            while (v17 > 1);
          }
        }
      }
    }

    else
    {
      sub_277AB9664(&v454, *(v7 + 121));
    }

    if (*v7 != 3 && (*v7 || !*(v7 + 120)))
    {
      sub_277AB9664(&v454, v7[502]);
    }

    goto LABEL_6;
  }

  sub_277AB9664(&v454, 1);
  v23 = *(a1 + 643472);
  for (i55 = 4; i55 > 1; --i55)
  {
    sub_277AB9664(&v454, (v23 >> (i55 - 2)) & 1);
  }

  if (*(v453 + 268))
  {
    if (!*(v453 + 260))
    {
      v25 = *(*v447 + 284);
      if (v25 >= 1)
      {
        v26 = *(v7 + 54);
        v27 = v25 + 1;
        do
        {
          sub_277AB9664(&v454, (v26 >> (v27-- - 2)) & 1);
        }

        while (v27 > 1);
      }
    }
  }

  if (*(v453 + 16))
  {
    v28 = *(v453 + 20);
    if (v28 >= 1)
    {
      v29 = *(a1 + 4 * *(a1 + 643472) + 270996);
      v30 = v28 + 1;
      do
      {
        sub_277AB9664(&v454, (v29 >> (v30-- - 2)) & 1);
      }

      while (v30 > 1);
    }
  }

LABEL_716:
  if (a5)
  {
    if ((BYTE8(v454) & 7) != 0)
    {
      sub_277AB9664(&v454, 1);
    }

    else
    {
      for (i56 = 9; i56 > 1; --i56)
      {
        sub_277AB9664(&v454, i56 == 9);
      }
    }
  }

  v440 = DWORD2(v454) >> 3;
  if ((BYTE8(v454) & 7) != 0)
  {
    return v440 + 1;
  }

  else
  {
    return v440;
  }
}

uint64_t *sub_2779FF08C(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2)
  {
    v5 = *(a1 + 76);
    v6 = *(a1 + 24696);
    v7 = v6[1];
    if (*v6 >= 1)
    {
      v8 = *(a1 + 72) - 1;
      v9 = *v6 + 1;
      do
      {
        sub_277AB9664(a3, (v8 >> (v9-- - 2)) & 1);
      }

      while (v9 > 1);
    }

    if (v7 >= 1)
    {
      v10 = v5 - 1;
      v11 = v7 + 1;
      do
      {
        sub_277AB9664(a3, (v10 >> (v11-- - 2)) & 1);
      }

      while (v11 > 1);
    }
  }

  if (*(*(a1 + 24696) + 66))
  {
    if (*(a1 + 80) == 8)
    {
      sub_277AB9664(a3, 0);
    }

    else
    {
      sub_277AB9664(a3, 1);
      v12 = *(a1 + 80) - 9;
      for (i = 4; i > 1; --i)
      {
        sub_277AB9664(a3, (v12 >> (i - 2)) & 1);
      }
    }
  }

  if (*(a1 + 72) == *(a1 + 64))
  {
    v14 = *(a1 + 76);
    v15 = *(a1 + 68);
    result = sub_277AB9664(a3, v14 != v15);
    if (v14 == v15)
    {
      return result;
    }
  }

  else
  {
    sub_277AB9664(a3, 1);
  }

  v17 = *(a1 + 64) - 1;
  for (j = 17; j > 1; --j)
  {
    sub_277AB9664(a3, (v17 >> (j - 2)) & 1);
  }

  v19 = *(a1 + 68) - 1;
  for (k = 17; k > 1; --k)
  {
    result = sub_277AB9664(a3, (v19 >> (k - 2)) & 1);
  }

  return result;
}

uint64_t sub_2779FF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v6 = *(a3 + 72);
  v7 = *(a3 + 76);
  v8 = *(a3 + 24);
  v9 = *(a1 + 270312);
  v10 = *(v9 + 36);
  v11 = *(a1 + 4 * v7 + 270400) << v10;
  v12 = *(a1 + 246148);
  if (v11 >= *(a1 + 246152))
  {
    v11 = *(a1 + 246152);
  }

  v25[2] = *(a1 + 4 * v7 + 270396) << v10;
  v25[3] = v11;
  v13 = *(a1 + 4 * v6 + 270656) << v10;
  v14 = *(a1 + 4 * v6 + 270660) << v10;
  v25[4] = v6;
  v25[5] = v7;
  if (v14 >= v12)
  {
    v14 = v12;
  }

  v25[0] = v13;
  v25[1] = v14;
  LOBYTE(v29) = *(a1 + 246108) ^ 1;
  if (*(v9 + 77))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  v16 = 8692;
  v17 = 8620;
  v18 = 8592;
  do
  {
    v19 = (a2 + v18);
    v19[2] = 0xFFEA000FFFF90003;
    *v19 = 0xFFEA000FFFF90003;
    v20 = (a2 + v17);
    *(v20 - 1) = -458737;
    *(v20 - 9) = 262137;
    *(a2 + v16) = 0x1FFFFFFFE0;
    v16 += 12;
    *(v20 - 10) = 15;
    v17 += 32;
    v18 += 32;
    *v20 = 3;
    --v15;
  }

  while (v15);
  v21 = *(a3 + 32);
  v22 = *v8;
  *(a3 + 8) = v21 + v22;
  if (!*(a3 + 80))
  {
    v22 = (v22 + 4);
    *v8 = v22;
  }

  *(&v26 + 1) = v21 + v22;
  LODWORD(v26) = 0;
  *&v28 = 0;
  *(&v28 + 1) = 4294410240;
  *&v27 = malloc_type_malloc(0xF249uLL, 0x100004077774924uLL);
  *(&v27 + 1) = 62025;
  if (!v27)
  {
    DWORD2(v27) = 0;
    HIDWORD(v28) = -1;
  }

  sub_2779FF434(a1, a2, v25, &v26, v6, v7);
  result = sub_2779F59CC(&v26);
  if ((result & 0x80000000) != 0)
  {
    result = sub_2779F5C10(*(a2 + 11152), 1, "Error writing modes");
  }

  v24 = v26;
  *(a3 + 16) = v26;
  if (!*(a3 + 80))
  {
    **(a3 + 8) = v24 - 1;
  }

  return result;
}

void sub_2779FF434(void *a1, uint64_t a2, int *a3, uint64_t a4, int a5, int a6)
{
  v43 = a1 + 62042;
  v8 = a1 + 33750;
  v9 = a1 + 30698;
  v10 = *a3;
  v11 = a3[2];
  v12 = a1[33789];
  v13 = *(v12 + 77);
  v15 = a3[4];
  v44 = a3[1];
  v45 = a3[3];
  v16 = (v45 - v11 + ~(-1 << *(v12 + 36))) & (-1 << *(v12 + 36));
  v17 = *(v12 + 96);
  v40 = v11;
  v42 = v11;
  bzero((*(a1[33868] + 8 * v15) + v11), v16);
  v37 = v13;
  if (v13)
  {
    v18 = 1;
  }

  else
  {
    v19 = *(v8[119] + 8 * v15);
    if (v19 && *(v8[120] + 8 * v15))
    {
      bzero((v19 + (v42 >> v17)), v16 >> v17);
      bzero((*(v8[120] + 8 * v15) + (v42 >> v17)), v16 >> v17);
    }

    else
    {
      sub_2779F5C10(*(a2 + 11152), 7, "Invalid value of planes", v13);
    }

    v18 = 3;
  }

  bzero((*(v8[117] + 8 * v15) + v40), v16);
  memset((*(v8[121] + 8 * v15) + v40), 64, v16);
  v20 = a3;
  v21 = a3[4];
  v22 = 8384;
  v23 = 33868;
  do
  {
    *(a2 + v22) = *(a1[v23] + 8 * v21);
    v22 += 8;
    ++v23;
    --v18;
  }

  while (v18);
  *(a2 + 8504) = *(v8[117] + 8 * v21);
  *(a2 + 8544) = *(v8[121] + 8 * v21);
  v24 = v45;
  if (*v8)
  {
    *(a2 + 11140) = *(v9 + 162);
    if (*(v8 + 2))
    {
      *(a2 + 11168) = 0;
      if (v37)
      {
        v25 = 2;
      }

      else
      {
        v25 = 4;
      }

      bzero((a2 + 11169), v25);
      v24 = v45;
      v20 = a3;
    }
  }

  v26 = v42;
  if (v10 < v44)
  {
    v27 = (a2 + 8408);
    v28 = (a2 + 8512);
    v29 = (a2 + 8560);
    v30 = v8[39];
    v31 = 0uLL;
    *&v32 = 0x4040404040404040;
    *(&v32 + 1) = 0x4040404040404040;
    do
    {
      v33 = *v20;
      v34 = *(v30 + 36);
      v46 = 0;
      if (a1[57946] && *v43)
      {
        v46 = *(v43[64 * a5 + a6] + 16 * ((v10 - v33) >> v34));
      }

      v27[4] = v31;
      v27[5] = v31;
      v27[2] = v31;
      v27[3] = v31;
      *v27 = v31;
      v27[1] = v31;
      *v28 = v31;
      v28[1] = v31;
      *v29 = v32;
      v29[1] = v32;
      v30 = v8[39];
      if (v24 <= v26)
      {
        v36 = *(v30 + 32);
      }

      else
      {
        v35 = v26;
        do
        {
          *(a2 + 16784) = *v9 + 72 * ((v35 >> *(v30 + 36)) + ((*(v9 + 142) + ~(-1 << *(v30 + 36))) >> *(v30 + 36)) * (v10 >> *(v30 + 36)));
          sub_2779FF7B4(a1, a2, a3, a4, &v46, v10, v35, *(v30 + 28));
          v24 = v45;
          v30 = v8[39];
          v36 = *(v30 + 32);
          v35 += v36;
        }

        while (v35 < v45);
        v20 = a3;
        v26 = v42;
        v28 = (a2 + 8512);
        v27 = (a2 + 8408);
        v29 = (a2 + 8560);
        v31 = 0uLL;
        *&v32 = 0x4040404040404040;
        *(&v32 + 1) = 0x4040404040404040;
      }

      v10 = (v36 + v10);
    }

    while (v10 < v44);
  }
}

void sub_2779FF7B4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, void *a5, uint64_t a6, int a7, int a8)
{
  v8 = *(a1 + 246148);
  if (v8 <= a6)
  {
    return;
  }

  v9 = *(a1 + 246152);
  if (v9 <= a7)
  {
    return;
  }

  v11 = byte_277C3F990[a8];
  v157 = v11 >> 1;
  v12 = *(a1 + 246196);
  v13 = (*(a1 + 246184) + 8 * (a7 + v12 * a6));
  v14 = **v13;
  v155 = a8;
  v152 = (a1 + 246148);
  if (v14 == a8)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v16 = byte_277C36D60[a8];
  v17 = byte_277C36D60[v14];
  v18 = byte_277C3F990[v14];
  if (a8 < 4 || v157 + a6 >= v8 || (a7 + (v16 >> 1)) >= v9)
  {
    v20 = (v17 < v16) | (2 * (v18 < v11));
    if (!v20)
    {
      v156 = 255;
      goto LABEL_23;
    }

    v15 = byte_277C31424[v20];
  }

  else
  {
    v19 = v13[(v16 >> 1) * v12];
    if (v18 == v11)
    {
      if (v16 == 4 * v17)
      {
        v15 = 8;
      }

      else if (*v19 == v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = 5;
      }
    }

    else
    {
      v140 = v13[v157];
      if (v17 == v16)
      {
        if (v11 == 4 * v18)
        {
          v15 = 9;
          goto LABEL_13;
        }

        v146 = *v140 == v14;
        v147 = 7;
        v148 = 2;
      }

      else
      {
        if (v11 != 2 * v18 || 2 * v17 != v16)
        {
          v15 = 3;
          goto LABEL_13;
        }

        if (byte_277C3F990[*v19] == v11)
        {
          v15 = 4;
          goto LABEL_13;
        }

        v146 = byte_277C36D60[*v140] == v16;
        v147 = 3;
        v148 = 6;
      }

      if (v146)
      {
        v15 = v148;
      }

      else
      {
        v15 = v147;
      }
    }
  }

LABEL_13:
  v156 = v15;
  if (a8 > 8)
  {
    switch(a8)
    {
      case 9:
        v21 = 3;
        goto LABEL_28;
      case 12:
        v21 = 4;
        goto LABEL_28;
      case 15:
        v21 = 5;
        goto LABEL_28;
    }
  }

  else
  {
    switch(a8)
    {
      case 0:
        v21 = 0;
        goto LABEL_28;
      case 3:
        v21 = 1;
        goto LABEL_28;
      case 6:
        v21 = 2;
LABEL_28:
        v22 = *(&unk_277C31428 + 6 * v15 + v21);
        goto LABEL_29;
    }
  }

LABEL_23:
  v22 = 255;
LABEL_29:
  v149 = v22;
  v23 = 0;
  __len = byte_277C3F990[a8];
  v151 = v11 >> 2;
  v165 = *(*(a1 + 270312) + 77);
  v164 = a1 + 268672;
  v159 = a2 + 8592;
  v158 = a2 + 8688;
  do
  {
    v175 = 0;
    *v176 = 0;
    v166 = v23;
    v24 = v164 + (v23 << 6);
    if (*v24)
    {
      if (sub_2779F8C28(a1 + 245616, v23, a6, a7, a8, &v176[1], v176, &v175 + 1, &v175))
      {
        v170 = SHIDWORD(v175);
        v168 = v175;
        if (SHIDWORD(v175) < v175)
        {
          v167 = *(v24 + 16);
          if (v166)
          {
            v25 = 5;
          }

          else
          {
            v25 = 7;
          }

          v172 = v25;
          v171 = v158 + 12 * v166;
          v26 = v176[0];
          v169 = v176[1];
          v173 = v176[0];
          while (v169 >= v26)
          {
LABEL_90:
            if (++v170 >= v168)
            {
              goto LABEL_91;
            }
          }

          v27 = v169;
          while (1)
          {
            v28 = *(v24 + 24) + (v27 << 6) + ((v170 * v167) << 6);
            v29 = *v24;
            v30 = *v28;
            if (*v24 == 1)
            {
              break;
            }

            if (v29 == 2)
            {
              v41 = *(a2 + 11064);
              sub_277A650D4(a4 + 16, v30 != 0, v41 + 12720, 2);
              if (*(a4 + 48))
              {
                v42 = *(v41 + 12724);
                v43 = (v42 >> 4) + 4;
                v44 = *(v41 + 12720);
                v45 = v44 - (v44 >> v43);
                v46 = v44 + ((0x8000 - v44) >> v43);
                if (!v30)
                {
                  LOWORD(v46) = v45;
                }

                *(v41 + 12720) = v46;
                if (v42 < 0x20)
                {
                  LOWORD(v42) = v42 + 1;
                }

                *(v41 + 12724) = v42;
              }

              if (!v30)
              {
                goto LABEL_89;
              }

              v47 = (v28 + 48);
              v48 = *(v28 + 48);
              for (i = 5; i > 1; --i)
              {
                v50 = *(a4 + 40);
                v51 = (v50 >> 1) & 0x7F80 | 4;
                v52 = 1 << (i - 2);
                v53 = v50 - v51;
                v54 = (v48 & v52) == 0;
                if ((v48 & v52) != 0)
                {
                  v55 = v53;
                }

                else
                {
                  v55 = 0;
                }

                if (v54)
                {
                  v56 = v53;
                }

                else
                {
                  v56 = v51;
                }

                sub_277A64F90((a4 + 16), *(a4 + 32) + v55, v56);
              }

              goto LABEL_85;
            }

            if (v29 == 3)
            {
              v31 = *(a2 + 11064);
              v32 = v31 + 12706;
              sub_277A650D4(a4 + 16, *v28, v31 + 12706, 3);
              if (*(a4 + 48))
              {
                v33 = 0;
                v34 = 0;
                v35 = *(v31 + 12712);
                v36 = (v35 >> 4) + 4;
                do
                {
                  v37 = *(v32 + 2 * v34);
                  v38 = v33;
                  v39 = v37 - (v37 >> v36);
                  v40 = v37 + ((0x8000 - v37) >> v36);
                  if (v34 < v30)
                  {
                    LOWORD(v39) = v40;
                  }

                  *(v32 + 2 * v34) = v39;
                  v33 = 1;
                  v34 = 1;
                }

                while ((v38 & 1) == 0);
                if (v35 < 0x20)
                {
                  LOWORD(v35) = v35 + 1;
                }

                *(v31 + 12712) = v35;
              }

              if (v30 == 2)
              {
                v47 = (v28 + 48);
                v63 = *(v28 + 48);
                for (j = 5; j > 1; --j)
                {
                  v65 = *(a4 + 40);
                  v66 = (v65 >> 1) & 0x7F80 | 4;
                  v67 = 1 << (j - 2);
                  v68 = v65 - v66;
                  v69 = (v63 & v67) == 0;
                  if ((v63 & v67) != 0)
                  {
                    v70 = v68;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if (v69)
                  {
                    v71 = v68;
                  }

                  else
                  {
                    v71 = v66;
                  }

                  sub_277A64F90((a4 + 16), *(a4 + 32) + v70, v71);
                }

LABEL_85:
                v72 = (&unk_277C3C250 + 16 * *v47);
                if (!*v72 || (v73 = v72[1], sub_2779915E8(a4, 0x80u, 4, (*(v171 + 4) + 96), (*(v28 + 52) + 96)), v73))
                {
                  sub_2779915E8(a4, 0x80u, 4, (*(v171 + 8) + 32), (*(v28 + 56) + 32));
                }

                v74 = *v47;
                *(v171 + 8) = v47[2];
                *v171 = v74;
                v26 = v173;
                goto LABEL_89;
              }

              v26 = v173;
              if (v30 == 1)
              {
                goto LABEL_76;
              }
            }

LABEL_89:
            if (++v27 >= v26)
            {
              goto LABEL_90;
            }
          }

          v57 = *(a2 + 11064);
          sub_277A650D4(a4 + 16, v30 != 0, v57 + 12714, 2);
          if (*(a4 + 48))
          {
            v58 = *(v57 + 12718);
            v59 = (v58 >> 4) + 4;
            v60 = *(v57 + 12714);
            v61 = v60 - (v60 >> v59);
            v62 = v60 + ((0x8000 - v60) >> v59);
            if (!v30)
            {
              LOWORD(v62) = v61;
            }

            *(v57 + 12714) = v62;
            if (v58 < 0x20)
            {
              LOWORD(v58) = v58 + 1;
            }

            *(v57 + 12718) = v58;
          }

          if (!v30)
          {
            goto LABEL_89;
          }

LABEL_76:
          sub_277A007C0(v172, (v28 + 16), (v159 + 32 * v166), a4);
          goto LABEL_89;
        }
      }
    }

LABEL_91:
    if (v165)
    {
      break;
    }

    v23 = v166 + 1;
  }

  while (v166 < 2);
  if (a8 < 3)
  {
    goto LABEL_120;
  }

  v75 = v157 + a6;
  v76 = v157 + a7;
  v78 = *v152;
  v77 = v152[1];
  v79 = *(a2 + 11064);
  if (v157 + a6 >= *v152 && v76 >= v77)
  {
    goto LABEL_120;
  }

  v80 = (*(*(a2 + 8504) + a7) >> (byte_277C42228[v155] - 1)) & 1 | (2 * ((*(a2 + (a6 & 0x1F) + 8512) >> (byte_277C42228[v155] - 1)) & 1)) | (4 * (byte_277C42228[v155] - 1));
  if (v75 >= v78 || v76 >= v77)
  {
    v91 = (v79 + 22 * v80 + 13618);
    if (v75 < v78 || v76 >= v77)
    {
      v92 = ((v91[1] - *v91) ^ 0x8000) - v91[2] + v91[6];
      v93 = v156;
      if (a8 != 15)
      {
        v94 = v91[7];
        v95 = v91[8];
        goto LABEL_118;
      }
    }

    else
    {
      v92 = v91[4] - v91[1] - v91[5] + v91[7] + 0x8000;
      v93 = v156;
      if (a8 != 15)
      {
        v94 = v91[8];
        v95 = v91[9];
LABEL_118:
        v92 = v92 - v94 + v95;
      }
    }

    v176[1] = (0x8000 - v92);
    sub_277A650D4(a4 + 16, v93 == 3, &v176[1], 2);
    goto LABEL_120;
  }

  v81 = v79 + 22 * v80 + 13618;
  if (a8 == 15)
  {
    v82 = 8;
  }

  else
  {
    v82 = 10;
  }

  if (a8 == 3)
  {
    v83 = 4;
  }

  else
  {
    v83 = v82;
  }

  sub_277A650D4(a4 + 16, v156, v79 + 22 * v80 + 13618, v83);
  if (*(a4 + 48))
  {
    v84 = 0;
    v85 = *(v81 + 2 * v83);
    v86 = (v85 >> 4) + 5;
    do
    {
      v87 = *(v81 + 2 * v84);
      v88 = v87 - (v87 >> v86);
      v89 = v87 + ((0x8000 - v87) >> v86);
      if (v84 >= v156)
      {
        LOWORD(v89) = v88;
      }

      *(v81 + 2 * v84++) = v89;
    }

    while (v83 - 1 != v84);
    v90 = *(v81 + 2 * v83);
    if (v85 < 0x20)
    {
      ++v90;
    }

    *(v81 + 2 * v83) = v90;
  }

LABEL_120:
  v96 = v156;
  if (v156 > 4)
  {
    if (v156 <= 6)
    {
      if (v156 != 5)
      {
        sub_277A008FC(a1, a2, a3, a4, a5, a6, a7);
        sub_277A008FC(a1, a2, a3, a4, a5, v157 + a6, a7);
        v105 = v157 + a7;
        v98 = a1;
        v99 = a2;
        v102 = a3;
        v103 = a4;
        v104 = a5;
        v97 = a6;
LABEL_147:
        sub_277A008FC(v98, v99, v102, v103, v104, v97, v105);
        goto LABEL_148;
      }

      v106 = a6;
      v107 = a1;
      v108 = a2;
      sub_277A008FC(a1, a2, a3, a4, a5, a6, a7);
      v109 = v157;
      v110 = v157 + a6;
      v111 = a1;
      v112 = a2;
      v113 = a3;
      v114 = a4;
      v115 = a5;
      v116 = a7;
    }

    else
    {
      if (v156 != 7)
      {
        if (v156 == 8)
        {
          v119 = 4;
          v120 = a6;
          do
          {
            if (v119 != 4 && v120 >= *v152)
            {
              break;
            }

            sub_277A008FC(a1, a2, a3, a4, a5, v120, a7);
            v120 += v151;
            --v119;
          }

          while (v119);
        }

        else if (v156 == 9)
        {
          v100 = 4;
          v101 = a7;
          do
          {
            if (v100 != 4 && v101 >= v152[1])
            {
              break;
            }

            sub_277A008FC(a1, a2, a3, a4, a5, a6, v101);
            v101 += v151;
            --v100;
          }

          while (v100);
        }

        goto LABEL_148;
      }

      v106 = a6;
      v107 = a1;
      v108 = a2;
      sub_277A008FC(a1, a2, a3, a4, a5, a6, a7);
      v109 = v157;
      v116 = v157 + a7;
      v111 = a1;
      v112 = a2;
      v113 = a3;
      v114 = a4;
      v115 = a5;
      v110 = a6;
    }

    sub_277A008FC(v111, v112, v113, v114, v115, v110, v116);
    v97 = v109 + v106;
    v105 = v109 + a7;
    v98 = v107;
    v99 = v108;
    v102 = a3;
    v103 = a4;
    v104 = a5;
    goto LABEL_147;
  }

  if (v156 <= 1)
  {
    if (v156)
    {
      sub_277A008FC(a1, a2, a3, a4, a5, a6, a7);
      v97 = v157 + a6;
      if (v157 + a6 >= *v152)
      {
        goto LABEL_148;
      }

      v98 = a1;
      v99 = a2;
LABEL_137:
      v102 = a3;
      v103 = a4;
      v104 = a5;
    }

    else
    {
      v97 = a6;
      v98 = a1;
      v99 = a2;
      v102 = a3;
      v103 = a4;
      v104 = a5;
    }

    v105 = a7;
    goto LABEL_147;
  }

  if (v156 == 2)
  {
    sub_277A008FC(a1, a2, a3, a4, a5, a6, a7);
    v105 = v157 + a7;
    if (v157 + a7 >= v152[1])
    {
      goto LABEL_148;
    }

    v97 = a6;
    v98 = a1;
    v99 = a2;
    v102 = a3;
    v103 = a4;
    v104 = a5;
    goto LABEL_147;
  }

  if (v156 != 3)
  {
    sub_277A008FC(a1, a2, a3, a4, a5, a6, a7);
    sub_277A008FC(a1, a2, a3, a4, a5, a6, v157 + a7);
    v97 = v157 + a6;
    v98 = a1;
    v99 = a2;
    goto LABEL_137;
  }

  sub_2779FF7B4(a1, a2, a3, a4, a5, a6, a7, v149);
  sub_2779FF7B4(a1, a2, a3, a4, a5, a6, (v157 + a7), v149);
  sub_2779FF7B4(a1, a2, a3, a4, a5, (v157 + a6), a7, v149);
  v96 = 3;
  sub_2779FF7B4(a1, a2, a3, a4, a5, (v157 + a6), (v157 + a7), v149);
LABEL_148:
  if (a8 < 3)
  {
    return;
  }

  v117 = 255;
  if (a8 <= 8)
  {
    if (a8 == 3)
    {
      v118 = 1u;
    }

    else
    {
      if (a8 != 6)
      {
        goto LABEL_167;
      }

      v118 = 2u;
    }

    goto LABEL_166;
  }

  switch(a8)
  {
    case 9:
      v118 = 3u;
LABEL_166:
      v117 = *(&unk_277C31428 + v118 + 18);
      break;
    case 12:
      v118 = 4u;
      goto LABEL_166;
    case 15:
      v118 = 5u;
      goto LABEL_166;
  }

LABEL_167:
  v121 = __len >> 1;
  if (v96 > 4)
  {
    if (v96 <= 7)
    {
      if (v96 == 5)
      {
        v141 = byte_277C3F990[v149];
        v123 = byte_277C36D60[v149];
        v142 = &unk_277BED7FE + 2 * v149;
        memset((*(a2 + 8504) + a7), *v142, v141);
        memset((a2 + 8512 + (a6 & 0x1F)), v142[1], v123);
        v143 = &unk_277BED7FE + 2 * v117;
        memset((*(a2 + 8504) + a7), *v143, v141);
        v127 = v143[1];
        v128 = (a2 + 8512 + ((v121 + a6) & 0x1F));
LABEL_181:
        v139 = v123;
      }

      else
      {
        if (v96 == 6)
        {
          v129 = a6 & 0x1F;
          v130 = a2 + 8512;
          v131 = byte_277C3F990[v149];
          v132 = byte_277C36D60[v149];
          v144 = &unk_277BED7FE + 2 * v117;
          memset((*(a2 + 8504) + a7), *v144, v131);
          memset((a2 + 8512 + v129), v144[1], v132);
          v134 = v121 + a7;
          v135 = *(a2 + 8504);
          v136 = &unk_277BED7FE + 2 * v149;
        }

        else
        {
          v129 = a6 & 0x1F;
          v130 = a2 + 8512;
          v131 = byte_277C3F990[v149];
          v132 = byte_277C36D60[v149];
          v133 = &unk_277BED7FE + 2 * v149;
          memset((*(a2 + 8504) + a7), *v133, v131);
          memset((a2 + 8512 + v129), v133[1], v132);
          v134 = v121 + a7;
          v135 = *(a2 + 8504);
          v136 = &unk_277BED7FE + 2 * v117;
        }

        memset((v135 + v134), *v136, v131);
        v127 = v136[1];
        v128 = (v130 + v129);
        v139 = v132;
      }

      goto LABEL_184;
    }

    if ((v96 - 8) >= 2)
    {
      return;
    }

LABEL_176:
    v137 = byte_277C36D60[v155];
    v138 = &unk_277BED7FE + 2 * v149;
    memset((*(a2 + 8504) + a7), *v138, __len);
    v127 = v138[1];
    v128 = (a2 + 8512 + (a6 & 0x1F));
    v139 = v137;
LABEL_184:

    memset(v128, v127, v139);
    return;
  }

  if (v96 < 3)
  {
    goto LABEL_176;
  }

  if (v96 != 3)
  {
    v122 = byte_277C3F990[v149];
    v123 = byte_277C36D60[v149];
    v124 = &unk_277BED7FE + 2 * v117;
    memset((*(a2 + 8504) + a7), *v124, v122);
    memset((a2 + 8512 + (a6 & 0x1F)), v124[1], v123);
    v125 = (v121 + a6) & 0x1F;
    v126 = &unk_277BED7FE + 2 * v149;
    memset((*(a2 + 8504) + a7), *v126, v122);
    v127 = v126[1];
    v128 = (a2 + 8512 + v125);
    goto LABEL_181;
  }

  if (a8 == 3)
  {
    goto LABEL_176;
  }
}

__n128 sub_277A007C0(int a1, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a1 == 7)
  {
    sub_2779915E8(a4, 0x10u, 1, (*a3 + 5), (*a2 + 5));
  }

  sub_2779915E8(a4, 0x20u, 2, (a3[1] + 23), (a2[1] + 23));
  sub_2779915E8(a4, 0x40u, 3, (a3[2] + 17), (a2[2] + 17));
  if (a1 == 7)
  {
    sub_2779915E8(a4, 0x10u, 1, (a3[8] + 5), (a2[8] + 5));
  }

  sub_2779915E8(a4, 0x20u, 2, (a3[9] + 23), (a2[9] + 23));
  sub_2779915E8(a4, 0x40u, 3, (a3[10] + 17), (a2[10] + 17));
  result = *a2;
  v9 = *(a2 + 1);
  *a3 = *a2;
  *(a3 + 1) = v9;
  return result;
}

uint64_t sub_277A008FC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, void *a5, int a6, int a7)
{
  v7 = a4;
  v8 = a1;
  v672 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 11064);
  v10 = *(a1 + 246196);
  v11 = v10 * a6 + a7;
  v12 = (*(a1 + 246184) + 8 * v11);
  *(a2 + 8280) = v12;
  v13 = *(a1 + 245568);
  v14 = byte_277C3F990[*(a1 + 246176)];
  v15 = a7 / v14 + a6 / v14 * *(a1 + 245580);
  v654 = (v13 + 84 * v15);
  *(a2 + 16760) = v654;
  *(a2 + 8328) = *(a1 + 246200) + v11;
  *(a2 + 8336) = v10;
  v16 = *v12;
  v17 = **v12;
  v18 = byte_277C36D60[v17];
  v19 = byte_277C3F990[v17];
  v20 = *(a1 + 246148);
  v611 = a1 + 245568;
  LODWORD(v11) = *(a1 + 246152);
  *(a2 + 8348) = -32 * a6;
  *(a2 + 8352) = 32 * (v20 - a6 - v18);
  *(a2 + 8340) = -32 * a7;
  v621 = v19;
  v21 = v19 + a7;
  *(a2 + 8344) = 32 * (v11 - (v19 + a7));
  *(a2 + 416) = a6;
  *(a2 + 420) = a7;
  v22 = *a3;
  v23 = *a3 < a6;
  *(a2 + 8288) = v23;
  v24 = *(a2 + 3044);
  v25 = *(a2 + 3048);
  v26 = a3[2];
  v27 = v26 < a7;
  *(a2 + 8289) = v27;
  *(a2 + 8290) = v23;
  if (!((0x3EFFFCuLL >> v17) & 1 | (v24 == 0)))
  {
    v27 = a7 - 1 > v26;
  }

  *(a2 + 8291) = v27;
  if (((0x20005uLL >> v17) & 1) != 0 && v25)
  {
    v23 = a6 - 1 > v22;
    *(a2 + 8290) = v23;
  }

  if (v22 >= a6)
  {
    v28 = 0;
  }

  else
  {
    v28 = v12[-*(a2 + 424)];
  }

  *(a2 + 8304) = v28;
  if (v26 >= a7)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v12 - 1);
  }

  *(a2 + 8296) = v29;
  if ((a6 & 1) == 0 && (v18 & 1) != 0 && v25)
  {
    *(a2 + 428) = 0;
  }

  else
  {
    if ((a7 & 1) != 0 || (v621 & 1) == 0)
    {
      *(a2 + 428) = 1;
    }

    else
    {
      *(a2 + 428) = v24 == 0;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    v30 = *(a2 + 424);
    v31 = &v12[-(v24 & a7) - v30 * (v25 & a6)];
    if (v23)
    {
      v32 = v31[v24 - v30];
    }

    else
    {
      v32 = 0;
    }

    *(a2 + 8320) = v32;
    if (v27)
    {
      v33 = v31[v30 * v25 - 1];
    }

    else
    {
      v33 = 0;
    }

    *(a2 + 8312) = v33;
  }

LABEL_28:
  *(a2 + 8725) = v18;
  v616 = a1 + 269336;
  *(a2 + 8724) = v621;
  *(a2 + 11048) = 0;
  if (v621 < v18 && (v21 & (v18 - 1)) == 0)
  {
    *(a2 + 11048) = 1;
  }

  *(a2 + 11049) = 0;
  if (v621 > v18 && ((v621 - 1) & a6) == 0)
  {
    *(a2 + 11049) = 1;
  }

  *(a2 + 8544) = *(*(a1 + 270968) + 8 * a3[4]) + a7;
  *(a2 + 8552) = a2 + 8560 + (a6 & 0x1F);
  v669 = a2;
  v609 = (a2 + 8288);
  v663 = (a1 + 264608);
  v618 = v16;
  v608 = v18;
  v607 = v17;
  v658 = v9;
  if ((*(a1 + 245616) & 0xFD) == 0)
  {
    v43 = *v12;
    if (*(a1 + 264776) && *(a1 + 264609))
    {
      sub_277A03C18(a1, (a2 + 416), v43, a4, a1 + 264608, v9 + 12490, 0);
      a2 = v669;
    }

    v44 = sub_277A04014(v8 + 245616, (a2 + 416), *(v43 + 167) & 7, v43, v7);
    v45 = v44;
    if (!v663[168] && v663[1])
    {
      sub_277A03C18(v8, (v669 + 416), v43, v7, v8 + 264608, v9 + 12490, v44);
    }

    v46 = v669;
    if ((*(v611 + 547) & 1) == 0 && (*(v611 + 544) & 1) == 0)
    {
      v47 = *(v616 + 976);
      v48 = *(v669 + 416);
      v49 = *(v669 + 420);
      if (!(v48 & (*(v47 + 32) - 1) | v49 & (*(v47 + 32) - 1)))
      {
        *(v609 + 2885) = 0;
      }

      if (*(v47 + 28) == 15)
      {
        v50 = (v48 >> 3) & 2 | (v49 >> 4) & 1;
      }

      else
      {
        v50 = 0;
      }

      if (!v45 && (*(v669 + 11173 + v50) & 1) == 0)
      {
        v51 = v7;
        if (*v616 >= 1)
        {
          v52 = (2 * *(*(*(v611 + 616) + 8 * ((v49 & 0xFFFFFFF0) + *(v611 + 628) * (v48 & 0xFFFFFFF0))) + 167)) >> 12;
          v53 = *v616 + 1;
          do
          {
            v54 = *(v51 + 40);
            v55 = (v54 >> 1) & 0x7F80 | 4;
            v56 = 1 << (v53 - 2);
            v57 = v54 - v55;
            v58 = (v52 & v56) == 0;
            if ((v52 & v56) != 0)
            {
              v59 = v57;
            }

            else
            {
              v59 = 0;
            }

            if (v58)
            {
              v60 = v57;
            }

            else
            {
              v60 = v55;
            }

            sub_277A64F90((v51 + 16), *(v51 + 32) + v59, v60);
            --v53;
          }

          while (v53 > 1);
        }

        *(v669 + 11173 + v50) = 1;
        v46 = v669;
        v7 = v51;
      }
    }

    sub_277A040F8((v8 + 245616), v46 + 416, v45, v7);
    v61 = v669;
    v62 = v616;
    if ((*(v8 + 245616) & 0xFD) == 0 && *(v611 + 543) == 1 && *(v611 + 544))
    {
      v63 = **(v669 + 8280);
      v64 = (*(v63 + 167) >> 7) & 1;
      v65 = *(v669 + 11064);
      v66 = v65 + 6103;
      result = sub_277A650D4(a4 + 16, v64, (v65 + 6242), 2);
      if (*(a4 + 48))
      {
        v68 = v65[6244];
        v69 = (v68 >> 4) + 4;
        v70 = v65[6242];
        v71 = v70 - (v70 >> v69);
        v72 = v70 + ((0x8000 - v70) >> v69);
        if (!v64)
        {
          LOWORD(v72) = v71;
        }

        v65[6242] = v72;
        if (v68 < 0x20)
        {
          LOWORD(v68) = v68 + 1;
        }

        v65[6244] = v68;
      }

      if (v64)
      {
        v73 = *v654;
        v74 = v65 + 6099;
        v75 = v63[4];
        v76 = v75 != *v654;
        v77 = v63[5];
        v664 = v77 - HIWORD(*v654);
        v78 = v77 != HIWORD(*v654);
        v79 = v78 | (2 * v76);
        result = sub_277A650D4(a4 + 16, v78 | (2 * v76), (v65 + 6099), 4);
        if (*(a4 + 48))
        {
          v80 = 0;
          v81 = *v66;
          v82 = (v81 >> 4) + 5;
          do
          {
            v83 = v74[v80];
            v84 = v83 - (v83 >> v82);
            v85 = v83 + ((0x8000 - v83) >> v82);
            if (v80 >= v79)
            {
              LOWORD(v85) = v84;
            }

            v74[v80++] = v85;
          }

          while (v80 != 3);
          v86 = *v66;
          if (v81 < 0x20)
          {
            ++v86;
          }

          *v66 = v86;
        }

        if (v75 != v73)
        {
          result = sub_277B1C14C(a4, (v75 - v73), v65 + 6104, -1);
        }

        v62 = v616;
        if (v77 != HIWORD(v73))
        {
          result = sub_277B1C14C(a4, v664, v65 + 6173, -1);
        }
      }

      v61 = v669;
      if ((*(v43 + 167) & 0x80) != 0)
      {
        goto LABEL_173;
      }
    }

    v87 = a1 + 245616;
    v88 = v61 + 416;
    v89 = 1;
LABEL_172:
    result = sub_277A046C8(v87, v88, v89, a4);
    v61 = v669;
    goto LABEL_173;
  }

  v34 = *(*v12 + 16);
  v35 = *(*v12 + 17);
  if (v34 > 8)
  {
    goto LABEL_40;
  }

  if (v34 <= 1)
  {
    v34 = 1;
  }

  v36 = *(a1 + 4 * (v34 - 1) + 245856);
  if (v36 == -1)
  {
LABEL_40:
    v37 = 0;
  }

  else
  {
    v37 = a1 + 16 * v36 + 245904;
  }

  *(a2 + 8360) = v37;
  v624 = v13;
  v613 = v15;
  if (v35 > 8)
  {
    goto LABEL_46;
  }

  if (v35 <= 1)
  {
    v35 = 1;
  }

  v38 = *(a1 + 4 * (v35 - 1) + 245856);
  if (v38 == -1)
  {
LABEL_46:
    v39 = 0;
  }

  else
  {
    v39 = a1 + 16 * v38 + 245904;
  }

  *(a2 + 8368) = v39;
  v40 = *v12;
  v644 = *(*v12 + 2);
  v41 = *(*v12 + 167);
  v628 = *v40;
  v636 = *(a1 + 246109);
  v42 = (v41 & 0x80) != 0 || v40[16] > 0;
  v648 = v42;
  v90 = v41 & 7;
  v632 = v40[17];
  sub_277A055B4(a1, a2 + 416, a4, (a1 + 264608), v9 + 12490, 0, 1);
  v91 = v663;
  if (*(v611 + 72) && (!*v663 || (*(v8 + 4 * v90 + 264740) & 0x40) == 0))
  {
    v92 = *v40;
    v93 = byte_277C3CAFE[v92];
    v94 = byte_277C3CAE8[v92];
    if (v93 < v94)
    {
      v94 = v93;
    }

    if (v94 >= 8 && (!*v663 || (*(v8 + 4 * v90 + 264740) & 0xA0) == 0))
    {
      v95 = *(v669 + 8304);
      v96 = *(v669 + 8296);
      if (v95)
      {
        v95 = (*(v95 + 167) >> 6) & 1;
      }

      v97 = (*(v40 + 167) >> 6) & 1;
      if (v96)
      {
        v98 = (*(v96 + 167) >> 6) & 1;
      }

      else
      {
        LODWORD(v98) = 0;
      }

      v99 = (*(v669 + 11064) + 6 * (v98 + v95) + 11852);
      sub_277A650D4(a4 + 16, v97, v99, 2);
      v91 = v663;
      if (*(a4 + 48))
      {
        v100 = v99[2];
        v101 = (v100 >> 4) + 4;
        v102 = *v99;
        if (v97)
        {
          v103 = v102 + ((0x8000 - v102) >> v101);
        }

        else
        {
          v103 = v102 - (v102 >> v101);
        }

        *v99 = v103;
        if (v100 < 0x20)
        {
          LOWORD(v100) = v100 + 1;
        }

        v99[2] = v100;
      }
    }
  }

  v640 = v90;
  if ((*(v40 + 167) & 0x40) != 0)
  {
    v108 = 1;
    v107 = v669;
    v105 = a4;
  }

  else
  {
    v104 = v90;
    v105 = a4;
    v106 = sub_277A04014(v8 + 245616, (v669 + 416), v104, v40, a4);
    v91 = v663;
    v107 = v669;
    v108 = v106;
  }

  sub_277A055B4(v8, v107 + 416, v105, v91, v9 + 12490, v108, 0);
  v109 = v669;
  if ((*(v611 + 547) & 1) == 0 && (*(v611 + 544) & 1) == 0)
  {
    v110 = *(v616 + 976);
    v111 = *(v669 + 416);
    v112 = *(v669 + 420);
    if (!(v111 & (*(v110 + 32) - 1) | v112 & (*(v110 + 32) - 1)))
    {
      *(v609 + 2885) = 0;
    }

    if (*(v110 + 28) == 15)
    {
      v113 = (v111 >> 3) & 2 | (v112 >> 4) & 1;
    }

    else
    {
      v113 = 0;
    }

    if (!v108 && (*(v669 + 11173 + v113) & 1) == 0)
    {
      v114 = v105;
      if (*v616 >= 1)
      {
        v115 = (2 * *(*(*(v611 + 616) + 8 * ((v112 & 0xFFFFFFF0) + *(v611 + 628) * (v111 & 0xFFFFFFF0))) + 167)) >> 12;
        v116 = *v616 + 1;
        do
        {
          v117 = *(v114 + 40);
          v118 = (v117 >> 1) & 0x7F80 | 4;
          v119 = 1 << (v116 - 2);
          v120 = v117 - v118;
          v121 = (v115 & v119) == 0;
          if ((v115 & v119) != 0)
          {
            v122 = v120;
          }

          else
          {
            v122 = 0;
          }

          if (v121)
          {
            v123 = v120;
          }

          else
          {
            v123 = v118;
          }

          sub_277A64F90((v114 + 16), *(v114 + 32) + v122, v123);
          --v116;
        }

        while (v116 > 1);
      }

      *(v669 + 11173 + v113) = 1;
      v105 = v114;
      v8 = a1;
      v109 = v669;
    }
  }

  result = sub_277A040F8((v8 + 245616), v109 + 416, v108, v105);
  v125 = *(v40 + 167);
  if ((v125 & 0x40) == 0 && (!*v663 || (*(v8 + 4 * (v125 & 7) + 264740) & 0xA0) == 0))
  {
    v126 = (*(v669 + 11064) + 6 * sub_277B1FD5C(v669 + 416) + 11888);
    result = sub_277A650D4(v105 + 16, v648, v126, 2);
    if (*(v105 + 48))
    {
      v127 = v126[2];
      v128 = (v127 >> 4) + 4;
      v129 = *v126;
      v130 = v129 - (v129 >> v128);
      v131 = v129 + ((0x8000 - v129) >> v128);
      if (!v648)
      {
        LOWORD(v131) = v130;
      }

      *v126 = v131;
      if (v127 < 0x20)
      {
        LOWORD(v127) = v127 + 1;
      }

      v126[2] = v127;
    }
  }

  v61 = v669;
  v62 = v616;
  if ((*(v40 + 167) & 0x40) != 0)
  {
    goto LABEL_173;
  }

  if (!v648)
  {
    v87 = a1 + 245616;
    v88 = v669 + 416;
    v89 = 0;
    goto LABEL_172;
  }

  v132 = v609 + 2762;
  *(v609 + 2762) = 0;
  v133 = *(v669 + 8296);
  v134 = v609[1];
  if (*v609 == 1)
  {
    v135 = *(v669 + 8304);
    if ((*(v135 + 167) & 0x80) != 0 || *(v135 + 16) >= 1)
    {
      ++v132[*(v135 + 16)];
      v136 = *(v135 + 17);
      if (v136 >= 1)
      {
        ++v132[v136];
      }
    }
  }

  v137 = v654;
  v138 = v640;
  if (v134 && ((*(v133 + 167) & 0x80) != 0 || *(v133 + 16) >= 1))
  {
    ++v132[*(v133 + 16)];
    v139 = *(v133 + 17);
    if (v139 >= 1)
    {
      ++v132[v139];
    }
  }

  v140 = *(v669 + 8280);
  v141 = *v140;
  v142 = (*v140)[17];
  if (!*v663 || (*(a1 + 4 * (*(v141 + 167) & 7) + 264740) & 0xE0) == 0)
  {
    if (*(v611 + 49) == 2)
    {
      v143 = *v141;
      v144 = byte_277C3CAFE[v143];
      v145 = byte_277C3CAE8[v143];
      if (v144 < v145)
      {
        v145 = v144;
      }

      if (v145 >= 8)
      {
        v146 = *(v669 + 11064);
        v147 = (v146 + 6 * sub_277B1FE00(v669 + 416) + 11342);
        sub_277A650D4(a4 + 16, v142 > 0, v147, 2);
        v61 = v669;
        if (*(a4 + 48))
        {
          v148 = v147[2];
          v149 = (v148 >> 4) + 4;
          v150 = *v147;
          if (v142 < 1)
          {
            v151 = v150 - (v150 >> v149);
          }

          else
          {
            v151 = v150 + ((0x8000 - v150) >> v149);
          }

          *v147 = v151;
          if (v148 < 0x20)
          {
            LOWORD(v148) = v148 + 1;
          }

          v147[2] = v148;
        }
      }
    }

    if (v142 < 1)
    {
      v304 = v141[16] - 5;
      v124.i32[0] = *(v609 + 2763);
      v305 = vaddv_s16(*&vmovl_u8(v124));
      v306 = v609[2768] + v609[2767] + v609[2769];
      v307 = 2 * (v306 <= v305);
      if (v306 == v305)
      {
        v307 = 1;
      }

      v308 = (*(v61 + 11064) + 36 * v307 + 11372);
      sub_277A650D4(a4 + 16, v304 < 3, v308, 2);
      if (*(a4 + 48))
      {
        v309 = v308[2];
        v310 = (v309 >> 4) + 4;
        v311 = *v308;
        v312 = v311 - (v311 >> v310);
        v313 = v311 + ((0x8000 - v311) >> v310);
        if (v304 > 2)
        {
          LOWORD(v313) = v312;
        }

        *v308 = v313;
        if (v309 < 0x20)
        {
          LOWORD(v309) = v309 + 1;
        }

        v308[2] = v309;
      }

      v314 = v141[16];
      if (v304 > 2)
      {
        v329 = v314 - 3;
        v330 = v609[2764] + v609[2763];
        v331 = v609[2766] + v609[2765];
        v58 = v330 == v331;
        v332 = 2 * (v330 >= v331);
        if (v58)
        {
          v332 = 1;
        }

        v333 = (*(v669 + 11064) + 36 * v332 + 11384);
        sub_277A650D4(a4 + 16, (v314 - 3) < 2, v333, 2);
        v138 = v640;
        if (*(a4 + 48))
        {
          v334 = v333[2];
          v335 = (v334 >> 4) + 4;
          v336 = *v333;
          if (v329 > 1)
          {
            v337 = v336 - (v336 >> v335);
          }

          else
          {
            v337 = v336 + ((0x8000 - v336) >> v335);
          }

          *v333 = v337;
          if (v334 < 0x20)
          {
            LOWORD(v334) = v334 + 1;
          }

          v333[2] = v334;
        }

        v409 = v141[16];
        v410 = *(v669 + 11064) + 11372;
        if (v329 >= 2)
        {
          v399 = v409 != 1;
          v414 = v609[2763];
          v415 = v609[2764];
          v58 = v414 == v415;
          v416 = 2 * (v414 >= v415);
          if (v58)
          {
            v416 = 1;
          }

          v408 = v410 + 36 * v416 + 18;
        }

        else
        {
          v399 = v409 != 3;
          v411 = v609[2765];
          v412 = v609[2766];
          v58 = v411 == v412;
          v413 = 2 * (v411 >= v412);
          if (v58)
          {
            v413 = 1;
          }

          v408 = v410 + 36 * v413 + 24;
        }

        goto LABEL_513;
      }

      v315 = v609[2768] + v609[2767];
      v316 = v609[2769];
      v58 = v315 == v316;
      v317 = 2 * (v315 >= v316);
      if (v58)
      {
        v317 = 1;
      }

      v318 = (*(v669 + 11064) + 36 * v317 + 11378);
      result = sub_277A650D4(a4 + 16, v314 == 7, v318, 2);
      v138 = v640;
      if (*(a4 + 48))
      {
        v319 = v318[2];
        v320 = (v319 >> 4) + 4;
        v321 = *v318;
        if (v314 == 7)
        {
          v322 = v321 + ((0x8000 - v321) >> v320);
        }

        else
        {
          v322 = v321 - (v321 >> v320);
        }

        *v318 = v322;
        if (v319 < 0x20)
        {
          LOWORD(v319) = v319 + 1;
        }

        v318[2] = v319;
      }

      v61 = v669;
      if (v314 != 7)
      {
        v399 = v141[16] == 6;
        v405 = v609[2767];
        v406 = v609[2768];
        v58 = v405 == v406;
        v407 = 2 * (v405 >= v406);
        if (v58)
        {
          v407 = 1;
        }

        v403 = *(v669 + 11064) + 36 * v407;
        v404 = 11402;
        goto LABEL_499;
      }
    }

    else
    {
      if (v141[17] < 1)
      {
        v303 = 0;
      }

      else
      {
        v303 = (v141[17] < 5u) ^ (v141[16] > 4);
      }

      v323 = (*(v61 + 11064) + 6 * sub_277B1FEF4(v61 + 416) + 11480);
      sub_277A650D4(a4 + 16, v303 ^ 1, v323, 2);
      if (*(a4 + 48))
      {
        v325 = v323[2];
        v326 = (v325 >> 4) + 4;
        v327 = *v323;
        if (v303)
        {
          v328 = v327 - (v327 >> v326);
        }

        else
        {
          v328 = v327 + ((0x8000 - v327) >> v326);
        }

        *v323 = v328;
        if (v325 < 0x20)
        {
          LOWORD(v325) = v325 + 1;
        }

        v323[2] = v325;
      }

      v338 = v141[16];
      if (v303)
      {
        v324.i32[0] = *(v609 + 2763);
        v339 = vaddv_s16(*&vmovl_u8(v324));
        v340 = v609[2768] + v609[2767] + v609[2769];
        v341 = 2 * (v340 <= v339);
        if (v340 == v339)
        {
          v341 = 1;
        }

        v342 = (*(v669 + 11064) + 18 * v341 + 11510);
        result = sub_277A650D4(a4 + 16, v338 == 5, v342, 2);
        if (*(a4 + 48))
        {
          v343 = v342[2];
          v344 = (v343 >> 4) + 4;
          v345 = *v342;
          v346 = v345 - (v345 >> v344);
          v347 = v345 + ((0x8000 - v345) >> v344);
          if (v338 != 5)
          {
            LOWORD(v347) = v346;
          }

          *v342 = v347;
          if (v343 < 0x20)
          {
            LOWORD(v343) = v343 + 1;
          }

          v342[2] = v343;
        }

        v61 = v669;
        v138 = v640;
        if (v338 != 5)
        {
          v348 = v141[17] - 3;
          v349 = v609[2764];
          v350 = v609[2766] + v609[2765];
          v58 = v350 == v349;
          v351 = 2 * (v350 <= v349);
          if (v58)
          {
            v351 = 1;
          }

          v352 = (*(v669 + 11064) + 18 * v351 + 11516);
          result = sub_277A650D4(a4 + 16, v348 < 2, v352, 2);
          if (*(a4 + 48))
          {
            v353 = v352[2];
            v354 = (v353 >> 4) + 4;
            v355 = *v352;
            if (v348 > 1)
            {
              v356 = v355 - (v355 >> v354);
            }

            else
            {
              v356 = v355 + ((0x8000 - v355) >> v354);
            }

            *v352 = v356;
            if (v353 < 0x20)
            {
              LOWORD(v353) = v353 + 1;
            }

            v352[2] = v353;
          }

          v61 = v669;
          if (v348 <= 1)
          {
            v399 = v141[17] == 4;
            v400 = v609[2765];
            v401 = v609[2766];
            v58 = v400 == v401;
            v402 = 2 * (v400 >= v401);
            if (v58)
            {
              v402 = 1;
            }

            v403 = *(v669 + 11064) + 18 * v402;
            v404 = 11522;
LABEL_499:
            v408 = v403 + v404;
LABEL_513:
            result = sub_2779FB868(a4, v399, v408, 2);
            v61 = v669;
          }
        }
      }

      else
      {
        v357 = v338 - 3;
        v358 = v609[2764] + v609[2763];
        v359 = v609[2766] + v609[2765];
        v58 = v358 == v359;
        v360 = 2 * (v358 >= v359);
        if (v58)
        {
          v360 = 1;
        }

        v361 = (*(v669 + 11064) + 18 * v360 + 11564);
        sub_277A650D4(a4 + 16, (v338 - 3) < 2, v361, 2);
        if (*(a4 + 48))
        {
          v362 = v361[2];
          v363 = (v362 >> 4) + 4;
          v364 = *v361;
          if (v357 > 1)
          {
            v365 = v364 - (v364 >> v363);
          }

          else
          {
            v365 = v364 + ((0x8000 - v364) >> v363);
          }

          *v361 = v365;
          if (v362 < 0x20)
          {
            LOWORD(v362) = v362 + 1;
          }

          v361[2] = v362;
        }

        v366 = v141[16];
        v367 = v357 >= 2;
        if (v357 >= 2)
        {
          v368 = 2;
        }

        else
        {
          v368 = 4;
        }

        if (v367)
        {
          v369 = v609 + 2763;
        }

        else
        {
          v369 = v609 + 2765;
        }

        if (v367)
        {
          v370 = v609 + 2764;
        }

        else
        {
          v370 = v609 + 2766;
        }

        v371 = 6;
        if (!v367)
        {
          v371 = 12;
        }

        v372 = *v369;
        v373 = *v370;
        v58 = v372 == v373;
        v374 = 2 * (v372 >= v373);
        if (v58)
        {
          v374 = 1;
        }

        v375 = (*(v669 + 11064) + 18 * v374 + v371 + 11564);
        sub_277A650D4(a4 + 16, v366 == v368, v375, 2);
        if (*(a4 + 48))
        {
          v376 = v375[2];
          v377 = (v376 >> 4) + 4;
          v378 = *v375;
          v379 = v378 - (v378 >> v377);
          v380 = v378 + ((0x8000 - v378) >> v377);
          if (v366 != v368)
          {
            LOWORD(v380) = v379;
          }

          *v375 = v380;
          if (v376 < 0x20)
          {
            LOWORD(v376) = v376 + 1;
          }

          v375[2] = v376;
        }

        v381 = v141[17];
        v382 = v609[2768] + v609[2767];
        v383 = v609[2769];
        v58 = v382 == v383;
        v384 = 2 * (v382 >= v383);
        if (v58)
        {
          v384 = 1;
        }

        v385 = (*(v669 + 11064) + 12 * v384 + 11618);
        result = sub_277A650D4(a4 + 16, v381 == 7, v385, 2);
        v137 = v654;
        v138 = v640;
        if (*(a4 + 48))
        {
          v386 = v385[2];
          v387 = (v386 >> 4) + 4;
          v388 = *v385;
          if (v381 == 7)
          {
            v389 = v388 + ((0x8000 - v388) >> v387);
          }

          else
          {
            v389 = v388 - (v388 >> v387);
          }

          *v385 = v389;
          if (v386 < 0x20)
          {
            LOWORD(v386) = v386 + 1;
          }

          v385[2] = v386;
        }

        v61 = v669;
        if (v381 != 7)
        {
          v390 = v141[17];
          v391 = v609[2767];
          v392 = v609[2768];
          v58 = v391 == v392;
          v393 = 2 * (v391 >= v392);
          if (v58)
          {
            v393 = 1;
          }

          v394 = (*(v669 + 11064) + 12 * v393 + 11624);
          result = sub_277A650D4(a4 + 16, v390 == 6, v394, 2);
          v61 = v669;
          if (*(a4 + 48))
          {
            v395 = v394[2];
            v396 = (v395 >> 4) + 4;
            v397 = *v394;
            if (v390 == 6)
            {
              v398 = v397 + ((0x8000 - v397) >> v396);
            }

            else
            {
              v398 = v397 - (v397 >> v396);
            }

            *v394 = v398;
            if (v395 < 0x20)
            {
              LOWORD(v395) = v395 + 1;
            }

            v394[2] = v395;
          }
        }
      }
    }
  }

  v417 = *(v137 + 38);
  if (v40[17] >= 1)
  {
    v418 = v417 & 7;
    if ((v417 & 4) != 0)
    {
      v418 = 4;
    }

    v417 = word_277C39454[5 * (v417 >> 5) + v418];
  }

  if (*v663 && (*(a1 + 4 * v138 + 264740) & 0x40) != 0)
  {
    goto LABEL_578;
  }

  v419 = v644;
  v420 = (v644 - 17);
  if (v420 <= 7)
  {
    v426 = *(v61 + 11064) + 18 * v417 + 0x2000;
    result = sub_277A650D4(a4 + 16, v420, v426, 8);
    v61 = v669;
    if (*(a4 + 48))
    {
      v427 = 0;
      v428 = *(v426 + 16);
      v429 = (v428 >> 4) + 5;
      do
      {
        v430 = *(v426 + 2 * v427);
        v431 = v430 - (v430 >> v429);
        v432 = v430 + ((0x8000 - v430) >> v429);
        if (v427 >= (v644 - 17))
        {
          LOWORD(v432) = v431;
        }

        *(v426 + 2 * v427++) = v432;
      }

      while (v427 != 7);
      v433 = *(v426 + 16);
      if (v428 < 0x20)
      {
        ++v433;
      }

      *(v426 + 16) = v433;
    }
  }

  else if (v420 >= 0xFC)
  {
    v421 = (v658 + 6 * (v417 & 7) + 8090);
    result = sub_277A650D4(a4 + 16, v644 != 16, v421, 2);
    v61 = v669;
    if (*(a4 + 48))
    {
      v422 = *(v658 + 6 * (v417 & 7) + 8094);
      v423 = (v422 >> 4) + 4;
      v424 = *v421;
      if (v644 == 16)
      {
        v425 = v424 - (v424 >> v423);
      }

      else
      {
        v425 = v424 + ((0x8000 - v424) >> v423);
      }

      *v421 = v425;
      if (v422 < 0x20)
      {
        LOWORD(v422) = v422 + 1;
      }

      *(v658 + 6 * (v417 & 7) + 8094) = v422;
    }

    if (v644 == 16)
    {
      goto LABEL_545;
    }

    v419 = v644;
    v434 = v658;
    v435 = (v658 + 6 * ((v417 >> 3) & 1) + 8126);
    result = sub_277A650D4(a4 + 16, v644 != 15, v435, 2);
    if (*(a4 + 48))
    {
      v436 = *(v658 + 6 * ((v417 >> 3) & 1) + 8130);
      v437 = (v436 >> 4) + 4;
      v438 = *v435;
      if (v644 == 15)
      {
        v439 = v438 - (v438 >> v437);
      }

      else
      {
        v439 = v438 + ((0x8000 - v438) >> v437);
      }

      *v435 = v439;
      if (v436 < 0x20)
      {
        LOWORD(v436) = v436 + 1;
      }

      *(v658 + 6 * ((v417 >> 3) & 1) + 8130) = v436;
    }

    v467 = a1;
    v61 = v669;
    if (v644 == 15)
    {
      goto LABEL_610;
    }

    v511 = (v658 + 6 * (v417 >> 4) + 8138);
    result = sub_277A650D4(a4 + 16, v644 != 13, v511, 2);
    v61 = v669;
    if (*(a4 + 48))
    {
      v512 = *(v658 + 6 * (v417 >> 4) + 8142);
      v513 = (v512 >> 4) + 4;
      v514 = *v511;
      if (v644 == 13)
      {
        v515 = v514 - (v514 >> v513);
      }

      else
      {
        v515 = v514 + ((0x8000 - v514) >> v513);
      }

      *v511 = v515;
      if (v512 < 0x20)
      {
        LOWORD(v512) = v512 + 1;
      }

      *(v658 + 6 * (v417 >> 4) + 8142) = v512;
    }
  }

  if ((v419 & 0xFFFFFFF7) == 0x10 || v644 <= 0x16 && ((1 << v644) & 0x644000) != 0)
  {
LABEL_545:
    v440 = v40[2];
    if (v440 <= 0x18)
    {
      v441 = 1 << v440;
      if ((v441 & 0x644000) != 0)
      {
        v442 = (v624 + 84 * v613 + 36);
        for (i = 17; ; ++i)
        {
          v444 = i - 16;
          if (i - 15 >= *(v137 + 40))
          {
            if (v444 > 1)
            {
              goto LABEL_578;
            }
          }

          else
          {
            if (*(v442 - 1) <= 0x27Fu)
            {
              v445 = 2 * (*v442 < 0x280u);
            }

            else
            {
              v445 = *v442 < 0x280u;
            }

            v446 = (*(v40 + 167) >> 4) & 3;
            v447 = i - 17;
            v448 = (v658 + 8174 + 6 * v445);
            result = sub_277A650D4(a4 + 16, i - 17 != v446, v448, 2);
            if (*(a4 + 48))
            {
              v449 = v448[2];
              v450 = (v449 >> 4) + 4;
              v451 = *v448;
              v452 = v451 - (v451 >> v450);
              v453 = v451 + ((0x8000 - v451) >> v450);
              if (v447 == v446)
              {
                LOWORD(v453) = v452;
              }

              *v448 = v453;
              if (v449 < 0x20)
              {
                LOWORD(v449) = v449 + 1;
              }

              v448[2] = v449;
            }

            v61 = v669;
            v137 = v654;
            if (v444 > 1 || v447 == ((*(v40 + 167) >> 4) & 3))
            {
              goto LABEL_578;
            }
          }

          ++v442;
        }
      }

      if ((v441 & 0x1010000) != 0)
      {
        v454 = 0;
        v455 = 1;
        do
        {
          while (1)
          {
            v456 = v455;
            if (v454 + 1 < *(v137 + 40))
            {
              break;
            }

            v455 = 0;
            v454 = 1;
            if ((v456 & 1) == 0)
            {
              goto LABEL_578;
            }
          }

          if (*(v137 + v454 + 16) <= 0x27Fu)
          {
            v457 = 2 * (*(v137 + v454 + 17) < 0x280u);
          }

          else
          {
            v457 = *(v137 + v454 + 17) < 0x280u;
          }

          v458 = (*(v40 + 167) >> 4) & 3;
          v459 = (v658 + 8174 + 6 * v457);
          result = sub_277A650D4(a4 + 16, v454 != v458, v459, 2);
          if (*(a4 + 48))
          {
            v460 = v459[2];
            v461 = (v460 >> 4) + 4;
            v462 = *v459;
            v463 = v462 - (v462 >> v461);
            v464 = v462 + ((0x8000 - v462) >> v461);
            if (v454 == v458)
            {
              LOWORD(v464) = v463;
            }

            *v459 = v464;
            if (v460 < 0x20)
            {
              LOWORD(v460) = v460 + 1;
            }

            v459[2] = v460;
          }

          v455 = 0;
          v454 = 1;
          v61 = v669;
        }

        while ((v456 & ((*(v40 + 167) & 0x30) != 0)) != 0);
      }
    }
  }

LABEL_578:
  if ((v644 & 0xFFFFFFF7) != 0x10)
  {
    v467 = a1;
    v434 = v658;
    if (v644 == 21 || v644 == 19)
    {
      v473 = **(v61 + 8280);
      v474 = (*(v473 + 167) >> 4) & 3;
      if (*(v473 + 2) - 21 < 2)
      {
        ++v474;
      }

      v475 = *(v61 + 16760);
      if (*(v473 + 17) < 1)
      {
        v482 = v475 + 4 * *(v473 + 16) + 44;
        if (v474 >= *(v475 + 40))
        {
          v476 = v482;
        }

        else
        {
          v476 = (v475 + 8 * v474);
        }
      }

      else
      {
        v476 = (v475 + 8 * v474 + 4);
      }

      v481 = 12;
    }

    else
    {
      if ((v644 & 0xFFFFFFFD) != 0x14)
      {
        goto LABEL_610;
      }

      v477 = **(v61 + 8280);
      if (*(v477 + 2) - 21 >= 2)
      {
        v478 = (*(v477 + 167) >> 4) & 3;
      }

      else
      {
        v478 = ((*(v477 + 167) >> 4) & 3) + 1;
      }

      v479 = *(v61 + 16760);
      v476 = (v479 + 8 * v478);
      if (*(v477 + 17) < 1)
      {
        v480 = v479 + 4 * *(v477 + 16) + 44;
        if (v478 >= *(v479 + 40))
        {
          v476 = v480;
        }
      }

      v481 = 8;
    }

    result = sub_277B1BFBC(a1, a4, v61, &v40[v481], *v476, HIWORD(*v476), (v658 + 11912), v636);
    v61 = v669;
    goto LABEL_610;
  }

  v465 = 0;
  v466 = 1;
  v467 = a1;
  v434 = v658;
  do
  {
    v468 = **(v61 + 8280);
    if (*(v468 + 2) - 21 >= 2)
    {
      v469 = (*(v468 + 167) >> 4) & 3;
    }

    else
    {
      v469 = ((*(v468 + 167) >> 4) & 3) + 1;
    }

    v470 = *(v61 + 16760);
    if (*(v468 + 17) < 1)
    {
      v471 = (v470 + 4 * *(v468 + 16) + 44);
      if (v469 < *(v470 + 40))
      {
        v471 = (v470 + 8 * v469);
      }
    }

    else
    {
      v471 = (v470 + 8 * v469 + 4);
      if (v466)
      {
        v471 = (v470 + 8 * v469);
      }
    }

    result = sub_277B1BFBC(a1, a4, v61, &v40[4 * v465 + 8], *v471, HIWORD(*v471), (v658 + 11912), v636);
    v61 = v669;
    v472 = (v632 > 0) & v466;
    v465 = 1;
    v466 = 0;
  }

  while ((v472 & 1) != 0);
LABEL_610:
  if (*(v611 + 49) != 1 && *(*(v616 + 976) + 62) && *v40 - 10 >= 0xFFFFFFF9 && v40[2] - 17 >= 0xFFFFFFFC && v40[16] >= 1)
  {
    v483 = v40[17];
    if (v40[17] > 0)
    {
      goto LABEL_624;
    }

    v484 = byte_277C3BCA0[v628];
    v485 = (v434 + 6 * byte_277C3BCA0[v628] + 9216);
    result = sub_277A650D4(a4 + 16, v483 == 0, v485, 2);
    if (*(a4 + 48))
    {
      v486 = v485[2];
      v487 = (v486 >> 4) + 4;
      v488 = *v485;
      v489 = v488 - (v488 >> v487);
      v490 = v488 + ((0x8000 - v488) >> v487);
      if (v483)
      {
        LOWORD(v490) = v489;
      }

      *v485 = v490;
      if (v486 < 0x20)
      {
        LOWORD(v486) = v486 + 1;
      }

      v485[2] = v486;
    }

    v61 = v669;
    v434 = v658;
    if (!v483)
    {
      v598 = v40[64];
      v599 = v658 + 10 * v484 + 9372;
      result = sub_277A650D4(a4 + 16, v598, v599, 4);
      if (*(a4 + 48))
      {
        v600 = 0;
        v601 = *(v658 + 10 * v484 + 9380);
        v602 = (v601 >> 4) + 5;
        do
        {
          v603 = *(v599 + 2 * v600);
          v604 = v603 - (v603 >> v602);
          v605 = v603 + ((0x8000 - v603) >> v602);
          if (v600 >= v598)
          {
            LOWORD(v605) = v604;
          }

          *(v599 + 2 * v600++) = v605;
        }

        while (v600 != 3);
        v606 = *(v658 + 10 * v484 + 9380);
        if (v601 < 0x20)
        {
          ++v606;
        }

        *(v658 + 10 * v484 + 9380) = v606;
      }

      v61 = v669;
      if (dword_27A722360[8 * v628] >= 1)
      {
        result = sub_2779FB868(a4, (*(v40 + 167) >> 10) & 1, v658 + 6 * v628 + 9240, 2);
        v61 = v669;
        if ((*(v40 + 167) & 0x400) != 0)
        {
          result = sub_2779FB868(a4, v40[65], v658 + 34 * v628 + 8468, 16);
          v61 = v669;
        }
      }
    }
  }

  LOBYTE(v483) = v40[17];
  if (!v483)
  {
    goto LABEL_766;
  }

LABEL_624:
  if (*(v611 + 551) != 1 || !v40[26])
  {
    goto LABEL_681;
  }

  v491 = *(v61 + 11144);
  v492 = *v40;
  if (v491)
  {
    v493 = byte_277C3CAFE[v492];
    if (v493 >= byte_277C3CAE8[v492])
    {
      v493 = byte_277C3CAE8[v492];
    }
  }

  else
  {
    v508 = v40[2];
    v493 = byte_277C3CAFE[v492];
    if (v493 >= byte_277C3CAE8[v492])
    {
      v493 = byte_277C3CAE8[v492];
    }

    v510 = v508 != 15 && v508 != 23;
    if (*(v467 + 270020 + 36 * v40[16] + 32) >= 2u && !v510 && v493 > 7)
    {
      goto LABEL_681;
    }
  }

  if (v493 >= 8 && (v483 & 0x80) != 0 && v40[2] - 25 >= 0xFFFFFFF4)
  {
    if (!v491 && *(v611 + 545) && v40[25] && ((v494 = *(v61 + 8360), v495 = *v494, *v494 == -1) || (v496 = v494[1], v496 == -1) || v495 == 0x4000 && v496 == 0x4000))
    {
      v497 = v40[24];
      v498 = *(v61 + 11064) + 8 * v492 + 9412;
      result = sub_277A650D4(a4 + 16, v497, v498, 3);
      v61 = v669;
      if (!*(a4 + 48))
      {
        goto LABEL_681;
      }

      v499 = 0;
      v500 = 0;
      v501 = (v498 + 6);
      v502 = *(v498 + 6);
      v503 = (v502 >> 4) + 4;
      do
      {
        v504 = *(v498 + 2 * v500);
        v505 = v499;
        v506 = v504 - (v504 >> v503);
        v507 = v504 + ((0x8000 - v504) >> v503);
        if (v500 < v497)
        {
          LOWORD(v506) = v507;
        }

        *(v498 + 2 * v500) = v506;
        v499 = 1;
        v500 = 1;
      }

      while ((v505 & 1) == 0);
    }

    else
    {
      v516 = v40[24];
      v517 = (*(v61 + 11064) + 6 * *v40 + 9588);
      result = sub_277A650D4(a4 + 16, v516 == 1, v517, 2);
      v61 = v669;
      v434 = v658;
      if (!*(a4 + 48))
      {
        goto LABEL_681;
      }

      v501 = v517 + 2;
      v502 = v517[2];
      v518 = (v502 >> 4) + 4;
      v519 = *v517;
      if (v516 == 1)
      {
        v520 = v519 + ((0x8000 - v519) >> v518);
      }

      else
      {
        v520 = v519 - (v519 >> v518);
      }

      *v517 = v520;
    }

    if (v502 < 0x20)
    {
      LOWORD(v502) = v502 + 1;
    }

    *v501 = v502;
  }

LABEL_681:
  if (v40[17] < 1)
  {
    goto LABEL_766;
  }

  v521 = byte_277C3CAFE[v628];
  if (v521 >= byte_277C3CAE8[v628])
  {
    v521 = byte_277C3CAE8[v628];
  }

  if (v521 >= 8)
  {
    v523 = a4;
    if (*(*(v616 + 976) + 63))
    {
      v524 = *(v61 + 8304);
      v525 = *(v61 + 8296);
      if (v524)
      {
        if (*(v524 + 17) < 1)
        {
          if (*(v524 + 16) == 7)
          {
            LODWORD(v524) = 3;
          }

          else
          {
            LODWORD(v524) = 0;
          }
        }

        else
        {
          LODWORD(v524) = HIBYTE(*(v524 + 167)) & 1;
        }
      }

      if (v525)
      {
        if (*(v525 + 17) < 1)
        {
          if (*(v525 + 16) == 7)
          {
            LODWORD(v525) = 3;
          }

          else
          {
            LODWORD(v525) = 0;
          }
        }

        else
        {
          LODWORD(v525) = HIBYTE(*(v525 + 167)) & 1;
        }
      }

      v526 = v525 + v524;
      if (v526 >= 5)
      {
        v526 = 5;
      }

      v527 = HIBYTE(*(v40 + 167)) & 1;
      v528 = (v434 + 6 * v526 + 11816);
      result = sub_277A650D4(a4 + 16, v527, v528, 2);
      v61 = v669;
      if (*(a4 + 48))
      {
        v529 = v528[2];
        v530 = (v529 >> 4) + 4;
        v531 = *v528;
        v532 = v531 - (v531 >> v530);
        v533 = v531 + ((0x8000 - v531) >> v530);
        if (!v527)
        {
          LOWORD(v533) = v532;
        }

        *v528 = v533;
        if (v529 < 0x20)
        {
          LOWORD(v529) = v529 + 1;
        }

        v528[2] = v529;
      }
    }

    v522 = *(v40 + 167);
    if ((v522 & 0x100) != 0)
    {
      if (dword_27A722360[8 * v628] >= 1)
      {
        v539 = v40[83] - 2;
        v540 = (v434 + 6 * v628 + 8336);
        sub_277A650D4(a4 + 16, v40[83] - 2, v540, 2);
        if (*(a4 + 48))
        {
          v541 = *(v434 + 6 * v628 + 8340);
          v542 = (v541 >> 4) + 4;
          v543 = *v540;
          if (v539 < 1)
          {
            v544 = v543 - (v543 >> v542);
          }

          else
          {
            v544 = v543 + ((0x8000 - v543) >> v542);
          }

          *v540 = v544;
          if (v541 < 0x20)
          {
            LOWORD(v541) = v541 + 1;
          }

          *(v434 + 6 * v628 + 8340) = v541;
        }
      }

      goto LABEL_754;
    }
  }

  else
  {
    v522 = *(v40 + 167);
    v523 = a4;
    if ((v522 & 0x100) != 0)
    {
LABEL_754:
      if (v40[83] == 2)
      {
        v561 = v40[80];
        v562 = v434 + 34 * v628 + 8468;
        sub_277A650D4(v523 + 16, v561, v562, 16);
        if (*(v523 + 48))
        {
          v563 = 0;
          v564 = *(v434 + 34 * v628 + 8500);
          v565 = (v564 >> 4) + 5;
          do
          {
            v566 = *(v562 + 2 * v563);
            v567 = v566 - (v566 >> v565);
            v568 = v566 + ((0x8000 - v566) >> v565);
            if (v563 >= v561)
            {
              LOWORD(v568) = v567;
            }

            *(v562 + 2 * v563++) = v568;
          }

          while (v563 != 15);
          v569 = *(v434 + 34 * v628 + 8500);
          if (v564 < 0x20)
          {
            ++v569;
          }

          *(v434 + 34 * v628 + 8500) = v569;
        }

        v570 = v40[81];
        v571 = v523 + 16;
      }

      else
      {
        v571 = v523 + 16;
        v570 = v40[82] & 1;
      }

      result = sub_277A64F64(v571, v570);
      v61 = v669;
      goto LABEL_766;
    }
  }

  v534 = *(v616 + 976);
  if (v534[12])
  {
    v535 = **(v61 + 8280);
    v536 = *(v535 + 16);
    if ((v536 - 1) > 7 || (v537 = *(v467 + 4 * (v536 - 1) + 245856), v537 == -1))
    {
      v538 = 0;
    }

    else
    {
      v538 = *(v467 + 8 * v537 + 246032);
    }

    v545 = *(v535 + 17);
    if ((v545 - 1) > 7 || (v546 = *(v467 + 4 * (v545 - 1) + 245856), v546 == -1))
    {
      v547 = 0;
    }

    else
    {
      v547 = *(v467 + 8 * v546 + 246032);
    }

    if (v538)
    {
      LODWORD(v538) = *(v538 + 4);
    }

    if (v547)
    {
      LODWORD(v547) = *(v547 + 4);
    }

    if (v534[10])
    {
      v548 = *(*(v611 + 280) + 4);
      v549 = 1 << v534[11];
      v550 = ((v549 - 1) & (v547 - v548)) - (v549 & (v547 - v548));
      v551 = ((v549 - 1) & (v548 - v538)) - (v549 & (v548 - v538));
    }

    else
    {
      v550 = 0;
      v551 = 0;
    }

    v552 = *(v61 + 8304);
    v553 = *(v61 + 8296);
    if (v552)
    {
      if (*(v552 + 17) < 1)
      {
        LODWORD(v552) = *(v552 + 16) == 7;
      }

      else
      {
        v552 = (*(v552 + 167) >> 9) & 1;
      }
    }

    if (v553)
    {
      if (*(v553 + 17) < 1)
      {
        LODWORD(v553) = *(v553 + 16) == 7;
      }

      else
      {
        v553 = (*(v553 + 167) >> 9) & 1;
      }
    }

    if (v550 < 0)
    {
      v550 = -v550;
    }

    if (v551 < 0)
    {
      v551 = -v551;
    }

    v58 = v550 == v551;
    v554 = 3;
    if (!v58)
    {
      v554 = 0;
    }

    v555 = (v522 >> 9) & 1;
    v556 = (v434 + 6 * (v552 + v553 + v554) + 11780);
    result = sub_277A650D4(a4 + 16, v555, v556, 2);
    v61 = v669;
    if (*(a4 + 48))
    {
      v557 = v556[2];
      v558 = (v557 >> 4) + 4;
      v559 = *v556;
      if (v555)
      {
        v560 = v559 + ((0x8000 - v559) >> v558);
      }

      else
      {
        v560 = v559 - (v559 >> v558);
      }

      *v556 = v560;
      if (v557 < 0x20)
      {
        LOWORD(v557) = v557 + 1;
      }

      v556[2] = v557;
    }
  }

LABEL_766:
  v572 = **(v61 + 8280);
  v62 = v616;
  if ((*(v572 + 167) & 0x40) == 0 && v572[24] != 2)
  {
    v573 = v572[2];
    if (v573 == 23 || v573 == 15)
    {
      v575 = *v572;
      v576 = byte_277C3F990[v575];
      v577 = byte_277C36D60[v575];
      if (v576 < v577)
      {
        v577 = v576;
      }

      if (v577 >= 2)
      {
        v595 = 0;
        v596 = 1;
        while (*(*(v61 + 11160) + 36 * v572[v595 + 16] + 32) != 1)
        {
          v597 = (v572[17] < 1) | ~v596;
          v595 = 1;
          v596 = 0;
          if (v597)
          {
            goto LABEL_173;
          }
        }
      }
    }

    if (*(v611 + 553) == 4)
    {
      v578 = 0;
      v579 = *(v61 + 11064) + 14058;
      v580 = v61 + 154960;
      v581 = 1;
      do
      {
        v582 = sub_277B1FAF0(v61 + 416, v578);
        v583 = *(v572 + 5);
        if ((v581 & 1) == 0)
        {
          LOBYTE(v583) = BYTE2(*(v572 + 5));
        }

        v584 = v583;
        v585 = v579 + 8 * v582;
        result = sub_277A650D4(a4 + 16, v583, v585, 3);
        if (*(a4 + 48))
        {
          v586 = 0;
          v587 = 0;
          v588 = *(v585 + 6);
          v589 = (v588 >> 4) + 4;
          do
          {
            v590 = *(v585 + 2 * v587);
            v591 = v586;
            v592 = v590 - (v590 >> v589);
            v593 = v590 + ((0x8000 - v590) >> v589);
            if (v587 < v584)
            {
              LOWORD(v592) = v593;
            }

            *(v585 + 2 * v587) = v592;
            v586 = 1;
            v587 = 1;
          }

          while ((v591 & 1) == 0);
          if (v588 < 0x20)
          {
            LOWORD(v588) = v588 + 1;
          }

          *(v585 + 6) = v588;
        }

        ++*(v580 + 4 * v584);
        v594 = v581 & (*(*(v616 + 976) + 64) != 0);
        v578 = 1;
        v581 = 0;
        v61 = v669;
      }

      while ((v594 & 1) != 0);
    }
  }

LABEL_173:
  v152 = 0;
  v153 = 0;
  v154 = v618;
  v625 = v618 + 142;
  v614 = v658 - 180;
  v649 = v61 + 432;
  v155 = 9944;
  v156 = 1;
  v157 = a4;
  v158 = v621;
  do
  {
    v159 = v625[v153];
    if (v625[v153])
    {
      v645 = v156;
      v160 = *v154;
      v161 = byte_277C3CAFE[v160];
      v162 = v649 + 2608 * v153;
      v163 = *(v162 + 4);
      v164 = *(v162 + 8);
      v165 = byte_277C3CAE8[v160];
      v166 = *(v61 + 8352);
      if ((v152 & (v165 >> v164 < 4)) != 0)
      {
        v167 = 2;
      }

      else
      {
        v167 = 0;
      }

      if ((v152 & (v161 >> v163 < 4)) != 0)
      {
        result = 2;
      }

      else
      {
        result = 0;
      }

      v168 = *a5;
      v169 = **a5 & 7;
      v170 = __clz(v159);
      v171 = v170 ^ 0x1F;
      v172 = v159;
      v173 = (2 << (v170 ^ 0x1F)) - v159;
      v174 = v169 - v173;
      v665 = v163;
      v659 = v161;
      v655 = *(v61 + 8344);
      v641 = v164;
      v633 = v167;
      v637 = v165;
      v629 = result;
      if (v169 >= v173)
      {
        if (v170 != 31)
        {
          v183 = v173 + (v174 >> 1);
          v184 = v171 + 1;
          do
          {
            v185 = *(v157 + 40);
            v186 = (v185 >> 1) & 0x7F80 | 4;
            v187 = 1 << (v184 - 2);
            v188 = v185 - v186;
            v189 = (v183 & v187) == 0;
            if ((v183 & v187) != 0)
            {
              v190 = v188;
            }

            else
            {
              v190 = 0;
            }

            if (v189)
            {
              v191 = v188;
            }

            else
            {
              v191 = v186;
            }

            sub_277A64F90((v157 + 16), *(v157 + 32) + v190, v191);
            --v184;
          }

          while (v184 > 1);
        }

        v192 = *(v157 + 40);
        v193 = (v192 >> 1) & 0x7F80 | 4;
        v194 = v192 - v193;
        if (v174)
        {
          v195 = v193;
        }

        else
        {
          v195 = v194;
        }

        result = sub_277A64F90((v157 + 16), *(v157 + 32) + ((v174 << 31 >> 31) & v194), v195);
        v62 = v616;
      }

      else if (v170 != 31)
      {
        v175 = v171 + 1;
        do
        {
          v176 = *(v157 + 40);
          v177 = (v176 >> 1) & 0x7F80 | 4;
          v178 = 1 << (v175 - 2);
          v179 = v176 - v177;
          v180 = (v178 & v169) == 0;
          if ((v178 & v169) != 0)
          {
            v181 = v179;
          }

          else
          {
            v181 = 0;
          }

          if (v180)
          {
            v182 = v179;
          }

          else
          {
            v182 = v177;
          }

          result = sub_277A64F90((v157 + 16), *(v157 + 32) + v181, v182);
          --v175;
        }

        while (v175 > 1);
      }

      v196 = (((((v166 >> 31) & (v166 >> 3)) + v637) >> v641) + v633) * (v629 + ((((v655 >> 31) & (v655 >> 3)) + v659) >> v665));
      v197 = v168 + 1;
      v666 = v196 - 2;
      if (v196 >= 2)
      {
        v198 = 0;
        v660 = v614 + v155;
        v199 = v172;
        if (v172 <= 2)
        {
          v200 = 2;
        }

        else
        {
          v200 = v172;
        }

        v201 = (v200 - 1);
        do
        {
          v202 = v660 + 90 * v199 + 18 * (*v197 >> 4);
          v203 = *v197 & 7;
          result = sub_277A650D4(a4 + 16, *v197 & 7, v202, v172);
          v199 = v172;
          if (*(a4 + 48))
          {
            v204 = 0;
            v205 = *(v202 + 2 * v172);
            v206 = (v172 > 3) + (v205 >> 4) + 4;
            do
            {
              v207 = *(v202 + 2 * v204);
              v208 = v207 - (v207 >> v206);
              v209 = v207 + ((0x8000 - v207) >> v206);
              if (v204 >= v203)
              {
                LOWORD(v209) = v208;
              }

              *(v202 + 2 * v204++) = v209;
            }

            while (v201 != v204);
            v210 = *(v202 + 2 * v172);
            if (v205 < 0x20)
            {
              ++v210;
            }

            *(v202 + 2 * v172) = v210;
          }

          ++v197;
          v58 = v198++ == v666;
        }

        while (!v58);
      }

      v157 = a4;
      *a5 = v197;
      v61 = v669;
      v158 = v621;
      v156 = v645;
      v154 = v618;
    }

    v211 = (*(*(v62 + 976) + 77) == 0) & v156;
    v152 = 1;
    v155 = 10574;
    v153 = 1;
    v156 = 0;
  }

  while ((v211 & 1) != 0);
  v212 = *(v154 + 167);
  v213 = (v212 & 0x80) != 0 || v154[16] > 0;
  if (v154[144])
  {
    v214 = v213;
  }

  else
  {
    v214 = 0;
  }

  if (v607 && *(v611 + 552) == 2 && !v214 && !*(v61 + 11108 + 4 * (v212 & 7)))
  {
    v253 = **(v61 + 8280);
    if (v213)
    {
      if (*(v61 + 11108 + 4 * (*(v253 + 167) & 7)))
      {
        v254 = 0;
      }

      else
      {
        v254 = byte_277C3BD80[v607];
      }

      v287 = 0;
      v288 = *&byte_277BFDB54[4 * v254];
      v289 = *&byte_277BFDBA0[4 * v254];
      do
      {
        v290 = 0;
        do
        {
          result = sub_277A057C4((v61 + 416), v154, v254, 0, v287, v290, v157);
          v61 = v669;
          v290 += v289;
        }

        while (v290 < v158);
        v287 += v288;
      }

      while (v287 < v608);
    }

    else
    {
      v276 = *v253;
      if (*v253)
      {
        v277 = byte_277C3BD80[v276];
        v278 = **(v61 + 8544);
        v279 = **(v61 + 8552);
        if (*v609 == 1)
        {
          v280 = *(v61 + 8304);
          if ((*(v280 + 167) & 0x80) != 0 || v280[16] >= 1)
          {
            v278 = byte_277C3CAFE[*v280];
          }
        }

        v281 = v253[145];
        if (v609[1])
        {
          v282 = *(v61 + 8296);
          if ((*(v282 + 167) & 0x80) != 0 || v282[16] >= 1)
          {
            v279 = byte_277C3CAE8[*v282];
          }
        }

        if (dword_277C3BF30[byte_277C3BD80[v276]] <= v279)
        {
          v283 = v609[1];
        }

        else
        {
          v283 = 0;
        }

        if (dword_277C3BEE4[byte_277C3BD80[v276]] <= v278)
        {
          v284 = *v609;
        }

        else
        {
          v284 = 0;
        }

        v285 = v283 + v284;
        if (v277 == v281)
        {
          v286 = 0;
        }

        else
        {
          v286 = 0;
          do
          {
            ++v286;
            v277 = byte_277C3295E[v277];
          }

          while (v277 != v281);
        }

        v291 = byte_277BED7E8[v276];
        v292 = *(v61 + 11064) + 24 * byte_277C32948[v276] + 8 * v285 + 14990;
        v293 = v291 + 1;
        result = sub_277A650D4(a4 + 16, v286, v292, v291 + 1);
        v61 = v669;
        if (*(a4 + 48))
        {
          v294 = 0;
          v295 = *(v292 + 2 * v293);
          v296 = (v295 >> 4) + 4;
          if (v291 <= 1)
          {
            v297 = 1;
          }

          else
          {
            v297 = v291;
          }

          do
          {
            v298 = *(v292 + 2 * v294);
            v299 = v298 - (v298 >> v296);
            v300 = v298 + ((0x8000 - v298) >> v296);
            if (v294 >= v286)
            {
              LOWORD(v300) = v299;
            }

            *(v292 + 2 * v294++) = v300;
          }

          while (v297 != v294);
          v301 = *(v292 + 2 * v293);
          if (v295 < 0x20)
          {
            ++v301;
          }

          *(v292 + 2 * v293) = v301;
        }
      }

      v302 = v154[145];
      v217 = v609[437];
      v219 = dword_277C3BF30[v302];
      if (v609[436])
      {
        result = memset(*(v61 + 8544), dword_277C3BEE4[v302], v609[436]);
        v61 = v669;
      }

      v157 = a4;
      if (v217)
      {
        goto LABEL_241;
      }
    }
  }

  else
  {
    v215 = v154[145];
    v216 = v609[436];
    v217 = v609[437];
    v218 = v154[144] != 0 && v213;
    if (v218)
    {
      v219 = 4 * v217;
    }

    else
    {
      v219 = dword_277C3BF30[v215];
    }

    if (v609[436])
    {
      v220 = dword_277C3BEE4[v215];
      if (v218)
      {
        v221 = 4 * v216;
      }

      else
      {
        v221 = v220;
      }

      result = memset(*(v61 + 8544), v221, v216);
      v61 = v669;
    }

    if (v217)
    {
LABEL_241:
      result = memset(*(v61 + 8552), v219, v217);
      v61 = v669;
    }
  }

  if (v154[144])
  {
    return result;
  }

  v610 = *(v157 + 42) + 8 * *(v157 + 28) + 10;
  v222 = **(v61 + 8280);
  v223 = *v222;
  if ((*(v222 + 167) & 0x80) != 0)
  {
    v224 = *(v62 + 976);
  }

  else
  {
    v224 = *(v62 + 976);
    if (v222[16] <= 0)
    {
      v634 = *(v224 + 77);
      v671 = 0;
      v670 = 0;
      v225 = byte_277C3CAFE[v223];
      v226 = *(v61 + 8344);
      if (v226 < 0)
      {
        v225 += v226 >> (*(v61 + 436) + 3);
      }

      v227 = v225 >> 2;
      v228 = byte_277C3CAE8[v223];
      v229 = *(v61 + 8352);
      if (v229 < 0)
      {
        v228 += v229 >> (*(v61 + 440) + 3);
      }

      v230 = v228 >> 2;
      if (v227 >= 16)
      {
        v231 = 16;
      }

      else
      {
        v231 = v227;
      }

      v619 = v231;
      if (v230 >= 16)
      {
        v232 = 16;
      }

      else
      {
        v232 = v228 >> 2;
      }

      v612 = v232;
      v615 = v230;
      if (v230 >= 1)
      {
        v233 = 0;
        v622 = v227;
        v630 = v61 + 11108;
        v234 = v227;
        while (1)
        {
          v617 = v233 + v612;
          if (v234 < 1)
          {
            goto LABEL_293;
          }

          v235 = 0;
          v236 = v615;
          if (v617 < v615)
          {
            v236 = v233 + v612;
          }

          v638 = v236;
          v642 = v233;
          do
          {
            v237 = 0;
            v238 = v235;
            v235 += v619;
            if (v235 < v234)
            {
              v234 = v235;
            }

            v626 = v234;
            v646 = v235;
            v651 = v238;
            do
            {
              if (v237)
              {
                if ((*(v61 + 428) & 1) == 0)
                {
                  break;
                }

                v239 = **(v61 + 8280);
                if (*(v630 + 4 * (*(v239 + 167) & 7)))
                {
LABEL_275:
                  v240 = 0;
                  goto LABEL_276;
                }

                v240 = byte_277C3BD80[byte_277C3BCDE[4 * *v239 + 2 * *(v649 + 2608 * v237 + 4) + *(v649 + 2608 * v237 + 8)]];
                if (v240 > 0x10)
                {
                  if (v240 == 17)
                  {
                    v240 = 9;
                  }

                  else if (v240 == 18)
                  {
                    v240 = 10;
                  }
                }

                else if (v240 - 11 < 2 || v240 == 4)
                {
                  v240 = 3;
                }
              }

              else
              {
                v242 = **(v61 + 8280);
                if (*(v630 + 4 * (*(v242 + 167) & 7)))
                {
                  goto LABEL_275;
                }

                v240 = *(v242 + 145);
              }

LABEL_276:
              v243 = v649 + 2608 * v237;
              v244 = *(v243 + 8);
              v245 = (v638 + (1 << v244 >> 1)) >> v244;
              v246 = v233 >> v244;
              if ((v233 >> v244) < v245)
              {
                v247 = *&byte_277BFDB54[4 * v240];
                v248 = *&byte_277BFDBA0[4 * v240];
                v249 = v248 * v247;
                v250 = (v626 + (1 << *(v243 + 4) >> 1)) >> *(v243 + 4);
                v661 = (v638 + (1 << v244 >> 1)) >> v244;
                v656 = v247;
                do
                {
                  v251 = v238 >> *(v243 + 4);
                  if (v251 < v250)
                  {
                    v252 = *(&v670 + v237);
                    do
                    {
                      result = sub_277A36FF0();
                      v61 = v669;
                      v252 += v249;
                      v251 += v248;
                    }

                    while (v251 < v250);
                    *(&v670 + v237) = v252;
                    v238 = v651;
                    v243 = v649 + 2608 * v237;
                    v245 = v661;
                    v247 = v656;
                  }

                  v246 += v247;
                }

                while (v246 < v245);
              }

              v233 = v642;
              v235 = v646;
              if (v634)
              {
                break;
              }

              v367 = v237++ >= 2;
            }

            while (!v367);
            v234 = v622;
          }

          while (v235 < v622);
LABEL_293:
          v233 = v617;
          if (v617 >= v615)
          {
            goto LABEL_341;
          }
        }
      }

      goto LABEL_341;
    }
  }

  v643 = 0;
  v255 = byte_277C3F990[v223];
  v256 = byte_277C36D60[v223];
  v671 = 0;
  v670 = 0;
  v631 = v255;
  if (v255 >= 0x10)
  {
    v255 = 16;
  }

  v623 = v256;
  v627 = v255;
  if (v256 >= 0x10)
  {
    v257 = 16;
  }

  else
  {
    v257 = v256;
  }

  v620 = v257;
  v639 = v61 + 11108;
  v635 = *(v224 + 77);
  do
  {
    v647 = 0;
    do
    {
      v258 = 0;
      do
      {
        if (v258 && *(v61 + 428) != 1)
        {
          break;
        }

        v259 = v649 + 2608 * v258;
        v260 = *(v259 + 4);
        v261 = *(v259 + 8);
        v262 = byte_277C3BCDE[4 * *v222 + 2 * v260 + v261];
        if (*(v639 + 4 * (*(**(v61 + 8280) + 167) & 7)))
        {
          v263 = 0;
        }

        else
        {
          v263 = byte_277C3BD80[v262];
          if (v258)
          {
            if (byte_277C3BD80[v262] > 0x10u)
            {
              if (v263 == 17)
              {
                v263 = 9;
              }

              else if (v263 == 18)
              {
                v263 = 10;
              }
            }

            else if ((v263 - 11) < 2 || v263 == 4)
            {
              v263 = 3;
            }
          }
        }

        v264 = byte_277C3BCDE[2 * v260 + 48 + v261];
        v265 = byte_277C3F990[v264];
        v266 = v643 >> v261;
        v267 = (v643 >> v261) + byte_277C36D60[v264];
        if (v267 >= byte_277C36D60[v262])
        {
          v268 = byte_277C36D60[v262];
        }

        else
        {
          v268 = v267;
        }

        v662 = v647 >> v260;
        v269 = (v647 >> v260) + v265;
        if (v269 >= byte_277C3F990[v262])
        {
          v270 = byte_277C3F990[v262];
        }

        else
        {
          v270 = v269;
        }

        v657 = v268;
        if (v266 < v268)
        {
          v271 = *&byte_277BFDBA0[4 * v263];
          v652 = *&byte_277BFDB54[4 * v263];
          v667 = v270;
          do
          {
            v272 = a1;
            if (v662 < v270)
            {
              v273 = *(&v670 + v258);
              v274 = v662;
              do
              {
                result = sub_277A05C78(a4, v272 + 245616, v61, v61 + 416, v222, v258, v262, v273, v266, v274, v263);
                v272 = a1;
                v61 = v669;
                v270 = v667;
                v273 = (v273 + v652 * v271);
                *(&v670 + v258) = v273;
                v274 += v271;
              }

              while (v274 < v667);
            }

            v266 += v652;
          }

          while (v266 < v657);
        }

        if (v635)
        {
          break;
        }

        v367 = v258++ >= 2;
      }

      while (!v367);
      v647 += v627;
    }

    while (v647 < v631);
    v643 += v620;
  }

  while (v643 < v623);
LABEL_341:
  *(v61 + 154952) += *(a4 + 42) + 8 * *(a4 + 28) - v610 + 10;
  return result;
}