char *sub_277A88FEC(char *result, int a2, int a3, int *a4)
{
  v5 = result;
  v6 = *(result + 4);
  if (v6 == a4[2] && a4[4] == v6)
  {
    if (a2 >= 1)
    {
      v7 = (result + 24);
      v8 = a2;
      v9 = &a4[2 * a3 + 6];
      do
      {
        v11 = *v9;
        v9 += 2;
        v10 = v11;
        v12 = *v7++;
        result = memcpy(v10, v12, 4 * v5[2] * v5[3]);
        --v8;
      }

      while (v8);
    }
  }

  else if (a2 >= 1)
  {
    v13 = 0;
    v14 = a3;
    v15 = a4[3];
    v16 = a2;
    do
    {
      if (v15 >= 1)
      {
        for (i = 0; i < v15; ++i)
        {
          result = memcpy((*&a4[2 * v13 + 6 + 2 * v14] + 4 * a4[4] * i), (*&v5[2 * v13 + 6] + 4 * v5[4] * i), 4 * a4[2]);
          v15 = a4[3];
        }
      }

      ++v13;
    }

    while (v13 != v16);
  }

  return result;
}

uint64_t sub_277A89144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = *MEMORY[0x277D85DE8];
  v6 = a3 + 13618;
  v7 = 20;
  v8 = a2;
  do
  {
    sub_2779F1B94(v8, v6, 0);
    v6 += 22;
    v8 += 40;
    --v7;
  }

  while (v7);
  if (*(a1 + 24))
  {
    v9 = a2 + 15520;
    v10 = a3 + 11852;
    v11 = 3;
    do
    {
      sub_2779F1B94(v9, v10, 0);
      v10 += 6;
      v9 += 8;
      --v11;
    }

    while (v11);
  }

  v12 = a2 + 19024;
  v13 = a3 + 11870;
  v14 = 3;
  do
  {
    sub_2779F1B94(v12, v13, 0);
    v13 += 6;
    v12 += 8;
    --v14;
  }

  while (v14);
  v15 = a2 + 1008;
  v16 = a3 + 14186;
  do
  {
    v17 = v15;
    v18 = v16;
    v19 = 5;
    do
    {
      sub_2779F1B94(v17, v18, 0);
      v18 += 28;
      v17 += 52;
      --v19;
    }

    while (v19);
    ++v14;
    v16 += 140;
    v15 += 676;
  }

  while (v14 != 5);
  v20 = a2 + 800;
  v21 = a3 + 12726;
  v22 = 4;
  do
  {
    sub_2779F1B94(v20, v21, 0);
    v21 += 28;
    v20 += 52;
    --v22;
  }

  while (v22);
  v23 = 0;
  v156 = a2;
  v157 = a3;
  v24 = a3 + 12838;
  v25 = a2 + 9796;
  v26 = 1;
  do
  {
    v27 = v26;
    v28 = v24 + 390 * v23;
    v29 = 13;
    v30 = v25 + 728 * v23;
    do
    {
      sub_2779F1B94(v30, v28, 0);
      v28 += 30;
      v30 += 56;
      --v29;
    }

    while (v29);
    v26 = 0;
    v23 = 1;
  }

  while ((v27 & 1) != 0);
  sub_2779F1B94(v156 + 11428, v157 + 12694, 0);
  v31 = 0;
  v32 = v156 + 11252;
  v33 = v157 + 12562;
  do
  {
    if (*(*(a1 + 24696) + 60) && ((0x1F07FFuLL >> v31) & 1) != 0 && ((0x2F0BFFuLL >> v31) & 1) != 0)
    {
      sub_2779F1B94(v32, v33, 0);
    }

    ++v31;
    v33 += 6;
    v32 += 8;
  }

  while (v31 != 22);
  v155 = a1;
  v34 = v156 + 18832;
  v35 = v157 + 14058;
  v36 = 16;
  do
  {
    sub_2779F1B94(v34, v35, 0);
    v35 += 8;
    v34 += 12;
    --v36;
  }

  while (v36);
  v37 = v156 + 15336;
  v38 = v157 + 11204;
  do
  {
    sub_2779F1B94(v156 + 12704 + 28 * v36, v157 + 9720 + 16 * v36, 0);
    sub_2779F1B94(v156 + 12900 + 28 * v36, v157 + 9832 + 16 * v36, 0);
    v39 = v37;
    v40 = v38;
    v41 = 3;
    do
    {
      sub_2779F1B94(v39, v40, 0);
      v40 += 6;
      v39 += 8;
      --v41;
    }

    while (v41);
    ++v36;
    v38 += 18;
    v37 += 24;
  }

  while (v36 != 7);
  sub_2779F1B94(v156 + 15504, v157 + 11330, 0);
  sub_2779F1B94(v156 + 15512, v157 + 11336, 0);
  v42 = 0;
  v43 = v156 + 14216;
  v44 = v157 + 10574;
  do
  {
    v45 = v43;
    v46 = v44;
    v47 = 5;
    do
    {
      sub_2779F1B94(v45 - 1120, v46 - 630, 0);
      sub_2779F1B94(v45, v46, 0);
      v46 += 18;
      v45 += 32;
      --v47;
    }

    while (v47);
    ++v42;
    v44 += 90;
    v43 += 160;
  }

  while (v42 != 7);
  sub_2779F1B94(v160, v157 + 21018, 0);
  v48 = 0;
  v49 = v156 + 11672;
  v50 = v157 + 21036;
  v51 = v156 + 11672;
  do
  {
    v52 = (v49 + (v48 << 7));
    if (v48 > 1)
    {
      sub_2779F1B94(v49 + (v48 << 7), v50 + 34 * v48 - 68, 0);
    }

    else
    {
      v52[2] = 0u;
      v52[3] = 0u;
      *v52 = 0u;
      v52[1] = 0u;
    }

    v53 = v48 + 1;
    v54 = (11 * (v48 + 1)) >> 5;
    if (-3 * v54 + v48 + 1)
    {
      sub_2779F1B94((v52 + 4), v50 + 34 * (v54 + 3 * (-3 * v54 + v48 + 1) - 3), 0);
    }

    else
    {
      v52[6] = 0u;
      v52[7] = 0u;
      v52[4] = 0u;
      v52[5] = 0u;
    }

    v55 = 0;
    v56 = &v160[v48];
    v57 = vld1q_dup_f32(v56);
    do
    {
      *(v51 + v55) = vaddq_s32(*(v51 + v55), v57);
      v55 += 16;
    }

    while (v55 != 64);
    v51 += 128;
    ++v48;
  }

  while (v53 != 8);
  v58 = 0;
  v59 = v156 + 19048;
  v60 = v157 + 15014;
  do
  {
    v61 = v59;
    v62 = v60;
    v63 = 3;
    do
    {
      sub_2779F1B94(v61, v62, 0);
      v62 += 8;
      v61 += 20;
      --v63;
    }

    while (v63);
    ++v58;
    v60 += 24;
    v59 += 60;
  }

  while (v58 != 4);
  v64 = v156 + 19288;
  v65 = v157 + 11654;
  v66 = 21;
  do
  {
    sub_2779F1B94(v64, v65, 0);
    v65 += 6;
    v64 += 8;
    --v66;
  }

  while (v66);
  v67 = 0;
  v68 = v156 + 20480;
  v69 = v157 + 15170;
  v70 = v157 + 20610;
  v71 = v156 + 19712;
  v72 = &unk_277BFB1A0;
  do
  {
    v73 = 0;
    v158 = v71;
    v159 = v70;
    do
    {
      if (v72[v73 * 4])
      {
        sub_2779F1B94(v71, v70, &unk_277BFC0D0 + 64 * dword_277BFB1D0[v73 + 5]);
      }

      ++v73;
      v70 += 136;
      v71 += 256;
    }

    while (v73 != 3);
    v74 = 0;
    v75 = 1;
    do
    {
      v76 = v74;
      if (dword_277BFB1F0[4 * v75 + v67])
      {
        v77 = &unk_277BFC0D0 + 64 * dword_277BFB1D0[v75];
        v78 = v69 + 1768 * v75;
        v79 = v68 + 3328 * v75;
        v80 = 13;
        do
        {
          sub_2779F1B94(v79, v78, v77);
          v78 += 34;
          v79 += 64;
          --v80;
        }

        while (v80);
      }

      v74 = 1;
      v75 = 2;
    }

    while ((v76 & 1) == 0);
    ++v67;
    v70 = v159 + 34;
    v71 = v158 + 64;
    ++v72;
    v69 += 442;
    v68 += 832;
  }

  while (v67 != 4);
  v81 = v156 + 11448;
  v82 = v157 + 14886;
  v83 = 8;
  do
  {
    sub_2779F1B94(v81, v82, 0);
    v82 += 16;
    v81 += 28;
    --v83;
  }

  while (v83);
  sub_2779F1B94(v156 + 12696, v157 + 12484, 0);
  v84 = v156 + 30516;
  v85 = v157 + 12508;
  v86 = 3;
  do
  {
    sub_2779F1B94(v84, v85, 0);
    v85 += 18;
    v84 += 32;
    --v86;
  }

  while (v86);
  v87 = v156 + 30492;
  v88 = v157 + 12490;
  v89 = 3;
  do
  {
    result = sub_2779F1B94(v87, v88, 0);
    v88 += 6;
    v87 += 8;
    --v89;
  }

  while (v89);
  if ((*v155 & 0xFD) != 0)
  {
    v91 = v156 + 15824;
    v92 = v157 + 11342;
    v93 = 5;
    do
    {
      sub_2779F1B94(v91, v92, 0);
      v92 += 6;
      v91 += 8;
      --v93;
    }

    while (v93);
    v94 = v156 + 15680;
    v95 = v157 + 11372;
    do
    {
      v96 = v94;
      v97 = v95;
      v98 = 6;
      do
      {
        sub_2779F1B94(v96, v97, 0);
        v97 += 6;
        v96 += 8;
        --v98;
      }

      while (v98);
      ++v93;
      v95 += 36;
      v94 += 48;
    }

    while (v93 != 3);
    v99 = v156 + 15864;
    v100 = v157 + 11480;
    v101 = 5;
    do
    {
      sub_2779F1B94(v99, v100, 0);
      v100 += 6;
      v99 += 12;
      --v101;
    }

    while (v101);
    v102 = v156 + 15924;
    v103 = v157 + 11510;
    do
    {
      v104 = v102;
      v105 = v103;
      v106 = 3;
      do
      {
        sub_2779F1B94(v104, v105, 0);
        v105 += 6;
        v104 += 12;
        --v106;
      }

      while (v106);
      ++v101;
      v103 += 18;
      v102 += 36;
    }

    while (v101 != 3);
    v107 = 0;
    v108 = v156 + 16032;
    v109 = v157 + 11564;
    do
    {
      v110 = v108;
      v111 = v109;
      v112 = 3;
      do
      {
        sub_2779F1B94(v110, v111, 0);
        v111 += 6;
        v110 += 8;
        --v112;
      }

      while (v112);
      ++v107;
      v109 += 18;
      v108 += 24;
    }

    while (v107 != 3);
    v113 = v157 + 11624;
    v114 = v156 + 16112;
    do
    {
      sub_2779F1B94(v114 - 8, v113 - 6, 0);
      sub_2779F1B94(v114, v113, 0);
      v113 += 12;
      v114 += 16;
      --v107;
    }

    while (v107);
    v115 = v156 + 16152;
    v116 = v157 + 11888;
    v117 = 4;
    do
    {
      sub_2779F1B94(v115, v116, 0);
      v116 += 6;
      v115 += 8;
      --v117;
    }

    while (v117);
    v118 = v156 + 15544;
    v119 = v157 + 8090;
    v120 = 6;
    do
    {
      sub_2779F1B94(v118, v119, 0);
      v119 += 6;
      v118 += 8;
      --v120;
    }

    while (v120);
    sub_2779F1B94(v156 + 15592, v157 + 8126, 0);
    sub_2779F1B94(v156 + 15600, v157 + 8132, 0);
    v121 = v156 + 15608;
    v122 = v157 + 8138;
    v123 = 6;
    do
    {
      sub_2779F1B94(v121, v122, 0);
      v122 += 6;
      v121 += 8;
      --v123;
    }

    while (v123);
    v124 = v156 + 15656;
    v125 = v157 + 8174;
    v126 = 3;
    do
    {
      sub_2779F1B94(v124, v125, 0);
      v125 += 6;
      v124 += 8;
      --v126;
    }

    while (v126);
    v127 = v156 + 16184;
    v128 = v157 + 0x2000;
    v129 = 8;
    do
    {
      sub_2779F1B94(v127, v128, 0);
      v128 += 18;
      v127 += 32;
      --v129;
    }

    while (v129);
    v130 = v156 + 16440;
    v131 = v157 + 8336;
    v132 = 22;
    do
    {
      sub_2779F1B94(v130, v131, 0);
      v131 += 6;
      v130 += 8;
      --v132;
    }

    while (v132);
    v133 = v156 + 16616;
    v134 = v157 + 8468;
    do
    {
      if (*(dword_27A722360 + v132) >= 1)
      {
        sub_2779F1B94(v133, v134, 0);
      }

      v132 += 32;
      v134 += 34;
      v133 += 64;
    }

    while (v132 != 704);
    v135 = v156 + 18024;
    v136 = v157 + 9216;
    v137 = v156 + 18232;
    v138 = v157 + 9372;
    v139 = 4;
    do
    {
      sub_2779F1B94(v135, v136, 0);
      sub_2779F1B94(v137, v138, 0);
      v138 += 10;
      v137 += 16;
      v136 += 6;
      v135 += 8;
      --v139;
    }

    while (v139);
    v140 = v156 + 18056;
    v141 = v157 + 9240;
    v142 = 22;
    do
    {
      sub_2779F1B94(v140, v141, 0);
      v141 += 6;
      v140 += 8;
      --v142;
    }

    while (v142);
    v143 = v157 + 9436;
    v144 = v156 + 18428;
    v145 = 19;
    do
    {
      sub_2779F1B94(v144, v143, 0);
      v143 += 8;
      v144 += 12;
      --v145;
    }

    while (v145);
    v146 = v157 + 9606;
    v147 = v156 + 18680;
    v148 = 19;
    do
    {
      sub_2779F1B94(v147, v146, 0);
      v146 += 6;
      v147 += 8;
      --v148;
    }

    while (v148);
    v149 = v156 + 18296;
    v150 = v157 + 11780;
    v151 = 6;
    do
    {
      sub_2779F1B94(v149, v150, 0);
      v150 += 6;
      v149 += 8;
      --v151;
    }

    while (v151);
    v152 = v156 + 18344;
    v153 = v157 + 11816;
    v154 = 6;
    do
    {
      result = sub_2779F1B94(v152, v153, 0);
      v153 += 6;
      v152 += 8;
      --v154;
    }

    while (v154);
  }

  return result;
}

void sub_277A89D18()
{
  v0 = 0;
  v1 = xmmword_277BB74D0;
  v2 = xmmword_277BB7060;
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  __asm { FMOV            V5.2D, #0.25 }

  v9 = vdupq_n_s64(0x3FA566CF41F212D7uLL);
  v10 = vdupq_n_s64(0x4003491D14E3BCD3uLL);
  v11.i64[0] = 0x800000008;
  v11.i64[1] = 0x800000008;
  do
  {
    v12 = *(&unk_277BFE1FA + 2 * vminq_u32(v2, v3).u32[0]);
    v13 = vmovl_high_s16(v12);
    v14.i64[0] = v13.i32[0];
    v14.i64[1] = v13.i32[1];
    v15 = vcvtq_f64_s64(v14);
    v14.i64[0] = v13.i32[2];
    v14.i64[1] = v13.i32[3];
    v16 = vcvtq_f64_s64(v14);
    v17 = vmovl_s16(*v12.i8);
    v14.i64[0] = v17.i32[0];
    v14.i64[1] = v17.i32[1];
    v18 = vcvtq_f64_s64(v14);
    v14.i64[0] = v17.i32[2];
    v14.i64[1] = v17.i32[3];
    v19 = (&unk_280ABBC20 + v0);
    *v19 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v18, _Q5))), vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(vcvtq_f64_s64(v14), _Q5))));
    v19[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v15, _Q5))), vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v16, _Q5))));
    v2 = vaddq_s32(v2, v11);
    v1 = vaddq_s32(v1, v11);
    v0 += 32;
  }

  while (v0 != 1024);
  v20 = 0;
  v21 = xmmword_277BB74D0;
  v22 = xmmword_277BB7060;
  v23.i64[0] = 0xFF000000FFLL;
  v23.i64[1] = 0xFF000000FFLL;
  v24 = vdupq_n_s64(0x3FB0000000000000uLL);
  v25.i64[0] = 0x800000008;
  v25.i64[1] = 0x800000008;
  do
  {
    v26 = *(&unk_277BFE3FA + 2 * vminq_u32(v22, v23).u32[0]);
    v27 = vmovl_high_s16(v26);
    v28.i64[0] = v27.i32[0];
    v28.i64[1] = v27.i32[1];
    v29 = vcvtq_f64_s64(v28);
    v28.i64[0] = v27.i32[2];
    v28.i64[1] = v27.i32[3];
    v30 = vcvtq_f64_s64(v28);
    v31 = vmovl_s16(*v26.i8);
    v28.i64[0] = v31.i32[0];
    v28.i64[1] = v31.i32[1];
    v32 = vcvtq_f64_s64(v28);
    v28.i64[0] = v31.i32[2];
    v28.i64[1] = v31.i32[3];
    v33 = (&unk_280ABC020 + v20);
    *v33 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v32, v24))), vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(vcvtq_f64_s64(v28), v24))));
    v33[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v29, v24))), vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v30, v24))));
    v22 = vaddq_s32(v22, v25);
    v21 = vaddq_s32(v21, v25);
    v20 += 32;
  }

  while (v20 != 1024);
  v34 = 0;
  v35 = xmmword_277BB74D0;
  v36 = xmmword_277BB7060;
  v37.i64[0] = 0xFF000000FFLL;
  v37.i64[1] = 0xFF000000FFLL;
  v38 = vdupq_n_s64(0x3F90000000000000uLL);
  v39.i64[0] = 0x800000008;
  v39.i64[1] = 0x800000008;
  do
  {
    v40 = *(&unk_277BFE5FA + 2 * vminq_u32(v36, v37).u32[0]);
    v41 = vmovl_high_s16(v40);
    v42.i64[0] = v41.i32[0];
    v42.i64[1] = v41.i32[1];
    v43 = vcvtq_f64_s64(v42);
    v42.i64[0] = v41.i32[2];
    v42.i64[1] = v41.i32[3];
    v44 = vcvtq_f64_s64(v42);
    v45 = vmovl_s16(*v40.i8);
    v42.i64[0] = v45.i32[0];
    v42.i64[1] = v45.i32[1];
    v46 = vcvtq_f64_s64(v42);
    v42.i64[0] = v45.i32[2];
    v42.i64[1] = v45.i32[3];
    v47 = (&unk_280ABC420 + v34);
    *v47 = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v46, v38))), vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(vcvtq_f64_s64(v42), v38))));
    v47[1] = vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v43, v38))), vcvtq_s64_f64(vmlaq_f64(v10, v9, vmulq_f64(v44, v38))));
    v36 = vaddq_s32(v36, v39);
    v35 = vaddq_s32(v35, v39);
    v34 += 32;
  }

  while (v34 != 1024);
}

uint64_t sub_277A89FA0(int a1, int a2, int a3)
{
  if (a3 >= 0xFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = a3;
  }

  if (a3 < 0)
  {
    v3 = 0;
  }

  switch(a1)
  {
    case 8:
      v4 = &unk_277BFDBFA;
      goto LABEL_12;
    case 12:
      v4 = &unk_277BFDFFA;
      goto LABEL_12;
    case 10:
      v4 = &unk_277BFDDFA;
LABEL_12:
      v5 = v4[v3];
      goto LABEL_14;
  }

  v5 = -1;
LABEL_14:
  v6 = v5;
  v7 = v6 * v6;
  if (a2)
  {
    v8 = v6;
    if ((a2 & 0xFE) == 2)
    {
      v9 = v8 * 0.0015 + 3.25;
    }

    else
    {
      v9 = v8 * 0.0015 + 3.2;
    }

    v10 = v9 * v7;
  }

  else
  {
    v10 = (v6 * 0.0015 + 3.3) * v7;
  }

  v11 = v10;
  if (a1 != 8)
  {
    if (a1 == 12)
    {
      v11 = (v11 + 128) >> 8;
    }

    else
    {
      if (a1 != 10)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = (v11 + 8) >> 4;
    }
  }

  v12 = 0x7FFFFFFF;
  if (v11 < 0x7FFFFFFF)
  {
    v12 = v11;
  }

  if (v11 <= 0)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_277A8A0B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  result = sub_277A89FA0(a2, a3, a1);
  if (a6 && !a7)
  {
    if (a8)
    {
      v14 = (dword_277BFB220[a4] * result) >> 7;
      return ((v14 * dword_277BFB23C[a5]) >> 7) + v14;
    }
  }

  return result;
}

uint64_t sub_277A8A144(int a1, int a2, double a3)
{
  if (a2 >= 0xFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < 0)
  {
    v3 = 0;
  }

  switch(a1)
  {
    case 8:
      v4 = &unk_277BFDBFA;
      goto LABEL_12;
    case 12:
      v4 = &unk_277BFDFFA;
      goto LABEL_12;
    case 10:
      v4 = &unk_277BFDDFA;
LABEL_12:
      v5 = v4[v3];
      goto LABEL_14;
  }

  v5 = -1;
LABEL_14:
  v6 = v5;
  v7 = rint(v5 / sqrt(a3));
  if (v7 == v5)
  {
    return 0;
  }

  v9 = a2;
  if (v7 >= v6)
  {
    if (a2 > 254)
    {
      return (v9 - a2);
    }

    v14 = a2;
    while (1)
    {
      v9 = v14 + 1;
      if ((v14 + 1) < 0xFF)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 255;
      }

      if (v14 < -1)
      {
        v15 = 0;
      }

      if (a1 == 8)
      {
        v16 = &unk_277BFDBFA;
        goto LABEL_48;
      }

      if (a1 == 12)
      {
        break;
      }

      if (a1 == 10)
      {
        v16 = &unk_277BFDDFA;
LABEL_48:
        v17 = v16[v15];
        goto LABEL_50;
      }

      v17 = -1;
LABEL_50:
      if (v14 <= 253)
      {
        ++v14;
        if (v17 < v7)
        {
          continue;
        }
      }

      return (v9 - a2);
    }

    v16 = &unk_277BFDFFA;
    goto LABEL_48;
  }

  if (a2 >= 1)
  {
    v10 = a2;
    while (1)
    {
      v9 = v10 - 1;
      if ((v10 - 1) >= 0xFF)
      {
        v11 = 255;
      }

      else
      {
        v11 = v10 - 1;
      }

      if (v10 <= 0)
      {
        v11 = 0;
      }

      if (a1 == 8)
      {
        v12 = &unk_277BFDBFA;
        goto LABEL_30;
      }

      if (a1 == 12)
      {
        break;
      }

      if (a1 == 10)
      {
        v12 = &unk_277BFDDFA;
LABEL_30:
        v13 = v12[v11];
        goto LABEL_32;
      }

      v13 = -1;
LABEL_32:
      if (v10 >= 2)
      {
        --v10;
        if (v13 > v7)
        {
          continue;
        }
      }

      return (v9 - a2);
    }

    v12 = &unk_277BFDFFA;
    goto LABEL_30;
  }

  return (v9 - a2);
}

uint64_t sub_277A8A2EC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v82 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = a3;
  }

  v75 = v4;
  v62 = a1 + 37760;
  v77 = a2 + 1286;
  v72 = a2 + 1134;
  v73 = a2 + 1206;
  v70 = a2;
  v71 = a2 + 1070;
  v66 = a2 + 966;
  v68 = a2 + 1014;
  v64 = a2 + 1374;
  do
  {
    v5 = 0;
    do
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v7;
        if (v3 > 2)
        {
          if (v3 == 3)
          {
            v9 = v72 + 36 * v5 + 18 * v6;
            goto LABEL_21;
          }

          if (v3 != 4)
          {
            if (v3 == 5)
            {
              v9 = v77 + 44 * v5 + 22 * v6;
              goto LABEL_21;
            }

            goto LABEL_18;
          }

          v9 = v73 + 40 * v5 + 20 * v6;
        }

        else
        {
          if (!v3)
          {
            v9 = v66 + 24 * v5 + 12 * v6;
            goto LABEL_21;
          }

          if (v3 != 1)
          {
            if (v3 == 2)
            {
              v9 = v71 + 32 * v5 + 16 * v6;
              goto LABEL_21;
            }

LABEL_18:
            v9 = v64 + 48 * v5 + 24 * v6;
            goto LABEL_21;
          }

          v9 = v68 + 28 * v5 + 14 * v6;
        }

LABEL_21:
        sub_2779F1B94(v62 + 176 * v3 + 88 * v5 + 44 * v6, v9, 0);
        v7 = 0;
        v6 = 1;
      }

      while ((v8 & 1) != 0);
      ++v5;
    }

    while (v5 != v75);
    ++v3;
  }

  while (v3 != 7);
  v10 = 0;
  v11 = v70 + 1470;
  v12 = v70 + 1790;
  v13 = v70 + 390;
  v55 = v70 + 930;
  v54 = v70 + 5990;
  v14 = a1;
  v15 = a1 + 1592;
  v16 = (a1 + 1648);
  do
  {
    v17 = 0;
    if (v10 >= 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = v10;
    }

    v65 = v10;
    v69 = a1 + 7552 * v10;
    v67 = v54 + 420 * v18;
    v58 = v16;
    v59 = v15;
    v79 = v15;
    v19 = v55;
    v60 = v13;
    v78 = v13;
    v61 = v12;
    v63 = v11;
    v76 = v12;
    v57 = v14;
    do
    {
      v74 = v16;
      v20 = v70;
      v21 = v14;
      v22 = 13;
      do
      {
        sub_2779F1B94(v21, v20, 0);
        v20 += 6;
        v21 += 8;
        --v22;
      }

      while (v22);
      v23 = v11;
      for (i = 104; i != 152; i += 12)
      {
        sub_2779F1B94(v14 + i, v23, 0);
        v23 += 8;
      }

      v25 = v76;
      do
      {
        sub_2779F1B94(v14 + i, v25, 0);
        i += 32;
        v25 += 10;
      }

      while (i != 1496);
      for (j = 0; j != 1344; j += 32)
      {
        v27 = (v14 + j);
        v28 = *(v14 + j + 156);
        v29 = v28 - *(v14 + j + 152) + 512;
        v27[42] = 0;
        v27[43] = v29;
        v30 = *(v14 + j + 160);
        v31 = v30 - v28;
        v32 = *(v14 + j + 164) - v30;
        v27[44] = v31;
        v27[45] = v32;
      }

      v33 = v78;
      for (k = 1496; k != 1568; k += 8)
      {
        sub_2779F1B94(v14 + k, v33, 0);
        v33 += 6;
      }

      v35 = v19;
      do
      {
        sub_2779F1B94(v14 + k, v35, 0);
        k += 8;
        v35 += 6;
      }

      while (k != 1592);
      v36 = 0;
      v37 = v69 + 3776 * v17 + 1592;
      v38 = v79;
      do
      {
        result = sub_2779F1B94(v80, v67 + 210 * v17 + 10 * v36, 0);
        v40 = 0;
        v41 = 0;
        v42 = v81;
        v43 = v38;
        do
        {
          for (m = 0; m != 12; m += 4)
          {
            *(v43 + m) = *&v80[m] + v41;
          }

          v41 += v42;
          v43 += 12;
          v45 = v40 >= 9;
          v40 += 3;
        }

        while (!v45);
        *(v37 + 104 * v36++ + 48) = v41;
        v38 += 104;
      }

      while (v36 != 21);
      v46 = 0;
      v47 = v74;
      do
      {
        v48 = (v37 + 104 * v46);
        v49 = *v48;
        v48[13] = *v48;
        v50 = vdupq_n_s32(v49);
        v51 = v47;
        v52 = 12;
        do
        {
          v53 = *(&v51[-4] + 12);
          *v51++ = vsubq_s32(v53, vextq_s8(v50, v53, 0xCuLL));
          v50 = v53;
          v52 -= 4;
        }

        while (v52);
        ++v46;
        v47 = (v47 + 104);
      }

      while (v46 != 21);
      ++v17;
      v14 += 3776;
      v11 += 32;
      v76 += 420;
      v19 += 18;
      v78 += 54;
      v79 += 3776;
      v16 = v74 + 236;
    }

    while (v17 != v75);
    v10 = v65 + 1;
    v70 += 78;
    v14 = v57 + 7552;
    v11 = v63 + 64;
    v12 = v61 + 840;
    v13 = v60 + 108;
    v15 = v59 + 7552;
    v16 = v58 + 472;
  }

  while (v65 != 4);
  return result;
}

_DWORD *sub_277A8A7E4(_DWORD *result, int a2, int a3, void *a4)
{
  if (a4)
  {
    a4[0x10000] = a4 + 65548;
    a4[65537] = a4 + 24577;
    a4[65538] = a4 + 327684;
    a4[65539] = a4 + 57344;
    if (a2)
    {
      a4[65540] = a4 + 0x10000;
      return sub_277B1C488(a4, (a4 + 0x10000), result, -1);
    }

    else
    {
      if (a3)
      {
        v4 = (a4 + 65538);
      }

      else
      {
        v4 = (a4 + 0x10000);
      }

      a4[65540] = v4;
      return sub_277B1C488(a4, v4, result, a3);
    }
  }

  return result;
}

_DWORD *sub_277A8A860(uint64_t *a1)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v70 = a1 + 643796;
  v2 = (a1 + 393852);
  v3 = *(a1 + 99096);
  v4 = *a1;
  v5 = *(*a1 + 35636);
  if (v5 <= 1599)
  {
    v6 = v5 / 100;
  }

  else
  {
    v6 = 15;
  }

  v69 = a1 + 57929;
  v7 = *(a1 + 463456);
  if (*(v4 + 4 * v7 + 1152) >= 6)
  {
    v8 = 6;
  }

  else
  {
    v8 = *(v4 + 4 * v7 + 1152);
  }

  v9 = *(a1 + 245616);
  v76 = a1 + 30702;
  v77 = a1[33789];
  v10 = *(v4 + v7 + 400);
  v75 = a1 + 33789;
  v11 = *(a1 + 68045);
  if (v11 > 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = !v11 && !*(a1 + 644192) && *(v4 + 23172) != 0;
  }

  v71 = a1 + 16703;
  v13 = a1 + 34275;
  v14 = *(a1 + 98778);
  v15 = sub_277A8A0B8(*(a1 + 61559) + *(a1 + 61558), *(v77 + 72), v10, v8, v6, v9, *(a1 + 67828), v12);
  v2->i32[0] = v15;
  v16 = v15 >> 6;
  if (v15 >> 6 <= 1)
  {
    v16 = 1;
  }

  *(a1 + 43158) = v16;
  v78[0] = 0;
  v78[1] = 0;
  v74 = v2;
  v72 = v9;
  if (v3)
  {
    v17 = 0;
    v18 = 0;
    result = v76;
    do
    {
      if (byte_277C31E74[2 * v17])
      {
        v20 = 0;
        v21 = v18;
        v22 = &byte_277C39434[4 * byte_277C31E74[2 * v17]];
        do
        {
          v18 = v21 + 1;
          *(v78 + v21++) = v22[byte_277BFC250[v20++] - 13];
        }

        while (v20 != 4);
      }

      else
      {
        v23 = 0;
        v24 = v18;
        do
        {
          v18 = v24 + 1;
          *(v78 + v24++) = byte_277C39434[qword_277C395A8[byte_277C393F8[v23++]]];
        }

        while (v23 != 4);
      }

      ++v17;
    }

    while (v17 != 4);
  }

  else
  {
    v18 = 169;
    result = v76;
  }

  v73 = v14;
  v25 = 0;
  v26 = v18;
  v27 = *(a1 + 264608);
  do
  {
    v28 = result[154];
    if (v27 && (*(a1 + v25 + 66185) & 1) != 0)
    {
      v29 = v28 + SWORD2(a1[2 * v25 + 33076]);
      if (v29 >= 0xFF)
      {
        v30 = 255;
      }

      else
      {
        v30 = v29;
      }

      if (v29 >= 0)
      {
        v28 = v30;
      }

      else
      {
        v28 = 0;
      }
    }

    v31 = result[155] + v28;
    if (v31 >= 255)
    {
      v31 = 255;
    }

    v32 = *(v77 + 72);
    switch(v32)
    {
      case 8:
        v33 = 0.25;
        v34 = &unk_277BFDBFA;
        break;
      case 12:
        v33 = 0.015625;
        v34 = &unk_277BFDFFA;
        break;
      case 10:
        v33 = 0.0625;
        v34 = &unk_277BFDDFA;
        break;
      default:
        v36 = -1;
        goto LABEL_48;
    }

    v35 = v31 & ~(v31 >> 31);
    if (v35 >= 0xFF)
    {
      v35 = 255;
    }

    v36 = (pow(v33 * v34[v35], 1.25) * 5.12);
    if (v36 <= 8)
    {
      v36 = 8;
    }

    result = v76;
LABEL_48:
    for (i = 0; i != 22; ++i)
    {
      if (v26 >= 1)
      {
        v38 = 0;
        v39 = v36 * byte_277BFC254[i];
        do
        {
          v40 = v38;
          if (v3)
          {
            v40 = *(v78 + v38);
          }

          v41 = *(v13 + v40);
          if (v41 < 0x7FFFFFFF / v39)
          {
            v42 = v41 * v39 / 4;
          }

          else
          {
            v42 = 0x7FFFFFFF;
          }

          *(&a1[1859 * v25 + 34359] + 169 * i + v40 + 1) = v42;
          ++v38;
        }

        while (v26 != v38);
      }
    }

    ++v25;
  }

  while (v25 != 8);
  v43 = *(v75 + 1788);
  v44 = *(v75 + 1796);
  v45 = v74[263].u32[1];
  if (v45 >= dword_277BFC26C[v44])
  {
    v45 = dword_277BFC26C[v44];
  }

  v74[263].i32[1] = v45;
  v46.i32[0] = dword_277BFC26C[v43];
  v46.i32[1] = dword_277BFC26C[HIDWORD(v43)];
  v47 = vmin_u32(v74[264], v46);
  v74[264] = v47;
  v48 = v74[284].u32[1];
  v49 = *(dword_277BFC26C + ((v44 >> 30) & 0x3FFFFFFFCLL));
  if (v48 >= v49)
  {
    v48 = v49;
  }

  v74[284].i32[1] = v48;
  v50 = v3 == 0;
  if ((v72 & 0xFFFFFFFD) == 0)
  {
    goto LABEL_75;
  }

  if (!v3)
  {
    if (v45)
    {
      v53 = 1;
    }

    else
    {
      v53 = (result[4] & 7) == 1;
    }

    if (v53)
    {
      goto LABEL_75;
    }

    v54 = 0;
    v52 = v47.i32[0];
    goto LABEL_79;
  }

  if (v45 != 1 && v73 >= 2)
  {
    v52 = v47.i32[0];
    goto LABEL_77;
  }

LABEL_75:
  sub_277A8A7E4((v75[1] + 11912), *(result + 494), *(result + 493), *v71);
  result = v76;
  if ((*v76 & 0xFD) == 0)
  {
    goto LABEL_141;
  }

  v52 = v74[264].i32[0];
  if (v3)
  {
LABEL_77:
    v50 = 0;
    v54 = v73 < 2;
    goto LABEL_80;
  }

  v54 = (v76[4] & 7) == 1;
LABEL_79:
  v50 = 1;
LABEL_80:
  v55 = v52 && v50;
  if (v52 == 1 || v55 || v54)
  {
LABEL_141:
    if (*(*v75 + 77))
    {
      v56 = 1;
    }

    else
    {
      v56 = 3;
    }

    sub_277A8A2EC((a1 + 16705), v75[1], v56);
    result = v76;
  }

  if (v74[351].i8[5] != 1)
  {
    goto LABEL_109;
  }

  v57 = *(v75 + 856);
  if (v57 == 1)
  {
    v58 = *(v70 + 8);
    if (*(v70 + 4) == 1 && v58 == 1)
    {
      if ((*result & 0xFD) != 0)
      {
        v59 = v69[25];
        if ((!v59 || (v60 = v69[26]) == 0 || result[14] == v59 && result[15] == v60) && !v74[159].i32[1] && v74[157].i32[1] >= 10 && *(*v69 + 112) >= 10 && (result[4] & 7) != 0)
        {
          goto LABEL_109;
        }
      }
    }

    else if (v58 < 2 || *v70 == v58 - 1)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

  if (v57 == 2 && *(v70 + 892) == 1)
  {
    goto LABEL_119;
  }

LABEL_109:
  if ((*result & 0xFD) == 0 || ((v61 = v74[264].i32[1], !v50) ? (v62 = v73 < 2) : (v62 = (result[4] & 7) == 1), v61 ? (v63 = v50) : (v63 = 0), v61 == 1 || v63 || v62))
  {
LABEL_119:
    sub_277A89144(result, (a1 + 12876), v75[1]);
    result = v76;
  }

  if (!v74[316].i32[1] && (*result & 0xFD) == 0 && *(result + 495) == 1 && *(result + 496) && *(v75 + 467) != 1 && *(v70 + 396) != 1)
  {
    if (a1[29915])
    {
      v64 = v71[1];
LABEL_136:
      v68 = v75[1];
      *(v64 + 262152) = v64 + 65548;
      *(v64 + 262160) = v64 + 196616;

      return sub_277B1C488(v64, v64 + 262152, v68 + 12198, -1);
    }

    v65 = malloc_type_malloc(0x4002FuLL, 0x5F484EBFuLL);
    if (v65)
    {
      v66 = v65;
      v64 = (v65 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v64 - 8) = v66;
      a1[29915] = v64;
      v67 = v76;
      if (v64)
      {
LABEL_135:
        v71[1] = v64;
        goto LABEL_136;
      }
    }

    else
    {
      a1[29915] = 0;
      v67 = v76;
    }

    sub_2779F5C10(*(v67 + 6), 2, "Failed to allocate cpi->td.dv_costs_alloc", v69);
    v64 = a1[29915];
    goto LABEL_135;
  }

  return result;
}

uint64_t sub_277A8B04C(uint64_t result, char a2, unsigned int a3, int *a4, uint64_t *a5)
{
  if (result)
  {
    v5 = (((a3 * a3) << (a2 + 10)) + (result >> 1)) / result;
    if (v5 >= 0x3BFDF)
    {
      LODWORD(v5) = 245727;
    }

    v6 = (v5 >> 2) + 8;
    v7 = __clz(v6);
    v8 = (v6 >> (28 - v7)) & 7 | (8 * (28 - v7));
    v9 = (v5 - dword_277BFC5BC[v8]) << 10 >> (30 - v7);
    v10 = (v9 * dword_277BFC27C[v8 + 1] + (1024 - v9) * dword_277BFC27C[v8]) >> 10;
    v11 = v9 * dword_277BFC41C[v8 + 1] + (1024 - v9) * dword_277BFC41C[v8];
    v12 = ((v10 << a2) + 1) >> 1;
    v13 = ((v11 >> 10) * result + 512) >> 10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a4 = v12;
  *a5 = v13;
  return result;
}

double sub_277A8B128(int a1, double *a2, double *a3, double a4, double a5)
{
  v5 = a4 > 16.0;
  v6 = fmin(fmax(a5, -14.999999), 15.999999);
  v7 = v6 + 15.5 + v6 + 15.5;
  v8 = vcvtmd_s64_f64(v7);
  v9 = v7 - v8;
  v10 = 8 * v8 - 8;
  v11 = (&unk_277BFB298 + 520 * byte_277BFB27C[a1] + v10);
  *a2 = v11[1] + v9 * 0.5 * (v11[2] - *v11 + v9 * (v11[1] * -5.0 + *v11 * 2.0 + v11[2] * 4.0 - v11[3] + v9 * (v11[3] + (v11[1] - v11[2]) * 3.0 - *v11)));
  v12 = (&unk_277BFBAB8 + 520 * v5 + v10);
  result = v12[1] + v9 * 0.5 * (v12[2] - *v12 + v9 * (v12[1] * -5.0 + *v12 * 2.0 + v12[2] * 4.0 - v12[3] + v9 * (v12[3] + (v12[1] - v12[2]) * 3.0 - *v12)));
  *a3 = result;
  return result;
}

uint64_t sub_277A8B228(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = sub_277B1C4F0(0, a5, 0xFFu, 0, &a2[1934]);
  v11 = 1;
  v12 = a5;
  result = sub_277B1C4F0(0, a5, 0xFFu, 1, &a2[1934]);
  v38[0] = v10;
  if (v10 != result)
  {
    v38[1] = result;
    v11 = 2;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v36 = a2[6];
  v17 = 4 * v11;
  v18 = 0x7FFFFFFF;
  do
  {
    v19 = &v38[v14 / 4];
    v20.i32[0] = a2[1090].u8[5];
    v20.i32[1] = a2[1090].u8[4];
    v21 = a2[52];
    v22 = veor_s8(vshl_n_s32(vadd_s32(v21, v20), 5uLL), 0x1F0000001FLL);
    v23.i32[0] = SLOWORD(v38[v14 / 4]);
    v23.i32[1] = SHIWORD(v38[v14 / 4]);
    v24 = vbsl_s8(vcgt_s32(v22, v23), v22, vmin_s32(v23, vadd_s32(vshl_n_s32(vsub_s32(*(a1 + 246148), v21), 5uLL), 0x2000000020)));
    LOWORD(v25) = v24.i16[2];
    v19[1] = v24.i16[2];
    LOWORD(v26) = v24.i16[0];
    *v19 = v24.i16[0];
    v27 = vshr_n_s32(vshl_n_s32(v24, 0x10uLL), 0x10uLL);
    v28 = v27.u32[1];
    v29 = vadd_s32(vsub_s32(v27, vcgez_s32(v27)), 0x300000003);
    v30 = v27.i32[0];
    if (v27.i32[0] < 0)
    {
      v30 = -v27.i32[0];
    }

    if (v27.i32[1] < 0)
    {
      v28 = -v27.i32[1];
    }

    if (v30 > v28)
    {
      v28 = v30;
    }

    v26 = v26;
    if ((v26 & 0x8000u) != 0)
    {
      v26 = -v26;
    }

    v25 = v25;
    if ((v25 & 0x8000u) != 0)
    {
      v25 = -v25;
    }

    if (v26 > v25)
    {
      v25 = v26;
    }

    v31 = v25 >> 3;
    if (v16 <= (v28 >> 3))
    {
      v16 = v31;
    }

    v32 = vcgt_u32(0x800000008, v29);
    if ((v32.i8[0] & v32.i8[4] & 1) != 0 && v15)
    {
      v15 = 1;
    }

    else
    {
      v15 |= v32.i8[0] & v32.i8[4] & 1;
      result = (*(*a1 + (a6 << 7) + 51440))(v36, a2[9].u32[0], a3 + (v29.i32[1] >> 3) + (v29.i32[0] >> 3) * a4, a4);
      if (result < v18)
      {
        v18 = result;
      }

      v33 = a2 + 11191;
      if (!v14)
      {
        v33 = a2 + 11187;
      }

      v33->i32[v12] = result;
    }

    v14 += 4;
  }

  while (v17 != v14);
  v34 = a2 + 4 * v12;
  *(v34 + 32177) = v16;
  *(v34 + 22364) = v18;
  return result;
}

int *sub_277A8B4EC(int *result, uint64_t *a2, uint64_t a3, int *a4, int *a5, int a6)
{
  v6 = 0;
  *a2 = *(a3 + 40);
  *(a2 + 6) = *(a3 + 32);
  a2[4] = *(a3 + 48);
  a2[8] = *(a3 + 56);
  v7 = *(a3 + 36);
  *(a2 + 22) = v7;
  *(a2 + 14) = v7;
  v8 = *result;
  v9 = result[1];
  v10 = *(result + 983);
  do
  {
    _X24 = result + 1961;
    if (v6)
    {
      v12 = 20;
    }

    else
    {
      v12 = 16;
    }

    if (v6)
    {
      v13 = a5;
    }

    else
    {
      v13 = a4;
    }

    if (v6)
    {
      v14 = 28;
    }

    else
    {
      v14 = 24;
    }

    __asm { PRFM            #0, [X24] }

    v19 = result[6];
    if (v19)
    {
      _ZF = (v8 & 1) == 0;
    }

    else
    {
      _ZF = 1;
    }

    v21 = **v10;
    v22 = (0x20005uLL >> v21) & 1;
    if (_ZF)
    {
      LODWORD(v22) = 0;
    }

    v23 = v8 - v22;
    if (result[5])
    {
      v24 = (v9 & 1) == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = (0x10003uLL >> v21) & 1;
    if (v24)
    {
      LODWORD(v25) = 0;
    }

    v26 = (4 * (v9 - v25)) >> result[5];
    v27 = (4 * v23) >> v19;
    if (v13)
    {
      v28 = *v13;
      if (*v13 != -1)
      {
        v29 = v13[1];
        if (v29 != -1 && (v28 != 0x4000 || v29 != 0x4000))
        {
          v30 = 8 * v28 - 0x20000 + v28 * v26;
          if (v30 < 0)
          {
            v31 = -((128 - v30) >> 8);
          }

          else
          {
            v31 = (v30 + 128) >> 8;
          }

          v26 = v31 >> 6;
          v32 = 8 * v29 - 0x20000 + v29 * v27;
          if (v32 < 0)
          {
            v33 = -((128 - v32) >> 8);
          }

          else
          {
            v33 = (v32 + 128) >> 8;
          }

          v27 = v33 >> 6;
        }
      }
    }

    v34 = *(a3 + v12);
    v35 = *(a3 + v14);
    v36 = *a2;
    *a2 += *(a2 + 6) * v27 + v26;
    a2[1] = v36;
    *(a2 + 4) = v34;
    *(a2 + 5) = v35;
    ++v6;
    result += 652;
    a2 += 4;
  }

  while (a6 != v6);
  return result;
}

uint64_t sub_277A8B698(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 != 4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = **(a2 + 7864);
  v9 = a1 + 35776;
  v10 = 1;
  do
  {
    if (!a4 && (v10 & 1) == 0)
    {
      break;
    }

    v11 = sub_277B1FAF0(a2, v7);
    v12 = *(v8 + 20);
    v13 = v10 & 1;
    if ((v10 & 1) == 0)
    {
      LOBYTE(v12) = BYTE2(*(v8 + 20));
    }

    v6 = (*(v9 + 12 * v11 + 4 * v12) + v6);
    v7 = 1;
    v10 = 0;
  }

  while (v13);
  return v6;
}

double sub_277A8B744(uint64_t a1)
{
  *(a1 + 274200) = vdupq_n_s32(0x12Cu);
  *(a1 + 274216) = xmmword_277BB7590;
  v1 = vdupq_n_s32(0x3E8u);
  *(a1 + 274232) = xmmword_277BB75A0;
  *(a1 + 274248) = v1;
  *(a1 + 274264) = v1;
  *(a1 + 274280) = xmmword_277BB75B0;
  *(a1 + 274296) = xmmword_277BB75C0;
  *(a1 + 274312) = xmmword_277BB75D0;
  *(a1 + 274328) = v1;
  *(a1 + 274344) = v1;
  *(a1 + 274424) = xmmword_277BB7600;
  *(a1 + 274440) = xmmword_277BB75F0;
  *(a1 + 274456) = xmmword_277BB7610;
  *(a1 + 274472) = xmmword_277BB7620;
  *(a1 + 274360) = vdupq_n_s32(0x7D0u);
  *(a1 + 274376) = xmmword_277BB7640;
  *(a1 + 274392) = xmmword_277BB7650;
  *(a1 + 274408) = xmmword_277BB75E0;
  *(a1 + 274488) = xmmword_277BB7630;
  *(a1 + 274504) = xmmword_277BB7660;
  *(a1 + 274520) = xmmword_277BB7670;
  *(a1 + 274536) = xmmword_277BB7680;
  *(a1 + 274552) = xmmword_277BB75F0;
  *(a1 + 274568) = xmmword_277BB7610;
  *(a1 + 274584) = xmmword_277BB7690;
  *(a1 + 274600) = xmmword_277BB76A0;
  *(a1 + 274616) = xmmword_277BB76B0;
  *(a1 + 274632) = xmmword_277BB7670;
  *(a1 + 274648) = xmmword_277BB76D0;
  *(a1 + 274664) = xmmword_277BB76C0;
  *(a1 + 274680) = xmmword_277BB7610;
  *(a1 + 274696) = xmmword_277BB76E0;
  *(a1 + 274712) = xmmword_277BB76F0;
  *(a1 + 274728) = xmmword_277BB7700;
  *(a1 + 274744) = xmmword_277BB7710;
  *(a1 + 274760) = xmmword_277BB7730;
  *(a1 + 274776) = xmmword_277BB7720;
  *(a1 + 274792) = xmmword_277BB7740;
  *(a1 + 274808) = xmmword_277BB7750;
  *(a1 + 274824) = xmmword_277BB7760;
  *&result = 0x7D0000007D0;
  *(a1 + 274840) = xmmword_277BB7770;
  *(a1 + 274856) = xmmword_277BB7780;
  *(a1 + 274872) = 2500;
  return result;
}

uint64_t sub_277A8B8C4(uint64_t result, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a4 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = a4;
  }

  v7 = v6 - 2;
  v8 = a4 + 2;
  if (a4 + 2 >= result)
  {
    v8 = result;
  }

  if (a4 > result)
  {
    v7 = a4;
    v8 = a4;
  }

  v9 = a3 << 6;
  if (a6)
  {
    v10 = 0;
    v11 = a5;
    do
    {
      for (i = v7; i <= v8; ++i)
      {
        v13 = a2 + 676 * i;
        v14 = *(v13 + 4 * v10);
        if (v14 + 1 < v9)
        {
          result = (v14 + 1);
        }

        else
        {
          result = v9;
        }

        v15 = v14 - (v14 >> 4);
        if (v10 != a5)
        {
          v15 = result;
        }

        *(v13 + 4 * v10) = v15;
      }

      ++v10;
    }

    while (v10 != a6);
  }

  else
  {
    v11 = a5;
  }

  for (j = 156; j != 169; ++j)
  {
    for (k = v7; k <= v8; ++k)
    {
      v18 = a2 + 676 * k;
      v19 = *(v18 + 4 * j);
      if (v19 + 1 < v9)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = a3 << 6;
      }

      v21 = v19 - (v19 >> 4);
      if (j != v11)
      {
        v21 = v20;
      }

      *(v18 + 4 * j) = v21;
    }
  }

  return result;
}

uint64_t sub_277A8B9C0(int a1, int a2, int a3)
{
  if ((a2 + a1) >= 0xFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = a2 + a1;
  }

  if (a2 + a1 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(a3)
  {
    case 8:
      v5 = &unk_277BFDBFA;
      goto LABEL_13;
    case 12:
      v5 = &unk_277BFDFFA;
      goto LABEL_13;
    case 10:
      v5 = &unk_277BFDDFA;
LABEL_13:
      v6 = v5[v4];
      goto LABEL_15;
  }

  v6 = -1;
LABEL_15:
  v7 = 5 * v6;
  v8 = (v7 + 2) >> 2;
  if (a3 == 8)
  {
    v9 = 4 * v7;
  }

  else
  {
    v9 = -1;
  }

  if (a3 != 10)
  {
    v7 = v9;
  }

  if (a3 == 12)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_277A8BA4C(uint64_t result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a5 == 2 || a6 == 2)
  {
    return sub_27797D3A0(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  v9 = *(a7 + 8);
  v10 = ((v9 >> 1) - 1);
  v11 = result - v10;
  v12 = (*a7 + 2 * (a8 & 0xF) * v9);
  if (v9 == 12)
  {
    *&_Q0 = vand_s8(vmovn_s16(*v12), 0xFFFFFFFFFFFFLL);
    *&_Q1 = vext_s8(vmovn_s16(*(v12 + 4)), 0, 2uLL);
    *(&_Q0 + 1) = vext_s8(*&_Q0, *&_Q0, 7uLL);
    *(&_Q1 + 1) = vext_s8(*&_Q1, *&_Q1, 7uLL);
    if (a5 > 4)
    {
      v79 = 4 * a2;
      v80 = 4 * a4;
      v82 = a3 + a4;
      v83 = a3 + 2 * a4;
      v84 = result + 3 * a2 - v10;
      v85 = result - v10;
      v86 = result + a2 - v10;
      v87 = a3 + 3 * a4;
      v88 = v85 + 2 * a2;
      do
      {
        result = 0;
        do
        {
          v89 = *(v11 + result);
          v90 = *(v86 + result);
          v91 = *(v88 + result);
          v92 = *(v84 + result);
          v93 = *(v11 + result + 6);
          v94 = *(v86 + result + 6);
          v95 = *(v88 + result + 6);
          v96 = *(v84 + result + 6);
          _Q20 = vqtbl1q_s8(v89, unk_277BFC760);
          _Q4 = vqtbl1q_s8(v89, unk_277BFC770);
          _Q21 = vqtbl1q_s8(v93, unk_277BFC760);
          _Q16 = vqtbl1q_s8(v93, unk_277BFC770);
          __asm
          {
            USMMLA          V22.4S, V20.16B, V0.16B
            USMMLA          V20.4S, V4.16B, V0.16B
            USMMLA          V22.4S, V21.16B, V1.16B
            USMMLA          V20.4S, V16.16B, V1.16B
          }

          *_Q4.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q22, 7uLL), _Q20, 7uLL));
          _Q16 = vqtbl1q_s8(v90, unk_277BFC760);
          _Q5 = vqtbl1q_s8(v90, unk_277BFC770);
          _Q20 = vqtbl1q_s8(v94, unk_277BFC760);
          _Q17 = vqtbl1q_s8(v94, unk_277BFC770);
          __asm
          {
            USMMLA          V21.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V5.16B, V0.16B
            USMMLA          V21.4S, V20.16B, V1.16B
            USMMLA          V16.4S, V17.16B, V1.16B
          }

          *_Q5.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q21, 7uLL), _Q16, 7uLL));
          _Q16 = vqtbl1q_s8(v91, unk_277BFC760);
          _Q6 = vqtbl1q_s8(v91, unk_277BFC770);
          _Q17 = vqtbl1q_s8(v95, unk_277BFC760);
          _Q18 = vqtbl1q_s8(v95, unk_277BFC770);
          __asm
          {
            USMMLA          V20.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V6.16B, V0.16B
            USMMLA          V20.4S, V17.16B, V1.16B
            USMMLA          V16.4S, V18.16B, V1.16B
          }

          *_Q6.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q20, 7uLL), _Q16, 7uLL));
          _Q16 = vqtbl1q_s8(v92, unk_277BFC760);
          _Q7 = vqtbl1q_s8(v92, unk_277BFC770);
          _Q17 = vqtbl1q_s8(v96, unk_277BFC760);
          _Q18 = vqtbl1q_s8(v96, unk_277BFC770);
          __asm
          {
            USMMLA          V19.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V7.16B, V0.16B
            USMMLA          V19.4S, V17.16B, V1.16B
            USMMLA          V16.4S, V18.16B, V1.16B
          }

          *(a3 + result) = _Q4.i64[0];
          *&v82[result] = _Q5.i64[0];
          *&v83[result] = _Q6.i64[0];
          *&v87[result] = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q19, 7uLL), _Q16, 7uLL));
          result += 8;
        }

        while (a5 != result);
        v11 += v79;
        a3 = (a3 + v80);
        v82 += v80;
        v83 += v80;
        v84 += v79;
        v88 += v79;
        v86 += v79;
        v87 += v80;
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      v15 = 2 * a2 + 6;
      do
      {
        result = v11 + v15;
        _Q3 = vqtbl1q_s8(*v11, xmmword_277BB7100);
        _Q7 = vqtbl1q_s8(*(v11 + 6), xmmword_277BB7100);
        __asm
        {
          USMMLA          V19.4S, V3.16B, V0.16B
          USMMLA          V19.4S, V7.16B, V1.16B
        }

        _Q4 = vqtbl1q_s8(*(v11 + a2), xmmword_277BB7100);
        _Q7 = vqtbl1q_s8(*(v11 + a2 + 6), xmmword_277BB7100);
        __asm
        {
          USMMLA          V16.4S, V4.16B, V0.16B
          USMMLA          V16.4S, V7.16B, V1.16B
        }

        _Q4 = vqtbl1q_s8(*(v11 + 2 * a2), xmmword_277BB7100);
        _Q5 = vqtbl1q_s8(*(v11 + v15), xmmword_277BB7100);
        __asm
        {
          USMMLA          V7.4S, V4.16B, V0.16B
          USMMLA          V7.4S, V5.16B, V1.16B
        }

        *_Q4.i8 = vqrshrn_n_s32(_Q7, 7uLL);
        _Q5 = vqtbl1q_s8(*(v11 + 3 * a2), xmmword_277BB7100);
        _Q6 = vqtbl1q_s8(*(v11 + 3 * a2 + 6), xmmword_277BB7100);
        __asm
        {
          USMMLA          V7.4S, V5.16B, V0.16B
          USMMLA          V7.4S, V6.16B, V1.16B
        }

        *_Q3.i8 = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(_Q19, 7uLL), _Q16, 7uLL));
        *_Q4.i8 = vqmovun_s16(vqrshrn_high_n_s32(*_Q4.i8, _Q7, 7uLL));
        *a3 = _Q3.i32[0];
        *(a3 + a4) = _Q3.i32[1];
        *(a3 + 2 * a4) = _Q4.i32[0];
        *(a3 + a4 + (2 * a4)) = _Q4.i32[1];
        a3 += a4;
        v11 += 4 * a2;
        a6 -= 4;
      }

      while (a6);
    }
  }

  else if (v12[7] | *v12)
  {
    v36 = vshrn_n_s16(*v12, 1uLL);
    v37 = 4 * a2;
    v38 = 4 * a4;
    _Q3 = vdupq_lane_s32(v36, 0);
    _Q4 = vdupq_lane_s32(v36, 1);
    v41 = result + 3 * a2 - v10;
    v42 = result - v10 + 2 * a2;
    v43 = result + a2 - v10;
    v44 = a3 + 3 * a4;
    v45 = a3 + 2 * a4;
    v46 = a3 + a4;
    do
    {
      result = 0;
      do
      {
        v47 = *(v11 + result);
        v48 = *(v43 + result);
        v49 = *(v42 + result);
        _Q16 = vqtbl1q_s8(v47, unk_277BFC780);
        _Q17 = vqtbl1q_s8(v47, unk_277BFC790);
        v52 = *(v41 + result);
        _Q5 = vqtbl1q_s8(v47, unk_277BFC7A0);
        __asm
        {
          USDOT           V19.4S, V16.16B, V3.16B
          USDOT           V19.4S, V17.16B, V4.16B
          USDOT           V16.4S, V17.16B, V3.16B
          USDOT           V16.4S, V5.16B, V4.16B
        }

        *_Q5.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q19, _Q16), 6uLL);
        _Q16 = vqtbl1q_s8(v48, unk_277BFC780);
        _Q17 = vqtbl1q_s8(v48, unk_277BFC790);
        _Q6 = vqtbl1q_s8(v48, unk_277BFC7A0);
        __asm
        {
          USDOT           V19.4S, V16.16B, V3.16B
          USDOT           V19.4S, V17.16B, V4.16B
          USDOT           V16.4S, V17.16B, V3.16B
          USDOT           V16.4S, V6.16B, V4.16B
        }

        *_Q6.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q19, _Q16), 6uLL);
        _Q16 = vqtbl1q_s8(v49, unk_277BFC780);
        _Q17 = vqtbl1q_s8(v49, unk_277BFC790);
        _Q7 = vqtbl1q_s8(v49, unk_277BFC7A0);
        __asm
        {
          USDOT           V19.4S, V16.16B, V3.16B
          USDOT           V19.4S, V17.16B, V4.16B
          USDOT           V16.4S, V17.16B, V3.16B
          USDOT           V16.4S, V7.16B, V4.16B
        }

        *_Q7.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q19, _Q16), 6uLL);
        _Q16 = vqtbl1q_s8(v52, unk_277BFC780);
        _Q17 = vqtbl1q_s8(v52, unk_277BFC790);
        _Q18 = vqtbl1q_s8(v52, unk_277BFC7A0);
        __asm
        {
          USDOT           V19.4S, V16.16B, V3.16B
          USDOT           V19.4S, V17.16B, V4.16B
          USDOT           V16.4S, V17.16B, V3.16B
          USDOT           V16.4S, V18.16B, V4.16B
        }

        *(a3 + result) = _Q5.i64[0];
        *&v46[result] = _Q6.i64[0];
        *&v45[result] = _Q7.i64[0];
        *&v44[result] = vqrshrun_n_s16(vuzp1q_s16(_Q19, _Q16), 6uLL);
        result += 8;
      }

      while (a5 != result);
      v11 += v37;
      a3 = (a3 + v38);
      v41 += v37;
      v42 += v37;
      v43 += v37;
      v44 += v38;
      v45 += v38;
      v46 += v38;
      a6 -= 4;
    }

    while (a6);
  }

  else
  {
    v129 = vshrn_n_s16(*v12, 1uLL);
    _Q0 = vshrn_high_n_s16(vext_s8(v129, v129, 1uLL), *v12, 1uLL);
    if (a5 == 4)
    {
      v131 = (v11 + 1);
      do
      {
        v132 = *v131;
        v133 = (v131 + a2);
        v134 = *v133;
        v135 = (v133 + a2);
        v136 = *v135;
        v137 = (v135 + a2);
        _Q2 = vqtbl1q_s8(v132, xmmword_277BB7100);
        __asm { USMMLA          V6.4S, V2.16B, V0.16B }

        _Q2 = vqtbl1q_s8(v134, xmmword_277BB7100);
        __asm { USMMLA          V3.4S, V2.16B, V0.16B }

        _Q2 = vqtbl1q_s8(v136, xmmword_277BB7100);
        __asm { USMMLA          V4.4S, V2.16B, V0.16B }

        _Q2 = vqtbl1q_s8(*v137, xmmword_277BB7100);
        __asm { USMMLA          V5.4S, V2.16B, V0.16B }

        *_Q2.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q6, _Q3), 6uLL);
        *_Q3.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q4, _Q5), 6uLL);
        *a3 = _Q2.i32[0];
        *(a3 + a4) = _Q2.i32[1];
        v146 = (a3 + a4 + a4);
        *v146 = _Q3.i32[0];
        v147 = (v146 + a4);
        *v147 = _Q3.i32[1];
        v131 = (v137 + a2);
        a3 = (v147 + a4);
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      v148 = 4 * a2;
      v149 = 4 * a4;
      v150 = 3 * a2 - v10 + result + 1;
      v151 = result - v10 + 2 * a2 + 1;
      v152 = a2 - v10 + result + 1;
      v153 = a3 + 3 * a4;
      v154 = a3 + a4;
      v155 = a3 + 2 * a4;
      do
      {
        result = 0;
        do
        {
          v156 = *(v11 + result + 1);
          v157 = *(v152 + result);
          v158 = *(v151 + result);
          v159 = *(v150 + result);
          _Q7 = vqtbl1q_s8(v156, unk_277BFC760);
          _Q3 = vqtbl1q_s8(v156, unk_277BFC770);
          __asm
          {
            USMMLA          V16.4S, V7.16B, V0.16B
            USMMLA          V7.4S, V3.16B, V0.16B
          }

          *_Q3.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q16, _Q7), 6uLL);
          _Q7 = vqtbl1q_s8(v157, unk_277BFC760);
          _Q4 = vqtbl1q_s8(v157, unk_277BFC770);
          __asm
          {
            USMMLA          V16.4S, V7.16B, V0.16B
            USMMLA          V7.4S, V4.16B, V0.16B
          }

          *_Q4.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q16, _Q7), 6uLL);
          _Q7 = vqtbl1q_s8(v158, unk_277BFC760);
          _Q5 = vqtbl1q_s8(v158, unk_277BFC770);
          __asm
          {
            USMMLA          V16.4S, V7.16B, V0.16B
            USMMLA          V7.4S, V5.16B, V0.16B
          }

          *_Q5.i8 = vqrshrun_n_s16(vuzp1q_s16(_Q16, _Q7), 6uLL);
          _Q7 = vqtbl1q_s8(v159, unk_277BFC760);
          _Q6 = vqtbl1q_s8(v159, unk_277BFC770);
          __asm
          {
            USMMLA          V16.4S, V7.16B, V0.16B
            USMMLA          V7.4S, V6.16B, V0.16B
          }

          *(a3 + result) = _Q3.i64[0];
          *&v154[result] = _Q4.i64[0];
          *&v155[result] = _Q5.i64[0];
          *&v153[result] = vqrshrun_n_s16(vuzp1q_s16(_Q16, _Q7), 6uLL);
          result += 8;
        }

        while (a5 != result);
        a3 = (a3 + v149);
        v150 += v148;
        v151 += v148;
        v152 += v148;
        v11 += v148;
        v153 += v149;
        v155 += v149;
        v154 += v149;
        a6 -= 4;
      }

      while (a6);
    }
  }

  return result;
}

unsigned __int8 *sub_277A8C0E0(unsigned __int8 *result, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, char a8, double a9, uint8x8_t a10, uint8x8_t a11, int16x8_t a12, int16x8_t a13, int16x8_t _Q5, int16x8_t _Q6, int16x8_t _Q7)
{
  if (a5 == 2 || a6 == 2)
  {

    return sub_27797D2DC(result, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v31 = *(a7 + 8);
    v32 = (*a7 + 2 * (a8 & 0xFu) * v31);
    if (v31 == 12)
    {
      v33 = &result[-5 * a2];
      v34 = vmovn_s16(*v32);
      v35 = vmovn_s16(*(v32 + 4));
      v36 = a2;
      if (a5 == 4)
      {
        a12.i64[0] = *v33;
        _Q5.i64[0] = *(v33 + a2);
        v37 = (v33 + a2 + a2);
        _Q6.i64[0] = *v37;
        v38 = (v37 + a2);
        _Q7.i64[0] = *v38;
        v39 = (v38 + a2);
        v40 = *v39;
        v41 = (v39 + a2);
        v42 = *v41;
        v43 = (v41 + a2);
        v44 = *v43;
        v45 = (v43 + a2);
        _Q23.i64[0] = *v45;
        v46 = (v45 + a2);
        v47 = *v46;
        v48 = (v46 + a2);
        v49 = (v33 + 11 * a2);
        *a12.i8 = vzip1_s8(*a12.i8, *_Q5.i8);
        *v26.i8 = vzip1_s8(*_Q6.i8, *_Q7.i8);
        _Q19 = vzip1q_s16(a12, v26);
        *a12.i8 = vzip1_s8(*_Q5.i8, *_Q6.i8);
        *_Q5.i8 = vzip1_s8(*_Q7.i8, v40);
        _Q18 = vzip1q_s16(a12, _Q5);
        *a12.i8 = vzip1_s8(v40, v42);
        _Q17 = vzip1q_s16(v26, a12);
        *_Q6.i8 = vzip1_s8(v42, v44);
        _Q5 = vzip1q_s16(_Q5, _Q6);
        *_Q7.i8 = vzip1_s8(v44, *_Q23.i8);
        _Q22 = vzip1q_s16(a12, _Q7);
        *_Q23.i8 = vzip1_s8(*_Q23.i8, v47);
        _Q21 = vzip1q_s16(_Q6, _Q23);
        *a12.i8 = vzip1_s8(v47, *v48);
        _Q20 = vzip1q_s16(_Q7, a12);
        *_Q6.i8 = vzip1_s8(*v48, *(v48 + a2));
        _Q3 = vdupq_lane_s32(v34, 0);
        _Q4 = vdupq_lane_s32(v34, 1);
        _Q7 = vzip1q_s16(_Q23, _Q6);
        _Q16 = vdupq_lane_s32(v35, 1);
        do
        {
          __asm
          {
            USDOT           V23.4S, V19.16B, V3.16B
            USDOT           V24.4S, V18.16B, V3.16B
            USDOT           V25.4S, V17.16B, V3.16B
          }

          _Q6 = _Q7;
          *_Q17.i8 = vzip1_s8(*v49, *(v49 + a2));
          *_Q18.i8 = vzip1_s8(*(v49 + 2 * a2), *(v49 + 3 * a2));
          _Q7 = vzip1q_s16(_Q17, _Q18);
          __asm { USDOT           V23.4S, V22.16B, V4.16B }

          _Q19 = _Q22;
          _Q22 = vqtbl2q_s8(*(&_Q7 - 1), unk_277BFC7B0);
          __asm { USDOT           V24.4S, V21.16B, V4.16B }

          _Q18 = _Q21;
          _Q21 = vqtbl2q_s8(*(&_Q7 - 1), unk_277BFC7C0);
          __asm { USDOT           V25.4S, V20.16B, V4.16B }

          _Q17 = _Q20;
          _Q20 = vqtbl2q_s8(*(&_Q7 - 1), unk_277BFC7D0);
          __asm
          {
            USDOT           V23.4S, V22.16B, V16.16B
            USDOT           V24.4S, V21.16B, V16.16B
            USDOT           V25.4S, V20.16B, V16.16B
            USDOT           V26.4S, V5.16B, V3.16B
            USDOT           V26.4S, V6.16B, V4.16B
            USDOT           V26.4S, V7.16B, V16.16B
          }

          v78 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q23), _Q24), 7uLL);
          *_Q23.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q25), _Q26), 7uLL);
          *a3 = v78.i32[0];
          *(a3 + a4) = v78.i32[1];
          *(a3 + 2 * a4) = _Q23.i32[0];
          *(a3 + a4 + (2 * a4)) = _Q23.i32[1];
          v49 = (v49 + 4 * a2);
          a3 += a4;
          _Q5 = _Q6;
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v104 = 0;
        v105 = 5 * a2;
        _Q3 = vdupq_lane_s32(v34, 0);
        _Q4 = vdupq_lane_s32(v34, 1);
        v108 = 4 * a2;
        v109 = 4 * a4;
        v110 = 2 * a2 + 11 * a2;
        _Q5 = vdupq_lane_s32(v35, 1);
        v112 = &result[v110 + a2 - v105];
        v113 = &result[v110 - v105];
        v114 = &result[a2 + (11 * a2) - v105];
        v115 = &result[11 * a2 - v105];
        v116 = a3 + 3 * a4;
        result = a3 + 2 * a4;
        v117 = a3 + a4;
        do
        {
          _Q6.i64[0] = *v33;
          _Q7.i64[0] = *(v33 + v36);
          v118 = (v33 + v36 + v36);
          _Q16.i64[0] = *v118;
          v119 = (v118 + v36);
          _Q17.i64[0] = *v119;
          v120 = (v119 + v36);
          _Q18.i64[0] = *v120;
          v121 = (v120 + v36);
          _Q19.i64[0] = *v121;
          v122 = (v121 + v36);
          _Q20.i64[0] = *v122;
          v123 = (v122 + v36);
          _Q21.i64[0] = *v123;
          v124 = (v123 + v36);
          _Q23.i64[0] = *v124;
          v125 = (v124 + v36);
          _Q24.i64[0] = *v125;
          v126 = vzip1q_s8(_Q6, _Q7);
          v127 = vzip1q_s8(_Q16, _Q17);
          _Q31 = vzip1q_s16(v126, v127);
          _Q6 = vzip2q_s16(v126, v127);
          v129 = vzip1q_s8(_Q7, _Q16);
          v130 = vzip1q_s8(_Q17, _Q18);
          _Q7 = vzip1q_s16(v129, v130);
          _Q16 = vzip2q_s16(v129, v130);
          v131 = vzip1q_s8(_Q18, _Q19);
          _Q17 = vzip1q_s16(v127, v131);
          _Q18 = vzip2q_s16(v127, v131);
          v132 = vzip1q_s8(_Q19, _Q20);
          _Q22 = vzip1q_s16(v130, v132);
          _Q19 = vzip2q_s16(v130, v132);
          v17.i64[0] = *(v125 + v36);
          v134 = vzip1q_s8(_Q20, _Q21);
          _Q28 = vzip1q_s16(v131, v134);
          _Q25 = vzip2q_s16(v131, v134);
          v137 = vzip1q_s8(_Q21, _Q23);
          _Q29 = vzip1q_s16(v132, v137);
          _Q26 = vzip2q_s16(v132, v137);
          v140 = vzip1q_s8(_Q23, _Q24);
          _Q30 = vzip1q_s16(v134, v140);
          _Q27 = vzip2q_s16(v134, v140);
          v143 = a3;
          v144 = vzip1q_s8(_Q24, v17);
          _Q20 = vzip1q_s16(v137, v144);
          v145 = v117;
          v146 = result;
          v147 = v116;
          v148 = v115;
          _Q23 = vzip2q_s16(v137, v144);
          v149 = v114;
          v150 = v113;
          v151 = v112;
          v152 = a6;
          do
          {
            v17.i64[0] = *&v148[v104];
            v137.i64[0] = *&v149[v104];
            v18.i64[0] = *&v150[v104];
            _Q11.i64[0] = *&v151[v104];
            v153 = vzip1q_s8(v17, v137);
            v154 = vzip1q_s8(v18, _Q11);
            _Q21 = vzip1q_s16(v153, v154);
            _Q24 = vzip2q_s16(v153, v154);
            __asm
            {
              USDOT           V8.4S, V31.16B, V3.16B
              USDOT           V8.4S, V28.16B, V4.16B
            }

            _Q31 = _Q28;
            _Q28 = vqtbl2q_s8(*_Q20.i8, unk_277BFC7B0);
            __asm
            {
              USDOT           V9.4S, V7.16B, V3.16B
              USDOT           V9.4S, V29.16B, V4.16B
            }

            _Q7 = _Q29;
            _Q29 = vqtbl2q_s8(*_Q20.i8, unk_277BFC7C0);
            __asm
            {
              USDOT           V10.4S, V17.16B, V3.16B
              USDOT           V10.4S, V30.16B, V4.16B
            }

            _Q17 = _Q30;
            _Q30 = vqtbl2q_s8(*_Q20.i8, unk_277BFC7D0);
            __asm
            {
              USDOT           V11.4S, V6.16B, V3.16B
              USDOT           V11.4S, V25.16B, V4.16B
            }

            _Q6 = _Q25;
            _Q25 = vqtbl2q_s8(*_Q23.i8, unk_277BFC7B0);
            __asm
            {
              USDOT           V12.4S, V16.16B, V3.16B
              USDOT           V12.4S, V26.16B, V4.16B
            }

            _Q16 = _Q26;
            _Q26 = vqtbl2q_s8(*_Q23.i8, unk_277BFC7C0);
            __asm
            {
              USDOT           V13.4S, V18.16B, V3.16B
              USDOT           V13.4S, V27.16B, V4.16B
            }

            _Q18 = _Q27;
            _Q27 = vqtbl2q_s8(*_Q23.i8, unk_277BFC7D0);
            __asm
            {
              USDOT           V8.4S, V28.16B, V5.16B
              USDOT           V11.4S, V25.16B, V5.16B
            }

            v17 = vqmovn_high_s32(vqmovn_s32(_Q8), _Q11);
            __asm
            {
              USDOT           V9.4S, V29.16B, V5.16B
              USDOT           V12.4S, V26.16B, V5.16B
            }

            v137 = vqmovn_high_s32(vqmovn_s32(_Q9), _Q12);
            __asm
            {
              USDOT           V10.4S, V30.16B, V5.16B
              USDOT           V13.4S, V27.16B, V5.16B
            }

            v18 = vqmovn_high_s32(vqmovn_s32(_Q10), _Q13);
            __asm
            {
              USDOT           V11.4S, V22.16B, V3.16B
              USDOT           V11.4S, V20.16B, V4.16B
              USDOT           V11.4S, V21.16B, V5.16B
              USDOT           V22.4S, V19.16B, V3.16B
              USDOT           V22.4S, V23.16B, V4.16B
              USDOT           V22.4S, V24.16B, V5.16B
            }

            *&v143[v104 / 4] = vqrshrun_n_s16(v17, 7uLL);
            *&v145[v104] = vqrshrun_n_s16(v137, 7uLL);
            *&v146[v104] = vqrshrun_n_s16(v18, 7uLL);
            *&v147[v104] = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q11), _Q22), 7uLL);
            v151 += v108;
            v150 += v108;
            v149 += v108;
            v148 += v108;
            v147 += v109;
            v146 += v109;
            v145 += v109;
            v143 = (v143 + v109);
            _Q22 = _Q20;
            _Q19 = _Q23;
            _Q20 = _Q21;
            _Q23 = _Q24;
            v152 -= 4;
          }

          while (v152);
          ++v33;
          v104 += 8;
          a5 -= 8;
        }

        while (a5);
      }
    }

    else if (v32[7] | *v32)
    {
      v79 = &result[-3 * a2];
      v80 = vmovn_s16(*v32);
      v81 = a2;
      if (a5 == 4)
      {
        a12.i64[0] = *v79;
        a13.i64[0] = *(v79 + a2);
        v82 = (v79 + a2 + a2);
        _Q5.i64[0] = *v82;
        v83 = (v82 + a2);
        v84 = *v83;
        v85 = (v83 + a2);
        v86 = *v85;
        v87 = (v85 + a2);
        v88 = (&v79[a2] - a2);
        *a12.i8 = vzip1_s8(*a12.i8, *a13.i8);
        *_Q21.i8 = vzip1_s8(*_Q5.i8, v84);
        _Q17 = vzip1q_s16(a12, _Q21);
        *a12.i8 = vzip1_s8(*a13.i8, *_Q5.i8);
        *a13.i8 = vzip1_s8(v84, v86);
        _Q16 = vzip1q_s16(a12, a13);
        *a12.i8 = vzip1_s8(v86, *v87);
        _Q7 = vzip1q_s16(_Q21, a12);
        *_Q5.i8 = vzip1_s8(*v87, *(v87 + a2));
        _Q3 = vdupq_lane_s32(v80, 0);
        _Q4 = vzip1q_s16(a13, _Q5);
        _Q6 = vdupq_lane_s32(v80, 1);
        do
        {
          *_Q18.i8 = vzip1_s8(*v88, *(v88 + a2));
          *_Q19.i8 = vzip1_s8(*(v88 + 2 * a2), *(v88 + 3 * a2));
          _Q5 = vzip1q_s16(_Q18, _Q19);
          __asm { USDOT           V18.4S, V17.16B, V3.16B }

          _Q17 = vqtbl2q_s8(*_Q4.i8, unk_277BFC7B0);
          __asm { USDOT           V19.4S, V16.16B, V3.16B }

          _Q16 = vqtbl2q_s8(*_Q4.i8, unk_277BFC7C0);
          __asm { USDOT           V20.4S, V7.16B, V3.16B }

          _Q7 = vqtbl2q_s8(*_Q4.i8, unk_277BFC7D0);
          __asm
          {
            USDOT           V18.4S, V17.16B, V6.16B
            USDOT           V19.4S, V16.16B, V6.16B
            USDOT           V20.4S, V7.16B, V6.16B
            USDOT           V21.4S, V4.16B, V3.16B
            USDOT           V21.4S, V5.16B, V6.16B
          }

          _Q18 = vqmovn_high_s32(vqmovn_s32(_Q18), _Q19);
          *_Q18.i8 = vqrshrun_n_s16(_Q18, 7uLL);
          *_Q19.i8 = vqrshrun_n_s16(vqmovn_high_s32(vqmovn_s32(_Q20), _Q21), 7uLL);
          *a3 = _Q18.i32[0];
          *(a3 + a4) = _Q18.i32[1];
          *(a3 + 2 * a4) = _Q19.i32[0];
          v103 = (a3 + a4 + (2 * a4));
          v88 = (v88 + 4 * a2);
          a3 += a4;
          _Q4 = _Q5;
          *v103 = _Q19.i32[1];
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v178 = 0;
        v179 = 3 * a2;
        _Q3 = vdupq_lane_s32(v80, 0);
        v181 = 4 * a2;
        v182 = 4 * a4;
        v183 = 2 * a2 + 7 * a2;
        _Q4 = vdupq_lane_s32(v80, 1);
        v185 = &result[v183 + a2 - v179];
        v186 = &result[v183 - v179];
        v187 = &result[a2 + (7 * a2) - v179];
        v188 = &result[7 * a2 - v179];
        v189 = a3 + 3 * a4;
        result = a3 + 2 * a4;
        v190 = a3 + a4;
        do
        {
          _Q5.i64[0] = *v79;
          _Q6.i64[0] = *(v79 + v81);
          v191 = (v79 + v81 + v81);
          _Q16.i64[0] = *v191;
          v192 = (v191 + v81);
          _Q17.i64[0] = *v192;
          v193 = (v192 + v81);
          _Q19.i64[0] = *v193;
          v194 = (v193 + v81);
          _Q23.i64[0] = *v194;
          v195 = vzip1q_s8(_Q5, _Q6);
          v196 = vzip1q_s8(_Q16, _Q17);
          v29.i64[0] = *(v194 + v81);
          _Q20 = vzip1q_s16(v195, v196);
          _Q7 = vzip2q_s16(v195, v196);
          v199 = vzip1q_s8(_Q6, _Q16);
          v200 = vzip1q_s8(_Q17, _Q19);
          _Q22 = vzip1q_s16(v199, v200);
          _Q18 = vzip2q_s16(v199, v200);
          v203 = vzip1q_s8(_Q19, _Q23);
          _Q21 = vzip1q_s16(v196, v203);
          _Q19 = vzip2q_s16(v196, v203);
          v205 = a3;
          v206 = vzip1q_s8(_Q23, v29);
          _Q5 = vzip1q_s16(v200, v206);
          v207 = v190;
          v208 = result;
          v209 = v189;
          v210 = v188;
          _Q16 = vzip2q_s16(v200, v206);
          v211 = v187;
          v212 = v186;
          v213 = v185;
          v214 = a6;
          do
          {
            _Q23.i64[0] = *&v210[v178];
            v196.i64[0] = *&v211[v178];
            v29.i64[0] = *&v212[v178];
            v30.i64[0] = *&v213[v178];
            v215 = vzip1q_s8(_Q23, v196);
            v216 = vzip1q_s8(v29, v30);
            _Q6 = vzip1q_s16(v215, v216);
            _Q17 = vzip2q_s16(v215, v216);
            __asm { USDOT           V23.4S, V20.16B, V3.16B }

            _Q20 = vqtbl2q_s8(*_Q5.i8, unk_277BFC7B0);
            __asm { USDOT           V24.4S, V22.16B, V3.16B }

            _Q22 = vqtbl2q_s8(*_Q5.i8, unk_277BFC7C0);
            __asm { USDOT           V25.4S, V21.16B, V3.16B }

            _Q21 = vqtbl2q_s8(*_Q5.i8, unk_277BFC7D0);
            __asm { USDOT           V26.4S, V7.16B, V3.16B }

            _Q7 = vqtbl2q_s8(*_Q16.i8, unk_277BFC7B0);
            __asm { USDOT           V27.4S, V18.16B, V3.16B }

            _Q18 = vqtbl2q_s8(*_Q16.i8, unk_277BFC7C0);
            __asm { USDOT           V28.4S, V19.16B, V3.16B }

            _Q19 = vqtbl2q_s8(*_Q16.i8, unk_277BFC7D0);
            __asm
            {
              USDOT           V23.4S, V20.16B, V4.16B
              USDOT           V26.4S, V7.16B, V4.16B
            }

            _Q23 = vqmovn_high_s32(vqmovn_s32(_Q23), _Q26);
            __asm
            {
              USDOT           V24.4S, V22.16B, V4.16B
              USDOT           V27.4S, V18.16B, V4.16B
            }

            v196 = vqmovn_high_s32(vqmovn_s32(_Q24), _Q27);
            __asm
            {
              USDOT           V25.4S, V21.16B, V4.16B
              USDOT           V28.4S, V19.16B, V4.16B
            }

            v29 = vqmovn_high_s32(vqmovn_s32(_Q25), _Q28);
            __asm
            {
              USDOT           V26.4S, V5.16B, V3.16B
              USDOT           V26.4S, V6.16B, V4.16B
              USDOT           V27.4S, V16.16B, V3.16B
              USDOT           V27.4S, V17.16B, V4.16B
            }

            *&v205[v178 / 4] = vqrshrun_n_s16(_Q23, 7uLL);
            *&v207[v178] = vqrshrun_n_s16(v196, 7uLL);
            v30 = vqmovn_high_s32(vqmovn_s32(_Q26), _Q27);
            *&v208[v178] = vqrshrun_n_s16(v29, 7uLL);
            *&v209[v178] = vqrshrun_n_s16(v30, 7uLL);
            v213 += v181;
            v212 += v181;
            v211 += v181;
            v210 += v181;
            v209 += v182;
            v208 += v182;
            v207 += v182;
            v205 = (v205 + v182);
            _Q5 = _Q6;
            _Q16 = _Q17;
            v214 -= 4;
          }

          while (v214);
          ++v79;
          v178 += 8;
          a5 -= 8;
        }

        while (a5);
      }
    }

    else
    {

      return sub_2779C6BFC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, *a12.i8, *a13.i8, *_Q5.i8, *_Q6.i8);
    }
  }

  return result;
}

uint64_t sub_277A8C97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20]();
  v579[4097] = *MEMORY[0x277D85DE8];
  if (v16 == 2 || v17 == 2)
  {

    return sub_27797D04C(result, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
  }

  else
  {
    v21 = *(v19 + 8);
    v22 = (*v19 + 2 * (a11 & 0xFu) * v21);
    if (v21 == 12)
    {
      v23 = 12;
    }

    else if (v22[7] | *v22)
    {
      v23 = 8;
    }

    else if (v22[6] | v22[1])
    {
      v23 = 6;
    }

    else if (v22[5] | v22[2])
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    v24 = *(v18 + 8);
    v25 = (*v18 + 2 * (a9 & 0xF) * v24);
    if (v24 == 12)
    {
      v26 = 12;
    }

    else if (v25[7] | *v25)
    {
      v26 = 8;
    }

    else if (v25[6] | v25[1])
    {
      v26 = 6;
    }

    else if (v25[5] | v25[2])
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v23 <= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v23;
    }

    v28 = v17 + v27 - 1;
    v29 = v24 >> 1;
    v30 = (((v27 >> 1) - 1) * v13);
    v31 = result - v30 - (v24 >> 1) + 1;
    if (v24 < 9)
    {
      if (v26 == 6 && v23 == 6)
      {
        v70 = 0;
        v71 = (result - (((v27 >> 1) - 1) * v13) - (v24 >> 1) + 2);
        v72 = *v22;
        v73 = v13;
        v74 = 4 * v13;
        v75 = 2 * v13 + 5 * v13;
        v76 = vshrn_n_s16(*v25, 1uLL);
        _Q3 = vshrn_high_n_s16(vext_s8(v76, v76, 1uLL), *v25, 1uLL);
        v78 = v75 + v13 - v29;
        v79 = v75 - v29;
        v80 = 5 * v13;
        v81 = v13 + v80 - v29;
        v82 = v80 - v29;
        v83 = 4 * v15;
        v84 = v78 - v30 + result + 2;
        v85 = v79 - v30 + result + 2;
        v86 = v81 - v30 + result + 2;
        v87 = v82 - v30 + result + 2;
        v88 = v14 + 3 * v15;
        result = v14 + 2 * v15;
        v89.i64[0] = 0x7F007F007F007FLL;
        v89.i64[1] = 0x7F007F007F007FLL;
        v90 = v14 + v15;
        do
        {
          v91 = *(v71 + v73);
          v92 = (v71 + v73 + v73);
          v93 = *v92;
          v94 = (v92 + v73);
          v95 = *(v94 + v73);
          _Q7 = vqtbl1q_s8(*v71, unk_277BFC760);
          _Q6 = vqtbl1q_s8(*v71, unk_277BFC770);
          __asm
          {
            USMMLA          V18.4S, V7.16B, V3.16B
            USMMLA          V21.4S, V6.16B, V3.16B
          }

          v100 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q21, 2uLL);
          _Q6 = vqtbl1q_s8(v91, unk_277BFC760);
          _Q16 = vqtbl1q_s8(v91, unk_277BFC770);
          __asm
          {
            USMMLA          V18.4S, V6.16B, V3.16B
            USMMLA          V6.4S, V16.16B, V3.16B
          }

          v105 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q6, 2uLL);
          _Q6 = vqtbl1q_s8(v93, unk_277BFC760);
          _Q16 = vqtbl1q_s8(v93, unk_277BFC770);
          __asm
          {
            USMMLA          V17.4S, V6.16B, V3.16B
            USMMLA          V6.4S, V16.16B, V3.16B
          }

          v110 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q6, 2uLL);
          _Q6 = vqtbl1q_s8(*v94, unk_277BFC760);
          _Q16 = vqtbl1q_s8(*v94, unk_277BFC770);
          __asm
          {
            USMMLA          V17.4S, V6.16B, V3.16B
            USMMLA          V6.4S, V16.16B, V3.16B
          }

          v115 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q6, 2uLL);
          _Q6 = vqtbl1q_s8(v95, unk_277BFC760);
          _Q16 = vqtbl1q_s8(v95, unk_277BFC770);
          __asm
          {
            USMMLA          V19.4S, V6.16B, V3.16B
            USMMLA          V20.4S, V16.16B, V3.16B
          }

          v120 = v14;
          v121 = v90;
          v122 = result;
          v123 = v88;
          v124 = v87;
          v125 = vshrn_high_n_s32(vshrn_n_s32(_Q19, 2uLL), _Q20, 2uLL);
          v126 = v86;
          v127 = v85;
          v128 = v84;
          v129 = v17;
          do
          {
            v130 = *(v124 + v70);
            v131 = *(v126 + v70);
            v132 = *(v127 + v70);
            v133 = *(v128 + v70);
            _Q19 = vqtbl1q_s8(v130, unk_277BFC760);
            _Q16 = vqtbl1q_s8(v130, unk_277BFC770);
            __asm
            {
              USMMLA          V21.4S, V19.16B, V3.16B
              USMMLA          V28.4S, V16.16B, V3.16B
            }

            v138 = vshrn_n_s32(_Q21, 2uLL);
            *_Q16.i8 = vshrn_n_s32(_Q28, 2uLL);
            v139 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v105.i8, *v72.i8, 2), *v100.i8, *v72.i8, 1), *v110.i8, *v72.i8, 3), *v115.i8, v72, 4), *v125.i8, v72, 5), v138, v72, 6);
            v140 = vmull_high_lane_s16(v105, *v72.i8, 2);
            v141 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v110.i8, *v72.i8, 2), *v105.i8, *v72.i8, 1), *v115.i8, *v72.i8, 3), *v125.i8, v72, 4), v138, v72, 5);
            v142 = vmlal_high_lane_s16(vmull_high_lane_s16(v110, *v72.i8, 2), v105, *v72.i8, 1);
            v143 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v72.i8, 2), *v110.i8, *v72.i8, 1), *v125.i8, *v72.i8, 3), v138, v72, 4);
            v144 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v125.i8, *v72.i8, 2), *v115.i8, *v72.i8, 1), v138, *v72.i8, 3);
            v145 = vshrn_high_n_s32(v138, _Q28, 2uLL);
            _Q28 = vqtbl1q_s8(v131, unk_277BFC760);
            _Q26 = vqtbl1q_s8(v131, unk_277BFC770);
            __asm
            {
              USMMLA          V30.4S, V28.16B, V3.16B
              USMMLA          V31.4S, V26.16B, V3.16B
            }

            *_Q30.i8 = vshrn_n_s32(_Q30, 2uLL);
            *_Q26.i8 = vshrn_n_s32(_Q31, 2uLL);
            v150 = vmlal_high_lane_s16(vmlal_high_lane_s16(v140, v100, *v72.i8, 1), v110, *v72.i8, 3);
            v151 = vmlal_laneq_s16(v141, *_Q30.i8, v72, 6);
            v152 = vmlal_laneq_s16(v143, *_Q30.i8, v72, 5);
            v153 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v72.i8, 2), v110, *v72.i8, 1);
            v154 = vmlal_laneq_s16(v144, *_Q30.i8, v72, 4);
            v110 = vshrn_high_n_s32(*_Q30.i8, _Q31, 2uLL);
            _Q7 = vqtbl1q_s8(v132, unk_277BFC760);
            _Q24 = vqtbl1q_s8(v132, unk_277BFC770);
            __asm
            {
              USMMLA          V30.4S, V7.16B, V3.16B
              USMMLA          V7.4S, V24.16B, V3.16B
            }

            *_Q31.i8 = vshrn_n_s32(_Q30, 2uLL);
            *_Q24.i8 = vshrn_n_s32(_Q7, 2uLL);
            v159 = vmlal_high_laneq_s16(v150, v115, v72, 4);
            v160 = vmlal_high_lane_s16(v142, v115, *v72.i8, 3);
            v161 = vmlal_laneq_s16(v152, *_Q31.i8, v72, 6);
            v162 = vmlal_laneq_s16(v154, *_Q31.i8, v72, 5);
            v163 = vmlal_high_lane_s16(vmull_high_lane_s16(v125, *v72.i8, 2), v115, *v72.i8, 1);
            v115 = vshrn_high_n_s32(*_Q31.i8, _Q7, 2uLL);
            _Q7 = vqtbl1q_s8(v133, unk_277BFC760);
            _Q31 = vqtbl1q_s8(v133, unk_277BFC770);
            __asm
            {
              USMMLA          V8.4S, V7.16B, V3.16B
              USMMLA          V20.4S, V31.16B, V3.16B
            }

            *_Q8.i8 = vshrn_n_s32(_Q8, 2uLL);
            v100 = v125;
            *&v120[v70 / 4] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v139, 0xBuLL), vmlal_laneq_s16(vmlal_high_laneq_s16(v159, v125, v72, 5), *_Q16.i8, v72, 6), 0xBuLL), v89));
            *&v121[v70] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v151, 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_laneq_s16(v160, v125, v72, 4), *_Q16.i8, v72, 5), *_Q26.i8, v72, 6), 0xBuLL), v89));
            *(v122 + v70) = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v161, 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(v153, v125, *v72.i8, 3), *_Q16.i8, v72, 4), *_Q26.i8, v72, 5), *_Q24.i8, v72, 6), 0xBuLL), v89));
            *&v123[v70] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_laneq_s16(v162, *_Q8.i8, v72, 6), 0xBuLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v163, *_Q16.i8, *v72.i8, 3), *_Q26.i8, v72, 4), *_Q24.i8, v72, 5), vshrn_n_s32(_Q20, 2uLL), v72, 6), 0xBuLL), v89));
            v128 += v74;
            v127 += v74;
            v126 += v74;
            v124 += v74;
            v123 += v83;
            v122 += v83;
            v121 += v83;
            v120 = (v120 + v83);
            v105 = v145;
            v125 = vshrn_high_n_s32(*_Q8.i8, _Q20, 2uLL);
            v129 -= 4;
          }

          while (v129);
          v71 = (v71 + 8);
          v70 += 8;
          LODWORD(v16) = v16 - 8;
        }

        while (v16);
      }

      else if (v26 > 6 || v23 > 4)
      {
        if (v26 > 4)
        {
          v370 = vshrn_n_s16(*v25, 1uLL);
          v371 = 4 * v13;
          v372 = v13;
          _Q3 = vdupq_lane_s32(v370, 0);
          _Q4 = vdupq_lane_s32(v370, 1);
          v375 = 3 * v13 - v29 - v30 + result + 1;
          v376 = 2 * v13 - v29 - v30 + result + 1;
          v377 = v13 - v29 - v30 + result + 1;
          result = v16;
          v378 = v575;
          do
          {
            v379 = 0;
            v380 = v378;
            do
            {
              v381 = *(v31 + v379);
              v382 = *(v377 + v379);
              v383 = *(v376 + v379);
              v384 = *(v375 + v379);
              _Q18 = vqtbl1q_s8(v381, unk_277BFC780);
              _Q19 = vqtbl1q_s8(v381, unk_277BFC790);
              _Q6 = vqtbl1q_s8(v381, unk_277BFC7A0);
              __asm
              {
                USDOT           V20.4S, V18.16B, V3.16B
                USDOT           V20.4S, V19.16B, V4.16B
                USDOT           V18.4S, V19.16B, V3.16B
                USDOT           V18.4S, V6.16B, V4.16B
              }

              v392 = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
              _Q18 = vqtbl1q_s8(v382, unk_277BFC780);
              _Q19 = vqtbl1q_s8(v382, unk_277BFC790);
              _Q7 = vqtbl1q_s8(v382, unk_277BFC7A0);
              __asm
              {
                USDOT           V20.4S, V18.16B, V3.16B
                USDOT           V20.4S, V19.16B, V4.16B
                USDOT           V18.4S, V19.16B, V3.16B
                USDOT           V18.4S, V7.16B, V4.16B
              }

              v400 = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
              _Q18 = vqtbl1q_s8(v383, unk_277BFC780);
              _Q19 = vqtbl1q_s8(v383, unk_277BFC790);
              _Q16 = vqtbl1q_s8(v383, unk_277BFC7A0);
              __asm
              {
                USDOT           V20.4S, V18.16B, V3.16B
                USDOT           V20.4S, V19.16B, V4.16B
                USDOT           V18.4S, V19.16B, V3.16B
                USDOT           V18.4S, V16.16B, V4.16B
              }

              v408 = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
              _Q18 = vqtbl1q_s8(v384, unk_277BFC780);
              _Q19 = vqtbl1q_s8(v384, unk_277BFC790);
              _Q17 = vqtbl1q_s8(v384, unk_277BFC7A0);
              __asm
              {
                USDOT           V20.4S, V18.16B, V3.16B
                USDOT           V20.4S, V19.16B, V4.16B
                USDOT           V18.4S, V19.16B, V3.16B
                USDOT           V18.4S, V17.16B, V4.16B
              }

              *v380 = v392;
              v380[16] = v400;
              v380[32] = v408;
              v380[48] = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
              ++v380;
              v379 += 8;
            }

            while (v16 != v379);
            v31 += v371;
            v378 += 64;
            v416 = v28 - 4;
            v375 += v371;
            v376 += v371;
            v377 += v371;
            v262 = v28 <= 8;
            v28 -= 4;
          }

          while (!v262);
          do
          {
            v417 = v31;
            v418 = v378;
            v419 = v16;
            do
            {
              v420 = *v417;
              v417 = (v417 + 8);
              _Q7 = vqtbl1q_s8(v420, unk_277BFC780);
              _Q16 = vqtbl1q_s8(v420, unk_277BFC790);
              _Q6 = vqtbl1q_s8(v420, unk_277BFC7A0);
              __asm
              {
                USDOT           V17.4S, V7.16B, V3.16B
                USDOT           V17.4S, V16.16B, V4.16B
                USDOT           V7.4S, V16.16B, V3.16B
                USDOT           V7.4S, V6.16B, V4.16B
              }

              *v418++ = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q7, 2uLL);
              v419 -= 8;
            }

            while (v419);
            v31 += v372;
            v378 += 16;
            --v416;
          }

          while (v416);
        }

        else
        {
          v20.i64[0] = *(v25 + 2);
          v347 = vshrn_n_s16(v20, 1uLL);
          if (v16 == 4)
          {
            v348 = v13;
            _Q0 = vdupq_lane_s32(v347, 0);
            v350 = 4 * v13;
            v351 = v17 + v27 + 3;
            v352 = 3 - (v29 + v30);
            v353 = 3 * v13 - (v29 + v30) + 3;
            v354 = 2 * v13 - v29 - v30;
            v355 = v348 - v29 - v30;
            v356 = v575;
            do
            {
              v357 = result + v352;
              _Q3 = vqtbl1q_s8(*(result + v352), xmmword_277BB74E0);
              __asm { USDOT           V7.4S, V3.16B, V0.16B }

              *_Q3.i8 = vshrn_n_s32(_Q7, 2uLL);
              _Q4 = vqtbl1q_s8(*(result + v355 + 3), xmmword_277BB74E0);
              __asm { USDOT           V7.4S, V4.16B, V0.16B }

              *_Q4.i8 = vshrn_n_s32(_Q7, 2uLL);
              _Q5 = vqtbl1q_s8(*(result + v354 + 3), xmmword_277BB74E0);
              __asm { USDOT           V7.4S, V5.16B, V0.16B }

              *_Q5.i8 = vshrn_n_s32(_Q7, 2uLL);
              _Q6 = vqtbl1q_s8(*(result + v353), xmmword_277BB74E0);
              __asm { USDOT           V7.4S, V6.16B, V0.16B }

              *v356 = *_Q3.i8;
              v356[32] = *_Q4.i8;
              v356[64] = *_Q5.i8;
              v356[96] = vshrn_n_s32(_Q7, 2uLL);
              v356 += 128;
              v351 -= 4;
              result += v350;
            }

            while (v351 > 8);
            v366 = (v357 + v350);
            v367 = v351 - 4;
            do
            {
              _Q3 = vqtbl1q_s8(*v366, xmmword_277BB74E0);
              __asm { USDOT           V4.4S, V3.16B, V0.16B }

              *v356 = vshrn_n_s32(_Q4, 2uLL);
              v366 = (v366 + v348);
              v356 += 32;
              --v367;
            }

            while (v367);
          }

          else
          {
            v499 = result - (((v27 >> 1) - 1) * v13) - (v24 >> 1) + 3;
            v500 = 4 * v13;
            v501 = v13;
            _Q2 = vdupq_lane_s32(v347, 0);
            v503 = 3 * v13 - v29 - v30 + result + 3;
            v504 = 2 * v13 - v29 - v30 + result + 3;
            v505 = v501 - v29 - v30 + result + 3;
            v506 = v575;
            do
            {
              v507 = 0;
              v508 = v506;
              do
              {
                v509 = *(v499 + v507);
                v510 = *(v505 + v507);
                v511 = *(v504 + v507);
                v512 = *(v503 + v507);
                _Q16 = vqtbl1q_s8(v509, unk_277BFC780);
                _Q4 = vqtbl1q_s8(v509, unk_277BFC790);
                __asm
                {
                  USDOT           V17.4S, V16.16B, V2.16B
                  USDOT           V16.4S, V4.16B, V2.16B
                }

                v517 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
                _Q16 = vqtbl1q_s8(v510, unk_277BFC780);
                _Q5 = vqtbl1q_s8(v510, unk_277BFC790);
                __asm
                {
                  USDOT           V17.4S, V16.16B, V2.16B
                  USDOT           V16.4S, V5.16B, V2.16B
                }

                v522 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
                _Q16 = vqtbl1q_s8(v511, unk_277BFC780);
                _Q6 = vqtbl1q_s8(v511, unk_277BFC790);
                __asm
                {
                  USDOT           V17.4S, V16.16B, V2.16B
                  USDOT           V16.4S, V6.16B, V2.16B
                }

                v527 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
                _Q16 = vqtbl1q_s8(v512, unk_277BFC780);
                _Q7 = vqtbl1q_s8(v512, unk_277BFC790);
                __asm
                {
                  USDOT           V17.4S, V16.16B, V2.16B
                  USDOT           V16.4S, V7.16B, V2.16B
                }

                *v508 = v517;
                v508[16] = v522;
                v508[32] = v527;
                v508[48] = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
                ++v508;
                v507 += 8;
              }

              while (v16 != v507);
              v499 += v500;
              v506 += 64;
              LODWORD(result) = v28 - 4;
              v503 += v500;
              v504 += v500;
              v505 += v500;
              v262 = v28 <= 8;
              v28 -= 4;
            }

            while (!v262);
            do
            {
              v532 = v499;
              v533 = v506;
              v534 = v16;
              do
              {
                v535 = *v532;
                v532 = (v532 + 8);
                _Q5 = vqtbl1q_s8(v535, unk_277BFC780);
                _Q4 = vqtbl1q_s8(v535, unk_277BFC790);
                __asm
                {
                  USDOT           V6.4S, V5.16B, V2.16B
                  USDOT           V5.4S, V4.16B, V2.16B
                }

                *v533++ = vshrn_high_n_s32(vshrn_n_s32(_Q6, 2uLL), _Q5, 2uLL);
                v534 -= 8;
              }

              while (v534);
              v499 += v501;
              v506 += 16;
              result = (result - 1);
            }

            while (result);
          }
        }

        v540 = *v22;
        if (v23 > 4)
        {
          if (v23 == 6)
          {
            return sub_277A3CA94(v575, v14, v15, v16, v17, v540);
          }

          else
          {
            return sub_277A3CD28(v575, v14, v15, v16, v17, v540);
          }
        }

        else
        {
          v541 = (v540 >> 32);
          if (v16 == 4)
          {
            v542 = *&v575[0];
            v543 = v576;
            v544 = v577;
            v545 = v578;
            v546 = 2 * v15;
            v547.i64[0] = 0x7F007F007F007FLL;
            v547.i64[1] = 0x7F007F007F007FLL;
            do
            {
              v548 = vmlal_lane_s16(vmull_lane_s16(v543, v541, 1), v542, v541, 0);
              v542 = v545[32];
              v549 = vmlal_lane_s16(vmull_lane_s16(v544, v541, 1), v543, v541, 0);
              v543 = v545[64];
              v550 = vmlal_lane_s16(v548, v544, v541, 2);
              v551 = vmlal_lane_s16(vmull_lane_s16(*v545, v541, 1), v544, v541, 0);
              v544 = v545[96];
              v552 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v550, *v545, v541, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v549, *v545, v541, 2), v542, v541, 3), 0xBuLL), v547));
              v553 = vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v551, v542, v541, 2), v543, v541, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v542, v541, 1), *v545, v541, 0), v543, v541, 2), v544, v541, 3), 0xBuLL), v547);
              *v14 = v552.i32[0];
              *(v14 + v15) = v552.i32[1];
              v554 = vqmovun_s16(v553);
              *(v14 + v546) = v554.i32[0];
              v555 = (v14 + v546 + v15);
              v545 += 128;
              v14 += v15;
              *v555 = v554.i32[1];
              LODWORD(v17) = v17 - 4;
            }

            while (v17);
          }

          else
          {
            v556 = v14 + 3 * v15;
            v557 = v14 + 2 * v15;
            v558 = v14 + v15;
            v559 = v575;
            v560.i64[0] = 0x7F007F007F007FLL;
            v560.i64[1] = 0x7F007F007F007FLL;
            do
            {
              v561 = 0;
              v562 = *v559;
              v563 = v559[16];
              v564 = 48;
              v565 = v17;
              v566 = v559[32];
              do
              {
                v567 = v559[v564];
                v568 = vmlal_lane_s16(vmull_lane_s16(*v563.i8, v541, 1), *v562.i8, v541, 0);
                v569 = vmlal_high_lane_s16(vmull_high_lane_s16(v563, v541, 1), v562, v541, 0);
                v562 = v559[v564 + 16];
                v570 = vmlal_lane_s16(vmull_lane_s16(*v566.i8, v541, 1), *v563.i8, v541, 0);
                v571 = vmlal_high_lane_s16(vmull_high_lane_s16(v566, v541, 1), v563, v541, 0);
                v563 = v559[v564 + 32];
                v572 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v568, *v566.i8, v541, 2), *v567.i8, v541, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v569, v566, v541, 2), v567, v541, 3), 0xBuLL);
                v573 = vmlal_lane_s16(vmull_lane_s16(*v567.i8, v541, 1), *v566.i8, v541, 0);
                v574 = vmlal_high_lane_s16(vmull_high_lane_s16(v567, v541, 1), v566, v541, 0);
                v566 = v559[v564 + 48];
                *&v14[v561 / 4] = vqmovun_s16(vaddq_s16(v572, v560));
                *&v558[v561] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v570, *v567.i8, v541, 2), *v562.i8, v541, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v571, v567, v541, 2), v562, v541, 3), 0xBuLL), v560));
                *&v557[v561] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v573, *v562.i8, v541, 2), *v563.i8, v541, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v574, v562, v541, 2), v563, v541, 3), 0xBuLL), v560));
                *&v556[v561] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v562.i8, v541, 1), *v567.i8, v541, 0), *v563.i8, v541, 2), *v566.i8, v541, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v562, v541, 1), v567, v541, 0), v563, v541, 2), v566, v541, 3), 0xBuLL), v560));
                v564 += 64;
                v561 += 4 * v15;
                v565 -= 4;
              }

              while (v565);
              ++v559;
              v14 += 2;
              v556 += 8;
              v557 += 8;
              v558 += 8;
              LODWORD(v16) = v16 - 8;
            }

            while (v16);
          }
        }
      }

      else
      {
        v168 = (result - (((v27 >> 1) - 1) * v13) - (v24 >> 1) + 2);
        v169 = *(v22 + 2);
        v170 = vshrn_n_s16(*v25, 1uLL);
        _Q1 = vshrn_high_n_s16(vext_s8(v170, v170, 1uLL), *v25, 1uLL);
        if (v16 == 4)
        {
          v172 = v13;
          v173 = (v168 + v13);
          v174 = *(v173 + v13);
          _Q6 = vqtbl1q_s8(*v168, xmmword_277BB7100);
          __asm { USMMLA          V7.4S, V6.16B, V1.16B }

          v177 = vshrn_n_s32(_Q7, 2uLL);
          _Q4 = vqtbl1q_s8(*v173, xmmword_277BB7100);
          __asm { USMMLA          V6.4S, V4.16B, V1.16B }

          v180 = vshrn_n_s32(_Q6, 2uLL);
          v181 = 3 * v13;
          _Q5 = vqtbl1q_s8(v174, xmmword_277BB7100);
          __asm { USMMLA          V4.4S, V5.16B, V1.16B }

          v184 = vshrn_n_s32(_Q4, 2uLL);
          v185 = 4 * v13;
          v186 = 2 * v13;
          v187 = 3 * v13;
          v188 = v29 + v30;
          v189 = v187 - (v29 + v30) + result + 2;
          v190 = v186 - v29 - v30 + result + 2;
          v191 = v172 - v29 - v30 + result + 2;
          v192 = result - v188 + 2;
          v193.i64[0] = 0x7F007F007F007FLL;
          v193.i64[1] = 0x7F007F007F007FLL;
          do
          {
            _Q16 = vqtbl1q_s8(*(v192 + v181), xmmword_277BB7100);
            __asm { USMMLA          V20.4S, V16.16B, V1.16B }

            *_Q16.i8 = vshrn_n_s32(_Q20, 2uLL);
            _Q17 = vqtbl1q_s8(*(v191 + v181), xmmword_277BB7100);
            __asm { USMMLA          V20.4S, V17.16B, V1.16B }

            v198 = vmlal_lane_s16(vmull_lane_s16(v180, v169, 1), v177, v169, 0);
            v177 = vshrn_n_s32(_Q20, 2uLL);
            _Q18 = vqtbl1q_s8(*(v190 + v181), xmmword_277BB7100);
            __asm { USMMLA          V20.4S, V18.16B, V1.16B }

            v201 = vmlal_lane_s16(vmull_lane_s16(v184, v169, 1), v180, v169, 0);
            v180 = vshrn_n_s32(_Q20, 2uLL);
            _Q19 = vqtbl1q_s8(*(v189 + v181), xmmword_277BB7100);
            __asm { USMMLA          V20.4S, V19.16B, V1.16B }

            v204 = vmlal_lane_s16(v198, v184, v169, 2);
            v205 = vmlal_lane_s16(vmull_lane_s16(*_Q16.i8, v169, 1), v184, v169, 0);
            v184 = vshrn_n_s32(_Q20, 2uLL);
            v206 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v177, v169, 1), *_Q16.i8, v169, 0), v180, v169, 2), v184, v169, 3);
            *_Q16.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v204, *_Q16.i8, v169, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v201, *_Q16.i8, v169, 2), v177, v169, 3), 0xBuLL), v193));
            *v204.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v205, v177, v169, 2), v180, v169, 3), 0xBuLL), v206, 0xBuLL), v193));
            *v14 = _Q16.i32[0];
            *(v14 + v15) = _Q16.i32[1];
            *(v14 + 2 * v15) = v204.i32[0];
            result = v14 + v15 + (2 * v15);
            v14 += v15;
            v189 += v185;
            v190 += v185;
            v191 += v185;
            v192 += v185;
            *result = v204.i32[1];
            LODWORD(v17) = v17 - 4;
          }

          while (v17);
        }

        else
        {
          v428 = 0;
          v429 = 2 * v13 + 3 * v13;
          v430 = v13;
          v431 = 4 * v13;
          v432 = v429 + v13 - v29;
          v433 = v429 - v29;
          v434 = 3 * v13;
          v435 = v13 + v434 - v29;
          v436 = v434 - v29;
          v437 = 4 * v15;
          v438 = v432 - v30 + result + 2;
          v439 = v433 - v30 + result + 2;
          v440 = v435 - v30 + result + 2;
          v441 = v436 - v30 + result + 2;
          v442.i64[0] = 0x7F007F007F007FLL;
          v442.i64[1] = 0x7F007F007F007FLL;
          v443 = v14 + 3 * v15;
          result = v14 + 2 * v15;
          v444 = v14 + v15;
          do
          {
            v445 = *(v168 + v430);
            v446 = *(v168 + v430 + v430);
            _Q17 = vqtbl1q_s8(*v168, unk_277BFC760);
            _Q6 = vqtbl1q_s8(*v168, unk_277BFC770);
            __asm
            {
              USMMLA          V18.4S, V17.16B, V1.16B
              USMMLA          V17.4S, V6.16B, V1.16B
            }

            v451 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
            _Q6 = vqtbl1q_s8(v445, unk_277BFC760);
            _Q7 = vqtbl1q_s8(v445, unk_277BFC770);
            __asm
            {
              USMMLA          V17.4S, V6.16B, V1.16B
              USMMLA          V6.4S, V7.16B, V1.16B
            }

            v456 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q6, 2uLL);
            _Q6 = vqtbl1q_s8(v446, unk_277BFC760);
            _Q16 = vqtbl1q_s8(v446, unk_277BFC770);
            __asm
            {
              USMMLA          V17.4S, V6.16B, V1.16B
              USMMLA          V18.4S, V16.16B, V1.16B
            }

            v461 = v14;
            v462 = v444;
            v463 = result;
            v464 = v443;
            v465 = v441;
            v466 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q18, 2uLL);
            v467 = v440;
            v468 = v439;
            v469 = v438;
            v470 = v17;
            do
            {
              v471 = *(v465 + v428);
              v472 = *(v467 + v428);
              v473 = *(v468 + v428);
              v474 = *(v469 + v428);
              _Q18 = vqtbl1q_s8(v471, unk_277BFC760);
              _Q16 = vqtbl1q_s8(v471, unk_277BFC770);
              __asm
              {
                USMMLA          V22.4S, V18.16B, V1.16B
                USMMLA          V23.4S, V16.16B, V1.16B
              }

              *_Q18.i8 = vshrn_n_s32(_Q22, 2uLL);
              *_Q16.i8 = vshrn_n_s32(_Q23, 2uLL);
              _Q22 = vqtbl1q_s8(v472, unk_277BFC760);
              _Q17 = vqtbl1q_s8(v472, unk_277BFC770);
              __asm
              {
                USMMLA          V24.4S, V22.16B, V1.16B
                USMMLA          V23.4S, V17.16B, V1.16B
              }

              *_Q24.i8 = vshrn_n_s32(_Q24, 2uLL);
              *_Q17.i8 = vshrn_n_s32(_Q23, 2uLL);
              v483 = vmlal_lane_s16(vmull_lane_s16(*v456.i8, v169, 1), *v451.i8, v169, 0);
              v484 = vmlal_high_lane_s16(vmull_high_lane_s16(v456, v169, 1), v451, v169, 0);
              v485 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v466.i8, v169, 1), *v456.i8, v169, 0), *_Q18.i8, v169, 2), *_Q24.i8, v169, 3);
              v486 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*_Q18.i8, v169, 1), *v466.i8, v169, 0), *_Q24.i8, v169, 2);
              v487 = vmull_lane_s16(*_Q24.i8, v169, 1);
              v451 = vshrn_high_n_s32(*_Q24.i8, _Q23, 2uLL);
              _Q23 = vqtbl1q_s8(v473, unk_277BFC760);
              _Q21 = vqtbl1q_s8(v473, unk_277BFC770);
              __asm
              {
                USMMLA          V24.4S, V23.16B, V1.16B
                USMMLA          V23.4S, V21.16B, V1.16B
              }

              *_Q21.i8 = vshrn_n_s32(_Q24, 2uLL);
              *_Q24.i8 = vshrn_n_s32(_Q23, 2uLL);
              v492 = vmlal_high_lane_s16(vmull_high_lane_s16(v466, v169, 1), v456, v169, 0);
              v493 = vmlal_lane_s16(v486, *_Q21.i8, v169, 3);
              v494 = vmlal_lane_s16(vmlal_lane_s16(v487, *_Q18.i8, v169, 0), *_Q21.i8, v169, 2);
              v456 = vshrn_high_n_s32(*_Q21.i8, _Q23, 2uLL);
              _Q21 = vqtbl1q_s8(v474, unk_277BFC760);
              _Q19 = vqtbl1q_s8(v474, unk_277BFC770);
              __asm
              {
                USMMLA          V23.4S, V21.16B, V1.16B
                USMMLA          V21.4S, V19.16B, V1.16B
              }

              *_Q19.i8 = vshrn_n_s32(_Q23, 2uLL);
              *&v461[v428 / 4] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v483, *v466.i8, v169, 2), *_Q18.i8, v169, 3), 0xBuLL), vmlal_lane_s16(vmlal_high_lane_s16(v484, v466, v169, 2), *_Q16.i8, v169, 3), 0xBuLL), v442));
              *&v462[v428] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v485, 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(v492, *_Q16.i8, v169, 2), *_Q17.i8, v169, 3), 0xBuLL), v442));
              *(v463 + v428) = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(v493, 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*_Q16.i8, v169, 1), v466, v169, 0), *_Q17.i8, v169, 2), *_Q24.i8, v169, 3), 0xBuLL), v442));
              *&v464[v428] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(v494, *_Q19.i8, v169, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*_Q17.i8, v169, 1), *_Q16.i8, v169, 0), *_Q24.i8, v169, 2), vshrn_n_s32(_Q21, 2uLL), v169, 3), 0xBuLL), v442));
              v469 += v431;
              v468 += v431;
              v467 += v431;
              v465 += v431;
              v464 += v437;
              v463 += v437;
              v462 += v437;
              v461 = (v461 + v437);
              v466 = vshrn_high_n_s32(*_Q19.i8, _Q21, 2uLL);
              v470 -= 4;
            }

            while (v470);
            v168 = (v168 + 8);
            v428 += 8;
            LODWORD(v16) = v16 - 8;
          }

          while (v16);
        }
      }
    }

    else
    {
      v32 = *v22;
      v33 = *(v22 + 8);
      *&_Q2 = vand_s8(vmovn_s16(*v25), 0xFFFFFFFFFFFFLL);
      *&_Q3 = vext_s8(vmovn_s16(*(v25 + 4)), 0, 2uLL);
      *(&_Q2 + 1) = vext_s8(*&_Q2, *&_Q2, 7uLL);
      *(&_Q3 + 1) = vext_s8(*&_Q3, *&_Q3, 7uLL);
      if (v16 > 4)
      {
        v207 = 4 * v13;
        v208 = v13;
        v209 = 2 * v13;
        v210 = 3 * v13;
        v211 = v29 + v30;
        v212 = v210 - (v29 + v30) + result + 7;
        v213 = v209 - v29 - v30 + result + 7;
        v214 = v208 - v29 - v30 + result + 7;
        v215 = result - v211 + 7;
        v216 = v575;
        do
        {
          v217 = 0;
          v218 = v216;
          do
          {
            v219 = *(v215 + v217 - 6);
            v220 = *(v214 + v217 - 6);
            v221 = *(v213 + v217 - 6);
            v222 = *(v212 + v217 - 6);
            v223 = *(v215 + v217);
            v224 = *(v214 + v217);
            v225 = *(v213 + v217);
            v226 = *(v212 + v217);
            _Q23 = vqtbl1q_s8(v219, unk_277BFC760);
            _Q7 = vqtbl1q_s8(v219, unk_277BFC770);
            _Q24 = vqtbl1q_s8(v223, unk_277BFC760);
            _Q19 = vqtbl1q_s8(v223, unk_277BFC770);
            __asm
            {
              USMMLA          V25.4S, V23.16B, V2.16B
              USMMLA          V23.4S, V7.16B, V2.16B
              USMMLA          V25.4S, V24.16B, V3.16B
              USMMLA          V23.4S, V19.16B, V3.16B
            }

            v235 = vshrn_high_n_s32(vshrn_n_s32(_Q25, 3uLL), _Q23, 3uLL);
            _Q19 = vqtbl1q_s8(v220, unk_277BFC760);
            _Q16 = vqtbl1q_s8(v220, unk_277BFC770);
            _Q23 = vqtbl1q_s8(v224, unk_277BFC760);
            _Q20 = vqtbl1q_s8(v224, unk_277BFC770);
            __asm
            {
              USMMLA          V24.4S, V19.16B, V2.16B
              USMMLA          V19.4S, V16.16B, V2.16B
              USMMLA          V24.4S, V23.16B, V3.16B
              USMMLA          V19.4S, V20.16B, V3.16B
            }

            v244 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 3uLL), _Q19, 3uLL);
            _Q19 = vqtbl1q_s8(v221, unk_277BFC760);
            _Q17 = vqtbl1q_s8(v221, unk_277BFC770);
            _Q20 = vqtbl1q_s8(v225, unk_277BFC760);
            _Q21 = vqtbl1q_s8(v225, unk_277BFC770);
            __asm
            {
              USMMLA          V23.4S, V19.16B, V2.16B
              USMMLA          V19.4S, V17.16B, V2.16B
              USMMLA          V23.4S, V20.16B, V3.16B
              USMMLA          V19.4S, V21.16B, V3.16B
            }

            v253 = vshrn_high_n_s32(vshrn_n_s32(_Q23, 3uLL), _Q19, 3uLL);
            _Q19 = vqtbl1q_s8(v222, unk_277BFC760);
            _Q18 = vqtbl1q_s8(v222, unk_277BFC770);
            _Q20 = vqtbl1q_s8(v226, unk_277BFC760);
            _Q21 = vqtbl1q_s8(v226, unk_277BFC770);
            __asm
            {
              USMMLA          V22.4S, V19.16B, V2.16B
              USMMLA          V19.4S, V18.16B, V2.16B
              USMMLA          V22.4S, V20.16B, V3.16B
              USMMLA          V19.4S, V21.16B, V3.16B
            }

            *v218 = v235;
            v218[16] = v244;
            v218[32] = v253;
            v218[48] = vshrn_high_n_s32(vshrn_n_s32(_Q22, 3uLL), _Q19, 3uLL);
            ++v218;
            v217 += 8;
          }

          while (v16 != v217);
          v31 += v207;
          v216 += 64;
          LODWORD(result) = v28 - 4;
          v212 += v207;
          v213 += v207;
          v214 += v207;
          v215 += v207;
          v262 = v28 <= 8;
          v28 -= 4;
        }

        while (!v262);
        do
        {
          v263 = v31;
          v264 = v216;
          v265 = v16;
          do
          {
            v266 = *(v263 + 6);
            _Q17 = vqtbl1q_s8(*v263, unk_277BFC760);
            _Q7 = vqtbl1q_s8(*v263, unk_277BFC770);
            _Q18 = vqtbl1q_s8(v266, unk_277BFC760);
            _Q16 = vqtbl1q_s8(v266, unk_277BFC770);
            __asm
            {
              USMMLA          V19.4S, V17.16B, V2.16B
              USMMLA          V17.4S, V7.16B, V2.16B
              USMMLA          V19.4S, V18.16B, V3.16B
              USMMLA          V17.4S, V16.16B, V3.16B
            }

            *v264++ = vshrn_high_n_s32(vshrn_n_s32(_Q19, 3uLL), _Q17, 3uLL);
            v263 += 8;
            v265 -= 8;
          }

          while (v265);
          v31 += v208;
          v216 += 16;
          result = (result - 1);
        }

        while (result);
      }

      else
      {
        v36 = 4 * v13;
        v37 = v17 + v27 + 3;
        v38 = -(v29 + v30);
        v39 = 3 * v13 - (v29 + v30) + 7;
        v40 = 2 * v13 - v29 - v30;
        v41 = v13 - v29 - v30;
        v42 = v575;
        do
        {
          v43 = (result + v38 + 1);
          _Q6 = vqtbl1q_s8(*v43, xmmword_277BB7100);
          _Q18 = vqtbl1q_s8(*(result + v38 + 7), xmmword_277BB7100);
          __asm
          {
            USMMLA          V22.4S, V6.16B, V2.16B
            USMMLA          V22.4S, V18.16B, V3.16B
          }

          _Q7 = vqtbl1q_s8(*(result + v41 + 1), xmmword_277BB7100);
          _Q18 = vqtbl1q_s8(*(result + v41 + 7), xmmword_277BB7100);
          __asm
          {
            USMMLA          V19.4S, V7.16B, V2.16B
            USMMLA          V19.4S, V18.16B, V3.16B
          }

          *_Q7.i8 = vshrn_n_s32(_Q19, 3uLL);
          _Q16 = vqtbl1q_s8(*(result + v40 + 1), xmmword_277BB7100);
          _Q18 = vqtbl1q_s8(*(result + v40 + 7), xmmword_277BB7100);
          __asm
          {
            USMMLA          V19.4S, V16.16B, V2.16B
            USMMLA          V19.4S, V18.16B, V3.16B
          }

          *_Q16.i8 = vshrn_n_s32(_Q19, 3uLL);
          _Q17 = vqtbl1q_s8(*(result + v39 - 6), xmmword_277BB7100);
          _Q18 = vqtbl1q_s8(*(result + v39), xmmword_277BB7100);
          __asm
          {
            USMMLA          V19.4S, V17.16B, V2.16B
            USMMLA          V19.4S, V18.16B, V3.16B
          }

          *v42 = vshrn_n_s32(_Q22, 3uLL);
          v42[32] = *_Q7.i8;
          v42[64] = *_Q16.i8;
          v42[96] = vshrn_n_s32(_Q19, 3uLL);
          v42 += 128;
          v37 -= 4;
          result += v36;
        }

        while (v37 > 8);
        v64 = &v43->i8[v36];
        v65 = v37 - 4;
        do
        {
          _Q6 = vqtbl1q_s8(*v64, xmmword_277BB7100);
          _Q7 = vqtbl1q_s8(*(v64 + 6), xmmword_277BB7100);
          __asm
          {
            USMMLA          V16.4S, V6.16B, V2.16B
            USMMLA          V16.4S, V7.16B, V3.16B
          }

          *v42 = vshrn_n_s32(_Q16, 3uLL);
          v64 += v13;
          v42 += 32;
          --v65;
        }

        while (v65);
      }

      if (v16 >= 5)
      {
        v298 = v14 + 3 * v15;
        v299 = v14 + 2 * v15;
        v300 = v575;
        v301.i64[0] = 0x7F007F007F007FLL;
        v301.i64[1] = 0x7F007F007F007FLL;
        v302 = v14 + v15;
        do
        {
          v303 = 0;
          v304 = *v300;
          v305 = v300[16];
          v306 = v300[32];
          v307 = v300[48];
          v308 = v300[64];
          v309 = v300[80];
          v310 = v300[96];
          v311 = v300[112];
          v312 = v300[128];
          v313 = v300[144];
          v314 = 176;
          v315 = v17;
          v316 = v300[160];
          do
          {
            v317 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v306.i8, *v32.i8, 1), *v305.i8, *v32.i8, 0), *v307.i8, *v32.i8, 2), *v308.i8, *v32.i8, 3), *v309.i8, v32, 4), *v310.i8, v32, 5), *v311.i8, v32, 6);
            v318 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v307.i8, *v32.i8, 1), *v306.i8, *v32.i8, 0), *v308.i8, *v32.i8, 2), *v309.i8, *v32.i8, 3), *v310.i8, v32, 4), *v311.i8, v32, 5);
            v319 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v306, *v32.i8, 1), v305, *v32.i8, 0), v307, *v32.i8, 2), v308, *v32.i8, 3), v309, v32, 4), v310, v32, 5), v311, v32, 6);
            v320 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v307, *v32.i8, 1), v306, *v32.i8, 0), v308, *v32.i8, 2), v309, *v32.i8, 3), v310, v32, 4), v311, v32, 5);
            v321 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v305.i8, *v32.i8, 1), *v304.i8, *v32.i8, 0), *v306.i8, *v32.i8, 2), *v307.i8, *v32.i8, 3), *v308.i8, v32, 4), *v309.i8, v32, 5), *v310.i8, v32, 6), *v311.i8, v32, 7);
            v322 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v308.i8, *v32.i8, 1), *v307.i8, *v32.i8, 0), *v309.i8, *v32.i8, 2), *v310.i8, *v32.i8, 3), *v311.i8, v32, 4);
            v323 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v305, *v32.i8, 1), v304, *v32.i8, 0), v306, *v32.i8, 2), v307, *v32.i8, 3), v308, v32, 4), v309, v32, 5), v310, v32, 6), v311, v32, 7);
            v324 = vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v308, *v32.i8, 1), v307, *v32.i8, 0), v309, *v32.i8, 2), v310, *v32.i8, 3), v311, v32, 4);
            v307 = v311;
            v311 = v300[v314];
            v325 = vmlal_lane_s16(v321, *v312.i8, v33, 0);
            v326 = vmlal_laneq_s16(v317, *v312.i8, v32, 7);
            v327 = vmlal_high_laneq_s16(v319, v312, v32, 7);
            v328 = vmlal_laneq_s16(v318, *v312.i8, v32, 6);
            v329 = vmlal_high_laneq_s16(v320, v312, v32, 6);
            v330 = vmlal_high_lane_s16(v323, v312, v33, 0);
            v331 = vmlal_laneq_s16(v322, *v312.i8, v32, 5);
            v332 = vmlal_high_laneq_s16(v324, v312, v32, 5);
            v304 = v308;
            v308 = v312;
            v312 = v300[v314 + 16];
            v333 = vmlal_lane_s16(v325, *v313.i8, v33, 1);
            v334 = vmlal_lane_s16(v326, *v313.i8, v33, 0);
            v335 = vmlal_high_lane_s16(v327, v313, v33, 0);
            v336 = vmlal_laneq_s16(v328, *v313.i8, v32, 7);
            v337 = vmlal_high_laneq_s16(v329, v313, v32, 7);
            v338 = vmlal_laneq_s16(v331, *v313.i8, v32, 6);
            v339 = vmlal_high_lane_s16(v330, v313, v33, 1);
            v340 = vmlal_high_laneq_s16(v332, v313, v32, 6);
            v305 = v309;
            v309 = v313;
            v313 = v300[v314 + 32];
            v341 = vmlal_lane_s16(v336, *v316.i8, v33, 0);
            v342 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v333, *v316.i8, v33, 2), *v311.i8, v33, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v339, v316, v33, 2), v311, v33, 3), 0xBuLL);
            v343 = vmlal_high_lane_s16(v337, v316, v33, 0);
            v344 = vmlal_laneq_s16(v338, *v316.i8, v32, 7);
            v345 = vmlal_high_laneq_s16(v340, v316, v32, 7);
            v306 = v310;
            v310 = v316;
            v346 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v334, *v316.i8, v33, 1), *v311.i8, v33, 2), *v312.i8, v33, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v335, v316, v33, 1), v311, v33, 2), v312, v33, 3), 0xBuLL);
            v316 = v300[v314 + 48];
            *&v14[v303 / 4] = vqmovun_s16(vaddq_s16(v342, v301));
            *&v302[v303] = vqmovun_s16(vaddq_s16(v346, v301));
            *&v299[v303] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v341, *v311.i8, v33, 1), *v312.i8, v33, 2), *v313.i8, v33, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v343, v311, v33, 1), v312, v33, 2), v313, v33, 3), 0xBuLL), v301));
            v314 += 64;
            *&v298[v303] = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v344, *v311.i8, v33, 0), *v312.i8, v33, 1), *v313.i8, v33, 2), *v316.i8, v33, 3), 0xBuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v345, v311, v33, 0), v312, v33, 1), v313, v33, 2), v316, v33, 3), 0xBuLL), v301));
            v303 += 4 * v15;
            v315 -= 4;
          }

          while (v315);
          ++v300;
          v14 += 2;
          v298 += 8;
          v299 += 8;
          v302 += 8;
          LODWORD(v16) = v16 - 8;
        }

        while (v16);
      }

      else
      {
        v275 = *&v575[0];
        v276 = v576;
        v277 = v577;
        v278 = v578[0];
        v279 = v579;
        v280 = v578[32];
        v281 = v578[64];
        v282 = v578[96];
        v283 = v578[128];
        v284 = 2 * v15;
        v285 = v578[160];
        v286 = v578[192];
        v287.i64[0] = 0x7F007F007F007FLL;
        v287.i64[1] = 0x7F007F007F007FLL;
        v288 = v578[224];
        do
        {
          v289 = vmlal_lane_s16(vmull_lane_s16(v276, *v32.i8, 1), v275, *v32.i8, 0);
          v275 = v280;
          v290 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v277, *v32.i8, 1), v276, *v32.i8, 0), v278, *v32.i8, 2), v280, *v32.i8, 3), v281, v32, 4), v282, v32, 5);
          v291 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v289, v277, *v32.i8, 2), v278, *v32.i8, 3), v280, v32, 4), v281, v32, 5), v282, v32, 6);
          v292 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v278, *v32.i8, 1), v277, *v32.i8, 0), v280, *v32.i8, 2), v281, *v32.i8, 3), v282, v32, 4);
          v293 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v280, *v32.i8, 1), v278, *v32.i8, 0), v281, *v32.i8, 2), v282, *v32.i8, 3);
          v277 = v282;
          v276 = v281;
          v282 = v288;
          v281 = v286;
          v280 = v285;
          v285 = v279[32];
          v286 = v279[64];
          v288 = v279[96];
          v294 = vmlal_laneq_s16(v291, v283, v32, 7);
          v295 = vmlal_laneq_s16(v290, v283, v32, 6);
          v296 = vmlal_laneq_s16(v292, v283, v32, 5);
          v297 = vmlal_laneq_s16(v293, v283, v32, 4);
          v278 = v283;
          v283 = *v279;
          *v294.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v294, v280, v33, 0), v281, v33, 1), v282, v33, 2), *v279, v33, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(v295, v280, v32, 7), v281, v33, 0), v282, v33, 1), *v279, v33, 2), v285, v33, 3), 0xBuLL), v287));
          *v295.i8 = vqmovun_s16(vaddq_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(v296, v280, v32, 6), v281, v32, 7), v282, v33, 0), *v279, v33, 1), v285, v33, 2), v286, v33, 3), 0xBuLL), vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v297, v280, v32, 5), v281, v32, 6), v282, v32, 7), *v279, v33, 0), v285, v33, 1), v286, v33, 2), v288, v33, 3), 0xBuLL), v287));
          *v14 = v294.i32[0];
          *(v14 + v15) = v294.i32[1];
          *(v14 + v284) = v295.i32[0];
          *(v14 + v284 + v15) = v295.i32[1];
          v279 += 128;
          v14 += v15;
          LODWORD(v17) = v17 - 4;
        }

        while (v17);
      }
    }
  }

  return result;
}

uint64_t sub_277A8E2E0(unint64_t a1, uint64_t a2, int a3, int16x4_t *a4, uint64_t a5, uint8x8_t *a6, uint64_t a7, uint8x8_t *a8, uint64_t a9)
{
  if (HIDWORD(a1))
  {
    return sub_277A4CF28(a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    return sub_277A4CE08(a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_277A8E330(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = a1 + 136 * a2;
  v7 = a1 + 2608 * a2;
  return sub_277A8E2E0(*(a1 + 11072) | (((*(*(a1 + 8376) + 192) >> 3) & 1) << 32), dword_277C3BF30[a6], dword_277C3BEE4[a6], (*v6 + 8 * (a4 + byte_277C3CAFE[a3] * a5)), byte_277C3CAFE[a3], (*(v6 + 48) + 4 * (a4 + *(v6 + 72) * a5)), *(v6 + 72), (*(v7 + 448) + 4 * (a4 + *(v7 + 472) * a5)), *(v7 + 472));
}

uint64_t sub_277A8E454(uint64_t result, uint64_t a2, int a3, int a4, int a5, unsigned int a6, int *a7, _DWORD *a8)
{
  v552 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 136 * a3 + 32);
  if (!*(v11 + 2 * a4) || (v12 = **(a2 + 8280), v13 = *(v12 + 167), !*(result + (v13 & 7) + 272256)) || *(a2 + 4 * (v13 & 7) + 11108))
  {
    *a8 = *(a2 + 7552 * ((byte_277C3BE70[a5] + byte_277C3BE83[a5] + 1) >> 1) + 3776 * (a3 != 0) + 8 * *a7 + 47580);
    return result;
  }

  v524 = *(v11 + 2 * a4);
  v14 = result + 271152;
  v537 = *(result + 271152);
  v528 = a5;
  v461 = (&off_27A722620 + 32 * a5 + 2 * a6);
  v531 = *v461;
  v540 = 0x1810uLL >> a5;
  v470 = (a2 + 136 * a3);
  v543 = 0x61E18uLL >> a5;
  v545 = v470[16];
  v15 = result;
  v542 = sub_277AA3DE0(result + 246232, a2 + 416, a3, a5, a6);
  v468 = a2;
  v469 = a3;
  v454 = v15;
  if (*(v14 + 852) == 1)
  {
    v17 = sub_277AA3E6C(v15 + 246232, a2 + 416, a3, a5, a6);
  }

  else
  {
    v17 = 0;
  }

  v18 = 16 * a4;
  v475 = byte_277C3BE00[a6];
  v464 = a5;
  v455 = a6;
  if (a5 > 16)
  {
    v20 = a2;
    v21 = a3;
    if (a5 == 17)
    {
      LOBYTE(v22) = 5;
      v474 = 16;
      v24 = a7;
      v25 = v524;
      v26 = v543;
      v27 = 9;
      goto LABEL_25;
    }

    if (a5 == 18)
    {
      LOBYTE(v22) = 4;
      v474 = 32;
      v24 = a7;
      v25 = v524;
      v26 = v543;
      v27 = 10;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v19 = 3;
  v20 = a2;
  v21 = a3;
  if ((a5 - 11) >= 2 && a5 != 4)
  {
LABEL_16:
    v19 = v528;
  }

  LODWORD(v22) = dword_277C3BE98[v19];
  if (a5 > 16 || (v23 = 3, (a5 - 11) >= 2) && a5 != 4)
  {
    v23 = v528;
  }

  v474 = dword_277C3BEE4[v23];
  if (a5 > 16)
  {
    v24 = a7;
    v25 = v524;
    v26 = v543;
LABEL_660:
    v27 = v528;
    goto LABEL_25;
  }

  v27 = 3;
  v24 = a7;
  v25 = v524;
  if ((a5 - 11) < 2)
  {
    v26 = v543;
    goto LABEL_25;
  }

  v26 = v543;
  if (a5 != 4)
  {
    goto LABEL_660;
  }

LABEL_25:
  v28 = v26 & 1;
  v29 = (v470[2] + 4 * v18);
  v30 = (v13 & 0x80) != 0 || *(v12 + 16) > 0;
  v31 = v542;
  v538 = v17;
  v539 = v28 + (v540 & 1);
  v544 = v470[1] + 4 * v18;
  v541 = v470[3] + 4 * v18;
  v32 = v20 + 47576 + 7552 * ((byte_277C3BE70[v528] + byte_277C3BE83[v528] + 1) >> 1) + 3776 * (v21 != 0);
  v529 = v20 + 176 * byte_277C3BE10[v528] + 88 * (v21 != 0);
  v533 = (*(v20 + 16920) * (dword_277C3BE24[2 * v30 + (v21 != 0)] << (2 * *(v20 + 11072) - 16)) + 2) >> 2;
  v532 = v32;
  if (v25 != 1)
  {
    sub_2779A3284(v29, v474, dword_277C3BF30[v27], v551);
    v32 = v532;
  }

  v33 = (v32 + 8 * *v24);
  v463 = *v33;
  v457 = v33[1];
  v34 = v475;
  v35 = v32;
  v36 = sub_277B30E7C(v25, v529 + 85336, v32, v475);
  v548 = v36;
  v547 = 0;
  v37 = v25 - 1;
  v38 = v531;
  v39 = v531[v25 - 1];
  v40 = v29->u32[v39];
  if ((v40 & 0x80000000) == 0)
  {
    v41 = v29->i32[v39];
  }

  else
  {
    v41 = -v40;
  }

  v550 = 0;
  v549 = v39;
  if (v41 < 2)
  {
    if (v25 == 1)
    {
      v44 = 0;
    }

    else
    {
      v43 = (v474 << v22) + 7;
      if (v474 << v22 >= 0)
      {
        v43 = v474 << v22;
      }

      if (v37 <= v43 >> 3)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2;
        if (v37 > (v474 << v22) / 4)
        {
          v44 = 3;
        }
      }
    }

    v45 = *(v532 + 12 * v44 + 4 * v41 + 100);
    if (v40)
    {
      if (v39)
      {
        v45 += 512;
      }

      else
      {
        v45 += *(v532 + 8 * v24[1] + 4 * (v40 >> 31) + 1568);
      }
    }

    v548 = v45 + v36;
    v46 = *(v541 + 4 * v39);
    v42 = v544;
    v47 = (v46 - *(v544 + 4 * v39)) << v539;
    v48 = v46 << v539;
    if (v538)
    {
      v49 = *(v538 + v39);
      v50 = *(v538 + v39) * v47;
      v51 = (v50 * v50 + 512) >> 10;
      v52 = (v49 * v48 * v49 * v48 + 512) >> 10;
    }

    else
    {
      v51 = v47 * v47;
      v52 = v48 * v48;
    }

    v547 = v51 - v52;
    v34 = v475;
  }

  else
  {
    sub_277B30F1C(&v548, &v547, v37, v25, a5, v475, v22, v474, v533, v539, v24[1], v545, v531, v35, v541, v29, v544, v551, v542, v538);
    v42 = v544;
    v38 = v531;
  }

  v53 = (v25 - 2);
  if (!v34)
  {
    v59 = v548;
    v57 = 1;
    v56 = v547;
    v54 = v538;
    if (v524 == 1)
    {
LABEL_200:
      v548 = v59;
      goto LABEL_463;
    }

    v476 = 1 << v22;
    v503 = v476 + 4;
    v472 = 2 << v22;
    v497 = v532 + 104;
    v60 = v532 + 152;
    v478 = v532 + 1568;
    v485 = v532 + 1592;
    v61 = (v474 << v22) + 7;
    if (v474 << v22 >= 0)
    {
      v61 = v474 << v22;
    }

    v458 = ((v474 << v22) + (v474 << v22 < 0 ? 3 : 0)) >> 2;
    v460 = v61 >> 3;
    v525 = v22;
    v521 = v29;
    while (1)
    {
      v62 = *(v38 + 2 * v53);
      v63 = *(v545 + 2 * (*(v38 + 2 * v53) != 0));
      if (v31)
      {
        v63 = (*(v31 + v62) * v63 + 16) >> 5;
      }

      v64 = v62 >> v22;
      if (*(v38 + 2 * v53))
      {
        v65 = &v551[v62 >> v22] + v62;
        LODWORD(v66) = (byte_277C3BF94[v65[v503]] + byte_277C3BF94[v65[1]] + byte_277C3BF94[v65[v476 + 5]] + byte_277C3BF94[v65[v472 + 8]] + byte_277C3BF94[v65[2]] + 1) >> 1;
        v66 = v66 >= 4 ? 4 : v66;
        v67 = v66 + *(*(&off_27A723920 + v528) + v62);
      }

      else
      {
        v67 = 0;
      }

      v68 = v29->u32[v62];
      if (v68)
      {
        break;
      }

      v59 += *(v60 + 32 * v67);
LABEL_197:
      v117 = v53-- < 1;
      if (v117 || v57 >= 3)
      {
        v34 = v475;
        goto LABEL_200;
      }
    }

    v515 = v59;
    if ((v68 & 0x80000000) == 0)
    {
      v69 = v29->u32[v62];
    }

    else
    {
      v69 = -v68;
    }

    v70 = *(v541 + 4 * v62);
    v71 = *(v42 + 4 * v62);
    v72 = v70 << v539;
    if (v54)
    {
      v73 = *(v54 + v62) * v72;
      v74 = (v73 * v73 + 512) >> 10;
      v75 = *(v54 + v62) * ((v70 - v71) << v539);
      v76 = (v75 * v75 + 512) >> 10;
    }

    else
    {
      v74 = v72 * v72;
      v76 = ((v70 - v71) << v539) * ((v70 - v71) << v539);
    }

    v509 = v76;
    v77 = a7[1];
    v78 = v68 >> 31;
    if (v69 >= 3)
    {
      v79 = 3;
    }

    else
    {
      v79 = v69;
    }

    if (*(v38 + 2 * v53))
    {
      v80 = 512;
    }

    else
    {
      v80 = *(v478 + 8 * v77 + 4 * v78);
    }

    v81 = v60 + 32 * v67;
    v82 = v80 + *(v81 + 4 * v79);
    v518 = v68 >> 31;
    if (v69 >= 3)
    {
      v83 = v62 - (v64 << v22);
      v84 = v551 + v83 + v64 * v503 + v503;
      v85 = (*(v551 + v83 + v64 * v503 + 1) + *v84 + v84[1] + 1) >> 1;
      if (v85 >= 6)
      {
        v85 = 6;
      }

      if (v62)
      {
        if (v64 > 1 || v83 > 1)
        {
          v85 += 14;
        }

        else
        {
          v85 += 7;
        }
      }

      LODWORD(v78) = v29->i32[v62] >> 31;
      v86 = v485 + 104 * v85;
      if (v69 >= 0xF)
      {
        v87 = 15;
      }

      else
      {
        v87 = v69;
      }

      v88 = *(v86 + 4 * v87 - 12);
      v89 = (__clz(v69 - 14) << 10) ^ 0x7E00;
      if (v69 <= 0xE)
      {
        v89 = 0;
      }

      v82 += v89 + v88;
    }

    v494 = &v551[v64] + v62;
    v534 = v57;
    v90 = v69 - 1;
    if (v69 == 1)
    {
      v488 = 0;
      v491 = 0;
      v506 = 0;
      v91 = *(v60 + 32 * v67);
      v500 = v56;
      v92 = v532;
    }

    else
    {
      v93 = v68 >> 31;
      v491 = (((v90 * v63) >> v539) ^ (v68 >> 31)) + v78;
      v94 = (v70 - v491) << v539;
      v92 = v532;
      if (v54)
      {
        v95 = *(v54 + v62) * v94;
        v96 = (v95 * v95 + 512) >> 10;
      }

      else
      {
        v96 = v94 * v94;
      }

      if (v90 >= 3)
      {
        v97 = 3;
      }

      else
      {
        v97 = v69 - 1;
      }

      if (v62)
      {
        v98 = 512;
      }

      else
      {
        v98 = *(v478 + 8 * v77 + 4 * v78);
      }

      v91 = v98 + *(v81 + 4 * v97);
      if (v90 >= 3)
      {
        v99 = v62 - (v64 << v22);
        v100 = v551 + v99 + v64 * v503 + v503;
        v101 = (*(v551 + v99 + v64 * v503 + 1) + *v100 + v100[1] + 1) >> 1;
        if (v101 >= 6)
        {
          v101 = 6;
        }

        if (v62)
        {
          if (v64 > 1 || v99 > 1)
          {
            v101 += 14;
          }

          else
          {
            v101 += 7;
          }
        }

        v102 = v485 + 104 * v101;
        if (v90 >= 0xF)
        {
          v103 = 15;
        }

        else
        {
          v103 = v69 - 1;
        }

        v104 = *(v102 + 4 * v103 - 12);
        v105 = (__clz(v69 - 15) << 10) ^ 0x7E00;
        if (v90 <= 0xE)
        {
          v105 = 0;
        }

        v91 += v105 + v104;
      }

      v488 = (v90 ^ v93) + v78;
      v506 = v96 - v74;
      v500 = v96 - v74 + v56;
    }

    v482 = v62 >> v22;
    v512 = v82;
    v106 = v91;
    if (v53)
    {
      v107 = v74;
      v108 = a7[1];
      v109 = v56;
      if (v53 <= v460)
      {
        v110 = 1;
      }

      else if (v53 <= v458)
      {
        v110 = 2;
      }

      else
      {
        v110 = 3;
      }
    }

    else
    {
      v108 = a7[1];
      v107 = v74;
      v109 = v56;
      v110 = 0;
    }

    v111 = v79 - 1;
    v112 = sub_277B30E7C(v53 + 1, v529 + 85336, v92, 0);
    v113 = *(v497 + 12 * v110 + 4 * v111);
    if (v62)
    {
      v114 = v113 + 512;
      v31 = v542;
      v115 = v533;
      v116 = v108;
      if (v69 >= 3)
      {
        LOBYTE(v22) = v525;
        v117 = v482 < 2 && v62 - (v482 << v525) < 2;
        v118 = 14;
        if (v117)
        {
          v118 = 7;
        }

        v54 = v538;
        v60 = v532 + 152;
        v119 = v109;
        goto LABEL_142;
      }
    }

    else
    {
      v116 = v108;
      v114 = *(v478 + 8 * v108 + 4 * v518) + v113;
      v31 = v542;
      v115 = v533;
      if (v69 > 2)
      {
        v118 = 0;
        v54 = v538;
        v60 = v532 + 152;
        v119 = v109;
        LOBYTE(v22) = v525;
LABEL_142:
        v120 = v485 + 104 * v118;
        if (v69 >= 0xF)
        {
          v121 = 15;
        }

        else
        {
          v121 = v69;
        }

        v122 = *(v120 + 4 * v121 - 12);
        v123 = (__clz(v69 - 14) << 10) ^ 0x7E00;
        if (v69 <= 0xE)
        {
          v123 = 0;
        }

        v114 += v123 + v122;
LABEL_149:
        v124 = v106;
        v125 = v509 - v107;
        v126 = v114 + v112;
        v127 = ((v115 * v126 + 256) >> 9) + ((v509 - v107) << 7);
        v29 = v521;
        if (v69 == 1)
        {
          v134 = 0;
          v135 = v509 - v107;
          v42 = v544;
          v136 = v515;
          v137 = v512;
          v130 = v506;
          goto LABEL_175;
        }

        if (v90 >= 3)
        {
          v128 = 3;
        }

        else
        {
          v128 = v69 - 1;
        }

        v129 = *(v497 + 12 * v110 + 4 * (v128 - 1));
        v130 = v506;
        if (v62)
        {
          v131 = v129 + 512;
          if (v90 >= 3)
          {
            v132 = v482 < 2 && v62 - (v482 << v22) < 2;
            v133 = 14;
            if (v132)
            {
              v133 = 7;
            }

            goto LABEL_164;
          }
        }

        else
        {
          v131 = *(v478 + 8 * v116 + 4 * v518) + v129;
          if (v90 > 2)
          {
            v133 = 0;
LABEL_164:
            v137 = v512;
            v138 = v485 + 104 * v133;
            if (v90 >= 0xF)
            {
              v139 = 15;
            }

            else
            {
              v139 = v69 - 1;
            }

            v140 = *(v138 + 4 * v139 - 12);
            v141 = (__clz(v69 - 15) << 10) ^ 0x7E00;
            if (v90 <= 0xE)
            {
              v141 = 0;
            }

            v131 += v141 + v140;
            goto LABEL_171;
          }
        }

        v137 = v512;
LABEL_171:
        v142 = v131 + v112;
        v143 = ((v115 * v142 + 256) >> 9) + (v506 << 7);
        if (v143 >= v127)
        {
          v134 = 0;
          v135 = v125;
        }

        else
        {
          v134 = 1;
          v126 = v142;
          v135 = v506;
          v127 = v143;
        }

        v42 = v544;
        v136 = v515;
LABEL_175:
        v144 = 0;
        v145 = ((v115 * (v136 + v137) + 256) >> 9) + ((v119 + v125) << 7);
        v146 = v69 > 1 || v537 == 0;
        if (v146)
        {
          v57 = v534;
          if ((((v115 * (v124 + v136) + 256) >> 9) + (v500 << 7)) < v145)
          {
            v144 = 1;
            v145 = ((v115 * (v124 + v136) + 256) >> 9) + (v500 << 7);
            v137 = v124;
            v125 = v130;
          }
        }

        else
        {
          v57 = v534;
        }

        if (v537 || v127 >= v145)
        {
          v126 = v137 + v136;
          v135 = v125 + v119;
          v38 = v531;
          if (!v144)
          {
LABEL_194:
            if (v521->i32[v62])
            {
              *(&v549 + v57) = v62;
              v57 = (v57 + 1);
            }

            v56 = v135;
            v59 = v126;
            goto LABEL_197;
          }
        }

        else
        {
          v38 = v531;
          if (v57 >= 1)
          {
            v147 = v57;
            v148 = &v549;
            do
            {
              v149 = *v148++;
              *(&v551[v149 >> v22] + v149) = 0;
              v521->i32[v149] = 0;
              *(v42 + 4 * v149) = 0;
              --v147;
            }

            while (v147);
          }

          v57 = 0;
          v524 = v53 + 1;
          if (!v134)
          {
            goto LABEL_194;
          }
        }

        v521->i32[v62] = v488;
        *(v42 + 4 * v62) = v491;
        if (v90 >= 127)
        {
          v150 = 127;
        }

        else
        {
          v150 = v69 - 1;
        }

        *v494 = v150;
        goto LABEL_194;
      }
    }

    v54 = v538;
    v60 = v532 + 152;
    v119 = v109;
    LOBYTE(v22) = v525;
    goto LABEL_149;
  }

  v54 = v538;
  if (v34 == 1)
  {
    v58 = v548;
    v56 = v547;
    if (v524 == 1)
    {
      LODWORD(v57) = 1;
LABEL_331:
      v548 = v58;
      goto LABEL_463;
    }

    v151 = (1 << v22) + 4;
    v498 = 3 << v22;
    v501 = 2 << v22;
    v504 = v532 + 104;
    v495 = 4 << v22;
    v152 = v532 + 152;
    v473 = v532 + 1568;
    v459 = 2 * v151;
    v483 = v532 + 1592;
    v153 = (v474 << v22) + 7;
    if (v474 << v22 >= 0)
    {
      v153 = v474 << v22;
    }

    v453 = ((v474 << v22) + (v474 << v22 < 0 ? 3 : 0)) >> 2;
    v456 = v153 >> 3;
    v57 = 1;
    v466 = (1 << v22) + 4;
    v526 = v22;
    v522 = v29;
    while (1)
    {
      v154 = *(v38 + 2 * v53);
      v155 = *(v545 + 2 * (*(v38 + 2 * v53) != 0));
      if (v31)
      {
        v155 = (*(v31 + v154) * v155 + 16) >> 5;
      }

      v156 = v29->u32[v154];
      v157 = v154 >> v22;
      v158 = &v551[v154 >> v22] + *(v38 + 2 * v53);
      LODWORD(v159) = (byte_277C3BF94[v158[v151]] + byte_277C3BF94[v158[1]] + byte_277C3BF94[v158[v501 + 8]] + byte_277C3BF94[v158[v498 + 12]] + byte_277C3BF94[v158[v495 + 16]] + 1) >> 1;
      v159 = v159 >= 4 ? 4 : v159;
      v160 = v159 + dword_277C3C094[v157];
      if (v156)
      {
        break;
      }

      v58 += *(v152 + 32 * v160);
LABEL_328:
      v117 = v53-- < 1;
      if (v117 || v57 >= 3)
      {
        v34 = v475;
        goto LABEL_331;
      }
    }

    if ((v156 & 0x80000000) == 0)
    {
      v161 = v29->u32[v154];
    }

    else
    {
      v161 = -v156;
    }

    v162 = *(v541 + 4 * v154);
    v163 = *(v42 + 4 * v154);
    v164 = v162 << v539;
    if (v54)
    {
      v165 = *(v54 + v154) * v164;
      v166 = (v165 * v165 + 512) >> 10;
      v167 = *(v54 + v154) * ((v162 - v163) << v539);
      v168 = (v167 * v167 + 512) >> 10;
    }

    else
    {
      v166 = v164 * v164;
      v168 = ((v162 - v163) << v539) * ((v162 - v163) << v539);
    }

    v516 = v168;
    v169 = a7[1];
    v170 = v156 >> 31;
    if (v161 >= 3)
    {
      v171 = 3;
    }

    else
    {
      v171 = v161;
    }

    if (*(v38 + 2 * v53))
    {
      v172 = 512;
    }

    else
    {
      v172 = *(v473 + 8 * v169 + 4 * v170);
    }

    v489 = &v551[v157] + *(v38 + 2 * v53);
    v173 = v160;
    v174 = v152 + 32 * v160;
    v175 = v172 + *(v174 + 4 * v171);
    if (v161 >= 3)
    {
      v176 = v154 - (v157 << v22) + v157 * v151;
      v177 = (*(v551 + v176 + 1) + *(v551 + v176 + v151) + *(v551 + v176 + v459) + 1) >> 1;
      if (v177 >= 6)
      {
        v177 = 6;
      }

      v178 = v177 + 14;
      if (!v157)
      {
        v178 = v177 + 7;
      }

      if (v154)
      {
        v177 = v178;
      }

      v179 = v483 + 104 * v177;
      if (v161 >= 0xF)
      {
        v180 = 15;
      }

      else
      {
        v180 = v161;
      }

      v181 = *(v179 + 4 * v180 - 12);
      v182 = (__clz(v161 - 14) << 10) ^ 0x7E00;
      if (v161 <= 0xE)
      {
        v182 = 0;
      }

      v175 += v182 + v181;
    }

    v535 = v57;
    v183 = v161 - 1;
    if (v161 == 1)
    {
      v486 = 0;
      v492 = 0;
      v513 = 0;
      v184 = *(v152 + 32 * v173);
      v507 = v56;
      v185 = v532;
    }

    else
    {
      v186 = v156 >> 31;
      v492 = (((v183 * v155) >> v539) ^ v186) + v170;
      v187 = (v162 - v492) << v539;
      v185 = v532;
      if (v54)
      {
        v188 = *(v54 + v154) * v187;
        v189 = (v188 * v188 + 512) >> 10;
      }

      else
      {
        v189 = v187 * v187;
      }

      if (v183 >= 3)
      {
        v190 = 3;
      }

      else
      {
        v190 = v161 - 1;
      }

      if (v154)
      {
        v191 = 512;
      }

      else
      {
        v191 = *(v473 + 8 * v169 + 4 * v170);
      }

      v184 = v191 + *(v174 + 4 * v190);
      if (v183 >= 3)
      {
        v192 = v154 - (v157 << v22) + v157 * v151;
        v193 = (*(v551 + v192 + 1) + *(v551 + v192 + v151) + *(v551 + v192 + v459) + 1) >> 1;
        if (v193 >= 6)
        {
          v193 = 6;
        }

        v194 = v193 + 14;
        if (!v157)
        {
          v194 = v193 + 7;
        }

        if (v154)
        {
          v193 = v194;
        }

        v195 = v483 + 104 * v193;
        if (v183 >= 0xF)
        {
          v196 = 15;
        }

        else
        {
          v196 = v161 - 1;
        }

        v197 = *(v195 + 4 * v196 - 12);
        v198 = (__clz(v161 - 15) << 10) ^ 0x7E00;
        if (v183 <= 0xE)
        {
          v198 = 0;
        }

        v184 += v198 + v197;
      }

      v486 = (v183 ^ v186) + v170;
      v513 = v189 - v166;
      v507 = v189 - v166 + v56;
    }

    v479 = v154 >> v22;
    v481 = a7[1];
    v519 = v166;
    v510 = v184;
    if (v53)
    {
      v199 = v170;
      v200 = v58;
      v22 = v56;
      if (v53 <= v456)
      {
        v201 = 1;
      }

      else if (v53 <= v453)
      {
        v201 = 2;
      }

      else
      {
        v201 = 3;
      }
    }

    else
    {
      v199 = v170;
      v200 = v58;
      v22 = v56;
      v201 = 0;
    }

    v202 = v171 - 1;
    v203 = sub_277B30E7C(v53 + 1, v529 + 85336, v185, 1);
    v204 = *(v504 + 12 * v201 + 4 * v202);
    if (v154)
    {
      v205 = v204 + 512;
      v38 = v531;
      v206 = v533;
      v207 = v200;
      v208 = v175;
      v209 = v199;
      if (v161 >= 3)
      {
        v210 = 14;
        if (!v479)
        {
          v210 = 7;
        }

        goto LABEL_276;
      }
    }

    else
    {
      v209 = v199;
      v205 = *(v473 + 8 * v481 + 4 * v199) + v204;
      v38 = v531;
      v206 = v533;
      v207 = v200;
      v208 = v175;
      if (v161 > 2)
      {
        v210 = 0;
LABEL_276:
        v54 = v538;
        v152 = v532 + 152;
        v151 = v466;
        v211 = v22;
        v29 = v522;
        v212 = v513;
        v213 = v483 + 104 * v210;
        if (v161 >= 0xF)
        {
          v214 = 15;
        }

        else
        {
          v214 = v161;
        }

        v215 = *(v213 + 4 * v214 - 12);
        v216 = (__clz(v161 - 14) << 10) ^ 0x7E00;
        if (v161 <= 0xE)
        {
          v216 = 0;
        }

        v205 += v216 + v215;
        LOBYTE(v22) = v526;
LABEL_283:
        v217 = v516 - v519;
        v218 = v205 + v203;
        v219 = ((v206 * v218 + 256) >> 9) + ((v516 - v519) << 7);
        if (v161 == 1)
        {
          v224 = 0;
          v225 = v516 - v519;
          v31 = v542;
LABEL_305:
          v42 = v544;
          v232 = ((v206 * (v207 + v208) + 256) >> 9) + ((v211 + v217) << 7);
          if (v161 > 1 || v537 == 0)
          {
            if ((((v206 * (v510 + v207) + 256) >> 9) + (v507 << 7)) >= v232)
            {
              v234 = 0;
            }

            else
            {
              v232 = ((v206 * (v510 + v207) + 256) >> 9) + (v507 << 7);
              v208 = v510;
              v217 = v212;
              v234 = 1;
            }
          }

          else
          {
            v234 = 0;
          }

          v57 = v535;
          if (v537 || v219 >= v232)
          {
            v218 = v208 + v207;
            v225 = v217 + v211;
            if (!v234)
            {
LABEL_325:
              if (v29->i32[v154])
              {
                *(&v549 + v57) = v154;
                v57 = (v57 + 1);
              }

              v56 = v225;
              v58 = v218;
              goto LABEL_328;
            }
          }

          else
          {
            if (v535 >= 1)
            {
              v235 = v535;
              v236 = &v549;
              do
              {
                v237 = *v236++;
                *(&v551[v237 >> v22] + v237) = 0;
                v29->i32[v237] = 0;
                *(v544 + 4 * v237) = 0;
                --v235;
              }

              while (v235);
            }

            v57 = 0;
            v524 = v53 + 1;
            if (!v224)
            {
              goto LABEL_325;
            }
          }

          v29->i32[v154] = v486;
          *(v544 + 4 * v154) = v492;
          if (v183 >= 127)
          {
            v238 = 127;
          }

          else
          {
            v238 = v161 - 1;
          }

          *v489 = v238;
          goto LABEL_325;
        }

        if (v183 >= 3)
        {
          v220 = 3;
        }

        else
        {
          v220 = v161 - 1;
        }

        v221 = *(v504 + 12 * v201 + 4 * (v220 - 1));
        if (v154)
        {
          v222 = v221 + 512;
          if (v183 >= 3)
          {
            v223 = 14;
            if (!v479)
            {
              v223 = 7;
            }

            goto LABEL_295;
          }
        }

        else
        {
          v222 = *(v473 + 8 * v481 + 4 * v209) + v221;
          if (v183 > 2)
          {
            v223 = 0;
LABEL_295:
            v31 = v542;
            v226 = v483 + 104 * v223;
            if (v183 >= 0xF)
            {
              v227 = 15;
            }

            else
            {
              v227 = v161 - 1;
            }

            v228 = *(v226 + 4 * v227 - 12);
            v229 = (__clz(v161 - 15) << 10) ^ 0x7E00;
            if (v183 <= 0xE)
            {
              v229 = 0;
            }

            v222 += v229 + v228;
            goto LABEL_302;
          }
        }

        v31 = v542;
LABEL_302:
        v230 = v222 + v203;
        v231 = ((v206 * v230 + 256) >> 9) + (v212 << 7);
        if (v231 >= v219)
        {
          v224 = 0;
          v225 = v516 - v519;
        }

        else
        {
          v224 = 1;
          v218 = v230;
          v225 = v212;
          v219 = v231;
        }

        goto LABEL_305;
      }
    }

    v54 = v538;
    v152 = v532 + 152;
    v151 = v466;
    v211 = v22;
    LOBYTE(v22) = v526;
    v29 = v522;
    v212 = v513;
    goto LABEL_283;
  }

  if (v34 != 2)
  {
    LODWORD(v57) = 1;
    goto LABEL_464;
  }

  v55 = v548;
  v56 = v547;
  if (v524 == 1)
  {
    LODWORD(v57) = 1;
    goto LABEL_462;
  }

  v239 = (1 << v22) + 4;
  v502 = ~(-1 << v22);
  v505 = v532 + 104;
  v240 = v532 + 152;
  v477 = v239;
  v480 = v532 + 1568;
  v490 = v532 + 1592;
  v241 = (v474 << v22) + 7;
  if (v474 << v22 >= 0)
  {
    v241 = v474 << v22;
  }

  v465 = ((v474 << v22) + (v474 << v22 < 0 ? 3 : 0)) >> 2;
  v467 = v241 >> 3;
  v57 = 1;
  v523 = v29;
  v527 = v22;
  do
  {
    v242 = *(v38 + 2 * v53);
    v243 = *(v545 + 2 * (*(v38 + 2 * v53) != 0));
    if (v31)
    {
      v243 = (*(v31 + v242) * v243 + 16) >> 5;
    }

    v244 = v29->u32[v242];
    v245 = v242 >> v22;
    v246 = &v551[v242 >> v22] + v242;
    LODWORD(v247) = (byte_277C3BF94[v246[v239]] + byte_277C3BF94[v246[1]] + byte_277C3BF94[v246[2]] + byte_277C3BF94[v246[3]] + byte_277C3BF94[v246[4]] + 1) >> 1;
    if (v247 >= 4)
    {
      v247 = 4;
    }

    else
    {
      v247 = v247;
    }

    v248 = v247 + dword_277C3C094[v242 & v502];
    if (!v244)
    {
      v55 += *(v240 + 32 * v248);
      goto LABEL_459;
    }

    if ((v244 & 0x80000000) == 0)
    {
      v249 = v29->u32[v242];
    }

    else
    {
      v249 = -v244;
    }

    v250 = *(v541 + 4 * v242);
    v251 = *(v42 + 4 * v242);
    v252 = v250 << v539;
    if (v54)
    {
      v253 = *(v54 + v242) * v252;
      v254 = (v253 * v253 + 512) >> 10;
      v255 = *(v54 + v242) * ((v250 - v251) << v539);
      v256 = (v255 * v255 + 512) >> 10;
    }

    else
    {
      v254 = v252 * v252;
      v256 = ((v250 - v251) << v539) * ((v250 - v251) << v539);
    }

    v517 = v256;
    v257 = a7[1];
    v258 = v244 >> 31;
    if (v249 >= 3)
    {
      v259 = 3;
    }

    else
    {
      v259 = v249;
    }

    if (*(v38 + 2 * v53))
    {
      v260 = 512;
    }

    else
    {
      v260 = *(v480 + 8 * v257 + 4 * v258);
    }

    v496 = &v551[v245] + v242;
    v261 = v248;
    v262 = v240 + 32 * v248;
    v263 = v260 + *(v262 + 4 * v259);
    if (v249 >= 3)
    {
      v264 = v551 + v242 - (v245 << v22) + v245 * v239;
      v265 = (v264[1] + v264[2] + *(v551 + v242 - (v245 << v22) + v245 * v239 + v239) + 1) >> 1;
      if (v265 >= 6)
      {
        v265 = 6;
      }

      v266 = v265 + 14;
      if (v242 == v245 << v22)
      {
        v266 = v265 + 7;
      }

      if (!v242)
      {
        v266 = v265;
      }

      v267 = v490 + 104 * v266;
      if (v249 >= 0xF)
      {
        v268 = 15;
      }

      else
      {
        v268 = v249;
      }

      v269 = *(v267 + 4 * v268 - 12);
      v270 = (__clz(v249 - 14) << 10) ^ 0x7E00;
      if (v249 <= 0xE)
      {
        v270 = 0;
      }

      v263 += v270 + v269;
    }

    v536 = v57;
    v271 = v249 - 1;
    v520 = v254;
    if (v249 == 1)
    {
      v493 = 0;
      v499 = 0;
      v514 = 0;
      v272 = *(v240 + 32 * v261);
      v508 = v56;
      v273 = v532;
    }

    else
    {
      v274 = v244 >> 31;
      v499 = (((v271 * v243) >> v539) ^ v274) + v258;
      v275 = (v250 - v499) << v539;
      v273 = v532;
      if (v54)
      {
        v276 = *(v54 + v242) * v275;
        v277 = (v276 * v276 + 512) >> 10;
      }

      else
      {
        v277 = v275 * v275;
      }

      if (v271 >= 3)
      {
        v278 = 3;
      }

      else
      {
        v278 = v249 - 1;
      }

      if (v242)
      {
        v279 = 512;
      }

      else
      {
        v279 = *(v480 + 8 * v257 + 4 * v258);
      }

      v272 = v279 + *(v262 + 4 * v278);
      if (v271 >= 3)
      {
        v280 = v551 + v242 - (v245 << v22) + v245 * v239;
        v281 = (v280[1] + v280[2] + *(v551 + v242 - (v245 << v22) + v245 * v239 + v239) + 1) >> 1;
        if (v281 >= 6)
        {
          v281 = 6;
        }

        v282 = v281 + 14;
        if (v242 == v245 << v22)
        {
          v282 = v281 + 7;
        }

        if (!v242)
        {
          v282 = v281;
        }

        v283 = v490 + 104 * v282;
        if (v271 >= 0xF)
        {
          v284 = 15;
        }

        else
        {
          v284 = v249 - 1;
        }

        v285 = *(v283 + 4 * v284 - 12);
        v286 = (__clz(v249 - 15) << 10) ^ 0x7E00;
        if (v271 <= 0xE)
        {
          v286 = 0;
        }

        v272 += v286 + v285;
      }

      v493 = (v271 ^ v274) + v258;
      v514 = v277 - v254;
      v508 = v277 - v254 + v56;
    }

    v484 = v242 >> v22;
    v487 = a7[1];
    v511 = v272;
    if (v53)
    {
      LODWORD(v22) = v55;
      if (v53 <= v467)
      {
        v287 = v258;
        v288 = v56;
        v289 = 1;
      }

      else
      {
        v287 = v258;
        v288 = v56;
        if (v53 <= v465)
        {
          v289 = 2;
        }

        else
        {
          v289 = 3;
        }
      }
    }

    else
    {
      v287 = v258;
      LODWORD(v22) = v55;
      v288 = v56;
      v289 = 0;
    }

    v290 = v259 - 1;
    v291 = sub_277B30E7C(v53 + 1, v529 + 85336, v273, 2);
    v292 = *(v505 + 12 * v289 + 4 * v290);
    if (v242)
    {
      v293 = v292 + 512;
      v38 = v531;
      v294 = v533;
      v295 = v263;
      v296 = v287;
      if (v249 < 3)
      {
        goto LABEL_412;
      }

      v297 = 14;
      if (v484 << v527 == v242)
      {
        v297 = 7;
      }
    }

    else
    {
      v296 = v287;
      v293 = *(v480 + 8 * v487 + 4 * v287) + v292;
      v38 = v531;
      v294 = v533;
      v295 = v263;
      if (v249 <= 2)
      {
LABEL_412:
        v54 = v538;
        v239 = v477;
        v240 = v532 + 152;
        v298 = v288;
        goto LABEL_413;
      }

      v297 = 0;
    }

    v54 = v538;
    v239 = v477;
    v240 = v532 + 152;
    v298 = v288;
    v299 = v490 + 104 * v297;
    if (v249 >= 0xF)
    {
      v300 = 15;
    }

    else
    {
      v300 = v249;
    }

    v301 = *(v299 + 4 * v300 - 12);
    v302 = (__clz(v249 - 14) << 10) ^ 0x7E00;
    if (v249 <= 0xE)
    {
      v302 = 0;
    }

    v293 += v302 + v301;
LABEL_413:
    v303 = v22;
    v304 = v517 - v520;
    v305 = v293 + v291;
    v306 = ((v294 * v305 + 256) >> 9) + ((v517 - v520) << 7);
    LOBYTE(v22) = v527;
    if (v249 == 1)
    {
      v312 = 0;
      v313 = v517 - v520;
      v31 = v542;
      v42 = v544;
      v29 = v523;
      v310 = v514;
      goto LABEL_436;
    }

    if (v271 >= 3)
    {
      v307 = 3;
    }

    else
    {
      v307 = v249 - 1;
    }

    v308 = *(v505 + 12 * v289 + 4 * (v307 - 1));
    v29 = v523;
    if (v242)
    {
      v309 = v308 + 512;
      v310 = v514;
      if (v271 >= 3)
      {
        v311 = 14;
        if (v484 << v527 == v242)
        {
          v311 = 7;
        }

        goto LABEL_425;
      }
    }

    else
    {
      v309 = *(v480 + 8 * v487 + 4 * v296) + v308;
      v310 = v514;
      if (v271 > 2)
      {
        v311 = 0;
LABEL_425:
        v31 = v542;
        v314 = v490 + 104 * v311;
        if (v271 >= 0xF)
        {
          v315 = 15;
        }

        else
        {
          v315 = v249 - 1;
        }

        v316 = *(v314 + 4 * v315 - 12);
        v317 = (__clz(v249 - 15) << 10) ^ 0x7E00;
        if (v271 <= 0xE)
        {
          v317 = 0;
        }

        v309 += v317 + v316;
        goto LABEL_432;
      }
    }

    v31 = v542;
LABEL_432:
    v318 = v309 + v291;
    v319 = ((v294 * v318 + 256) >> 9) + (v310 << 7);
    if (v319 >= v306)
    {
      v312 = 0;
      v313 = v517 - v520;
    }

    else
    {
      v312 = 1;
      v305 = v318;
      v313 = v310;
      v306 = v319;
    }

    v42 = v544;
LABEL_436:
    v320 = ((v294 * (v303 + v295) + 256) >> 9) + ((v298 + v304) << 7);
    if (v249 > 1 || v537 == 0)
    {
      if ((((v294 * (v511 + v303) + 256) >> 9) + (v508 << 7)) >= v320)
      {
        v322 = 0;
      }

      else
      {
        v320 = ((v294 * (v511 + v303) + 256) >> 9) + (v508 << 7);
        v295 = v511;
        v304 = v310;
        v322 = 1;
      }
    }

    else
    {
      v322 = 0;
    }

    v57 = v536;
    if (!v537 && v306 < v320)
    {
      if (v536 >= 1)
      {
        v323 = v536;
        v324 = &v549;
        do
        {
          v325 = *v324++;
          *(&v551[v325 >> v527] + v325) = 0;
          v29->i32[v325] = 0;
          *(v42 + 4 * v325) = 0;
          --v323;
        }

        while (v323);
      }

      v57 = 0;
      v524 = v53 + 1;
      if (!v312)
      {
        goto LABEL_456;
      }

LABEL_452:
      v29->i32[v242] = v493;
      *(v42 + 4 * v242) = v499;
      if (v271 >= 127)
      {
        v326 = 127;
      }

      else
      {
        v326 = v249 - 1;
      }

      *v496 = v326;
      goto LABEL_456;
    }

    v305 = v295 + v303;
    v313 = v304 + v298;
    if (v322)
    {
      goto LABEL_452;
    }

LABEL_456:
    if (v29->i32[v242])
    {
      *(&v549 + v57) = v242;
      v57 = (v57 + 1);
    }

    v56 = v313;
    v55 = v305;
LABEL_459:
    v117 = v53-- < 1;
  }

  while (!v117 && v57 < 3);
  v34 = v475;
LABEL_462:
  v548 = v55;
LABEL_463:
  v547 = v56;
LABEL_464:
  if (!v537 && v53 == -1 && v57 <= 2 && (((v533 * (v548 + v463) + 256) >> 9) + (v547 << 7)) > (v533 * v457 + 256) >> 9)
  {
    if (v57 >= 1)
    {
      v327 = v57;
      v328 = &v549;
      do
      {
        v329 = *v328++;
        v29->i32[v329] = 0;
        *(v42 + 4 * v329) = 0;
        --v327;
      }

      while (v327);
    }

    v524 = 0;
    v548 = 0;
    v34 = v475;
  }

  if (v34)
  {
    if (v34 != 1)
    {
      if (v34 != 2)
      {
        goto LABEL_653;
      }

      v330 = v548;
      if (v53 < 1)
      {
        goto LABEL_652;
      }

      v331 = (1 << v22) + 4;
      v332 = v532 + 152;
      v333 = v53 + 1;
      v334 = (v38 + 2 * v53);
      while (2)
      {
        v336 = *v334--;
        v335 = v336;
        v337 = *(v545 + 2 * (v336 != 0));
        if (v31)
        {
          v337 = (*(v31 + v335) * v337 + 16) >> 5;
        }

        v338 = v29->i32[v335];
        v339 = v335 >> v22;
        v340 = &v551[v335 >> v22] + v335;
        LODWORD(v341) = (byte_277C3BF94[v340[v331]] + byte_277C3BF94[v340[1]] + byte_277C3BF94[v340[2]] + byte_277C3BF94[v340[3]] + byte_277C3BF94[v340[4]] + 1) >> 1;
        if (v341 >= 4)
        {
          v341 = 4;
        }

        else
        {
          v341 = v341;
        }

        v342 = v341 + dword_277C3C094[v335 & ~(-1 << v22)];
        if (!v338)
        {
          v352 = *(v332 + 32 * v342);
          goto LABEL_520;
        }

        if (v338 >= 0)
        {
          v343 = v29->u32[v335];
        }

        else
        {
          v343 = -v338;
        }

        v344 = *(v541 + 4 * v335);
        if (v344 >= 0)
        {
          v345 = *(v541 + 4 * v335);
        }

        else
        {
          v345 = -v344;
        }

        v346 = *(v544 + 4 * v335);
        if (v346 >= 0)
        {
          v347 = *(v544 + 4 * v335);
        }

        else
        {
          v347 = -v346;
        }

        if (v343 >= 3)
        {
          v348 = 3;
        }

        else
        {
          v348 = v343;
        }

        v349 = v332 + 32 * v342;
        v350 = *(v349 + 4 * v348);
        if (v343 >= 4)
        {
          v351 = 0;
          v352 = v350 + 512;
        }

        else
        {
          v351 = *(v349 + 4 * (v343 | 4));
          v352 = v350 + 512;
          if (v343 != 3)
          {
LABEL_519:
            if (v345 <= v347)
            {
              v361 = (v345 - v347) << v539;
              v362 = v538;
              if (v538)
              {
                v363 = *(v538 + v335) * v361;
                v362 = v538;
                v364 = (v363 * v363 + 512) >> 10;
              }

              else
              {
                v364 = v361 * v361;
              }

              v365 = v343 - 1;
              v366 = ((v343 - 1) * v337) >> v539;
              v367 = (v345 - v366) << v539;
              if (v362)
              {
                v368 = *(v362 + v335) * v367;
                v369 = (v368 * v368 + 512) >> 10;
              }

              else
              {
                v369 = v367 * v367;
              }

              v31 = v542;
              if (((v369 << 7) + ((v533 * (v352 - v351) + 256) >> 9)) < ((v364 << 7) + ((v533 * v352 + 256) >> 9)))
              {
                v29->i32[v335] = (v365 ^ (v338 >> 31)) + (v338 >> 31);
                *(v544 + 4 * v335) = (v366 ^ (v338 >> 31)) + (v338 >> 31);
                if (v365 >= 0x7F)
                {
                  v370 = 127;
                }

                else
                {
                  v370 = v343 - 1;
                }

                *v340 = v370;
                v352 -= v351;
              }
            }

            else
            {
LABEL_520:
              v31 = v542;
            }

            v330 += v352;
            if (--v333 <= 1)
            {
              goto LABEL_651;
            }

            continue;
          }
        }

        break;
      }

      v353 = v339 << v22;
      v354 = (*(v551 + v335 - v353 + v339 * v331 + 1) + *(v551 + v335 - v353 + v339 * v331 + v331) + *(v551 + v335 - v353 + v339 * v331 + 2) + 1) >> 1;
      if (v354 >= 6)
      {
        v354 = 6;
      }

      v146 = v335 == v353;
      v355 = v354 + 14;
      if (v146)
      {
        v355 = v354 + 7;
      }

      if (!v335)
      {
        v355 = v354;
      }

      v356 = v532 + 1592 + 104 * v355;
      if (v343 >= 0xF)
      {
        v357 = 15;
      }

      else
      {
        v357 = v343;
      }

      if (v343 > 0xF)
      {
        v359 = v343 - 14;
        if (v343 > 0x2D)
        {
          v360 = (__clz(v359) << 10) ^ 0x7E00;
          v358 = ((v359 & (v343 - 15)) == 0) << 10;
        }

        else
        {
          v358 = 0;
LABEL_515:
          v360 = dword_277C3C114[v359];
          v358 += dword_277C3C194[v359];
        }
      }

      else
      {
        v358 = *(v356 + 4 * v357 + 40);
        if (v343 == 15)
        {
          v359 = 1;
          goto LABEL_515;
        }

        v360 = 0;
      }

      v352 += v360 + *(v356 + 4 * v357 - 12);
      v351 += v358;
      goto LABEL_519;
    }

    v330 = v548;
    if (v53 < 1)
    {
      goto LABEL_652;
    }

    v371 = (1 << v22) + 4;
    v372 = v532 + 152;
    v373 = v53 + 1;
    v374 = (v38 + 2 * v53);
    v375 = 2 * v371;
    while (2)
    {
      v377 = *v374--;
      v376 = v377;
      v378 = *(v545 + 2 * (v377 != 0));
      if (v31)
      {
        v378 = (*(v31 + v376) * v378 + 16) >> 5;
      }

      v379 = v29->i32[v376];
      v380 = v376 >> v22;
      v381 = &v551[v376 >> v22] + v376;
      LODWORD(v382) = (byte_277C3BF94[v381[v371]] + byte_277C3BF94[v381[1]] + byte_277C3BF94[v381[(2 << v22) + 8]] + byte_277C3BF94[v381[(3 << v22) + 12]] + byte_277C3BF94[v381[(4 << v22) + 16]] + 1) >> 1;
      if (v382 >= 4)
      {
        v382 = 4;
      }

      else
      {
        v382 = v382;
      }

      v383 = v382 + dword_277C3C094[v380];
      if (!v379)
      {
        v393 = *(v372 + 32 * v383);
        goto LABEL_589;
      }

      if (v379 >= 0)
      {
        v384 = v29->u32[v376];
      }

      else
      {
        v384 = -v379;
      }

      v385 = *(v541 + 4 * v376);
      if (v385 >= 0)
      {
        v386 = *(v541 + 4 * v376);
      }

      else
      {
        v386 = -v385;
      }

      v387 = *(v544 + 4 * v376);
      if (v387 >= 0)
      {
        v388 = *(v544 + 4 * v376);
      }

      else
      {
        v388 = -v387;
      }

      if (v384 >= 3)
      {
        v389 = 3;
      }

      else
      {
        v389 = v384;
      }

      v390 = v372 + 32 * v383;
      v391 = *(v390 + 4 * v389);
      if (v384 >= 4)
      {
        v392 = 0;
        v393 = v391 + 512;
      }

      else
      {
        v392 = *(v390 + 4 * (v384 | 4));
        v393 = v391 + 512;
        if (v384 != 3)
        {
LABEL_577:
          if (v386 <= v388)
          {
            v402 = (v386 - v388) << v539;
            if (v538)
            {
              v403 = *(v538 + v376) * v402;
              v404 = (v403 * v403 + 512) >> 10;
            }

            else
            {
              v404 = v402 * v402;
            }

            v405 = v384 - 1;
            v406 = ((v384 - 1) * v378) >> v539;
            v407 = (v386 - v406) << v539;
            if (v538)
            {
              v408 = *(v538 + v376) * v407;
              v409 = (v408 * v408 + 512) >> 10;
            }

            else
            {
              v409 = v407 * v407;
            }

            v410 = (v404 << 7) + ((v533 * v393 + 256) >> 9);
            v31 = v542;
            if (((v409 << 7) + ((v533 * (v393 - v392) + 256) >> 9)) < v410)
            {
              v29->i32[v376] = (v405 ^ (v379 >> 31)) + (v379 >> 31);
              *(v544 + 4 * v376) = (v406 ^ (v379 >> 31)) + (v379 >> 31);
              if (v405 >= 0x7F)
              {
                v411 = 127;
              }

              else
              {
                v411 = v384 - 1;
              }

              *v381 = v411;
              v393 -= v392;
            }
          }

LABEL_589:
          v330 += v393;
          if (--v373 <= 1)
          {
            goto LABEL_651;
          }

          continue;
        }
      }

      break;
    }

    v394 = v376 - (v380 << v22) + v380 * v371;
    v395 = (*(v551 + v394 + 1) + *(v551 + v394 + v371) + *(v551 + v394 + v375) + 1) >> 1;
    if (v395 >= 6)
    {
      v395 = 6;
    }

    v396 = v395 + 14;
    if (!v380)
    {
      v396 = v395 + 7;
    }

    if (v376)
    {
      v395 = v396;
    }

    v397 = v532 + 1592 + 104 * v395;
    if (v384 >= 0xF)
    {
      v398 = 15;
    }

    else
    {
      v398 = v384;
    }

    if (v384 > 0xF)
    {
      v400 = v384 - 14;
      if (v384 > 0x2D)
      {
        v401 = (__clz(v400) << 10) ^ 0x7E00;
        v399 = ((v400 & (v384 - 15)) == 0) << 10;
      }

      else
      {
        v399 = 0;
LABEL_573:
        v401 = dword_277C3C114[v400];
        v399 += dword_277C3C194[v400];
        v375 = 2 * v371;
      }
    }

    else
    {
      v399 = *(v397 + 4 * v398 + 40);
      if (v384 == 15)
      {
        v400 = 1;
        goto LABEL_573;
      }

      v401 = 0;
    }

    v393 += v401 + *(v397 + 4 * v398 - 12);
    v392 += v399;
    v31 = v542;
    goto LABEL_577;
  }

  v330 = v548;
  if (v53 < 1)
  {
    goto LABEL_652;
  }

  v412 = 1 << v22;
  v413 = v412 + 4;
  v414 = v532 + 152;
  v415 = v53 + 1;
  v416 = (v38 + 2 * v53);
  while (2)
  {
    v418 = *v416--;
    v417 = v418;
    v419 = *(v545 + 2 * (v418 != 0));
    if (v31)
    {
      v419 = (*(v31 + v417) * v419 + 16) >> 5;
    }

    v420 = v417 >> v22;
    v421 = &v551[v417 >> v22] + v417;
    if (v417)
    {
      LODWORD(v422) = (byte_277C3BF94[v421[v413]] + byte_277C3BF94[v421[1]] + byte_277C3BF94[v421[v412 + 5]] + byte_277C3BF94[v421[(2 << v22) + 8]] + byte_277C3BF94[v421[2]] + 1) >> 1;
      if (v422 >= 4)
      {
        v422 = 4;
      }

      else
      {
        v422 = v422;
      }

      v423 = v422 + *(*(&off_27A723920 + v528) + v417);
    }

    else
    {
      v423 = 0;
    }

    v424 = v29->i32[v417];
    if (!v424)
    {
      v434 = *(v414 + 32 * v423);
      goto LABEL_650;
    }

    if (v424 >= 0)
    {
      v425 = v29->u32[v417];
    }

    else
    {
      v425 = -v424;
    }

    v426 = *(v541 + 4 * v417);
    if (v426 >= 0)
    {
      v427 = *(v541 + 4 * v417);
    }

    else
    {
      v427 = -v426;
    }

    v428 = *(v544 + 4 * v417);
    if (v428 >= 0)
    {
      v429 = *(v544 + 4 * v417);
    }

    else
    {
      v429 = -v428;
    }

    if (v425 >= 3)
    {
      v430 = 3;
    }

    else
    {
      v430 = v425;
    }

    v431 = v414 + 32 * v423;
    v432 = *(v431 + 4 * v430);
    if (v425 >= 4)
    {
      v433 = 0;
      v434 = v432 + 512;
LABEL_619:
      v435 = v417 - (v420 << v22);
      v436 = (*(v551 + v435 + v420 * v413 + 1) + *(v551 + v435 + v420 * v413 + v413) + *(v551 + v435 + v420 * v413 + v413 + 1) + 1) >> 1;
      if (v436 >= 6)
      {
        v436 = 6;
      }

      if (v417)
      {
        if (v420 > 1 || v435 > 1)
        {
          v436 += 14;
        }

        else
        {
          v436 += 7;
        }
      }

      v437 = v532 + 1592 + 104 * v436;
      if (v425 >= 0xF)
      {
        v438 = 15;
      }

      else
      {
        v438 = v425;
      }

      if (v425 > 0xF)
      {
        v440 = v425 - 14;
        if (v425 > 0x2D)
        {
          v441 = (__clz(v440) << 10) ^ 0x7E00;
          v439 = ((v440 & (v425 - 15)) == 0) << 10;
          goto LABEL_637;
        }

        v439 = 0;
      }

      else
      {
        v439 = *(v437 + 4 * v438 + 40);
        if (v425 != 15)
        {
          v441 = 0;
          goto LABEL_637;
        }

        v440 = 1;
      }

      v441 = dword_277C3C114[v440];
      v439 += dword_277C3C194[v440];
LABEL_637:
      v434 += v441 + *(v437 + 4 * v438 - 12);
      v433 += v439;
      v31 = v542;
      goto LABEL_638;
    }

    v433 = *(v431 + 4 * (v425 | 4));
    v434 = v432 + 512;
    if (v425 == 3)
    {
      goto LABEL_619;
    }

LABEL_638:
    if (v427 <= v429)
    {
      v442 = (v427 - v429) << v539;
      if (v538)
      {
        v443 = *(v538 + v417) * v442;
        v444 = (v443 * v443 + 512) >> 10;
      }

      else
      {
        v444 = v442 * v442;
      }

      v445 = v425 - 1;
      v446 = ((v425 - 1) * v419) >> v539;
      v447 = (v427 - v446) << v539;
      if (v538)
      {
        v448 = *(v538 + v417) * v447;
        v449 = (v448 * v448 + 512) >> 10;
      }

      else
      {
        v449 = v447 * v447;
      }

      if (((v449 << 7) + ((v533 * (v434 - v433) + 256) >> 9)) < ((v444 << 7) + ((v533 * v434 + 256) >> 9)))
      {
        v29->i32[v417] = (v445 ^ (v424 >> 31)) + (v424 >> 31);
        *(v544 + 4 * v417) = (v446 ^ (v424 >> 31)) + (v424 >> 31);
        if (v445 >= 0x7F)
        {
          v450 = 127;
        }

        else
        {
          v450 = v425 - 1;
        }

        *v421 = v450;
        v434 -= v433;
      }
    }

LABEL_650:
    v330 += v434;
    if (--v415 > 1)
    {
      continue;
    }

    break;
  }

LABEL_651:
  LODWORD(v53) = 0;
  v38 = v531;
  v34 = v475;
  v54 = v538;
  v42 = v544;
LABEL_652:
  v548 = v330;
LABEL_653:
  if (!v53)
  {
    v546 = 0;
    sub_277B30F1C(&v548, &v546, 0, v524, v464, v34, v22, v474, v533, v539, a7[1], v545, v38, v532, v541, v29, v42, v551, v31, v54);
  }

  if (v524)
  {
    v451 = sub_277B31380(v468, v468 + 416, v469, v464, v455, *(v454 + 246117));
    v452 = v451 + v463 + v548;
  }

  else
  {
    v452 = v548 + v457;
  }

  *(v470[4] + 2 * a4) = v524;
  result = sub_277A3829C(v29->i32, *v461, v524);
  *(v470[5] + a4) = result;
  *a8 = v452;
  return result;
}

int *sub_277A90E44(int *result, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a6 - 129 >= 0xFFFFFF8F)
  {
    v7 = a4;
    v8 = dword_277C3BF30[a4];
    if (dword_277C3BEE4[a4] > v8)
    {
      v8 = dword_277C3BEE4[a4];
    }

    v9 = a6 >> 5;
    if (a6 < 0x40)
    {
      v9 = 2;
    }

    if (v8 >= 32)
    {
      v8 = 32;
    }

    if (v8 <= 16)
    {
      v8 = 16;
    }

    v10 = v8 * v9;
    v11 = &result[34 * a2];
    if (a4 <= 0xC && ((1 << a4) & 0x1810) != 0)
    {
      v12 = 1024;
    }

    else
    {
      v12 = a4 - 17 >= 2 ? dword_277BFE7FC[a4] : 512;
    }

    v13 = *(v11 + 4);
    v14 = *(v13 + 2 * a3);
    if (v10 < v14 && v12 > 2 * v10)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      result = (*(v11 + 2) + 64 * a3);
      v21 = *(v11 + 1) + 64 * a3;
      v22 = *(&off_27A722620 + 32 * v7 + 2 * a5);
      v23 = (v14 - 1);
      v24 = v12 - v14;
      v25 = -1;
      v26 = -1;
      while (1)
      {
        v27 = result[v22[v16]];
        if (v27 >= 0)
        {
          v28 = result[v22[v16]];
        }

        else
        {
          v28 = -v27;
        }

        if (v28 >= 3)
        {
          goto LABEL_22;
        }

        if (v27)
        {
          if (v20 >= v10)
          {
            if (v26 == -1)
            {
              v26 = v16;
            }

            if (v18 < 2)
            {
              ++v18;
              goto LABEL_34;
            }

            v18 = 0;
LABEL_22:
            v20 = 0;
            v19 = 0;
            v17 = v16 + 1;
            goto LABEL_23;
          }

          v20 = 0;
          v17 = v16 + 1;
          if (v26 != -1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v26 != -1)
          {
            ++v19;
LABEL_34:
            if (v16 == v23)
            {
              v29 = v24;
            }

            else
            {
              v29 = 0;
            }

            v19 += v29;
            goto LABEL_38;
          }

          ++v20;
        }

LABEL_23:
        v26 = -1;
LABEL_38:
        if (v19 >= v10)
        {
          if (v16 >= v26)
          {
            v31 = v26 + v25;
            v32 = &v22[v26];
            do
            {
              v33 = *v32++;
              result[v33] = 0;
              *(v21 + 4 * v33) = 0;
            }

            while (!__CFADD__(v31++, 1));
          }

          v19 = 0;
          v18 = 0;
          v20 += ++v16 - v26;
        }

        else if (v16++ == v23)
        {
          v17 = v16;
        }

        --v25;
        if (v16 == v14)
        {
          if (v17 != v14)
          {
            *(v13 + 2 * a3) = v17;
            result = sub_277A3829C(result, v22, v17);
            *(*(v11 + 5) + a3) = result;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_277A91078(uint64_t a1, int a2, int a3, int a4, int a5, int a6, unsigned __int8 *a7, uint64_t a8)
{
  sub_277ADCA70(*(a1 + 136 * a2) + 8 * (a5 + byte_277C3CAFE[a6] * a4), *(a1 + 136 * a2 + 24) + 64 * a3, byte_277C3CAFE[a6], a7);

  return sub_277A91114(a1, a2, a3, a7, a8);
}

uint64_t sub_277A91114(uint64_t a1, int a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  v7 = (a1 + 136 * a2);
  v8 = a4[1];
  v9 = (&off_27A722620 + 32 * v8 + 2 * *a4);
  v10 = 16 * a3;
  v11 = (v7[2] + 64 * a3);
  v12 = (v7[4] + 2 * a3);
  v13 = *(a5 + 32);
  if (v13 != 3)
  {
    v14 = (v7[1] + 4 * v10);
    if (v8 <= 0xC && ((1 << v8) & 0x1810) != 0)
    {
      v15 = 1024;
    }

    else if ((v8 - 17) >= 2)
    {
      v15 = dword_277BFE7FC[v8];
    }

    else
    {
      v15 = 512;
    }

    if (*(a1 + 86576))
    {
      v17 = 4 * v15;
      bzero((v7[2] + 4 * v10), 4 * v15);
      bzero(v14, v17);
      *v12 = 0;
    }

    else
    {
      (*(&off_28866DF38 + 2 * v13 + *(a4 + 3)))(v7[3] + 4 * v10, v15, v7, v11, v14, v12, v9, a5);
    }
  }

  if (*(a5 + 28))
  {
    result = 0;
  }

  else
  {
    result = sub_277A3829C(v11, *v9, *v12);
  }

  *(v7[5] + a3) = result;
  return result;
}

uint64_t sub_277A91270(uint64_t result, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v5 = **(a2 + 8280);
  *a5 = a4;
  *(a5 + 1) = a3;
  *(a5 + 4) = *(a2 + 4 * (*(v5 + 167) & 7) + 11108);
  v6 = (*(v5 + 167) & 0x80) != 0 || *(v5 + 16) > 0;
  if ((0x61810uLL >> a3))
  {
    LOBYTE(v6) = 0;
  }

  else if (((0x18608uLL >> a3) & 1) == 0)
  {
    if (*(result + 501))
    {
      if (v6)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = 2;
      }
    }

    else
    {
      LOBYTE(v6) = byte_277C3C219[2 * v6 + ((0x60604uLL >> a3) & 1)];
    }
  }

  *(a5 + 16) = v6;
  v7 = (*(*(a2 + 8376) + 192) >> 3) & 1;
  *(a5 + 8) = *(a2 + 11072);
  *(a5 + 12) = v7;
  return result;
}

uint64_t sub_277A91330(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v8 = **(result + 7864);
  if (*(result + 4 * (*(v8 + 167) & 7) + 10692))
  {
    v9 = 0;
  }

  else if (a3)
  {
    v9 = byte_277C3BD80[byte_277C3BCDE[4 * *v8 + 2 * *(result + 2608 * a3 + 20) + *(result + 2608 * a3 + 24)]];
    if (v9 > 16)
    {
      if (v9 == 17)
      {
        v9 = 9u;
      }

      else if (v9 == 18)
      {
        v9 = 0xAu;
      }
    }

    else if ((v9 - 11) < 2 || v9 == 4)
    {
      v9 = 3u;
    }
  }

  else
  {
    v9 = v8[145];
  }

  v10 = v9;
  if (byte_277C393B1[v9] == a2)
  {

    return a4(a3, 0, 0, 0, a2, v9, a5);
  }

  else
  {
    v11 = result + 16;
    v12 = result + 16 + 2608 * a3;
    v13 = byte_277C3CAFE[a2];
    v14 = *(result + 7928);
    if (v14 < 0)
    {
      v13 += v14 >> (*(v11 + 2608 * a3 + 4) + 3);
    }

    v15 = v13 >> 2;
    v16 = byte_277C3CAE8[a2];
    v17 = *(result + 7936);
    if (v17 < 0)
    {
      v18 = *(v11 + 2608 * a3 + 8);
      v16 += v17 >> (v18 + 3);
    }

    else
    {
      v18 = *(v12 + 8);
    }

    v20 = v16 >> 2;
    v21 = byte_277C3BCDE[2 * *(v12 + 4) + 48 + v18];
    v22 = byte_277C3F990[v21];
    if (v15 < v22)
    {
      v22 = v15;
    }

    v35 = v22;
    v23 = byte_277C36D60[v21];
    if (v20 < v23)
    {
      v23 = v20;
    }

    v32 = v23;
    if (v20 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = byte_277BFDBA0[4 * v10];
      v38 = byte_277BFDB54[4 * v10];
      v34 = v15;
      v31 = v20;
      do
      {
        v27 = v25 + v32;
        v33 = v25 + v32;
        if (v25 + v32 >= v20)
        {
          v27 = v20;
        }

        v40 = v27;
        if (v15 >= 1)
        {
          v28 = 0;
          v36 = v25;
          do
          {
            v37 = v28 + v35;
            if (v28 + v35 >= v15)
            {
              v29 = v15;
            }

            else
            {
              v29 = v28 + v35;
            }

            if (v25 < v40)
            {
              v39 = v28;
              do
              {
                for (i = v28; i < v29; i = (i + v26))
                {
                  result = a4(a3, v24, v25, i, a2, v10, a5);
                  v24 = (v24 + v38 * v26);
                }

                v28 = v39;
                v25 = (v25 + v38);
              }

              while (v25 < v40);
            }

            v25 = v36;
            v28 = v37;
            v15 = v34;
          }

          while (v37 < v34);
        }

        v25 = v33;
        v20 = v31;
      }

      while (v33 < v31);
    }
  }

  return result;
}

void sub_277A9164C(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t *a7)
{
  HIDWORD(v40) = a3;
  v12 = *a7;
  v13 = a7[1];
  v14 = v13 + 432;
  v39 = v13 + 136 * a1;
  v15 = v13 + 432 + 2608 * a1;
  v17 = *(v15 + 16);
  v16 = v15 + 16;
  v37 = v17;
  v38 = *(v39 + 8);
  HIDWORD(v36) = *(v16 + 24);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  *&v42[16] = 0;
  v41 = 0u;
  *v42 = 0u;
  sub_277A91270(v12 + 245616, v13, a6, 0, &v43);
  v19 = *(v12 + 271324);
  LODWORD(v41) = ((0x61E18uLL >> a6) & 1) + ((0x1810uLL >> a6) & 1);
  BYTE4(v41) = a6;
  *&v42[8] = v19;
  *&v42[12] = 0x100000000;
  v20 = *(**(v13 + 8280) + 167);
  if (a6 > 16)
  {
    if (a6 == 17)
    {
      *(&v41 + 1) = *(v14 + 2608 * a1 + 152 * (v20 & 7) + 1464);
      v22 = a4;
      v24 = HIDWORD(v40);
      v23 = a5;
      v25 = v39;
      v26 = 9;
      goto LABEL_16;
    }

    v22 = a4;
    v23 = a5;
    if (a6 == 18)
    {
      *(&v41 + 1) = *(v14 + 2608 * a1 + 152 * (v20 & 7) + 1472);
      v24 = HIDWORD(v40);
      v25 = v39;
      v26 = 10;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v21 = 3;
  if ((a6 - 11) >= 2)
  {
    v22 = a4;
    v23 = a5;
    if (a6 == 4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v21 = a6;
    goto LABEL_9;
  }

  v22 = a4;
  v23 = a5;
LABEL_9:
  *(&v41 + 1) = *(v14 + 2608 * a1 + 152 * (v20 & 7) + 8 * v21 + 1392);
  v24 = HIDWORD(v40);
  v25 = v39;
  if (a6 > 16 || (v26 = 3, (a6 - 11) >= 2) && a6 != 4)
  {
    v26 = a6;
  }

LABEL_16:
  *v42 = *(v14 + 2608 * a1 + 152 * (v20 & 7) + 8 * v26 + 176);
  sub_277A91078(v13, a1, a2, v24, v22, v23, &v43, &v41);
  if (*(*(v25 + 32) + 2 * a2))
  {
    v32 = v38 + 64 * a2;
    v33 = v37 + 4 * (v22 + HIDWORD(v36) * v24);
    HIDWORD(v45) = *(*(v25 + 32) + 2 * a2);
    v34 = *(v16 + 24);
    if (HIDWORD(v44))
    {
      sub_277AF48AC(v32, v33, v34, &v43, v31);
    }

    else
    {
      sub_277AB74E0(v32, v33, v34, &v43, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), *v42, *&v42[8], *&v42[16], v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0);
    }
  }
}

void *sub_277A91900(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a5;
  v10 = a2;
  v11 = result;
  v12 = *(a7 + 8);
  v13 = v12 + 432;
  v14 = result;
  v15 = byte_277C3CAE8[a5];
  v16 = *(v12 + 8352);
  if (v16 < 0)
  {
    v15 += v16 >> (*(v13 + 2608 * result + 8) + 3);
  }

  v17 = v15 >> 2;
  v18 = byte_277C3CAFE[a5];
  v19 = *(v12 + 8344);
  if (v19 < 0)
  {
    v18 += v19 >> (*(v13 + 2608 * result + 4) + 3);
  }

  v20 = v18 >> 2;
  v21 = __OFSUB__(v17, a3);
  v22 = v17 - a3;
  if ((v22 < 0) ^ v21 | (v22 == 0))
  {
    v23 = 1;
  }

  else
  {
    v23 = v20 <= a4;
  }

  if (!v23)
  {
    v24 = **(v12 + 8280);
    if (result || *(v24 + (a4 >> byte_277BFC806[a5]) + (a3 >> byte_277BFC81C[a5] << byte_277BFC832[a5]) + 146) == a6)
    {
      v25 = (v13 + 2608 * result);
      v26 = *a7;
      v75 = *a7 + 246117;
      v27 = (v12 + 136 * result);
      v71 = *(v25 + 2);
      v72 = v27[1];
      v70 = *(v25 + 10);
      v28 = a4;
      v29 = (*(a7 + 24) + a4);
      v76 = **(v12 + 8280);
      __b = (*(a7 + 32) + a3);
      v73 = v13 + 2608 * v11;
      v74 = a4;
      if (((*(v12 + a4 + byte_277C3F990[a5] * a3 + 151049) >> v11) & 1) != 0 || (v30 = *(v24 + 167), (v30 & 0x40) != 0))
      {
        v82 = 0;
        v33 = a2;
        v34 = v27[5];
        *(v27[4] + 2 * a2) = 0;
        *(v34 + a2) = 0;
        v35 = a6;
        v36 = a6;
      }

      else
      {
        v79 = a6;
        v69 = (*(a7 + 24) + a4);
        v68 = a4;
        if (*(v12 + 4 * (v30 & 7) + 11108) || ((0x61810uLL >> a6) & 1) != 0)
        {
          v61 = 0;
        }

        else if (*v25)
        {
          if ((v30 & 0x80) != 0 || *(v24 + 16) > 0)
          {
            v31 = *(*(v12 + 8328) + (a4 << *(v13 + 2608 * *v25 + 4)) + *(v12 + 8336) * (a3 << *(v13 + 2608 * *v25 + 8)));
            v32 = (v30 & 0x80) != 0 || *(v24 + 16) > 0;
          }

          else
          {
            v32 = 0;
            v31 = byte_277BFC848[byte_277C32971[*(v24 + 3)]];
          }

          if (((0x18608uLL >> a6) & 1) == 0)
          {
            if (*v75)
            {
              if (v32)
              {
                LOBYTE(v32) = 1;
              }

              else
              {
                LOBYTE(v32) = 2;
              }
            }

            else
            {
              LOBYTE(v32) = byte_277C3C219[2 * v32 + ((0x60604uLL >> a6) & 1)];
            }
          }

          if (dword_277BFC858[16 * v32 + v31])
          {
            v61 = v31;
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          v61 = *(*(v12 + 8328) + a4 + *(v12 + 8336) * a3);
        }

        memset(v89, 0, sizeof(v89));
        v88 = 0;
        v86 = 0u;
        v87 = 0u;
        v62 = *(a7 + 41);
        if (a8)
        {
          v63 = v62 == 2;
        }

        else
        {
          v63 = 0;
        }

        v65 = !v63 && v62 != 0;
        v67 = a7;
        sub_277A91270(v26 + 245616, v12, a6, v61, v89);
        v66 = *(v26 + 271324);
        LODWORD(v86) = ((0x61E18uLL >> v79) & 1) + ((0x1810uLL >> v79) & 1);
        BYTE4(v86) = a6;
        *(&v87 + 1) = __PAIR64__(v65, v66);
        LODWORD(v88) = v65 ^ 1;
        *(&v86 + 1) = sub_277AA3E6C(v75 + 115, v12 + 416, v11, a6, v61);
        *&v87 = sub_277AA3DE0(v75 + 115, v12 + 416, v11, a6, v61);
        sub_277A91078(v12, v11, v10, a3, v74, v9, v89, &v86);
        if (!HIDWORD(v87) || (v85 = 0, sub_277A91FA8(v9, a6, v11, v69, __b, &v85), sub_277A8E454(*v67, v12, v11, v10, a6, v61, &v85, v90), !HIDWORD(v87)))
        {
          sub_277A90E44(v12, v11, v10, a6, v61, *(v75 + 115));
        }

        v82 = v61;
        v35 = a6;
        v33 = v10;
        v28 = v68;
        v27 = (v12 + 136 * v14);
        v36 = v79;
        v29 = v69;
      }

      v37 = *&byte_277BFDBA0[4 * v36];
      v38 = *(*(v12 + 136 * v14 + 40) + v33);
      memset(v29, v38, v37);
      v80 = v36;
      v39 = *&byte_277BFDB54[4 * v36];
      result = memset(__b, v38, v39);
      if (*(v27[4] + 2 * v33))
      {
        *(v76 + 144) = 0;
        result = sub_277A4C8A0(v12 + 416, v72 + 64 * v10, v82, v35, v71 + 4 * (v74 + v70 * a3), *(v73 + 40));
        v40 = a3;
        v41 = *(v27[4] + 2 * v33) == 0;
        if (v11)
        {
          return result;
        }
      }

      else
      {
        *(v76 + 144) &= 1u;
        v41 = 1;
        v40 = a3;
        if (v11)
        {
          return result;
        }
      }

      if (v41)
      {
        v42 = *(v12 + 8336);
        *(*(v12 + 8328) + v28 + v42 * v40) = 0;
        if ((0x41010uLL >> v80) & 1) != 0 || ((0x20810uLL >> v80))
        {
          v43 = 0;
          v44 = v28 + v42 * v40;
          v45 = 4 * v42;
          do
          {
            v46 = 0;
            do
            {
              *(*(v12 + 8328) + v44 + v46) = 0;
              v46 += 4;
            }

            while (v46 < v37);
            v43 += 4;
            v44 += v45;
          }

          while (v43 < v39);
        }
      }
    }

    else
    {
      v47 = *&byte_277BFDB54[4 * a6];
      if (v47 >= v22)
      {
        v47 = v22;
      }

      v48 = v20 - a4;
      if (*&byte_277BFDBA0[4 * a6] >= v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = *&byte_277BFDBA0[4 * a6];
      }

      v81 = v47;
      if (v47 >= 1)
      {
        v50 = 0;
        v51 = byte_277C3295E[a6];
        v52 = *&byte_277BFDBA0[4 * v51];
        __ba = *&byte_277BFDB54[4 * v51];
        v53 = __ba * v52;
        v83 = a5;
        do
        {
          if (v49 >= 1)
          {
            for (i = 0; i < v49; i += v52)
            {
              v55 = a4;
              v56 = v10;
              v57 = v9;
              v58 = a7;
              v59 = v10;
              v60 = v52;
              result = sub_277A91900(0, v56, (v50 + a3), (a4 + i), v57, v51);
              v52 = v60;
              a7 = v58;
              v9 = v83;
              a4 = v55;
              v10 = (v59 + v53);
            }
          }

          v50 += __ba;
        }

        while (v50 < v81);
      }
    }
  }

  return result;
}

uint64_t sub_277A91FA8(uint64_t result, int a2, int a3, char *a4, char *a5, int *a6)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        v8 = 1;
        do
        {
          v9 = v8;
          LODWORD(v7) = v7 + byte_277BFC9D8[a4[v6] >> 3];
          v6 = 1;
          v8 = 0;
        }

        while ((v9 & 1) != 0);
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v11;
          v7 = byte_277BFC9D8[a5[v10] >> 3] + v7;
          v10 = 1;
          v11 = 0;
        }

        while ((v12 & 1) != 0);
        a6[1] = byte_277BFC9DB[v7 + 32];
        if (a3)
        {
          if ((0x3CFFF0uLL >> result))
          {
            v13 = 10;
          }

          else
          {
            v13 = 7;
          }

          v14 = *a4 == 0;
          v15 = *a5;
          goto LABEL_51;
        }

        if (result != 3)
        {
          v34 = a4[1] | *a4;
          LODWORD(v35) = v34 & 7;
          v36 = a5[1] | *a5;
          goto LABEL_84;
        }

        goto LABEL_82;
      }

      goto LABEL_26;
    }

    a6[1] = byte_277BFC9DB[byte_277BFC9D8[*a4 >> 3] + 32 + byte_277BFC9D8[*a5 >> 3]];
    if (!a3)
    {
      if (result)
      {
        if ((*a4 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = *a4 & 7;
        }

        v36 = *a5;
        goto LABEL_87;
      }

      goto LABEL_82;
    }

    if (result)
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
LABEL_51:
    if (!v14)
    {
      ++v13;
    }

    v19 = v15 == 0;
LABEL_54:
    if (v19)
    {
      v30 = v13;
    }

    else
    {
      v30 = v13 + 1;
    }

    goto LABEL_142;
  }

  if (a2 == 2)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    do
    {
      LODWORD(v28) = v28 + byte_277BFC9D8[a4[v27++] >> 3];
    }

    while (v27 != 4);
    for (i = 0; i != 4; ++i)
    {
      v28 = byte_277BFC9D8[a5[i] >> 3] + v28;
    }

    a6[1] = byte_277BFC9DB[v28 + 32];
    if (!a3)
    {
      if (result != 6)
      {
        v34 = a4[1] | *a4 | a4[2] | a4[3];
        LODWORD(v35) = v34 & 7;
        v36 = a5[1] | *a5 | a5[2] | a5[3];
LABEL_84:
        if ((v34 & 4) != 0)
        {
          v35 = 4;
        }

        else
        {
          v35 = v35;
        }

LABEL_87:
        if ((v36 & 4) != 0)
        {
          v40 = 4;
        }

        else
        {
          v40 = v36 & 7;
        }

        v41 = v35 + 4 * v35;
LABEL_91:
        v30 = byte_277BFCA1C[v41 + v40];
        goto LABEL_142;
      }

LABEL_82:
      v30 = 0;
      goto LABEL_142;
    }

    if ((0x30FF80uLL >> result))
    {
      v13 = 10;
    }

    else
    {
      v13 = 7;
    }

    v14 = *a4 == 0;
    v15 = *a5;
    goto LABEL_51;
  }

  if (a2 == 3)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      LODWORD(v17) = v17 + byte_277BFC9D8[a4[v16++] >> 3];
    }

    while (v16 != 8);
    for (j = 0; j != 8; ++j)
    {
      v17 = byte_277BFC9D8[a5[j] >> 3] + v17;
    }

    a6[1] = byte_277BFC9DB[v17 + 32];
    if (a3)
    {
      if (result - 10 >= 6)
      {
        v13 = 7;
      }

      else
      {
        v13 = 10;
      }

      if (*a4)
      {
        ++v13;
      }

      v19 = *a5 == 0;
      goto LABEL_54;
    }

    if (result == 9)
    {
      goto LABEL_82;
    }

    v37 = 0;
    v31 = 0;
    do
    {
      v31 |= a4[v37++];
    }

    while (v37 != 8);
    v38 = 0;
    LOBYTE(v22) = 0;
    do
    {
      LOBYTE(v22) = v22 | a5[v38++];
    }

    while (v38 != 8);
LABEL_69:
    if ((v31 & 4) != 0)
    {
      v39 = 4;
    }

    else
    {
      v39 = v31 & 7;
    }

    if ((v22 & 4) != 0)
    {
      v40 = 4;
    }

    else
    {
      v40 = v22 & 7;
    }

    v41 = v39 + 4 * v39;
    goto LABEL_91;
  }

LABEL_26:
  v20 = 0;
  LODWORD(v21) = 0;
  LODWORD(v22) = *&byte_277BFDBA0[4 * a2];
  v23 = *&byte_277BFDB54[4 * a2];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v22;
  }

  do
  {
    LODWORD(v21) = v21 + byte_277BFC9D8[a4[v20++] >> 3];
  }

  while (v22 != v20);
  v24 = 0;
  if (v23 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  do
  {
    v21 = byte_277BFC9D8[a5[v24++] >> 3] + v21;
  }

  while (v25 != v24);
  a6[1] = byte_277BFC9DB[v21 + 32];
  if (!a3)
  {
    if (byte_277C393B1[a2] == result)
    {
      goto LABEL_82;
    }

    v31 = 0;
    do
    {
      v32 = *a4++;
      v31 |= v32;
      --v22;
    }

    while (v22);
    do
    {
      v33 = *a5++;
      LOBYTE(v22) = v22 | v33;
      --v25;
    }

    while (v25);
    goto LABEL_69;
  }

  switch(a2)
  {
    case 0:
      v26 = *a4;
      goto LABEL_120;
    case 1:
      v51 = *a4;
      goto LABEL_129;
    case 2:
      v47 = *a4;
      goto LABEL_118;
    case 3:
      v45 = *a4;
      goto LABEL_103;
    case 4:
      v43 = *(a4 + 1) | *a4;
      goto LABEL_96;
    case 5:
      v51 = *a4;
      goto LABEL_129;
    case 6:
      v26 = *a4;
      goto LABEL_120;
    case 7:
      v47 = *a4;
      goto LABEL_118;
    case 8:
      v51 = *a4;
LABEL_129:
      v42 = v51 == 0;
      goto LABEL_130;
    case 9:
      v46 = *a4;
      goto LABEL_101;
    case 10:
      v55 = *a4;
      goto LABEL_123;
    case 11:
      v43 = *a4;
LABEL_96:
      v44 = v43 == 0;
      goto LABEL_111;
    case 12:
      v45 = *(a4 + 1) | *a4;
LABEL_103:
      v48 = v45 == 0;
      goto LABEL_104;
    case 13:
      v47 = *a4;
LABEL_118:
      v53 = v47 == 0;
      goto LABEL_124;
    case 14:
      v26 = *a4;
LABEL_120:
      v49 = v26 != 0;
      v54 = *a5;
      goto LABEL_134;
    case 15:
      v46 = *a4;
LABEL_101:
      v48 = v46 == 0;
LABEL_104:
      v49 = !v48;
      v50 = *a5;
      goto LABEL_115;
    case 16:
      v42 = *a4 == 0;
LABEL_130:
      v49 = !v42;
      v54 = *a5;
      goto LABEL_134;
    case 17:
      v44 = *a4 == 0;
LABEL_111:
      v49 = !v44;
      v50 = *(a5 + 1) | *a5;
LABEL_115:
      v52 = v50 == 0;
      goto LABEL_135;
    case 18:
      v55 = *(a4 + 1) | *a4;
LABEL_123:
      v53 = v55 == 0;
LABEL_124:
      v49 = !v53;
      v54 = *a5;
LABEL_134:
      v52 = v54 == 0;
LABEL_135:
      v56 = !v52;
      break;
    default:
      v49 = 0;
      v56 = 0;
      break;
  }

  v57 = v56 + v49;
  if (byte_277C3BCB6[result] <= byte_277C3BCB6[byte_277C393B1[a2]])
  {
    v58 = 7;
  }

  else
  {
    v58 = 10;
  }

  v30 = v57 + v58;
LABEL_142:
  *a6 = v30;
  return result;
}

uint64_t sub_277A9255C(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, unsigned __int8 a5, int a6)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a4 || *(a2 + 428) == 1)
  {
    v8 = a2 + 2608 * a4;
    v9 = *(v8 + 436);
    v10 = *(v8 + 440);
    memset(__dst, 0, sizeof(__dst));
    memset(v17, 0, sizeof(v17));
    v15[0] = result;
    v15[1] = a2;
    v15[2] = 0;
    v15[3] = __dst;
    v15[4] = v17;
    v16 = a5;
    BYTE1(v16) = a6;
    v11 = byte_277C3BCDE[4 * a3 + 2 * v9 + v10];
    if (a6)
    {
      v12 = v8 + 432;
      v13 = byte_277C36D60[v11];
      v14 = *(v12 + 120);
      memcpy(__dst, *(v12 + 112), byte_277C3F990[v11]);
      memcpy(v17, v14, v13);
    }

    return sub_277A91330(a2 + 416, v11, a4, sub_277A92680, v15);
  }

  return result;
}

void *sub_277A92680(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, uint16x8_t a13, int32x4_t a14, uint16x4_t a15)
{
  v22 = *a7;
  v23 = *(a7 + 8);
  v58 = **(v23 + 8280);
  v59 = *a7 + 246117;
  v24 = (v23 + 136 * a1);
  v25 = v23 + 2608 * a1;
  v57 = v24[4];
  v55 = *(v25 + 472);
  v53 = *(v25 + 448);
  v54 = v24[1];
  sub_277A7BB6C(*a7 + 245616, v23 + 416, a1, a4, a3, a6, a8, a9, a10, a11, a12, a13, a14, a15);
  v26 = a1;
  v60 = a5;
  if (!a1)
  {
    if (*(v23 + a4 + byte_277C3F990[a5] * a3 + 151049))
    {
      v31 = 0;
      v37 = v57;
      *(v57 + 2 * a2) = 0;
      *(v24[5] + a2) = 0;
      goto LABEL_24;
    }

    v26 = 0;
  }

  sub_277A8E330(v23, v26, a5, a4, a3, a6);
  v27 = **(v23 + 8280);
  v28 = *(v27 + 167);
  v56 = a2;
  if (*(v23 + 4 * (v28 & 7) + 11108) || ((0x61810uLL >> a6) & 1) != 0)
  {
    v31 = 0;
  }

  else if (a1)
  {
    if ((v28 & 0x80) != 0 || *(v27 + 16) > 0)
    {
      v29 = *(*(v23 + 8328) + (a4 << *(v23 + 3044)) + *(v23 + 8336) * (a3 << *(v23 + 3048)));
      v30 = (v28 & 0x80) != 0 || *(v27 + 16) > 0;
    }

    else
    {
      v30 = 0;
      v29 = byte_277BFC848[byte_277C32971[*(v27 + 3)]];
    }

    if (((0x18608uLL >> a6) & 1) == 0)
    {
      if (*v59)
      {
        if (v30)
        {
          LOBYTE(v30) = 1;
        }

        else
        {
          LOBYTE(v30) = 2;
        }
      }

      else
      {
        LOBYTE(v30) = byte_277C3C219[2 * v30 + ((0x60604uLL >> a6) & 1)];
      }
    }

    if (dword_277BFC858[16 * v30 + v29])
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = *(*(v23 + 8328) + a4 + *(v23 + 8336) * a3);
  }

  v51 = *(a7 + 24);
  v52 = *(a7 + 32);
  memset(v65, 0, sizeof(v65));
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v32 = *(a7 + 41);
  v35 = (v32 != 2 || *(a7 + 40) == 0) && v32 != 0;
  sub_277A91270(v22 + 245616, v23, a6, v31, v65);
  v36 = *(v22 + 271324);
  LODWORD(v62) = ((0x61E18uLL >> a6) & 1) + ((0x1810uLL >> a6) & 1);
  BYTE4(v62) = a6;
  *(&v63 + 1) = __PAIR64__(v35, v36);
  LODWORD(v64) = !v35;
  *(&v62 + 1) = sub_277AA3E6C(v59 + 115, v23 + 416, a1, a6, v31);
  *&v63 = sub_277AA3DE0(v59 + 115, v23 + 416, a1, a6, v31);
  a2 = v56;
  sub_277A91078(v23, a1, v56, a3, a4, v60, v65, &v62);
  if (HIDWORD(v63))
  {
    v61 = 0;
    sub_277A91FA8(v60, a6, a1, (v51 + a4), (v52 + a3), &v61);
    sub_277A8E454(*a7, v23, a1, v56, a6, v31, &v61, v66);
  }

  sub_277A90E44(v23, a1, v56, a6, v31, *(v59 + 115));
  v37 = v57;
LABEL_24:
  if (*(v37 + 2 * a2))
  {
    sub_277A4C8A0(v23 + 416, v54 + 64 * a2, v31, a6, v53 + (4 * (a4 + v55 * a3)), v55);
    v38 = *(v37 + 2 * a2) == 0;
  }

  else
  {
    v38 = 1;
  }

  if (a1 || !v38)
  {
LABEL_36:
    *(v58 + 144) = 0;
    if (a1)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v39 = *(v23 + 8336);
  *(*(v23 + 8328) + a4 + v39 * a3) = 0;
  v40 = *&byte_277BFDBA0[4 * a6];
  v41 = *&byte_277BFDB54[4 * a6];
  if ((0x41010uLL >> a6) & 1) != 0 || ((0x20810uLL >> a6))
  {
    v42 = 0;
    v43 = a4 + v39 * a3;
    v44 = 4 * v39;
    do
    {
      v45 = 0;
      do
      {
        *(*(v23 + 8328) + v43 + v45) = 0;
        v45 += 4;
      }

      while (v45 < v40);
      v42 += 4;
      v43 += v44;
    }

    while (v42 < v41);
    goto LABEL_36;
  }

  *(v58 + 144) = 0;
LABEL_37:
  if (*(v23 + 15440))
  {
    sub_2779F15BC(v23 + 416, a3, a4, a6, v60);
  }

LABEL_39:
  v46 = *(a7 + 8);
  v47 = (*(a7 + 24) + a4);
  v48 = (*(a7 + 32) + a3);
  v49 = *(*(v46 + 136 * a1 + 40) + a2);
  memset(v47, v49, *&byte_277BFDBA0[4 * a6]);
  return memset(v48, v49, *&byte_277BFDB54[4 * a6]);
}

uint64_t sub_277A92BE0(uint64_t a1, const char *a2, const char *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  result = 8;
  if (a1 && a2 && a3)
  {
    memcpy(__dst, (a1 + 1112), sizeof(__dst));
    v24 = xmmword_27A71FEF0;
    v7 = strlen(a2);
    v8 = v7 + strlen(a3) + 4;
    if (v8 <= 0x1FFFFFFE9)
    {
      v9 = *(a1 + 2888);
      v10 = malloc_type_malloc(v8 + 23, 0x5F484EBFuLL);
      if (v10)
      {
        v11 = v10;
        v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF0);
        *(v12 - 1) = v11;
        *&v24 = v12;
        if (v12)
        {
          v13 = v9 + 51040;
          snprintf(v12, v8, "--%s=%s", a2, a3);
          v23 = 0;
          memset(v22, 0, sizeof(v22));
          if (sub_2779A0D30(v22, &unk_27A720DB0, &v24, v13))
          {
            v14 = 0;
            __dst[12] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A721940, &v24, v13))
          {
            v14 = 0;
            __dst[15] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A721968, &v24, v13))
          {
            v14 = 0;
            __dst[16] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A721990, &v24, v13))
          {
            v14 = 0;
            __dst[17] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A7219B8, &v24, v13))
          {
            v14 = 0;
            __dst[18] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720C98, &v24, v13))
          {
            v14 = 0;
            __dst[0] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720B80, &v24, v13))
          {
            v14 = 0;
            __dst[1] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720B08, &v24, v13))
          {
            v14 = 0;
            __dst[3] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720B30, &v24, v13))
          {
            v14 = 0;
            __dst[4] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720B58, &v24, v13))
          {
            v14 = 0;
            __dst[5] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720CC0, &v24, v13))
          {
            v14 = 0;
            __dst[6] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720CE8, &v24, v13))
          {
            v14 = 0;
            __dst[7] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720D10, &v24, v13))
          {
            __dst[8] = sub_2779A0E90(v22, v13);
            if (__dst[10])
            {
              v15 = "Cannot set tile-cols because auto-tiles is already set.";
LABEL_45:
              v16 = *(v15 + 1);
              *v13 = *v15;
              *(v13 + 16) = v16;
              *(v13 + 32) = *(v15 + 2);
              *(v13 + 48) = *(v15 + 6);
LABEL_46:
              if (v24)
              {
                free(*(v24 - 8));
              }

              v17 = 8;
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          if (sub_2779A0D30(v22, &unk_27A720D38, &v24, v13))
          {
            __dst[9] = sub_2779A0E90(v22, v13);
            if (__dst[10])
            {
              v15 = "Cannot set tile-rows because auto-tiles is already set.";
              goto LABEL_45;
            }

LABEL_50:
            v14 = 0;
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720D60, &v24, v13))
          {
            v14 = 0;
            __dst[10] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720D88, &v24, v13))
          {
            v14 = 0;
            __dst[11] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720BA8, &v24, v13))
          {
            v14 = 0;
            __dst[13] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720BD0, &v24, v13))
          {
            v14 = 0;
            __dst[14] = sub_2779A0E90(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A720BF8, &v24, v13))
          {
            v14 = 0;
            __dst[19] = sub_2779A0FE8(v22, v13);
            goto LABEL_33;
          }

          if (sub_2779A0D30(v22, &unk_27A721670, &v24, v13))
          {
            v18 = ".";
            v19 = &__dst[22];
          }

          else
          {
            if (sub_2779A0D30(v22, &unk_27A721698, &v24, v13))
            {
              v14 = 0;
              __dst[24] = sub_2779A0E90(v22, v13);
              goto LABEL_33;
            }

            if (!sub_2779A0D30(v22, &unk_27A7216C0, &v24, v13))
            {
              if (sub_2779A0D30(v22, &unk_27A720C20, &v24, v13))
              {
                v14 = 0;
                __dst[28] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720C48, &v24, v13))
              {
                v14 = 0;
                __dst[29] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720C70, &v24, v13))
              {
                v14 = 0;
                __dst[30] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721918, &v24, v13))
              {
                v14 = 0;
                __dst[31] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7218F0, &v24, v13))
              {
                v14 = 0;
                __dst[32] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720E28, &v24, v13))
              {
                v14 = 0;
                __dst[33] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720E50, &v24, v13))
              {
                v14 = 0;
                __dst[34] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720E78, &v24, v13))
              {
                v14 = 0;
                __dst[35] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721300, &v24, v13))
              {
                v14 = 0;
                __dst[36] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721328, &v24, v13))
              {
                v14 = 0;
                __dst[37] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7213F0, &v24, v13))
              {
                v14 = 0;
                __dst[38] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721418, &v24, v13))
              {
                v14 = 0;
                __dst[39] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721468, &v24, v13))
              {
                v14 = 0;
                __dst[44] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721440, &v24, v13))
              {
                v14 = 0;
                __dst[43] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7215F8, &v24, v13))
              {
                v14 = 0;
                __dst[45] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721620, &v24, v13))
              {
                v14 = 0;
                __dst[46] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721648, &v24, v13))
              {
                v14 = 0;
                __dst[47] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7217D8, &v24, v13))
              {
                v14 = 0;
                __dst[48] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720F68, &v24, v13))
              {
                v14 = 0;
                __dst[49] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720F90, &v24, v13))
              {
                v14 = 0;
                __dst[50] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721828, &v24, v13))
              {
                v14 = 0;
                LOBYTE(__dst[51]) = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721850, &v24, v13))
              {
                v14 = 0;
                BYTE1(__dst[51]) = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721878, &v24, v13))
              {
                v14 = 0;
                __dst[52] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7218A0, &v24, v13))
              {
                v14 = 0;
                __dst[53] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7218C8, &v24, v13))
              {
                v14 = 0;
                __dst[54] = sub_2779A0E90(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721B20, &v24, v13))
              {
                v14 = 0;
                __dst[55] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721A80, &v24, v13))
              {
                v14 = 0;
                __dst[56] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721AA8, &v24, v13))
              {
                v14 = 0;
                __dst[57] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721AD0, &v24, v13))
              {
                v14 = 0;
                __dst[58] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721AF8, &v24, v13))
              {
                v14 = 0;
                __dst[59] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721B70, &v24, v13))
              {
                v14 = 0;
                __dst[63] = sub_2779A0FE8(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721800, &v24, v13))
              {
                v14 = 0;
                __dst[65] = sub_2779A0F3C(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A720AB8, &v24, v13))
              {
                v14 = 0;
                __dst[66] = sub_2779A0F3C(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A7216E8, &v24, v13))
              {
                v14 = 0;
                __dst[67] = sub_2779A0F3C(v22, v13);
                goto LABEL_33;
              }

              if (sub_2779A0D30(v22, &unk_27A721710, &v24, v13))
              {
                v19 = &__dst[68];
              }

              else
              {
                if (sub_2779A0D30(v22, &unk_27A721B48, &v24, v13))
                {
                  v14 = 0;
                  __dst[71] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720EA0, &v24, v13))
                {
                  v14 = 0;
                  __dst[72] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720EC8, &v24, v13))
                {
                  v14 = 0;
                  __dst[73] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720EF0, &v24, v13))
                {
                  v14 = 0;
                  __dst[74] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720F18, &v24, v13))
                {
                  v14 = 0;
                  __dst[75] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720F40, &v24, v13))
                {
                  v14 = 0;
                  __dst[76] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720FB8, &v24, v13))
                {
                  v14 = 0;
                  __dst[77] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720FE0, &v24, v13))
                {
                  v14 = 0;
                  __dst[78] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721008, &v24, v13))
                {
                  v14 = 0;
                  __dst[79] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721030, &v24, v13))
                {
                  v14 = 0;
                  __dst[80] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721058, &v24, v13))
                {
                  v14 = 0;
                  __dst[81] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721080, &v24, v13))
                {
                  v14 = 0;
                  __dst[82] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7219E0, &v24, v13))
                {
                  v14 = 0;
                  __dst[83] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721A08, &v24, v13))
                {
                  v14 = 0;
                  __dst[84] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7217B0, &v24, v13))
                {
                  v14 = 0;
                  __dst[85] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7210A8, &v24, v13))
                {
                  v14 = 0;
                  __dst[87] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7210D0, &v24, v13))
                {
                  v14 = 0;
                  __dst[88] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7210F8, &v24, v13))
                {
                  v14 = 0;
                  __dst[89] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721120, &v24, v13))
                {
                  v14 = 0;
                  __dst[90] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721148, &v24, v13))
                {
                  v14 = 0;
                  __dst[91] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721170, &v24, v13))
                {
                  v14 = 0;
                  __dst[92] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721198, &v24, v13))
                {
                  v14 = 0;
                  __dst[93] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7211C0, &v24, v13))
                {
                  v14 = 0;
                  __dst[94] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7211E8, &v24, v13))
                {
                  v14 = 0;
                  __dst[95] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721210, &v24, v13))
                {
                  v14 = 0;
                  __dst[97] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721238, &v24, v13))
                {
                  v14 = 0;
                  __dst[98] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721260, &v24, v13))
                {
                  v14 = 0;
                  __dst[99] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721288, &v24, v13))
                {
                  v14 = 0;
                  __dst[100] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7212B0, &v24, v13))
                {
                  v14 = 0;
                  __dst[101] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7212D8, &v24, v13))
                {
                  v14 = 0;
                  __dst[102] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721350, &v24, v13))
                {
                  v14 = 0;
                  __dst[104] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721378, &v24, v13))
                {
                  v14 = 0;
                  __dst[105] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7213A0, &v24, v13))
                {
                  v14 = 0;
                  __dst[106] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7213C8, &v24, v13))
                {
                  v14 = 0;
                  __dst[107] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721490, &v24, v13))
                {
                  v14 = 0;
                  __dst[113] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7214B8, &v24, v13))
                {
                  v14 = 0;
                  __dst[114] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7214E0, &v24, v13))
                {
                  v14 = 0;
                  __dst[115] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721508, &v24, v13))
                {
                  v14 = 0;
                  __dst[116] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721530, &v24, v13))
                {
                  v14 = 0;
                  __dst[118] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721C10, &v24, v13))
                {
                  v14 = 0;
                  __dst[119] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721B98, &v24, v13))
                {
                  v14 = 0;
                  __dst[128] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721A58, &v24, v13))
                {
                  v14 = 0;
                  __dst[129] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721558, &v24, v13))
                {
                  v14 = 0;
                  __dst[130] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721580, &v24, v13))
                {
                  v14 = 0;
                  __dst[131] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7215A8, &v24, v13))
                {
                  v14 = 0;
                  __dst[132] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A7215D0, &v24, v13))
                {
                  v14 = 0;
                  __dst[133] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721738, &v24, v13))
                {
                  v14 = 0;
                  *&__dst[108] = sub_2779A0F3C(v22, v13) / 10.0;
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721760, &v24, v13))
                {
                  v14 = 0;
                  __dst[109] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721788, &v24, v13))
                {
                  v14 = 0;
                  __dst[110] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721A30, &v24, v13))
                {
                  v21 = sub_2779A0F3C(v22, v13);
                  if ((v21 - 3200) > 0xFFFFF31C)
                  {
                    v14 = 0;
                    *(&__dst[120] + (v21 / 100)) = v21 - 100 * (((5243 * v21) >> 19) + (5243 * v21 < 0));
                    goto LABEL_33;
                  }

                  snprintf(v13, 0xC8uLL, "Invalid operating point index: %d", v21 / 100);
                  goto LABEL_46;
                }

                if (sub_2779A0D30(v22, &unk_27A720400, &v24, v13))
                {
                  v14 = 0;
                  __dst[111] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A720428, &v24, v13))
                {
                  v14 = 0;
                  __dst[112] = sub_2779A0E90(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, off_27A720068, &v24, v13))
                {
                  v14 = 0;
                  __dst[136] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721C38, &v24, v13))
                {
                  v14 = 0;
                  __dst[137] = sub_2779A0F3C(v22, v13);
                  goto LABEL_33;
                }

                if (sub_2779A0D30(v22, &unk_27A721CD8, &v24, v13))
                {
                  v19 = &__dst[140];
                }

                else
                {
                  if (!sub_2779A0D30(v22, off_27A721D50, &v24, v13))
                  {
                    if (sub_2779A0D30(v22, &unk_27A721C88, &v24, v13))
                    {
                      v14 = 0;
                      __dst[138] = sub_2779A0F3C(v22, v13);
                    }

                    else if (sub_2779A0D30(v22, &unk_27A721D78, &v24, v13))
                    {
                      v14 = 0;
                      __dst[144] = sub_2779A0E90(v22, v13);
                    }

                    else if (sub_2779A0D30(v22, &unk_27A721DA0, &v24, v13))
                    {
                      v14 = 0;
                      __dst[145] = sub_2779A0F3C(v22, v13);
                    }

                    else if (sub_2779A0D30(v22, &unk_27A721DF0, &v24, v13))
                    {
                      v14 = 0;
                      __dst[147] = sub_2779A0F3C(v22, v13);
                    }

                    else if (sub_2779A0D30(v22, &unk_27A721DC8, &v24, v13))
                    {
                      v14 = 0;
                      __dst[146] = sub_2779A0F3C(v22, v13);
                    }

                    else if (sub_2779A0D30(v22, &unk_27A720DD8, &v24, v13))
                    {
                      v14 = 0;
                      *(a1 + 428) = sub_2779A10CC(v22, a1 + 436, v13);
                    }

                    else if (sub_2779A0D30(v22, &unk_27A720E00, &v24, v13))
                    {
                      v14 = 0;
                      *(a1 + 432) = sub_2779A10CC(v22, a1 + 692, v13);
                    }

                    else
                    {
                      snprintf(v13, 0xC8uLL, "Cannot find aom option %s", a2);
                      v14 = 1;
                    }

LABEL_33:
                    if (v24)
                    {
                      free(*(v24 - 8));
                    }

                    if (*v13)
                    {
                      goto LABEL_36;
                    }

                    *a1 = 0;
                    if (v14)
                    {
                      return 8;
                    }

                    return sub_277A947B8(a1, __dst);
                  }

                  v19 = &__dst[142];
                }
              }

              v20 = a3;
              v18 = 0;
LABEL_64:
              v17 = sub_277A94694(v20, v18, v19, v13);
              if (v24)
              {
                free(*(v24 - 8));
              }

              if (!v17)
              {
                if (*v13)
                {
LABEL_36:
                  *a1 = v13;
                  return 8;
                }

                *a1 = 0;
                return sub_277A947B8(a1, __dst);
              }

LABEL_49:
              *a1 = v13;
              return v17;
            }

            v18 = "./rate_map.txt";
            v19 = &__dst[26];
          }

          v20 = a3;
          goto LABEL_64;
        }
      }
    }

    return 2;
  }

  return result;
}

uint64_t sub_277A94694(char *__s, char *__s2, const char **a3, char *a4)
{
  if (__s)
  {
    v8 = *a3;
    if (*a3)
    {
      result = strcmp(__s, *a3);
      if (!result)
      {
        return result;
      }

      if (v8 != __s2)
      {
        free(*(v8 - 1));
      }
    }

    if (__s2 && (result = strcmp(__s, __s2), !result))
    {
      *a3 = __s2;
    }

    else
    {
      v10 = strlen(__s);
      v11 = v10 + 1;
      if (v10 + 1 <= 0x1FFFFFFE9 && (v12 = malloc_type_malloc(v10 + 24, 0x5F484EBFuLL)) != 0 && (v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0, *(v13 - 8) = v12, v13))
      {
        memcpy(((v12 + 23) & 0xFFFFFFFFFFFFFFF0), __s, v11);
        result = 0;
        *a3 = v13;
      }

      else
      {
        strcpy(a4, "Failed to allocate memory for copying parameters.");
        return 2;
      }
    }
  }

  else
  {
    strcpy(a4, "Null pointer given to a string parameter.");
    return 8;
  }

  return result;
}

uint64_t sub_277A947B8(uint64_t a1, const void *a2)
{
  result = sub_277A9481C(a1, (a1 + 208), a2);
  if (!result)
  {
    memcpy((a1 + 1112), a2, 0x250uLL);

    return sub_277A9541C(a1, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_277A9481C(const char **a1, int *a2, uint64_t a3)
{
  v3 = a2[3];
  if ((v3 - 1) >> 16)
  {
    v7 = "g_w out of range [1..65536]";
  }

  else
  {
    v4 = a2[4];
    if ((v4 - 1) >> 16)
    {
      v7 = "g_h out of range [1..65536]";
    }

    else
    {
      v5 = a2[6];
      if (v5 > 0x10000)
      {
        v7 = "g_forced_max_frame_width out of range [..65536]";
      }

      else
      {
        v6 = a2[7];
        if (v6 >= 0x10001)
        {
          v7 = "g_forced_max_frame_height out of range [..65536]";
        }

        else if (v5 && v3 > v5)
        {
          v7 = "g_w out of range [..cfg->g_forced_max_frame_width]";
        }

        else if (v6 && v4 > v6)
        {
          v7 = "g_h out of range [..cfg->g_forced_max_frame_height]";
        }

        else
        {
          if (v5)
          {
            v3 = a2[6];
          }

          if (v6)
          {
            v4 = a2[7];
          }

          if (v4 * v3 <= 0x40000000)
          {
            if ((a2[11] - 1) >= 0x3B9ACA00)
            {
              v7 = "g_timebase.den out of range [1..1000000000]";
            }

            else if ((a2[10] - 1) >= 0x3B9ACA00)
            {
              v7 = "g_timebase.num out of range [1..1000000000]";
            }

            else
            {
              v10 = a2[2];
              if (v10 > 2)
              {
                v7 = "g_profile out of range [..MAX_PROFILES - 1]";
              }

              else if (a2[34] > 0x1E8480)
              {
                v7 = "rc_target_bitrate out of range [..2000000]";
              }

              else
              {
                v11 = a2[36];
                if (v11 > 0x3F)
                {
                  v7 = "rc_max_quantizer out of range [..63]";
                }

                else if (a2[35] <= v11)
                {
                  v12 = *(a3 + 132);
                  if (v12 > 1)
                  {
                    v7 = "lossless expected BOOLean";
                    goto LABEL_12;
                  }

                  if (*(a3 + 204) > 3u)
                  {
                    v7 = "aq_mode out of range [..AQ_MODE_COUNT - 1]";
                    goto LABEL_12;
                  }

                  if (*(a3 + 205) > 5u)
                  {
                    v7 = "deltaq_mode out of range [..DELTA_Q_MODE_COUNT - 1]";
                    goto LABEL_12;
                  }

                  if (*(a3 + 212) > 1)
                  {
                    v7 = "deltalf_mode out of range [..1]";
                    goto LABEL_12;
                  }

                  if (*(a3 + 216) > 1u)
                  {
                    v7 = "frame_periodic_boost out of range [..1]";
                    goto LABEL_12;
                  }

                  v13 = *a2;
                  if (*a2 > 2)
                  {
                    v7 = "g_usage out of range [..AOM_USAGE_ALL_INTRA]";
                    goto LABEL_12;
                  }

                  if (a2[1] > 0x40)
                  {
                    v7 = "g_threads out of range [..MAX_NUM_THREADS]";
                    goto LABEL_12;
                  }

                  v14 = a2[24];
                  if (v14 > 3)
                  {
                    v7 = "rc_end_usage out of range [AOM_VBR..AOM_Q]";
                    goto LABEL_12;
                  }

                  if (a2[37] > 0x64)
                  {
                    v7 = "rc_undershoot_pct out of range [..100]";
                    goto LABEL_12;
                  }

                  if (a2[38] > 0x64)
                  {
                    v7 = "rc_overshoot_pct out of range [..100]";
                    goto LABEL_12;
                  }

                  if (a2[42] > 0x64)
                  {
                    v7 = "rc_2pass_vbr_bias_pct out of range [..100]";
                    goto LABEL_12;
                  }

                  if (a2[46] > 1)
                  {
                    v7 = "kf_mode out of range [AOM_KF_DISABLED..AOM_KF_AUTO]";
                    goto LABEL_12;
                  }

                  if (a2[15] > 0x64)
                  {
                    v7 = "rc_dropframe_thresh out of range [..100]";
                    goto LABEL_12;
                  }

                  v15 = a2[13];
                  if (v15 > 3)
                  {
                    v7 = "g_pass out of range [AOM_RC_ONE_PASS..AOM_RC_THIRD_PASS]";
                    goto LABEL_12;
                  }

                  v16 = a2[14];
                  if (v16 > 0x30)
                  {
                    v7 = "g_lag_in_frames out of range [..MAX_LAG_BUFFERS]";
                    goto LABEL_12;
                  }

                  if (v13 == 2)
                  {
                    if (v16)
                    {
                      v7 = "g_lag_in_frames out of range [..0]";
                      goto LABEL_12;
                    }

                    if (a2[48])
                    {
                      v7 = "kf_max_dist out of range [..0]";
                      goto LABEL_12;
                    }
                  }

                  v17 = *(a3 + 60);
                  if (v17 > 0x2F)
                  {
                    v7 = "min_gf_interval out of range [..MAX_LAG_BUFFERS - 1]";
                  }

                  else
                  {
                    v18 = *(a3 + 64);
                    if (v18 > 0x2F)
                    {
                      v7 = "max_gf_interval out of range [..MAX_LAG_BUFFERS - 1]";
                    }

                    else
                    {
                      if (v17 <= 2)
                      {
                        v17 = 2;
                      }

                      if (v18 && v18 < v17)
                      {
                        v7 = "max_gf_interval out of range [AOMMAX(2, extra_cfg->min_gf_interval)..(MAX_LAG_BUFFERS - 1)]";
                      }

                      else
                      {
                        v19 = *(a3 + 68);
                        if (v19 > 5)
                        {
                          v7 = "gf_min_pyr_height out of range [..5]";
                        }

                        else
                        {
                          v20 = *(a3 + 72);
                          if (v20 > 5)
                          {
                            v7 = "gf_max_pyr_height out of range [..5]";
                          }

                          else if (v19 <= v20)
                          {
                            if (a2[16] > 3)
                            {
                              v7 = "rc_resize_mode out of range [..RESIZE_MODES - 1]";
                            }

                            else if ((a2[17] - 8) > 8)
                            {
                              v7 = "rc_resize_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                            }

                            else if ((a2[18] - 8) > 8)
                            {
                              v7 = "rc_resize_kf_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                            }

                            else if (a2[19] > 4)
                            {
                              v7 = "rc_superres_mode out of range [..AOM_SUPERRES_AUTO]";
                            }

                            else if ((a2[20] - 8) > 8)
                            {
                              v7 = "rc_superres_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                            }

                            else if ((a2[21] - 8) > 8)
                            {
                              v7 = "rc_superres_kf_denominator out of range [SCALE_NUMERATOR..SCALE_NUMERATOR << 1]";
                            }

                            else if ((a2[22] - 1) > 0x3E)
                            {
                              v7 = "rc_superres_qthresh out of range [1..63]";
                            }

                            else if ((a2[23] - 1) > 0x3E)
                            {
                              v7 = "rc_superres_kf_qthresh out of range [1..63]";
                            }

                            else if (*(a3 + 284) > 2u)
                            {
                              v7 = "cdf_update_mode out of range [..2]";
                            }

                            else if (*(a3 + 280) > 2u)
                            {
                              v7 = "motion_vector_unit_test out of range [..2]";
                            }

                            else if (*(a3 + 540) > 1u)
                            {
                              v7 = "sb_multipass_unit_test out of range [..1]";
                            }

                            else if (*(a3 + 536) > 1u)
                            {
                              v7 = "ext_tile_debug out of range [..1]";
                            }

                            else if (*(a3 + 4) > 1u)
                            {
                              v7 = "enable_auto_alt_ref out of range [..1]";
                            }

                            else if (*(a3 + 8) > 2u)
                            {
                              v7 = "enable_auto_bwd_ref out of range [..2]";
                            }

                            else if ((*a3 & 0x80000000) != 0 || (v13 != 1 ? (v21 = 9) : (v21 = 11), *a3 > v21))
                            {
                              v7 = "cpu_used out of range [0..(cfg->g_usage == AOM_USAGE_REALTIME) ? 11 : 9]";
                            }

                            else if (*(a3 + 12) > 6u)
                            {
                              v7 = "noise_sensitivity out of range [..6]";
                            }

                            else if (*(a3 + 252) > 2u)
                            {
                              v7 = "superblock_size out of range [AOM_SUPERBLOCK_SIZE_64X64..AOM_SUPERBLOCK_SIZE_DYNAMIC]";
                            }

                            else
                            {
                              v22 = a2[51];
                              if (v22 > 1)
                              {
                                v7 = "large_scale_tile out of range [..1]";
                              }

                              else if (*(a3 + 256) > 1u)
                              {
                                v7 = "single_tile_decoding out of range [..1]";
                              }

                              else if (*(a3 + 96) > 1u)
                              {
                                v7 = "enable_rate_guide_deltaq out of range [..1]";
                              }

                              else if (*(a3 + 24) > 1u)
                              {
                                v7 = "row_mt out of range [..1]";
                              }

                              else if (*(a3 + 28) > 1u)
                              {
                                v7 = "fp_mt out of range [..1]";
                              }

                              else if (*(a3 + 32) > 6u)
                              {
                                v7 = "tile_columns out of range [..6]";
                              }

                              else if (*(a3 + 36) > 6u)
                              {
                                v7 = "tile_rows out of range [..6]";
                              }

                              else if (*(a3 + 40) > 1u)
                              {
                                v7 = "auto_tiles out of range [..1]";
                              }

                              else
                              {
                                v23 = a2[52];
                                if (v23 > 1)
                                {
                                  v7 = "monochrome out of range [..1]";
                                }

                                else if (*(a3 + 204) && v22)
                                {
                                  v7 = "Adaptive quantization are not supported in large scale tile coding.";
                                }

                                else
                                {
                                  if (*(a3 + 16) > 7u)
                                  {
                                    v7 = "sharpness out of range [..7]";
                                    goto LABEL_12;
                                  }

                                  if (*(a3 + 52) > 0xFu)
                                  {
                                    v7 = "arnr_max_frames out of range [..15]";
                                    goto LABEL_12;
                                  }

                                  if (*(a3 + 56) > 6u)
                                  {
                                    v7 = "arnr_strength out of range [..6]";
                                    goto LABEL_12;
                                  }

                                  if (*(a3 + 116) > 0x3Fu)
                                  {
                                    v7 = "cq_level out of range [..63]";
                                    goto LABEL_12;
                                  }

                                  v24 = a2[8];
                                  if (v24 - 8 > 4)
                                  {
                                    v7 = "g_bit_depth out of range [AOM_BITS_8..AOM_BITS_12]";
                                    goto LABEL_12;
                                  }

                                  v25 = a2[9];
                                  if (v25 - 8 > 4)
                                  {
                                    v7 = "g_input_bit_depth out of range [8..12]";
                                    goto LABEL_12;
                                  }

                                  if (*(a3 + 220) > 2u)
                                  {
                                    v7 = "content out of range [AOM_CONTENT_DEFAULT..AOM_CONTENT_INVALID - 1]";
                                    goto LABEL_12;
                                  }

                                  if (v15 >= 2)
                                  {
                                    v26 = *(a2 + 13);
                                    if (!v26)
                                    {
                                      v7 = "rc_twopass_stats_in.buf not set.";
                                      goto LABEL_12;
                                    }

                                    v27 = *(a2 + 14);
                                    if (v27 % 0xE8)
                                    {
                                      v7 = "rc_twopass_stats_in.sz indicates truncated packet.";
                                      goto LABEL_12;
                                    }

                                    if (v27 < 0x1D0)
                                    {
                                      v7 = "rc_twopass_stats_in requires at least two packets.";
                                      goto LABEL_12;
                                    }

                                    if ((v27 / 0xE8) - 1 != (*(v26 + 232 * (v27 / 0xE8) - 56) + 0.5))
                                    {
                                      v7 = "rc_twopass_stats_in missing EOS stats packet";
                                      goto LABEL_12;
                                    }
                                  }

                                  v28 = *(a3 + 544);
                                  if (v28 != -1)
                                  {
                                    if (!v15 && v28 != 1)
                                    {
                                      v7 = "One pass encoding but passes != 1.";
                                      goto LABEL_12;
                                    }

                                    if (v15 > v28)
                                    {
                                      v7 = "Current pass is larger than total number of passes.";
                                      goto LABEL_12;
                                    }
                                  }

                                  if (v10 != 2)
                                  {
                                    if (v10 == 1 && v23)
                                    {
                                      v7 = "Monochrome is not supported in profile 1";
                                      goto LABEL_12;
                                    }

                                    if (v24 > 0xA)
                                    {
                                      v7 = "Codec bit-depth 12 not supported in profile < 2";
                                      goto LABEL_12;
                                    }

                                    if (v25 > 0xA)
                                    {
                                      v7 = "Source bit-depth 12 not supported in profile < 2";
                                      goto LABEL_12;
                                    }
                                  }

                                  v29 = a2[185];
                                  if (v14 == 3)
                                  {
                                    if (v29 >= 2)
                                    {
                                      v7 = "use_fixed_qp_offsets out of range [..1]";
                                      goto LABEL_12;
                                    }
                                  }

                                  else if (v29)
                                  {
                                    v7 = "--use_fixed_qp_offsets can only be used with --end-usage=q";
                                    goto LABEL_12;
                                  }

                                  if ((*(a3 + 224) - 1) > 0x15)
                                  {
                                    v7 = "color_primaries out of range [AOM_CICP_CP_BT_709..AOM_CICP_CP_EBU_3213]";
                                    goto LABEL_12;
                                  }

                                  if ((*(a3 + 228) - 1) > 0x11)
                                  {
                                    v7 = "transfer_characteristics out of range [AOM_CICP_TC_BT_709..AOM_CICP_TC_HLG]";
                                    goto LABEL_12;
                                  }

                                  if (*(a3 + 232) > 0xEu)
                                  {
                                    v7 = "matrix_coefficients out of range [AOM_CICP_MC_IDENTITY..AOM_CICP_MC_ICTCP]";
                                    goto LABEL_12;
                                  }

                                  if (*(a3 + 240) > 1u)
                                  {
                                    v7 = "color_range out of range [0..1]";
                                    goto LABEL_12;
                                  }

                                  v30 = *(a3 + 476);
                                  if (v15 | v14)
                                  {
                                    if (v30)
                                    {
                                      v7 = "VBR corpus complexity is supported only in the case of single pass VBR mode.";
                                      goto LABEL_12;
                                    }
                                  }

                                  else if (v30 >= 0x2711)
                                  {
                                    v7 = "vbr_corpus_complexity_lap out of range [..MAX_VBR_CORPUS_COMPLEXITY]";
                                    goto LABEL_12;
                                  }

                                  v31 = *(a3 + 76);
                                  if (v31 == 8)
                                  {
                                    v7 = "This error may be related to the wrong configuration options: try to set -DCONFIG_TUNE_BUTTERAUGLI=1 at the time CMake is run.";
                                  }

                                  else if ((v31 & 0xFFFFFFFC) == 4)
                                  {
                                    v7 = "This error may be related to the wrong configuration options: try to set -DCONFIG_TUNE_VMAF=1 at the time CMake is run.";
                                  }

                                  else
                                  {
                                    if (v31 > 9)
                                    {
                                      v7 = "tuning out of range [AOM_TUNE_PSNR..AOM_TUNE_VMAF_SALIENCY_MAP]";
                                      goto LABEL_12;
                                    }

                                    if (*(a3 + 112) > 1u)
                                    {
                                      v7 = "dist_metric out of range [AOM_DIST_METRIC_PSNR..AOM_DIST_METRIC_QM_PSNR]";
                                      goto LABEL_12;
                                    }

                                    if (*(a3 + 188) > 2u)
                                    {
                                      v7 = "timing_info_type out of range [AOM_TIMING_UNSPECIFIED..AOM_TIMING_DEC_MODEL]";
                                      goto LABEL_12;
                                    }

                                    if (*(a3 + 268) > 0x10u)
                                    {
                                      v7 = "film_grain_test_vector out of range [0..16]";
                                      goto LABEL_12;
                                    }

                                    if (v12)
                                    {
                                      if (*(a3 + 204))
                                      {
                                        v7 = "Only --aq_mode=0 can be used with --lossless=1.";
                                        goto LABEL_12;
                                      }

                                      if (*(a3 + 200))
                                      {
                                        v7 = "Only --enable_chroma_deltaq=0 can be used with --lossless=1.";
                                        goto LABEL_12;
                                      }
                                    }

                                    if ((*(a3 + 332) - 3) > 4)
                                    {
                                      v7 = "max_reference_frames out of range [3..7]";
                                    }

                                    else if (*(a3 + 336) > 1u)
                                    {
                                      v7 = "enable_reduced_reference_set out of range [0..1]";
                                    }

                                    else if (*(a3 + 444) > 1u)
                                    {
                                      v7 = "chroma_subsampling_x out of range [..1]";
                                    }

                                    else if (*(a3 + 448) > 1u)
                                    {
                                      v7 = "chroma_subsampling_y out of range [..1]";
                                    }

                                    else if (*(a3 + 152) > 3u)
                                    {
                                      v7 = "disable_trellis_quant out of range [..3]";
                                    }

                                    else if (*(a3 + 520) > 3u)
                                    {
                                      v7 = "coeff_cost_upd_freq out of range [0..3]";
                                    }

                                    else if (*(a3 + 524) > 3u)
                                    {
                                      v7 = "mode_cost_upd_freq out of range [0..3]";
                                    }

                                    else if (*(a3 + 528) > 3u)
                                    {
                                      v7 = "mv_cost_upd_freq out of range [0..3]";
                                    }

                                    else if (*(a3 + 532) > 3u)
                                    {
                                      v7 = "dv_cost_upd_freq out of range [0..3]";
                                    }

                                    else
                                    {
                                      v32 = *(a3 + 300);
                                      if (v32 - 4 > 0x7C)
                                      {
                                        v7 = "min_partition_size out of range [4..128]";
                                      }

                                      else
                                      {
                                        v33 = *(a3 + 304);
                                        if (v33 - 4 > 0x7C)
                                        {
                                          v7 = "max_partition_size out of range [4..128]";
                                        }

                                        else if (v32 <= v33)
                                        {
                                          v34 = 0;
                                          v7 = "Target sequence level index is invalid";
                                          while (1)
                                          {
                                            v35 = *(a3 + 480 + v34);
                                            if (v35 != 31)
                                            {
                                              v36 = v35 >= 0x1C || v35 - 12 >= 0xFFFFFFFE;
                                              v37 = v36 || (v35 & 0xFA) == 2;
                                              v38 = v37 || v35 - 28 >= 0xFFFFFFF8;
                                              v39 = !v38;
                                              if (v35 != 32 && !v39)
                                              {
                                                break;
                                              }
                                            }

                                            if (++v34 == 32)
                                            {
                                              if (*(a3 + 208) > 0x3E8u)
                                              {
                                                v7 = "deltaq_strength out of range [0..1000]";
                                                break;
                                              }

                                              if (*(a3 + 552) > 3u)
                                              {
                                                v7 = "loopfilter_control out of range [..3]";
                                                break;
                                              }

                                              if (*(a3 + 556) > 1u)
                                              {
                                                v7 = "skip_postproc_filtering expected BOOLean";
                                                break;
                                              }

                                              if (*(a3 + 136) > 2u)
                                              {
                                                v7 = "enable_cdef out of range [..2]";
                                                break;
                                              }

                                              if (*(a3 + 576) > 1u)
                                              {
                                                v7 = "auto_intra_tools_off expected BOOLean";
                                                break;
                                              }

                                              if (*(a3 + 580) > 1u)
                                              {
                                                v7 = "strict_level_conformance expected BOOLean";
                                                break;
                                              }

                                              if (*(a3 + 588) > 1u)
                                              {
                                                v7 = "sb_qp_sweep expected BOOLean";
                                                break;
                                              }

                                              v41 = *(a3 + 584);
                                              if ((v41 + 1) > 6)
                                              {
                                                v7 = "kf_max_pyr_height out of range [-1..5]";
                                                break;
                                              }

                                              v8 = 0;
                                              if (v41 != -1 && v41 < v19)
                                              {
                                                v7 = "The value of kf-max-pyr-height should not be smaller than gf-min-pyr-height";
                                                break;
                                              }

                                              return v8;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v7 = "min_partition_size out of range [..extra_cfg->max_partition_size]";
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
                            v7 = "gf_min_pyr_height must be less than or equal to gf_max_pyramid_height";
                          }
                        }
                      }
                    }
                  }
                }

                else
                {
                  v7 = "rc_min_quantizer out of range [..cfg->rc_max_quantizer]";
                }
              }
            }
          }

          else
          {
            v7 = "max_frame_area out of range [..2^30]";
          }
        }
      }
    }
  }

LABEL_12:
  *a1 = v7;
  return 8;
}